uint64_t sub_23A8D9F98(unint64_t a1, float a2)
{
  v103 = a2;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v102 - v9;
  v11 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
  v12 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
  v13 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
  v14 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v15 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v123 = v2;
  v117 = sub_23A8DA808(v11, v12, v13, v14, v15, 0.16);
  if (a1 >> 62)
  {
    goto LABEL_87;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v17 = 0;
    v121 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
    v122 = a1 & 0xC000000000000001;
    v106 = a1 & 0xFFFFFFFFFFFFFF8;
    v105 = a1 + 32;
    v119 = (v5 + 8);
    v120 = (v5 + 16);
    v104 = v117 + 32;
    v111 = a1;
    v110 = v4;
    v109 = v7;
    v108 = v10;
    v107 = i;
    while (v122)
    {
      v18 = MEMORY[0x23EE90360](v17, a1);
      v19 = __OFADD__(v17++, 1);
      if (v19)
      {
        goto LABEL_85;
      }

LABEL_12:
      v20 = a1;
      v21 = *v120;
      (*v120)(v10, v18 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v4);
      v21(v7, v123 + v121, v4);
      v5 = sub_23AA0C094();
      v22 = *v119;
      (*v119)(v7, v4);
      v22(v10, v4);
      if (v5)
      {

LABEL_14:
        a1 = v20;
        goto LABEL_5;
      }

      v125 = __invert_f4(*(v18 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform));
      v23 = *(v117 + 2);
      if (v23)
      {
        v118 = v18;
        v24 = MEMORY[0x277D84F90];
        v124 = MEMORY[0x277D84F90];
        v115 = v125.columns[0];
        v114 = v125.columns[1];
        v113 = v125.columns[2];
        v112 = v125.columns[3];
        sub_23A975DC0(0, v23, 0);
        v25 = v112;
        v26 = v113;
        v27 = v114;
        v29 = v115;
        v28 = v116;
        v30 = v124;
        v31 = v124[1].u64[0];
        v32 = v104;
        do
        {
          v33 = *v32;
          v124 = v30;
          v34 = v30[1].u64[1];
          v35 = v31 + 1;
          if (v31 >= v34 >> 1)
          {
            v116 = v28;
            v102 = v33;
            sub_23A975DC0((v34 > 1), v31 + 1, 1);
            v33 = v102;
            v25 = v112;
            v26 = v113;
            v27 = v114;
            v29 = v115;
            v28.i32[3] = v116.i32[3];
            v30 = v124;
          }

          v36 = vaddq_f32(v25, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v33.f32[0]), v27, *v33.f32, 1), v26, v33, 2));
          v36.i32[3] = v28.i32[3];
          v30[1].i64[0] = v35;
          v30[v31 + 2] = v36;
          ++v32;
          ++v31;
          v28 = v36;
          --v23;
        }

        while (v23);
        v116 = v36;
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
        v35 = *(MEMORY[0x277D84F90] + 16);
        if (!v35)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_14;
        }

        v118 = v18;
        v30 = MEMORY[0x277D84F90];
        v24 = MEMORY[0x277D84F90];
      }

      v37 = v30 + 2;
      v124 = v24;
      sub_23A975DF0(0, v35, 0);
      v38 = 0;
      v39 = v124;
      v40 = v124[1].i64[0];
      v41 = v40;
      do
      {
        v42 = v41;
        v43 = v37[v38];
        v124 = v39;
        v44 = v39[1].u64[1];
        if (v40 + v38 >= v44 >> 1)
        {
          v115 = v43;
          sub_23A975DF0((v44 > 1), v40 + v38 + 1, 1);
          v43.i32[0] = v115.i32[0];
          v39 = v124;
        }

        v45 = v38 + 1;
        v39[1].i64[0] = v40 + v38 + 1;
        v39[2].i32[v40 + v38] = v43.i32[0];
        v41 = v42 + 1;
        v38 = v45;
      }

      while (v35 != v45);
      v46 = v39[2].f32[0];
      if (v40 + v45 == 1)
      {
        v50 = v39[2].f32[0];
        v54 = MEMORY[0x277D84F90];
      }

      else
      {
        v47 = v39[2].i64 + 4;
        v48 = &v39[2].f32[1];
        v49 = v42;
        v50 = v39[2].f32[0];
        do
        {
          v51 = *v48++;
          v52 = v51;
          if (v51 < v50)
          {
            v50 = v52;
          }

          --v49;
        }

        while (v49);
        v53 = 0;
        v54 = MEMORY[0x277D84F90];
        do
        {
          if (v46 < *(v47 + 4 * v53))
          {
            v46 = *(v47 + 4 * v53);
          }

          ++v53;
        }

        while (v42 != v53);
      }

      v124 = v54;
      sub_23A975DF0(0, v35, 0);
      v55 = 0;
      v56 = v124;
      v57 = v124[1].i64[0];
      v58 = v57;
      do
      {
        v59 = v58;
        v60 = v37[v55];
        v124 = v56;
        v61 = v56[1].u64[1];
        if (v57 + v55 >= v61 >> 1)
        {
          v115 = v60;
          sub_23A975DF0((v61 > 1), v57 + v55 + 1, 1);
          v60.i32[1] = v115.i32[1];
          v56 = v124;
        }

        v62 = v55 + 1;
        v56[1].i64[0] = v57 + v55 + 1;
        v56[2].i32[v57 + v55] = v60.i32[1];
        v58 = v59 + 1;
        v55 = v62;
      }

      while (v35 != v62);
      v63 = v56[2].f32[0];
      if (v57 + v62 == 1)
      {
        v67 = v56[2].f32[0];
        v10 = v108;
      }

      else
      {
        v64 = v56[2].i64 + 4;
        v65 = &v56[2].f32[1];
        v66 = v59;
        v67 = v56[2].f32[0];
        v10 = v108;
        do
        {
          v68 = *v65++;
          v69 = v68;
          if (v68 < v67)
          {
            v67 = v69;
          }

          --v66;
        }

        while (v66);
        v70 = 0;
        do
        {
          if (v63 < *(v64 + 4 * v70))
          {
            v63 = *(v64 + 4 * v70);
          }

          ++v70;
        }

        while (v59 != v70);
      }

      v124 = MEMORY[0x277D84F90];
      sub_23A975DF0(0, v35, 0);
      v71 = v124;
      v72 = v124[1].u64[0];
      i = v107;
      do
      {
        v73 = *v37;
        v124 = v71;
        v74 = v71[1].u64[1];
        v5 = v72 + 1;
        if (v72 >= v74 >> 1)
        {
          v115 = v73;
          sub_23A975DF0((v74 > 1), v72 + 1, 1);
          v73.i32[2] = v115.i32[2];
          v71 = v124;
        }

        v71[1].i64[0] = v5;
        v71[2].i32[v72] = v73.i32[2];
        ++v37;
        ++v72;
        --v35;
      }

      while (v35);

      v75 = v71[1].i64[0];
      if (v75)
      {
        v76 = v71[2].f32[0];
        v77 = v75 - 1;
        a1 = v111;
        v7 = v109;
        v5 = v118;
        if (v77)
        {
          v79 = &v71[2].f32[1];
          v80 = &v71[2].f32[1];
          v81 = v77;
          v78 = v71[2].f32[0];
          do
          {
            v82 = *v80++;
            v83 = v82;
            if (v82 < v78)
            {
              v78 = v83;
            }

            --v81;
          }

          while (v81);
          do
          {
            v84 = *v79++;
            v85 = v84;
            if (v76 < v84)
            {
              v76 = v85;
            }

            --v77;
          }

          while (v77);
        }

        else
        {
          v78 = v71[2].f32[0];
        }

        v115.f32[0] = v76 - v78;
        v114 = *(v5 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);

        v86 = vmuls_lane_f32(0.5, *v114.f32, 1);
        v87 = vmuls_lane_f32(0.5, v114, 2);
        v88 = (v46 - v50) * v103;
        v89 = v88 > ((0.5 * v114.f32[0]) - v50) || v88 > (v46 - (0.0 - (0.5 * v114.f32[0])));
        v90 = 0.0 - v86;
        v91 = v86 - v67;
        v92 = (v63 - v67) * v103;
        v93 = v63 - v90;
        v95 = v89 || v92 > v91 || v92 > v93;
        v96 = v87 - v78;
        v97 = v115.f32[0] * v103;
        v98 = v76 - (0.0 - v87);
        v100 = v95 || v97 > v96 || v97 > v98;
        v4 = v110;
        if (!v100)
        {

          return 1;
        }
      }

      else
      {

        a1 = v111;
        v4 = v110;
        v7 = v109;
      }

LABEL_5:
      if (v17 == i)
      {
        goto LABEL_88;
      }
    }

    if (v17 >= *(v106 + 16))
    {
      goto LABEL_86;
    }

    v18 = *(v105 + 8 * v17);

    v19 = __OFADD__(v17++, 1);
    if (!v19)
    {
      goto LABEL_12;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    ;
  }

LABEL_88:

  return 0;
}

char *sub_23A8DA808(float32x4_t a1, __n128 a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  if (*(v6 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 3)
  {
    a4.i32[3] = 0;
    v50 = a4;
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v8.i64[0] = vmulq_f32(a5, v7).u64[0];
    v8.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, a5, 2));
    v9 = a3.f32[2];
  }

  else
  {
    *&v10 = a6 * 0.5;
    v9 = a3.f32[2];
    a4.i64[0] = vsubq_f32(a4, vmulq_n_f32(a3, a6 * 0.5)).u64[0];
    a4.f32[2] = a4.f32[2] - vmuls_lane_f32(a6 * 0.5, a3, 2);
    a4.i32[3] = 0;
    v50 = a4;
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    v8.i64[0] = vmulq_f32(a5, v11).u64[0];
    v8.i64[1] = v10;
  }

  v44 = *v8.f32;
  v46 = *a1.f32;
  v48 = vmuls_lane_f32(v8.f32[0], a1, 2);
  v51 = a2.n128_u64[0];
  v53 = vmuls_lane_f32(a2.n128_f32[2], *v8.f32, 1);
  v12 = vmul_laneq_f32(vneg_f32(*a3.f32), v8, 2);
  v13 = vmuls_lane_f32(-v9, v8, 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v14 = swift_allocObject();
  v15 = 0;
  v16 = 0;
  *&v17 = vmul_n_f32(v46, v44.f32[0]);
  *&v18 = vsub_f32(0, *&v17);
  *(&v18 + 2) = 0.0 - v48;
  HIDWORD(v18) = 0;
  *(v14 + 32) = v18;
  v19 = v14 + 32;
  *(&v17 + 1) = LODWORD(v48);
  *(v14 + 48) = v17;
  *&v17 = vmul_lane_f32(v51, v44, 1);
  *&v18 = vsub_f32(0, *&v17);
  *(&v17 + 1) = LODWORD(v53);
  v47 = v17;
  v49 = v18;
  *(&v18 + 2) = 0.0 - v53;
  HIDWORD(v18) = 0;
  v43 = v18;
  v45 = 0.0 - v53;
  v20 = vsub_f32(0, v12);
  v21 = 0.0 - v13;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v23 = v15;
    v54 = *(v19 + 16 * v16);
    v24 = swift_allocObject();
    *(v24 + 32) = v43;
    *(v24 + 48) = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23A9388A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v26 = *(v22 + 2);
    v25 = *(v22 + 3);
    v27 = v25 >> 1;
    v28 = v26 + 1;
    if (v25 >> 1 <= v26)
    {
      v22 = sub_23A9388A8((v25 > 1), v26 + 1, 1, v22);
      v25 = *(v22 + 3);
      v27 = v25 >> 1;
    }

    v55 = vaddq_f32(v50, v54);
    v29 = vadd_f32(*v55.f32, v49);
    *&v30 = vadd_f32(v20, v29);
    *(&v30 + 2) = v21 + (v55.f32[2] + v45);
    HIDWORD(v30) = 0;
    *(v22 + 2) = v28;
    *&v22[16 * v26 + 32] = v30;
    v31 = v26 + 2;
    if (v27 < v31)
    {
      v22 = sub_23A9388A8((v25 > 1), v31, 1, v22);
    }

    *&v32 = vadd_f32(v12, v29);
    *(&v32 + 2) = v13 + (v55.f32[2] + v45);
    HIDWORD(v32) = 0;
    *(v22 + 2) = v31;
    *&v22[16 * v28 + 32] = v32;
    v52 = *(v24 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23A9388A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v34 = *(v22 + 2);
    v33 = *(v22 + 3);
    v35 = v33 >> 1;
    v36 = v34 + 1;
    if (v33 >> 1 <= v34)
    {
      v22 = sub_23A9388A8((v33 > 1), v34 + 1, 1, v22);
      v33 = *(v22 + 3);
      v35 = v33 >> 1;
    }

    v37 = vadd_f32(*v55.f32, *v52.f32);
    v38 = COERCE_FLOAT(vaddq_f32(v55, v52).i32[2]);
    *&v39 = vadd_f32(v20, v37);
    *(&v39 + 2) = v21 + v38;
    HIDWORD(v39) = 0;
    *(v22 + 2) = v36;
    *&v22[16 * v34 + 32] = v39;
    v40 = v34 + 2;
    if (v35 < v40)
    {
      v22 = sub_23A9388A8((v33 > 1), v40, 1, v22);
    }

    *&v41 = vadd_f32(v12, v37);
    *(&v41 + 2) = v13 + v38;
    HIDWORD(v41) = 0;
    *(v22 + 2) = v40;
    *&v22[16 * v36 + 32] = v41;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v15 = 1;
    v16 = 1;
  }

  while ((v23 & 1) == 0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v22;
}

uint64_t sub_23A8DABE0(float32x4_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for AnimationGraph(0);
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8RoomPlan8ScanItem_type;
  v17 = OBJC_IVAR____TtC8RoomPlan8ScanItem_category;
  sub_23A93D8CC(*(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type), *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category), v15);
  if (qword_27DFAE488 != -1)
  {
    swift_once();
  }

  v18 = qword_27DFC0730;
  sub_23A963A50();
  sub_23AA0DCA4();
  v66 = v19;
  sub_23AA0DCB4();
  v21 = v20;
  sub_23AA0DCB4();
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v23 == v21)
  {
    v24 = 2;
    *(v18 + 40) = 2;
  }

  else if (v23 == v22)
  {
    v24 = 3;
    *(v18 + 40) = 3;
  }

  else
  {
    v24 = *(v18 + 40);
  }

  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = v24;
  v25 = *(v2 + v16);
  v26 = *(v2 + v17);
  v27 = 4;
  if (((1 << v25) & 0x37) != 0)
  {
    if (v24 == 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }
  }

  else if (v25 == 3)
  {
    if (sub_23A9AD42C(*(v2 + v17), qword_27DFAECA8))
    {
      v27 = 1;
    }

    else
    {
      if (qword_27DFAE388 != -1)
      {
        swift_once();
      }

      if (sub_23A9AD42C(v26, qword_27DFC05C0))
      {
        v27 = 1;
      }

      else
      {
        v27 = 3;
      }
    }
  }

  v60 = v16;
  v28 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v27;
  v29 = v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
  v68.columns[3] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v30 = v68.columns[3];
  v30.i32[3] = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v30;
  v65 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions;
  *&v66 = v15;
  v31 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v59 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v31;
  v68.columns[0] = *v29;
  v68.columns[1] = *(v29 + 16);
  v68.columns[2] = *(v29 + 32);
  *&v32 = simd_quaternion(v68);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v32;
  *&v33 = sub_23A8DB3E0();
  v34 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = v33;
  v35 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut;
  swift_beginAccess();
  sub_23A8D5194(v2 + v35, v12, &unk_27DFAF020, &unk_23AA12300);
  v36 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v12, v2 + v36, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v37 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut;
  swift_beginAccess();
  sub_23A8D5194(v2 + v37, v12, &unk_27DFAF020, &unk_23AA12300);
  v38 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v12, v2 + v38, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  sub_23A8D5194(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v9, &qword_27DFAEB38, &unk_23AA11B60);
  v39 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v40 = (*(*(v39 - 8) + 48))(v9, 1, v39);
  v41 = v9;
  v42 = v40;
  sub_23A8D50D0(v41, &qword_27DFAEB38, &unk_23AA11B60);
  if (v42 == 1)
  {
    *&v43 = sub_23A8DB4A0(*(v2 + v28));
    *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = v43;
  }

  else
  {
    v43 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
  }

  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = v43;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v2 + v34);
  sub_23A8D5194(v2 + v36, v12, &unk_27DFAF020, &unk_23AA12300);
  v44 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v12, v2 + v44, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  sub_23A8D5194(v2 + v38, v12, &unk_27DFAF020, &unk_23AA12300);
  v45 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v12, v2 + v45, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v69 = __invert_f4(*v29);
  v47 = v65;
  v46 = v66;
  v48 = sub_23A93DB10(vaddq_f32(v69.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v69.columns[0], v67.f32[0]), v69.columns[1], *v67.f32, 1), v69.columns[2], v67, 2)), *(v2 + v65));
  if (v49)
  {
    return sub_23A8DE2CC(v46, type metadata accessor for AnimationGraph);
  }

  v51 = *(v2 + v47);
  *(v46 + 24) = v48;
  sub_23A93F33C(v51);
  v52 = *(v2 + v59);
  if (*(v2 + v60) == 3)
  {
    sub_23A93C6B4(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), v52);
  }

  else
  {
    sub_23A93C968(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides), v52);
  }

  v53 = v63;
  sub_23A8DE32C(v46, v63);
  (*(v61 + 56))(v53, 0, 1, v62);
  v54 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
  swift_beginAccess();
  sub_23A8D5068(v53, v2 + v54, &unk_27DFAF030, &qword_23AA11B48);
  swift_endAccess();
  v55 = v64;
  sub_23AA0C044();
  sub_23A8DE2CC(v46, type metadata accessor for AnimationGraph);
  v56 = sub_23AA0C064();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
  swift_beginAccess();
  sub_23A8D5068(v55, v2 + v57, &qword_27DFAEB30, &unk_23AA11B50);
  return swift_endAccess();
}

double sub_23A8DB3E0()
{
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 3)
  {
    goto LABEL_6;
  }

  v1 = OBJC_IVAR____TtC8RoomPlan8ScanItem_category;
  if (sub_23A9AD42C(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category), qword_27DFAECA8))
  {
    goto LABEL_6;
  }

  if (qword_27DFAE388 != -1)
  {
    swift_once();
  }

  if (sub_23A9AD42C(*(v0 + v1), qword_27DFC05C0))
  {
LABEL_6:
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
    LODWORD(v2) = 0;
  }

  else
  {
    *&v2 = vtrn2q_s32(vrev64q_s32(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions)), 0).u64[0];
  }

  return *&v2;
}

double sub_23A8DB4A0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    v3 = 0.0;
    LODWORD(v2) = 0;
    if (a1 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (a1 - 1 < 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    LODWORD(v3) = *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
    goto LABEL_7;
  }

  LODWORD(v3) = HIDWORD(*(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions));
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
  if ((a1 - 1) > 1u)
  {
    LODWORD(v2) = HIDWORD(*(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions));
  }

LABEL_7:
  *v4.i64 = sub_23A8DB548(a1, (v3 - *&v2) * 0.5);
  *&result = vaddq_f32(v4, *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48)).u64[0];
  return result;
}

double sub_23A8DB548(unsigned __int8 a1, float a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
      goto LABEL_10;
    }

    v5 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
    goto LABEL_8;
  }

  if (a1 == 2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
LABEL_8:
    v3 = vmulq_n_f32(v5, a2).u64[0];
    return *&v3;
  }

  v3 = 0;
  if (a1 == 3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
LABEL_10:
    v3 = vmulq_n_f32(vsubq_f32(0, v4), a2).u64[0];
  }

  return *&v3;
}

uint64_t sub_23A8DB5E4()
{
  v1 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, &qword_27DFAEB30, &unk_23AA11B50);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, &qword_27DFAEB30, &unk_23AA11B50);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, &qword_27DFAEB38, &unk_23AA11B60);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph, &unk_27DFAF030, &qword_23AA11B48);
  v3 = OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime;
  v4 = sub_23AA0C064();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, &qword_27DFAEB38, &unk_23AA11B60);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, &unk_27DFAF020, &unk_23AA12300);
  return v0;
}

uint64_t sub_23A8DB8DC()
{
  sub_23A8DB5E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScanItem(uint64_t a1)
{
  result = qword_27DFAEBF0;
  if (!qword_27DFAEBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A8DB988(uint64_t a1)
{
  sub_23AA0C0E4();
  if (v1 <= 0x3F)
  {
    sub_23A8DBCBC(319, &qword_27DFAEC00, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_23A8DBCBC(319, &qword_27DFAEC08, type metadata accessor for CapturedRoom.Surface.Curve);
      if (v3 <= 0x3F)
      {
        sub_23A8DBCBC(319, &qword_27DFAEC10, type metadata accessor for ScanItemStrut);
        if (v4 <= 0x3F)
        {
          sub_23A8DBCBC(319, &qword_27DFAEC18, MEMORY[0x277CC9578]);
          if (v5 <= 0x3F)
          {
            sub_23A8DBCBC(319, &qword_27DFAEC20, type metadata accessor for AnimationGraph);
            if (v6 <= 0x3F)
            {
              sub_23AA0C064();
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23A8DBCBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23AA0D664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23A8DBD10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23A977E20(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_23A8DC26C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_23A938B2C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_23A8DC26C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23A8DC26C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_23A8DC460(uint64_t a1)
{
  v33 = sub_23AA0CE84();
  MEMORY[0x28223BE20](v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v32 = (v2 + 8);
  v7 = MEMORY[0x277D84F90];
  v8 = 1;
  *&v3 = 136315138;
  v31 = v3;
  while (1)
  {
    v9 = byte_284D7F9C8[v6 + 32];
    if (!v8 || (result = sub_23A9F573C(byte_284D7F9C8[v6 + 32]), (v11 & 1) == 0))
    {
      sub_23A8D4E5C();
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      sub_23AA0CE94();
      v23 = sub_23AA0CE54();
      v24 = sub_23AA0D494();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v35 = v26;
        *v25 = v31;
        v34 = v9;
        v27 = sub_23AA0D1A4();
        v29 = sub_23A9A65A4(v27, v28, &v35);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_23A8B4000, v23, v24, "Missing edge on %s side", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x23EE91710](v26, -1, -1);
        MEMORY[0x23EE91710](v25, -1, -1);
      }

      (*v32)(v5, v33);
      goto LABEL_22;
    }

    v12 = *(*(a1 + 56) + 40 * result);
    v13 = *(v12 + 2);
    if (!v13)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v13 - 1) > *(v12 + 3) >> 1)
    {
      v12 = sub_23A9388A8(isUniquelyReferenced_nonNull_native, v13, 1, v12);
    }

    v15 = *(v12 + 2);
    result = memmove(v12 + 32, v12 + 48, 16 * v15 - 16);
    v16 = v15 - 1;
    *(v12 + 2) = v15 - 1;
    v17 = *(v7 + 16);
    v18 = v17 + v15 - 1;
    if (__OFADD__(v17, v15 - 1))
    {
      goto LABEL_33;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v18 <= *(v7 + 24) >> 1)
    {
      if (*(v12 + 2))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v30 = v17 + v15 - 1;
      }

      else
      {
        v30 = v17;
      }

      result = sub_23A9388A8(result, v30, 1, v7);
      v7 = result;
      if (*(v12 + 2))
      {
LABEL_13:
        v19 = *(v7 + 16);
        if ((*(v7 + 24) >> 1) - v19 < v16)
        {
          goto LABEL_35;
        }

        memcpy((v7 + 16 * v19 + 32), v12 + 32, 16 * v16);

        if (v15 >= 2)
        {
          v20 = *(v7 + 16);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_36;
          }

          *(v7 + 16) = v22;
        }

        goto LABEL_22;
      }
    }

    if (v15 > 1)
    {
      goto LABEL_34;
    }

LABEL_22:
    if (v6 == 3)
    {
      return v7;
    }

    v8 = *(a1 + 16);
    ++v6;
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
  return result;
}

double sub_23A8DC818()
{
  v1 = vsubq_f32(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48));
  if (*v1.i32 != 0.0 || (v2 = vceqz_f32(*&vextq_s8(v1, v1, 4uLL)), v3 = v2.i8[0] & v2.i8[4], result = 0.0, (v3 & 1) == 0))
  {
    sub_23AA0DCB4();
    v7 = v5 * 0.5;
    sub_23AA0DCA4();
    *&result = vmulq_n_f32(v6, v7).u64[0];
  }

  return result;
}

uint64_t sub_23A8DC8D4(simd_float4 a1)
{
  v2 = v1;
  v246 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v3 - 8);
  v237 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v236 = &v204 - v6;
  MEMORY[0x28223BE20](v7);
  v238 = &v204 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v234 = *(v9 - 8);
  v235 = v9;
  MEMORY[0x28223BE20](v9);
  v218 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v242 = &v204 - v12;
  v245.i64[0] = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v247.i64[0] = *(v245.i64[0] - 8);
  MEMORY[0x28223BE20](v245.i64[0] - 8);
  v212 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v217 = &v204 - v15;
  MEMORY[0x28223BE20](v16);
  v211 = &v204 - v17;
  MEMORY[0x28223BE20](v18);
  v215 = &v204 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v20 - 8);
  v216 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v231 = &v204 - v23;
  MEMORY[0x28223BE20](v24);
  v244.i64[0] = &v204 - v25;
  MEMORY[0x28223BE20](v26);
  v232 = &v204 - v27;
  MEMORY[0x28223BE20](v28);
  v233 = (&v204 - v29);
  MEMORY[0x28223BE20](v30);
  v214 = &v204 - v31;
  MEMORY[0x28223BE20](v32);
  v222 = &v204 - v33;
  MEMORY[0x28223BE20](v34);
  v224.i64[0] = &v204 - v35;
  MEMORY[0x28223BE20](v36);
  v226 = (&v204 - v37);
  v241 = sub_23AA0C064();
  v239 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v205 = &v204 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v219 = &v204 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v204 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v44 - 8);
  v210 = &v204 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v204 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v204 - v50;
  v52 = sub_23AA0C0E4();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v55 = &v204 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v54) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);
  v240 = 0u;
  if (v54 != 18)
  {
    goto LABEL_13;
  }

  sub_23A8D5194(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, v51, &unk_27DFB0970, &qword_23AA14E00);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_23A8D50D0(v51, &unk_27DFB0970, &qword_23AA14E00);
    goto LABEL_13;
  }

  (*(v53 + 32))(v55, v51, v52);
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v56 = qword_27DFC04B0;
  swift_beginAccess();
  v57 = *(v56 + 24);
  if (!*(v57 + 16))
  {
LABEL_12:
    (*(v53 + 8))(v55, v52);
    goto LABEL_13;
  }

  v58 = sub_23A9EDD28(v55);
  if ((v59 & 1) == 0)
  {

    goto LABEL_12;
  }

  v60 = *(*(v57 + 56) + 8 * v58);

  v61 = *(v60 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 52);
  v243 = *(v60 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v62 = off_27DFB17B0;
  swift_beginAccess();
  v63 = *v243.f32;
  v64 = vmuls_lane_f32(v62[13], *v243.f32, 1);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions + 4) = v64;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 52) = (v61 - vmuls_lane_f32(0.5, v63, 1)) + (v64 * 0.5);

  (*(v53 + 8))(v55, v52);
  swift_beginAccess();
  LODWORD(v65) = 0;
  *(&v65 + 1) = v62[15] * 0.5;
  v240 = v65;
LABEL_13:
  v66 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions;
  v67 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v223 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions) = v67;
  v68 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve;
  v69 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve;
  swift_beginAccess();
  v221 = v68;
  v225 = v69;
  sub_23A8DE238(v2 + v68, v2 + v69, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v70 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut;
  v71 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut;
  swift_beginAccess();
  v228 = v71;
  sub_23A8DE238(v2 + v70, v2 + v71, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v72 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut;
  v73 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut;
  swift_beginAccess();
  v230 = v73;
  sub_23A8DE238(v2 + v72, v2 + v73, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v74 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
  swift_beginAccess();
  v209 = v74;
  sub_23A8D5194(v2 + v74, v48, &qword_27DFAEB30, &unk_23AA11B50);
  v75 = v239;
  v76 = v241;
  v207 = *(v239 + 48);
  v208 = v239 + 48;
  v77 = v207(v48, 1, v241);
  sub_23A8D50D0(v48, &qword_27DFAEB30, &unk_23AA11B50);
  if (v77 == 1)
  {
    sub_23A8DABE0(v246);
    v78 = &unk_27DFC0000;
  }

  else
  {
    v78 = &unk_27DFC0000;
    if (*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 2)
    {
      v249.columns[2] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
      v246 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
      v249.columns[3] = v246;
      v249.columns[0] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
      v249.columns[1] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
      v250 = __invert_f4(v249);
      if (vmovn_s32(vcgtq_f32(vaddq_f32(v250.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v250.columns[0], COERCE_FLOAT(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition))), v250.columns[1], *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), 1), v250.columns[2], *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), 2)), vaddq_f32(v250.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v250.columns[0], v246.f32[0]), v250.columns[1], *v246.f32, 1), v250.columns[2], v246, 2)))).u8[0])
      {
        v79 = 2;
      }

      else
      {
        v79 = 1;
      }

      *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v79;
    }
  }

  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v80 = off_27DFB17B0;
  v243.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_type;
  v81 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
  if (v81 <= 2)
  {
    if (v81 >= 2)
    {
      v82 = (off_27DFB17B0 + 76);
      goto LABEL_28;
    }

LABEL_27:
    v82 = (off_27DFB17B0 + 88);
    goto LABEL_28;
  }

  if (v81 - 4 < 2)
  {
    goto LABEL_27;
  }

  if (v81 == 3)
  {
    v82 = (off_27DFB17B0 + 84);
  }

  else
  {
    v82 = (off_27DFB17B0 + 80);
  }

LABEL_28:
  swift_beginAccess();
  v83 = *v82;
  (*(v75 + 16))(v43, v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v76);
  v229 = v80;
  if (v83 <= 0.0)
  {
    v206 = *(v75 + 8);
    v206(v43, v76);
    v89 = 1.0;
  }

  else
  {
    v84 = v83;
    v85 = v219;
    sub_23AA0C044();
    sub_23AA0C014();
    v87 = v86;
    v88 = *(v75 + 8);
    v88(v85, v76);
    v88(v43, v76);
    v89 = 0.0;
    v206 = v88;
    if (v87 / v84 > 0.0)
    {
      v90 = 1.0;
      if (v87 / v84 <= 1.0)
      {
        v90 = v87 / v84;
      }

      v89 = v90;
    }
  }

  v91 = v245.i64[0];
  *&v92 = 1.0 - ((1.0 - v89) * (1.0 - v89));
  v246.i64[0] = type metadata accessor for Easing();
  v93 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition);
  v94 = v2 + v78[157];
  v227 = *(v94 + 48);
  v95 = vaddq_f32(v240, v227);
  v95.i32[3] = 0;
  *&v96 = sub_23A8D6F8C(v93, v95, *&v92);
  v240.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v96;
  v220 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation);
  v251.columns[1] = *(v94 + 16);
  v251.columns[2] = *(v94 + 32);
  v251.columns[0] = *v94;
  v251.columns[3] = v227;
  *v97.i64 = simd_quaternion(v251);
  simd_slerp(v220, v97, *&v92);
  v227.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v98;
  *&v99 = sub_23A8D6F8C(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions), *(v2 + v66), *&v92);
  v213 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v99;
  v100 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
  swift_beginAccess();
  v101 = v2 + v100;
  v102 = v224.i64[0];
  sub_23A8D5194(v101, v224.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v103 = v222;
  sub_23A8D5194(v2 + v221, v222, &qword_27DFAEB38, &unk_23AA11B60);
  v104 = v247.i64[0] + 48;
  v105 = *(v247.i64[0] + 48);
  v106 = v105(v103, 1, v91);
  v221 = v104;
  v220.i64[0] = v105;
  if (v106 == 1)
  {
    sub_23A8D50D0(v102, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D50D0(v103, &qword_27DFAEB38, &unk_23AA11B60);
    v107 = 1;
    v108 = v226;
  }

  else
  {
    v109 = v215;
    sub_23A8D5130(v103, v215);
    v110 = v214;
    sub_23A8D5194(v102, v214, &qword_27DFAEB38, &unk_23AA11B60);
    v111 = v102;
    if (v105(v110, 1, v91) == 1)
    {
      sub_23A8D50D0(v110, &qword_27DFAEB38, &unk_23AA11B60);
      v112 = *(v91 + 24);
      v113 = v109;
      sub_23A8D5AC4(v109 + *(v91 + 28), v242);
      sub_23A8D50D0(v102, &qword_27DFAEB38, &unk_23AA11B60);
      v114 = *v109;
      v115 = *(v109 + 8);
      v117 = v234;
      v116 = v235;
      v108 = v226;
      (*(v234 + 16))(v226 + *(v91 + 24), v113 + v112, v235);
      sub_23A8DE2CC(v113, type metadata accessor for CapturedRoom.Surface.Curve);
      *v108 = v114;
      *(v108 + 8) = v115;
      (*(v117 + 32))(v108 + *(v91 + 28), v242, v116);
    }

    else
    {
      v118 = v211;
      sub_23A8D5130(v110, v211);
      v119 = *(v118 + 8) + (*&v92 * (*(v109 + 8) - *(v118 + 8)));
      v120 = v242;
      sub_23A8D5AC4(v109 + *(v91 + 24), v242);
      v121 = v218;
      sub_23A8D5AC4(v109 + *(v91 + 28), v218);
      sub_23A8D50D0(v111, &qword_27DFAEB38, &unk_23AA11B60);
      v122 = *v118;
      sub_23A8DE2CC(v118, type metadata accessor for CapturedRoom.Surface.Curve);
      v123 = *v109;
      sub_23A8DE2CC(v109, type metadata accessor for CapturedRoom.Surface.Curve);
      v124 = sub_23A8D6C48(v122, v123, *&v92);
      v125 = v226;
      *v226 = v124;
      v125[2] = v119;
      v126 = v235;
      v127 = *(v234 + 32);
      v127(v125 + *(v91 + 24), v120, v235);
      v128 = v126;
      v108 = v125;
      v127(v125 + *(v91 + 28), v121, v128);
    }

    v107 = 0;
  }

  v129 = *(v247.i64[0] + 56);
  v247.i64[0] += 56;
  v226 = v129;
  (v129)(v108, v107, 1, v91);
  v130 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
  swift_beginAccess();
  sub_23A8D5068(v108, v2 + v130, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v131 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges);
  v132 = v232;
  if (*(v131 + 16) || *(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) + 16))
  {
    if (fabsf(*&v92 + -1.0) >= 0.0001)
    {
      v133 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges);

      v134 = sub_23A8D5E28(v131, v133, *&v92);

      *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges) = v134;
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges) = sub_23A9DC9E0(MEMORY[0x277D84F90]);
  }

  if (*(v2 + v243.i64[0]) == 2)
  {
    *v135.i64 = sub_23A8DC818();
    v136 = vaddq_f32(v135, *(v94 + 48));
    v136.i32[3] = 0;
  }

  else
  {
    *v137.i64 = sub_23A8DB4A0(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin));
    *v136.i64 = sub_23A8D6F8C(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), v137, *&v92);
  }

  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = v136;
  v224 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation);
  *v138.i64 = simd_quaternion(*v94);
  simd_slerp(v224, v138, *&v92);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = v139;
  *&v140 = sub_23A8D6F8C(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions), *(v2 + v223), *&v92);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = v140;
  v224.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);

  v141 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
  swift_beginAccess();
  sub_23A8D5194(v2 + v141, v132, &qword_27DFAEB38, &unk_23AA11B60);
  v142 = v244.i64[0];
  sub_23A8D5194(v2 + v225, v244.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v143 = v231;
  sub_23A8D5194(v142, v231, &qword_27DFAEB38, &unk_23AA11B60);
  v144 = v245.i64[0];
  v145 = v220.i64[0];
  if ((v220.i64[0])(v143, 1, v245.i64[0]) == 1)
  {
    sub_23A8D50D0(v142, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D50D0(v132, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D50D0(v143, &qword_27DFAEB38, &unk_23AA11B60);
    v146 = 1;
    v147 = v233;
  }

  else
  {
    v148 = v217;
    sub_23A8D5130(v143, v217);
    v149 = v216;
    sub_23A8D5194(v132, v216, &qword_27DFAEB38, &unk_23AA11B60);
    v150 = v132;
    if (v145(v149, 1, v144) == 1)
    {
      sub_23A8D50D0(v149, &qword_27DFAEB38, &unk_23AA11B60);
      v151 = *(v144 + 24);
      v152 = v242;
      v153 = v148;
      sub_23A8D5AC4(v148 + *(v144 + 28), v242);
      sub_23A8D50D0(v244.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
      sub_23A8D50D0(v150, &qword_27DFAEB38, &unk_23AA11B60);
      v154 = *v148;
      v155 = *(v148 + 8);
      v147 = v233;
      v156 = v234;
      v157 = v235;
      (*(v234 + 16))(v233 + *(v144 + 24), v153 + v151, v235);
      sub_23A8DE2CC(v153, type metadata accessor for CapturedRoom.Surface.Curve);
      *v147 = v154;
      *(v147 + 8) = v155;
      (*(v156 + 32))(v147 + *(v144 + 28), v152, v157);
    }

    else
    {
      v158 = v212;
      sub_23A8D5130(v149, v212);
      v159 = *(v158 + 8) + (*&v92 * (*(v148 + 8) - *(v158 + 8)));
      v160 = v242;
      sub_23A8D5AC4(v148 + *(v144 + 24), v242);
      v161 = v218;
      sub_23A8D5AC4(v148 + *(v144 + 28), v218);
      sub_23A8D50D0(v244.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
      sub_23A8D50D0(v150, &qword_27DFAEB38, &unk_23AA11B60);
      v162 = *v158;
      sub_23A8DE2CC(v158, type metadata accessor for CapturedRoom.Surface.Curve);
      v163 = *v148;
      sub_23A8DE2CC(v148, type metadata accessor for CapturedRoom.Surface.Curve);
      v164 = sub_23A8D6C48(v162, v163, *&v92);
      v147 = v233;
      v165 = v234;
      *v233 = v164;
      *(v147 + 8) = v159;
      v166 = *(v165 + 32);
      v167 = v160;
      v168 = v235;
      v166(v147 + *(v144 + 24), v167, v235);
      v166(v147 + *(v144 + 28), v161, v168);
    }

    v146 = 0;
  }

  (v226)(v147, v146, 1, v144);
  v169 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
  swift_beginAccess();
  sub_23A8D5068(v147, v2 + v169, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v170 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
  swift_beginAccess();
  v171 = v236;
  sub_23A8D5194(v2 + v170, v236, &unk_27DFAF020, &unk_23AA12300);
  v172 = v237;
  sub_23A8D5194(v2 + v228, v237, &unk_27DFAF020, &unk_23AA12300);
  v173 = v238;
  v174.n128_u32[0] = v92;
  sub_23A8D53D8(v171, v172, v238, v174);
  sub_23A8D50D0(v172, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v171, &unk_27DFAF020, &unk_23AA12300);
  v175 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v173, v2 + v175, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v176 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
  swift_beginAccess();
  sub_23A8D5194(v2 + v176, v171, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D5194(v2 + v230, v172, &unk_27DFAF020, &unk_23AA12300);
  v177.n128_u32[0] = v92;
  sub_23A8D53D8(v171, v172, v173, v177);
  sub_23A8D50D0(v172, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v171, &unk_27DFAF020, &unk_23AA12300);
  v178 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v173, v2 + v178, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v179 = v229;
  v180 = swift_beginAccess();
  if (v179[12] > 0.0 && *(v2 + v243.i64[0]) == 3)
  {
    v181 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
    if (*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) != 255)
    {
      v182 = v210;
      sub_23A8D5194(v2 + v209, v210, &qword_27DFAEB30, &unk_23AA11B50);
      v183 = v241;
      if (v207(v182, 1, v241) == 1)
      {
        v180 = sub_23A8D50D0(v182, &qword_27DFAEB30, &unk_23AA11B50);
      }

      else
      {
        v184 = v205;
        (*(v239 + 32))(v205, v182, v183);
        v185 = v219;
        sub_23AA0C044();
        sub_23AA0C014();
        v187 = v186;
        v188 = v185;
        v189 = v206;
        v206(v188, v183);
        if (v179[12] >= v187)
        {
          v180 = v189(v184, v183);
        }

        else
        {
          *(v2 + v181) = 255;
          v190 = sub_23A8D7C8C(v248);
          v192 = v191;
          v193 = type metadata accessor for AnimationGraph(0);
          if (!(*(*(v193 - 8) + 48))(v192, 1, v193))
          {
            sub_23A93C6B4(*(v2 + v181), *(v2 + v213));
          }

          (v190)(v248, 0);
          v180 = (v206)(v184, v241);
        }
      }
    }
  }

  *v194.i64 = MEMORY[0x23EE8FF80](v180, *(v2 + v240.i64[0]), *(v2 + v227.i64[0]), xmmword_23AA11AF0);
  v246 = v195;
  v247 = v194;
  v244 = v197;
  v245 = v196;
  v198 = sub_23A8D7C8C(v248);
  v200 = v199;
  v201 = type metadata accessor for AnimationGraph(0);
  if (!(*(*(v201 - 8) + 48))(v200, 1, v201))
  {
    v243 = *(v2 + v213);

    sub_23A93CCD0(v202, v247, v246, v245, v244, v243);
  }

  return (v198)(v248, 0);
}

uint64_t sub_23A8DE238(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.i8 = vadd_f32(*v3.i8, *v4.f32);
  *v3.i32 = vaddv_f32(*v3.i8);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

uint64_t sub_23A8DE2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A8DE32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationGraph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A8DE390()
{
  result = qword_27DFAE8C8;
  if (!qword_27DFAE8C8)
  {
    sub_23AA0C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAE8C8);
  }

  return result;
}

void *sub_23A8DE3E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return sub_23A9DC9E0(MEMORY[0x277D84F90]);
  }

  v3 = *(a2 + 16);
  if (v3 != v2)
  {
    sub_23A8DF388();
    swift_allocError();
    *v22 = v2;
    *(v22 + 8) = v3;
    *(v22 + 16) = 1;
    swift_willThrow();
    return v2;
  }

  v68 = *(a1 + 16);
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_284D80498[v5 + 32];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v6;
    v10 = sub_23A9F573C(v8);
    v12 = v6[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
      goto LABEL_58;
    }

    v16 = v11;
    if (v6[3] < v15)
    {
      sub_23A908698(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_23A9F573C(v8);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_62;
      }

LABEL_11:
      v6 = v78;
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v20 = v10;
    sub_23A90E07C();
    v10 = v20;
    v6 = v78;
    if (v16)
    {
LABEL_4:
      *(v6[7] + 8 * v10) = v7;

      goto LABEL_5;
    }

LABEL_12:
    v6[(v10 >> 6) + 8] |= 1 << v10;
    *(v6[6] + v10) = v8;
    *(v6[7] + 8 * v10) = v7;
    v18 = v6[2];
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v14)
    {
      goto LABEL_59;
    }

    v6[2] = v19;
LABEL_5:
    ++v5;
  }

  while (v5 != 4);
  v23 = 0;
  v83 = v6;
  v24 = a1 + 32;
  v70 = a2 + 32;
  v25 = v68;
  do
  {
    v26 = *(v70 + v23);
    if (v68 - 1 == v23)
    {
      v27 = 0;
    }

    else
    {
      v27 = v23 + 1;
    }

    v72 = *(v24 + 16 * v23);
    v75 = *(v24 + 16 * v27);
    v29 = sub_23A93CC08(&v78, v26);
    v30 = *v28;
    if (*v28)
    {
      v31 = v28;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v30;
      if ((v32 & 1) == 0)
      {
        v30 = sub_23A9388A8(0, *(v30 + 2) + 1, 1, v30);
        *v31 = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_23A9388A8((v33 > 1), v34 + 1, 1, v30);
        *v31 = v30;
      }

      *(v30 + 2) = v34 + 1;
      *&v30[16 * v34 + 32] = v72;
      (v29)(&v78, 0);
      v25 = v68;
    }

    else
    {
      (v29)(&v78, 0);
    }

    v36 = sub_23A93CC08(&v78, v26);
    v37 = *v35;
    if (*v35)
    {
      v38 = v35;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *v38 = v37;
      if ((v39 & 1) == 0)
      {
        v37 = sub_23A9388A8(0, *(v37 + 2) + 1, 1, v37);
        *v38 = v37;
      }

      v41 = *(v37 + 2);
      v40 = *(v37 + 3);
      if (v41 >= v40 >> 1)
      {
        v37 = sub_23A9388A8((v40 > 1), v41 + 1, 1, v37);
        *v38 = v37;
      }

      *(v37 + 2) = v41 + 1;
      *&v37[16 * v41 + 32] = v75;
    }

    (v36)(&v78, 0);
    ++v23;
  }

  while (v25 != v23);
  v42 = 0;
  v43 = v83 + 8;
  v73 = v83;
  v44 = 1 << *(v83 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v83[8];
  v47 = (v44 + 63) >> 6;
  v2 = MEMORY[0x277D84F98];
  v69 = v47;
  v71 = v83 + 8;
  while (v46)
  {
    v49 = v42;
LABEL_46:
    LOBYTE(v77) = *(v73[6] + (__clz(__rbit64(v46)) | (v49 << 6)));
    v50 = v77;

    sub_23A965154(v51, &v77, &v78);
    v76 = v78;
    v52 = v79;
    v54 = v80;
    v53 = v81;
    v55 = v82;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v2;
    v57 = sub_23A9F573C(v50);
    v59 = v2[2];
    v60 = (v58 & 1) == 0;
    v14 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v14)
    {
      goto LABEL_60;
    }

    v62 = v58;
    if (v2[3] >= v61)
    {
      if ((v56 & 1) == 0)
      {
        v67 = v57;
        sub_23A90DEE0();
        v57 = v67;
      }
    }

    else
    {
      sub_23A9083AC(v61, v56);
      v57 = sub_23A9F573C(v50);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_62;
      }
    }

    v46 &= v46 - 1;
    v2 = v77;
    if (v62)
    {
      v48 = v77[7] + 40 * v57;
      *v48 = v76;
      *(v48 + 8) = v52;
      *(v48 + 16) = v54;
      *(v48 + 24) = v53;
      *(v48 + 32) = v55;
    }

    else
    {
      v77[(v57 >> 6) + 8] |= 1 << v57;
      *(v2[6] + v57) = v50;
      v64 = v2[7] + 40 * v57;
      *v64 = v76;
      *(v64 + 8) = v52;
      *(v64 + 16) = v54;
      *(v64 + 24) = v53;
      *(v64 + 32) = v55;
      v65 = v2[2];
      v14 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v14)
      {
        goto LABEL_61;
      }

      v2[2] = v66;
    }

    v42 = v49;
    v47 = v69;
    v43 = v71;
  }

  while (1)
  {
    v49 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      return v2;
    }

    v46 = v43[v49];
    ++v42;
    if (v46)
    {
      goto LABEL_46;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void *sub_23A8DE9A8(int8x16_t a1, int8x16_t a2, __n128 a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v4 = swift_allocObject();
  v5 = vmul_f32(vmul_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)), 0x3F0000003F000000), *&a4);
  v6 = v5.f32[1];
  v43 = v5.f32[0];
  v7 = vmul_n_f32(vmul_f32(*a1.i8, 0x3F0000003F000000), *&a4);
  v8 = vsub_f32(0, v7);
  v9 = vmul_lane_f32(vmul_f32(*a2.i8, 0x3F0000003F000000), *&a4, 1);
  v10 = vadd_f32(a3.n128_u64[0], v9);
  *&v11 = vadd_f32(v10, v8);
  v12 = 0.0 - v5.f32[0];
  *(&v11 + 2) = (a3.n128_f32[2] + v5.f32[1]) + (0.0 - v5.f32[0]);
  HIDWORD(v11) = 0;
  *&v13 = vadd_f32(v7, v10);
  *(&v13 + 2) = v5.f32[0] + (a3.n128_f32[2] + v5.f32[1]);
  v4[1] = xmmword_23AA11C10;
  v4[2] = v11;
  HIDWORD(v13) = 0;
  v14 = 0.0 - v5.f32[1];
  v4[3] = v13;
  v53 = 0;
  sub_23A965154(v4, &v53, &v54);
  a2.i64[0] = v54;
  v46 = v55;
  a1.i32[0] = v57;
  v15 = vadd_f32(a3.n128_u64[0], v7);
  *&v16 = vadd_f32(v9, v15);
  *(&v16 + 2) = v6 + (a3.n128_f32[2] + v43);
  HIDWORD(v16) = 0;
  v17 = vsub_f32(0, v9);
  *&v18 = vadd_f32(v15, v17);
  *(&v18 + 2) = (a3.n128_f32[2] + v43) + v14;
  HIDWORD(v18) = 0;
  v37 = v18;
  v19 = vadd_f32(a3.n128_u64[0], v17);
  *&v18 = vadd_f32(v7, v19);
  *(&v18 + 2) = v43 + (a3.n128_f32[2] + v14);
  HIDWORD(v18) = 0;
  v20 = vadd_f32(a3.n128_u64[0], v8);
  *&v21 = vadd_f32(v8, v19);
  *(&v21 + 2) = v12 + (a3.n128_f32[2] + v14);
  HIDWORD(v21) = 0;
  v38 = v21;
  v39 = v18;
  *&v21 = vadd_f32(v17, v20);
  *(&v21 + 2) = v14 + (a3.n128_f32[2] + v12);
  HIDWORD(v21) = 0;
  v42 = v21;
  v44 = v16;
  *&v22 = vadd_f32(v9, v20);
  *(&v22 + 2) = v6 + (a3.n128_f32[2] + v12);
  HIDWORD(v22) = 0;
  v41 = v22;
  v50 = v56;
  v23 = swift_allocObject();
  v23[1] = xmmword_23AA11C10;
  v23[2] = v44;
  v23[3] = v37;
  v53 = 1;
  sub_23A965154(v23, &v53, &v54);
  v24 = v54;
  v25 = v55;
  v26 = v57;
  v45 = v56;
  v27 = swift_allocObject();
  v27[1] = xmmword_23AA11C10;
  v27[2] = v39;
  v27[3] = v38;
  v53 = 2;
  sub_23A965154(v27, &v53, &v54);
  v28 = v54;
  v29 = v55;
  v30 = v57;
  v40 = v56;
  v31 = swift_allocObject();
  v31[1] = xmmword_23AA11C10;
  v31[2] = v42;
  v31[3] = v41;
  v53 = 3;
  sub_23A965154(v31, &v53, &v54);
  v32 = v54;
  v33 = v55;
  v9.i32[0] = v57;
  v52 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC30, &qword_23AA11CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA11C20;
  *(inited + 32) = 0;
  *(inited + 40) = a2.i64[0];
  *(inited + 48) = v46;
  *(inited + 56) = v50;
  *(inited + 72) = a1.i32[0];
  *(inited + 80) = 1;
  *(inited + 88) = v24;
  *(inited + 96) = v25;
  *(inited + 104) = v45;
  *(inited + 120) = v26;
  *(inited + 128) = 2;
  *(inited + 136) = v28;
  *(inited + 144) = v29;
  *(inited + 152) = v40;
  *(inited + 168) = v30;
  *(inited + 176) = 3;
  *(inited + 184) = v32;
  *(inited + 192) = v33;
  *(inited + 200) = v52;
  *(inited + 216) = v9.i32[0];
  v35 = sub_23A9DC9E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC38, &qword_23AA11CB0);
  swift_arrayDestroy();
  return v35;
}

uint64_t *sub_23A8DED48(uint64_t *result, void *a2)
{
  v57 = result;
  v2 = a2;
  v3 = *result;
  if (*(*result + 16) || *(*a2 + 16))
  {
    v4 = 0;
    while (1)
    {
      v7 = *(&unk_284D804C0 + v4 + 32);
      if (!*(v3 + 16) || (v8 = sub_23A9F573C(*(&unk_284D804C0 + v4 + 32)), (v9 & 1) == 0) || (v10 = *v2, !*(*v2 + 16)) || (v11 = *(v3 + 56) + 40 * v8, v12 = *(v11 + 8), v13 = *(v11 + 24), v64 = *(v11 + 16), v65 = *v11, v14 = *(v11 + 32), v15 = sub_23A9F573C(v7), (v16 & 1) == 0))
      {
        sub_23A8DF388();
        swift_allocError();
        *v55 = v7;
        *(v55 + 8) = 0;
        *(v55 + 16) = 0;
        return swift_willThrow();
      }

      v59 = v12;
      v17 = *(v10 + 56) + 40 * v15;
      v18 = *v17;
      v61 = *(v17 + 8);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v13 + 16);
      v62 = v7;
      v63 = v4;
      v60 = *(v17 + 16);
      if (v21 >= 2)
      {
        break;
      }

LABEL_25:
      v28 = *(v19 + 16);
      if (v28 >= 2)
      {

        v29 = v19;
        while (1)
        {
          v31 = v28 - 1;
          v32 = *(v29 + 2);
          if (v28 - 1 >= v32)
          {
            goto LABEL_74;
          }

          if (v28 - 2 >= v32)
          {
            goto LABEL_75;
          }

          if (vabds_f32(*&v29[4 * v28 + 28], *&v29[4 * v28 + 24]) < 0.0001)
          {
            if (v28 == 2)
            {
              v33 = 1;
            }

            else
            {
              v33 = v28 - 2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_23A975CEC(v29);
            }

            v34 = *(v29 + 2);
            if (v33 >= v34)
            {
              goto LABEL_79;
            }

            v30 = v34 - 1;
            memmove(&v29[4 * v33 + 32], &v29[4 * v33 + 36], 4 * (v34 - 1 - v33));
            *(v29 + 2) = v30;
          }

          --v28;
          if (v31 <= 1)
          {

            goto LABEL_41;
          }
        }
      }

      v29 = v19;
LABEL_41:
      v67 = v13;

      sub_23A912794(v35);
      v36 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_23A975CEC(v36);
      }

      v37 = *(v36 + 2);
      v67 = v36 + 32;
      v68 = v37;
      v38 = sub_23AA0DBA4();
      if (v38 >= v37)
      {
        if (v37 >= 2)
        {
          v47 = -1;
          v48 = v36 + 32;
          for (i = 1; i != v37; ++i)
          {
            v50 = *&v36[4 * i + 32];
            v51 = v47;
            v52 = v48;
            do
            {
              v53 = *v52;
              if (v50 >= *v52)
              {
                break;
              }

              *v52 = v50;
              v52[1] = v53;
              --v52;
            }

            while (!__CFADD__(v51++, 1));
            v48 += 4;
            --v47;
          }
        }
      }

      else
      {
        v39 = v38;
        v56 = v18;
        v40 = v2;
        v2 = MEMORY[0x277D84F90];
        if (v37 >= 2)
        {
          v2 = sub_23AA0D324();
          v2[2] = v37 >> 1;
        }

        v66[0] = v2 + 4;
        v66[1] = v37 >> 1;
        sub_23A8DBD10(v66, v74, &v67, v39);
        if (v58)
        {
          goto LABEL_81;
        }

        v2[2] = 0;

        v2 = v40;
        v18 = v56;
      }

      v41 = *(v36 + 2);
      if (v41 > 1)
      {
        do
        {
          v43 = v41 - 1;
          v44 = *(v36 + 2);
          if (v41 - 1 >= v44)
          {
            goto LABEL_76;
          }

          if (v41 - 2 >= v44)
          {
            goto LABEL_77;
          }

          if (vabds_f32(*&v36[4 * v41 + 28], *&v36[4 * v41 + 24]) < 0.0001)
          {
            if (v41 == 2)
            {
              v45 = 1;
            }

            else
            {
              v45 = v41 - 2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_23A975CEC(v36);
            }

            v46 = *(v36 + 2);
            if (v45 >= v46)
            {
              goto LABEL_80;
            }

            v42 = v46 - 1;
            memmove(&v36[4 * v45 + 32], &v36[4 * v45 + 36], 4 * (v46 - 1 - v45));
            *(v36 + 2) = v42;
          }

          v41 = v43;
        }

        while (v43 > 1);
      }

      v67 = v65;
      LOBYTE(v68) = v59;
      v69 = v64;
      v70 = v13;
      v71 = v14;
      sub_23A9652D0(v36, v73);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *v57;
      sub_23A9DA688(v73, v62, isUniquelyReferenced_nonNull_native);
      v3 = v67;
      *v57 = v67;
      v67 = v18;
      LOBYTE(v68) = v61;
      v69 = v60;
      v70 = v29;
      v4 = v63 + 1;
      v71 = v20;
      sub_23A9652D0(v36, v72);

      v6 = swift_isUniquelyReferenced_nonNull_native();
      v67 = *v2;
      result = sub_23A9DA688(v72, v62, v6);
      *v2 = v67;
      if (v63 == 3)
      {
        return result;
      }
    }

    swift_bridgeObjectRetain_n();

    v22 = v13;
    while (1)
    {
      v24 = v21 - 1;
      v25 = *(v22 + 2);
      if (v21 - 1 >= v25)
      {
        break;
      }

      if (v21 - 2 >= v25)
      {
        goto LABEL_73;
      }

      if (vabds_f32(*&v22[4 * v21 + 28], *&v22[4 * v21 + 24]) < 0.0001)
      {
        if (v21 == 2)
        {
          v26 = 1;
        }

        else
        {
          v26 = v21 - 2;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_23A975CEC(v22);
        }

        v27 = *(v22 + 2);
        if (v26 >= v27)
        {
          goto LABEL_78;
        }

        v23 = v27 - 1;
        memmove(&v22[4 * v26 + 32], &v22[4 * v26 + 36], 4 * (v27 - 1 - v26));
        *(v22 + 2) = v23;
      }

      v21 = v24;
      if (v24 <= 1)
      {

        v13 = v22;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    v2[2] = 0;

    __break(1u);
  }

  return result;
}

unint64_t sub_23A8DF388()
{
  result = qword_27DFAEC40;
  if (!qword_27DFAEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC40);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScanItemError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanItemError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

unint64_t sub_23A8DF60C(float *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (vabds_f32(v3, v2) < 0.00000011921)
  {
    goto LABEL_30;
  }

  v5 = a1[6];
  v4 = a1[7];
  if (vabds_f32(v5, v4) < 0.00000011921)
  {
    goto LABEL_30;
  }

  v6 = v1[5];
  if (v6 <= v3)
  {
    goto LABEL_30;
  }

  v7 = v1[4];
  if (v2 <= v7)
  {
    goto LABEL_30;
  }

  v8 = v1[7];
  if (v8 <= v5)
  {
    goto LABEL_30;
  }

  v9 = v1[6];
  if (v4 <= v9)
  {
    goto LABEL_30;
  }

  v10 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  if (v7 < v3)
  {
    type metadata accessor for CurvedElement();
    v11 = swift_allocObject();
    v11[4] = v7;
    v11[5] = v3;
    v11[6] = v9;
    v11[7] = v8;
    MEMORY[0x23EE8FD70]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v18;
    v6 = v1[5];
    v9 = v1[6];
  }

  if (v2 < v6)
  {
    v12 = *(v1 + 7);
    type metadata accessor for CurvedElement();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 20) = v6;
    *(v13 + 24) = v9;
    *(v13 + 28) = v12;
    MEMORY[0x23EE8FD70]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v18;
    v9 = v1[6];
  }

  if (v3 <= v7)
  {
    v3 = v7;
  }

  if (v6 < v2)
  {
    v2 = v6;
  }

  if (v9 < v5)
  {
    type metadata accessor for CurvedElement();
    v14 = swift_allocObject();
    v14[4] = v3;
    v14[5] = v2;
    v14[6] = v9;
    v14[7] = v5;
    MEMORY[0x23EE8FD70]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v18;
  }

  v15 = v1[7];
  if (v4 < v15)
  {
    type metadata accessor for CurvedElement();
    v16 = swift_allocObject();
    v16[4] = v3;
    v16[5] = v2;
    v16[6] = v4;
    v16[7] = v15;
    MEMORY[0x23EE8FD70]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v18;
  }

  if (v10 >> 62)
  {
    if (sub_23AA0D7F4())
    {
      return v10;
    }

    goto LABEL_29;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:

LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23AA11BB0;
    *(v10 + 32) = v1;
  }

  return v10;
}

uint64_t sub_23A8DFAEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v39 = v11;
  v12 = *(v11 + 16);
  v47 = qword_27DFC0620;
  v48 = a1;
  v49 = v12;
  v50 = v11 + 16;
  (v12)(&v38 - v9, a1 + qword_27DFC0620, v4, v8);
  swift_beginAccess();
  v13 = *(v2 + 24);
  if (*(v13 + 16))
  {

    v14 = sub_23A9EDD28(v10);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      v17 = *(v39 + 8);

      v17(v10, v4);

      return v16;
    }
  }

  v45 = *(v39 + 8);
  v46 = v39 + 8;
  v45(v10, v4);
  v52 = MEMORY[0x277D84F90];
  v18 = *(v2 + 16);
  if (v18 < 0)
  {
    goto LABEL_27;
  }

  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v44 = sub_23AA0C3F4();
  v43 = *(v2 + 32);
  v19 = *(v2 + 48);
  v41 = *(v2 + 56);
  v42 = v19;
  v40 = xmmword_23AA10FC0;
  while (1)
  {
    sub_23AA0C3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
    v20 = swift_allocObject();
    *(v20 + 16) = v40;
    *(v20 + 56) = sub_23AA0C444();
    *(v20 + 64) = MEMORY[0x277CDAC30];
    __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    v21 = v42;
    sub_23AA0C434();
    sub_23AA0C164();
    swift_allocObject();
    sub_23AA0C154();
    sub_23AA0CAB4();
    sub_23AA0C214();
    sub_23AA0CA94();

    MEMORY[0x23EE8FD70](v22);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v16 = v52;
    v49(v6, v48 + v47, v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v2 + 24);
    v24 = v51;
    *(v2 + 24) = 0x8000000000000000;
    v26 = sub_23A9EDD28(v6);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v51;
        if (v25)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_23A90D874();
        v33 = v51;
        if (v30)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_23A907978(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_23A9EDD28(v6);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_28;
      }

      v26 = v31;
      v33 = v51;
      if (v30)
      {
LABEL_8:
        *(v33[7] + 8 * v26) = v16;

        goto LABEL_9;
      }
    }

    v33[(v26 >> 6) + 8] |= 1 << v26;
    v49((v33[6] + *(v39 + 72) * v26), v6, v4);
    *(v33[7] + 8 * v26) = v16;
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_26;
    }

    v33[2] = v36;
LABEL_9:
    v45(v6, v4);
    *(v2 + 24) = v33;
    swift_endAccess();

    if (!--v18)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

uint64_t sub_23A8DFFB8()
{
  swift_beginAccess();
  v13 = v0;
  v1 = *(v0 + 24);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v14 = v1;
  while (v5)
  {
LABEL_10:
    v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    if (v10 >> 62)
    {
      result = sub_23AA0D7F4();
      v11 = result;
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v11)
    {
      if (v11 < 1)
      {
        goto LABEL_22;
      }

      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EE90360](v12, v10);
        }

        else
        {
        }

        ++v12;
        sub_23AA0C164();
        sub_23AA0C204();
      }

      while (v11 != v12);

      v1 = v14;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      *(v13 + 24) = MEMORY[0x277D84F98];
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_23A8E0178()
{

  return swift_deallocClassInstance();
}

uint64_t _s8RoomPlan08CapturedA0V10ConfidenceO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v1);
  return sub_23AA0DD54();
}

uint64_t sub_23A8E0270()
{
  v1 = *v0;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v1);
  return sub_23AA0DD54();
}

uint64_t sub_23A8E02B4()
{
  v1 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v33 = sub_23AA0CE84();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23AA0C184();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A9FC870();
  v9 = v7;
  if (v7 >> 62)
  {
    v10 = sub_23AA0D7F4();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      if (v10 < 1)
      {
        __break(1u);
      }

      v11 = 0;
      v38 = v9 & 0xC000000000000001;
      v35 = (v5 + 8);
      v30 = (v2 + 8);
      v31 = v4;
      *&v8 = 136315138;
      v28 = v8;
      v32 = v0;
      while (1)
      {
        if (v38)
        {
          v12 = MEMORY[0x23EE90360](v11, v9);
        }

        else
        {
          v12 = *(v9 + 8 * v11 + 32);
        }

        if (*(v12 + qword_27DFC0640))
        {
          v13 = *(v1 + 156);
          LODWORD(v39[0]) = 0;

          REMaterialParameterBlockGetFloat();
          if (v13 != *v39)
          {
            REMaterialParameterBlockSetFloat();
            v14 = v36;
            sub_23AA0C9A4();
            sub_23AA0C114();
            (*v35)(v14, v37);
            REMeshComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              REMeshComponentRemoveAllMaterials();
              REMeshComponentAddMaterial();
              REMaterialParameterBlockArrayComponentGetComponentType();
              REEntityGetOrAddComponentByClass();
              if (REMaterialParameterBlockArrayComponentSize() != 1)
              {
                REMaterialParameterBlockArrayComponentResize();
              }

              REMaterialParameterBlockArrayComponentSetBlockAtIndex();
            }

            else
            {
              sub_23A8E90A8();
              v15 = swift_allocError();
              *v16 = 0;
              *(v16 + 8) = 0;
              *(v16 + 16) = 4;
              swift_willThrow();

              sub_23A8D4E5C();
              if (qword_27DFAE3A0 != -1)
              {
                swift_once();
              }

              sub_23AA0D644();
              v17 = v31;
              sub_23AA0CE94();
              v18 = v15;
              v19 = sub_23AA0CE54();
              v20 = sub_23AA0D494();

              v34 = v19;
              if (os_log_type_enabled(v19, v20))
              {
                v21 = swift_slowAlloc();
                v29 = swift_slowAlloc();
                v39[0] = v29;
                *v21 = v28;
                swift_getErrorValue();
                v22 = sub_23AA0DC34();
                v24 = sub_23A9A65A4(v22, v23, v39);

                *(v21 + 4) = v24;
                v25 = v34;
                _os_log_impl(&dword_23A8B4000, v34, v20, "cannot update edge line width: %s", v21, 0xCu);
                v26 = v29;
                __swift_destroy_boxed_opaque_existential_1(v29);
                MEMORY[0x23EE91710](v26, -1, -1);
                MEMORY[0x23EE91710](v21, -1, -1);
              }

              else
              {
              }

              (*v30)(v17, v33);
              v1 = v32;
            }

            goto LABEL_7;
          }
        }

LABEL_7:
        if (v10 == ++v11)
        {
        }
      }
    }
  }
}

void sub_23A8E086C(uint64_t a1, int a2, double a3)
{
  v123 = a2;
  v122 = a1;
  v116 = sub_23AA0CE84();
  v5 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v105 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v117 = &v104 - v8;
  MEMORY[0x28223BE20](v9);
  v124 = &v104 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v104 - v12;
  v109 = sub_23AA0C0E4();
  v114 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC60, &qword_23AA11F08);
  MEMORY[0x28223BE20](v15 - 8);
  v121 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = (&v104 - v18);
  swift_beginAccess();
  v106 = v3;
  v19 = *(v3 + 96);
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 64);
  v23 = (v20 + 63) >> 6;
  v115 = (v5 + 8);

  v24 = 0;
  v25 = 0;
  *&v26 = 136315138;
  v108 = v26;
  v125 = v13;
  v119 = v19;
  if (v22)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v27 >= v23)
    {
      break;
    }

    v22 = *(v19 + 64 + 8 * v27);
    ++v24;
    if (v22)
    {
      while (1)
      {
        v22 &= v22 - 1;

        sub_23A97E89C(v122, v123 & 1, a3);

        v24 = v27;
        if (!v22)
        {
          break;
        }

LABEL_10:
        v27 = v24;
      }
    }
  }

  v28 = v106;
  swift_beginAccess();
  v29 = *(v28 + 120);
  v30 = 1 << *(v29 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v29 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v35 = v109;
  v125 = v29;
  if (v32)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {

      v37 = v106;
      swift_beginAccess();
      v38 = *(v37 + 112);
      v39 = *(v38 + 64);
      v119 = (v38 + 64);
      v40 = 1 << *(v38 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      isa = v41 & v39;
      v107 = (v40 + 63) >> 6;
      v110 = v114 + 32;
      v111 = v114 + 16;
      v118 = (v114 + 8);
      v113 = v38;

      v43 = 0;
      v44 = v120;
      v45 = v121;
      while (isa)
      {
        v125 = 0;
        v46 = v43;
LABEL_38:
        v49 = __clz(__rbit64(isa));
        isa &= isa - 1;
        v50 = v49 | (v46 << 6);
        v51 = v113;
        v52 = v114;
        v53 = v112;
        (*(v114 + 16))(v112, *(v113 + 48) + *(v114 + 72) * v50, v35);
        v124 = *(*(v51 + 56) + 8 * v50);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC68, &qword_23AA11F10);
        v55 = *(v54 + 48);
        v56 = *(v52 + 32);
        v57 = v121;
        v56(v121, v53, v35);
        *&v57[v55] = v124;
        v45 = v57;
        (*(*(v54 - 8) + 56))(v57, 0, 1, v54);

        v44 = v120;
        v25 = v125;
LABEL_39:
        sub_23A8E9234(v45, v44);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC68, &qword_23AA11F10);
        if ((*(*(v58 - 8) + 48))(v44, 1, v58) == 1)
        {
          v125 = v25;

          v70 = v106;
          swift_beginAccess();
          v71 = *(v70 + 104);
          v72 = v71 + 64;
          v73 = 1 << v71[32];
          v74 = -1;
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          v75 = v74 & *(v71 + 8);
          v76 = (v73 + 63) >> 6;

          v77 = 0;
          v78 = v105;
          v121 = v71;
          if (v75)
          {
            goto LABEL_57;
          }

LABEL_53:
          while (1)
          {
            v79 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              goto LABEL_80;
            }

            if (v79 >= v76)
            {

              v93 = v106;
              swift_beginAccess();
              v94 = *(v93 + 128);
              v97 = *(v94 + 64);
              v96 = v94 + 64;
              v95 = v97;
              v98 = 1 << *(*(v93 + 128) + 32);
              v99 = -1;
              if (v98 < 64)
              {
                v99 = ~(-1 << v98);
              }

              v100 = v99 & v95;
              v101 = (v98 + 63) >> 6;

              v102 = 0;
              if (v100)
              {
                goto LABEL_74;
              }

              while (1)
              {
                v103 = v102 + 1;
                if (__OFADD__(v102, 1))
                {
                  goto LABEL_81;
                }

                if (v103 >= v101)
                {
                  break;
                }

                v100 = *(v96 + 8 * v103);
                ++v102;
                if (v100)
                {
                  v102 = v103;
                  do
                  {
LABEL_74:
                    v100 &= v100 - 1;

                    sub_23A9F7E44();
                  }

                  while (v100);
                  continue;
                }
              }

              return;
            }

            v75 = *&v72[8 * v79];
            ++v77;
            if (v75)
            {
              while (1)
              {
                v80 = __clz(__rbit64(v75));
                v75 &= v75 - 1;
                v81 = *(*(v71 + 7) + ((v79 << 9) | (8 * v80)));

                v82 = v125;
                sub_23A8EA444(v122, v123 & 1, a3);
                v125 = v82;
                if (v82)
                {
                  v124 = v81;
                  sub_23A8D4E5C();
                  if (qword_27DFAE3A0 != -1)
                  {
                    swift_once();
                  }

                  sub_23AA0D644();
                  sub_23AA0CE94();
                  v83 = v125;
                  v84 = v125;
                  v85 = sub_23AA0CE54();
                  v86 = sub_23AA0D494();

                  if (os_log_type_enabled(v85, v86))
                  {
                    v87 = swift_slowAlloc();
                    v120 = swift_slowAlloc();
                    v126[0] = v120;
                    *v87 = v108;
                    swift_getErrorValue();
                    v119 = v85;
                    v88 = sub_23AA0DC34();
                    v90 = sub_23A9A65A4(v88, v89, v126);

                    *(v87 + 4) = v90;
                    v78 = v105;
                    v91 = v119;
                    _os_log_impl(&dword_23A8B4000, v119, v86, "Cannot update object rendering: %s", v87, 0xCu);
                    v92 = v120;
                    __swift_destroy_boxed_opaque_existential_1(v120);
                    MEMORY[0x23EE91710](v92, -1, -1);
                    MEMORY[0x23EE91710](v87, -1, -1);
                  }

                  else
                  {
                  }

                  (*v115)(v78, v116);
                  v125 = 0;
                  v77 = v79;
                  v71 = v121;
                  if (!v75)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {

                  v77 = v79;
                  if (!v75)
                  {
                    goto LABEL_53;
                  }
                }

LABEL_57:
                v79 = v77;
              }
            }
          }
        }

        v59 = *(v44 + *(v58 + 48));
        sub_23A902B54(v122, v123 & 1, a3);
        if (v25)
        {
          v125 = v59;
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v60 = v117;
          sub_23AA0CE94();
          v61 = v25;
          v62 = sub_23AA0CE54();
          v63 = sub_23AA0D494();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v127[0] = v65;
            *v64 = v108;
            swift_getErrorValue();
            v66 = sub_23AA0DC34();
            v68 = sub_23A9A65A4(v66, v67, v127);

            *(v64 + 4) = v68;
            v45 = v121;
            _os_log_impl(&dword_23A8B4000, v62, v63, "Cannot update floor rendering: %s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v65);
            MEMORY[0x23EE91710](v65, -1, -1);
            v44 = v120;
            v60 = v117;
            MEMORY[0x23EE91710](v64, -1, -1);
          }

          else
          {
          }

          (*v115)(v60, v116);
          v25 = 0;
          v35 = v109;
        }

        else
        {
        }

        (*v118)(v44, v35);
      }

      if (v107 <= v43 + 1)
      {
        v47 = v43 + 1;
      }

      else
      {
        v47 = v107;
      }

      v48 = v47 - 1;
      while (1)
      {
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v46 >= v107)
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC68, &qword_23AA11F10);
          (*(*(v69 - 8) + 56))(v45, 1, 1, v69);
          isa = 0;
          v43 = v48;
          goto LABEL_39;
        }

        isa = v119[v46].isa;
        ++v43;
        if (isa)
        {
          v125 = 0;
          v43 = v46;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

    v32 = *(v29 + 64 + 8 * v36);
    ++v34;
    if (v32)
    {
      while (1)
      {
        v32 &= v32 - 1;

        sub_23A97E89C(v122, v123 & 1, a3);

        v34 = v36;
        if (!v32)
        {
          break;
        }

LABEL_21:
        v36 = v34;
      }
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

uint64_t sub_23A8E1850(void *a1)
{
  v2 = v1;
  v70 = sub_23AA0CE84();
  v4 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v55 = &v55 - v11;
  v12 = type metadata accessor for CapturedRoom.Object(0);
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CapturedRoom.Surface(0) - 8;
  MEMORY[0x28223BE20](v15);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v61 = &v55 - v18;
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v20;
  v58 = a1;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v62 = v4;
  v68 = v2;
  v60 = v21;
  v65 = v8;
  v69 = v14;
  if (v25)
  {
    v26 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    *&v67 = *(v21 + 72);
    v63 = v4 + 8;
    *&v22 = 136315138;
    v59 = v22;
    *&v64 = &v55 - v20;
    do
    {
      sub_23A8D52B8(v26, v23, type metadata accessor for CapturedRoom.Surface);
      sub_23A8E33CC(v23);
      sub_23A8D5320(v23, type metadata accessor for CapturedRoom.Surface);
      v26 += v67;
      --v25;
    }

    while (v25);
  }

  v27 = v58[5];
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    *&v67 = *(v56 + 72);
    *&v22 = 136315138;
    v64 = v22;
    do
    {
      sub_23A8D52B8(v29, v14, type metadata accessor for CapturedRoom.Object);
      sub_23A8E6D90(v14);
      sub_23A8D5320(v14, type metadata accessor for CapturedRoom.Object);
      v29 += v67;
      --v28;
    }

    while (v28);
  }

  v72 = v58[3];

  sub_23A911B78(v30);

  sub_23A911B78(v31);
  v33 = *(v72 + 2);
  if (v33)
  {
    v34 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v65 = v72;
    v35 = &v72[v34];
    v36 = *(v60 + 72);
    v37 = v62;
    v69 = (v62 + 8);
    *&v32 = 136315138;
    v67 = v32;
    v38 = v61;
    do
    {
      sub_23A8D52B8(v35, v38, type metadata accessor for CapturedRoom.Surface);
      if (*v38 - 2) < 4u || (*v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = *(v2 + 88) ^ 1;
      }

      if (*(v2 + 136) == 1 || (v39 & 1) != 0)
      {
        sub_23A8E4B44(v38);
      }

      else if (*(v2 + 88) == 1)
      {
        sub_23A8E48A4(v38);
      }

      sub_23A8D5320(v38, type metadata accessor for CapturedRoom.Surface);
      v35 += v36;
      --v33;
    }

    while (v33);
  }

  else
  {

    v37 = v62;
  }

  v41 = v60;
  v42 = v57;
  if (*(v2 + 88) == 1)
  {
    v43 = v58[4];
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = 0;
      while (v45 < *(v43 + 16))
      {
        sub_23A8D52B8(v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v45, v42, type metadata accessor for CapturedRoom.Surface);
        sub_23A8E5C74(v42);
        ++v45;
        result = sub_23A8D5320(v42, type metadata accessor for CapturedRoom.Surface);
        v41 = v60;
        if (v44 == v45)
        {
          return result;
        }
      }

      __break(1u);
      swift_once();

      sub_23AA0D644();
      v46 = v55;
      sub_23AA0CE94();
      v47 = 0;
      v48 = sub_23AA0CE54();
      v49 = sub_23AA0D494();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v71 = v51;
        *v50 = 136315138;
        swift_getErrorValue();
        v52 = sub_23AA0DC34();
        v54 = sub_23A9A65A4(v52, v53, &v71);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_23A8B4000, v48, v49, "Cannot create floor entity: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x23EE91710](v51, -1, -1);
        MEMORY[0x23EE91710](v50, -1, -1);

        return (*(v37 + 8))(v46, v70);
      }

      else
      {

        return (*(v37 + 8))(v46, v70);
      }
    }
  }

  return result;
}

void sub_23A8E259C(uint64_t a1)
{
  v3 = sub_23AA0CE84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CapturedRoom.Surface(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 88) == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(v11 + 16))
      {
        sub_23A8D52B8(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, type metadata accessor for CapturedRoom.Surface);
        sub_23A8E5C74(v10);
        ++v13;
        sub_23A8D5320(v10, type metadata accessor for CapturedRoom.Surface);
        if (v12 == v13)
        {
          return;
        }
      }

      __break(1u);
      swift_once();

      sub_23AA0D644();
      sub_23AA0CE94();
      v14 = 0;
      v15 = sub_23AA0CE54();
      v16 = sub_23AA0D494();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_23AA0DC34();
        v21 = sub_23A9A65A4(v19, v20, &v23);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A8B4000, v15, v16, "Cannot create floor entity: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x23EE91710](v18, -1, -1);
        MEMORY[0x23EE91710](v17, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_23A8E2914(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CapturedRoom.Object(0);
  v5 = *(v4 - 8);
  v85 = v4;
  v86 = v5;
  MEMORY[0x28223BE20](v4);
  v94 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0C0E4();
  v97 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v90 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v85 - v10;
  v95 = type metadata accessor for CapturedRoom.Surface(0);
  v87 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v89 = &v85 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  v88 = a1;
  v19 = *a1;
  v20 = *(*a1 + 16);
  v98 = v7;
  v96 = v13;
  if (v20)
  {
    v93 = *(v95 + 44);
    v21 = v19 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v22 = *(v87 + 72);
    v91 = (v97 + 16);
    v92 = v22;
    v23 = (v97 + 8);
    do
    {
      sub_23A8D52B8(v21, v18, type metadata accessor for CapturedRoom.Surface);
      (*v91)(v11, &v18[v93], v7);
      sub_23A8D5320(v18, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v24 = sub_23A9EDD28(v11);
      if (v25)
      {
        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v2[12];
        v100 = v28;
        v2[12] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23A90CFA0();
          v28 = v100;
        }

        v29 = *(v97 + 8);
        v30.n128_f64[0] = v29(*(v28 + 48) + *(v97 + 72) * v26, v7);
        sub_23A910778(v30);
        v29(v11, v98);
        v2[12] = v28;
        swift_endAccess();
        type metadata accessor for WallEntity(0);

        sub_23AA0C204();
        v7 = v98;

        v13 = v96;
      }

      else
      {
        (*v23)(v11, v7);
        swift_endAccess();
      }

      v21 += v92;
      --v20;
    }

    while (v20);
  }

  v31 = v88[5];
  v32 = *(v31 + 16);
  v33 = v90;
  if (v32)
  {
    v93 = *(v85 + 32);
    v34 = v31 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v92 = *(v86 + 72);
    v35 = (v97 + 16);
    v36 = (v97 + 8);
    do
    {
      v37 = v94;
      sub_23A8D52B8(v34, v94, type metadata accessor for CapturedRoom.Object);
      v38 = v98;
      (*v35)(v33, v37 + v93, v98);
      sub_23A8D5320(v37, type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v39 = sub_23A9EDD28(v33);
      if (v40)
      {
        v41 = v39;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v2[13];
        v100 = v43;
        v2[13] = 0x8000000000000000;
        if (!v42)
        {
          sub_23A90CFB4();
          v43 = v100;
        }

        v44 = v98;
        v45 = *(v97 + 8);
        v46.n128_f64[0] = v45(*(v43 + 48) + *(v97 + 72) * v41, v98);
        sub_23A910778(v46);
        v47 = v90;
        v45(v90, v44);
        v33 = v47;
        v2[13] = v43;
        swift_endAccess();
        type metadata accessor for ObjectEntity(0);

        sub_23AA0C204();

        v13 = v96;
      }

      else
      {
        (*v36)(v33, v38);
        swift_endAccess();
      }

      v34 += v92;
      --v32;
    }

    while (v32);
  }

  v101 = v88[3];

  sub_23A911B78(v48);

  sub_23A911B78(v49);
  v50 = *(v101 + 16);
  if (v50)
  {
    v51 = *(v87 + 80);
    v94 = v101;
    v52 = v101 + ((v51 + 32) & ~v51);
    v53 = *(v87 + 72);
    v54 = v89;
    do
    {
      sub_23A8D52B8(v52, v54, type metadata accessor for CapturedRoom.Surface);
      v55 = *(v95 + 44);
      swift_beginAccess();
      v56 = sub_23A9EDD28(v54 + v55);
      if (v57)
      {
        v58 = v56;
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v2[15];
        v100 = v60;
        v2[15] = 0x8000000000000000;
        if (!v59)
        {
          sub_23A90CFC8();
          v60 = v100;
        }

        v61.n128_f64[0] = (*(v97 + 8))(*(v60 + 48) + *(v97 + 72) * v58, v98);
        sub_23A910778(v61);
        v2[15] = v60;
        swift_endAccess();
        type metadata accessor for OpeningEntity(0);

        sub_23AA0C204();
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      v62 = sub_23A9EDD28(v54 + v55);
      if (v63)
      {
        v64 = v62;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v2[16];
        v100 = v66;
        v2[16] = 0x8000000000000000;
        v13 = v96;
        if (!v65)
        {
          sub_23A90CFDC();
          v66 = v100;
        }

        v67.n128_f64[0] = (*(v97 + 8))(*(v66 + 48) + *(v97 + 72) * v64, v98);
        sub_23A910778(v67);
        v2[16] = v66;
        swift_endAccess();
        type metadata accessor for PlaceholderEntity(0);

        sub_23AA0C204();

        v54 = v89;
        sub_23A8D5320(v89, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        swift_endAccess();
        sub_23A8D5320(v54, type metadata accessor for CapturedRoom.Surface);

        v13 = v96;
      }

      v52 += v53;
      --v50;
    }

    while (v50);
  }

  v68 = v88[4];
  v69 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  v70 = *(v68 + 16);
  if (v70)
  {
    v71 = *(v95 + 44);
    v72 = v68 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v73 = *(v87 + 72);
    v95 = v97 + 8;
    do
    {
      sub_23A8D52B8(v72, v13, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v74 = sub_23A9EDD28(&v13[v71]);
      if (v75)
      {
        v76 = v74;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v2[14];
        v99 = v78;
        v2[14] = 0x8000000000000000;
        if (!v77)
        {
          sub_23A90CFF0();
          v78 = v99;
        }

        v79.n128_f64[0] = (*(v97 + 8))(*(v78 + 48) + *(v97 + 72) * v76, v98);
        sub_23A910778(v79);
        v2[14] = v78;
        swift_endAccess();
        v80 = sub_23A8D5320(v13, type metadata accessor for CapturedRoom.Surface);
        MEMORY[0x23EE8FD70](v80);
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
          v13 = v96;
        }

        sub_23AA0D334();
        v69 = v100;
      }

      else
      {
        swift_endAccess();
        sub_23A8D5320(v13, type metadata accessor for CapturedRoom.Surface);
      }

      v72 += v73;
      --v70;
    }

    while (v70);
  }

  if (v69 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v82 = 0;
    while ((v69 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](v82, v69);
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        goto LABEL_50;
      }

LABEL_46:
      type metadata accessor for FloorEntity(0);
      sub_23AA0C204();

      ++v82;
      if (v83 == i)
      {
      }
    }

    if (v82 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v83 = v82 + 1;
    if (!__OFADD__(v82, 1))
    {
      goto LABEL_46;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }
}

void sub_23A8E33CC(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v122[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = &v122[-v9];
  v147 = sub_23AA0C0E4();
  v10 = *(v147 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v122[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_23AA0CE84();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = &v122[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v140 = &v122[-v14];
  v15 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(*(v1 + 96) + 16) || (, sub_23A9EDD28(a1 + v15), v17 = v16, , (v17 & 1) == 0))
  {
    v141 = v10;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v18 = qword_27DFC04B0;
    swift_beginAccess();
    v19 = *(v18 + 24);
    if (*(v19 + 16))
    {

      v20 = sub_23A9EDD28(a1 + v15);
      if ((v21 & 1) == 0)
      {

        return;
      }

      v135 = v15;
      v136 = a1;
      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = swift_allocObject();
      swift_weakInit();

      v137 = v22;
      sub_23A8E467C(v22, v23);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v139 = v23;

      v30.i64[0] = v25;
      v30.i64[1] = v27;
      if (v29)
      {
        v31 = -1;
      }

      else
      {
        v31 = 0;
      }

      __asm { FMOV            V2.4S, #1.0 }

      v129 = vbslq_s8(vdupq_n_s32(v31), _Q2, v30);
      v37 = *(v3 + 144);
      v124 = v7;
      if (v37)
      {
        v38 = sub_23A943464(*(v3 + 156));
        if (v2)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v39 = v140;
          sub_23AA0CE94();
          v40 = v2;
          v41 = sub_23AA0CE54();
          v42 = sub_23AA0D494();

          v43 = os_log_type_enabled(v41, v42);
          v44 = v135;
          if (v43)
          {
            v45 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            *&v151 = v138;
            *v45 = 136315138;
            swift_getErrorValue();
            LODWORD(v133) = v42;
            v46 = sub_23AA0DC34();
            v48 = sub_23A9A65A4(v46, v47, &v151);

            *(v45 + 4) = v48;
            _os_log_impl(&dword_23A8B4000, v41, v133, "Cannot create Edge Entity: %s", v45, 0xCu);
            v49 = v138;
            __swift_destroy_boxed_opaque_existential_1(v138);
            MEMORY[0x23EE91710](v49, -1, -1);
            MEMORY[0x23EE91710](v45, -1, -1);
          }

          else
          {
          }

          (*(v144 + 8))(v39, v145);
          v132 = 0;
          v140 = 0;
          v50 = v136;
LABEL_23:
          v138 = swift_allocObject();
          swift_weakInit();
          v51 = v141;
          v52 = v141 + 16;
          v133 = *(v141 + 16);
          v133(v146, v50 + v44, v147);
          v53 = *(v51 + 80);
          v134 = v3;
          v54 = (v53 + 16) & ~v53;
          v130 = v11 + 7;
          v55 = (v11 + 7 + v54) & 0xFFFFFFFFFFFFFFF8;
          v56 = (v55 + 31) & 0xFFFFFFFFFFFFFFF0;
          v57 = swift_allocObject();
          v127 = *(v51 + 32);
          v58 = v57 + v54;
          v59 = v146;
          v127(v58, v146, v147);
          v60 = (v57 + v55);
          v61 = v139;
          *v60 = sub_23A8E936C;
          v60[1] = v61;
          *(v57 + v56) = v129;
          v131 = v57;
          v62 = (v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF0));
          v63 = v138;
          *v62 = sub_23A8E9374;
          v62[1] = v63;
          v64 = swift_allocObject();
          swift_weakInit();
          v65 = v134;
          v128 = v52;
          v133(v59, v136 + v135, v147);
          v66 = (v53 + 24) & ~v53;
          v67 = (v130 + v66) & 0xFFFFFFFFFFFFFFF8;
          v68 = swift_allocObject();
          *(v68 + 16) = v64;
          v127(v68 + v66, v59, v147);
          v130 = v68;
          v69 = (v68 + v67);
          v70 = v65;
          v71 = v139;
          *v69 = sub_23A8E936C;
          v69[1] = v71;
          v72 = v137;
          v73 = v143;
          sub_23A8D5194(v137 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v143, &qword_27DFAEB38, &unk_23AA11B60);
          v74 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          LODWORD(v68) = (*(*(v74 - 8) + 48))(v73, 1, v74);
          swift_retain_n();

          sub_23A8D50D0(v73, &qword_27DFAEB38, &unk_23AA11B60);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (v68 == 1)
          {
            v76 = v131;
            if (Strong)
            {
              v77 = *(v70 + 24);
              ObjectType = swift_getObjectType();
              v79 = (*(v77 + 8))(ObjectType, v77);
LABEL_28:
              v123 = v79;
              swift_unknownObjectRelease();
              goto LABEL_30;
            }
          }

          else
          {
            v76 = v131;
            if (Strong)
            {
              v80 = *(v70 + 24);
              v81 = swift_getObjectType();
              v79 = (*(v80 + 16))(v81, v80);
              goto LABEL_28;
            }
          }

          v123 = 10;
LABEL_30:
          v82 = *(v70 + 88);
          type metadata accessor for WallEntity(0);
          v83 = swift_allocObject();
          *(v83 + qword_27DFB0588) = 1065353216;
          *(v83 + qword_27DFB0590) = 1065353216;
          v84 = v132;

          v85 = v130;

          sub_23AA0C044();
          *(v83 + qword_27DFAEEF8) = 0;
          v126 = qword_27DFAEF00;
          *(v83 + qword_27DFAEF00) = MEMORY[0x277D84F90];
          v127 = qword_27DFAEF08;
          *(v83 + qword_27DFAEF08) = 0;
          v125 = qword_27DFC0620;
          v143 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
          v86 = v72 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
          v87 = v147;
          v88 = v133;
          v133((v83 + qword_27DFC0620), v86, v147);
          *(v83 + qword_27DFC0630) = v82;
          swift_beginAccess();
          sub_23A8CA9D8(v70 + 32, &v148);
          v89 = v149;
          v90 = v150;
          __swift_project_boxed_opaque_existential_1(&v148, v149);
          v91 = v140;
          sub_23A8FB3D8(v89, v90, v129);
          v140 = v91;
          if (v91)
          {
            __swift_destroy_boxed_opaque_existential_1(&v148);
            sub_23A8D4E5C();
            if (qword_27DFAE3A0 != -1)
            {
              swift_once();
            }

            sub_23AA0D644();
            v92 = v142;
            sub_23AA0CE94();
            v93 = v140;
            v94 = v140;
            v95 = sub_23AA0CE54();
            v96 = sub_23AA0D494();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v98 = v93;
              v99 = swift_slowAlloc();
              *&v151 = v99;
              *v97 = 136315138;
              swift_getErrorValue();
              v100 = sub_23AA0DC34();
              v102 = sub_23A9A65A4(v100, v101, &v151);

              *(v97 + 4) = v102;
              _os_log_impl(&dword_23A8B4000, v95, v96, "Cannot create ScanEntity: %s", v97, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v99);
              MEMORY[0x23EE91710](v99, -1, -1);
              MEMORY[0x23EE91710](v97, -1, -1);

              (*(v144 + 8))(v142, v145);
            }

            else
            {

              (*(v144 + 8))(v92, v145);
            }

            (*(v141 + 8))(v83 + v125, v147);

            type metadata accessor for ScanEntity(0);
            swift_deallocPartialClassInstance();
          }

          else
          {
            if (v123 == 10)
            {
              v103 = 0;
            }

            else
            {
              v103 = v123;
            }

            __swift_destroy_boxed_opaque_existential_1(&v148);
            sub_23A8CAA3C(&v151, v83 + qword_27DFC0628);
            v104 = (v83 + qword_27DFAEEE8);
            *v104 = sub_23A8E96BC;
            v104[1] = v76;
            v105 = (v83 + qword_27DFAEEF0);
            *v105 = sub_23A8E96EC;
            v105[1] = v85;
            *(v83 + qword_27DFAEEE0) = v103;
            *(v83 + qword_27DFC0640) = v84;
            v106 = v83 + qword_27DFC0638;
            *v106 = 0;
            *(v106 + 4) = 1;

            v107 = sub_23AA0C1A4();
            v108 = v146;
            v88(v146, &v143[v137], v87);
            v144 = sub_23A8D5380();
            sub_23AA0DBB4();
            v109 = *(v141 + 8);
            v109(v108, v87);
            v145 = v107;
            sub_23AA0CA74();
            if (v84)
            {
              v88(v108, &v143[v137], v87);

              v110 = sub_23AA0DBB4();
              v112 = v111;
              v109(v108, v87);
              *&v151 = v110;
              *(&v151 + 1) = v112;
              MEMORY[0x23EE8FCA0](0x746E45656764655FLL, 0xEB00000000797469);
              sub_23AA0CA74();
              type metadata accessor for ScanEntity(0);
              sub_23AA0C214();
            }

            v144 = v109;
            v113 = v143;
            v114 = sub_23AA0C664();
            (*(*(v114 - 8) + 56))(v124, 1, 1, v114);
            type metadata accessor for ScanEntity(0);
            v115 = v145;
            sub_23AA0C604();
            v116 = v137;
            sub_23AA0CB14();
            sub_23AA0C2B4();
            if (qword_27DFAE458 != -1)
            {
              swift_once();
            }

            v117 = v146;
            if (qword_27DFC0700)
            {
              v118 = &v113[v116];
              v119 = v147;
              v133(v146, v118, v147);
              sub_23A94F3AC(v115, v117);

              (v144)(v117, v119);
            }

            else
            {
            }

            v120 = v134;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v148 = *(v120 + 96);
            *(v120 + 96) = 0x8000000000000000;
            sub_23A9D9BE0(v115, v136 + v135, isUniquelyReferenced_nonNull_native);
            *(v120 + 96) = v148;
            swift_endAccess();
            type metadata accessor for ScanContainer(0);
            sub_23AA0C214();
          }

          return;
        }

        v132 = v38;
        v140 = 0;
      }

      else
      {
        v140 = v2;
        v132 = 0;
      }

      v50 = v136;
      v44 = v135;
      goto LABEL_23;
    }
  }
}

double sub_23A8E467C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      v8 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return *&v8;
    }
  }

  else if (*(Strong + 136))
  {

    return sub_23A963554();
  }

  swift_beginAccess();
  sub_23A8CA9D8(v4 + 32, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9 = (*(v7 + 32))(v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_23A8E47AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v7 + 32, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 112))(a1, v8, v9, a4);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_23A8E48A4(uint64_t a1)
{
  v3 = sub_23AA0C0E4();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(*(v1 + 120) + 16) || (, sub_23A9EDD28(a1 + v6), v8 = v7, , (v8 & 1) == 0))
  {
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v9 = qword_27DFC04B0;
    swift_beginAccess();
    if (*(*(v9 + 24) + 16))
    {

      sub_23A9EDD28(a1 + v6);
      v11 = v10;

      if (v11)
      {
        if (*(*(v9 + 24) + 16))
        {

          sub_23A9EDD28(a1 + v6);
          if (v12)
          {

            v13 = *(v1 + 88);
            type metadata accessor for PlaceholderEntity(0);
            swift_allocObject();

            v15 = sub_23A9F874C(v14, v13);

            if (v15)
            {
              (*(v18 + 16))(v5, a1 + v6, v3);
              swift_beginAccess();

              sub_23A9EA864(v16, v5);
              swift_endAccess();
              type metadata accessor for ScanContainer(0);
              sub_23AA0C214();
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_23A8E4B44(uint64_t a1)
{
  v3 = v1;
  v118 = sub_23AA0CE84();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v102 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = (&v102 - v10);
  v11 = sub_23AA0C0E4();
  v121 = *(v11 - 8);
  v12 = *(v121 + 64);
  MEMORY[0x28223BE20](v11);
  v123 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(*(v1 + 120) + 16) || (, sub_23A9EDD28(a1 + v13), v15 = v14, , (v15 & 1) == 0))
  {
    v122 = v13;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v16 = qword_27DFC04B0;
    swift_beginAccess();
    v17 = *(v16 + 24);
    v18 = v122;
    if (*(v17 + 16))
    {

      v19 = sub_23A9EDD28(a1 + v18);
      if ((v20 & 1) == 0)
      {

        return;
      }

      v103 = v8;
      v106 = v2;
      v119 = *(*(v17 + 56) + 8 * v19);
      v21 = v119;

      v22 = swift_allocObject();
      v113 = v22;
      swift_weakInit();

      sub_23A8E5A4C(v21, v22);
      v23 = v18;
      v25 = v24;
      v114 = v3;
      v27 = v26;
      v28 = a1;
      v108 = a1;
      v30 = v29;

      v31.i64[0] = v25;
      v31.i64[1] = v27;
      if (v30)
      {
        v32 = -1;
      }

      else
      {
        v32 = 0;
      }

      __asm { FMOV            V2.4S, #1.0 }

      v110 = vbslq_s8(vdupq_n_s32(v32), _Q2, v31);
      v112 = swift_allocObject();
      swift_weakInit();
      v38 = v121;
      v39 = v121 + 16;
      v111 = *(v121 + 16);
      v111(v123, v28 + v23, v11);
      v40 = *(v38 + 80);
      v41 = (v40 + 16) & ~v40;
      v105 = v12 + 7;
      v42 = (v12 + 7 + v41) & 0xFFFFFFFFFFFFFFF8;
      v115 = v11;
      v43 = (v42 + 31) & 0xFFFFFFFFFFFFFFF0;
      v44 = swift_allocObject();
      v45 = *(v38 + 32);
      v45(v44 + v41, v123, v115);
      v46 = (v44 + v42);
      v47 = v113;
      *v46 = sub_23A8E9348;
      v46[1] = v47;
      *(v44 + v43) = v110;
      v109 = v44;
      v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF0));
      v49 = v112;
      *v48 = sub_23A8E9350;
      v48[1] = v49;
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = v123;
      v107 = v39;
      v111(v123, v108 + v122, v115);
      v52 = (v40 + 24) & ~v40;
      v53 = (v105 + v52) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 16) = v50;
      v55 = v54 + v52;
      v56 = v115;
      v45(v55, v51, v115);
      v57 = (v54 + v53);
      v58 = v54;
      v59 = v113;
      *v57 = sub_23A8E9348;
      v57[1] = v59;
      v60 = v120;
      sub_23A8D5194(v119 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v120, &qword_27DFAEB38, &unk_23AA11B60);
      v61 = type metadata accessor for CapturedRoom.Surface.Curve(0);
      LODWORD(v54) = (*(*(v61 - 8) + 48))(v60, 1, v61);
      swift_retain_n();

      sub_23A8D50D0(v60, &qword_27DFAEB38, &unk_23AA11B60);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (v54 == 1)
      {
        v63 = v106;
        v64 = v109;
        if (Strong)
        {
          v65 = v114;
          v66 = *(v114 + 24);
          ObjectType = swift_getObjectType();
          v68 = (*(v66 + 24))(ObjectType, v66);
LABEL_16:
          v71 = v68;
          swift_unknownObjectRelease();
          goto LABEL_18;
        }
      }

      else
      {
        v63 = v106;
        v64 = v109;
        if (Strong)
        {
          v65 = v114;
          v69 = *(v114 + 24);
          v70 = swift_getObjectType();
          v68 = (*(v69 + 32))(v70, v69);
          goto LABEL_16;
        }
      }

      v71 = 10;
      v65 = v114;
LABEL_18:
      v72 = *(v65 + 88);
      type metadata accessor for OpeningEntity(0);
      v73 = swift_allocObject();
      *(v73 + qword_27DFB0588) = 1065353216;
      *(v73 + qword_27DFB0590) = 1065353216;
      v74 = v119;

      sub_23AA0C044();
      *(v73 + qword_27DFAEEF8) = 0;
      v106 = qword_27DFAEF00;
      *(v73 + qword_27DFAEF00) = MEMORY[0x277D84F90];
      v120 = qword_27DFAEF08;
      *(v73 + qword_27DFAEF08) = 0;
      v104 = qword_27DFC0620;
      v102 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
      v75 = v56;
      v76 = v111;
      v111((v73 + qword_27DFC0620), v74 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v75);
      *(v73 + qword_27DFC0630) = v72;
      swift_beginAccess();
      sub_23A8CA9D8(v65 + 32, v124);
      v77 = v125;
      v78 = v126;
      __swift_project_boxed_opaque_existential_1(v124, v125);
      sub_23A8FB468(v77, v78, v110);
      v105 = v58;
      if (v63)
      {
        __swift_destroy_boxed_opaque_existential_1(v124);
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v79 = v116;
        sub_23AA0CE94();
        v80 = v63;
        v81 = sub_23AA0CE54();
        v82 = sub_23AA0D494();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v127 = v84;
          *v83 = 136315138;
          swift_getErrorValue();
          v85 = sub_23AA0DC34();
          v87 = v79;
          v88 = sub_23A9A65A4(v85, v86, &v127);

          *(v83 + 4) = v88;
          _os_log_impl(&dword_23A8B4000, v81, v82, "Cannot create ScanEntity: %s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          MEMORY[0x23EE91710](v84, -1, -1);
          MEMORY[0x23EE91710](v83, -1, -1);

          (*(v117 + 8))(v87, v118);
        }

        else
        {

          (*(v117 + 8))(v79, v118);
        }

        (*(v121 + 8))(v73 + v104, v115);

        type metadata accessor for ScanEntity(0);
        swift_deallocPartialClassInstance();
      }

      else
      {
        if (v71 == 10)
        {
          v71 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v124);
        sub_23A8CAA3C(&v127, v73 + qword_27DFC0628);
        v89 = (v73 + qword_27DFAEEE8);
        *v89 = sub_23A8E96BC;
        v89[1] = v64;
        v90 = (v73 + qword_27DFAEEF0);
        *v90 = sub_23A8E96EC;
        v90[1] = v58;
        *(v73 + qword_27DFAEEE0) = v71;
        *(v73 + qword_27DFC0640) = 0;
        v91 = v73 + qword_27DFC0638;
        *v91 = 0;
        *(v91 + 4) = 1;

        v92 = sub_23AA0C1A4();
        v93 = v102;
        v94 = v123;
        v95 = v115;
        v76(v123, v119 + v102, v115);
        sub_23A8D5380();
        sub_23AA0DBB4();
        v96 = *(v121 + 8);
        v121 += 8;
        v120 = v96;
        (v96)(v94, v95);
        sub_23AA0CA74();
        v97 = sub_23AA0C664();
        (*(*(v97 - 8) + 56))(v103, 1, 1, v97);
        type metadata accessor for ScanEntity(0);
        sub_23AA0C604();
        sub_23AA0CB14();
        sub_23AA0C2B4();
        if (qword_27DFAE458 != -1)
        {
          swift_once();
        }

        if (qword_27DFC0700)
        {
          v98 = v119 + v93;
          v99 = v123;
          v111(v123, v98, v95);
          sub_23A94F3AC(v92, v99);

          (v120)(v99, v95);
        }

        else
        {
        }

        v100 = v114;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = *(v100 + 120);
        *(v100 + 120) = 0x8000000000000000;
        sub_23A9D9E1C(v92, v108 + v122, isUniquelyReferenced_nonNull_native);
        *(v100 + 120) = v124[0];
        swift_endAccess();
        type metadata accessor for ScanContainer(0);
        sub_23AA0C214();
      }
    }
  }
}

double sub_23A8E5A4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      v8 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return *&v8;
    }
  }

  else if (*(Strong + 136))
  {

    return sub_23A963554();
  }

  swift_beginAccess();
  sub_23A8CA9D8(v4 + 32, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9 = (*(v7 + 40))(v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_23A8E5B7C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v7 + 32, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 120))(a1, v8, v9, a4);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_23A8E5C74(uint64_t a1)
{
  v3 = v1;
  v5 = sub_23AA0CE84();
  v104 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v103 = (v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = v87 - v8;
  v9 = sub_23AA0C0E4();
  v105 = *(v9 - 8);
  v10 = v105[8];
  MEMORY[0x28223BE20](v9);
  v107 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(v1[14] + 16) || (, sub_23A9EDD28(a1 + v11), v13 = v12, , (v13 & 1) == 0))
  {
    v106 = v11;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v14 = qword_27DFC04B0;
    swift_beginAccess();
    v15 = *(v14 + 24);
    if (*(v15 + 16))
    {

      v16 = sub_23A9EDD28(a1 + v106);
      if ((v17 & 1) == 0)
      {

        return;
      }

      v88 = v5;
      v100 = a1;
      v93 = v2;
      v18 = *(*(v15 + 56) + 8 * v16);

      v19 = swift_allocObject();
      swift_weakInit();

      v96 = v18;
      sub_23A8E6B68(v18, v19);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v97 = v19;

      if (v25)
      {
        swift_beginAccess();
        v26 = *(v3 + 7);
        v27 = *(v3 + 8);
        v28 = __swift_project_boxed_opaque_existential_1(v3 + 4, v26);
        v29 = *(v26 - 8);
        v30 = MEMORY[0x28223BE20](v28);
        v32 = v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v29 + 16))(v32, v30);
        v33.n128_f64[0] = (*(v27 + 48))(v26, v27);
        v94 = v33;
        (*(v29 + 8))(v32, v26);
      }

      else
      {
        v34.n128_u64[0] = v21;
        v34.n128_u64[1] = v23;
        v94 = v34;
      }

      v35 = v106;
      v101 = swift_allocObject();
      swift_weakInit();
      v36 = v105;
      v37 = v105 + 2;
      v98 = v105[2];
      v98(v107, v100 + v35, v9);
      v38 = *(v36 + 80);
      v39 = (v38 + 16) & ~v38;
      v92 = v10 + 7;
      v40 = (v10 + 7 + v39) & 0xFFFFFFFFFFFFFFF8;
      v99 = v9;
      v41 = (v40 + 31) & 0xFFFFFFFFFFFFFFF0;
      v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF0;
      v43 = swift_allocObject();
      v91 = v36[4];
      v91(v43 + v39, v107, v99);
      v44 = (v43 + v40);
      v90 = sub_23A8E9324;
      v45 = v3;
      v46 = v97;
      *v44 = sub_23A8E9324;
      v44[1] = v46;
      *(v43 + v41) = v94;
      v47 = v99;
      v95 = v43;
      v48 = (v43 + v42);
      v49 = v101;
      *v48 = sub_23A8E932C;
      v48[1] = v49;
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = v107;
      v89 = v37;
      v98(v107, v100 + v106, v47);
      v52 = (v38 + 24) & ~v38;
      v53 = (v92 + v52) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 16) = v50;
      v55 = v54 + v52;
      v56 = v54;
      v91(v55, v51, v47);
      v57 = (v56 + v53);
      v58 = v45;
      *v57 = v90;
      v57[1] = v46;
      LODWORD(v38) = *(v45 + 88);
      type metadata accessor for FloorEntity(0);
      v59 = swift_allocObject();
      v60 = v59;
      if (v38 == 1)
      {
        *(v59 + qword_27DFAEEF8) = 0;
        v87[1] = qword_27DFAEF00;
        *(v59 + qword_27DFAEF00) = MEMORY[0x277D84F90];
        v90 = qword_27DFAEF08;
        *(v59 + qword_27DFAEF08) = 0;
        v61 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
        v87[0] = qword_27DFC0620;
        v62 = v96;
        v98((v59 + qword_27DFC0620), v96 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v47);
        *(v60 + qword_27DFC0630) = 1;
        swift_beginAccess();
        sub_23A8CA9D8(v58 + 32, v108);
        v63 = v109;
        v64 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        swift_retain_n();

        v91 = v58;

        v65 = v95;

        v66 = v93;
        sub_23A8FB4F8(v63, v64, v94);
        v92 = v56;
        if (!v66)
        {
          __swift_destroy_boxed_opaque_existential_1(v108);
          sub_23A8CAA3C(&v111, v60 + qword_27DFC0628);
          v77 = (v60 + qword_27DFAEEE8);
          *v77 = sub_23A8E96BC;
          v77[1] = v65;
          v78 = (v60 + qword_27DFAEEF0);
          *v78 = sub_23A8E96EC;
          v78[1] = v56;
          *(v60 + qword_27DFAEEE0) = 8;
          *(v60 + qword_27DFC0640) = 0;
          v79 = v60 + qword_27DFC0638;
          *v79 = 1042536202;
          *(v79 + 4) = 0;

          v80 = sub_23AA0C1A4();
          v104 = v61;
          v81 = v107;
          v98(v107, v62 + v61, v47);
          sub_23A8D5380();
          sub_23AA0DBB4();
          v82 = v105[1];
          ++v105;
          v103 = v82;
          v82(v81, v47);
          sub_23AA0CA74();
          v83 = sub_23AA0C664();
          (*(*(v83 - 8) + 56))(v102, 1, 1, v83);
          type metadata accessor for ScanEntity(0);
          sub_23AA0C604();
          sub_23AA0CB14();
          sub_23AA0C2B4();
          if (qword_27DFAE458 != -1)
          {
            swift_once();
          }

          v84 = v91;
          if (qword_27DFC0700)
          {
            v85 = v107;
            v98(v107, v62 + v104, v47);
            sub_23A94F3AC(v80, v85);

            v103(v85, v47);
          }

          else
          {
          }

          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = *(v84 + 14);
          sub_23A9DA814(v80, v100 + v106, isUniquelyReferenced_nonNull_native);
          *(v84 + 14) = v108[0];
          swift_endAccess();
          type metadata accessor for ScanContainer(0);
          sub_23AA0C214();

          goto LABEL_25;
        }

        __swift_destroy_boxed_opaque_existential_1(v108);
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v67 = v103;
        sub_23AA0CE94();
        v68 = v66;
        v69 = sub_23AA0CE54();
        v70 = sub_23AA0D494();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v111 = v72;
          *v71 = 136315138;
          swift_getErrorValue();
          v73 = sub_23AA0DC34();
          v75 = sub_23A9A65A4(v73, v74, &v111);

          *(v71 + 4) = v75;
          _os_log_impl(&dword_23A8B4000, v69, v70, "Cannot create ScanEntity: %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x23EE91710](v72, -1, -1);
          v76 = v71;
          v47 = v99;
          MEMORY[0x23EE91710](v76, -1, -1);
        }

        else
        {
        }

        (*(v104 + 8))(v67, v88);
        (v105[1])(v60 + v87[0], v47);

        type metadata accessor for ScanEntity(0);
        swift_deallocPartialClassInstance();
      }

      else
      {
        swift_retain_n();

        swift_deallocPartialClassInstance();
      }

LABEL_25:
    }
  }
}

double sub_23A8E6B68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      v8 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return *&v8;
    }
  }

  else if (*(Strong + 136))
  {

    return sub_23A963554();
  }

  swift_beginAccess();
  sub_23A8CA9D8(v4 + 32, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9 = (*(v7 + 48))(v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_23A8E6C98@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v7 + 32, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 128))(a1, v8, v9, a4);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_23A8E6D90(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v105 - v6;
  v127 = sub_23AA0CE84();
  v126 = *(v127 - 1);
  MEMORY[0x28223BE20](v127);
  v128 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0C0E4();
  v130 = *(v8 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for CapturedRoom.Object(0) + 32);
  swift_beginAccess();
  if (!*(*(v1 + 13) + 16) || (, sub_23A9EDD28(a1 + v10), v12 = v11, , (v12 & 1) == 0))
  {
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v13 = qword_27DFC04B0;
    swift_beginAccess();
    v14 = *(v13 + 24);
    if (*(v14 + 16))
    {

      v15 = sub_23A9EDD28(a1 + v10);
      if (v16)
      {
        v129 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
        v121 = v2;
        v119 = a1;
        v17 = v3;
        v18 = *(*(v14 + 56) + 8 * v15);

        v19 = swift_allocObject();
        swift_weakInit();

        sub_23A8E7E1C(v18, v19);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v118 = v19;

        v123 = v18;
        if (v25)
        {
          swift_beginAccess();
          v26 = *(v17 + 7);
          v27 = *(v17 + 8);
          v28 = __swift_project_boxed_opaque_existential_1(v17 + 4, v26);
          v29 = v8;
          v30 = *(v26 - 8);
          v31 = MEMORY[0x28223BE20](v28);
          v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v33, v31);
          v34.n128_f64[0] = (*(v27 + 56))(v26, v27);
          v115 = v34;
          (*(v30 + 8))(v33, v26);
          v8 = v29;
        }

        else
        {
          v35.n128_u64[0] = v21;
          v35.n128_u64[1] = v23;
          v115 = v35;
        }

        v36 = v129;
        v120 = v17;
        v124 = swift_allocObject();
        swift_weakInit();
        v37 = v130;
        v38 = v130 + 16;
        v122 = *(v130 + 16);
        v122(v36, v119 + v10, v8);
        v39 = *(v37 + 80);
        v40 = (v39 + 16) & ~v39;
        v116 = v9 + 7;
        v41 = (v9 + 7 + v40) & 0xFFFFFFFFFFFFFFF8;
        v42 = (v41 + 31) & 0xFFFFFFFFFFFFFFF0;
        v43 = swift_allocObject();
        v112 = v10;
        v44 = v43;
        v111 = *(v37 + 32);
        v111(v43 + v40, v129, v8);
        v45 = (v44 + v41);
        v110 = sub_23A8E92DC;
        v46 = v118;
        *v45 = sub_23A8E92DC;
        v45[1] = v46;
        *(v44 + v42) = v115;
        v117 = v44;
        v47 = (v44 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF0));
        v48 = v124;
        *v47 = sub_23A8E92E4;
        v47[1] = v48;
        v49 = swift_allocObject();
        swift_weakInit();
        v113 = v38;
        v122(v129, v119 + v112, v8);
        v50 = (v39 + 24) & ~v39;
        v51 = (v116 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        v116 = v52;
        *(v52 + 16) = v49;
        v114 = v8;
        v111(v52 + v50, v129, v8);
        v53 = (v52 + v51);
        v54 = v120;
        *v53 = v110;
        v53[1] = v46;
        if (*(v54 + 18))
        {
          v55 = v54[39];
          swift_retain_n();

          v56 = v121;
          v57 = sub_23A943464(v55);
          v58 = v56;
          if (v56)
          {

            v59 = 0;
            v58 = 0;
          }

          else
          {
            v59 = v57;
          }
        }

        else
        {
          swift_retain_n();

          v59 = 0;
          v58 = v121;
        }

        v60 = v123;
        v61 = v114;
        v62 = *(v54 + 88);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v63 = *(v54 + 3);
          ObjectType = swift_getObjectType();
          v107 = (*(v63 + 40))(ObjectType, v63);
          swift_unknownObjectRelease();
        }

        else
        {
          v107 = 0;
        }

        type metadata accessor for ObjectEntity(0);
        v65 = swift_allocObject();
        *(v65 + qword_27DFAEEF8) = 0;
        v109 = qword_27DFAEF00;
        *(v65 + qword_27DFAEF00) = MEMORY[0x277D84F90];
        v110 = qword_27DFAEF08;
        *(v65 + qword_27DFAEF08) = 0;
        v108 = qword_27DFC0620;
        v106 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
        v122((v65 + qword_27DFC0620), v60 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v61);
        *(v65 + qword_27DFC0630) = v62;
        swift_beginAccess();
        sub_23A8CA9D8((v54 + 8), &v131);
        v66 = v132;
        v67 = v133;
        __swift_project_boxed_opaque_existential_1(&v131, v132);

        v68 = v116;

        v69 = v117;

        sub_23A8FB588(v66, v67, v115);
        v70 = v58;
        v111 = v59;
        if (v58)
        {
          v71 = v61;
          __swift_destroy_boxed_opaque_existential_1(&v131);
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v72 = v128;
          sub_23AA0CE94();
          v73 = v70;
          v74 = sub_23AA0CE54();
          v75 = sub_23AA0D494();

          v129 = v74;
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v121 = v70;
            v77 = v76;
            v78 = swift_slowAlloc();
            *&v134 = v78;
            *v77 = 136315138;
            swift_getErrorValue();
            v79 = sub_23AA0DC34();
            v81 = sub_23A9A65A4(v79, v80, &v134);

            *(v77 + 4) = v81;
            v82 = v129;
            _os_log_impl(&dword_23A8B4000, v129, v75, "Cannot create ScanEntity: %s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v78);
            v83 = v78;
            v71 = v114;
            MEMORY[0x23EE91710](v83, -1, -1);
            MEMORY[0x23EE91710](v77, -1, -1);

            (*(v126 + 8))(v128, v127);
          }

          else
          {

            (*(v126 + 8))(v72, v127);
          }

          (*(v130 + 8))(v65 + v108, v71);

          type metadata accessor for ScanEntity(0);
          swift_deallocPartialClassInstance();
        }

        else
        {
          v121 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v131);
          sub_23A8CAA3C(&v134, v65 + qword_27DFC0628);
          v84 = (v65 + qword_27DFAEEE8);
          *v84 = sub_23A8E9304;
          v84[1] = v69;
          v85 = (v65 + qword_27DFAEEF0);
          *v85 = sub_23A8E9320;
          v85[1] = v68;
          *(v65 + qword_27DFAEEE0) = v107;
          *(v65 + qword_27DFC0640) = v59;
          v86 = v65 + qword_27DFC0638;
          *v86 = 0;
          *(v86 + 4) = 1;

          v128 = sub_23AA0C1A4();
          v87 = v106;
          v88 = v129;
          v89 = v61;
          v90 = v61;
          v91 = v122;
          v122(v129, v123 + v106, v90);
          v127 = sub_23A8D5380();
          sub_23AA0DBB4();
          v92 = v130 + 8;
          v93 = *(v130 + 8);
          v93(v88, v89);
          sub_23AA0CA74();
          if (v111)
          {
            v91(v88, v123 + v87, v89);

            v94 = sub_23AA0DBB4();
            v96 = v95;
            v93(v88, v89);
            *&v134 = v94;
            *(&v134 + 1) = v96;
            MEMORY[0x23EE8FCA0](0x746E45656764655FLL, 0xEB00000000797469);
            sub_23AA0CA74();
            type metadata accessor for ScanEntity(0);
            sub_23AA0C214();
          }

          v127 = v93;
          v130 = v92;
          v97 = sub_23AA0C664();
          (*(*(v97 - 8) + 56))(v125, 1, 1, v97);
          type metadata accessor for ScanEntity(0);
          v98 = v128;
          sub_23AA0C604();
          v99 = v123;
          sub_23AA0CB14();
          sub_23AA0C2B4();
          if (qword_27DFAE458 != -1)
          {
            swift_once();
          }

          v100 = v114;
          if (qword_27DFC0700)
          {
            v101 = v99 + v87;
            v102 = v129;
            v122(v129, v101, v114);
            sub_23A94F3AC(v98, v102);

            v127(v102, v100);
          }

          else
          {
          }

          v103 = v120;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131 = *(v103 + 13);
          *(v103 + 13) = 0x8000000000000000;
          sub_23A9D9C0C(v98, v119 + v112, isUniquelyReferenced_nonNull_native);
          *(v103 + 13) = v131;
          swift_endAccess();
          type metadata accessor for ScanContainer(0);
          sub_23AA0C214();
        }
      }

      else
      {
      }
    }
  }
}

double sub_23A8E7E1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v7 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      *v17 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return v17[0];
    }

    goto LABEL_13;
  }

  if (!*(Strong + 136))
  {
LABEL_13:
    swift_beginAccess();
    sub_23A8CA9D8(v7 + 32, v18);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    *&v16 = (*(v15 + 56))(v14, v15);
    *v17 = v16;

    __swift_destroy_boxed_opaque_existential_1(v18);
    return v17[0];
  }

  sub_23A8D5194(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, v5, &unk_27DFB0970, &qword_23AA14E00);
  v8 = sub_23AA0C0E4();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8);
  sub_23A8D50D0(v5, &unk_27DFB0970, &qword_23AA14E00);
  if (v9 != 1 || ((v10 = sub_23A8D8288(), v10 >> 62) ? (v11 = sub_23AA0D7F4()) : (v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v11 >= 1))
  {
    *&v12 = sub_23A963554();
    *v17 = v12;

    return v17[0];
  }

  return sub_23A963554();
}

uint64_t sub_23A8E808C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v7 + 32, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 136))(a1, v8, v9, a4);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23A8E8184(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), float32x4_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  if (*(Strong + 136) - 1 > 1)
  {
    goto LABEL_10;
  }

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v7 = qword_27DFC04B0;
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (!*(v8 + 16))
  {
LABEL_10:

LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  v9 = sub_23A9EDD28(a2);
  if ((v10 & 1) == 0)
  {

    goto LABEL_10;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  v12 = a3(v11);
  v14 = v13;
  v16 = v15;

  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v19.i64[0] = v12;
    v19.i64[1] = v14;
    v20 = vceqq_f32(v19, a4);
    v21 = vmovn_s32(v20);
    v17 = 1;
    if (v21.i8[0] & 1) != 0 && (v21.i8[2] & 1) != 0 && (v21.i8[4])
    {
      v17 = vmovn_s32(vmvnq_s8(v20)).i8[6];
    }
  }

  return v17 & 1;
}

uint64_t sub_23A8E8318@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t, __n128)@<X4>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  if (!result)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  v9 = result;
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v10 = qword_27DFC04B0;
  swift_beginAccess();
  v11 = *(v10 + 24);
  if (*(v11 + 16))
  {

    v12 = sub_23A9EDD28(a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      v15 = a3(v14);
      v17 = v16;
      v19 = v18;

      v20 = a6;
      if ((v19 & 1) == 0)
      {
        v20.n128_u64[0] = v15;
        v20.n128_u64[1] = v17;
      }

      return a4(v9, v20);
    }
  }

  v20 = a6;
  return a4(v9, v20);
}

void sub_23A8E8478()
{
  v1 = sub_23AA0CA54();
  MEMORY[0x28223BE20](v1 - 8);
  v77[1] = v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC58, &qword_23AA11F00);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = v77 - v3;
  v92 = sub_23AA0C0E4();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC60, &qword_23AA11F08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v77 - v9;
  swift_beginAccess();
  v81 = v0;
  v11 = v0[12];
  v14 = *(v11 + 64);
  v13 = v11 + 64;
  v12 = v14;
  v15 = 1 << *(v0[12] + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  if (v17)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_62;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v13 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      do
      {
LABEL_9:
        v17 &= v17 - 1;
        type metadata accessor for WallEntity(0);

        sub_23AA0C204();
      }

      while (v17);
      continue;
    }
  }

  v21 = v81;
  swift_beginAccess();
  v22 = v21[15];
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  if (v25)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_63;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v22 + 64 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      do
      {
LABEL_19:
        v25 &= v25 - 1;
        type metadata accessor for OpeningEntity(0);

        sub_23AA0C204();
      }

      while (v25);
      continue;
    }
  }

  v29 = v81;
  swift_beginAccess();
  v30 = v29[14];
  v31 = *(v30 + 64);
  v83 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v82 = (v32 + 63) >> 6;
  v85 = v90 + 16;
  v84 = v90 + 32;
  v91 = (v90 + 8);
  v89 = v30;

  v35 = 0;
  v36 = &qword_27DFAEC68;
  v87 = v7;
  v86 = v10;
  if (v34)
  {
    while (1)
    {
      v37 = v35;
LABEL_32:
      v40 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v41 = v40 | (v37 << 6);
      v42 = v89;
      v43 = v90;
      v44 = v88;
      v45 = v92;
      (*(v90 + 16))(v88, *(v89 + 48) + *(v90 + 72) * v41, v92);
      v46 = *(*(v42 + 56) + 8 * v41);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, &qword_23AA11F10);
      v48 = v36;
      v49 = *(v47 + 48);
      v50 = *(v43 + 32);
      v7 = v87;
      v50(v87, v44, v45);
      *&v7[v49] = v46;
      v36 = v48;
      (*(*(v47 - 8) + 56))(v7, 0, 1, v47);

      v39 = v37;
      v10 = v86;
LABEL_33:
      sub_23A8E9234(v7, v10);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, &qword_23AA11F10);
      if ((*(*(v51 - 8) + 48))(v10, 1, v51) == 1)
      {
        break;
      }

      type metadata accessor for FloorEntity(0);
      sub_23AA0C204();

      (*v91)(v10, v92);
      v35 = v39;
      if (!v34)
      {
        goto LABEL_25;
      }
    }

    v53 = v81;
    swift_beginAccess();
    v54 = v53[13];
    v57 = *(v54 + 64);
    v56 = v54 + 64;
    v55 = v57;
    v58 = 1 << *(v53[13] + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & v55;
    v61 = (v58 + 63) >> 6;

    v62 = 0;
    if (v60)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_64;
      }

      if (v63 >= v61)
      {
        break;
      }

      v60 = *(v56 + 8 * v63);
      ++v62;
      if (v60)
      {
        v62 = v63;
        do
        {
LABEL_45:
          v60 &= v60 - 1;
          type metadata accessor for ObjectEntity(0);

          sub_23AA0C204();
        }

        while (v60);
        continue;
      }
    }

    swift_beginAccess();
    v64 = v53[16];
    v67 = *(v64 + 64);
    v66 = v64 + 64;
    v65 = v67;
    v68 = 1 << *(v53[16] + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & v65;
    v71 = (v68 + 63) >> 6;

    v72 = 0;
    if (v70)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_65;
      }

      if (v73 >= v71)
      {
        break;
      }

      v70 = *(v66 + 8 * v73);
      ++v72;
      if (v70)
      {
        v72 = v73;
        do
        {
LABEL_55:
          v70 &= v70 - 1;
          type metadata accessor for PlaceholderEntity(0);

          sub_23AA0C204();
        }

        while (v70);
        continue;
      }
    }

    type metadata accessor for ScanContainer(0);
    sub_23AA0C224();
    v74 = v78;
    sub_23AA0CA34();
    v75 = v80;
    sub_23AA0CA44();
    if (v93)
    {
      sub_23AA0CAB4();
      do
      {
        sub_23AA0C204();

        sub_23AA0CA44();
      }

      while (v93);
    }

    (*(v79 + 8))(v74, v75);
    v76 = MEMORY[0x277D84F98];
    v53[12] = MEMORY[0x277D84F98];

    v53[15] = v76;

    v53[14] = v76;

    v53[13] = v76;

    v53[16] = v76;
  }

  else
  {
LABEL_25:
    if (v82 <= v35 + 1)
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = v82;
    }

    v39 = v38 - 1;
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v82)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, &qword_23AA11F10);
        (*(*(v52 - 8) + 56))(v7, 1, 1, v52);
        v34 = 0;
        goto LABEL_33;
      }

      v34 = *(v83 + 8 * v37);
      ++v35;
      if (v34)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }
}

void *sub_23A8E8E20()
{
  sub_23A8E9694(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t sub_23A8E8E88()
{
  sub_23A8E8E20();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ScanEntityType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanEntityType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A8E9054()
{
  result = qword_27DFAEC48;
  if (!qword_27DFAEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC48);
  }

  return result;
}

unint64_t sub_23A8E90A8()
{
  result = qword_27DFAEC50;
  if (!qword_27DFAEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC50);
  }

  return result;
}

uint64_t sub_23A8E90FC(uint64_t a1, uint64_t a2, char a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[3] = a6;
  v16[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  type metadata accessor for EntityManager();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 72) = 0;
  type metadata accessor for ScanContainer(0);
  swift_allocObject();
  *(v13 + 80) = sub_23AA0C1A4();
  v14 = MEMORY[0x277D84F98];
  *(v13 + 96) = MEMORY[0x277D84F98];
  *(v13 + 104) = v14;
  *(v13 + 112) = sub_23A9DC410(MEMORY[0x277D84F90]);
  *(v13 + 120) = v14;
  *(v13 + 128) = v14;
  *(v13 + 136) = 0;
  *(v13 + 152) = 0x40A000003FC00000;
  sub_23A8CA9D8(v16, v13 + 32);
  *(v13 + 144) = a2;
  *(v13 + 88) = a3 & 1;
  *(v13 + 140) = a4;
  *(v13 + 156) = a4 * 1.5;
  sub_23A8E02B4();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_23A8E9234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC60, &qword_23AA11F08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8E92A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_23AA0C0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF0) + 23) & 0xFFFFFFFFFFFFFFF0;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 0xF);
}

uint64_t sub_23A8E944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_23AA0C0E4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23A8E8318(a1, v2 + v6, *(v2 + v7), *(v2 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF0) + 23) & 0xFFFFFFFFFFFFFFF0)), a2, *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF0)));
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_23AA0C0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23A8E95F0(float32x4_t a1)
{
  v2 = *(sub_23AA0C0E4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23A8E8184(v4, v1 + v3, v5, a1);
}

uint64_t sub_23A8E9704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC78, &unk_23AA11F20);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23A8E979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC78, &unk_23AA11F20);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for ScanItemStrut(uint64_t a1)
{
  result = qword_27DFAEC80;
  if (!qword_27DFAEC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A8E9870(uint64_t a1)
{
  sub_23A8E9910(319);
  if (v1 <= 0x3F)
  {
    sub_23A8E99C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A8E9910(uint64_t a1)
{
  if (!qword_27DFAEC90)
  {
    sub_23A8E996C();
    v1 = sub_23AA0DC94();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAEC90);
    }
  }
}

unint64_t sub_23A8E996C()
{
  result = qword_27DFAEC98;
  if (!qword_27DFAEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC98);
  }

  return result;
}

void sub_23A8E99C0(uint64_t a1)
{
  if (!qword_27DFAECA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEB40, &qword_23AA11B70);
    v1 = sub_23AA0D664();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAECA0);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

BOOL sub_23A8E9A6C(float32x2_t *a1, float a2)
{
  v3 = vsub_f32(*v2, *a1);
  v4 = vaddv_f32(vmul_f32(v3, v3));
  v5 = a2 * a2;
  if (v4 >= (a2 * a2))
  {
    return 0;
  }

  v6 = vsub_f32(v2[1], a1[1]);
  if (vaddv_f32(vmul_f32(v6, v6)) >= v5)
  {
    return 0;
  }

  v7 = vsub_f32(v2[2], a1[2]);
  if (vaddv_f32(vmul_f32(v7, v7)) >= v5)
  {
    return 0;
  }

  if (vabds_f32(v2[3].f32[0], a1[3].f32[0]) >= a2)
  {
    return 0;
  }

  v8 = vsub_f32(v2[4], a1[4]);
  if (vaddv_f32(vmul_f32(v8, v8)) >= v5)
  {
    return 0;
  }

  v9 = vsub_f32(v2[5], a1[5]);
  return vaddv_f32(vmul_f32(v9, v9)) < v5 && vabds_f32(v2[6].f32[0], a1[6].f32[0]) < a2;
}

uint64_t sub_23A8E9B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3->i8[OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration])
  {

    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v8 = type metadata accessor for ScanItemStrut(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a4;
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + 24);
    if (v13 <= 0.0)
    {
      if ((*a1 - 2) > 3u)
      {
        v14 = 0.08;
      }

      else
      {
        v14 = flt_23AA11F40[(*a1 - 2)];
      }
    }

    else
    {
      v14 = v13 * 0.5;
    }

    v15 = *(a2 + 24);
    if (v15 <= 0.0)
    {
      if ((*a2 - 2) > 3u)
      {
        v16 = 0.08;
      }

      else
      {
        v16 = flt_23AA11F40[(*a2 - 2)];
      }
    }

    else
    {
      v16 = v15 * 0.5;
    }

    v35 = __invert_f4(*(a1 + 32));
    v17 = vaddq_f32(v35.columns[3], vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*&a3[2])), 0, v35.columns[1]), v35.columns[2], a3[2], 1));
    v18 = vzip1_s32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v19 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection), 1), 0, v35.columns[3]);
    v20 = vzip1_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v21 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal), 1), 0, v35.columns[3]);
    v22 = vzip1_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    v23 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection), 1), 0, v35.columns[3]);
    v24 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v33 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal), 1), 0, v35.columns[3]);
    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v25 = type metadata accessor for ScanItemStrut(0);
    v26 = a4 + *(v25 + 44);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v28 = *(v27 + 48);
    v29 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    v30 = sub_23AA0C0E4();
    v31 = *(*(v30 - 8) + 16);
    v31(v26, a3 + v29, v30);
    v31(v26 + v28, a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v30);

    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    *a4 = v18;
    *(a4 + 8) = v20;
    *(a4 + 16) = v22;
    *(a4 + 24) = v14;
    *(a4 + 32) = v24;
    *(a4 + 40) = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    *(a4 + 48) = v16;
    v9 = *(*(v25 - 8) + 56);
    v11 = a4;
    v12 = 0;
    v10 = v25;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t sub_23A8E9EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3->i8[OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration])
  {

    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v8 = type metadata accessor for ScanItemStrut(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a4;
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + 24);
    if (v13 <= 0.0)
    {
      if ((*a1 - 2) > 3u)
      {
        v14 = 0.08;
      }

      else
      {
        v14 = flt_23AA11F40[(*a1 - 2)];
      }
    }

    else
    {
      v14 = v13 * 0.5;
    }

    v15 = *(a2 + 24);
    if (v15 <= 0.0)
    {
      if ((*a2 - 2) > 3u)
      {
        v16 = 0.08;
      }

      else
      {
        v16 = flt_23AA11F40[(*a2 - 2)];
      }
    }

    else
    {
      v16 = v15 * 0.5;
    }

    v35 = __invert_f4(*(a1 + 32));
    v17 = vaddq_f32(v35.columns[3], vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*&a3[2])), 0, v35.columns[1]), v35.columns[2], a3[2], 1));
    v18 = vzip1_s32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v19 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection), 1), 0, v35.columns[3]);
    v20 = vzip1_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v21 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal), 1), 0, v35.columns[3]);
    v22 = vzip1_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    v23 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection), 1), 0, v35.columns[3]);
    v24 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v33 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal), 1), 0, v35.columns[3]);
    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v25 = type metadata accessor for ScanItemStrut(0);
    v26 = a4 + *(v25 + 44);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v28 = *(v27 + 48);
    v29 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    v30 = sub_23AA0C0E4();
    v31 = *(*(v30 - 8) + 16);
    v31(v26, a3 + v29, v30);
    v31(v26 + v28, a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v30);

    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    *a4 = v18;
    *(a4 + 8) = v20;
    *(a4 + 16) = v22;
    *(a4 + 24) = v14;
    *(a4 + 32) = v24;
    *(a4 + 40) = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    *(a4 + 48) = v16;
    v9 = *(*(v25 - 8) + 56);
    v11 = a4;
    v12 = 0;
    v10 = v25;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t sub_23A8EA248(float32x2_t *a1)
{
  v2 = vceq_f32(*v1, *a1);
  if ((v2.i32[0] & v2.i32[1] & 1) == 0)
  {
    return 0;
  }

  if (v1[1].f32[0] != a1[1].f32[0])
  {
    return 0;
  }

  type metadata accessor for CapturedRoom.Surface.Curve(0);
  sub_23A8EA31C();
  if ((sub_23AA0BC44() & 1) == 0)
  {
    return 0;
  }

  return sub_23AA0BC44();
}

unint64_t sub_23A8EA31C()
{
  result = qword_27DFAEB50;
  if (!qword_27DFAEB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAEB50);
  }

  return result;
}

uint64_t type metadata accessor for ObjectEntity(uint64_t a1)
{
  result = qword_27DFAECB8;
  if (!qword_27DFAECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A8EA444(uint64_t a1, char a2, double a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_23AA0C0E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A902B54(a1, a2 & 1, a3);
  if (v4)
  {
    return;
  }

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v16 = qword_27DFC04B0;
  (*(v13 + 16))(v15, v5 + qword_27DFC0620, v12);
  swift_beginAccess();
  v17 = *(v16 + 24);
  if (!*(v17 + 16))
  {
LABEL_18:
    (*(v13 + 8))(v15, v12);
    return;
  }

  v18 = sub_23A9EDD28(v15);
  if ((v19 & 1) == 0)
  {

    goto LABEL_18;
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  v21 = *(v13 + 8);

  v21(v15, v12);

  if ((*(v5 + qword_27DFC0630) & 1) == 0 && *(v20 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) == 18)
  {
    v22 = qword_27DFC0628;
    swift_beginAccess();
    sub_23A8CA9D8(v5 + v22, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
    type metadata accessor for SimpleScanMaterial(0);
    if (swift_dynamicCast())
    {
      v23 = v36[4];
      sub_23A8EA9A4(v20 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, v11);
      v24 = (*(v13 + 48))(v11, 1, v12);
      sub_23A8EAA14(v11);
      v25 = 1.0;
      if (v24 != 1)
      {
        if (qword_27DFAE518 != -1)
        {
          swift_once();
        }

        v26 = off_27DFB17B0;
        swift_beginAccess();
        v25 = 1.0 - (v26[30] + v26[30]);
      }

      if (*(v23 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) != v25)
      {
        *(v23 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = v25;
        sub_23A9026C0();
        type metadata accessor for ObjectEntity(0);
        sub_23A8EAA7C();
        v27 = sub_23AA0CAD4();
        v29 = v28;
        v30 = sub_23AA0C4A4();
        if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_23AA10FC0;
          v32 = sub_23AA0CD84();
          v33 = MEMORY[0x277CDB298];
          *(v31 + 56) = v32;
          *(v31 + 64) = v33;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
          v35 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
          swift_beginAccess();
          (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v23 + v35, v32);
          sub_23AA0C494();
        }

        v27(v37, 0);
      }
    }
  }
}

uint64_t sub_23A8EA948(__n128 a1)
{
  sub_23A904938(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_23A8EA9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8EAA14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A8EAA7C()
{
  result = qword_27DFAECC8;
  if (!qword_27DFAECC8)
  {
    type metadata accessor for ObjectEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAECC8);
  }

  return result;
}

uint64_t sub_23A8EAAD4()
{
  type metadata accessor for ScanItemPerimeterManager();
  v0 = swift_allocObject();
  type metadata accessor for HullUtility();
  result = swift_allocObject();
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  qword_27DFC05E0 = v0;
  return result;
}

void sub_23A8EAB50(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0uLL;
  v9 = 0uLL;
LABEL_4:
  v20 = v9;
  v22 = v8;
  while (v5)
  {
LABEL_10:
    v11 = *(*(a1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v5 &= v5 - 1;
    if ((*(v11 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) & 0xFE) == 2)
    {
      v28 = *(v11 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
      v26 = *(v11 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
      v27 = *(v11 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
      v24 = *(v11 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
      v25 = *(v11 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);

      v12 = sub_23A8DA808(v28, v27, v26, v25, v24, 0.16);
      v13 = *(v12 + 2);
      if (v13)
      {
        v14 = 32;
        v16 = v20;
        v15 = v22;
        do
        {
          v17 = *&v12[v14];
          v18 = vbslq_s8(vcgtq_f32(v16, v17), v17, v16);
          v16.i64[0] = v18.i64[0];
          v19 = vbslq_s8(vcgtq_f32(v17, v15), v17, v15);
          v15.i64[0] = v19.i64[0];
          v16.i32[2] = v18.i32[2];
          v15.i32[2] = v19.i32[2];
          v14 += 16;
          --v13;
        }

        while (v13);
        v21 = v16;
        v23 = v15;

        v9 = v21;
        v8 = v23;
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

int8x16_t sub_23A8EAD88(int8x16_t a1)
{
  type metadata accessor for RoomCaptureMeshDimensionsRestriction();
  if (swift_initStaticObject() == v1)
  {
    return a1;
  }

  else
  {
    v2 = a1;
    v2.i32[0] = fabsf(*(v1 + 20));
    if (*(v1 + 24))
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }

    v4 = vbslq_s8(vdupq_n_s32(v3), a1, v2);
    v5 = v4;
    v5.i32[1] = fabsf(*(v1 + 28));
    if (*(v1 + 32))
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    result = vbslq_s8(vdupq_n_s32(v6), v4, v5);
    v8 = result;
    v8.i32[2] = fabsf(*(v1 + 36));
    if (*(v1 + 40))
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    result.i64[0] = vbslq_s8(vdupq_n_s32(v9), result, v8).u64[0];
  }

  return result;
}

double sub_23A8EAE38(double a1, double a2)
{
  type metadata accessor for RoomCaptureMeshDimensionsRestriction();
  if (swift_initStaticObject() == v2)
  {
    return a1;
  }

  if (*(v2 + 24))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(v2 + 20);
  }

  if (*(v2 + 32))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v2 + 28);
  }

  v5 = *(v2 + 16);
  if (v5 <= 2)
  {
    if (*(v2 + 16))
    {
      if (v5 == 1)
      {
        v6 = (*&a1 + (0.5 * *&a2)) - (v3 * 0.5);
        v7 = (*(&a1 + 1) + 0.0) - (v4 * 0.5);
      }

      else
      {
        v6 = (*&a1 + 0.0) - (v3 * 0.5);
        v7 = (*(&a1 + 1) + vmuls_lane_f32(0.5, *&a2, 1)) - (v4 * 0.5);
      }
    }

    else
    {
      v6 = (*&a1 - (0.5 * *&a2)) + (v3 * 0.5);
      v7 = *(&a1 + 1) + (v4 * 0.5);
    }

    return COERCE_DOUBLE(__PAIR64__(LODWORD(v7), LODWORD(v6)));
  }

  if (*(v2 + 16) <= 4u)
  {
    if (v5 == 3)
    {
      v6 = *&a1 + (v3 * 0.5);
      v7 = (*(&a1 + 1) - vmuls_lane_f32(0.5, *&a2, 1)) + (v4 * 0.5);
    }

    else
    {
      v6 = (*&a1 + 0.0) - (v3 * 0.5);
      v7 = (*(&a1 + 1) + 0.0) - (v4 * 0.5);
    }

    return COERCE_DOUBLE(__PAIR64__(LODWORD(v7), LODWORD(v6)));
  }

  if (v5 != 5)
  {
    return a1;
  }

  v6 = *&a1 + (v3 * 0.5);
  v7 = *(&a1 + 1) + (v4 * 0.5);
  return COERCE_DOUBLE(__PAIR64__(LODWORD(v7), LODWORD(v6)));
}

uint64_t getEnumTagSinglePayload for ScanItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A8EB1C8()
{
  result = qword_27DFAECD0;
  if (!qword_27DFAECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAECD0);
  }

  return result;
}

uint64_t type metadata accessor for DebugArrowEntity(uint64_t a1)
{
  result = qword_27DFAECE0;
  if (!qword_27DFAECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A8EB268(uint64_t a1)
{
  result = sub_23AA0C444();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23A8EB30C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAECF0, &qword_23AA120F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4 + 16;
  v6 = sub_23AA0CE44();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = qword_27DFC05E8;
  v8 = *(v1 + qword_27DFC05E8);
  sub_23A8EBA20();
  v9 = v8;
  v10 = sub_23AA0D634();

  if ((v10 & 1) == 0)
  {
    v11 = *(v2 + v7);
    v12 = sub_23AA0CDA4();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = v11;
    sub_23AA0CE34();
    v14 = qword_27DFAECD8;
    swift_beginAccess();
    sub_23AA0C424();
    swift_endAccess();
    type metadata accessor for DebugArrowEntity(0);
    sub_23A8EBA6C();
    v15 = sub_23AA0CAD4();
    v17 = v16;
    v18 = sub_23AA0C4A4();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_23AA10FC0;
      v20 = sub_23AA0C444();
      v21 = MEMORY[0x277CDAC30];
      *(v19 + 56) = v20;
      *(v19 + 64) = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
      swift_beginAccess();
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v2 + v14, v20);
      sub_23AA0C494();
    }

    v15(v24, 0);
  }
}

uint64_t *sub_23A8EB620(void *a1)
{
  v3 = sub_23AA0C2E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23AA0C444();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1;
  sub_23AA0C434();
  (*(v8 + 32))(v1 + qword_27DFAECD8, v10, v7);
  *(v1 + qword_27DFC05E8) = v11;
  v12 = v11;
  v13 = sub_23AA0C1A4();
  v14 = qword_27DFAE490;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_23A997994(v6, xmmword_23AA12080, 0.4);
  v15 = sub_23A8EBA6C();
  v16 = qword_27DFAECD8;
  swift_beginAccess();
  v21[3] = v7;
  v21[4] = MEMORY[0x277CDAC30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v8 + 16))(boxed_opaque_existential_1, v13 + v16, v7);
  v18 = v21[6];
  sub_23A998954(v13, v15, v6, v21);

  if (v18)
  {
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
  sub_23A8EBAC4(v21);
  return v13;
}

void sub_23A8EB8BC()
{
  v1 = qword_27DFAECD8;
  v2 = sub_23AA0C444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_27DFC05E8);
}

uint64_t sub_23A8EB934()
{
  v0 = sub_23AA0CAC4();
  v1 = qword_27DFAECD8;
  v2 = sub_23AA0C444();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + qword_27DFC05E8);

  return swift_deallocClassInstance();
}

unint64_t sub_23A8EBA20()
{
  result = qword_27DFAECF8;
  if (!qword_27DFAECF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAECF8);
  }

  return result;
}

unint64_t sub_23A8EBA6C()
{
  result = qword_27DFAED00;
  if (!qword_27DFAED00)
  {
    type metadata accessor for DebugArrowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAED00);
  }

  return result;
}

uint64_t sub_23A8EBAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF780, &qword_23AA14670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23A8EBB2C(double a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StateSpring();
  result = objc_msgSendSuper2(&v6, sel_initWithValue_, a1);
  if (result)
  {
    v4 = result;
    v5 = result;
    [v5 setParameters_];
    [v5 parameters];
    [v5 setParameters_];
    [v5 parameters];
    [v5 setParameters_];

    return v4;
  }

  return result;
}

id sub_23A8EBC38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A8EBCBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23A8EBD04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23A8EBD6C(SEL *a1, __n128 a2, __n128 a3)
{
  v5 = *v3;
  v6 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EE90360](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  [v7 *a1];

  if (v6)
  {
    v9 = MEMORY[0x23EE90360](1, v5);
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(v5 + 40);
LABEL_8:
  v10 = v9;
  [v9 *a1];

  if (!v6)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v11 = *(v5 + 48);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v11 = MEMORY[0x23EE90360](2, v5);
LABEL_12:
  v15 = v11;
  [v11 *a1];
}

void sub_23A8EBE84()
{
  v1 = *v0;
  v2 = *v0 & 0xC000000000000001;
  if (v2)
  {
    v3 = MEMORY[0x23EE90360](0, *v0);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  [v3 parameters];
  [v4 setParameters_];

  if (v2)
  {
    v5 = MEMORY[0x23EE90360](1, v1);
    goto LABEL_8;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v1 + 40);
LABEL_8:
  v6 = v5;
  [v5 parameters];
  [v6 setParameters_];

  if (!v2)
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v7 = *(v1 + 48);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v7 = MEMORY[0x23EE90360](2, v1);
LABEL_12:
  v8 = v7;
  [v7 parameters];
  [v8 setParameters_];
}

void sub_23A8EBFD0(unint64_t a1, double a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE90360](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  [v5 step_];

  if (v4)
  {
    v7 = MEMORY[0x23EE90360](1, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(a1 + 40);
LABEL_8:
  v8 = v7;
  [v7 step_];

  if (v4)
  {
    v9 = MEMORY[0x23EE90360](2, a1);
    goto LABEL_12;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(a1 + 48);
LABEL_12:
  v10 = v9;
  [v9 step_];

  if (!v4)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v11 = *(a1 + 56);
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v11 = MEMORY[0x23EE90360](3, a1);
LABEL_16:
  v12 = v11;
  [v11 step_];
}

void sub_23A8EC154(unint64_t a1, SEL *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE90360](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  [v5 *a2];

  if (v4)
  {
    v7 = MEMORY[0x23EE90360](1, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(a1 + 40);
LABEL_8:
  v8 = v7;
  [v7 *a2];

  if (!v4)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v9 = *(a1 + 48);
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = MEMORY[0x23EE90360](2, a1);
LABEL_12:
  v10 = v9;
  [v9 *a2];

  if (v4)
  {
    v11 = MEMORY[0x23EE90360](3, a1);
LABEL_16:
    v12 = v11;
    [v11 *a2];

    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v11 = *(a1 + 56);
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
}

void sub_23A8EC2B4(SEL *a1, __n128 a2, __n128 a3)
{
  v5 = *v3;
  v6 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EE90360](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  [v7 *a1];

  if (v6)
  {
    v9 = MEMORY[0x23EE90360](1, v5);
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v5 + 40);
LABEL_8:
  v10 = v9;
  [v9 *a1];

  if (v6)
  {
    v11 = MEMORY[0x23EE90360](2, v5);
    goto LABEL_12;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = *(v5 + 48);
LABEL_12:
  v12 = v11;
  [v11 *a1];

  if (!v6)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v13 = *(v5 + 56);
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v13 = MEMORY[0x23EE90360](3, v5);
LABEL_16:
  v17 = v13;
  [v13 *a1];
}

uint64_t sub_23A8EC414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA12120;
  type metadata accessor for StateSpring();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 48) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 56) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = 0;
    v4 = v0 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v7 = *(v0 + 8 * v3 + 32);
      }

      v8 = v7;
      [v7 setTarget_];

      if (v4)
      {
        v9 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v9 = *(v0 + 8 * v3 + 32);
      }

      v10 = v9;
      [v9 setValue_];

      if (v4)
      {
        v5 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = v5;
      ++v3;
      [v5 setVelocity_];
    }

    while (v2 != v3);
  }

  return v0;
}

uint64_t sub_23A8EC5B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA12130;
  type metadata accessor for StateSpring();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 48) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = 0;
    v4 = v0 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v7 = *(v0 + 8 * v3 + 32);
      }

      v8 = v7;
      [v7 setTarget_];

      if (v4)
      {
        v9 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v9 = *(v0 + 8 * v3 + 32);
      }

      v10 = v9;
      [v9 setValue_];

      if (v4)
      {
        v5 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = v5;
      ++v3;
      [v5 setVelocity_];
    }

    while (v2 != v3);
  }

  return v0;
}

uint64_t sub_23A8EC75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A8EC82C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LineAnimation(uint64_t a1)
{
  result = qword_27DFAED08;
  if (!qword_27DFAED08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A8EC928(uint64_t a1)
{
  sub_23A8ECA08(319);
  if (v1 <= 0x3F)
  {
    sub_23A8ECA64(319);
    if (v2 <= 0x3F)
    {
      sub_23A8ECAC8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A8ECA08(uint64_t a1)
{
  if (!qword_27DFAED18)
  {
    sub_23A8E996C();
    v1 = sub_23AA0DCC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAED18);
    }
  }
}

void sub_23A8ECA64(uint64_t a1)
{
  if (!qword_27DFAED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0940, &qword_23AA15CF0);
    v1 = sub_23AA0D344();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAED20);
    }
  }
}

void sub_23A8ECAC8(uint64_t a1)
{
  if (!qword_27DFAEC18)
  {
    sub_23AA0C064();
    v1 = sub_23AA0D664();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAEC18);
    }
  }
}

__n128 sub_23A8ECB20(float32x4_t *a1, __n128 result, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v7 = a1[1].i64[0];
  if (v7)
  {
    v34 = MEMORY[0x277D84F90];
    v30 = result;
    sub_23A975DC0(0, v7, 0);
    v10 = v30;
    v11 = v34;
    v12 = a1 + 2;
    v13.i64[0] = 0xBF000000BF000000;
    v13.i64[1] = 0xBF000000BF000000;
    v16.i64[0] = vmulq_f32(a6, v13).u64[0];
    v14 = a4;
    v15 = a5;
    v16.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(-0.5, a6, 2));
    v17.i64[0] = 0x3F0000003F000000;
    v17.i64[1] = 0x3F0000003F000000;
    v18.i64[0] = vmulq_f32(a6, v17).u64[0];
    v18.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, a6, 2));
    v19 = a3;
    do
    {
      v20 = *v12;
      v35 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        v27 = v18;
        v29 = v16;
        v25 = v9;
        v26 = v8;
        v24 = *v12;
        sub_23A975DC0((v21 > 1), v22 + 1, 1);
        v20 = v24;
        v9 = v25;
        v8 = v26;
        v18 = v27;
        v16 = v29;
        v10 = v30;
        v19 = a3;
        v14 = a4;
        v15 = a5;
        v11 = v35;
      }

      v23 = vmaxnmq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v20.f32[0]), v19, *v20.f32, 1), v14, v20, 2), v15).u64[0], v16);
      v23.i32[3] = 0;
      result = vminnmq_f32(v23, v18);
      result.n128_u32[3] = v8;
      *(v11 + 16) = v22 + 1;
      *(v11 + 16 * v22 + 32) = result;
      ++v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_23A8ECC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for LineAnimation(0) + 60);
  sub_23A8ED91C(v1 + v6, v5);
  v7 = sub_23AA0C064();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_23A8ED8B4(v5);
  sub_23AA0C044();
  sub_23A8ED8B4(v1 + v6);
  (*(v8 + 16))(v1 + v6, a1, v7);
  return (*(v8 + 56))(v1 + v6, 0, 1, v7);
}

uint64_t sub_23A8ECDE8(uint64_t a1, float a2, __n128 a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  result = 0;
  if (*(*a1 + 16) >= 2uLL)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 32);
    v15 = 0;
    sub_23A8ECB20(*a1, a3, a4, a5, a6, a7);
    v17 = v16[1].u64[0];
    if (!v17)
    {
      goto LABEL_27;
    }

    v8 = v16;
    v18 = vmulq_f32(vsubq_f32(v16[v17 + 1], v16[2]), a8);
    v19 = v18.f32[2] + vaddv_f32(*v18.f32);

    if (v19 <= 0.0)
    {
      v13 = sub_23A8ED48C(v13);
      v16 = sub_23A8ED544(v8);
      v17 = v16[1].u64[0];
      if (!v17)
      {
        goto LABEL_28;
      }

      v8 = v16;
    }

    a8 = *(v8 + 32);
    v16 = sub_23A9388A8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = v16[1].u64[0];
    v17 = v16[1].u64[1];
    v15 = v9 + 1;
    if (v9 >= v17 >> 1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v16[1].i64[0] = v15;
      v16[v9 + 2] = a8;
      v9 = *(v13 + 16);
      if (!v9)
      {
        break;
      }

      v15 = 0;
      v20 = 0.0;
      while (1)
      {
        v17 = *(v13 + 16);
        if (v15 >= v17)
        {
          break;
        }

        v21 = v15 + 1;
        v22 = v20 + *(v13 + 4 * v15 + 32);
        if (v22 > (v14 * a2))
        {
          if (((a2 - (v20 / v14)) / ((v22 / v14) - (v20 / v14))) > 0.0001)
          {
            v36 = (a2 - (v20 / v14)) / ((v22 / v14) - (v20 / v14));
            v27 = v16;

            v29 = *(v8 + 16);
            if (v15 >= v29)
            {
              __break(1u);
            }

            else if (v15 + 1 < v29)
            {
              v30 = (v8 + 16 * v15);
              v33 = v30[2];
              v34 = v30[3];

              v31 = vsubq_f32(v34, v33);
              v32 = vmuls_lane_f32(v36, v31, 2);
              *&v28 = vaddq_f32(v33, vmulq_n_f32(v31, v36)).u64[0];
              *(&v28 + 2) = v33.f32[2] + v32;
              HIDWORD(v28) = 0;
              result = v27;
              v8 = *(v27 + 16);
              v29 = *(v27 + 24);
              v13 = v8 + 1;
              if (v8 < v29 >> 1)
              {
LABEL_21:
                *(result + 16) = v13;
                *(result + 16 * v8 + 32) = v28;
                goto LABEL_22;
              }

LABEL_32:
              v37 = v28;
              result = sub_23A9388A8((v29 > 1), v13, 1, result);
              v28 = v37;
              goto LABEL_21;
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        else
        {
          v17 = *(v8 + 16);
          if (v21 >= v17)
          {
            goto LABEL_26;
          }

          v23 = *(v8 + 16 * v15 + 48);
          v25 = v16[1].u64[0];
          v24 = v16[1].u64[1];
          if (v25 >= v24 >> 1)
          {
            a8 = *(v8 + 16 * v15 + 48);
            v16 = sub_23A9388A8((v24 > 1), v25 + 1, 1, v16);
            v23 = a8;
          }

          v16[1].i64[0] = v25 + 1;
          v16[v25 + 2] = v23;
          v20 = v22;
        }

        ++v15;
        if (v9 == v21)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v16 = sub_23A9388A8((v17 > 1), v15, 1, v16);
    }

LABEL_17:
    v26 = v16;

    result = v26;
LABEL_22:
    if (*(result + 16) < 2uLL)
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_23A8ED10C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_23AA0D7F4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_23A9F5738();
      sub_23A9130B0(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_23AA0D7F4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x23EE90360]();
          v11 = MEMORY[0x23EE90360](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_23A97E578();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_23A97E578();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_23A8ED31C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975C20(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED3D4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975C74(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED48C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975CEC(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED544(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 1;
  for (i = 2; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 2 >= v6)
    {
      break;
    }

    if (v4 - 2 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 16 * v4);
    v8 = *(v1 + 16 * i);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975CD8(v1);
      v1 = result;
    }

    *(v1 + 16 * i) = v7;
    *(v1 + 16 * v4) = v8;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED604(float32x4_t a1, double a2)
{
  v3 = v2;
  v14 = a1;
  v4 = sub_23AA0C064();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23AA0DCB4();
  sub_23AA0C044();
  sub_23A8ECC7C(v7);
  sub_23AA0C014();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  sub_23AA0C044();
  sub_23AA0C024();
  v11(v7, v4);
  v12 = *(type metadata accessor for LineAnimation(0) + 60);
  sub_23A8ED8B4(v3 + v12);
  (*(v5 + 32))(v3 + v12, v10, v4);
  return (*(v5 + 56))(v3 + v12, 0, 1, v4);
}

uint64_t sub_23A8ED8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8ED91C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}
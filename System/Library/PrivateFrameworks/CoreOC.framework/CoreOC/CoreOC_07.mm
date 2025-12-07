void filteredDepthPointCloud(_:)(void *a1@<X8>)
{
  v2 = OCNonModularSPI_ADJasperPointCloud_CreatePointCloud();
  if (v2)
  {
    v3 = v2;
    sub_246022B2C(v2, 0, &v4, a1);
  }

  else
  {

    OCDepthPointCloud.init()(a1);
  }
}

void sub_24602335C(_BYTE *a1@<X1>, void *a2@<X8>)
{
  v4 = OCNonModularSPI_ADJasperPointCloud_CreatePointCloud();
  if (v4)
  {
    v5 = v4;
    sub_246022B2C(v4, 0, a1, a2);
  }

  else
  {
    *a1 = 0;

    OCDepthPointCloud.init()(a2);
  }
}

uint64_t sub_2460233E8(float32x4_t a1, float32x4_t a2, float32x4_t a3, int8x16_t a4)
{
  v4 = *(MEMORY[0x277D860B0] + 16);
  v5 = *(MEMORY[0x277D860B0] + 32);
  v6 = vdupq_n_s32(0x38D1B717u);
  v7 = vandq_s8(vandq_s8(vcgeq_f32(v6, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a1, *a1.f32, 1), a2, *a2.f32, 1), a3, *a3.f32, 1), v4)), vcgeq_f32(v6, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a1, a1.f32[0]), a2, a2.f32[0]), a3, a3.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a1, a1, 2), a2, a2, 2), a3, a3, 2), v5)));
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = vzip1q_s32(a1, a3);
  v9 = vzip1q_s32(a2, 0);
  v10 = vzip2q_s32(v8, v9);
  v11 = vzip1q_s32(v8, v9);
  v11.i32[2] = vdupq_lane_s32(*&a3, 0).i32[2];
  v10.i32[2] = vdupq_lane_s32(*&a3, 1).i32[2];
  v12 = vzip2q_s32(a1, a2);
  v12.i32[2] = a3.i32[2];
  v13 = vandq_s8(vandq_s8(vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, a2.f32[0]), v10, *a2.f32, 1), v12, a2, 2), v4)), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, a1.f32[0]), v10, *a1.f32, 1), v12, a1, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, a3.f32[0]), v10, *a3.f32, 1), v12, a3, 2), v5)));
  v13.i32[3] = v13.i32[2];
  if ((vminvq_u32(v13) & 0x80000000) == 0)
  {
    return 0;
  }

  v14 = vmulq_f32(a1, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL))), vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL)));
  if (vabds_f32(1.0, v14.f32[2] + vaddv_f32(*v14.f32)) >= 0.0001)
  {
    return 0;
  }

  v15 = vzip2_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL));
  v16 = vzip2_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL));
  v17 = vdup_n_s32(0x38D1B717u);
  v18 = vand_s8(vcge_f32(v17, vabs_f32(vadd_f32(v16, 0xBF80000080000000))), vcge_f32(v17, vabs_f32(v15)));
  return vpmin_u32(v18, v18).u32[0] >> 31;
}

float sub_246023584(float a1, double a2, __n128 a3)
{
  v3 = (((a1 + *(&a2 + 1)) + a3.n128_f32[2]) + -1.0) * 0.5;
  if (v3 <= -1.0)
  {
    v3 = -1.0;
  }

  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  return (acosf(v3) * 180.0) / 3.1416;
}

void sub_246023624(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_245F8D968(0x73726F736E6553, 0xE700000000000000);
    if (v3)
    {
      sub_245F8E5C8(*(a1 + 56) + 32 * v2, v15);
      sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        if (!*(v14 + 16) || (v4 = sub_245F8D968(0x69736E6972746E49, 0xEA00000000007363), (v5 & 1) == 0) || (sub_245F8E5C8(*(v14 + 56) + 32 * v4, v15), , (swift_dynamicCast() & 1) != 0) && (!*(v14 + 16) || (v6 = sub_245F8D968(4343634, 0xE300000000000000), (v7 & 1) == 0) || (sub_245F8E5C8(*(v14 + 56) + 32 * v6, v15), , (swift_dynamicCast() & 1) != 0) && (!*(v14 + 16) || (v8 = sub_245F8D968(0x656C6F686E6950, 0xE700000000000000), (v9 & 1) == 0) || (sub_245F8E5C8(*(v14 + 56) + 32 * v8, v15), , (swift_dynamicCast() & 1) != 0) && (!*(v14 + 16) || (v10 = sub_245F8D968(0x654C206C61636F46, 0xEC0000006874676ELL), (v11 & 1) == 0) || (sub_245F8E5C8(*(v14 + 56) + 32 * v10, v15), , (swift_dynamicCast() & 1) != 0) && (!*(v14 + 16) || (v12 = sub_245F8D968(1635017028, 0xE400000000000000), (v13 & 1) == 0) || (sub_245F8E5C8(*(v14 + 56) + 32 * v12, v15), , sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50), (swift_dynamicCast() & 1) != 0))))))
        {
        }
      }
    }
  }
}

float sub_2460238D0(uint64_t a1)
{
  v1 = -1.0;
  if (*(a1 + 16))
  {
    v3 = sub_245F8D968(0x657275736F707845, 0xEC000000656D6954);
    if (v4)
    {
      sub_245F8E5C8(*(a1 + 56) + 32 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v1;
}

uint64_t sub_246023974(uint64_t a1)
{
  v2 = sub_246091C04();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v4 = sub_245F8D968(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_245F8E5C8(*(a1 + 56) + 32 * v4, v15), sub_245F8E624(&qword_27EE3A460, "6K"), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (!*(a1 + 16))
    {
      return -1;
    }

    v11 = sub_245F8D968(0x6E69614744707369, 0xE800000000000000);
    if ((v12 & 1) == 0)
    {
      return -1;
    }

    sub_245F8E5C8(*(a1 + 56) + 32 * v11, v15);
    sub_245FC82A8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return -1;
    }

    v13 = [v14 integerValue];

    return v13;
  }

  if (v14 >> 62)
  {
    result = sub_246092354();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x24C196C20](0);
    goto LABEL_9;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v14 + 32);
LABEL_9:
    v9 = v8;

    v10 = [v9 integerValue];

    return v10;
  }

  __break(1u);
  return result;
}

void sub_246023B40(__CVBuffer *a1)
{
  v2 = sub_246091BD4();
  HasAttachment = CVBufferHasAttachment(a1, v2);

  if (!HasAttachment)
  {
    return;
  }

  v4 = sub_246091BD4();
  v5 = CVBufferHasAttachment(a1, v4);

  if (!v5)
  {
    return;
  }

  v6 = sub_246091BD4();
  v7 = CVBufferCopyAttachment(a1, v6, 0);

  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13[0] = v7;
  sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  swift_dynamicCast();
  sub_246023624(v12);
  v8 = sub_246091BD4();
  v9 = CVBufferCopyAttachment(a1, v8, 0);

  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13[0] = v9;
  swift_dynamicCast();
  sub_2460238D0(v12);
  if (*(v12 + 16))
  {
    v10 = sub_245F8D968(0x6C6576654C78754CLL, 0xE800000000000000);
    if (v11)
    {
      sub_245F8E5C8(*(v12 + 56) + 32 * v10, v13);
      swift_dynamicCast();
    }
  }

  sub_246023974(v12);
}

void sub_246023D7C(__CVBuffer *a1)
{
  v2 = sub_246091BD4();
  HasAttachment = CVBufferHasAttachment(a1, v2);

  if (HasAttachment)
  {
    v4 = *MEMORY[0x277CD3038];
    if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3038]))
    {
      v5 = sub_246091BD4();
      v6 = CVBufferCopyAttachment(a1, v5, 0);

      if (v6)
      {
        sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
        swift_dynamicCast();
        sub_246023624(v7);
        if (CVBufferCopyAttachment(a1, v4, 0))
        {

          swift_dynamicCast();
          sub_2460238D0(v7);
          sub_246023974(v7);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

unint64_t sub_246023F10(void *a1, double a2, double a3)
{
  if (a2 >= a3)
  {
    goto LABEL_20;
  }

  *a1 = 0;
  result = (*(*v3 + 128))();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v8 = result;
  if (!result)
  {
LABEL_20:
    v9 = 0.0;
    v12 = 1;
    goto LABEL_27;
  }

  v9 = 0.0;
  v10 = 0;
  v11 = *(*v3 + 216);
  v12 = 1;
  v13 = result;
  while (1)
  {
    if (v8 < v13)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    result = v11(&v19, --v13);
    if ((v21 & 1) == 0)
    {
      break;
    }

LABEL_6:
    if (!v13)
    {
      goto LABEL_27;
    }
  }

  v14 = v20;
  if (v19 >= a2 && v19 < a3)
  {
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_29;
    }

    *a1 = v10;
    v17 = v9;
    if (v12)
    {
      v17 = v14;
    }

    if (v17 > v14)
    {
      v14 = v17;
    }

    v9 = v14;
    v12 = 0;
    goto LABEL_6;
  }

  if (v19 < a3)
  {
    goto LABEL_6;
  }

  if (__OFADD__(v10, 1))
  {
    goto LABEL_31;
  }

  *a1 = v10 + 1;
  v18 = v9;
  if (v12)
  {
    v18 = v14;
  }

  if (v18 > v14)
  {
    v14 = v18;
  }

  v9 = v14;
  v12 = 0;
LABEL_27:
  v22 = v12;
  return LODWORD(v9) | ((v12 & 1) << 32);
}

uint64_t *sub_24602409C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  type metadata accessor for DepthWarpCircularBuffer(0);
  swift_allocObject();
  v6 = v3;
  v7 = v4;
  return sub_24608EB44(a1, &v6);
}

uint64_t sub_246024100(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v110 = a2;
  v7 = sub_2460918F4();
  v111 = *(v7 - 8);
  v112 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v104 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v104 - v13;
  MEMORY[0x28223BE20](v15);
  v109 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v107 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v104 - v20;
  v22 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v104 - v23;
  v25 = sub_246091834();
  MEMORY[0x28223BE20](v25);
  v27 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v30 = v29;
  v32 = v31;
  sub_245F8E7A4(v28, v24, &qword_27EE3A350, &unk_2460969A0);
  if ((*(v30 + 48))(v24, 1, v32) == 1)
  {
    v33 = sub_245F8E744(v24, &qword_27EE3A350, &unk_2460969A0);
    if ((a3 & 1) == 0)
    {
      v34 = (*(*v4 + 112))(v33);
      v35 = sub_245FA3174();
      v36 = v111;
      v37 = *(v111 + 16);
      if ((v34 & 1) == 0)
      {
        v76 = v108;
        v77 = v112;
        v37(v108, v35, v112);
        v78 = sub_2460918D4();
        v79 = sub_246091F94();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v115 = v81;
          *v80 = 136380931;
          *(v80 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v115);
          *(v80 + 12) = 2048;
          v82 = v110;
          *(v80 + 14) = v110;
          _os_log_impl(&dword_245F8A000, v78, v79, "SegmentIDConverter.%{private}s:\nSample has a nil session UUID. Final segment ID is the same with original: %ld", v80, 0x16u);
          sub_245F8E6F4(v81);
          MEMORY[0x24C1989D0](v81, -1, -1);
          MEMORY[0x24C1989D0](v80, -1, -1);

          (*(v36 + 8))(v76, v77);
          return v82;
        }

        else
        {

          (*(v36 + 8))(v76, v77);
          return v110;
        }
      }

      v38 = v112;
      v37(v14, v35, v112);
      v39 = sub_2460918D4();
      v40 = sub_246091F94();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = -1;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v115 = v43;
        *v42 = 136380931;
        *(v42 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v115);
        *(v42 + 12) = 2048;
        *(v42 + 14) = -1;
        _os_log_impl(&dword_245F8A000, v39, v40, "SegmentIDConverter.%{private}s:\nSample has a nil session UUID but need to reset legacy id. Final segment ID is: %ld", v42, 0x16u);
        sub_245F8E6F4(v43);
        MEMORY[0x24C1989D0](v43, -1, -1);
        MEMORY[0x24C1989D0](v42, -1, -1);

        (*(v36 + 8))(v14, v38);
        return v41;
      }

      (*(v36 + 8))(v14, v38);
      return -1;
    }

LABEL_8:
    v44 = sub_245FA3174();
    v45 = v111;
    v46 = v112;
    (*(v111 + 16))(v9, v44, v112);
    v47 = sub_2460918D4();
    v48 = sub_246091F94();
    if (os_log_type_enabled(v47, v48))
    {
      v41 = -1;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v115 = v50;
      *v49 = 136380675;
      *(v49 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v115);
      _os_log_impl(&dword_245F8A000, v47, v48, "SegmentIDConverter.%{private}s:\nSample has a nil segment ID. Final segment ID is -1.", v49, 0xCu);
      sub_245F8E6F4(v50);
      MEMORY[0x24C1989D0](v50, -1, -1);
      MEMORY[0x24C1989D0](v49, -1, -1);

      (*(v45 + 8))(v9, v46);
      return v41;
    }

    (*(v45 + 8))(v9, v46);
    return -1;
  }

  (*(v30 + 32))(v27, v24, v32);
  if (a3)
  {
    (*(v30 + 8))(v27, v32);
    goto LABEL_8;
  }

  v108 = v32;
  v51 = v110;
  if (v110 < 0)
  {
    v83 = sub_245FA3174();
    v84 = v111;
    v85 = v112;
    (*(v111 + 16))(v21, v83, v112);
    v86 = sub_2460918D4();
    v87 = sub_246091F94();
    if (!os_log_type_enabled(v86, v87))
    {

      (*(v84 + 8))(v21, v85);
      (*(v30 + 8))(v27, v108);
      return -1;
    }

    v106 = v27;
    v41 = -1;
    v88 = v51;
    v89 = swift_slowAlloc();
    v90 = v30;
    v91 = swift_slowAlloc();
    v115 = v91;
    *v89 = 136380931;
    *(v89 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, &v115);
    *(v89 + 12) = 2048;
    *(v89 + 14) = v88;
    _os_log_impl(&dword_245F8A000, v86, v87, "SegmentIDConverter.%{private}s:\nSample has a negative segment ID: %ld.\nFinal segment ID is -1.", v89, 0x16u);
    sub_245F8E6F4(v91);
    MEMORY[0x24C1989D0](v91, -1, -1);
    MEMORY[0x24C1989D0](v89, -1, -1);

    (*(v84 + 8))(v21, v85);
LABEL_27:
    (*(v90 + 8))(v106, v108);
    return v41;
  }

  v52 = sub_2460917F4();
  v54 = v53;
  v115 = v51;
  v55 = sub_2460923D4();
  v57 = v56;
  v105 = v52;
  v115 = v52;
  v116 = v54;

  MEMORY[0x24C196640](v55, v57);

  v59 = v115;
  v58 = v116;
  swift_beginAccess();
  v60 = v4[3];
  v61 = *(v60 + 16);
  v106 = v27;
  if (v61)
  {
    v62 = v30;

    v63 = sub_245F8D968(v59, v58);
    if (v64)
    {
      v65 = v63;

      v41 = *(*(v60 + 56) + 8 * v65);

      v66 = sub_245FA3174();
      v67 = v111;
      v68 = v112;
      v69 = v107;
      (*(v111 + 16))(v107, v66, v112);

      v70 = sub_2460918D4();
      v71 = sub_246091F94();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v114[0] = v73;
        *v72 = 136381443;
        *(v72 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, v114);
        *(v72 + 12) = 2080;
        v74 = v51;
        v75 = sub_245F8D3C0(v105, v54, v114);

        *(v72 + 14) = v75;
        *(v72 + 22) = 2048;
        *(v72 + 24) = v74;
        *(v72 + 32) = 2048;
        *(v72 + 34) = v41;
        _os_log_impl(&dword_245F8A000, v70, v71, "SegmentIDConverter.%{private}s:\nFound existing ID with session UUID: %s and\noriginal segment ID: %ld.\nFinal segment ID is %ld.", v72, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v73, -1, -1);
        MEMORY[0x24C1989D0](v72, -1, -1);

        (*(v67 + 8))(v107, v112);
      }

      else
      {

        (*(v67 + 8))(v69, v68);
      }

      (*(v62 + 8))(v106, v108);
      return v41;
    }
  }

  v92 = v4[4];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = v4[3];
  v4[3] = 0x8000000000000000;
  sub_246026EB0(v92, v59, v58, isUniquelyReferenced_nonNull_native);

  v4[3] = v113;
  result = swift_endAccess();
  v41 = v4[4];
  if (!__OFADD__(v41, 1))
  {
    v4[4] = v41 + 1;
    v95 = sub_245FA3174();
    v96 = v111;
    v97 = v112;
    v98 = v109;
    (*(v111 + 16))(v109, v95, v112);

    v99 = sub_2460918D4();
    v100 = sub_246091F94();

    if (!os_log_type_enabled(v99, v100))
    {

      (*(v96 + 8))(v98, v97);
      (*(v30 + 8))(v106, v108);
      return v41;
    }

    v101 = swift_slowAlloc();
    v90 = v30;
    v102 = swift_slowAlloc();
    v114[0] = v102;
    *v101 = 136381443;
    *(v101 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A17E0, v114);
    *(v101 + 12) = 2080;
    v103 = sub_245F8D3C0(v105, v54, v114);

    *(v101 + 14) = v103;
    *(v101 + 22) = 2048;
    *(v101 + 24) = v110;
    *(v101 + 32) = 2048;
    *(v101 + 34) = v41;
    _os_log_impl(&dword_245F8A000, v99, v100, "SegmentIDConverter.%{private}s:\nFound new ID with session UUID: %s and\noriginal segment ID: %ld.\nFinal segment ID is %ld.", v101, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v102, -1, -1);
    MEMORY[0x24C1989D0](v101, -1, -1);

    (*(v96 + 8))(v109, v97);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_246024DEC(char a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v2 + 16) = a1;
  v8 = sub_245FA3174();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2460918D4();
  v10 = sub_246091F94();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(v2 + 16);

    _os_log_impl(&dword_245F8A000, v9, v10, "SegmentIDConverter: should reset legacy segment id: %{BOOL}d", v11, 8u);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_246024F98(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_2460918F4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return sub_246025080;
}

void sub_246025080(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = sub_245FA3174();
    (*(v6 + 16))(v4, v7, v5);

    v8 = sub_2460918D4();
    v9 = sub_246091F94();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v3[3];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = *(v11 + 16);

      _os_log_impl(&dword_245F8A000, v8, v9, "SegmentIDConverter: should reset legacy segment id: %{BOOL}d", v12, 8u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    else
    {
    }

    v4 = v3[6];
    (*(v3[5] + 8))(v4, v3[4]);
  }

  free(v4);

  free(v3);
}

uint64_t sub_2460251C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2460251F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_246027200(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_246025258(uint64_t *a1)
{
  v3 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_246091A84();
  v6 = sub_246091AA4();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = *a1;
  swift_beginAccess();
  sub_2460272FC(v5, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_246025348()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_246091AA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v14, v6, &qword_27EE3A870, &unk_246098E70);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23 = *(v8 + 32);
  v23(v13, v6, v7);
  v17 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v17, v3, &qword_27EE3A870, &unk_246098E70);
  if (v15(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v3;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23(v10, v3, v7);
  v19 = sub_246091A74();
  v20 = sub_246091A74();
  v21 = *(v8 + 8);
  v21(v10, v7);
  result = (v21)(v13, v7);
  if (v19 < v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025630()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_246091AA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v14, v6, &qword_27EE3A870, &unk_246098E70);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23 = *(v8 + 32);
  v23(v13, v6, v7);
  v17 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v17, v3, &qword_27EE3A870, &unk_246098E70);
  if (v15(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v3;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23(v10, v3, v7);
  v19 = sub_246091A74();
  v20 = sub_246091A74();
  v21 = *(v8 + 8);
  v21(v10, v7);
  result = (v21)(v13, v7);
  if (v19 < v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025924()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_246091AA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v14, v6, &qword_27EE3A870, &unk_246098E70);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23 = *(v8 + 32);
  v23(v13, v6, v7);
  v17 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v17, v3, &qword_27EE3A870, &unk_246098E70);
  if (v15(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v3;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23(v10, v3, v7);
  v19 = sub_246091A74();
  v20 = sub_246091A74();
  v21 = *(v8 + 8);
  v21(v10, v7);
  result = (v21)(v13, v7);
  if (v19 < v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025C1C()
{
  v1 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_246091AA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v14, v6, &qword_27EE3A870, &unk_246098E70);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23 = *(v8 + 32);
  v23(v13, v6, v7);
  v17 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime;
  swift_beginAccess();
  sub_245F8E7A4(v0 + v17, v3, &qword_27EE3A870, &unk_246098E70);
  if (v15(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v3;
    return sub_245F8E744(v16, &qword_27EE3A870, &unk_246098E70);
  }

  v23(v10, v3, v7);
  v19 = sub_246091A74();
  v20 = sub_246091A74();
  v21 = *(v8 + 8);
  v21(v10, v7);
  result = (v21)(v13, v7);
  if (v19 < v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246025F14()
{
  sub_245F8E744(v0 + OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime, &qword_27EE3A870, &unk_246098E70);
  sub_245F8E744(v0 + OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime, &qword_27EE3A870, &unk_246098E70);

  return swift_deallocClassInstance();
}

uint64_t sub_246025FB8()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV6CoreOC4Util5Timer_startTime;
  v2 = sub_246091AA4();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV6CoreOC4Util5Timer_stopTime, 1, 1, v2);
  return v0;
}

uint64_t sub_246026078(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v12[1] = v12 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_246092214();
  sub_246092214();
  sub_246092214();
  sub_246092204();
  memcpy(v2, v10, v1);
  sub_246092224();
  memcpy(v2, v7, v1);
  sub_246092224();
  return sub_246092224();
}

char *sub_246026288(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A890, &qword_246098F58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_24602638C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24602717C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_2460923C4();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_246091E14();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_2460264C0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_2460264C0(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_245FAE62C(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_246026A1C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
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
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_245FAC394(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_245FAC394((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
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
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
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

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
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

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_246026A1C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
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
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
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
}

uint64_t sub_246026A1C(float *__dst, float *__src, float *a3, float *a4)
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

uint64_t sub_246026C10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3A888, "lB");
  v34 = v4;
  result = sub_246092374();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_246092504();
      sub_246091C94();
      result = sub_246092544();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_246026EB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_245F8D968(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_246026C10(v16, a4 & 1);
      v11 = sub_245F8D968(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_246092424();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_246027014();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_246027014()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A888, "lB");
  v2 = *v0;
  v3 = sub_246092364();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_246027190(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_246027200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A888, "lB");
    v3 = sub_246092384();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_245F8D968(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2460272FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A870, &unk_246098E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for OCDepthWarpData(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OCDepthWarpData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OCDepthWarpData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void sub_246027468(uint64_t a1)
{
  sub_2460274F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2460274F8(uint64_t a1)
{
  if (!qword_27EE3A878)
  {
    sub_246091AA4();
    v1 = sub_2460920F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE3A878);
    }
  }
}

float32x2_t sub_246027558()
{
  result = vneg_f32(0x7F0000007FLL);
  qword_27EE3CCF0 = result;
  return result;
}

uint64_t ObjectContour.init(points:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16) < 3uLL)
  {

    result = 0;
  }

  *a2 = result;
  return result;
}

double ObjectContour.closestPoint(to:)(double a1)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_245F8E624(&qword_27EE3A0E8, &qword_24609ADA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096EF0;
  *(inited + 32) = 0;
  v8 = (inited + 32);
  *(inited + 40) = 0;
  v20 = 0;
  if (OCObjectContourGetNearestPoints())
  {
    v9 = 1;
  }

  else
  {
    v9 = v20 < 1;
  }

  if (!v9)
  {
    v16 = *v8;
    if ((*v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v6 + 16))
    {
      v15 = (v6 + 32 + 8 * v16);
      goto LABEL_14;
    }

    __break(1u);
  }

  v10 = sub_245FA3174();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A18B0, v21);
    _os_log_impl(&dword_245F8A000, v11, v12, "Object Contour.%{private}s: Failed to get nearest points!", v13, 0xCu);
    sub_245F8E6F4(v14);
    MEMORY[0x24C1989D0](v14, -1, -1);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_27EE3CCE8 != -1)
  {
    swift_once();
  }

  v15 = &qword_27EE3CCF0;
LABEL_14:
  v17 = *v15;

  return v17;
}

double ObjectContour.center()()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE3CCE8 != -1)
  {
    swift_once();
  }

  v4 = *&qword_27EE3CCF0;
  v12 = qword_27EE3CCF0;
  if (!OCObjectContourGetCenterOfMass())
  {
    return *&v12;
  }

  v5 = sub_245FA3174();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_2460918D4();
  v7 = sub_246091FC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136380675;
    *(v8 + 4) = sub_245F8D3C0(0x29287265746E6563, 0xE800000000000000, v13);
    _os_log_impl(&dword_245F8A000, v6, v7, "Object Contour.%{private}s: Invalid center!", v8, 0xCu);
    sub_245F8E6F4(v9);
    MEMORY[0x24C1989D0](v9, -1, -1);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_246027AE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_246027B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t PhotogrammetrySession.Error.localizedDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x5255206567616D49;
    v3 = 0x20656761726F7453;
    if (v1 == 5)
    {
      v3 = 0xD000000000000015;
    }

    v4 = 0xD000000000000023;
    if (v1 != 3)
    {
      v4 = 0x676E696C706D6153;
    }

    if (v1 <= 4)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000015;
    }

    if (!v1)
    {
      v2 = 0xD000000000000012;
    }

    if (v1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    sub_246092284();

    v6 = sub_2460923D4();
    MEMORY[0x24C196640](v6);

    return 0xD00000000000002ELL;
  }
}

CoreOC::PhotogrammetrySession::Request::Detail_optional __swiftcall PhotogrammetrySession.Request.Detail.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void PhotogrammetrySession.Request.Geometry.orientedBoundsTransform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void PhotogrammetrySession.Request.Geometry.rootTransform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void __swiftcall PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)(CoreOC::PhotogrammetrySession::Request::Geometry *__return_ptr retstr, simd_float4x4 *orientedBoundsTransform, simd_float4x4 *rootTransform)
{
  retstr->orientedBoundsTransform.columns[0] = v3;
  retstr->orientedBoundsTransform.columns[1] = v4;
  retstr->orientedBoundsTransform.columns[2] = v5;
  retstr->orientedBoundsTransform.columns[3] = v6;
  retstr->rootTransform.columns[0] = v7;
  retstr->rootTransform.columns[1] = v8;
  retstr->rootTransform.columns[2] = v9;
  retstr->rootTransform.columns[3] = v10;
}

uint64_t PhotogrammetrySession.Request.Geometry.hash(into:)()
{
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();

  return sub_24602FCD4();
}

uint64_t static PhotogrammetrySession.Request.Geometry.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 0x80000000) != 0)
  {
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[6], a2[6]), vceqq_f32(a1[7], a2[7])), vandq_s8(vceqq_f32(a1[5], a2[5]), vceqq_f32(a1[4], a2[4])))) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t PhotogrammetrySession.Request.Geometry.hashValue.getter()
{
  sub_246092504();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  return sub_246092544();
}

uint64_t sub_246027FC0()
{
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();

  return sub_24602FCD4();
}

uint64_t sub_24602806C(uint64_t a1)
{
  sub_246092504();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  sub_24602FCD4();
  return sub_246092544();
}

uint64_t sub_246028120(float32x4_t *a1, float32x4_t *a2)
{
  result = sub_24602FD64(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3]);
  if (result)
  {
    return sub_24602FD64(a1[4], a1[5], a1[6], a1[7], a2[4], a2[5], a2[6], a2[7]);
  }

  return result;
}

uint64_t PhotogrammetrySession.Request.init(modelFile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v5 = *(v4 + 48);
  v6 = a2 + *(v4 + 64);
  v7 = sub_246091704();
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  sub_245F97B40(v13);
  v8 = v13[3];
  *(v6 + 32) = v13[2];
  *(v6 + 48) = v8;
  *(v6 + 128) = v14;
  v9 = v13[7];
  *(v6 + 96) = v13[6];
  *(v6 + 112) = v9;
  v10 = v13[5];
  *(v6 + 64) = v13[4];
  *(v6 + 80) = v10;
  v11 = v13[1];
  *v6 = v13[0];
  *(v6 + 16) = v11;
  *(a2 + v5) = 5;
  return (*(*(v4 - 8) + 56))(a2, 0, 3, v4);
}

uint64_t PhotogrammetrySession.Request.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_246091704();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24603046C(v2, v9, type metadata accessor for PhotogrammetrySession.Request);
  v10 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v11 = (*(*(v10 - 8) + 48))(v9, 3, v10);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    return MEMORY[0x24C196E90](v20);
  }

  if (v11)
  {
    v20 = 1;
    return MEMORY[0x24C196E90](v20);
  }

  v12 = v9[*(v10 + 48)];
  v13 = &v9[*(v10 + 64)];
  v14 = *(v13 + 1);
  v22 = *v13;
  v23 = v14;
  v15 = *(v13 + 3);
  v24 = *(v13 + 2);
  v25 = v15;
  v16 = *(v13 + 5);
  v26 = *(v13 + 4);
  v18 = *(v13 + 6);
  v17 = *(v13 + 7);
  v27 = v16;
  v28 = v18;
  v29 = v17;
  v19 = v13[128];
  (*(v4 + 32))(v6, v9, v3);
  MEMORY[0x24C196E90](0);
  sub_246030C6C(&qword_27EE3A5E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_246091B94();
  MEMORY[0x24C196E90](v12);
  v30[0] = v22;
  v30[1] = v23;
  v30[2] = v24;
  v30[3] = v25;
  v30[4] = v26;
  v30[5] = v27;
  v30[6] = v28;
  v30[7] = v29;
  v31 = v19;
  if (sub_245F97DBC(v30) == 1)
  {
    sub_246092524();
  }

  else
  {
    sub_246092524();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
    sub_24602FCD4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PhotogrammetrySession.Request.hashValue.getter()
{
  sub_246092504();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return sub_246092544();
}

uint64_t sub_246028630()
{
  sub_246092504();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return sub_246092544();
}

uint64_t sub_246028674(uint64_t a1)
{
  sub_246092504();
  PhotogrammetrySession.Request.hash(into:)(v2);
  return sub_246092544();
}

uint64_t sub_2460286C4@<X0>(uint64_t result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>)
{
  *a2 = a3;
  a2[1].n128_u32[0] = result;
  return result;
}

CoreOC::PhotogrammetrySession::Poses __swiftcall PhotogrammetrySession.Poses.init(posesBySample:)(Swift::OpaquePointer posesBySample)
{
  v3 = v1;
  v4 = MEMORY[0x277D84F90];
  v1[1]._rawValue = sub_245FFC018(MEMORY[0x277D84F90]);
  v5 = sub_24603030C(v4);
  v3[2]._rawValue = v5;
  v3->_rawValue = posesBySample._rawValue;
  result._lensDistortionDataBySample._rawValue = v7;
  result._intrinsicsBySample._rawValue = v6;
  result.posesBySample._rawValue = v5;
  return result;
}

unint64_t PhotogrammetrySession.ProcessStage.localizedDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C41206567616D49;
  v3 = 0x6E6547206873654DLL;
  v4 = 0x2065727574786554;
  if (v1 != 4)
  {
    v4 = 0x617A696D6974704FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24602883C@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 9) = v4;
  return result;
}

uint64_t PhotogrammetrySession.Output.localizedDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PhotogrammetrySession.Result(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24603046C(v1, v16, type metadata accessor for PhotogrammetrySession.Output);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v39 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
        sub_2460304D4(v16, v13, type metadata accessor for PhotogrammetrySession.Request);
        sub_2460304D4(v16 + v39, v7, type metadata accessor for PhotogrammetrySession.Result);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_246092284();

        v45 = 0x2074736575716552;
        v46 = 0xE800000000000000;
        sub_24603046C(v13, v10, type metadata accessor for PhotogrammetrySession.Request);
        v40 = sub_246091C54();
        MEMORY[0x24C196640](v40);

        MEMORY[0x24C196640](0xD000000000000016, 0x80000002460A1BA0);
        sub_24603046C(v7, v4, type metadata accessor for PhotogrammetrySession.Result);
        v41 = sub_246091C54();
        MEMORY[0x24C196640](v41);

        MEMORY[0x24C196640](46, 0xE100000000000000);
        v30 = v45;
        sub_24603053C(v7, type metadata accessor for PhotogrammetrySession.Result);
        goto LABEL_22;
      }

      v24 = v16 + *(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48);
      v25 = *v24;
      v26 = v24[8];
      sub_2460304D4(v16, v13, type metadata accessor for PhotogrammetrySession.Request);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_246092284();

      v45 = 0x2074736575716552;
      v46 = 0xE800000000000000;
      sub_24603046C(v13, v10, type metadata accessor for PhotogrammetrySession.Request);
      v27 = sub_246091C54();
      MEMORY[0x24C196640](v27);

      MEMORY[0x24C196640](0xD000000000000015, 0x80000002460A1BC0);
      v42 = v25;
      v43 = v26;
      v28 = PhotogrammetrySession.Error.localizedDescription.getter();
      MEMORY[0x24C196640](v28);

      MEMORY[0x24C196640](11810, 0xE200000000000000);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_245F8E624(&qword_27EE3A568, &qword_2460983E0);
      sub_2460304D4(v16, v13, type metadata accessor for PhotogrammetrySession.Request);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0x2074736575716552, 0xE800000000000000);
      sub_24603046C(v13, v10, type metadata accessor for PhotogrammetrySession.Request);
      v29 = sub_246091C54();
      MEMORY[0x24C196640](v29);

      MEMORY[0x24C196640](0x736572676F727020, 0xEC000000203D2073);
      sub_246091EF4();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v36 = *v16;
        v35 = v16[1];
        v37 = v16[2];
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_246092284();

        v45 = 0x6920656C706D6153;
        v46 = 0xEA00000000003D64;
        v42 = v36;
        v38 = sub_2460923D4();
        MEMORY[0x24C196640](v38);

        MEMORY[0x24C196640](0xD000000000000022, 0x80000002460A1B50);
        MEMORY[0x24C196640](v35, v37);

        v33 = 46;
        v34 = 0xE100000000000000;
        goto LABEL_20;
      }

      v19 = v16 + *(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48);
      v20 = *v19;
      v21 = v19[8];
      v22 = v19[9];
      sub_2460304D4(v16, v13, type metadata accessor for PhotogrammetrySession.Request);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0x2074736575716552, 0xE800000000000000);
      sub_24603046C(v13, v10, type metadata accessor for PhotogrammetrySession.Request);
      v23 = sub_246091C54();
      MEMORY[0x24C196640](v23);

      MEMORY[0x24C196640](0xD000000000000011, 0x80000002460A1B80);
      v42 = v20;
      v43 = v21;
      v44 = v22;
      sub_246092334();
    }

    v30 = v45;
LABEL_22:
    sub_24603053C(v13, type metadata accessor for PhotogrammetrySession.Request);
    return v30;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD00000000000001ALL;
      }

      else
      {
        return 0xD000000000000076;
      }
    }

    v31 = *v16;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0x6920656C706D6153, 0xEA00000000003D64);
    v42 = v31;
    v32 = sub_2460923D4();
    MEMORY[0x24C196640](v32);

    v33 = 0xD000000000000048;
    v34 = 0x80000002460A1B00;
LABEL_20:
    MEMORY[0x24C196640](v33, v34);
    return v45;
  }

  if (EnumCaseMultiPayload == 8)
  {
    return 0xD00000000000003DLL;
  }

  if (EnumCaseMultiPayload == 9)
  {
    return 0xD00000000000002BLL;
  }

  return 0xD000000000000032;
}

CoreOC::PhotogrammetrySession::Configuration::CustomDetailSpecification::TextureDimension_optional __swiftcall PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue <= 4095)
  {
    if (rawValue == 1024)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 2048)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 0x4000)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 0x2000)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 4096)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_246029288()
{
  v1 = *v0;
  sub_246092504();
  MEMORY[0x24C196E90](qword_246099AD8[v1]);
  return sub_246092544();
}

uint64_t sub_246029310(uint64_t a1)
{
  v2 = *v1;
  sub_246092504();
  MEMORY[0x24C196E90](qword_246099AD8[v2]);
  return sub_246092544();
}

void sub_2460293D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

BOOL sub_2460294A8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2460294D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_246029504@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2460295F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL static PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_246029678(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

void PhotogrammetrySession.Configuration.CustomDetailSpecification.textureFormat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  *a1 = *(v1 + 24);
  *(a1 + 4) = v2;
}

uint64_t PhotogrammetrySession.Configuration.CustomDetailSpecification.textureFormat.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 24) = *result;
  *(v1 + 28) = v2;
  return result;
}

void PhotogrammetrySession.Configuration.CustomDetailSpecification.init()(uint64_t a1@<X8>)
{
  *a1 = 30000000;
  *(a1 + 8) = 3;
  *(a1 + 16) = 31;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
}

void PhotogrammetrySession.Configuration.customDetailSpecification.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 28) = v5;
}

uint64_t PhotogrammetrySession.Configuration.customDetailSpecification.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 28);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 36) = v5;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.snapshotURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PhotogrammetrySession.Configuration(0) + 32);

  return sub_246030634(a1, v3);
}

uint64_t PhotogrammetrySession.Configuration.ignoreBoundingBox.setter(char a1)
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 2) = 0;
  *(a1 + 8) = 30000000;
  *(a1 + 16) = 3;
  *(a1 + 24) = 31;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  v2 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v3 = *(v2 + 32);
  v4 = sub_246091704();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + *(v2 + 36)) = 0;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.init(snapshotURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 2) = 0;
  *(a2 + 8) = 30000000;
  *(a2 + 16) = 3;
  *(a2 + 24) = 31;
  *(a2 + 32) = 0;
  *(a2 + 36) = 1;
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(v4 + 32);
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v9 = *(v7 + 56);
  v9(a2 + v5, 1, 1, v6);
  *(a2 + *(v4 + 36)) = 0;
  sub_245F8E744(a2 + v5, &qword_27EE3A498, &unk_246097EB8);
  (*(v7 + 32))(a2 + v5, a1, v6);

  return (v9)(a2 + v5, 0, 1, v6);
}

uint64_t sub_246029B3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_246029B4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

double sub_246029B98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double sub_246029BF8()
{
  swift_beginAccess();

  return result;
}

double sub_246029C30(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t sub_246029C78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_246029CC4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_24602E8A0();
    sub_245F8E624(&qword_27EE3A898, &unk_246098FC0);
    sub_245F9218C(&qword_27EE3A8A0, &qword_27EE3A898, &unk_246098FC0, MEMORY[0x277CBCE20]);
    v1 = sub_2460919A4();

    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_246029DE4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24603046C(a1, v6, type metadata accessor for PhotogrammetrySession.Configuration);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  swift_beginAccess();
  sub_246030A98(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_246029EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  swift_beginAccess();
  return sub_24603046C(v1 + v3, a1, type metadata accessor for PhotogrammetrySession.Configuration);
}

uint64_t sub_246029F1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  swift_beginAccess();
  sub_246030A98(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t static PhotogrammetrySession.isSupported.getter()
{
  v1 = v0;
  v2 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_246091EB4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_246091E84();
  v6 = sub_246091E74();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_24602D858(0, 0, v4, &unk_246098FD8, v7);

  type metadata accessor for PGManager(0);
  return sub_245FD4A28() & 1;
}

double static PhotogrammetrySession.hardwareSpecs.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EE3CD00 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_27EE3CD30;
  result = *&xmmword_27EE3CD10;
  v3 = unk_27EE3CD20;
  *a1 = xmmword_27EE3CD10;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

uint64_t PhotogrammetrySession.__allocating_init(snapshotURL:)(uint64_t a1)
{
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MemoryLogger();
  v17[0] = *(v10 + 88);
  v17[1] = v10;
  (v17[0])(0xD00000000000002ELL, 0x80000002460A1C00);
  v11 = *(v3 + 16);
  v18 = a1;
  v11(v5, a1, v2);
  *v9 = 1;
  v9[2] = 0;
  *(v9 + 1) = 30000000;
  v9[16] = 3;
  *(v9 + 3) = 31;
  *(v9 + 8) = 0;
  v9[36] = 1;
  v12 = *(v7 + 40);
  v13 = *(v3 + 56);
  v13(&v9[v12], 1, 1, v2);
  v9[*(v7 + 44)] = 0;
  sub_245F8E744(&v9[v12], &qword_27EE3A498, &unk_246097EB8);
  (*(v3 + 32))(&v9[v12], v5, v2);
  v13(&v9[v12], 0, 1, v2);
  v14 = v17[3];
  v15 = (*(v17[2] + 208))(v9);
  if (!v14)
  {
    (v17[0])(0xD000000000000031, 0x80000002460A1C30);
  }

  (*(v3 + 8))(v18, v2);
  return v15;
}

uint64_t PhotogrammetrySession.__allocating_init(configuration:)(_BYTE *a1)
{
  v2 = swift_allocObject();
  PhotogrammetrySession.init(configuration:)(a1);
  return v2;
}

void *PhotogrammetrySession.init(configuration:)(_BYTE *a1)
{
  v134 = a1;
  v144[3] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v136 = &v121 - v4;
  v5 = sub_246091704();
  v140 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v122 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v139 = &v121 - v8;
  v9 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x28223BE20](v9);
  v125 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v128 = &v121 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v121 - v14;
  v16 = sub_2460918F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v124 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = &v121 - v20;
  MEMORY[0x28223BE20](v21);
  v129 = &v121 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v121 - v24;
  v26 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v121 - v27;
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject) = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
  v141 = v1;
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 0;
  v29 = sub_246091EB4();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  sub_246091E84();
  v30 = sub_246091E74();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v2;
  sub_24602D858(0, 0, v28, &unk_246098FE8, v31);

  v33 = sub_245FA31EC();
  v137 = v17;
  v138 = v16;
  v34 = v17;
  v35 = v134;
  v36 = *(v34 + 16);
  v131 = v33;
  v132 = v36;
  v133 = v34 + 16;
  (v36)(v25);
  sub_24603046C(v35, v15, type metadata accessor for PhotogrammetrySession.Configuration);
  v135 = v25;
  v37 = sub_2460918D4();
  v38 = sub_246091FC4();
  v39 = os_log_type_enabled(v37, v38);
  v130 = v9;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v127 = v5;
    v42 = v41;
    v144[0] = v41;
    *v40 = 136446210;
    sub_24603046C(v15, v128, type metadata accessor for PhotogrammetrySession.Configuration);
    v43 = sub_246091C54();
    v45 = v44;
    sub_24603053C(v15, type metadata accessor for PhotogrammetrySession.Configuration);
    v46 = sub_245F8D3C0(v43, v45, v144);
    v48 = v139;
    v47 = v140;

    *(v40 + 4) = v46;
    _os_log_impl(&dword_245F8A000, v37, v38, "Backend Session: Initializing with configuration = %{public}s", v40, 0xCu);
    sub_245F8E6F4(v42);
    v49 = v42;
    v5 = v127;
    MEMORY[0x24C1989D0](v49, -1, -1);
    MEMORY[0x24C1989D0](v40, -1, -1);

    v50 = v138;
    v51 = *(v137 + 8);
    v51(v135, v138);
  }

  else
  {

    sub_24603053C(v15, type metadata accessor for PhotogrammetrySession.Configuration);
    v50 = v138;
    v51 = *(v137 + 8);
    v51(v135, v138);
    v48 = v139;
    v47 = v140;
  }

  v52 = sub_245FD4634(v35);
  v53 = v136;
  if ((v52 & 1) == 0)
  {
    v54 = v35;
    v55 = v129;
    v132(v129, v131, v50);
    v56 = sub_2460918D4();
    v57 = sub_246091FB4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_245F8A000, v56, v57, "Backend Session: Cannot resume from snapshot URL with non-default configuration!", v58, 2u);
      MEMORY[0x24C1989D0](v58, -1, -1);
    }

    v51(v55, v50);
    sub_245FFD204();
    swift_allocError();
    *v59 = 2;
    *(v59 + 8) = 1;
    swift_willThrow();
    v60 = v54;
    goto LABEL_20;
  }

  sub_245F8E7A4(&v35[*(v130 + 32)], v136, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v47 + 48))(v53, 1, v5) == 1)
  {
    sub_245F8E744(v53, &qword_27EE3A498, &unk_246097EB8);
LABEL_19:
    sub_245FFD204();
    swift_allocError();
    *v93 = 0;
    *(v93 + 8) = 1;
    swift_willThrow();
    v60 = v35;
LABEL_20:
    sub_24603053C(v60, type metadata accessor for PhotogrammetrySession.Configuration);
LABEL_21:
    v94 = 0;
    goto LABEL_22;
  }

  (*(v47 + 32))(v48, v53, v5);
  if ((sub_2460915E4() & 1) == 0)
  {
    (*(v47 + 8))(v48, v5);
    goto LABEL_19;
  }

  v127 = v5;
  v61 = v48;
  v62 = objc_opt_self();
  v63 = [v62 defaultManager];
  sub_2460916F4();
  v64 = sub_246091BD4();

  v65 = [v63 fileExistsAtPath_];

  if (!v65)
  {
    (*(v140 + 8))(v61, v127);
    goto LABEL_19;
  }

  v66 = [v62 defaultManager];
  sub_2460916F4();
  v67 = sub_246091BD4();

  v144[0] = 0;
  v68 = [v66 contentsOfDirectoryAtPath:v67 error:v144];

  v69 = v144[0];
  v70 = v35;
  if (!v68)
  {
    v96 = v144[0];
    sub_2460915D4();

    swift_willThrow();
    sub_24603053C(v35, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v140 + 8))(v61, v127);
    goto LABEL_21;
  }

  v71 = sub_246091DD4();
  v72 = v69;

  v73 = *(v71 + 16);

  if (!v73)
  {
    sub_245FFD204();
    swift_allocError();
    *v97 = 0;
    *(v97 + 8) = 1;
    swift_willThrow();
    sub_24603053C(v35, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v140 + 8))(v139, v127);
    goto LABEL_21;
  }

  v74 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  v75 = v141;
  sub_24603046C(v35, v141 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PGManager(0);
  swift_beginAccess();
  v76 = v75 + v74;
  v77 = v125;
  sub_24603046C(v76, v125, type metadata accessor for PhotogrammetrySession.Configuration);
  v78 = v126;
  v79 = sub_245FD5270(v77);
  v136 = v78;
  if (!v78)
  {
    *(v141 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) = v79;
    v98 = *(*v79 + 472);

    v98(v99, &off_2858E0260);

    v100 = v138;
    v132(v123, v131, v138);
    v101 = v140;
    v102 = v122;
    v103 = v127;
    (*(v140 + 16))(v122, v139, v127);
    v104 = sub_2460918D4();
    v105 = sub_246091FA4();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v143 = v135;
      *v106 = 141558275;
      *(v106 + 4) = 1752392040;
      *(v106 + 12) = 2081;
      sub_246030C6C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      LODWORD(v134) = v105;
      v107 = sub_2460923D4();
      v108 = v102;
      v110 = v109;
      v111 = *(v101 + 8);
      v111(v108, v127);
      v112 = sub_245F8D3C0(v107, v110, &v143);

      *(v106 + 14) = v112;
      _os_log_impl(&dword_245F8A000, v104, v134, "Backend Session: initialized with snapshot URL = %{private,mask.hash}s", v106, 0x16u);
      v113 = v135;
      sub_245F8E6F4(v135);
      MEMORY[0x24C1989D0](v113, -1, -1);
      v114 = v106;
      v103 = v127;
      MEMORY[0x24C1989D0](v114, -1, -1);

      v115 = v111;
      v116 = v138;
      v117 = v123;
    }

    else
    {

      v115 = *(v101 + 8);
      v115(v102, v103);
      v117 = v123;
      v116 = v100;
    }

    v51(v117, v116);
    v120 = type metadata accessor for MemoryLogger();
    (*(v120 + 88))(0xD000000000000032, 0x80000002460A1C70);
    sub_24603053C(v35, type metadata accessor for PhotogrammetrySession.Configuration);
    v115(v139, v103);
    return v141;
  }

  v80 = v124;
  v81 = v138;
  v132(v124, v131, v138);
  v82 = v136;
  v83 = v136;
  v84 = sub_2460918D4();
  v85 = sub_246091FB4();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v143 = v87;
    *v86 = 136446210;
    v142 = v136;
    v88 = v136;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v89 = sub_246091C54();
    v91 = sub_245F8D3C0(v89, v90, &v143);

    *(v86 + 4) = v91;
    _os_log_impl(&dword_245F8A000, v84, v85, "Backend Session: initialization error = %{public}s", v86, 0xCu);
    sub_245F8E6F4(v87);
    MEMORY[0x24C1989D0](v87, -1, -1);
    MEMORY[0x24C1989D0](v86, -1, -1);

    v92 = v124;
  }

  else
  {

    v92 = v80;
  }

  v51(v92, v81);
  v118 = v139;
  sub_245FFD204();
  swift_allocError();
  *v119 = 2;
  v94 = 1;
  *(v119 + 8) = 1;
  swift_willThrow();

  sub_24603053C(v70, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v140 + 8))(v118, v127);
LABEL_22:

  if (v94)
  {
    sub_24603053C(v141 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  type metadata accessor for PhotogrammetrySession(0);
  swift_deallocPartialClassInstance();
  return v141;
}

uint64_t PhotogrammetrySession.__allocating_init(imagesURL:snapshotURL:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v22 = a1;
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v21 = *(type metadata accessor for MemoryLogger() + 88);
  v21(0xD000000000000039, 0x80000002460A1CB0);
  *v12 = 1;
  v12[2] = 0;
  *(v12 + 1) = 30000000;
  v12[16] = 3;
  *(v12 + 3) = 31;
  *(v12 + 8) = 0;
  v12[36] = 1;
  v13 = *(v7 + 40);
  (*(v3 + 56))(&v12[v13], 1, 1, v2);
  v14 = *(v7 + 44);
  v15 = v22;
  v12[v14] = 0;
  sub_245FFF298(v26, &v12[v13]);
  v16 = *(v3 + 16);
  v25 = v2;
  v16(v5, v15, v2);
  sub_24603046C(v12, v9, type metadata accessor for PhotogrammetrySession.Configuration);
  v17 = v24;
  v18 = (*(v23 + 216))(v5, v9);
  if (!v17)
  {
    v21(0xD00000000000003CLL, 0x80000002460A1CF0);
  }

  sub_245F8E744(v26, &qword_27EE3A498, &unk_246097EB8);
  (*(v3 + 8))(v15, v25);
  sub_24603053C(v12, type metadata accessor for PhotogrammetrySession.Configuration);
  return v18;
}

uint64_t PhotogrammetrySession.__allocating_init(imagesURL:configuration:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PhotogrammetrySession.init(imagesURL:configuration:)(a1, a2);
  return v4;
}

void *PhotogrammetrySession.init(imagesURL:configuration:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v154 = a1;
  v155 = a2;
  v159[3] = *MEMORY[0x277D85DE8];
  v151 = *v2;
  v134 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v134);
  v133 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v147 = (&v132 - v6);
  v150 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x28223BE20](v150);
  v145 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v149 = (&v132 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v132 - v11;
  v13 = sub_246091704();
  v156 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v135 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = &v132 - v16;
  MEMORY[0x28223BE20](v17);
  v139 = &v132 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v132 - v20;
  v22 = sub_2460918F4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v137 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v136 = &v132 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v132 - v28;
  v30 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v132 - v31;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 0;
  v33 = sub_246091EB4();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  sub_246091E84();
  v34 = sub_246091E74();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  v35[2] = v34;
  v35[3] = v36;
  v35[4] = v151;
  v37 = v32;
  v38 = v156;
  sub_24602D858(0, 0, v37, &unk_246098FF8, v35);

  v39 = sub_245FA31EC();
  v152 = v23;
  v40 = *(v23 + 16);
  v141 = v39;
  v153 = v22;
  v142 = v40;
  v143 = v23 + 16;
  (v40)(v29);
  v41 = *(v38 + 16);
  v42 = v13;
  v146 = v38 + 16;
  v140 = v41;
  v41(v21, v154, v13);
  v43 = v12;
  sub_24603046C(v155, v12, type metadata accessor for PhotogrammetrySession.Configuration);
  v44 = sub_2460918D4();
  v45 = sub_246091FC4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v138 = v3;
    v47 = v46;
    v48 = swift_slowAlloc();
    v159[0] = v48;
    *v47 = 136380931;
    sub_246030C6C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v49 = sub_2460923D4();
    v50 = v42;
    v132 = v42;
    v52 = v51;
    v151 = *(v156 + 8);
    v151(v21, v50);
    v53 = sub_245F8D3C0(v49, v52, v159);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2082;
    sub_24603046C(v43, v149, type metadata accessor for PhotogrammetrySession.Configuration);
    v54 = sub_246091C54();
    v56 = v55;
    sub_24603053C(v43, type metadata accessor for PhotogrammetrySession.Configuration);
    v57 = sub_245F8D3C0(v54, v56, v159);

    *(v47 + 14) = v57;
    _os_log_impl(&dword_245F8A000, v44, v45, "Backend Session: Initializing with images URL = %{private}s and configuration = %{public}s", v47, 0x16u);
    swift_arrayDestroy();
    v58 = v48;
    v38 = v156;
    MEMORY[0x24C1989D0](v58, -1, -1);
    v59 = v47;
    v3 = v138;
    MEMORY[0x24C1989D0](v59, -1, -1);

    v60 = *(v152 + 8);
    v60(v29, v153);
    v61 = v132;
  }

  else
  {

    sub_24603053C(v43, type metadata accessor for PhotogrammetrySession.Configuration);
    v151 = *(v38 + 8);
    v151(v21, v42);
    v60 = *(v152 + 8);
    v60(v29, v153);
    v61 = v42;
  }

  v62 = v154;
  v63 = sub_2460915E4();
  v64 = v155;
  if ((v63 & 1) == 0)
  {
    goto LABEL_12;
  }

  v149 = v60;
  v65 = [objc_opt_self() defaultManager];
  sub_2460916F4();
  v66 = sub_246091BD4();

  v159[0] = 0;
  v67 = [v65 contentsOfDirectoryAtPath:v66 error:v159];

  v68 = v159[0];
  if (!v67)
  {
    v98 = v159[0];
    sub_2460915D4();

    goto LABEL_14;
  }

  v69 = sub_246091DD4();
  v70 = v68;

  v71 = *(v69 + 16);

  if (!v71)
  {
LABEL_12:
    sub_245FFD204();
    swift_allocError();
    *v97 = 1;
    *(v97 + 8) = 1;
LABEL_14:
    swift_willThrow();
    sub_24603053C(v64, type metadata accessor for PhotogrammetrySession.Configuration);
    v151(v62, v61);
    goto LABEL_15;
  }

  v72 = v147;
  sub_245F8E7A4(v64 + *(v150 + 32), v147, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v38 + 48))(v72, 1, v61) != 1)
  {
    v101 = v139;
    (*(v38 + 32))(v139, v72, v61);
    v102 = v148;
    sub_246090F3C();
    if (!v102)
    {
      if (sub_246090F38(v101))
      {
        v148 = 0;
        v151(v101, v61);
        goto LABEL_9;
      }

      sub_245FFD204();
      swift_allocError();
      *v130 = 0;
      *(v130 + 8) = 1;
      swift_willThrow();
    }

    sub_24603053C(v64, type metadata accessor for PhotogrammetrySession.Configuration);
    v131 = v151;
    v151(v62, v61);
    v131(v101, v61);
LABEL_15:
    v99 = 0;
    goto LABEL_16;
  }

  sub_245F8E744(v72, &qword_27EE3A498, &unk_246097EB8);
LABEL_9:
  v73 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  sub_24603046C(v64, v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PGManager(0);
  v74 = v144;
  v75 = v140;
  v140(v144, v62, v61);
  swift_beginAccess();
  v76 = v3 + v73;
  v77 = v145;
  sub_24603046C(v76, v145, type metadata accessor for PhotogrammetrySession.Configuration);
  v78 = v148;
  v79 = sub_245FD69FC(v74, v77);
  v148 = v78;
  if (!v78)
  {
    *(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) = v79;
    v103 = *(*v79 + 472);

    v103(v104, &off_2858E0260);

    v105 = v136;
    v106 = v153;
    (v142)(v136, v141, v153);
    v107 = v135;
    v75(v135, v62, v61);

    v108 = sub_2460918D4();
    v109 = sub_246091FA4();

    v110 = os_log_type_enabled(v108, v109);
    v138 = v3;
    if (v110)
    {
      v111 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v158 = v147;
      *v111 = 141558787;
      *(v111 + 4) = 1752392040;
      *(v111 + 12) = 2081;
      sub_246030C6C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      LODWORD(v146) = v109;
      v112 = sub_2460923D4();
      v113 = v107;
      v114 = v112;
      v116 = v115;
      v117 = v151;
      v151(v113, v61);
      v118 = sub_245F8D3C0(v114, v116, &v158);

      *(v111 + 14) = v118;
      *(v111 + 22) = 2160;
      *(v111 + 24) = 1752392040;
      *(v111 + 32) = 2081;
      sub_245F8E7A4(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration + *(v150 + 32), v133, &qword_27EE3A498, &unk_246097EB8);
      v119 = sub_246091C54();
      v121 = sub_245F8D3C0(v119, v120, &v158);
      v122 = v117;

      *(v111 + 34) = v121;
      _os_log_impl(&dword_245F8A000, v108, v146, "Backend Session: initialized with images URL = %{private,mask.hash}s, snapshot URL = %{private,mask.hash}s", v111, 0x2Au);
      v123 = v147;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v123, -1, -1);
      v124 = v111;
      v62 = v154;
      MEMORY[0x24C1989D0](v124, -1, -1);

      v125 = v153;
      v126 = v105;
    }

    else
    {

      v128 = v107;
      v122 = v151;
      v151(v128, v61);
      v126 = v105;
      v125 = v106;
    }

    v149(v126, v125);
    v129 = type metadata accessor for MemoryLogger();
    (*(v129 + 88))(0xD000000000000041, 0x80000002460A1D30);
    sub_24603053C(v155, type metadata accessor for PhotogrammetrySession.Configuration);
    v122(v62, v61);
    return v138;
  }

  v80 = v153;
  v81 = v137;
  v142();
  v82 = v148;
  v83 = v148;
  v84 = sub_2460918D4();
  v85 = sub_246091FB4();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v158 = v87;
    *v86 = 136446210;
    v157 = v148;
    v88 = v148;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v89 = sub_246091C54();
    v91 = v61;
    v92 = sub_245F8D3C0(v89, v90, &v158);

    *(v86 + 4) = v92;
    v61 = v91;
    _os_log_impl(&dword_245F8A000, v84, v85, "Backend Session: initialization error = %{public}s", v86, 0xCu);
    sub_245F8E6F4(v87);
    v93 = v87;
    v62 = v154;
    MEMORY[0x24C1989D0](v93, -1, -1);
    v94 = v86;
    v64 = v155;
    MEMORY[0x24C1989D0](v94, -1, -1);

    v95 = v153;
    v96 = v81;
  }

  else
  {

    v96 = v81;
    v95 = v80;
  }

  v149(v96, v95);
  sub_245FFD204();
  swift_allocError();
  *v127 = 2;
  v99 = 1;
  *(v127 + 8) = 1;
  swift_willThrow();

  sub_24603053C(v64, type metadata accessor for PhotogrammetrySession.Configuration);
  v151(v62, v61);
LABEL_16:

  if (v99)
  {
    sub_24603053C(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  type metadata accessor for PhotogrammetrySession(0);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t PhotogrammetrySession.__allocating_init(photogrammetrySamples:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PhotogrammetrySession.init(photogrammetrySamples:configuration:)(a1, a2);
  return v4;
}

void *PhotogrammetrySession.init(photogrammetrySamples:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a1;
  v82 = *v2;
  v5 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v74 - v6;
  v7 = sub_246091704();
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x28223BE20](v89);
  v80 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  v16 = sub_2460918F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  v22 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v74 - v23;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
  *(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 0;
  v25 = sub_246091EB4();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  sub_246091E84();
  v26 = sub_246091E74();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v82;
  sub_24602D858(0, 0, v24, &unk_246099000, v27);

  v29 = sub_245FA31EC();
  v87 = v17;
  v30 = *(v17 + 16);
  v77 = v29;
  v78 = v17 + 16;
  v76 = v30;
  (v30)(v21);
  sub_24603046C(a2, v15, type metadata accessor for PhotogrammetrySession.Configuration);
  v82 = v21;
  v31 = sub_2460918D4();
  v32 = sub_246091FC4();
  v33 = os_log_type_enabled(v31, v32);
  v81 = v16;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v92[0] = v35;
    *v34 = 136446210;
    sub_24603046C(v15, v12, type metadata accessor for PhotogrammetrySession.Configuration);
    v36 = sub_246091C54();
    v37 = v3;
    v38 = a2;
    v40 = v39;
    sub_24603053C(v15, type metadata accessor for PhotogrammetrySession.Configuration);
    v41 = sub_245F8D3C0(v36, v40, v92);
    a2 = v38;
    v3 = v37;

    *(v34 + 4) = v41;
    _os_log_impl(&dword_245F8A000, v31, v32, "Backend Session: Initializing with photogrammetry samples and configuration = %{public}s", v34, 0xCu);
    sub_245F8E6F4(v35);
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v34, -1, -1);

    v42 = *(v87 + 8);
    v44 = v81;
    v43 = v82;
  }

  else
  {

    sub_24603053C(v15, type metadata accessor for PhotogrammetrySession.Configuration);
    v42 = *(v87 + 8);
    v43 = v82;
    v44 = v16;
  }

  v82 = v42;
  v42(v43, v44);
  v75 = *(type metadata accessor for MemoryLogger() + 88);
  v75(0xD00000000000004ALL, 0x80000002460A1D80);
  v45 = v83;
  sub_245F8E7A4(a2 + *(v89 + 32), v83, &qword_27EE3A498, &unk_246097EB8);
  v47 = v85;
  v46 = v86;
  v48 = (*(v85 + 48))(v45, 1, v86);
  v49 = v84;
  if (v48 == 1)
  {
    sub_245F8E744(v45, &qword_27EE3A498, &unk_246097EB8);
  }

  else
  {
    (*(v47 + 32))(v84, v45, v46);
    v67 = v90;
    sub_246090F3C();
    v90 = v67;
    if (v67)
    {

      sub_24603053C(a2, type metadata accessor for PhotogrammetrySession.Configuration);
      (*(v47 + 8))(v49, v46);
      v68 = 0;
      goto LABEL_17;
    }

    if ((sub_246090F38(v49) & 1) == 0)
    {
      sub_245FFD204();
      swift_allocError();
      *v72 = 0;
      *(v72 + 8) = 1;
      swift_willThrow();

      sub_24603053C(a2, type metadata accessor for PhotogrammetrySession.Configuration);
      (*(v47 + 8))(v49, v46);
      v68 = 0;
      goto LABEL_17;
    }

    (*(v47 + 8))(v49, v46);
  }

  v50 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration;
  sub_24603046C(a2, v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  type metadata accessor for PGManager(0);
  v89 = a2;
  v93 = v88;
  swift_beginAccess();
  v51 = v80;
  sub_24603046C(v3 + v50, v80, type metadata accessor for PhotogrammetrySession.Configuration);

  v52 = sub_245F8E624(&qword_27EE3A4B0, &qword_246097ED0);
  sub_245F9218C(&qword_27EE3A8A8, &qword_27EE3A4B0, &qword_246097ED0, MEMORY[0x277D84060]);
  v53 = v90;
  v54 = sub_245FD826C(&v93, v51, v52);
  if (!v53)
  {
    *(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) = v54;
    v69 = *(*v54 + 472);

    v69(v70, &off_2858E0260);

    v75(0xD000000000000054, 0x80000002460A1DD0);

    sub_24603053C(v89, type metadata accessor for PhotogrammetrySession.Configuration);
    return v3;
  }

  v55 = v79;
  v56 = v81;
  v76(v79, v77, v81);
  v57 = v53;
  v58 = sub_2460918D4();
  v59 = sub_246091FB4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v93 = v61;
    *v60 = 136446210;
    v91 = v53;
    v62 = v53;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v63 = sub_246091C54();
    v65 = sub_245F8D3C0(v63, v64, &v93);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_245F8A000, v58, v59, "Backend Session: initialization error = %{public}s", v60, 0xCu);
    sub_245F8E6F4(v61);
    MEMORY[0x24C1989D0](v61, -1, -1);
    MEMORY[0x24C1989D0](v60, -1, -1);

    v66 = v79;
  }

  else
  {

    v66 = v55;
  }

  v82(v66, v56);
  sub_245FFD204();
  swift_allocError();
  *v71 = 2;
  v68 = 1;
  *(v71 + 8) = 1;
  swift_willThrow();

  sub_24603053C(v89, type metadata accessor for PhotogrammetrySession.Configuration);
LABEL_17:

  if (v68)
  {
    sub_24603053C(v3 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  type metadata accessor for PhotogrammetrySession(0);
  swift_deallocPartialClassInstance();
  return v3;
}

void *PhotogrammetrySession.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(type metadata accessor for MemoryLogger() + 88);
  v6(0xD00000000000001ELL, 0x80000002460A1E30);
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_24600E77C();

  v7 = sub_246091EB4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_246091E84();
  v8 = sub_246091E74();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  sub_24602D858(0, 0, v5, &unk_246099018, v9);

  v6(0xD000000000000021, 0x80000002460A1E50);

  sub_24603053C(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_configuration, type metadata accessor for PhotogrammetrySession.Configuration);

  return v1;
}

uint64_t sub_24602D690()
{
  sub_246091E84();
  v0[2] = sub_246091E74();
  v2 = sub_246091E64();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_24602D724, v2, v1);
}

uint64_t sub_24602D724()
{
  if (qword_27EE3CD40 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE3CD48;
  v0[5] = qword_27EE3CD48;
  v2 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xA11D000000000000;
  v0[6] = *(*v1 + 168);
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_24602D7E8, v1, 0);
}

uint64_t sub_24602D7E8()
{
  (*(v0 + 48))();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_246032474, v1, v2);
}

uint64_t sub_24602D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_245F8E7A4(a3, v25 - v10, &qword_27EE3A778, &qword_246098980);
  v12 = sub_246091EB4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_245F8E744(v11, &qword_27EE3A778, &qword_246098980);
  }

  else
  {
    sub_246091EA4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_246091E64();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_246091C74() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t PhotogrammetrySession.__deallocating_deinit()
{
  PhotogrammetrySession.deinit();

  return swift_deallocClassInstance();
}

void sub_24602DBB0(uint64_t (**a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v40 = a1;
  v43 = sub_246091704();
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245FA31EC();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2460918D4();
  v19 = sub_246091FC4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v2;
    v21 = v20;
    *v20 = 0;
    _os_log_impl(&dword_245F8A000, v18, v19, "Backend Session: process request(s).", v20, 2u);
    v22 = v21;
    v2 = v38;
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v23 = v40[2];
  if (!v23 || (*(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) & 1) != 0 || (*(v2 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) & 1) != 0)
  {
    goto LABEL_28;
  }

  v38 = v2;
  v42 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v24 = v40 + v42;
  v25 = *(v37 + 72);
  v40 = (v39 + 4);
  v26 = MEMORY[0x277D84F90];
  ++v39;
  v27 = v43;
  do
  {
    sub_24603046C(v24, v12, type metadata accessor for PhotogrammetrySession.Request);
    sub_24603046C(v12, v9, type metadata accessor for PhotogrammetrySession.Request);
    v28 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    if ((*(*(v28 - 8) + 48))(v9, 3, v28))
    {
      sub_24603053C(v9, type metadata accessor for PhotogrammetrySession.Request);
    }

    else
    {
      v31 = v41;
      (*v40)(v41, v9, v27);
      if ((sub_2460915E4() & 1) == 0)
      {
        (*v39)(v31, v27);
LABEL_8:
        sub_24603053C(v12, type metadata accessor for PhotogrammetrySession.Request);
        goto LABEL_9;
      }

      if (sub_246091654())
      {
        goto LABEL_22;
      }

      if (sub_2460915F4() == 2053403509 && v32 == 0xE400000000000000)
      {

        v31 = v41;
LABEL_22:
        (*v39)(v31, v27);
        goto LABEL_12;
      }

      LODWORD(v37) = sub_2460923E4();

      (*v39)(v41, v27);
      if ((v37 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    sub_24603046C(v12, v6, type metadata accessor for PhotogrammetrySession.Request);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_245FF7EC4(0, v26[2] + 1, 1, v26);
    }

    v30 = v26[2];
    v29 = v26[3];
    if (v30 >= v29 >> 1)
    {
      v26 = sub_245FF7EC4((v29 > 1), v30 + 1, 1, v26);
    }

    sub_24603053C(v12, type metadata accessor for PhotogrammetrySession.Request);
    v26[2] = v30 + 1;
    sub_2460304D4(v6, v26 + v42 + v30 * v25, type metadata accessor for PhotogrammetrySession.Request);
    v27 = v43;
LABEL_9:
    v24 += v25;
    v23 = (v23 - 1);
  }

  while (v23);
  if (v26[2])
  {
    v33 = v38;
    swift_beginAccess();

    sub_24602FB94(v34);
    swift_endAccess();
    (*(**(v33 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 648))(v26);

    return;
  }

LABEL_28:
  sub_245FFD204();
  swift_allocError();
  *v35 = 3;
  *(v35 + 8) = 1;
  swift_willThrow();
}

uint64_t sub_24602E20C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245FA31EC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2460918D4();
  v8 = sub_246091FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245F8A000, v7, v8, "Backend Session: cancel all requests.", v9, 2u);
    MEMORY[0x24C1989D0](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 1;
  return (*(**(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 696))(v10);
}

uint64_t sub_24602E3BC()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_245FA31EC();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v10;
    v14 = v1;
    v15 = v5;
    v16 = v13;
    *v13 = 0;
    _os_log_impl(&dword_245F8A000, v11, v12, "Backend Session: close session.", v13, 2u);
    v17 = v16;
    v5 = v15;
    v1 = v14;
    v10 = v25;
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  v18 = *(v3 + 8);
  v19 = v18(v8, v2);
  if (*(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed))
  {
    v10(v5, v9, v2);
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_245F8A000, v20, v21, "Backend Session: session has closed.", v22, 2u);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    return v18(v5, v2);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_hasClosed) = 1;
    return (*(**(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 704))(v19);
  }
}

uint64_t sub_24602E650()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245FA31EC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2460918D4();
  v8 = sub_246091FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245F8A000, v7, v8, "Backend Session: resume request.", v9, 2u);
    MEMORY[0x24C1989D0](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return (*(**(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_pgManager) + 720))(v10);
}

uint64_t sub_24602E8A0()
{
  v1 = OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession____lazy_storage___outputSubject);
  }

  else
  {
    v3 = v0;
    sub_245F8E624(&qword_27EE3A898, &unk_246098FC0);
    swift_allocObject();
    v2 = sub_246091934();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24602E92C()
{
  sub_246091E84();
  v0[2] = sub_246091E74();
  v2 = sub_246091E64();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_24602E9C0, v2, v1);
}

uint64_t sub_24602E9C0()
{
  if (qword_27EE3CD40 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE3CD48;
  v0[5] = qword_27EE3CD48;
  v2 = (*v1 + 160) & 0xFFFFFFFFFFFFLL | 0xC846000000000000;
  v0[6] = *(*v1 + 160);
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_24602EA84, v1, 0);
}

uint64_t sub_24602EA84()
{
  (*(v0 + 48))();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_24602EAF4, v1, v2);
}

uint64_t sub_24602EAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24602EB54(uint64_t a1)
{
  v3 = type metadata accessor for PhotogrammetrySession.Request(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 136);
  v9 = *(v8(v5) + 16);

  for (i = 0; v9 != i; ++i)
  {
    v12 = (v8)(v10);
    if (i >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    v13 = i + 1;
    sub_24603046C(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v7, type metadata accessor for PhotogrammetrySession.Request);

    v14 = _s6CoreOC21PhotogrammetrySessionC7RequestO2eeoiySbAE_AEtFZ_0(a1, v7);
    v10 = sub_24603053C(v7, type metadata accessor for PhotogrammetrySession.Request);
    if (v14)
    {
      swift_beginAccess();
      sub_24602ED24(v13 - 1, v7);
      sub_24603053C(v7, type metadata accessor for PhotogrammetrySession.Request);
      swift_endAccess();
      return;
    }
  }
}

uint64_t sub_24602ED24@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24602FCC0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2460304D4(v11, a2, type metadata accessor for PhotogrammetrySession.Request);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

double sub_24602EE58(uint64_t a1)
{
  v3 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24602E8A0();
  sub_246091924();

  sub_24603046C(a1, v5, type metadata accessor for PhotogrammetrySession.Output);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 8)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2460304D4(v5, v8, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_2460304D4(v5, v8, type metadata accessor for PhotogrammetrySession.Request);
      sub_24603053C(&v5[v10], type metadata accessor for PhotogrammetrySession.Result);
LABEL_10:
      sub_24602EB54(v8);
      v12 = type metadata accessor for PhotogrammetrySession.Request;
      v13 = v8;
      goto LABEL_11;
    }

LABEL_8:
    v12 = type metadata accessor for PhotogrammetrySession.Output;
    v13 = v5;
LABEL_11:
    sub_24603053C(v13, v12);
    return result;
  }

  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload == 10)
    {
      swift_beginAccess();
      *(v1 + 16) = MEMORY[0x277D84F90];

      *(v1 + OBJC_IVAR____TtC6CoreOC21PhotogrammetrySession_isCancelling) = 0;
      return result;
    }

    goto LABEL_8;
  }

  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F90];

  return result;
}

void sub_24602F0C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_245F8E624(&qword_27EE3A558, &unk_2460983D0);
    v1 = sub_246092384();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    sub_245F8E7A4(*(a1 + 56) + 32 * v10, &v22, &qword_27EE3A948, &qword_246099A98);
    sub_245F8E624(&qword_27EE3A948, &qword_246099A98);
    sub_245F8E624(&qword_27EE3A560, &qword_246099A90);
    swift_dynamicCast();
    v12 = sub_2460924F4();
    v13 = -1 << *(v1 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v6 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v6 + 8 * v15);
        if (v19 != -1)
        {
          v8 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v14) & ~*(v6 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    *(*(v1 + 48) + 8 * v8) = v11;
    *(*(v1 + 56) + 16 * v8) = v21;
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

CoreOC::PhotogrammetrySession::Poses __swiftcall PhotogrammetrySession.Poses.init(posesBySample:intrinsicsBySample:lensDistortionDataBySample:)(Swift::OpaquePointer posesBySample, Swift::OpaquePointer intrinsicsBySample, Swift::OpaquePointer lensDistortionDataBySample)
{
  v7 = v3;
  v8 = MEMORY[0x277D84F90];
  sub_245FFC018(MEMORY[0x277D84F90]);
  v9 = sub_24603030C(v8);

  v7[1]._rawValue = intrinsicsBySample._rawValue;
  v7[2]._rawValue = v9;
  v7->_rawValue = posesBySample._rawValue;
  sub_24602F3D4(lensDistortionDataBySample._rawValue);
  v11 = v10;

  v7[2]._rawValue = v11;
  result._lensDistortionDataBySample._rawValue = v14;
  result._intrinsicsBySample._rawValue = v13;
  result.posesBySample._rawValue = v12;
  return result;
}

void sub_24602F3D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_245F8E624(&qword_27EE3A940, &qword_246099A88);
    v2 = sub_246092384();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = *(*(a1 + 48) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    sub_245F8E624(&qword_27EE3A560, &qword_246099A90);
    sub_245F8E624(&qword_27EE3A948, &qword_246099A98);
    swift_dynamicCast();
    *v21 = *&v21[8];
    *&v21[16] = *&v21[24];
    v13 = sub_2460924F4();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v2 + 48) + 8 * v9) = v12;
    v10 = (*(v2 + 56) + 32 * v9);
    *v10 = *v21;
    v10[1] = *&v21[16];
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t LensDistortionData.init(center:radialLookupTable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

BOOL static CameraTrackingState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_24602F710(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_24602F764()
{
  type metadata accessor for MobileAssetsDownloader();
  v2 = type metadata accessor for MobileAssetProviderImpl();
  v3 = &off_2858DFAE8;
  *&v1 = sub_245F9B5FC();
  result = sub_24600D6A8(&v1);
  qword_27EE3F0A0 = result;
  return result;
}

uint64_t sub_24602F7C8()
{
  type metadata accessor for DetachedMobileAssetsDownloader();
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  result = sub_24600E97C(v0);
  qword_27EE3CD48 = result;
  return result;
}

uint64_t static PhotogrammetrySession.areAssetsAvailable.getter()
{
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v0 = sub_24600D790();

  return v0 & 1;
}

uint64_t sub_24602F904()
{
  if (qword_27EE3CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 40) = qword_27EE3F0A0;

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24602F9F4;

  return sub_24600D82C();
}

uint64_t sub_24602F9F4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24602FB30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24602FB30()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24602FB94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_245FF7EC4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for PhotogrammetrySession.Request(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_24602FCD4()
{
  sub_246092534();
  sub_246092534();
  sub_246092534();
  return sub_246092534();
}

uint64_t _s6CoreOC21PhotogrammetrySessionC7RequestO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&unk_27EE3A960, &unk_246099AC8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v15 = &v42 + *(v14 + 56) - v12;
  sub_24603046C(a1, &v42 - v12, type metadata accessor for PhotogrammetrySession.Request);
  sub_24603046C(a2, v15, type metadata accessor for PhotogrammetrySession.Request);
  v16 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(v15, 3, v16) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v17(v15, 3, v16) != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v18)
  {
    if (v17(v15, 3, v16) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v62 = v7;
  v63 = v5;
  v64 = v4;
  sub_24603046C(v13, v10, type metadata accessor for PhotogrammetrySession.Request);
  v19 = *(v16 + 48);
  v61 = v10[v19];
  v20 = *(v16 + 64);
  v21 = *&v10[v20];
  v57 = *&v10[v20 + 16];
  v58 = v21;
  v22 = *&v10[v20 + 32];
  v59 = *&v10[v20 + 48];
  v60 = v22;
  v23 = *&v10[v20 + 64];
  v53 = *&v10[v20 + 80];
  v54 = v23;
  v24 = *&v10[v20 + 96];
  v55 = *&v10[v20 + 112];
  v56 = v24;
  v25 = v10[v20 + 128];
  if (!v17(v15, 3, v16))
  {
    v27 = v61;
    v28 = v15[v19];
    v29 = *&v15[v20 + 16];
    v49 = *&v15[v20];
    v50 = v29;
    v30 = *&v15[v20 + 48];
    v51 = *&v15[v20 + 32];
    v52 = v30;
    v31 = *&v15[v20 + 80];
    v45 = *&v15[v20 + 64];
    v46 = v31;
    v32 = *&v15[v20 + 112];
    v47 = *&v15[v20 + 96];
    v48 = v32;
    v33 = v15[v20 + 128];
    v43 = v25;
    v44 = v33;
    v34 = v62;
    v35 = v63;
    v36 = v64;
    (*(v63 + 32))(v62, v15, v64);
    v37 = sub_2460916C4();
    v38 = *(v35 + 8);
    v38(v10, v36);
    if (v37)
    {
      if (v27 == v28)
      {
        v74[0] = v58;
        v74[1] = v57;
        v74[2] = v60;
        v74[3] = v59;
        v74[4] = v54;
        v74[5] = v53;
        v74[6] = v56;
        v74[7] = v55;
        v75 = v43;
        if (sub_245F97DBC(v74) == 1)
        {
          v38(v34, v64);
          v65 = v49;
          v66 = v50;
          v67 = v51;
          v68 = v52;
          v69 = v45;
          v70 = v46;
          v71 = v47;
          v72 = v48;
          v73 = v44;
          if (sub_245F97DBC(&v65) != 1)
          {
            goto LABEL_24;
          }

LABEL_11:
          sub_24603053C(v13, type metadata accessor for PhotogrammetrySession.Request);
          return 1;
        }

        v65 = v49;
        v66 = v50;
        v67 = v51;
        v68 = v52;
        v69 = v45;
        v70 = v46;
        v71 = v47;
        v72 = v48;
        v73 = v44;
        if (sub_245F97DBC(&v65) != 1 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v57, v50), vceqq_f32(v58, v49)), vandq_s8(vceqq_f32(v60, v51), vceqq_f32(v59, v52)))) & 0x80000000) != 0)
        {
          v41 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v53, v46), vceqq_f32(v54, v45)), vandq_s8(vceqq_f32(v56, v47), vceqq_f32(v55, v48))));
          v38(v34, v64);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_11;
          }

LABEL_24:
          sub_24603053C(v13, type metadata accessor for PhotogrammetrySession.Request);
          return 0;
        }
      }

      v39 = v34;
      v40 = v64;
    }

    else
    {
      v39 = v34;
      v40 = v36;
    }

    v38(v39, v40);
    goto LABEL_24;
  }

  (*(v63 + 8))(v10, v64);
LABEL_12:
  sub_245F8E744(v13, &unk_27EE3A960, &unk_246099AC8);
  return 0;
}

unint64_t sub_24603030C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A940, &qword_246099A88);
    v3 = sub_246092384();
    for (i = a1 + 32; ; i += 40)
    {
      sub_245F8E7A4(i, &v13, &qword_27EE3A958, &unk_246099AB8);
      v5 = v13;
      result = sub_245FFF3EC(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24603046C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2460304D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24603053C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s6CoreOC21PhotogrammetrySessionC13ConfigurationV25CustomDetailSpecificationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (qword_246099AD8[*(a1 + 8)] != qword_246099AD8[*(a2 + 8)] || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 28);
  if (*(a1 + 28))
  {
    return (*(a2 + 28) & 1) != 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    v4 = 1;
  }

  return (v4 & 1) == 0;
}

uint64_t sub_246030634(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s6CoreOC21PhotogrammetrySessionC13ConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_245F8E624(&qword_27EE3A950, &qword_246099AB0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_10;
  }

  if (a1[2] != a2[2])
  {
    goto LABEL_10;
  }

  v15 = v12;
  v16 = a1[16];
  v17 = *(a1 + 3);
  v18 = *(a1 + 8);
  v19 = a1[36];
  v39 = *(a1 + 1);
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v20 = a2[16];
  v21 = *(a2 + 3);
  v22 = *(a2 + 8);
  v23 = a2[36];
  v34 = *(a2 + 1);
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  if (!_s6CoreOC21PhotogrammetrySessionC13ConfigurationV25CustomDetailSpecificationV2eeoiySbAG_AGtFZ_0(&v39, &v34))
  {
    goto LABEL_10;
  }

  v32 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v24 = *(v32 + 32);
  v25 = *(v15 + 48);
  sub_245F8E7A4(&a1[v24], v14, &qword_27EE3A498, &unk_246097EB8);
  v33 = v25;
  sub_245F8E7A4(&a2[v24], &v14[v25], &qword_27EE3A498, &unk_246097EB8);
  v26 = *(v5 + 48);
  if (v26(v14, 1, v4) == 1)
  {
    if (v26(&v14[v33], 1, v4) == 1)
    {
      sub_245F8E744(v14, &qword_27EE3A498, &unk_246097EB8);
LABEL_13:
      v28 = a1[*(v32 + 36)] ^ a2[*(v32 + 36)] ^ 1;
      return v28 & 1;
    }

    goto LABEL_9;
  }

  sub_245F8E7A4(v14, v10, &qword_27EE3A498, &unk_246097EB8);
  v27 = v33;
  if (v26(&v14[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_245F8E744(v14, &qword_27EE3A950, &qword_246099AB0);
    goto LABEL_10;
  }

  (*(v5 + 32))(v7, &v14[v27], v4);
  sub_246030C6C(&qword_27EE3A5E8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v30 = sub_246091BB4();
  v31 = *(v5 + 8);
  v31(v7, v4);
  v31(v10, v4);
  sub_245F8E744(v14, &qword_27EE3A498, &unk_246097EB8);
  if (v30)
  {
    goto LABEL_13;
  }

LABEL_10:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_246030A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_246030AFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_246030B34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2460113E4;

  return sub_24602E92C();
}

uint64_t sub_246030BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24600CD4C;

  return sub_24602E92C();
}

uint64_t sub_246030C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_246030CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2460113E4;

  return sub_24602D690();
}

unint64_t sub_246030D48()
{
  result = qword_27EE3A8B0;
  if (!qword_27EE3A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8B0);
  }

  return result;
}

unint64_t sub_246030DE8()
{
  result = qword_27EE3A8C0;
  if (!qword_27EE3A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8C0);
  }

  return result;
}

unint64_t sub_246030E40()
{
  result = qword_27EE3A8C8;
  if (!qword_27EE3A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8C8);
  }

  return result;
}

unint64_t sub_246030E98()
{
  result = qword_27EE3A8D0;
  if (!qword_27EE3A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8D0);
  }

  return result;
}

unint64_t sub_246030EF0()
{
  result = qword_27EE3A8D8;
  if (!qword_27EE3A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8D8);
  }

  return result;
}

unint64_t sub_246030F48()
{
  result = qword_27EE3A8E0;
  if (!qword_27EE3A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8E0);
  }

  return result;
}

unint64_t sub_246030FA4()
{
  result = qword_27EE3A8E8;
  if (!qword_27EE3A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8E8);
  }

  return result;
}

unint64_t sub_246030FFC()
{
  result = qword_27EE3A8F0;
  if (!qword_27EE3A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8F0);
  }

  return result;
}

unint64_t sub_246031054()
{
  result = qword_27EE3A8F8;
  if (!qword_27EE3A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A8F8);
  }

  return result;
}

uint64_t sub_2460310B0(uint64_t a1)
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(319);
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

uint64_t initializeBufferWithCopyOfBuffer for PhotogrammetrySession.Error(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Error(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Error(uint64_t result, int a2, int a3)
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

uint64_t sub_2460313AC(uint64_t a1)
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

uint64_t sub_2460313C8(uint64_t result, int a2)
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

uint64_t sub_24603140C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246031498(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_246031528(uint64_t a1)
{
  sub_246031580(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_246031580(uint64_t a1)
{
  if (!qword_27EE3A900)
  {
    sub_246091704();
    sub_245F9135C(&qword_27EE3A908, &qword_246099768);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EE3A900);
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Request.Detail(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Request.Detail(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_246031778(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageScaler.Config(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageScaler.Config(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_2460317E8(uint64_t *a1, int a2)
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

uint64_t sub_246031830(uint64_t result, int a2, int a3)
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

void sub_246031880(uint64_t a1)
{
  sub_246091704();
  if (v1 <= 0x3F)
  {
    type metadata accessor for simd_float4x4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_246031970(uint64_t a1)
{
  sub_246031A64(319);
  if (v1 <= 0x3F)
  {
    sub_246031ACC(319);
    if (v2 <= 0x3F)
    {
      sub_246031B3C(319, &qword_27EE3A920, MEMORY[0x277D839F8], " fractionComplete ");
      if (v3 <= 0x3F)
      {
        sub_246031B3C(319, &qword_27EE3A928, &type metadata for PhotogrammetrySession.Output.ProgressInfo, " progress ");
        if (v4 <= 0x3F)
        {
          sub_246031BA8();
          if (v5 <= 0x3F)
          {
            sub_246031C0C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_246031A64(uint64_t a1)
{
  if (!qword_27EE3A910)
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE3A910);
    }
  }
}

void sub_246031ACC(uint64_t a1)
{
  if (!qword_27EE3A918)
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    type metadata accessor for PhotogrammetrySession.Result(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE3A918);
    }
  }
}

void sub_246031B3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_246031BA8()
{
  if (!qword_27EE3A930)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE3A930);
    }
  }
}

uint64_t sub_246031C0C()
{
  result = qword_27EE3A938;
  if (!qword_27EE3A938)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27EE3A938);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PhotogrammetrySession.Output.ProgressInfo(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 10))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 9);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_246031D0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 32)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_246031DDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_246031E88(uint64_t a1)
{
  sub_246031F20(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_246031F20(uint64_t a1)
{
  if (!qword_27EE3A4C8)
  {
    sub_246091704();
    v1 = sub_2460920F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE3A4C8);
    }
  }
}

__n128 sub_246031FA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_246031FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 29))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246031FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs(uint64_t result, int a2, int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureFormat(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_24603211C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246032138(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraTrackingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraTrackingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2460322E0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2460322F4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_246032324()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24603235C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24600CD4C;

  return sub_2460106D8(a1, v4);
}

unint64_t sub_2460324A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = sub_24603282C();
  v12 = sub_245FA3174();
  v13 = *(v5 + 16);
  if ((v11 & 0x100000000) != 0)
  {
    v13(v7, v12, v4);

    v14 = sub_2460918D4();
    v15 = sub_246091FC4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_245F8D3C0(a1, a2, v29);
      _os_log_impl(&dword_245F8A000, v14, v15, "MemoryLogger: %{public}s", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13(v10, v12, v4);

    v18 = sub_2460918D4();
    v19 = sub_246091FC4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29[0] = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_245F8D3C0(a1, a2, v29);
      *(v20 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D83A90];
      *(v22 + 16) = xmmword_246096460;
      v24 = MEMORY[0x277D83B08];
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v11;
      v25 = sub_246091C24();
      v27 = sub_245F8D3C0(v25, v26, v29);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_245F8A000, v18, v19, "MemoryLogger: %{public}s, memory footprint = %{public}s MB", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v21, -1, -1);
      MEMORY[0x24C1989D0](v20, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  return v11 | ((HIDWORD(v11) & 1) << 32);
}

unint64_t sub_24603282C()
{
  v29 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *task_info_out = 0u;
  v6 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    v0 = 0;
  }

  else
  {
    v0 = task_info_outCnt >= 0x26;
  }

  v1 = !v0;
  v2 = COERCE_UNSIGNED_INT(vcvts_n_f32_u64(v14, 0x14uLL));
  if (v1)
  {
    v2 = 0;
  }

  return v2 | (v1 << 32);
}

uint64_t sub_246032A80(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_246032ABC(char a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ((*(*v1 + 96))(v5))
  {
    v8 = v1[2];
    result = [v8 isSmoothAutoFocusSupported];
    if (!result)
    {
      return result;
    }

    v23[0] = 0;
    if ([v8 lockForConfiguration_])
    {
      v10 = v23[0];
      [v8 setSmoothAutoFocusEnabled_];
      [v8 unlockForConfiguration];
      return 1;
    }

    v11 = v23[0];
    v12 = sub_2460915D4();

    swift_willThrow();
    v13 = sub_245FA3174();
    (*(v4 + 16))(v7, v13, v3);
    v14 = v12;
    v15 = sub_2460918D4();
    v16 = sub_246091FB4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136446210;
      swift_getErrorValue();
      v19 = sub_246092484();
      v21 = sub_245F8D3C0(v19, v20, v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_245F8A000, v15, v16, "Camera Control: Camera failed to lock with error = %{public}s", v17, 0xCu);
      sub_245F8E6F4(v18);
      MEMORY[0x24C1989D0](v18, -1, -1);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

uint64_t sub_246032D9C()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v0 + 96))(v3) & 1) == 0)
  {
    return 0;
  }

  v6 = v0[2];
  if (![v6 isAutoFocusRangeRestrictionSupported])
  {
    return 0;
  }

  v22[0] = 0;
  if (![v6 lockForConfiguration_])
  {
    v9 = v22[0];
    v10 = sub_2460915D4();

    swift_willThrow();
    v11 = sub_245FA3174();
    (*(v2 + 16))(v5, v11, v1);
    v12 = v10;
    v13 = sub_2460918D4();
    v14 = sub_246091FB4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_246092484();
      v19 = sub_245F8D3C0(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_245F8A000, v13, v14, "Camera Control: Camera failed to lock with error = %{public}s", v15, 0xCu);
      sub_245F8E6F4(v16);
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v7 = v22[0];
  v8 = 1;
  [v6 setAutoFocusRangeRestriction_];
  [v6 unlockForConfiguration];
  return v8;
}

uint64_t sub_24603307C()
{

  return sub_246033F04(&selRef_isFocusModeSupported_, 0, &selRef_setFocusMode_);
}

uint64_t sub_2460330E8(double a1, double a2)
{

  return sub_2460331A0(1, a1, a2);
}

uint64_t sub_246033144(double a1, double a2)
{

  return sub_2460331A0(2, a1, a2);
}

uint64_t sub_2460331A0(uint64_t a1, double a2, double a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v3 + 96))(v9) & 1) == 0)
  {
    return 0;
  }

  v12 = v3[2];
  v27[0] = 0;
  if (![v12 lockForConfiguration_])
  {
    v15 = v27[0];
    v16 = sub_2460915D4();

    swift_willThrow();
    v17 = sub_245FA3174();
    (*(v8 + 16))(v11, v17, v7);
    v18 = v16;
    v19 = sub_2460918D4();
    v20 = sub_246091FB4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136446210;
      swift_getErrorValue();
      v23 = sub_246092484();
      v25 = sub_245F8D3C0(v23, v24, v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_245F8A000, v19, v20, "Camera Control: Camera failed to lock with error = %{public}s", v21, 0xCu);
      sub_245F8E6F4(v22);
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v13 = v27[0];
  if ([v12 isFocusPointOfInterestSupported])
  {
    [v12 setFocusPointOfInterest_];
  }

  if ([v12 isFocusModeSupported_])
  {
    [v12 setFocusMode_];
  }

  [v12 unlockForConfiguration];
  return 1;
}

uint64_t sub_2460334C0()
{

  return sub_246033F04(&selRef_isExposureModeSupported_, 0, &selRef_setExposureMode_);
}

uint64_t sub_24603352C(double a1, double a2)
{

  return sub_246033588(1, a1, a2);
}

uint64_t sub_246033588(uint64_t a1, double a2, double a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v3 + 96))(v9) & 1) == 0)
  {
    return 0;
  }

  v12 = v3[2];
  v27[0] = 0;
  if (![v12 lockForConfiguration_])
  {
    v15 = v27[0];
    v16 = sub_2460915D4();

    swift_willThrow();
    v17 = sub_245FA3174();
    (*(v8 + 16))(v11, v17, v7);
    v18 = v16;
    v19 = sub_2460918D4();
    v20 = sub_246091FB4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136446210;
      swift_getErrorValue();
      v23 = sub_246092484();
      v25 = sub_245F8D3C0(v23, v24, v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_245F8A000, v19, v20, "Camera Control: Camera failed to lock with error = %{public}s", v21, 0xCu);
      sub_245F8E6F4(v22);
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v13 = v27[0];
  if ([v12 isExposurePointOfInterestSupported])
  {
    [v12 setExposurePointOfInterest_];
  }

  if ([v12 isExposureModeSupported_])
  {
    [v12 setExposureMode_];
  }

  [v12 unlockForConfiguration];
  return 1;
}

uint64_t sub_2460338A8(double a1, double a2)
{

  return sub_246033588(2, a1, a2);
}

uint64_t sub_246033904(double a1)
{
  v2 = v1;
  v49[3] = *MEMORY[0x277D85DE8];
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v46 - v9;
  v11 = v2[2];
  v12 = [v11 activeFormat];
  [v12 minExposureDuration];

  sub_2460920D4();
  v14 = v13;
  v15 = [v11 activeFormat];
  [v15 maxExposureDuration];

  sub_2460920D4();
  v17 = v16;
  v18 = sub_245FA3174();
  v19 = *(v5 + 16);
  v47 = v18;
  v20 = v4;
  v21 = v19;
  (v19)(v10);
  v22 = sub_2460918D4();
  v23 = sub_246091FC4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349312;
    *(v24 + 4) = v14;
    *(v24 + 12) = 2050;
    *(v24 + 14) = v17;
    _os_log_impl(&dword_245F8A000, v22, v23, "Camera Control: Camera min exposure duration = %{public}f, max exposure duration = %{public}f", v24, 0x16u);
    MEMORY[0x24C1989D0](v24, -1, -1);
  }

  v25 = *(v5 + 8);
  v26 = v25(v10, v20);
  v27 = (*(*v2 + 96))(v26);
  result = 0;
  if ((v27 & 1) != 0 && v14 <= a1 && v17 >= a1)
  {
    v29 = sub_2460920C4();
    v31 = v30;
    v33 = v32;
    if (sub_2460920B4())
    {
      v49[0] = 0;
      if ([v11 lockForConfiguration_])
      {
        v34 = v49[0];
        v49[0] = v29;
        v49[1] = v31;
        v49[2] = v33;
        [v11 setActiveMaxExposureDuration_];
        [v11 unlockForConfiguration];
        return 1;
      }

      v46 = v5 + 8;
      v35 = v49[0];
      v36 = sub_2460915D4();

      swift_willThrow();
      v37 = v48;
      v21(v48, v47, v20);
      v38 = v36;
      v39 = sub_2460918D4();
      v40 = sub_246091FB4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v49[0] = v42;
        *v41 = 136446210;
        swift_getErrorValue();
        v43 = sub_246092484();
        v45 = sub_245F8D3C0(v43, v44, v49);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_245F8A000, v39, v40, "Camera Control: Camera failed to lock with error = %{public}s", v41, 0xCu);
        sub_245F8E6F4(v42);
        MEMORY[0x24C1989D0](v42, -1, -1);
        MEMORY[0x24C1989D0](v41, -1, -1);
      }

      else
      {
      }

      v25(v37, v20);
    }

    return 0;
  }

  return result;
}

uint64_t sub_246033DC0()
{

  return sub_246033F04(&selRef_isWhiteBalanceModeSupported_, 0, &selRef_setWhiteBalanceMode_);
}

uint64_t sub_246033E2C()
{

  return sub_246033F04(&selRef_isWhiteBalanceModeSupported_, 1, &selRef_setWhiteBalanceMode_);
}

uint64_t sub_246033E98()
{

  return sub_246033F04(&selRef_isWhiteBalanceModeSupported_, 2, &selRef_setWhiteBalanceMode_);
}

uint64_t sub_246033F04(SEL *a1, uint64_t a2, SEL *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v3 + 96))(v9) & 1) == 0)
  {
    return 0;
  }

  v12 = v3[2];
  v27[0] = 0;
  if (![v12 lockForConfiguration_])
  {
    v15 = v27[0];
    v16 = sub_2460915D4();

    swift_willThrow();
    v17 = sub_245FA3174();
    (*(v8 + 16))(v11, v17, v7);
    v18 = v16;
    v19 = sub_2460918D4();
    v20 = sub_246091FB4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136446210;
      swift_getErrorValue();
      v23 = sub_246092484();
      v25 = sub_245F8D3C0(v23, v24, v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_245F8A000, v19, v20, "Camera Control: Camera failed to lock with error = %{public}s", v21, 0xCu);
      sub_245F8E6F4(v22);
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v13 = v27[0];
  if ([v12 *a1])
  {
    [v12 *a3];
  }

  [v12 unlockForConfiguration];
  return 1;
}

uint64_t sub_2460341E8()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v0 + 96))(v3) & 1) == 0)
  {
    return 0;
  }

  v6 = v0[2];
  v21[0] = 0;
  if (![v6 lockForConfiguration_])
  {
    v9 = v21[0];
    v10 = sub_2460915D4();

    swift_willThrow();
    v11 = sub_245FA3174();
    (*(v2 + 16))(v5, v11, v1);
    v12 = v10;
    v13 = sub_2460918D4();
    v14 = sub_246091FB4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_246092484();
      v19 = sub_245F8D3C0(v17, v18, v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_245F8A000, v13, v14, "Camera Control: Camera failed to lock with error = %{public}s", v15, 0xCu);
      sub_245F8E6F4(v16);
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v7 = v21[0];
  if ([v6 isFocusModeSupported_])
  {
    [v6 setFocusMode_];
  }

  if ([v6 isExposureModeSupported_])
  {
    [v6 setExposureMode_];
  }

  [v6 unlockForConfiguration];
  return 1;
}

uint64_t sub_2460344F4()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ((*(*v0 + 96))(v3))
  {
    v6 = v0[2];
    v21[0] = 0;
    if ([v6 lockForConfiguration_])
    {
      v7 = v21[0];
      [v6 setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled_];
      [v6 setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled_];
      [v6 setFaceDrivenAutoFocusEnabled_];
      [v6 setFaceDrivenAutoExposureEnabled_];
      [v6 unlockForConfiguration];
      return 1;
    }

    v9 = v21[0];
    v10 = sub_2460915D4();

    swift_willThrow();
    v11 = sub_245FA3174();
    (*(v2 + 16))(v5, v11, v1);
    v12 = v10;
    v13 = sub_2460918D4();
    v14 = sub_246091FB4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_246092484();
      v19 = sub_245F8D3C0(v17, v18, v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_245F8A000, v13, v14, "Camera Control: Camera failed to lock with error = %{public}s", v15, 0xCu);
      sub_245F8E6F4(v16);
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }

  return 0;
}

uint64_t sub_2460347F8()
{
  sub_246092284();
  MEMORY[0x24C196640](0xD000000000000055, 0x80000002460A1FB0);
  v1 = *(v0 + 16);
  [v1 minimumFocusDistance];
  v2 = sub_2460923D4();
  MEMORY[0x24C196640](v2);

  MEMORY[0x24C196640](0x6F4D7375636F660ALL, 0xEC000000203A6564);
  [v1 focusMode];
  v3 = sub_2460923D4();
  MEMORY[0x24C196640](v3);

  MEMORY[0x24C196640](0xD000000000000020, 0x80000002460A2010);
  v4 = [v1 isFocusModeSupported_];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v6, v7);

  MEMORY[0x24C196640](0xD000000000000023, 0x80000002460A2040);
  v8 = [v1 isFocusModeSupported_];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v10, v11);

  MEMORY[0x24C196640](0xD00000000000002DLL, 0x80000002460A2070);
  v12 = [v1 isFocusModeSupported_];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v14, v15);

  MEMORY[0x24C196640](0xD000000000000017, 0x80000002460A20A0);
  [v1 focusPointOfInterest];
  type metadata accessor for CGPoint();
  sub_246092334();
  MEMORY[0x24C196640](0xD000000000000022, 0x80000002460A20C0);
  v16 = [v1 isFocusPointOfInterestSupported];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v18, v19);

  MEMORY[0x24C196640](0xD000000000000013, 0x80000002460A20F0);
  v20 = [v1 isAdjustingFocus];
  v21 = v20 == 0;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v22, v23);

  MEMORY[0x24C196640](0xD00000000000001BLL, 0x80000002460A2110);
  v24 = [v1 isSmoothAutoFocusEnabled];
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v26, v27);

  MEMORY[0x24C196640](0xD00000000000001DLL, 0x80000002460A2130);
  v28 = [v1 isSmoothAutoFocusSupported];
  v29 = v28 == 0;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v30, v31);

  MEMORY[0x24C196640](0xD00000000000001CLL, 0x80000002460A2150);
  [v1 autoFocusRangeRestriction];
  v32 = sub_2460923D4();
  MEMORY[0x24C196640](v32);

  MEMORY[0x24C196640](0xD000000000000027, 0x80000002460A2170);
  v33 = [v1 isAutoFocusRangeRestrictionSupported];
  v34 = v33 == 0;
  if (v33)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34)
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v35, v36);

  MEMORY[0x24C196640](0x7275736F7078650ALL, 0xEF203A65646F4D65);
  [v1 exposureMode];
  v37 = sub_2460923D4();
  MEMORY[0x24C196640](v37);

  MEMORY[0x24C196640](0xD000000000000023, 0x80000002460A21A0);
  v38 = [v1 isExposureModeSupported_];
  v39 = v38 == 0;
  if (v38)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v39)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v40, v41);

  MEMORY[0x24C196640](0xD000000000000026, 0x80000002460A21D0);
  v42 = [v1 isExposureModeSupported_];
  v43 = v42 == 0;
  if (v42)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v44, v45);

  MEMORY[0x24C196640](0xD000000000000030, 0x80000002460A2200);
  v46 = [v1 isExposureModeSupported_];
  v47 = v46 == 0;
  if (v46)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v48, v49);

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A2240);
  [v1 exposurePointOfInterest];
  sub_246092334();
  MEMORY[0x24C196640](0xD000000000000025, 0x80000002460A2260);
  v50 = [v1 isExposurePointOfInterestSupported];
  v51 = v50 == 0;
  if (v50)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (v51)
  {
    v53 = 0xE500000000000000;
  }

  else
  {
    v53 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v52, v53);

  MEMORY[0x24C196640](0xD000000000000016, 0x80000002460A2290);
  v54 = [v1 isAdjustingExposure];
  v55 = v54 == 0;
  if (v54)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v55)
  {
    v57 = 0xE500000000000000;
  }

  else
  {
    v57 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v56, v57);

  MEMORY[0x24C196640](0xD000000000000013, 0x80000002460A22B0);
  [v1 whiteBalanceMode];
  v58 = sub_2460923D4();
  MEMORY[0x24C196640](v58);

  MEMORY[0x24C196640](0xD000000000000027, 0x80000002460A22D0);
  v59 = [v1 isWhiteBalanceModeSupported_];
  v60 = v59 == 0;
  if (v59)
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v60)
  {
    v62 = 0xE500000000000000;
  }

  else
  {
    v62 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v61, v62);

  MEMORY[0x24C196640](0xD000000000000031, 0x80000002460A2300);
  v63 = [v1 isWhiteBalanceModeSupported_];
  v64 = v63 == 0;
  if (v63)
  {
    v65 = 1702195828;
  }

  else
  {
    v65 = 0x65736C6166;
  }

  if (v64)
  {
    v66 = 0xE500000000000000;
  }

  else
  {
    v66 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v65, v66);

  MEMORY[0x24C196640](0xD00000000000003BLL, 0x80000002460A2340);
  v67 = [v1 isWhiteBalanceModeSupported_];
  v68 = v67 == 0;
  if (v67)
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  if (v68)
  {
    v70 = 0xE500000000000000;
  }

  else
  {
    v70 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v69, v70);

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A2380);
  v71 = [v1 isAdjustingWhiteBalance];
  v72 = v71 == 0;
  if (v71)
  {
    v73 = 1702195828;
  }

  else
  {
    v73 = 0x65736C6166;
  }

  if (v72)
  {
    v74 = 0xE500000000000000;
  }

  else
  {
    v74 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v73, v74);

  MEMORY[0x24C196640](0xD00000000000001DLL, 0x80000002460A23A0);
  v75 = [v1 isGlobalToneMappingEnabled];
  v76 = v75 == 0;
  if (v75)
  {
    v77 = 1702195828;
  }

  else
  {
    v77 = 0x65736C6166;
  }

  if (v76)
  {
    v78 = 0xE500000000000000;
  }

  else
  {
    v78 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v77, v78);

  MEMORY[0x24C196640](0xD00000000000001BLL, 0x80000002460A23C0);
  v79 = [v1 isLowLightBoostSupported];
  v80 = v79 == 0;
  if (v79)
  {
    v81 = 1702195828;
  }

  else
  {
    v81 = 0x65736C6166;
  }

  if (v80)
  {
    v82 = 0xE500000000000000;
  }

  else
  {
    v82 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v81, v82);

  MEMORY[0x24C196640](0xD000000000000019, 0x80000002460A23E0);
  v83 = [v1 isLowLightBoostEnabled];
  v84 = v83 == 0;
  if (v83)
  {
    v85 = 1702195828;
  }

  else
  {
    v85 = 0x65736C6166;
  }

  if (v84)
  {
    v86 = 0xE500000000000000;
  }

  else
  {
    v86 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v85, v86);

  MEMORY[0x24C196640](0xD000000000000031, 0x80000002460A2400);
  v87 = [v1 automaticallyEnablesLowLightBoostWhenAvailable];
  v88 = v87 == 0;
  if (v87)
  {
    v89 = 1702195828;
  }

  else
  {
    v89 = 0x65736C6166;
  }

  if (v88)
  {
    v90 = 0xE500000000000000;
  }

  else
  {
    v90 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v89, v90);

  MEMORY[0x24C196640](0x736F50736E656C0ALL, 0xEF203A6E6F697469);
  [v1 lensPosition];
  sub_246091F14();
  MEMORY[0x24C196640](0x203A6F73690ALL, 0xE600000000000000);
  [v1 ISO];
  sub_246091F14();
  MEMORY[0x24C196640](0xD000000000000026, 0x80000002460A2440);
  v91 = [v1 automaticallyAdjustsVideoHDREnabled];
  v92 = v91 == 0;
  if (v91)
  {
    v93 = 1702195828;
  }

  else
  {
    v93 = 0x65736C6166;
  }

  if (v92)
  {
    v94 = 0xE500000000000000;
  }

  else
  {
    v94 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v93, v94);

  MEMORY[0x24C196640](0xD000000000000014, 0x80000002460A2470);
  v95 = [v1 isVideoHDREnabled];
  v96 = v95 == 0;
  if (v95)
  {
    v97 = 1702195828;
  }

  else
  {
    v97 = 0x65736C6166;
  }

  if (v96)
  {
    v98 = 0xE500000000000000;
  }

  else
  {
    v98 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v97, v98);

  return 0;
}

uint64_t sub_2460352A8()
{

  return swift_deallocClassInstance();
}

double sub_246035304()
{
  result = 0.0;
  xmmword_27EE3DBD0 = xmmword_246099B50;
  return result;
}

double sub_246035318()
{
  result = 32768.0079;
  xmmword_27EE3DBF0 = xmmword_246099B60;
  return result;
}

double sub_24603532C@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, float a3@<S1>, float a4@<S2>)
{
  v37 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  *&v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_245FA3280();
  v34 = *(v8 + 16);
  v35 = v13;
  v34(v12);
  v14 = sub_2460918D4();
  v15 = sub_246091FC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v8;
    v18 = v17;
    v38 = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_245F8D3C0(0xD000000000000053, 0x80000002460A40B0, &v38);
    *(v16 + 12) = 2050;
    *(v16 + 14) = a3;
    _os_log_impl(&dword_245F8A000, v14, v15, "ObjectCaptureSession.%{private}s: Voxel dimension scene mode = %{public}fm", v16, 0x16u);
    sub_245F8E6F4(v18);
    v19 = v18;
    v8 = v33;
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  v20 = *(v8 + 8);
  v20(v12, v7);
  v21 = v36;
  (v34)(v36, v35, v7);
  v22 = v21;
  v23 = sub_2460918D4();
  v24 = sub_246091FC4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136380931;
    *(v25 + 4) = sub_245F8D3C0(0xD000000000000053, 0x80000002460A40B0, &v38);
    *(v25 + 12) = 2050;
    *(v25 + 14) = a4;
    _os_log_impl(&dword_245F8A000, v23, v24, "ObjectCaptureSession.%{private}s: Depth confidence threshold scene mode = %{public}f", v25, 0x16u);
    sub_245F8E6F4(v26);
    MEMORY[0x24C1989D0](v26, -1, -1);
    MEMORY[0x24C1989D0](v25, -1, -1);
  }

  v20(v22, v7);
  if (qword_27EE3DBE0 != -1)
  {
    swift_once();
  }

  v36 = xmmword_27EE3DBF0;
  v27 = *sub_245F92808();
  v28 = *sub_24601EF58();
  v29 = *sub_24601EF64();
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 16) = 4;
  *(a1 + 24) = a4;
  *(a1 + 28) = 30000;
  *(a1 + 32) = 0;
  *(a1 + 36) = a3;
  *(a1 + 40) = 33;
  *(a1 + 44) = 0x3D4CCCCD3F83D70ALL;
  *(a1 + 52) = 1084227584;
  v30 = v37;
  *(a1 + 64) = v36;
  *(a1 + 80) = v30;
  *&result = 644245094900000;
  *(a1 + 96) = 644245094900000;
  *(a1 + 104) = v27;
  *(a1 + 108) = 0;
  *(a1 + 112) = 1;
  *(a1 + 116) = v28;
  *(a1 + 120) = v29;
  *(a1 + 124) = 0;
  *(a1 + 128) = 1048576000;
  return result;
}

void sub_246035724(__CVBuffer *a1, uint64_t a2)
{
  v4 = sub_246091BD4();
  v5 = CVBufferCopyAttachment(a1, v4, 0);

  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v33 = *(a2 + 32);
    v6 = *(a2 + 20);
    v7 = *a2 / v6;
    sub_245F8E624(&qword_27EE3ADC0, &qword_24609AD58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_246096460;
    *(inited + 32) = 0x73726F736E6553;
    *(inited + 40) = 0xE700000000000000;
    sub_245F8E624(&qword_27EE3ADC8, &qword_24609AD60);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_246096460;
    *(v8 + 32) = 0x69736E6972746E49;
    v35 = v8;
    v36 = v8 + 32;
    *(v8 + 40) = 0xEA00000000007363;
    sub_245F8E624(&unk_27EE3ADD0, &unk_24609AD68);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_246096460;
    *(v32 + 32) = 4343634;
    *(v32 + 40) = 0xE300000000000000;
    sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_246096EF0;
    *(v9 + 32) = 0x656C6F686E6950;
    *(v9 + 40) = 0xE700000000000000;
    sub_245F8E624(&qword_27EE3ADE0, &qword_24609AD78);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_246098BF0;
    strcpy((v10 + 32), "Aspect Ratio");
    *(v10 + 45) = 0;
    *(v10 + 46) = -5120;
    sub_245F8E624(&qword_27EE3ADE8, &qword_24609AD80);
    pixelBuffer = a1;
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_246096460;
    *(v11 + 32) = 1635017028;
    *(v11 + 40) = 0xE400000000000000;
    sub_245F8E624(&qword_27EE3AD20, &qword_24609ACE0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_246096460;
    *(v12 + 56) = MEMORY[0x277D83A90];
    *(v12 + 32) = v7;
    *(v11 + 48) = v12;
    v13 = sub_246076F68(v11, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v11 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 48) = v13;
    strcpy((v10 + 56), "Focal Length");
    *(v10 + 69) = 0;
    *(v10 + 70) = -5120;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_246096460;
    *(v14 + 32) = 1635017028;
    *(v14 + 40) = 0xE400000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_246096460;
    *(v15 + 56) = MEMORY[0x277D83A90];
    *(v15 + 32) = v6;
    *(v14 + 48) = v15;
    v16 = sub_246076F68(v14, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v14 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 72) = v16;
    *(v10 + 80) = 0x617069636E697250;
    *(v10 + 88) = 0xEF746E696F50206CLL;
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_246096460;
    *(v17 + 32) = 1635017028;
    *(v17 + 40) = 0xE400000000000000;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_246096EF0;
    v19 = MEMORY[0x277D83A90];
    *(v18 + 56) = MEMORY[0x277D83A90];
    *(v18 + 32) = v33;
    *(v18 + 88) = v19;
    *(v18 + 64) = DWORD1(v33);
    *(v17 + 48) = v18;
    v20 = sub_246076F68(v17, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v17 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 96) = v20;
    *(v10 + 104) = 2003135315;
    *(v10 + 112) = 0xE400000000000000;
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_246096460;
    *(v21 + 32) = 1635017028;
    *(v21 + 40) = 0xE400000000000000;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_246096460;
    *(v22 + 56) = MEMORY[0x277D83B88];
    *(v22 + 32) = 0;
    *(v21 + 48) = v22;
    v23 = sub_246076F68(v21, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v21 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 120) = v23;
    v24 = sub_246076F68(v10, &qword_27EE3AE60, &qword_24609ADF8);
    swift_setDeallocating();
    sub_245F8E624(&qword_27EE3ADF8, &qword_24609AD90);
    swift_arrayDestroy();
    v25 = sub_245F8E624(&unk_27EE3AE00, &qword_24609AD98);
    *(v9 + 48) = v24;
    *(v9 + 72) = v25;
    *(v9 + 80) = 0x6974756C6F736552;
    *(v9 + 88) = 0xEA00000000006E6FLL;
    sub_245F8E624(&qword_27EE3A0E8, &qword_24609ADA0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_246096EF0;
    *(v26 + 32) = CVPixelBufferGetWidth(pixelBuffer);
    *(v26 + 40) = CVPixelBufferGetHeight(pixelBuffer);
    *(v9 + 120) = sub_245F8E624(&unk_27EE3AE10, &unk_24609ADA8);
    *(v9 + 96) = v26;
    v27 = sub_245F8E498(v9);
    swift_setDeallocating();
    sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
    swift_arrayDestroy();
    *(v32 + 48) = v27;
    v28 = sub_246076F68(v32, &unk_27EE3AE50, &unk_24609ADE8);
    swift_setDeallocating();
    sub_245F8E744(v32 + 32, &qword_27EE3AE20, &qword_24609ADB8);
    *(v35 + 48) = v28;
    v29 = sub_246076F68(v35, &qword_27EE3AE48, &qword_24609ADE0);
    swift_setDeallocating();
    sub_245F8E744(v36, &qword_27EE3AE28, &qword_24609ADC0);
    *(inited + 48) = v29;
    sub_246076F68(inited, &qword_27EE3AE40, &qword_24609ADD8);
    swift_setDeallocating();
    sub_245F8E744(inited + 32, &qword_27EE3AE30, &qword_24609ADC8);
    v30 = sub_246091BD4();
    sub_245F8E624(&qword_27EE3AE38, &qword_24609ADD0);
    v31 = sub_246091B34();

    CVBufferSetAttachment(pixelBuffer, v30, v31, kCVAttachmentMode_ShouldPropagate);
  }
}

uint64_t static ObjectCaptureSession.hardwareSpecs.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EE3DC00 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27EE3DC08;
  return result;
}

__n128 ObjectCaptureSession.Frame.Camera.intrinsics.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double ObjectCaptureSession.Frame.Object.objectContour.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 136);

  return result;
}

void *ObjectCaptureSession.Frame.depthData.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ObjectCaptureSession.Frame.confidenceData.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSession.Frame.camera.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x118uLL);
  memcpy(a1, (v1 + 32), 0x118uLL);
  return sub_24601E8F4(__dst, &v4);
}

uint64_t ObjectCaptureSession.Frame.object.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[27];
  v20 = v1[26];
  v21 = v3;
  v4 = v1[27];
  v22 = v1[28];
  v5 = v1[21];
  v6 = v1[23];
  v16 = v1[22];
  v7 = v16;
  v17 = v6;
  v8 = v1[23];
  v9 = v1[25];
  v18 = v1[24];
  v10 = v18;
  v19 = v9;
  v11 = v1[21];
  v15[0] = v1[20];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[28];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_245F8E7A4(v15, &v14, &qword_27EE3A970, &qword_246099C00);
}

uint64_t ObjectCaptureSession.Frame.pointCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[33];
  v10 = v1[32];
  v11 = v2;
  v4 = v1[35];
  v12 = v1[34];
  v3 = v12;
  v13 = v4;
  v6 = v1[31];
  v9[0] = v1[30];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_245F8E7A4(v9, &v8, &qword_27EE3A978, &qword_246099C08);
}

uint64_t ObjectCaptureSession.Frame.spi.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 576), 0x2B0uLL);
  memcpy(a1, (v1 + 576), 0x2B0uLL);
  return sub_245F8E7A4(__dst, &v4, &unk_27EE3A980, &unk_246099C10);
}

uint64_t ObjectCaptureSession.Mesh.Anchor.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_246091834();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ObjectCaptureSession.Mesh.Anchor.vertices.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 20));

  return v1;
}

id ObjectCaptureSession.Mesh.Anchor.colors.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 24));

  return v1;
}

id ObjectCaptureSession.Mesh.Anchor.normals.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 28));

  return v1;
}

void *ObjectCaptureSession.Mesh.Anchor.faces.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 32));
  v2 = v1;
  return v1;
}

__n128 sub_2460364E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, __n128 a8@<Q0>, __n128 a9@<Q1>, __n128 a10@<Q2>, __n128 a11@<Q3>, double a12@<D4>, __n128 a13@<Q5>, __n128 a14@<Q6>)
{
  v22 = sub_246091834();
  (*(*(v22 - 8) + 32))(a7, a1, v22);
  v23 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  *(a7 + v23[5]) = a2;
  *(a7 + v23[6]) = a3;
  *(a7 + v23[7]) = a4;
  *(a7 + v23[8]) = a5;
  v24 = (a7 + v23[9]);
  *v24 = a8;
  v24[1] = a9;
  v24[2] = a10;
  v24[3] = a11;
  *(a7 + v23[10]) = a12;
  result = a14;
  *(a7 + v23[11]) = a13;
  *(a7 + v23[12]) = a14;
  *(a7 + v23[13]) = a6;
  return result;
}

void *ObjectCaptureSession.Shot.depthData.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ObjectCaptureSession.Shot.confidenceData.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ObjectCaptureSession.Shot.pointCloudData.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_246036680@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Session.Provenance.version.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ObjectCaptureSession.Metadata.Session.Provenance.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double ObjectCaptureSession.Metadata.Session.provenance.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 ObjectCaptureSession.Metadata.Shot.Camera.intrinsics.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void *ObjectCaptureSession.Metadata.Shot.Camera.calibrationData.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

__n128 sub_24603679C@<Q0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, uint64_t a14)
{
  v14 = *a2;
  v15 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v15;
  *(a9 + 32) = a1[2];
  *(a9 + 48) = a10;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  *(a9 + 112) = v14;
  *(a9 + 120) = a3;
  *(a9 + 128) = a4;
  v16 = *a5;
  v17 = a5[1];
  v18 = a5[2];
  v19 = a5[3];
  *(a9 + 208) = *(a5 + 64);
  *(a9 + 176) = v18;
  *(a9 + 192) = v19;
  *(a9 + 144) = v16;
  *(a9 + 160) = v17;
  v20 = *(a6 + 48);
  *(a9 + 256) = *(a6 + 32);
  *(a9 + 272) = v20;
  *(a9 + 288) = *(a6 + 64);
  v21 = *(a6 + 16);
  *(a9 + 224) = *a6;
  *(a9 + 240) = v21;
  result = *a7;
  v23 = *(a7 + 16);
  v24 = *(a7 + 32);
  v25 = *(a7 + 48);
  *(a9 + 368) = *(a7 + 64);
  *(a9 + 336) = v24;
  *(a9 + 352) = v25;
  *(a9 + 304) = result;
  *(a9 + 320) = v23;
  *(a9 + 376) = a8;
  *(a9 + 384) = a14;
  return result;
}

CoreOC::ObjectCaptureSession::Metadata::Shot::CaptureMode_optional __swiftcall ObjectCaptureSession.Metadata.Shot.CaptureMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *ObjectCaptureSession.Metadata.Shot.Object.mask.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

unint64_t sub_246036888@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>, __n128 a9@<Q4>, __n128 a10@<Q5>, __n128 a11@<Q6>, __n128 a12@<Q7>)
{
  *a4 = a5;
  a4[1] = a6;
  a4[2] = a7;
  a4[3] = a8;
  a4[4] = a9;
  a4[5] = a10;
  a4[6] = a11;
  a4[7] = a12;
  a4[8].n128_u64[0] = result;
  a4[8].n128_u64[1] = a2;
  a4[9].n128_u8[0] = a3 & 1;
  return result;
}

unint64_t sub_2460368C0@<X0>(unint64_t result@<X0>, char a2@<W1>, __n128 *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>)
{
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  a3[4].n128_u64[0] = result;
  a3[4].n128_u8[8] = a2 & 1;
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Shot.camera.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x188uLL);
  memcpy(a1, (v1 + 16), 0x188uLL);
  return sub_24601E2C0(__dst, &v4);
}

uint64_t ObjectCaptureSession.Metadata.Shot.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 28);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_245F8E7A4(v17, &v16, &qword_27EE3A990, &qword_246099C20);
}

__n128 ObjectCaptureSession.Metadata.Shot.scene.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 32);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 58) = *(v3 + 58);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Shot.captureMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

void *ObjectCaptureSession.Metadata.Shot.rawFeaturePoints.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 44));
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSession.Metadata.Shot.feedback.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

__n128 sub_246036B50@<Q0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, char a11, uint64_t a12, uint64_t *a13, uint64_t a14)
{
  v18 = *a5;
  v19 = *a13;
  v20 = *(a13 + 8);
  *a9 = a10;
  memcpy(a9 + 2, __src, 0x188uLL);
  v21 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  sub_245FC5914(a2, a9 + v21[6], &qword_27EE3A350, &unk_2460969A0);
  v22 = a9 + v21[7];
  v23 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 1) = v23;
  v24 = *(a3 + 80);
  *(v22 + 4) = *(a3 + 64);
  *(v22 + 5) = v24;
  v25 = *(a3 + 48);
  *(v22 + 2) = *(a3 + 32);
  *(v22 + 3) = v25;
  v22[144] = *(a3 + 144);
  v26 = *(a3 + 128);
  *(v22 + 7) = *(a3 + 112);
  *(v22 + 8) = v26;
  *(v22 + 6) = *(a3 + 96);
  v27 = a9 + v21[8];
  v28 = *(a4 + 48);
  *(v27 + 2) = *(a4 + 32);
  *(v27 + 3) = v28;
  *(v27 + 58) = *(a4 + 58);
  result = *(a4 + 16);
  *v27 = *a4;
  *(v27 + 1) = result;
  *(a9 + v21[9]) = v18;
  v30 = a9 + v21[10];
  *v30 = a6;
  *(v30 + 1) = a7;
  *(v30 + 2) = a8;
  v30[24] = a11 & 1;
  *(a9 + v21[11]) = a12;
  v31 = a9 + v21[12];
  *v31 = v19;
  v31[8] = v20;
  *(a9 + v21[13]) = a14;
  return result;
}

void *sub_246036CC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x410))(&v4);
  *a2 = v4;
  return result;
}

void sub_246036D34(id *a1)
{
  v1 = *a1;
  sub_2460818E4(v1);
  sub_246037228(&v1);
}

void sub_246036D70(void **a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0x410);
  v9(&v28, v5);
  v27 = v8;
  LOBYTE(a1) = _s6CoreOC20ObjectCaptureSessionC5StateO2eeoiySbAE_AEtFZ_0(&v28, &v27);
  sub_246077B30(v28);
  if ((a1 & 1) == 0)
  {
    v10 = sub_245FA3174();
    (*(v4 + 16))(v7, v10, v3);
    sub_2460818E4(v8);
    v11 = v1;
    v12 = sub_2460918D4();
    v13 = sub_246091FC4();
    sub_246077B30(v8);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v14 = 136381187;
      *(v14 + 4) = sub_245F8D3C0(0x6574617473, 0xE500000000000000, &v28);
      *(v14 + 12) = 2082;
      v27 = v8;
      sub_2460818E4(v8);
      v15 = sub_246091C54();
      HIDWORD(v25) = v13;
      v17 = sub_245F8D3C0(v15, v16, &v28);

      *(v14 + 14) = v17;
      *(v14 + 22) = 2082;
      (v9)(&v27, v18);
      v19 = sub_246091C54();
      v21 = sub_245F8D3C0(v19, v20, &v28);

      *(v14 + 24) = v21;
      _os_log_impl(&dword_245F8A000, v12, BYTE4(v25), "ObjectCaptureSession.%{private}s: Session state has changed from %{public}s to %{public}s", v14, 0x20u);
      v22 = v26;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    v23 = (*(v4 + 8))(v7, v3);
    (v9)(&v28, v23);
    if ((v28 - 7) >= 0xA)
    {
      if (v28 == 17)
      {
        sub_24606BFC0();
        v27 = 7;
        sub_246091914();

        sub_24606C1B4();
        v27 = 7;
        sub_246091914();

        sub_24606C3B0();
        v27 = 7;
        sub_246091914();
      }

      else
      {
        v24 = v28;
        sub_24606BFC0();
        v27 = v24;
        sub_2460818E4(v24);
        sub_2460818E4(v24);
        sub_24601EC48(v24);
        sub_246091914();

        sub_2460824C4(v27);
        sub_24606C1B4();
        v27 = v24;
        sub_246091914();

        sub_2460824C4(v27);
        sub_24606C3B0();
        v27 = v24;
        sub_246091914();

        sub_246077B30(v24);
        sub_2460824C4(v27);
      }
    }

    else
    {
      sub_246077B30(v28);
    }
  }
}

uint64_t sub_2460371B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();
}

void sub_246037228(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();

  v2 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_246091994();
  sub_246036D70(&v4);
  sub_246077B30(v2);
}

uint64_t sub_246037358(uint64_t a1, uint64_t *a2)
{
  v3 = sub_245F8E624(&unk_27EE3A9A8, &unk_246099C78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9A0, &qword_246099C70);
  sub_246091974();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_2460374F8(uint64_t a1)
{
  v2 = sub_245F8E624(&unk_27EE3A9A8, &unk_246099C78);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9A0, &qword_246099C70);
  sub_246091974();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

double sub_246037630()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  return result;
}

double ObjectCaptureSessionWritingPublishers.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  return result;
}

uint64_t sub_2460376C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x440))();
  *a2 = result;
  return result;
}

uint64_t sub_246037724(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2460377D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24603782C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x458))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_246037898(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_2460378FC();
}

void sub_2460378FC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime;
  swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = sub_245FA3174();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136380931;
      *(v10 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2C60, &v17);
      *(v10 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_246096460;
      v13 = MEMORY[0x277D83A80];
      *(v12 + 56) = MEMORY[0x277D839F8];
      *(v12 + 64) = v13;
      *(v12 + 32) = v6 / 60.0;
      v14 = sub_246091C24();
      v16 = sub_245F8D3C0(v14, v15, &v17);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Estimated reconstruction time for this capturing session is %{public}s minutes", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v11, -1, -1);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_246037B8C()
{
  v1 = v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime;
  swift_beginAccess();
  return *v1;
}

void sub_246037BD8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  sub_2460378FC();
}

uint64_t sub_246037C3C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x470))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_246037CA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_246037CFC();
}

uint64_t sub_246037CFC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_245FA3174();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = sub_2460918D4();
  v8 = sub_246091FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136380931;
    *(v9 + 4) = sub_245F8D3C0(0x6C467463656A626FLL, 0xEF656C6261707069, &v14);
    *(v9 + 12) = 1026;
    v11 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
    swift_beginAccess();
    *(v9 + 14) = v6[v11];

    _os_log_impl(&dword_245F8A000, v7, v8, "ObjectCaptureSession.%{private}s: Object flippable state set to %{BOOL,public}d", v9, 0x12u);
    sub_245F8E6F4(v10);
    MEMORY[0x24C1989D0](v10, -1, -1);
    MEMORY[0x24C1989D0](v9, -1, -1);
  }

  else
  {
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_246037F08()
{
  v1 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_246037F4C(char a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_246037CFC();
}

uint64_t sub_246037FA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_246038014()
{
  v1 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_246038064()
{
  v1 = sub_2460919F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_246091A64();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_246077BD4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0C98;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_246091A14();
  v14 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_246038334@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4A8))();
  *a2 = result & 1;
  return result;
}

void sub_2460383A8(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*a1 == 1)
  {
    v5 = *a2;
    v6 = *a5;
    swift_beginAccess();
    *(v5 + v6) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_246038408()
{
  v1 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_246038458(char a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = *a2;
    swift_beginAccess();
    *(v2 + v3) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2460384AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_246038514(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_246091994();
  return sub_246038590();
}

uint64_t sub_246038590()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245FA3174();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = sub_2460918D4();
  v8 = sub_246091FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136380931;
    *(v9 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A4AE0, &v13);
    *(v9 + 12) = 1026;
    *(v9 + 14) = (*((*MEMORY[0x277D85000] & *v6) + 0x4C0))() & 1;

    _os_log_impl(&dword_245F8A000, v7, v8, "ObjectCaptureSession.%{private}s: Set can take manual shot = %{BOOL,public}d", v9, 0x12u);
    sub_245F8E6F4(v10);
    MEMORY[0x24C1989D0](v10, -1, -1);
    MEMORY[0x24C1989D0](v9, -1, -1);
  }

  else
  {
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2460387C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();

  return v1;
}

uint64_t sub_246038838(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_246091994();
  return sub_246038590();
}

uint64_t sub_246038908(uint64_t a1, uint64_t *a2)
{
  v3 = sub_245F8E624(&unk_27EE3A9C0, &qword_246099CD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  sub_246091974();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_246038AA8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_245F8E624(a2, a3);
  sub_246091964();
  return swift_endAccess();
}

uint64_t sub_246038B20(uint64_t a1)
{
  v2 = sub_245F8E624(&unk_27EE3A9C0, &qword_246099CD8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  sub_246091974();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

id ObjectCaptureSession.init(arSession:mtlDevice:motionManager:snapshotURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a4;
  v108 = a3;
  v109 = a2;
  v105 = a1;
  v118 = sub_2460918F4();
  v104 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v110 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2460919F4();
  MEMORY[0x28223BE20](v99);
  v98 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v103 = sub_246092034();
  *&v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  *&v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v100 = sub_246092004();
  MEMORY[0x28223BE20](v100);
  v97 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091A64();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v94 - v12;
  v14 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers;
  type metadata accessor for ObjectCaptureSessionObservingPublishers();
  v15 = swift_allocObject();
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  v15[4] = 0u;
  v15[5] = 0u;
  v15[6] = 0u;
  v15[7] = 0u;
  v15[8] = 0u;
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
  type metadata accessor for ObjectCaptureSessionWritingPublishers();
  v17 = swift_allocObject();
  *&v4[v16] = v17;
  *&v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi] = 0;
  v18 = &v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime];
  *v18 = 0;
  v18[8] = 1;
  v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable] = 1;
  v17[1] = 0u;
  v17[2] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[5] = 0u;
  v17[6] = 0u;
  v17[7] = 0u;
  v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled] = 0;
  v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled] = 0;
  v19 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__canTakeManualShot;
  LOBYTE(v113[0]) = 0;
  v20 = v4;
  sub_246091954();
  (*(v11 + 32))(&v4[v19], v13, v10);
  v96 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue;
  sub_245FA30EC(0, &qword_27EE3A220, 0x277D85C78);
  sub_246091A34();
  v113[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v95 = MEMORY[0x277D83970];
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660, MEMORY[0x277D83970]);
  sub_2460921A4();
  (*(v102 + 104))(v101, *MEMORY[0x277D85260], v103);
  *&v96[v20] = sub_246092074();
  sub_246091824();
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause] = 10;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing] = 18;
  v21 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
  sub_246077C88(v114);
  memcpy(&v20[v21], v114, 0x4F0uLL);
  v22 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v23 = MEMORY[0x277D84F90];
  *&v20[v22] = sub_246077280(MEMORY[0x277D84F90], &qword_27EE3AEC8, &qword_24609AE58, &unk_27EE3ADB0, &qword_24609AD50);
  v24 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform];
  v25 = *MEMORY[0x277D860B8];
  v102 = *(MEMORY[0x277D860B8] + 16);
  v26 = v102;
  v103 = v25;
  v27 = *(MEMORY[0x277D860B8] + 32);
  v100 = *(MEMORY[0x277D860B8] + 48);
  v28 = v100;
  v101 = v27;
  v114[1264] = 0;
  *v24 = v25;
  *(v24 + 1) = v26;
  *(v24 + 2) = v27;
  *(v24 + 3) = v28;
  v24[64] = 0;
  v29 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
  *&v20[v29] = sub_246077064(v23);
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex] = 0;
  v30 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
  *v30 = 0;
  v30[8] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_needToStopMotionManager] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported] = 2;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] = 0;
  v31 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
  v32 = sub_246091704();
  v33 = *(v32 - 8);
  v96 = *(v33 + 56);
  v97 = (v33 + 56);
  (v96)(&v20[v31], 1, 1, v32);
  v34 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMUserDefaultValue;
  v20[v34] = sub_245F92434();
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV] = _Q0;
  v40 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  *&v20[v40] = sub_246077280(v23, &qword_27EE3AEB8, &qword_24609AE48, &qword_27EE3AD78, &qword_24609AD28);
  v41 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
  *&v20[v41] = sub_246077460(v23);
  v42 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  *&v20[v42] = sub_246077648(v23);
  v43 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
  *&v20[v43] = sub_246077824(v23);
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numInitialShotsBeforeFlippableDecision] = 10;
  v44 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
  *v44 = 0;
  v44[8] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numPoseUpdatesToCheckForConsistency] = 2;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateRotationDiffThreshold] = 1065353216;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateTranslationDiffThreshold] = 1000593162;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_waitTimeThresholdForPoseCorrectionInSec] = 0x4024000000000000;
  v45 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem;
  v113[4] = nullsub_1;
  v113[5] = 0;
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 1107296256;
  v113[2] = sub_245F913A4;
  v113[3] = &unk_2858E0CC0;
  _Block_copy(v113);
  v112 = v23;
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, v95);
  sub_2460921A4();
  sub_246091AE4();
  swift_allocObject();
  *&v20[v45] = sub_246091AC4();
  v46 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  *(v46 + 2) = 0u;
  *(v46 + 3) = 0u;
  v46[64] = 1;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_consecutiveObjectFlippabilityCount] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minConsecutiveObjectFlippabilityCount] = 5;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minShotFlippableMapSize] = 5;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions] = xmmword_246099B70;
  v47 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition];
  *v47 = 0u;
  *(v47 + 1) = 0u;
  v47[32] = 0;
  v47[33] = 1;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_yDistanceThresholdBetweenPrevAndCurrPlanes] = 1008981770;
  v48 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform];
  *(v48 + 2) = 0u;
  *(v48 + 3) = 0u;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v48[64] = 1;
  v49 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox];
  *(v49 + 2) = 0u;
  *(v49 + 3) = 0u;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  v49[64] = 1;
  v50 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
  v50[3] = 0u;
  v50[4] = 0u;
  v50[1] = 0u;
  v50[2] = 0u;
  *v50 = 0u;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID] = -1;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment] = MEMORY[0x277D84F90];
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudUpdateInterval] = 0x3FA10CB295E9E1B1;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCacheInterval] = 0x4008000000000000;
  v51 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox];
  *(v51 + 2) = 0u;
  *(v51 + 3) = 0u;
  *v51 = 0u;
  *(v51 + 1) = 0u;
  v51[64] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldCreateFreeformMeshBuffersFromHeap] = 1;
  v115 = 1;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshHeapVertexCapacity] = 400000;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementInitialVoxelSize] = 1000593162;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeIncrement] = 1000593162;
  v116 = 1;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeScanExtentThreshold] = 1014350479;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface] = 0;
  v52 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin];
  *v52 = 0;
  v52[1] = 0;
  v53 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
  sub_246077C90(v117);
  *v53 = v117[0];
  v54 = v117[1];
  v55 = v117[2];
  v56 = v117[4];
  v53[3] = v117[3];
  v53[4] = v56;
  v53[1] = v54;
  v53[2] = v55;
  v57 = v117[5];
  v58 = v117[6];
  v59 = v117[8];
  v53[7] = v117[7];
  v53[8] = v59;
  v53[5] = v57;
  v53[6] = v58;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud] = 0;
  v60 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud];
  v60[4] = 0u;
  v60[5] = 0u;
  v60[2] = 0u;
  v60[3] = 0u;
  *v60 = 0u;
  v60[1] = 0u;
  v61 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_intrinsicsFromLastFrame];
  *(v61 + 1) = 0u;
  *(v61 + 2) = 0u;
  *v61 = 0u;
  v61[48] = 1;
  v62 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageHeightFromLastFrame];
  *v62 = 0;
  v62[8] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration] = 0;
  v63 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime];
  *v63 = 0;
  v63[8] = 1;
  v64 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM];
  *v64 = 0u;
  *(v64 + 1) = 0u;
  *(v64 + 2) = 0u;
  *(v64 + 3) = 0u;
  v65 = v115;
  v64[64] = v115;
  v66 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform];
  *(v66 + 2) = 0u;
  *(v66 + 3) = 0u;
  *v66 = 0u;
  *(v66 + 1) = 0u;
  v66[64] = v65;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = 0;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTapPosition] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugPlaneDetection] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugMaskingVoxel] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCameraControl] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugDebugVoxels] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCoverageGuideVoxels] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugExplicitFeedbackEnabled] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAutoCaptureEnabled] = 0;
  v67 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown];
  *v67 = 0;
  v67[8] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugWriteAllFramesData] = 0;
  v68 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugOCBundleWriteDisabled;
  v20[v68] = *sub_245F926DC();
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__voxelIntegrationEnabled] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__explicitFeedbackEnabled] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__autoCaptureEnabled] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMEnabled] = 1;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMiPhoneOverride] = 0;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__captureRateControlEnabled] = 1;
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer] = 0;
  v69 = &v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform];
  v70 = v102;
  *v69 = v103;
  v69[1] = v70;
  v71 = v100;
  v69[2] = v101;
  v69[3] = v71;
  v72 = v96;
  (v96)(&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL], 1, 1, v32);
  v72(&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL], 1, 1, v32);
  *&v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps] = MEMORY[0x277D84FA0];
  v73 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration;
  v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration] = 0;
  v74 = sub_245FA3174();
  v75 = v104;
  (*(v104 + 16))(v110, v74, v118);
  v76 = v20;
  v77 = sub_2460918D4();
  v78 = sub_246091FC4();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v113[0] = v80;
    *v79 = 136380931;
    *(v79 + 4) = sub_245F8D3C0(0xD000000000000034, 0x80000002460A2510, v113);
    *(v79 + 12) = 2082;
    LOBYTE(v112) = v20[v73];
    v81 = sub_246091C54();
    v83 = v82;

    v84 = sub_245F8D3C0(v81, v83, v113);

    *(v79 + 14) = v84;
    _os_log_impl(&dword_245F8A000, v77, v78, "ObjectCaptureSession.%{private}s: Initialize with configuration: %{public}s.", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v80, -1, -1);
    MEMORY[0x24C1989D0](v79, -1, -1);
  }

  else
  {
  }

  (*(v75 + 8))(v110, v118);
  v85 = v108;
  v86 = v105;
  if (v105)
  {
    v87 = v105;
  }

  else
  {
    v87 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  }

  *&v76[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] = v87;
  swift_beginAccess();
  v112 = 10;
  v88 = v86;
  sub_246091954();
  swift_endAccess();
  v89 = type metadata accessor for ObjectCaptureSession(0);
  v111.receiver = v76;
  v111.super_class = v89;
  v90 = objc_msgSendSuper2(&v111, sel_init);
  v91 = v106;
  v92 = v107;
  sub_246078034(v109, v85, v107);
  sub_245F8E744(v92, &qword_27EE3A498, &unk_246097EB8);
  if (v91)
  {
  }

  swift_unknownObjectRelease();
  return v90;
}
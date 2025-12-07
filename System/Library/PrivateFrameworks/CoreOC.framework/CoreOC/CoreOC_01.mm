uint64_t sub_245F9EB34(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - v6;
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = *(a1 + v2[8]);
  if (!v14)
  {
    v37 = sub_245FA32CC();
    (*(v9 + 16))(v11, v37, v8);
    sub_245FA2954(a1, v4);
    v38 = sub_2460918D4();
    v39 = sub_246091FB4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v65 = v41;
      *v40 = 136380931;
      *(v40 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609E9D0, &v65);
      *(v40 + 12) = 2082;
      sub_246091834();
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_2460923D4();
      v44 = v43;
      sub_245FA29B8(v4);
      v45 = sub_245F8D3C0(v42, v44, &v65);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_245F8A000, v38, v39, "%{private}s: Failed to get mesh anchor from tri mesh - missing faces in the mesh anchor %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v41, -1, -1);
      MEMORY[0x24C1989D0](v40, -1, -1);
    }

    else
    {

      sub_245FA29B8(v4);
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  v63 = &v60 - v13;
  v15 = *(a1 + v2[5]);
  v16 = v14;
  result = [v15 count];
  v18 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v18 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v60 = v7;
  v61 = v9;
  v62 = v8;
  v19 = [v15 buffer];
  v20 = [v19 contents];
  v21 = v19;
  v22 = [*(a1 + v2[6]) buffer];
  v23 = [v22 contents];
  v24 = v22;
  v25 = [*(a1 + v2[7]) buffer];
  v64 = v16;
  v26 = v25;
  v27 = [v25 contents];
  v28 = v26;
  v29 = v64;
  v30 = v28;
  result = [v29 count];
  v31 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = [v29 buffer];
    v33 = [v32 contents];
    v34 = v32;
    v35 = [objc_allocWithZone(MEMORY[0x277D0AE80]) init];
    [v35 setPositions:v20 size:v18];
    [v35 setVertexColors:v23 size:v18];
    [v35 setVertexNormals:v27 size:v18];
    [v35 setFaces:v33 size:v31];
    v36 = [objc_allocWithZone(MEMORY[0x277D0AE88]) init];
    if ([v35 create_])
    {

      return v36;
    }

    v46 = sub_245FA32CC();
    v48 = v61;
    v47 = v62;
    v49 = v63;
    (*(v61 + 16))(v63, v46, v62);
    v50 = v60;
    sub_245FA2954(a1, v60);
    v51 = sub_2460918D4();
    v52 = sub_246091FB4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v65 = v54;
      *v53 = 136380931;
      *(v53 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609E9D0, &v65);
      *(v53 + 12) = 2082;
      sub_246091834();
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = v52;
      v56 = sub_2460923D4();
      v58 = v57;
      sub_245FA29B8(v50);
      v59 = sub_245F8D3C0(v56, v58, &v65);

      *(v53 + 14) = v59;
      _os_log_impl(&dword_245F8A000, v51, v55, "%{private}s: Failed to create tri mesh for anchor %{public}s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v54, -1, -1);
      MEMORY[0x24C1989D0](v53, -1, -1);

      (*(v48 + 8))(v63, v62);
    }

    else
    {

      sub_245FA29B8(v50);
      (*(v48 + 8))(v49, v47);
    }

    return 0;
  }

LABEL_20:
  __break(1u);
  return result;
}

BOOL sub_245F9F250()
{
  v1 = (*(*v0 + 112))();
  v2 = *sub_24601EF70();
  v3 = sub_246026268();

  return sub_246026278(v2, v3, v1);
}

float32x4_t *sub_245F9F300(float32x4_t a1, float32x4_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24601EF70();
  v9 = vld1q_dup_f32(v8);
  v9.i32[3] = 0;
  v2[3] = v9;
  v10 = vmvnq_s8(vorrq_s8(vcltzq_f32(v38), vcgezq_f32(v38)));
  v14 = v10.i32[0] + v10.i32[1] == (vmovn_s32(*&v10).i32[1] & 1);
  v10.i64[0] = 0x7F0000007FLL;
  v10.i64[1] = 0x7F0000007FLL;
  v11 = vnegq_f32(v10);
  v12 = vceqq_f32(vabsq_f32(v38), v11);
  v13 = vmovn_s32(v12).i32[1] & 1;
  v14 = v14 && v12.i32[0] + v12.i32[1] == v13;
  v15 = vmvnq_s8(vorrq_s8(vcltzq_f32(v39), vcgezq_f32(v39)));
  v16 = vmovn_s32(v15).i32[1] & 1;
  v17 = v14 && v15.i32[0] + v15.i32[1] == v16;
  v18 = vceqq_f32(vabsq_f32(v39), v11);
  v19 = vmovn_s32(v18).i32[1] & 1;
  v20 = v17 && v18.i32[0] + v18.i32[1] == v19;
  if (v20 && v39.f32[0] >= 0.0 && (v34 = vcgez_f32(*&vextq_s8(v39, v39, 4uLL)), (v34.i8[0] & 1) != 0) && (v34.i8[4] & 1) != 0)
  {
    v35 = v39;
    v2[1] = v38;
    v2[2] = v35;
  }

  else
  {
    v21 = sub_245FA32CC();
    (*(v5 + 16))(v7, v21, v4);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v24 = 136381187;
      *(v24 + 4) = sub_245F8D3C0(0xD000000000000017, 0x800000024609E9F0, &v41);
      *(v24 + 12) = 2082;
      v40 = v38;
      sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
      sub_245FA2A38();
      v25 = sub_246092404();
      v27 = sub_245F8D3C0(v25, v26, &v41);
      v38.i64[0] = v4;
      v28 = v27;

      *(v24 + 14) = v28;
      *(v24 + 22) = 2082;
      v40 = v39;
      v29 = sub_246092404();
      v31 = sub_245F8D3C0(v29, v30, &v41);

      *(v24 + 24) = v31;
      _os_log_impl(&dword_245F8A000, v22, v23, "AABB.%{private}s: Invalid minCorner %{public}s or extent %{public}s for AABB!", v24, 0x20u);
      v32 = v37;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v32, -1, -1);
      MEMORY[0x24C1989D0](v24, -1, -1);

      (*(v5 + 8))(v7, v38.i64[0]);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    type metadata accessor for MeshUtils.AABB();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

float32x4_t *sub_245F9F6A4(float32x4_t a1, __n128 a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v35 = a3;
  v41 = a1;
  v42 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2460233E8(v35, v36, v37, v38) & 1) == 0)
  {
    v25 = sub_245FA32CC();
    (*(v8 + 16))(v10, v25, v7);
    v26 = sub_2460918D4();
    v27 = sub_246091FB4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43.i64[0] = v29;
      *v28 = 136380931;
      *(v28 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA10, &v43);
      *(v28 + 12) = 2082;
      v44 = v35;
      v45 = v36;
      v46 = v37;
      v47 = v38;
      type metadata accessor for simd_float4x4(0);
      v30 = sub_246091C54();
      v32 = sub_245F8D3C0(v30, v31, &v43);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_245F8A000, v26, v27, "AABB.%{private}s: Invalid transform %{public}s for creating AABB from OBB!", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v29, -1, -1);
      MEMORY[0x24C1989D0](v28, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  type metadata accessor for MeshUtils.AABB();
  swift_allocObject();
  result = sub_245F9F300(v41, v42);
  if (!result)
  {
    return result;
  }

  v12 = (*(result->i64[0] + 136))();
  v13 = *(v12 + 16);
  if (v13)
  {
    v42 = xmmword_246096F60;
    v14 = xmmword_246096F70;
    v15 = 32;
    do
    {
      v40 = v14;
      v41 = v14;
      v16 = *(v12 + v15);
      v39 = v42;
      v44 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v16.f32[0]), v36, *v16.f32, 1), v37, v16, 2), v38);
      v17 = sub_245F8E624(&qword_27EE3A080, &unk_246096F90);
      sub_246026078(v17);
      v18 = v41;
      v19 = v42;
      v20 = v43;
      v19.i32[3] = 0;
      v20.i32[3] = 0;
      v21 = vminnmq_f32(v19, v20);
      v21.i32[3] = v39.i32[3];
      v42 = v21;
      v18.i32[3] = 0;
      v14 = vmaxnmq_f32(v18, v20);
      v14.i32[3] = v40.i32[3];
      v15 += 16;
      --v13;
    }

    while (v13);
    v41 = v14;

    v24 = v41;
    v23 = v42;
  }

  else
  {

    v23 = xmmword_246096F60;
    v24 = xmmword_246096F70;
  }

  v33 = vsubq_f32(v24, v23);
  v33.n128_u32[3] = 0;
  v34 = (*(v6 + 128))(v22, v23, v33);

  if (!v34)
  {
    return 0;
  }

  return v34;
}

char *sub_245F9FA84()
{
  v60 = v0[1];
  v1 = sub_245FA26DC(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = sub_245FA26DC((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = v60;
  *&v1[16 * v3 + 32] = v60;
  v7 = v0[2];
  v8 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v53 = v7;
    v31 = sub_245FA26DC((v2 > 1), v3 + 2, 1, v1);
    v7 = v53;
    v6 = v60;
    v1 = v31;
  }

  v9 = vaddq_f32(v6, v7);
  v10 = v9.u32[0];
  v11 = v6.f32[1] + 0.0;
  v12 = v9.u32[0];
  *(&v12 + 1) = v6.f32[1] + 0.0;
  v13 = v6.f32[2] + 0.0;
  v14 = v12;
  *(&v14 + 2) = v6.f32[2] + 0.0;
  *(v1 + 2) = v8;
  *&v1[16 * v5 + 32] = v14;
  v15 = *(v1 + 3);
  v16 = v3 + 3;
  if ((v3 + 3) > (v15 >> 1))
  {
    v48 = v9.u32[0];
    v54 = v9;
    v41 = v6.f32[1] + 0.0;
    v44 = v12;
    v38 = v6.f32[2] + 0.0;
    v32 = sub_245FA26DC((v15 > 1), v3 + 3, 1, v1);
    v13 = v38;
    v11 = v41;
    v12 = v44;
    v10 = v48;
    v6.i32[0] = v60.i32[0];
    v9 = v54;
    v1 = v32;
  }

  DWORD1(v10) = v9.i32[1];
  v17 = v10;
  *(&v17 + 2) = v13;
  *(v1 + 2) = v16;
  *&v1[16 * v8 + 32] = v17;
  v18 = *(v1 + 3);
  v19 = v3 + 4;
  if ((v3 + 4) > (v18 >> 1))
  {
    v49 = v10;
    v55 = v9;
    v42 = v11;
    v45 = v12;
    v39 = v13;
    v33 = sub_245FA26DC((v18 > 1), v3 + 4, 1, v1);
    v13 = v39;
    v11 = v42;
    v12 = v45;
    v10 = v49;
    v6.i32[0] = v60.i32[0];
    v9 = v55;
    v1 = v33;
  }

  v6.i32[1] = 0;
  v6.i64[1] = 0;
  v6.f32[0] = v6.f32[0] + 0.0;
  v21 = v6.u32[0];
  DWORD1(v21) = v9.i32[1];
  v22 = v21;
  *(&v22 + 2) = v13;
  *(v1 + 2) = v19;
  *&v1[16 * v16 + 32] = v22;
  v23 = *(v1 + 3);
  v24 = v3 + 5;
  if ((v3 + 5) > (v23 >> 1))
  {
    v50 = v10;
    v56 = v9.i32[2];
    v46 = v12;
    v61 = v21;
    v40 = v6;
    v43 = v11;
    v34 = sub_245FA26DC((v23 > 1), v3 + 5, 1, v1);
    v6 = v40;
    v11 = v43;
    v21 = v61;
    v12 = v46;
    v10 = v50;
    v9.i32[2] = v56;
    v1 = v34;
  }

  v6.f32[1] = v11;
  v6.i32[2] = v9.i32[2];
  *(v1 + 2) = v24;
  *&v1[16 * v19 + 32] = v6;
  v25 = *(v1 + 3);
  v26 = v3 + 6;
  if ((v3 + 6) > (v25 >> 1))
  {
    v51 = v10;
    v57 = v9.i32[2];
    v47 = v12;
    v62 = v21;
    v35 = sub_245FA26DC((v25 > 1), v3 + 6, 1, v1);
    v21 = v62;
    v12 = v47;
    v10 = v51;
    v9.i32[2] = v57;
    v1 = v35;
  }

  DWORD2(v12) = v9.i32[2];
  *(v1 + 2) = v26;
  *&v1[16 * v24 + 32] = v12;
  v27 = *(v1 + 3);
  v28 = v3 + 7;
  if ((v3 + 7) > (v27 >> 1))
  {
    v52 = v10;
    v58 = v9.i32[2];
    v63 = v21;
    v36 = sub_245FA26DC((v27 > 1), v3 + 7, 1, v1);
    v21 = v63;
    v10 = v52;
    v9.i32[2] = v58;
    v1 = v36;
  }

  DWORD2(v10) = v9.i32[2];
  *(v1 + 2) = v28;
  *&v1[16 * v26 + 32] = v10;
  v29 = *(v1 + 3);
  if ((v3 + 8) > (v29 >> 1))
  {
    v59 = v9.i32[2];
    v64 = v21;
    v37 = sub_245FA26DC((v29 > 1), v3 + 8, 1, v1);
    v21 = v64;
    v9.i32[2] = v59;
    v1 = v37;
  }

  DWORD2(v21) = v9.i32[2];
  *(v1 + 2) = v3 + 8;
  *&v1[16 * v28 + 32] = v21;
  return v1;
}

float32x4_t *sub_245F9FDB4(float32x4_t *a1)
{
  v14 = a1[1];
  v16 = v1[1];
  v3 = (*(v1->i64[0] + 120))();
  v4 = (*(v1->i64[0] + 104))();
  if (v3)
  {
    v5 = vaddq_f32(v5, v1[3]);
    v5.i32[3] = 0;
  }

  v13 = v5;
  v6 = (*(a1->i64[0] + 120))(v4);
  (*(a1->i64[0] + 104))();
  if (v6)
  {
    v7 = vaddq_f32(v7, a1[3]);
  }

  *v8.f32 = vbsl_s8(vcge_f32(*v14.f32, *v16.f32), *v14.f32, *v16.f32);
  v9 = v16.f32[2];
  if (v16.f32[2] <= v14.f32[2])
  {
    v9 = v14.f32[2];
  }

  v10 = v13.f32[2];
  if (v7.f32[2] < v13.f32[2])
  {
    v10 = v7.f32[2];
  }

  *v11.f32 = vsub_f32(vbsl_s8(vcgt_f32(*v13.f32, *v7.f32), *v7.f32, *v13.f32), *v8.f32);
  if (v11.f32[0] < 0.0 || v11.f32[1] < 0.0 || (v10 - v9) < 0.0)
  {
    return 0;
  }

  v11.i64[1] = COERCE_UNSIGNED_INT(v10 - v9);
  v8.i64[1] = LODWORD(v9);
  v15 = v8;
  v17 = v11;
  type metadata accessor for MeshUtils.AABB();
  swift_allocObject();
  return sub_245F9F300(v15, v17);
}

void sub_245F9FF48()
{
  v1 = (*(v0->i64[0] + 144))();
  if (v1)
  {
    v2 = v1;
    if ((*(v0->i64[0] + 120))())
    {
      v3 = vaddq_f32(v0[2], v0[3]);
      v3.i32[3] = 0;
      v4 = sub_24602606C(v3);
    }

    else
    {
      v4 = (*(v0->i64[0] + 112))();
    }

    v5 = v4;
    if (v4 <= 0.0)
    {
      __break(1u);
    }

    else
    {
      v6 = (*(*v2 + 112))();
      sub_246021418(v6 / v5, 0.0, 1.0);
    }
  }
}

float32x4_t *sub_245FA0068()
{
  *v0.f32 = OCBoundingBox.extent.getter();
  v4 = v0;
  v1.i64[0] = 0x3F0000003F000000;
  v1.i64[1] = 0x3F0000003F000000;
  v1.i64[0] = vmulq_f32(vsubq_f32(0, v0), v1).u64[0];
  v1.f32[2] = (0.0 - v0.f32[2]) * 0.5;
  v1.i32[3] = 0;
  v3 = v1;
  type metadata accessor for MeshUtils.AABB();
  swift_allocObject();
  return sub_245F9F300(v3, v4);
}

float32x4_t *sub_245FA00F4(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v6 = v5;
  type metadata accessor for MeshUtils.AABB();
  v8 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  result = sub_245F9F6A4(*(a1 + *(v8 + 44)), *(a1 + *(v8 + 48)), a2, a3, a4, a5);
  if (result)
  {
    (*(*v6 + 152))();
  }

  return result;
}

uint64_t sub_245FA01AC(uint64_t *a1, uint64_t a2, int a3)
{
  v250 = a3;
  v266[2] = *MEMORY[0x277D85DE8];
  v249 = sub_246091C44();
  v261.i64[0] = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v242 = (&v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v248 = (&v215 - v7);
  v254 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v253 = *(v254 - 1);
  MEMORY[0x28223BE20](v254);
  v255 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_246091704();
  v9 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v11 = &v215 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v243 = &v215 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v215 - v15;
  MEMORY[0x28223BE20](v17);
  v241 = &v215 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v215 - v20;
  MEMORY[0x28223BE20](v22);
  v247 = (&v215 - v23);
  MEMORY[0x28223BE20](v24);
  v251 = &v215 - v25;
  MEMORY[0x28223BE20](v26);
  v260.i64[0] = &v215 - v27;
  v28 = sub_2460918F4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v33 = &v215 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v215 - v35;
  MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](&v215 - v39);
  v45 = *a1;
  v46 = *(*a1 + 16);
  if (!v46)
  {
    v85 = sub_245FA32CC();
    (*(v29 + 16))(v33, v85, v28);
    v86 = sub_2460918D4();
    v87 = sub_246091FB4();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v266[0] = v89;
      *v88 = 136380675;
      *(v88 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA40, v266);
      _os_log_impl(&dword_245F8A000, v86, v87, "MeshWriter.%{private}s: Failed to save mesh anchors - received empty mesh anchors!", v88, 0xCu);
      sub_245F8E6F4(v89);
      MEMORY[0x24C1989D0](v89, -1, -1);
      MEMORY[0x24C1989D0](v88, -1, -1);
    }

    (*(v29 + 8))(v33, v28);
    return 0;
  }

  v259.i64[0] = &v215 - v41;
  v239 = v46;
  v244 = v45;
  v238 = v40;
  v231 = v44;
  v234 = v43;
  v232 = v11;
  v233 = v42;
  v47 = v9;
  v262 = 0;
  v48 = [objc_opt_self() defaultManager];
  v252 = a2;
  sub_2460916E4();
  v49 = sub_246091BD4();

  v50 = [v48 fileExistsAtPath:v49 isDirectory:&v262];

  if (!v50 || v262 != 1)
  {
    v71 = sub_245FA32CC();
    (*(v29 + 16))(v36, v71, v28);
    v72 = v47;
    v73 = v29;
    v74 = v256;
    (*(v47 + 16))(v16, v252, v256);
    v75 = sub_2460918D4();
    v76 = sub_246091FB4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v245 = v28;
      v78 = v77;
      v79 = swift_slowAlloc();
      v266[0] = v79;
      *v78 = 136380931;
      *(v78 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA40, v266);
      *(v78 + 12) = 2081;
      sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v80 = sub_2460923D4();
      v81 = v72;
      v83 = v82;
      (*(v81 + 8))(v16, v74);
      v84 = sub_245F8D3C0(v80, v83, v266);

      *(v78 + 14) = v84;
      _os_log_impl(&dword_245F8A000, v75, v76, "MeshWriter.%{private}s: Failed to save mesh anchors - %{private}s is not a directory!", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v79, -1, -1);
      MEMORY[0x24C1989D0](v78, -1, -1);

      (*(v73 + 8))(v36, v245);
    }

    else
    {

      (*(v72 + 8))(v16, v74);
      (*(v73 + 8))(v36, v28);
    }

    return 0;
  }

  v216 = v21;
  v51 = sub_245FA32CC();
  v52 = *(v29 + 16);
  v53 = v259.i64[0];
  v222 = v51;
  v54 = v28;
  v224 = v29 + 16;
  v223 = v52;
  (v52)(v259.i64[0]);
  v55 = *(v47 + 16);
  v56 = v260.i64[0];
  v57 = v29;
  v58 = v256;
  v226 = v47 + 16;
  v225 = v55;
  v55(v260.i64[0], v252, v256);
  v59 = sub_2460918D4();
  v60 = sub_246091FC4();
  v61 = os_log_type_enabled(v59, v60);
  v245 = v54;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v258.i64[0] = swift_slowAlloc();
    v266[0] = v258.i64[0];
    *v62 = 136380931;
    v220 = 0x800000024609EA40;
    *(v62 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA40, v266);
    *(v62 + 12) = 2081;
    sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v63 = sub_2460923D4();
    v65 = v64;
    v66 = *(v47 + 8);
    v229 = v47 + 8;
    v228 = v66;
    v66(v56, v58);
    v67 = sub_245F8D3C0(v63, v65, v266);

    *(v62 + 14) = v67;
    _os_log_impl(&dword_245F8A000, v59, v60, "MeshWriter.%{private}s: Saving mesh anchor at URL: %{private}s", v62, 0x16u);
    v68 = v258.i64[0];
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v68, -1, -1);
    MEMORY[0x24C1989D0](v62, -1, -1);

    v69 = *(v57 + 8);
    v230 = v57 + 8;
    v227 = v69;
    v69(v259.i64[0], v54);
  }

  else
  {

    v91 = *(v47 + 8);
    v68 = v47 + 8;
    v229 = v68;
    v228 = v91;
    v91(v56, v58);
    v92 = *(v57 + 8);
    v230 = v57 + 8;
    v227 = v92;
    v92(v53, v54);
    v220 = 0x800000024609EA40;
  }

  v93 = v244;
  v94 = 0;
  v217 = 0;
  v95 = 0;
  v237 = 0;
  v235 = v244 + ((*(v253 + 80) + 32) & ~*(v253 + 80));
  v221 = (v261.i64[0] + 8);
  *&v70 = 136380931;
  v219 = v70;
  v96 = &off_278E99000;
  v218 = 0xE000000000000000;
  v97 = v255;
  while (1)
  {
    if (v95 >= *(v93 + 16))
    {
      goto LABEL_84;
    }

    sub_245FA2954(v235 + *(v253 + 72) * v95, v97);
    v68 = v254;
    v98 = *(v97 + v254[5]);
    v99 = *(v97 + v254[6]);
    v100 = (v97 + v254[9]);
    v101 = *v100;
    v102 = v100[2];
    v103 = v100[3];
    v259 = v100[1];
    v260 = v101;
    v257 = v103;
    v258 = v102;
    v236 = sub_245FA21E0(v98, v99, v101, v259, v102, v103);
    v246 = v104;
    v240 = v105;
    v106 = *(v97 + *(v68 + 28));
    v266[0] = 0;
    v266[1] = 0xE000000000000000;
    v107 = [v106 count];
    if (v107 < 0xFFFFFFFF80000000)
    {
      goto LABEL_85;
    }

    v60 = v107;
    if (v107 > 0x7FFFFFFF)
    {
      goto LABEL_86;
    }

    if (v107 < 0)
    {
      goto LABEL_87;
    }

    if (v107)
    {
      v108 = 0;
      while ([v106 v96[94]] == 30)
      {
        v109 = [v106 buffer];
        v110 = [v109 contents];
        v111 = v109;
        v112 = [v106 offset];
        v113 = [v106 stride];
        v114 = v113 * v108;
        if ((v113 * v108) >> 64 != (v113 * v108) >> 63)
        {
          goto LABEL_78;
        }

        v115 = __OFADD__(v112, v114);
        v116 = &v112[v114];
        if (v115)
        {
          goto LABEL_79;
        }

        ++v108;
        v261 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v260, *&v116[v110]), v259, *&v116[v110 + 4]), v258, *&v116[v110 + 8]), 0, v257);
        v263 = 0;
        v264 = 0xE000000000000000;
        MEMORY[0x24C196640](2125430, 0xE300000000000000);
        v68 = MEMORY[0x277D84698];
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](10, 0xE100000000000000);
        MEMORY[0x24C196640](v263, v264);

        if (v60 == v108)
        {
          v259.i64[0] = v266[0];
          v258.i64[0] = v266[1];
          v97 = v255;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v259.i64[0] = 0;
    v258.i64[0] = 0xE000000000000000;
LABEL_27:
    v117 = [v106 count];
    if (v240 != v117)
    {
      goto LABEL_88;
    }

    v118 = *(v97 + v254[8]);
    if (v118)
    {
      break;
    }

    v139 = 0;
    v140 = 0xE000000000000000;
LABEL_55:
    ++v95;
    v141 = v246;
    v142 = v258.i64[0];
    if (v250)
    {
      v266[0] = v236;
      v266[1] = v246;

      MEMORY[0x24C196640](v259.i64[0], v142);

      MEMORY[0x24C196640](v139, v140);

      v261.i64[0] = v140;
      v143 = v266[0];
      v144 = v266[1];
      v145 = sub_2460917F4();
      strcpy(v266, "mesh_anchor_");
      BYTE5(v266[1]) = 0;
      HIWORD(v266[1]) = -5120;
      MEMORY[0x24C196640](v145);

      MEMORY[0x24C196640](1784835886, 0xE400000000000000);

      v146 = v251;
      sub_2460916A4();
      v266[0] = v143;
      v266[1] = v144;
      v68 = v248;
      sub_246091C34();
      sub_245FA2AE4();
      v125 = v146;
      v147 = v237;
      sub_246092144();
      v237 = v147;
      if (v147)
      {
LABEL_72:
        (*v221)(v68, v249);
        v177 = v237;
        v266[0] = v237;
        v178 = v237;
        sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
        sub_245FA2B38();
        swift_dynamicCast();

        v179 = v263;
        v180 = v234;
        v181 = v245;
        v223(v234, v222, v245);
        v182 = v243;
        v183 = v256;
        v225(v243, v125, v256);
        v184 = v179;
        v185 = sub_2460918D4();
        v186 = sub_246091FB4();

        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          v261.i64[0] = swift_slowAlloc();
          v265 = v261.i64[0];
          *v187 = 136381187;
          *(v187 + 4) = sub_245F8D3C0(0xD000000000000021, v220, &v265);
          *(v187 + 12) = 2081;
          sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v189 = sub_2460923D4();
          v190 = v182;
          v192 = v191;
          v193 = v228;
          v228(v190, v183);
          v194 = sub_245F8D3C0(v189, v192, &v265);

          *(v187 + 14) = v194;
          *(v187 + 22) = 2112;
          *(v187 + 24) = v184;
          *v188 = v184;
          v195 = v184;
          _os_log_impl(&dword_245F8A000, v185, v186, "MeshWriter.%{private}s: Failed to save mesh anchor at %{private}s. Error: %@", v187, 0x20u);
          sub_245F8E744(v188, &qword_27EE3AE80, &qword_246096FA0);
          MEMORY[0x24C1989D0](v188, -1, -1);
          v196 = v261.i64[0];
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v196, -1, -1);
          MEMORY[0x24C1989D0](v187, -1, -1);

          v227(v180, v245);
          v193(v251, v256);
        }

        else
        {

          v197 = v228;
          v228(v182, v183);
          v227(v180, v181);
          v197(v125, v183);
        }

        sub_245FA29B8(v255);
        goto LABEL_76;
      }

      v260.i64[0] = v95;
      (*v221)(v68, v249);

      v148 = v238;
      v149 = v245;
      v223(v238, v222, v245);
      v68 = v247;
      v60 = v256;
      v225(v247, v125, v256);
      v150 = sub_2460918D4();
      v151 = sub_246091FC4();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v261.i64[0] = swift_slowAlloc();
        v266[0] = v261.i64[0];
        *v152 = v219;
        *(v152 + 4) = sub_245F8D3C0(0xD000000000000021, v220, v266);
        *(v152 + 12) = 2081;
        sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v153 = sub_2460923D4();
        v60 = v154;
        v155 = v68;
        v68 = v228;
        v228(v155, v256);
        v156 = sub_245F8D3C0(v153, v60, v266);

        *(v152 + 14) = v156;
        _os_log_impl(&dword_245F8A000, v150, v151, "MeshWriter.%{private}s: Saved mesh anchor at %{private}s", v152, 0x16u);
        v157 = v261.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v157, -1, -1);
        MEMORY[0x24C1989D0](v152, -1, -1);

        v227(v148, v245);
        (v68)(v251, v256);
      }

      else
      {

        v158 = v228;
        v228(v68, v60);
        v227(v148, v149);
        v158(v125, v60);
      }

      v97 = v255;
      sub_245FA29B8(v255);
      v95 = v260.i64[0];
      v93 = v244;
      v96 = &off_278E99000;
      if (v260.i64[0] == v239)
      {

        return 1;
      }
    }

    else
    {
      v266[0] = v217;
      v266[1] = v218;

      MEMORY[0x24C196640](v236, v141);

      v68 = v142;

      MEMORY[0x24C196640](v259.i64[0], v142);

      MEMORY[0x24C196640](v139, v140);

      v115 = __OFADD__(v94, v240);
      v94 += v240;
      if (v115)
      {
        __break(1u);
      }

      v217 = v266[0];
      v218 = v266[1];
      v97 = v255;
      sub_245FA29B8(v255);
      v60 = v256;
      v93 = v244;
      if (v95 == v239)
      {
        v94 = v216;
        sub_2460916A4();
        v266[0] = v217;
        v266[1] = v218;

        v68 = v242;
        sub_246091C34();
        sub_245FA2AE4();
        v159 = v237;
        sub_246092144();
        if (!v159)
        {
          goto LABEL_90;
        }

        (*v221)(v68, v249);

        v266[0] = v159;
        sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
        sub_245FA2B38();
        swift_dynamicCast();

        v160 = v263;
        v161 = v233;
        v162 = v245;
        v223(v233, v222, v245);
        v163 = v232;
        v225(v232, v94, v60);
        v164 = v160;
        v165 = sub_2460918D4();
        v166 = sub_246091FB4();

        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v261.i64[0] = swift_slowAlloc();
          v168 = v60;
          v169 = swift_slowAlloc();
          v265 = v169;
          *v167 = 136381187;
          *(v167 + 4) = sub_245F8D3C0(0xD000000000000021, v220, &v265);
          *(v167 + 12) = 2081;
          sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v170 = sub_2460923D4();
          v172 = v171;
          v173 = v228;
          v228(v163, v168);
          v174 = sub_245F8D3C0(v170, v172, &v265);

          *(v167 + 14) = v174;
          *(v167 + 22) = 2112;
          *(v167 + 24) = v164;
          v175 = v261.i64[0];
          *v261.i64[0] = v164;
          v176 = v164;
          _os_log_impl(&dword_245F8A000, v165, v166, "MeshWriter.%{private}s: Failed to save mesh at %{private}s. Error: %@", v167, 0x20u);
          sub_245F8E744(v175, &qword_27EE3AE80, &qword_246096FA0);
          MEMORY[0x24C1989D0](v175, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v169, -1, -1);
          MEMORY[0x24C1989D0](v167, -1, -1);

          v227(v233, v245);
          v173(v216, v168);
        }

        else
        {

          v213 = v228;
          v228(v163, v60);
          v227(v161, v162);
          v213(v94, v60);
        }

LABEL_76:

        return 0;
      }
    }
  }

  v119 = v118;
  v266[0] = 0;
  v266[1] = 0xE000000000000000;
  v120 = [v119 count];
  if ((v120 & 0x8000000000000000) != 0)
  {
    goto LABEL_89;
  }

  if (!v120)
  {
    v139 = 0;
    v140 = 0xE000000000000000;
LABEL_54:
    [v119 count];

    goto LABEL_55;
  }

  v260.i64[0] = v95;
  v121 = 0;
  v261.i64[0] = v120;
  while (1)
  {
    if ([v119 bytesPerIndex] != 4)
    {
      goto LABEL_80;
    }

    v68 = &off_278E99000;
    v122 = [v119 indexCountPerPrimitive];
    v60 = sub_245FA27E0(0, v122 & ~(v122 >> 63), 0, MEMORY[0x277D84F90]);
    v123 = [v119 indexCountPerPrimitive];
    if ((v123 & 0x8000000000000000) != 0)
    {
      goto LABEL_81;
    }

    v124 = v123;
    if (v123)
    {
      v125 = 0;
      while (1)
      {
        v126 = [v119 buffer];
        v127 = [v126 contents];
        v128 = v126;
        v129 = [v119 indexCountPerPrimitive];
        v130 = v121 * v129;
        if ((v121 * v129) >> 64 != (v121 * v129) >> 63)
        {
          break;
        }

        v115 = __OFADD__(v130, v125);
        v131 = v125 + v130;
        if (v115)
        {
          goto LABEL_68;
        }

        if ((v131 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_69;
        }

        v132 = v127[v131];
        v68 = *(v60 + 16);
        v133 = *(v60 + 24);
        if (v68 >= v133 >> 1)
        {
          v60 = sub_245FA27E0((v133 > 1), v68 + 1, 1, v60);
        }

        v125 = (v125 + 1);
        *(v60 + 16) = v68 + 1;
        *(v60 + 4 * v68 + 32) = v132;
        if (v124 == v125)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_43:
    MEMORY[0x24C196640](102, 0xE100000000000000);
    v134 = *(v60 + 16);
    if (v134)
    {
      break;
    }

LABEL_32:
    ++v121;

    MEMORY[0x24C196640](10, 0xE100000000000000);
    v96 = &off_278E99000;
    if (v121 == v261.i64[0])
    {
      v139 = v266[0];
      v140 = v266[1];
      v95 = v260.i64[0];
      goto LABEL_54;
    }
  }

  if (v94 < 0xFFFFFFFF80000000)
  {
    goto LABEL_82;
  }

  if (v94 <= 0x7FFFFFFF)
  {
    v125 = (v60 + 32);
    while (1)
    {
      v135 = *v125++;
      v263 = 32;
      v264 = 0xE100000000000000;
      v136 = v135 + 1;
      if (__OFADD__(v135, 1))
      {
        break;
      }

      v115 = __OFADD__(v136, v94);
      v137 = v136 + v94;
      if (v115)
      {
        goto LABEL_71;
      }

      LODWORD(v265) = v137;
      v138 = sub_2460923D4();
      MEMORY[0x24C196640](v138);

      MEMORY[0x24C196640](v263, v264);

      if (!--v134)
      {
        goto LABEL_32;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:

  (*v221)(v68, v249);

  v198 = v231;
  v199 = v245;
  v223(v231, v222, v245);
  v200 = v241;
  v225(v241, v94, v60);
  v201 = sub_2460918D4();
  v202 = sub_246091FC4();
  if (os_log_type_enabled(v201, v202))
  {
    v203 = swift_slowAlloc();
    v204 = swift_slowAlloc();
    v266[0] = v204;
    *v203 = v219;
    *(v203 + 4) = sub_245F8D3C0(0xD000000000000021, v220, v266);
    *(v203 + 12) = 2081;
    sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v205 = sub_2460923D4();
    v206 = v60;
    v208 = v207;
    v209 = v200;
    v210 = v94;
    v211 = v228;
    v228(v209, v206);
    v212 = sub_245F8D3C0(v205, v208, v266);

    *(v203 + 14) = v212;
    _os_log_impl(&dword_245F8A000, v201, v202, "MeshWriter.%{private}s: Saved mesh anchor at %{private}s", v203, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v204, -1, -1);
    MEMORY[0x24C1989D0](v203, -1, -1);

    v227(v198, v245);
    v211(v210, v256);
  }

  else
  {

    v214 = v228;
    v228(v200, v60);
    v227(v198, v199);
    v214(v94, v60);
  }

  return 1;
}

uint64_t sub_245FA21E0(void *a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v8 = &off_278E99000;
  result = [a1 count];
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_18:
      [a1 v8[72]];
      return 0;
    }

    v11 = 0;
    while (v10 != v11)
    {
      result = [a1 format];
      if (result != 30)
      {
        goto LABEL_20;
      }

      v12 = [a1 buffer];
      [v12 contents];
      v13 = v12;
      v14 = [a1 offset];
      result = [a1 stride];
      if ((result * v11) >> 64 != (result * v11) >> 63)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v14, result * v11))
      {
        goto LABEL_22;
      }

      if (a2)
      {
        v15 = a2;
        result = [v15 format];
        if (result != 30)
        {
          goto LABEL_23;
        }

        v16 = [v15 buffer];
        [v16 contents];
        v17 = v16;
        v18 = [v15 offset];
        result = [v15 stride];
        if ((result * v11) >> 64 != (result * v11) >> 63)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v18, result * v11))
        {
          goto LABEL_25;
        }

        sub_246092284();
        MEMORY[0x24C196640](8310, 0xE200000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](10, 0xE100000000000000);
        MEMORY[0x24C196640](0, 0xE000000000000000);
      }

      else
      {
        sub_246092284();
        MEMORY[0x24C196640](8310, 0xE200000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](10, 0xE100000000000000);
        MEMORY[0x24C196640](0, 0xE000000000000000);
      }

      ++v11;

      if (v10 == v11)
      {
        v8 = &off_278E99000;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_245FA26AC()
{
  v0 = swift_allocObject();
  result = 0.00781250185;
  *(v0 + 16) = xmmword_246096F80;
  return result;
}

char *sub_245FA26DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&unk_27EE3B240, &unk_246097000);
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

char *sub_245FA27E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A088, "pQ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_245FA28E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FA2954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FA29B8(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_245FA2A38()
{
  result = qword_27EE3A340;
  if (!qword_27EE3A340)
  {
    sub_245F9135C(&qword_27EE3A2F0, &unk_246096850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A340);
  }

  return result;
}

uint64_t sub_245FA2A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_245FA2AE4()
{
  result = qword_27EE3AD30;
  if (!qword_27EE3AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AD30);
  }

  return result;
}

unint64_t sub_245FA2B38()
{
  result = qword_27EE3AD40;
  if (!qword_27EE3AD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3AD40);
  }

  return result;
}

id sub_245FA2BE8(uint64_t a1, uint64_t a2)
{
  sub_245FA30EC(0, &qword_27EE3A090, 0x277CE53B0);
  v3 = [swift_getObjCClassFromMetadata() supportedVideoFormats];
  sub_245FA30EC(0, &qword_27EE3A098, 0x277CE5398);
  v4 = sub_246091DD4();

  if (v4 >> 62)
  {
LABEL_35:
    v5 = sub_246092354();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v24 = 0;
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v30 = v4 & 0xFFFFFFFFFFFFFF8;
      v28 = 0;
      v29 = v4 + 32;
      v26 = 1;
      v27 = v4;
      while (1)
      {
        while (1)
        {
          if (v7)
          {
            v8 = MEMORY[0x24C196C20](v6, v4);
          }

          else
          {
            if (v6 >= *(v30 + 16))
            {
              goto LABEL_34;
            }

            v8 = *(v29 + 8 * v6);
          }

          v9 = v8;
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v11 = [v8 deviceFormat];
          v12 = sub_246092094();

          if ([v9 isRecommendedForHighResolutionFrameCapturing])
          {
            v13 = *(v12 + 16);
            if (v13)
            {
              break;
            }
          }

          if (v6 == v5)
          {
            goto LABEL_37;
          }
        }

        v14 = 0;
        v15 = (v12 + 36);
        v16 = 1;
        do
        {
          v17 = *v15;
          if (v17 <= a1)
          {
            v18 = v17 <= SHIDWORD(v14);
            v19 = *(v15 - 1) | (v17 << 32);
            if (v18)
            {
              v20 = v14;
            }

            else
            {
              v20 = v19;
            }

            v21 = (v16 & 1) == 0;
            v16 = 0;
            if (v21)
            {
              v14 = v20;
            }

            else
            {
              v14 = v19;
            }
          }

          v15 += 2;
          --v13;
        }

        while (v13);
        if (v16)
        {
        }

        else
        {
          if ((*(a2 + 8) & 1) != 0 || *(a2 + 4) < SHIDWORD(v14))
          {

            *a2 = v14;
            *(a2 + 8) = 0;
          }

          else
          {
            result = [v9 framesPerSecond];
            if (v26)
            {
              __break(1u);
              return result;
            }

            v23 = result;

            if (v23 >= v24)
            {

              v26 = 0;
              goto LABEL_27;
            }

            *a2 = v14;
            *(a2 + 8) = 0;
          }

          v24 = [v9 framesPerSecond];
          v26 = 0;
          v28 = v9;
        }

LABEL_27:
        v4 = v27;
        if (v6 == v5)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v28 = 0;
LABEL_37:

  return v28;
}

id sub_245FA2EBC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_245FA2F08(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_245FA2F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_245FA2F7C()
{
  sub_245FA30EC(0, &qword_27EE3A090, 0x277CE53B0);
  v0 = [swift_getObjCClassFromMetadata() supportedVideoFormats];
  sub_245FA30EC(0, &qword_27EE3A098, 0x277CE5398);
  v1 = sub_246091DD4();

  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_246092354())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C196C20](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isRecommendedForHighResolutionFrameCapturing] && objc_msgSend(v5, sel_framesPerSecond) == 30)
      {

        return v5;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_245FA30EC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_245FA3198(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_245FA331C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2460918F4();
  sub_245FA341C(v5, a2);
  sub_245FA3198(v5, a2);
  return sub_2460918E4();
}

uint64_t sub_245FA33B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2460918F4();

  return sub_245FA3198(v4, a2);
}

uint64_t *sub_245FA341C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_245FA3480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_245FA34CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_245FA3544(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ObjectCaptureImageFolderReader.__allocating_init(url:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ObjectCaptureImageFolderReader.init(url:)(a1);
  return v2;
}

uint64_t ObjectCaptureImageFolderReader.init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v38 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors) = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_invalidSampleIds) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle) = 0;
  v12 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_folderUrl;
  v13 = sub_246091704();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 16);
  v46 = a1;
  v14(v2 + v12, a1);
  v15 = sub_245FA3174();
  v16 = *(v5 + 16);
  v41 = v15;
  v42 = v16;
  (v16)(v11);

  v17 = sub_2460918D4();
  v18 = sub_246091FC4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47[0] = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v22 = sub_2460916F4();
    v24 = sub_245F8D3C0(v22, v23, v47);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_245F8A000, v17, v18, "Object Capture Image folder Reader: Reader input URL: %{private,mask.hash}s", v20, 0x16u);
    sub_245F8E6F4(v21);
    MEMORY[0x24C1989D0](v21, -1, -1);
    v25 = v20;
    v4 = v39;
    MEMORY[0x24C1989D0](v25, -1, -1);
  }

  v26 = *(v5 + 8);
  v26(v11, v4);
  v27 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  swift_beginAccess();
  v28 = OCNonModularSPI_CMPhoto_HeicReadCreate();
  swift_endAccess();
  v29 = v43;
  if (!v28)
  {
    if (!OCNonModularSPI_CMPhoto_HeicReadStart())
    {
      (*(v44 + 8))(v46, v45);
      return v2;
    }

    OCNonModularSPI_CMPhoto_HeicReadDestroy();
    *(v2 + v27) = 0;
    v29 = v40;
    v42(v40, v41, v4);
    v30 = sub_2460918D4();
    v31 = sub_246091FB4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v4;
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Image Folder Reader: Failed to start the image folder reader.";
      goto LABEL_9;
    }

LABEL_10:

    (*(v44 + 8))(v46, v45);
    v35 = v29;
    v36 = v4;
    goto LABEL_11;
  }

  v42(v43, v41, v4);
  v30 = sub_2460918D4();
  v31 = sub_246091FB4();
  if (!os_log_type_enabled(v30, v31))
  {
    goto LABEL_10;
  }

  v32 = v4;
  v33 = swift_slowAlloc();
  *v33 = 0;
  v34 = "Image Folder Reader: Failed to initialize the image folder reader.";
LABEL_9:
  _os_log_impl(&dword_245F8A000, v30, v31, v34, v33, 2u);
  MEMORY[0x24C1989D0](v33, -1, -1);

  (*(v44 + 8))(v46, v45);
  v35 = v29;
  v36 = v32;
LABEL_11:
  v26(v35, v36);
  return v2;
}

uint64_t ObjectCaptureImageFolderReader.deinit()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Stop = OCNonModularSPI_CMPhoto_HeicReadStop();
  Destroy = OCNonModularSPI_CMPhoto_HeicReadDestroy();
  v8 = sub_245FA3174();
  (*(v3 + 16))(v5, v8, v2);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240448;
    *(v11 + 4) = Stop;
    *(v11 + 8) = 1026;
    *(v11 + 10) = Destroy;
    _os_log_impl(&dword_245F8A000, v9, v10, "Image Folder Reader: HEIC bundle reader stopped with state %{public}d and destroyed with state %{public}d", v11, 0xEu);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v12 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_folderUrl;
  v13 = sub_246091704();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  return v1;
}

uint64_t ObjectCaptureImageFolderReader.__deallocating_deinit()
{
  ObjectCaptureImageFolderReader.deinit();

  return swift_deallocClassInstance();
}

void *sub_245FA3CD0()
{
  v2 = 0xD000000000000034;
  v3 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  swift_beginAccess();
  if (!*(v0 + v3))
  {
    v5 = "com.apple.CoreOC";
    v2 = 0xD000000000000051;
    goto LABEL_6;
  }

  sub_245FA90D4();
  if (!v1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors);
    if (v4)
    {
      sub_245F8E624(&qword_27EE3A0A8, &qword_246097090);
      v1 = swift_allocObject();
      v1[2] = v4;
      v1[3] = sub_245FAC760;
      v1[4] = v0;
      v1[5] = sub_245FA6808;
      v1[6] = 0;
      v1[7] = sub_245FA68D4;
      v1[8] = 0;

      return v1;
    }

    v5 = "HEIC read handle.";
LABEL_6:
    v6 = v5 | 0x8000000000000000;
    sub_245FAC70C();
    v7 = swift_allocError();
    *v8 = v2;
    *(v8 + 8) = v6;
    *(v8 + 16) = 1;
    v1 = v7;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_245FA3E24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v74 = a3;
  v4 = type metadata accessor for PhotogrammetrySample(0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67[0] = v67 - v7;
  v82 = sub_2460918F4();
  v8 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v76 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v67 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v67 - v14;
  v16 = sub_246091704();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v75 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v67 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v67 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v67 - v27;
  v81 = v17;
  v31 = *(v17 + 16);
  v30 = v17 + 16;
  v29 = v31;
  (v31)(v67 - v27, a1, v16, v26);
  v78 = *&a1[*(type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor(0) + 20)];
  v67[1] = type metadata accessor for PhotogrammetryImageHelper();
  LOBYTE(a1) = sub_245F9AFEC();
  v32 = sub_245FA3174();
  v79 = v28;
  v80 = v8;
  v33 = *(v8 + 16);
  v70 = v8 + 16;
  v71 = v31;
  v69 = v33;
  if ((a1 & 1) == 0)
  {
    v33(v12, v32, v82);
    v29(v21, v28, v16);
    v46 = sub_2460918D4();
    v47 = v16;
    v48 = sub_246091FC4();
    if (os_log_type_enabled(v46, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v83[0] = v50;
      *v49 = 134349571;
      v51 = v78;
      *(v49 + 4) = v78;
      *(v49 + 12) = 2160;
      *(v49 + 14) = 1752392040;
      *(v49 + 22) = 2081;
      v68 = v30;
      v52 = v47;
      v53 = sub_2460916F4();
      v55 = v54;
      v73 = *(v81 + 8);
      v73(v21, v52);
      v56 = sub_245F8D3C0(v53, v55, v83);

      *(v49 + 24) = v56;
      _os_log_impl(&dword_245F8A000, v46, v48, "Image Folder Reader: Reading sample from non-HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v49, 0x20u);
      sub_245F8E6F4(v50);
      MEMORY[0x24C1989D0](v50, -1, -1);
      v57 = v49;
      v28 = v79;
      MEMORY[0x24C1989D0](v57, -1, -1);

      (*(v80 + 8))(v12, v82);
      v58 = v52;
    }

    else
    {

      v73 = *(v81 + 8);
      v73(v21, v47);
      (*(v80 + 8))(v12, v82);
      v58 = v47;
      v51 = v78;
    }

    v65 = v72;
    sub_245F994C8(v51, v28, v72);
    v73(v28, v58);
    v66 = v65;
    goto LABEL_11;
  }

  v33(v15, v32, v82);
  v68 = v30;
  v29(v24, v28, v16);
  v34 = sub_2460918D4();
  v35 = sub_246091FC4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v72 = v16;
    v38 = v37;
    v83[0] = v37;
    *v36 = 134349571;
    *(v36 + 4) = v78;
    *(v36 + 12) = 2160;
    *(v36 + 14) = 1752392040;
    *(v36 + 22) = 2081;
    v39 = sub_2460916F4();
    v41 = v40;
    v73 = *(v81 + 8);
    v73(v24, v72);
    v42 = sub_245F8D3C0(v39, v41, v83);
    v43 = v80;

    *(v36 + 24) = v42;
    _os_log_impl(&dword_245F8A000, v34, v35, "Image Folder Reader: Reading sample from HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v36, 0x20u);
    sub_245F8E6F4(v38);
    v44 = v38;
    v16 = v72;
    MEMORY[0x24C1989D0](v44, -1, -1);
    MEMORY[0x24C1989D0](v36, -1, -1);

    v45 = v43;
  }

  else
  {

    v73 = *(v81 + 8);
    v73(v24, v16);
    v45 = v80;
  }

  (*(v45 + 8))(v15, v82);
  v59 = v77;
  v60 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  result = swift_beginAccess();
  v62 = *(v59 + v60);
  v63 = v79;
  if (v62)
  {
    type metadata accessor for ObjectCaptureImageFolderReader(0);
    v64 = v67[0];
    sub_245FA47E0(v78, v63, v62, v67[0]);
    v73(v63, v16);
    v66 = v64;
LABEL_11:
    sub_245FAED94(v66, v74, type metadata accessor for PhotogrammetrySample);
    sub_245F8E624(&qword_27EE3A0F0, &unk_246097230);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

void sub_245FA47E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v295 = a3;
  v289 = a1;
  v339 = *MEMORY[0x277D85DE8];
  v6 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v6 - 8);
  v275.i64[0] = &v253 - v7;
  *&v285 = sub_2460917D4();
  *&v284 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  *&v277 = &v253 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  MEMORY[0x28223BE20](v9 - 8);
  v276 = &v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v287 = &v253 - v12;
  *&v288 = type metadata accessor for PhotogrammetrySample(0);
  MEMORY[0x28223BE20](v288);
  v299 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_246091704();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v281 = &v253 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v253 - v18;
  v20 = sub_2460918F4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v286 = &v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v273 = &v253 - v24;
  MEMORY[0x28223BE20](v25);
  v270 = &v253 - v26;
  MEMORY[0x28223BE20](v27);
  v274 = &v253 - v28;
  MEMORY[0x28223BE20](v29);
  v271 = &v253 - v30;
  MEMORY[0x28223BE20](v31);
  v269 = &v253 - v32;
  MEMORY[0x28223BE20](v33);
  v272 = &v253 - v34;
  MEMORY[0x28223BE20](v35);
  v294 = &v253 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v253 - v38;
  v40 = sub_245FA3174();
  v297 = v21;
  v298 = v20;
  v41 = *(v21 + 16);
  v291 = v40;
  v292 = v21 + 16;
  v290 = v41;
  (v41)(v39);
  v42 = *(v15 + 16);
  v43 = v19;
  v296 = a2;
  v278 = v42;
  v279 = v15 + 16;
  v42(v19, a2, v14);
  v44 = sub_2460918D4();
  v45 = sub_246091FC4();
  v46 = os_log_type_enabled(v44, v45);
  v282 = v14;
  v283 = a4;
  v280 = v15;
  if (v46)
  {
    v47 = v14;
    v48 = swift_slowAlloc();
    v293 = swift_slowAlloc();
    *&v306 = v293;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    v49 = v43;
    v268 = sub_2460916F4();
    v51 = v50;
    v52 = v47;
    v53 = *(v15 + 8);
    v53(v49, v52);
    v54 = sub_245F8D3C0(v268, v51, &v306);
    v55 = v298;

    *(v48 + 14) = v54;
    _os_log_impl(&dword_245F8A000, v44, v45, "Image Folder Reader: Trying to read sample %{private,mask.hash}s.", v48, 0x16u);
    v56 = v293;
    sub_245F8E6F4(v293);
    MEMORY[0x24C1989D0](v56, -1, -1);
    MEMORY[0x24C1989D0](v48, -1, -1);

    v57 = *(v297 + 8);
    v58 = v39;
    v59 = v55;
  }

  else
  {

    v53 = *(v15 + 8);
    v53(v43, v14);
    v59 = v298;
    v57 = *(v297 + 8);
    v58 = v39;
  }

  v293 = v57;
  (v57)(v58, v59);
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v315 = 0u;
  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v310 = 0u;
  v309 = 0u;
  v308 = 0u;
  v307 = 0u;
  v306 = 0u;
  v60 = sub_246091674();
  v61 = OCNonModularSPI_CMPhoto_read();

  if (v61)
  {
    v305[0].boundingBox.columns[0].i64[0] = 0;
    v305[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD00000000000003FLL, 0x800000024609EE20);
    v62 = sub_2460916F4();
    MEMORY[0x24C196640](v62);

    MEMORY[0x24C196640](46, 0xE100000000000000);
    v63 = v305[0].boundingBox.columns[0];
    sub_245FAC70C();
    swift_allocError();
    *v64 = v63;
    v64[1].i8[0] = 1;
    swift_willThrow();
    return;
  }

  v259 = v53;
  v65 = v306;
  if (!v306)
  {
    __break(1u);
    return;
  }

  v265 = *(&v308 + 1);
  v266 = v308;
  v267 = *(&v307 + 1);
  v295 = *(&v306 + 1);
  v263 = v334;
  v66 = v309;
  v67 = *(&v331 + 1);
  if (*(&v331 + 1))
  {
    v260 = sub_246091C04();
    v261 = v68;

    v69 = *(&v332 + 1);
    if (*(&v332 + 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v260 = 0;
    v261 = 0;
    v69 = *(&v332 + 1);
    if (*(&v332 + 1))
    {
LABEL_9:
      v70 = sub_246091C04();
      v72 = v71;

      v73 = v318;
      if (v318)
      {
        goto LABEL_10;
      }

LABEL_16:
      v74 = v65;
      goto LABEL_18;
    }
  }

  v70 = 0;
  v72 = 0;
  v73 = v318;
  if (!v318)
  {
    goto LABEL_16;
  }

LABEL_10:
  v74 = v65;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_18:
    v75 = 0;
    v76 = v331;
    if (v331)
    {
      goto LABEL_13;
    }

LABEL_19:
    v264 = 0;
    v268 = 0xF000000000000000;
    goto LABEL_20;
  }

  v305[0].boundingBox.columns[0].i64[0] = 0;
  sub_246091B54();

  v75 = v305[0].boundingBox.columns[0].i64[0];
  if (!v305[0].boundingBox.columns[0].i64[0])
  {
    goto LABEL_18;
  }

  v76 = v331;
  if (!v331)
  {
    goto LABEL_19;
  }

LABEL_13:
  v264 = sub_246091744();
  v268 = v77;

LABEL_20:
  v78 = *(&v333 + 1);
  v79 = MEMORY[0x277D84F90];
  v262 = *(&v333 + 1);
  if (*(&v333 + 1))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v305[0].boundingBox.columns[0].i64[0] = 0;
      v80 = v75;
      v81 = v78;
      sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      sub_246091DC4();

      v75 = v80;
      v79 = MEMORY[0x277D84F90];
      if (v305[0].boundingBox.columns[0].i64[0])
      {
        v79 = v305[0].boundingBox.columns[0].i64[0];
      }
    }
  }

  if (!sub_245FC6568(v74))
  {

    v305[0].boundingBox.columns[0].i64[0] = 0;
    v305[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000026, 0x800000024609EE60);
    v304[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v74);
    v117 = sub_2460923D4();
    MEMORY[0x24C196640](v117);

    MEMORY[0x24C196640](0xD000000000000012, 0x800000024609EE90);
    v118 = v305[0].boundingBox.columns[0];
    sub_245FAC70C();
    swift_allocError();
    *v119 = v118;
    v119[1].i8[0] = 1;
    swift_willThrow();

    sub_245FAEC68(v264, v268);
    return;
  }

  v256 = v66;
  v257 = v75;
  v82 = v307;
  v258 = v74;
  PhotogrammetrySample.init(id:image:orientation:)(v289, v258, v82, v299);
  v290(v294, v291, v298);
  v83 = sub_2460918D4();
  v84 = sub_246091FA4();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v79;
    v86 = v72;
    v87 = swift_slowAlloc();
    *v87 = 134349056;
    *(v87 + 4) = v289;
    _os_log_impl(&dword_245F8A000, v83, v84, "Image Folder Reader: Initiate sample (id = %{public}ld)", v87, 0xCu);
    v88 = v87;
    v72 = v86;
    v79 = v85;
    MEMORY[0x24C1989D0](v88, -1, -1);
  }

  v297 += 8;
  (v293)(v294, v298);
  v90 = v266;
  v89 = v267;
  if (v267)
  {
    v91 = v267;
    if (!sub_245FC664C(v91))
    {

      v305[0].boundingBox.columns[0].i64[0] = 0;
      v305[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0xD000000000000032, 0x800000024609EF30);
      v304[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v91);
      v120 = sub_2460923D4();
      MEMORY[0x24C196640](v120);

      MEMORY[0x24C196640](46, 0xE100000000000000);
      v121 = v305[0].boundingBox.columns[0];
      sub_245FAC70C();
      v122 = v90;
      swift_allocError();
      *v123 = v121;
      v123[1].i8[0] = 1;
      swift_willThrow();

      sub_245FAEC68(v264, v268);
      v124 = v265;
LABEL_46:

      v129 = v299;
      goto LABEL_111;
    }

    v92 = v299;

    *(v92 + 32) = v89;
  }

  if (!v90)
  {
LABEL_33:
    v95 = v265;
    if (!v265)
    {
      goto LABEL_36;
    }

    v96 = v265;
    if (sub_245FC66D0(v96))
    {
      v97 = v299;

      *(v97 + 80) = v95;
LABEL_36:
      v255 = v70;
      if (v295)
      {
        objc_opt_self();
        v98 = swift_dynamicCastObjCClass();
        v99 = v276;
        if (v98)
        {
          v305[0].boundingBox.columns[0].i64[0] = 0;
          v100 = v295;
          sub_246091B54();

          v101 = v305[0].boundingBox.columns[0].i64[0];
          if (v305[0].boundingBox.columns[0].i64[0])
          {
            v102 = v79;
            v254 = v72;
            v103 = v299;

            *(v103 + 24) = v101;
            type metadata accessor for PhotogrammetryMetadataHelper();
            v104 = sub_245F8BD84(v101);
            v105 = *(*v104 + 176);

            v106 = v105();
            v108 = v107;
            v110 = v109;
            v112 = v111;
            v294 = v104;

            *(v103 + 48) = v106;
            *(v103 + 56) = v108;
            *(v103 + 64) = v110;
            *(v103 + 72) = v112 & 1;
            if (v112)
            {
              v113 = v269;
              v290(v269, v291, v298);
              v114 = sub_2460918D4();
              v115 = sub_246091FB4();
              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                *v116 = 134349056;
                *(v116 + 4) = v289;
                _os_log_impl(&dword_245F8A000, v114, v115, "Image Folder Reader: Failed to parse gravity field of sample (id = %{public}ld)", v116, 0xCu);
                v272 = v113;
LABEL_51:
                v79 = v102;
                v135 = v271;
                MEMORY[0x24C1989D0](v116, -1, -1);
                v72 = v254;
                v133 = v272;
LABEL_54:

                v136 = v133;
                v137 = v298;
                v138 = (v293)(v136, v298);
                v139 = (*(*v294 + 192))(v138);
                v140 = v299;
                *(v299 + 720) = v139;
                *(v140 + 728) = v141 & 1;
                v290(v135, v291, v137);
                v142 = sub_2460918D4();
                v143 = sub_246091FA4();
                if (os_log_type_enabled(v142, v143))
                {
                  v144 = swift_slowAlloc();
                  *v144 = 134349056;
                  *(v144 + 4) = v289;
                  _os_log_impl(&dword_245F8A000, v142, v143, "Image Folder Reader: Parsed metadata and timestamp fields of sample (id = %{public}ld)", v144, 0xCu);
                  v145 = v144;
                  v72 = v254;
                  MEMORY[0x24C1989D0](v145, -1, -1);
                }

                (v293)(v135, v298);
                goto LABEL_57;
              }

              v133 = v113;
            }

            else
            {
              v133 = v272;
              v290(v272, v291, v298);
              v114 = sub_2460918D4();
              v134 = sub_246091FC4();
              if (os_log_type_enabled(v114, v134))
              {
                v116 = swift_slowAlloc();
                *v116 = 134349056;
                *(v116 + 4) = v289;
                _os_log_impl(&dword_245F8A000, v114, v134, "Image Folder Reader: Parsed gravity field of sample (id = %{public}ld)", v116, 0xCu);
                goto LABEL_51;
              }
            }

            v72 = v254;
            v79 = v102;
            v135 = v271;
            goto LABEL_54;
          }
        }

        v294 = 0;
      }

      else
      {
        v294 = 0;
        v99 = v276;
      }

LABEL_57:
      type metadata accessor for PhotogrammetryImageHelper();
      v146 = v287;
      sub_245F9A538(v296, v287);
      sub_245F8E7A4(v146, v99, &qword_27EE39F80, &unk_246096C10);
      v147 = v284;
      v148 = v285;
      if ((*(v284 + 48))(v99, 1, v285) == 1)
      {
        sub_245F8E744(v99, &qword_27EE39F80, &unk_246096C10);
      }

      else
      {
        v149 = v277;
        (*(v147 + 32))(v277, v99, v148);
        v150 = v147;
        v151 = *(v288 + 76);
        v152 = v299;
        sub_245F8E744(v299 + v151, &qword_27EE39F80, &unk_246096C10);
        (*(v150 + 16))(v152 + v151, v149, v148);
        (*(v150 + 56))(v152 + v151, 0, 1, v148);
        v153 = v274;
        v290(v274, v291, v298);
        v154 = sub_2460918D4();
        v155 = sub_246091FC4();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = v79;
          v157 = v72;
          v158 = swift_slowAlloc();
          *v158 = 134349056;
          *(v158 + 4) = v289;
          _os_log_impl(&dword_245F8A000, v154, v155, "Image Folder Reader: Parsed EXIF capture timestamp field of sample (id = %{public}ld)", v158, 0xCu);
          v159 = v158;
          v72 = v157;
          v79 = v156;
          MEMORY[0x24C1989D0](v159, -1, -1);
        }

        (v293)(v153, v298);
        (*(v284 + 8))(v277, v285);
      }

      LODWORD(v160) = sub_245FFF464(v314);
      if (v160 == 6)
      {
        v160 = 0;
      }

      else
      {
        v160 = v160;
      }

      sub_245FFF494(v160, v305);
      LODWORD(v276) = v305[0].boundingBox.columns[0].u8[0];
      v161 = v288;
      if (v268 >> 60 != 15)
      {
        v162 = objc_allocWithZone(MEMORY[0x277CE5320]);
        v163 = v264;
        v164 = v268;
        sub_245FAED40(v264, v268);
        v165 = sub_246091734();
        v166 = [v162 initWithPointData_];

        v167 = v163;
        v161 = v288;
        sub_245FAEC68(v167, v164);
        v168 = v299;

        *(v168 + 712) = v166;
      }

      ObjectCaptureSession.Frame.Feedback.init(rawValue:)(SDWORD1(v333));
      v169 = v299;
      v170 = v299 + v161[23];
      *v170 = v305[0].boundingBox.columns[0].i64[0];
      *(v170 + 8) = 0;

      *(v169 + 88) = v256;
      v171 = (v169 + v161[22]);
      v173 = v260;
      v172 = v261;
      *v171 = v260;
      v171[1] = v172;

      v174 = v298;
      if (v172)
      {
        v175 = sub_246091188();
        if (*v175 == v173 && v172 == *(v175 + 1))
        {
        }

        else
        {
          v176 = v175;
          if (sub_2460923E4())
          {

            v161 = v288;
          }

          else
          {
            *&v285 = v79;
            v254 = v72;
            v177 = v270;
            v290(v270, v291, v174);

            v178 = sub_2460918D4();
            v179 = sub_246091FB4();

            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v305[0].boundingBox.columns[0].i64[0] = v181;
              *v180 = 136446466;
              v173 = v260;
              v182 = sub_245F8D3C0(v260, v172, v305);

              *(v180 + 4) = v182;
              *(v180 + 12) = 2082;
              v183 = *v176;
              v184 = v176[1];

              v185 = sub_245F8D3C0(v183, v184, v305);

              *(v180 + 14) = v185;
              _os_log_impl(&dword_245F8A000, v178, v179, "Image Folder Reader: The version of the object capture bundle (version = %{public}s) and the bundle reader (version = %{public}s) are different.", v180, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v181, -1, -1);
              MEMORY[0x24C1989D0](v180, -1, -1);

              (v293)(v270, v298);
              v161 = v288;
              v72 = v254;
              v79 = v285;
            }

            else
            {

              (v293)(v177, v174);
              v161 = v288;
              v72 = v254;
              v79 = v285;
              v173 = v260;
            }
          }
        }
      }

      *&v186 = sub_245FABAE4(v333, v173, v172, v327, v328, v329, v330);
      v277 = v186;
      v284 = v187;
      v285 = v188;
      v288 = v189;
      v190 = v333;
      v192 = sub_246021E38(v191, v327, v328, v329, v330);
      if (v190 == 1)
      {
        if (v192)
        {
          PhotogrammetrySample.Scene.init(boundingBox:)(v305, v192);
          v199 = v305[0].boundingBox.columns[1];
          v200 = v305[0].boundingBox.columns[2];
          v201 = v305[0].boundingBox.columns[3];
          v304[0].transform.columns[0].i8[0] = 0;
          v202 = v299;
          *(v299 + 624) = v305[0].boundingBox.columns[0];
          *(v202 + 640) = v199;
          *(v202 + 656) = v200;
          *(v202 + 672) = v201;
          *(v202 + 688) = 0;
        }
      }

      else if (v192)
      {
        PhotogrammetrySample.Object.init(transform:boundingBox:)(v304, v192, v193);
        v305[1] = v304[0].boundingBox;
        v305[0] = v304[0].transform;
        sub_245F97D8C(v305);
        v194 = v305[1].boundingBox.columns[3];
        v195 = v299;
        *(v299 + 576) = v305[1].boundingBox.columns[2];
        *(v195 + 592) = v194;
        *(v195 + 608) = v305[2].boundingBox.columns[0].i8[0];
        v196 = v305[0].boundingBox.columns[3];
        *(v195 + 512) = v305[0].boundingBox.columns[2];
        *(v195 + 528) = v196;
        v197 = v305[1].boundingBox.columns[1];
        *(v195 + 544) = v305[1].boundingBox.columns[0];
        *(v195 + 560) = v197;
        v198 = v305[0].boundingBox.columns[1];
        *(v195 + 480) = v305[0].boundingBox.columns[0];
        *(v195 + 496) = v198;
      }

      v203 = v299 + v161[21];
      *v203 = v332;
      *(v203 + 8) = 0;
      if (v72)
      {
        v204 = v275.i64[0];
        sub_2460917E4();

        sub_245FAECD0(v204, v299 + v161[20]);
      }

      v205 = v299;
      *(v299 + 696) = v333;
      *(v205 + 704) = 0;
      v288 = v319;
      v284 = v321;
      v285 = v320;
      v277 = v322;
      v206 = v161[24];

      *(v205 + v206) = MEMORY[0x277D84F90];
      v207 = v79;
      v208 = *(v79 + 16);
      if (v208)
      {
        type metadata accessor for TemporalDepthPointCloud();
        v209 = v207 + 32;
        do
        {

          sub_245FC7524(v210);
          if (v211)
          {

            v213 = v299;
            MEMORY[0x24C196720](v212);
            if (*((*(v213 + v206) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v213 + v206) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_246091DF4();
            }

            sub_246091E34();
          }

          v209 += 8;
          --v208;
        }

        while (v208);
      }

      if (!v294 || (v215 = (*(*v294 + 200))(v214), v216 = v215, (v215 & 0x100000000) != 0))
      {
        v216 = 0;
      }

      OCNonModularSPI_Serialization_InvalidCameraIntrinsics();
      v218 = vdupq_n_s32(0x38D1B717u);
      v221 = vandq_s8(vandq_s8(vcgeq_f32(v218, vabdq_f32(v217, v315)), vcgeq_f32(v218, vabdq_f32(v219, v316))), vcgeq_f32(v218, vabdq_f32(v220, v317)));
      v221.i32[3] = v221.i32[2];
      v222 = v298;
      v223 = v286;
      v224 = v296;
      v225 = v281;
      v226 = v257;
      if ((vminvq_u32(v221) & 0x80000000) != 0 || (v275 = v218, OCNonModularSPI_Serialization_InvalidCameraTransform(), (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v275, vabdq_f32(v228, v311)), vcgeq_f32(v275, vabdq_f32(v227, v310))), vandq_s8(vcgeq_f32(v275, vabdq_f32(v229, v312)), vcgeq_f32(v275, vabdq_f32(v230, v313))))) & 0x80000000) != 0))
      {
      }

      else
      {
        v301[0] = v315;
        v301[1] = v316;
        v301[2] = v317;
        v305[0].boundingBox.columns[0].i8[0] = v276;
        v300 = 0;
        v337[0] = v288;
        v337[1] = v285;
        v337[2] = v284;
        v337[3] = v277;
        v338 = 0;
        PhotogrammetrySample.Camera.init(id:intrinsics:transform:trackingState:calibrationData:wideToDepthTransform:)(v216, v301, v305, 0, v337, v303, v310, v311, v312, v313);
        nullsub_1();
        v231 = v299;
        memcpy(v304, (v299 + 96), 0x171uLL);
        sub_245F8E744(v304, &qword_27EE39F78, &unk_246096990);
        memcpy((v231 + 96), v303, 0x171uLL);
        memcpy(v305, v303, 0x171uLL);
        if (sub_245F97C38(v305) != 1)
        {
          v302[0] = 1;
          memset(v335, 0, sizeof(v335));
          v336 = 1;
          sub_245F95934(v335, v335);
        }

        memcpy(v302, (v299 + 96), 0x171uLL);
        if (sub_245F97C38(v302) == 1)
        {
        }

        else
        {
          if (v226)
          {
            v232 = sub_246091B34();
          }

          else
          {
            v232 = 0;
          }

          v233 = OCNonModularSPI_AVCameraCalibrationData_InitFrom();

          v234 = v299;
          *(v234 + 232) = v233;
        }

        v235 = v273;
        v290(v273, v291, v222);
        v236 = sub_2460918D4();
        v237 = sub_246091FA4();
        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          *v238 = 134349056;
          *(v238 + 4) = v289;
          _os_log_impl(&dword_245F8A000, v236, v237, "Image Folder Reader: Read camera field of sample (id = %{public}ld)", v238, 0xCu);
          v239 = v238;
          v224 = v296;
          MEMORY[0x24C1989D0](v239, -1, -1);
        }

        (v293)(v235, v222);
      }

      v290(v223, v291, v222);
      v240 = v282;
      v278(v225, v224, v282);
      v241 = sub_2460918D4();
      v242 = sub_246091FC4();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        v244 = swift_slowAlloc();
        v305[0].boundingBox.columns[0].i64[0] = v244;
        *v243 = 141558275;
        *(v243 + 4) = 1752392040;
        *(v243 + 12) = 2081;
        v245 = sub_2460916F4();
        v246 = v225;
        v248 = v247;
        v259(v246, v240);
        v249 = sub_245F8D3C0(v245, v248, v305);

        *(v243 + 14) = v249;
        _os_log_impl(&dword_245F8A000, v241, v242, "Image Folder Reader: Successfully read sample %{private,mask.hash}s", v243, 0x16u);
        sub_245F8E6F4(v244);
        MEMORY[0x24C1989D0](v244, -1, -1);
        MEMORY[0x24C1989D0](v243, -1, -1);

        sub_245FAEC68(v264, v268);

        v250 = v286;
        v251 = v298;
      }

      else
      {

        sub_245FAEC68(v264, v268);

        v259(v225, v240);
        v250 = v223;
        v251 = v222;
      }

      (v293)(v250, v251);
      sub_245F8E744(v287, &qword_27EE39F80, &unk_246096C10);
      v252 = v299;
      sub_245F97CCC(v299, v283);
      v129 = v252;
      goto LABEL_111;
    }

    v305[0].boundingBox.columns[0].i64[0] = 0;
    v305[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000034, 0x800000024609EEB0);
    v304[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v96);
    v130 = sub_2460923D4();
    MEMORY[0x24C196640](v130);

    MEMORY[0x24C196640](46, 0xE100000000000000);
    v131 = v305[0].boundingBox.columns[0];
    sub_245FAC70C();
    v122 = v90;
    swift_allocError();
    *v132 = v131;
    v132[1].i8[0] = 1;
    swift_willThrow();

    sub_245FAEC68(v264, v268);
    v124 = v295;
    goto LABEL_46;
  }

  v93 = v90;
  if (sub_245FC6820(v93))
  {
    v94 = v299;

    *(v94 + 40) = v90;
    goto LABEL_33;
  }

  v305[0].boundingBox.columns[0].i64[0] = 0;
  v305[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
  sub_246092284();
  MEMORY[0x24C196640](0xD00000000000003DLL, 0x800000024609EEF0);
  v304[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v93);
  v125 = sub_2460923D4();
  v126 = v295;
  MEMORY[0x24C196640](v125);

  MEMORY[0x24C196640](46, 0xE100000000000000);
  v127 = v305[0].boundingBox.columns[0];
  sub_245FAC70C();
  swift_allocError();
  *v128 = v127;
  v128[1].i8[0] = 1;
  swift_willThrow();

  sub_245FAEC68(v264, v268);
  v129 = v299;
LABEL_111:
  sub_245F97D30(v129);
}

BOOL sub_245FA6808(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A0F0, &unk_246097230);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  sub_245F8E7A4(a1, &v7 - v3, &qword_27EE3A0F0, &unk_246097230);
  v5 = swift_getEnumCaseMultiPayload() != 1;
  sub_245F8E744(v4, &qword_27EE3A0F0, &unk_246097230);
  return v5;
}

uint64_t sub_245FA68D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_245F8E624(&qword_27EE3A0F0, &unk_246097230);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_245F8E7A4(a1, &v8 - v5, &qword_27EE3A0F0, &unk_246097230);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_245FAED94(v6, a2, type metadata accessor for PhotogrammetrySample);
  }

  result = sub_246092344();
  __break(1u);
  return result;
}

void *sub_245FA6A0C(uint64_t a1)
{
  v4 = 0xD000000000000034;
  v5 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  swift_beginAccess();
  if (!*(v1 + v5))
  {
    v8 = "com.apple.CoreOC";
    v4 = 0xD000000000000051;
    goto LABEL_6;
  }

  sub_245FA90D4();
  if (!v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors);
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      *(v7 + 24) = a1;
      sub_245F8E624(&qword_27EE3A0B0, &qword_246097098);
      v2 = swift_allocObject();
      v2[2] = v6;
      v2[3] = sub_245FAC7A0;
      v2[4] = v7;
      v2[5] = sub_245FA6F14;
      v2[6] = 0;
      v2[7] = sub_245FA6F24;
      v2[8] = 0;

      return v2;
    }

    v8 = "HEIC read handle.";
LABEL_6:
    v9 = v8 | 0x8000000000000000;
    sub_245FAC70C();
    v10 = swift_allocError();
    *v11 = v4;
    *(v11 + 8) = v9;
    *(v11 + 16) = 1;
    v2 = v10;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_245FA6B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2460918F4();
  v16[4] = *(v6 - 8);
  v16[5] = v6;
  MEMORY[0x28223BE20](v6);
  v16[3] = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  (*(v9 + 16))(v16 - v12, a1, v8, v11);
  v14 = sub_245FABD88(v13, a2);
  result = (*(v9 + 8))(v13, v8);
  *a3 = v14;
  *(a3 + 8) = 0;
  return result;
}

id sub_245FA6F24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = sub_246092344();
    __break(1u);
  }

  else
  {
    v3 = *a1;
    *a2 = v3;

    return v3;
  }

  return result;
}

void *sub_245FA6FA8()
{
  v1 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_invalidSampleIds;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_245FAC688(*(v2 + 16), 0);
  v5 = sub_245FAE730(&v8, v4 + 4, v3, v2);
  v6 = v8;

  sub_245F8E6B8(v6);
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t static ObjectCaptureImageFolderReader.loadPhotogrammetrySample(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a1;
  v109 = a2;
  v107 = a3;
  v115 = *MEMORY[0x277D85DE8];
  v111 = sub_246091704();
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v104 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v110 = &v98 - v5;
  v6 = sub_2460918F4();
  v112 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v98 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v98 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v98 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v98 - v19);
  v21 = type metadata accessor for PhotogrammetrySample(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v98 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v98 - v28;
  v114 = 0;
  if (OCNonModularSPI_CMPhoto_HeicReadCreate())
  {
    v30 = sub_245FA3174();
    v31 = v112;
    (*(v112 + 16))(v8, v30, v6);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    v34 = v6;
    v35 = v31;
    if (os_log_type_enabled(v32, v33))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_245F8A000, v32, v33, "Image Folder Reader: Failed to initialize the image reade handle.", v36, 2u);
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v35 + 8))(v8, v34);
    v37 = 0x800000024609ECA0;
    sub_245FAC70C();
    swift_allocError();
    v39 = 0xD00000000000002BLL;
LABEL_9:
    *v38 = v39;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    return swift_willThrow();
  }

  v100 = v23;
  v101 = v14;
  v40 = v11;
  v102 = v29;
  v103 = v20;
  v99 = v26;
  v41 = v110;
  v42 = v111;
  v43 = v6;
  if (OCNonModularSPI_CMPhoto_HeicReadStart())
  {
    OCNonModularSPI_CMPhoto_HeicReadDestroy();
    v114 = 0;
    v44 = sub_245FA3174();
    v45 = v112;
    v46 = v40;
    (*(v112 + 16))(v40, v44, v6);
    v47 = sub_2460918D4();
    v48 = sub_246091FB4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_245F8A000, v47, v48, "Image Folder Reader: Failed to start the image reade handle.", v49, 2u);
      MEMORY[0x24C1989D0](v49, -1, -1);
    }

    (*(v45 + 8))(v46, v6);
    v37 = 0x800000024609ECD0;
    sub_245FAC70C();
    swift_allocError();
    v39 = 0xD000000000000026;
    goto LABEL_9;
  }

  if (!v114)
  {
    v73 = sub_245FA3174();
    v74 = v112;
    v75 = v101;
    (*(v112 + 16))(v101, v73, v6);
    v76 = sub_2460918D4();
    v77 = sub_246091FB4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_245F8A000, v76, v77, "Image Folder Reader: Failed to start the image read handle.", v78, 2u);
      MEMORY[0x24C1989D0](v78, -1, -1);
    }

    (*(v74 + 8))(v75, v6);
    sub_245FAC70C();
    swift_allocError();
    *v79 = 0xD000000000000025;
    *(v79 + 8) = 0x800000024609ED00;
    *(v79 + 16) = 1;
    swift_willThrow();
    goto LABEL_26;
  }

  v101 = v114;
  v51 = type metadata accessor for PhotogrammetryImageHelper();
  v52 = v109;
  v98 = v51;
  v53 = sub_245F9AFEC();
  v54 = sub_245FA3174();
  v55 = *(v112 + 16);
  v56 = v108;
  v57 = (v108 + 16);
  if (v53)
  {
    v58 = v103;
    v55(v103, v54, v43);
    v59 = v41;
    (*v57)(v41, v52, v42);
    v60 = sub_2460918D4();
    v61 = sub_246091FC4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v104 = v43;
      v64 = v63;
      v113 = v63;
      *v62 = 134349571;
      v65 = v42;
      v66 = v105;
      *(v62 + 4) = v105;
      *(v62 + 12) = 2160;
      *(v62 + 14) = 1752392040;
      *(v62 + 22) = 2081;
      v67 = sub_2460916F4();
      v69 = v68;
      (*(v108 + 8))(v59, v65);
      v70 = sub_245F8D3C0(v67, v69, &v113);

      *(v62 + 24) = v70;
      _os_log_impl(&dword_245F8A000, v60, v61, "Image Folder Reader: Reading sample from HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v62, 0x20u);
      sub_245F8E6F4(v64);
      MEMORY[0x24C1989D0](v64, -1, -1);
      MEMORY[0x24C1989D0](v62, -1, -1);

      (*(v112 + 8))(v103, v104);
      v71 = v106;
      v72 = v107;
    }

    else
    {

      (*(v108 + 8))(v41, v42);
      (*(v112 + 8))(v58, v43);
      v71 = v106;
      v72 = v107;
      v66 = v105;
    }

    v95 = v99;
    type metadata accessor for ObjectCaptureImageFolderReader(0);
    sub_245FA47E0(v66, v109, v101, v95);
    v96 = v102;
    if (v71)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v80 = v17;
    v81 = v43;
    v55(v17, v54, v43);
    v82 = v104;
    (*v57)(v104, v52, v42);
    v83 = sub_2460918D4();
    v84 = sub_246091FC4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v110 = v80;
      v86 = v85;
      v103 = swift_slowAlloc();
      v113 = v103;
      *v86 = 134349571;
      v87 = v56;
      v88 = v84;
      v89 = v105;
      *(v86 + 4) = v105;
      *(v86 + 12) = 2160;
      *(v86 + 14) = 1752392040;
      *(v86 + 22) = 2081;
      v90 = sub_2460916F4();
      v92 = v91;
      (*(v87 + 8))(v82, v111);
      v93 = sub_245F8D3C0(v90, v92, &v113);

      *(v86 + 24) = v93;
      _os_log_impl(&dword_245F8A000, v83, v88, "Image Folder Reader: Reading sample from non-HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v86, 0x20u);
      v94 = v103;
      sub_245F8E6F4(v103);
      MEMORY[0x24C1989D0](v94, -1, -1);
      MEMORY[0x24C1989D0](v86, -1, -1);

      (*(v112 + 8))(v110, v81);
    }

    else
    {

      (*(v56 + 8))(v82, v42);
      (*(v112 + 8))(v80, v43);
      v89 = v105;
    }

    v95 = v100;
    v97 = v106;
    sub_245F994C8(v89, v109, v100);
    v72 = v107;
    if (v97)
    {
      goto LABEL_26;
    }

    v96 = v102;
  }

  sub_245FAED94(v95, v96, type metadata accessor for PhotogrammetrySample);
  sub_245FAED94(v96, v72, type metadata accessor for PhotogrammetrySample);
LABEL_26:
  OCNonModularSPI_CMPhoto_HeicReadStop();
  return OCNonModularSPI_CMPhoto_HeicReadDestroy();
}

NSObject *sub_245FA7AB0()
{
  v177 = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v165 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v145 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v148 = &v145 - v4;
  MEMORY[0x28223BE20](v5);
  v147 = &v145 - v6;
  MEMORY[0x28223BE20](v7);
  v162 = &v145 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v145 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v145 - v13;
  MEMORY[0x28223BE20](v15);
  v156 = &v145 - v16;
  MEMORY[0x28223BE20](v17);
  v158 = &v145 - v18;
  v19 = sub_246091704();
  v171 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v155 = &v145 - v23;
  MEMORY[0x28223BE20](v24);
  v153 = &v145 - v25;
  MEMORY[0x28223BE20](v26);
  v170 = &v145 - v27;
  MEMORY[0x28223BE20](v28);
  v169 = &v145 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = (&v145 - v31);
  v33 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v176 = 0;
  OCNonModularSPI_CMPhoto_HeicReadCreate();
  OCNonModularSPI_CMPhoto_HeicReadStart();
  if (!v176)
  {
    sub_245FAC70C();
    swift_allocError();
    *v52 = 0xD000000000000051;
    *(v52 + 8) = 0x800000024609EC00;
    *(v52 + 16) = 1;
LABEL_52:
    swift_willThrow();
    OCNonModularSPI_CMPhoto_HeicReadStop();
    OCNonModularSPI_CMPhoto_HeicReadDestroy();

    return v32;
  }

  v34 = sub_246091674();
  v175 = 0;
  v146 = v33;
  v35 = [v33 contentsOfDirectoryAtURL:v34 includingPropertiesForKeys:0 options:0 error:&v175];

  v36 = v175;
  if (!v35)
  {
    v53 = v175;
    v54 = sub_2460915D4();

    swift_willThrow();
    v55 = sub_245FA3174();
    v56 = v165;
    (*(v165 + 16))(v2, v55, v0);
    v57 = v54;
    v32 = sub_2460918D4();
    v58 = v0;
    v59 = sub_246091FB4();

    if (os_log_type_enabled(v32, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v168 = v58;
      v62 = v61;
      v175 = v61;
      *v60 = 136446210;
      swift_getErrorValue();
      v63 = sub_246092484();
      v65 = sub_245F8D3C0(v63, v64, &v175);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_245F8A000, v32, v59, "Image Folder Reader: contentsOfDirectory error: %{public}s", v60, 0xCu);
      sub_245F8E6F4(v62);
      MEMORY[0x24C1989D0](v62, -1, -1);
      MEMORY[0x24C1989D0](v60, -1, -1);

      (*(v56 + 8))(v2, v168);
    }

    else
    {

      (*(v56 + 8))(v2, v58);
    }

    v33 = v146;
    sub_245FAC70C();
    swift_allocError();
    *v143 = v54;
    *(v143 + 8) = 0;
    *(v143 + 16) = 0;
    goto LABEL_52;
  }

  v168 = v0;
  v37 = sub_246091DD4();
  v38 = v36;

  v39 = *(v37 + 16);
  v157 = v11;
  v154 = v14;
  v167 = v19;
  v149 = v21;
  v166 = v39;
  if (v39)
  {
    v40 = 0;
    v161 = (v171 + 8);
    v164 = (v171 + 32);
    v41 = MEMORY[0x277D84F90];
    v163 = v171 + 16;
    do
    {
      if (v40 >= *(v37 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
      }

      v43 = v19;
      v44 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v45 = *(v171 + 72);
      (*(v171 + 16))(v32, v37 + v44 + v45 * v40, v43);
      type metadata accessor for PhotogrammetryImageHelper();
      if (sub_245F9AABC())
      {
        v46 = *v164;
        (*v164)(v169, v32, v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v175 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_245FAC7A8(0, v41[2] + 1, 1);
          v41 = v175;
        }

        v48 = v41;
        v49 = v41[2];
        v50 = v48[3];
        if (v49 >= v50 >> 1)
        {
          sub_245FAC7A8((v50 > 1), v49 + 1, 1);
          v48 = v175;
        }

        v48[2] = v49 + 1;
        v51 = v48 + v44 + v49 * v45;
        v19 = v167;
        v46(v51, v169, v167);
        v41 = v48;
      }

      else
      {
        (*v161)(v32, v43);
        v19 = v43;
      }

      ++v40;
      v42 = v170;
    }

    while (v166 != v40);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
    v42 = v170;
  }

  v66 = sub_245FA3174();
  v67 = v165;
  v68 = *(v165 + 16);
  v161 = v66;
  v69 = v168;
  v160 = v165 + 16;
  v159 = v68;
  v68(v158);

  v70 = sub_2460918D4();
  v71 = sub_246091FC4();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134349056;
    *(v72 + 4) = v41[2];

    _os_log_impl(&dword_245F8A000, v70, v71, "Image Folder Reader: Number of loadable image files = %{public}ld", v72, 0xCu);
    MEMORY[0x24C1989D0](v72, -1, -1);
  }

  else
  {
  }

  v73 = v162;
  v74 = v158;
  v158 = *(v67 + 8);
  v165 = v67 + 8;
  (v158)(v74, v69);
  v159(v156, v161, v69);
  v75 = sub_2460918D4();
  v76 = sub_246091FC4();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_245F8A000, v75, v76, "Image Folder Reader: ImageFiles: [", v77, 2u);
    v78 = v77;
    v73 = v162;
    MEMORY[0x24C1989D0](v78, -1, -1);
  }

  (v158)(v156, v69);
  v79 = v41[2];
  if (v79)
  {
    v80 = type metadata accessor for PhotogrammetryImageHelper();
    v32 = 0;
    v169 = *(v171 + 16);
    v81 = (*(v171 + 80) + 32) & ~*(v171 + 80);
    v145 = v41;
    v82 = v41 + v81;
    v163 = *(v171 + 72);
    v171 += 16;
    v166 = (v171 - 8);
    *&v83 = 141558787;
    v152 = v83;
    v164 = v80;
    do
    {
      (v169)(v42, v82, v19);
      v173 = *sub_24601EF58();
      v172 = *sub_24601EF64();
      if (sub_245F9AFEC())
      {
        v84 = sub_246091674();
        swift_beginAccess();
        swift_beginAccess();
        Resolution = OCNonModularSPI_CMPhoto_readResolution();
        swift_endAccess();
        swift_endAccess();

        v86 = v42;
        if (Resolution)
        {
          v156 = v79;
          v87 = v168;
          v159(v157, v161, v168);
          v88 = v155;
          (v169)(v155, v86, v19);
          v89 = sub_2460918D4();
          v90 = sub_246091FB4();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            LODWORD(v151) = v90;
            v92 = v91;
            v150 = swift_slowAlloc();
            v174 = v150;
            *v92 = v152;
            *(v92 + 4) = 1752392040;
            *(v92 + 12) = 2081;
            v93 = sub_2460916F4();
            v95 = v94;
            v96 = *v166;
            (*v166)(v88, v167);
            v97 = sub_245F8D3C0(v93, v95, &v174);
            v19 = v167;

            *(v92 + 14) = v97;
            *(v92 + 22) = 2050;
            *(v92 + 24) = v173;
            *(v92 + 32) = 2050;
            *(v92 + 34) = v172;
            _os_log_impl(&dword_245F8A000, v89, v151, "Image Folder Reader: Failed to fetch image resolution in %{private,mask.hash}s, using default resolution %{public}llu x %{public}llu as an estimate instead.", v92, 0x2Au);
            v98 = v150;
            sub_245F8E6F4(v150);
            MEMORY[0x24C1989D0](v98, -1, -1);
            MEMORY[0x24C1989D0](v92, -1, -1);

            (v158)(v157, v168);
            v99 = v170;
            (v96)(v170, v19);
            v73 = v162;
            v42 = v99;
          }

          else
          {

            v129 = *v166;
            (*v166)(v88, v19);
            (v158)(v157, v87);
            v42 = v170;
            (v129)(v170, v19);
            v73 = v162;
          }

          v79 = v156;
        }

        else
        {
          v117 = v168;
          v159(v154, v161, v168);
          v118 = v153;
          (v169)(v153, v86, v19);
          v119 = sub_2460918D4();
          v120 = sub_246091FC4();
          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            LODWORD(v151) = v120;
            v122 = v121;
            v123 = swift_slowAlloc();
            v174 = v123;
            *v122 = v152;
            *(v122 + 4) = 1752392040;
            *(v122 + 12) = 2081;
            v124 = sub_2460916F4();
            v126 = v125;
            v156 = *v166;
            (v156)(v153, v167);
            v127 = sub_245F8D3C0(v124, v126, &v174);

            *(v122 + 14) = v127;
            *(v122 + 22) = 2050;
            *(v122 + 24) = v173;
            *(v122 + 32) = 2050;
            *(v122 + 34) = v172;
            _os_log_impl(&dword_245F8A000, v119, v151, "Image Folder Reader: %{private,mask.hash}s of resolution %{public}llu x %{public}llu", v122, 0x2Au);
            sub_245F8E6F4(v123);
            v128 = v123;
            v19 = v167;
            MEMORY[0x24C1989D0](v128, -1, -1);
            MEMORY[0x24C1989D0](v122, -1, -1);

            (v158)(v154, v168);
            v42 = v170;
            (v156)(v170, v19);
          }

          else
          {

            v131 = *v166;
            (*v166)(v118, v19);
            (v158)(v154, v117);
            v42 = v170;
            (v131)(v170, v19);
          }

          v73 = v162;
        }
      }

      else
      {
        v100 = sub_245F9AC5C(v42);
        if (v101)
        {
          (*v166)(v42, v19);
        }

        else
        {
          v102 = HIDWORD(v100);
          v103 = v100;
          swift_beginAccess();
          v173 = v103;
          swift_beginAccess();
          v172 = v102;
          v104 = v168;
          v159(v73, v161, v168);
          v105 = v42;
          v106 = v149;
          (v169)(v149, v105, v19);
          v107 = sub_2460918D4();
          v108 = sub_246091FC4();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            LODWORD(v156) = v108;
            v110 = v109;
            v151 = swift_slowAlloc();
            v174 = v151;
            *v110 = v152;
            *(v110 + 4) = 1752392040;
            *(v110 + 12) = 2081;
            v111 = sub_2460916F4();
            v113 = v112;
            v114 = *v166;
            (*v166)(v106, v167);
            v115 = sub_245F8D3C0(v111, v113, &v174);
            v19 = v167;

            *(v110 + 14) = v115;
            *(v110 + 22) = 2050;
            *(v110 + 24) = v173;
            *(v110 + 32) = 2050;
            *(v110 + 34) = v172;
            _os_log_impl(&dword_245F8A000, v107, v156, "Image Folder Reader: %{private,mask.hash}s of resolution %{public}llu x %{public}llu", v110, 0x2Au);
            v116 = v151;
            sub_245F8E6F4(v151);
            MEMORY[0x24C1989D0](v116, -1, -1);
            MEMORY[0x24C1989D0](v110, -1, -1);

            v73 = v162;
            (v158)(v162, v168);
            v42 = v170;
            (v114)(v170, v19);
          }

          else
          {

            v130 = *v166;
            (*v166)(v106, v19);
            v73 = v162;
            (v158)(v162, v104);
            v42 = v170;
            (v130)(v170, v19);
          }
        }
      }

      swift_beginAccess();
      v132 = v173;
      swift_beginAccess();
      if (!is_mul_ok(v132, v172))
      {
        goto LABEL_55;
      }

      v133 = __CFADD__(v32, v132 * v172);
      v32 = (v32 + v132 * v172);
      if (v133)
      {
        goto LABEL_56;
      }

      v82 += v163;
      --v79;
    }

    while (v79);
  }

  else
  {

    v32 = 0;
  }

  v134 = v168;
  v159(v147, v161, v168);
  v135 = sub_2460918D4();
  v136 = sub_246091FC4();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&dword_245F8A000, v135, v136, "Image Folder Reader: ]  // Files", v137, 2u);
    v138 = v137;
    v134 = v168;
    MEMORY[0x24C1989D0](v138, -1, -1);
  }

  (v158)(v147, v134);
  v159(v148, v161, v134);
  v139 = sub_2460918D4();
  v140 = sub_246091FC4();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 134349056;
    *(v141 + 4) = v32;
    _os_log_impl(&dword_245F8A000, v139, v140, "Image Folder Reader: Total number of pixels is %{public}llu", v141, 0xCu);
    v142 = v141;
    v134 = v168;
    MEMORY[0x24C1989D0](v142, -1, -1);
  }

  (v158)(v148, v134);
  OCNonModularSPI_CMPhoto_HeicReadStop();
  OCNonModularSPI_CMPhoto_HeicReadDestroy();

  return v32;
}

uint64_t sub_245FA9094(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_245FA90D4()
{
  v112 = sub_245F8E624(&qword_27EE3A100, &qword_246097240);
  MEMORY[0x28223BE20](v112);
  v110 = (&v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v111 = &v88 - v3;
  v4 = type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor(0);
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v106 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v88 - v11;
  MEMORY[0x28223BE20](v12);
  v113 = &v88 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  v17 = sub_245FA3174();
  v18 = *(v8 + 16);
  v93 = v17;
  v95 = v8 + 16;
  v94 = v18;
  (v18)(v16);

  v19 = sub_2460918D4();
  v20 = sub_246091FC4();

  v21 = os_log_type_enabled(v19, v20);
  v107 = v0;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v91 = v7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v114[0] = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v25 = sub_2460916F4();
    v27 = sub_245F8D3C0(v25, v26, v114);
    v0 = v107;

    *(v23 + 14) = v27;
    _os_log_impl(&dword_245F8A000, v19, v20, "Image Folder Reader: Checking folder listing cache for: %{private,mask.hash}s...", v23, 0x16u);
    sub_245F8E6F4(v24);
    MEMORY[0x24C1989D0](v24, -1, -1);
    v28 = v23;
    v7 = v91;
    MEMORY[0x24C1989D0](v28, -1, -1);
  }

  v96 = *(v8 + 8);
  v96(v16, v7);
  v29 = v8;
  v30 = v97;
  v31 = v113;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors))
  {
    v32 = v106;
    v94(v106, v93, v7);

    v33 = sub_2460918D4();
    v34 = sub_246091FC4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v114[0] = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      v37 = sub_2460916F4();
      v39 = v7;
      v40 = sub_245F8D3C0(v37, v38, v114);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_245F8A000, v33, v34, "Image Folder Reader: Folder already enumerated and cached, nothing to do for: %{private,mask.hash}s...", v35, 0x16u);
      sub_245F8E6F4(v36);
      MEMORY[0x24C1989D0](v36, -1, -1);
      MEMORY[0x24C1989D0](v35, -1, -1);

      v41 = v106;
      v42 = v39;
      return (v96)(v41, v42);
    }

    v41 = v32;
LABEL_9:
    v42 = v7;
    return (v96)(v41, v42);
  }

  v89 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors;
  v90 = v29;
  v94(v113, v93, v7);

  v43 = sub_2460918D4();
  v44 = sub_246091FC4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v30;
    v46 = v7;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v114[0] = v48;
    *v47 = 141558275;
    *(v47 + 4) = 1752392040;
    *(v47 + 12) = 2081;
    v49 = sub_2460916F4();
    v51 = sub_245F8D3C0(v49, v50, v114);

    *(v47 + 14) = v51;
    _os_log_impl(&dword_245F8A000, v43, v44, "Image Folder Reader: Enumerating image folder and caching result for: %{private,mask.hash}s...", v47, 0x16u);
    sub_245F8E6F4(v48);
    MEMORY[0x24C1989D0](v48, -1, -1);
    v52 = v47;
    v7 = v46;
    v30 = v45;
    MEMORY[0x24C1989D0](v52, -1, -1);

    v53 = v113;
  }

  else
  {

    v53 = v31;
  }

  v96(v53, v7);
  result = sub_245FA9B50();
  if (!v30)
  {
    v55 = *(result + 16);
    if (!v55)
    {

      v57 = MEMORY[0x277D84F90];
LABEL_22:
      v74 = v107;
      v75 = v89;
      *(v107 + v89) = v57;
      v76 = v74;

      v77 = *(v76 + v75);
      v78 = v92;
      if (v77)
      {
        v79 = *(v77 + 16);
      }

      else
      {
        v79 = 0;
      }

      swift_beginAccess();
      *(v76 + 16) = v79;
      v94(v78, v93, v7);

      v80 = sub_2460918D4();
      v81 = sub_246091FC4();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v115 = v83;
        *v82 = 141558275;
        *(v82 + 4) = 1752392040;
        *(v82 + 12) = 2081;
        v84 = sub_2460916F4();
        v86 = v7;
        v87 = sub_245F8D3C0(v84, v85, &v115);

        *(v82 + 14) = v87;
        _os_log_impl(&dword_245F8A000, v80, v81, "Image Folder Reader: Done enumerating image folder and caching result for: %{private,mask.hash}s.", v82, 0x16u);
        sub_245F8E6F4(v83);
        MEMORY[0x24C1989D0](v83, -1, -1);
        MEMORY[0x24C1989D0](v82, -1, -1);

        v41 = v92;
        v42 = v86;
        return (v96)(v41, v42);
      }

      v41 = v78;
      goto LABEL_9;
    }

    v91 = v7;
    v97 = 0;
    v114[0] = MEMORY[0x277D84F90];
    v56 = result;
    sub_245FAC7EC(0, v55, 0);
    v57 = v114[0];
    v106 = *(v56 + 16);
    v58 = sub_246091704();
    result = v56;
    v59 = 0;
    v103 = v58;
    v104 = v55;
    v60 = *(v58 - 8);
    v100 = v56 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v101 = v6;
    v102 = v60;
    v98 = v60 + 32;
    v99 = v60 + 16;
    v105 = v56;
    while (v106 != v59)
    {
      if (v59 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v62 = v111;
      v61 = v112;
      v63 = *(v112 + 48);
      v113 = v57;
      v64 = v102;
      v65 = v103;
      v66 = *(v102 + 16);
      v66(&v111[v63], v100 + *(v102 + 72) * v59, v103);
      v67 = v110;
      *v110 = v59;
      v68 = *(v61 + 48);
      v69 = *(v64 + 32);
      v57 = v113;
      v70 = &v62[v63];
      v71 = v101;
      v69(v67 + v68, v70, v65);
      v66(v71, v67 + v68, v65);
      *(v71 + *(v109 + 20)) = v59;
      sub_245F8E744(v67, &qword_27EE3A100, &qword_246097240);
      v114[0] = v57;
      v73 = *(v57 + 16);
      v72 = *(v57 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_245FAC7EC((v72 > 1), v73 + 1, 1);
        v57 = v114[0];
      }

      ++v59;
      *(v57 + 16) = v73 + 1;
      sub_245FAED94(v71, v57 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v73, type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor);
      result = v105;
      if (v104 == v59)
      {

        v7 = v91;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_245FA9B50()
{
  v285[3] = *MEMORY[0x277D85DE8];
  v1 = sub_245F8E624(&qword_27EE3A0B8, "nP");
  MEMORY[0x28223BE20](v1 - 8);
  v234 = &v229 - v2;
  v272 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  v255 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v253 = &v229 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v252 = &v229 - v5;
  MEMORY[0x28223BE20](v6);
  v251 = &v229 - v7;
  MEMORY[0x28223BE20](v8);
  v250 = &v229 - v9;
  v10 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  MEMORY[0x28223BE20](v10 - 8);
  v258 = &v229 - v11;
  v274 = sub_2460917D4();
  v264 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v239 = &v229 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v263 = &v229 - v14;
  MEMORY[0x28223BE20](v15);
  v238 = &v229 - v16;
  MEMORY[0x28223BE20](v17);
  v262 = &v229 - v18;
  v276 = sub_2460918F4();
  v282 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v20 = &v229 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v230 = &v229 - v22;
  MEMORY[0x28223BE20](v23);
  v235 = &v229 - v24;
  MEMORY[0x28223BE20](v25);
  v232 = &v229 - v26;
  MEMORY[0x28223BE20](v27);
  v260 = &v229 - v28;
  MEMORY[0x28223BE20](v29);
  v249 = &v229 - v30;
  MEMORY[0x28223BE20](v31);
  v248 = &v229 - v32;
  MEMORY[0x28223BE20](v33);
  v269 = &v229 - v34;
  MEMORY[0x28223BE20](v35);
  v271 = &v229 - v36;
  v270 = sub_246091704();
  v281 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v38 = &v229 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v229 - v40;
  MEMORY[0x28223BE20](v42);
  v256 = &v229 - v43;
  MEMORY[0x28223BE20](v44);
  v237 = &v229 - v45;
  MEMORY[0x28223BE20](v46);
  v283[0] = &v229 - v47;
  MEMORY[0x28223BE20](v48);
  v280 = &v229 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v229 - v51;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors))
  {
    goto LABEL_83;
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v259 = v0;
  v54 = sub_246091674();
  sub_245F8E624(&qword_27EE39FF0, "fN");
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_246096460;
  v56 = *MEMORY[0x277CBE7C0];
  *(v55 + 32) = *MEMORY[0x277CBE7C0];
  type metadata accessor for URLResourceKey(0);
  v57 = v56;
  v58 = sub_246091DB4();

  v285[0] = 0;
  v233 = v53;
  v59 = [v53 contentsOfDirectoryAtURL:v54 includingPropertiesForKeys:v58 options:0 error:v285];

  v60 = v285[0];
  if (!v59)
  {
    v76 = v285[0];
    v77 = sub_2460915D4();

    swift_willThrow();
    v78 = sub_245FA3174();
    v79 = v282;
    v80 = v276;
    (*(v282 + 16))(v20, v78, v276);
    v81 = v77;
    v82 = v20;
    v83 = sub_2460918D4();
    v84 = sub_246091FB4();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v285[0] = v86;
      *v85 = 136446210;
      swift_getErrorValue();
      v87 = sub_246092484();
      v82 = v88;
      v89 = sub_245F8D3C0(v87, v88, v285);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_245F8A000, v83, v84, "Image Folder Reader: contentsOfDirectory error: %{public}s", v85, 0xCu);
      sub_245F8E6F4(v86);
      MEMORY[0x24C1989D0](v86, -1, -1);
      MEMORY[0x24C1989D0](v85, -1, -1);

      (*(v79 + 8))(v20, v276);
    }

    else
    {

      (*(v79 + 8))(v20, v80);
    }

    sub_245FAC70C();
    swift_allocError();
    *v227 = v77;
    *(v227 + 8) = 0;
    *(v227 + 16) = 0;
    swift_willThrow();

    return v82;
  }

  v240 = v41;
  v254 = v38;
  v61 = sub_246091DD4();
  v62 = v60;

  v63 = v282;
  v279 = *(v61 + 16);
  if (v279)
  {
    v64 = 0;
    v278 = (v281 + 16);
    v273 = (v281 + 8);
    v277 = (v281 + 32);
    v275 = MEMORY[0x277D84F90];
    v65 = v270;
    v66 = v283[0];
    while (v64 < *(v61 + 16))
    {
      v67 = (*(v281 + 80) + 32) & ~*(v281 + 80);
      v68 = v61;
      v69 = v61 + v67;
      v70 = *(v281 + 72);
      (*(v281 + 16))(v52, v69 + v70 * v64, v65);
      type metadata accessor for PhotogrammetryImageHelper();
      if (sub_245F9AABC())
      {
        v71 = *v277;
        (*v277)(v280, v52, v65);
        v72 = v275;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v285[0] = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_245FAC7A8(0, v72[2] + 1, 1);
          v72 = v285[0];
        }

        v75 = v72[2];
        v74 = v72[3];
        if (v75 >= v74 >> 1)
        {
          sub_245FAC7A8((v74 > 1), v75 + 1, 1);
          v72 = v285[0];
        }

        v72[2] = v75 + 1;
        v275 = v72;
        v65 = v270;
        v71(v72 + v67 + v75 * v70, v280, v270);
        v66 = v283[0];
      }

      else
      {
        (*v273)(v52, v65);
      }

      ++v64;
      v63 = v282;
      v61 = v68;
      if (v279 == v64)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  v275 = MEMORY[0x277D84F90];
  v66 = v283[0];
LABEL_17:
  v90 = sub_245FA3174();
  v91 = *(v63 + 16);
  v268 = v90;
  v267 = v63 + 16;
  v266 = v91;
  (v91)(v271);
  v92 = v275;

  v93 = sub_2460918D4();
  v94 = sub_246091FC4();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = v92;
    v97 = v95;
    *v95 = 134349056;
    *(v95 + 4) = v96[2];

    _os_log_impl(&dword_245F8A000, v93, v94, "Image Folder Reader: Number of loadable image files = %{public}ld", v97, 0xCu);
    MEMORY[0x24C1989D0](v97, -1, -1);
  }

  else
  {
  }

  v98 = v254;
  v99 = v258;
  v100 = v276;
  v265 = *(v63 + 8);
  v282 = v63 + 8;
  v265(v271, v276);
  v101 = v269;
  v266(v269, v268, v100);
  v102 = sub_2460918D4();
  v103 = sub_246091FC4();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_245F8A000, v102, v103, "Image Folder Reader: ImageFiles: [", v104, 2u);
    MEMORY[0x24C1989D0](v104, -1, -1);
  }

  v265(v101, v276);
  v105 = v275;
  v106 = v270;
  v247 = v275[2];
  if (v247)
  {
    v229 = v61;
    v107 = type metadata accessor for PhotogrammetryImageHelper();
    v108 = v281;
    v244 = v105 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v245 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
    swift_beginAccess();
    v246 = 0;
    v257 = 0;
    v109 = 0;
    v280 = (v108 + 16);
    v243 = (v264 + 48);
    v236 = (v264 + 32);
    v242 = (v264 + 16);
    v271 = (v264 + 8);
    v279 = (v108 + 8);
    v273 = MEMORY[0x277D84F90];
    *&v110 = 141558531;
    v241 = v110;
    v111 = v274;
    v112 = v256;
    v264 = v107;
    do
    {
      if (v109 >= v275[2])
      {
        goto LABEL_81;
      }

      v114 = v112;
      v115 = *(v281 + 72);
      v269 = v109;
      v116 = *(v281 + 16);
      v116(v66, v244 + v115 * v109, v106);
      sub_245F9A538(v66, v99);
      v117 = (*v243)(v99, 1, v111);
      v278 = v116;
      if (v117 == 1)
      {
        sub_245F8E744(v99, &qword_27EE39F80, &unk_246096C10);
        v118 = v263;
        sub_245F98F2C(v66, v263);
        v119 = v276;
        v266(v249, v268, v276);
        v116(v114, v66, v106);
        v120 = v239;
        (*v242)(v239, v118, v111);
        v121 = v111;
        v122 = sub_2460918D4();
        v123 = sub_246091FC4();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v284[0] = v125;
          *v124 = v241;
          *(v124 + 4) = 1752392040;
          *(v124 + 12) = 2081;
          v126 = sub_2460916F4();
          v128 = v127;
          v277 = *v279;
          (v277)(v114, v270);
          v129 = sub_245F8D3C0(v126, v128, v284);

          *(v124 + 14) = v129;
          *(v124 + 22) = 2082;
          sub_245FAEDFC(&qword_27EE3A0C8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v130 = sub_2460923D4();
          v132 = v131;
          v133 = v120;
          v134 = *v271;
          (*v271)(v133, v121);
          v135 = sub_245F8D3C0(v130, v132, v284);

          *(v124 + 24) = v135;
          _os_log_impl(&dword_245F8A000, v122, v123, "Image Folder Reader: %{private,mask.hash}s using creationDate instead: %{public}s", v124, 0x20u);
          swift_arrayDestroy();
          v136 = v125;
          v119 = v276;
          MEMORY[0x24C1989D0](v136, -1, -1);
          v137 = v124;
          v106 = v270;
          MEMORY[0x24C1989D0](v137, -1, -1);
        }

        else
        {

          v160 = v120;
          v134 = *v271;
          (*v271)(v160, v121);
          v277 = *v279;
          (v277)(v114, v106);
        }

        v265(v249, v119);
        sub_246091784();
        v161 = *(v272 + 48);
        v162 = v251;
        *v251 = v163;
        v278(&v162[v161], v283[0], v106);
        v164 = v273;
        v165 = swift_isUniquelyReferenced_nonNull_native();
        v166 = v260;
        if ((v165 & 1) == 0)
        {
          v164 = sub_245FAC498(0, v164[2] + 1, 1, v164);
        }

        v168 = v164[2];
        v167 = v164[3];
        v169 = v168 + 1;
        if (v168 >= v167 >> 1)
        {
          v164 = sub_245FAC498((v167 > 1), v168 + 1, 1, v164);
        }

        v134(v263, v274);
        v170 = v283;
      }

      else
      {
        v138 = v262;
        (*v236)(v262, v99, v111);
        v139 = v66;
        v119 = v276;
        v266(v248, v268, v276);
        v140 = v237;
        v116(v237, v139, v106);
        v141 = v238;
        (*v242)(v238, v138, v111);
        v142 = v111;
        v143 = sub_2460918D4();
        v144 = sub_246091FC4();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v284[0] = v146;
          *v145 = v241;
          *(v145 + 4) = 1752392040;
          *(v145 + 12) = 2081;
          v147 = sub_2460916F4();
          v149 = v148;
          v277 = *v279;
          (v277)(v140, v270);
          v150 = sub_245F8D3C0(v147, v149, v284);

          *(v145 + 14) = v150;
          *(v145 + 22) = 2082;
          sub_245FAEDFC(&qword_27EE3A0C8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v151 = sub_2460923D4();
          v153 = v152;
          v154 = v141;
          v155 = *v271;
          (*v271)(v154, v142);
          v156 = sub_245F8D3C0(v151, v153, v284);
          v157 = v155;

          *(v145 + 24) = v156;
          _os_log_impl(&dword_245F8A000, v143, v144, "Image Folder Reader: %{private,mask.hash}s with dateTimeOriginal %{public}s", v145, 0x20u);
          swift_arrayDestroy();
          v158 = v146;
          v119 = v276;
          MEMORY[0x24C1989D0](v158, -1, -1);
          v159 = v145;
          v106 = v270;
          MEMORY[0x24C1989D0](v159, -1, -1);
        }

        else
        {

          v157 = *v271;
          (*v271)(v141, v142);
          v106 = v270;
          v277 = *v279;
          (v277)(v140, v270);
        }

        v265(v248, v119);
        sub_246091784();
        v171 = *(v272 + 48);
        v172 = v250;
        *v250 = v173;
        v278(&v172[v171], v283[0], v106);
        v164 = v273;
        v174 = swift_isUniquelyReferenced_nonNull_native();
        v166 = v260;
        if ((v174 & 1) == 0)
        {
          v164 = sub_245FAC498(0, v164[2] + 1, 1, v164);
        }

        v168 = v164[2];
        v175 = v164[3];
        v169 = v168 + 1;
        if (v168 >= v175 >> 1)
        {
          v164 = sub_245FAC498((v175 > 1), v168 + 1, 1, v164);
        }

        v157(v262, v274);
        v170 = &v282;
      }

      v176 = *(v170 - 32);
      v164[2] = v169;
      v177 = (*(v255 + 80) + 32) & ~*(v255 + 80);
      v273 = v164;
      sub_245FAEBF8(v176, v164 + v177 + *(v255 + 72) * v168);
      v178 = *(v259 + v245);
      v66 = v283[0];
      if (!v178)
      {
        goto LABEL_82;
      }

      v179 = sub_245F9B098(v283[0], v178);
      if (v180)
      {
        v181 = v180;
        v261 = v179;
        v266(v166, v268, v119);
        v182 = v119;
        v183 = v240;
        v278(v240, v66, v106);

        v184 = v106;
        v185 = sub_2460918D4();
        v186 = sub_246091FC4();

        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          v284[0] = v188;
          *v187 = v241;
          *(v187 + 4) = 1752392040;
          *(v187 + 12) = 2081;
          v189 = sub_2460916F4();
          v191 = v190;
          (v277)(v183, v184);
          v192 = sub_245F8D3C0(v189, v191, v284);

          *(v187 + 14) = v192;
          *(v187 + 22) = 2082;
          v193 = v261;
          *(v187 + 24) = sub_245F8D3C0(v261, v181, v284);
          _os_log_impl(&dword_245F8A000, v185, v186, "Image Folder Reader: %{private,mask.hash}s with HEIC version: %{public}s", v187, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v188, -1, -1);
          v66 = v283[0];
          MEMORY[0x24C1989D0](v187, -1, -1);

          v265(v260, v276);
          v106 = v184;
        }

        else
        {

          (v277)(v183, v184);
          v265(v166, v182);
          v106 = v184;
          v66 = v283[0];
          v193 = v261;
        }

        v98 = v254;
        v111 = v274;
        v112 = v256;
        v113 = v269;
        if (v257)
        {
          if (v246 == v193 && v257 == v181)
          {
          }

          else
          {
            v194 = sub_2460923E4();

            if (v194)
            {
              v246 = v261;
              v257 = v181;
              v66 = v283[0];
            }

            else
            {
              v284[0] = 0x302E302E31;
              v284[1] = 0xE500000000000000;
              v283[1] = v261;
              v283[2] = v181;
              v195 = sub_246091864();
              v196 = v234;
              (*(*(v195 - 8) + 56))(v234, 1, 1, v195);
              sub_245FA2AE4();
              v197 = sub_246092154();
              sub_245F8E744(v196, &qword_27EE3A0B8, "nP");
              v66 = v283[0];
              if (!v197)
              {
                (*(*v259 + 192))(1);
              }

              v246 = v261;
              v257 = v181;
              v111 = v274;
            }
          }
        }

        else
        {
          v246 = v193;
          v257 = v181;
        }
      }

      else
      {
        v98 = v254;
        v111 = v274;
        v112 = v256;
        v113 = v269;
      }

      v109 = (v113 + 1);
      (v277)(v66, v106);
      v99 = v258;
    }

    while (v247 != v109);
  }

  else
  {
    v273 = MEMORY[0x277D84F90];
  }

  v198 = v232;
  v266(v232, v268, v276);
  v199 = sub_2460918D4();
  v200 = sub_246091FC4();
  if (os_log_type_enabled(v199, v200))
  {
    v201 = swift_slowAlloc();
    *v201 = 0;
    _os_log_impl(&dword_245F8A000, v199, v200, "Image Folder Reader: ]  // Files", v201, 2u);
    MEMORY[0x24C1989D0](v201, -1, -1);
  }

  v202 = v276;
  v265(v198, v276);
  v266(v235, v268, v202);
  v203 = v259;

  v204 = sub_2460918D4();
  v205 = sub_246091FC4();
  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    *v206 = 67109120;
    *(v206 + 4) = (*(*v203 + 184))() & 1;

    _os_log_impl(&dword_245F8A000, v204, v205, "Image Folder Reader: Should reset legacy segment id: %{BOOL}d", v206, 8u);
    v207 = v206;
    v208 = v276;
    MEMORY[0x24C1989D0](v207, -1, -1);

    v209 = v231;
    v210 = v230;
  }

  else
  {

    v209 = v231;
    v210 = v230;
    v208 = v276;
  }

  v265(v235, v208);
  v284[0] = v273;

  sub_245FAD364(v284);
  if (!v209)
  {

    v211 = v284[0];
    v266(v210, v268, v208);

    v212 = sub_2460918D4();
    v213 = sub_246091FC4();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      *v214 = 134349056;
      *(v214 + 4) = *(v211 + 16);

      _os_log_impl(&dword_245F8A000, v212, v213, "Image Folder Reader: Number of loadable image files with valid timestamps = %{public}ld", v214, 0xCu);
      v215 = v214;
      v208 = v276;
      MEMORY[0x24C1989D0](v215, -1, -1);
    }

    else
    {
    }

    v265(v210, v208);
    v216 = *(v211 + 16);
    if (v216)
    {
      v282 = 0;
      v284[0] = MEMORY[0x277D84F90];
      sub_245FAC7A8(0, v216, 0);
      v82 = v284[0];
      v217 = *(v255 + 80);
      v280 = v211;
      v218 = v211 + ((v217 + 32) & ~v217);
      v283[0] = *(v255 + 72);
      v219 = (v281 + 32);
      v220 = v270;
      do
      {
        v221 = v252;
        sub_245F8E7A4(v218, v252, &qword_27EE3A0C0, "nP");
        v222 = v253;
        sub_245FAEBF8(v221, v253);
        v223 = *v219;
        (*v219)(v98, v222 + *(v272 + 48), v220);
        v284[0] = v82;
        v224 = v98;
        v226 = *(v82 + 16);
        v225 = *(v82 + 24);
        if (v226 >= v225 >> 1)
        {
          sub_245FAC7A8((v225 > 1), v226 + 1, 1);
          v82 = v284[0];
        }

        *(v82 + 16) = v226 + 1;
        v223((v82 + ((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v226), v224, v220);
        v218 += v283[0];
        --v216;
        v98 = v224;
      }

      while (v216);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v82;
  }

  __break(1u);
  return result;
}

double sub_245FABAE4(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v27 = a6;
  v28 = a7;
  v25 = a4;
  v26 = a5;
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245F8E624(&qword_27EE3A0B8, "nP");
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  if (!a3)
  {
    v20 = sub_245FA3174();
    (*(v11 + 16))(v13, v20, v10);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245F8A000, v21, v22, "No heifVersion found!  Can't tell if the box is already padded or not, so just returning it as-is!", v23, 2u);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    return *v25.i64;
  }

  v31 = a2;
  v32 = a3;
  v29 = 0x302E302E32;
  v30 = 0xE500000000000000;
  v17 = sub_246091864();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_245FA2AE4();
  v18 = sub_246092154();
  sub_245F8E744(v16, &qword_27EE3A0B8, "nP");
  if (v18 != -1)
  {
    return *v25.i64;
  }

  if (a1 == 1)
  {
    v19 = sub_246090E60();
  }

  else
  {
    v19 = sub_246090EC4();
  }

  return sub_246021644(v25, v26, v27, v28, *v19);
}

uint64_t sub_245FABD88(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v73 = *MEMORY[0x277D85DE8];
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v68 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v16 = sub_245FA3174();
  v67 = v11;
  v17 = *(v11 + 16);
  v59 = v16;
  v60 = v11 + 16;
  v58 = v17;
  (v17)(v15);
  v18 = *(v5 + 16);
  v65 = a1;
  v57 = v5 + 16;
  v55 = v18;
  v18(v9, a1, v4);
  v19 = sub_2460918D4();
  v20 = sub_246091FC4();
  v21 = os_log_type_enabled(v19, v20);
  v63 = v2;
  v61 = v5;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v62 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v71[0] = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v25 = sub_2460916F4();
    v26 = v5;
    v28 = v27;
    v56 = *(v26 + 8);
    v56(v9, v4);
    v29 = sub_245F8D3C0(v25, v28, v71);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_245F8A000, v19, v20, "Image Folder Reader: Trying to load thumbnail %{private,mask.hash}s", v23, 0x16u);
    sub_245F8E6F4(v24);
    MEMORY[0x24C1989D0](v24, -1, -1);
    v30 = v23;
    v10 = v62;
    MEMORY[0x24C1989D0](v30, -1, -1);
  }

  else
  {

    v56 = *(v5 + 8);
    v56(v9, v4);
  }

  v31 = *(v67 + 8);
  v31(v15, v10);
  v72 = 0;
  swift_beginAccess();
  v32 = v65;
  v33 = sub_246091674();
  Thumbnail = OCNonModularSPI_CMPhoto_readThumbnail();

  v35 = v68;
  v36 = v66;
  if (Thumbnail || (v20 = v72) == 0)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_246092284();

    v69 = 0xD000000000000030;
    v70 = 0x800000024609EDE0;
    v37 = sub_2460916F4();
    MEMORY[0x24C196640](v37);

    v38 = v69;
    v39 = v70;
    sub_245FAC70C();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v58(v68, v59, v10);
    v55(v36, v32, v4);
    v41 = sub_2460918D4();
    v42 = sub_246091FC4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v65 = v4;
      v44 = v36;
      v45 = v43;
      v46 = swift_slowAlloc();
      v69 = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v47 = sub_2460916F4();
      v62 = v10;
      v49 = v48;
      v56(v44, v65);
      v50 = sub_245F8D3C0(v47, v49, &v69);

      *(v45 + 14) = v50;
      _os_log_impl(&dword_245F8A000, v41, v42, "Image Folder Reader: Successfully loaded thumbnail %{private,mask.hash}s", v45, 0x16u);
      sub_245F8E6F4(v46);
      MEMORY[0x24C1989D0](v46, -1, -1);
      MEMORY[0x24C1989D0](v45, -1, -1);

      v51 = v68;
      v52 = v62;
    }

    else
    {

      v56(v36, v4);
      v51 = v35;
      v52 = v10;
    }

    v31(v51, v52);
  }

  return v20;
}

char *sub_245FAC394(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A0D0, &qword_246098D50);
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

void *sub_245FAC498(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3A0D8, &unk_246097220);
  v10 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_245FAC688(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&qword_27EE3A0E8, &qword_24609ADA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_245FAC70C()
{
  result = qword_27EE3A0A0;
  if (!qword_27EE3A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A0A0);
  }

  return result;
}

uint64_t sub_245FAC768()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_245FAC7A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245FACA34(a1, a2, a3, *v3, &qword_27EE3A0E0, &unk_246097BF0, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_245FAC7EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245FACA34(a1, a2, a3, *v3, &qword_27EE3A108, &qword_246097248, type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor);
  *v3 = result;
  return result;
}

void *sub_245FAC844(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3A0D8, &unk_246097220);
  v10 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_245FACA34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_245FACC10(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2460924F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_245FACF14(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_245FACCF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_245F8E624(&qword_27EE3A0F8, &unk_246098440);
  result = sub_246092244();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2460924F4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_245FACF14(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245FACCF0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_245FAD034();
      a2 = v7;
      goto LABEL_12;
    }

    sub_245FAD174(v5 + 1);
  }

  v8 = *v3;
  result = sub_2460924F4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_245FAD034()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A0F8, &unk_246098440);
  v2 = *v0;
  v3 = sub_246092234();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

uint64_t sub_245FAD174(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_245F8E624(&qword_27EE3A0F8, &unk_246098440);
  result = sub_246092244();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2460924F4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void sub_245FAD364(uint64_t *a1)
{
  v2 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_245FAC830(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_245FAD418(v5);
  *a1 = v3;
}

void sub_245FAD418(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2460923C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_245F8E624(&qword_27EE3A0C0, "nP");
        v6 = sub_246091E14();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_245FAD79C(v8, v9, a1, v4);
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
    sub_245FAD55C(0, v2, 1, a1);
  }
}

void sub_245FAD55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - v11);
  MEMORY[0x28223BE20](v13);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v21;
    while (1)
    {
      sub_245F8E7A4(v22, v16, &qword_27EE3A0C0, "nP");
      sub_245F8E7A4(v19, v12, &qword_27EE3A0C0, "nP");
      v24 = *v16;
      v25 = *v12;
      sub_245F8E744(v12, &qword_27EE3A0C0, "nP");
      sub_245F8E744(v16, &qword_27EE3A0C0, "nP");
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_245FAEBF8(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_245FAEBF8(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_245FAD79C(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v100 = a1;
  v113 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  v108 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v104 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v97 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = (&v97 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v97 - v15);
  v110 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_95:
    a4 = *v100;
    if (!*v100)
    {
      goto LABEL_134;
    }

    a3 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v92 = a3;
    }

    else
    {
LABEL_128:
      v92 = sub_245FAE62C(a3);
    }

    v114 = v92;
    a3 = *(v92 + 2);
    if (a3 >= 2)
    {
      while (*v110)
      {
        v93 = *&v92[16 * a3];
        v94 = v92;
        v95 = *&v92[16 * a3 + 24];
        sub_245FAE0A0(*v110 + *(v108 + 72) * v93, *v110 + *(v108 + 72) * *&v92[16 * a3 + 16], *v110 + *(v108 + 72) * v95, a4);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v95 < v93)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_245FAE62C(v94);
        }

        if (a3 - 2 >= *(v94 + 2))
        {
          goto LABEL_122;
        }

        v96 = &v94[16 * a3];
        *v96 = v93;
        *(v96 + 1) = v95;
        v114 = v94;
        sub_245FAE5A0(a3 - 1);
        v92 = v114;
        a3 = *(v114 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v105 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v101 = v18;
      v22 = *v110;
      v23 = *(v108 + 72);
      v24 = *v110 + v23 * v21;
      v111 = v22;
      sub_245F8E7A4(v22 + v23 * v21, v16, &qword_27EE3A0C0, "nP");
      v25 = v101;
      sub_245F8E7A4(v22 + v23 * v101, v13, &qword_27EE3A0C0, "nP");
      v26 = *v16;
      v27 = *v13;
      sub_245F8E744(v13, &qword_27EE3A0C0, "nP");
      sub_245F8E744(v16, &qword_27EE3A0C0, "nP");
      a3 = v25 + 2;
      v109 = v23;
      v28 = v111 + v23 * a3;
      while (v17 != a3)
      {
        LODWORD(v111) = v26 < v27;
        sub_245F8E7A4(v28, v16, &qword_27EE3A0C0, "nP");
        sub_245F8E7A4(v24, v13, &qword_27EE3A0C0, "nP");
        v29 = *v16;
        v30 = *v13;
        sub_245F8E744(v13, &qword_27EE3A0C0, "nP");
        sub_245F8E744(v16, &qword_27EE3A0C0, "nP");
        ++a3;
        v28 += v109;
        v24 += v109;
        if (((v111 ^ (v29 >= v30)) & 1) == 0)
        {
          v17 = a3 - 1;
          break;
        }
      }

      a4 = v99;
      v20 = v101;
      if (v26 < v27)
      {
        if (v17 < v101)
        {
          goto LABEL_125;
        }

        if (v101 < v17)
        {
          v98 = v5;
          a3 = v109 * (v17 - 1);
          v31 = v17 * v109;
          v111 = v17;
          v32 = v17;
          v33 = v101;
          v34 = v101 * v109;
          do
          {
            if (v33 != --v32)
            {
              v35 = *v110;
              if (!*v110)
              {
                goto LABEL_131;
              }

              sub_245FAEBF8(v35 + v34, v104);
              if (v34 < a3 || v35 + v34 >= v35 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_245FAEBF8(v104, v35 + a3);
            }

            ++v33;
            a3 -= v109;
            v31 -= v109;
            v34 += v109;
          }

          while (v33 < v32);
          v5 = v98;
          a4 = v99;
          v20 = v101;
          v17 = v111;
        }
      }
    }

    v36 = v110[1];
    if (v17 < v36)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_124;
      }

      if (v17 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_126;
        }

        if (v20 + a4 >= v36)
        {
          v37 = v110[1];
        }

        else
        {
          v37 = v20 + a4;
        }

        if (v37 < v20)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v17 != v37)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v105;
    }

    else
    {
      v19 = sub_245FAC394(0, *(v105 + 2) + 1, 1, v105);
    }

    a3 = *(v19 + 2);
    v38 = *(v19 + 3);
    a4 = a3 + 1;
    if (a3 >= v38 >> 1)
    {
      v19 = sub_245FAC394((v38 > 1), a3 + 1, 1, v19);
    }

    *(v19 + 2) = a4;
    v39 = &v19[16 * a3];
    *(v39 + 4) = v20;
    *(v39 + 5) = v18;
    v111 = *v100;
    if (!v111)
    {
      goto LABEL_133;
    }

    if (a3)
    {
      while (1)
      {
        v40 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v41 = *(v19 + 4);
          v42 = *(v19 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_52:
          if (v44)
          {
            goto LABEL_112;
          }

          v57 = &v19[16 * a4];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_115;
          }

          v63 = &v19[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_119;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v67 = &v19[16 * a4];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_66:
        if (v62)
        {
          goto LABEL_114;
        }

        v70 = &v19[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_117;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v40 - 1;
        if (v40 - 1 >= a4)
        {
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
          goto LABEL_127;
        }

        if (!*v110)
        {
          goto LABEL_130;
        }

        v78 = v19;
        a4 = *&v19[16 * a3 + 32];
        v79 = *&v19[16 * v40 + 40];
        sub_245FAE0A0(*v110 + *(v108 + 72) * a4, *v110 + *(v108 + 72) * *&v19[16 * v40 + 32], *v110 + *(v108 + 72) * v79, v111);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v79 < a4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_245FAE62C(v78);
        }

        if (a3 >= *(v78 + 2))
        {
          goto LABEL_109;
        }

        v80 = &v78[16 * a3];
        *(v80 + 4) = a4;
        *(v80 + 5) = v79;
        v114 = v78;
        a3 = &v114;
        sub_245FAE5A0(v40);
        v19 = v114;
        a4 = *(v114 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v19[16 * a4 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_110;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_111;
      }

      v52 = &v19[16 * a4];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_113;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_116;
      }

      if (v56 >= v48)
      {
        v74 = &v19[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_120;
        }

        if (v43 < v77)
        {
          v40 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = v110[1];
    a4 = v99;
    if (v18 >= v17)
    {
      goto LABEL_95;
    }
  }

  v98 = v5;
  v81 = *v110;
  v82 = *(v108 + 72);
  v83 = *v110 + v82 * (v17 - 1);
  v84 = v17;
  v85 = -v82;
  v101 = v20;
  v102 = v82;
  v86 = v20 - v84;
  v111 = v84;
  a4 = v81 + v84 * v82;
  v103 = v37;
LABEL_85:
  v106 = a4;
  v107 = v86;
  v87 = v86;
  v109 = v83;
  v88 = v83;
  while (1)
  {
    a3 = &qword_27EE3A0C0;
    sub_245F8E7A4(a4, v16, &qword_27EE3A0C0, "nP");
    sub_245F8E7A4(v88, v13, &qword_27EE3A0C0, "nP");
    v89 = *v16;
    v90 = *v13;
    sub_245F8E744(v13, &qword_27EE3A0C0, "nP");
    sub_245F8E744(v16, &qword_27EE3A0C0, "nP");
    if (v89 >= v90)
    {
LABEL_84:
      v18 = v103;
      v83 = v109 + v102;
      v86 = v107 - 1;
      a4 = v106 + v102;
      if (++v111 != v103)
      {
        goto LABEL_85;
      }

      v5 = v98;
      v20 = v101;
      if (v103 < v101)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v81)
    {
      break;
    }

    a3 = v112;
    sub_245FAEBF8(a4, v112);
    swift_arrayInitWithTakeFrontToBack();
    sub_245FAEBF8(a3, v88);
    v88 += v85;
    a4 += v85;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_245FAE0A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  MEMORY[0x28223BE20](v43);
  v44 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v37 - v9);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v48 = a1;
  v47 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v40 = v23;
      v41 = a4;
      do
      {
        v38 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v42 = v25;
        while (1)
        {
          v28 = v45;
          if (v25 <= a1)
          {
            v48 = v25;
            v46 = v38;
            goto LABEL_58;
          }

          v39 = v22;
          v45 += v23;
          v29 = v24 + v23;
          sub_245F8E7A4(v29, v10, &qword_27EE3A0C0, "nP");
          v30 = v26;
          v31 = v26;
          v32 = v10;
          v33 = v44;
          sub_245F8E7A4(v31, v44, &qword_27EE3A0C0, "nP");
          v34 = *v32;
          v35 = *v33;
          v36 = v33;
          v10 = v32;
          sub_245F8E744(v36, &qword_27EE3A0C0, "nP");
          sub_245F8E744(v32, &qword_27EE3A0C0, "nP");
          if (v34 < v35)
          {
            break;
          }

          v22 = v29;
          if (v28 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v22 = v29;
            v26 = v30;
          }

          else
          {
            v26 = v30;
            if (v28 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v29;
            }
          }

          v24 = v22;
          v25 = v42;
          v27 = v29 > v41;
          v23 = v40;
          if (!v27)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v28 < v42 || v45 >= v42)
        {
          a2 = v30;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v40;
        }

        else
        {
          v23 = v40;
          a2 = v30;
          if (v28 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v22 = v39;
      }

      while (v24 > v41);
    }

LABEL_57:
    v48 = a2;
    v46 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v17 = a4 + v15;
    v46 = a4 + v15;
    if (v15 >= 1 && a2 < v45)
    {
      do
      {
        sub_245F8E7A4(a2, v10, &qword_27EE3A0C0, "nP");
        v19 = v44;
        sub_245F8E7A4(a4, v44, &qword_27EE3A0C0, "nP");
        v20 = *v10;
        v21 = *v19;
        sub_245F8E744(v19, &qword_27EE3A0C0, "nP");
        sub_245F8E744(v10, &qword_27EE3A0C0, "nP");
        if (v20 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v12;
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
        v48 = a1;
      }

      while (a4 < v17 && a2 < v45);
    }
  }

LABEL_58:
  sub_245FAE640(&v48, &v47, &v46);
}

uint64_t sub_245FAE5A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_245FAE62C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_245FAE640(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_245F8E624(&qword_27EE3A0C0, "nP");
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_245FAE730(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_245FAE858(uint64_t a1)
{
  result = sub_246091704();
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

uint64_t sub_245FAE9FC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_245FAEA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_245FAEABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_245FAEB4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245FAEB84(uint64_t a1)
{
  result = sub_246091704();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_245FAEBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FAEC68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_245FAEC7C(a1, a2);
  }

  return a1;
}

uint64_t sub_245FAEC7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_245FAECD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FAED40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_245FAED94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_245FAEDFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CoreOC::ObjectCaptureFrameEvent::GestureEvent_optional __swiftcall ObjectCaptureFrameEvent.GestureEvent.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s6CoreOC21PhotogrammetrySessionC13ConfigurationV14SampleOrderingO9hashValueSivg_0()
{
  v1 = *v0;
  sub_246092504();
  MEMORY[0x24C196E90](v1);
  return sub_246092544();
}

uint64_t sub_245FAEEE8(uint64_t a1)
{
  v2 = *v1;
  sub_246092504();
  MEMORY[0x24C196E90](v2);
  return sub_246092544();
}

CoreOC::ObjectCaptureFrameEvent::ScanStatus_optional __swiftcall ObjectCaptureFrameEvent.ScanStatus.init(rawValue:)(Swift::Int rawValue)
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

void *sub_245FAEF7C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_245FAF014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_245FAF068()
{
  v1 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_245FAF0AC(double a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_245FAF0FC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))(&v4);
  *a2 = v4;
  return result;
}

void sub_245FAF168(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_245FAF1BC(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_245FAF210(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void *sub_245FAF260@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))(&v4);
  *a2 = v4;
  return result;
}

void sub_245FAF2CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_245FAF320(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_245FAF374(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_245FAF420(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

double sub_245FAF478()
{
  v1 = v0 + OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position;
  swift_beginAccess();
  return *v1;
}

void sub_245FAF4C0(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_245FAF518@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_245FAF574(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_245FAF624(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_245FAF6E4()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*((*MEMORY[0x277D85000] & *v0) + 0xD8))() + 16);
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    sub_245FB10A0(0, v2, 0);
    v3 = 32;
    v4 = v27;
    do
    {
      v5 = sub_246091F04();
      v27 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_245FB10A0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v27;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_245F8E624(&qword_27EE3A138, &qword_246097250);
  sub_245FB10C0();
  v12 = sub_246091BA4();
  v14 = v13;

  v27 = 0;
  v28 = 0xE000000000000000;
  v15 = sub_246092284();
  (*((*v1 & *v0) + 0x78))(v15);
  sub_246091EF4();
  v16 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  (*((*v1 & *v0) + 0x90))(&v26, v16);
  v17 = sub_2460923D4();
  MEMORY[0x24C196640](v17);

  v18 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  (*((*v1 & *v0) + 0xA8))(&v26, v18);
  v19 = sub_2460923D4();
  MEMORY[0x24C196640](v19);

  v20 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  v21 = *((*v1 & *v0) + 0xC0);
  v21(v20);
  v22 = sub_246091EE4();
  MEMORY[0x24C196640](v22);

  v23 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  v21(v23);
  v24 = sub_246091EE4();
  MEMORY[0x24C196640](v24);

  MEMORY[0x24C196640](8236, 0xE200000000000000);

  MEMORY[0x24C196640](v12, v14);

  return v27;
}

id ObjectCaptureFrameEvent.__allocating_init(timestamp:gesture:scanStatus:position:boxTransform:)(_BYTE *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = *a2;
  v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture] = *a1;
  v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus] = v14;
  v15 = &v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position];
  *v15 = a5;
  v15[1] = a6;
  *&v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp] = a4;
  *&v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform] = a3;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id ObjectCaptureFrameEvent.init(timestamp:gesture:scanStatus:position:boxTransform:)(_BYTE *a1, _BYTE *a2, uint64_t a3, double a4, double a5, double a6)
{
  v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture] = *a1;
  v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus] = *a2;
  v7 = &v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position];
  *v7 = a5;
  v7[1] = a6;
  *&v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp] = a4;
  *&v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform] = a3;
  v9.receiver = v6;
  v9.super_class = type metadata accessor for ObjectCaptureFrameEvent();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t ObjectCaptureFrameEvent.init(coder:)(void *a1)
{
  v2 = sub_246091BD4();
  v3 = [a1 decodeIntegerForKey_];

  if (v3 > 4)
  {
    goto LABEL_5;
  }

  v4 = sub_246091BD4();
  v5 = [a1 decodeIntegerForKey_];

  if (v5)
  {
    if (v5 == 1)
    {
      v26 = v3;
      v25 = 1;
      goto LABEL_7;
    }

LABEL_5:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v26 = v3;
  v25 = 0;
LABEL_7:
  v7 = sub_246091BD4();
  [a1 decodeCGPointForKey_];
  v9 = v8;
  v11 = v10;

  v12 = sub_246091BD4();
  [a1 decodeDoubleForKey_];
  v14 = v13;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  do
  {
    v17 = sub_2460923D4();
    strcpy(v28, "boxTransform");
    HIBYTE(v28[6]) = 0;
    v28[7] = -5120;
    MEMORY[0x24C196640](v17);

    v18 = sub_246091BD4();

    [a1 decodeFloatForKey_];
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_245FB1254(0, *(v16 + 2) + 1, 1, v16);
    }

    v22 = *(v16 + 2);
    v21 = *(v16 + 3);
    if (v22 >= v21 >> 1)
    {
      v16 = sub_245FB1254((v21 > 1), v22 + 1, 1, v16);
    }

    ++v15;
    *(v16 + 2) = v22 + 1;
    *&v16[4 * v22 + 32] = v20;
  }

  while (v15 != 16);
  ObjectType = swift_getObjectType();
  LOBYTE(v28[0]) = v26;
  v27 = v25;
  v24 = (*(ObjectType + 240))(v28, &v27, v16, v14, v9, v11);

  swift_deallocPartialClassInstance();
  return v24;
}

void ObjectCaptureFrameEvent.__allocating_init(line:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_246091494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_114;
  }

  v95 = v2;
  v98 = a1;
  v99 = a2;
  v97[0] = 44;
  v97[1] = 0xE100000000000000;
  sub_245FA2AE4();
  v10 = sub_246092114();

  v11 = v10[2];
  if (v11 < 5)
  {
    goto LABEL_114;
  }

  v12 = v10[5];
  v98 = v10[4];
  v99 = v12;

  sub_246091484();
  v13 = sub_246092124();
  v15 = v14;
  v17 = *(v6 + 8);
  v16 = v6 + 8;
  v94 = v17;
  v17(v8, v5);

  v98 = 0;
  LOBYTE(v13) = sub_245FB1358(v13, v15, &v98, MEMORY[0x277D84FA8], sub_245FB196C);

  if ((v13 & 1) == 0)
  {
    goto LABEL_114;
  }

  if (v10[2] < 2uLL)
  {
    __break(1u);
LABEL_112:

    goto LABEL_114;
  }

  v18 = *&v98;
  v19 = v10[7];
  v98 = v10[6];
  v99 = v19;

  sub_246091484();
  v20 = sub_246092124();
  v22 = v21;
  v94(v8, v5);

  v23 = HIBYTE(v22) & 0xF;
  v24 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v25 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_112;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    LOBYTE(v97[0]) = 0;
    v93 = sub_245F8DA98(v20, v22, 10);
    v88 = v87;

    if (v88)
    {
      goto LABEL_114;
    }

    goto LABEL_71;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    v98 = v20;
    v99 = v22 & 0xFFFFFFFFFFFFFFLL;
    if (v20 == 43)
    {
      if (!v23)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (--v23)
      {
        v28 = 0;
        v42 = &v98 + 1;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = (v28 * 10) >> 64;
          v45 = 10 * v28;
          if (v44 != v45 >> 63)
          {
            break;
          }

          v33 = __OFADD__(v45, v43);
          v28 = v45 + v43;
          if (v33)
          {
            break;
          }

          ++v42;
          if (!--v23)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v20 == 45)
    {
      if (!v23)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      if (--v23)
      {
        v28 = 0;
        v34 = &v98 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = (v28 * 10) >> 64;
          v37 = 10 * v28;
          if (v36 != v37 >> 63)
          {
            break;
          }

          v33 = __OFSUB__(v37, v35);
          v28 = v37 - v35;
          if (v33)
          {
            break;
          }

          ++v34;
          if (!--v23)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v23)
    {
      v28 = 0;
      v50 = &v98;
      while (1)
      {
        v51 = *v50 - 48;
        if (v51 > 9)
        {
          break;
        }

        v52 = (v28 * 10) >> 64;
        v53 = 10 * v28;
        if (v52 != v53 >> 63)
        {
          break;
        }

        v33 = __OFADD__(v53, v51);
        v28 = v53 + v51;
        if (v33)
        {
          break;
        }

        v50 = (v50 + 1);
        if (!--v23)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    v26 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v26 = sub_2460922B4();
  }

  v27 = *v26;
  if (v27 == 43)
  {
    if (v24 < 1)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v23 = v24 - 1;
    if (v24 == 1)
    {
      goto LABEL_68;
    }

    v28 = 0;
    if (v26)
    {
      v38 = v26 + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          goto LABEL_68;
        }

        v40 = (v28 * 10) >> 64;
        v41 = 10 * v28;
        if (v40 != v41 >> 63)
        {
          goto LABEL_68;
        }

        v33 = __OFADD__(v41, v39);
        v28 = v41 + v39;
        if (v33)
        {
          goto LABEL_68;
        }

        ++v38;
        if (!--v23)
        {
          goto LABEL_69;
        }
      }
    }

LABEL_77:
    LOBYTE(v23) = 0;
    goto LABEL_69;
  }

  if (v27 == 45)
  {
    if (v24 < 1)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v23 = v24 - 1;
    if (v24 == 1)
    {
      goto LABEL_68;
    }

    v28 = 0;
    if (v26)
    {
      v29 = v26 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = (v28 * 10) >> 64;
        v32 = 10 * v28;
        if (v31 != v32 >> 63)
        {
          break;
        }

        v33 = __OFSUB__(v32, v30);
        v28 = v32 - v30;
        if (v33)
        {
          break;
        }

        ++v29;
        if (!--v23)
        {
          goto LABEL_69;
        }
      }

LABEL_68:
      v28 = 0;
      LOBYTE(v23) = 1;
LABEL_69:
      v93 = v28;
      goto LABEL_70;
    }

    goto LABEL_77;
  }

  if (v24)
  {
    v46 = 0;
    if (!v26)
    {
LABEL_60:
      LOBYTE(v23) = 0;
      v93 = v46;
      goto LABEL_70;
    }

    while (1)
    {
      v47 = *v26 - 48;
      if (v47 > 9)
      {
        break;
      }

      v48 = (v46 * 10) >> 64;
      v49 = 10 * v46;
      if (v48 != v49 >> 63)
      {
        break;
      }

      v33 = __OFADD__(v49, v47);
      v46 = v49 + v47;
      if (v33)
      {
        break;
      }

      ++v26;
      if (!--v24)
      {
        goto LABEL_60;
      }
    }
  }

  LOBYTE(v23) = 1;
  v93 = 0;
LABEL_70:
  LOBYTE(v97[0]) = v23;
  v54 = v23;

  if (v54)
  {
    goto LABEL_114;
  }

LABEL_71:
  if (v93 >= 5)
  {
    goto LABEL_114;
  }

  v92 = v16;
  if (v10[2] < 3uLL)
  {
    __break(1u);
    goto LABEL_117;
  }

  v55 = v10[9];
  v98 = v10[8];
  v99 = v55;

  sub_246091484();
  v56 = sub_246092124();
  v58 = v57;
  v94(v8, v5);

  v59 = sub_245FB0940(v56, v58);
  if (v60)
  {
    goto LABEL_114;
  }

  if (v59)
  {
    if (v59 == 1)
    {
      v61 = 1;
      goto LABEL_80;
    }

LABEL_114:

    return;
  }

  v61 = 0;
LABEL_80:
  if (v10[2] < 4uLL)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v62 = v10[11];
  v98 = v10[10];
  v99 = v62;

  sub_246091484();
  v63 = sub_246092124();
  v65 = v64;
  v94(v8, v5);

  LODWORD(v98) = 0;
  LOBYTE(v63) = sub_245FB1358(v63, v65, &v98, MEMORY[0x277D84FB0], sub_245FB1A24);

  if ((v63 & 1) == 0)
  {
    goto LABEL_114;
  }

  if (v10[2] < 5uLL)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v66 = *&v98;
  v67 = v10[13];
  v98 = v10[12];
  v99 = v67;

  sub_246091484();
  v68 = sub_246092124();
  v70 = v69;
  v94(v8, v5);

  LODWORD(v98) = 0;
  LOBYTE(v68) = sub_245FB1358(v68, v70, &v98, MEMORY[0x277D84FB0], sub_245FB1A24);

  if ((v68 & 1) == 0)
  {
    goto LABEL_114;
  }

  v90 = v61;
  v71 = *&v98;
  if (v11 >= 0x15)
  {
    if (v10[2] >= 0x15uLL)
    {
      v73 = v10 + 15;
      v74 = 16;
      v91 = MEMORY[0x277D84F90];
      while (1)
      {
        v75 = *v73;
        v98 = *(v73 - 1);
        v99 = v75;

        sub_246091484();
        v76 = sub_246092124();
        v78 = v77;
        v94(v8, v5);

        LODWORD(v97[0]) = 0;
        MEMORY[0x28223BE20](v79);
        *&v89[-16] = v97;
        if ((v78 & 0x1000000000000000) != 0)
        {
LABEL_110:
          sub_246092274();

          v72 = v95;
          goto LABEL_104;
        }

        if ((v78 & 0x2000000000000000) != 0)
        {
          v98 = v76;
          v99 = v78 & 0xFFFFFFFFFFFFFFLL;
          if (v76 >= 0x21u || ((0x100003E01uLL >> v76) & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if ((v76 & 0x1000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v80 = *((v78 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v80 >= 0x21 || ((0x100003E01uLL >> v80) & 1) == 0)
          {
LABEL_100:
            v82 = _swift_stdlib_strtof_clocale();
            v72 = v95;
            if (v82)
            {
              v81 = *v82 == 0;
            }

            else
            {
              v81 = 0;
            }

            goto LABEL_103;
          }
        }

        v81 = 0;
        v72 = v95;
LABEL_103:
        LOBYTE(v96) = v81;

LABEL_104:
        if (v96)
        {
          v83 = v97[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_245FB1254(0, *(v91 + 2) + 1, 1, v91);
          }

          v85 = *(v91 + 2);
          v84 = *(v91 + 3);
          if (v85 >= v84 >> 1)
          {
            v91 = sub_245FB1254((v84 > 1), v85 + 1, 1, v91);
          }

          v86 = v91;
          *(v91 + 2) = v85 + 1;
          *&v86[4 * v85 + 32] = v83;
        }

        else
        {

          v91 = MEMORY[0x277D84F90];
        }

        v73 += 2;
        if (!--v74)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_123:
    __break(1u);
    return;
  }

  v91 = MEMORY[0x277D84F90];
  v72 = v95;
LABEL_86:

  LOBYTE(v98) = v93;
  LOBYTE(v97[0]) = v90;
  (*(v72 + 240))(&v98, v97, v91, v18, v66, v71);
}

unint64_t sub_245FB0940(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2460922B4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_245F8DA98(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_245FB0C40(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x90))(v26);
  v5 = LOBYTE(v26[0]);
  v6 = sub_246091BD4();
  [a1 encodeInteger:v5 forKey:v6];

  (*((*v4 & *v2) + 0xA8))(v26);
  v7 = LOBYTE(v26[0]);
  v8 = sub_246091BD4();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = (*((*v4 & *v2) + 0xC0))();
  v11 = v10;
  v12 = sub_246091BD4();
  [a1 encodePoint:v12 forKey:{v9, v11}];

  v13 = (*((*v4 & *v2) + 0x78))();
  v14 = sub_246091BD4();
  v15 = a1;
  [a1 encodeDouble:v14 forKey:v13];

  v16 = *((*v4 & *v2) + 0xD8);
  v17 = *(v16() + 16);

  if (v17)
  {
    v19 = 0;
    while (1)
    {
      v20 = (v16)(v18);
      if (v19 >= *(v20 + 16))
      {
        break;
      }

      v21 = v19 + 1;
      v22 = *(v20 + 4 * v19 + 32);

      v26[0] = v19;
      v23 = sub_2460923D4();
      strcpy(v26, "boxTransform");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      MEMORY[0x24C196640](v23);

      v24 = sub_246091BD4();

      LODWORD(v25) = v22;
      [v15 encodeFloat:v24 forKey:v25];

      v19 = v21;
      if (v17 == v21)
      {
        return;
      }
    }

    __break(1u);
  }
}

id ObjectCaptureFrameEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjectCaptureFrameEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjectCaptureFrameEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_245FB10A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245FB1148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_245FB10C0()
{
  result = qword_27EE3A140;
  if (!qword_27EE3A140)
  {
    sub_245F9135C(&qword_27EE3A138, &qword_246097250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A140);
  }

  return result;
}

char *sub_245FB1148(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_245FB1254(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

BOOL sub_245FB1358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_246092274();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

unint64_t sub_245FB1478()
{
  result = qword_27EE3A148;
  if (!qword_27EE3A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A148);
  }

  return result;
}

unint64_t sub_245FB14D0()
{
  result = qword_27EE3A150;
  if (!qword_27EE3A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FreeformMeshManager.ScanExtent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_245FB1998@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void (*sub_245FB1A3C(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245F8FD54;
}

unint64_t *sub_245FB1AD0@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_245FB1AE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_245FC4748(MEMORY[0x277D84F90]);
  v3 = MEMORY[0x277D84FA0];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_246097410;
  *(a1 + 56) = xmmword_246097420;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 513;
  *(a1 + 136) = 0;
  type metadata accessor for FreeformMeshManager.BackgroundData(0);
  return sub_246091A84();
}

uint64_t sub_245FB1B90()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (*(v0 + 12) == 1)
  {
    if (*(v0 + 13) == 2)
    {
      v14 = sub_245FA32CC();
      (*(v2 + 16))(v4, v14, v1);
      v15 = sub_2460918D4();
      v16 = sub_246091FB4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36 = v18;
        *v17 = 136380675;
        *(v17 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v36);
        _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Invalid mesh manager config - either arkitVoxelSize or scanExtent must be specified!", v17, 0xCu);
        sub_245F8E6F4(v18);
        MEMORY[0x24C1989D0](v18, -1, -1);
        MEMORY[0x24C1989D0](v17, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }

  else if (*(v0 + 8) <= 0.0)
  {
    v25 = sub_245FA32CC();
    (*(v2 + 16))(v13, v25, v1);
    v26 = sub_2460918D4();
    v27 = sub_246091FB4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136380675;
      *(v28 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v36);
      _os_log_impl(&dword_245F8A000, v26, v27, "ObjectCaptureSession.%{private}s: Invalid mesh manager config - invalid arkitVoxelSize!", v28, 0xCu);
      sub_245F8E6F4(v29);
      MEMORY[0x24C1989D0](v29, -1, -1);
      MEMORY[0x24C1989D0](v28, -1, -1);
    }

    (*(v2 + 8))(v13, v1);
    return 0;
  }

  if (*(v0 + 16) <= 0.0 || *(v0 + 20) <= 0.0 || *(v0 + 32) < 1)
  {
    v20 = sub_245FA32CC();
    (*(v2 + 16))(v7, v20, v1);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v36);
      _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: Invalid mesh manager config - invalid mesh refinement parameters!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    if ((*(v0 + 40) & 1) == 0 || *(v0 + 48) > 0)
    {
      return 1;
    }

    v30 = sub_245FA32CC();
    (*(v2 + 16))(v10, v30, v1);
    v31 = sub_2460918D4();
    v32 = sub_246091FB4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v33 = 136380675;
      *(v33 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v36);
      _os_log_impl(&dword_245F8A000, v31, v32, "MeshManager.%{private}s: Invalid mesh manager config - invalid heap vertex capacity!", v33, 0xCu);
      sub_245F8E6F4(v34);
      MEMORY[0x24C1989D0](v34, -1, -1);
      MEMORY[0x24C1989D0](v33, -1, -1);
    }

    (*(v2 + 8))(v10, v1);
  }

  return 0;
}
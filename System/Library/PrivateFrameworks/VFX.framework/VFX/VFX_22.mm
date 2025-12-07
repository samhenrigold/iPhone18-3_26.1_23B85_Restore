uint64_t sub_1AF258A40(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2590C0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF258A98(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF259120(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF258AF0(uint64_t *a1, CFX::RG::RenderGraphContext *a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF259180(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF258B48(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2591E0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF258BA4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF258BE0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF258C1C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF258C58(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258C90(uint64_t a1)
{
  *a1 = &unk_1F24EA988;

  return a1;
}

void sub_1AF258CD8(uint64_t a1)
{
  *a1 = &unk_1F24EA988;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258D40(uint64_t a1)
{
  *a1 = &unk_1F24EA9A8;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF258D88(uint64_t a1)
{
  *a1 = &unk_1F24EA9A8;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258DF0(uint64_t a1)
{
  *a1 = &unk_1F24EA9C8;

  return a1;
}

void sub_1AF258E38(uint64_t a1)
{
  *a1 = &unk_1F24EA9C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258EA0(uint64_t a1)
{
  *a1 = &unk_1F24EA9E8;

  return a1;
}

void sub_1AF258EE8(uint64_t a1)
{
  *a1 = &unk_1F24EA9E8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF258F50(uint64_t a1)
{
  *a1 = &unk_1F24EAA08;

  return a1;
}

void sub_1AF258FA0(uint64_t a1)
{
  *a1 = &unk_1F24EAA08;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF259010(uint64_t a1)
{
  *a1 = &unk_1F24EAA28;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF259058(uint64_t a1)
{
  *a1 = &unk_1F24EAA28;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2590C0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u, 2);
  return sub_1AF256C74(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF259120(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF2578A0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF259180(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u, 2);
  return sub_1AF257D3C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2591E0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x300u, 8u, 2);
  return sub_1AF2581D0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF259240(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v28.n128_u64[0] = "RTIndirectSpecularTracePass";
  v28.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A888, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v25 = a3;
    sub_1AFDEFDAC();
    a2 = v24;
    a3 = v25;
  }

  sub_1AF239F88(a1, a2, a3, &v28, qword_1ED73A880, 0);
  *a1 = &unk_1F24EAA48;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  sub_1AF2593E0(v9, a4);
  sub_1AF2597CC(a1, a4);
  v28 = 0uLL;
  v10 = *(*(*(a1 + 440) + 288) + 624);
  v29 = 0;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (SHIDWORD(v10) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = WORD2(v10);
  }

  CFXTextureDescriptorMake2D(v11, v12, 0x19u, &v28);
  v13 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v26 = v28;
  v27 = v29;
  v14 = sub_1AF2373FC(v13, "distanceTex", &v26);
  *(a1 + 464) = v14;
  v15 = a5[26];
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v15, v16);
  v17 = a5[28];
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(*(a1 + 440) + 264);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 456) + 16));
  return a1;
}

double sub_1AF2593E0(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 54), v7);
  v10 = sub_1AF1D0140(v8, v9);
  v11 = sub_1AF1D005C(v8, 0) != 0;
  v12 = sub_1AF1449F0(v10) != 0;
  v41 = *(*(a1 + 55) + 172);
  v13 = CFX::RG::Pass::hash(a1);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v12)));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)));
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v17 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v41)))) >> 47)));
  *(a1 + 56) = v17;
  if (!v17)
  {
    operator new();
  }

  v18 = *(a1 + 55);
  *(v18 + 288) = v17 + 48;
  v19 = 1.0;
  v20 = 1.0;
  if (v41 != 2)
  {
    v21 = sub_1AF130864(*(a1 + 54));
    v20 = ceilf(v21 / sub_1AF130888(*(a1 + 54)));
    v18 = *(a1 + 55);
  }

  v22 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(v18 + 208)) + 4);
  v23 = vld1q_dup_f64(v22);
  v24 = *(*(a1 + 55) + 288);
  v24[80].i32[0] = v20;
  if (v41)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v24[80].i32[1] = (v20 * v25);
  v26 = vshrq_n_s64(vshlq_u64(v23, xmmword_1AFE42F50), 0x30uLL);
  v27 = vcgtq_s64(v26, vdupq_n_s64(1uLL));
  v24[76] = vmovn_s64(vsubq_s64(vandq_s8(v26, v27), vmvnq_s8(v27)));
  v28 = *(*(a1 + 55) + 288);
  v29 = *(v28 + 640);
  v26.i32[0] = *(v28 + 608) / v29;
  v26.i32[1] = HIDWORD(*(v28 + 608)) / v29;
  *(v28 + 616) = v26.i64[0];
  v30 = *(*(a1 + 55) + 288);
  v31 = *(v30 + 644);
  v26.i32[0] = *(v30 + 608) / v31;
  v26.i32[1] = HIDWORD(*(v30 + 608)) / v31;
  *(v30 + 624) = v26.i64[0];
  v32 = *(a1 + 55);
  v33 = *(v32 + 280);
  if (v33 != 2)
  {
    v34 = sub_1AF130864(*(a1 + 54));
    v19 = ceilf(v34 / sub_1AF130888(*(a1 + 54)));
    v32 = *(a1 + 55);
  }

  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  v36 = (v19 * v35);
  v37 = *(v32 + 288);
  v38 = *(v37 + 608) / v36;
  v39 = HIDWORD(*(v37 + 608)) / v36;
  result = COERCE_DOUBLE(__PAIR64__(v39, v38));
  *(v37 + 632) = __PAIR64__(v39, v38);
  return result;
}

void sub_1AF2597CC(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF12E2AC(*(a1 + 54), a2);
  v4 = vmul_lane_s32(*(*(*(a1 + 55) + 288) + 624), *(*(*(a1 + 55) + 288) + 624), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  *(a1 + 57) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF2599A4(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF2593E0(a1, a2);

  sub_1AF2597CC(a1, a2);
}

void *sub_1AF2599E4(uint64_t a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 448) + 40))
  {
    v7 = result;
    v8 = sub_1AF12E2AC(*(a1 + 432), v6);
    v10 = sub_1AF12DDCC(*(a1 + 432), v9);
    result = sub_1AF12F10C(*(a1 + 432), v11);
    if (result)
    {
      result = sub_1AF1BB260(result, v12);
      if (result)
      {
        v161 = v8;
        v159 = result;
        v14 = sub_1AF12F10C(*(a1 + 432), v13);
        sub_1AF27F12C(v14, v164);
        v15 = sub_1AF13050C(*(a1 + 432), 1);
        v157 = v15[1];
        v158 = *v15;
        v155 = v15[3];
        v156 = v15[2];
        v163 = sub_1AF12FCE8(*(a1 + 432), 0);
        v160 = sub_1AF1D0140(v10, v16);
        v17 = *(a2 + 24);
        v18 = *(*(a1 + 440) + 200);
        v19 = CFX::RG::Temporal::currentFrame(v160);
        Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
        v20 = *(a2 + 24);
        v21 = *(*(a1 + 440) + 208);
        v22 = CFX::RG::Temporal::currentFrame(Texture);
        v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v24 = *(a2 + 24);
        v25 = *(*(a1 + 440) + 232);
        v26 = CFX::RG::Temporal::currentFrame(v23);
        v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
        v28 = *(a2 + 24);
        v29 = *(*(a1 + 440) + 224);
        v30 = CFX::RG::Temporal::currentFrame(v27);
        v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
        v32 = v31;
        v33 = *(*(a1 + 440) + 240);
        if (v33)
        {
          v34 = *(a2 + 24);
          v35 = CFX::RG::Temporal::currentFrame(v31);
          v31 = CFX::GPUResourceManager::getTexture(v34, v33, v35);
          v33 = v31;
        }

        v36 = *(a2 + 24);
        v37 = *(a1 + 464);
        v38 = CFX::RG::Temporal::currentFrame(v31);
        v39 = CFX::GPUResourceManager::getTexture(v36, v37, v38);
        objc_msgSend_setTexture_atIndex_(v7, v40, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v41, v23, 1);
        objc_msgSend_setTexture_atIndex_(v7, v42, v27, 2);
        objc_msgSend_setTexture_atIndex_(v7, v43, v32, 5);
        objc_msgSend_setTexture_atIndex_(v7, v44, v39, 7);
        v45 = sub_1AF2757FC(v161, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v7, v46, v45, 9);
        objc_msgSend_setTexture_atIndex_(v7, v47, v33, 10);
        v49 = sub_1AF1D005C(v10, 0);
        if (v49)
        {
          v50 = objc_msgSend_textureForMaterialProperty_(v161, v48, v49);
          if (v50)
          {
            objc_msgSend_setTexture_atIndex_(v7, v51, v50, 11);
          }

          v52 = sub_1AF167220(v49, v51);
          v53 = MEMORY[0x1E69E9B18];
          if (v52)
          {
            v53 = v52;
          }

          v54 = *v53;
          v55 = v53[1];
          v56 = v53[2];
          v57 = v53[3];
          v58 = *(*(a1 + 440) + 288);
          v58[32] = v54;
          v58[33] = v55;
          v58[34] = v56;
          v58[35] = v57;
        }

        v162 = sub_1AF130C00(**(a1 + 440), 0);
        v59 = *(*(a1 + 440) + 288);
        v59[8] = v158;
        v59[9] = v157;
        v59[10] = v156;
        v59[11] = v155;
        v60 = sub_1AF15E62C(v164, &v163);
        v61 = 0;
        v62 = *(v60 + 1);
        v63 = *(v60 + 2);
        v64 = *(v60 + 3);
        v65 = *(*(a1 + 440) + 288);
        v65[20] = *v60;
        v65[21] = v62;
        v65[22] = v63;
        v65[23] = v64;
        v66 = *(a1 + 448);
        v67 = v66[23];
        v68 = v66[24];
        v69 = v66[25];
        v70 = v66[26];
        v71 = v66[12];
        v72 = v66[13];
        v73 = v66[14];
        v165 = v66[11];
        v166 = v71;
        v167 = v72;
        v168 = v73;
        do
        {
          *&v169[v61] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*(&v165 + v61))), v68, *&v165.f32[v61 / 4], 1), v69, *(&v165 + v61), 2), v70, *(&v165 + v61), 3);
          v61 += 16;
        }

        while (v61 != 64);
        v74 = *&v169[16];
        v75 = v170;
        v76 = v171;
        v77 = *(*(a1 + 440) + 288);
        *v77 = *v169;
        v77[1] = v74;
        v77[2] = v75;
        v77[3] = v76;
        *(*(*(a1 + 440) + 288) + 192) = __invert_f4(*(*(a1 + 448) + 176));
        *(*(*(a1 + 440) + 288) + 384) = __invert_f4(*(*(a1 + 448) + 48));
        *(*(*(a1 + 440) + 288) + 576) = sub_1AF15D6DC(v159, v78);
        *(*(*(a1 + 440) + 288) + 584) = (objc_msgSend_width(v23, v79, v80) * v162.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 288) + 588) = vmuls_lane_f32(objc_msgSend_height(v23, v81, v82), v162, 1) * 0.5;
        v84 = *(a1 + 440);
        v85 = *(v84 + 288);
        *(v85 + 596) = *(v84 + 192);
        if (v49)
        {
          v86 = sub_1AF166598(v49, v83);
          v85 = *(*(a1 + 440) + 288);
        }

        else
        {
          v86 = 0.0;
        }

        *(v85 + 600) = v86;
        v87 = objc_msgSend_setBytes_length_atIndex_(v7, v83, v85, 656, 8);
        v88 = *(a2 + 24);
        v89 = *(*(a1 + 440) + 264);
        v90 = CFX::RG::Temporal::currentFrame(v87);
        CFX::GPUResourceManager::getBuffer(v88, v89, v90);
        LODWORD(v89) = v91;
        v92 = *(a2 + 24);
        v93 = *(*(a1 + 456) + 16);
        v95 = CFX::RG::Temporal::currentFrame(v94);
        CFX::GPUResourceManager::getBuffer(v92, v93, v95);
        LODWORD(v93) = v96;
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v98, v97, v89, 2);
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v100, v99, v93, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v101, *(*(a1 + 456) + 40), 0, 0);
        v103 = sub_1AF1403B4(*(a1 + 448) + 16, v102);
        v104 = sub_1AFDE323C(v103);
        objc_msgSend_dispatchOne_(v7, v105, v104);
        v106 = *(*(*(a1 + 440) + 288) + 624);
        v107 = v106;
        v108 = SHIDWORD(v106);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v109, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v110, *(*(a1 + 456) + 32), 0, 1);
        v112 = sub_1AF1403B4(*(a1 + 448) + 24, v111);
        v113 = sub_1AFDE323C(v112);
        objc_msgSend_setComputePipelineState_(v7, v114, v113);
        v116 = sub_1AF1403B4(*(a1 + 448) + 24, v115);
        v117 = sub_1AFDE323C(v116);
        *v169 = v107;
        *&v169[8] = v108;
        *&v169[16] = 1;
        RGMTLComputeCommandEncoderDispatchOnGrid2D(v7, v117, v169, 1);
        v119 = sub_1AF1403B4(*(a1 + 448) + 40, v118);
        v120 = sub_1AFDE323C(v119);
        *v169 = objc_msgSend_threadExecutionWidth(v120, v121, v122);
        *&v169[8] = vdupq_n_s64(1uLL);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v123, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBytes_length_atIndex_(v7, v124, v169, 24, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v125, *(*(a1 + 456) + 48), 0, 2);
        v127 = sub_1AF1403B4(*(a1 + 448) + 32, v126);
        v128 = sub_1AFDE323C(v127);
        objc_msgSend_dispatchOne_(v7, v129, v128);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v130, *(*(a1 + 440) + 176), 0, 4);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v131, *(*(a1 + 440) + 184), 0, 5);
        sub_1AF144838(v160, v7);
        v132 = sub_1AF1448D8(v160);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v133, v132, 0, 0);
        v134 = sub_1AF1448D0(v160);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v7, v135, v134, 1);
        if (sub_1AF1449F0(v160))
        {
          v137 = sub_1AF1403B4(*(a1 + 448) + 40, v136);
          v138 = sub_1AFDE323C(v137);
          v139 = sub_1AF144918(v160, v138);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v7, v140, v139, 3);
        }

        v141 = sub_1AF1448E8(v160);
        v144 = sub_1AF144A00(v160, v142, v143);
        objc_msgSend_useResources_count_usage_(v7, v145, v141, v144, 1);
        v147 = sub_1AF1403B4(*(a1 + 448) + 40, v146);
        v148 = sub_1AFDE323C(v147);
        objc_msgSend_setComputePipelineState_(v7, v149, v148);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v150, *(*(a1 + 456) + 40), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v151, *(*(a1 + 456) + 32), 0, 7);
        v152 = *(*(a1 + 456) + 48);
        v165 = *v169;
        v166.i64[0] = *&v169[16];
        return objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v7, v153, v152, 0, &v165);
      }
    }
  }

  return result;
}

uint64_t sub_1AF25A140(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v32.n128_u64[0] = "RTIndirectSpecularUpscalePass";
  v32.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A898, memory_order_acquire) & 1) == 0)
  {
    v28 = a2;
    v29 = a3;
    sub_1AFDEFE04();
    a2 = v28;
    a3 = v29;
  }

  sub_1AF239F88(a1, a2, a3, &v32, qword_1ED73A890, 0);
  *a1 = &unk_1F24EAAA0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 464) = sub_1AF2757FC(v10, a4[4]);
  v32 = 0uLL;
  v33 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 288) + 616), WORD2(*(*(*(a1 + 440) + 288) + 616)), 0x73u, &v32);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v30 = v32;
  v31 = v33;
  v12 = sub_1AF2373FC(v11, "IndirectSpecularUpscale", &v30);
  *(a1 + 456) = v12;
  v13 = *(*(a1 + 440) + 200);
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(a1, v13, v14);
  v15 = *(*(a1 + 440) + 208);
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(*(a1 + 440) + 224);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(*(a1 + 440) + 256);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = *(*(a1 + 440) + 272);
  v26 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(a1, v24, v26);
  CFX::RG::Pass::writeTo(a1, *(a1 + 456));
  return a1;
}

void sub_1AF25A304(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v9 = *(*(a1 + 55) + 172);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) >> 47)));
  *(a1 + 56) = v8;
  if (!v8)
  {
    operator new();
  }
}

id sub_1AF25A444(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 288), 656, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 200);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 224);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = *(a1[55] + 256);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 2);
    objc_msgSend_setTexture_atIndex_(v7, v28, a1[58], 3);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v24, 4);
    v31 = *(a2 + 24);
    v32 = *(a1[55] + 272);
    v33 = CFX::RG::Temporal::currentFrame(v30);
    CFX::GPUResourceManager::getBuffer(v31, v32, v33);
    LODWORD(v31) = v34;
    CFXBufferSliceGetMTLBuffer();
    v37 = objc_msgSend_setBuffer_offset_atIndex_(v7, v36, v35, v31, 0);
    v38 = *(a2 + 24);
    v39 = a1[57];
    v40 = CFX::RG::Temporal::currentFrame(v37);
    v41 = CFX::GPUResourceManager::getTexture(v38, v39, v40);
    objc_msgSend_setTexture_atIndex_(v7, v42, v41, 10);
    v44 = sub_1AF1403B4(a1[56] + 16, v43);
    v46 = sub_1AFDE323C(v44);

    return objc_msgSend_dispatch_onTexture2D_(v7, v45, v46, v41);
  }

  return result;
}

uint64_t sub_1AF25A63C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v8 = *a5;
  v21.n128_u64[0] = "RTIndirectSpecularTemporalDenoisePass";
  v21.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A8A8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDEFE5C();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, &v21, qword_1ED73A8A0, 0);
  *a1 = &unk_1F24EAAF8;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v21 = 0uLL;
  v22 = 0;
  CFXTextureDescriptorMake2D(*(a5[36] + 616), WORD2(*(a5[36] + 616)), 0x73u, &v21);
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v19 = v21;
  v20 = v22;
  v10 = sub_1AF2373FC(v9, "IndirectDiffuseDenoiseOutput", &v19);
  *(a1 + 472) = v10;
  v11 = *(*(a1 + 440) + 216);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 440) + 256);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF25A794(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  v7 = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  *(a1 + 56) = v9;
  if (!v9)
  {
    v10 = sub_1AF25AAFC(*(a2 + 32), v8);
    *(a1 + 56) = v10;
    v12 = objc_msgSend_newComputePipelineStateWithFunctionName_(v7, v11, @"vfx_rt_indirect_specular_temporal_denoise");

    sub_1AF23355C(v10 + 2, v12);
  }
}

__n128 sub_1AF25A83C(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 288), 656, 8);
    v10 = *(a2 + 24);
    v11 = a1[57];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 256);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v69 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 200);
    v19 = CFX::RG::Temporal::currentFrame(v69);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = v20;
    v22 = a1[55];
    v23 = *(v22 + 240);
    if (v23)
    {
      v24 = *(a2 + 24);
      v25 = CFX::RG::Temporal::currentFrame(v20);
      v20 = CFX::GPUResourceManager::getTexture(v24, v23, v25);
      v23 = v20;
      v22 = a1[55];
    }

    v26 = *(a2 + 24);
    v27 = *(v22 + 216);
    v28 = CFX::RG::Temporal::currentFrame(v20);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[55] + 224);
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    v34 = *(a2 + 24);
    v35 = *(a1[55] + 208);
    v36 = CFX::RG::Temporal::currentFrame(v33);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    objc_msgSend_setTexture_atIndex_(v8, v38, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v8, v39, v21, 1);
    objc_msgSend_setTexture_atIndex_(v8, v40, v23, 2);
    objc_msgSend_setTexture_atIndex_(v8, v41, v29, 3);
    objc_msgSend_setTexture_atIndex_(v8, v42, v33, 4);
    objc_msgSend_setTexture_atIndex_(v8, v43, v69, 5);
    v45 = objc_msgSend_setTexture_atIndex_(v8, v44, v37, 6);
    v46 = *(a2 + 24);
    v47 = a1[59];
    v48 = CFX::RG::Temporal::currentFrame(v45);
    v49 = CFX::GPUResourceManager::getTexture(v46, v47, v48);
    v50 = *(a2 + 24);
    v51 = a1[58];
    v52 = CFX::RG::Temporal::previousFrame(v49);
    v53 = CFX::GPUResourceManager::getTexture(v50, v51, v52);
    objc_msgSend_setTexture_atIndex_(v8, v54, v49, 10);
    objc_msgSend_setTexture_atIndex_(v8, v55, v53, 11);
    v57 = sub_1AF1403B4(a1[56] + 16, v56);
    v58 = sub_1AFDE323C(v57);
    objc_msgSend_dispatch_onTexture2D_(v8, v59, v58, v49);
    v60 = *(a1[55] + 288);
    v61 = v60[13];
    v60[16] = v60[12];
    v60[17] = v61;
    v62 = v60[15];
    v60[18] = v60[14];
    v60[19] = v62;
    v63 = *(a1[55] + 288);
    v64 = v63[3];
    v63[6] = v63[2];
    v63[7] = v64;
    v65 = v63[1];
    v63[4] = *v63;
    v63[5] = v65;
    v66 = *(a1[55] + 288);
    v67 = *(v66 + 400);
    *(v66 + 448) = *(v66 + 384);
    *(v66 + 464) = v67;
    result = *(v66 + 416);
    v68 = *(v66 + 432);
    *(v66 + 480) = result;
    *(v66 + 496) = v68;
    ++*(*(a1[55] + 288) + 592);
  }

  return result;
}

void *sub_1AF25AAFC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF25AB84(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v35.n128_u64[0] = "RTIndirectSpecularSpatialDenoisePass";
  v35.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A8B8, memory_order_acquire) & 1) == 0)
  {
    v31 = a2;
    v32 = a3;
    sub_1AFDEFEB4();
    a2 = v31;
    a3 = v32;
  }

  sub_1AF239F88(a1, a2, a3, &v35, qword_1ED73A8B0, 0);
  *a1 = &unk_1F24EAB50;
  memcpy((a1 + 440), a5, 0x128uLL);
  *(a1 + 736) = 0u;
  *(a1 + 760) = 0u;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  v35 = 0uLL;
  v36 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 728) + 616), WORD2(*(*(a1 + 728) + 616)), 0x73u, &v35);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v33 = v35;
  v34 = v36;
  *(a1 + 768) = sub_1AF2373FC(v11, "IndirectSpecularSpatialTmpOutput", &v33);
  *(a1 + 752) = sub_1AF2757FC(v10, a4[4]);
  sub_1AF25AD84(a1, a4);
  v12 = *(a1 + 640);
  v14 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v12, v14);
  v15 = *(a1 + 648);
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(a1 + 664);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(a1 + 696);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = *(a1 + 768);
  v26 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(a1, v24, v26);
  v27 = CFX::RG::Pass::writeTo(a1, *(a1 + 768));
  v28 = *(*(a1 + 744) + 16);
  v29 = CFX::RG::Temporal::previousFrame(v27);
  CFX::RG::Pass::readFrom(a1, v28, v29);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 744) + 16));
  return a1;
}

void sub_1AF25AD84(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 91) + 616), WORD2(*(*(a1 + 91) + 616)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 93) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF25AF00(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25AD84(a1, a2);

  sub_1AF25AF40(a1, a2);
}

void sub_1AF25AF40(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 92) = v8;
  if (!v8)
  {
    operator new();
  }
}

id sub_1AF25B094(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[92] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, a1[91], 656, 8);
    v9 = *(a2 + 24);
    v10 = a1[80];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = a1[81];
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = a1[83];
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = a1[87];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 2);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 3);
    objc_msgSend_setTexture_atIndex_(v7, v28, v24, 4);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, a1[94], 6);
    v31 = *(a2 + 24);
    v32 = a1[95];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[96];
    v37 = CFX::RG::Temporal::currentFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    v39 = *(a2 + 24);
    v40 = *(a1[93] + 16);
    v41 = CFX::RG::Temporal::currentFrame(v38);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    objc_msgSend_setTexture_atIndex_(v7, v43, v34, 0);
    objc_msgSend_setTexture_atIndex_(v7, v44, v38, 10);
    v46 = sub_1AF1403B4(a1[92] + 16, v45);
    v47 = sub_1AFDE323C(v46);
    objc_msgSend_dispatch_onTexture2D_(v7, v48, v47, v38);
    objc_msgSend_setTexture_atIndex_(v7, v49, v38, 0);
    objc_msgSend_setTexture_atIndex_(v7, v50, v42, 10);
    v52 = sub_1AF1403B4(a1[92] + 24, v51);
    v54 = sub_1AFDE323C(v52);

    return objc_msgSend_dispatch_onTexture2D_(v7, v53, v54, v42);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25B2D0(CFX::RG::RenderGraphContext *a1, unint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25B444(v4, a1, a2);
  a2[34] = *(*(v5 + 57) + 16);
  if ((atomic_load_explicit(byte_1ED73A888, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEFDAC();
  }

  v6 = *a2;
  v18[0] = qword_1ED73A880;
  v18[1] = v6;
  v7 = a2[27];
  v18[2] = a2[25];
  v18[3] = v7;
  v18[4] = *(v5 + 58);
  v8 = sub_1AF2537E4(v4, a1, v18);
  CFX::RG::Pass::dependsOn(v8, v5);
  a2[32] = sub_1AF262D90(v8);
  v9 = sub_1AF25B49C(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v9, v8);
  v10 = sub_1AF25B4F4(v4, a1, a2);
  v11 = *(v9 + 57);
  *(v10 + 57) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  CFX::RG::Pass::dependsOn(v10, v9);
  v13 = sub_1AF25B54C(v4, a1, a2);
  v14 = *(v10 + 59);
  *(v13 + 95) = v14;
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(v13, v14, v15);
  CFX::RG::Pass::dependsOn(v13, v10);
  v16 = *(*(v13 + 93) + 16);
  *(v10 + 58) = v16;
  a2[31] = v16;
  return v5;
}

uint64_t sub_1AF25B444(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BB44(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25B49C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BBA4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25B4F4(uint64_t *a1, CFX::RG::RenderGraphContext *a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BC04(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25B54C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25BC64(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25B5A8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25B5E4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25B620(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25B65C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B694(uint64_t a1)
{
  *a1 = &unk_1F24EABA8;

  return a1;
}

void sub_1AF25B6F4(uint64_t a1)
{
  *a1 = &unk_1F24EABA8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B774(uint64_t a1)
{
  *a1 = &unk_1F24EABC8;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25B7E4(uint64_t a1)
{
  *a1 = &unk_1F24EABC8;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B874(uint64_t a1)
{
  *a1 = &unk_1F24EABE8;

  return a1;
}

void sub_1AF25B8BC(uint64_t a1)
{
  *a1 = &unk_1F24EABE8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B924(uint64_t a1)
{
  *a1 = &unk_1F24EAC08;

  return a1;
}

void sub_1AF25B96C(uint64_t a1)
{
  *a1 = &unk_1F24EAC08;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25B9D4(uint64_t a1)
{
  *a1 = &unk_1F24EAC28;

  return a1;
}

void sub_1AF25BA24(uint64_t a1)
{
  *a1 = &unk_1F24EAC28;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25BA94(uint64_t a1)
{
  *a1 = &unk_1F24EAC48;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25BADC(uint64_t a1)
{
  *a1 = &unk_1F24EAC48;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25BB44(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF259240(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25BBA4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF25A140(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25BC04(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u, 2);
  return sub_1AF25A63C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25BC64(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x308u, 8u, 2);
  return sub_1AF25AB84(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF25BCC4(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v22.n128_u64[0] = "RTSubsurfaceTracePass";
  v22.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A8C8, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDEFF0C();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, &v22, qword_1ED73A8C0, 0);
  *a1 = &unk_1F24EAC68;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  *(a1 + 55) = a5;
  sub_1AF25BDF8(v9, a4);
  sub_1AF25C054(a1, a4);
  v10 = *(*(a1 + 55) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v10, v12);
  v13 = *(*(a1 + 55) + 200);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = *(*(a1 + 55) + 208);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 57) + 16));
  return a1;
}

uint64_t sub_1AF25BDF8(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 54), v7);
  v10 = sub_1AF1D0140(v8, v9);
  v11 = sub_1AF1D005C(v8, 0) != 0;
  v20 = v11;
  v12 = sub_1AF1449F0(v10) != 0;
  v18 = *(*(a1 + 55) + 172);
  v19 = v12;
  v13 = CFX::RG::Pass::hash(a1);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v12)));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)));
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v18)))) >> 47)));
  *(a1 + 56) = result;
  if (!result)
  {
    operator new();
  }

  *(*(a1 + 55) + 272) = result + 32;
  return result;
}

void sub_1AF25C054(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(*(a1 + 55) + 208));
  v5 = (((((*(v4 + 4) >> 16) + (((*(v4 + 4) >> 16) & 0x8000) >> 15)) << 16) >> 17) * (((*(v4 + 4) + ((*(v4 + 4) & 0x8000) >> 15)) << 16) >> 17));
  v6 = CFX::RG::Pass::hash(a1);
  v7 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v6)))) >> 47)));
  *(a1 + 57) = v7;
  if (!v7)
  {
    operator new();
  }
}

uint64_t sub_1AF25C1C4(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25C054(a1, a2);

  return sub_1AF25BDF8(a1, a2);
}

void *sub_1AF25C204(uint64_t a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 448) + 16))
  {
    v7 = result;
    v8 = sub_1AF12E2AC(*(a1 + 432), v6);
    v10 = sub_1AF12DDCC(*(a1 + 432), v9);
    result = sub_1AF12F10C(*(a1 + 432), v11);
    if (result)
    {
      result = sub_1AF1BB260(result, v12);
      if (result)
      {
        v14 = sub_1AF12F10C(*(a1 + 432), v13);
        sub_1AF27F12C(v14, v131);
        v15 = sub_1AF13050C(*(a1 + 432), 1);
        v125 = v15[1];
        v126 = *v15;
        v123 = v15[3];
        v124 = v15[2];
        v130 = sub_1AF12FCE8(*(a1 + 432), 0);
        v127 = sub_1AF1D0140(v10, v16);
        v128 = v8;
        v17 = *(a2 + 24);
        v18 = *(*(a1 + 440) + 224);
        v19 = CFX::RG::Temporal::currentFrame(v127);
        Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
        v20 = *(a2 + 24);
        v21 = *(*(a1 + 440) + 208);
        v22 = CFX::RG::Temporal::currentFrame(Texture);
        v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v24 = *(a2 + 24);
        v25 = *(*(a1 + 440) + 216);
        v26 = CFX::RG::Temporal::currentFrame(v23);
        v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
        v28 = *(a2 + 24);
        v29 = *(*(a1 + 440) + 240);
        v30 = CFX::RG::Temporal::currentFrame(v27);
        v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
        v32 = *(a2 + 24);
        v33 = *(*(a1 + 440) + 200);
        v34 = CFX::RG::Temporal::currentFrame(v31);
        v35 = CFX::GPUResourceManager::getTexture(v32, v33, v34);
        v36 = *(a2 + 24);
        v37 = *(*(a1 + 440) + 248);
        v38 = CFX::RG::Temporal::currentFrame(v35);
        v39 = CFX::GPUResourceManager::getTexture(v36, v37, v38);
        objc_msgSend_setTexture_atIndex_(v7, v40, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v41, v23, 1);
        objc_msgSend_setTexture_atIndex_(v7, v42, v27, 2);
        objc_msgSend_setTexture_atIndex_(v7, v43, v31, 3);
        objc_msgSend_setTexture_atIndex_(v7, v44, v35, 5);
        v45 = sub_1AF2757FC(v128, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v7, v46, v45, 9);
        objc_msgSend_setTexture_atIndex_(v7, v47, v39, 10);
        v49 = sub_1AF1D005C(v10, 0);
        if (v49)
        {
          v50 = objc_msgSend_textureForMaterialProperty_(v128, v48, v49);
          if (v50)
          {
            objc_msgSend_setTexture_atIndex_(v7, v51, v50, 8);
          }

          v52 = sub_1AF167220(v49, v51);
          v53 = MEMORY[0x1E69E9B18];
          if (v52)
          {
            v53 = v52;
          }

          v54 = *v53;
          v55 = v53[1];
          v56 = v53[2];
          v57 = v53[3];
          v58 = *(*(a1 + 440) + 272);
          v58[28] = v54;
          v58[29] = v55;
          v58[30] = v56;
          v58[31] = v57;
        }

        v129 = sub_1AF130C00(**(a1 + 440), 0);
        v59 = *(*(a1 + 440) + 272);
        v59[8] = v126;
        v59[9] = v125;
        v59[10] = v124;
        v59[11] = v123;
        v60 = sub_1AF15E62C(v131, &v130);
        v61 = 0;
        v62 = *(v60 + 1);
        v63 = *(v60 + 2);
        v64 = *(v60 + 3);
        v65 = *(*(a1 + 440) + 272);
        v65[16] = *v60;
        v65[17] = v62;
        v65[18] = v63;
        v65[19] = v64;
        v66 = *(a1 + 448);
        v67 = v66[18];
        v68 = v66[19];
        v69 = v66[20];
        v70 = v66[21];
        v71 = v66[11];
        v72 = v66[12];
        v73 = v66[13];
        v132[0] = v66[10];
        v132[1] = v71;
        v132[2] = v72;
        v132[3] = v73;
        do
        {
          *(&v133 + v61 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(v132[v61])), v68, *&v132[v61], 1), v69, v132[v61], 2), v70, v132[v61], 3);
          ++v61;
        }

        while (v61 != 4);
        v74 = v134;
        v75 = v135;
        v76 = v136;
        v77 = *(*(a1 + 440) + 272);
        *v77 = v133;
        v77[1] = v74;
        v77[2] = v75;
        v77[3] = v76;
        *(*(*(a1 + 440) + 272) + 192) = __invert_f4(*(*(a1 + 448) + 160));
        *(*(*(a1 + 440) + 272) + 320) = __invert_f4(*(*(a1 + 448) + 32));
        *(*(*(a1 + 440) + 272) + 512) = (objc_msgSend_width(Texture, v78, v79) * v129.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 272) + 516) = vmuls_lane_f32(objc_msgSend_height(Texture, v80, v81), v129, 1) * 0.5;
        v83 = *(a1 + 440);
        v84 = *(v83 + 272);
        *(v84 + 528) = *(v83 + 192);
        if (v49)
        {
          v85 = sub_1AF166598(v49, v82);
          v84 = *(*(a1 + 440) + 272);
        }

        else
        {
          v85 = 0.0;
        }

        *(v84 + 532) = v85;
        objc_msgSend_setBytes_length_atIndex_(v7, v82, v84, 544, 8);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v86, *(*(a1 + 440) + 176), 0, 4);
        v88 = objc_msgSend_setBuffer_offset_atIndex_(v7, v87, *(*(a1 + 440) + 184), 0, 5);
        v89 = *(a2 + 24);
        v90 = *(*(a1 + 456) + 16);
        v91 = CFX::RG::Temporal::currentFrame(v88);
        CFX::GPUResourceManager::getBuffer(v89, v90, v91);
        LODWORD(v89) = v92;
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v94, v93, v89, 10);
        sub_1AF144838(v127, v7);
        v95 = sub_1AF1448D8(v127);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v96, v95, 0, 0);
        v97 = sub_1AF1448D0(v127);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v7, v98, v97, 1);
        if (sub_1AF1449F0(v127))
        {
          v100 = sub_1AF1403B4(*(a1 + 448) + 16, v99);
          v101 = sub_1AFDE323C(v100);
          v102 = sub_1AF144918(v127, v101);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v7, v103, v102, 3);
        }

        v104 = sub_1AF1448E8(v127);
        v107 = sub_1AF144A00(v127, v105, v106);
        objc_msgSend_useResources_count_usage_(v7, v108, v104, v107, 1);
        v110 = sub_1AF1403B4(*(a1 + 448) + 16, v109);
        v111 = sub_1AFDE323C(v110);
        objc_msgSend_setComputePipelineState_(v7, v112, v111);
        v115 = objc_msgSend_width(v23, v113, v114) >> 1;
        v118 = objc_msgSend_height(v23, v116, v117) >> 1;
        v120 = sub_1AF1403B4(*(a1 + 448) + 16, v119);
        v121 = sub_1AFDE323C(v120);
        *&v133 = v115;
        *(&v133 + 1) = v118;
        *&v134 = 1;
        return RGMTLComputeCommandEncoderDispatchOnGrid2D(v7, v121, &v133, 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AF25C7A4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v18[0].n128_u64[0] = "RTSubsurfaceUpscalePass";
  v18[0].n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A8D8, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v17 = a3;
    sub_1AFDEFF64();
    a2 = v16;
    a3 = v17;
  }

  sub_1AF239F88(a1, a2, a3, v18, qword_1ED73A8D0, 0);
  *a1 = &unk_1F24EACC0;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 456) = sub_1AF2757FC(v10, a4[4]);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v18, (*(a1 + 440) + 8), 115);
  v12 = sub_1AF233CC8(v11, "SubsurfaceUpscale", v18);
  *(a1 + 464) = v12;
  v13 = *(*(a1 + 440) + 264);
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(a1, v13, v14);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  return a1;
}

void sub_1AF25C8D8(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 56) = v8;
  if (!v8)
  {
    operator new();
  }
}

id sub_1AF25C9D0(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 272), 544, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 224);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    objc_msgSend_setTexture_atIndex_(v7, v17, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v18, v16, 1);
    v20 = objc_msgSend_setTexture_atIndex_(v7, v19, a1[57], 2);
    v21 = *(a2 + 24);
    v22 = *(a1[55] + 264);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    CFX::GPUResourceManager::getBuffer(v21, v22, v23);
    LODWORD(v21) = v24;
    CFXBufferSliceGetMTLBuffer();
    v27 = objc_msgSend_setBuffer_offset_atIndex_(v7, v26, v25, v21, 0);
    v28 = *(a2 + 24);
    v29 = a1[58];
    v30 = CFX::RG::Temporal::currentFrame(v27);
    v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
    objc_msgSend_setTexture_atIndex_(v7, v32, v31, 10);
    v34 = sub_1AF1403B4(a1[56] + 16, v33);
    v36 = sub_1AFDE323C(v34);

    return objc_msgSend_dispatch_onTexture2D_(v7, v35, v36, v31);
  }

  return result;
}

uint64_t sub_1AF25CB54(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v8 = *a5;
  v16[0].n128_u64[0] = "RTSubsurfaceTemporalDenoisePass";
  v16[0].n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A8E8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v15 = a3;
    sub_1AFDEFFBC();
    a2 = v14;
    a3 = v15;
  }

  sub_1AF239F88(a1, a2, a3, v16, qword_1ED73A8E0, 0);
  *a1 = &unk_1F24EAD18;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v16, (*(a1 + 440) + 8), 115);
  v10 = sub_1AF233CC8(v9, "SubsurfaceUpscale", v16);
  *(a1 + 472) = v10;
  v11 = *(*(a1 + 440) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF25CC78(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 56) = v8;
  if (!v8)
  {
    operator new();
  }
}

id sub_1AF25CD70(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 272), 544, 8);
    v9 = *(a2 + 24);
    v10 = a1[57];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 224);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = v16;
    v18 = a1[55];
    v19 = *(v18 + 248);
    if (v19)
    {
      v20 = *(a2 + 24);
      v21 = CFX::RG::Temporal::currentFrame(v16);
      v16 = CFX::GPUResourceManager::getTexture(v20, v19, v21);
      v19 = v16;
      v18 = a1[55];
    }

    v22 = *(a2 + 24);
    v23 = *(v18 + 232);
    v24 = CFX::RG::Temporal::currentFrame(v16);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v7, v26, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v27, v17, 1);
    objc_msgSend_setTexture_atIndex_(v7, v28, v19, 2);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v25, 3);
    v31 = *(a2 + 24);
    v32 = a1[59];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[58];
    v37 = CFX::RG::Temporal::previousFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v7, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v7, v40, v38, 11);
    v42 = sub_1AF1403B4(a1[56] + 16, v41);
    v44 = sub_1AFDE323C(v42);

    return objc_msgSend_dispatch_onTexture2D_(v7, v43, v44, v34);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25CF4C(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v19.n128_u64[0] = "RTSubsurfaceSpatialDenoisePass";
  v19.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A8F8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDF0014();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, &v19, qword_1ED73A8F0, 0);
  *a1 = &unk_1F24EAD70;
  *(a1 + 55) = a5;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  sub_1AF25D058(v9, a4);
  v10 = *(*(a1 + 55) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v10, v12);
  v13 = *(*(a1 + 57) + 16);
  v15 = CFX::RG::Temporal::previousFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 57) + 16));
  return a1;
}

void sub_1AF25D058(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(*(a1 + 55) + 208)) + 4);
  v11 = 0uLL;
  v12 = 0;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v4 >> 16;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  CFXTextureDescriptorMake2D(v5, v7, 0x73u, &v11);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v11) ^ v8)))) >> 47));
  v10 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (SDWORD1(v11) >> 16))))) >> 47)));
  *(a1 + 57) = v10;
  if (!v10)
  {
    operator new();
  }
}

void sub_1AF25D1F0(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25D058(a1, a2);

  sub_1AF25D230(a1, a2);
}

void sub_1AF25D230(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 56) = v8;
  if (!v8)
  {
    operator new();
  }
}

__n128 sub_1AF25D328(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 272), 544, 8);
    v10 = *(a2 + 24);
    v11 = *(a1[55] + 224);
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 208);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    objc_msgSend_setTexture_atIndex_(v8, v18, Texture, 1);
    v20 = objc_msgSend_setTexture_atIndex_(v8, v19, v17, 2);
    v21 = *(a2 + 24);
    v22 = a1[58];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    v25 = *(a2 + 24);
    v26 = *(a1[57] + 16);
    v27 = CFX::RG::Temporal::currentFrame(v24);
    v28 = CFX::GPUResourceManager::getTexture(v25, v26, v27);
    v55 = 1065353216;
    objc_msgSend_setBytes_length_atIndex_(v8, v29, &v55, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v30, v24, 0);
    objc_msgSend_setTexture_atIndex_(v8, v31, v28, 10);
    v33 = sub_1AF1403B4(a1[56] + 16, v32);
    v34 = sub_1AFDE323C(v33);
    objc_msgSend_dispatch_onTexture2D_(v8, v35, v34, v28);
    v55 = 0x40000000;
    objc_msgSend_setBytes_length_atIndex_(v8, v36, &v55, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v37, v28, 0);
    objc_msgSend_setTexture_atIndex_(v8, v38, v24, 10);
    v40 = sub_1AF1403B4(a1[56] + 16, v39);
    v41 = sub_1AFDE323C(v40);
    objc_msgSend_dispatch_onTexture2D_(v8, v42, v41, v28);
    v55 = 1082130432;
    objc_msgSend_setBytes_length_atIndex_(v8, v43, &v55, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v44, v24, 0);
    objc_msgSend_setTexture_atIndex_(v8, v45, v28, 10);
    v47 = sub_1AF1403B4(a1[56] + 16, v46);
    v48 = sub_1AFDE323C(v47);
    objc_msgSend_dispatch_onTexture2D_(v8, v49, v48, v28);
    v50 = *(a1[55] + 272);
    v51 = v50[1];
    v50[4] = *v50;
    v50[5] = v51;
    v52 = v50[3];
    v50[6] = v50[2];
    v50[7] = v52;
    v53 = *(a1[55] + 272);
    v54 = *(v53 + 368);
    *(v53 + 416) = *(v53 + 352);
    *(v53 + 432) = v54;
    result = *(v53 + 336);
    *(v53 + 384) = *(v53 + 320);
    *(v53 + 400) = result;
    ++*(*(a1[55] + 272) + 524);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25D594(CFX::RG::RenderGraphContext *a1, unint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25D6B8(v4, a1, a2);
  a2[33] = *(*(v5 + 57) + 16);
  v6 = sub_1AF25D710(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v6, v5);
  v7 = sub_1AF25D768(v4, a1, a2);
  v8 = *(v6 + 58);
  *(v7 + 57) = v8;
  v9 = CFX::RG::Temporal::currentFrame(v7);
  CFX::RG::Pass::readFrom(v7, v8, v9);
  CFX::RG::Pass::dependsOn(v7, v6);
  v10 = sub_1AF25D7C0(v4, a1, a2);
  v11 = *(v7 + 59);
  *(v10 + 58) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  v13 = CFX::RG::Pass::dependsOn(v10, v7);
  v14 = *(*(v10 + 57) + 16);
  *(v7 + 58) = v14;
  v15 = CFX::RG::Temporal::previousFrame(v13);
  CFX::RG::Pass::readFrom(v7, v14, v15);
  a2[32] = *(*(v10 + 57) + 16);
  return v5;
}

uint64_t sub_1AF25D6B8(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DD28(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25D710(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DD88(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25D768(uint64_t *a1, CFX::RG::RenderGraphContext *a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DDE8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25D7C0(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25DE48(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25D81C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25D858(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25D894(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25D8D0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25D908(uint64_t a1)
{
  *a1 = &unk_1F24EADC8;

  return a1;
}

void sub_1AF25D950(uint64_t a1)
{
  *a1 = &unk_1F24EADC8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25D9B8(uint64_t a1)
{
  *a1 = &unk_1F24EADE8;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25DA00(uint64_t a1)
{
  *a1 = &unk_1F24EADE8;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DA68(uint64_t a1)
{
  *a1 = &unk_1F24EAE08;

  return a1;
}

void sub_1AF25DAB0(uint64_t a1)
{
  *a1 = &unk_1F24EAE08;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DB18(uint64_t a1)
{
  *a1 = &unk_1F24EAE28;

  return a1;
}

void sub_1AF25DB60(uint64_t a1)
{
  *a1 = &unk_1F24EAE28;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DBC8(uint64_t a1)
{
  *a1 = &unk_1F24EAE48;

  return a1;
}

void sub_1AF25DC10(uint64_t a1)
{
  *a1 = &unk_1F24EAE48;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25DC78(uint64_t a1)
{
  *a1 = &unk_1F24EAE68;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25DCC0(uint64_t a1)
{
  *a1 = &unk_1F24EAE68;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF25DD28(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D0u, 8u, 2);
  return sub_1AF25BCC4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25DD88(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF25C7A4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF25DDE8(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u, 2);
  return sub_1AF25CB54(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF25DE48(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF25CF4C(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF25DEA8(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v8 = *a5;
  v38.n128_u64[0] = "RTTransmissionTracePass";
  v38.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A910, memory_order_acquire) & 1) == 0)
  {
    v37 = a3;
    v36 = a2;
    sub_1AFDF006C();
    a2 = v36;
    a3 = v37;
  }

  sub_1AF239F88(a1, a2, a3, &v38, qword_1ED73A908, 0);
  *a1 = &unk_1F24EAE88;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  *(a1 + 55) = a5;
  sub_1AF25E100(v9, a4);
  v10 = *(a5 + 172);
  v11 = 1.0;
  if (v10 != 2)
  {
    v12 = sub_1AF130864(*(a1 + 54));
    v11 = ceilf(v12 / sub_1AF130888(*(a1 + 54)));
  }

  v13 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(*(a1 + 55) + 208)) + 4);
  v14 = *(*(a1 + 55) + 280);
  v15 = vld1q_dup_f64(v13);
  v14[71].i32[0] = v11;
  if (v10)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v14[71].i32[1] = (v11 * v16);
  v17 = vshrq_n_s64(vshlq_u64(v15, xmmword_1AFE42F50), 0x30uLL);
  v18 = vcgtq_s64(v17, vdupq_n_s64(1uLL));
  v14[68] = vmovn_s64(vsubq_s64(vandq_s8(v17, v18), vmvnq_s8(v18)));
  v19 = *(*(a1 + 55) + 280);
  v20 = *(v19 + 568);
  v17.i32[0] = *(v19 + 544) / v20;
  v17.i32[1] = HIDWORD(*(v19 + 544)) / v20;
  *(v19 + 552) = v17.i64[0];
  v21 = *(*(a1 + 55) + 280);
  v22 = *(v21 + 572);
  v17.i32[0] = *(v21 + 544) / v22;
  v17.i32[1] = HIDWORD(*(v21 + 544)) / v22;
  *(v21 + 560) = v17.i64[0];
  sub_1AF25E35C(a1, a4);
  v23 = *(*(a1 + 55) + 224);
  v25 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v23, v25);
  v26 = *(*(a1 + 55) + 208);
  v28 = CFX::RG::Temporal::currentFrame(v27);
  CFX::RG::Pass::readFrom(a1, v26, v28);
  v29 = *(*(a1 + 55) + 200);
  v31 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v29, v31);
  v32 = *(a5 + 208);
  v34 = CFX::RG::Temporal::currentFrame(v33);
  CFX::RG::Pass::readFrom(a1, v32, v34);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 57) + 16));
  return a1;
}

uint64_t sub_1AF25E100(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 54), v7);
  v10 = sub_1AF1D0140(v8, v9);
  v11 = sub_1AF1D005C(v8, 0) != 0;
  v20 = v11;
  v12 = sub_1AF1449F0(v10) != 0;
  v18 = *(*(a1 + 55) + 172);
  v19 = v12;
  v13 = CFX::RG::Pass::hash(a1);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v12)));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)));
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v18)))) >> 47)));
  *(a1 + 56) = result;
  if (!result)
  {
    operator new();
  }

  *(*(a1 + 55) + 280) = result + 32;
  return result;
}

void sub_1AF25E35C(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = vmul_lane_s32(*(*(*(a1 + 55) + 280) + 560), *(*(*(a1 + 55) + 280) + 560), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  *(a1 + 57) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF25E4B0(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25E100(a1, a2);

  sub_1AF25E35C(a1, a2);
}

void *sub_1AF25E4F0(uint64_t a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 448) + 16))
  {
    v7 = result;
    v8 = sub_1AF12E2AC(*(a1 + 432), v6);
    v10 = sub_1AF12DDCC(*(a1 + 432), v9);
    result = sub_1AF12F10C(*(a1 + 432), v11);
    if (result)
    {
      result = sub_1AF1BB260(result, v12);
      if (result)
      {
        v14 = sub_1AF12F10C(*(a1 + 432), v13);
        sub_1AF27F12C(v14, v134);
        v15 = sub_1AF13050C(*(a1 + 432), 1);
        v128 = v15[1];
        v129 = *v15;
        v126 = v15[3];
        v127 = v15[2];
        v133 = sub_1AF12FCE8(*(a1 + 432), 0);
        v130 = sub_1AF1D0140(v10, v16);
        v131 = v8;
        v17 = *(a2 + 24);
        v18 = *(*(a1 + 440) + 224);
        v19 = CFX::RG::Temporal::currentFrame(v130);
        Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
        v20 = *(a2 + 24);
        v21 = *(*(a1 + 440) + 208);
        v22 = CFX::RG::Temporal::currentFrame(Texture);
        v124 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v23 = *(a2 + 24);
        v24 = *(*(a1 + 440) + 216);
        v25 = CFX::RG::Temporal::currentFrame(v124);
        v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
        v27 = *(a2 + 24);
        v28 = *(*(a1 + 440) + 240);
        v29 = CFX::RG::Temporal::currentFrame(v26);
        v30 = CFX::GPUResourceManager::getTexture(v27, v28, v29);
        v31 = *(a2 + 24);
        v32 = *(*(a1 + 440) + 248);
        v33 = CFX::RG::Temporal::currentFrame(v30);
        v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
        v35 = *(a2 + 24);
        v36 = *(*(a1 + 440) + 200);
        v37 = CFX::RG::Temporal::currentFrame(v34);
        v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
        v39 = *(a2 + 24);
        v40 = *(*(a1 + 440) + 256);
        v41 = CFX::RG::Temporal::currentFrame(v38);
        v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
        objc_msgSend_setTexture_atIndex_(v7, v43, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v44, v124, 1);
        objc_msgSend_setTexture_atIndex_(v7, v45, v26, 2);
        objc_msgSend_setTexture_atIndex_(v7, v46, v34, 3);
        objc_msgSend_setTexture_atIndex_(v7, v47, v38, 5);
        objc_msgSend_setTexture_atIndex_(v7, v48, v30, 6);
        v49 = sub_1AF2757FC(v131, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v7, v50, v49, 9);
        objc_msgSend_setTexture_atIndex_(v7, v51, v42, 10);
        v53 = sub_1AF1D005C(v10, 0);
        if (v53)
        {
          v54 = objc_msgSend_textureForMaterialProperty_(v131, v52, v53);
          if (v54)
          {
            objc_msgSend_setTexture_atIndex_(v7, v55, v54, 8);
          }

          v56 = sub_1AF167220(v53, v55);
          v57 = MEMORY[0x1E69E9B18];
          if (v56)
          {
            v57 = v56;
          }

          v58 = *v57;
          v59 = v57[1];
          v60 = v57[2];
          v61 = v57[3];
          v62 = *(*(a1 + 440) + 280);
          v62[28] = v58;
          v62[29] = v59;
          v62[30] = v60;
          v62[31] = v61;
        }

        v132 = sub_1AF130C00(**(a1 + 440), 0);
        v63 = *(*(a1 + 440) + 280);
        v63[8] = v129;
        v63[9] = v128;
        v63[10] = v127;
        v63[11] = v126;
        v64 = sub_1AF15E62C(v134, &v133);
        v65 = 0;
        v66 = *(v64 + 1);
        v67 = *(v64 + 2);
        v68 = *(v64 + 3);
        v69 = *(*(a1 + 440) + 280);
        v69[16] = *v64;
        v69[17] = v66;
        v69[18] = v67;
        v69[19] = v68;
        v70 = *(a1 + 448);
        v71 = v70[18];
        v72 = v70[19];
        v73 = v70[20];
        v74 = v70[21];
        v75 = v70[11];
        v76 = v70[12];
        v77 = v70[13];
        v135[0] = v70[10];
        v135[1] = v75;
        v135[2] = v76;
        v135[3] = v77;
        do
        {
          *(&v136 + v65 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(v135[v65])), v72, *&v135[v65], 1), v73, v135[v65], 2), v74, v135[v65], 3);
          ++v65;
        }

        while (v65 != 4);
        v78 = v137;
        v79 = v138;
        v80 = v139;
        v81 = *(*(a1 + 440) + 280);
        *v81 = v136;
        v81[1] = v78;
        v81[2] = v79;
        v81[3] = v80;
        *(*(*(a1 + 440) + 280) + 192) = __invert_f4(*(*(a1 + 448) + 160));
        *(*(*(a1 + 440) + 280) + 320) = __invert_f4(*(*(a1 + 448) + 32));
        *(*(*(a1 + 440) + 280) + 512) = (objc_msgSend_width(Texture, v82, v83) * v132.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 280) + 516) = vmuls_lane_f32(objc_msgSend_height(Texture, v84, v85), v132, 1) * 0.5;
        v87 = *(a1 + 440);
        v88 = *(v87 + 280);
        *(v88 + 532) = *(v87 + 192);
        if (v53)
        {
          v89 = sub_1AF166598(v53, v86);
          v88 = *(*(a1 + 440) + 280);
        }

        else
        {
          v89 = 0.0;
        }

        *(v88 + 528) = v89;
        objc_msgSend_setBytes_length_atIndex_(v7, v86, v88, 576, 8, v124);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v90, *(*(a1 + 440) + 176), 0, 4);
        v92 = objc_msgSend_setBuffer_offset_atIndex_(v7, v91, *(*(a1 + 440) + 184), 0, 5);
        v93 = *(a2 + 24);
        v94 = *(*(a1 + 456) + 16);
        v95 = CFX::RG::Temporal::currentFrame(v92);
        CFX::GPUResourceManager::getBuffer(v93, v94, v95);
        LODWORD(v93) = v96;
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v98, v97, v93, 10);
        sub_1AF144838(v130, v7);
        v99 = sub_1AF1448D8(v130);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v100, v99, 0, 0);
        v101 = sub_1AF1448D0(v130);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v7, v102, v101, 1);
        if (sub_1AF1449F0(v130))
        {
          v104 = sub_1AF1403B4(*(a1 + 448) + 16, v103);
          v105 = sub_1AFDE323C(v104);
          v106 = sub_1AF144918(v130, v105);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v7, v107, v106, 3);
        }

        v108 = sub_1AF1448E8(v130);
        v111 = sub_1AF144A00(v130, v109, v110);
        objc_msgSend_useResources_count_usage_(v7, v112, v108, v111, 1);
        v114 = sub_1AF1403B4(*(a1 + 448) + 16, v113);
        v115 = sub_1AFDE323C(v114);
        objc_msgSend_setComputePipelineState_(v7, v116, v115);
        v117 = *(a1 + 448);
        v118 = *(*(*(a1 + 440) + 280) + 560);
        v119 = v118;
        v120 = SHIDWORD(v118);
        v122 = sub_1AF1403B4(v117 + 16, v121);
        v123 = sub_1AFDE323C(v122);
        *&v136 = v119;
        *(&v136 + 1) = v120;
        *&v137 = 1;
        return RGMTLComputeCommandEncoderDispatchOnGrid2D(v7, v123, &v136, 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AF25EAB8(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v38.n128_u64[0] = "RTTransmissionUpscalePass";
  v38.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A920, memory_order_acquire) & 1) == 0)
  {
    v34 = a2;
    v35 = a3;
    sub_1AFDF00C8();
    a2 = v34;
    a3 = v35;
  }

  sub_1AF239F88(a1, a2, a3, &v38, qword_1ED73A918, 0);
  *a1 = &unk_1F24EAEE0;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 456) = sub_1AF2757FC(v10, a4[4]);
  v38 = 0uLL;
  v39 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 280) + 552), WORD2(*(*(*(a1 + 440) + 280) + 552)), 0x73u, &v38);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v36 = v38;
  v37 = v39;
  v12 = sub_1AF2373FC(v11, "TransmissionUpscale", &v36);
  *(a1 + 464) = v12;
  v13 = *(*(a1 + 440) + 224);
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(a1, v13, v14);
  v15 = *(*(a1 + 440) + 208);
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(*(a1 + 440) + 216);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(*(a1 + 440) + 232);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = *(*(a1 + 440) + 240);
  v26 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(a1, v24, v26);
  v27 = *(*(a1 + 440) + 200);
  v29 = CFX::RG::Temporal::currentFrame(v28);
  CFX::RG::Pass::readFrom(a1, v27, v29);
  v30 = *(*(a1 + 440) + 272);
  v32 = CFX::RG::Temporal::currentFrame(v31);
  CFX::RG::Pass::readFrom(a1, v30, v32);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  return a1;
}

void sub_1AF25ECB4(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  *(a1 + 56) = v5;
  if (!v5)
  {
    *(a1 + 56) = sub_1AF25EF48(*(a2 + 32), v4);
    v7 = sub_1AF12E2AC(*(a1 + 54), v6);
    v10 = objc_msgSend_resourceManager(v7, v8, v9);
    v11 = *(a1 + 56);
    v13 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"vfx_rt_transmission_upscale");

    sub_1AF23355C((v11 + 16), v13);
  }
}

id sub_1AF25ED50(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 576, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 224);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 240);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = *(a1[55] + 200);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, a1[57], 2);
    objc_msgSend_setTexture_atIndex_(v7, v28, v24, 3);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v20, 4);
    v31 = *(a2 + 24);
    v32 = *(a1[55] + 272);
    v33 = CFX::RG::Temporal::currentFrame(v30);
    CFX::GPUResourceManager::getBuffer(v31, v32, v33);
    LODWORD(v31) = v34;
    CFXBufferSliceGetMTLBuffer();
    v37 = objc_msgSend_setBuffer_offset_atIndex_(v7, v36, v35, v31, 0);
    v38 = *(a2 + 24);
    v39 = a1[58];
    v40 = CFX::RG::Temporal::currentFrame(v37);
    v41 = CFX::GPUResourceManager::getTexture(v38, v39, v40);
    objc_msgSend_setTexture_atIndex_(v7, v42, v41, 10);
    v44 = sub_1AF1403B4(a1[56] + 16, v43);
    v46 = sub_1AFDE323C(v44);

    return objc_msgSend_dispatch_onTexture2D_(v7, v45, v46, v41);
  }

  return result;
}

void *sub_1AF25EF48(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF25EFD0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v8 = *a5;
  v19.n128_u64[0] = "RTTransmissionTemporalDenoisePass";
  v19.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A928, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = a3;
    sub_1AFDF0124();
    a2 = v15;
    a3 = v16;
  }

  if (byte_1ED73A900)
  {
    v9 = 0x962C705CBA8C9F0ELL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v19, v9, 0);
  *a1 = &unk_1F24EAF38;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v19 = 0uLL;
  v20 = 0;
  CFXTextureDescriptorMake2D(*(a5[35] + 552), WORD2(*(a5[35] + 552)), 0x73u, &v19);
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v17 = v19;
  v18 = v20;
  v11 = sub_1AF2373FC(v10, "TransmissionTemporalDenoise", &v17);
  *(a1 + 472) = v11;
  v12 = *(*(a1 + 440) + 232);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF25F128(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 56) = v8;
  if (!v8)
  {
    operator new();
  }
}

id sub_1AF25F220(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 576, 8);
    v9 = *(a2 + 24);
    v10 = a1[57];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 224);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = v16;
    v18 = a1[55];
    v19 = *(v18 + 256);
    if (v19)
    {
      v20 = *(a2 + 24);
      v21 = CFX::RG::Temporal::currentFrame(v16);
      v16 = CFX::GPUResourceManager::getTexture(v20, v19, v21);
      v19 = v16;
      v18 = a1[55];
    }

    v22 = *(a2 + 24);
    v23 = *(v18 + 232);
    v24 = CFX::RG::Temporal::currentFrame(v16);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v7, v26, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v27, v17, 1);
    objc_msgSend_setTexture_atIndex_(v7, v28, v19, 2);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v25, 3);
    v31 = *(a2 + 24);
    v32 = a1[59];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[58];
    v37 = CFX::RG::Temporal::previousFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v7, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v7, v40, v38, 11);
    v42 = sub_1AF1403B4(a1[56] + 16, v41);
    v44 = sub_1AFDE323C(v42);

    return objc_msgSend_dispatch_onTexture2D_(v7, v43, v44, v34);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25F3FC(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v22.n128_u64[0] = "RTTransmissionSpatialDenoisePass";
  v22.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A938, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDF0170();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, &v22, qword_1ED73A930, 0);
  *a1 = &unk_1F24EAF90;
  *(a1 + 55) = a5;
  *(a1 + 56) = 0;
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  sub_1AF25F524(v9, a4);
  v10 = *(*(a1 + 55) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v10, v12);
  v13 = *(*(a1 + 57) + 16);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = *(*(a1 + 57) + 16);
  v18 = CFX::RG::Temporal::previousFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 57) + 16));
  return a1;
}

void sub_1AF25F524(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 55) + 280) + 552), WORD2(*(*(*(a1 + 55) + 280) + 552)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 57) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF25F6A4(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25F524(a1, a2);

  sub_1AF25F6E4(a1, a2);
}

void sub_1AF25F6E4(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 56) = v8;
  if (!v8)
  {
    operator new();
  }
}

__n128 sub_1AF25F7DC(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 280), 576, 8);
    v10 = *(a2 + 24);
    v11 = *(a1[55] + 224);
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 208);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v18 = *(a2 + 24);
    v19 = *(a1[55] + 240);
    v20 = CFX::RG::Temporal::currentFrame(v17);
    v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
    objc_msgSend_setTexture_atIndex_(v8, v22, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v8, v23, v17, 2);
    v25 = objc_msgSend_setTexture_atIndex_(v8, v24, v21, 3);
    v26 = *(a2 + 24);
    v27 = a1[58];
    v28 = CFX::RG::Temporal::currentFrame(v25);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[57] + 16);
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    v60 = 1065353216;
    objc_msgSend_setBytes_length_atIndex_(v8, v34, &v60, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v35, v29, 0);
    objc_msgSend_setTexture_atIndex_(v8, v36, v33, 10);
    v38 = sub_1AF1403B4(a1[56] + 16, v37);
    v39 = sub_1AFDE323C(v38);
    objc_msgSend_dispatch_onTexture2D_(v8, v40, v39, v33);
    v60 = 0x40000000;
    objc_msgSend_setBytes_length_atIndex_(v8, v41, &v60, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v42, v33, 0);
    objc_msgSend_setTexture_atIndex_(v8, v43, v29, 10);
    v45 = sub_1AF1403B4(a1[56] + 16, v44);
    v46 = sub_1AFDE323C(v45);
    objc_msgSend_dispatch_onTexture2D_(v8, v47, v46, v33);
    v60 = 1082130432;
    objc_msgSend_setBytes_length_atIndex_(v8, v48, &v60, 4, 9);
    objc_msgSend_setTexture_atIndex_(v8, v49, v29, 0);
    objc_msgSend_setTexture_atIndex_(v8, v50, v33, 10);
    v52 = sub_1AF1403B4(a1[56] + 16, v51);
    v53 = sub_1AFDE323C(v52);
    objc_msgSend_dispatch_onTexture2D_(v8, v54, v53, v33);
    v55 = *(a1[55] + 280);
    v56 = v55[1];
    v55[4] = *v55;
    v55[5] = v56;
    v57 = v55[3];
    v55[6] = v55[2];
    v55[7] = v57;
    v58 = *(a1[55] + 280);
    v59 = *(v58 + 368);
    *(v58 + 416) = *(v58 + 352);
    *(v58 + 432) = v59;
    result = *(v58 + 336);
    *(v58 + 384) = *(v58 + 320);
    *(v58 + 400) = result;
    ++*(*(a1[55] + 280) + 524);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25FA84(CFX::RG::RenderGraphContext *a1, unint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25FBA8(v4, a1, a2);
  a2[34] = *(*(v5 + 57) + 16);
  v6 = sub_1AF25FC00(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v6, v5);
  v7 = sub_1AF25FC58(v4, a1, a2);
  v8 = *(v6 + 58);
  *(v7 + 57) = v8;
  v9 = CFX::RG::Temporal::currentFrame(v7);
  CFX::RG::Pass::readFrom(v7, v8, v9);
  CFX::RG::Pass::dependsOn(v7, v6);
  v10 = sub_1AF25FCB0(v4, a1, a2);
  v11 = *(v7 + 59);
  *(v10 + 58) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  v13 = CFX::RG::Pass::dependsOn(v10, v7);
  v14 = *(*(v10 + 57) + 16);
  *(v7 + 58) = v14;
  v15 = CFX::RG::Temporal::previousFrame(v13);
  CFX::RG::Pass::readFrom(v7, v14, v15);
  a2[33] = *(*(v10 + 57) + 16);
  return v5;
}

uint64_t sub_1AF25FBA8(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF260268(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25FC00(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2602C8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25FC58(uint64_t *a1, CFX::RG::RenderGraphContext *a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF260328(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25FCB0(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF260388(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25FD0C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25FD48(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25FD84(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25FDC0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25FDF8(uint64_t a1)
{
  *a1 = &unk_1F24EAFE8;

  return a1;
}

void sub_1AF25FE40(uint64_t a1)
{
  *a1 = &unk_1F24EAFE8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25FEA8(uint64_t a1)
{
  *a1 = &unk_1F24EB008;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25FF18(uint64_t a1)
{
  *a1 = &unk_1F24EB008;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25FFA8(uint64_t a1)
{
  *a1 = &unk_1F24EB028;

  return a1;
}

void sub_1AF25FFF0(uint64_t a1)
{
  *a1 = &unk_1F24EB028;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF260058(uint64_t a1)
{
  *a1 = &unk_1F24EB048;

  return a1;
}

void sub_1AF2600A0(uint64_t a1)
{
  *a1 = &unk_1F24EB048;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF260108(uint64_t a1)
{
  *a1 = &unk_1F24EB068;

  return a1;
}

void sub_1AF260150(uint64_t a1)
{
  *a1 = &unk_1F24EB068;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2601B8(uint64_t a1)
{
  *a1 = &unk_1F24EB088;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF260200(uint64_t a1)
{
  *a1 = &unk_1F24EB088;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF260268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D0u, 8u, 2);
  return sub_1AF25DEA8(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2602C8(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF25EAB8(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF260328(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF25EFD0(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF260388(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF25F3FC(v8, *a3, a3[1], a4, a5);
}

__n128 sub_1AF2603E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 32);
  *(a1 + 24) = v5;
  *(a1 + 8) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  return result;
}

void sub_1AF260410(uint64_t a1, const char *a2, uint64_t a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1AF130770(*a1, a2, a3);
  prof_beginFlameSmallData("computeProgramHashCodes", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 76, v7 | 0x300000000);
  v9 = sub_1AF12DDCC(*a1, v8);
  v11 = sub_1AF1D00B0(v9, v10);
  v13 = sub_1AF13341C(v11, v12);
  v15 = sub_1AF1D00F8(v9, v14);
  v17 = sub_1AF12EDD8(*a1, v16);
  v19 = sub_1AF14748C(v13, v18);
  sub_1AF140010(v17, v19);
  sub_1AF260708(a1);
  if (*(a1 + 24))
  {
    v35 = sub_1AF13804C(v15, *a1);
  }

  else
  {
    v35 = 0;
  }

  for (i = 0; ; ++i)
  {
    v21 = sub_1AF170BF8(*(a1 + 64));
    if (i >= sub_1AF12464C(v21, v22))
    {
      break;
    }

    v23 = *(a1 + 64);
    if (v35)
    {
      v24 = sub_1AF170BF8(v23);
      sub_1AF138230(v15, v24 + (i << 6) + 0x2000, *a1);
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      sub_1AF1384E8(v15, *a1, v37);
      v36 = 0;
      if (sub_1AF1384C4(v15, v39, &v36))
      {
        sub_1AF138988(v15, v39);
        v25 = sub_1AF13877C(v15, v39, (v37 + 4));
        LOWORD(v37[0]) = v37[0] & 0xC03F | (v25 << 6);
      }

      v26 = *(sub_1AF170BF8(*(a1 + 64)) + 16 * i + 14864);
      v27 = *(sub_1AF170BF8(*(a1 + 64)) + 16 * i + 14872);
      if (v27)
      {
        do
        {
          v28 = *v26++;
          v3 = v3 & 0xFFFFFFFF00000000 | v28;
          v29 = sub_1AF1474D8(v13, v3);
          v30 = *(v29 + 80);
          if ((v30 & 0x40) != 0)
          {
            *(v29 + 80) = (16 * LOWORD(v37[0])) & 0x380 | v30 & 0xFC7F;
          }

          sub_1AF260830(a1, a2, v29, v17, v37);
          --v27;
        }

        while (v27);
      }

      sub_1AF138A68(v15);
    }

    else
    {
      v31 = *(sub_1AF170BF8(v23) + 16 * i + 14864);
      v32 = *(sub_1AF170BF8(*(a1 + 64)) + 16 * i + 14872);
      if (v32)
      {
        do
        {
          v33 = *v31++;
          v4 = v4 & 0xFFFFFFFF00000000 | v33;
          v34 = sub_1AF1474D8(v13, v4);
          sub_1AF260830(a1, a2, v34, v17, 0);
          --v32;
        }

        while (v32);
      }
    }
  }

  prof_endFlame();
}

void sub_1AF260708(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 64);
  if (*(v3 + 112))
  {
    v4 = *(sub_1AF170BF8(v3) + 14592) << 16;
    v3 = *(a1 + 64);
  }

  else
  {
    v4 = 0x10000;
  }

  v5 = *(sub_1AF170BF8(v3) + 14595);
  v6 = *(a1 + 18);
  if ((*(a1 + 24) & 8) != 0)
  {
    v7 = &qword_1ED73A940;
    if ((atomic_load_explicit(byte_1ED73A948, memory_order_acquire) & 1) == 0)
    {
      v12 = v5;
      v13 = v6;
      sub_1AFDF01CC(&v14);
      v5 = v12;
      v6 = v13;
      v7 = v14;
    }
  }

  else
  {
    v7 = (a1 + 40);
  }

  v8 = (v4 & 0xFFFFFFFF87FFFFFFLL | (((((8 * (v5 & 3)) & 0x9F | (32 * (v6 & 3u))) >> 3) & 0xF) << 27) | v2) ^ 0x1A929E4D6F47A654;
  v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47));
  v10 = 0x9DDFEA08EB382D69 * (*v7 ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v9 ^ ((v10 ^ v9) >> 47) ^ v10);
  *(a1 + 56) = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
}

void sub_1AF260830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  v10 = sub_1AF130770(*a1, a2, a3);
  prof_beginFlameSmallData("computeProgramHashCodeForRendererElement", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 171, v10 | 0x300000000);
  if (!sub_1AF145EB0(a3) && (*(a3 + 16) || *(a3 + 24)))
  {
    v11 = *(a3 + 8);
    v12 = sub_1AF1402E0(a4, a3, 0, *(a1 + 56));
    if (!v12 || !sub_1AF13E850(v11, v12, a5))
    {
      v24 = sub_1AF146158(a3);
      v23 = sub_1AF146178(a3);
      v22 = sub_1AF146118(a3);
      v20 = sub_1AF146138(a3);
      v21 = *(a1 + 16);
      v13 = *(a1 + 64);
      if (*(v13 + 112))
      {
        v14 = *(sub_1AF170BF8(v13) + 14592) << 16;
        v13 = *(a1 + 64);
      }

      else
      {
        v14 = 0x10000;
      }

      v15 = *(a3 + 80);
      v16 = *(sub_1AF170BF8(v13) + 14595);
      v17 = *(a1 + 18);
      v18 = *(a1 + 8);
      if (!v18)
      {
        if (sub_1AF260A24(a1, a3))
        {
          v18 = sub_1AF2760B0(*(a2 + 32));
        }

        else
        {
          v18 = v20;
        }
      }

      v19 = sub_1AF13E964(v11, v22, v24, v23, a5, v18, v14 | (((v15 >> 11) & 7 | (8 * (v16 & 3)) & 0x9F | (32 * (v17 & 3))) << 24) | v21);
      sub_1AF1404B4(a4, a3, v19, *(a1 + 56));
      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  prof_endFlame();
}

uint64_t sub_1AF260A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF146138(a2);
  if ((*(a1 + 24) & 8) != 0)
  {
    v5 = v4;
    result = sub_1AF146200(a2);
    if (!result)
    {
      return result;
    }

    if (!*(*(a1 + 64) + 112) && !sub_1AF1A1498(v5, v7))
    {
      v8 = sub_1AF146118(a2);
      v9 = v8;
      if (v5)
      {
        if (sub_1AF16E0F0(v5, 0))
        {
          return 0;
        }

        if (v9)
        {
          v11 = sub_1AF16E0F0(v9, 0);
          if (v11)
          {
            return v11 ^ 1;
          }
        }

        v12 = sub_1AF1A1270(v5, v10);
        v13 = sub_1AF1656E4(v12, 18, 0);
        if (v13 && sub_1AF166220(v13, v14))
        {
          return 0;
        }
      }

      else if (v8)
      {
        v11 = sub_1AF16E0F0(v8, 0);
        return v11 ^ 1;
      }

      return 1;
    }
  }

  return 0;
}

void sub_1AF260B04(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *a3, unsigned __int16 a4)
{
  v4 = HIBYTE(a4);
  v7 = sub_1AF130770(*a1, a2, a3);
  prof_beginFlameSmallData("render", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 245, v7 | 0x300000000);
  v8 = CFX::RG::RenderPassArguments::sliceIndex(a3);
  v9 = *(a1 + 64);
  if (*(v9 + 112))
  {
    v10 = *(sub_1AF170BF8(v9) + 14592) << 8;
    v9 = *(a1 + 64);
  }

  else
  {
    v10 = 256;
  }

  v11 = *(sub_1AF170BF8(v9) + 14595);
  v12 = *(a1 + 18);
  v13 = *(a1 + 33);
  v15 = sub_1AF12DDCC(*a1, v14);
  v17 = sub_1AF1CF7E8(v15, v16);
  CFRetain(v17);
  v38 = v17;
  v19 = sub_1AF12E2AC(*a1, v18);
  objc_msgSend_setRenderPassParameters_(v19, v20, v8 & 0xFF00FFFF | (v4 << 16) | v10 | (v11 << 24) | (v12 << 32) | (v13 << 40));
  objc_msgSend_setCurrentPassHash_(v19, v21, *(a1 + 56));
  objc_msgSend_setCurrentPassMaterial_(v19, v22, *(a1 + 8));
  v24 = *(a1 + 64);
  if ((*(v24 + 120) & 4) == 0)
  {
    if (*(v24 + 113) == 2)
    {
      if (*(v24 + 80))
      {
        v39 = *(v24 + 64);
        v25 = CFX::RG::RenderPassArguments::encoder(a3);
        v41 = vcvtq_f64_f32(*v39.f32);
        v42 = vcvt_hight_f64_f32(v39);
        v43 = xmmword_1AFE42FD0;
        objc_msgSend_setViewport_(v25, v26, &v41);
      }
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v34 = *(v24 + 112) ? *(sub_1AF170BF8(v24) + 14592) : 1;
        if (i >= v34)
        {
          break;
        }

        v35 = sub_1AF170BF8(*(a1 + 64));
        v40 = sub_1AF125C8C(v35, i);
        v36 = CFX::RG::RenderPassArguments::encoder(a3);
        v41 = vcvtq_f64_f32(v40.n128_u64[0]);
        v42 = vcvt_hight_f64_f32(v40);
        v43 = xmmword_1AFE42FD0;
        objc_msgSend_setViewport_(v36, v37, &v41);
        v24 = *(a1 + 64);
      }
    }
  }

  if (!sub_1AF1D00B0(v15, v23))
  {
    v28 = sub_1AF0D5194(0, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0228(v28);
    }
  }

  v29 = *a1;
  v30 = sub_1AF170BF8(*(a1 + 64));
  sub_1AF13051C(v29, 0, v30 + (v4 << 6) + 9216);
  v31 = *a1;
  v32 = sub_1AF170BF8(*(a1 + 64));
  sub_1AF13051C(v31, 1, v32 + (v4 << 6) + 0x2000);
  sub_1AF260DB8(a1);
  CFRelease(v38);
  prof_endFlame();
}

void sub_1AF260DB8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_1AF12DDCC(*v3, v1);
  v7 = sub_1AF1D00B0(v5, v6);
  v9 = sub_1AF12E2AC(v4->i64[0], v8);
  bzero(v41, 0x3BC0uLL);
  v10 = v4[4].i64[0];
  v11 = *(v10 + 112);
  if (v11)
  {
    v12 = *(sub_1AF170BF8(v10) + 14592);
    v10 = v4[4].i64[0];
    v11 = *(v10 + 112);
  }

  else
  {
    v12 = 1;
  }

  v41[8] = v12;
  v41[9] = (*(v10 + 120) & 4) != 0;
  v41[10] = v11;
  v41[11] = v4[1].i8[2];
  v43 = v4[1].i16[0];
  v13 = sub_1AF170BF8(v10);
  memcpy(v42, v13, sizeof(v42));
  if ((v4[1].i8[8] & 2) != 0)
  {
    v15 = sub_1AF1D0008(v5, 0);
    if (v15)
    {
      sub_1AF12E1B8(v4->i64[0], v15);
    }
  }

  v16 = sub_1AF12DE14(v4->i64[0], v14);
  v17 = 16 * v2;
  v18 = *(sub_1AF170BF8(v4[4].i64[0]) + v17 + 14872);
  v19 = sub_1AF170BF8(v4[4].i64[0]);
  v21 = *(v19 + v17 + 14864);
  if (!v21)
  {
    v22 = sub_1AF0D5194(v19, v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF02AC(v22);
    }
  }

  if ((v4[1].i8[8] & 0x30) != 0)
  {
    v23 = CACurrentMediaTime();
    prof_beginFlame("sync and sort", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 339);
    v25 = sub_1AF12EE20(v4->i64[0], v24);
    sub_1AF14AF48(v25, v4->i64[0], v21, v18, v4[3].i64[1]);
    sub_1AF14AD70(v25, v4->i64[0], v21, v18);
    *(v16 + 152) = *(v16 + 152) + CACurrentMediaTime() - v23;
    prof_endFlame();
  }

  if (sub_1AF1302DC(v4->i64[0]))
  {
    v27 = sub_1AF12DE14(v4->i64[0], v26);
    v28 = sub_1AF1302DC(v4->i64[0]) + ~*(v27 + 12);
    if (v18 >= v28)
    {
      v18 = v28;
    }

    else
    {
      v18 = v18;
    }
  }

  v29 = CACurrentMediaTime();
  prof_beginFlame("process rendererElements", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/SceneRenderer.mm", 359);
  v30 = v4->i64[0];
  v33[0] = v7;
  v33[1] = v30;
  v31 = v4[1].i64[1];
  v35 = v31 & 1;
  v36 = (*(v4[4].i64[0] + 120) & 2) != 0;
  v33[2] = v41;
  v33[3] = 0;
  v37 = v4[2].i8[1];
  v38 = (v31 & 0x30) != 0;
  v39 = (v31 & 0x20) != 0;
  v40 = (v31 & 0x40) != 0;
  v34 = vextq_s8(v4[3], v4[3], 8uLL);
  objc_msgSend_processRendererElements_count_engineIterationContext_(v9, v32, v21, v18, v33);
  *(v16 + 152) = *(v16 + 152) + CACurrentMediaTime() - v29;
  prof_endFlame();
}

uint64_t sub_1AF261084(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v41[0].n128_u64[0] = "SDFGenerationPass";
  v41[0].n128_u64[1] = a7;
  if ((atomic_load_explicit(byte_1ED73A958, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDF0330();
    a2 = v18;
    a3 = v19;
  }

  if (byte_1ED73A950)
  {
    v10 = 0x6365193E651828FFLL;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v41, v10, 0);
  *a1 = &unk_1F24EB0A8;
  *(a1 + 440) = *a6;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  v11 = CFX::RG::Resource::constTextureDesc(*a6);
  CFX::RG::TextureDescriptorReference::withSampleCount(v41, v11, 1);
  v12 = *(a6 + 12);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  CFX::RG::TextureDescriptorReference::withSizeFactor(&v21, v41, 1.0 / v12);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v31, &v21, 25);
  *(a1 + 472) = sub_1AF233CC8(a4, "SDF OUTPUT", &v31);
  *(a1 + 464) = CFX::RG::copyIfNeeded(a4, *a6, 0, v41, "SDFGenerationPass color input resolve", v13);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v20, v41, 115);
  CFX::RG::TextureDescriptorReference::withUsage(&v21, v20, 1);
  CFX::RG::TextureDescriptorReference::withMipmaplevelcount(&v31, &v21, 1);
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  *(a1 + 480) = sub_1AF233CC8(a4, "SDF TMP_A", &v21);
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  *(a1 + 488) = sub_1AF233CC8(a4, "SDF TMP_B", &v21);
  CFX::RG::Pass::writeTo(a1, *(a1 + 480));
  v14 = CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  v15 = *(a1 + 464);
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v15, v16);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF2612E4(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 57) = v8;
  if (!v8)
  {
    operator new();
  }
}

uint64_t sub_1AF261420(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 464);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 472);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v53[0] = *(a1 + 448);
  v14 = *(a2 + 24);
  v15 = *(a1 + 480);
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  v18 = *(a2 + 24);
  v19 = *(a1 + 488);
  v20 = CFX::RG::Temporal::currentFrame(v17);
  v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
  objc_msgSend_setTexture_atIndex_(v5, v22, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v23, v17, 1);
  objc_msgSend_setBytes_length_atIndex_(v5, v24, v53, 8, 0);
  v26 = sub_1AF1403B4(*(a1 + 456) + 16, v25);
  v27 = sub_1AFDE323C(v26);
  objc_msgSend_dispatch_onTexture2D_(v5, v28, v27, v17);
  v31 = objc_msgSend_width(Texture, v29, v30);
  v34 = objc_msgSend_height(Texture, v32, v33);
  v36 = vcvtms_s32_f32(log2f(fmaxf(v31, v34)));
  v37 = v36 - 1;
  if (v36 >= 1)
  {
    v38 = 0;
    do
    {
      if (v38)
      {
        v39 = v21;
      }

      else
      {
        v39 = v17;
      }

      if (v38)
      {
        v40 = v17;
      }

      else
      {
        v40 = v21;
      }

      objc_msgSend_setTexture_atIndex_(v5, v35, v39, 0);
      objc_msgSend_setTexture_atIndex_(v5, v41, v40, 1);
      v53[1] = exp2(v37);
      objc_msgSend_setBytes_length_atIndex_(v5, v42, v53, 8, 0);
      v44 = sub_1AF1403B4(*(a1 + 456) + 24, v43);
      v45 = sub_1AFDE323C(v44);
      objc_msgSend_dispatch_onTexture2D_(v5, v46, v45, v17);
      ++v38;
      --v37;
    }

    while (v37 != -1);
  }

  if (v36)
  {
    objc_msgSend_setTexture_atIndex_(v5, v35, v21, 0);
  }

  else
  {
    objc_msgSend_setTexture_atIndex_(v5, v35, v17, 0);
  }

  objc_msgSend_setTexture_atIndex_(v5, v47, v13, 1);
  v49 = sub_1AF1403B4(*(a1 + 456) + 32, v48);
  v50 = sub_1AFDE323C(v49);
  return objc_msgSend_dispatch_onTexture2D_(v5, v51, v50, v13);
}

void sub_1AF26165C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF261694(uint64_t a1)
{
  *a1 = &unk_1F24EB100;

  return a1;
}

void sub_1AF2616EC(uint64_t a1)
{
  *a1 = &unk_1F24EB100;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF261764(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, __n128 *a5, uint64_t a6)
{
  v60 = *MEMORY[0x1E69E9840];
  *&v49 = a2;
  *(&v49 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A968, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF037C();
  }

  if (byte_1ED73A960)
  {
    v12 = 0x39077B4FC07D180;
  }

  else
  {
    v12 = 0;
  }

  sub_1AF250390(a1, a2, a3, a5, v12, a6);
  *a1 = &unk_1F24EB120;
  *(a1 + 448) = v49;
  *(a1 + 464) = 0;
  *(a1 + 472) = a1 + 480;
  *(a1 + 488) = 0;
  v48 = *(a1 + 432);
  v14 = sub_1AF12DDCC(v48, v13);
  v16 = sub_1AF1D00F8(v14, v15);
  v43 = sub_1AF13AF28(v16);
  v17 = sub_1AF13AF34(v16);
  v18 = sub_1AF13A358(v16);
  v39 = a4;
  v40 = sub_1AF13A348(v16);
  v19 = *(a1 + 468);
  if (v18 > v19)
  {
    sub_1AF2348E0(a1 + 448, v18 - v19, 1);
  }

  if (v17)
  {
    v20 = 0;
    *v21.i64 = v40;
    *&v21.i64[1] = v40;
    v44 = v21;
    v41 = v17;
    v42 = v16;
    do
    {
      v22 = *(v43 + 8 * v20);
      if (sub_1AF13AE5C(v16, v22))
      {
        v24 = sub_1AF1B75E8(v22, v23);
        v26 = sub_1AF19ECC8(v24, v25);
        v28 = sub_1AF19ED10(v24, v27);
        if (v28)
        {
          v29 = v28;
          do
          {
            v30 = vmulq_f32(v44, *v26);
            *v50 = v22;
            *&v50[16] = 0;
            v52 = v30;
            v53 = 1;
            v54 = xmmword_1AFE42EB0;
            v55 = *(a1 + 440);
            v56 = 2;
            v57 = 3;
            v58 = 1;
            v59 = 1;
            v31 = sub_1AF2330E0(v49, *(&v49 + 1), &v49, &v48, v50);
            v32 = v49;
            *v50 = 0;
            *&v50[8] = 0;
            v50[10] = *(a1 + 441);
            *&v50[16] = 56;
            v51 = 0;
            if ((atomic_load_explicit(byte_1ED73A968, memory_order_acquire) & 1) == 0)
            {
              v38 = v32;
              sub_1AFDF03C8();
              v32 = v38;
            }

            v33 = 0x39077B4FC07D180;
            if (!byte_1ED73A960)
            {
              v33 = 0;
            }

            v52.i64[0] = v33;
            v52.i64[1] = -1;
            v45 = v32;
            v34 = sub_1AF23498C(&v45, 0x48u, 8u, 2);
            sub_1AF2603E8(v34, v48, v50, v31);
            v47 = v35;
            sub_1AF235000((a1 + 448), &v47);
            ++v26;
            --v29;
          }

          while (v29);
        }
      }

      ++v20;
      v16 = v42;
    }

    while (v20 != v41);
  }

  memset(v50, 0, sizeof(v50));
  CFXTextureDescriptorMakeDefault(v50);
  *&v50[4] = *&v40 | (*&v50[8] << 32) | (*(&v40 + 1) << 16);
  *&v50[12] = *&v50[12] & 0xFFFFF0FFFFFF0000 | 0x200000000FCLL;
  *((*(*a1 + 32))(a1) + 283) = 1;
  v45 = *v50;
  v46 = *&v50[16];
  v36 = sub_1AF2373FC(v39, "SHADOW_MAP_ATLAS", &v45);
  *(a1 + 488) = v36;
  CFX::RG::Pass::renderTo(a1, v36, 0x200000002, -1);
  return a1;
}

void sub_1AF261B6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Shadow", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ShadowMapAtlasPass.mm", 97, v5 | 0x300000000);
  v7 = sub_1AF12DDCC(*(a1 + 432), v6);
  v9 = sub_1AF1D00F8(v7, v8);
  sub_1AF13AE4C(v9, *(a1 + 488));
  v78 = sub_1AF13AF28(v9);
  v11 = sub_1AF13AF34(v9);
  v12 = *(a1 + 464);
  if (v12)
  {
    v13 = *(a1 + 472);
    v14 = 8 * v12;
    do
    {
      v15 = sub_1AF112998(*v13);
      sub_1AF23B424(v15, v16, v17);
      sub_1AF23B5E0(v15);
      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v77 = v9;
  v75 = a2;
  if (v11)
  {
    v18 = 0;
    v19 = 0;
    v76 = v11;
    do
    {
      v20 = sub_1AF1B75E8(*(v78 + 8 * v18), v10);
      v22 = sub_1AF19ED10(v20, v21);
      v23 = sub_1AF112998(*(*(a1 + 472) + 8 * v19));
      v79 = v18;
      v25 = sub_1AF19CBB4(v20, v24);
      v26 = sub_1AF170BF8(v23);
      v27 = sub_1AF23B410(v23);
      v28 = v26 + 7168;
      if (v25 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26 + 7168;
      }

      v30 = v26 + 9216;
      sub_1AF13AA04(v77, v27, v29, v26 + 9216, 0, 0, 0);
      v95 = *(v26 + 9232);
      v98 = *(v26 + 9216);
      v88 = *(v26 + 9264);
      v92 = *(v26 + 9248);
      v104 = __invert_f4(*(v26 + 7168));
      v31 = 0;
      v101 = v104;
      do
      {
        v102.columns[v31] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*&v101.columns[v31])), v95, *v101.columns[v31].f32, 1), v92, v101.columns[v31], 2), v88, v101.columns[v31], 3);
        ++v31;
      }

      while (v31 != 4);
      v32 = v102.columns[0];
      v33 = v102.columns[1];
      v34 = v102.columns[2];
      v35 = v102.columns[3];
      *(v26 + 0x2000) = v104;
      *(v26 + 10240) = v32;
      *(v26 + 10256) = v33;
      *(v26 + 10272) = v34;
      *(v26 + 10288) = v35;
      if (v25 == 1)
      {
        if (v22)
        {
          v36 = 0;
          v84 = *(v26 + 7184);
          v86 = *(v26 + 7168);
          v80 = *(v26 + 7216);
          v82 = *(v26 + 7200);
          do
          {
            if (v36 <= 1)
            {
              if (!v36)
              {
                v37 = &xmmword_1AFE43170;
                goto LABEL_26;
              }

              if (v36 == 1)
              {
                v37 = &xmmword_1AFE43130;
                goto LABEL_26;
              }
            }

            else
            {
              switch(v36)
              {
                case 2:
                  v37 = &xmmword_1AFE430F0;
                  goto LABEL_26;
                case 3:
                  v37 = &xmmword_1AFE430B0;
                  goto LABEL_26;
                case 4:
                  v37 = &xmmword_1AFE43070;
                  goto LABEL_26;
              }
            }

            v37 = &xmmword_1AFE43030;
LABEL_26:
            v89.columns[2] = v37[2];
            v89.columns[3] = v37[3];
            v89.columns[0] = *v37;
            v89.columns[1] = v37[1];
            v38 = sub_1AF112998(*(*(a1 + 472) + 8 * v19));
            v39 = sub_1AF170BF8(v38);
            v40 = 0;
            v101 = v89;
            do
            {
              v102.columns[v40] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, COERCE_FLOAT(*&v101.columns[v40])), v84, *v101.columns[v40].f32, 1), v82, v101.columns[v40], 2), v80, v101.columns[v40], 3);
              ++v40;
            }

            while (v40 != 4);
            v96 = v102.columns[1];
            v99 = v102.columns[0];
            v90 = v102.columns[3];
            v93 = v102.columns[2];
            v105 = __invert_f4(v102);
            v41 = 0;
            v42 = *(v26 + 9216);
            v43 = *(v26 + 9232);
            v44 = *(v26 + 9248);
            v45 = *(v26 + 9264);
            v101 = v105;
            do
            {
              v102.columns[v41] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*&v101.columns[v41])), v43, *v101.columns[v41].f32, 1), v44, v101.columns[v41], 2), v45, v101.columns[v41], 3);
              ++v41;
            }

            while (v41 != 4);
            v46 = v102.columns[0];
            v47 = v102.columns[1];
            v48 = v102.columns[2];
            v49 = v102.columns[3];
            *(v39 + 7168) = v99;
            *(v39 + 7184) = v96;
            *(v39 + 7200) = v93;
            *(v39 + 7216) = v90;
            *(v39 + 0x2000) = v105;
            *(v39 + 9216) = v42;
            *(v39 + 9232) = v43;
            *(v39 + 9248) = v44;
            *(v39 + 9264) = v45;
            *(v39 + 10240) = v46;
            *(v39 + 10256) = v47;
            *(v39 + 10272) = v48;
            ++v36;
            ++v19;
            *(v39 + 10288) = v49;
          }

          while (v36 != v22);
        }
      }

      else
      {
        ++v19;
        if (sub_1AF19CBB4(v20, v10) == 2 && v22 >= 2)
        {
          v50 = v22;
          for (i = 1; i != v50; ++i)
          {
            v52 = sub_1AF112998(*(*(a1 + 472) + 8 * v19));
            v53 = sub_1AF170BF8(v52);
            v106 = *(v28 + (i << 6));
            v54 = (v30 + (i << 6));
            v85 = v54[1];
            v87 = *v54;
            v81 = v54[3];
            v83 = v54[2];
            v97 = v106.columns[1];
            v100 = v106.columns[0];
            v91 = v106.columns[3];
            v94 = v106.columns[2];
            v107 = __invert_f4(v106);
            v55 = 0;
            v101 = v107;
            do
            {
              v102.columns[v55] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*&v101.columns[v55])), v85, *v101.columns[v55].f32, 1), v83, v101.columns[v55], 2), v81, v101.columns[v55], 3);
              ++v55;
            }

            while (v55 != 4);
            v56 = v102.columns[0];
            v57 = v102.columns[1];
            v58 = v102.columns[2];
            v59 = v102.columns[3];
            *(v53 + 7168) = v100;
            *(v53 + 7184) = v97;
            *(v53 + 7200) = v94;
            *(v53 + 7216) = v91;
            *(v53 + 0x2000) = v107;
            *(v53 + 9216) = v87;
            *(v53 + 9232) = v85;
            *(v53 + 9248) = v83;
            *(v53 + 9264) = v81;
            *(v53 + 10240) = v56;
            *(v53 + 10256) = v57;
            *(v53 + 10272) = v58;
            ++v19;
            *(v53 + 10288) = v59;
          }
        }
      }

      v18 = v79 + 1;
    }

    while (v79 + 1 != v76);
  }

  v60 = *(a1 + 464);
  if (v60)
  {
    v61 = *(a1 + 472);
    v62 = 8 * v60;
    do
    {
      v63 = sub_1AF112998(*v61);
      sub_1AF23B5F4(v63, v64, v65, v66, v67, v68, v69);
      sub_1AF23B60C(v63, v70);
      sub_1AF23B678(v63, *v75, v75[1]);
      ++v61;
      v62 -= 8;
    }

    while (v62);
    v72 = *(a1 + 464);
    if (v72)
    {
      v73 = *(a1 + 472);
      v74 = 8 * v72;
      do
      {
        sub_1AF260410(*v73++, v75, v71);
        v74 -= 8;
      }

      while (v74);
    }
  }

  prof_endFlame();
}

void sub_1AF2620F8(unint64_t a1, const char *a2, id *a3)
{
  v5 = a1;
  v6 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Shadow", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ShadowMapAtlasPass.mm", 213, v6 | 0x300000000);
  v7 = *(v5 + 464);
  if (v7)
  {
    v8 = *(v5 + 472);
    v9 = 8 * v7;
    do
    {
      v10 = *v8;
      v11 = sub_1AF260408(*v8);
      v13 = sub_1AF1B75E8(v11, v12);
      v16 = sub_1AF19EDC4(v13, v14);
      v17 = 2.0;
      if (v16)
      {
        v18 = CFX::RG::RenderPassArguments::encoder(a3);
        objc_msgSend_setCullMode_(v18, v19, 1);
        v20 = CFX::RG::RenderPassArguments::encoder(a3);
        v17 = 0.0;
        objc_msgSend_setLockCullMode_(v20, v21, 1);
      }

      v22 = sub_1AF19C608(v13, v15);
      v23 = CFX::RG::RenderPassArguments::encoder(a3);
      *&v24 = -v17;
      v25 = v22;
      *&v26 = v25 * -10.0;
      objc_msgSend_setDepthBias_slopeScale_clamp_(v23, v27, v28, v26, v24, 0.0);
      CFX::RG::RenderPassArguments::RenderPassArguments(v32, a3);
      v29 = CFX::RG::RenderPassArguments::sliceIndex(v32);
      v5 = v29 | (CFX::RG::RenderPassArguments::sliceIndex(v32) << 8) | v5 & 0xFFFFFFFFFFFF0000;
      sub_1AF260B04(v10, a2, v32, v5);
      if (v16)
      {
        v30 = CFX::RG::RenderPassArguments::encoder(a3);
        objc_msgSend_setLockCullMode_(v30, v31, 0);
      }

      CFX::RG::RenderPassArguments::~RenderPassArguments(v32);
      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  prof_endFlame();
}

CFX::RG::Pass *sub_1AF2622A0(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v4 = sub_1AF12DDCC(a3, a2);
  v6 = sub_1AF1D00F8(v4, v5);
  if (!sub_1AF13AF34(v6))
  {
    return 0;
  }

  v12.n128_u64[0] = "Shadow map atlas";
  v12.n128_u64[1] = a3;
  v13 = 0;
  if ((atomic_load_explicit(byte_1ED73A968, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF037C();
  }

  v7 = 0x39077B4FC07D180;
  if (!byte_1ED73A960)
  {
    v7 = 0;
  }

  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v4)))) >> 47));
  Pass = CFX::RG::RenderGraphBuilder::findPass(v11, v10);
  if (!Pass)
  {
    Pass = sub_1AF2623D0(v11, &v11, &v12, &v10);
    CFX::RG::RenderGraphBuilder::registerPass(v11, v10, Pass);
  }

  return Pass;
}

uint64_t sub_1AF2623D0(uint64_t *a1, CFX::RG::RenderGraphBuilder **a2, __n128 *a3, uint64_t *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF26253C(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF26242C(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB120;
  sub_1AF2624F0(a1 + 448);

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF262484(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB120;
  sub_1AF2624F0(a1 + 448);
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2624F0(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 24);
    v2 = *(a1 + 8);
    if (v2)
    {
      sub_1AF234C8C(v2, &v4);
    }
  }

  return a1;
}

uint64_t sub_1AF26253C(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder **a4, __n128 *a5, uint64_t *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1F0u, 8u, 2);
  return sub_1AF261764(v10, *a3, a3[1], *a4, a5, *a6);
}

uint64_t sub_1AF2625A4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v28.n128_u64[0] = "TemporalDenoisePass";
  v28.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A978, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v27 = a3;
    sub_1AFDF0400();
    a2 = v26;
    a3 = v27;
  }

  if (byte_1ED73A970)
  {
    v9 = 0xF55D899391E625ABLL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v28, v9, 0);
  *a1 = &unk_1F24EB178;
  v10 = *(a5 + 16);
  v11 = *(a5 + 32);
  *(a1 + 440) = *a5;
  *(a1 + 456) = v10;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = v11;
  sub_1AF262704(v12, a4);
  v13 = *(a1 + 456);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = *(a1 + 464);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(a1 + 472);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  v22 = *(*(a1 + 488) + 16);
  v24 = CFX::RG::Temporal::previousFrame(v23);
  CFX::RG::Pass::readFrom(a1, v22, v24);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 488) + 16));
  return a1;
}

void sub_1AF262704(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 472));
  v5 = *(v4 + 4);
  v6 = *(v4 + 12);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 440) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 440) ^ v7)));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v5)));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ (v5 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ (v5 >> 16))));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v6)))) >> 47)));
  *(a1 + 488) = v12;
  if (!v12)
  {
    operator new();
  }
}

void sub_1AF2628C8(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF262704(a1, a2);

  sub_1AF262908(a1, a2);
}

void sub_1AF262908(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 55) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 55) ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 55) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 55) ^ v7)))) >> 47));
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  *(a1 + 60) = v9;
  if (!v9)
  {
    sub_1AF262CC8(*(a2 + 32), v8);
  }
}

__n128 sub_1AF2629C8(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[60] + 16))
  {
    v8 = v5;
    v9 = sub_1AF12F10C(a1[54], v6);
    if (v9)
    {
      if (sub_1AF1BB260(v9, v10))
      {
        v12 = sub_1AF12F10C(a1[54], v11);
        sub_1AF27F12C(v12, v72);
        v13 = sub_1AF13050C(a1[54], 1);
        v69 = v13[1];
        v70 = *v13;
        v67 = v13[3];
        v68 = v13[2];
        v71 = sub_1AF12FCE8(a1[54], 0);
        v14 = *(a2 + 24);
        v15 = a1[57];
        v17 = CFX::RG::Temporal::currentFrame(v16);
        Texture = CFX::GPUResourceManager::getTexture(v14, v15, v17);
        v19 = *(a2 + 24);
        v20 = a1[58];
        v21 = CFX::RG::Temporal::currentFrame(Texture);
        v22 = CFX::GPUResourceManager::getTexture(v19, v20, v21);
        v23 = *(a2 + 24);
        v24 = a1[59];
        v25 = CFX::RG::Temporal::currentFrame(v22);
        v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
        v27 = *(a2 + 24);
        v28 = *(a1[61] + 16);
        v29 = CFX::RG::Temporal::previousFrame(v26);
        v30 = CFX::GPUResourceManager::getTexture(v27, v28, v29);
        v31 = *(a2 + 24);
        v32 = *(a1[61] + 16);
        v33 = CFX::RG::Temporal::currentFrame(v30);
        v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
        objc_msgSend_setTexture_atIndex_(v8, v35, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v8, v36, v22, 1);
        objc_msgSend_setTexture_atIndex_(v8, v37, v26, 2);
        objc_msgSend_setTexture_atIndex_(v8, v38, v30, 3);
        objc_msgSend_setTexture_atIndex_(v8, v39, v34, 4);
        LODWORD(Texture) = objc_msgSend_width(v26, v40, v41);
        *(a1[60] + 296) = __PAIR64__(objc_msgSend_height(v26, v42, v43), Texture);
        LODWORD(v26) = objc_msgSend_width(v22, v44, v45);
        *(a1[60] + 288) = __PAIR64__(objc_msgSend_height(v22, v46, v47), v26);
        *(a1[60] + 304) = *(a1[60] + 288) / *(a1[60] + 296);
        v48 = sub_1AF15E62C(v72, &v71);
        v49 = *(v48 + 1);
        v50 = *(v48 + 2);
        v51 = *(v48 + 3);
        v52 = a1[60];
        v52[2] = *v48;
        v52[3] = v49;
        v52[4] = v50;
        v52[5] = v51;
        v75.columns[1] = v69;
        v75.columns[0] = v70;
        v75.columns[3] = v67;
        v75.columns[2] = v68;
        v76 = __invert_f4(v75);
        v53 = 0;
        *(a1[60] + 96) = v76;
        v54 = a1[60];
        v55 = v54[2];
        v56 = v54[3];
        v57 = v54[4];
        v58 = v54[5];
        v73[0] = v70;
        v73[1] = v69;
        v73[2] = v68;
        v73[3] = v67;
        do
        {
          v74.columns[v53] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(v73[v53])), v56, *&v73[v53], 1), v57, v73[v53], 2), v58, v73[v53], 3);
          ++v53;
        }

        while (v53 != 4);
        *(a1[60] + 160) = __invert_f4(v74);
        objc_msgSend_setBytes_length_atIndex_(v8, v59, a1[60] + 32, 288, 8);
        v61 = sub_1AF1403B4(a1[60] + 16, v60);
        v62 = sub_1AFDE323C(v61);
        objc_msgSend_dispatch_onTexture2D_(v8, v63, v62, v34);
        v64 = a1[60];
        ++*(v64 + 308);
        v65 = *(v64 + 176);
        *(v64 + 224) = *(v64 + 160);
        *(v64 + 240) = v65;
        result = *(v64 + 192);
        v66 = *(v64 + 208);
        *(v64 + 256) = result;
        *(v64 + 272) = v66;
      }
    }
  }

  return result;
}

void sub_1AF262DA0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF262DD8(uint64_t a1)
{
  *a1 = &unk_1F24EB1D0;

  return a1;
}

void sub_1AF262E20(uint64_t a1)
{
  *a1 = &unk_1F24EB1D0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF262E88(uint64_t a1)
{
  *a1 = &unk_1F24EB1F0;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF262ED0(uint64_t a1)
{
  *a1 = &unk_1F24EB1F0;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF262F38(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A988, memory_order_acquire) & 1) == 0)
  {
    v41 = a3;
    v40 = a2;
    sub_1AFDF044C();
    a2 = v40;
    a3 = v41;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A980, 0);
  *a1 = &unk_1F24EB210;
  v8 = *(a5 + 24);
  v9 = *(a5 + 40);
  v10 = *(a5 + 72);
  *(a1 + 496) = *(a5 + 56);
  *(a1 + 512) = v10;
  *(a1 + 464) = v8;
  *(a1 + 480) = v9;
  *(a1 + 536) = 0;
  v12 = sub_1AF12DDCC(*(a1 + 432), v11);
  if (*(a1 + 517))
  {
    v14 = 10;
LABEL_9:
    v17 = (a1 + 448);
    *(a1 + 448) = 1065353216;
LABEL_10:
    v18 = sub_1AF130888(*(a1 + 432));
    v19 = v18 * 0.5 / ceilf(sub_1AF130864(*(a1 + 432)));
LABEL_11:
    *v17 = v19;
    goto LABEL_12;
  }

  v15 = v12;
  if (sub_1AF1D0738(v12, v13))
  {
    v14 = 70;
  }

  else
  {
    v14 = 10;
  }

  if (*(a1 + 517))
  {
    goto LABEL_9;
  }

  v38 = sub_1AF1D07FC(v15, v16);
  v17 = (a1 + 448);
  *(a1 + 448) = 1065353216;
  if (!v38)
  {
    goto LABEL_10;
  }

  if (v38 == 1)
  {
    v39 = sub_1AF130888(*(a1 + 432));
    v19 = v39 / ceilf(sub_1AF130864(*(a1 + 432)));
    goto LABEL_11;
  }

LABEL_12:
  v20 = *(a1 + 488);
  if (v20)
  {
    v21 = CFX::RG::Resource::constTextureDesc(v20);
  }

  else
  {
    v21 = CFX::RG::Resource::constTextureDesc(*(a1 + 504));
  }

  v22 = v21[1];
  v53 = *v21;
  v54 = v22;
  v23 = v21[2];
  v24 = v21[3];
  v25 = v21[5];
  v57 = v21[4];
  v58 = v25;
  v55 = v23;
  v56 = v24;
  v26 = v21[6];
  v27 = v21[7];
  v28 = v21[9];
  v61 = v21[8];
  v62 = v28;
  v59 = v26;
  v60 = v27;
  CFX::RG::TextureDescriptorReference::withSampleCount(v42, &v53, 1);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(&v43, v42, *v17);
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v55 = v45;
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v53 = v43;
  *&v54 = v44;
  *(&v54 + 1) = v14;
  LOBYTE(v55) = 1;
  v45 = v55;
  v44 = v54;
  v29 = sub_1AF233CC8(a4, "SSAO-TRACE", &v43);
  *(a1 + 536) = v29;
  v30 = CFX::RG::Pass::renderTo(a1, v29, 0x100000002, 0);
  v31 = *(a1 + 488);
  if (v31)
  {
    v32 = CFX::RG::Temporal::currentFrame(v30);
    CFX::RG::Pass::readFrom(a1, v31, v32);
  }

  v33 = *(a1 + 496);
  if (v33)
  {
    v34 = CFX::RG::Temporal::currentFrame(v30);
    CFX::RG::Pass::readFrom(a1, v33, v34);
  }

  v35 = *(a1 + 504);
  if (v35)
  {
    v36 = CFX::RG::Temporal::currentFrame(v30);
    CFX::RG::Pass::readFrom(a1, v35, v36);
  }

  return a1;
}

uint64_t sub_1AF263218(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432), a2);
  v7 = sub_1AF12E2AC(*(a1 + 432), v5);
  v8 = *(a1 + 496);
  v9 = *(a1 + 504);
  v58 = v8 != 0;
  v57 = v9 != 0;
  if (*(a1 + 517))
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1AF1D0738(v4, v6);
  }

  v56 = v10;
  v11 = CFX::RG::Pass::hash(a1);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 != 0))));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v10)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ (v9 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ (v9 != 0))));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ *(a1 + 516));
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v18 = CFX::CrossFrameResourceManager::get(a2[4], v17);
  *(a1 + 528) = v18;
  if (!v18)
  {
    *(a1 + 528) = sub_1AF2634B0(a2[4], v17);
    v21 = objc_msgSend_resourceManager(v7, v19, v20);
    v22 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v22, v23, &v58, 53, @"HasNormalTex");
    objc_msgSend_setConstantValue_type_withName_(v22, v24, &v56, 53, @"BentNormal");
    objc_msgSend_setConstantValue_type_withName_(v22, v25, &v57, 53, @"UseNormalDepthTex");
    objc_msgSend_setConstantValue_type_withName_(v22, v26, a1 + 516, 53, @"UseScreenSpaceRadius");
    v27 = sub_1AFDE868C(v21);
    v30 = objc_msgSend_frameworkLibrary(v27, v28, v29);
    v31 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 536)) + 6);
    v32 = *(a1 + 528);
    memset(v36, 0, sizeof(v36));
    v37 = v30;
    v38 = v31;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    v44 = 1;
    memset(v49, 0, sizeof(v49));
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v50 = v22;
    v51 = 0;
    v52 = @"vfx_draw_fullscreen_triangle_vertex";
    v53 = @"vfx_ssao_trace";
    v54 = 0u;
    v55 = 0u;
    v34 = objc_msgSend_newRenderPipelineStateWithDesc_(v21, v33, v36);
    sub_1AF23355C((v32 + 16), v34);
  }

  result = sub_1AF2757FC(v7, a2[4]);
  *(a1 + 456) = result;
  return result;
}

void *sub_1AF2634B0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF263538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  v7 = objc_msgSend_renderEncoder(v4, v5, v6);
  v9 = sub_1AF12DDCC(*(a1 + 432), v8);
  result = sub_1AF12F10C(*(a1 + 432), v10);
  if (result)
  {
    v13 = result;
    result = sub_1AF1BB260(result, v12);
    if (result)
    {
      v14 = result;
      sub_1AF27F12C(v13, v87);
      v86 = sub_1AF12FCE8(*(a1 + 432), 0);
      v16 = sub_1AF2338B0(*(a1 + 528) + 16, v15);
      v19 = objc_msgSend_state(v16, v17, v18);
      v21 = objc_msgSend_setRenderPipelineState_(*(v7 + 16), v20, v19);
      v22 = *(a1 + 488);
      if (v22)
      {
        v23 = *(a2 + 24);
        v24 = CFX::RG::Temporal::currentFrame(v21);
        Texture = CFX::GPUResourceManager::getTexture(v23, v22, v24);
        sub_1AF1F8FCC(v7, Texture, 0);
        v67 = objc_msgSend_width(Texture, v26, v27);
        v21 = objc_msgSend_height(Texture, v28, v29);
        v30.f32[0] = v67;
        v30.f32[1] = v21;
        v68 = v30;
      }

      else
      {
        v68 = 0;
      }

      v31 = *(a1 + 496);
      if (v31)
      {
        v32 = *(a2 + 24);
        v33 = CFX::RG::Temporal::currentFrame(v21);
        v34 = CFX::GPUResourceManager::getTexture(v32, v31, v33);
        sub_1AF1F8FCC(v7, v34, 1);
        v69 = objc_msgSend_width(v34, v35, v36);
        v21 = objc_msgSend_height(v34, v37, v38);
        v39.f32[0] = v69;
        v39.f32[1] = v21;
        v68 = v39;
      }

      v40 = *(a1 + 504);
      if (v40)
      {
        v41 = *(a2 + 24);
        v42 = CFX::RG::Temporal::currentFrame(v21);
        v43 = CFX::GPUResourceManager::getTexture(v41, v40, v42);
        sub_1AF1F8FCC(v7, v43, 2);
        v70 = objc_msgSend_width(v43, v44, v45);
        v48 = objc_msgSend_height(v43, v46, v47);
        v49.f32[0] = v70;
        v49.f32[1] = v48;
        v68 = v49;
      }

      sub_1AF1F8FCC(v7, *(a1 + 456), 3);
      v51 = 1.0;
      if ((*(a1 + 517) & 1) == 0)
      {
        v51 = sub_1AF1D0600(v9, v50);
      }

      v84 = v51;
      if (*(a1 + 516) == 1)
      {
        v52 = *(a1 + 512);
      }

      else
      {
        v52 = sub_1AF1D069C(v9, v50);
      }

      v85 = v52;
      v53 = sub_1AF15E62C(v87, &v86);
      v66 = *(v53 + 1);
      v54 = *(v53 + 2);
      v55 = *(v53 + 3);
      v76 = *v53;
      v77 = v66;
      v78 = v54;
      v79 = v55;
      v56 = sub_1AF13050C(*(a1 + 432), 1);
      v88.columns[1] = v56[1];
      v88.columns[2] = v56[2];
      v88.columns[3] = v56[3];
      v72 = *v56;
      v88.columns[0] = v72;
      v73 = v88.columns[1];
      v74 = v88.columns[2];
      v75 = v88.columns[3];
      v71 = __invert_f4(v88);
      __asm { FMOV            V8.2S, #1.0 }

      v81 = vmul_n_f32(v68, *(a1 + 448));
      v82 = vdiv_f32(_D8, v81);
      v83 = sub_1AF15D6DC(v14, v62);
      v63 = vdiv_f32(_D8, __PAIR64__(DWORD1(v66), v76));
      *&v64 = vmul_f32(v63, COERCE_FLOAT32X2_T(-2.00000048));
      *(&v64 + 2) = -v63.f32[0];
      HIDWORD(v64) = v63.i32[1];
      v80 = v64;
      sub_1AF1F905C(v7, &v71, 0xF0uLL, 8);
      return sub_1AF2016F4(v7, v65);
    }
  }

  return result;
}

uint64_t sub_1AF26380C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, __int128 *a5)
{
  v10 = *a5;
  v95[0].n128_u64[0] = "SSAOSpatialPass";
  v95[0].n128_u64[1] = v10;
  if ((atomic_load_explicit(byte_1ED73A998, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF04A8();
  }

  sub_1AF239F88(a1, a2, a3, v95, qword_1ED73A990, 0);
  *a1 = &unk_1F24EB268;
  *(a1 + 440) = 0;
  v11 = *a5;
  v12 = a5[1];
  v13 = a5[3];
  *(a1 + 488) = a5[2];
  *(a1 + 504) = v13;
  *(a1 + 456) = v11;
  *(a1 + 472) = v12;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  v15 = sub_1AF12DDCC(*(a1 + 432), v14);
  if (*(a1 + 509))
  {
    v17 = 10;
LABEL_9:
    *(a1 + 440) = 1065353216;
LABEL_10:
    v20 = sub_1AF130888(*(a1 + 432));
    v22 = v20 * 0.5 / sub_1AF130864(*(a1 + 432));
LABEL_11:
    *(a1 + 440) = v22;
    goto LABEL_12;
  }

  v18 = v15;
  if (sub_1AF1D0738(v15, v16))
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (*(a1 + 509))
  {
    goto LABEL_9;
  }

  v62 = sub_1AF1D07FC(v18, v19);
  *(a1 + 440) = 1065353216;
  if (!v62)
  {
    goto LABEL_10;
  }

  if (v62 == 1)
  {
    v63 = sub_1AF130888(*(a1 + 432));
    v22 = v63 / sub_1AF130864(*(a1 + 432));
    goto LABEL_11;
  }

LABEL_12:
  v23 = sub_1AF12E2AC(*(a1 + 432), v21);
  *(a1 + 568) = v23;
  *(a1 + 576) = objc_msgSend_resourceManager(v23, v24, v25);
  if (*(a1 + 440) == 1.0)
  {
    v28 = 1;
  }

  else
  {
    v28 = *(a1 + 509);
  }

  v29 = objc_msgSend_sampleCount(*(a1 + 568), v26, v27);
  if (v29 < 2)
  {
    v30 = 1;
  }

  else
  {
    v30 = *(a1 + 509);
  }

  v31 = *(a5 + 3);
  if (v31)
  {
    v32 = CFX::RG::Temporal::currentFrame(v29);
    CFX::RG::Pass::readFrom(a1, v31, v32);
  }

  v33 = *(a5 + 4);
  if (v33)
  {
    v34 = CFX::RG::Temporal::currentFrame(v29);
    CFX::RG::Pass::readFrom(a1, v33, v34);
  }

  v35 = *(a5 + 5);
  if (v35)
  {
    v36 = CFX::RG::Temporal::currentFrame(v29);
    CFX::RG::Pass::readFrom(a1, v35, v36);
  }

  v37 = *(a1 + 480);
  if (v37)
  {
    v38 = CFX::RG::Resource::constTextureDesc(v37);
  }

  else
  {
    v38 = CFX::RG::Resource::constTextureDesc(*(a1 + 496));
  }

  v39 = *(v38 + 16);
  v95[0] = *v38;
  v95[1] = v39;
  v40 = *(v38 + 32);
  v41 = *(v38 + 48);
  v42 = *(v38 + 80);
  v95[4] = *(v38 + 64);
  v95[5] = v42;
  v95[2] = v40;
  v95[3] = v41;
  v43 = *(v38 + 96);
  v44 = *(v38 + 112);
  v45 = *(v38 + 144);
  v95[8] = *(v38 + 128);
  v95[9] = v45;
  v95[6] = v43;
  v95[7] = v44;
  CFX::RG::TextureDescriptorReference::withSampleCount(&v75, v95, 1);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(&v85, &v75, *(a1 + 440));
  *(&v86 + 1) = v17;
  LOBYTE(v87) = 1;
  CFX::RG::TextureDescriptorReference::withSampleCount(v64, v95, 1);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v65, v64, v17);
  CFX::RG::TextureDescriptorReference::withUsage(&v75, &v65, 3);
  if (*(a1 + 509) == 1)
  {
    CFX::RG::TextureDescriptorReference::applyingSizeFactor(&v65, &v75, *(a1 + 440));
    v81 = v71;
    v82 = v72;
    v83 = v73;
    v84 = v74;
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v75 = v65;
    v76 = v66;
  }

  v46 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v71 = v91;
  v72 = v92;
  v73 = v93;
  v74 = v94;
  v67 = v87;
  v68 = v88;
  v69 = v89;
  v70 = v90;
  v65 = v85;
  v66 = v86;
  *(a1 + 536) = sub_1AF233CC8(v46, "SSAO_SPATIAL_OUTPUT_TMP", &v65);
  v47 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v71 = v91;
  v72 = v92;
  v73 = v93;
  v74 = v94;
  v67 = v87;
  v68 = v88;
  v69 = v89;
  v70 = v90;
  v65 = v85;
  v66 = v86;
  *(a1 + 544) = sub_1AF233CC8(v47, "SSAO_SPATIAL_OUTPUT_TMP2", &v65);
  v48 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v71 = v81;
  v72 = v82;
  v73 = v83;
  v74 = v84;
  v67 = v77;
  v68 = v78;
  v69 = v79;
  v70 = v80;
  v65 = v75;
  v66 = v76;
  v49 = sub_1AF233CC8(v48, "SSAO_SPATIAL_OUTPUT", &v65);
  *(a1 + 560) = v49;
  if (((v30 | v28) & 1) == 0)
  {
    v50 = CFX::RG::RenderGraphContext::currentBuilder(a4);
    v71 = v81;
    v72 = v82;
    v73 = v83;
    v74 = v84;
    v67 = v77;
    v68 = v78;
    v69 = v79;
    v70 = v80;
    v65 = v75;
    v66 = v76;
    v51 = sub_1AF233CC8(v50, "SSAO_SPATIAL_TMP_FULLRES", &v65);
    *(a1 + 552) = v51;
    v52 = CFX::RG::Temporal::currentFrame(v51);
    CFX::RG::Pass::readFrom(a1, v51, v52);
    v49 = CFX::RG::Pass::writeTo(a1, *(a1 + 552));
  }

  v53 = *(a1 + 480);
  v54 = CFX::RG::Temporal::currentFrame(v49);
  CFX::RG::Pass::readFrom(a1, v53, v54);
  v55 = *(a1 + 536);
  v57 = CFX::RG::Temporal::currentFrame(v56);
  CFX::RG::Pass::readFrom(a1, v55, v57);
  v58 = *(a1 + 544);
  v60 = CFX::RG::Temporal::currentFrame(v59);
  CFX::RG::Pass::readFrom(a1, v58, v60);
  CFX::RG::Pass::writeTo(a1, *(a1 + 544));
  CFX::RG::Pass::writeTo(a1, *(a1 + 536));
  CFX::RG::Pass::writeTo(a1, *(a1 + 560));
  return a1;
}

uint64_t sub_1AF263CF8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 472);
  if (result)
  {
    v5 = sub_1AF23B41C(result);
    v6 = sub_1AF130F84(v5);
    v7 = *(a2 + 24);
    v8 = *(a1 + 560);

    return CFX::GPUResourceManager::registerNamedFrameResource(v7, v8, v6);
  }

  return result;
}

uint64_t sub_1AF263D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432), a2);
  if (*(a1 + 509))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1AF1D0738(v4, v5);
  }

  v15 = v6;
  v14 = *(a1 + 496) != 0;
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v6)));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v14)));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ *(a1 + 508));
  v12 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47)));
  *(a1 + 520) = v12;
  if (!v12)
  {
    operator new();
  }

  result = sub_1AF2757FC(*(a1 + 568), *(a2 + 32));
  *(a1 + 448) = result;
  return result;
}

void *sub_1AF263F78(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v7 = sub_1AF12DDCC(*(a1 + 432), v6);
  result = sub_1AF12F10C(*(a1 + 432), v8);
  if (result)
  {
    v11 = result;
    result = sub_1AF1BB260(result, v10);
    if (result)
    {
      v14 = result;
      v132 = v7;
      if (*(a1 + 440) == 1.0)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(a1 + 509) ^ 1;
      }

      if (objc_msgSend_sampleCount(*(a1 + 568), v12, v13) < 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(a1 + 509) ^ 1;
      }

      sub_1AF27F12C(v11, v149);
      v148 = sub_1AF12FCE8(*(a1 + 432), 0);
      v17 = *(a2 + 24);
      v18 = *(a1 + 528);
      v20 = CFX::RG::Temporal::currentFrame(v19);
      Texture = CFX::GPUResourceManager::getTexture(v17, v18, v20);
      v22 = *(a2 + 24);
      v23 = *(a1 + 536);
      v24 = CFX::RG::Temporal::currentFrame(Texture);
      v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
      v26 = *(a2 + 24);
      v27 = *(a1 + 544);
      v28 = CFX::RG::Temporal::currentFrame(v25);
      v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
      v30 = v29;
      v134 = v16;
      v135 = v15;
      if (v16 & v15)
      {
        v31 = *(a2 + 24);
        v32 = *(a1 + 552);
        v33 = CFX::RG::Temporal::currentFrame(v29);
        v29 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
        v133 = v29;
      }

      else
      {
        v133 = 0;
      }

      v34 = *(a2 + 24);
      v35 = *(a1 + 560);
      v36 = CFX::RG::Temporal::currentFrame(v29);
      v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
      v39 = v37;
      v40 = *(a1 + 480);
      if (v40)
      {
        v41 = *(a2 + 24);
        v42 = CFX::RG::Temporal::currentFrame(v37);
        v43 = CFX::GPUResourceManager::getTexture(v41, v40, v42);
        objc_msgSend_setTexture_atIndex_(v5, v44, v43, 1);
        objc_msgSend_width(v43, v45, v46);
        v130 = v43;
        v37 = objc_msgSend_height(v43, v47, v48);
      }

      else
      {
        v130 = 0;
      }

      v49 = *(a1 + 488);
      if (v49)
      {
        v50 = *(a2 + 24);
        v51 = CFX::RG::Temporal::currentFrame(v37);
        v52 = CFX::GPUResourceManager::getTexture(v50, v49, v51);
        objc_msgSend_setTexture_atIndex_(v5, v53, v52, 2);
        objc_msgSend_width(v52, v54, v55);
        v37 = objc_msgSend_height(v52, v56, v57);
      }

      v58 = *(a1 + 496);
      if (v58)
      {
        v59 = *(a2 + 24);
        v60 = CFX::RG::Temporal::currentFrame(v37);
        v61 = CFX::GPUResourceManager::getTexture(v59, v58, v60);
        objc_msgSend_setTexture_atIndex_(v5, v62, v61, 3);
        objc_msgSend_width(v61, v63, v64);
        objc_msgSend_height(v61, v65, v66);
      }

      objc_msgSend_setTexture_atIndex_(v5, v38, *(a1 + 448), 5);
      memset(&v137[1], 0, sizeof(simd_float4x4));
      v68 = 1.0;
      if ((*(a1 + 509) & 1) == 0)
      {
        v68 = sub_1AF1D0600(v132, v67);
      }

      v145 = v68;
      if (*(a1 + 508) == 1)
      {
        v69 = *(a1 + 504);
      }

      else
      {
        v69 = sub_1AF1D069C(v132, v67);
      }

      v146 = v69;
      v70 = sub_1AF15E62C(v149, &v148);
      v71 = *(v70 + 1);
      v72 = *(v70 + 2);
      v73 = *(v70 + 3);
      v138 = *v70;
      v139 = v71;
      v140 = v72;
      v141 = v73;
      v150 = *sub_1AF13050C(*(a1 + 432), 1);
      v137[0] = __invert_f4(v150);
      v131 = objc_msgSend_width(Texture, v74, v75);
      v78 = objc_msgSend_height(Texture, v76, v77);
      v79.f32[0] = v131;
      v79.f32[1] = v78;
      __asm { FMOV            V0.2S, #1.0 }

      v142 = v79;
      v143 = vdiv_f32(_D0, v79);
      v144 = sub_1AF15D6DC(v14, v85);
      v147 = (1.0 / *(a1 + 440));
      objc_msgSend_setBytes_length_atIndex_(v5, v86, v137, 240, 8);
      v136 = 1;
      objc_msgSend_setTexture_atIndex_(v5, v87, Texture, 0);
      v88 = 4;
      objc_msgSend_setTexture_atIndex_(v5, v89, v25, 4);
      objc_msgSend_setBytes_length_atIndex_(v5, v90, &v136, 4, 0);
      v92 = sub_1AF1403B4(*(a1 + 520) + 16, v91);
      v93 = sub_1AFDE323C(v92);
      objc_msgSend_dispatch_onTexture2D_(v5, v94, v93, v25);
      v136 = 2;
      objc_msgSend_setTexture_atIndex_(v5, v95, v25, 0);
      objc_msgSend_setTexture_atIndex_(v5, v96, v30, 4);
      objc_msgSend_setBytes_length_atIndex_(v5, v97, &v136, 4, 0);
      v99 = sub_1AF1403B4(*(a1 + 520) + 16, v98);
      v100 = sub_1AFDE323C(v99);
      objc_msgSend_dispatch_onTexture2D_(v5, v101, v100, v25);
      v103 = sub_1AF1D07FC(v132, v102);
      v105 = v30;
      if (v103 == 2)
      {
        v88 = 4;
        v105 = v30;
        if ((*(a1 + 509) & 1) == 0)
        {
          v136 = 4;
          objc_msgSend_setTexture_atIndex_(v5, v104, v30, 0);
          objc_msgSend_setTexture_atIndex_(v5, v106, v25, 4);
          objc_msgSend_setBytes_length_atIndex_(v5, v107, &v136, 4, 0);
          v109 = sub_1AF1403B4(*(a1 + 520) + 16, v108);
          v110 = sub_1AFDE323C(v109);
          objc_msgSend_dispatch_onTexture2D_(v5, v111, v110, v25);
          v88 = 8;
          v105 = v25;
        }
      }

      v136 = v88;
      objc_msgSend_setTexture_atIndex_(v5, v104, v105, 0);
      if ((v135 | v134))
      {
        objc_msgSend_setTexture_atIndex_(v5, v112, v30, 4);
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v5, v112, v39, 4);
      }

      objc_msgSend_setBytes_length_atIndex_(v5, v113, &v136, 4, 0);
      v115 = sub_1AF1403B4(*(a1 + 520) + 16, v114);
      v116 = sub_1AFDE323C(v115);
      result = objc_msgSend_dispatch_onTexture2D_(v5, v117, v116, v25);
      if (v135)
      {
        objc_msgSend_setTexture_atIndex_(v5, v118, v30, 0);
        if (v134)
        {
          objc_msgSend_setTexture_atIndex_(v5, v119, v133, 4);
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(v5, v119, v39, 4);
        }

        v121 = sub_1AF1403B4(*(a1 + 520) + 24, v120);
        v122 = sub_1AFDE323C(v121);
        result = objc_msgSend_dispatch_onTexture2D_(v5, v123, v122, v39);
      }

      if (v134)
      {
        if (v135)
        {
          objc_msgSend_setTexture_atIndex_(v5, v118, v133, 0);
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(v5, v118, v30, 0);
        }

        objc_msgSend_setTexture_atIndex_(v5, v124, v39, 1);
        objc_msgSend_setTexture_atIndex_(v5, v125, v130, 2);
        v127 = sub_1AF1403B4(*(a1 + 520) + 32, v126);
        v128 = sub_1AFDE323C(v127);
        return objc_msgSend_dispatch_onTexture2D_(v5, v129, v128, v39);
      }
    }
  }

  return result;
}

CFX::RG::Pass *sub_1AF264540(uint64_t *a1, CFX::RG::RenderGraphContext *a2, __int128 *a3)
{
  v6 = a3[1];
  v17 = *a3;
  v18 = v6;
  v7 = a3[3];
  v19 = a3[2];
  v20 = v7;
  v8 = *a3;
  v15[0] = "SSAOTracePass";
  v15[1] = v8;
  v16 = 0;
  v9 = sub_1AF2645F0(a1, a1, v15);
  v10 = sub_1AF264648(a1, a2, a3);
  v11 = CFX::RG::Pass::dependsOn(v10, v9);
  v12 = *(v9 + 67);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(v10, v12, v13);
  *(v10 + 66) = v12;
  *(a3 + 7) = *(v10 + 70);
  return v10;
}

uint64_t sub_1AF2645F0(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF264938(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF264648(uint64_t *a1, CFX::RG::RenderGraphContext *a2, __int128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF264998(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF2646A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2646E0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

unint64_t sub_1AF264718(unint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *result) ^ ((0xC6A4A7935BD1E995 * *result) >> 47))) ^ (0xC6A4A7935BD1E995 * a2));
    v3 = a2 & 7;
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        v2 ^= *(result + 14) << 48;
      }

      v2 ^= *(result + 13) << 40;
    }

    else if (v3 == 4)
    {
      goto LABEL_9;
    }

    v2 ^= *(result + 12) << 32;
LABEL_9:
    v4 = 0xC6A4A7935BD1E995 * (v2 ^ (*(result + 11) << 24) ^ (*(result + 10) << 16) ^ (*(result + 9) << 8) ^ *(result + 8));
    return (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47);
  }

  return result;
}

uint64_t sub_1AF2647B8(uint64_t a1)
{
  *a1 = &unk_1F24EB2C0;

  return a1;
}

void sub_1AF264800(uint64_t a1)
{
  *a1 = &unk_1F24EB2C0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF264868(uint64_t a1)
{
  *a1 = &unk_1F24EB2E0;

  return a1;
}

void sub_1AF2648C0(uint64_t a1)
{
  *a1 = &unk_1F24EB2E0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF264938(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x220u, 8u, 2);
  return sub_1AF262F38(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF264998(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, __int128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x248u, 8u, 2);
  return sub_1AF26380C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2649F8(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v25 = a2;
  *(&v25 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A9B0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0504();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A9A8, 0);
  *a1 = &unk_1F24EB300;
  v10 = *(a5 + 40);
  *(a1 + 464) = *(a5 + 24);
  *(a1 + 480) = v10;
  v11 = *(a5 + 56);
  v12 = *(a5 + 72);
  v13 = *(a5 + 104);
  *(a1 + 528) = *(a5 + 88);
  *(a1 + 544) = v13;
  *(a1 + 496) = v11;
  *(a1 + 512) = v12;
  v14 = *(a5 + 120);
  v15 = *(a5 + 136);
  v16 = *(a5 + 168);
  *(a1 + 592) = *(a5 + 152);
  *(a1 + 608) = v16;
  *(a1 + 560) = v14;
  *(a1 + 576) = v15;
  *(a1 + 624) = 0;
  v17 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  *&v26 = *(a1 + 432);
  LOBYTE(v30) = 0;
  v32 = 0;
  v28 = 0;
  v27 = 0uLL;
  v33 = xmmword_1AFE42EB0;
  v34 = *(a1 + 440);
  v35 = 2;
  v36 = 32;
  v37 = 1;
  v38 = 1;
  *(a1 + 448) = sub_1AF2330E0(v25, *(&v25 + 1), &v25, &v26, &v27);
  v18 = v25;
  v19 = *(a1 + 432);
  *&v27 = 0;
  WORD4(v27) = 0;
  BYTE10(v27) = 0;
  v28 = 56;
  v29 = 0;
  if ((atomic_load_explicit(byte_1ED73A9B0, memory_order_acquire) & 1) == 0)
  {
    v24 = v18;
    sub_1AFDF055C();
    v18 = v24;
  }

  v30 = qword_1ED73A9A8;
  v31 = -1;
  v26 = v18;
  v20 = sub_1AF23498C(&v26, 0x48u, 8u, 2);
  sub_1AF2603E8(v20, v19, &v27, *(a1 + 448));
  *(a1 + 456) = v21;
  CFX::RG::TextureDescriptorReference::withSampleCount(&v27, (a5 + 24), 1);
  v22 = sub_1AF233CC8(v17, "BACKFACE_DEPTH", &v27);
  *(a1 + 624) = v22;
  CFX::RG::Pass::renderTo(a1, v22, 0x200000002, -1);
  return a1;
}

void sub_1AF264C4C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1AF23B424(*(a1 + 448), a2, a3);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 448);
  v12 = *a2;
  v13 = *(a2 + 1);

  sub_1AF23B678(v11, v12, v13);
}

void sub_1AF264CA8(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = sub_1AF12E2AC(*(a1 + 432), a2);
  v9 = objc_msgSend_renderEncoder(v6, v7, v8);
  objc_msgSend_setCullMode_(*(v9 + 16), v10, 1);
  sub_1AF264D20(v9, 1);
  v11 = *(a1 + 456);

  sub_1AF260B04(v11, a2, a3, 0);
}

uint64_t sub_1AF264D20(uint64_t a1, const char *a2)
{
  if (!*(a1 + 24))
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6844(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  return objc_msgSend_setLockCullMode_(*(a1 + 24), a2, a2);
}

uint64_t sub_1AF264D80(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v8 = a5[20];
  v31[0].n128_u64[0] = "SSRDownsamplePass";
  v31[0].n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A9C0, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDF05A0();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF239F88(a1, a2, a3, v31, qword_1ED73A9B8, 0);
  *a1 = &unk_1F24EB358;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v21, (a1 + 440), 115);
  CFX::RG::TextureDescriptorReference::withSizeFactor(v31, &v21, 1.0 / *(a1 + 680));
  v27 = v31[6];
  v28 = v31[7];
  v29 = v31[8];
  v30 = v31[9];
  v23 = v31[2];
  v24 = v31[3];
  v25 = v31[4];
  v26 = v31[5];
  v21 = v31[0];
  v22 = v31[1];
  *(a1 + 720) = sub_1AF233CC8(v9, "COLOR_DOWNSAMPLE", &v21);
  v10 = CFX::RG::Resource::constTextureDesc(*(a1 + 632));
  CFX::RG::TextureDescriptorReference::withPixelFormat(v20, v10, 105);
  CFX::RG::TextureDescriptorReference::withSizeFactor(&v21, v20, 1.0 / *(a1 + 680));
  v20[6] = v27;
  v20[7] = v28;
  v20[8] = v29;
  v20[9] = v30;
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v26;
  v20[0] = v21;
  v20[1] = v22;
  v11 = sub_1AF233CC8(v9, "DEPTH_DOWNSAMPLE", v20);
  *(a1 + 728) = v11;
  v12 = *(a1 + 616);
  v13 = CFX::RG::Temporal::currentFrame(v11);
  CFX::RG::Pass::readFrom(a1, v12, v13);
  v14 = *(a1 + 632);
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v14, v16);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  CFX::RG::Pass::writeTo(a1, *(a1 + 728));
  return a1;
}

void sub_1AF264F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432), a2);
  v27 = sub_1AF1D09F8(v4, v5);
  v6 = sub_1AF1D005C(v4, 0) != 0;
  v26 = v6;
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ *(a1 + 680));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v27)));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v6)))) >> 47));
  v13 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v12);
  *(a1 + 704) = v13;
  if (!v13)
  {
    *(a1 + 704) = sub_1AF265118(*(a2 + 32), v12);
    v15 = sub_1AF12E2AC(*(a1 + 432), v14);
    v18 = objc_msgSend_resourceManager(v15, v16, v17);
    v19 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v19, v20, a1 + 680, 29, @"SSRDownSample");
    objc_msgSend_setConstantValue_type_withName_(v19, v21, &v27, 29, @"SSRThicknessMode");
    objc_msgSend_setConstantValue_type_withName_(v19, v22, &v26, 53, @"SSRHasIBL");
    v23 = *(a1 + 704);
    v25 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v18, v24, @"vfx_ssr_downsample_depth", v19);
    sub_1AF23355C((v23 + 16), v25);
  }
}

void *sub_1AF265118(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2651A0(uint64_t *a1, uint64_t a2, id *this)
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v7 = sub_1AF12E2AC(a1[54], v6);
  v8 = *(a2 + 24);
  v9 = a1[82];
  v10 = CFX::RG::Temporal::currentFrame(v7);
  Texture = CFX::GPUResourceManager::getTexture(v8, v9, v10);
  v11 = *(a2 + 24);
  v12 = a1[83];
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v77 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  v16 = objc_msgSend_resourceManager(v7, v14, v15);
  v18 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v16, v17, v7);
  v19 = *(a2 + 24);
  v20 = a1[77];
  v21 = CFX::RG::Temporal::currentFrame(v18);
  v22 = CFX::GPUResourceManager::getTexture(v19, v20, v21);
  v23 = *(a2 + 24);
  v24 = a1[79];
  v25 = CFX::RG::Temporal::currentFrame(v22);
  v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
  v27 = *(a2 + 24);
  v28 = a1[90];
  v29 = CFX::RG::Temporal::currentFrame(v26);
  v30 = CFX::GPUResourceManager::getTexture(v27, v28, v29);
  v31 = *(a2 + 24);
  v32 = a1[91];
  v33 = CFX::RG::Temporal::currentFrame(v30);
  v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
  v36 = objc_msgSend_setTexture_atIndex_(v5, v35, v22, 0);
  v38 = a1[89];
  if (v38)
  {
    v39 = *(a2 + 24);
    v40 = CFX::RG::Temporal::currentFrame(v36);
    v41 = CFX::GPUResourceManager::getTexture(v39, v38, v40);
    objc_msgSend_setTexture_atIndex_(v5, v42, v41, 2);
  }

  objc_msgSend_setTexture_atIndex_(v5, v37, v26, 1);
  v43 = v30;
  objc_msgSend_setTexture_atIndex_(v5, v44, v30, 3);
  objc_msgSend_setTexture_atIndex_(v5, v45, v34, 4);
  objc_msgSend_setTexture_atIndex_(v5, v46, Texture, 5);
  objc_msgSend_setTexture_atIndex_(v5, v47, v77, 6);
  objc_msgSend_setTexture_atIndex_(v5, v48, v18, 8);
  v50 = sub_1AF12DDCC(a1[54], v49);
  v52 = sub_1AF1D005C(v50, 0);
  if (v52)
  {
    v53 = objc_msgSend_textureForMaterialProperty_(v7, v51, v52);
    if (v53)
    {
      objc_msgSend_setTexture_atIndex_(v5, v51, v53, 7);
    }
  }

  v54 = a1[76];
  if (!v54)
  {
    v54 = sub_1AF12F10C(a1[54], v51);
  }

  sub_1AF27F12C(v54, v81);
  memset(v86, 0, sizeof(v86));
  v55.f32[0] = v83 * v82;
  __asm { FMOV            V3.2S, #1.0 }

  _D3.f32[0] = v83 - v82;
  v55.f32[1] = v83;
  v88 = vdiv_f32(_D3, v55);
  v89 = sub_1AF1D0A94(v50, v61);
  if (v52)
  {
    v63 = sub_1AF166598(v52, v62);
  }

  else
  {
    v63 = 0.0;
  }

  v90 = v63;
  v92 = *sub_1AF13050C(a1[54], 1);
  v93 = __invert_f4(v92);
  v78 = v93.columns[1];
  v80 = v93.columns[0];
  v87 = v93;
  v75 = v93.columns[3];
  v76 = v93.columns[2];
  if (sub_1AF167434(v52))
  {
    v65 = sub_1AF167220(v52, v64);
    v66 = 0;
    v67 = v65[1];
    v68 = v65[2];
    v69 = v65[3];
    v84[0] = *v65;
    v84[1] = v67;
    v84[2] = v68;
    v84[3] = v69;
    do
    {
      v85.columns[v66] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, COERCE_FLOAT(v84[v66])), v78, *&v84[v66], 1), v76, v84[v66], 2), v75, v84[v66], 3);
      ++v66;
    }

    while (v66 != 4);
    v87 = v85;
  }

  objc_msgSend_setBytes_length_atIndex_(v5, v64, v86, 608, 0, *&v75, *&v76);
  v71 = sub_1AF1403B4(a1[88] + 16, v70);
  v72 = sub_1AFDE323C(v71);
  return objc_msgSend_dispatch_onTexture2D_(v5, v73, v72, v43);
}

void *sub_1AF265544(void *a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, void *a5)
{
  v8 = a5[20];
  v25[0].n128_u64[0] = "SSRRaytracePass";
  v25[0].n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A9C8, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v24 = a3;
    sub_1AFDF05F8();
    a2 = v23;
    a3 = v24;
  }

  if (byte_1ED73A9A0)
  {
    v9 = 0x1F324A86E1EC8E1BLL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v25, v9, 0);
  *a1 = &unk_1F24EB3B0;
  memcpy(a1 + 56, a5, 0x108uLL);
  a1[89] = 0;
  v25[0].n128_u32[0] = 0;
  v10 = sub_1AF2656B0(a1, a4);
  a5[32] = a1[89] + 48;
  v11 = a1[81];
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = a1[82];
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = a1[83];
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = a1[79];
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  sub_1AF2680B0(v25);
  return a1;
}

void sub_1AF265694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AF2680B0(va);
  CFX::RG::Pass::~Pass(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2656B0(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  v47 = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 432), v7);
  v10 = sub_1AF1D095C(v8, v9);
  v52 = v10;
  v13 = sub_1AF1D09F8(v8, v11);
  v14 = *(a1 + 688);
  v50 = *(a1 + 688);
  v51 = v13;
  if (v8)
  {
    v15 = sub_1AF1D02FC(v8, v12) > 0.0;
  }

  else
  {
    v15 = 0;
  }

  v49 = v15;
  v48 = sub_1AF1D005C(v8, 0) != 0;
  CFX::RG::Pass::hash(a1);
  v16 = CFX::RG::Pass::hash(a1);
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v8)))) >> 47));
  v18 = CFX::CrossFrameResourceManager::get(a2[4], v17);
  *(a1 + 712) = v18;
  if (!v18)
  {
    operator new();
  }

  v19 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v14)));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ v15)));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ v10)));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ v13)));
  v23 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
  if (*(v18 + 16) != v23)
  {
    *(v18 + 16) = v23;
    v24 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v24, v25, &v50, 29, @"SSRDownSample");
    objc_msgSend_setConstantValue_type_withName_(v24, v26, &v52, 29, @"SSRQuality");
    objc_msgSend_setConstantValue_type_withName_(v24, v27, &v51, 29, @"SSRThicknessMode");
    objc_msgSend_setConstantValue_type_withName_(v24, v28, &v49, 53, @"SSREnableFog");
    objc_msgSend_setConstantValue_type_withName_(v24, v29, &v48, 53, @"SSRHasIBL");
    v30 = *(a1 + 712);
    v32 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v47, v31, @"vfx_ssr_raytrace", v24);
    sub_1AF23355C((v30 + 24), v32);

    *(*(a1 + 712) + 640) = 0;
  }

  v33 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 624)) + 4);
  v34 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v17)));
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ (v33 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ (v33 >> 16))));
  v36 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ v50)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ v50)));
  v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
  v38 = *(a1 + 712);
  if (*(v38 + 32) != v37)
  {
    *(v38 + 32) = v37;
    RGBufferDescriptorMake();
    v40 = v39;
    v42 = v41;
    v43 = *(a1 + 712);
    v44 = sub_1AF239FE4(a1);
    Buffer = CFXGPUDeviceCreateBuffer(v44, v40, v42);
    sub_1AF23355C((v43 + 40), Buffer);
  }

  result = sub_1AF2757FC(v4, a2[4]);
  *(a1 + 440) = result;
  return result;
}

void *sub_1AF265A74(uint64_t *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[89] + 24))
  {
    v7 = result;
    v9 = sub_1AF12DDCC(a1[54], v6);
    v10 = a1[77];
    if (v10 || (result = sub_1AF12F10C(a1[54], v8), (v10 = result) != 0))
    {
      result = sub_1AF1BB260(v10, v8);
      if (result)
      {
        sub_1AF27F12C(v10, v116);
        v115 = sub_1AF12FCE8(a1[54], 0);
        v11 = *(a2 + 24);
        v12 = a1[81];
        v14 = CFX::RG::Temporal::currentFrame(v13);
        Texture = CFX::GPUResourceManager::getTexture(v11, v12, v14);
        v16 = *(a2 + 24);
        v17 = a1[80];
        v18 = CFX::RG::Temporal::currentFrame(Texture);
        v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
        v20 = *(a2 + 24);
        v21 = a1[82];
        v22 = CFX::RG::Temporal::currentFrame(v19);
        v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v24 = *(a2 + 24);
        v25 = a1[83];
        v26 = CFX::RG::Temporal::currentFrame(v23);
        v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
        v28 = *(a2 + 24);
        v29 = a1[79];
        v30 = CFX::RG::Temporal::currentFrame(v27);
        v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
        objc_msgSend_setTexture_atIndex_(v7, v32, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v33, v27, 1);
        objc_msgSend_setTexture_atIndex_(v7, v34, v23, 2);
        objc_msgSend_setTexture_atIndex_(v7, v35, a1[55], 3);
        objc_msgSend_setTexture_atIndex_(v7, v36, v19, 4);
        objc_msgSend_setTexture_atIndex_(v7, v37, v31, 6);
        v39 = sub_1AF12E2AC(a1[54], v38);
        v41 = sub_1AF12DDCC(a1[54], v40);
        v43 = sub_1AF1D005C(v41, 0);
        if (v43)
        {
          v44 = objc_msgSend_radianceTextureForMaterialProperty_(v39, v42, v43);
          if (v44)
          {
            objc_msgSend_setTexture_atIndex_(v7, v45, v44, 5);
          }
        }

        v46 = sub_1AF15E62C(v116, &v115);
        v47 = *(v46 + 1);
        v48 = *(v46 + 2);
        v49 = *(v46 + 3);
        v50 = a1[89];
        v50[3] = *v46;
        v50[4] = v47;
        v50[5] = v48;
        v50[6] = v49;
        *(a1[89] + 112) = __invert_f4(*(a1[89] + 48));
        v126 = *sub_1AF13050C(a1[54], 1);
        *(a1[89] + 176) = __invert_f4(v126);
        v51 = a1[89];
        v113 = v51[3];
        v114 = v51[4];
        v111 = v51[6];
        v112 = v51[5];
        v52 = sub_1AF13050C(a1[54], 1);
        v53 = 0;
        v54 = v52[1];
        v55 = v52[2];
        v56 = v52[3];
        v118 = *v52;
        v119 = v54;
        v120 = v55;
        v121 = v56;
        do
        {
          *(&v122 + v53) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v118 + v53))), v114, *(&v118 + v53), 1), v112, *(&v118 + v53), 2), v111, *(&v118 + v53), 3);
          v53 += 16;
        }

        while (v53 != 64);
        v57 = v123;
        v58 = v124;
        v59 = v125;
        v60 = a1[89];
        v60[19] = v122;
        v60[20] = v57;
        v60[21] = v58;
        v60[22] = v59;
        v61 = a1[89];
        v62 = v61[24];
        v61[27] = v61[23];
        v61[28] = v62;
        v63 = v61[26];
        v61[29] = v61[25];
        v61[30] = v63;
        *(a1[89] + 368) = __invert_f4(*(a1[89] + 304));
        *(a1[89] + 560) = v117;
        v65 = sub_1AF12EF08(a1[54], v64);
        sub_1AF1D04D4(v9, v66, v65);
        *(a1[89] + 576) = v67;
        *(a1[89] + 592) = *sub_1AF1D048C(v9, v68);
        v71 = sub_1AF1D0A94(v9, v69);
        v72 = a1[89];
        v73 = (v72 + 48);
        v74.i32[0] = vld2_f32(v73).val[0].u32[0];
        v74.i32[1] = *(v72 + 68);
        *(v72 + 632) = v71;
        __asm { FMOV            V0.2S, #1.0 }

        v80 = vdiv_f32(_D0, v74);
        *&v81 = vmul_f32(v80, COERCE_FLOAT32X2_T(-2.00000048));
        *(&v81 + 2) = -v80.f32[0];
        HIDWORD(v81) = v80.i32[1];
        *(v72 + 608) = v81;
        if (v43)
        {
          v82 = sub_1AF166598(v43, v70);
        }

        else
        {
          v82 = 0.0;
        }

        *(a1[89] + 636) = v82;
        v127 = *sub_1AF13050C(a1[54], 1);
        *(a1[89] + 496) = __invert_f4(v127);
        if (sub_1AF167434(v43))
        {
          v84 = a1[89];
          v113 = v84[31];
          v114 = v84[32];
          v111 = v84[34];
          v112 = v84[33];
          v85 = sub_1AF167220(v43, v83);
          v86 = 0;
          v87 = v85[1];
          v88 = v85[2];
          v89 = v85[3];
          v118 = *v85;
          v119 = v87;
          v120 = v88;
          v121 = v89;
          do
          {
            *(&v122 + v86) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v118 + v86))), v114, *(&v118 + v86), 1), v112, *(&v118 + v86), 2), v111, *(&v118 + v86), 3);
            v86 += 16;
          }

          while (v86 != 64);
          v90 = v123;
          v91 = v124;
          v92 = v125;
          v93 = a1[89];
          v93[31] = v122;
          v93[32] = v90;
          v93[33] = v91;
          v93[34] = v92;
        }

        objc_msgSend_setBytes_length_atIndex_(v7, v83, a1[89] + 48, 608, 0, *&v111, *&v112, *&v113, *&v114, *&v115);
        v95 = sub_1AF1403B4(a1[89] + 24, v94);
        v96 = sub_1AFDE323C(v95);
        objc_msgSend_setComputePipelineState_(v7, v97, v96);
        v100 = objc_msgSend_width(Texture, v98, v99);
        v103 = objc_msgSend_height(Texture, v101, v102);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v104, *(a1[89] + 40), 0, 10);
        v106 = sub_1AF1403B4(a1[89] + 24, v105);
        v107 = sub_1AFDE323C(v106);
        *&v122 = v100;
        *(&v122 + 1) = v103;
        *&v123 = 1;
        result = RGMTLComputeCommandEncoderDispatchOnGrid2D(v7, v107, &v122, 1);
        v108 = a1[89];
        v109 = *(v108 + 640);
        if ((v109 + 1) <= 0x1000)
        {
          v110 = v109 + 1;
        }

        else
        {
          v110 = 0;
        }

        *(v108 + 640) = v110;
      }
    }
  }

  return result;
}

uint64_t sub_1AF265F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v8 = a5[20];
  v22 = "SSRUpscalePass";
  *v23 = v8;
  if ((atomic_load_explicit(byte_1ED73A9D8, memory_order_acquire) & 1) == 0)
  {
    v21 = a3;
    v20 = a2;
    sub_1AFDF0644();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, &v22, qword_1ED73A9D0, 0);
  *a1 = &unk_1F24EB408;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0;
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  v9 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a1 + 616));
  v25 = *v9;
  v26 = *(v9 + 2);
  v10 = *(v9 + 12);
  v11 = *(v9 + 5);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v22 = v25;
  *v23 = v26;
  *&v23[4] = v10 & 0xFFFFFFFFFFFF0000 | 0x73;
  v24 = v11;
  v13 = sub_1AF2373FC(v12, "SSRUpscale", &v22);
  *(a1 + 720) = v13;
  v14 = *(a1 + 632);
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  v16 = *(a1 + 656);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  return a1;
}

void sub_1AF2660D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  *(a1 + 728) = v4;
  *(a1 + 736) = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 432), v7);
  v10 = sub_1AF1D095C(v8, v9);
  v28 = *(a1 + 680);
  v29 = v10;
  v11 = CFX::RG::Pass::hash(a1);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v10)));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ *(a1 + 680));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47));
  v16 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v15);
  *(a1 + 704) = v16;
  if (!v16)
  {
    *(a1 + 704) = sub_1AF266228(*(a2 + 32), v15);
    v18 = sub_1AF12E2AC(*(a1 + 432), v17);
    v21 = objc_msgSend_resourceManager(v18, v19, v20);
    v22 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v22, v23, &v29, 29, @"SSRQuality");
    objc_msgSend_setConstantValue_type_withName_(v22, v24, &v28, 29, @"SSRDownSample");
    v25 = *(a1 + 704);
    v27 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v21, v26, @"vfx_ssr_upscale", v22);
    sub_1AF23355C((v25 + 16), v27);
  }
}

void *sub_1AF266228(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF2662B0(uint64_t *a1, uint64_t a2, id *this)
{
  v38 = *MEMORY[0x1E69E9840];
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[88] + 16))
  {
    v7 = result;
    v8 = a1[76];
    if (v8 || (result = sub_1AF12F10C(a1[54], v6), (v8 = result) != 0))
    {
      result = sub_1AF1BB260(v8, v6);
      if (result)
      {
        sub_1AF27F12C(v8, v34);
        v33 = sub_1AF12FCE8(a1[54], 0);
        memset(v37, 0, sizeof(v37));
        v9 = sub_1AF15E62C(v34, &v33);
        v39.columns[1] = *(v9 + 1);
        v39.columns[2] = *(v9 + 2);
        v39.columns[3] = *(v9 + 3);
        v35[0] = *v9;
        v39.columns[0] = v35[0];
        v35[1] = v39.columns[1];
        v35[2] = v39.columns[2];
        v35[3] = v39.columns[3];
        v36 = __invert_f4(v39);
        v11 = objc_msgSend_setBytes_length_atIndex_(v7, v10, v35, 608, 8);
        v12 = *(a2 + 24);
        v13 = a1[79];
        v14 = CFX::RG::Temporal::currentFrame(v11);
        Texture = CFX::GPUResourceManager::getTexture(v12, v13, v14);
        v16 = *(a2 + 24);
        v17 = a1[82];
        v18 = CFX::RG::Temporal::currentFrame(Texture);
        v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
        objc_msgSend_setTexture_atIndex_(v7, v20, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v21, v19, 1);
        v23 = objc_msgSend_setBuffer_offset_atIndex_(v7, v22, a1[89], 0, 0);
        v24 = *(a2 + 24);
        v25 = a1[90];
        v26 = CFX::RG::Temporal::currentFrame(v23);
        v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
        objc_msgSend_setTexture_atIndex_(v7, v28, v27, 10);
        v30 = sub_1AF1403B4(a1[88] + 16, v29);
        v31 = sub_1AFDE323C(v30);
        return objc_msgSend_dispatch_onTexture2D_(v7, v32, v31, v27);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2664AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v8 = a5[20];
  v30 = "SSRSpatialDenoisePass";
  *v31 = v8;
  if ((atomic_load_explicit(byte_1ED73A9E8, memory_order_acquire) & 1) == 0)
  {
    v29 = a3;
    v28 = a2;
    sub_1AFDF069C();
    a2 = v28;
    a3 = v29;
  }

  sub_1AF239F88(a1, a2, a3, &v30, qword_1ED73A9E0, 0);
  *a1 = &unk_1F24EB460;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  v9 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a1 + 616));
  v33 = *v9;
  v34 = *(v9 + 2);
  v10 = *(v9 + 12);
  v11 = *(v9 + 5);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v13 = v10 & 0xFFFFFFFFFFFF0000 | 0x73;
  v30 = v33;
  *v31 = v34;
  *&v31[4] = v13;
  v32 = v11;
  *(a1 + 720) = sub_1AF2373FC(v12, "SSRSpatialDenoiseTmpTex", &v30);
  v14 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v30 = v33;
  *v31 = v34;
  *&v31[4] = v13;
  v32 = v11;
  *(a1 + 728) = sub_1AF2373FC(v14, "SSRSpatialDenoiseOutput", &v30);
  LODWORD(v30) = 0;
  v15 = (*(*a1 + 48))(a1, a4, &v30);
  v16 = *(a1 + 632);
  v17 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v16, v17);
  v18 = *(a1 + 656);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(a1 + 648);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = CFX::RG::Pass::writeTo(a1, *(a1 + 728));
  v25 = *(a1 + 720);
  v26 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v25, v26);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  sub_1AF2680B0(&v30);
  return a1;
}

void sub_1AF2666DC(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  *(a1 + 92) = v4;
  *(a1 + 93) = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 54), v7);
  v23 = sub_1AF1D095C(v8, v9);
  v10 = CFX::RG::Pass::hash(a1);
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v23)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v23)))) >> 47));
  v12 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v11);
  *(a1 + 88) = v12;
  if (!v12)
  {
    *(a1 + 88) = sub_1AF2667F0(*(a2 + 32), v11);
    v14 = sub_1AF12E2AC(*(a1 + 54), v13);
    v17 = objc_msgSend_resourceManager(v14, v15, v16);
    v18 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v18, v19, &v23, 33, @"SSRQuality");
    v20 = *(a1 + 88);
    v22 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v17, v21, @"vfx_ssr_spatial_atrous_denoise", v18);
    sub_1AF23355C((v20 + 16), v22);
  }
}

void *sub_1AF2667F0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF266878(uint64_t *a1, uint64_t a2, id *this)
{
  v84 = *MEMORY[0x1E69E9840];
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[88] + 16))
  {
    v7 = result;
    v9 = sub_1AF12DDCC(a1[54], v6);
    v10 = a1[76];
    if (v10 || (result = sub_1AF12F10C(a1[54], v8), (v10 = result) != 0))
    {
      result = sub_1AF1BB260(v10, v8);
      if (result)
      {
        sub_1AF27F12C(v10, v81);
        v80 = sub_1AF12FCE8(a1[54], 0);
        memset(&v83[1], 0, 384);
        v11 = sub_1AF15E62C(v81, &v80);
        v85.columns[1] = *(v11 + 1);
        v85.columns[2] = *(v11 + 2);
        v85.columns[3] = *(v11 + 3);
        v82[0] = *v11;
        v85.columns[0] = v82[0];
        v82[1] = v85.columns[1];
        v82[2] = v85.columns[2];
        v82[3] = v85.columns[3];
        v83[0] = __invert_f4(v85);
        v13 = objc_msgSend_setBytes_length_atIndex_(v7, v12, v82, 608, 8);
        v14 = *(a2 + 24);
        v15 = a1[79];
        v16 = CFX::RG::Temporal::currentFrame(v13);
        Texture = CFX::GPUResourceManager::getTexture(v14, v15, v16);
        v18 = *(a2 + 24);
        v19 = a1[81];
        v20 = CFX::RG::Temporal::currentFrame(Texture);
        v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
        v22 = *(a2 + 24);
        v23 = a1[82];
        v24 = CFX::RG::Temporal::currentFrame(v21);
        v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
        v26 = *(a2 + 24);
        v27 = a1[89];
        v28 = CFX::RG::Temporal::currentFrame(v25);
        v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
        v30 = *(a2 + 24);
        v31 = a1[90];
        v32 = CFX::RG::Temporal::currentFrame(v29);
        v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
        v34 = *(a2 + 24);
        v35 = a1[91];
        v36 = CFX::RG::Temporal::currentFrame(v33);
        v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
        objc_msgSend_setTexture_atIndex_(v7, v38, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v39, v25, 1);
        objc_msgSend_setTexture_atIndex_(v7, v40, v21, 2);
        objc_msgSend_setTexture_atIndex_(v7, v41, v29, 4);
        if (sub_1AF1D095C(v9, v42))
        {
          if (sub_1AF1D095C(v9, v43) == 1)
          {
            v79 = 2;
            objc_msgSend_setTexture_atIndex_(v7, v44, v29, 4);
          }

          else
          {
            v79 = 1;
            objc_msgSend_setTexture_atIndex_(v7, v44, v29, 4);
            objc_msgSend_setTexture_atIndex_(v7, v54, v33, 10);
            objc_msgSend_setBytes_length_atIndex_(v7, v55, &v79, 4, 0);
            v57 = sub_1AF1403B4(a1[88] + 16, v56);
            v58 = sub_1AFDE323C(v57);
            objc_msgSend_dispatch_onTexture2D_(v7, v59, v58, v33);
            v79 = 2;
            objc_msgSend_setTexture_atIndex_(v7, v60, v33, 4);
          }

          objc_msgSend_setTexture_atIndex_(v7, v45, v37, 10);
          objc_msgSend_setBytes_length_atIndex_(v7, v61, &v79, 4, 0);
          v63 = sub_1AF1403B4(a1[88] + 16, v62);
          v64 = sub_1AFDE323C(v63);
          objc_msgSend_dispatch_onTexture2D_(v7, v65, v64, v33);
          v79 = 4;
          objc_msgSend_setTexture_atIndex_(v7, v66, v37, 4);
          objc_msgSend_setTexture_atIndex_(v7, v67, v33, 10);
          objc_msgSend_setBytes_length_atIndex_(v7, v68, &v79, 4, 0);
          v70 = sub_1AF1403B4(a1[88] + 16, v69);
          v71 = sub_1AFDE323C(v70);
          objc_msgSend_dispatch_onTexture2D_(v7, v72, v71, v33);
          v53 = 8;
        }

        else
        {
          v79 = 2;
          objc_msgSend_setTexture_atIndex_(v7, v43, v29, 4);
          objc_msgSend_setTexture_atIndex_(v7, v46, v33, 10);
          objc_msgSend_setBytes_length_atIndex_(v7, v47, &v79, 4, 0);
          v49 = sub_1AF1403B4(a1[88] + 16, v48);
          v50 = sub_1AFDE323C(v49);
          objc_msgSend_dispatch_onTexture2D_(v7, v51, v50, v33);
          v53 = 6;
        }

        v79 = v53;
        objc_msgSend_setTexture_atIndex_(v7, v52, v33, 4);
        objc_msgSend_setTexture_atIndex_(v7, v73, v37, 10);
        objc_msgSend_setBytes_length_atIndex_(v7, v74, &v79, 4, 0);
        v76 = sub_1AF1403B4(a1[88] + 16, v75);
        v77 = sub_1AFDE323C(v76);
        return objc_msgSend_dispatch_onTexture2D_(v7, v78, v77, v33);
      }
    }
  }

  return result;
}

uint64_t sub_1AF266CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5[20];
  v19[0].n128_u64[0] = "SSRTemporalDenoisePass";
  v19[0].n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A9F8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDF06F4();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, v19, qword_1ED73A9F0, 0);
  *a1 = &unk_1F24EB4B8;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 736) = v10;
  *(a1 + 744) = objc_msgSend_resourceManager(v10, v11, v12);
  v19[0].n128_u32[0] = 0;
  v13 = (*(*a1 + 48))(a1, a4, v19);
  v14 = *(*(a1 + 712) + 16);
  v15 = CFX::RG::Temporal::previousFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 712) + 16));
  sub_1AF2680B0(v19);
  return a1;
}

void sub_1AF266E2C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 656)) + 4);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(a2[4], v5);
  *(a1 + 704) = v6;
  if (!v6)
  {
    operator new();
  }

  v12 = 0uLL;
  v13 = 0;
  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >> 16 <= 1)
  {
    LOWORD(v8) = 1;
  }

  else
  {
    v8 = v4 >> 16;
  }

  CFXTextureDescriptorMake2D(v7, v8, 0x73u, &v12);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v12) ^ v9)))) >> 47));
  v11 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (SDWORD1(v12) >> 16))))) >> 47)));
  *(a1 + 712) = v11;
  if (!v11)
  {
    operator new();
  }
}

__n128 sub_1AF26705C(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[88] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, a1[87], 608, 8);
    v10 = *(a2 + 24);
    v11 = a1[81];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = a1[90];
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v18 = *(a2 + 24);
    v19 = a1[79];
    v20 = CFX::RG::Temporal::currentFrame(v17);
    v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
    v22 = *(a2 + 24);
    v23 = a1[82];
    v24 = CFX::RG::Temporal::currentFrame(v21);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v8, v26, v17, 0);
    objc_msgSend_setTexture_atIndex_(v8, v27, v21, 1);
    objc_msgSend_setTexture_atIndex_(v8, v28, Texture, 2);
    v30 = objc_msgSend_setTexture_atIndex_(v8, v29, v25, 6);
    v31 = *(a2 + 24);
    v32 = *(a1[89] + 16);
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = *(a1[89] + 16);
    v37 = CFX::RG::Temporal::previousFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v8, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v8, v40, v38, 11);
    v42 = sub_1AF1403B4(a1[88] + 16, v41);
    v43 = sub_1AFDE323C(v42);
    objc_msgSend_dispatch_onTexture2D_(v8, v44, v43, v34);
    v45 = a1[87];
    v46 = v45[9];
    v45[12] = v45[8];
    v45[13] = v46;
    v47 = v45[11];
    v45[14] = v45[10];
    v45[15] = v47;
    v48 = a1[87];
    v49 = *(v48 + 336);
    *(v48 + 384) = *(v48 + 320);
    *(v48 + 400) = v49;
    result = *(v48 + 352);
    v50 = *(v48 + 368);
    *(v48 + 416) = result;
    *(v48 + 432) = v50;
  }

  return result;
}

__n128 *sub_1AF267230(__n128 *a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v8 = a5[20];
  v33.n128_u64[0] = "SSRCompositePass";
  v33.n128_u64[1] = v8;
  v34.n128_u16[0] = 0;
  if ((atomic_load_explicit(byte_1ED73AA08, memory_order_acquire) & 1) == 0)
  {
    v31 = a2;
    v32 = a3;
    sub_1AFDF074C();
    a2 = v31;
    a3 = v32;
  }

  sub_1AF250390(a1, a2, a3, &v33, qword_1ED73AA00, 0);
  a1->n128_u64[0] = &unk_1F24EB510;
  memcpy(&a1[28], a5, 0x108uLL);
  a1[44].n128_u64[1] = 0;
  a1[45].n128_u64[1] = 0;
  a1[45].n128_u64[0] = 0;
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v10 = a1[35];
  v39 = a1[34];
  v40 = v10;
  v11 = a1[37];
  v41 = a1[36];
  v42 = v11;
  v12 = a1[31];
  v35 = a1[30];
  v36 = v12;
  v13 = a1[33];
  v37 = a1[32];
  v38 = v13;
  v14 = a1[29];
  v33 = a1[28];
  v34 = v14;
  v15 = sub_1AF233CC8(v9, "SSR Composite Output", &v33);
  a1[45].n128_u64[1] = v15;
  v16 = a5[22];
  v17 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v16, v17);
  v18 = a5[23];
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = a5[27];
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = a5[28];
  v26 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(a1, v24, v26);
  v27 = a5[29];
  v29 = CFX::RG::Temporal::currentFrame(v28);
  CFX::RG::Pass::readFrom(a1, v27, v29);
  CFX::RG::Pass::renderTo(a1, a1[45].n128_i64[1], 0x100000000, 0);
  return a1;
}

void sub_1AF2673D8(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 432), a2);
  v6 = sub_1AF1BB260(*(a1 + 616), v5);
  v9 = sub_1AF15D690(v6, v7);
  v60 = v9;
  v10 = *(a1 + 680);
  v59 = v10 != 0;
  if (v4)
  {
    v11 = sub_1AF1D02FC(v4, v8) > 0.0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 != 0;
  v58 = v11;
  v13 = CFX::RG::Pass::hash(a1);
  v14 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 728)) + 6);
  v15 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v13)));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47))) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47))) ^ v9)));
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v12)));
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v11)))) >> 47));
  v20 = CFX::CrossFrameResourceManager::get(a2[4], v19);
  *(a1 + 712) = v20;
  if (!v20)
  {
    *(a1 + 712) = sub_1AF267650(a2[4], v19);
    v22 = sub_1AF12E2AC(*(a1 + 432), v21);
    v25 = objc_msgSend_resourceManager(v22, v23, v24);
    v26 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v26, v27, a1 + 688, 29, @"SSRDownSample");
    objc_msgSend_setConstantValue_type_withName_(v26, v28, &v60, 53, @"SSRIsHDR");
    objc_msgSend_setConstantValue_type_withName_(v26, v29, &v59, 53, @"SSRHasAO");
    objc_msgSend_setConstantValue_type_withName_(v26, v30, &v58, 53, @"SSREnableFog");
    v31 = sub_1AFDE868C(v25);
    v34 = objc_msgSend_frameworkLibrary(v31, v32, v33);
    v35 = *(a1 + 712);
    memset(v38, 0, sizeof(v38));
    v39 = v34;
    v40 = v14;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    v46 = 1;
    memset(v51, 0, sizeof(v51));
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v52 = v26;
    v53 = 0;
    v54 = @"vfx_draw_fullscreen_triangle_vertex";
    v55 = @"vfx_ssr_composite_frag";
    v56 = 0u;
    v57 = 0u;
    v37 = objc_msgSend_newRenderPipelineStateWithDesc_(v25, v36, v38);
    sub_1AF23355C((v35 + 16), v37);
  }
}

void *sub_1AF267650(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2676D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  v7 = objc_msgSend_renderEncoder(v4, v5, v6);
  v9 = sub_1AF2338B0(*(a1 + 712) + 16, v8);
  v12 = objc_msgSend_state(v9, v10, v11);
  v14 = objc_msgSend_setRenderPipelineState_(*(v7 + 16), v13, v12);
  v15 = *(a2 + 24);
  v16 = *(a1 + 640);
  v17 = CFX::RG::Temporal::currentFrame(v14);
  Texture = CFX::GPUResourceManager::getTexture(v15, v16, v17);
  v18 = *(a2 + 24);
  v19 = *(a1 + 624);
  v20 = CFX::RG::Temporal::currentFrame(Texture);
  v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
  v22 = *(a2 + 24);
  v23 = *(a1 + 664);
  v24 = CFX::RG::Temporal::currentFrame(v21);
  v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
  v26 = *(a2 + 24);
  v27 = *(a1 + 672);
  v28 = CFX::RG::Temporal::currentFrame(v25);
  v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
  v30 = *(a2 + 24);
  v31 = *(a1 + 632);
  v32 = CFX::RG::Temporal::currentFrame(v29);
  v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
  v34 = *(a2 + 24);
  v35 = *(a1 + 720);
  v36 = CFX::RG::Temporal::currentFrame(v33);
  v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
  v40 = objc_msgSend_resourceManager(v4, v38, v39);
  v42 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v40, v41, v4);
  sub_1AF1F8FCC(v7, v21, 0);
  sub_1AF1F8FCC(v7, v25, 1);
  sub_1AF1F8FCC(v7, v29, 2);
  sub_1AF1F8FCC(v7, v33, 3);
  sub_1AF1F8FCC(v7, v42, 4);
  sub_1AF1F8FCC(v7, v37, 5);
  v43 = sub_1AF1F8FCC(v7, Texture, 6);
  v44 = *(a1 + 680);
  if (v44)
  {
    v45 = *(a2 + 24);
    v46 = CFX::RG::Temporal::currentFrame(v43);
    v47 = CFX::GPUResourceManager::getTexture(v45, v44, v46);
    sub_1AF1F8FCC(v7, v47, 7);
  }

  sub_1AF1F905C(v7, *(a1 + 704), 0x260uLL, 8);

  return sub_1AF2016F4(v7, v48);
}

CFX::RG::Pass *sub_1AF2678F0(CFX::RG::RenderGraphContext *a1, uint64_t a2, CFX::RG::Resource *a3)
{
  v6 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v8 = sub_1AF12DDCC(*(a2 + 160), v7);
  v10 = sub_1AF1D09F8(v8, v9);
  v11 = *(a2 + 176);
  v12 = CFX::RG::Resource::constTextureDesc(v11);
  CFX::RG::TextureDescriptorReference::withSampleCount(v67, v12, 1);
  v14 = CFX::RG::copyIfNeeded(v6, v11, a3, v67, "PostProcess color input resolve", v13);
  v15 = *(a2 + 216);
  v16 = CFX::RG::Resource::constTextureDesc(v15);
  CFX::RG::TextureDescriptorReference::withSampleCount(v67, v16, 1);
  v18 = CFX::RG::copyIfNeeded(v6, v15, a3, v67, "PostProcess normal input resolve", v17);
  v19 = *(a2 + 192);
  v20 = CFX::RG::Resource::constTextureDesc(v19);
  CFX::RG::TextureDescriptorReference::withSampleCount(v67, v20, 1);
  v22 = CFX::RG::copyIfNeeded(v6, v19, a3, v67, "PostProcess depth input resolve", v21);
  v23 = *(a2 + 224);
  v24 = CFX::RG::Resource::constTextureDesc(v23);
  CFX::RG::TextureDescriptorReference::withSampleCount(v67, v24, 1);
  v26 = CFX::RG::copyIfNeeded(v6, v23, a3, v67, "PostProcess albedoMetalnessTarget input resolve", v25);
  v27 = *(a2 + 184);
  v28 = CFX::RG::Resource::constTextureDesc(v27);
  CFX::RG::TextureDescriptorReference::withSampleCount(v67, v28, 1);
  *(a2 + 184) = CFX::RG::copyIfNeeded(v6, v27, a3, v67, "PostProcess radianceAOTarget input resolve", v29);
  *(a2 + 192) = v22;
  *(a2 + 216) = v18;
  *(a2 + 224) = v26;
  *(a2 + 176) = v14;
  v30 = CFX::RG::Resource::textureDesc(v14);
  v31 = v30[1];
  *a2 = *v30;
  *(a2 + 16) = v31;
  v32 = v30[5];
  v34 = v30[2];
  v33 = v30[3];
  *(a2 + 64) = v30[4];
  *(a2 + 80) = v32;
  *(a2 + 32) = v34;
  *(a2 + 48) = v33;
  v35 = v30[9];
  v37 = v30[6];
  v36 = v30[7];
  *(a2 + 128) = v30[8];
  *(a2 + 144) = v35;
  *(a2 + 96) = v37;
  *(a2 + 112) = v36;
  if (sub_1AF130864(*(a2 + 160)) <= 1.0)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  *(a2 + 240) = v38;
  if (v10 == 2)
  {
    v39 = *(a2 + 160);
    v67[0] = "SSR backface depth";
    v67[1] = v39;
    v68 = 0;
    v40 = CFX::RG::Resource::textureDesc(v22);
    v41 = v40[1];
    v69 = *v40;
    v70 = v41;
    v42 = v40[4];
    v43 = v40[5];
    v44 = v40[3];
    v71 = v40[2];
    v74 = v43;
    v73 = v42;
    v72 = v44;
    v45 = v40[8];
    v46 = v40[9];
    v47 = v40[7];
    v75 = v40[6];
    v78 = v46;
    v77 = v45;
    v76 = v47;
    v48 = sub_1AF267CA4(v6, a1, v67);
    v49 = sub_1AF267CFC(v6, a1, a2);
    v50 = *(v48 + 78);
    *(v49 + 712) = v50;
    v51 = CFX::RG::Temporal::currentFrame(v49);
    CFX::RG::Pass::readFrom(v49, v50, v51);
    CFX::RG::Pass::dependsOn(v49, v48);
  }

  else
  {
    v49 = sub_1AF267CFC(v6, a1, a2);
  }

  *(a2 + 200) = *(v49 + 720);
  v52 = sub_1AF267D54(v6, a1, a2);
  CFX::RG::Pass::dependsOn(v52, v49);
  v53 = sub_1AF267DAC(v6, a1, a2);
  CFX::RG::Pass::dependsOn(v53, v52);
  *(v53 + 89) = *(*(v52 + 89) + 40);
  v54 = sub_1AF267E04(v6, a1, a2);
  v55 = CFX::RG::Pass::dependsOn(v54, v53);
  v56 = *(v53 + 90);
  *(v54 + 89) = v56;
  v57 = CFX::RG::Temporal::currentFrame(v55);
  CFX::RG::Pass::readFrom(v54, v56, v57);
  v58 = sub_1AF267E5C(v6, a1, a2);
  v59 = CFX::RG::Pass::dependsOn(v58, v54);
  v60 = *(v54 + 91);
  *(v58 + 90) = v60;
  v61 = CFX::RG::Temporal::currentFrame(v59);
  CFX::RG::Pass::readFrom(v58, v60, v61);
  v62 = sub_1AF267EB4(v6, a1, a2);
  v63 = CFX::RG::Pass::dependsOn(v62, v58);
  v64 = *(*(v58 + 89) + 16);
  *(v62 + 90) = v64;
  v65 = CFX::RG::Temporal::currentFrame(v63);
  CFX::RG::Pass::readFrom(v62, v64, v65);
  *(a2 + 248) = *(v62 + 91);
  if (a3)
  {
    CFX::RG::Pass::dependsOn(v62, a3);
  }

  return v62;
}

uint64_t sub_1AF267CA4(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268620(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267CFC(uint64_t *a1, CFX::RG::RenderGraphContext *a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268680(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267D54(uint64_t *a1, CFX::CrossFrameResourceManager **a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2686E0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267DAC(uint64_t *a1, uint64_t **a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268740(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267E04(uint64_t *a1, uint64_t **a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2687A0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267E5C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268800(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF267EB4(uint64_t *a1, CFX::RG::RenderGraphContext *a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268860(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF267F10(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF267F4C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF267F88(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF267FC4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF268000(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF26803C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF268078(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

id *sub_1AF2680B0(id *a1)
{
  v2 = *a1;
  if (*a1 <= 2)
  {
    if (v2 == 1)
    {
      CFX::RG::RendererPassArguments::~RendererPassArguments(a1 + 1);
    }

    else if (v2 == 2)
    {
      CFX::RG::RendererPassArguments::~RendererPassArguments(a1 + 1);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        CFX::RG::BlitPassArguments::~BlitPassArguments(a1 + 1);
        break;
      case 4:
        CFX::RG::RenderPassArguments::~RenderPassArguments(a1 + 1);
        break;
      case 5:
        CFX::RG::ComputePassArguments::~ComputePassArguments(a1 + 1);
        break;
    }
  }

  return a1;
}

uint64_t sub_1AF268140(uint64_t a1)
{
  *a1 = &unk_1F24EB568;

  return a1;
}

void sub_1AF268188(uint64_t a1)
{
  *a1 = &unk_1F24EB568;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2681F0(uint64_t a1)
{
  *a1 = &unk_1F24EB588;

  return a1;
}

void sub_1AF268240(uint64_t a1)
{
  *a1 = &unk_1F24EB588;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2682B0(uint64_t a1)
{
  *a1 = &unk_1F24EB5A8;

  return a1;
}

void sub_1AF2682F8(uint64_t a1)
{
  *a1 = &unk_1F24EB5A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268360(uint64_t a1)
{
  *a1 = &unk_1F24EB5C8;

  return a1;
}

void sub_1AF2683A8(uint64_t a1)
{
  *a1 = &unk_1F24EB5C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268410(uint64_t a1)
{
  *a1 = &unk_1F24EB5E8;

  return a1;
}

void sub_1AF268458(uint64_t a1)
{
  *a1 = &unk_1F24EB5E8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2684C0(uint64_t a1)
{
  *a1 = &unk_1F24EB608;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF268508(uint64_t a1)
{
  *a1 = &unk_1F24EB608;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268570(uint64_t a1)
{
  *a1 = &unk_1F24EB628;

  return a1;
}

void sub_1AF2685B8(uint64_t a1)
{
  *a1 = &unk_1F24EB628;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF268620(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x278u, 8u, 2);
  return sub_1AF2649F8(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF268680(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 8u, 2);
  return sub_1AF264D80(v8, *a3, a3[1], a4, a5);
}

void *sub_1AF2686E0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2D0u, 8u, 2);
  return sub_1AF265544(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF268740(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E8u, 8u, 2);
  return sub_1AF265F60(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2687A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2F0u, 8u, 2);
  return sub_1AF2664AC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF268800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2F0u, 8u, 2);
  return sub_1AF266CD0(v8, *a3, a3[1], a4, a5);
}

__n128 *sub_1AF268860(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 8u, 2);
  return sub_1AF267230(v8, *a3, a3[1], a4, a5);
}

__n128 sub_1AF2688C0(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73AA18, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDF07A4();
    a2 = v9;
    a3 = v10;
  }

  CFX::RG::Pass::Pass(this, a2, a3, "VFXCorePreparePass", 1, qword_1ED73AA10, 0);
  *this = &unk_1F24EB648;
  result = *a5;
  v8 = *(a5 + 16);
  *(this + 424) = *a5;
  *(this + 440) = v8;
  return result;
}

uint64_t sub_1AF268954(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v4 = result;
    v5 = *(result + 424);
    v6 = sub_1AF12E2A0(v5);
    v7 = v6;
    if (*(v4 + 448) == 1 && (v6 & 1) == 0)
    {
      sub_1AF131094(v5, 1);
    }

    v8 = *(v4 + 440);
    if (v8)
    {
      v9 = sub_1AF23B41C(v8);
      sub_1AF131034(v5, v9);
    }

    sub_1AF14E718(v5, *(v4 + 432));
    if (!(v7 & 1 | ((*(v4 + 448) & 1) == 0)))
    {
      sub_1AF131094(v5, 0);
    }

    v10 = *(v4 + 424);

    return sub_1AF131034(v10, 0);
  }

  return result;
}

CFX::RG::Pass *sub_1AF268A08(CFX::RG::RenderGraphBuilder *a1, uint64_t *a2, CFX::RG::Pass *a3)
{
  v6 = sub_1AF12DDCC(*a2, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2[1] == -1)
  {
    if ((atomic_load_explicit(byte_1ED73AA18, memory_order_acquire) & 1) == 0)
    {
      sub_1AFDF07A4();
    }

    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA10 ^ v7)))) >> 47));
    Pass = CFX::RG::RenderGraphBuilder::findPass(a1, v9);
    if (!Pass)
    {
      Pass = sub_1AF268BA8(a1, a1, a2);
      CFX::RG::RenderGraphBuilder::registerPass(a1, v9, Pass);
    }
  }

  else
  {
    Pass = sub_1AF268BA8(a1, a1, a2);
  }

  CFX::RG::Pass::dependsOn(a3, Pass);
  if ((atomic_load_explicit(byte_1ED73AA28, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0800();
  }

  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73AA20 ^ v7)))) >> 47));
  v11 = CFX::RG::RenderGraphBuilder::findPass(a1, v10);
  if (!v11)
  {
    v13 = *a2;
    v11 = sub_1AF268C00(a1, a1, &v13);
    CFX::RG::RenderGraphBuilder::registerPass(a1, v10, v11);
  }

  CFX::RG::Pass::dependsOn(Pass, v11);
  return Pass;
}

uint64_t sub_1AF268BA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF268C94(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

uint64_t sub_1AF268C00(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF268CE4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF268C5C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF268C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1C8u, 8u, 2);
  *&result = sub_1AF2688C0(v7, *a3, a3[1], v8, a5).n128_u64[0];
  return result;
}

uint64_t sub_1AF268CE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1B0u, 8u, 2);
  return sub_1AF268DEC(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF268D44(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((atomic_load_explicit(byte_1ED73AA38, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDF085C();
    a2 = v9;
    a3 = v10;
  }

  if (byte_1ED73AA30)
  {
    v7 = 0x732400D26C5131A9;
  }

  else
  {
    v7 = 0;
  }

  result = CFX::RG::Pass::Pass(this, a2, a3, "VFXCoreRecycleDrawCallsPass", 1, v7, 0);
  *this = &unk_1F24EB680;
  *(this + 53) = *a5;
  return result;
}

void sub_1AF268DF0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = sub_1AF12DDCC(*(a1 + 424), a2);
    if (v3)
    {
      v5 = sub_1AF1CF8AC(v3, v4);
      if (v5)
      {
        v6 = sub_1AF0FB884(v5);

        MEMORY[0x1EEE66B58](v6, sel_recycleDrawCalls, v7);
      }
    }

    else
    {
      v8 = sub_1AF0D5194(0, v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: CFXVFXPrepareDrawCalls -> no world yet", v9, 2u);
      }
    }
  }
}

void sub_1AF268E94(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF268ECC(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "Authoring");
  *result = &unk_1F24EB6B8;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF268F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF268F94@<X0>(uint64_t a1@<X8>)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, 6893, 9273, 1656467160);
  v4[1] = CFX::RG::ResourceIdentifier::finalColor(v2);
  return sub_1AF2696E4(a1, v4, 2);
}

unint64_t sub_1AF269018(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1AF26960C(v4, *(a1 + 24));
  v2 = vorrq_s8(vorrq_s8(vshlq_u64(v4[0], xmmword_1AFE431C0), vshlq_u64(v4[2], xmmword_1AFE431B0)), vorrq_s8(vshlq_u64(v4[1], xmmword_1AFE431E0), vshlq_u64(v4[3], xmmword_1AFE431D0)));
  *v2.i8 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ ((0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)))) ^ ((0x9DDFEA08EB382D69 * (v1 ^ ((0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2.i64[0] ^ v1)))) >> 47));
}

void sub_1AF2690CC(uint64_t a1, uint64_t **a2, uint64_t *a3, CFX::RG::SubgraphBuildArguments *a4)
{
  if (sub_1AF1309BC(*(a1 + 24)) && !sub_1AF1309E8(*(a1 + 24)))
  {
    return;
  }

  v8 = sub_1AF12E2A0(*(a1 + 24));
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v87, 9273, 9273, 1656467160);
  CFX::RG::ResourceReference::ResourceReference(&v75, v87[0]);
  v9 = sub_1AF24736C(a3, "Authoring input color", &v75);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v75, 9273, 9273, -797957750);
  PublishedResource = CFX::RG::RenderGraphBuilder::findPublishedResource(a3, v75.n128_i64[0]);
  v12 = (PublishedResource | v11) == 0;
  if (PublishedResource | v11)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(v87, 9273, 9273, -797957750);
    CFX::RG::ResourceReference::ResourceReference(&v75, v87[0]);
    v14 = sub_1AF24736C(a3, "Authoring input depth", &v75);
  }

  else
  {
    v13 = CFX::RG::Resource::constTextureDesc(v9);
    CFX::RG::TextureDescriptorReference::withSampleCount(v87, v13, 1);
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v75, v87, 252);
    v14 = sub_1AF233CC8(a3, "Authoring input depth", &v75);
  }

  v15 = v14;
  v16 = CFX::RG::Resource::constTextureDesc(v9);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v75, v16, 1);
  v18 = CFX::RG::copyIfNeeded_r(a3, v9, 0, &v75, "Authoring color input resolve", v17);
  v20 = v19;
  v21 = sub_1AF12E2AC(*(a1 + 24), v19);
  if ((v8 & 1) != 0 || !objc_msgSend_showsAuthoringEnvironment(v21, v22, v23))
  {
    goto LABEL_14;
  }

  if ((atomic_load_explicit(byte_1ED73AA48, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF08A8();
  }

  v24 = byte_1ED73AA40 ? 0xA5BDF038E97191F5 : 0;
  if (CFX::RG::SubgraphBuildArguments::isDisabled(a4, v24))
  {
LABEL_14:
    v73 = 0;
    v74 = v15;
    v72 = 0;
  }

  else
  {
    if (v12)
    {
      v47 = 0;
    }

    else
    {
      v53 = CFX::RG::Resource::constTextureDesc(v15);
      CFX::RG::TextureDescriptorReference::withSampleCount(&v75, v53, 1);
      v15 = CFX::RG::copyIfNeeded_r(a3, v15, 0, &v75, "Authoring depth input resolve", v54);
    }

    v87[0] = v18;
    v87[1] = v20;
    v87[2] = v15;
    v87[3] = v47;
    v88 = v12;
    v55 = *(a1 + 24);
    v75.n128_u64[0] = "Authoring";
    v75.n128_u64[1] = v55;
    v76 = 0;
    v56 = sub_1AF2342BC(a2, a3, &v75, v87);
    v18 = *(v56 + 60);
    v57 = sub_1AF12EE9C(*(a1 + 24), 0);
    if ((sub_1AF12EE68(*(a1 + 24)) & 0x80000) != 0 && sub_1AF103018(v57))
    {
      v58 = *(a1 + 24);
      v75.n128_u64[0] = "Manipulator";
      v75.n128_u64[1] = v58;
      v76 = 0;
      v59 = CFX::RG::Resource::constTextureDesc(v15);
      v60 = v59[1];
      v77 = *v59;
      v78 = v60;
      v61 = v59[4];
      v62 = v59[5];
      v63 = v59[3];
      v79 = v59[2];
      v82 = v62;
      v81 = v61;
      v80 = v63;
      v64 = v59[8];
      v65 = v59[9];
      v66 = v59[7];
      v83 = v59[6];
      v86 = v65;
      v85 = v64;
      v84 = v66;
      v20 = sub_1AF2440A4(a3, &v75, v18);
      CFX::RG::Pass::dependsOn(v20, v56);
      v15 = *(v20 + 58);
    }

    else
    {
      v20 = v56;
    }

    v72 = v56;
    v73 = v20;
    v74 = v15;
  }

  v25 = sub_1AF12F434(*(a1 + 24), v22);
  v28 = v25;
  if (v25)
  {
    v29 = objc_msgSend_showsStatistics(v25, v26, v27);
    v32 = v8;
    v33 = v18;
    v34 = a4;
    v35 = objc_msgSend_showsDebugUI(v28, v30, v31);
    v36 = sub_1AF1309E8(*(a1 + 24)) ^ 1;
    v37 = v29 | v35;
    a4 = v34;
    v18 = v33;
    if (v32)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v37 = 0;
    v36 = 1;
    if (v8)
    {
      goto LABEL_36;
    }
  }

  if ((atomic_load_explicit(byte_1ED73AA58, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF08E0();
  }

  if ((v37 & ~(CFX::RG::SubgraphBuildArguments::isDisabled(a4, qword_1ED73AA50) | v36) & 1) == 0 || ((CFX::RG::TextureDescriptorReference::finalColor(&v75), v41 = CFX::RG::copyIfNeeded_r(a3, v18, v20, &v75, "Overlay color input copy", v38), v42 = v39, v43 = *(a1 + 24), v75.n128_u64[0] = "Overlay", v75.n128_u64[1] = v43, v76 = 0, !v28) ? (v46 = 0, LOBYTE(v77) = 0) : (LOBYTE(v77) = objc_msgSend_showsStatistics(v28, v39, v40), v46 = objc_msgSend_showsDebugUI(v28, v44, v45)), (BYTE1(v77) = v46, v73 == v42) ? (v48 = v73 == 0) : (v48 = 1), v48 ? (v49 = 0) : (v49 = v74), (v50 = sub_1AF2470B4(a3, &v75, v41, v49)) == 0))
  {
LABEL_36:
    if (!v20)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v75, 9273, 9273, 1656467160);
      CFX::RG::ResourceIdentifier::ResourceIdentifier(v87, *(a1 + 8), 64484, 1656467160);
      CFX::RG::RenderGraphBuilder::aliasResourceReference(a3, v75.n128_i64[0], v87[0]);
      return;
    }

    goto LABEL_46;
  }

  v51 = v50;
  if (v42)
  {
    v52 = v42;
  }

  else
  {
    v52 = v72;
  }

  CFX::RG::Pass::dependsOn(v50, v52);
  v20 = v51;
  v18 = v41;
LABEL_46:
  v67 = *(v20 + 3);
  v68 = *v67;
  if (*v67)
  {
    v69 = v67 + 1;
    v70 = -25147;
    do
    {
      v70 = 403 * (v70 ^ v68);
      v71 = *v69++;
      v68 = v71;
    }

    while (v71);
  }

  else
  {
    v70 = -25147;
  }

  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v75, *(a1 + 8), v70, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v75.n128_u64[0], v18, v20);
}

void *sub_1AF26960C(void *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a2, a2);
  v6 = sub_1AF12F434(a2, v5);
  *a1 = sub_1AF1309BC(a2);
  a1[1] = sub_1AF1309E8(a2);
  a1[2] = objc_msgSend_showsAuthoringEnvironment(v4, v7, v8);
  a1[3] = objc_msgSend_showsStatistics(v6, v9, v10);
  a1[4] = objc_msgSend_showsDebugUI(v6, v11, v12);
  v13 = sub_1AF12EE9C(a2, 0);
  a1[5] = sub_1AF103018(v13);
  a1[6] = sub_1AF232D3C(a2, v13);
  a1[7] = (sub_1AF12EE68(a2) >> 19) & 1;
  return a1;
}

uint64_t sub_1AF2696E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a1 + 16;
  sub_1AF158DE0(a1, a3, 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      v7 = *a2++;
      v9 = v7;
      sub_1AF269758(a1, &v9);
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void sub_1AF269758(uint64_t a1, void *a2)
{
  v4 = *a1;
  if ((*a1 + 1) > *(a1 + 4))
  {
    sub_1AF158DE0(a1, 1, 0);
    v4 = *a1;
  }

  *(*(a1 + 8) + 8 * v4) = *a2;
  ++*a1;
}

uint64_t sub_1AF2697B8(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PostRender");
  *result = &unk_1F24EB710;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_1AF269808(uint64_t a1)
{
  sub_1AF1307A8(*(a1 + 32), 0);
  sub_1AF1307B0(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  return sub_1AF1307D8(v2, 1);
}

uint64_t sub_1AF269858@<X0>(uint64_t a1@<X8>)
{
  v3[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v3, 27275, 51583, -277915706);
  return sub_1AF2696E4(a1, v3, 1);
}

void sub_1AF2698E8(uint64_t a1, uint64_t a2, CFX::RG::RenderGraphBuilder *a3)
{
  v5 = sub_1AF12E2AC(*(a1 + 32), a2);
  sub_1AF24FBDC(v24, v5, v6);
  if (sub_1AF1309BC(*(a1 + 32)) && (sub_1AF1309E8(*(a1 + 32)) & 1) == 0)
  {
    v19 = sub_1AF24F844(a3, v24, *(a1 + 32));
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v21, 27275, 51583, -277915706);
    v15 = v21;
    v16 = a3;
    v17 = v19;
    v18 = 0;
  }

  else
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v20, *(a1 + 24), 9273, 1656467160);
    CFX::RG::ResourceReference::ResourceReference(&v21, v20);
    v7 = sub_1AF24736C(a3, "COLOR", &v21);
    v8 = CFX::RG::Resource::constTextureDesc(v7);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v21, v8, 1);
    v10 = CFX::RG::copyIfNeeded_r(a3, v7, 0, &v21, "Copy to final resolve", v9);
    v12 = v11;
    v13 = sub_1AF24F844(a3, v24, *(a1 + 32));
    *&v21 = v10;
    DWORD2(v21) = 0;
    v22 = v13;
    v23 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a3, "CopyToFinal", &v21);
    CFX::RG::Pass::dependsOn(CopyPass, v12);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v21, 27275, 51583, -277915706);
    v15 = v21;
    v16 = a3;
    v17 = v13;
    v18 = CopyPass;
  }

  CFX::RG::RenderGraphBuilder::publishResourceReference(v16, v15, v17, v18);
}

uint64_t sub_1AF269A78(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PostRender");
  *result = &unk_1F24EB768;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_1AF269AC8(uint64_t a1)
{
  sub_1AF1307A8(*(a1 + 32), 1);
  sub_1AF1307B0(*(a1 + 32), 1);
  v2 = *(a1 + 32);

  return sub_1AF1307D8(v2, 2);
}

uint64_t sub_1AF269B18@<X0>(uint64_t a1@<X8>)
{
  v3[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v3, 27275, 41610, -277915706);
  return sub_1AF2696E4(a1, v3, 1);
}

unint64_t sub_1AF269BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = sub_1AF12F7DC(*(a1 + 32), a2);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v3 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ v2)))) ^ ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v3 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ v2)))) >> 47));
}

void sub_1AF269BF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v27, *(a1 + 24), 9273, 1656467160);
  CFX::RG::ResourceReference::ResourceReference(&v29, v27[0]);
  v5 = sub_1AF24736C(a3, "COLOR", &v29);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v27, *(a1 + 24), 9273, -797957750);
  CFX::RG::ResourceReference::ResourceReference(&v29, v27[0]);
  v6 = sub_1AF24736C(a3, "DEPTH", &v29);
  v8 = sub_1AF12E2AC(*(a1 + 32), v7);
  sub_1AF24FBDC(v28, v8, v9);
  if (sub_1AF12F7DC(*(a1 + 32), v10))
  {
    v11 = CFX::RG::Resource::constTextureDesc(v5);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v29, v11, 1);
    v12 = sub_1AF233CC8(a3, "resolved color", &v29);
    *&v29 = v5;
    DWORD2(v29) = 0;
    v30 = v12;
    v31 = 0x200000000;
    CFX::RG::makeCopyPass(a3, "ResolveColor", &v29);
    CFX::RG::TextureDescriptorReference::finalColor(v27);
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v29, v27, 115);
    v13 = sub_1AF233CC8(a3, "almost final target", &v29);
    v14 = *(a1 + 32);
    *&v29 = v12;
    *(&v29 + 1) = v13;
    sub_1AF23B018(a3, v14, "debug copy stereo to drawable", &v29);
    v15 = sub_1AF24F844(a3, v28, *(a1 + 32));
    *&v29 = v13;
    DWORD2(v29) = 0;
    v30 = v15;
    v31 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a3, "Copy to drawable", &v29);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v29, 27275, 41610, -277915706);
    v17 = v29;
    v18 = a3;
    v19 = v15;
    v20 = CopyPass;
  }

  else
  {
    v21 = v28[32];
    v22 = sub_1AF24F844(a3, v28, *(a1 + 32));
    *&v29 = v5;
    DWORD2(v29) = 0;
    v30 = v22;
    LODWORD(v31) = 0;
    HIDWORD(v31) = v21;
    v23 = CFX::RG::makeCopyPass(a3, "ResolveColor", &v29);
    v24 = CFX::RG::Resource::constTextureDesc(v6);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v29, v24, 1);
    v25 = sub_1AF233CC8(a3, "ResolvedDepth", &v29);
    *&v29 = v6;
    DWORD2(v29) = 0;
    v30 = v25;
    LODWORD(v31) = 0;
    HIDWORD(v31) = v21;
    v26 = CFX::RG::makeCopyPass(a3, "ResolveDepth", &v29);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v29, 27275, 41610, -277915706);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v29, v22, v23);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v29, 27275, 41610, 473305552);
    v17 = v29;
    v18 = a3;
    v19 = v25;
    v20 = v26;
  }

  CFX::RG::RenderGraphBuilder::publishResourceReference(v18, v17, v19, v20);
}

CFX::RG::Subgraph *sub_1AF269F08(CFX::RG::Subgraph *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = CFX::RG::Subgraph::Subgraph(a1, "CustomAuthoring");
  *v8 = &unk_1F24EB7C0;
  *(v8 + 24) = a2;
  *(v8 + 32) = 0;
  v9 = v8 + 32;
  *(v8 + 36) = 0;
  *(v8 + 48) = a3;
  *(v8 + 40) = v8 + 48;
  *(v8 + 56) = a4;
  *(v8 + 64) = 0;
  CFRetain(a3);
  v11 = *(a1 + 7);
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = sub_1AF3D4238(a3, v10);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v22, v26, 16);
  if (v16)
  {
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = objc_msgSend_UTF8String(*(*(&v22 + 1) + 8 * v18), v14, v15);
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v21, v19);
        sub_1AF269758(v9, &v21);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v22, v26, 16);
    }

    while (v16);
  }

  return a1;
}

void sub_1AF26A080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 36))
  {
    free(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF26A0B4(uint64_t a1)
{
  *a1 = &unk_1F24EB7C0;
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 36))
  {
    free(*(a1 + 40));
  }

  return a1;
}

void sub_1AF26A120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 36))
  {
    free(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF26A140(uint64_t a1)
{
  sub_1AF26A0B4(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF26A178(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = a2 + 16;
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_1AF158DE0(a2, v3, 1);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = 8 * v5;
      do
      {
        sub_1AF269758(a2, v6++);
        v7 -= 8;
      }

      while (v7);
    }
  }
}

void sub_1AF26A1E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 4))
  {
    free(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF26A208@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF12F434(*(a1 + 24), a2);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 24);
  v13 = objc_msgSend_commandQueue(v6, v11, v12);
  sub_1AF3D3154(a2, a3, v8, v9, v10, v13, v7);

  *(a1 + 64) = v7;
}

double sub_1AF26A348(CFX::RG::Subgraph *a1, uint64_t a2)
{
  v3 = CFX::RG::Subgraph::Subgraph(a1, "Main");
  *v3 = &unk_1F24EB818;
  *(v3 + 24) = a2;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0x1000001010000;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = -1;
  *(v3 + 104) = -1;
  *(v3 + 112) = 0;
  return result;
}

uint64_t sub_1AF26A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, *(a1 + 8), 9273, 1656467160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, *(a1 + 8), 9273, -797957750);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, *(a1 + 8), 9273, 1348742528);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v8, *(a1 + 8), 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v9, *(a1 + 8), 9273, -31245996);
  return sub_1AF2696E4(a2, &v5, 5);
}

uint64_t sub_1AF26A4A4@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

unint64_t sub_1AF26A510(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = 0x9DDFEA08EB382D69 * (*(a1 + 48) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 80))))) >> 47));
  v8 = sub_1AF12DDCC(*(a1 + 24), a2);
  v10 = v8;
  if (v8)
  {
    if (sub_1AF1D053C(v8, v9))
    {
      v12 = sub_1AF1D053C(v10, v11);
      v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v12)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v12)))) >> 47));
      v15 = sub_1AF1D07FC(v10, v14);
      v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v15)))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v15)))) >> 47));
      v18 = sub_1AF1D0738(v10, v17);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v18)))) >> 47));
    }

    if (sub_1AF1D0898(v10, v11))
    {
      v20 = sub_1AF1D0898(v10, v19);
      v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v20)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v20)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v20)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v20)))) >> 47));
      v23 = sub_1AF1D095C(v10, v22);
      v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v23)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v23)))) >> 47));
      v26 = sub_1AF1D02FC(v10, v25);
      v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v26 > 0.0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ (v26 > 0.0))))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v26 > 0.0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ (v26 > 0.0))))) >> 47));
      v29 = sub_1AF1D09F8(v10, v28);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v29)))) ^ ((0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v29)))) >> 47));
    }
  }

  v30 = sub_1AF24B4B0(*(a1 + 24), a2);
  v32 = *(a1 + 32);
  if (v30)
  {
    *(a1 + 32) = ++v32;
  }

  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v32 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v32 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v32 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v32 ^ v7)))) >> 47));
  v34 = sub_1AF1CF8AC(v10, v31);
  if (v34)
  {
    v35 = sub_1AF0FB884(v34);
    v38 = objc_msgSend_anyDrawNeedsLinearDepth(v35, v36, v37);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v38)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v38)))) ^ ((0x9DDFEA08EB382D69 * (v33 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v38)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v38)))) >> 47));
  }

  return v33;
}

CFX::RG::Pass *sub_1AF26A74C(CFX::RG::RenderGraphBuilder *a1, uint64_t **a2, uint64_t a3, uint64_t a4, float32x2_t *a5, uint64_t a6, __int128 *a7, _OWORD *a8)
{
  v151 = *MEMORY[0x1E69E9840];
  sub_1AF130BD8(a3, 0);
  v17 = sub_1AF12E2AC(a3, v15);
  v18 = *(a4 + 32);
  if (!v18)
  {
    v18 = sub_1AF12F10C(a3, v16);
    if (!v18)
    {
      return 0;
    }
  }

  if (!sub_1AF1BB260(v18, v16))
  {
    return 0;
  }

  v121 = v18;
  v119 = a7;
  if (*(a4 + 2) & 1) != 0 || (*(a4 + 3))
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a4 + 4);
  }

  v122 = v19;
  *v123 = sub_1AF12FAE0(a3);
  v22 = sub_1AF12E2AC(a3, v21);
  sub_1AF24FBDC(v134, v22, v23);
  if (a8)
  {
    v24 = a8[7];
    v133[6] = a8[6];
    v133[7] = v24;
    v25 = a8[9];
    v133[8] = a8[8];
    v133[9] = v25;
    v26 = a8[3];
    v133[2] = a8[2];
    v133[3] = v26;
    v27 = a8[5];
    v133[4] = a8[4];
    v133[5] = v27;
    v28 = a8[1];
    v133[0] = *a8;
    v133[1] = v28;
  }

  else
  {
    if (*v123 <= 1u)
    {
      v29 = 2;
    }

    else
    {
      v29 = 3;
    }

    CFX::RG::TextureDescriptorReference::finalColor(&v128[1]);
    v32 = objc_msgSend_sampleCount(v17, v30, v31);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v131, &v128[1], v32);
    CFX::RG::TextureDescriptorReference::withTextureType(&v135, &v131, v29);
    CFX::RG::TextureDescriptorReference::withArraylength(&v140, &v135, v123[0]);
    v33 = sub_1AF130888(a3);
    CFX::RG::TextureDescriptorReference::withSizeFactor(v133, &v140, v33);
  }

  CFX::RG::TextureDescriptorReference::withPixelFormatIf(&v140, v133, 115, a5->u8[0]);
  *a6 = sub_1AF233CC8(a1, "COLOR", &v140);
  v128[0] = 0;
  if (sub_1AF130E10(a3, v128))
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, v133, v128[0]);
    *(a6 + 8) = sub_1AF233CC8(a1, "COLOR1", &v140);
  }

  v34 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *a6) + 4);
  v35 = vld1q_dup_f64(v34);
  a5[1] = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(v35, xmmword_1AFE42F50), 0x30uLL)));
  v38 = objc_msgSend_depthPixelFormat(v17, v36, v37);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, v133, v38);
  *(a6 + 16) = sub_1AF233CC8(a1, "DEPTH", &v140);
  v41 = objc_msgSend_stencilPixelFormat(v17, v39, v40);
  if (VFXMTLTexturePixelFormatIsStencil(v41))
  {
    v44 = objc_msgSend_stencilPixelFormat(v17, v42, v43);
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, v133, v44);
    *(a6 + 24) = sub_1AF233CC8(a1, "STENCIL", &v140);
  }

  sub_1AF130538(a3, a5->i8[5]);
  if (a5->i8[5] == 1)
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, v133, 115);
    *(a6 + 40) = sub_1AF233CC8(a1, "VELOCITY", &v140);
  }

  if (a5->i8[2] == 1)
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, v133, 115);
    *(a6 + 48) = sub_1AF233CC8(a1, "ALBEDO METALNESS", &v140);
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, v133, 115);
    *(a6 + 56) = sub_1AF233CC8(a1, "RADIANCE AO", &v140);
  }

  if ((*(a4 + 4) & 1) != 0 || a5->i8[2] == 1)
  {
    CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, v133, 115);
    *(a6 + 32) = sub_1AF233CC8(a1, "NORMAL ROUGHNESS", &v140);
  }

  if (*a4)
  {
    v46 = 40;
  }

  else
  {
    v46 = 32;
  }

  v47 = sub_1AF12F6E8(a3, v45);
  v48.i32[0] = 0;
  v49 = v46 | 0x100;
  if (!v47)
  {
    v49 = v46;
  }

  v120 = v49;
  v50 = *(a4 + 16);
  v51 = vmvnq_s8(vceqzq_f32(v50));
  v51.i32[0] = vmaxvq_u32(v51);
  v52 = vdupq_lane_s32(*&vcgtq_s32(v48, v51), 0);
  *v51.f32 = a5[1];
  v53.i64[0] = 0;
  v53.i64[1] = v51.i64[0];
  v51.i64[1] = v51.i64[0];
  v140.n128_u64[0] = a3;
  v140.n128_u8[8] = 1;
  v143 = 0;
  v141 = v121;
  v142 = 0;
  v117 = vbslq_s8(v52, vmulq_f32(v50, v51), v53);
  *v145 = v117;
  v145[16] = 1;
  *&v146[8] = *(a4 + 56);
  v146[24] = sub_1AF12FAD0(a3);
  v146[25] = sub_1AF130848(a3);
  *&v147 = v120;
  DWORD2(v147) = 1;
  WORD6(v147) = LOBYTE(v123[0]);
  v54 = sub_1AF23BCB4(a1, &v140, "MainCulling");
  v55 = *(a4 + 48);
  v56 = sub_1AF23B940(v54);
  v140.n128_u64[0] = a3;
  v140.n128_u64[1] = v55;
  v141 = v56;
  LOBYTE(v142) = 0;
  v118 = sub_1AF268A08(a1, &v140, v54);
  sub_1AF250334(a3, &v131);
  v58 = sub_1AF12DDCC(a3, v57);
  v60 = sub_1AF1CF8AC(v58, v59);
  if (v60)
  {
    v62 = sub_1AF0FB884(v60);
    v65 = objc_msgSend_anyDrawNeedsLinearDepth(v62, v63, v64);
  }

  else
  {
    v65 = 0;
  }

  if ((v122 & 1) == 0)
  {
    v68 = 0;
    if (((*(a4 + 5) | v65) & 1) == 0)
    {
      v124 = 0;
      goto LABEL_47;
    }

    v69 = 0;
    goto LABEL_44;
  }

  v66 = sub_1AF1D053C(v58, v61);
  if ((*(a4 + 5) | v65 | v66))
  {
    if (v66)
    {
      v67 = CFX::RG::Resource::constTextureDesc(*(a6 + 16));
      CFX::RG::TextureDescriptorReference::withSampleCount(&v135, v67, 1);
      CFX::RG::TextureDescriptorReference::withPixelFormat(&v140, &v135, 115);
      v68 = sub_1AF233CC8(a1, "NORMAL PREPASS", &v140);
      v69 = 1;
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

LABEL_44:
    v71 = sub_1AF23B940(v54);
    v72 = CFX::RG::Resource::constTextureDesc(*(a6 + 16));
    v73 = sub_1AF24E800(a1, &v131, v71, v72, v68, 1);
    v124 = v74;
    v70 = v73;
    CFX::RG::Pass::dependsOn(v73, v54);
    *(a6 + 80) = *(v124 + 79);
    if (v69)
    {
      goto LABEL_45;
    }

    v68 = 0;
    goto LABEL_47;
  }

  v70 = 0;
  v68 = 0;
  v124 = 0;
  if (v66)
  {
LABEL_45:
    v140.n128_u64[0] = a3;
    v140.n128_u64[1] = v121;
    v141 = sub_1AF23B940(v54);
    v142 = *(v124 + 79);
    v143 = v68;
    v144 = 0;
    *v145 = 1036831949;
    *&v145[4] = 0;
    *&v145[8] = 0;
    v68 = sub_1AF264540(a1, a2, &v140);
    CFX::RG::Pass::dependsOn(v68, v70);
    CFX::RG::Pass::dependsOn(v68, v124);
    *(a6 + 72) = *&v145[8];
  }

LABEL_47:
  v140 = v131;
  LOWORD(v141) = v132;
  LOBYTE(v142) = 1;
  BYTE1(v142) = *(a4 + 6);
  WORD1(v142) = 256;
  BYTE4(v142) = 0;
  v75 = sub_1AF23B940(v54);
  v76 = *(a6 + 48);
  *&v146[16] = *(a6 + 32);
  v147 = v76;
  v148 = *(a6 + 64);
  v77 = *(a6 + 16);
  *&v145[8] = *a6;
  v143 = v75;
  v78 = *(a4 + 48);
  v144 = *(a4 + 40);
  *v145 = v78;
  v149 = *(a6 + 80);
  *v146 = v77;
  v150 = *v119;
  if ((v122 & 1) == 0)
  {
    return 0;
  }

  v79 = sub_1AF24EA74(a1, &v140);
  v80 = v79;
  if (v118)
  {
    v81 = CFX::RG::Pass::dependsOn(v79, v118);
  }

  else
  {
    v81 = CFX::RG::Pass::dependsOn(v79, v54);
  }

  if (v65)
  {
    v82 = *(a6 + 80);
    v83 = CFX::RG::Temporal::currentFrame(v81);
    CFX::RG::Pass::readFrom(v80, v82, v83);
    *(v80 + 58) = v82;
    CFX::RG::Pass::dependsOn(v80, v124);
  }

  if (v68)
  {
    CFX::RG::Pass::dependsOn(v80, v68);
  }

  v84 = sub_1AF2622A0(a1, a2[2], a3);
  v85 = v84;
  if (v84)
  {
    v86 = *(v84 + 61);
    v87 = CFX::RG::Temporal::currentFrame(v84);
    CFX::RG::Pass::readFrom(v80, v86, v87);
    CFX::RG::Pass::dependsOn(v85, v54);
  }

  v88 = a2[2];
  v89 = CFX::RG::Resource::constTextureDesc(*a6);
  v90 = *(v89 + 16);
  v135 = *v89;
  v136 = v90;
  v91 = *(v89 + 32);
  v92 = *(v89 + 48);
  v93 = *(v89 + 80);
  *&v138[16] = *(v89 + 64);
  *&v138[32] = v93;
  v137 = v91;
  *v138 = v92;
  v94 = *(v89 + 96);
  v95 = *(v89 + 112);
  v96 = *(v89 + 144);
  *&v138[80] = *(v89 + 128);
  v139 = v96;
  *&v138[48] = v94;
  *&v138[64] = v95;
  v97 = sub_1AF244FE8(a1, v88, a3, &v135, &v128[1]);
  if (v129)
  {
    v98 = v130;
    v99 = 8 * v129;
    do
    {
      v100 = *v98;
      v101 = *(*v98 + 79);
      v102 = CFX::RG::Temporal::currentFrame(v97);
      CFX::RG::Pass::readFrom(v80, v101, v102);
      v104 = *(v100 + 80);
      if (v104)
      {
        v105 = CFX::RG::Temporal::currentFrame(v103);
        CFX::RG::Pass::readFrom(v80, v104, v105);
      }

      v97 = CFX::RG::Pass::dependsOn(v100, v54);
      ++v98;
      v99 -= 8;
    }

    while (v99);
  }

  v127[0] = a3;
  v127[1] = 0;
  v106 = sub_1AF24B5EC(a1, a2, v127);
  if (v106)
  {
    CFX::RG::Pass::dependsOn(v80, v106);
    CFX::RG::Pass::dependsOn(v106, v54);
  }

  if (*(a4 + 7) != 1)
  {
    return v80;
  }

  v135.n128_u64[0] = a3;
  v135.n128_u8[8] = 0;
  *&v137 = 0;
  v136 = v121;
  *v138 = v117;
  v138[16] = 1;
  *&v138[32] = xmmword_1AFE42EB0;
  v138[48] = sub_1AF12FAD0(a3);
  v138[49] = sub_1AF130848(a3);
  *&v138[56] = v120 | 0x201;
  *&v138[64] = 1;
  *&v138[68] = LOBYTE(v123[0]);
  v107 = sub_1AF23BCB4(a1, &v135, "DepthPostPassCulling");
  v135.n128_u64[0] = "PostDepthPass";
  v135.n128_u64[1] = v131.n128_u64[1];
  LOWORD(v136) = v132;
  DWORD2(v136) = 16842752;
  BYTE12(v136) = 0;
  v108 = sub_1AF23B940(v107);
  v109 = *(a6 + 48);
  *&v138[40] = *(a6 + 32);
  v137 = v108;
  *&v138[56] = v109;
  *&v138[72] = *(a6 + 64);
  v110 = *(a6 + 80);
  *v138 = -1;
  *&v138[88] = v110;
  v111 = *(a6 + 16);
  *&v138[8] = *a6;
  *&v138[24] = v111;
  v112 = *(a6 + 16);
  *&v139 = *a6;
  *(&v139 + 1) = v112;
  v114 = sub_1AF12DDCC(a3, v113);
  v115 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v114) ^ ((0x9DDFEA08EB382D69 * v114) >> 47));
  v126 = 0x9DDFEA08EB382D69 * (v115 ^ (v115 >> 47));
  v20 = sub_1AF24E9C4(a1, &v135, &v126);
  CFX::RG::Pass::dependsOn(v20, v107);
  CFX::RG::Pass::dependsOn(v20, v80);
  return v20;
}

void sub_1AF26B134(uint64_t a1, uint64_t **a2, CFX::RG::RenderGraphBuilder *a3)
{
  sub_1AF130BD8(*(a1 + 24), 0);
  v7 = sub_1AF12F10C(*(a1 + 24), v6);
  if (v7 && sub_1AF1BB260(v7, v8))
  {
    if (*(a1 + 49) == 1)
    {
      memset(v26, 0, sizeof(v26));
    }

    else
    {
      sub_1AF23891C(v26, *(a1 + 24), 0);
    }

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v19 = 0uLL;
    v9 = sub_1AF26A74C(a3, a2, *(a1 + 24), a1 + 48, v26, &v20, &v19, 0);
    v10 = v20;
    if (v20)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, 1656467160);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v10, v9);
    }

    v11 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, 1673244779);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v11, v9);
    }

    v12 = v21;
    if (v21)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, -797957750);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v12, v9);
    }

    v13 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, 306839123);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v13, v9);
    }

    v14 = v22;
    if (v22)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, 1348742528);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v14, v9);
    }

    v15 = v23;
    if (v23)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, -31245996);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v15, v9);
    }

    v16 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, 145493432);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v16, v9);
    }

    v17 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v18, *(a1 + 8), 9273, -1170177454);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v18, v17, v9);
    }
  }
}

void *sub_1AF26B3B0(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "GBuffer");
  *result = &unk_1F24EB870;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26B3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, *(a1 + 8), 9273, 1656467160);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, *(a1 + 8), 9273, -797957750);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, *(a1 + 8), 9273, 1893898584);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v8, *(a1 + 8), 9273, 1490954098);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v9, *(a1 + 8), 9273, -287492009);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v10, *(a1 + 8), 9273, 1251382574);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v11, *(a1 + 8), 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v12, *(a1 + 8), 9273, -495228831);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v13, *(a1 + 8), 9273, -965507924);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v14, *(a1 + 8), 9273, 2057617157);
  return sub_1AF2696E4(a2, &v5, 10);
}

uint64_t sub_1AF26B560@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26B5D4(uint64_t a1, uint64_t **a2, CFX::RG::RenderGraphBuilder *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF12E2AC(*(a1 + 24), a2);
  v8 = sub_1AF12DDCC(*(a1 + 24), v7);
  v10 = sub_1AF12F10C(*(a1 + 24), v9);
  if (!v10)
  {
    return;
  }

  v12 = sub_1AF1BB260(v10, v11);
  if (!v12)
  {
    return;
  }

  v15 = v12;
  if (objc_msgSend_rayMap(v6, v13, v14))
  {
    return;
  }

  v17 = sub_1AF15D690(v15, v16);
  sub_1AF1D0898(v8, v18);
  sub_1AF15D070(v15, v19);
  v21 = sub_1AF15CEC0(v15, v20);
  sub_1AF15CF98(v15, v22);
  sub_1AF15D25C(v15, v23);
  sub_1AF15D2C8(v15, v24);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormatIf(&v50, v49, 115, v17);
  v46 = sub_1AF233CC8(a3, "COLOR", &v50);
  CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v46);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 252);
  v45 = sub_1AF233CC8(a3, "DEPTH", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 70);
  *&v48 = sub_1AF233CC8(a3, "Albedo", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 115);
  *(&v48 + 1) = sub_1AF233CC8(a3, "Normals", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 115);
  v44 = sub_1AF233CC8(a3, "RoughnessMetalness", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 115);
  v25 = sub_1AF233CC8(a3, "Emission", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  if (v21)
  {
    v26 = 115;
  }

  else
  {
    v26 = 65;
  }

  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, v26);
  v47 = sub_1AF233CC8(a3, "Velocity", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 115);
  v27 = sub_1AF233CC8(a3, "ClearCoat", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 115);
  v28 = sub_1AF233CC8(a3, "Subsurface", &v50);
  CFX::RG::TextureDescriptorReference::finalColor(v49);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v50, v49, 113);
  v29 = sub_1AF233CC8(a3, "Transmission", &v50);
  objc_msgSend_setSampleCount_(v6, v30, 1);
  v50.n128_u64[0] = *(a1 + 24);
  v50.n128_u8[8] = 1;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v55 = sub_1AF12FCE8(v50.n128_i64[0], 0);
  LOBYTE(v56) = 1;
  v58 = xmmword_1AFE42EB0;
  LOBYTE(v59) = sub_1AF12FAD0(*(a1 + 24));
  BYTE1(v59) = sub_1AF130848(*(a1 + 24));
  v60 = 32;
  LODWORD(v61) = 1;
  WORD2(v61) = 1;
  v31 = sub_1AF23BCB4(a3, &v50, "MainCulling");
  v32 = *(a1 + 24);
  v33 = sub_1AF23B940(v31);
  v50.n128_u64[0] = v32;
  v50.n128_u64[1] = -1;
  v51 = v33;
  LOBYTE(v52) = 0;
  v34 = sub_1AF268A08(a3, &v50, v31);
  v35 = *(a1 + 24);
  v50.n128_u64[0] = "GBuffer";
  v50.n128_u64[1] = v35;
  LOWORD(v51) = 0;
  LOBYTE(v52) = 1;
  v53 = v46;
  v54 = v45;
  v55 = v48;
  v56 = v44;
  v57 = v25;
  *&v58 = v47;
  *(&v58 + 1) = v27;
  v59 = v28;
  v60 = v29;
  v61 = sub_1AF23B940(v31);
  v36 = sub_1AF23DBE0(a3, &v50);
  v37 = v36;
  if (v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = v31;
  }

  CFX::RG::Pass::dependsOn(v36, v38);
  v39 = *(v37 + 24);
  v40 = *v39;
  if (*v39)
  {
    v41 = v39 + 1;
    v42 = -25147;
    do
    {
      v42 = 403 * (v42 ^ v40);
      v43 = *v41++;
      v40 = v43;
    }

    while (v43);
    if (!v46)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v42 = -25147;
    if (!v46)
    {
      goto LABEL_15;
    }
  }

  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v46, v37);
LABEL_15:
  if (v45)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, -797957750);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v45, v37);
  }

  if (v48)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, 1893898584);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v48, v37);
  }

  if (*(&v48 + 1))
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, 1490954098);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], *(&v48 + 1), v37);
  }

  if (v44)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, -287492009);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v44, v37);
  }

  if (v25)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, 1251382574);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v25, v37);
  }

  if (v47)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, -1170177454);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v47, v37);
  }

  if (v27)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, -495228831);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v27, v37);
  }

  if (v28)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, -965507924);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v28, v37);
  }

  if (v29)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v50, *(a1 + 8), v42, 2057617157);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v50.n128_u64[0], v29, v37);
  }
}

uint64_t sub_1AF26BC48(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Subgraph::Subgraph(a1, "HybridRenderer");
  *v4 = &unk_1F24EB8C8;
  *(v4 + 24) = 1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  *(v4 + 56) = 1;
  *(v4 + 60) = 1065353216;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v4 + 72);
  *(a1 + 308) = 1112014848;
  *(a1 + 312) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1 + 336);
  *(a1 + 496) = 1;
  *(a1 + 500) = 0;
  *(a1 + 528) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1 + 624);
  *(a1 + 784) = 1;
  *(a1 + 788) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1 + 920);
  *(a1 + 1080) = 1;
  *(a1 + 1084) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1 + 1224);
  *(a1 + 1384) = 1;
  *(a1 + 1388) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1 + 1504);
  *(a1 + 1664) = 1;
  *(a1 + 1668) = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(a1 + 1792);
  *(a1 + 1952) = 1;
  *(a1 + 2040) = 0;
  *(a1 + 1956) = 1;
  *(a1 + 500) = 0;
  *(a1 + 788) = 0;
  *(a1 + 1084) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1668) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1664) = 0;
  return a1;
}

uint64_t sub_1AF26BD58(uint64_t a1)
{
  *a1 = &unk_1F24EB8C8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_1AF14118C(v2, *(a1 + 48));
  }

  return a1;
}

void sub_1AF26BDA8(uint64_t a1)
{
  *a1 = &unk_1F24EB8C8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_1AF14118C(v2, *(a1 + 48));
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF26BE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26BE94@<X0>(uint64_t a1@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 53296, 9273, 1893898584);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v4, 53296, 9273, 1490954098);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, 53296, 9273, -287492009);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, 53296, 9273, 1251382574);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, 53296, 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v8, 53296, 9273, -797957750);
  return sub_1AF2696E4(a1, &v3, 6);
}

void sub_1AF26BF8C(uint64_t a1)
{
  v2 = sub_1AF1449E0(*(a1 + 40));
  v3 = *(a1 + 40);
  if (v3)
  {
    if (sub_1AF144830(v3))
    {
      *(a1 + 496) = 1;
      *(a1 + 784) = 1;
      *(a1 + 1080) = 0;
      *(a1 + 1384) = 0;
      *(a1 + 1664) = 0;
      v5 = sub_1AF12DDCC(*(a1 + 32), v4);
      v7 = sub_1AF1CF7E8(v5, v6);
      sub_1AF26C004(a1, v7);
    }

    *(a1 + 1952) = v2 != 0;
  }
}

void sub_1AF26C004(uint64_t a1, uint64_t a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  sub_1AF1BA950(a2, a2);
  if ((v5 & 1) == 0)
  {
    v21 = a2;
    v6 = sub_1AF1B75A0(a2, v4);
    if (v6)
    {
      v8 = v6;
      v9 = sub_1AF1B1FE0(v6, v7);
      v10 = v9;
      if (v9)
      {
        v11 = 0;
        do
        {
          v12 = sub_1AF1B2030(v8, v11);
          v14 = sub_1AF1A1270(v12, v13);
          v15 = 0;
          v23[0] = a1 + 1080;
          v23[1] = a1 + 1384;
          v23[2] = a1 + 1664;
          do
          {
            v16 = sub_1AF1656E4(v14, byte_1AFE43200[v15], 0);
            if (v16)
            {
              v18 = sub_1AF1660D8(v16, v17);
              v19 = v23[v15];
              v20 = 1;
              if (!*v19)
              {
                if (v18)
                {
                  v20 = *v18 > 0.0;
                }
              }

              *v19 = v20;
            }

            ++v15;
          }

          while (v15 != 3);
          ++v11;
        }

        while (v11 != v10);
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF26D3CC;
    v22[3] = &unk_1E7A7A098;
    v22[4] = a1;
    sub_1AF1B7E14(v21, v22);
  }
}

unint64_t sub_1AF26C190(uint64_t a1)
{
  v2 = sub_1AF1449E0(*(a1 + 40));
  v3 = sub_1AF1449F0(*(a1 + 40));
  sub_1AF26BF8C(a1);
  v4 = *(a1 + 8);
  v5 = 0x9DDFEA08EB382D69 * (*(a1 + 56) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 496));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ *(a1 + 784));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ *(a1 + 1080));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ *(a1 + 1384));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ *(a1 + 1664));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v17 = 0x9DDFEA08EB382D69 * (v16 ^ *(a1 + 1952));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v19 = 0x9DDFEA08EB382D69 * (v18 ^ *(a1 + 500));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = 0x9DDFEA08EB382D69 * (v20 ^ *(a1 + 788));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v23 = 0x9DDFEA08EB382D69 * (v22 ^ *(a1 + 1084));
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 47));
  v25 = 0x9DDFEA08EB382D69 * (v24 ^ *(a1 + 1388));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 47));
  v27 = 0x9DDFEA08EB382D69 * (v26 ^ *(a1 + 1668));
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v27 >> 47) ^ v27)) ^ ((0x9DDFEA08EB382D69 * (v26 ^ (v27 >> 47) ^ v27)) >> 47));
  v29 = 0x9DDFEA08EB382D69 * (v28 ^ *(a1 + 1956));
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) ^ ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 47));
  v31 = 0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v30 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v30 ^ v2)));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v3)));
  v33 = 0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47));
  v34 = 0x9DDFEA08EB382D69 * (v33 ^ *(a1 + 2040));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) >> 47));
}

void sub_1AF26C3EC(uint64_t a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  sub_1AF130BD8(*(a1 + 32), *(a1 + 56));
  if (*(a1 + 24) == 1)
  {
    v7 = sub_1AF12DDCC(*(a1 + 32), v6);
    v9 = sub_1AF1D0140(v7, v8);
    *(a1 + 40) = v9;
    *(a1 + 48) = 15;
    sub_1AF141118(v9, 0xFu);
  }

  sub_1AF26BF8C(a1);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1656467160);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v10 = sub_1AF24736C(a3, "HybridRenderer input color", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1251382574);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v11 = sub_1AF24736C(a3, "HybridRenderer input emission", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1490954098);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v158 = sub_1AF24736C(a3, "HybridRenderer input normals", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 1893898584);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v155 = sub_1AF24736C(a3, "HybridRenderer input albedo", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -287492009);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v152 = sub_1AF24736C(a3, "HybridRenderer input roughmetalTarget", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -1170177454);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v154 = sub_1AF24736C(a3, "HybridRenderer input velocityTarget", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -797957750);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v12 = sub_1AF24736C(a3, "HybridRenderer input depthTarget", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -495228831);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v149 = sub_1AF24736C(a3, "HybridRenderer input clearCoat", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, -965507924);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v148 = sub_1AF24736C(a3, "HybridRenderer input subsurface", &v162);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(__dst, 9273, 9273, 2057617157);
  CFX::RG::ResourceReference::ResourceReference(&v162, __dst[0]);
  v147 = sub_1AF24736C(a3, "HybridRenderer input transmission", &v162);
  v162 = *(a1 + 32);
  v163 = v10;
  v157 = v10;
  v156 = sub_1AF235B58(a2, &v162);
  v162 = *(a1 + 32);
  v163 = v12;
  v159 = sub_1AF235B58(a2, &v162);
  v162 = *(a1 + 32);
  LOWORD(v163) = 15;
  v13 = sub_1AF24983C();
  if ((atomic_load_explicit(byte_1ED73AA68, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0928();
  }

  v145 = v11;
  if (byte_1ED73AA60)
  {
    v14 = 0xF00CF1A885CF4FA4;
  }

  else
  {
    v14 = 0;
  }

  CFX::RG::RenderGraphBuilder::passesMatchingClassIdentifier(a3, v14, *(a2 + 2), &v162);
  if (v163)
  {
    v15 = *(&v163 + 1);
    v16 = 8 * v163;
    do
    {
      v17 = *v15++;
      CFX::RG::Pass::dependsOn(v13, v17);
      v16 -= 8;
    }

    while (v16);
  }

  v207[0] = *(a1 + 32);
  v207[1] = v12;
  v207[2] = v158;
  v207[3] = v154;
  v208 = 0;
  v146 = sub_1AF251314(a3, a2, v207);
  memcpy(__dst, (a1 + 64), sizeof(__dst));
  __dst[0] = *(a1 + 32);
  v18 = CFX::RG::Resource::textureDesc(v10);
  v19 = *v18;
  *&__dst[3] = v18[1];
  *&__dst[1] = v19;
  v20 = v18[2];
  v21 = v18[3];
  v22 = v18[4];
  *&__dst[11] = v18[5];
  *&__dst[9] = v22;
  *&__dst[7] = v21;
  *&__dst[5] = v20;
  v23 = v18[6];
  v24 = v18[7];
  v25 = v18[8];
  *&__dst[19] = v18[9];
  *&__dst[17] = v25;
  *&__dst[15] = v24;
  *&__dst[13] = v23;
  __dst[23] = v158;
  __dst[21] = v12;
  __dst[22] = v155;
  __dst[24] = sub_1AF235B4C(v156);
  __dst[25] = sub_1AF235B4C(v159);
  LOBYTE(__dst[31]) = *(a1 + 1664);
  BYTE1(__dst[31]) = *(a1 + 2040) == 11;
  v26 = sub_1AF2400F8(a2, __dst);
  v27 = sub_1AF26D2E8(a1, a3, 11, v26, __dst[27]);
  if (!v27)
  {
    v27 = sub_1AF26D2E8(a1, a3, 12, v26, __dst[26]);
  }

  CFX::RG::Pass::dependsOn(v26, v13);
  v28 = __dst[28];
  v29 = __dst[29];
  v30 = __dst[30];
  v150 = __dst[29];
  if (*(a1 + 496) == 1)
  {
    *(a1 + 328) = *(a1 + 32);
    v31 = CFX::RG::Resource::textureDesc(v157);
    v32 = v31[1];
    *(a1 + 336) = *v31;
    *(a1 + 352) = v32;
    v33 = v31[5];
    v35 = v31[2];
    v34 = v31[3];
    *(a1 + 400) = v31[4];
    *(a1 + 416) = v33;
    *(a1 + 368) = v35;
    *(a1 + 384) = v34;
    v36 = v31[9];
    v38 = v31[6];
    v37 = v31[7];
    *(a1 + 464) = v31[8];
    *(a1 + 480) = v36;
    *(a1 + 432) = v38;
    *(a1 + 448) = v37;
    *(a1 + 560) = sub_1AF235B4C(v156);
    *(a1 + 568) = sub_1AF235B4C(v159);
    *(a1 + 544) = v12;
    *(a1 + 536) = v158;
    *(a1 + 552) = v208;
    *(a1 + 504) = v28;
    *(a1 + 512) = v29;
    *(a1 + 520) = v30;
    *(a1 + 524) = 0;
    *(a1 + 528) = *(a1 + 1664);
    *(a1 + 576) = __dst[26];
    v39 = sub_1AF2588B8(a2, (a1 + 328));
    CFX::RG::Pass::dependsOn(v39, v26);
    CFX::RG::Pass::dependsOn(v39, v146);
    if (!v27)
    {
      v27 = sub_1AF26D2E8(a1, a3, 3, v39, *(a1 + 584));
    }
  }

  else
  {
    v39 = 0;
    *(a1 + 584) = 0;
  }

  if (*(a1 + 1952) == 1)
  {
    v40 = v28;
    *(a1 + 1784) = *(a1 + 32);
    v41 = CFX::RG::Resource::textureDesc(v157);
    v42 = *v41;
    *(a1 + 1808) = v41[1];
    *(a1 + 1792) = v42;
    v43 = v41[2];
    v44 = v41[3];
    v45 = v41[4];
    *(a1 + 1872) = v41[5];
    *(a1 + 1856) = v45;
    *(a1 + 1840) = v44;
    *(a1 + 1824) = v43;
    v46 = v41[6];
    v47 = v41[7];
    v48 = v41[8];
    *(a1 + 1936) = v41[9];
    *(a1 + 1920) = v48;
    *(a1 + 1904) = v47;
    *(a1 + 1888) = v46;
    *(a1 + 1960) = v12;
    *(a1 + 1976) = v158;
    *(a1 + 1968) = v155;
    *(a1 + 1984) = v152;
    *(a1 + 1992) = sub_1AF235B4C(v159);
    *(a1 + 2000) = v208;
    v49 = sub_1AF256204(a2, a1 + 1784);
    CFX::RG::Pass::dependsOn(v49, v13);
    if (v27)
    {
      v50 = v49;
    }

    else
    {
      v51 = sub_1AF26D2E8(a1, a3, 1, v49, *(a1 + 2008));
      v50 = v49;
      if (!v51)
      {
        v51 = sub_1AF26D2E8(a1, a3, 2, v49, *(a1 + 2016));
      }

      v27 = v51;
    }

    v28 = v40;
  }

  else
  {
    v50 = 0;
    *(a1 + 2008) = 0u;
  }

  v144 = v50;
  if (*(a1 + 784) == 1)
  {
    *(a1 + 616) = *(a1 + 32);
    v52 = CFX::RG::Resource::textureDesc(v157);
    v53 = v52[1];
    *(a1 + 624) = *v52;
    *(a1 + 640) = v53;
    v54 = v52[5];
    v56 = v52[2];
    v55 = v52[3];
    *(a1 + 688) = v52[4];
    *(a1 + 704) = v54;
    *(a1 + 656) = v56;
    *(a1 + 672) = v55;
    v57 = v52[9];
    v59 = v52[6];
    v58 = v52[7];
    *(a1 + 752) = v52[8];
    *(a1 + 768) = v57;
    *(a1 + 720) = v59;
    *(a1 + 736) = v58;
    *(a1 + 848) = sub_1AF235B4C(v156);
    *(a1 + 856) = sub_1AF235B4C(v159);
    *(a1 + 816) = v12;
    *(a1 + 824) = v158;
    *(a1 + 832) = v208;
    *(a1 + 840) = v152;
    *(a1 + 792) = v28;
    *(a1 + 800) = v150;
    *(a1 + 808) = v30;
    *(a1 + 812) = 0;
    *(a1 + 880) = *(a1 + 600);
    *(a1 + 896) = *(a1 + 500);
    v60 = sub_1AF25B2D0(a2, (a1 + 616));
    CFX::RG::Pass::dependsOn(v60, v39);
    CFX::RG::Pass::dependsOn(v60, v26);
    CFX::RG::Pass::dependsOn(v60, v146);
    if (!v27)
    {
      v27 = sub_1AF26D2E8(a1, a3, 4, v60, *(a1 + 864));
    }
  }

  else
  {
    v60 = 0;
    *(a1 + 864) = 0;
  }

  if (*(a1 + 1384) == 1)
  {
    *(a1 + 1216) = *(a1 + 32);
    v61 = CFX::RG::Resource::textureDesc(v157);
    v62 = v61[1];
    *(a1 + 1224) = *v61;
    *(a1 + 1240) = v62;
    v63 = v61[5];
    v65 = v61[2];
    v64 = v61[3];
    *(a1 + 1288) = v61[4];
    *(a1 + 1304) = v63;
    *(a1 + 1256) = v65;
    *(a1 + 1272) = v64;
    v66 = v61[9];
    v68 = v61[6];
    v67 = v61[7];
    *(a1 + 1352) = v61[8];
    *(a1 + 1368) = v66;
    *(a1 + 1320) = v68;
    *(a1 + 1336) = v67;
    *(a1 + 1456) = sub_1AF235B4C(v156);
    *(a1 + 1464) = sub_1AF235B4C(v159);
    *(a1 + 1440) = v12;
    *(a1 + 1424) = v158;
    *(a1 + 1432) = v155;
    *(a1 + 1448) = v154;
    *(a1 + 1416) = v148;
    *(a1 + 1392) = v28;
    *(a1 + 1400) = v150;
    *(a1 + 1408) = v30;
    *(a1 + 1412) = 0;
    v69 = sub_1AF25D594(a2, (a1 + 1216));
    CFX::RG::Pass::dependsOn(v69, v26);
    if (!v27)
    {
      v27 = sub_1AF26D2E8(a1, a3, 5, v69, *(a1 + 1472));
    }
  }

  else
  {
    v69 = 0;
    *(a1 + 1472) = 0;
  }

  v153 = v12;
  v151 = a2;
  if (*(a1 + 1080) == 1)
  {
    *(a1 + 912) = *(a1 + 32);
    v70 = CFX::RG::Resource::textureDesc(v157);
    v71 = v70[1];
    *(a1 + 920) = *v70;
    *(a1 + 936) = v71;
    v72 = v70[5];
    v74 = v70[2];
    v73 = v70[3];
    *(a1 + 984) = v70[4];
    *(a1 + 1000) = v72;
    *(a1 + 952) = v74;
    *(a1 + 968) = v73;
    v75 = v70[9];
    v77 = v70[6];
    v76 = v70[7];
    *(a1 + 1048) = v70[8];
    *(a1 + 1064) = v75;
    *(a1 + 1016) = v77;
    *(a1 + 1032) = v76;
    *(a1 + 1152) = sub_1AF235B4C(v156);
    *(a1 + 1160) = sub_1AF235B4C(v159);
    *(a1 + 1112) = v155;
    *(a1 + 1120) = v158;
    *(a1 + 1136) = v12;
    *(a1 + 1128) = v149;
    *(a1 + 1144) = v208;
    *(a1 + 1088) = v28;
    *(a1 + 1096) = v150;
    *(a1 + 1104) = v30;
    *(a1 + 1108) = 0;
    *(a1 + 1184) = *(a1 + 888);
    *(a1 + 1200) = *(a1 + 788);
    v78 = sub_1AF25361C(a2, (a1 + 912));
    CFX::RG::Pass::dependsOn(v78, v60);
    CFX::RG::Pass::dependsOn(v78, v26);
    CFX::RG::Pass::dependsOn(v78, v146);
    if (!v27)
    {
      v27 = sub_1AF26D2E8(a1, a3, 6, v78, *(a1 + 1168));
    }
  }

  else
  {
    v78 = 0;
    *(a1 + 1168) = 0;
  }

  v79 = v60;
  if (*(a1 + 1664) == 1)
  {
    *(a1 + 1496) = *(a1 + 32);
    v80 = CFX::RG::Resource::textureDesc(v157);
    v81 = v80[1];
    *(a1 + 1504) = *v80;
    *(a1 + 1520) = v81;
    v82 = v80[4];
    v83 = v80[5];
    v84 = v80[3];
    *(a1 + 1536) = v80[2];
    *(a1 + 1584) = v83;
    *(a1 + 1568) = v82;
    *(a1 + 1552) = v84;
    v85 = v80[8];
    v86 = v80[9];
    v87 = v80[7];
    *(a1 + 1600) = v80[6];
    *(a1 + 1648) = v86;
    *(a1 + 1632) = v85;
    *(a1 + 1616) = v87;
    *(a1 + 1744) = sub_1AF235B4C(v156);
    *(a1 + 1752) = sub_1AF235B4C(v159);
    *(a1 + 1720) = v153;
    *(a1 + 1704) = v158;
    *(a1 + 1712) = v155;
    *(a1 + 1728) = v154;
    *(a1 + 1736) = v152;
    *(a1 + 1696) = v147;
    *(a1 + 1672) = v28;
    *(a1 + 1680) = v150;
    *(a1 + 1688) = v30;
    *(a1 + 1692) = 0;
    v88 = sub_1AF25FA84(v151, (a1 + 1496));
    CFX::RG::Pass::dependsOn(v88, v26);
    v89 = v69;
    if (!v27)
    {
      v27 = sub_1AF26D2E8(a1, a3, 7, v88, *(a1 + 1760));
    }
  }

  else
  {
    v89 = v69;
    v88 = 0;
    *(a1 + 1760) = 0;
  }

  v162 = *(a1 + 32);
  v90 = CFX::RG::Resource::textureDesc(v157);
  v91 = *v90;
  v164 = v90[1];
  v163 = v91;
  v92 = v90[2];
  v93 = v90[3];
  v94 = v90[4];
  v168 = v90[5];
  v167 = v94;
  v166 = v93;
  v165 = v92;
  v95 = v90[6];
  v96 = v90[7];
  v97 = v90[8];
  v172 = v90[9];
  v171 = v97;
  v170 = v96;
  v169 = v95;
  *&v173 = v155;
  *(&v173 + 1) = v145;
  v174 = *(a1 + 2008);
  v98 = *(a1 + 864);
  *&v175 = *(a1 + 584);
  *(&v175 + 1) = v98;
  *&v176 = *(a1 + 1168);
  *(&v176 + 1) = v152;
  *&v177 = v158;
  *(&v177 + 1) = v149;
  v99 = *(a1 + 1472);
  *&v178 = v148;
  *(&v178 + 1) = v99;
  v100 = *(a1 + 1760);
  *&v179 = v147;
  *(&v179 + 1) = v100;
  *&v180 = v153;
  v101 = sub_1AF23EB8C(v151, &v162);
  CFX::RG::Pass::dependsOn(v101, v144);
  CFX::RG::Pass::dependsOn(v101, v39);
  CFX::RG::Pass::dependsOn(v101, v79);
  CFX::RG::Pass::dependsOn(v101, v78);
  CFX::RG::Pass::dependsOn(v101, v89);
  CFX::RG::Pass::dependsOn(v101, v88);
  v102 = sub_1AF23EB7C(v101);
  if (!v27)
  {
    v27 = sub_1AF26D2E8(a1, a3, 9, v101, v102);
  }

  if (*(a1 + 56) == 1)
  {
    v162 = *(a1 + 32);
    v103 = CFX::RG::Resource::textureDesc(v102);
    v104 = v103[1];
    v163 = *v103;
    v164 = v104;
    v105 = v103[4];
    v106 = v103[5];
    v107 = v103[3];
    v165 = v103[2];
    v168 = v106;
    v167 = v105;
    v166 = v107;
    v108 = v103[8];
    v109 = v103[9];
    v110 = v103[7];
    v169 = v103[6];
    v172 = v109;
    v171 = v108;
    v170 = v110;
    v111 = CFX::RG::Resource::textureDesc(v153);
    v112 = v111[9];
    v114 = v111[6];
    v113 = v111[7];
    v181 = v111[8];
    v182 = v112;
    v179 = v114;
    v180 = v113;
    v115 = v153;
    v116 = v111[1];
    v173 = *v111;
    v174 = v116;
    v117 = v111[4];
    v118 = v111[5];
    v119 = v111[3];
    v175 = v111[2];
    v178 = v118;
    v177 = v117;
    v176 = v119;
    v120 = CFX::RG::Resource::textureDesc(v154);
    v121 = v120[1];
    v183 = *v120;
    v184 = v121;
    v122 = v120[5];
    v124 = v120[2];
    v123 = v120[3];
    v187 = v120[4];
    v188 = v122;
    v185 = v124;
    v186 = v123;
    v125 = v120[9];
    v127 = v120[6];
    v126 = v120[7];
    v191 = v120[8];
    v192 = v125;
    v189 = v127;
    v190 = v126;
    v128 = CFX::RG::Resource::textureDesc(v102);
    v129 = v128[1];
    v193 = *v128;
    v194 = v129;
    v130 = v128[2];
    v131 = v128[3];
    v132 = v128[5];
    v197 = v128[4];
    v198 = v132;
    v195 = v130;
    v196 = v131;
    v133 = v128[6];
    v134 = v128[7];
    v135 = v128[9];
    v201 = v128[8];
    v202 = v135;
    v199 = v133;
    v200 = v134;
    v203 = v102;
    v204 = v153;
    v205 = v154;
    CopyPass = sub_1AF244990(a3, v151[4], &v162);
    CFX::RG::Pass::dependsOn(CopyPass, v101);
    v137 = sub_1AF244988(CopyPass);
    if (v27)
    {
      goto LABEL_49;
    }
  }

  else
  {
    CFX::RG::TextureDescriptorReference::finalColor(v160);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v161, v160, 115);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v162, v161, 1);
    v137 = sub_1AF233CC8(a3, "Output copy", &v162);
    v162 = v102;
    LODWORD(v163) = 0;
    *(&v163 + 1) = v137;
    *&v164 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a3, "copy", &v162);
    CFX::RG::Pass::dependsOn(CopyPass, v101);
    v115 = v153;
    if (v27)
    {
      goto LABEL_49;
    }
  }

  v27 = sub_1AF26D2E8(a1, a3, 10, CopyPass, v154);
  if (!v27)
  {
    v138 = sub_1AF235B4C(v156);
    v27 = sub_1AF26D2E8(a1, a3, 8, v156, v138);
  }

LABEL_49:
  CFX::RG::Pass::dependsOn(v159, CopyPass);
  sub_1AF235B04(v159, v115);
  CFX::RG::Pass::dependsOn(v156, CopyPass);
  v139 = sub_1AF23EB84(v101);
  sub_1AF235B04(v156, v139);
  CFX::RG::TextureDescriptorReference::finalColor(v160);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v161, v160, 115);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v162, v161, 1);
  v140 = sub_1AF233CC8(a3, "Resource copy", &v162);
  v141 = v140;
  if (v27)
  {
    v142 = v27;
  }

  else
  {
    v142 = v137;
  }

  v162 = v142;
  LODWORD(v163) = 0;
  *(&v163 + 1) = v140;
  *&v164 = 0x100000000;
  v143 = CFX::RG::makeCopyPass(a3, "copy", &v162);
  CFX::RG::Pass::dependsOn(v143, v156);
  CFX::RG::Pass::dependsOn(v143, v159);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v162, *(a1 + 8), 27036, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v162, v141, v143);
  *(a1 + 24) = 0;
}

CFX::RG::Resource *sub_1AF26D2E8(uint64_t a1, CFX::RG::RenderGraphBuilder *a2, int a3, CFX::RG::Pass *a4, uint64_t a5)
{
  if (*(a1 + 2040) != a3)
  {
    return 0;
  }

  CFX::RG::TextureDescriptorReference::finalColor(v12);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v13, v12, 115);
  CFX::RG::TextureDescriptorReference::withSizeFactor(v14, v13, *(a1 + 60));
  CFX::RG::TextureDescriptorReference::withSampleCount(&v15, v14, 1);
  v9 = sub_1AF233CC8(a2, "DebugCopy", &v15);
  *&v15 = a5;
  DWORD2(v15) = 0;
  v16 = v9;
  v17 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a2, "copy", &v15);
  CFX::RG::Pass::dependsOn(CopyPass, a4);
  return v9;
}

CFX::RG::Subgraph *sub_1AF26D3D4(CFX::RG::Subgraph *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = CFX::RG::Subgraph::Subgraph(a1, "PostRender");
  *v8 = &unk_1F24EB920;
  *(v8 + 24) = 0;
  *(v8 + 32) = a2;
  *(a1 + 5) = a3;
  *(a1 + 6) = a4;
  return a1;
}

uint64_t sub_1AF26D450(uint64_t a1)
{
  *a1 = &unk_1F24EB920;

  return a1;
}

void sub_1AF26D4A0(uint64_t a1)
{
  *a1 = &unk_1F24EB920;

  JUMPOUT(0x1B271C6B0);
}

unint64_t sub_1AF26D528(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 40);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v11, v15, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = 0x9DDFEA08EB382D69 * (v2 ^ *(*(&v11 + 1) + 8 * i));
        v2 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v9 >> 47) ^ v9)) >> 47));
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
    }

    while (v6);
  }

  return v2;
}

__n128 sub_1AF26D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = *(a2 + 16);
  v32[1] = 0;
  v32[2] = v33;
  if (objc_msgSend_count(*(a1 + 40), a2, a3))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v6, v7);
      v29[0] = objc_msgSend_nodeRef(v9, v10, v11);
      sub_1AF240F04(v32, v29);
      v7 = v8;
    }

    while (objc_msgSend_count(*(a1 + 40), v12, v13) > v8++);
  }

  v29[0] = *(a1 + 32);
  v29[1] = v32;
  v30 = 3;
  v31 = 0;
  sub_1AF240DBC(a3, a2, v29, &v26);
  v16 = *(a3 + 8);
  v33[0] = *a3;
  v15 = v33[0];
  v33[1] = v16;
  v17 = sub_1AF23498C(v33, 0x1D8u, 8u, 2);
  v18 = CFX::RG::Pass::Pass(v17, v15, v16, "Register probes", 1, 0, 0);
  *v18 = &unk_1F24EB978;
  *(v18 + 53) = v15;
  *(v18 + 54) = v16;
  v19 = (v18 + 456);
  *(v18 + 57) = 0;
  *(v18 + 58) = 0;
  *(v18 + 55) = 0;
  *(v18 + 56) = v18 + 456;
  v20 = *(a3 + 192);
  v21 = v20 + 1;
  if (v20 + 1 > *(a3 + 196))
  {
    sub_1AF2348E0(a3 + 176, 1, 0);
    v20 = *(a3 + 192);
    v21 = v20 + 1;
  }

  *(*(a3 + 200) + 8 * v20) = v17;
  *(a3 + 192) = v21;
  if (v27)
  {
    v22 = v28;
    v23 = 8 * v27;
    do
    {
      v24 = *v22++;
      v33[0] = *(v24 + 58);
      sub_1AF235000(v17 + 53, v33);
      CFX::RG::Pass::dependsOn(v17, v24);
      v23 -= 8;
    }

    while (v23);
  }

  result = *(a1 + 40);
  *v19 = result;
  return result;
}

void sub_1AF26D7F0(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB978;
  sub_1AF2624F0(a1 + 424);

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF26D848(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24EB978;
  sub_1AF2624F0(a1 + 424);
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF26D8B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    v10[8] = v4;
    v10[9] = v5;
    v7 = result;
    v8 = CFX::RG::RendererPassArguments::commandBuffer((a4 + 8));
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF26D944;
    v10[3] = &unk_1E7A7DAC0;
    v10[4] = v7;
    v10[5] = a2;
    return objc_msgSend_addCompletedHandler_(v8, v9, v10);
  }

  return result;
}

CFX::RG::Temporal *sub_1AF26D944(CFX::RG::Temporal *result, __n128 a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v55 = result;
  v2 = *(result + 4);
  if (*(v2 + 440))
  {
    v3 = 0;
    a2.n128_u64[0] = 134218496;
    v53 = a2;
    v54 = *(result + 4);
    do
    {
      v4 = *(*(v2 + 448) + 8 * v3);
      v5 = *(*(v55 + 5) + 24);
      v6 = CFX::RG::Temporal::currentFrame(result);
      CFX::GPUResourceManager::getBuffer(v5, v4, v6);
      v56 = v7;
      CPUPointer = CFXBufferSliceGetCPUPointer(v8, v7, v9);
      v12 = sub_1AF0D5194(CPUPointer, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = *CPUPointer;
        v15 = CPUPointer[1];
        v16 = CPUPointer[2];
        *buf = v53.n128_u32[0];
        v65 = v14;
        v66 = 2048;
        v67 = v15;
        v68 = 2048;
        v69 = v16;
        _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_INFO, "Info: Irradiance: %f, %f, %f", buf, 0x20u);
      }

      v17 = objc_msgSend_objectAtIndexedSubscript_(*(v2 + 456), v13, v3, *&v53);
      v20 = objc_msgSend_nodeRef(v17, v18, v19);
      v22 = objc_msgSend_objectAtIndexedSubscript_(*(v2 + 456), v21, v3);
      v25 = objc_msgSend_light(v22, v23, v24);
      v28 = objc_msgSend_lightRef(v25, v26, v27);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v29 = *(v2 + 464);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v57, v63, 16);
      if (v31)
      {
        v34 = v31;
        v35 = *v58;
        do
        {
          v36 = 0;
          do
          {
            if (*v58 != v35)
            {
              objc_enumerationMutation(v29);
            }

            v37 = *(*(&v57 + 1) + 8 * v36);
            v38 = objc_msgSend_light(v37, v32, v33);
            v41 = objc_msgSend_lightRef(v38, v39, v40);
            v44 = objc_msgSend_nodeRef(v37, v42, v43);
            sub_1AF19E1CC(v28, v20, v41, v44, 3u, CPUPointer);
            ++v36;
          }

          while (v34 != v36);
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v57, v63, 16);
          v34 = v31;
        }

        while (v31);
      }

      if (v56 >> 34 <= 0x1A)
      {
        v45 = sub_1AF0D5194(v31, v32);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF0960(v61, &v62, v45);
        }
      }

      v46 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v32, CPUPointer, 108);
      v2 = v54;
      v48 = objc_msgSend_objectAtIndexedSubscript_(*(v54 + 456), v47, v3);
      v51 = objc_msgSend_light(v48, v49, v50);
      result = objc_msgSend_set_sphericalHarmonics_(v51, v52, v46);
      ++v3;
    }

    while (v3 < *(v54 + 440));
  }

  return result;
}
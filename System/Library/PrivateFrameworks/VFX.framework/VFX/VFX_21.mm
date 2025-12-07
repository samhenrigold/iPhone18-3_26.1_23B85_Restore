uint64_t sub_1AF242BC0(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = vcvtps_s32_f32(*(a1 + 468));
  v49 = v6;
  v7 = *(a1 + 480);
  v8 = *(a1 + 488);
  v47 = *(v7 + 48);
  v48 = *(v7 + 64);
  v9 = *(a2 + 24);
  v10 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v9, v8, v10);
  v12 = *(a2 + 24);
  v13 = *(a1 + 496);
  v14 = CFX::RG::Temporal::currentFrame(Texture);
  v15 = CFX::GPUResourceManager::getTexture(v12, v13, v14);
  v16 = *(a2 + 24);
  v17 = *(a1 + 504);
  v18 = CFX::RG::Temporal::currentFrame(v15);
  v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
  objc_msgSend_setTexture_atIndex_(v5, v20, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v21, v15, 1);
  objc_msgSend_setTexture_atIndex_(v5, v22, v19, 2);
  objc_msgSend_setBytes_length_atIndex_(v5, v23, v46, 40, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v24, *(*(a1 + 480) + 40), 0, 1);
  v26 = sub_1AF1403B4(*(a1 + 480) + 8 * *(a1 + 472) + 8, v25);
  v27 = sub_1AFDE323C(v26);
  v30 = objc_msgSend_threadExecutionWidth(v27, v28, v29);
  v31 = (v30 + 126) / v30 * v30;
  v34 = objc_msgSend_width(v19, v32, v33);
  v37 = objc_msgSend_height(v19, v35, v36);
  v38 = 16 * *(a1 + 472) * (v31 + (2 * v6));
  v39 = (v31 + v37 - 1) / v31;
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v5, v40, v38, 0);
  objc_msgSend_setComputePipelineState_(v5, v41, v27);
  v45[0] = v34;
  v45[1] = v39;
  v45[2] = 1;
  v44[0] = 1;
  v44[1] = v31;
  v44[2] = 1;
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v42, v45, v44);
}

CFX::RG::Temporal *sub_1AF242D84(CFX::RG *a1, uint64_t **a2, uint64_t *a3, CFX::RG::Resource *a4)
{
  v8 = CFX::RG::Resource::constTextureDesc(a3[1]);
  v9 = v8[1];
  v64[0] = *v8;
  v64[1] = v9;
  v10 = v8[5];
  v12 = v8[2];
  v11 = v8[3];
  v64[4] = v8[4];
  v64[5] = v10;
  v64[2] = v12;
  v64[3] = v11;
  v13 = v8[9];
  v15 = v8[6];
  v14 = v8[7];
  v64[8] = v8[8];
  v64[9] = v13;
  v64[6] = v15;
  v64[7] = v14;
  CFX::RG::TextureDescriptorReference::withSampleCount(v63, v64, 1);
  v17 = CFX::RG::copyIfNeeded(a1, a3[1], a4, v63, 0, v16);
  v18 = a3[3];
  v19 = 0x3F847AE147AE147BLL;
  LOWORD(v19) = *(a3 + 18);
  v20 = *(a3 + 4) * 0.01 * v19;
  v21 = 8.0;
  if (v20 > 128.0 || (v21 = 4.0, v20 > 32.0) || (v22 = 2.0, v21 = 1.0, v20 < 4.0))
  {
    v22 = v21;
  }

  v23 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v17);
  v24 = *v23;
  v25 = *(v23 + 4);
  v61 = *(v23 + 12);
  v62 = *(v23 + 5);
  LOWORD(v26) = *(a3 + 16);
  v27 = v26 / v25;
  v28 = fmax((v22 / v27), 1.0);
  if (v28 <= 8)
  {
    if (v28 <= 4)
    {
      if (v28 < 3)
      {
        v29 = 1;
        goto LABEL_12;
      }

      v29 = 2;
    }

    else
    {
      v29 = 4;
    }
  }

  else
  {
    v29 = 8;
  }

  v59 = 0;
  v30 = *a3;
  v53 = "Lens blur downsample pass";
  v54 = v30;
  v55 = v24;
  v56 = v25;
  v57 = v61;
  v58 = v62;
  LOBYTE(v59) = v29;
  v31 = sub_1AF243088(a1, a1, &v53);
  *(v31 + 60) = v17;
  v32 = CFX::RG::Temporal::currentFrame(v31);
  CFX::RG::Pass::readFrom(v31, v17, v32);
  v17 = *(v31 + 61);
LABEL_12:
  v59 = 0;
  v60 = 0;
  v33 = *a3;
  v53 = "Lens blur horizontal pass";
  v54 = v33;
  v55 = v24;
  v56 = v25;
  v57 = v61;
  v34 = fminf(v20 / fmaxf(v22, v27), 63.0);
  v58 = v62;
  LOBYTE(v59) = v29;
  v35 = v18 + 1;
  *(&v59 + 1) = v34;
  LODWORD(v60) = v35;
  v36 = sub_1AF2430E0(a1, a1, &v53);
  *(v36 + 61) = v17;
  v37 = CFX::RG::Temporal::currentFrame(v36);
  CFX::RG::Pass::readFrom(v36, v17, v37);
  v51 = 0;
  v52 = 0;
  v38 = *a3;
  v46[0] = "Lens blur vertical pass";
  v46[1] = v38;
  v47 = v24;
  v48 = v25;
  v49 = v61;
  v50 = v62;
  LOBYTE(v51) = v29;
  *(&v51 + 1) = v34;
  LODWORD(v52) = v35;
  v39 = sub_1AF243138(a1, a1, v46);
  v40 = *(v36 + 62);
  *(v39 + 61) = v40;
  v41 = CFX::RG::Temporal::currentFrame(v39);
  CFX::RG::Pass::readFrom(v39, v40, v41);
  v42 = *(v36 + 63);
  *(v39 + 62) = v42;
  v44 = CFX::RG::Temporal::currentFrame(v43);
  CFX::RG::Pass::readFrom(v39, v42, v44);
  return v39;
}

uint64_t sub_1AF243088(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2434B4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2430E0(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF243514(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF243138(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF243574(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF243194(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2431D0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24320C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF243244(uint64_t a1)
{
  *a1 = &unk_1F24E9990;

  return a1;
}

void sub_1AF24329C(uint64_t a1)
{
  *a1 = &unk_1F24E9990;

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF243314(void *a1)
{
  *a1 = &unk_1F24E99B0;
  for (i = 4; i != 1; --i)
  {
  }

  return a1;
}

void sub_1AF24336C(void *a1)
{
  *a1 = &unk_1F24E99B0;
  for (i = 4; i != 1; --i)
  {
  }

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF2433E4(void *a1)
{
  *a1 = &unk_1F24E99D0;
  for (i = 4; i != 1; --i)
  {
  }

  return a1;
}

void sub_1AF24343C(void *a1)
{
  *a1 = &unk_1F24E99D0;
  for (i = 4; i != 1; --i)
  {
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2434B4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF241E4C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF243514(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x200u, 8u, 2);
  return sub_1AF2422A4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF243574(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x200u, 8u, 2);
  return sub_1AF242848(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF2436E8(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG *a4, uint64_t a5, CFX::RG::Pass *a6)
{
  *a1 = &unk_1F24E99F0;
  if ((atomic_load_explicit(byte_1ED73A638, memory_order_acquire) & 1) == 0)
  {
    v34 = a3;
    v33 = a2;
    sub_1AFDEEDE4();
    a2 = v33;
    a3 = v34;
  }

  if (byte_1ED73A630)
  {
    v10 = 0x5309FB0C36391206;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a1) ^ ((0x9DDFEA08EB382D69 * a1) >> 47));
  sub_1AF250390(a1, a2, a3, a5, v10, 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47)));
  *a1 = &unk_1F24E99F0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  v13 = sub_1AF12F398(*(a1 + 432), v12);
  v36 = 0uLL;
  (*(v13 + 48))(*(a1 + 432), &v36);
  v14 = (*(*a1 + 32))(a1);
  v15 = vcvt_hight_f64_f32(v36);
  *v14 = vcvtq_f64_f32(*v36.f32);
  *(v14 + 16) = v15;
  if (a6)
  {
    CFX::RG::Pass::dependsOn(a1, a6);
  }

  v16 = *(a5 + 32);
  v17 = CFX::RG::Resource::constTextureDesc(v16);
  CFX::RG::TextureDescriptorReference::withSampleCount(v35, v17, 1);
  v19 = CFX::RG::copyIfNeeded_r(a4, v16, a6, v35, "PostProcessSPI Copy color", v18);
  v21 = v20;
  v22 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v19, v22);
  CFX::RG::Pass::dependsOn(a1, v21);
  v23 = *(a5 + 40);
  if (v23)
  {
    v24 = CFX::RG::Resource::constTextureDesc(*(a5 + 40));
    CFX::RG::TextureDescriptorReference::withSampleCount(v35, v24, 1);
    v26 = CFX::RG::copyIfNeeded_r(a4, v23, a6, v35, "PostProcessSPI Copy color1", v25);
    v28 = v27;
    v29 = CFX::RG::Temporal::currentFrame(v26);
    CFX::RG::Pass::readFrom(a1, v26, v29);
    CFX::RG::Pass::dependsOn(a1, v28);
  }

  v30 = CFX::RG::Resource::constTextureDesc(*(a5 + 32));
  CFX::RG::TextureDescriptorReference::withSampleCount(v35, v30, 1);
  v31 = sub_1AF233CC8(a4, "PostProcessSPI output", v35);
  *(a1 + 456) = v31;
  CFX::RG::Pass::renderTo(a1, v31, 0x100000001, 0);
  return a1;
}

void sub_1AF243968(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  if ((atomic_load_explicit(byte_1ED73A638, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEDE4();
  }

  v5 = 0x5309FB0C36391206;
  if (!byte_1ED73A630)
  {
    v5 = 0;
  }

  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47));
  v8 = *(a2 + 32);
  v7 = (a2 + 32);
  v9 = CFX::CrossFrameResourceManager::get(v8, v6);
  *(a1 + 56) = v9;
  if (!v9)
  {
    sub_1AFDEEE30(v7, v6, a1 + 56, a1);
  }
}

void *sub_1AF243A2C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF243AB4(uint64_t a1, const char *a2)
{
  v3 = *(*(a1 + 448) + 16);
  objc_msgSend_setCurrentPass_(v3, a2, a1);
  v5 = sub_1AF12F398(*(a1 + 432), v4);
  (*(v5 + 56))(*(a1 + 432), v3);

  return objc_msgSend_setCurrentPass_(v3, v6, 0);
}

uint64_t sub_1AF243B18(uint64_t *a1, uint64_t *a2, CFX::RG::Pass *a3)
{
  v9 = a3;
  v3 = *a2;
  v5[0] = "PostProcessSPI";
  v5[1] = v3;
  v6 = 0;
  v7 = *a2;
  v8 = a2[2];
  return sub_1AF243B6C(a1, a1, v5, &v9);
}

uint64_t sub_1AF243B6C(uint64_t *a1, CFX::RG *a2, uint64_t a3, CFX::RG::Pass **a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF243CB4(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF243BCC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF243C04(uint64_t a1)
{
  *a1 = &unk_1F24E9A48;

  return a1;
}

void sub_1AF243C4C(uint64_t a1)
{
  *a1 = &unk_1F24E9A48;

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF243CB4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG *a4, uint64_t a5, CFX::RG::Pass **a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1D0u, 8u, 2);
  return sub_1AF2436E8(v10, *a3, a3[1], a4, a5, *a6);
}

uint64_t sub_1AF243D1C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v16 = a2;
  *(&v16 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A648, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEE90();
  }

  if (byte_1ED73A640)
  {
    v8 = 0x82816288C4F8725ALL;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v8, 0);
  *a1 = &unk_1F24E9A68;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *&v17 = *(a1 + 432);
  LOBYTE(v21) = 0;
  v23 = 0;
  v19 = 0;
  v18 = 0uLL;
  v24 = xmmword_1AFE42EB0;
  v25 = *(a1 + 440);
  v26 = 2;
  v27 = 8;
  v28 = 4;
  v29 = 1;
  *(a1 + 448) = sub_1AF2330E0(v16, *(&v16 + 1), &v16, &v17, &v18);
  v9 = v16;
  v10 = *(a1 + 432);
  *&v18 = 0;
  WORD4(v18) = 256;
  BYTE10(v18) = *(a1 + 441);
  v19 = 48;
  v20 = 0;
  if ((atomic_load_explicit(byte_1ED73A648, memory_order_acquire) & 1) == 0)
  {
    v15 = v9;
    sub_1AFDEEEDC();
    v9 = v15;
  }

  if (byte_1ED73A640)
  {
    v11 = 0x82816288C4F8725ALL;
  }

  else
  {
    v11 = 0;
  }

  v21 = v11;
  v22 = -1;
  v17 = v9;
  v12 = sub_1AF23498C(&v17, 0x48u, 8u, 2);
  sub_1AF2603E8(v12, v10, &v18, *(a1 + 448));
  *(a1 + 456) = v13;
  return a1;
}

void sub_1AF243F10(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Manipulator", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ManipulatorPass.mm", 45, v5 | 0x300000000);
  sub_1AF23B424(*(a1 + 448), v6, v7);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v8, v9, v10, v11, v12, v13);
  sub_1AF23B678(*(a1 + 448), *a2, *(a2 + 1));

  prof_endFlame();
}

void sub_1AF243FA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Manipulator", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ManipulatorPass.mm", 55, v5 | 0x300000000);
  sub_1AF260410(*(a1 + 456), a2, v6);

  prof_endFlame();
}

void sub_1AF244018(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Manipulator", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ManipulatorPass.mm", 60, v6 | 0x300000000);
  sub_1AF260B04(*(a1 + 456), a2, a3, 0);

  prof_endFlame();
}

uint64_t sub_1AF2440A4(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF244164(a1, a2);
  CFX::RG::Pass::renderTo(v6, a3, 0x100000001, 0);
  v7 = *(a2 + 136);
  v14[6] = *(a2 + 120);
  v14[7] = v7;
  v8 = *(a2 + 168);
  v14[8] = *(a2 + 152);
  v14[9] = v8;
  v9 = *(a2 + 72);
  v14[2] = *(a2 + 56);
  v14[3] = v9;
  v10 = *(a2 + 104);
  v14[4] = *(a2 + 88);
  v14[5] = v10;
  v11 = *(a2 + 40);
  v14[0] = *(a2 + 24);
  v14[1] = v11;
  v12 = sub_1AF233CC8(a1, "MANIPULATOR_DEPTH", v14);
  CFX::RG::Pass::renderTo(v6, v12, 0x200000002, -1);
  *(v6 + 464) = v12;
  return v6;
}

uint64_t sub_1AF244164(uint64_t *a1, __n128 *a2)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[0] = sub_1AF2441F4(v6[0], v4, v6, a2);
  sub_1AF235000(a1 + 22, v6);
  return v6[0];
}

void sub_1AF2441BC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2441F4(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 *a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x1D8u, 8u, 2);
  return sub_1AF243D1C(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF244244(uint64_t a1)
{
  *a1 = &unk_1F24E9AC0;

  *(a1 + 16) = 0;
  return a1;
}

void sub_1AF244290(uint64_t a1)
{
  *a1 = &unk_1F24E9AC0;

  *(a1 + 16) = 0;

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Resource **sub_1AF2442FC(CFX::RG::Resource **this, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5, const void *a6)
{
  if ((atomic_load_explicit(byte_1ED73A658, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDEEF14();
    a2 = v20;
    a3 = v21;
  }

  if (byte_1ED73A650)
  {
    v9 = 0x1A7B0322067A52BCLL;
  }

  else
  {
    v9 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, "MetalFXUpscalePass", 1, v9, 0);
  *this = &unk_1F24E9AE0;
  memcpy(this + 53, a6, 0x2A0uLL);
  this[137] = 0;
  this[139] = 0;
  this[138] = 0;
  CFX::RG::TextureDescriptorReference::withPixelFormat(v22, (this + 54), 115);
  v10 = sub_1AF233CC8(a4, "MetalFXUpscalePassOutput", v22);
  this[140] = v10;
  v11 = this[134];
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(this, v11, v12);
  v13 = this[135];
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(this, v13, v15);
  v16 = this[136];
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(this, v16, v18);
  CFX::RG::Pass::writeTo(this, this[140]);
  return this;
}

void sub_1AF244458(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 424), a2);
  *(a1 + 1104) = v4;
  *(a1 + 1112) = objc_msgSend_resourceManager(v4, v5, v6);
  CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1120));
  v7 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1072));
  v8 = *(v7 + 4);
  v9 = *(v7 + 6);
  v10 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1080));
  v11 = *(v10 + 4);
  v12 = *(v10 + 6);
  v13 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1088));
  v14 = *(v13 + 4);
  v15 = *(v13 + 6);
  v16 = CFX::RG::Pass::hash(a1);
  v17 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v8)));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ (v8 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ (v8 >> 16))));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ v9)));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ v11)));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ (v11 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ (v11 >> 16))));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ v12)));
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47))) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47))) ^ v14)));
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ (v14 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ (v14 >> 16))));
  v25 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
  v26 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v15)))) ^ ((0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v15)))) >> 47)));
  *(a1 + 1096) = v26;
  if (!v26)
  {
    operator new();
  }
}

uint64_t sub_1AF244768(uint64_t a1, CFX::RG::RenderGraphContext *a2, id *a3)
{
  v6 = *(a2 + 3);
  v7 = *(a1 + 1072);
  v8 = CFX::RG::Temporal::currentFrame(a1);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 3);
  v11 = *(a1 + 1080);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v14 = *(a2 + 3);
  v15 = *(a1 + 1088);
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  v18 = *(a2 + 3);
  v19 = *(a1 + 1120);
  v20 = CFX::RG::Temporal::currentFrame(v17);
  v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
  objc_msgSend_setColorTexture_(*(*(a1 + 1096) + 16), v22, Texture);
  objc_msgSend_setDepthTexture_(*(*(a1 + 1096) + 16), v23, v13);
  objc_msgSend_setMotionTexture_(*(*(a1 + 1096) + 16), v24, v17);
  objc_msgSend_setOutputTexture_(*(*(a1 + 1096) + 16), v25, v21);
  v47 = sub_1AF130C00(*(a1 + 424), 0);
  v28 = 0.5 - (objc_msgSend_inputWidth(*(*(a1 + 1096) + 16), v26, v27) * v47.f32[0]) * 0.5;
  *&v28 = v28;
  objc_msgSend_setJitterOffsetX_(*(*(a1 + 1096) + 16), v29, v30, v28);
  v33 = 0.5 - vmuls_lane_f32(objc_msgSend_inputHeight(*(*(a1 + 1096) + 16), v31, v32), v47, 1) * 0.5;
  *&v33 = v33;
  *&v33 = -*&v33;
  objc_msgSend_setJitterOffsetY_(*(*(a1 + 1096) + 16), v34, v35, v33);
  v36 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1088)) + 4);
  *&v37 = v36;
  objc_msgSend_setMotionVectorScaleX_(*(*(a1 + 1096) + 16), v38, v39, v37);
  *&v40 = (v36 >> 16);
  objc_msgSend_setMotionVectorScaleY_(*(*(a1 + 1096) + 16), v41, v42, v40);
  objc_msgSend_setDepthReversed_(*(*(a1 + 1096) + 16), v43, 1);
  v44 = *(*(a1 + 1096) + 16);
  v45 = CFX::RG::RendererPassArguments::commandBuffer(a3);

  return MEMORY[0x1EEE66B58](v44, sel_encodeToCommandBuffer_, v45);
}

void sub_1AF244968(uint64_t a1, CFX::CrossFrameResourceManager **a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    sub_1AF244768(a1, a2, (a4 + 8));
  }

  else if (a3 == 1)
  {
    sub_1AF244458(a1, a2);
  }
}

uint64_t sub_1AF2449A0(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3, const void *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF244A38(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF244A00(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Resource **sub_1AF244A38(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5, const void *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v9 = sub_1AF23498C(v12, 0x468u, 8u, 2);
  return sub_1AF2442FC(v9, *a3, a3[1], a4, v10, a6);
}

uint64_t sub_1AF244A98(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5, uint64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  *&v40 = a2;
  *(&v40 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A688, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEF60();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A680, a6);
  *a1 = &unk_1F24E9B18;
  *(a1 + 456) = 0;
  v12 = *(a5 + 24);
  v13 = *(a5 + 56);
  *(a1 + 480) = *(a5 + 40);
  *(a1 + 496) = v13;
  *(a1 + 464) = v12;
  v14 = *(a5 + 72);
  v15 = *(a5 + 88);
  v16 = *(a5 + 120);
  *(a1 + 544) = *(a5 + 104);
  *(a1 + 560) = v16;
  *(a1 + 512) = v14;
  *(a1 + 528) = v15;
  v17 = *(a5 + 136);
  v18 = *(a5 + 152);
  v19 = *(a5 + 168);
  *(a1 + 624) = *(a5 + 184);
  *(a1 + 592) = v18;
  *(a1 + 608) = v19;
  *(a1 + 576) = v17;
  *(a1 + 632) = 0u;
  v21 = sub_1AF1B7DB8(*(a1 + 464), v20);
  v32[0] = *(a1 + 432);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0uLL;
  v45 = sub_1AF16F0D8(v21);
  v46 = 0;
  v47 = *(a1 + 440);
  v48 = sub_1AF130848(*(a1 + 432));
  v49 = 2;
  v50 = 1;
  v51 = 1;
  *(a1 + 448) = sub_1AF2330E0(v40, *(&v40 + 1), &v40, v32, &v41);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 51;
  v37 = 0;
  if ((atomic_load_explicit(byte_1ED73A688, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEFB8();
  }

  v38 = qword_1ED73A680;
  v39 = -1;
  v22 = *(a1 + 432);
  v41 = v40;
  v23 = sub_1AF23498C(&v41, 0x48u, 8u, 2);
  v24 = sub_1AF2603E8(v23, v22, &v33, *(a1 + 448));
  *(a1 + 456) = v25;
  v26 = (*(*a1 + 32))(a1, v24);
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 269) = 1;
  CFX::RG::TextureDescriptorReference::withSampleCount(v31, (a1 + 472), *(v21 + 224));
  CFX::RG::TextureDescriptorReference::withPixelFormat(v32, v31, 115);
  CFX::RG::TextureDescriptorReference::withSizeFactor(&v41, v32, *(v21 + 220));
  v27 = sub_1AF233CC8(a4, "COLOR_MIRROR_MAP", &v41);
  *(a1 + 632) = v27;
  CFX::RG::Pass::renderTo(a1, v27, 0x100000002, 0);
  CFX::RG::TextureDescriptorReference::withSampleCount(v31, (a1 + 472), *(v21 + 224));
  CFX::RG::TextureDescriptorReference::withPixelFormat(v32, v31, 252);
  CFX::RG::TextureDescriptorReference::withSizeFactor(&v41, v32, *(v21 + 220));
  v28 = sub_1AF233CC8(a4, "DEPTH_MIRROR_MAP", &v41);
  CFX::RG::Pass::renderTo(a1, v28, 0x200000002, -1);
  if (sub_1AF16EE80(v21, v29) != 0.0)
  {
    *(a1 + 640) = v28;
  }

  return a1;
}

void sub_1AF244DEC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1ED73A668, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEFFC();
  }

  if ((atomic_load_explicit(byte_1ED73A678, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF054();
  }

  v4 = *(a1 + 464);
  v5 = 0x9DDFEA08EB382D69 * (qword_1ED73A660 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A660 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A660 ^ v4)));
  v6 = v5 ^ (v5 >> 47);
  v7 = qword_1ED73A670;
  v8 = sub_1AF1B7DB8(v4, a2);
  v9 = sub_1AF12FCE8(*(a1 + 432), 0);
  *&v9.n128_i8[8] = vmul_n_f32(*&vextq_s8(v9, v9, 8uLL), *(v8 + 220));
  v10 = *(a1 + 448);
  if ((v10[5].n128_u8[0] & 1) == 0)
  {
    v10[5].n128_u8[0] = 1;
  }

  v10[4] = v9;
  v11 = sub_1AF16F0D8(v8);
  v12 = *(a1 + 448);
  v12[6].i64[0] = v11;
  sub_1AF23B424(v12, v13, v14);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5FC(*(a1 + 448), *(a1 + 464));
  sub_1AF23B5F4(*(a1 + 448), v15, v16, v17, v18, v19, v20);
  sub_1AF23B604(*(a1 + 448), *(a1 + 464));
  sub_1AF23B60C(*(a1 + 448), v21);
  CFX::GPUResourceManager::registerNamedFrameResource(*(a2 + 24), *(a1 + 632), -348639895 * v6);
  v22 = *(a1 + 640);
  if (v22)
  {
    CFX::GPUResourceManager::registerNamedFrameResource(*(a2 + 24), v22, -348639895 * ((-348639895 * (v7 ^ (((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 32) >> 15) ^ (-348639895 * (v7 ^ v4)))) ^ (((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v4)))) >> 32) >> 15)));
  }

  v23 = *(a1 + 448);
  v24 = *a2;
  v25 = *(a2 + 8);

  sub_1AF23B678(v23, v24, v25);
}

uint64_t sub_1AF244F8C(uint64_t *a1, CFX::RG::RenderGraphBuilder **a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF245210(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

uint64_t sub_1AF244FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v12 = a3;
  v13 = a1;
  *a5 = a2;
  a5[1] = 0;
  a5[2] = (a5 + 3);
  v7 = sub_1AF12DDCC(a3, a2);
  v9 = sub_1AF1CF7E8(v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = sub_1AF245088;
  v11[3] = &unk_1F24E9B60;
  v11[4] = &v13;
  v11[5] = &v12;
  v11[6] = a4;
  v11[7] = a5;
  return sub_1AF1B95A8(v9, v11);
}

uint64_t sub_1AF245088(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 221) & 8) != 0)
  {
    if ((atomic_load_explicit(byte_1ED73A688, memory_order_acquire) & 1) == 0)
    {
      sub_1AFDEEF60();
    }

    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A680 ^ a2)))) >> 47));
    Pass = CFX::RG::RenderGraphBuilder::findPass(**(a1 + 32), v4);
    if (!Pass)
    {
      v5 = *(a1 + 40);
      v6 = **(a1 + 32);
      v9[0] = "Mirror map";
      v9[1] = *v5;
      v10 = 0;
      v11 = a2;
      CFX::RG::TextureDescriptorReference::withSampleCount(v12, *(a1 + 48), 1);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v11) ^ ((0x9DDFEA08EB382D69 * v11) >> 47));
      v14 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      v15 = v6;
      Pass = sub_1AF244F8C(v6, &v15, v9, &v14);
      CFX::RG::RenderGraphBuilder::registerPass(**(a1 + 32), v4, Pass);
    }

    sub_1AF240F04(*(a1 + 56), &Pass);
  }

  return 0;
}

__n128 sub_1AF2451C4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void sub_1AF2451D8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF245210(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder **a4, uint64_t a5, uint64_t *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x288u, 8u, 2);
  return sub_1AF244A98(v10, *a3, a3[1], *a4, a5, *a6);
}

__n128 sub_1AF245284(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  if ((atomic_load_explicit(byte_1ED73A698, memory_order_acquire) & 1) == 0)
  {
    v11 = v6;
    v12 = a3;
    v10 = a2;
    sub_1AFDEF0AC();
    a2 = v10;
    v6 = v11;
    a3 = v12;
  }

  if (byte_1ED73A690)
  {
    v7 = 0x7BF982A9CEFE0066;
  }

  else
  {
    v7 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, v6, 1, v7, 0);
  *this = &unk_1F24E9BA0;
  result = *a4;
  v9 = *(a4 + 32);
  *(this + 440) = *(a4 + 16);
  *(this + 456) = v9;
  *(this + 424) = result;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 59) = 0;
  return result;
}

void sub_1AF245344(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = *(a1 + 432);
  v6 = *(a1 + 440);
  v7 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47))) ^ v6)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ *(a1 + 448));
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v12 = *(a1 + 456);
  if (v12 && v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v14 = v12;
      v15 = *(a1 + 440);
      if (v6)
      {
        do
        {
          v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *v14)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *v14)))) >> 47));
          v14 += v5;
          --v15;
        }

        while (v15);
      }

      ++v12;
    }
  }

  v16 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v11);
  *(a1 + 472) = v16;
  if (!v16)
  {
    *(a1 + 472) = sub_1AF245624(*(a2 + 32), v11);
    v18 = sub_1AF12E2AC(*(a1 + 464), v17);
    v19 = *(a1 + 432) | 1;
    v20 = *(a1 + 440) | 1;
    v21 = *(a1 + 448);
    if ((v21 - 2) < 2)
    {
      v24 = *(a1 + 456);
      if (!v24)
      {
        v24 = malloc_type_calloc(1uLL, 4 * v20 * v19, 0x100004052888210uLL);
        memset_pattern16(v24, &xmmword_1AFE21160, 4 * v20 * v19);
        v21 = *(a1 + 448);
      }

      if (v21 == 3)
      {
        v25 = *(a1 + 472);
        v26 = objc_alloc(MEMORY[0x1E69745B0]);
        v29 = objc_msgSend_device(v18, v27, v28);
        v31 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_values_(v26, v30, v29, v19, v20, v24);
        sub_1AF23355C((v25 + 16), v31);
        v21 = *(a1 + 448);
      }

      if (v21 == 2)
      {
        v32 = *(a1 + 472);
        v33 = objc_alloc(MEMORY[0x1E69745A8]);
        v36 = objc_msgSend_device(v18, v34, v35);
        v38 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_values_(v33, v37, v36, v19, v20, v24);
        sub_1AF23355C((v32 + 16), v38);
      }

      if (!*(a1 + 456))
      {

        free(v24);
      }
    }

    else
    {
      if (v21 == 1)
      {
        v22 = *(a1 + 472);
        v23 = MEMORY[0x1E6974570];
      }

      else
      {
        if (v21)
        {
          return;
        }

        v22 = *(a1 + 472);
        v23 = MEMORY[0x1E6974568];
      }

      v39 = [v23 alloc];
      v42 = objc_msgSend_device(v18, v40, v41);
      v44 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v39, v43, v42, v19, v20);

      sub_1AF23355C((v22 + 16), v44);
    }
  }
}

void *sub_1AF245624(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2456AC(CFX::RG::Temporal *a1, uint64_t a2, id *a3)
{
  v6 = *(a2 + 24);
  v7 = *(a1 + 60);
  v8 = CFX::RG::Temporal::currentFrame(a1);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 61);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v13 = *(*(a1 + 59) + 16);
  v14 = CFX::RG::RendererPassArguments::commandBuffer(a3);

  return MEMORY[0x1EEE66B58](v13, sel_encodeToCommandBuffer_sourceTexture_destinationTexture_, v14);
}

void sub_1AF245754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    sub_1AF2456AC(a1, a2, (a4 + 8));
  }

  else if (a3 == 1)
  {
    sub_1AF245344(a1, a2);
  }
}

CFX::RG::Pass *sub_1AF245774(CFX::RG *a1, CFX::RG::Resource *a2, uint64_t a3)
{
  v5 = sub_1AF245884(a1, a3);
  v6 = CFX::RG::Resource::constTextureDesc(a2);
  v7 = v6[1];
  v20[0] = *v6;
  v20[1] = v7;
  v8 = v6[5];
  v10 = v6[2];
  v9 = v6[3];
  v21 = v6[4];
  v22 = v8;
  v20[2] = v10;
  v20[3] = v9;
  v11 = v6[9];
  v13 = v6[6];
  v12 = v6[7];
  v25 = v6[8];
  v26 = v11;
  v23 = v13;
  v24 = v12;
  CFX::RG::TextureDescriptorReference::withSampleCount(v19, v20, 1);
  v15 = CFX::RG::copyIfNeeded(a1, a2, 0, v19, "MPSMorphologicalPass color input resolve", v14);
  v5[60] = v15;
  v16 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(v5, v15, v16);
  if ((v22 & 1) == 0)
  {
    LOBYTE(v22) = 1;
  }

  *(&v21 + 1) = 2;
  CFX::RG::TextureDescriptorReference::withSampleCount(v19, v20, 1);
  v17 = sub_1AF233CC8(a1, "color", v19);
  v5[61] = v17;
  CFX::RG::Pass::writeTo(v5, v17);
  return v5;
}

uint64_t sub_1AF245884(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1AF2459C4(v7[0], v4, v7, a2);
  v7[0] = v5;
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF2458DC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF245914(uint64_t a1)
{
  *a1 = &unk_1F24E9BD8;

  return a1;
}

void sub_1AF24595C(uint64_t a1)
{
  *a1 = &unk_1F24E9BD8;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF2459C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x1F0u, 8u, 2);
  *&result = sub_1AF245284(v6, *a3, a3[1], a4).n128_u64[0];
  return result;
}

uint64_t sub_1AF245A14(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A6B8, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = a3;
    sub_1AFDEF0F8();
    a2 = v15;
    a3 = v16;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A6B0, 0);
  *a1 = &unk_1F24E9BF8;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v8 = *(a5 + 136);
  v17[6] = *(a5 + 120);
  v17[7] = v8;
  v9 = *(a5 + 168);
  v17[8] = *(a5 + 152);
  v17[9] = v9;
  v10 = *(a5 + 72);
  v17[2] = *(a5 + 56);
  v17[3] = v10;
  v11 = *(a5 + 104);
  v17[4] = *(a5 + 88);
  v17[5] = v11;
  v12 = *(a5 + 40);
  v17[0] = *(a5 + 24);
  v17[1] = v12;
  v13 = sub_1AF233CC8(a4, "MB-Color", v17);
  *(a1 + 480) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x100000000, 0);
  return a1;
}

void sub_1AF245B2C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  prof_beginFlame("Final Blur", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 32);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 480));
  v6 = *(v5 + 12);
  v7 = *(v5 + 12) << 32;
  v8 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ (v7 >> 56))))) >> 47));
  v11 = CFX::CrossFrameResourceManager::get(a2[4], v10);
  *(a1 + 448) = v11;
  if (!v11)
  {
    *(a1 + 448) = sub_1AF245D2C(a2[4], v10);
    v13 = sub_1AF12E2AC(*(a1 + 432), v12);
    v16 = objc_msgSend_resourceManager(v13, v14, v15);
    v17 = *(a1 + 448);
    v18 = sub_1AFDE868C(v16);
    *&v30 = objc_msgSend_frameworkLibrary(v18, v19, v20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    *(&v30 + 1) = v6;
    BYTE8(v35) = HIBYTE(v7);
    *&v42 = @"vfx_draw_fullscreen_triangle_VR_pos_uv_uvNorm_vertex";
    *(&v42 + 1) = @"vfx_motionblur_blur";
    v22 = objc_msgSend_newRenderPipelineStateWithDesc_(v16, v21, v29);
    sub_1AF23355C((v17 + 16), v22);
    v23 = *(a1 + 448);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    v24 = sub_1AFDE868C(v16);
    *&v30 = objc_msgSend_frameworkLibrary(v24, v25, v26);
    *(&v30 + 1) = v6;
    BYTE8(v35) = HIBYTE(v7);
    *&v42 = @"vfx_draw_fullscreen_triangle_VR_pos_uv_uvNorm_vertex";
    *(&v42 + 1) = @"vfx_motionblur_blur_resize";
    v28 = objc_msgSend_newRenderPipelineStateWithDesc_(v16, v27, v29);
    sub_1AF23355C((v23 + 24), v28);
  }

  prof_endFlame();
}

uint64_t sub_1AF245D2C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF245DC0(uint64_t a1, uint64_t **a2)
{
  prof_beginFlame("Final Blur", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 67);
  v5 = sub_1AF12E2AC(*(a1 + 432), v4);
  v8 = objc_msgSend_renderEncoder(v5, v6, v7);
  v10 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 456)) + 4);
  v11 = *(a1 + 448);
  if (__PAIR128__(v10 >> 16, v10) == __PAIR128__(*(v11 + 34), *(v11 + 32)))
  {
    v12 = 16;
  }

  else
  {
    v12 = 24;
  }

  v13 = sub_1AF2338B0(v11 + v12, v9);
  v16 = objc_msgSend_state(v13, v14, v15);
  v18 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v17, v16);
  v19 = a2[3];
  v20 = *(a1 + 456);
  v21 = CFX::RG::Temporal::currentFrame(v18);
  Texture = CFX::GPUResourceManager::getTexture(v19, v20, v21);
  v23 = a2[3];
  v24 = *(a1 + 464);
  v25 = CFX::RG::Temporal::currentFrame(Texture);
  v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
  v27 = a2[3];
  v28 = *(a1 + 472);
  v29 = CFX::RG::Temporal::currentFrame(v26);
  v30 = CFX::GPUResourceManager::getTexture(v27, v28, v29);
  sub_1AF1F8FCC(v8, v26, 0);
  sub_1AF1F8FCC(v8, v30, 1);
  sub_1AF1F8FCC(v8, Texture, 2);
  v32 = xmmword_1AFE20670;
  sub_1AF176E98(v8, &v32, 0x10uLL, 0);
  sub_1AF2010C8(v8, v31);
  *(*(a1 + 448) + 32) = v10;
  prof_endFlame();
}

void sub_1AF245F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  if ((atomic_load_explicit(byte_1ED73A6C0, memory_order_acquire) & 1) == 0)
  {
    v8 = a2;
    v9 = a3;
    sub_1AFDEF154();
    a2 = v8;
    a3 = v9;
  }

  if (byte_1ED73A6A0)
  {
    v7 = 0xF4EC03A93B2E1651;
  }

  else
  {
    v7 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v7, 0);
  *a1 = &unk_1F24E9C50;
  *(a1 + 440) = a5[1].n128_u8[0];
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
}

void sub_1AF246020(CFX::RG::Pass *a1, uint64_t a2)
{
  prof_beginFlame("Neighbor max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 130);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  *(a1 + 56) = v5;
  if (!v5)
  {
    *(a1 + 56) = sub_1AF246108(*(a2 + 32), v4);
    v7 = sub_1AF12E2AC(*(a1 + 54), v6);
    v10 = objc_msgSend_resourceManager(v7, v8, v9);
    v11 = *(a1 + 56);
    v13 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"vfx_motionblur_neighbormax_x");
    sub_1AF23355C((v11 + 16), v13);
    v14 = *(a1 + 56);
    v16 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v15, @"vfx_motionblur_neighbormax_y");
    sub_1AF23355C((v14 + 24), v16);
  }

  prof_endFlame();
}

void *sub_1AF246108(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF246190(uint64_t a1, uint64_t a2, id *a3)
{
  prof_beginFlame("Neighbor max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 147);
  v6 = *(a2 + 24);
  v7 = *(a1 + 456);
  v9 = CFX::RG::Temporal::currentFrame(v8);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v9);
  v11 = *(a2 + 24);
  v12 = *(a1 + 464);
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v14 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  v15 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v15, v16, Texture, 0);
  v17 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v17, v18, v14, 1);
  v20 = 16;
  if (*(a1 + 440))
  {
    v20 = 24;
  }

  v21 = sub_1AF1403B4(*(a1 + 448) + v20, v19);
  v22 = sub_1AFDE323C(v21);
  v23 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setComputePipelineState_(v23, v24, v22);
  v25 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid_(v25, v26, v14);

  prof_endFlame();
}

uint64_t sub_1AF2462B8(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, __n128 *a5)
{
  if ((atomic_load_explicit(byte_1ED73A6C8, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = a3;
    sub_1AFDEF1A0();
    a2 = v13;
    a3 = v14;
  }

  if (byte_1ED73A6A8)
  {
    v8 = 0xE171746C2A666EDCLL;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E9CA8;
  *(a1 + 440) = a5[1].n128_u32[0];
  *(a1 + 464) = 0;
  v10 = CFX::RG::ResourceIdentifier::finalColor(v9);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v16, v10, a5[1].n128_f32[0]);
  if ((BYTE1(v17) & 1) == 0)
  {
    BYTE1(v17) = 1;
  }

  LOBYTE(v17) = 6;
  *(&v17 + 1) = 115;
  LOBYTE(v18) = 1;
  v15[6] = v22;
  v15[7] = v23;
  v15[8] = v24;
  v15[9] = v25;
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v15[5] = v21;
  v15[0] = v16;
  v15[1] = v17;
  v11 = sub_1AF233CC8(a4, "MB-TileMax", v15);
  *(a1 + 456) = v11;
  CFX::RG::Pass::writeTo(a1, v11);
  return a1;
}

void sub_1AF246408(CFX::RG::Pass *a1, uint64_t a2)
{
  prof_beginFlame("Motion blur tile max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 191);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  *(a1 + 56) = v5;
  if (!v5)
  {
    *(a1 + 56) = sub_1AF2464CC(*(a2 + 32), v4);
    v7 = sub_1AF12E2AC(*(a1 + 54), v6);
    v10 = objc_msgSend_resourceManager(v7, v8, v9);
    v11 = *(a1 + 56);
    v13 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"vfx_motionblur_tilemax");
    sub_1AF23355C((v11 + 16), v13);
  }

  prof_endFlame();
}

void *sub_1AF2464CC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF246554(void *a1, uint64_t a2, id *a3)
{
  prof_beginFlame("Motion blur tile max", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/MotionBlurPass.mm", 207);
  v6 = *(a2 + 24);
  v7 = a1[58];
  v9 = CFX::RG::Temporal::currentFrame(v8);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v9);
  v11 = *(a2 + 24);
  v12 = a1[57];
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v14 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  v15 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v15, v16, Texture, 0);
  v17 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setTexture_atIndex_(v17, v18, v14, 1);
  v20 = sub_1AF1403B4(a1[56] + 16, v19);
  v21 = sub_1AFDE323C(v20);
  v22 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_setComputePipelineState_(v22, v23, v21);
  v24 = CFX::RG::ComputePassArguments::encoder(a3);
  objc_msgSend_dispatchOnTexture2D_(v24, v25, v14);
  v28 = 1;
  v29 = v14;
  while (v28 < objc_msgSend_mipmapLevelCount(v14, v26, v27))
  {
    v32 = objc_msgSend_pixelFormat(v14, v30, v31);
    v35 = objc_msgSend_textureType(v14, v33, v34);
    v37 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v14, v36, v32, v35, v28, 1, 0, 1);
    v38 = CFX::RG::ComputePassArguments::encoder(a3);
    objc_msgSend_setTexture_atIndex_(v38, v39, v29, 0);
    v40 = CFX::RG::ComputePassArguments::encoder(a3);
    objc_msgSend_setTexture_atIndex_(v40, v41, v37, 1);
    v42 = CFX::RG::ComputePassArguments::encoder(a3);
    objc_msgSend_dispatchOnTexture2D_(v42, v43, v14);

    ++v28;
    v29 = v37;
  }

  prof_endFlame();
}

CFX::RG::Temporal *sub_1AF246708(CFX::RG::RenderGraphBuilder *a1, unint64_t *a2)
{
  v4 = CFX::RG::Resource::constTextureDesc(a2[2]);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v37, v4, 1);
  v5 = sub_1AF233CC8(a1, "VELOCITY COPY", &v37);
  *&v56 = a2[2];
  DWORD2(v56) = 0;
  v57 = v5;
  v58 = 0x100000000;
  CFX::RG::makeCopyPass(a1, "Copy velocity input", &v56);
  v6 = CFX::RG::Resource::constTextureDesc(a2[1]);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v37, v6, 1);
  v7 = sub_1AF233CC8(a1, "COLOR COPY", &v37);
  *&v53 = a2[1];
  DWORD2(v53) = 0;
  v54 = v7;
  v55 = 0x100000000;
  CFX::RG::makeCopyPass(a1, "Copy color input", &v53);
  v8 = *a2;
  v37.n128_u64[0] = "MOTION_BLUR_TILE_MAX_BLUR";
  v37.n128_u64[1] = v8;
  *v38 = 1056964608;
  v9 = sub_1AF246A5C(a1, a1, &v37);
  *(v9 + 58) = v5;
  v10 = CFX::RG::Temporal::currentFrame(v9);
  CFX::RG::Pass::readFrom(v9, v5, v10);
  v11 = CFX::RG::Resource::constTextureDesc(a2[1]);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v43, v11, 1);
  LODWORD(v52) = 1015021568;
  *(&v44 + 1) = 115;
  LOBYTE(v45) = 1;
  *&v38[80] = v49;
  *&v38[96] = v50;
  *&v38[112] = v51;
  *&v38[128] = v52;
  *&v38[16] = v45;
  *&v38[32] = v46;
  *&v38[48] = v47;
  *&v38[64] = v48;
  v37 = v43;
  *v38 = v44;
  v12 = sub_1AF233CC8(a1, "MB-TileMaxN-X", &v37);
  v13 = *a2;
  v41.n128_u64[0] = "MOTION_BLUR_NEIGHBOR_MAX";
  v41.n128_u64[1] = v13;
  v42 = 0;
  v14 = sub_1AF246AB4(a1, a1, &v41);
  v15 = *(v9 + 57);
  *(v14 + 57) = v15;
  v16 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(v14, v15, v16);
  *(v14 + 58) = v12;
  CFX::RG::Pass::writeTo(v14, v12);
  v17 = *a2;
  v37.n128_u64[0] = "MOTION_BLUR_NEIGHBOR_MAX";
  v37.n128_u64[1] = v17;
  v38[0] = 1;
  v18 = sub_1AF246AB4(a1, a1, &v37);
  *(v18 + 57) = v12;
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(v18, v12, v19);
  *&v38[80] = v49;
  *&v38[96] = v50;
  *&v38[112] = v51;
  *&v38[128] = v52;
  *&v38[16] = v45;
  *&v38[32] = v46;
  *&v38[48] = v47;
  *&v38[64] = v48;
  v37 = v43;
  *v38 = v44;
  v20 = sub_1AF233CC8(a1, "MB-TileMaxN-XY", &v37);
  *(v18 + 58) = v20;
  CFX::RG::Pass::writeTo(v18, v20);
  v21 = *a2;
  v37.n128_u64[0] = "MOTION_BLUR_FINAL_BLUR";
  v37.n128_u64[1] = v21;
  *v38 = 0;
  v22 = CFX::RG::Resource::constTextureDesc(v7);
  v23 = *v22;
  *&v38[24] = v22[1];
  *&v38[8] = v23;
  v24 = v22[2];
  v25 = v22[3];
  v26 = v22[4];
  *&v38[88] = v22[5];
  *&v38[72] = v26;
  *&v38[56] = v25;
  *&v38[40] = v24;
  v27 = v22[6];
  v28 = v22[7];
  v29 = v22[8];
  v39 = v22[9];
  *&v38[136] = v29;
  *&v38[120] = v28;
  *&v38[104] = v27;
  v40 = a2[3];
  v30 = sub_1AF246B0C(a1, a1, &v37);
  *(v30 + 57) = v7;
  v31 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(v30, v7, v31);
  *(v30 + 58) = v5;
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(v30, v5, v33);
  *(v30 + 59) = v20;
  v35 = CFX::RG::Temporal::currentFrame(v34);
  CFX::RG::Pass::readFrom(v30, v20, v35);
  return v30;
}

uint64_t sub_1AF246A5C(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, __n128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF246E48(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF246AB4(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF246EA8(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

uint64_t sub_1AF246B0C(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF246EF8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF246B68(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF246BA4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF246BE0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246C18(uint64_t a1)
{
  *a1 = &unk_1F24E9D00;

  return a1;
}

void sub_1AF246C68(uint64_t a1)
{
  *a1 = &unk_1F24E9D00;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246CD8(uint64_t a1)
{
  *a1 = &unk_1F24E9D20;

  return a1;
}

void sub_1AF246D28(uint64_t a1)
{
  *a1 = &unk_1F24E9D20;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246D98(uint64_t a1)
{
  *a1 = &unk_1F24E9D40;

  return a1;
}

void sub_1AF246DE0(uint64_t a1)
{
  *a1 = &unk_1F24E9D40;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF246E48(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, __n128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF2462B8(v8, *a3, a3[1], a4, a5);
}

void sub_1AF246EA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 *a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v7 = sub_1AF23498C(v9, 0x1D8u, 8u, 2);
  sub_1AF245F7C(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF246EF8(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E8u, 8u, 2);
  return sub_1AF245A14(v8, *a3, a3[1], a4, a5);
}

void sub_1AF246F58(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  if ((atomic_load_explicit(byte_1ED73A6D8, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    v8 = a3;
    sub_1AFDEF1EC();
    a2 = v7;
    a3 = v8;
  }

  if (byte_1ED73A6D0)
  {
    v6 = 0x7E14DD3412D33777;
  }

  else
  {
    v6 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v6, 0);
  *a1 = &unk_1F24E9D60;
  *(a1 + 448) = a4[1].n128_u16[4];
}

void sub_1AF246FF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Overlay", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/OverlayPass.mm", 19, v4 | 0x300000000);
  if (*(a1 + 448) == 1)
  {
    v6 = sub_1AF12EE9C(*(a1 + 432), 0);
    if (v6)
    {
      sub_1AF1012EC();
      sub_1AF0FCF54(v6);
    }
  }

  if ((*(a1 + 448) & 1) != 0 || *(a1 + 449) == 1)
  {
    v7 = sub_1AF12F434(*(a1 + 432), v5);
    objc_msgSend__endImGuiFrameAndRender(v7, v8, v9);
  }

  prof_endFlame();
}

uint64_t sub_1AF2470B4(uint64_t *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a2[1].n128_u8[8] & 1) == 0 && a2[1].n128_u8[9] != 1)
  {
    return 0;
  }

  v6 = sub_1AF247134(a1, a2);
  CFX::RG::Pass::renderTo(v6, a3, 0x100000001, 0);
  if (a4)
  {
    CFX::RG::Pass::renderTo(v6, a4, 0x200000001, -1);
  }

  return v6;
}

uint64_t sub_1AF247134(uint64_t *a1, __n128 *a2)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1AF2471C8(v7[0], v4, v7, a2);
  v7[0] = v5;
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF24718C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2471C8(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 *a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v6 = sub_1AF23498C(v7, 0x1C8u, 8u, 2);
  sub_1AF246F58(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF247218(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v8 = *a5;
  v17[0].n128_u64[0] = "PathTracerPass";
  v17[0].n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A6E8, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = a3;
    sub_1AFDEF238();
    a2 = v15;
    a3 = v16;
  }

  if (byte_1ED73A6E0)
  {
    v9 = 0x3A712055557F5840;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v17, v9, 0);
  *a1 = &unk_1F24E9DB8;
  *(a1 + 440) = *a5;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::ResourceReference::ResourceReference(v17, *(a1 + 448));
  *(a1 + 472) = sub_1AF24736C(v10, "Color", v17);
  sub_1AF247440(a1, a4);
  v11 = *(*(a1 + 464) + 16);
  v13 = CFX::RG::Temporal::previousFrame(v12);
  CFX::RG::Pass::readFrom(a1, v11, v13);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 464) + 16));
  return a1;
}

CFX::RG::Resource *sub_1AF24736C(uint64_t *a1, uint64_t a2, CFX::RG::ResourceReference *this)
{
  v16 = a2;
  v15 = CFX::RG::ResourceReference::reference(this);
  v5 = CFX::RG::ResourceIdentifier::hash(&v15);
  v6 = (*(a1 + 79) - 1) & v5;
  v7 = *(a1[38] + 2 * v6);
  if (v7 < 2)
  {
    goto LABEL_5;
  }

  while ((v7 & 2) == 0 || v5 != *(a1[36] + 8 * v6))
  {
    ++v6;
    v8 = v7 > 3;
    v7 >>= 1;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v14 = a1[37];
  if (v14)
  {
    return *(v14 + 24 * v6 + 8);
  }

LABEL_5:
  v9 = *a1;
  v10 = a1[1];
  LOBYTE(v15) = 1;
  sub_1AF248404(v9, v10, &v16, this, &v15);
  v12 = v11;
  CFX::RG::RenderGraphBuilder::appendResource(a1, v11);
  return v12;
}

void sub_1AF247440(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, *(a1 + 472));
  v5 = CFX::RG::Pass::hash(a1);
  v6 = *(v4 + 4);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v5)))) >> 47));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v6 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v6 >> 16))));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ *(v4 + 6));
  v11 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47)));
  *(a1 + 464) = v11;
  if (!v11)
  {
    operator new();
  }
}

void sub_1AF24760C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF247440(a1, a2);

  sub_1AF24764C(a1, a2);
}

void sub_1AF24764C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 432), v7);
  v10 = sub_1AF1D0140(v8, v9);
  v12 = sub_1AF12F10C(*(a1 + 432), v11);
  if (v12)
  {
    v14 = sub_1AF1BB260(v12, v13);
    if (v14)
    {
      v15 = v14;
      v17 = sub_1AF1D005C(v8, 0);
      if (v17)
      {
        objc_msgSend_textureForMaterialProperty_(v4, v16, v17);
      }

      v18 = sub_1AF1D0008(v8, 0);
      v20 = objc_msgSend_textureForMaterialProperty_(v4, v19, v18);
      v22 = (v20 | sub_1AF1660D8(v18, v21)) != 0;
      v24 = sub_1AF1D0398(v8, v23);
      v26 = v24 != sub_1AF1D02FC(v8, v25);
      v28 = sub_1AF15CE6C(v15, v27);
      v41 = sub_1AF1449E0(v10);
      v29 = sub_1AF1449F0(v10) != 0;
      v31 = sub_1AF12DDCC(*(a1 + 432), v30);
      v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v31) ^ ((0x9DDFEA08EB382D69 * v31) >> 47));
      v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ v22)));
      v34 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ (v20 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ (v20 != 0))));
      v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ v26)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ v26)));
      v36 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ v17)));
      v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47))) ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47))) ^ v41)));
      v38 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47))) ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47))) ^ v29)));
      v39 = 0x9DDFEA08EB382D69 * (v38 ^ (v38 >> 47));
      v40 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v28)))) ^ ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v28)))) >> 47)));
      *(a1 + 456) = v40;
      if (!v40)
      {
        operator new();
      }
    }
  }
}

void sub_1AF247A74(uint64_t *a1, uint64_t a2, id *a3)
{
  v6 = sub_1AF12E2AC(a1[54], a2);
  v7 = CFX::RG::ComputePassArguments::encoder(a3);
  if (!*(a1[57] + 16))
  {
    return;
  }

  v9 = v7;
  v10 = sub_1AF12DDCC(a1[54], v8);
  v12 = sub_1AF12F10C(a1[54], v11);
  if (!v12)
  {
    return;
  }

  v14 = sub_1AF1BB260(v12, v13);
  if (!v14)
  {
    return;
  }

  v16 = v14;
  v17 = sub_1AF12F10C(a1[54], v15);
  sub_1AF27F12C(v17, v155);
  v18 = sub_1AF13050C(a1[54], 1);
  v151 = v18[1];
  v152 = *v18;
  v150 = v18[2];
  v153 = v18[3];
  v154 = 0uLL;
  v154 = sub_1AF12FCE8(a1[54], 0);
  v20 = sub_1AF1D0140(v10, v19);
  v21 = a1[57];
  v21[2] = v152;
  v21[3] = v151;
  v21[4] = v150;
  v21[5] = v153;
  *(a1[57] + 96) = __invert_f4(*(a1[57] + 32));
  v22 = sub_1AF15E62C(v155, &v154);
  v23 = 0;
  v24 = *(v22 + 1);
  v25 = *(v22 + 2);
  v26 = *(v22 + 3);
  v27 = a1[57];
  v27[10] = *v22;
  v27[11] = v24;
  v27[12] = v25;
  v27[13] = v26;
  v28 = a1[57];
  v29 = v28[10];
  v30 = v28[11];
  v31 = v28[12];
  v32 = v28[13];
  v33 = v28[3];
  v34 = v28[4];
  v35 = v28[5];
  v156[0] = v28[2];
  v156[1] = v33;
  v156[2] = v34;
  v156[3] = v35;
  do
  {
    v157.columns[v23] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(v156[v23])), v30, *&v156[v23], 1), v31, v156[v23], 2), v32, v156[v23], 3);
    ++v23;
  }

  while (v23 != 4);
  *(a1[57] + 224) = __invert_f4(v157);
  *(a1[57] + 424) = sub_1AF15D9E8(v16, v36);
  *(a1[57] + 428) = (sub_1AF15DC58(v16, v37) / 1000.0) * 0.5;
  v38 = sub_1AF1D005C(v10, 0);
  if (v38)
  {
    v40 = sub_1AF166598(v38, v39);
  }

  else
  {
    v40 = 0.0;
  }

  *(a1[57] + 432) = v40;
  v41 = sub_1AF12EF08(a1[54], v39);
  sub_1AF1D04D4(v10, v42, v41);
  *(a1[57] + 464) = v43;
  *(a1[57] + 480) = *sub_1AF1D048C(v10, v44);
  v45 = sub_1AF1D0008(v10, 0);
  v47 = v45;
  if (v45)
  {
    *(a1[57] + 436) = sub_1AF166598(v45, v46);
    v50 = objc_msgSend_textureForMaterialProperty_(v6, v48, v47);
    if (v50)
    {
      objc_msgSend_setTexture_atIndex_(v9, v49, v50, 9);
    }

    else
    {
      v53 = sub_1AF1660D8(v47, v49);
      if (v53)
      {
        *(a1[57] + 448) = *v53;
      }
    }

    v54 = sub_1AF167220(v47, v51);
    if (v54)
    {
      v158 = __invert_f4(*v54);
    }

    else
    {
      v158 = **&MEMORY[0x1E69E9B18];
    }

    *(a1[57] + 352) = v158;
    v52 = 0x9DDFEA08EB382D69 * v50;
  }

  else
  {
    v52 = 0;
    *(a1[57] + 436) = 0;
  }

  v55 = sub_1AF1D005C(v10, 0);
  if (v55)
  {
    v57 = v55;
    v59 = objc_msgSend_textureForMaterialProperty_(v6, v56, v55);
    if (v59)
    {
      objc_msgSend_setTexture_atIndex_(v9, v58, v59, 10);
    }

    if (v47)
    {
      v60 = sub_1AF167220(v57, v58);
    }

    else
    {
      v60 = 0;
    }

    v61 = MEMORY[0x1E69E9B18];
    if (v60)
    {
      v61 = v60;
    }

    v62 = *v61;
    v63 = v61[1];
    v64 = v61[2];
    v65 = v61[3];
    v66 = a1[57];
    v66[18] = v62;
    v66[19] = v63;
    v66[20] = v64;
    v66[21] = v65;
  }

  else
  {
    v59 = 0;
  }

  v67 = a1[57];
  v68 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47))) >> 47));
  v69 = 0x9DDFEA08EB382D69 * (v59 ^ v68);
  v70 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v68 ^ (v69 >> 47) ^ v69)) ^ ((0x9DDFEA08EB382D69 * (v68 ^ (v69 >> 47) ^ v69)) >> 47));
  v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ COERCE_UNSIGNED_INT64(*&v153))) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ COERCE_UNSIGNED_INT64(*&v153))));
  v72 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v71 ^ (v71 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v71 ^ (v71 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v153 + 1)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v71 ^ (v71 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v153 + 1)))));
  v73 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v72 ^ (v72 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v72 ^ (v72 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v153 + 2)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v72 ^ (v72 >> 47))) ^ COERCE_UNSIGNED_INT64(*(&v153 + 2)))));
  v74 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v73 ^ (v73 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v73 ^ (v73 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 424)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v73 ^ (v73 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 424)))));
  v75 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v74 ^ (v74 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v74 ^ (v74 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 428)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v74 ^ (v74 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 428)))));
  v76 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v75 ^ (v75 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v75 ^ (v75 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 432)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v75 ^ (v75 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 432)))));
  v77 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v76 ^ (v76 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v76 ^ (v76 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 436)))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v76 ^ (v76 >> 47))) ^ COERCE_UNSIGNED_INT64(*(v67 + 436)))));
  v78 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v77 ^ (v77 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v77 ^ (v77 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v67 + 464))))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v77 ^ (v77 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v67 + 464))))));
  v79 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ (v78 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ (v78 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(v67 + 464)))))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ (v78 >> 47))) ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(v67 + 464)))))));
  v80 = 0x9DDFEA08EB382D69 * (v79 ^ (v79 >> 47));
  v81 = 0x9DDFEA08EB382D69 * (v80 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v67 + 472))));
  v82 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81)) ^ ((0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81)) >> 47));
  v83 = 0x9DDFEA08EB382D69 * (v82 ^ ((0x9DDFEA08EB382D69 * (v82 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v67 + 480))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v82 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v67 + 480))))));
  v84 = 0x9DDFEA08EB382D69 * (v83 ^ (v83 >> 47));
  v85 = 0x9DDFEA08EB382D69 * (v84 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(v67 + 480)))));
  v86 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v84 ^ (v85 >> 47) ^ v85)) ^ ((0x9DDFEA08EB382D69 * (v84 ^ (v85 >> 47) ^ v85)) >> 47));
  v87 = 0x9DDFEA08EB382D69 * (v86 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(v67 + 488))));
  v88 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v86 ^ (v87 >> 47) ^ v87)) ^ ((0x9DDFEA08EB382D69 * (v86 ^ (v87 >> 47) ^ v87)) >> 47));
  v89 = 0x9DDFEA08EB382D69 * (v88 ^ COERCE_UNSIGNED_INT64(*(v67 + 288)));
  v90 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v88 ^ (v89 >> 47) ^ v89)) ^ ((0x9DDFEA08EB382D69 * (v88 ^ (v89 >> 47) ^ v89)) >> 47));
  v91 = 0x9DDFEA08EB382D69 * (v90 ^ COERCE_UNSIGNED_INT64(*(v67 + 308)));
  v92 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v90 ^ (v91 >> 47) ^ v91)) ^ ((0x9DDFEA08EB382D69 * (v90 ^ (v91 >> 47) ^ v91)) >> 47));
  v93 = 0x9DDFEA08EB382D69 * (v92 ^ COERCE_UNSIGNED_INT64(*(v67 + 328)));
  v94 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v92 ^ (v93 >> 47) ^ v93)) ^ ((0x9DDFEA08EB382D69 * (v92 ^ (v93 >> 47) ^ v93)) >> 47));
  v95 = 0x9DDFEA08EB382D69 * (v94 ^ COERCE_UNSIGNED_INT64(*(v67 + 352)));
  v96 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v94 ^ (v95 >> 47) ^ v95)) ^ ((0x9DDFEA08EB382D69 * (v94 ^ (v95 >> 47) ^ v95)) >> 47));
  v97 = 0x9DDFEA08EB382D69 * (v96 ^ COERCE_UNSIGNED_INT64(*(v67 + 372)));
  v98 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v96 ^ (v97 >> 47) ^ v97)) ^ ((0x9DDFEA08EB382D69 * (v96 ^ (v97 >> 47) ^ v97)) >> 47));
  v99 = 0x9DDFEA08EB382D69 * (v98 ^ COERCE_UNSIGNED_INT64(*(v67 + 392)));
  v100 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) ^ ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) >> 47));
  isPaused = sub_1AF12F434(a1[54], v69);
  v102 = a1[57];
  if (v100 != *(v102 + 496))
  {
LABEL_32:
    *(v102 + 416) = 0;
    goto LABEL_34;
  }

  v103 = isPaused;
  isPaused = sub_1AF144828(v20);
  if (isPaused)
  {
    v106 = objc_msgSend_world(v103, v104, v105);
    v109 = objc_msgSend_clock(v106, v107, v108);
    isPaused = objc_msgSend_isPaused(v109, v110, v111);
    v102 = a1[57];
    if (isPaused)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v102 = a1[57];
LABEL_34:
  v112 = 0;
  *(v102 + 496) = v100;
  do
  {
    v113 = a1[v112 + 60];
    if (v113)
    {
      v114 = *(a2 + 24);
      v115 = CFX::RG::Temporal::currentFrame(isPaused);
      Texture = CFX::GPUResourceManager::getTexture(v114, v113, v115);
      isPaused = objc_msgSend_setTexture_atIndex_(v9, v117, Texture, v112);
    }

    ++v112;
  }

  while (v112 != 9);
  v118 = *(a2 + 24);
  v119 = *(a1[58] + 16);
  v120 = CFX::RG::Temporal::currentFrame(isPaused);
  v121 = CFX::GPUResourceManager::getTexture(v118, v119, v120);
  v122 = *(a2 + 24);
  v123 = *(a1[58] + 16);
  v124 = CFX::RG::Temporal::previousFrame(v121);
  v125 = CFX::GPUResourceManager::getTexture(v122, v123, v124);
  objc_msgSend_setTexture_atIndex_(v9, v126, v121, 11);
  objc_msgSend_setTexture_atIndex_(v9, v127, v125, 12);
  sub_1AF144838(v20, v9);
  v128 = sub_1AF1448D8(v20);
  objc_msgSend_setBuffer_offset_atIndex_(v9, v129, v128, 0, 0);
  v130 = sub_1AF1448D0(v20);
  objc_msgSend_setAccelerationStructure_atBufferIndex_(v9, v131, v130, 1);
  if (sub_1AF1449E0(v20))
  {
    v132 = sub_1AF1448E0(v20);
    objc_msgSend_setBuffer_offset_atIndex_(v9, v133, v132, 0, 2);
  }

  if (sub_1AF1449F0(v20))
  {
    v135 = sub_1AF1403B4(a1[57] + 16, v134);
    v136 = sub_1AFDE323C(v135);
    v137 = sub_1AF144918(v20, v136);
    objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v9, v138, v137, 3);
  }

  v139 = sub_1AF1448E8(v20);
  v142 = sub_1AF144A00(v20, v140, v141);
  objc_msgSend_useResources_count_usage_(v9, v143, v139, v142, 1);
  objc_msgSend_setBytes_length_atIndex_(v9, v144, a1[57] + 32, 464, 8);
  v146 = sub_1AF1403B4(a1[57] + 16, v145);
  v147 = sub_1AFDE323C(v146);
  objc_msgSend_dispatch_onTexture2D_(v9, v148, v147, v121);
  *(a1[57] + 416) = vadd_s32(*(a1[57] + 416), 0x100000001);
  sub_1AF12ED38(a1[54], v149);
}

double sub_1AF248314(CFX::RG::Temporal *a1, unint64_t a2, unsigned int a3)
{
  *(a1 + a3 + 60) = a2;
  v5 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v5);
}

uint64_t sub_1AF248370(uint64_t *a1, CFX::RG::RenderGraphContext *a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2485F0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF2483CC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF248404(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4, char *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = sub_1AF23498C(v17, 0xE0u, 8u, 2);
  v9 = *a3;
  v10 = a4[7];
  v16[6] = a4[6];
  v16[7] = v10;
  v11 = a4[9];
  v16[8] = a4[8];
  v16[9] = v11;
  v12 = a4[3];
  v16[2] = a4[2];
  v16[3] = v12;
  v13 = a4[5];
  v16[4] = a4[4];
  v16[5] = v13;
  v14 = a4[1];
  v16[0] = *a4;
  v16[1] = v14;
  *&result = CFX::RG::Resource::Resource(v8, v9, v16, *a5, 1).n128_u64[0];
  return result;
}

uint64_t sub_1AF248490(uint64_t a1)
{
  *a1 = &unk_1F24E9E10;

  return a1;
}

void sub_1AF2484D8(uint64_t a1)
{
  *a1 = &unk_1F24E9E10;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF248540(uint64_t a1)
{
  *a1 = &unk_1F24E9E30;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF248588(uint64_t a1)
{
  *a1 = &unk_1F24E9E30;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2485F0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x228u, 8u, 2);
  return sub_1AF247218(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF248650(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, CFX::CrossFrameResourceManager **a5, unint64_t *a6)
{
  v12 = *a6;
  v87.n128_u64[0] = "RayTracerPass";
  v87.n128_u64[1] = v12;
  if ((atomic_load_explicit(byte_1ED73A6F8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF284();
  }

  if (byte_1ED73A6F0)
  {
    v13 = 0x649EF6CA24A2DFE3;
  }

  else
  {
    v13 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v87, v13, 0);
  *a1 = &unk_1F24E9E50;
  *(a1 + 440) = *a6;
  v14 = a1 + 456;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v16 = sub_1AF12E2AC(*(a1 + 432), v15);
  *(a1 + 472) = v16;
  *(a1 + 480) = objc_msgSend_resourceManager(v16, v17, v18);
  v20 = sub_1AF12DDCC(*(a1 + 432), v19);
  v22 = sub_1AF1D0140(v20, v21);
  v24 = sub_1AF12F10C(*(a1 + 432), v23);
  if (v24)
  {
    v26 = sub_1AF1BB260(v24, v25);
    if (v26)
    {
      v84 = a5;
      v27 = CFX::RG::Pass::hash(a1);
      v28 = CFX::CrossFrameResourceManager::get(a5[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v20)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v20)))) ^ ((0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v20)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v20)))) >> 47)));
      *v14 = v28;
      if (!v28)
      {
        operator new();
      }

      v95 = 0;
      v29 = sub_1AF1D005C(v20, 0);
      v31 = sub_1AF1D0008(v20, 0);
      if (v31)
      {
        HIBYTE(v95) = objc_msgSend_textureForMaterialProperty_(*(a1 + 472), v30, v31) != 0;
      }

      if (v29)
      {
        LOBYTE(v95) = objc_msgSend_textureForMaterialProperty_(*(a1 + 472), v30, v29) != 0;
      }

      v32 = sub_1AF15CE6C(v26, v30);
      v94 = v32;
      v33 = sub_1AF1449E0(v22);
      v34 = v22;
      v35 = a4;
      v93 = v33;
      v83 = v34;
      v36 = sub_1AF1449F0(v34);
      v92 = v36 != 0;
      v39 = objc_msgSend_rayMap(*(a1 + 472), v37, v38);
      v91 = v39 != 0;
      v42 = objc_msgSend_rayMap(*(a1 + 472), v40, v41);
      objc_msgSend_zOrigin(v42, v43, v44);
      v46 = v45;
      v90 = v45;
      v49 = objc_msgSend_rayMap(*(a1 + 472), v47, v48);
      objc_msgSend_scale(v49, v50, v51);
      v89 = v52;
      v53 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v31) ^ ((0x9DDFEA08EB382D69 * v31) >> 47));
      v54 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v53 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v53 >> 47))) ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v53 >> 47))) ^ v29)));
      v55 = 0x9DDFEA08EB382D69 * (v54 ^ (v54 >> 47));
      v56 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ ((0x9DDFEA08EB382D69 * (v55 ^ v33)) >> 47) ^ (0x9DDFEA08EB382D69 * (v55 ^ v33)))) ^ ((0x9DDFEA08EB382D69 * (v55 ^ ((0x9DDFEA08EB382D69 * (v55 ^ v33)) >> 47) ^ (0x9DDFEA08EB382D69 * (v55 ^ v33)))) >> 47));
      v57 = 0x9DDFEA08EB382D69 * (v56 ^ ((0x9DDFEA08EB382D69 * (v56 ^ (v36 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * (v56 ^ (v36 != 0))));
      v58 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ (v57 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ (v57 >> 47))) ^ v32)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ (v57 >> 47))) ^ v32)));
      v59 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v58 ^ (v58 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v58 ^ (v58 >> 47))) ^ (v39 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v58 ^ (v58 >> 47))) ^ (v39 != 0))));
      v60 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v59 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v59 >> 47))) ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v59 >> 47))) ^ v46)));
      v61 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ *&v52)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47))) ^ *&v52)));
      v62 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ *(&v52 + 1))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v61 >> 47))) ^ *(&v52 + 1))));
      v63 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ *(&v52 + 2))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v62 >> 47))) ^ *(&v52 + 2))));
      v64 = 0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47));
      v65 = v35;
      if (*(*v14 + 480) != v64)
      {
        *(*v14 + 480) = v64;
        v66 = objc_alloc_init(MEMORY[0x1E6974060]);
        objc_msgSend_setConstantValue_type_withName_(v66, v67, &v95 + 1, 53, @"HasBackground");
        objc_msgSend_setConstantValue_type_withName_(v66, v68, &v95, 53, @"HasIBL");
        objc_msgSend_setConstantValue_type_withName_(v66, v69, &v94, 53, @"HasDOF");
        objc_msgSend_setConstantValue_type_withName_(v66, v70, &v93, 33, @"LightCount");
        objc_msgSend_setConstantValue_type_withName_(v66, v71, &v92, 33, @"raytracing_use_function_constant");
        objc_msgSend_setConstantValue_type_withName_(v66, v72, &v91, 53, @"has_raymap");
        objc_msgSend_setConstantValue_type_withName_(v66, v73, &v90, 3, @"raymap_origin_z");
        objc_msgSend_setConstantValue_type_withName_(v66, v74, &v89, 5, @"raymap_scale");
        v76 = sub_1AF1448F0(v83, v75);
        v78 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_linkedFunctions_(*(a1 + 480), v77, @"vfx_ray_tracer", v66, v76);

        sub_1AF23355C((*v14 + 488), v78);
      }

      CFX::RG::RenderGraphBuilder::findPublishedResource(v65, *(a1 + 448));
      v80 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(v84, v79);
      v87 = *v80;
      v88 = v80[1].n128_u64[0];
      v85 = v87;
      v86 = v88;
      v81 = sub_1AF2373FC(v65, "RAYTRACER OUTPUT", &v85);
      *(a1 + 464) = v81;
      CFX::RG::Pass::writeTo(a1, v81);
    }
  }

  return a1;
}

void sub_1AF248C88(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(*(a1 + 456) + 488))
  {
    v7 = v5;
    v8 = sub_1AF12DDCC(*(a1 + 432), v6);
    v10 = sub_1AF12F10C(*(a1 + 432), v9);
    if (v10)
    {
      if (sub_1AF1BB260(v10, v11))
      {
        v13 = sub_1AF12F10C(*(a1 + 432), v12);
        sub_1AF27F12C(v13, v109);
        v108 = sub_1AF12FCE8(*(a1 + 432), 0);
        v15 = sub_1AF1D0140(v8, v14);
        if (objc_msgSend_rayMap(*(a1 + 472), v16, v17))
        {
          v111.columns[0].i64[0] = 0;
          v111.columns[0].i64[1] = &v111;
          v111.columns[1].i64[0] = 0x2020000000;
          v111.columns[1].i32[2] = 1065353216;
          v19 = sub_1AF1CF7E8(v8, v18);
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = sub_1AF24919C;
          v107[3] = &unk_1E7A7D9A8;
          v107[4] = &v111;
          v107[5] = a1;
          v20 = sub_1AF1B94AC(v19, v107);
          if ((v20 & 1) == 0)
          {
            if ((byte_1EB6587C0 & 1) == 0)
            {
              byte_1EB6587C0 = 1;
              v22 = sub_1AF0D5194(v20, v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDEF2D0(v22);
              }
            }

            v23 = *(a1 + 456);
            v23[5] = xmmword_1AFE20150;
            v23[6] = xmmword_1AFE20160;
            v23[7] = xmmword_1AFE20180;
            v23[8] = xmmword_1AFE201A0;
          }

          objc_msgSend_setBytes_length_atIndex_(v7, v21, v111.columns[0].i64[1] + 24, 4, 9);
          _Block_object_dispose(&v111, 8);
        }

        else
        {
          v24 = sub_1AF13050C(*(a1 + 432), 1);
          v25 = v24[1];
          v26 = v24[2];
          v27 = v24[3];
          v28 = *(a1 + 456);
          v28[1] = *v24;
          v28[2] = v25;
          v28[3] = v26;
          v28[4] = v27;
          *(*(a1 + 456) + 80) = __invert_f4(*(*(a1 + 456) + 16));
          v29 = sub_1AF15E62C(v109, &v108);
          v30 = 0;
          v31 = *(v29 + 1);
          v32 = *(v29 + 2);
          v33 = *(v29 + 3);
          v34 = *(a1 + 456);
          v34[9] = *v29;
          v34[10] = v31;
          v34[11] = v32;
          v34[12] = v33;
          v35 = *(a1 + 456);
          v36 = v35[9];
          v37 = v35[10];
          v38 = v35[11];
          v39 = v35[12];
          v40 = v35[2];
          v41 = v35[3];
          v42 = v35[4];
          v110[0] = v35[1];
          v110[1] = v40;
          v110[2] = v41;
          v110[3] = v42;
          do
          {
            v111.columns[v30] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(v110[v30])), v37, *&v110[v30], 1), v38, v110[v30], 2), v39, v110[v30], 3);
            ++v30;
          }

          while (v30 != 4);
          *(*(a1 + 456) + 208) = __invert_f4(v111);
        }

        v43 = sub_1AF1D005C(v8, 0);
        v45 = v43;
        if (v43)
        {
          v46 = sub_1AF166598(v43, v44);
        }

        else
        {
          v46 = 0.0;
        }

        *(*(a1 + 456) + 416) = v46;
        v47 = sub_1AF12E2AC(*(a1 + 432), v44);
        objc_msgSend_setBytes_length_atIndex_(v7, v48, *(a1 + 456) + 16, 464, 8);
        v49 = sub_1AF1D0008(v8, 0);
        if (v49)
        {
          v51 = objc_msgSend_textureForMaterialProperty_(v47, v50, v49);
          if (v51)
          {
            objc_msgSend_setTexture_atIndex_(v7, v52, v51, 5);
          }
        }

        v53 = sub_1AF1D005C(v8, 0);
        if (v53)
        {
          v55 = objc_msgSend_textureForMaterialProperty_(v47, v54, v53);
          if (v55)
          {
            objc_msgSend_setTexture_atIndex_(v7, v56, v55, 6);
          }

          v57 = objc_msgSend_radianceTextureForMaterialProperty_(v47, v56, v45);
          if (v57)
          {
            objc_msgSend_setTexture_atIndex_(v7, v58, v57, 12);
          }

          v60 = objc_msgSend_resourceManager(v47, v58, v59);
          v62 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v60, v61, v47);
          if (v62)
          {
            objc_msgSend_setTexture_atIndex_(v7, v63, v62, 13);
          }

          v53 = objc_msgSend_irradianceTextureForMaterialProperty_(v47, v63, v45);
          if (v53)
          {
            v53 = objc_msgSend_setTexture_atIndex_(v7, v64, v53, 14);
          }
        }

        v65 = *(a2 + 24);
        v66 = *(a1 + 464);
        v67 = CFX::RG::Temporal::currentFrame(v53);
        Texture = CFX::GPUResourceManager::getTexture(v65, v66, v67);
        objc_msgSend_setTexture_atIndex_(v7, v69, Texture, 10);
        sub_1AF144838(v15, v7);
        v70 = sub_1AF1448D8(v15);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v71, v70, 0, 0);
        v72 = sub_1AF1448D0(v15);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v7, v73, v72, 1);
        if (sub_1AF1449E0(v15))
        {
          v76 = sub_1AF1448E0(v15);
          objc_msgSend_setBuffer_offset_atIndex_(v7, v77, v76, 0, 2);
        }

        if (objc_msgSend_rayMap(v47, v74, v75))
        {
          v80 = objc_msgSend_rayMap(v47, v78, v79);
          v83 = objc_msgSend_originTexture(v80, v81, v82);
          objc_msgSend_setTexture_atIndex_(v7, v84, v83, 15);
          v87 = objc_msgSend_rayMap(v47, v85, v86);
          v90 = objc_msgSend_directionTexture(v87, v88, v89);
          objc_msgSend_setTexture_atIndex_(v7, v91, v90, 16);
        }

        if (sub_1AF1449F0(v15))
        {
          v93 = sub_1AF1403B4(*(a1 + 456) + 488, v92);
          v94 = sub_1AFDE323C(v93);
          v95 = sub_1AF144918(v15, v94);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v7, v96, v95, 3);
        }

        v97 = sub_1AF1448E8(v15);
        v100 = sub_1AF144A00(v15, v98, v99);
        objc_msgSend_useResources_count_usage_(v7, v101, v97, v100, 1);
        v103 = sub_1AF1403B4(*(a1 + 456) + 488, v102);
        v104 = sub_1AFDE323C(v103);
        objc_msgSend_dispatch_onTexture2D_(v7, v105, v104, Texture);
        sub_1AF12ED38(*(a1 + 432), v106);
      }
    }
  }
}

uint64_t sub_1AF24919C(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  if (!sub_1AF1BB028(a2) || (sub_1AF1B7348(a2, v5) & 1) != 0)
  {
    return 0;
  }

  v7 = sub_1AF1BA1FC(a2);
  v8 = *(v7 + 16);
  v10 = *(v7 + 32);
  v9 = *(v7 + 48);
  v11 = vmulq_f32(*v7, *v7);
  v12 = vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12));
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v11.f32, *v11.f32)));
  v13 = vmulq_n_f32(*v7, vmul_f32(*v11.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v13.i32[3] = HIDWORD(*v7);
  v14 = vmulq_f32(v8, v8);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v8, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v16.i32[3] = v8.i32[3];
  v17 = vmulq_f32(v10, v10);
  *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  *v17.f32 = vrsqrte_f32(v18);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
  *v19.f32 = vmul_f32(*v17.f32, *v17.f32);
  v20 = vrsqrts_f32(v18, *v19.f32);
  v21 = vmulq_n_f32(v10, vmul_f32(*v17.f32, v20).f32[0]);
  v21.i32[3] = v10.i32[3];
  v22 = *(v4 + 456);
  v22[5] = v13;
  v22[6] = v16;
  v22[7] = v21;
  v22[8] = v9;
  v24 = sub_1AF1BA070(a2, v23, *&v9, *v16.i64, *v21.i64, *v10.i64, *v13.i64, *&v20, v19);
  *&v24 = fmaxf(fmaxf(*&v24, v25), *(&v24 + 1)) * 0.01;
  *(*(*(a1 + 32) + 8) + 24) = LODWORD(v24);
  return 2;
}

uint64_t sub_1AF249310(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, CFX::CrossFrameResourceManager **a3, unint64_t *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF249458(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF249370(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2493A8(uint64_t a1)
{
  *a1 = &unk_1F24E9EA8;

  return a1;
}

void sub_1AF2493F0(uint64_t a1)
{
  *a1 = &unk_1F24E9EA8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF249458(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, CFX::CrossFrameResourceManager **a5, unint64_t *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1E8u, 8u, 2);
  return sub_1AF248650(v10, *a3, a3[1], a4, a5, a6);
}

uint64_t sub_1AF2494C0(uint64_t a1)
{
  *a1 = &unk_1F24E9EC8;
  sub_1AF14118C(*(a1 + 16), *(a1 + 24));
  return a1;
}

void sub_1AF24950C(uint64_t a1)
{
  *a1 = &unk_1F24E9EC8;
  sub_1AF14118C(*(a1 + 16), *(a1 + 24));

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF249578(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  if ((atomic_load_explicit(byte_1ED73A708, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v15 = a3;
    sub_1AFDEF314();
    a2 = v14;
    a3 = v15;
  }

  if (byte_1ED73A700)
  {
    v7 = 0x6FBB381A1ACF1CB0;
  }

  else
  {
    v7 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, "RaytracingSystemPass", 1, v7, 0);
  *this = &unk_1F24E9EE8;
  *(this + 53) = 0;
  *(this + 27) = *a5;
  v8 = *(this + 54);
  v10 = sub_1AF12DDCC(v8, v9);
  v12 = sub_1AF1D0140(v10, v11);
  *(this + 56) = v12;
  sub_1AF1443C0(v12, v8);
  return this;
}

uint64_t sub_1AF249658(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = *(a1 + 54);
  v5 = sub_1AF12DDCC(v4, a2);
  v7 = sub_1AF1D0140(v5, v6);
  *(a1 + 56) = v7;
  sub_1AF1443C0(v7, v4);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v5)))) >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), v9);
  *(a1 + 53) = result;
  if (!result)
  {
    sub_1AF249704(*(a2 + 32), v9, a1 + 56, a1 + 220);
  }

  return result;
}

void sub_1AF2497C0(CFX::RG::Pass *a1, uint64_t a2, int a3, uint64_t a4)
{
  switch(a3)
  {
    case 3:
      v7 = *(a1 + 56);

      sub_1AF144818(v7);
      break;
    case 1:
      v5 = *(a1 + 56);
      v6 = CFX::RG::RendererPassArguments::commandBuffer((a4 + 8));

      sub_1AF144410(v5, v6);
    case 0:

      sub_1AF249658(a1, a2);
      break;
  }
}

uint64_t sub_1AF249840(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2498D4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF24989C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF2498D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _OWORD *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1C8u, 8u, 2);
  return sub_1AF249578(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF249924(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  *&v24 = a2;
  *(&v24 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A720, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF360();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A718, 0);
  *a1 = &unk_1F24E9F20;
  v10 = *(a5 + 40);
  *(a1 + 456) = *(a5 + 24);
  *(a1 + 440) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = v10;
  *(CFX::RG::Pass::commonRenderParameters(v11) + 277) = 6;
  memset(v23, 0, sizeof(v23));
  CFXTextureDescriptorMakeCube(*(a1 + 456), *(a1 + 464), v23);
  *&v23[12] = *&v23[12] & 0xFFFFFF00FF00FFFFLL | 0x500050000;
  v26 = *v23;
  v27 = *&v23[16];
  v12 = sub_1AF2373FC(a4, "REFLECTION_PROBE_COLOR_TARGET", &v26);
  *(a1 + 480) = v12;
  CFX::RG::Pass::renderTo(a1, v12, 0x100000002, 0);
  v21 = 0uLL;
  v22 = 0;
  CFXTextureDescriptorMakeCube(*(a1 + 456), 0xFCu, &v21);
  v23[16] = 4;
  v26 = v21;
  v27 = v22;
  v13 = sub_1AF2373FC(a4, "REFLECTION_PROBE_DEPTH_TARGET", &v26);
  *(a1 + 488) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x200000002, -1);
  *&v25 = *(a1 + 432);
  v14 = *(a1 + 472);
  v27 = 0;
  v26 = v14;
  *&v15 = 0;
  *(&v15 + 2) = *(a1 + 456);
  *(&v15 + 3) = *(&v15 + 2);
  v29 = v15;
  v30 = 1;
  v31 = xmmword_1AFE42EB0;
  v32 = *(a1 + 440);
  v33 = 2;
  v34 = 4;
  v35 = 1;
  v36 = 1;
  v16 = sub_1AF2330E0(v24, *(&v24 + 1), &v24, &v25, &v26);
  *&v26 = 0;
  WORD4(v26) = 32;
  BYTE10(v26) = *(a1 + 441);
  v27 = 51;
  v28 = 0;
  if ((atomic_load_explicit(byte_1ED73A720, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF3B8();
  }

  *&v29 = qword_1ED73A718;
  *(&v29 + 1) = -1;
  v17 = *(a1 + 432);
  v25 = v24;
  v18 = sub_1AF23498C(&v25, 0x48u, 8u, 2);
  sub_1AF2603E8(v18, v17, &v26, v16);
  *(a1 + 448) = v19;
  return a1;
}

void sub_1AF249C0C(uint64_t a1, const char **a2)
{
  v3 = sub_1AF112998(*(a1 + 448));
  sub_1AF23B424(v3, v4, v5);
  sub_1AF23B5E0(v3);
  sub_1AF23B5F4(v3, v6, v7, v8, v9, v10, v11);
  sub_1AF23B60C(v3, v12);
  v13 = *a2;
  v14 = a2[1];

  sub_1AF23B678(v3->i64, v13, v14);
}

void sub_1AF249C74(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *this)
{
  v5 = *(a1 + 448);
  v6 = CFX::RG::RenderPassArguments::sliceIndex(this);
  v7 = v6 | (CFX::RG::RenderPassArguments::sliceIndex(this) << 8);

  sub_1AF260B04(v5, a2, this, v7);
}

uint64_t sub_1AF249CE0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A730, memory_order_acquire) & 1) == 0)
  {
    v19 = a3;
    v18 = a2;
    sub_1AFDEF3FC();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A728, 0);
  *a1 = &unk_1F24E9F78;
  v8 = *(a5 + 24);
  v9 = *(a5 + 40);
  *(a1 + 464) = v9;
  *(a1 + 448) = v8;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  if (v9)
  {
    CFXTextureDescriptorMake2D(2 * *(a1 + 448), *(a1 + 448), *(a1 + 456), &v20);
    v24 = v20;
    v25 = v21;
    v10 = v22;
    v11 = v23;
  }

  else
  {
    CFXTextureDescriptorMakeCube(*(a1 + 448), *(a1 + 456), &v20);
    v24 = v20;
    v25 = v21;
    v10 = v22;
    v11 = v23;
    v13 = sub_1AF12E2AC(*(a1 + 432), v12);
    if ((objc_msgSend_features(v13, v14, v15) & 0x20) != 0)
    {
      *(a1 + 440) = 257;
    }

    *((*(*a1 + 32))(a1) + 268) = 6;
  }

  v20 = v24;
  v21 = v25;
  v22 = v10 & 0xFFFFFF00FF00FFFFLL | 0x500050000;
  v23 = v11;
  v16 = sub_1AF2373FC(a4, "REFLECTION_PROBE_RADIANCE_TARGET", &v20);
  *(a1 + 488) = v16;
  CFX::RG::Pass::renderTo(a1, v16, 0x100000000, 0);
  *((*(*a1 + 32))(a1) + 275) = 5;
  return a1;
}

void sub_1AF249EE4(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)));
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 464));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  *(a1 + 472) = v9;
  if (!v9)
  {
    *(a1 + 472) = sub_1AF24A0C4(*(a2 + 32), v8);
    v11 = sub_1AF12E2AC(*(a1 + 432), v10);
    v16 = objc_msgSend_resourceManager(v11, v12, v13);
    if (*(a1 + 456) == 125)
    {
      v17 = "float";
    }

    else
    {
      v17 = "half";
    }

    v18 = *(a1 + 464);
    v19 = @"vfx_draw_fullscreen_cube";
    if (!*(a1 + 464))
    {
      v20 = objc_msgSend_features(v11, v14, v15);
      v23 = objc_msgSend_features(v11, v21, v22);
      v24 = @"vfx_draw_fullscreen_cube_no_base";
      if ((v20 & 0x400) != 0)
      {
        v24 = @"vfx_draw_fullscreen_cube";
      }

      if ((v23 & 0x20) != 0)
      {
        v19 = @"vfx_draw_fullscreen_cube_layered";
      }

      else
      {
        v19 = v24;
      }

      v18 = *(a1 + 464);
    }

    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"vfx_radiance_%s_%s_frag", off_1E7A7D9C8[v18], v17);
    v26 = sub_1AFDE868C(v16);
    v29 = objc_msgSend_frameworkLibrary(v26, v27, v28);
    v30 = *(a1 + 456);
    v31 = *(a1 + 472);
    memset(v34, 0, sizeof(v34));
    v35 = v29;
    v36 = v30;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    v47 = 3;
    v48 = 0;
    memset(v49, 0, sizeof(v49));
    v50 = v19;
    v51 = v25;
    v52 = 0u;
    v53 = 0u;
    v33 = objc_msgSend_newRenderPipelineStateWithDesc_(v16, v32, v34);
    sub_1AF23355C((v31 + 16), v33);
  }
}

_OWORD *sub_1AF24A0C4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF24A150(uint64_t a1, CFX::RG::RenderGraphContext *a2, CFX::RG::RenderPassArguments *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF12E2AC(*(a1 + 432), a2);
  v9 = objc_msgSend_renderEncoder(v6, v7, v8);
  v11 = sub_1AF2338B0(*(a1 + 472) + 16, v10);
  v14 = objc_msgSend_state(v11, v12, v13);
  v16 = objc_msgSend_setRenderPipelineState_(*(v9 + 16), v15, v14);
  v17 = *(a2 + 3);
  v18 = *(a1 + 480);
  v19 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
  v21 = *(a2 + 3);
  v22 = *(a1 + 488);
  v23 = CFX::RG::Temporal::currentFrame(Texture);
  v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
  v27 = objc_msgSend_mipmapLevelCount(Texture, v25, v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v65 - v29;
  sub_1AF24A4B4(v28, v32, v31, &v65 - v29, v31, Texture, *(a1 + 468) == 1);
  v33 = CFX::RG::RenderPassArguments::mipIndex(a3);
  v68 = v33 / (objc_msgSend_mipmapLevelCount(v24, v34, v35) - 1);
  sub_1AF1F905C(v9, &v68, 4uLL, 0);
  v67 = *&v30[4 * CFX::RG::RenderPassArguments::mipIndex(a3)];
  sub_1AF1F905C(v9, &v67, 4uLL, 1);
  sub_1AF1F8FCC(v9, Texture, 0);
  v36 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 488));
  if (*(a1 + 464) || *(a1 + 440) != 1)
  {
    *v48.i32 = objc_msgSend_width(v24, v37, v38);
    v66 = v48;
    v51 = objc_msgSend_height(v24, v49, v50);
    v52.i64[0] = 0;
    v52.i32[2] = v66.i32[0];
    *&v52.i32[3] = v51;
    v66 = v52;
    v53 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *v54.i32 = ldexpf(1.0, v53);
    v55 = vdivq_f32(v66, vdupq_lane_s32(v54, 0));
    v56 = *(v9 + 16);
    v69[0] = vcvtq_f64_f32(*v55.f32);
    v69[1] = vcvt_hight_f64_f32(v55);
    v69[2] = xmmword_1AFE42FD0;
    objc_msgSend_setViewport_(v56, v57, v69);
    *v9 = 1;
  }

  else
  {
    v66 = vshlq_u64(vdupq_lane_s64(*(v36 + 4), 0), xmmword_1AFE42F50);
    v39 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *&v40 = ldexpf(1.0, v39);
    v65 = v40;
    v41 = CFX::RG::RenderPassArguments::mipIndex(a3);
    v43 = ldexpf(1.0, v41);
    v44 = 0;
    v45 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(v66, 0x30uLL))), __PAIR64__(LODWORD(v43), v65)));
    do
    {
      v46 = &v69[v44];
      *v46 = 0;
      *(v46 + 1) = 0;
      v46[1] = v45;
      v44 += 3;
      *(v46 + 4) = 0;
      *(v46 + 5) = 0;
    }

    while (v44 != 18);
    objc_msgSend_setViewports_count_(*(v9 + 16), v42, v69, 6);
  }

  v58 = sub_1AF12E2AC(*(a1 + 432), v47);
  if ((objc_msgSend_features(v58, v59, v60) & 0x400) != 0)
  {
    if (*(a1 + 440) == 1 || !CFX::RG::RenderPassArguments::sliceIndex(a3))
    {
      return sub_1AF2010C8(v9, v61);
    }

    else
    {
      v64 = CFX::RG::RenderPassArguments::sliceIndex(a3);
      return sub_1AF24A6B4(v9, 3, 0, 3, 1, v64);
    }
  }

  else
  {
    LOBYTE(v69[0]) = CFX::RG::RenderPassArguments::sliceIndex(a3);
    sub_1AF176E98(v9, v69, 1uLL, 0);
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(*(v9 + 16), v62, 3, 0, 3);
  }
}

void sub_1AF24A4B4(double a1, double a2, uint64_t a3, const char *a4, uint64_t a5, void *a6, int a7)
{
  v7 = a5;
  LODWORD(a1) = 28.0;
  if (a7)
  {
    v9 = objc_msgSend_width(a6, a4, a5, a1, a2);
    HIDWORD(a2) = 1174405120;
    *&a1 = fminf(fmaxf((4 * v9), 32.0), 8192.0) + -4.0;
  }

  if (v7)
  {
    v10 = 0;
    *&a2 = (v7 - 1);
    v11 = vdupq_n_s64(v7 - 1);
    v12 = xmmword_1AFE21100;
    v13 = xmmword_1AFE21110;
    v14 = (v7 + 3) & 0x1FFFFFFFCLL;
    v32 = vdupq_lane_s32(*&a1, 0);
    v33 = vdupq_n_s64(4uLL);
    v15 = a4 + 8;
    __asm { FMOV            V0.4S, #4.0 }

    v30 = _Q0;
    v31 = vdupq_lane_s32(*&a2, 0);
    v34 = v11;
    do
    {
      v37 = v12;
      v21 = vorr_s8(vdup_n_s32(v10), 0x300000002);
      v36 = v13;
      v22 = vmovn_s64(vcgeq_u64(v11, v13));
      v23.i32[0] = v10;
      v23.i32[1] = v10 + 1;
      v35 = vuzp1_s16(v22, v21).u8[0];
      v23.u64[1] = v21;
      v41 = vdivq_f32(vcvtq_f32_u32(v23), v31);
      v38 = powf(v41.f32[1], 0.25);
      v24.f32[0] = powf(v41.f32[0], 0.25);
      v24.f32[1] = v38;
      v39 = v24;
      v25 = powf(v41.f32[2], 0.25);
      v26 = v39;
      v26.f32[2] = v25;
      v40 = v26;
      v27 = powf(v41.f32[3], 0.25);
      v28 = v40;
      v28.f32[3] = v27;
      v29 = vmlaq_f32(v30, v32, v28);
      if (v35)
      {
        *(v15 - 2) = v29.f32[0];
      }

      if (vuzp1_s16(v22, *&v29).i8[2])
      {
        *(v15 - 1) = v29.f32[1];
      }

      v11 = v34;
      if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v34, *&v37))).i32[1])
      {
        *v15 = v29.f32[2];
        v15[1] = v29.f32[3];
      }

      v10 += 4;
      v12 = vaddq_s64(v37, v33);
      v13 = vaddq_s64(v36, v33);
      v15 += 4;
    }

    while (v14 != v10);
  }
}

uint64_t sub_1AF24A6B4(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = v6 * a6;
  v8 = *(a1 + 2);
  if ((v6 * a5) <= 1 && v7 == 0)
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v8, a2, a2, a3, a4);
  }

  if (v7)
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_(v8, a2, a2, a3, a4);
  }

  return objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v8, a2, a2, a3, a4);
}

uint64_t sub_1AF24A6F4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A740, memory_order_acquire) & 1) == 0)
  {
    v12 = a2;
    v13 = a3;
    sub_1AFDEF454();
    a2 = v12;
    a3 = v13;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A738, 0);
  *a1 = &unk_1F24E9FD0;
  v8 = *(a5 + 24);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 448) = v8;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  memset(v16, 0, sizeof(v16));
  CFXTextureDescriptorMake2D(2 * *(a1 + 448), *(a1 + 448), *(a1 + 456), v16);
  *&v16[12] = *&v16[12] & 0xFFFFFF00FF00FFFFLL | 0x500050000;
  v14 = *v16;
  v15 = *&v16[16];
  v9 = sub_1AF2373FC(a4, "REFLECTION_PROBE_BOX_BLUR_TARGET", &v14);
  *(a1 + 488) = v9;
  CFX::RG::Pass::renderTo(a1, v9, 0x100000000, 0);
  v10 = v16[14];
  *((*(*a1 + 32))(a1) + 275) = v10;
  return a1;
}

void sub_1AF24A858(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ *(a1 + 464));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 456))))) >> 47));
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 472) = v8;
  if (!v8)
  {
    *(a1 + 472) = sub_1AF24AA28(*(a2 + 32), v7);
    v10 = sub_1AF12E2AC(*(a1 + 432), v9);
    v13 = objc_msgSend_resourceManager(v10, v11, v12);
    v14 = sub_1AFDE868C(v13);
    v17 = objc_msgSend_frameworkLibrary(v14, v15, v16);
    v18 = *(a1 + 456);
    v19 = sub_1AFDE868C(v13);
    v22 = objc_msgSend_frameworkLibrary(v19, v20, v21);
    v23 = *(a1 + 456);
    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"box_blur_frag_%d", *(a1 + 464));
    v26 = *(a1 + 472);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v39 = v17;
    v40 = v18;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = @"vfx_draw_fullscreen_triangle_vertex";
    v53 = @"copy_frag";
    v54 = 0u;
    v55 = 0u;
    v28 = objc_msgSend_newRenderPipelineStateWithDesc_(v13, v27, &v32);
    sub_1AF23355C((v26 + 16), v28);
    v29 = *(a1 + 472);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v39 = v22;
    v40 = v23;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = @"vfx_draw_fullscreen_triangle_vertex";
    v53 = v25;
    v54 = 0u;
    v55 = 0u;
    v31 = objc_msgSend_newRenderPipelineStateWithDesc_(v13, v30, &v32);
    sub_1AF23355C((v29 + 24), v31);
  }
}

void *sub_1AF24AA28(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF24AAB0(uint64_t a1, CFX::RG::RenderGraphContext *a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = sub_1AF12E2AC(*(a1 + 432), a2);
  v9 = objc_msgSend_renderEncoder(v6, v7, v8);
  v10 = *(a2 + 3);
  v11 = *(a1 + 480);
  v12 = CFX::RG::Temporal::currentFrame(v9);
  Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  if (CFX::RG::RenderPassArguments::mipIndex(a3))
  {
    v16 = objc_msgSend_pixelFormat(Texture, v14, v15);
    v19 = objc_msgSend_textureType(Texture, v17, v18);
    v20 = CFX::RG::RenderPassArguments::mipIndex(a3);
    Texture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(Texture, v21, v16, v19, v20, 1, 0, 1);
  }

  v22 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 488)) + 4);
  v23 = vld1q_dup_f64(v22);
  v39 = vcvt_hight_f32_f64(0, vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(v23, xmmword_1AFE42F50), 0x30uLL)));
  v24 = CFX::RG::RenderPassArguments::mipIndex(a3);
  *v25.i32 = ldexpf(1.0, v24);
  v26 = vdivq_f32(v39, vdupq_lane_s32(v25, 0));
  v27 = v9[2];
  v40[0] = vcvtq_f64_f32(*v26.f32);
  v40[1] = vcvt_hight_f64_f32(v26);
  v40[2] = xmmword_1AFE42FD0;
  objc_msgSend_setViewport_(v27, v28, v40);
  *v9 = 1;
  sub_1AF1F8FCC(v9, Texture, 0);
  v29 = CFX::RG::RenderPassArguments::mipIndex(a3);
  v31 = 24;
  if (!v29)
  {
    v31 = 16;
  }

  v32 = sub_1AF2338B0(*(a1 + 472) + v31, v30);
  v35 = objc_msgSend_state(v32, v33, v34);
  objc_msgSend_setRenderPipelineState_(v9[2], v36, v35);
  return sub_1AF2010C8(v9, v37);
}

uint64_t sub_1AF24AC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A750, memory_order_acquire) & 1) == 0)
  {
    v20 = a3;
    v19 = a2;
    sub_1AFDEF4AC();
    a2 = v19;
    a3 = v20;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A748, 0);
  v8 = &unk_1F24EA028;
  *a1 = &unk_1F24EA028;
  v9 = *(a5 + 40);
  *(a1 + 448) = *(a5 + 24);
  *(a1 + 464) = v9;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  if (!*(a1 + 449))
  {
    v10 = sub_1AF12E2AC(*(a1 + 432), v7);
    if ((objc_msgSend_features(v10, v11, v12) & 0x20) != 0)
    {
      *(a1 + 440) = 257;
    }

    *((*(*a1 + 32))(a1) + 268) = 6;
    v8 = *a1;
  }

  v13 = *(a1 + 468);
  *(v8[4](a1) + 275) = v13;
  v14 = *(a1 + 449);
  v15 = *(a1 + 464);
  v16 = (*(*a1 + 32))(a1);
  v17 = 6 * v15;
  if (v14)
  {
    v17 = v15;
  }

  *(v16 + 276) = v17;
  return a1;
}

void sub_1AF24ADD0(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(a1 + 456) ^ v4)));
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ *(a1 + 448));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ *(a1 + 449));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v11 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v10);
  *(a1 + 472) = v11;
  if (!v11)
  {
    *(a1 + 472) = sub_1AF24AFA8(*(a2 + 32), v10);
    v13 = sub_1AF12E2AC(*(a1 + 432), v12);
    v16 = objc_msgSend_resourceManager(v13, v14, v15);
    if ((objc_msgSend_features(v13, v17, v18) & 0x400) != 0)
    {
      v21 = @"vfx_draw_fullscreen_cube";
    }

    else
    {
      v21 = @"vfx_draw_fullscreen_cube_no_base";
    }

    if ((objc_msgSend_features(v13, v19, v20) & 0x20) != 0)
    {
      v21 = @"vfx_draw_fullscreen_cube_layered";
    }

    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"vfx_convert_%s_from_%s_frag", off_1E7A7D9C8[*(a1 + 449)], off_1E7A7D9C8[*(a1 + 448)]);
    v24 = sub_1AFDE868C(v16);
    v27 = objc_msgSend_frameworkLibrary(v24, v25, v26);
    v28 = *(a1 + 456);
    v29 = *(a1 + 472);
    memset(v32, 0, sizeof(v32));
    v33 = v27;
    v34 = v28;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v45 = 3;
    memset(v47, 0, sizeof(v47));
    v46 = 0;
    v48 = v21;
    v49 = v23;
    v50 = 0u;
    v51 = 0u;
    v31 = objc_msgSend_newRenderPipelineStateWithDesc_(v16, v30, v32);
    sub_1AF23355C((v29 + 16), v31);
  }
}

void *sub_1AF24AFA8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF24B030(uint64_t a1, CFX::RG::RenderGraphContext *a2, CFX::RG::RenderPassArguments *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = sub_1AF12E2AC(*(a1 + 432), a2);
  v9 = objc_msgSend_renderEncoder(v6, v7, v8);
  v11 = sub_1AF2338B0(*(a1 + 472) + 16, v10);
  v14 = objc_msgSend_state(v11, v12, v13);
  v16 = objc_msgSend_setRenderPipelineState_(*(v9 + 16), v15, v14);
  v17 = *(a2 + 3);
  v18 = *(a1 + 480);
  v19 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
  if (CFX::RG::RenderPassArguments::mipIndex(a3))
  {
    if (*(a1 + 448))
    {
      v23 = 1;
    }

    else
    {
      v23 = 6;
    }

    v24 = objc_msgSend_pixelFormat(Texture, v21, v22);
    v27 = objc_msgSend_textureType(Texture, v25, v26);
    v28 = CFX::RG::RenderPassArguments::mipIndex(a3);
    Texture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(Texture, v29, v24, v27, v28, 1, 0, v23);
  }

  sub_1AF1F8FCC(v9, Texture, 0);
  v30 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 488)) + 4);
  if (*(a1 + 449) || *(a1 + 440) != 1)
  {
    v52 = vcvt_hight_f32_f64(0, vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v30), xmmword_1AFE42F50), 0x30uLL)));
    v41 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *v42.i32 = ldexpf(1.0, v41);
    v43 = vdivq_f32(v52, vdupq_lane_s32(v42, 0));
    v44 = *(v9 + 16);
    v53[0] = vcvtq_f64_f32(*v43.f32);
    v53[1] = vcvt_hight_f64_f32(v43);
    v53[2] = xmmword_1AFE42FD0;
    objc_msgSend_setViewport_(v44, v45, v53);
    *v9 = 1;
  }

  else
  {
    v51 = vshlq_u64(vdupq_n_s64(v30), xmmword_1AFE42F50);
    v31 = CFX::RG::RenderPassArguments::mipIndex(a3);
    *&v32 = ldexpf(1.0, v31);
    v50 = v32;
    v33 = CFX::RG::RenderPassArguments::mipIndex(a3);
    v35 = ldexpf(1.0, v33);
    v36 = 0;
    v37 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(v51, 0x30uLL))), __PAIR64__(LODWORD(v35), v50)));
    do
    {
      v38 = &v53[v36];
      *v38 = 0;
      *(v38 + 1) = 0;
      v38[1] = v37;
      v36 += 3;
      *(v38 + 4) = 0;
      *(v38 + 5) = 0;
    }

    while (v36 != 18);
    objc_msgSend_setViewports_count_(*(v9 + 16), v34, v53, 6);
  }

  if ((objc_msgSend_features(v6, v39, v40, v50) & 0x400) != 0)
  {
    if (*(a1 + 440) == 1 || !CFX::RG::RenderPassArguments::sliceIndex(a3))
    {
      return sub_1AF2010C8(v9, v46);
    }

    else
    {
      v49 = CFX::RG::RenderPassArguments::sliceIndex(a3);
      return sub_1AF24A6B4(v9, 3, 0, 3, 1, v49);
    }
  }

  else
  {
    LOBYTE(v53[0]) = CFX::RG::RenderPassArguments::sliceIndex(a3);
    sub_1AF176E98(v9, v53, 1uLL, 0);
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(*(v9 + 16), v47, 3, 0, 3);
  }
}

uint64_t sub_1AF24B318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A758, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v18 = a3;
    sub_1AFDEF504();
    a2 = v16;
    a3 = v18;
  }

  if (byte_1ED73A710)
  {
    v7 = 0x5303C3899FA12B45;
  }

  else
  {
    v7 = 0;
  }

  sub_1AF250390(a1, a2, a3, a5, v7, 0);
  *a1 = &unk_1F24EA080;
  v8 = *(a5 + 48);
  *(a1 + 448) = *(a5 + 32);
  *(a1 + 464) = v8;
  *(a1 + 480) = 0;
  v17 = *(a1 + 448);
  v10 = CFX::RG::Pass::commonRenderParameters(v9);
  *v10 = vcvtq_f64_f32(*v17.f32);
  v10[1] = vcvt_hight_f64_f32(v17);
  v11 = *(a1 + 464);
  *((*(*a1 + 32))(a1) + 276) = v11;
  v12 = *(a1 + 468);
  *((*(*a1 + 32))(a1) + 277) = v12;
  v13 = *(a1 + 472);
  *((*(*a1 + 32))(a1) + 274) = v13;
  v14 = *(a1 + 476);
  *((*(*a1 + 32))(a1) + 275) = v14;
  return a1;
}

BOOL sub_1AF24B4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(a1, a2);
  v6 = sub_1AF1D00F8(v4, v5);
  v8 = sub_1AF138694(v6, v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v10 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47)));
  v12 = v10;
  if (v10 && *(v10 + 81) == 1)
  {
    *(v10 + 81) = 0;
    return 1;
  }

  if (!v8)
  {
    v17 = sub_1AF1D005C(v4, 0);
    if (!v17 || (v18 = v17, !sub_1AF166220(v17, v11)) && !sub_1AF1676A0(v18, v11))
    {
      if (!sub_1AF12F038(a1, v11))
      {
        return 0;
      }
    }
  }

  if (!v12)
  {
    sub_1AF1D126C(v4, v11);
    return 1;
  }

  if (*(v12 + 80))
  {
    return 1;
  }

  if (*(v12 + 48))
  {
    v13 = sub_1AF2338B0(v12 + 48, v11);
    v16 = objc_msgSend_arrayLength(v13, v14, v15) != v8 + 1;
  }

  else
  {
    v16 = 1;
  }

  v20 = sub_1AF1D126C(v4, v11);
  if (*(v12 + 16))
  {
    return **(v12 + 24) != v20 || v16;
  }

  return v16;
}

uint64_t sub_1AF24B5EC(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1AF12E2AC(*a3, a2);
  v8 = sub_1AF12DDCC(*a3, v7);
  v10 = sub_1AF1D00F8(v8, v9);
  if ((atomic_load_explicit(byte_1ED73A720, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF360();
  }

  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A718 ^ v8)))) >> 47));
  Pass = CFX::RG::RenderGraphBuilder::findPass(a1, v11);
  if (!Pass)
  {
    v62 = objc_msgSend_resourceManager(v6, v12, v13);
    v18 = sub_1AF138694(v10, v15);
    if (!v18)
    {
      v41 = sub_1AF1D005C(v8, 0);
      if (!v41 || (v42 = v41, !sub_1AF166220(v41, v16)) && !sub_1AF1676A0(v42, v16))
      {
        if (!sub_1AF12F038(*a3, v16))
        {
          return 0;
        }
      }
    }

    v60 = v18 + 1;
    objc_msgSend_device(v6, v16, v17);
    v19 = sub_1AF1F3144();
    objc_msgSend_device(v6, v20, v21);
    v22 = sub_1AF1F3184();
    v25 = 115;
    if ((v22 & v19) != 0)
    {
      v25 = 93;
    }

    v65 = v25;
    if ((objc_msgSend_features(v6, v23, v24) & 0x100) != 0)
    {
      v26 = 256;
    }

    else
    {
      v26 = 128;
    }

    v64 = v26;
    v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v10) ^ ((0x9DDFEA08EB382D69 * v10) >> 47));
    v63 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47)));
    if (!v63 || (v29 = (v63 + 48), !*(v63 + 48)) || (v30 = sub_1AF2338B0(v63 + 48, v28), objc_msgSend__setReflectionProbeArrayTexture_(v6, v31, v30), !*v29) || (v33 = sub_1AF2338B0(v29, v32), objc_msgSend_arrayLength(v33, v34, v35) != v60))
    {
      operator new();
    }

    v36 = *(v63 + 48);
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v72, v63 + 56);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = sub_1AF24BF94;
    v84[3] = &unk_1E7A7D9E8;
    v84[4] = v36;
    CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v85, &v72, v84, 0);
    v61 = sub_1AF24BF34(a1, "REFLECTION PROBE ARRAY", v85);
    CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v85);
    v38 = sub_1AF1D005C(v8, 0);
    if (v38)
    {
      objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(v62, v37, v38, *a3, 0, 0);
    }

    v80 = 0;
    v81 = &v80;
    v82 = 0x2020000000;
    v83 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v40 = sub_1AF1D126C(v8, v37);
    if (**(v63 + 24) == v40)
    {
      goto LABEL_36;
    }

    *(v77 + 24) = 1;
    if (!v38)
    {
      goto LABEL_28;
    }

    if (sub_1AF166220(v38, v39))
    {
      isDynamic = objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(v62, v43, v38, *a3, 0, 0);
      goto LABEL_32;
    }

    if (!sub_1AF1676A0(v38, v43))
    {
LABEL_28:
      v49 = !sub_1AF12F038(*a3, v39);
      if (v60 > 1)
      {
        LOBYTE(v49) = 1;
      }

      if (!v49)
      {
        v50 = objc_msgSend_resourceManager(v6, v47, v48);
        isDynamic = objc_msgSend_defaultLightingEnvironmentRadianceTexture(v50, v51, v52);
LABEL_32:
        v53 = isDynamic;
        if (isDynamic)
        {
          memset(v75, 0, sizeof(v75));
          CFXTextureDescriptorFromMTLTexture(isDynamic, v75, v45, v46);
          CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v71, v75);
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = sub_1AF24BFA4;
          v70[3] = &unk_1E7A7D9E8;
          v70[4] = v53;
          CFX::RG::ExternalResourceDesc::ExternalResourceDesc(&v72, &v71, v70, 0);
          CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v69, &v72);
          v53 = sub_1AF24BF34(a1, "ENVIRONMENT TEXTURE", v69);
          CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v69);
          CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&v72);
        }

        goto LABEL_35;
      }
    }

    v53 = 0;
LABEL_35:
    v54 = sub_1AF24BFAC(a1, a3, 0, v53, v64, v65, v61);
    v81[3] = v54;
    **(v63 + 24) = v40;
    **(v63 + 40) = 0;
LABEL_36:
    *&v72 = 0;
    *(&v72 + 1) = &v72;
    v73 = 0x2020000000;
    LOBYTE(v74) = 0;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = sub_1AF24C1F4;
    v66[3] = &unk_1E7A7DA38;
    v68 = 0;
    v66[8] = v63;
    v66[9] = a1;
    v66[10] = a3;
    v66[11] = v61;
    v67 = v64;
    v66[12] = v63;
    v66[13] = v65;
    v66[5] = &v80;
    v66[6] = &v76;
    v66[4] = v62;
    v66[7] = &v72;
    sub_1AF13AE20(v10, v66);
    *(v63 + 80) = *(*(&v72 + 1) + 24);
    *(v63 + 81) = *(v77 + 24);
    v56 = sub_1AF2338B0(v63 + 48, v55);
    objc_msgSend__setReflectionProbeArrayTexture_(v6, v57, v56);
    v58 = v81[3];
    if (v58)
    {
      CFX::RG::RenderGraphBuilder::registerPass(a1, v11, v58);
      Pass = v81[3];
    }

    else
    {
      Pass = 0;
    }

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(&v80, 8);
  }

  return Pass;
}

void sub_1AF24BDDC(_Unwind_Exception *a1)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&STACK[0x368]);
  _Block_object_dispose(&STACK[0x428], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Unwind_Resume(a1);
}

void sub_1AF24BE64(unsigned int *a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 <= a2)
    {
      v5 = a1[1];
      v6 = a2 - v5;
      if (a2 > v5)
      {
        sub_1AF24D36C(a1, v6, 0);
        v2 = *a1;
      }

      bzero((*(a1 + 1) + 4 * v2), 4 * (a2 - v2));
    }

    *a1 = a2;
  }
}

void sub_1AF24BECC(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 4);
      v6 = a2 - v5;
      if (a2 > v5)
      {
        sub_1AF158DE0(a1, v6, 0);
        v2 = *a1;
      }

      bzero((*(a1 + 8) + 8 * v2), 8 * (a2 - v2));
    }

    *a1 = a2;
  }
}

CFX::RG::Resource *sub_1AF24BF34(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, const CFX::RG::ExternalResourceDesc *a3)
{
  v9 = a2;
  v4 = *a1;
  v5 = *(a1 + 1);
  v8 = 1;
  v6 = sub_1AF24D438(v4, v5, &v9, a3, &v8);
  CFX::RG::RenderGraphBuilder::appendResource(a1, v6);
  return v6;
}

CFX::RG::Pass *sub_1AF24BFAC(uint64_t *a1, uint64_t *a2, uint64_t a3, CFX::RG::Resource *this, uint64_t a5, uint64_t a6, CFX::RG::Resource *a7)
{
  v8 = a3;
  if (this && (v12 = a5, v13 = this, v14 = CFX::RG::Resource::constTextureDesc(this), VFXMTLTextureTypeIsCube(*(v14 + 40))))
  {
    v15 = CFX::RG::Resource::constTextureDesc(v13);
    v16 = *(v15 + 17) == 1 && *(v15 + 16) == 5;
    if (!v16 || (v17 = CFX::RG::Resource::constTextureDesc(v13), *(v17 + 2) == 1) && *v17 == 16)
    {
      v18 = CFX::RG::Resource::constTextureDesc(v13);
      if (*(v18 + 17) == 1 && *(v18 + 16) > 4u)
      {
        v19 = 0;
      }

      else
      {
        v24 = *a2;
        *&v35 = "Generate probe mipmap pass";
        *(&v35 + 1) = v24;
        LOBYTE(v36) = 1;
        v25 = CFX::RG::Resource::constTextureDesc(v13);
        v26 = *v25;
        *&v37[16] = v25[1];
        *v37 = v26;
        v27 = v25[2];
        v28 = v25[3];
        v29 = v25[4];
        v41 = v25[5];
        v40 = v29;
        v39 = v28;
        v38 = v27;
        v30 = v25[6];
        v31 = v25[7];
        v32 = v25[8];
        v45 = v25[9];
        v44 = v32;
        v43 = v31;
        v42 = v30;
        v46 = 5;
        v19 = sub_1AF24CBA0(a1, a1, &v35);
        sub_1AF236200(v19, v13);
        v13 = *(v19 + 78);
      }

      return sub_1AF24CBF8(a1, a2, v8, v12, a6, 1, v13, v19, a7);
    }

    else
    {
      *&v35 = v13;
      DWORD2(v35) = 0;
      v36 = a7;
      *v37 = v8;
      *&v37[4] = 1;
      return CFX::RG::makeCopyPass(a1, "Copy probe pass", &v35);
    }
  }

  else
  {
    v20 = CFX::RG::Resource::constTextureDesc(a7);
    if (VFXMTLTextureTypeIsCube(*(v20 + 40)))
    {
      v21 = 6;
    }

    else
    {
      v21 = 1;
    }

    v22 = *a2;
    *&v35 = "Clear texture pass";
    *(&v35 + 1) = v22;
    LOWORD(v36) = 0;
    *&v37[8] = xmmword_1AFE201A0;
    *&v37[24] = v21 * v8;
    *&v37[28] = v21;
    LODWORD(v38) = 0;
    DWORD1(v38) = *(CFX::RG::Resource::constTextureDesc(a7) + 16);
    v23 = sub_1AF24CB48(a1, a1, &v35);
    *(v23 + 480) = a7;
    CFX::RG::Pass::renderTo(v23, a7, 0x100000002, 0);
  }

  return v23;
}

uint64_t sub_1AF24C1F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *(&v57[1] + 4) = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = result;
    v7 = a2;
    while (1)
    {
      v8 = *a4;
      v9 = sub_1AF19D968(*a4, a2);
      if (v9 != 1)
      {
        v11 = sub_1AF0D5194(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDEF550(buf, v57, v11);
        }
      }

      v12 = sub_1AF19DF68(v8, v10);
      v14 = v12;
      if (v12 == -1)
      {
        v15 = sub_1AF0D5194(v12, v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDEF5A0(v54, &v55, v15);
        }
      }

      v16 = sub_1AF19DFC4(v8, v13);
      result = sub_1AF19DAD4(v8, v17);
      v18 = result;
      if (result == 1)
      {
        break;
      }

      if (*(v6 + 116) != 1 || (v46[0] = MEMORY[0x1E69E9820], v46[1] = 3221225472, v46[2] = sub_1AF24C61C, v46[3] = &unk_1E7A7DA10, v48 = *(v6 + 64), v49 = v8, v20 = *(v6 + 72), v52 = v16, v53 = v14, v21 = *(v6 + 88), v50 = v20, v51 = v21, v47 = *(v6 + 40), result = sub_1AF24C61C(v46, a2), (result & 1) == 0))
      {
        if (v18 == 2)
        {
          v28 = *(v6 + 96);
          v29 = *(*(v28 + 24) + 4 * v14);
          v30 = *(*(v28 + 40) + 8 * v14);
          if (v29 != v16 || v30 != v8)
          {
            printf("probe[%d] not up to date stamp [%d -> %d] sources [%p -> %p]\n", v14, v29, v16, v30, v8);
            v32 = sub_1AF19B558(v8, 0);
            v34 = v32;
            if (v32)
            {
              if (sub_1AF166220(v32, v33))
              {
                isDynamic = objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(*(v6 + 32), v35, v34, **(v6 + 80), 0, 0);
                memset(v45, 0, sizeof(v45));
                CFXTextureDescriptorFromMTLTexture(isDynamic, v45, v37, v38);
                CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v43, v45);
                v42[0] = MEMORY[0x1E69E9820];
                v42[1] = 3221225472;
                v42[2] = sub_1AF24C920;
                v42[3] = &unk_1E7A7D9E8;
                v42[4] = isDynamic;
                CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v44, v43, v42, 0);
                v39 = *(v6 + 72);
                CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v41, v44);
                v34 = sub_1AF24BF34(v39, "ENVIRONMENT TEXTURE", v41);
                CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v41);
                CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v44);
              }

              else
              {
                v34 = 0;
              }
            }

            result = sub_1AF24BFAC(*(v6 + 72), *(v6 + 80), v14, v34, *(v6 + 112), *(v6 + 104), *(v6 + 88));
            *(*(*(v6 + 40) + 8) + 24) = result;
            *(*(*(v6 + 48) + 8) + 24) = 1;
            v40 = *(v6 + 96);
            *(*(v40 + 24) + 4 * v14) = v16;
            *(*(v40 + 40) + 8 * v14) = v8;
          }

          goto LABEL_12;
        }

        if (!v18)
        {
          v22 = *(v6 + 96);
          v23 = *(*(v22 + 24) + 4 * v14);
          v24 = *(*(v22 + 40) + 8 * v14);
          if (v23 != v16 || v24 != v8)
          {
            printf("probe[%d] not up to date stamp [%d -> %d] sources [%p -> %p]\n", v14, v23, v16, v24, v8);
            v27 = *(v6 + 96);
            v26 = *(v6 + 104);
            *(*(v27 + 24) + 4 * v14) = v16;
            *(*(v27 + 40) + 8 * v14) = v8;
            result = sub_1AF24C7E8(*(v6 + 72), *(v6 + 80), v14, *a3, *(v6 + 112), v26, *(v6 + 88));
            *(*(*(v6 + 40) + 8) + 24) = result;
            v19 = *(v6 + 48);
            goto LABEL_11;
          }
        }
      }

LABEL_12:
      ++a4;
      ++a3;
      if (!--v7)
      {
        return result;
      }
    }

    result = sub_1AF24C7E8(*(v6 + 72), *(v6 + 80), v14, *a3, *(v6 + 112), *(v6 + 104), *(v6 + 88));
    *(*(*(v6 + 40) + 8) + 24) = result;
    v19 = *(v6 + 56);
LABEL_11:
    *(*(v19 + 8) + 24) = 1;
    goto LABEL_12;
  }

  return result;
}

void sub_1AF24C5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a14);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF24C61C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = *(v3 + 40); *i != *(a1 + 56); ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(v3 + 40);
  }

  v8 = (i - v4) >> 3;
  v9 = i == (v4 + 8 * v5) || v8 == -1;
  if (v9 || *(*(v3 + 24) + 4 * v8) == *(a1 + 96))
  {
    return 0;
  }

  v12 = sub_1AF2338B0(v3 + 48, a2);
  v13 = *(a1 + 64);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v20, *(a1 + 48) + 56);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1AF24C7E0;
  v19[3] = &unk_1E7A7D9E8;
  v19[4] = v12;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v24, &v20, v19, 0);
  v14 = sub_1AF24BF34(v13, "OLD REFLECTION PROBE ARRAY", v24);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v24);
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v17 = *(a1 + 100);
  *&v20 = v14;
  DWORD2(v20) = v8;
  v21 = v16;
  v10 = 1;
  v22 = v17;
  v23 = 1;
  *(*(*(a1 + 32) + 8) + 24) = CFX::RG::makeCopyPass(v15, "Copy probe pass", &v20);
  v18 = *(a1 + 88);
  *(*(v18 + 24) + 4 * *(a1 + 100)) = *(a1 + 96);
  *(*(v18 + 40) + 8 * *(a1 + 100)) = *(a1 + 56);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return v10;
}

void sub_1AF24C7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(va);
  _Unwind_Resume(a1);
}

CFX::RG::Pass *sub_1AF24C7E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v10 = a3;
  v13 = *a2;
  v39[0] = "Reflection probe render pass";
  v39[1] = v13;
  v40 = 0;
  v41 = a5;
  v42 = a6;
  v43 = a4;
  v14 = sub_1AF24D094(a1, a1, v39);
  v15 = *a2;
  *&v26 = "Generate probe mipmap pass";
  *(&v26 + 1) = v15;
  v27 = 0;
  v16 = CFX::RG::Resource::constTextureDesc(v14[60]);
  v17 = *v16;
  v29 = v16[1];
  v28 = v17;
  v18 = v16[2];
  v19 = v16[3];
  v20 = v16[4];
  v33 = v16[5];
  v32 = v20;
  v31 = v19;
  v30 = v18;
  v21 = v16[6];
  v22 = v16[7];
  v23 = v16[8];
  v37 = v16[9];
  v36 = v23;
  v35 = v22;
  v34 = v21;
  v38 = 0;
  v24 = sub_1AF24CBA0(a1, a1, &v26);
  sub_1AF236200(v24, v14[60]);
  CFX::RG::Pass::dependsOn(v24, v14);
  return sub_1AF24CBF8(a1, a2, v10, v9, a6, 0, v24[78], v24, a7);
}

void sub_1AF24C92C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24C968(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24C9A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24C9E0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24CA1C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24CA58(uint64_t a1)
{
  *a1 = &unk_1F24EA0D8;

  if (*(a1 + 36))
  {
    free(*(a1 + 40));
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 24));
  }

  return a1;
}

void sub_1AF24CAC0(uint64_t a1)
{
  *a1 = &unk_1F24EA0D8;

  if (*(a1 + 36))
  {
    free(*(a1 + 40));
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 24));
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24CB48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24CDCC(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CBA0(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, _OWORD *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24CE1C(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

CFX::RG::Pass *sub_1AF24CBF8(uint64_t *a1, uint64_t *a2, int a3, int a4, uint64_t a5, int a6, unint64_t a7, CFX::RG::Pass *a8, uint64_t a9)
{
  v17 = *a2;
  v41[0] = "Reflection probe radiance pass";
  v41[1] = v17;
  v42 = 0;
  v43 = a4;
  v44 = a5;
  v45 = a6 != 1;
  v46 = a6;
  v18 = sub_1AF24CE7C(a1, a1, v41);
  *(v18 + 60) = a7;
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(v18, a7, v19);
  if (a8)
  {
    CFX::RG::Pass::dependsOn(v18, a8);
  }

  if (a6 == 1)
  {
    *&v35 = *(v18 + 61);
    DWORD2(v35) = 0;
    v36 = a9;
    v37 = a3;
    v38 = 1;
    CopyPass = CFX::RG::makeCopyPass(a1, "Copy radiance pass", &v35);
    CFX::RG::Pass::dependsOn(CopyPass, v18);
  }

  else
  {
    v20 = *a2;
    *&v35 = "Reflection probe box blur pass";
    *(&v35 + 1) = v20;
    LOWORD(v36) = 0;
    v37 = a4;
    v39 = a5;
    v40 = 5;
    v21 = sub_1AF24CED4(a1, a1, &v35);
    v22 = *(v18 + 61);
    *(v21 + 60) = v22;
    v23 = CFX::RG::Temporal::currentFrame(v21);
    CFX::RG::Pass::readFrom(v21, v22, v23);
    v24 = *a2;
    v29[0] = "Reflection probe convert cube pass";
    v29[1] = v24;
    v30 = 0;
    v31 = 1;
    v32 = a5;
    v33 = a3;
    v34 = 5;
    CopyPass = sub_1AF24CF2C(a1, a1, v29);
    v26 = *(v21 + 61);
    *(CopyPass + 60) = v26;
    v27 = CFX::RG::Temporal::currentFrame(CopyPass);
    CFX::RG::Pass::readFrom(CopyPass, v26, v27);
    *(CopyPass + 61) = a9;
    CFX::RG::Pass::renderTo(CopyPass, a9, 0x100000000, 0);
  }

  return CopyPass;
}

uint64_t sub_1AF24CDCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1F0u, 0x10u, 2);
  return sub_1AF24B318(v7, *a3, a3[1], v8, a5);
}

CFX::RG::Pass *sub_1AF24CE1C(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, _OWORD *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x278u, 8u, 2);
  return sub_1AF2360AC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24CE7C(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24CF84(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CED4(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24CFE4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CF2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24D044(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24CF84(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF249CE0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24CFE4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF24A6F4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24D044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF24AC44(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF24D094(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24D0EC(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24D0EC(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF249924(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24D14C(uint64_t a1)
{
  *a1 = &unk_1F24EA0F8;

  return a1;
}

void sub_1AF24D194(uint64_t a1)
{
  *a1 = &unk_1F24EA0F8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24D1FC(uint64_t a1)
{
  *a1 = &unk_1F24EA118;

  return a1;
}

void sub_1AF24D24C(uint64_t a1)
{
  *a1 = &unk_1F24EA118;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24D2BC(uint64_t a1)
{
  *a1 = &unk_1F24EA138;

  return a1;
}

void sub_1AF24D304(uint64_t a1)
{
  *a1 = &unk_1F24EA138;

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24D36C(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(4 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 4 * v7);
  memcpy(v8, v4, 4 * *a1);
  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

char *sub_1AF24D438(uint64_t a1, uint64_t a2, uint64_t *a3, const CFX::RG::ExternalResourceDesc *a4, char *a5)
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = sub_1AF23498C(v12, 0xE0u, 8u, 2);
  v9 = *a3;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v11, a4);
  CFX::RG::Resource::Resource(v8, v9, v11, *a5, 1);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v11);
  return v8;
}

uint64_t sub_1AF24D4DC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  if ((atomic_load_explicit(byte_1ED73A768, memory_order_acquire) & 1) == 0)
  {
    v10 = a4;
    v11 = a2;
    v9 = a3;
    sub_1AFDEF5F0();
    a4 = v10;
    a2 = v11;
    a3 = v9;
  }

  if (byte_1ED73A760)
  {
    v5 = 0xD0F5177056B737E3;
  }

  else
  {
    v5 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v5, 0);
  *a1 = &unk_1F24EA158;
  *(CFX::RG::Pass::commonRenderParameters(v6) + 282) = 1;
  v12 = *(a1 + 8);
  v7 = sub_1AF23498C(&v12, 0x3B20u, 0x10u, 2);
  bzero(v7, 0x3B20uLL);
  *(a1 + 456) = v7;
  sub_1AF124FB0(v7);
  return a1;
}

void sub_1AF24D5D0(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  *(a1 + 56) = v5;
  if (!v5)
  {
    v6 = sub_1AF24D6A8(*(a2 + 32), v4);
    *(a1 + 56) = v6;
    v7 = sub_1AF1CF520();
    sub_1AF2334EC(v6 + 2, v7);
    v8 = *(a1 + 56);
    v11 = sub_1AF1B8588(v9, v10);
    sub_1AF2334EC((v8 + 24), v11);
    v13 = sub_1AF1403B4(*(a1 + 56) + 24, v12);
    sub_1AF1B9F10(v13, xmmword_1AFE42FF0);
    sub_1AF15C19C(v14, v15);
    v17 = v16;
    v19 = sub_1AF1403B4(*(a1 + 56) + 24, v18);
    sub_1AF1BB2D4(v19, v17);

    CFRelease(v17);
  }
}

void *sub_1AF24D6A8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF24D730(uint64_t *a1, const char *a2, id *a3)
{
  v5 = sub_1AF130770(a1[54], a2, a3);
  prof_beginFlameSmallData("RemoteReplay", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RemoteReplayPass.mm", 49, v5 | 0x300000000);
  v7 = sub_1AF12E2AC(a1[54], v6);
  v8 = sub_1AF13110C(a1[54]);
  *&v9 = sub_1AF22E000(v8, &v51, &v47).n128_u64[0];
  objc_msgSend_renderSize(v7, v10, v11, v9);
  v14 = vdiv_f32(v13, vdup_lane_s32(v13, 1)).f32[0];
  if (v14 >= 1.0)
  {
    v47.n128_f32[0] = v47.n128_f32[0] / v14;
  }

  else
  {
    v48.n128_f32[1] = v14 * v48.n128_f32[1];
  }

  v15 = sub_1AF1403B4(a1[56] + 24, v12);
  sub_1AF1BA204(v15, &v51, v16, v17, v18, v19, v20, v21);
  v23 = sub_1AF1403B4(a1[56] + 24, v22);
  v25 = sub_1AF1BB260(v23, v24);
  sub_1AF15D3D0(v25, v26, v47, v48, v49, v50);
  v27 = a1[54];
  v28 = a1[57];
  v30 = sub_1AF1403B4(a1[56] + 24, v29);
  v32 = sub_1AF1403B4(a1[56] + 24, v31);
  v34 = sub_1AF1403B4(a1[56] + 16, v33);
  sub_1AF1243E4(v28, v27, v30, v32, v34);
  sub_1AF125068(a1[57], 0);
  objc_msgSend__fillProcessingContextWithCullingContext_(v7, v35, a1[57]);
  v37 = sub_1AF1403B4(a1[56] + 16, v36);
  objc_msgSend__fillFrameUniformsWithWorld_(v7, v38, v37);
  objc_msgSend__fillVFXCoreRenderData(v7, v39, v40);
  v41 = CFX::RG::RenderPassArguments::encoder(a3);
  v44 = objc_msgSend_resourceManager(v7, v42, v43);
  v46 = __invert_f4(v51);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1AF24D96C;
  v45[3] = &unk_1E7A7DA58;
  v45[4] = v41;
  v45[5] = v8;
  v45[6] = v7;
  v45[7] = v44;
  sub_1AF22E074(v8, 1, &v46, v45);
  prof_endFlame();
}

void sub_1AF24D96C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v3;
  sub_1AF22E778(v4, a3);
}

void sub_1AF24D9A0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF24D9D8(void *a1)
{
  *a1 = &unk_1F24EA1B0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_1AF24DA30(void *a1)
{
  *a1 = &unk_1F24EA1B0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF24DAA8(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A788, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF63C();
  }

  sub_1AF250390(a1, a2, a3, a4, qword_1ED73A780, a5);
  *a1 = &unk_1F24EA1D0;
  *(a1 + 59) = 0;
  *(a1 + 60) = 0;
  *(a1 + 58) = 0;
  v11 = a4[4].n128_i64[0];
  v45 = a4[4].n128_i64[1];
  v46 = a4[3].n128_i64[1];
  v44 = a4[5].n128_i64[0];
  v13 = a4[5].n128_i64[1];
  v12 = a4[6].n128_i64[0];
  v14 = a4[6].n128_i64[1];
  v48 = a4[7].n128_i64[1];
  v49 = a4[7].n128_i64[0];
  v47 = a4[8].n128_u64[0];
  v15 = v13 != 0;
  if (v12)
  {
    v16 = CFX::RG::Pass::commonRenderParameters(a1);
    v15 |= 0x804u;
    v16[12] = 0;
    v16[13] = 0;
    v16[14] = 0;
    v16[15] = 0x47EFFFFFE0000000;
  }

  v17 = v15 | 2;
  if (!v14)
  {
    v17 = v15;
  }

  if (v49)
  {
    v17 |= 0x80u;
  }

  if (v12)
  {
    v17 |= 4u;
  }

  if (v48)
  {
    v18 = v17 | 0x200;
  }

  else
  {
    v18 = v17;
  }

  if (v47)
  {
    v19 = sub_1AF12DDCC(*(a1 + 54), v10);
    if (v19)
    {
      if (sub_1AF1D0738(v19, v10))
      {
        v18 |= 0x1008u;
      }

      else
      {
        v18 |= 8u;
      }
    }

    else
    {
      v18 |= 8u;
    }
  }

  v20 = sub_1AF12F5E8(a4->n128_i64[1], v10);
  if (v11)
  {
    v22 = v18 | 0x40;
  }

  else
  {
    v22 = v18;
  }

  v23 = a4[1].n128_u8[8];
  if ((v23 & (v20 != 0)) != 0)
  {
    v22 |= 0x400u;
  }

  v50 = a4[2].n128_u64[1];
  v51 = v22;
  if (a4[1].n128_u8[0] == 1)
  {
    v24 = sub_1AF1307C4(a4->n128_i64[1]);
    v23 = a4[1].n128_u8[8];
  }

  else
  {
    v24 = 0;
  }

  v52 = v24;
  v53 = 1;
  v54 = 0;
  v55 = v23;
  if ((atomic_load_explicit(byte_1ED73A788, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF63C();
  }

  v25 = a4[3].n128_u64[0];
  v26 = 0x9DDFEA08EB382D69 * (qword_1ED73A780 ^ ((0x9DDFEA08EB382D69 * (qword_1ED73A780 ^ a4[2].n128_u64[1])) >> 47) ^ (0x9DDFEA08EB382D69 * (qword_1ED73A780 ^ a4[2].n128_u64[1])));
  v56 = 0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47));
  v57 = v25;
  if (a4[1].n128_u8[12])
  {
    v27 = v53 | 0x40;
  }

  else
  {
    v27 = v53;
  }

  v28 = v27 & 0xFFFFFFFFFFFFFFF5;
  v29 = 2;
  if (!a4[1].n128_u8[9])
  {
    v29 = 0;
  }

  v30 = 8;
  if (!a4[1].n128_u8[10])
  {
    v30 = 0;
  }

  v31 = v30 | v29 | v28;
  if (a4[1].n128_u8[11])
  {
    v32 = sub_1AF12DDCC(a4->n128_i64[1], v21);
    v34 = v31 | (32 * (sub_1AF1CF8AC(v32, v33) != 0)) | 0x10;
  }

  else
  {
    v34 = v31 & 0xFFFFFFFFFFFFFFCDLL;
  }

  v53 = v34;
  if (a4[1].n128_u8[0] == 1)
  {
    v35 = sub_1AF12FAE0(a4->n128_i64[1]);
  }

  else
  {
    v35 = 1;
  }

  *((*(*a1 + 32))(a1) + 268) = v35;
  v36 = a4[1].n128_u8[11];
  *((*(*a1 + 32))(a1) + 280) = v36;
  *(a1 + 57) = a4[2].n128_u64[0];
  v37 = *(a1 + 54);
  v58[0] = a2;
  v58[1] = a3;
  v38 = sub_1AF23498C(v58, 0x48u, 8u, 2);
  sub_1AF2603E8(v38, v37, &v50, *(a1 + 57));
  *(a1 + 56) = v39;
  if (v46)
  {
    if (a4[9].n128_u64[0])
    {
      v40 = 0x100000001;
    }

    else
    {
      v40 = 0x100000002;
    }

    v39 = CFX::RG::Pass::renderTo(a1, v46, v40, 0);
  }

  if (v11)
  {
    v39 = CFX::RG::Pass::renderTo(a1, v11, 0x100000002, 1);
  }

  if (v45)
  {
    if (a4[9].n128_u64[1])
    {
      v41 = 0x200000001;
    }

    else
    {
      v41 = 0x200000002;
    }

    v39 = CFX::RG::Pass::renderTo(a1, v45, v41, -1);
  }

  if (v44)
  {
    v39 = CFX::RG::Pass::renderTo(a1, v44, 0x300000002, -1);
  }

  if (v13)
  {
    v39 = CFX::RG::Pass::renderTo(a1, v13, 0x100000002, 2);
  }

  if (v12)
  {
    v39 = CFX::RG::Pass::renderTo(a1, v12, 0x100000002, 3);
  }

  if (v14)
  {
    v39 = CFX::RG::Pass::renderTo(a1, v14, 0x100000002, 4);
  }

  if (v49)
  {
    v39 = CFX::RG::Pass::renderTo(a1, v49, 0x100000002, 5);
  }

  if (v48)
  {
    v39 = CFX::RG::Pass::renderTo(a1, v48, 0x100000002, 6);
  }

  if (v47)
  {
    v42 = CFX::RG::Temporal::currentFrame(v39);
    CFX::RG::Pass::readFrom(a1, v47, v42);
  }

  return a1;
}

void sub_1AF24DF6C(uint64_t *a1, const char *a2, uint64_t a3)
{
  v4 = sub_1AF130770(a1[54], a2, a3);
  prof_beginFlameSmallData("Main::Setup", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderElementsPass.mm", 172, v4 | 0x300000000);
  if ((*(a1[56] + 24) & 2) != 0)
  {
    v8 = sub_1AF1303B8(a1[54], v5);
    v7 = (*(*a1 + 32))(a1);
    *v7 = vcvtq_f64_f32(*v8.f32);
    v7[1] = vcvt_hight_f64_f32(v8);
  }

  else
  {
    v6 = (*(*a1 + 32))(a1);
    *v6 = 0u;
    v6[1] = 0u;
  }

  prof_endFlame();
}

void sub_1AF24E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Main::Prepare", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderElementsPass.mm", 183, v5 | 0x300000000);
  sub_1AF260410(*(a1 + 448), a2, v6);
  v8 = sub_1AF12E2AC(*(a1 + 432), v7);
  v10 = sub_1AF12DDCC(*(a1 + 432), v9);
  v12 = sub_1AF1D00F8(v10, v11);
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v12) ^ ((0x9DDFEA08EB382D69 * v12) >> 47));
  v14 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47)));
  if (v14)
  {
    v17 = *(v14 + 48);
    v16 = v14 + 48;
    if (v17)
    {
      v18 = sub_1AF2338B0(v16, v15);
      objc_msgSend__setReflectionProbeArrayTexture_(v8, v19, v18);
    }
  }

  prof_endFlame();
}

void sub_1AF24E158(uint64_t *a1, uint64_t a2, id *a3)
{
  v6 = sub_1AF130770(a1[54], a2, a3);
  prof_beginFlameSmallData("Main::Render", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderElementsPass.mm", 199, v6 | 0x300000000);
  v7 = a1[54];
  v8 = sub_1AF23B41C(a1[57]);
  sub_1AF131034(v7, v8);
  v9 = sub_1AF12E2A0(a1[54]);
  if (v9)
  {
    v11 = sub_1AF1310A0(a1[54]);
    v12 = sub_1AF170BF8(a1[57]);
    sub_1AF22D6CC(v11, v12[448], v12[449], v12[450], v12[451], v12[576], v12[577], v12[578], v12[579]);
  }

  v13 = a1[58];
  if (v13)
  {
    v14 = *(a2 + 24);
    v15 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v14, v13, v15);
    v17 = CFX::RG::RenderPassArguments::encoder(a3);
    objc_msgSend_useResource_usage_stages_(v17, v18, Texture, 1, 2);
  }

  v19 = sub_1AF12F398(a1[54], v10);
  v20 = v19;
  v21 = *(a1[56] + 33) != 1 || v19 == 0;
  if (!v21 && *v19)
  {
    (*v19)(a1[54]);
  }

  if (*((*(*a1 + 32))(a1) + 268) && (*(a1[57] + 121) & 1) != 0)
  {
    v22 = CFX::RG::RenderPassArguments::sliceIndex(a3);
  }

  else
  {
    v22 = 0;
  }

  sub_1AF260B04(a1[56], a2, a3, v22 << 8);
  if (*(a1[56] + 33) == 1)
  {
    if (v20)
    {
      v23 = v20[1];
      if (v23)
      {
        v23(a1[54]);
      }
    }
  }

  sub_1AF131034(a1[54], 0);

  prof_endFlame();
}

uint64_t sub_1AF24E34C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A798, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDEF694();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A790, 0);
  *a1 = &unk_1F24EA228;
  v8 = *(a5 + 24);
  v9 = *(a5 + 56);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 480) = v9;
  *(a1 + 448) = v8;
  v10 = *(a5 + 72);
  v11 = *(a5 + 88);
  v12 = *(a5 + 120);
  *(a1 + 528) = *(a5 + 104);
  *(a1 + 544) = v12;
  *(a1 + 496) = v10;
  *(a1 + 512) = v11;
  v13 = *(a5 + 136);
  v14 = *(a5 + 152);
  v15 = *(a5 + 168);
  *(a1 + 608) = *(a5 + 184);
  *(a1 + 576) = v14;
  *(a1 + 592) = v15;
  *(a1 + 560) = v13;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  CFX::RG::TextureDescriptorReference::withSampleCount(&v21, (a1 + 456), 1);
  *(&v22 + 1) = 25;
  LOBYTE(v23) = 1;
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
  v16 = sub_1AF233CC8(a4, "LINEAR_DEPTH", v20);
  *(a1 + 632) = v16;
  CFX::RG::Pass::renderTo(a1, v16, 0x100000000, 0);
  return a1;
}

uint64_t sub_1AF24E4BC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1ED73A778, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    v8 = a1;
    sub_1AFDEF6EC();
    a2 = v7;
    a1 = v8;
  }

  v3 = *(a2 + 24);
  v4 = *(a1 + 632);
  v5 = dword_1ED73A770;

  return CFX::GPUResourceManager::registerNamedFrameResource(v3, v4, v5);
}

void sub_1AF24E51C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(a2[4], v4);
  *(a1 + 616) = v5;
  if (!v5)
  {
    *(a1 + 616) = sub_1AF24E60C(a2[4], v4);
    v7 = sub_1AF12E2AC(*(a1 + 432), v6);
    v10 = objc_msgSend_resourceManager(v7, v8, v9);
    v11 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 632)) + 6);
    v12 = sub_1AFDE868C(v10);
    v15 = objc_msgSend_frameworkLibrary(v12, v13, v14);
    v16 = *(a1 + 616);
    memset(v19, 0, sizeof(v19));
    v20 = v15;
    v21 = v11;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = @"vertex_draw_quad";
    v34 = @"linearize_depth2";
    v35 = 0u;
    v36 = 0u;
    v18 = objc_msgSend_newRenderPipelineStateWithDesc_(v10, v17, v19);
    sub_1AF23355C((v16 + 16), v18);
  }
}

void *sub_1AF24E60C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1AF24E694(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(a1[54], a2);
  v8 = objc_msgSend_renderEncoder(v4, v5, v6);
  v9 = a1[56];
  if (v9 || (result = sub_1AF12F10C(a1[54], v7), (v9 = result) != 0))
  {
    result = sub_1AF1BB260(v9, v7);
    if (result)
    {
      v12 = sub_1AF15E428(result, v11);
      v14 = sub_1AF12DDCC(a1[54], v13);
      if ((*v12 & 2) != 0)
      {
        if (v14)
        {
          sub_1AF27F230(v12, v9, 0, v14);
        }
      }

      v16 = *(v12 + 4);
      v15 = *(v12 + 8);
      v17 = v15 - v16;
      v18.f32[0] = v15 * v16;
      __asm { FMOV            V3.2S, #1.0 }

      _D3.f32[0] = v17;
      v18.f32[1] = v15;
      v36 = vdiv_f32(_D3, v18);
      sub_1AF1F905C(v8, &v36, 8uLL, 0);
      v25 = sub_1AF2338B0(a1[77] + 16, v24);
      v28 = objc_msgSend_state(v25, v26, v27);
      v30 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v29, v28);
      v31 = *(a2 + 24);
      v32 = a1[78];
      v33 = CFX::RG::Temporal::currentFrame(v30);
      Texture = CFX::GPUResourceManager::getTexture(v31, v32, v33);
      sub_1AF1F8FCC(v8, Texture, 0);
      return sub_1AF2016F4(v8, v35);
    }
  }

  return result;
}

double sub_1AF24E7B8(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 78) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

CFX::RG::Pass *sub_1AF24E800(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t a3, CFX::RG::TextureDescriptorReference *a4, uint64_t a5, char a6)
{
  v12 = sub_1AF12DDCC(*(a2 + 8), a2);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v49, a4, 1);
  v27 = v55;
  v28 = v56;
  v29 = v57;
  v30 = v58;
  v23 = v51;
  v24 = v52;
  v25 = v53;
  v26 = v54;
  v21 = v49;
  v22 = v50;
  v13 = sub_1AF233CC8(a1, "DEPTH PREPASS", &v21);
  v14 = *(a2 + 8);
  v33.n128_u64[0] = "Render prepass";
  v33.n128_u64[1] = v14;
  v34 = *(a2 + 16);
  v35 = 16842752;
  v36 = a6;
  v37 = a3;
  v38 = 0;
  v39 = -1;
  v40 = 0;
  v41 = 0;
  v42 = v13;
  v43 = 0;
  v44 = a5;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ 1)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ 1)) >> 47) ^ 1);
  *&v21 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = sub_1AF24E9C4(a1, &v33, &v21);
  v17 = *(a2 + 8);
  *&v21 = "Linearize depth";
  *(&v21 + 1) = v17;
  LOWORD(v22) = 0;
  *(&v22 + 1) = sub_1AF23B410(a3);
  v29 = v55;
  v30 = v56;
  v31 = v57;
  v32 = v58;
  v25 = v51;
  v26 = v52;
  v27 = v53;
  v28 = v54;
  v23 = v49;
  v24 = v50;
  v18 = sub_1AF24EA1C(a1, a1, &v21);
  *(v18 + 78) = v13;
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(v18, v13, v19);
  CFX::RG::Pass::dependsOn(v18, v16);
  return v16;
}

uint64_t sub_1AF24E9C4(uint64_t *a1, __n128 *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24EC9C(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24EA1C(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF24ECFC(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

CFX::RG::Pass *sub_1AF24EA74(uint64_t *a1, __n128 *a2)
{
  v4 = sub_1AF12DDCC(a2->n128_i64[1], a2);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47));
  *&v10 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v6 = sub_1AF24E9C4(a1, a2, &v10);
  if (a2[9].n128_u64[0])
  {
    *&v10 = a2[9].n128_u64[0];
    DWORD2(v10) = 0;
    v11 = a2[3].n128_i64[1];
    v12 = 0x100000000;
    CopyPass = CFX::RG::makeCopyPass(a1, "Copy input color", &v10);
    CFX::RG::Pass::dependsOn(v6, CopyPass);
  }

  if (a2[9].n128_u64[1])
  {
    *&v10 = a2[9].n128_u64[1];
    DWORD2(v10) = 0;
    v11 = a2[4].n128_i64[1];
    v12 = 0x100000000;
    v8 = CFX::RG::makeCopyPass(a1, "Copy input depth", &v10);
    CFX::RG::Pass::dependsOn(v6, v8);
  }

  return v6;
}

void sub_1AF24EB78(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24EBB4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF24EBEC(uint64_t a1)
{
  *a1 = &unk_1F24EA280;

  return a1;
}

void sub_1AF24EC34(uint64_t a1)
{
  *a1 = &unk_1F24EA280;

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF24EC9C(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E8u, 8u, 2);
  return sub_1AF24DAA8(v8, *a3, a3[1], a4, *a5);
}

uint64_t sub_1AF24ECFC(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x280u, 8u, 2);
  return sub_1AF24E34C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF24ED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = CFXTextureDescriptorMake2D(COERCE_FLOAT(*(a1 + 16)), COERCE_FLOAT(HIDWORD(*(a1 + 16))), *(a1 + 24), a2);
  v5 = *(a1 + 32);
  v6 = 0x20000000000;
  if (v5 > 1)
  {
    v6 = 0x30000000000;
  }

  v7 = *(a2 + 12) & 0xFFFFF000FFFFFFFFLL;
  *(a2 + 10) = v5;
  *(a2 + 12) = (v7 | v6) & 0xFFFFFF00FFFFFFFFLL | (*(a1 + 40) << 32);
  return result;
}

double sub_1AF24EDD0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1AF24EDE8@<D0>(CFX::RG::RenderGraphBuilder *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X3>, CFX::RG::Pass *a4@<X4>, const CFX::RG::Resource *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = 0uLL;
  v24 = 0;
  CFXTextureDescriptorMakeDefault(&v23);
  CFX::RG::TextureDescriptorReference::finalColor(&v20);
  CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(a2, &v20, &v23);
  v14 = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, a5);
  if (v14)
  {
    v15 = *v14;
    v21 = v14[2];
    v20 = v15;
    if (a6)
    {
      CFX::RG::TextureDescriptorReference::partialResolveInto(a6, &v20);
    }

    v23 = v20;
    v24 = v21;
  }

  v20 = v23;
  v21 = v24;
  v16 = sub_1AF2373FC(a1, "Converted texture", &v20);
  *&v20 = a5;
  DWORD2(v20) = 0;
  v21 = v16;
  v22 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a1, a3, &v20);
  v18 = CopyPass;
  if (a4)
  {
    CFX::RG::Pass::dependsOn(CopyPass, a4);
  }

  result = 0.0;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 16) = 0u;
  *a7 = v18;
  *(a7 + 8) = v16;
  return result;
}

double sub_1AF24EF24@<D0>(CFX::RG::RenderGraphBuilder *a1@<X0>, uint64_t **a2@<X1>, CFX::RG::TextureDescriptorReference *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, CFX::RG::TextureDescriptorReference *a7@<X7>, uint64_t a8@<X8>, CFX::RG::Pass **a9)
{
  v51 = *MEMORY[0x1E69E9840];
  *&v41 = a5;
  *(&v41 + 1) = a6;
  v15 = *(a4 + 56);
  if (!v15)
  {
    v15 = -1;
    *(a4 + 56) = -1;
  }

  v42[0] = *(a4 + 1) ^ 1;
  v42[1] = 0;
  v43 = *(a4 + 4);
  v44 = *(a4 + 2);
  v45 = 0;
  v16 = *(a4 + 32);
  v46 = *(a4 + 16);
  v47 = v16;
  v48 = *(a4 + 48);
  v49 = v15;
  v50 = *(a4 + 64);
  sub_1AF23891C(v40, a3, v16);
  v39 = 0;
  v38 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = sub_1AF26A74C(a1, a2, a3, v42, v40, &v34, &v41, a7);
  v18 = v17;
  v20 = v19;
  if (a9)
  {
    *a9 = v17;
  }

  v21 = v39;
  if (v17)
  {
    v22 = a2;
    v23 = a7;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    if (*(a4 + 3) == 1)
    {
      v30[0] = v34;
      v30[1] = 0;
      v30[2] = v35;
      v30[3] = v36;
      v31 = v37;
      v32 = *(&v36 + 1);
      v33 = v17;
      v29 = 0;
      v17 = sub_1AF26E55C(a1, v22, a3, v40, v30, &v29, v23);
      if (v29)
      {
        v24 = v29;
      }
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v17 = 0;
  }

  if (v20)
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  *a8 = v17;
  *(a8 + 8) = v24;
  *(a8 + 16) = v18;
  *(a8 + 24) = v25;
  *(a8 + 32) = v18;
  *(a8 + 40) = v26;
  *(a8 + 48) = v20;
  *(a8 + 56) = v27;
  result = 0.0;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  return result;
}

double sub_1AF24F104@<D0>(CFX::RG::Resource *this@<X4>, CFX::RG::RenderGraphBuilder *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, CFX::RG::Pass *a5@<X3>, uint64_t a6@<X8>)
{
  v12 = CFX::RG::Resource::constTextureDesc(this);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v30, v12, 1);
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v18 = v30;
  v19 = v31;
  v13 = sub_1AF233CC8(a2, "DEPTH COPY", &v18);
  *&v18 = this;
  DWORD2(v18) = 0;
  *&v19 = v13;
  *(&v19 + 1) = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a2, "Copy linearize depth", &v18);
  CFX::RG::Pass::dependsOn(CopyPass, a5);
  *&v18 = "Linearize depth";
  *(&v18 + 1) = a3;
  LOWORD(v19) = 0;
  *(&v19 + 1) = a4;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v20 = v30;
  v21 = v31;
  v15 = sub_1AF24EA1C(a2, a2, &v18);
  sub_1AF24E7B8(v15, v13);
  CFX::RG::Pass::dependsOn(v15, CopyPass);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 16) = 0u;
  v17 = *(v15 + 79);
  *a6 = v15;
  *(a6 + 8) = v17;
  return result;
}

double sub_1AF24F264@<D0>(CFX::RG *a1@<X0>, uint64_t a2@<X1>, CFX::RG::Resource *a3@<X3>, CFX::RG::Resource *a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __n128 a9@<Q0>, __n128 a10@<Q1>, __n128 a11@<Q2>, float a12@<S3>, float a13@<S4>, float a14@<S5>, float a15@<S6>, float a16@<S7>, uint64_t a17, uint64_t a18)
{
  v34 = *MEMORY[0x1E69E9840];
  *&v22[0] = 0;
  v22[1] = a9;
  v22[2] = a10;
  v22[3] = a11;
  v23 = a6;
  v24 = a7;
  v25 = a17;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a18;
  v32 = a5;
  v33 = a2;
  v19 = sub_1AF23AA0C(a1, a3, a4, v22);
  result = 0.0;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 16) = 0u;
  v21 = *(v19 + 74);
  *a8 = v19;
  *(a8 + 8) = v21;
  return result;
}

double sub_1AF24F318@<D0>(CFX::RG *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFX::RG::Resource *a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v13[0] = a3;
  v13[1] = a6;
  v13[2] = a7;
  v14 = a5;
  v15 = a9;
  v16 = a2;
  v10 = sub_1AF245774(a1, a4, v13);
  result = 0.0;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 16) = 0u;
  v12 = *(v10 + 61);
  *a8 = v10;
  *(a8 + 8) = v12;
  return result;
}

double sub_1AF24F37C@<D0>(CFX::RG *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const CFX::RG::Resource *a5@<X5>, CFX::RG::Resource *a6@<X6>, uint64_t a7@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v11 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, a5);
  v12 = v11[2];
  v17 = *v11;
  v18 = v12;
  v13 = sub_1AF237040(a1, a2, v16, a6);
  result = 0.0;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  v15 = *(v13 + 101);
  *a7 = v13;
  *(a7 + 8) = v15;
  return result;
}

double sub_1AF24F40C@<D0>(CFX::RG *a1@<X0>, uint64_t **a2@<X1>, CFX::RG::TextureDescriptorReference *a3@<X2>, const void *a4@<X3>, const CFX::RG::Resource *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (!a5)
  {
    v16 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEF744(v16);
    }
  }

  sub_1AF23891C(v28, a3, a4);
  v28[2] = 0;
  v28[5] = 0;
  v17 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, a5) + 4);
  v18 = vld1q_dup_f64(v17);
  v29 = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(v18, xmmword_1AFE42F50), 0x30uLL)));
  v24[1] = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0;
  v24[0] = a5;
  v24[2] = a7;
  v27 = a6;
  v19 = CFX::RG::Resource::textureDesc(a5);
  v20 = sub_1AF26E55C(a1, a2, a3, v28, v24, &v23, v19);
  result = 0.0;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  v22 = v23;
  *a8 = v20;
  *(a8 + 8) = v22;
  return result;
}

double sub_1AF24F538@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, CFX::RG::Resource *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v14[3] = a8;
  v12 = a3;
  v13 = a2;
  v9 = sub_1AF24F5A4(a1, &v13, &v12, v14);
  CFX::RG::Pass::writeTo(v9, v12);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 16) = 0u;
  v11 = v12;
  *a4 = v9;
  *(a4 + 8) = v11;
  return result;
}

uint64_t sub_1AF24F5A4(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF24FEC0(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF24F600(CFX::RG::Resource *this@<X3>, CFX::RG::RenderGraphBuilder *a2@<X0>, uint64_t a3@<X4>, int a4@<W5>, void *a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a5;
  v26 = 0;
  if (a5)
  {
    v12 = CFX::RG::Resource::constTextureDesc(this);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v22, v12, 1);
    if (a4)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    sub_1AF241720(a2, "Custom subgraph published texture", &v22, v13, &v25);
    v14 = v25;
    v26 = v25;
    v15 = v25;
  }

  else
  {
    v16 = CFX::RG::Resource::constTextureDesc(this);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v22, v16, 1);
    v15 = sub_1AF233CC8(a2, "Custom subgraph published texture", &v22);
    v14 = 0;
  }

  v27 = v15;
  *&v22 = this;
  DWORD2(v22) = 0;
  v23 = v15;
  v24 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a2, "Copy to publish", &v22);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v22, a3);
  if (a5)
  {
    v18 = sub_1AF24F7EC(a2, &v27, &v28);
    v19 = v27;
    v20 = CFX::RG::Temporal::currentFrame(v18);
    CFX::RG::Pass::readFrom(v18, v19, v20);
    CFX::RG::RenderGraphBuilder::publishResourceReference(a2, v22, v27, v18);
    CFX::RG::RegisterResourcePass::storeManaged(v18, &v26);
    CFX::RG::Pass::dependsOn(v18, CopyPass);
    v14 = v26;
    v15 = v27;
  }

  else
  {
    CFX::RG::RenderGraphBuilder::publishResourceReference(a2, v22, v15, CopyPass);
  }

  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 16) = 0u;
  *a6 = CopyPass;
  *(a6 + 8) = v15;
  v26 = 0;
  if (v14)
  {
    CFX::RG::Resource::~Resource(v14);
    free(v21);
  }
}

void sub_1AF24F7BC(_Unwind_Exception *exception_object)
{
  *(v2 - 88) = 0;
  if (v1)
  {
    CFX::RG::Resource::~Resource(v1);
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF24F7EC(uint64_t *a1, uint64_t *a2, void **a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25025C(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

CFX::RG::Resource *sub_1AF24F844(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF12E2AC(a3, a2);
  sub_1AF24ED5C(a2, v14);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v15, v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF24FAAC;
  v13[3] = &unk_1E7A7DAA0;
  v13[4] = a3;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v16, v15, v13, 0);
  FinalTexture = objc_msgSend_requireLoadFinalTexture(v6, v7, v8);
  CFX::RG::ExternalResourceDesc::setRequireLoad(v16, FinalTexture);
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v12, v16);
  v10 = sub_1AF24BF34(a1, "DRAWABLE", v12);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v12);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v16);
  return v10;
}

void sub_1AF24F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a9);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc((v9 - 240));
  _Unwind_Resume(a1);
}

double sub_1AF24F974@<D0>(CFX::RG::RenderGraphBuilder *a1@<X0>, const char *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X2>)
{
  CFXTextureDescriptorFromMTLTexture(a3, v13, a2, a5);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v14, v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF24FAA4;
  v12[3] = &unk_1E7A7DA80;
  v12[4] = a3;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v17, &v14, v12, 0);
  v9 = sub_1AF24BF34(a1, "Copy to External", v17);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v17);
  *&v14 = a2;
  DWORD2(v14) = 0;
  v15 = v9;
  v16 = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a1, "Copy", &v14);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 16) = 0u;
  *a4 = CopyPass;
  *(a4 + 8) = v9;
  return result;
}

void sub_1AF24FA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF24FAAC(uint64_t a1)
{
  prof_beginFlame("Get drawable", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/RenderGraphLibrary.mm", 645);
  v3 = sub_1AF12E2AC(*(a1 + 32), v2);
  v6 = objc_msgSend__finalRenderTexture(v3, v4, v5);
  prof_endFlame();
  return v6;
}

uint64_t sub_1AF24FB0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v13 = a3;
  v10 = a4;
  v11 = a7;
  v12 = a5;
  v8 = sub_1AF24FB7C(a1, a1, a2, &v10, &v13);
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *a6 = v8;
  result = sub_1AF261650(v8);
  *(a6 + 8) = result;
  return result;
}

uint64_t sub_1AF24FB7C(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  v10[0] = sub_1AF2502BC(v10[0], v8, v10, a2, a3, a4, a5);
  sub_1AF235000(a1 + 22, v10);
  return v10[0];
}

uint64_t sub_1AF24FBDC(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  objc_msgSend_attachmentProvider(a2, a2, a3);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v7 = objc_msgSend_attachmentProvider(a2, v5, v6), (v10 = objc_msgSend_finalColorDescriptor(v7, v8, v9)) != 0))
  {
    sub_1AF24FD20(a1, v10, v6);
  }

  else if (objc_msgSend_textureTarget(a2, v5, v6))
  {
    v13 = objc_msgSend_textureTarget(a2, v11, v12);
    sub_1AF24FDB8(a1, v13, v14);
  }

  else if (objc_msgSend_metalDisplayLinkUpdate(a2, v11, v12))
  {
    v17 = objc_msgSend_engineContext(a2, v15, v16);
    *a1 = vrndmq_f32(sub_1AF130548(v17));
    v20 = objc_msgSend_metalDisplayLinkUpdate(a2, v18, v19);
    sub_1AF24FE44(a1, v20, v21);
  }

  else if (objc_msgSend_layerTarget(a2, v15, v16))
  {
    v24 = objc_msgSend_engineContext(a2, v22, v23);
    *a1 = vrndmq_f32(sub_1AF130548(v24));
    v27 = objc_msgSend_layerTarget(a2, v25, v26);
    objc_msgSend_drawableSize(v27, v28, v29);
    *&v30 = v30;
    *(a1 + 16) = floorf(*&v30);
    objc_msgSend_drawableSize(v27, v31, v32);
    v34 = v33;
    *(a1 + 20) = floorf(v34);
    *(a1 + 24) = objc_msgSend_pixelFormat(v27, v35, v36);
    v39 = objc_msgSend_framebufferOnly(v27, v37, v38);
    v40 = 4;
    if (!v39)
    {
      v40 = 0;
    }

    *(a1 + 40) = v40;
  }

  return a1;
}

uint64_t sub_1AF24FD20(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 16) = objc_msgSend_width(a2, a2, a3);
  *(a1 + 20) = objc_msgSend_height(a2, v5, v6);
  *&v7 = 0;
  *(&v7 + 1) = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = objc_msgSend_width(a2, v8, v9);
  *(a1 + 12) = objc_msgSend_height(a2, v10, v11);
  *(a1 + 24) = objc_msgSend_pixelFormat(a2, v12, v13);
  result = objc_msgSend_arrayLength(a2, v14, v15);
  if (result <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = result;
  }

  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  return result;
}

void *sub_1AF24FDB8(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 16) = objc_msgSend_width(a2, a2, a3);
  *(a1 + 20) = objc_msgSend_height(a2, v5, v6);
  *&v7 = 0;
  *(&v7 + 1) = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = objc_msgSend_width(a2, v8, v9);
  *(a1 + 12) = objc_msgSend_height(a2, v10, v11);
  *(a1 + 24) = objc_msgSend_pixelFormat(a2, v12, v13);
  result = objc_msgSend_usage(a2, v14, v15);
  *(a1 + 40) = result;
  return result;
}

void *sub_1AF24FE44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_drawable(a2, a2, a3);
  v8 = objc_msgSend_texture(v5, v6, v7);
  *(a1 + 16) = objc_msgSend_width(v8, v9, v10);
  v13 = objc_msgSend_drawable(a2, v11, v12);
  v16 = objc_msgSend_texture(v13, v14, v15);
  *(a1 + 20) = objc_msgSend_height(v16, v17, v18);
  v21 = objc_msgSend_drawable(a2, v19, v20);
  v24 = objc_msgSend_texture(v21, v22, v23);
  *(a1 + 24) = objc_msgSend_pixelFormat(v24, v25, v26);
  v29 = objc_msgSend_drawable(a2, v27, v28);
  v32 = objc_msgSend_texture(v29, v30, v31);
  result = objc_msgSend_usage(v32, v33, v34);
  *(a1 + 40) = result;
  return result;
}

CFX::RG::Pass *sub_1AF24FEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, double *a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1D8u, 8u, 2);
  return sub_1AF24FF2C(v10, *a6, a6[1], a6[2], a6[3], *a3, a3[1], *a4, *a5);
}

CFX::RG::Pass *sub_1AF24FF2C(CFX::RG::Pass *this, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *this = &unk_1F24EA2A0;
  if ((atomic_load_explicit(byte_1ED73A7A8, memory_order_acquire) & 1) == 0)
  {
    v18 = a6;
    v19 = a7;
    sub_1AFDEF7C8();
    a6 = v18;
    a7 = v19;
  }

  if (byte_1ED73A7A0)
  {
    v16 = 0x87C7986451C0567CLL;
  }

  else
  {
    v16 = 0;
  }

  result = CFX::RG::Pass::Pass(this, a6, a7, "LoadRenderTarget", 1, v16, this);
  *this = &unk_1F24EA2A0;
  *(this + 53) = a8;
  *(this + 54) = a9;
  *(this + 55) = a2;
  *(this + 56) = a3;
  *(this + 57) = a4;
  *(this + 58) = a5;
  return result;
}

void sub_1AF250010(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF250048(double *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a1) ^ ((0x9DDFEA08EB382D69 * a1) >> 47));
    v8 = sub_1AF2501B8(*(a2 + 32), 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47)));
    v10 = sub_1AF1302D4(*(a1 + 53));
    if (v8[2] > v10)
    {
      v11 = *(a2 + 24);
      v12 = *(a1 + 54);
      v13 = CFX::RG::Temporal::currentFrame(v9);
      Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
      v15 = CFX::RG::RendererPassArguments::commandBuffer((a4 + 8));
      v16 = objc_alloc_init(MEMORY[0x1E6974128]);
      v19 = objc_msgSend_colorAttachments(v16, v17, v18);
      v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0);
      objc_msgSend_setTexture_(v21, v22, Texture);
      v23 = a1[55];
      v24 = a1[56];
      v25 = a1[57];
      v26 = a1[58];
      v29 = objc_msgSend_colorAttachments(v16, v27, v28);
      v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0);
      objc_msgSend_setClearColor_(v31, v32, v33, v23, v24, v25, v26);
      v36 = objc_msgSend_colorAttachments(v16, v34, v35);
      v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0);
      objc_msgSend_setLoadAction_(v38, v39, 2);
      v42 = objc_msgSend_colorAttachments(v16, v40, v41);
      v44 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0);
      objc_msgSend_setStoreAction_(v44, v45, 1);
      v47 = objc_msgSend_renderCommandEncoderWithDescriptor_(v15, v46, v16);

      objc_msgSend_endEncoding(v47, v48, v49);
    }

    v8[2] = v10;
  }
}

void *sub_1AF2501B8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

CFX::RG::Pass *sub_1AF25025C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1C0u, 8u, 2);
  return CFX::RG::RegisterResourcePass::RegisterResourcePass(v8, *a3, a3[1], *a4, *a5);
}

uint64_t sub_1AF2502BC(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v14[0] = a1;
  v14[1] = a2;
  v12 = sub_1AF23498C(v14, 0x1F0u, 8u, 2);
  return sub_1AF2612E0(v12, *a3, a3[1], a4, a5, a6, *a7);
}

uint64_t sub_1AF250334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = "Main";
  *(a2 + 8) = a1;
  *(a2 + 16) = sub_1AF12FAD0(a1);
  if (sub_1AF12FAD0(a1) == 1)
  {
    result = sub_1AF1307C4(a1);
  }

  else
  {
    result = 0;
  }

  *(a2 + 17) = result;
  return result;
}

__n128 sub_1AF250390(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v8 = a4->n128_u64[0];
  v13 = 0u;
  v14 = 0u;
  BYTE12(v13) = 1;
  BYTE14(v13) = 1;
  memset(v12, 0, sizeof(v12));
  do
  {
    v9 = &v12[v7];
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v7 += 2;
  }

  while (v7 != 16);
  BYTE3(v14) = 1;
  BYTE5(v14) = 1;
  *(&v14 + 7) = 257;
  BYTE11(v14) = 0;
  v10 = CFX::RG::Pass::Pass(a1, a2, a3, v8, v12, a5, a6);
  *v10 = &unk_1F24EA2F8;
  result = *a4;
  *(v10 + 440) = a4[1].n128_u64[0];
  *(v10 + 424) = result;
  return result;
}

uint64_t sub_1AF250474(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 32))(a1);
  v4 = v3[270];
  v5 = v3[271];
  v6 = v3[272];
  v7 = v3[273];
  sub_1AF250540(a2, (v3[269] != 0), v8);
  if (*(a2 + 40) == 1)
  {
    v4 = *(&xmmword_1AFE22A20 + v4);
  }

  objc_msgSend_setFrontFacingWinding_(*(a2 + 16), v9, v4);
  objc_msgSend_setTriangleFillMode_(*(a2 + 16), v10, v5);
  objc_msgSend_setDepthClipMode_(*(a2 + 16), v11, v6);
  v13 = *(a2 + 16);

  return objc_msgSend_setCullMode_(v13, v12, v7);
}

uint64_t sub_1AF250540(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  if (!*(a1 + 24))
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEF814(v5);
    }
  }

  *(a1 + 40) = v3;
  v6 = objc_msgSend_frontFacingWinding(*(a1 + 24), a2, a3);
  v8 = v6;
  if (*(a1 + 40) == 1)
  {
    v8 = *(&xmmword_1AFE22A20 + v6);
  }

  return objc_msgSend_setFrontFacingWinding_(*(a1 + 16), v7, v8);
}

uint64_t sub_1AF2505C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF12E2AC(*(a1 + 432), a2);

  return objc_msgSend_renderEncoder(v2, v3, v4);
}

uint64_t *sub_1AF2505F0(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v6 = result;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = sub_1AF12E2AC(result[54], a2);
      v12 = objc_msgSend_renderEncoder(v9, v10, v11);
      if (v12)
      {
        v13 = v12;
        v14 = CFX::RG::RenderPassArguments::passDescriptor((a4 + 8));
        v17 = objc_msgSend_renderTargetArrayLength(v14, v15, v16);
        if (*(v6 + 440) == 1)
        {
          v19 = *(v6 + 441);
          if (v19 == 1)
          {
            *v13 = v17;
          }

          else if (v19 == 2)
          {
            sub_1AF25083C(v13, v17, 1);
          }

          else
          {
            v28 = sub_1AF0D5194(v17, v18);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEF898(v28, v29, v30, v31, v32, v33, v34, v35);
            }
          }
        }

        else if (*(v6 + 440))
        {
          v20 = sub_1AF0D5194(v17, v18);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDEF8D0(v20, v21, v22, v23, v24, v25, v26, v27);
          }
        }

        else if (*(v13 + 4) != 1)
        {
          *(v13 + 4) = 1;
          objc_msgSend_setVertexAmplificationCount_viewMappings_(*(v13 + 16), v18, 1, 0);
        }

        sub_1AF250474(v6, v13);
      }

      return (*(*v6 + 56))(v6, a2, a4 + 8);
    }

    else if (a3 == 3)
    {
      v8 = *(*result + 64);

      return v8();
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v7 = *(*result + 48);
    }

    else
    {
      v7 = *(*result + 40);
    }

    return v7();
  }

  return result;
}

id *sub_1AF25083C(id *result, const char *a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(result + 4) == a2)
  {
    return result;
  }

  v3 = a2;
  v4 = result;
  *(result + 4) = a2;
  if (a2 > 1)
  {
    if (a3 == 2)
    {
      v6 = xmmword_1AFE21110;
    }

    else
    {
      if (a3 != 1)
      {
        v7 = sub_1AF0D5194(result, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDEF908(v7, a2, v8, v9, v10, v11, v12, v13);
        }

        return objc_msgSend_setVertexAmplificationCount_viewMappings_(v4[2], a2, v3, &v14);
      }

      v6 = xmmword_1AFE43020;
    }

    v14 = v6;
    return objc_msgSend_setVertexAmplificationCount_viewMappings_(v4[2], a2, v3, &v14);
  }

  v5 = result[2];

  return objc_msgSend_setVertexAmplificationCount_viewMappings_(v5, a2, 1, 0);
}

void sub_1AF25095C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF250994(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  v35 = "ReprojectionMapPass";
  *v36 = v8;
  if ((atomic_load_explicit(byte_1ED73A7B8, memory_order_acquire) & 1) == 0)
  {
    v34 = a3;
    v33 = a2;
    sub_1AFDEF940();
    a2 = v33;
    a3 = v34;
  }

  if (byte_1ED73A7B0)
  {
    v9 = 0xEBC1C523E727E7ELL;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v35, v9, 0);
  *a1 = &unk_1F24EA350;
  v10 = *(a5 + 1);
  v11 = a5[4];
  *(a1 + 440) = *a5;
  *(a1 + 456) = v10;
  *(a1 + 472) = v11;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  sub_1AF250B98(v12, a4);
  v13 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a1 + 456));
  v38 = *v13;
  v39 = *(v13 + 2);
  v14 = *(v13 + 12);
  v15 = *(v13 + 5);
  v16 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v35 = v38;
  *v36 = v39;
  *&v36[4] = v14 & 0xFFFFFFFFFFFF0000 | 0x71;
  v37 = v15;
  v17 = sub_1AF2373FC(v16, "ReprojectionMapPassOutput", &v35);
  *(a1 + 496) = v17;
  v18 = *(a1 + 448);
  v19 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v18, v19);
  v20 = *(a1 + 456);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  v23 = *(a1 + 464);
  v25 = CFX::RG::Temporal::currentFrame(v24);
  CFX::RG::Pass::readFrom(a1, v23, v25);
  v26 = *(*(a1 + 488) + 24);
  v28 = CFX::RG::Temporal::currentFrame(v27);
  CFX::RG::Pass::readFrom(a1, v26, v28);
  v29 = *(*(a1 + 488) + 16);
  v31 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v29, v31);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 488) + 24));
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 488) + 16));
  CFX::RG::Pass::writeTo(a1, *(a1 + 496));
  return a1;
}

void sub_1AF250B98(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 456)) + 4);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v5)));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ (v4 >> 16))))) >> 47)));
  *(a1 + 488) = v8;
  if (!v8)
  {
    operator new();
  }
}

void sub_1AF250E40(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF250E80(a1, a2);

  sub_1AF250B98(a1, a2);
}

void sub_1AF250E80(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 60) = v8;
  if (!v8)
  {
    operator new();
  }
}

__n128 sub_1AF250F90(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[60] + 16))
  {
    v8 = v5;
    v9 = sub_1AF12F10C(a1[54], v6);
    if (v9)
    {
      v11 = sub_1AF1BB260(v9, v10);
      if (v11)
      {
        v13 = v11;
        v14 = sub_1AF12F10C(a1[54], v12);
        sub_1AF27F12C(v14, v90);
        v15 = sub_1AF13050C(a1[54], 1);
        v87 = v15[1];
        v88 = *v15;
        v85 = v15[3];
        v86 = v15[2];
        v89 = sub_1AF12FCE8(a1[54], 0);
        v16 = *(a2 + 24);
        v17 = a1[56];
        v19 = CFX::RG::Temporal::currentFrame(v18);
        Texture = CFX::GPUResourceManager::getTexture(v16, v17, v19);
        v21 = *(a2 + 24);
        v22 = a1[57];
        v23 = CFX::RG::Temporal::currentFrame(Texture);
        v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
        v25 = *(a2 + 24);
        v26 = a1[58];
        v27 = CFX::RG::Temporal::currentFrame(v24);
        v28 = CFX::GPUResourceManager::getTexture(v25, v26, v27);
        v29 = *(a2 + 24);
        v30 = *(a1[61] + 24);
        v31 = CFX::RG::Temporal::currentFrame(v28);
        v32 = CFX::GPUResourceManager::getTexture(v29, v30, v31);
        v33 = *(a2 + 24);
        v34 = *(a1[61] + 16);
        v35 = CFX::RG::Temporal::currentFrame(v32);
        v36 = CFX::GPUResourceManager::getTexture(v33, v34, v35);
        v37 = *(a2 + 24);
        v38 = a1[62];
        v39 = CFX::RG::Temporal::currentFrame(v36);
        v40 = CFX::GPUResourceManager::getTexture(v37, v38, v39);
        objc_msgSend_setTexture_atIndex_(v8, v41, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v8, v42, v24, 1);
        objc_msgSend_setTexture_atIndex_(v8, v43, v28, 2);
        objc_msgSend_setTexture_atIndex_(v8, v44, v32, 3);
        objc_msgSend_setTexture_atIndex_(v8, v45, v36, 4);
        objc_msgSend_setTexture_atIndex_(v8, v46, v40, 5);
        v47 = a1[60];
        v47[10] = v88;
        v47[11] = v87;
        v47[12] = v86;
        v47[13] = v85;
        v48 = sub_1AF15E62C(v90, &v89);
        v49 = 0;
        v50 = *(v48 + 1);
        v51 = *(v48 + 2);
        v52 = *(v48 + 3);
        v53 = a1[60];
        v53[18] = *v48;
        v53[19] = v50;
        v53[20] = v51;
        v53[21] = v52;
        v54 = a1[60];
        v55 = v54[18];
        v56 = v54[19];
        v57 = v54[20];
        v58 = v54[21];
        v59 = v54[11];
        v60 = v54[12];
        v61 = v54[13];
        v91[0] = v54[10];
        v91[1] = v59;
        v91[2] = v60;
        v91[3] = v61;
        do
        {
          v92[v49] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(v91[v49])), v56, *&v91[v49], 1), v57, v91[v49], 2), v58, v91[v49], 3);
          ++v49;
        }

        while (v49 != 4);
        v62 = v92[1];
        v63 = v92[2];
        v64 = v92[3];
        v54[2] = v92[0];
        v54[3] = v62;
        v54[4] = v63;
        v54[5] = v64;
        *(a1[60] + 352) = __invert_f4(*(a1[60] + 288));
        *(a1[60] + 224) = __invert_f4(*(a1[60] + 160));
        *(a1[60] + 416) = __invert_f4(*(a1[60] + 32));
        *(a1[60] + 544) = sub_1AF15D6DC(v13, v65);
        v68 = objc_msgSend_width(v24, v66, v67);
        *(a1[60] + 552) = __PAIR64__(objc_msgSend_height(v24, v69, v70), v68);
        objc_msgSend_setBytes_length_atIndex_(v8, v71, a1[60] + 32, 544, 8);
        v73 = sub_1AF1403B4(a1[60] + 16, v72);
        v74 = sub_1AFDE323C(v73);
        objc_msgSend_dispatch_onTexture2D_(v8, v75, v74, v40);
        v77 = sub_1AF1403B4(a1[60] + 24, v76);
        v78 = sub_1AFDE323C(v77);
        objc_msgSend_dispatch_onTexture2D_(v8, v79, v78, v40);
        v80 = a1[60];
        ++*(v80 + 560);
        v81 = *(v80 + 464);
        *(v80 + 512) = *(v80 + 448);
        *(v80 + 528) = v81;
        v82 = *(v80 + 432);
        *(v80 + 480) = *(v80 + 416);
        *(v80 + 496) = v82;
        v83 = a1[60];
        v84 = *(v83 + 80);
        *(v83 + 128) = *(v83 + 64);
        *(v83 + 144) = v84;
        result = *(v83 + 48);
        *(v83 + 96) = *(v83 + 32);
        *(v83 + 112) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1AF251314(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  result = sub_1AF251340(a1, a2, a3);
  a3[4] = *(result + 496);
  return result;
}

uint64_t sub_1AF251340(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF25156C(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF25139C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2513D4(uint64_t a1)
{
  *a1 = &unk_1F24EA3A8;

  return a1;
}

void sub_1AF251424(uint64_t a1)
{
  *a1 = &unk_1F24EA3A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF251494(uint64_t a1)
{
  *a1 = &unk_1F24EA3C8;
  v2 = (a1 + 16);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v2, 0);
  return a1;
}

void sub_1AF2514F0(uint64_t a1)
{
  *a1 = &unk_1F24EA3C8;
  v1 = (a1 + 16);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v1, 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF25156C(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F8u, 8u, 2);
  return sub_1AF250994(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2515CC(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v28.n128_u64[0] = "RTIndirectClearCoatTracePass";
  v28.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A7C8, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v25 = a3;
    sub_1AFDEF98C();
    a2 = v24;
    a3 = v25;
  }

  sub_1AF239F88(a1, a2, a3, &v28, qword_1ED73A7C0, 0);
  *a1 = &unk_1F24EA3E8;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  sub_1AF25176C(v9, a4);
  sub_1AF251B58(a1, a4);
  v28 = 0uLL;
  v10 = *(*(*(a1 + 440) + 296) + 624);
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
  v17 = a5[27];
  v19 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v17, v19);
  v20 = *(*(a1 + 440) + 272);
  v22 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v20, v22);
  CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 456) + 16));
  return a1;
}

double sub_1AF25176C(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
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
  *(v18 + 296) = v17 + 48;
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
  v24 = *(*(a1 + 55) + 296);
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
  v28 = *(*(a1 + 55) + 296);
  v29 = *(v28 + 640);
  v26.i32[0] = *(v28 + 608) / v29;
  v26.i32[1] = HIDWORD(*(v28 + 608)) / v29;
  *(v28 + 616) = v26.i64[0];
  v30 = *(*(a1 + 55) + 296);
  v31 = *(v30 + 644);
  v26.i32[0] = *(v30 + 608) / v31;
  v26.i32[1] = HIDWORD(*(v30 + 608)) / v31;
  *(v30 + 624) = v26.i64[0];
  v32 = *(a1 + 55);
  v33 = *(v32 + 288);
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
  v37 = *(v32 + 296);
  v38 = *(v37 + 608) / v36;
  v39 = HIDWORD(*(v37 + 608)) / v36;
  result = COERCE_DOUBLE(__PAIR64__(v39, v38));
  *(v37 + 632) = __PAIR64__(v39, v38);
  return result;
}

void sub_1AF251B58(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF12E2AC(*(a1 + 54), a2);
  v4 = vmul_lane_s32(*(*(*(a1 + 55) + 296) + 624), *(*(*(a1 + 55) + 296) + 624), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  *(a1 + 57) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF251D30(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF25176C(a1, a2);

  sub_1AF251B58(a1, a2);
}

void *sub_1AF251D70(uint64_t a1, uint64_t a2, id *this)
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
        v14 = sub_1AF12F10C(*(a1 + 432), v13);
        sub_1AF27F12C(v14, v159);
        v15 = sub_1AF13050C(*(a1 + 432), 1);
        v153 = v15[1];
        v154 = *v15;
        v151 = v15[3];
        v152 = v15[2];
        v158 = sub_1AF12FCE8(*(a1 + 432), 0);
        v155 = sub_1AF1D0140(v10, v16);
        v17 = *(a2 + 24);
        v18 = *(*(a1 + 440) + 224);
        v19 = CFX::RG::Temporal::currentFrame(v155);
        Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
        v20 = *(a2 + 24);
        v21 = *(*(a1 + 440) + 216);
        v22 = CFX::RG::Temporal::currentFrame(Texture);
        v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
        v24 = *(a2 + 24);
        v25 = *(*(a1 + 440) + 240);
        v26 = CFX::RG::Temporal::currentFrame(v23);
        v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
        v28 = v27;
        v29 = *(*(a1 + 440) + 248);
        v30 = v8;
        if (v29)
        {
          v31 = *(a2 + 24);
          v32 = CFX::RG::Temporal::currentFrame(v27);
          v27 = CFX::GPUResourceManager::getTexture(v31, v29, v32);
          v29 = v27;
        }

        v33 = *(a2 + 24);
        v34 = *(a1 + 464);
        v35 = CFX::RG::Temporal::currentFrame(v27);
        v36 = CFX::GPUResourceManager::getTexture(v33, v34, v35);
        objc_msgSend_setTexture_atIndex_(v7, v37, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v38, v23, 1);
        objc_msgSend_setTexture_atIndex_(v7, v39, v28, 2);
        objc_msgSend_setTexture_atIndex_(v7, v40, v36, 7);
        v41 = sub_1AF2757FC(v30, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v7, v42, v41, 9);
        objc_msgSend_setTexture_atIndex_(v7, v43, v29, 10);
        v45 = sub_1AF1D005C(v10, 0);
        if (v45)
        {
          v46 = objc_msgSend_textureForMaterialProperty_(v30, v44, v45);
          if (v46)
          {
            objc_msgSend_setTexture_atIndex_(v7, v47, v46, 11);
          }

          v48 = sub_1AF167220(v45, v47);
          v49 = MEMORY[0x1E69E9B18];
          if (v48)
          {
            v49 = v48;
          }

          v50 = *v49;
          v51 = v49[1];
          v52 = v49[2];
          v53 = v49[3];
          v54 = *(*(a1 + 440) + 296);
          v54[32] = v50;
          v54[33] = v51;
          v54[34] = v52;
          v54[35] = v53;
        }

        v157 = sub_1AF130C00(**(a1 + 440), 0);
        v55 = *(*(a1 + 440) + 296);
        v55[8] = v154;
        v55[9] = v153;
        v55[10] = v152;
        v55[11] = v151;
        v56 = sub_1AF15E62C(v159, &v158);
        v57 = 0;
        v58 = *(v56 + 1);
        v59 = *(v56 + 2);
        v60 = *(v56 + 3);
        v61 = *(*(a1 + 440) + 296);
        v61[20] = *v56;
        v61[21] = v58;
        v61[22] = v59;
        v61[23] = v60;
        v62 = *(a1 + 448);
        v63 = v62[23];
        v64 = v62[24];
        v65 = v62[25];
        v66 = v62[26];
        v67 = v62[12];
        v68 = v62[13];
        v69 = v62[14];
        v160 = v62[11];
        v161 = v67;
        v162 = v68;
        v163 = v69;
        do
        {
          *&v164[v57] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v160 + v57))), v64, *&v160.f32[v57 / 4], 1), v65, *(&v160 + v57), 2), v66, *(&v160 + v57), 3);
          v57 += 16;
        }

        while (v57 != 64);
        v70 = *&v164[16];
        v71 = v165;
        v72 = v166;
        v73 = *(*(a1 + 440) + 296);
        *v73 = *v164;
        v73[1] = v70;
        v73[2] = v71;
        v73[3] = v72;
        *(*(*(a1 + 440) + 296) + 192) = __invert_f4(*(*(a1 + 448) + 176));
        *(*(*(a1 + 440) + 296) + 384) = __invert_f4(*(*(a1 + 448) + 48));
        *(*(*(a1 + 440) + 296) + 584) = (objc_msgSend_width(v23, v74, v75) * v157.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 296) + 588) = vmuls_lane_f32(objc_msgSend_height(v23, v76, v77), v157, 1) * 0.5;
        v79 = *(a1 + 440);
        v80 = *(v79 + 296);
        *(v80 + 596) = *(v79 + 192);
        if (v45)
        {
          v81 = sub_1AF166598(v45, v78);
          v80 = *(*(a1 + 440) + 296);
        }

        else
        {
          v81 = 0.0;
        }

        *(v80 + 600) = v81;
        v82 = objc_msgSend_setBytes_length_atIndex_(v7, v78, v80, 656, 8, v151, v152, v153, v154);
        v83 = *(a2 + 24);
        v84 = *(*(a1 + 440) + 272);
        v85 = CFX::RG::Temporal::currentFrame(v82);
        CFX::GPUResourceManager::getBuffer(v83, v84, v85);
        LODWORD(v84) = v86;
        v87 = *(a2 + 24);
        v88 = *(*(a1 + 456) + 16);
        v90 = CFX::RG::Temporal::currentFrame(v89);
        CFX::GPUResourceManager::getBuffer(v87, v88, v90);
        LODWORD(v88) = v91;
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v93, v92, v84, 2);
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v95, v94, v88, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v96, *(*(a1 + 456) + 40), 0, 0);
        v98 = sub_1AF1403B4(*(a1 + 448) + 16, v97);
        v99 = sub_1AFDE323C(v98);
        objc_msgSend_dispatchOne_(v7, v100, v99);
        v101 = *(*(*(a1 + 440) + 296) + 624);
        v102 = v101;
        v103 = SHIDWORD(v101);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v104, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v105, *(*(a1 + 456) + 32), 0, 1);
        v107 = sub_1AF1403B4(*(a1 + 448) + 24, v106);
        v108 = sub_1AFDE323C(v107);
        objc_msgSend_setComputePipelineState_(v7, v109, v108);
        v111 = sub_1AF1403B4(*(a1 + 448) + 24, v110);
        v112 = sub_1AFDE323C(v111);
        *v164 = v102;
        *&v164[8] = v103;
        *&v164[16] = 1;
        RGMTLComputeCommandEncoderDispatchOnGrid2D(v7, v112, v164, 1);
        v114 = sub_1AF1403B4(*(a1 + 448) + 40, v113);
        v115 = sub_1AFDE323C(v114);
        *v164 = objc_msgSend_threadExecutionWidth(v115, v116, v117);
        *&v164[8] = vdupq_n_s64(1uLL);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v118, *(*(a1 + 456) + 40), 0, 0);
        objc_msgSend_setBytes_length_atIndex_(v7, v119, v164, 24, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v120, *(*(a1 + 456) + 48), 0, 2);
        v122 = sub_1AF1403B4(*(a1 + 448) + 32, v121);
        v123 = sub_1AFDE323C(v122);
        objc_msgSend_dispatchOne_(v7, v124, v123);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v125, *(*(a1 + 440) + 176), 0, 4);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v126, *(*(a1 + 440) + 184), 0, 5);
        sub_1AF144838(v155, v7);
        v127 = sub_1AF1448D8(v155);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v128, v127, 0, 0);
        v129 = sub_1AF1448D0(v155);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v7, v130, v129, 1);
        if (sub_1AF1449E0(v155))
        {
          v131 = sub_1AF1448E0(v155);
          objc_msgSend_setBuffer_offset_atIndex_(v7, v132, v131, 0, 2);
        }

        if (sub_1AF1449F0(v155))
        {
          v134 = sub_1AF1403B4(*(a1 + 448) + 40, v133);
          v135 = sub_1AFDE323C(v134);
          v136 = sub_1AF144918(v155, v135);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v7, v137, v136, 3);
        }

        v138 = sub_1AF1448E8(v155);
        v141 = sub_1AF144A00(v155, v139, v140);
        objc_msgSend_useResources_count_usage_(v7, v142, v138, v141, 1);
        v144 = sub_1AF1403B4(*(a1 + 448) + 40, v143);
        v145 = sub_1AFDE323C(v144);
        objc_msgSend_setComputePipelineState_(v7, v146, v145);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v147, *(*(a1 + 456) + 40), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v148, *(*(a1 + 456) + 32), 0, 7);
        v149 = *(*(a1 + 456) + 48);
        v160 = *v164;
        v161.i64[0] = *&v164[16];
        return objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v7, v150, v149, 0, &v160);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2524AC(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v29.n128_u64[0] = "RTIndirectClearCoatUpscalePass";
  v29.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A7D8, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v26 = a3;
    sub_1AFDEF9E4();
    a2 = v25;
    a3 = v26;
  }

  sub_1AF239F88(a1, a2, a3, &v29, qword_1ED73A7D0, 0);
  *a1 = &unk_1F24EA440;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 464) = sub_1AF2757FC(v10, a4[4]);
  v29 = 0uLL;
  v30 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 296) + 616), WORD2(*(*(*(a1 + 440) + 296) + 616)), 0x73u, &v29);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v27 = v29;
  v28 = v30;
  v12 = sub_1AF2373FC(v11, "IndirectSpecularUpscale", &v27);
  *(a1 + 456) = v12;
  v13 = *(*(a1 + 440) + 224);
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(a1, v13, v14);
  v15 = *(*(a1 + 440) + 216);
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(*(a1 + 440) + 264);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(*(a1 + 440) + 280);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  CFX::RG::Pass::writeTo(a1, *(a1 + 456));
  return a1;
}

void sub_1AF252654(CFX::RG::Pass *a1, uint64_t a2)
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

id sub_1AF252794(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 296), 656, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 224);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 216);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 264);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    objc_msgSend_setTexture_atIndex_(v7, v21, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v22, v16, 2);
    objc_msgSend_setTexture_atIndex_(v7, v23, a1[58], 3);
    v25 = objc_msgSend_setTexture_atIndex_(v7, v24, v20, 4);
    v26 = *(a2 + 24);
    v27 = *(a1[55] + 280);
    v28 = CFX::RG::Temporal::currentFrame(v25);
    CFX::GPUResourceManager::getBuffer(v26, v27, v28);
    LODWORD(v26) = v29;
    CFXBufferSliceGetMTLBuffer();
    v32 = objc_msgSend_setBuffer_offset_atIndex_(v7, v31, v30, v26, 0);
    v33 = *(a2 + 24);
    v34 = a1[57];
    v35 = CFX::RG::Temporal::currentFrame(v32);
    v36 = CFX::GPUResourceManager::getTexture(v33, v34, v35);
    objc_msgSend_setTexture_atIndex_(v7, v37, v36, 10);
    v39 = sub_1AF1403B4(a1[56] + 16, v38);
    v41 = sub_1AFDE323C(v39);

    return objc_msgSend_dispatch_onTexture2D_(v7, v40, v41, v36);
  }

  return result;
}

uint64_t sub_1AF252958(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v8 = *a5;
  v21.n128_u64[0] = "RTIndirectClearCoatTemporalDenoisePass";
  v21.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A7E8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDEFA3C();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF239F88(a1, a2, a3, &v21, qword_1ED73A7E0, 0);
  *a1 = &unk_1F24EA498;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v21 = 0uLL;
  v22 = 0;
  CFXTextureDescriptorMake2D(*(a5[37] + 616), WORD2(*(a5[37] + 616)), 0x73u, &v21);
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v19 = v21;
  v20 = v22;
  v10 = sub_1AF2373FC(v9, "IndirectDiffuseDenoiseOutput", &v19);
  *(a1 + 472) = v10;
  v11 = *(*(a1 + 440) + 232);
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 440) + 264);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF252AB0(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  v7 = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  *(a1 + 56) = v9;
  if (!v9)
  {
    v10 = sub_1AF252E18(*(a2 + 32), v8);
    *(a1 + 56) = v10;
    v12 = objc_msgSend_newComputePipelineStateWithFunctionName_(v7, v11, @"vfx_rt_clearcoat_temporal_denoise");

    sub_1AF23355C(v10 + 2, v12);
  }
}

__n128 sub_1AF252B58(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 296), 656, 8);
    v10 = *(a2 + 24);
    v11 = a1[57];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = *(a1[55] + 264);
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v69 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 224);
    v19 = CFX::RG::Temporal::currentFrame(v69);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = v20;
    v22 = a1[55];
    v23 = *(v22 + 248);
    if (v23)
    {
      v24 = *(a2 + 24);
      v25 = CFX::RG::Temporal::currentFrame(v20);
      v20 = CFX::GPUResourceManager::getTexture(v24, v23, v25);
      v23 = v20;
      v22 = a1[55];
    }

    v26 = *(a2 + 24);
    v27 = *(v22 + 232);
    v28 = CFX::RG::Temporal::currentFrame(v20);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[55] + 216);
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
    v60 = *(a1[55] + 296);
    v61 = v60[13];
    v60[16] = v60[12];
    v60[17] = v61;
    v62 = v60[15];
    v60[18] = v60[14];
    v60[19] = v62;
    v63 = *(a1[55] + 296);
    v64 = v63[3];
    v63[6] = v63[2];
    v63[7] = v64;
    v65 = v63[1];
    v63[4] = *v63;
    v63[5] = v65;
    v66 = *(a1[55] + 296);
    v67 = *(v66 + 400);
    *(v66 + 448) = *(v66 + 384);
    *(v66 + 464) = v67;
    result = *(v66 + 416);
    v68 = *(v66 + 432);
    *(v66 + 480) = result;
    *(v66 + 496) = v68;
    ++*(*(a1[55] + 296) + 592);
  }

  return result;
}

void *sub_1AF252E18(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF252EA0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v32.n128_u64[0] = "RTIndirectClearCoatSpatialDenoisePass";
  v32.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A7F8, memory_order_acquire) & 1) == 0)
  {
    v28 = a2;
    v29 = a3;
    sub_1AFDEFA94();
    a2 = v28;
    a3 = v29;
  }

  sub_1AF239F88(a1, a2, a3, &v32, qword_1ED73A7F0, 0);
  *a1 = &unk_1F24EA4F0;
  memcpy((a1 + 440), a5, 0x130uLL);
  *(a1 + 744) = 0u;
  *(a1 + 768) = 0u;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  v32 = 0uLL;
  v33 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 736) + 616), WORD2(*(*(a1 + 736) + 616)), 0x73u, &v32);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v30 = v32;
  v31 = v33;
  *(a1 + 776) = sub_1AF2373FC(v11, "ClearCoatTmpOutput", &v30);
  *(a1 + 760) = sub_1AF2757FC(v10, a4[4]);
  sub_1AF253088(a1, a4);
  v12 = *(a1 + 664);
  v14 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v12, v14);
  v15 = *(a1 + 648);
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(a1 + 704);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = *(a1 + 776);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = CFX::RG::Pass::writeTo(a1, *(a1 + 776));
  v25 = *(*(a1 + 752) + 16);
  v26 = CFX::RG::Temporal::previousFrame(v24);
  CFX::RG::Pass::readFrom(a1, v25, v26);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 752) + 16));
  return a1;
}

void sub_1AF253088(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 92) + 616), WORD2(*(*(a1 + 92) + 616)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 94) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF253204(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF253088(a1, a2);

  sub_1AF253244(a1, a2);
}

void sub_1AF253244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v9 = *(a1 + 612);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) >> 47)));
  *(a1 + 744) = v8;
  if (!v8)
  {
    operator new();
  }
}

id sub_1AF2533E0(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[93] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, a1[92], 656, 8);
    v9 = *(a2 + 24);
    v10 = a1[83];
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = a1[81];
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = a1[82];
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = a1[88];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 2);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 3);
    objc_msgSend_setTexture_atIndex_(v7, v28, v24, 4);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, a1[95], 6);
    v31 = *(a2 + 24);
    v32 = a1[96];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[97];
    v37 = CFX::RG::Temporal::currentFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    v39 = *(a2 + 24);
    v40 = *(a1[94] + 16);
    v41 = CFX::RG::Temporal::currentFrame(v38);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    objc_msgSend_setTexture_atIndex_(v7, v43, v34, 0);
    objc_msgSend_setTexture_atIndex_(v7, v44, v38, 10);
    v46 = sub_1AF1403B4(a1[93] + 16, v45);
    v47 = sub_1AFDE323C(v46);
    objc_msgSend_dispatch_onTexture2D_(v7, v48, v47, v38);
    objc_msgSend_setTexture_atIndex_(v7, v49, v38, 0);
    objc_msgSend_setTexture_atIndex_(v7, v50, v42, 10);
    v52 = sub_1AF1403B4(a1[93] + 24, v51);
    v54 = sub_1AFDE323C(v52);

    return objc_msgSend_dispatch_onTexture2D_(v7, v53, v54, v42);
  }

  return result;
}

CFX::RG::Pass *sub_1AF25361C(CFX::RG::RenderGraphContext *a1, unint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF25378C(v4, a1, a2);
  a2[35] = *(*(v5 + 57) + 16);
  if ((atomic_load_explicit(byte_1ED73A7C8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEF98C();
  }

  v6 = *a2;
  v17[0] = qword_1ED73A7C0;
  v17[1] = v6;
  v18 = *(a2 + 14);
  v19 = *(v5 + 58);
  v7 = sub_1AF2537E4(v4, a1, v17);
  CFX::RG::Pass::dependsOn(v7, v5);
  a2[33] = sub_1AF262D90(v7);
  v8 = sub_1AF25383C(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v8, v7);
  v9 = sub_1AF253894(v4, a1, a2);
  v10 = *(v8 + 57);
  *(v9 + 57) = v10;
  v11 = CFX::RG::Temporal::currentFrame(v9);
  CFX::RG::Pass::readFrom(v9, v10, v11);
  CFX::RG::Pass::dependsOn(v9, v8);
  v12 = sub_1AF2538EC(v4, a1, a2);
  v13 = *(v9 + 59);
  *(v12 + 96) = v13;
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(v12, v13, v14);
  CFX::RG::Pass::dependsOn(v12, v9);
  v15 = *(*(v12 + 94) + 16);
  *(v9 + 58) = v15;
  a2[32] = v15;
  return v5;
}

uint64_t sub_1AF25378C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF253EE4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2537E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF253F44(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25383C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF253FA4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF253894(uint64_t *a1, CFX::RG::RenderGraphContext *a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF254004(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2538EC(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF254064(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF253948(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF253984(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2539C0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2539FC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253A34(uint64_t a1)
{
  *a1 = &unk_1F24EA548;

  return a1;
}

void sub_1AF253A94(uint64_t a1)
{
  *a1 = &unk_1F24EA548;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253B14(uint64_t a1)
{
  *a1 = &unk_1F24EA568;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF253B84(uint64_t a1)
{
  *a1 = &unk_1F24EA568;

  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253C14(uint64_t a1)
{
  *a1 = &unk_1F24EA588;

  return a1;
}

void sub_1AF253C5C(uint64_t a1)
{
  *a1 = &unk_1F24EA588;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253CC4(uint64_t a1)
{
  *a1 = &unk_1F24EA5A8;

  return a1;
}

void sub_1AF253D0C(uint64_t a1)
{
  *a1 = &unk_1F24EA5A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253D74(uint64_t a1)
{
  *a1 = &unk_1F24EA5C8;

  return a1;
}

void sub_1AF253DC4(uint64_t a1)
{
  *a1 = &unk_1F24EA5C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253E34(uint64_t a1)
{
  *a1 = &unk_1F24EA5E8;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF253E7C(uint64_t a1)
{
  *a1 = &unk_1F24EA5E8;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF253EE4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF2515CC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF253F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF2628C4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF253FA4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF2524AC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF254004(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u, 2);
  return sub_1AF252958(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF254064(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x310u, 8u, 2);
  return sub_1AF252EA0(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2540C4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t a5)
{
  v9 = *a5;
  v52.n128_u64[0] = "RTDirectLightingTracePass";
  v52.n128_u64[1] = v9;
  if ((atomic_load_explicit(byte_1ED73A808, memory_order_acquire) & 1) == 0)
  {
    v49 = a2;
    sub_1AFDEFAEC();
    a2 = v49;
  }

  if (byte_1ED73A800)
  {
    v10 = 0x8FA5417697CB30C3;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v52, v10, 0);
  *a1 = &unk_1F24EA608;
  *(a1 + 448) = a5;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  v12 = sub_1AF12E2AC(*(a1 + 432), v11);
  sub_1AF254448(a1, a4);
  v13 = *(a5 + 172);
  v14 = 1.0;
  if (v13 != 2)
  {
    v15 = sub_1AF130864(*(a1 + 432));
    v14 = ceilf(v15 / sub_1AF130888(*(a1 + 432)));
  }

  v16 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, *(a5 + 192)) + 4);
  v17 = vld1q_dup_f64(v16);
  v18 = vshrq_n_s64(vshlq_u64(v17, xmmword_1AFE42F50), 0x30uLL);
  v19 = vcgtq_s64(v18, vdupq_n_s64(1uLL));
  v20 = vmovn_s64(vsubq_s64(vandq_s8(v18, v19), vmvnq_s8(v19)));
  *(*(*(a1 + 448) + 248) + 472) = v20;
  v21 = *(*(a1 + 448) + 248);
  v21[57].i32[1] = v14;
  if (v13)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v21[57].i32[0] = (v14 * v22);
  v21[59] = v20;
  v23 = *(*(a1 + 448) + 248);
  v24 = *(v23 + 460);
  LODWORD(v25) = *(v23 + 472) / v24;
  HIDWORD(v25) = HIDWORD(*(v23 + 472)) / v24;
  *(v23 + 480) = v25;
  v26 = *(*(a1 + 448) + 248);
  v27 = *(v26 + 456);
  LODWORD(v25) = *(v26 + 472) / v27;
  HIDWORD(v25) = HIDWORD(*(v26 + 472)) / v27;
  *(v26 + 464) = v25;
  sub_1AF254694(a1, a4);
  v52 = 0uLL;
  v53 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 448) + 248) + 464), WORD2(*(*(*(a1 + 448) + 248) + 464)), 0x73u, &v52);
  v28 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v50 = v52;
  v51 = v53;
  *(a1 + 480) = sub_1AF2373FC(v28, "DirectLightingResolveDiffuse", &v50);
  v29 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v50 = v52;
  v51 = v53;
  *(a1 + 488) = sub_1AF2373FC(v29, "DirectLightingResolveSpecular", &v50);
  v30 = sub_1AF2757FC(v12, a4[4]);
  *(a1 + 440) = v30;
  v31 = *(*(a1 + 448) + 176);
  v32 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v31, v32);
  v33 = *(*(a1 + 448) + 192);
  v35 = CFX::RG::Temporal::currentFrame(v34);
  CFX::RG::Pass::readFrom(a1, v33, v35);
  v36 = *(*(a1 + 448) + 184);
  v38 = CFX::RG::Temporal::currentFrame(v37);
  CFX::RG::Pass::readFrom(a1, v36, v38);
  v39 = *(*(a1 + 448) + 200);
  v41 = CFX::RG::Temporal::currentFrame(v40);
  CFX::RG::Pass::readFrom(a1, v39, v41);
  v42 = *(*(a1 + 448) + 216);
  v44 = CFX::RG::Temporal::currentFrame(v43);
  CFX::RG::Pass::readFrom(a1, v42, v44);
  v45 = *(*(a1 + 464) + 16);
  v47 = CFX::RG::Temporal::previousFrame(v46);
  CFX::RG::Pass::readFrom(a1, v45, v47);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 464) + 16));
  CFX::RG::Pass::writeTo(a1, *(a1 + 480));
  CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  return a1;
}

uint64_t sub_1AF254448(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 54), v7);
  v10 = sub_1AF1D0140(v8, v9);
  v19 = *(*(a1 + 56) + 172);
  v18 = sub_1AF1449E0(v10);
  v11 = sub_1AF1449F0(v10) != 0;
  v17 = v11;
  v12 = CFX::RG::Pass::hash(a1);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v18)));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v11)));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  result = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v19)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v19)))) >> 47)));
  *(a1 + 57) = result;
  if (!result)
  {
    operator new();
  }

  *(*(a1 + 56) + 248) = result + 32;
  return result;
}

void sub_1AF254694(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = vmul_lane_s32(*(*(*(a1 + 56) + 248) + 464), *(*(*(a1 + 56) + 248) + 464), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47)));
  *(a1 + 58) = v6;
  if (!v6)
  {
    operator new();
  }
}

uint64_t sub_1AF2547E0(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF254694(a1, a2);

  return sub_1AF254448(a1, a2);
}

void *sub_1AF254820(uint64_t *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[57] + 16))
  {
    v7 = result;
    v8 = sub_1AF12DDCC(a1[54], v6);
    result = sub_1AF12F10C(a1[54], v9);
    if (result)
    {
      result = sub_1AF1BB260(result, v10);
      if (result)
      {
        v12 = sub_1AF12F10C(a1[54], v11);
        sub_1AF27F12C(v12, v132);
        v13 = sub_1AF13050C(a1[54], 1);
        v128 = v13[1];
        v129 = *v13;
        v126 = v13[3];
        v127 = v13[2];
        v131 = sub_1AF12FCE8(a1[54], 0);
        v15 = sub_1AF1D0140(v8, v14);
        v16 = *(a1[56] + 248);
        *v16 = v129;
        v16[1] = v128;
        v16[2] = v127;
        v16[3] = v126;
        v17 = sub_1AF15E62C(v132, &v131);
        v18 = 0;
        v19 = *(v17 + 1);
        v20 = *(v17 + 2);
        v21 = *(v17 + 3);
        v22 = *(a1[56] + 248);
        v22[4] = *v17;
        v22[5] = v19;
        v22[6] = v20;
        v22[7] = v21;
        v23 = *(a1[56] + 248);
        v24 = v23[4];
        v25 = v23[5];
        v26 = v23[6];
        v27 = v23[7];
        v28 = v23[1];
        v29 = v23[2];
        v30 = v23[3];
        v133[0] = *v23;
        v133[1] = v28;
        v133[2] = v29;
        v133[3] = v30;
        do
        {
          *(&v134 + v18 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(v133[v18])), v25, *&v133[v18], 1), v26, v133[v18], 2), v27, v133[v18], 3);
          ++v18;
        }

        while (v18 != 4);
        v31 = v135;
        v32 = v136;
        v33 = v137;
        v23[8] = v134;
        v23[9] = v31;
        v23[10] = v32;
        v23[11] = v33;
        *(*(a1[56] + 248) + 320) = __invert_f4(**(a1[56] + 248));
        *(*(a1[56] + 248) + 256) = __invert_f4(*(*(a1[56] + 248) + 128));
        v35 = objc_msgSend_setBytes_length_atIndex_(v7, v34, *(a1[56] + 248), 496, 8);
        v36 = *(a2 + 24);
        v37 = *(a1[56] + 176);
        v38 = CFX::RG::Temporal::currentFrame(v35);
        Texture = CFX::GPUResourceManager::getTexture(v36, v37, v38);
        v40 = *(a2 + 24);
        v41 = *(a1[56] + 192);
        v42 = CFX::RG::Temporal::currentFrame(Texture);
        v43 = CFX::GPUResourceManager::getTexture(v40, v41, v42);
        v44 = *(a2 + 24);
        v45 = *(a1[56] + 184);
        v46 = CFX::RG::Temporal::currentFrame(v43);
        v47 = CFX::GPUResourceManager::getTexture(v44, v45, v46);
        v48 = *(a2 + 24);
        v49 = *(a1[56] + 200);
        v50 = CFX::RG::Temporal::currentFrame(v47);
        v51 = CFX::GPUResourceManager::getTexture(v48, v49, v50);
        v52 = *(a2 + 24);
        v53 = *(a1[56] + 216);
        v54 = CFX::RG::Temporal::currentFrame(v51);
        v55 = CFX::GPUResourceManager::getTexture(v52, v53, v54);
        v57 = v55;
        v58 = a1[59];
        v130 = a2;
        if (v58)
        {
          v59 = a2;
          v60 = v51;
          v61 = v47;
          v62 = v43;
          v63 = Texture;
          v64 = *(v59 + 24);
          v65 = CFX::RG::Temporal::previousFrame(v55);
          v66 = v64;
          Texture = v63;
          v43 = v62;
          v47 = v61;
          v51 = v60;
          v58 = CFX::GPUResourceManager::getTexture(v66, v58, v65);
        }

        objc_msgSend_setTexture_atIndex_(v7, v56, Texture, 0, v126, v127, v128, v129);
        objc_msgSend_setTexture_atIndex_(v7, v67, v43, 1);
        objc_msgSend_setTexture_atIndex_(v7, v68, v47, 2);
        objc_msgSend_setTexture_atIndex_(v7, v69, v51, 3);
        objc_msgSend_setTexture_atIndex_(v7, v70, v57, 4);
        objc_msgSend_setTexture_atIndex_(v7, v71, v58, 5);
        objc_msgSend_setTexture_atIndex_(v7, v72, a1[55], 9);
        if (sub_1AF1449E0(v15))
        {
          v73 = sub_1AF1448E0(v15);
          objc_msgSend_setBuffer_offset_atIndex_(v7, v74, v73, 0, 0);
        }

        sub_1AF144838(v15, v7);
        v75 = sub_1AF1448D8(v15);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v76, v75, 0, 0);
        v77 = sub_1AF1448D0(v15);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v7, v78, v77, 1);
        if (sub_1AF1449E0(v15))
        {
          v79 = sub_1AF1448E0(v15);
          objc_msgSend_setBuffer_offset_atIndex_(v7, v80, v79, 0, 2);
        }

        v81 = sub_1AF1448E8(v15);
        v84 = sub_1AF144A00(v15, v82, v83);
        objc_msgSend_useResources_count_usage_(v7, v85, v81, v84, 1);
        v86 = sub_1AF1449F0(v15);
        if (v86)
        {
          v88 = sub_1AF1403B4(a1[57] + 16, v87);
          v89 = sub_1AFDE323C(v88);
          v90 = sub_1AF144918(v15, v89);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v7, v91, v90, 4);
        }

        v92 = *(v130 + 24);
        v93 = *(a1[58] + 16);
        v94 = CFX::RG::Temporal::currentFrame(v86);
        CFX::GPUResourceManager::getBuffer(v92, v93, v94);
        LODWORD(v93) = v95;
        v96 = *(v130 + 24);
        v97 = *(a1[58] + 16);
        v99 = CFX::RG::Temporal::previousFrame(v98);
        CFX::GPUResourceManager::getBuffer(v96, v97, v99);
        LODWORD(v97) = v100;
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v102, v101, v93, 10);
        CFXBufferSliceGetMTLBuffer();
        v105 = objc_msgSend_setBuffer_offset_atIndex_(v7, v104, v103, v97, 11);
        v106 = *(v130 + 24);
        v107 = a1[60];
        v108 = CFX::RG::Temporal::currentFrame(v105);
        v109 = CFX::GPUResourceManager::getTexture(v106, v107, v108);
        v110 = *(v130 + 24);
        v111 = a1[61];
        v112 = CFX::RG::Temporal::currentFrame(v109);
        v113 = CFX::GPUResourceManager::getTexture(v110, v111, v112);
        objc_msgSend_setTexture_atIndex_(v7, v114, v109, 10);
        objc_msgSend_setTexture_atIndex_(v7, v115, v113, 11);
        v117 = sub_1AF1403B4(a1[57] + 16, v116);
        v118 = sub_1AFDE323C(v117);
        objc_msgSend_setComputePipelineState_(v7, v119, v118);
        v120 = *(*(a1[56] + 248) + 464);
        v121 = v120;
        v122 = SHIDWORD(v120);
        v124 = sub_1AF1403B4(a1[57] + 16, v123);
        v125 = sub_1AFDE323C(v124);
        v134.i64[0] = v121;
        v134.i64[1] = v122;
        v135.i64[0] = 1;
        result = RGMTLComputeCommandEncoderDispatchOnGrid2D(v7, v125, &v134, 1);
        ++*(*(a1[56] + 248) + 452);
      }
    }
  }

  return result;
}

uint64_t sub_1AF254DB4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v27.n128_u64[0] = "RTDirectLightingResolvePass";
  v27.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A818, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v24 = a3;
    sub_1AFDEFB38();
    a2 = v23;
    a3 = v24;
  }

  sub_1AF239F88(a1, a2, a3, &v27, qword_1ED73A810, 0);
  *a1 = &unk_1F24EA660;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 456) = sub_1AF2757FC(v10, a4[4]);
  v27 = 0uLL;
  v28 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 248) + 480), WORD2(*(*(*(a1 + 440) + 248) + 480)), 0x73u, &v27);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v25 = v27;
  v26 = v28;
  *(a1 + 480) = sub_1AF2373FC(v11, "DirectLightingResolveDiffuse", &v25);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v25 = v27;
  v26 = v28;
  v13 = sub_1AF2373FC(v12, "DirectLightingResolveSpecular", &v25);
  *(a1 + 488) = v13;
  v14 = *(*(a1 + 440) + 176);
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  v16 = *(*(a1 + 440) + 192);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(*(a1 + 440) + 200);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  CFX::RG::Pass::writeTo(a1, *(a1 + 480));
  CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  return a1;
}

void sub_1AF254F7C(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(*(a1 + 54), a2);
  v6 = sub_1AF1D0140(v4, v5);
  v9 = sub_1AF1449E0(v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) >> 47)));
  *(a1 + 56) = v8;
  if (!v8)
  {
    operator new();
  }
}

id sub_1AF2550C8(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 248), 496, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 176);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 192);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = a1[58];
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    v21 = *(a2 + 24);
    v22 = a1[59];
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, a1[57], 2);
    objc_msgSend_setTexture_atIndex_(v7, v28, v20, 3);
    v30 = objc_msgSend_setTexture_atIndex_(v7, v29, v24, 4);
    v31 = *(a2 + 24);
    v32 = a1[60];
    v33 = CFX::RG::Temporal::currentFrame(v30);
    v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
    v35 = *(a2 + 24);
    v36 = a1[61];
    v37 = CFX::RG::Temporal::currentFrame(v34);
    v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
    objc_msgSend_setTexture_atIndex_(v7, v39, v34, 10);
    objc_msgSend_setTexture_atIndex_(v7, v40, v38, 11);
    v42 = sub_1AF1403B4(a1[56] + 16, v41);
    v44 = sub_1AFDE323C(v42);

    return objc_msgSend_dispatch_onTexture2D_(v7, v43, v44, v34);
  }

  return result;
}

uint64_t sub_1AF2552AC(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, __int128 *a5)
{
  v8 = *a5;
  v43.n128_u64[0] = "RTDirectLightingTemporalDenoisePass";
  v43.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A828, memory_order_acquire) & 1) == 0)
  {
    v41 = a2;
    v42 = a3;
    sub_1AFDEFB94();
    a2 = v41;
    a3 = v42;
  }

  sub_1AF239F88(a1, a2, a3, &v43, qword_1ED73A820, 0);
  *a1 = &unk_1F24EA6B8;
  v9 = *a5;
  v10 = a5[1];
  v11 = a5[3];
  *(a1 + 472) = a5[2];
  *(a1 + 488) = v11;
  *(a1 + 440) = v9;
  *(a1 + 456) = v10;
  v12 = a5[4];
  v13 = a5[5];
  v14 = a5[7];
  *(a1 + 536) = a5[6];
  *(a1 + 552) = v14;
  *(a1 + 504) = v12;
  *(a1 + 520) = v13;
  v15 = a5[8];
  v16 = a5[9];
  v17 = a5[11];
  *(a1 + 600) = a5[10];
  *(a1 + 616) = v17;
  *(a1 + 568) = v15;
  *(a1 + 584) = v16;
  v18 = a5[12];
  v19 = a5[13];
  v20 = a5[15];
  *(a1 + 664) = a5[14];
  *(a1 + 680) = v20;
  *(a1 + 632) = v18;
  *(a1 + 648) = v19;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 696) = 0u;
  sub_1AF255488(v21, a4);
  v22 = *(a1 + 616);
  v24 = CFX::RG::Temporal::currentFrame(v23);
  CFX::RG::Pass::readFrom(a1, v22, v24);
  v25 = *(a1 + 656);
  v27 = CFX::RG::Temporal::currentFrame(v26);
  CFX::RG::Pass::readFrom(a1, v25, v27);
  v28 = *(a1 + 632);
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(a1, v28, v30);
  v31 = *(*(a1 + 704) + 24);
  v33 = CFX::RG::Temporal::previousFrame(v32);
  CFX::RG::Pass::readFrom(a1, v31, v33);
  v34 = CFX::RG::Pass::writeTo(a1, *(*(a1 + 704) + 24));
  v35 = *(*(a1 + 704) + 32);
  v36 = CFX::RG::Temporal::previousFrame(v34);
  CFX::RG::Pass::readFrom(a1, v35, v36);
  v37 = CFX::RG::Pass::writeTo(a1, *(*(a1 + 704) + 32));
  v38 = *(*(a1 + 704) + 16);
  v39 = CFX::RG::Temporal::previousFrame(v37);
  CFX::RG::Pass::readFrom(a1, v38, v39);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 704) + 16));
  return a1;
}

void sub_1AF255488(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 86) + 480), WORD2(*(*(a1 + 86) + 480)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 88) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF255708(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF255488(a1, a2);

  sub_1AF255748(a1, a2);
}

void sub_1AF255748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v9 = *(a1 + 612);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v9)))) >> 47)));
  *(a1 + 696) = v8;
  if (!v8)
  {
    operator new();
  }
}

__n128 sub_1AF255884(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[87] + 16))
  {
    v8 = v5;
    v9 = sub_1AF12F10C(a1[54], v6);
    if (v9)
    {
      if (sub_1AF1BB260(v9, v10))
      {
        v12 = sub_1AF12F10C(a1[54], v11);
        sub_1AF27F12C(v12, &v88);
        v14 = objc_msgSend_setBytes_length_atIndex_(v8, v13, a1[86], 496, 8);
        v15 = *(a2 + 24);
        v16 = a1[89];
        v17 = CFX::RG::Temporal::currentFrame(v14);
        Texture = CFX::GPUResourceManager::getTexture(v15, v16, v17);
        v19 = *(a2 + 24);
        v20 = a1[90];
        v21 = CFX::RG::Temporal::currentFrame(Texture);
        v22 = CFX::GPUResourceManager::getTexture(v19, v20, v21);
        v23 = *(a2 + 24);
        v24 = a1[77];
        v25 = CFX::RG::Temporal::currentFrame(v22);
        v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
        v27 = v26;
        v28 = a1[81];
        if (v28)
        {
          v29 = *(a2 + 24);
          v30 = CFX::RG::Temporal::currentFrame(v26);
          v26 = CFX::GPUResourceManager::getTexture(v29, v28, v30);
          v28 = v26;
        }

        v31 = *(a2 + 24);
        v32 = a1[82];
        v33 = CFX::RG::Temporal::currentFrame(v26);
        v34 = CFX::GPUResourceManager::getTexture(v31, v32, v33);
        v35 = *(a2 + 24);
        v36 = a1[79];
        v37 = CFX::RG::Temporal::currentFrame(v34);
        v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
        objc_msgSend_setTexture_atIndex_(v8, v39, v27, 0);
        objc_msgSend_setTexture_atIndex_(v8, v40, v28, 1);
        objc_msgSend_setTexture_atIndex_(v8, v41, v34, 2);
        objc_msgSend_setTexture_atIndex_(v8, v42, v38, 3);
        objc_msgSend_setTexture_atIndex_(v8, v43, Texture, 4);
        v45 = objc_msgSend_setTexture_atIndex_(v8, v44, v22, 5);
        v46 = *(a2 + 24);
        v47 = *(a1[88] + 24);
        v48 = CFX::RG::Temporal::currentFrame(v45);
        v49 = CFX::GPUResourceManager::getTexture(v46, v47, v48);
        v50 = *(a2 + 24);
        v51 = *(a1[88] + 24);
        v52 = CFX::RG::Temporal::previousFrame(v49);
        v53 = CFX::GPUResourceManager::getTexture(v50, v51, v52);
        objc_msgSend_setTexture_atIndex_(v8, v54, v49, 10);
        v56 = objc_msgSend_setTexture_atIndex_(v8, v55, v53, 11);
        v57 = *(a2 + 24);
        v58 = *(a1[88] + 32);
        v59 = CFX::RG::Temporal::currentFrame(v56);
        v60 = CFX::GPUResourceManager::getTexture(v57, v58, v59);
        v61 = *(a2 + 24);
        v62 = *(a1[88] + 32);
        v63 = CFX::RG::Temporal::previousFrame(v60);
        v64 = CFX::GPUResourceManager::getTexture(v61, v62, v63);
        objc_msgSend_setTexture_atIndex_(v8, v65, v60, 12);
        v67 = objc_msgSend_setTexture_atIndex_(v8, v66, v64, 13);
        v68 = *(a2 + 24);
        v69 = *(a1[88] + 16);
        v70 = CFX::RG::Temporal::previousFrame(v67);
        v71 = CFX::GPUResourceManager::getTexture(v68, v69, v70);
        v72 = *(a2 + 24);
        v73 = *(a1[88] + 16);
        v74 = CFX::RG::Temporal::currentFrame(v71);
        v75 = CFX::GPUResourceManager::getTexture(v72, v73, v74);
        objc_msgSend_setTexture_atIndex_(v8, v76, v71, 14);
        objc_msgSend_setTexture_atIndex_(v8, v77, v75, 15);
        v79 = sub_1AF1403B4(a1[87] + 16, v78);
        v80 = sub_1AFDE323C(v79);
        objc_msgSend_dispatch_onTexture2D_(v8, v81, v80, v49);
        v82 = a1[86];
        v83 = v82[17];
        v82[12] = v82[16];
        v82[13] = v83;
        v84 = v82[19];
        v82[14] = v82[18];
        v82[15] = v84;
        v85 = a1[86];
        v86 = *(v85 + 336);
        *(v85 + 384) = *(v85 + 320);
        *(v85 + 400) = v86;
        result = *(v85 + 352);
        v87 = *(v85 + 368);
        *(v85 + 416) = result;
        *(v85 + 432) = v87;
        ++*(a1[86] + 452);
      }
    }
  }

  return result;
}

uint64_t sub_1AF255BD4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v28.n128_u64[0] = "RTDirectLightingSpatialDenoisePass";
  v28.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A838, memory_order_acquire) & 1) == 0)
  {
    v22 = a2;
    v23 = a3;
    sub_1AFDEFBF0();
    a2 = v22;
    a3 = v23;
  }

  sub_1AF239F88(a1, a2, a3, &v28, qword_1ED73A830, 0);
  *a1 = &unk_1F24EA710;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 456) = sub_1AF2757FC(v10, a4[4]);
  v28 = 0uLL;
  v29 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 248) + 480), WORD2(*(*(*(a1 + 440) + 248) + 480)), 0x41u, &v28);
  v26 = 0uLL;
  v27 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 248) + 480), WORD2(*(*(*(a1 + 440) + 248) + 480)), 0x73u, &v26);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v24 = v28;
  v25 = v29;
  *(a1 + 488) = sub_1AF2373FC(v11, "ErodeVariance", &v24);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v24 = v28;
  v25 = v29;
  *(a1 + 496) = sub_1AF2373FC(v12, "DilateVariance", &v24);
  v13 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v24 = v26;
  v25 = v27;
  *(a1 + 504) = sub_1AF2373FC(v13, "DirectLightingDenoisedDiffuse", &v24);
  v14 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v24 = v26;
  v25 = v27;
  v15 = sub_1AF2373FC(v14, "DirectLightingDenoisedSpecular", &v24);
  *(a1 + 512) = v15;
  v16 = *(a1 + 488);
  v17 = CFX::RG::Temporal::currentFrame(v15);
  CFX::RG::Pass::readFrom(a1, v16, v17);
  v18 = *(a1 + 496);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  CFX::RG::Pass::writeTo(a1, *(a1 + 488));
  CFX::RG::Pass::writeTo(a1, *(a1 + 496));
  CFX::RG::Pass::writeTo(a1, *(a1 + 504));
  CFX::RG::Pass::writeTo(a1, *(a1 + 512));
  return a1;
}

void sub_1AF255E1C(CFX::RG::Pass *a1, uint64_t a2)
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

__n128 sub_1AF255F6C(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, *(a1[55] + 248), 496, 8);
    v10 = *(a2 + 24);
    v11 = *(a1[55] + 192);
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = a1[60];
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v18 = *(a2 + 24);
    v19 = a1[61];
    v20 = CFX::RG::Temporal::currentFrame(v17);
    v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
    v22 = *(a2 + 24);
    v23 = a1[62];
    v24 = CFX::RG::Temporal::currentFrame(v21);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    objc_msgSend_setTexture_atIndex_(v8, v26, v17, 0);
    objc_msgSend_setTexture_atIndex_(v8, v27, v21, 2);
    v29 = sub_1AF1403B4(a1[56] + 24, v28);
    v30 = sub_1AFDE323C(v29);
    objc_msgSend_dispatch_onTexture2D_(v8, v31, v30, v21);
    objc_msgSend_setTexture_atIndex_(v8, v32, v21, 0);
    objc_msgSend_setTexture_atIndex_(v8, v33, v25, 2);
    v35 = sub_1AF1403B4(a1[56] + 32, v34);
    v36 = sub_1AFDE323C(v35);
    objc_msgSend_dispatch_onTexture2D_(v8, v37, v36, v25);
    objc_msgSend_setTexture_atIndex_(v8, v38, Texture, 0);
    v40 = objc_msgSend_setTexture_atIndex_(v8, v39, a1[57], 1);
    v41 = *(a2 + 24);
    v42 = a1[58];
    v43 = CFX::RG::Temporal::currentFrame(v40);
    v44 = CFX::GPUResourceManager::getTexture(v41, v42, v43);
    v45 = *(a2 + 24);
    v46 = a1[59];
    v47 = CFX::RG::Temporal::currentFrame(v44);
    v48 = CFX::GPUResourceManager::getTexture(v45, v46, v47);
    v49 = *(a2 + 24);
    v50 = a1[63];
    v51 = CFX::RG::Temporal::currentFrame(v48);
    v52 = CFX::GPUResourceManager::getTexture(v49, v50, v51);
    v53 = *(a2 + 24);
    v54 = a1[64];
    v55 = CFX::RG::Temporal::currentFrame(v52);
    v56 = CFX::GPUResourceManager::getTexture(v53, v54, v55);
    objc_msgSend_setTexture_atIndex_(v8, v57, v44, 5);
    objc_msgSend_setTexture_atIndex_(v8, v58, v52, 10);
    objc_msgSend_setTexture_atIndex_(v8, v59, v48, 6);
    objc_msgSend_setTexture_atIndex_(v8, v60, v56, 11);
    v62 = sub_1AF1403B4(a1[56] + 16, v61);
    v63 = sub_1AFDE323C(v62);
    objc_msgSend_dispatch_onTexture2D_(v8, v64, v63, v52);
    v65 = *(a1[55] + 248);
    v66 = *(v65 + 272);
    *(v65 + 192) = *(v65 + 256);
    *(v65 + 208) = v66;
    result = *(v65 + 288);
    v67 = *(v65 + 304);
    *(v65 + 224) = result;
    *(v65 + 240) = v67;
    ++*(*(a1[55] + 248) + 452);
  }

  return result;
}

CFX::RG::Temporal *sub_1AF256204(CFX::RG::RenderGraphContext *a1, uint64_t a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF256424(v4, a1, a2);
  if (*(a2 + 172))
  {
    v6 = sub_1AF2564D4(v4, a1, a2);
    v7 = *(v5 + 60);
    *(v6 + 89) = v7;
    v8 = CFX::RG::Temporal::currentFrame(v6);
    CFX::RG::Pass::readFrom(v6, v7, v8);
    v9 = *(v5 + 61);
    *(v6 + 90) = v9;
    v11 = CFX::RG::Temporal::currentFrame(v10);
    CFX::RG::Pass::readFrom(v6, v9, v11);
    v12 = v6;
    v13 = v5;
  }

  else
  {
    v14 = sub_1AF25647C(v4, a1, a2);
    v15 = *(v5 + 60);
    *(v14 + 58) = v15;
    v16 = CFX::RG::Temporal::currentFrame(v14);
    CFX::RG::Pass::readFrom(v14, v15, v16);
    v17 = *(v5 + 61);
    *(v14 + 59) = v17;
    v19 = CFX::RG::Temporal::currentFrame(v18);
    CFX::RG::Pass::readFrom(v14, v17, v19);
    CFX::RG::Pass::dependsOn(v14, v5);
    v6 = sub_1AF2564D4(v4, a1, a2);
    v20 = *(v14 + 60);
    *(v6 + 89) = v20;
    v21 = CFX::RG::Temporal::currentFrame(v6);
    CFX::RG::Pass::readFrom(v6, v20, v21);
    v22 = *(v14 + 61);
    *(v6 + 90) = v22;
    v24 = CFX::RG::Temporal::currentFrame(v23);
    CFX::RG::Pass::readFrom(v6, v22, v24);
    v12 = v6;
    v13 = v14;
  }

  CFX::RG::Pass::dependsOn(v12, v13);
  v25 = sub_1AF25652C(v4, a1, a2);
  v26 = *(*(v6 + 88) + 24);
  *(v25 + 58) = v26;
  v27 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(v25, v26, v27);
  v28 = *(*(v6 + 88) + 32);
  *(v25 + 59) = v28;
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(v25, v28, v30);
  v31 = *(*(v6 + 88) + 16);
  *(v25 + 60) = v31;
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(v25, v31, v33);
  v34 = CFX::RG::Pass::dependsOn(v25, v6);
  v35 = *(*(v6 + 88) + 16);
  *(v5 + 59) = v35;
  v36 = CFX::RG::Temporal::previousFrame(v34);
  CFX::RG::Pass::readFrom(v5, v35, v36);
  v38 = *(v25 + 63);
  v37 = *(v25 + 64);
  v39 = *(v25 + 62);
  *(a2 + 224) = v38;
  *(a2 + 232) = v37;
  *(v6 + 91) = v38;
  *(v6 + 92) = v37;
  *(a2 + 240) = v39;
  return v25;
}

uint64_t sub_1AF256424(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256AF4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25647C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256B54(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2564D4(uint64_t *a1, CFX::CrossFrameResourceManager **a2, __int128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256BB4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF25652C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF256C14(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF256588(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2565C4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF256600(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF25663C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256674(uint64_t a1)
{
  *a1 = &unk_1F24EA768;

  return a1;
}

void sub_1AF2566BC(uint64_t a1)
{
  *a1 = &unk_1F24EA768;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256724(uint64_t a1)
{
  *a1 = &unk_1F24EA788;
  sub_1AF235C34((a1 + 16), 0);
  return a1;
}

void sub_1AF25676C(uint64_t a1)
{
  *a1 = &unk_1F24EA788;
  sub_1AF235C34((a1 + 16), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2567D4(uint64_t a1)
{
  *a1 = &unk_1F24EA7A8;

  return a1;
}

void sub_1AF25681C(uint64_t a1)
{
  *a1 = &unk_1F24EA7A8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256884(uint64_t a1)
{
  *a1 = &unk_1F24EA7C8;

  return a1;
}

void sub_1AF2568CC(uint64_t a1)
{
  *a1 = &unk_1F24EA7C8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256934(uint64_t a1)
{
  *a1 = &unk_1F24EA7E8;
  v2 = (a1 + 16);
  sub_1AF235C34((a1 + 32), 0);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v2, 0);
  return a1;
}

void sub_1AF25699C(uint64_t a1)
{
  *a1 = &unk_1F24EA7E8;
  v2 = (a1 + 16);
  sub_1AF235C34((a1 + 32), 0);
  sub_1AF235C34((a1 + 24), 0);
  sub_1AF235C34(v2, 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256A24(uint64_t a1)
{
  *a1 = &unk_1F24EA808;

  return a1;
}

void sub_1AF256A7C(uint64_t a1)
{
  *a1 = &unk_1F24EA808;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF256AF4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF2540C4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256B54(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF254DB4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256BB4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, __int128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E8u, 8u, 2);
  return sub_1AF2552AC(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256C14(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x208u, 8u, 2);
  return sub_1AF255BD4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF256C74(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v27.n128_u64[0] = "RTIndirectDiffuseTracePass";
  v27.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A848, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v24 = a3;
    sub_1AFDEFC4C();
    a2 = v23;
    a3 = v24;
  }

  if (byte_1ED73A840)
  {
    v9 = 0xA1BA6B715A2CCB31;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v27, v9, 0);
  *a1 = &unk_1F24EA828;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a5;
  v11 = sub_1AF12E2AC(*(a1 + 432), v10);
  sub_1AF256E38(a1, a4);
  sub_1AF257160(a1, a4);
  *(a1 + 472) = sub_1AF2757FC(v11, a4[4]);
  v27 = 0uLL;
  v12 = *(*(*(a1 + 440) + 280) + 624);
  v28 = 0;
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (SHIDWORD(v12) <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = WORD2(v12);
  }

  CFXTextureDescriptorMake2D(v13, v14, 0x19u, &v27);
  v15 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v25 = v27;
  v26 = v28;
  *(a1 + 464) = sub_1AF2373FC(v15, "hitDistanceTex", &v25);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 456) + 16));
  v16 = CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  v17 = *(*(a1 + 440) + 224);
  v18 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v17, v18);
  v19 = *(*(a1 + 440) + 208);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  return a1;
}

__n64 sub_1AF256E38(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 54), v7);
  v10 = sub_1AF1D0140(v8, v9);
  v11 = sub_1AF1D005C(v8, 0) != 0;
  v12 = sub_1AF1449F0(v10) != 0;
  v13 = CFX::RG::Pass::hash(a1);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v12)));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v11)));
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v17 = 0x9DDFEA08EB382D69 * (v16 ^ *(*(a1 + 55) + 200));
  v18 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47)));
  *(a1 + 56) = v18;
  if (!v18)
  {
    operator new();
  }

  v19 = *(a1 + 55);
  *(v19 + 280) = v18 + 32;
  v20 = *(v19 + 172);
  if (v20 == 2)
  {
    v21 = 1.0;
  }

  else
  {
    v22 = sub_1AF130864(*(a1 + 54));
    v21 = ceilf(v22 / sub_1AF130888(*(a1 + 54)));
    v19 = *(a1 + 55);
  }

  v23 = (CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(v19 + 208)) + 4);
  v24 = *(*(a1 + 55) + 280);
  v25 = vld1q_dup_f64(v23);
  v24[79].i32[0] = v21;
  if (v20)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v24[79].i32[1] = (v21 * v26);
  v27 = vshrq_n_s64(vshlq_u64(v25, xmmword_1AFE42F50), 0x30uLL);
  v28 = vcgtq_s64(v27, vdupq_n_s64(1uLL));
  v24[76] = vmovn_s64(vsubq_s64(vandq_s8(v27, v28), vmvnq_s8(v28)));
  v29 = *(*(a1 + 55) + 280);
  v30 = *(v29 + 632);
  v27.i32[0] = *(v29 + 608) / v30;
  v27.i32[1] = HIDWORD(*(v29 + 608)) / v30;
  *(v29 + 616) = v27.i64[0];
  v31 = *(*(a1 + 55) + 280);
  v32 = v31[79].n64_i32[1];
  result.n64_u32[0] = v31[76].n64_u64[0] / v32;
  result.n64_u32[1] = HIDWORD(v31[76].n64_u64[0]) / v32;
  v31[78].n64_u64[0] = result.n64_u64[0];
  return result;
}

void sub_1AF257160(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = vmul_lane_s32(*(*(*(a1 + 55) + 280) + 624), *(*(*(a1 + 55) + 280) + 624), 1).u32[0];
  v5 = CFX::RG::Pass::hash(a1);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47));
  v7 = CFX::CrossFrameResourceManager::get(a2[4], v6);
  *(a1 + 57) = v7;
  if (!v7)
  {
    *(a1 + 57) = sub_1AF257818(a2[4], v6);
    RGBufferDescriptorMake();
    v9 = v8;
    v11 = v10;
    v12 = CFX::RG::RenderGraphContext::currentBuilder(a2);
    sub_1AF23BE88(v12, &v17, "IndirectDiffuseReservoirBuffer", v9, v11, 1);
    v13 = *(a1 + 57);
    v14 = v17;
    v17 = 0;
    sub_1AF235C34((v13 + 16), v14);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      CFX::RG::Resource::~Resource(v15);
      free(v16);
    }
  }
}

void sub_1AF257260(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF256E38(a1, a2);

  sub_1AF257160(a1, a2);
}

void *sub_1AF2572A0(uint64_t a1, uint64_t a2, id *this)
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
        v119 = result;
        v120 = v8;
        v14 = sub_1AF12F10C(*(a1 + 432), v13);
        sub_1AF27F12C(v14, v123);
        v15 = sub_1AF13050C(*(a1 + 432), 1);
        v116 = v15[1];
        v117 = *v15;
        v114 = v15[3];
        v115 = v15[2];
        v122 = sub_1AF12FCE8(*(a1 + 432), 0);
        v118 = sub_1AF1D0140(v10, v16);
        v17 = *(a2 + 24);
        v18 = *(*(a1 + 440) + 216);
        v19 = CFX::RG::Temporal::currentFrame(v118);
        Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
        v21 = *(a2 + 24);
        v22 = *(*(a1 + 440) + 208);
        v23 = CFX::RG::Temporal::currentFrame(Texture);
        v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
        v25 = *(a2 + 24);
        v26 = *(*(a1 + 440) + 232);
        v27 = CFX::RG::Temporal::currentFrame(v24);
        v28 = CFX::GPUResourceManager::getTexture(v25, v26, v27);
        v29 = v28;
        v30 = *(*(a1 + 440) + 240);
        if (v30)
        {
          v31 = *(a2 + 24);
          v32 = CFX::RG::Temporal::currentFrame(v28);
          v28 = CFX::GPUResourceManager::getTexture(v31, v30, v32);
          v30 = v28;
        }

        v33 = *(a2 + 24);
        v34 = *(a1 + 464);
        v35 = CFX::RG::Temporal::currentFrame(v28);
        v36 = CFX::GPUResourceManager::getTexture(v33, v34, v35);
        objc_msgSend_setTexture_atIndex_(v7, v37, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v7, v38, v24, 1);
        objc_msgSend_setTexture_atIndex_(v7, v39, v29, 2);
        objc_msgSend_setTexture_atIndex_(v7, v40, v36, 5);
        objc_msgSend_setTexture_atIndex_(v7, v41, v30, 10);
        v43 = sub_1AF1D005C(v10, 0);
        if (v43)
        {
          v44 = objc_msgSend_textureForMaterialProperty_(v120, v42, v43);
          if (v44)
          {
            objc_msgSend_setTexture_atIndex_(v7, v45, v44, 8);
          }

          v46 = sub_1AF167220(v43, v45);
          v47 = MEMORY[0x1E69E9B18];
          if (v46)
          {
            v47 = v46;
          }

          v48 = *v47;
          v49 = v47[1];
          v50 = v47[2];
          v51 = v47[3];
          v52 = *(*(a1 + 440) + 280);
          v52[32] = v48;
          v52[33] = v49;
          v52[34] = v50;
          v52[35] = v51;
        }

        v121 = sub_1AF130C00(**(a1 + 440), 0);
        v53 = *(*(a1 + 440) + 280);
        v53[8] = v117;
        v53[9] = v116;
        v53[10] = v115;
        v53[11] = v114;
        v54 = sub_1AF15E62C(v123, &v122);
        v55 = 0;
        v56 = *(v54 + 1);
        v57 = *(v54 + 2);
        v58 = *(v54 + 3);
        v59 = *(*(a1 + 440) + 280);
        v59[16] = *v54;
        v59[17] = v56;
        v59[18] = v57;
        v59[19] = v58;
        v60 = *(a1 + 448);
        v61 = v60[18];
        v62 = v60[19];
        v63 = v60[20];
        v64 = v60[21];
        v65 = v60[11];
        v66 = v60[12];
        v67 = v60[13];
        v124[0] = v60[10];
        v124[1] = v65;
        v124[2] = v66;
        v124[3] = v67;
        do
        {
          *(&v125 + v55 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(v124[v55])), v62, *&v124[v55], 1), v63, v124[v55], 2), v64, v124[v55], 3);
          ++v55;
        }

        while (v55 != 4);
        v68 = v126;
        v69 = v127;
        v70 = v128;
        v71 = *(*(a1 + 440) + 280);
        *v71 = v125;
        v71[1] = v68;
        v71[2] = v69;
        v71[3] = v70;
        *(*(*(a1 + 440) + 280) + 320) = __invert_f4(*(*(a1 + 448) + 288));
        *(*(*(a1 + 440) + 280) + 192) = __invert_f4(*(*(a1 + 448) + 160));
        *(*(*(a1 + 440) + 280) + 384) = __invert_f4(*(*(a1 + 448) + 32));
        *(*(*(a1 + 440) + 280) + 576) = sub_1AF15D6DC(v119, v72);
        *(*(*(a1 + 440) + 280) + 584) = (objc_msgSend_width(Texture, v73, v74) * v121.f32[0]) * 0.5;
        *(*(*(a1 + 440) + 280) + 588) = vmuls_lane_f32(objc_msgSend_height(Texture, v75, v76), v121, 1) * 0.5;
        v78 = *(a1 + 440);
        v79 = *(v78 + 280);
        *(v79 + 596) = *(v78 + 192);
        if (v43)
        {
          v80 = sub_1AF166598(v43, v77);
          v79 = *(*(a1 + 440) + 280);
        }

        else
        {
          v80 = 0.0;
        }

        *(v79 + 600) = v80;
        objc_msgSend_setBytes_length_atIndex_(v7, v77, v79, 640, 8, v114, v115, v116, v117);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v81, *(*(a1 + 440) + 176), 0, 4);
        v83 = objc_msgSend_setBuffer_offset_atIndex_(v7, v82, *(*(a1 + 440) + 184), 0, 5);
        v84 = *(a2 + 24);
        v85 = *(*(a1 + 456) + 16);
        v86 = CFX::RG::Temporal::currentFrame(v83);
        CFX::GPUResourceManager::getBuffer(v84, v85, v86);
        LODWORD(v84) = v87;
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v7, v89, v88, v84, 10);
        sub_1AF144838(v118, v7);
        v90 = sub_1AF1448D8(v118);
        objc_msgSend_setBuffer_offset_atIndex_(v7, v91, v90, 0, 0);
        v92 = sub_1AF1448D0(v118);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v7, v93, v92, 1);
        if (sub_1AF1449F0(v118))
        {
          v95 = sub_1AF1403B4(*(a1 + 448) + 16, v94);
          v96 = sub_1AFDE323C(v95);
          v97 = sub_1AF144918(v118, v96);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v7, v98, v97, 3);
        }

        v99 = sub_1AF1448E8(v118);
        v102 = sub_1AF144A00(v118, v100, v101);
        objc_msgSend_useResources_count_usage_(v7, v103, v99, v102, 1);
        v104 = *(*(*(a1 + 440) + 280) + 624);
        v105 = v104;
        v106 = SHIDWORD(v104);
        v108 = sub_1AF1403B4(*(a1 + 448) + 16, v107);
        v109 = sub_1AFDE323C(v108);
        objc_msgSend_setComputePipelineState_(v7, v110, v109);
        v112 = sub_1AF1403B4(*(a1 + 448) + 16, v111);
        v113 = sub_1AFDE323C(v112);
        *&v125 = v105;
        *(&v125 + 1) = v106;
        *&v126 = 1;
        return RGMTLComputeCommandEncoderDispatchOnGrid2D(v7, v113, &v125, 1);
      }
    }
  }

  return result;
}

void *sub_1AF257818(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2578A0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v29.n128_u64[0] = "RTIndirectDiffuseUpscalePass";
  v29.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A858, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v26 = a3;
    sub_1AFDEFC98();
    a2 = v25;
    a3 = v26;
  }

  sub_1AF239F88(a1, a2, a3, &v29, qword_1ED73A850, 0);
  *a1 = &unk_1F24EA880;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  v10 = sub_1AF12E2AC(*(a1 + 432), v9);
  *(a1 + 456) = sub_1AF2757FC(v10, a4[4]);
  v29 = 0uLL;
  v30 = 0;
  CFXTextureDescriptorMake2D(*(*(*(a1 + 440) + 280) + 616), WORD2(*(*(*(a1 + 440) + 280) + 616)), 0x73u, &v29);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v27 = v29;
  v28 = v30;
  v12 = sub_1AF2373FC(v11, "IndirectDiffuseUpscale", &v27);
  *(a1 + 464) = v12;
  v13 = *(*(a1 + 440) + 216);
  v14 = CFX::RG::Temporal::currentFrame(v12);
  CFX::RG::Pass::readFrom(a1, v13, v14);
  v15 = *(*(a1 + 440) + 208);
  v17 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v15, v17);
  v18 = *(*(a1 + 440) + 264);
  v20 = CFX::RG::Temporal::currentFrame(v19);
  CFX::RG::Pass::readFrom(a1, v18, v20);
  v21 = CFX::RG::Pass::writeTo(a1, *(a1 + 464));
  v22 = *(*(a1 + 440) + 272);
  v23 = CFX::RG::Temporal::currentFrame(v21);
  CFX::RG::Pass::readFrom(a1, v22, v23);
  return a1;
}

void sub_1AF257A48(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  v7 = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  *(a1 + 56) = v9;
  if (!v9)
  {
    v10 = sub_1AF257CB4(*(a2 + 32), v8);
    *(a1 + 56) = v10;
    v12 = objc_msgSend_newComputePipelineStateWithFunctionName_(v7, v11, @"vfx_rt_indirect_diffuse_upscale");

    sub_1AF23355C(v10 + 2, v12);
  }
}

id sub_1AF257AF0(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 640, 8);
    v9 = *(a2 + 24);
    v10 = *(a1[55] + 216);
    v11 = CFX::RG::Temporal::currentFrame(v8);
    Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
    v13 = *(a2 + 24);
    v14 = *(a1[55] + 208);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v17 = *(a2 + 24);
    v18 = *(a1[55] + 264);
    v19 = CFX::RG::Temporal::currentFrame(v16);
    v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
    objc_msgSend_setTexture_atIndex_(v7, v21, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v22, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v23, a1[57], 2);
    v25 = objc_msgSend_setTexture_atIndex_(v7, v24, v20, 3);
    v26 = *(a2 + 24);
    v27 = *(a1[55] + 272);
    v28 = CFX::RG::Temporal::currentFrame(v25);
    CFX::GPUResourceManager::getBuffer(v26, v27, v28);
    LODWORD(v26) = v29;
    CFXBufferSliceGetMTLBuffer();
    v32 = objc_msgSend_setBuffer_offset_atIndex_(v7, v31, v30, v26, 0);
    v33 = *(a2 + 24);
    v34 = a1[58];
    v35 = CFX::RG::Temporal::currentFrame(v32);
    v36 = CFX::GPUResourceManager::getTexture(v33, v34, v35);
    objc_msgSend_setTexture_atIndex_(v7, v37, v36, 10);
    v39 = sub_1AF1403B4(a1[56] + 16, v38);
    v41 = sub_1AFDE323C(v39);

    return objc_msgSend_dispatch_onTexture2D_(v7, v40, v41, v36);
  }

  return result;
}

void *sub_1AF257CB4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF257D3C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v8 = *a5;
  v27.n128_u64[0] = "RTIndirectDiffuseTemporalDenoisePass";
  v27.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A868, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v24 = a3;
    sub_1AFDEFCF4();
    a2 = v23;
    a3 = v24;
  }

  sub_1AF239F88(a1, a2, a3, &v27, qword_1ED73A860, 0);
  *a1 = &unk_1F24EA8D8;
  *(a1 + 440) = a5;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  v27 = 0uLL;
  v28 = 0;
  CFXTextureDescriptorMake2D(*(a5[35] + 616), WORD2(*(a5[35] + 616)), 0x73u, &v27);
  v9 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v25 = v27;
  v26 = v28;
  v10 = sub_1AF2373FC(v9, "IndirectDiffuseDenoiseOutput", &v25);
  *(a1 + 472) = v10;
  v11 = a5[27];
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(a1, v11, v12);
  v13 = *(*(a1 + 440) + 208);
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = *(*(a1 + 440) + 224);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(*(a1 + 440) + 248);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  CFX::RG::Pass::writeTo(a1, *(a1 + 472));
  return a1;
}

void sub_1AF257EC8(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  v7 = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  *(a1 + 56) = v9;
  if (!v9)
  {
    v10 = sub_1AF258148(*(a2 + 32), v8);
    *(a1 + 56) = v10;
    v12 = objc_msgSend_newComputePipelineStateWithFunctionName_(v7, v11, @"vfx_rt_indirect_diffuse_temporal_denoise");

    sub_1AF23355C(v10 + 2, v12);
  }
}

id sub_1AF257F70(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[56] + 16))
  {
    v7 = result;
    v8 = objc_msgSend_setBytes_length_atIndex_(result, v6, *(a1[55] + 280), 640, 8);
    v9 = *(a2 + 24);
    v10 = a1[57];
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
    v22 = *(a1[55] + 248);
    v23 = CFX::RG::Temporal::currentFrame(v20);
    v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
    objc_msgSend_setTexture_atIndex_(v7, v25, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v26, v16, 1);
    objc_msgSend_setTexture_atIndex_(v7, v27, v20, 2);
    v29 = objc_msgSend_setTexture_atIndex_(v7, v28, v24, 3);
    v30 = *(a2 + 24);
    v31 = a1[59];
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    v34 = *(a2 + 24);
    v35 = a1[58];
    v36 = CFX::RG::Temporal::previousFrame(v33);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    objc_msgSend_setTexture_atIndex_(v7, v38, v33, 10);
    objc_msgSend_setTexture_atIndex_(v7, v39, v37, 11);
    v41 = sub_1AF1403B4(a1[56] + 16, v40);
    v43 = sub_1AFDE323C(v41);

    return objc_msgSend_dispatch_onTexture2D_(v7, v42, v43, v33);
  }

  return result;
}

void *sub_1AF258148(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2581D0(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v9 = *a5;
  v32.n128_u64[0] = "RTIndirectDiffuseSpatialDenoisePass";
  v32.n128_u64[1] = v9;
  if ((atomic_load_explicit(byte_1ED73A878, memory_order_acquire) & 1) == 0)
  {
    v29 = a2;
    sub_1AFDEFD50();
    a2 = v29;
  }

  sub_1AF239F88(a1, a2, a3, &v32, qword_1ED73A870, 0);
  *a1 = &unk_1F24EA930;
  memcpy((a1 + 440), a5, 0x120uLL);
  *(a1 + 728) = 0u;
  *(a1 + 752) = 0u;
  v11 = sub_1AF12E2AC(*(a1 + 432), v10);
  v32 = 0uLL;
  v33 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 720) + 616), WORD2(*(*(a1 + 720) + 616)), 0x73u, &v32);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v30 = v32;
  v31 = v33;
  *(a1 + 760) = sub_1AF2373FC(v12, "IndirectDiffuseSpatialTmpOutput", &v30);
  *(a1 + 744) = sub_1AF2757FC(v11, a4[4]);
  sub_1AF2583C0(a1, a4);
  v13 = a5[26];
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(a1, v13, v15);
  v16 = a5[33];
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(a1 + 664);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  v22 = *(a1 + 760);
  v24 = CFX::RG::Temporal::currentFrame(v23);
  CFX::RG::Pass::readFrom(a1, v22, v24);
  v25 = CFX::RG::Pass::writeTo(a1, *(a1 + 760));
  v26 = *(*(a1 + 736) + 16);
  v27 = CFX::RG::Temporal::previousFrame(v25);
  CFX::RG::Pass::readFrom(a1, v26, v27);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 736) + 16));
  return a1;
}

void sub_1AF2583C0(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  v7 = 0uLL;
  v8 = 0;
  CFXTextureDescriptorMake2D(*(*(a1 + 90) + 616), WORD2(*(*(a1 + 90) + 616)), 0x73u, &v7);
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (SWORD2(v7) ^ v4)))) >> 47));
  v6 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ (SDWORD1(v7) >> 16))))) >> 47)));
  *(a1 + 92) = v6;
  if (!v6)
  {
    operator new();
  }
}

void sub_1AF25853C(CFX::RG::Pass *a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF2583C0(a1, a2);

  sub_1AF25857C(a1, a2);
}

void sub_1AF25857C(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v7);
  *(a1 + 91) = v8;
  if (!v8)
  {
    operator new();
  }
}

__n128 sub_1AF2586D0(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[91] + 16))
  {
    v8 = v5;
    v9 = objc_msgSend_setBytes_length_atIndex_(v5, v6, a1[90], 640, 8);
    v10 = *(a2 + 24);
    v11 = a1[81];
    v12 = CFX::RG::Temporal::currentFrame(v9);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = a1[88];
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    objc_msgSend_setTexture_atIndex_(v8, v18, Texture, 1);
    objc_msgSend_setTexture_atIndex_(v8, v19, v17, 2);
    v21 = objc_msgSend_setTexture_atIndex_(v8, v20, a1[93], 4);
    v22 = *(a2 + 24);
    v23 = a1[94];
    v24 = CFX::RG::Temporal::currentFrame(v21);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    v26 = *(a2 + 24);
    v27 = a1[95];
    v28 = CFX::RG::Temporal::currentFrame(v25);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v30 = *(a2 + 24);
    v31 = *(a1[92] + 16);
    v32 = CFX::RG::Temporal::currentFrame(v29);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    objc_msgSend_setTexture_atIndex_(v8, v34, v25, 0);
    objc_msgSend_setTexture_atIndex_(v8, v35, v29, 10);
    v37 = sub_1AF1403B4(a1[91] + 16, v36);
    v38 = sub_1AFDE323C(v37);
    objc_msgSend_dispatch_onTexture2D_(v8, v39, v38, v33);
    objc_msgSend_setTexture_atIndex_(v8, v40, v29, 0);
    objc_msgSend_setTexture_atIndex_(v8, v41, v33, 10);
    v43 = sub_1AF1403B4(a1[91] + 24, v42);
    v44 = sub_1AFDE323C(v43);
    objc_msgSend_dispatch_onTexture2D_(v8, v45, v44, v33);
    v46 = a1[90];
    v47 = v46[25];
    v46[28] = v46[24];
    v46[29] = v47;
    v48 = v46[27];
    v46[30] = v46[26];
    v46[31] = v48;
    v49 = a1[90];
    v50 = *(v49 + 16);
    *(v49 + 64) = *v49;
    *(v49 + 80) = v50;
    result = *(v49 + 32);
    v51 = *(v49 + 48);
    *(v49 + 96) = result;
    *(v49 + 112) = v51;
    ++*(a1[90] + 592);
  }

  return result;
}

CFX::RG::Pass *sub_1AF2588B8(CFX::RG::RenderGraphContext *a1, void *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v5 = sub_1AF258A40(v4, a1, a2);
  a2[34] = *(*(v5 + 57) + 16);
  if ((atomic_load_explicit(byte_1ED73A848, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEFC4C();
  }

  v6 = 0xA1BA6B715A2CCB31;
  if (!byte_1ED73A840)
  {
    v6 = 0;
  }

  v7 = *a2;
  v18[0] = v6;
  v18[1] = v7;
  v19 = *(a2 + 27);
  v20 = *(v5 + 58);
  v8 = sub_1AF2537E4(v4, a1, v18);
  CFX::RG::Pass::dependsOn(v8, v5);
  a2[33] = sub_1AF262D90(v8);
  v9 = sub_1AF258A98(v4, a1, a2);
  CFX::RG::Pass::dependsOn(v9, v8);
  v10 = sub_1AF258AF0(v4, a1, a2);
  v11 = *(v9 + 58);
  *(v10 + 57) = v11;
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(v10, v11, v12);
  CFX::RG::Pass::dependsOn(v10, v9);
  v13 = sub_1AF258B48(v4, a1, a2);
  v14 = *(v10 + 59);
  *(v13 + 94) = v14;
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(v13, v14, v15);
  CFX::RG::Pass::dependsOn(v13, v10);
  v16 = *(*(v13 + 92) + 16);
  *(v10 + 58) = v16;
  a2[32] = v16;
  return v5;
}
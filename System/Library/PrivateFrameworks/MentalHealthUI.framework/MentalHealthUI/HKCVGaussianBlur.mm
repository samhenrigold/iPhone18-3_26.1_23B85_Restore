@interface HKCVGaussianBlur
- ($0EE4DB4080C7F8AC2CA5DE15946CA571)planInfo;
- ($F1BC40A862ED60063F4F8EDA86EB086B)clipRect;
- (HKCVGaussianBlur)initWithSigma:(float)sigma clipRect:(id *)rect kernelCache:(id)cache archive:(id)archive library:(id)library;
- (id)cachedTextureForDevice:(id)device pixelInfo:(WMPSPixelInfo)info identifier:(unint64_t)identifier textureSize:(id *)size protectionOptions:(unint64_t)options;
- (uint64_t)encodeCommandBuffer:(void *)buffer inPlaceTexture:;
- (void)dealloc;
- (void)prepareRAndPlanStepsROIs;
@end

@implementation HKCVGaussianBlur

- (HKCVGaussianBlur)initWithSigma:(float)sigma clipRect:(id *)rect kernelCache:(id)cache archive:(id)archive library:(id)library
{
  v17.receiver = self;
  v17.super_class = HKCVGaussianBlur;
  v12 = [(HKCVGaussianBlur *)&v17 init];
  v13 = v12;
  if (v12)
  {
    *(v12 + 140) = sigma;
    v14 = *&rect->var0.var0;
    v15 = *&rect->var1.var1;
    *(v12 + 616) = *&rect->var0.var2;
    *(v12 + 632) = v15;
    *(v12 + 600) = v14;
    *(v12 + 71) = cache;
    v13->_cache = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13->_library = library;
    v13->_archive = archive;
    initFilterInfo(&v13->_planInfo, v13->_sigma);
    [(HKCVGaussianBlur *)v13 prepareRAndPlanStepsROIs];
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = HKCVGaussianBlur;
  [(HKCVGaussianBlur *)&v3 dealloc];
}

- (id)cachedTextureForDevice:(id)device pixelInfo:(WMPSPixelInfo)info identifier:(unint64_t)identifier textureSize:(id *)size protectionOptions:(unint64_t)options
{
  infoCopy = info;
  if (options)
  {
    return WMPSConvolutionGetIntermediateTexture(device, &infoCopy, size, options);
  }

  v12 = [HKCVGaussianBlurKey alloc];
  v17 = *&size->var0;
  var2 = size->var2;
  v13 = [(HKCVGaussianBlurKey *)v12 initWithIdentifier:identifier textureSize:&v17];
  v14 = [(NSMutableDictionary *)self->_cache objectForKey:v13];
  if (v14)
  {
    IntermediateTexture = v14;
    v15 = v14;
  }

  else
  {
    IntermediateTexture = WMPSConvolutionGetIntermediateTexture(device, &infoCopy, size, 0);
    [(NSMutableDictionary *)self->_cache setObject:IntermediateTexture forKey:v13];
  }

  return IntermediateTexture;
}

- (void)prepareRAndPlanStepsROIs
{
  v141 = *MEMORY[0x277D85DE8];
  anon_210 = self->_anon_210;
  numSteps = self->_planInfo._numSteps;
  scale = self->_planInfo._scale;
  *v2.f32 = vcvt_f32_f64(vcvtq_f64_u64(*&self->_clipRect.size.width));
  v128 = v2;
  *self->_anon_210 = xmmword_258B05780;
  *&self->_anon_210[16] = v2;
  if (numSteps)
  {
    v7 = 0;
    v8 = 0;
    planSteps = self->_planInfo._planSteps;
    v139 = xmmword_258B05780;
    v10 = v140;
    v127 = numSteps;
    do
    {
      v12 = *planSteps++;
      v11 = v12;
      GaussianBlurKernelBorderScaleData = getGaussianBlurKernelBorderScaleData(v12);
      if (v12 < 24)
      {
        v24 = *anon_210->f32;
        v25 = *anon_210[2].f32;
        if (v11 < 16)
        {
          LODWORD(v42) = 0;
          *(&v42 + 1) = 1.0 / *(&GaussianBlurKernelBorderScaleData + 1);
          v43 = v139;
          v44 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v24.f32[0]), v42, *v24.f32, 1), v139, v24, 2);
          v45 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v25.f32[0]), v42, *v25.f32, 1), v139, v25, 2);
          LODWORD(v46) = 0;
          *(&v46 + 1) = -GaussianBlurKernelBorderScaleData;
          v47 = vaddq_f32(v46, v44);
          v48.i64[0] = 0xC0000000C0000000;
          v48.i64[1] = 0xC0000000C0000000;
          v49 = vmlaq_f32(v45, v48, v46);
          v47.i32[3] = v132;
          v49.i32[3] = v129;
          v50 = vaddq_f32(v47, v49);
          v47.i32[3] = 0;
          v51 = vrndmq_f32(v47);
          v50.i32[3] = 0;
          v52 = vsubq_f32(vrndpq_f32(v50), v51);
          anon_210[1].i32[0] = v51.i32[2];
          *anon_210 = *v51.f32;
          anon_210[3].i32[0] = v52.i32[2];
          anon_210[2] = *v52.f32;
          v53 = *anon_210[2].f32;
          *v10 = *anon_210->f32;
          v10[1] = v53;
          v54 = vaddq_f32(HIDWORD(v46), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / *(&GaussianBlurKernelBorderScaleData + 1)), COERCE_FLOAT(*anon_210->f32)), xmmword_258B05770, *anon_210, 1), v43, *anon_210->f32, 2));
          v55 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / *(&GaussianBlurKernelBorderScaleData + 1)), COERCE_FLOAT(*anon_210[2].f32)), xmmword_258B05770, anon_210[2], 1), v43, *anon_210[2].f32, 2), v48, HIDWORD(v46));
          v54.i32[3] = HIDWORD(v135);
          v55.i32[3] = v133;
          v56 = vaddq_f32(v54, v55);
          v54.i32[3] = 0;
          v56.i32[3] = 0;
          v57 = vrndmq_f32(v54);
          v58 = vsubq_f32(vrndpq_f32(v56), v57);
          anon_210[1].i32[0] = v57.i32[2];
          *anon_210 = *v57.f32;
          anon_210[3].i32[0] = v58.i32[2];
          anon_210[2] = *v58.f32;
          v23 = v7;
        }

        else
        {
          v26 = v139;
          v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(HIDWORD(GaussianBlurKernelBorderScaleData), v24.f32[0]), xmmword_258B05770, *v24.f32, 1), v139, v24, 2);
          v28 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(HIDWORD(GaussianBlurKernelBorderScaleData), v25.f32[0]), xmmword_258B05770, *v25.f32, 1), v139, v25, 2);
          *&v29 = -GaussianBlurKernelBorderScaleData;
          v30 = vaddq_f32(v29, v27);
          v31.i64[0] = 0xC0000000C0000000;
          v31.i64[1] = 0xC0000000C0000000;
          v32 = vmlaq_f32(v28, v31, v29);
          v30.i32[3] = v131;
          v32.i32[3] = v130;
          v33 = vaddq_f32(v30, v32);
          v30.i32[3] = 0;
          v33.i32[3] = 0;
          v34 = vrndmq_f32(v30);
          v35 = vsubq_f32(vrndpq_f32(v33), v34);
          anon_210[1].i32[0] = v34.i32[2];
          *anon_210 = *v34.f32;
          anon_210[3].i32[0] = v35.i32[2];
          anon_210[2] = *v35.f32;
          v23 = 2 * v8;
          v36 = *anon_210[2].f32;
          *v10 = *anon_210->f32;
          v10[1] = v36;
          LODWORD(v36) = 0;
          DWORD1(v36) = HIDWORD(GaussianBlurKernelBorderScaleData);
          v34.i32[0] = 0;
          v34.f32[1] = -GaussianBlurKernelBorderScaleData;
          v37 = vaddq_f32(v34.u64[0], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), COERCE_FLOAT(*anon_210->f32)), v36, *anon_210, 1), v26, *anon_210->f32, 2));
          v38 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), COERCE_FLOAT(*anon_210[2].f32)), v36, anon_210[2], 1), v26, *anon_210[2].f32, 2), v31, v34.u64[0]);
          v37.i32[3] = v136.i32[3];
          v38.i32[3] = HIDWORD(v134);
          v39 = vaddq_f32(v37, v38);
          v136 = v37;
          v37.i32[3] = 0;
          v40 = vrndmq_f32(v37);
          v39.i32[3] = 0;
          anon_210[1].i32[0] = v40.i32[2];
          *anon_210 = *v40.f32;
          v41 = vsubq_f32(vrndpq_f32(v39), v40);
          anon_210[3].i32[0] = v41.i32[2];
          anon_210[2] = *v41.f32;
          HIDWORD(v134) = v38.i32[3];
        }
      }

      else
      {
        if (v11 == 24)
        {
          v14 = scale;
        }

        else
        {
          v14 = 1.0 / scale;
        }

        LODWORD(v15) = 0;
        *(&v15 + 1) = v14;
        v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v14), COERCE_FLOAT(*anon_210->f32)), v15, *anon_210, 1), v139, *anon_210->f32, 2);
        v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v14), COERCE_FLOAT(*anon_210[2].f32)), v15, anon_210[2], 1), v139, *anon_210[2].f32, 2);
        v18 = vaddq_f32(v16, 0);
        v18.i32[3] = v138.i32[3];
        v17.i32[3] = v137.i32[3];
        v19 = vaddq_f32(v18, v17);
        v137 = v17;
        v138 = v18;
        v18.i32[3] = 0;
        v20 = vrndmq_f32(v18);
        v19.i32[3] = 0;
        anon_210[1].i32[0] = v20.i32[2];
        v21 = vsubq_f32(vrndpq_f32(v19), v20);
        *anon_210 = *v20.f32;
        anon_210[3].i32[0] = v21.i32[2];
        anon_210[2] = *v21.f32;
        v22 = *anon_210[2].f32;
        v23 = 2 * v8;
        *v10 = *anon_210->f32;
        v10[1] = v22;
      }

      v59 = &v140[32 * v23];
      v60 = *anon_210[2].f32;
      *(v59 + 2) = *anon_210->f32;
      *(v59 + 3) = v60;
      ++v8;
      v7 += 2;
      v10 += 4;
      --numSteps;
    }

    while (numSteps);
    v61 = vcvt_f32_f64(vcvtq_f64_u64(*&self->_clipRect.size.width));
    anon_210[1].i32[0] = 1065353216;
    *anon_210 = 0;
    anon_210[3].i32[0] = 0;
    anon_210[2] = v61;
    if (v127 >= 1)
    {
      v62 = (v127 & 0x7FFFFFFF) + 1;
      v63 = (&self->_planInfo._scale + (v127 & 0x7FFFFFFF));
      v64 = (self + 64 * (v127 & 0x7FFFFFFF) - 48);
      v65 = &v140[64 * (v127 & 0x7FFFFFFF) - 32];
      do
      {
        v67 = *v63--;
        v66 = v67;
        v68 = &kPlanKernelInfo + 56 * v67;
        v69 = getGaussianBlurKernelBorderScaleData(v67);
        v70 = *v65;
        v71 = *anon_210->f32;
        v74 = vaddq_f32(*anon_210->f32, *anon_210[2].f32);
        v72 = vaddq_f32(*v65, v65[1]);
        v71.i32[3] = 0;
        v70.i32[3] = 0;
        v73 = vmaxnmq_f32(v71, v70);
        v74.n128_u32[3] = 0;
        v72.i32[3] = 0;
        v75 = vsubq_f32(vminnmq_f32(v74, v72), v73);
        anon_210[1].i32[0] = v73.i32[2];
        *anon_210 = *v73.f32;
        anon_210[3].i32[0] = v75.i32[2];
        anon_210[2] = *v75.f32;
        v76 = *anon_210->f32;
        v77 = vaddq_f32(*anon_210->f32, *anon_210[2].f32);
        v76.i32[3] = 0;
        v78 = vrndmq_f32(v76);
        v77.i32[3] = 0;
        v79 = vsubq_f32(vrndpq_f32(v77), v78);
        anon_210[1].i32[0] = v78.i32[2];
        *anon_210 = *v78.f32;
        anon_210[3].i32[0] = v79.i32[2];
        anon_210[2] = *v79.f32;
        v80 = *anon_210[2].f32;
        v64[2] = *anon_210->f32;
        v64[3] = v80;
        if (v67 < 23)
        {
          v88 = *(&v69 + 1);
          v89 = v65[-2];
          v90 = *anon_210->f32;
          v91 = *anon_210[2].f32;
          v92 = v69;
          v93 = vaddq_f32(v89, v65[-1]);
          v89.i32[3] = 0;
          v93.i32[3] = 0;
          v138 = v89;
          v139 = v93;
          if (v66 < 16)
          {
            v106 = (*(v68 + 2))(1, v90, v91, v92, *(&v69 + 1));
            anon_210[1].i32[0] = v106.n128_i32[2];
            *anon_210 = v106.n128_u64[0];
            anon_210[3].i32[0] = v107;
            anon_210[2] = v108;
            v109 = *anon_210->f32;
            v110 = vaddq_f32(*anon_210->f32, *anon_210[2].f32);
            v109.i32[3] = 0;
            v111 = vmaxnmq_f32(v109, v138);
            v110.i32[3] = 0;
            v112 = vsubq_f32(vminnmq_f32(v110, v139), v111);
            v111.i32[3] = HIDWORD(v135);
            v112.i32[3] = v137.i32[3];
            v138 = v112;
            v139 = v111;
            v113 = vaddq_f32(v111, v112);
            v114 = v111;
            v114.i32[3] = 0;
            v115 = vrndmq_f32(v114);
            v113.i32[3] = 0;
            anon_210[1].i32[0] = v115.i32[2];
            v116 = vsubq_f32(vrndpq_f32(v113), v115);
            *anon_210 = *v115.f32;
            anon_210[3].i32[0] = v116.i32[2];
            anon_210[2] = *v116.f32;
            v117 = *anon_210[2].f32;
            *v64 = *anon_210->f32;
            v64[1] = v117;
            (*(v68 + 5))(1, *anon_210->f32, *anon_210[2].f32, v92, v88);
            v137 = v138;
            HIDWORD(v135) = HIDWORD(v139);
          }

          else
          {
            v94 = (*(v68 + 5))(0, v90, v91, v92, *(&v69 + 1));
            anon_210[1].i32[0] = v94.n128_i32[2];
            *anon_210 = v94.n128_u64[0];
            anon_210[3].i32[0] = v95;
            anon_210[2] = v96;
            v97 = *anon_210->f32;
            v98 = vaddq_f32(*anon_210->f32, *anon_210[2].f32);
            v97.i32[3] = 0;
            v99 = vmaxnmq_f32(v97, v138);
            v98.i32[3] = 0;
            v100 = vsubq_f32(vminnmq_f32(v98, v139), v99);
            v99.i32[3] = HIDWORD(v134);
            v100.i32[3] = v136.i32[3];
            v138 = v100;
            v139 = v99;
            v101 = vaddq_f32(v99, v100);
            v102 = v99;
            v102.i32[3] = 0;
            v103 = vrndmq_f32(v102);
            v101.i32[3] = 0;
            anon_210[1].i32[0] = v103.i32[2];
            v104 = vsubq_f32(vrndpq_f32(v101), v103);
            *anon_210 = *v103.f32;
            anon_210[3].i32[0] = v104.i32[2];
            anon_210[2] = *v104.f32;
            v105 = *anon_210[2].f32;
            *v64 = *anon_210->f32;
            v64[1] = v105;
            (*(v68 + 2))(0, *anon_210->f32, *anon_210[2].f32, v92, v88);
            v136 = v138;
            HIDWORD(v134) = HIDWORD(v139);
          }
        }

        else
        {
          if (v66 <= 25)
          {
            v81 = v68;
          }

          else
          {
            v81 = 0;
          }

          v82 = *anon_210[2].f32;
          *v64 = *anon_210->f32;
          v64[1] = v82;
          v83 = (v81 + 40);
          if (v66 == 24)
          {
            v83 = &off_2869D45E8;
            v74.n128_f32[0] = 1.0 / scale;
          }

          else
          {
            v74.n128_f32[0] = scale;
          }

          (*v83)(1, *anon_210->f32, *anon_210[2].f32, 0.0, v74);
        }

        anon_210[1].i32[0] = v85;
        anon_210[3].i32[0] = v87;
        *anon_210 = v84;
        anon_210[2] = v86;
        --v62;
        v64 -= 4;
        v65 -= 4;
      }

      while (v62 > 1);
    }
  }

  else
  {
    *&self->_anon_210[8] = 1065353216;
    *anon_210 = 0;
    *&self->_anon_210[24] = 0;
    *&self->_anon_210[16] = v2.i64[0];
  }

  v118 = *anon_210->f32;
  v119 = vaddq_f32(*anon_210->f32, *anon_210[2].f32);
  v120 = vaddq_f32(v128, xmmword_258B05780);
  v118.i32[3] = 0;
  v119.i32[3] = 0;
  v120.i32[3] = 0;
  v121 = vmaxnmq_f32(v118, xmmword_258B05780);
  v122 = vsubq_f32(vminnmq_f32(v119, v120), v121);
  anon_210[1].i32[0] = v121.i32[2];
  *anon_210 = *v121.f32;
  anon_210[3].i32[0] = v122.i32[2];
  anon_210[2] = *v122.f32;
  v123 = *anon_210->f32;
  v124 = vaddq_f32(*anon_210->f32, *anon_210[2].f32);
  v123.i32[3] = 0;
  v124.i32[3] = 0;
  v125 = vrndmq_f32(v123);
  v126 = vsubq_f32(vrndpq_f32(v124), v125);
  anon_210[1].i32[0] = v125.i32[2];
  *anon_210 = *v125.f32;
  anon_210[3].i32[0] = v126.i32[2];
  anon_210[2] = *v126.f32;
}

- ($F1BC40A862ED60063F4F8EDA86EB086B)clipRect
{
  v3 = *&self[12].var1.var2;
  *&retstr->var0.var0 = *&self[12].var1.var0;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[13].var0.var1;
  return self;
}

- ($0EE4DB4080C7F8AC2CA5DE15946CA571)planInfo
{
  *&retstr->var3[7] = *&self[12].var3[1];
  v3 = *&self[11].var3[7];
  *&retstr->var0 = *&self[11].var3[3];
  *&retstr->var2 = v3;
  *&retstr->var3[3] = *&self[12].var1;
  return self;
}

- (uint64_t)encodeCommandBuffer:(void *)buffer inPlaceTexture:
{
  if (result)
  {
    v3 = result;
    if (*(result + 560) >= 1.0)
    {
      v4 = *buffer;
      v92 = *(result + 608);
      v93 = *(result + 600);
      v5 = a2;
      v103 = [objc_msgSend(a2 "commandQueue")];
      computeCommandEncoder = [v5 computeCommandEncoder];
      v6 = *(v3 + 648);
      v7 = *(v3 + 656);
      v8 = *(v3 + 664);
      PixelInfo = GetPixelInfo();
      protectionOptions = [v4 protectionOptions];
      if (v7)
      {
        v9 = 0;
        v10 = 0;
        v11 = v3 + 668;
        v97 = v3 + 16;
        v81 = v7 - 1;
        v82 = v6 + 24;
        LODWORD(v12) = 0;
        v94 = 0;
        HIDWORD(v12) = 1.0;
        v80 = v12;
        v96 = v4;
        v98 = v5;
        v91 = v7;
        while (1)
        {
          v101 = v10;
          v13 = *(v11 + 4 * v10);
          GaussianBlurKernelSize = getGaussianBlurKernelSize(v13);
          v15 = v13 <= 25 ? &kPlanKernelInfo + 56 * v13 : 0;
          result = [(HKCVKernelCache *)*(v3 + 568) kernelWithIdentifier:*(v3 + 584) fromLibrary:*(v3 + 592) archive:?];
          if (!result)
          {
            break;
          }

          v16 = result;
          result = [(HKCVKernelCache *)*(v3 + 568) kernelWithIdentifier:*(v3 + 584) fromLibrary:*(v3 + 592) archive:?];
          if (!result)
          {
            break;
          }

          v17 = GaussianBlurKernelSize - 1;
          v90 = v9;
          v18 = (v82 + 8 * v9);
          v19 = 8;
          if (v13 >= 16)
          {
            v20 = 8;
          }

          else
          {
            v20 = 32;
          }

          if (v13 >= 16)
          {
            v19 = 32;
          }

          v85 = v19;
          if (v13 >= 16)
          {
            v21 = v16;
          }

          else
          {
            v21 = result;
          }

          if (v13 >= 16)
          {
            v22 = result;
          }

          else
          {
            v22 = v16;
          }

          v86 = v22;
          v23 = (v97 + (v101 << 6));
          v25 = *v23;
          v24 = v23[1];
          v26 = vcvt_s32_f32(*v24.f32);
          v27.f64[1] = 0.0;
          LOWORD(v27.f64[0]) = v26.i16[0];
          WORD1(v27.f64[0]) = v26.i16[2];
          v120[0] = LODWORD(v27.f64[0]);
          v120[1] = v25.i64[0];
          v83 = v25.i64[0];
          v28 = (v17 >> 2);
          if (v28 < 1)
          {
            v28 = 0;
          }

          else
          {
            v29 = (v17 >> 2);
            v30 = v123;
            do
            {
              v32 = *v18;
              v31 = v18[1];
              v18 += 2;
              v27 = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v31);
              *v30++ = v27;
              --v29;
            }

            while (v29);
          }

          v33 = v17 & 3;
          if (v33)
          {
            v34 = &v123[v28];
            *v34 = 0;
            v34[1] = 0;
            v35.f64[0] = v18->f64[0];
            if (v33 == 2)
            {
              v35.f64[1] = v18->f64[1];
              *&v35.f64[0] = vcvt_f32_f64(v35);
            }

            else if (v33 == 1)
            {
              *&v36 = v35.f64[0];
              v35 = v36;
            }

            else
            {
              v27.f64[0] = v18[1].f64[0];
              v35.f64[1] = v18->f64[1];
              v35 = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v27);
              HIDWORD(v35.f64[1]) = 0;
            }

            v123[v28] = v35;
          }

          v87 = result;
          v88 = v16;
          v89 = GaussianBlurKernelSize;
          v39 = xmmword_258B05770;
          v38 = xmmword_258B057C0;
          HIDWORD(v39) = v94.i32[1];
          HIDWORD(v38) = v94.i32[0];
          v121 = v38;
          v122 = v39;
          v124 = 1.0 / v8;
          *&v40 = OUTLINED_FUNCTION_0(v24);
          v108 = v40;
          *&v109 = 1;
          v41 = [v3 cachedTextureForDevice:v103 pixelInfo:PixelInfo identifier:v101 textureSize:&v108 protectionOptions:protectionOptions];
          if (v101)
          {
            v42 = v13 < 16;
          }

          else
          {
            v42 = 1;
          }

          v43 = v42;
          Sampler = GetSampler(v103, 0, v43, 0);
          v95 = v15;
          v45 = &v15[v20];
          v46 = v120[0];
          v47 = WORD1(v120[0]);
          [v21 maxTotalThreadsPerThreadgroup];
          [v21 threadExecutionWidth];
          OUTLINED_FUNCTION_1();
          if (v51)
          {
            v49 = v48;
          }

          v52 = *(v45 + 2);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v49;
          }

          if (v52)
          {
            v54 = v49;
          }

          else
          {
            v54 = v50;
          }

          [computeCommandEncoder setComputePipelineState:v21];
          v84 = v41;
          [computeCommandEncoder setTexture:v41 atIndex:0];
          [computeCommandEncoder setTexture:v96 atIndex:1];
          [computeCommandEncoder setSamplerState:Sampler atIndex:0];
          [computeCommandEncoder setBytes:v120 length:128 atIndex:0];
          *&v108 = (v53 + v46 - 1) / v53;
          *(&v108 + 1) = (v54 + v47 - 1) / v54;
          *&v109 = 1;
          *&v118 = v53;
          *(&v118 + 1) = v54;
          v119 = 1;
          [computeCommandEncoder dispatchThreadgroups:&v108 threadsPerThreadgroup:&v118];
          retainedReferences = [v98 retainedReferences];
          if (v96 == v4)
          {
            v57 = v101;
            if ((retainedReferences & 1) == 0)
            {
              v58 = v4;
              v116[0] = MEMORY[0x277D85DD0];
              v116[1] = 3221225472;
              v116[2] = __55__HKCVGaussianBlur_encodeCommandBuffer_inPlaceTexture___block_invoke_2;
              v116[3] = &unk_2798ADE68;
              v116[4] = v4;
              [v98 addCompletedHandler:v116];
            }
          }

          else
          {
            if ((retainedReferences & 1) == 0)
            {
              v56 = v96;
              v117[0] = MEMORY[0x277D85DD0];
              v117[1] = 3221225472;
              v117[2] = __55__HKCVGaussianBlur_encodeCommandBuffer_inPlaceTexture___block_invoke;
              v117[3] = &unk_2798ADE68;
              v117[4] = v96;
              [v98 addCompletedHandler:v117];
            }

            v57 = v101;
          }

          v59 = v97 + (v57 << 6);
          v61 = *(v59 + 32);
          v60 = *(v59 + 48);
          v111 = v123[0];
          v112 = v123[1];
          v113 = v123[2];
          v114 = v123[3];
          v62 = COERCE_UNSIGNED_INT(1.0);
          *(&v62 + 3) = -*&v83;
          v63 = vcvt_s32_f32(*v60.f32);
          v109 = v62;
          v64 = v80;
          *(&v64 + 3) = -*(&v83 + 1);
          v110 = v64;
          v115 = v8;
          v65 = v4;
          if (v57 == v81)
          {
            v66 = v93;
          }

          else
          {
            v66 = 0;
          }

          v63.i16[1] = v63.i16[2];
          if (v57 == v81)
          {
            v67 = v92;
          }

          else
          {
            v67 = 0;
          }

          v63.i16[2] = v66;
          v63.i16[3] = v67;
          *&v108 = v63;
          *(&v108 + 1) = v61;
          v102 = v61;
          if (v57 != v81)
          {
            *&v68 = OUTLINED_FUNCTION_0(v60);
            v118 = v68;
            v119 = 1;
            v65 = [v3 cachedTextureForDevice:v103 pixelInfo:PixelInfo identifier:v57 + v91 textureSize:&v118 protectionOptions:protectionOptions];
          }

          v69 = GetSampler(v103, 0, v13 < 16, 0);
          v70 = v108;
          v71 = WORD1(v108);
          [v86 maxTotalThreadsPerThreadgroup];
          [v86 threadExecutionWidth];
          OUTLINED_FUNCTION_1();
          if (v51)
          {
            v73 = v72;
          }

          v75 = *&v95[v85 + 16];
          if (v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = v73;
          }

          if (v75)
          {
            v77 = v73;
          }

          else
          {
            v77 = v74;
          }

          [computeCommandEncoder setComputePipelineState:v86];
          v96 = v65;
          [computeCommandEncoder setTexture:v65 atIndex:0];
          [computeCommandEncoder setTexture:v84 atIndex:1];
          [computeCommandEncoder setSamplerState:v69 atIndex:0];
          [computeCommandEncoder setBytes:&v108 length:128 atIndex:0];
          *&v118 = (v76 + v70 - 1) / v76;
          *(&v118 + 1) = (v77 + v71 - 1) / v77;
          v119 = 1;
          v107[0] = v76;
          v107[1] = v77;
          v107[2] = 1;
          [computeCommandEncoder dispatchThreadgroups:&v118 threadsPerThreadgroup:v107];
          v5 = v98;
          if (([v98 retainedReferences] & 1) == 0)
          {
            v78 = v84;
            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v106[2] = __55__HKCVGaussianBlur_encodeCommandBuffer_inPlaceTexture___block_invoke_3;
            v106[3] = &unk_2798ADE68;
            v106[4] = v84;
            [v98 addCompletedHandler:v106];
          }

          v94 = vneg_f32(v102);

          v9 = v89 + v90;
          v11 = v3 + 668;
          v10 = v57 + 1;
          if (v57 + 1 == v91)
          {
            goto LABEL_75;
          }
        }
      }

      else
      {
LABEL_75:
        if (([v5 retainedReferences] & 1) == 0)
        {
          v79 = v4;
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __55__HKCVGaussianBlur_encodeCommandBuffer_inPlaceTexture___block_invoke_4;
          v105[3] = &unk_2798ADE68;
          v105[4] = v4;
          [v5 addCompletedHandler:v105];
        }

        [computeCommandEncoder endEncoding];
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end
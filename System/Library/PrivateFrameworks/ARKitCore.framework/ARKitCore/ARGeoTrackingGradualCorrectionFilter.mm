@interface ARGeoTrackingGradualCorrectionFilter
- (BOOL)getCurrentENUFromVIO:(id *)o;
- (__n128)initWithTargetTransform:(__n128 *)transform;
- (id).cxx_construct;
- (void)ENUFromVIOTarget;
- (void)setENUFromVIOTarget:(__int128 *)target;
- (void)setTargetRotation:(uint64_t)rotation;
- (void)setTargetTranslation:(ARGeoTrackingGradualCorrectionFilter *)self;
- (void)updateWithVIOPose:(uint64_t)pose timestamp:(_OWORD *)timestamp;
@end

@implementation ARGeoTrackingGradualCorrectionFilter

- (__n128)initWithTargetTransform:(__n128 *)transform
{
  v17.receiver = self;
  v17.super_class = ARGeoTrackingGradualCorrectionFilter;
  v4 = [(ARGeoTrackingGradualCorrectionFilter *)&v17 init];
  if (v4)
  {
    v4->_targetLock._os_unfair_lock_opaque = 0;
    v6 = *transform;
    v7 = transform[1];
    v8 = transform[3];
    *&v4->_anon_10[32] = transform[2];
    *&v4->_anon_10[48] = v8;
    *v4->_anon_10 = v6;
    *&v4->_anon_10[16] = v7;
    v9 = transform[4];
    v10 = transform[5];
    v11 = transform[7];
    *&v4->_anon_10[96] = transform[6];
    *&v4->_anon_10[112] = v11;
    *&v4->_anon_10[64] = v9;
    *&v4->_anon_10[80] = v10;
    v4->_lastTimestamp = -1.0;
    v12 = *transform;
    v13 = transform[1];
    v14 = transform[3];
    *&v4[1]._anon_10[16] = transform[2];
    *&v4[1]._anon_10[32] = v14;
    *&v4[1].super.isa = v12;
    *v4[1]._anon_10 = v13;
    result = transform[4];
    v15 = transform[5];
    v16 = transform[7];
    *&v4[1]._anon_10[80] = transform[6];
    *&v4[1]._anon_10[96] = v16;
    *&v4[1]._anon_10[48] = result;
    *&v4[1]._anon_10[64] = v15;
  }

  return result;
}

- (void)ENUFromVIOTarget
{
  os_unfair_lock_lock((self + 280));
  v4 = *(self + 416);
  a2[4] = *(self + 400);
  a2[5] = v4;
  v5 = *(self + 448);
  a2[6] = *(self + 432);
  a2[7] = v5;
  v6 = *(self + 352);
  *a2 = *(self + 336);
  a2[1] = v6;
  v7 = *(self + 384);
  a2[2] = *(self + 368);
  a2[3] = v7;

  os_unfair_lock_unlock((self + 280));
}

- (void)setENUFromVIOTarget:(__int128 *)target
{
  os_unfair_lock_lock((self + 280));
  v5 = *target;
  v6 = target[1];
  v7 = target[3];
  *(self + 368) = target[2];
  *(self + 384) = v7;
  *(self + 336) = v5;
  *(self + 352) = v6;
  v8 = target[4];
  v9 = target[5];
  v10 = target[7];
  *(self + 432) = target[6];
  *(self + 448) = v10;
  *(self + 400) = v8;
  *(self + 416) = v9;

  os_unfair_lock_unlock((self + 280));
}

- (void)setTargetTranslation:(ARGeoTrackingGradualCorrectionFilter *)self
{
  v5 = v2[1];
  v6 = *v2;
  os_unfair_lock_lock(&self->_targetLock);
  *&v4 = v5;
  *(&v4 + 1) = 1.0;
  *&self[1]._anon_10[80] = v6;
  *&self[1]._anon_10[96] = v4;

  os_unfair_lock_unlock(&self->_targetLock);
}

- (void)setTargetRotation:(uint64_t)rotation
{
  os_unfair_lock_lock(self + 70);
  for (i = 0; i != 24; i += 8)
  {
    v6 = *(rotation + i * 4 + 16);
    v7 = &self[i + 84];
    *&v7->_os_unfair_lock_opaque = *(rotation + i * 4);
    *&v7[4]._os_unfair_lock_opaque = v6;
  }

  os_unfair_lock_unlock(self + 70);
}

- (BOOL)getCurrentENUFromVIO:(id *)o
{
  v3 = *self->_anon_10;
  v4 = *&self->_anon_10[16];
  v5 = *&self->_anon_10[48];
  *(o + 2) = *&self->_anon_10[32];
  *(o + 3) = v5;
  *o = v3;
  *(o + 1) = v4;
  v6 = *&self->_anon_10[64];
  v7 = *&self->_anon_10[80];
  v8 = *&self->_anon_10[112];
  *(o + 6) = *&self->_anon_10[96];
  *(o + 7) = v8;
  *(o + 4) = v6;
  *(o + 5) = v7;
  return 1;
}

- (void)updateWithVIOPose:(uint64_t)pose timestamp:(_OWORD *)timestamp
{
  STACK[0xAC8] = *MEMORY[0x1E69E9840];
  *&STACK[0x8B0] = 0u;
  *&STACK[0x8C0] = 0u;
  *&STACK[0x890] = 0u;
  *&STACK[0x8A0] = 0u;
  *&STACK[0x870] = 0u;
  *&STACK[0x880] = 0u;
  *&STACK[0x850] = 0u;
  *&STACK[0x860] = 0u;
  v54 = timestamp[5];
  *&STACK[0x910] = timestamp[4];
  *&STACK[0x920] = v54;
  v55 = timestamp[7];
  *&STACK[0x930] = timestamp[6];
  *&STACK[0x940] = v55;
  v56 = timestamp[1];
  *&STACK[0x8D0] = *timestamp;
  *&STACK[0x8E0] = v56;
  v57 = timestamp[3];
  *&STACK[0x8F0] = timestamp[2];
  *&STACK[0x900] = v57;
  __invert_d4();
  *&STACK[0x930] = 0u;
  *&STACK[0x940] = 0u;
  *&STACK[0x910] = 0u;
  *&STACK[0x920] = 0u;
  *&STACK[0x8F0] = 0u;
  *&STACK[0x900] = 0u;
  *&STACK[0x8D0] = 0u;
  *&STACK[0x8E0] = 0u;
  ConvertIMU(&STACK[0x8D0], &STACK[0x850]);
  if (*(self + 272) >= 0.0)
  {
    STACK[0x848] = 0;
    STACK[0x840] = 0;
    RelativeMotionAndYaw = GetRelativeMotionAndYaw((self + 144), &STACK[0x8D0], &STACK[0x848], &STACK[0x840]);
    os_unfair_lock_lock((self + 280));
    v63 = *(self + 416);
    *&STACK[0x800] = *(self + 400);
    *&STACK[0x810] = v63;
    v64 = *(self + 448);
    *&STACK[0x820] = *(self + 432);
    *&STACK[0x830] = v64;
    v65 = *(self + 352);
    *a52.columns[0].f64 = *(self + 336);
    *&a52.columns[0].f64[2] = v65;
    v66 = *(self + 384);
    *&STACK[0x7E0] = *(self + 368);
    *&STACK[0x7F0] = v66;
    os_unfair_lock_unlock((self + 280));
    if (RelativeMotionAndYaw)
    {
      v68 = *&STACK[0x840];
      v69 = (self + 16);
      v70 = *(self + 272);
      v158 = *&STACK[0x940];
      v159 = *&STACK[0x930];
      v71 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*&a52.columns[0].f64[2], *&STACK[0x930]), *&STACK[0x7F0], *&STACK[0x930], 1), *&STACK[0x810], v158.f64[0]), *&STACK[0x830], v158, 1);
      v160 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(self + 32), *&STACK[0x930]), *(self + 64), *&STACK[0x930], 1), *(self + 96), *&STACK[0x940]), *(self + 128), *&STACK[0x940], 1);
      v161 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(self + 16), *&STACK[0x930]), *(self + 48), *&STACK[0x930], 1), *(self + 80), *&STACK[0x940]), *(self + 112), *&STACK[0x940], 1);
      v72 = vsubq_f64(v71, v160);
      v156 = v71.f64[0] - v160.f64[0];
      v157 = vsubq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a52.columns[0].f64, *&STACK[0x930]), *&STACK[0x7E0], *&STACK[0x930], 1), *&STACK[0x800], v158.f64[0]), *&STACK[0x820], v158, 1), v161);
      v72.f64[0] = v71.f64[0] - v160.f64[0];
      v71.f64[0] = vmulq_f64(v72, v72).f64[0];
      v73 = vmulq_f64(v157, v157);
      v73.f64[0] = sqrt(v71.f64[0] + vaddvq_f64(v73));
      vars0 = v73;
      v74 = (v73.f64[0] + -1.0) / 10.0;
      if (v74 > 1.0)
      {
        v74 = 1.0;
      }

      if (v74 >= 0.0)
      {
        v75 = v74;
      }

      else
      {
        v75 = 0.0;
      }

      a50 = 0.0;
      v76 = GetRelativeMotionAndYaw((self + 16), &a52, &a51, &a50);
      v77 = a50;
      v78 = fabs(a50);
      if (vars0.f64[0] <= 5.0 && v78 <= 5.0)
      {
        v102 = a2 - v70;
        v103 = *&STACK[0x848];
        v104 = fabs(v68) * 0.01;
        v105 = (v78 + -1.0) / 10.0;
        if (v105 > 1.0)
        {
          v105 = 1.0;
        }

        if (v105 < 0.0)
        {
          v105 = 0.0;
        }

        v106 = v104 + v102 * v105;
        if (v106 < v78)
        {
          v78 = v106;
        }

        if (v78 < 0.0001)
        {
          v78 = 0.0;
        }

        if (a50 >= 0.0)
        {
          v107 = v78;
        }

        else
        {
          v107 = -v78;
        }

        Transform4DofFromMatrix((self + 16), &a45);
        a44 = 0;
        a41 = 0u;
        a42 = 0;
        a43 = v107 + a48;
        *&STACK[0xAB0] = 0u;
        *&STACK[0xAA0] = 0u;
        *&STACK[0xA90] = 0u;
        *&STACK[0xA80] = 0u;
        *&STACK[0xA70] = 0u;
        *&STACK[0xA60] = 0u;
        *&STACK[0xA50] = 0u;
        *&STACK[0xA40] = 0u;
        MatrixFromTransform4Dof(&a41, &STACK[0xA40]);
        v108 = vdupq_laneq_s64(v159, 1);
        v109 = vdupq_lane_s64(*&v158.f64[0], 0);
        v110 = vdupq_laneq_s64(v158, 1);
        v111 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*&STACK[0xA40], *v159.i64), v108, *&STACK[0xA60]), v109, *&STACK[0xA80]), v110, *&STACK[0xAA0]);
        v112 = v160.f64[0] - vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*&STACK[0xA50], *v159.i64), v108, *&STACK[0xA70]), v109, *&STACK[0xA90]), v110, *&STACK[0xAB0]).f64[0];
        v113 = 0.0;
        v114 = 0uLL;
        if (vars0.f64[0] > 0.0001)
        {
          v115 = v103 * 0.1 + v102 * v75;
          if (vars0.f64[0] < v115)
          {
            v115 = vars0.f64[0];
          }

          v114 = vdivq_f64(vmulq_n_f64(v157, v115), vdupq_lane_s64(*&vars0.f64[0], 0));
          v113 = v156 * v115 / vars0.f64[0];
        }

        v116 = *&STACK[0xA60];
        v117 = *&STACK[0xA70];
        v118 = *&STACK[0xA70];
        *&STACK[0x9F0] = *&STACK[0xA60];
        *&STACK[0xA00] = v117;
        v119 = *&STACK[0xA80];
        v120 = *&STACK[0xA90];
        v121 = *&STACK[0xA90];
        *&STACK[0xA10] = *&STACK[0xA80];
        *&STACK[0xA20] = v120;
        v122 = *&STACK[0xA40];
        v123 = *&STACK[0xA50];
        v124 = *&STACK[0xA50];
        *&STACK[0x9D0] = *&STACK[0xA40];
        *&STACK[0x9E0] = v123;
        v125 = v112 + v113;
        v126 = vaddq_f64(vsubq_f64(v161, v111), v114);
        __asm { FMOV            V3.2D, #1.0 }

        *&_Q3 = v125;
        v132 = *(self + 96);
        *&STACK[0x990] = *(self + 80);
        *&STACK[0x9A0] = v132;
        v133 = *(self + 128);
        *&STACK[0x9B0] = *(self + 112);
        *&STACK[0x9C0] = v133;
        v134 = *(self + 32);
        *&STACK[0x950] = *v69;
        *&STACK[0x960] = v134;
        v135 = *(self + 64);
        *&STACK[0x970] = *(self + 48);
        *&STACK[0x980] = v135;
        a35 = v116;
        a36 = v118;
        a37 = v119;
        a38 = v121;
        a33 = v122;
        a34 = v124;
        v162 = _Q3;
        vars0a = v126;
        a39 = v126;
        a40 = _Q3;
        v136 = *&STACK[0x810];
        a29 = *&STACK[0x800];
        a30 = v136;
        v137 = *&STACK[0x830];
        a31 = *&STACK[0x820];
        a32 = v137;
        a25 = *a52.columns[0].f64;
        a26 = *&a52.columns[0].f64[2];
        v138 = *&STACK[0x7F0];
        a27 = *&STACK[0x7E0];
        a28 = v138;
        v139 = *&STACK[0x920];
        a21 = *&STACK[0x910];
        a22 = v139;
        v140 = *&STACK[0x940];
        a23 = *&STACK[0x930];
        a24 = v140;
        v141 = *&STACK[0x8E0];
        a17 = *&STACK[0x8D0];
        a18 = v141;
        v142 = *&STACK[0x900];
        a19 = *&STACK[0x8F0];
        a20 = v142;
        v143 = SanityCheck(&STACK[0x950], &a33, &a25, &a17);
        if ((v143 & 1) == 0)
        {
          v144 = _ARLogGeneral(v143);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
          {
            v145 = objc_opt_class();
            v146 = NSStringFromClass(v145);
            LODWORD(STACK[0x950]) = 138543618;
            STACK[0x954] = v146;
            LOWORD(STACK[0x95C]) = 2048;
            STACK[0x95E] = self;
            _os_log_impl(&dword_1C241C000, v144, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GradualCorrection Pose update does not improve", &STACK[0x950], 0x16u);
          }
        }

        v147 = *&STACK[0xA00];
        *(self + 48) = *&STACK[0x9F0];
        *(self + 64) = v147;
        v148 = *&STACK[0xA20];
        *(self + 80) = *&STACK[0xA10];
        *(self + 96) = v148;
        v149 = *&STACK[0x9E0];
        *v69 = *&STACK[0x9D0];
        *(self + 32) = v149;
        *(self + 112) = vars0a;
        *(self + 128) = v162;
        *(self + 272) = a2;
        v150 = *&STACK[0x8D0];
        v151 = *&STACK[0x8E0];
        v152 = *&STACK[0x900];
        *(self + 176) = *&STACK[0x8F0];
        *(self + 192) = v152;
        *(self + 144) = v150;
        *(self + 160) = v151;
        v153 = *&STACK[0x910];
        v154 = *&STACK[0x920];
        v155 = *&STACK[0x940];
        *(self + 240) = *&STACK[0x930];
        *(self + 256) = v155;
        *(self + 208) = v153;
        *(self + 224) = v154;
      }

      else
      {
        v80 = _ARLogGeneral(v76);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          LODWORD(STACK[0xA40]) = 138544130;
          STACK[0xA44] = v82;
          LOWORD(STACK[0xA4C]) = 2048;
          STACK[0xA4E] = self;
          LOWORD(STACK[0xA56]) = 2048;
          STACK[0xA58] = *&vars0.f64[0];
          LOWORD(STACK[0xA60]) = 2048;
          *&STACK[0xA62] = v77;
          _os_log_impl(&dword_1C241C000, v80, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GradualCorrection Pose update to strong (%f m ,%f deg) - resetting filter", &STACK[0xA40], 0x2Au);
        }

        *(self + 272) = a2;
        v83 = *&STACK[0x920];
        *(self + 208) = *&STACK[0x910];
        *(self + 224) = v83;
        v84 = *&STACK[0x940];
        *(self + 240) = *&STACK[0x930];
        *(self + 256) = v84;
        v85 = *&STACK[0x8E0];
        *(self + 144) = *&STACK[0x8D0];
        *(self + 160) = v85;
        v86 = *&STACK[0x900];
        *(self + 176) = *&STACK[0x8F0];
        *(self + 192) = v86;
        v87 = *&STACK[0x7F0];
        *(self + 48) = *&STACK[0x7E0];
        *(self + 64) = v87;
        v88 = *&a52.columns[0].f64[2];
        *v69 = *a52.columns[0].f64;
        *(self + 32) = v88;
        v89 = *&STACK[0x830];
        *(self + 112) = *&STACK[0x820];
        *(self + 128) = v89;
        v90 = *&STACK[0x810];
        *(self + 80) = *&STACK[0x800];
        *(self + 96) = v90;
      }
    }

    else
    {
      v91 = _ARLogGeneral(v67);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        v92 = objc_opt_class();
        v93 = NSStringFromClass(v92);
        LODWORD(STACK[0xA40]) = 138543618;
        STACK[0xA44] = v93;
        LOWORD(STACK[0xA4C]) = 2048;
        STACK[0xA4E] = self;
        _os_log_impl(&dword_1C241C000, v91, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GradualCorrection GetRelativeMotionAndYaw failed - resetting filter", &STACK[0xA40], 0x16u);
      }

      *(self + 272) = a2;
      v94 = *&STACK[0x920];
      *(self + 208) = *&STACK[0x910];
      *(self + 224) = v94;
      v95 = *&STACK[0x940];
      *(self + 240) = *&STACK[0x930];
      *(self + 256) = v95;
      v96 = *&STACK[0x8E0];
      *(self + 144) = *&STACK[0x8D0];
      *(self + 160) = v96;
      v97 = *&STACK[0x900];
      *(self + 176) = *&STACK[0x8F0];
      *(self + 192) = v97;
      v98 = *&STACK[0x7F0];
      *(self + 48) = *&STACK[0x7E0];
      *(self + 64) = v98;
      v99 = *&a52.columns[0].f64[2];
      *(self + 16) = *a52.columns[0].f64;
      *(self + 32) = v99;
      v100 = *&STACK[0x830];
      *(self + 112) = *&STACK[0x820];
      *(self + 128) = v100;
      v101 = *&STACK[0x810];
      *(self + 80) = *&STACK[0x800];
      *(self + 96) = v101;
    }
  }

  else
  {
    *(self + 272) = a2;
    v58 = *&STACK[0x920];
    *(self + 208) = *&STACK[0x910];
    *(self + 224) = v58;
    v59 = *&STACK[0x940];
    *(self + 240) = *&STACK[0x930];
    *(self + 256) = v59;
    v60 = *&STACK[0x8E0];
    *(self + 144) = *&STACK[0x8D0];
    *(self + 160) = v60;
    v61 = *&STACK[0x900];
    *(self + 176) = *&STACK[0x8F0];
    *(self + 192) = v61;
  }
}

- (id).cxx_construct
{
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 18) = 0u;
  return self;
}

@end
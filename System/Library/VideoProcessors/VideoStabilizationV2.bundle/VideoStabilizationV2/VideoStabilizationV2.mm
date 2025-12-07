float64_t GVSApplyFaceCorrectionQuaternionToStabilizedQuaternion(int8x16_t a1, double a2, double a3, double a4, double a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v5 = vextq_s8(a1, a1, 8uLL).u64[0];
  v7[0] = vcvtq_f64_f32(vext_s8(v5, *a1.i8, 4uLL));
  v7[1] = vcvtq_f64_f32(vext_s8(*a1.i8, v5, 4uLL));
  return FigMotionMultiplyQuaternions(v8, v7);
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_6(&v27);
LABEL_21:
    v25 = v27;
    goto LABEL_13;
  }

  if (!a3)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_5(&v27);
    goto LABEL_21;
  }

  v8 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:kFigCaptureCameraInfoKey_GeometricDistortionCoefficients];
  v11 = v10;
  if (!v9)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_4(&v27);
LABEL_18:
    v25 = v27;

    goto LABEL_13;
  }

  if (!v10)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_3(&v27);
    goto LABEL_18;
  }

  v12 = [v10 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_BasePolynomial];
  v13 = [v11 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_DynamicPolynomial];
  v14 = [v7 objectForKeyedSubscript:kFigCaptureStreamMetadata_DynamicDistortionFactor];
  if (([v8 isEqualToString:kFigCapturePortType_BackFacingCamera] & 1) == 0)
  {
    [v8 isEqualToString:kFigCapturePortType_BackFacingTelephotoCamera];
  }

  if ([v12 length] != &stru_20.vmsize)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_1();
    goto LABEL_21;
  }

  if ([v13 length] != &stru_20.vmsize)
  {
    GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_2();
    goto LABEL_21;
  }

  v15 = [v12 bytes];
  v16 = [v13 bytes];
  [v14 floatValue];
  v18 = (v16 + 32);
  v19 = (v15 + 32);
  v20 = (a3 + 32);
  v21 = 8;
  do
  {
    *(v20 - 8) = *(v19 - 8) + (v17 * *(v18 - 8));
    v22 = *v18++;
    v23 = v22;
    v24 = *v19++;
    *v20++ = v24 + (v17 * v23);
    --v21;
  }

  while (v21);

  v25 = 0;
LABEL_13:

  return v25;
}

uint64_t GVSCheckDistortedTransformFits(float *a1, double *a2, int *a3, uint64_t a4, char a5, BOOL *a6)
{
  if (a1 && a2 && a3 && a4 && a6)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v67 = _Q0;
    if ((*(a4 + 208) & 1) == 0)
    {
      v15 = 0;
      v16 = *a3;
      v17 = a3[1];
      v18 = (v16 + a3[2]) + -1.0;
      v19 = (v17 + a3[3]) + -1.0;
      v20 = (v18 - v16) / 6.0;
      v21 = (v19 - v17) / 6.0;
      v22 = (a4 + 32);
      do
      {
        *&v23 = v16 + (v20 * v15);
        *&v24 = v17;
        *(&v24 + 1) = v17 + (v21 * v15);
        *(&v23 + 1) = v18;
        *(&v23 + 2) = v16;
        *(&v23 + 3) = v18 + (-v20 * v15);
        *(&v24 + 2) = v19 + (-v21 * v15);
        *(&v24 + 3) = v19;
        *(v22 - 1) = v23;
        *v22 = v24;
        ++v15;
        v22 += 2;
      }

      while (v15 != 6);
      if ([*(a4 + 8) isValid])
      {
        v25 = (a4 + 32);
        v26 = 6;
        do
        {
          [*(a4 + 8) computeScalingAtPointsQuad:{*v25[-1].i64, *v25->i64}];
          v70 = v27;
          v72 = vsubq_f32(v67, v27);
          [*(a4 + 8) distortionCenter];
          v68 = vmulq_n_f32(v72, v28);
          [*(a4 + 8) distortionCenter];
          v30 = vmlaq_f32(vmulq_lane_f32(v72, v29, 1), v70, *v25);
          v25[-1] = vmlaq_f32(v68, v70, v25[-1]);
          *v25 = v30;
          v25 += 2;
          --v26;
        }

        while (v26);
      }

      *(a4 + 208) = 1;
    }

    v31.i64[0] = 0x3F0000003F000000;
    v31.i64[1] = 0x3F0000003F000000;
    v32 = vaddq_f32(*(a4 + 224), v31);
    v33 = a2[1];
    v34 = *a2;
    v35 = v32.f32[3] + v34;
    v31.f32[0] = *a2 + a2[2];
    v36 = (v31.f32[0] + -1.0) - v32.f32[1];
    v31.f32[0] = v33;
    v37 = v32.f32[0] + v31.f32[0];
    v31.f32[0] = v33 + a2[3];
    v38 = (v31.f32[0] + -1.0) - v32.f32[2];
    [*a4 distortionCenter];
    v66 = v39;
    [*a4 distortionCenter];
    v65 = v40;
    v41 = 0;
    v42 = (a4 + 32);
    v69 = vdupq_n_s32(0x322BCC77u);
    while (1)
    {
      v43 = v42[-1];
      v44 = a1 + 8;
      v45 = vld1q_dup_f32(v44);
      v46 = vmlaq_n_f32(vmlaq_n_f32(v45, *v42, a1[7]), v43, a1[6]);
      v47.i64[0] = 0x8000000080000000;
      v47.i64[1] = 0x8000000080000000;
      v48 = vorrq_s8(vandq_s8(v46, v47), vabsq_f32(vmaxnmq_f32(vabsq_f32(v46), v69)));
      v49 = vrecpeq_f32(v48);
      v50 = vmulq_f32(v49, vrecpsq_f32(v48, v49));
      v51 = vmulq_f32(v50, vrecpsq_f32(v48, v50));
      v52 = a1 + 2;
      v53 = vld1q_dup_f32(v52);
      v54 = vmulq_f32(v51, vmlaq_n_f32(vmlaq_n_f32(v53, *v42, a1[1]), v43, *a1));
      v55 = a1 + 5;
      v56 = vld1q_dup_f32(v55);
      v71 = vmulq_f32(v51, vmlaq_n_f32(vmlaq_n_f32(v56, *v42, a1[4]), v43, a1[3]));
      v73 = v54;
      if ([*a4 isValid])
      {
        [*a4 computeScalingAtPointsQuad:{*v73.i64, *v71.i64}];
        v58 = vsubq_f32(v67, v57);
        v59 = vmlaq_f32(vmulq_n_f32(v58, v66), v57, v73);
        v60 = vmlaq_f32(vmulq_lane_f32(v58, *&v65, 1), v57, v71);
      }

      else
      {
        v60 = v71;
        v59 = v73;
      }

      v61 = vmaxvq_f32(v59);
      if (v35 >= vminvq_f32(v59) || v61 >= v36)
      {
        break;
      }

      v63 = v37 < vminvq_f32(v60);
      if (vmaxvq_f32(v60) >= v38)
      {
        v63 = 0;
      }

      *a6 = v63;
      result = 0;
      if (v63 && v41 <= 4)
      {
        ++v41;
        v42 += 2;
        if ((a5 & 1) == 0)
        {
          continue;
        }
      }

      return result;
    }

    result = 0;
    *a6 = 0;
  }

  else
  {
    GVSCheckDistortedTransformFits_cold_1(&v74);
    return v74;
  }

  return result;
}

uint64_t GVSEstimatePaddingForDistortedTransformFits(void *a1, double *a2, float32x4_t *a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5 || !a2 || !a3)
  {
    GVSEstimatePaddingForDistortedTransformFits_cold_2(&v46);
LABEL_13:
    v33 = v46;
    goto LABEL_10;
  }

  if (([v5 isValid] & 1) == 0)
  {
    GVSEstimatePaddingForDistortedTransformFits_cold_1(&v46);
    goto LABEL_13;
  }

  v7 = 0;
  v8 = a2[2];
  v9 = a2[3];
  *&v10 = (v8 + -1.0) / 36.0;
  v11 = (v9 + -1.0) / 36.0;
  v12 = a2[1];
  *&v13 = *a2;
  *&v12 = v12;
  *&v8 = v8 + *&v13 + -1.0;
  v14 = v9 + *&v12 + -1.0;
  *&v14 = v14;
  v15.i64[0] = __PAIR64__(LODWORD(v8), v13);
  v15.i64[1] = __PAIR64__(v13, LODWORD(v8));
  v38 = v15;
  *v15.f32 = vdup_lane_s32(*&v12, 0);
  *&v8 = v11;
  *&v15.u32[2] = vdup_lane_s32(*&v14, 0);
  v37 = v15;
  v15.i32[0] = 0;
  v15.i32[2] = 0;
  v16.i32[3] = 0;
  v16.i64[0] = v10;
  v16.f32[2] = -*&v10;
  v15.i32[1] = LODWORD(v8);
  v15.f32[3] = -*&v8;
  v35 = v16;
  v36 = v15;
  v17 = &v44;
  do
  {
    v39 = vaddq_f32(v38, vmulq_n_f32(v35, v7));
    v40 = vaddq_f32(v37, vmulq_n_f32(v36, v7));
    [v6 computeScalingAtPointsQuad:{*&v35, *&v36, *&v37, *&v38}];
    v41 = v18;
    v42[v7] = v18;
    [v6 distortionCenter];
    v17[-1] = vmulq_f32(v41, vsubq_f32(v39, vdupq_lane_s32(v19, 0)));
    [v6 distortionCenter];
    *v17 = vmulq_f32(v41, vsubq_f32(v40, vdupq_lane_s32(v20, 1)));
    v17 += 2;
    ++v7;
  }

  while (v7 != 36);
  v21 = 0;
  v42[36] = vextq_s8(v42[0], v42[0], 4uLL);
  v45[65] = vextq_s8(v43, v43, 4uLL);
  v45[66] = vextq_s8(v44, v44, 4uLL);
  v22 = v45;
  v23 = 0uLL;
  do
  {
    v24 = v22[-7];
    v25 = v22[-6];
    v26 = vsubq_f32(v22[5], v24);
    v27 = vsubq_f32(v22[6], v25);
    v28 = vmlaq_f32(vmulq_f32(v27, v27), v26, v26);
    v29 = vmlaq_f32(vmulq_f32(vsubq_f32(v22[-1], v24), vnegq_f32(v27)), vsubq_f32(*v22, v25), v26);
    v30 = vrsqrteq_f32(v28);
    v31 = v42[v21 + 3];
    v32 = vrecpeq_f32(v31);
    v23 = vmaxnmq_f32(v23, vmulq_f32(vmulq_f32(v29, vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)))), vmulq_f32(v32, vrecpsq_f32(v31, v32))));
    ++v21;
    v22 += 2;
  }

  while (v21 != 31);
  v33 = 0;
  *a3 = v23;
LABEL_10:

  return v33;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return fig_log_get_emitter();
}

uint64_t OUTLINED_FUNCTION_2()
{

  return fig_log_get_emitter();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return fig_log_get_emitter();
}

float64_t GVSComputeGaussianAverageQuaternion(uint64_t a1, int a2, int a3, int a4, unint64_t a5, unint64_t a6, float a7, float a8)
{
  v8 = a6;
  v9 = a5;
  v11 = *(a1 + 8);
  v12 = *(*a1 + 8 * a2);
  v13 = *(a1 + 68);
  v14 = *(a1 + 64) + a3;
  if (v14 <= v13)
  {
    v14 = *(a1 + 68);
  }

  v15 = *(a1 + 76);
  v16 = *(a1 + 72);
  if (v14 >= v16)
  {
    v14 = *(a1 + 72);
  }

  v17 = v14;
  v18 = v12 + 32 * v14;
  v19 = *(v18 + 16);
  v78 = *v18;
  v79 = v19;
  v20.i64[0] = *(*(a1 + 16) + 8 * v14);
  v20.i64[1] = *(v11 + 8 * v14);
  v75 = v20;
  v70 = (a5 | a6) != 0;
  if (v15 <= 1)
  {
    GVSComputeGaussianAverageQuaternion_cold_2();
  }

  else
  {
    v21 = a7 * 3.0;
    if ((a7 * 3.0) <= 0.01)
    {
      GVSComputeGaussianAverageQuaternion_cold_1();
    }

    else
    {
      v71 = v12;
      v24 = *(a1 + 84);
      if (v24 >= v14)
      {
        v25 = v14;
      }

      else
      {
        v25 = *(a1 + 84);
      }

      if (v16 - v14 >= v24)
      {
        v26 = *(a1 + 84);
      }

      else
      {
        v26 = v16 - v14;
      }

      v27 = *(a1 + 40);
      v76 = *(v27 + 8 * v14);
      v28 = 0.0;
      v29 = 0.0;
      if (v24 > v14 && v25 + 1 <= v24)
      {
        v30 = *(*(a1 + 48) + 4 * v13);
        v31 = v76 - *(v27 + 8 * v13);
        v32 = v24 - v25;
        do
        {
          v31 = v30 + v31;
          if ((v31 * 30.0) > v21)
          {
            break;
          }

          v33 = v30 * expf(((v31 * 30.0) / a7) * (((v31 * 30.0) / a7) * -0.5));
          if (v33 >= 0.0000001)
          {
            v29 = v29 + v33;
          }

          --v32;
        }

        while (v32);
      }

      v34 = -v25;
      if (v16 - v17 < v24)
      {
        v35 = *(*(a1 + 48) + 4 * v16);
        v36 = *(v27 + 8 * v16) - v76;
        v37 = v24 - v26;
        v28 = 0.0;
        do
        {
          v36 = v35 + v36;
          if ((v36 * 30.0) > v21)
          {
            break;
          }

          v38 = v35 * expf(((v36 * 30.0) / a7) * (((v36 * 30.0) / a7) * -0.5));
          if (v38 >= 0.0000001)
          {
            v28 = v28 + v38;
          }

          --v37;
        }

        while (v37);
      }

      v39 = *(a1 + 56) + 80 * v17;
      if (a7 == a8)
      {
        v40 = a4;
      }

      else
      {
        v40 = 0;
      }

      v41 = 0.0;
      if (v40 == 1)
      {
        v42 = *v39;
        if (*v39 > 0.0)
        {
          v34 = *(v39 + 64) + 1;
          v43 = *(v39 + 24);
          v78 = *(v39 + 8);
          v79 = v43;
          v75 = *(v39 + 48);
          v29 = 0.0;
          v41 = v42;
        }
      }

      v77 = 0;
      if (v34 > v26)
      {
        v9 = a5;
        v8 = a6;
LABEL_58:
        FigMotionNormalizeQuaternion(&v78);
        goto LABEL_59;
      }

      v44 = 0;
      v69 = a8 * 0.5;
      v68 = v26 - 2;
      v74 = v26 - v34;
      v45 = 4 * v17;
      v46 = v26 - v34 + 1;
      v47 = v26 - 2 - v34;
      v48 = 8 * v17 + 8 * v34;
      v49 = v17 + v34;
      v50 = v45 + 4 * v34;
      v51 = v71 + 32 * v49;
      v52 = 30.0 / a7;
      do
      {
        v53 = *(*(a1 + 40) + v48 + 8 * v44) - v76;
        if (fabsf(v52 * v53) < 3.0)
        {
          v54 = expf((v52 * v53) * ((v52 * v53) * -0.5));
          if (*(*(a1 + 24) + v49 + v44) == 1)
          {
            v54 = v54 * ((expf(((v53 * 30.0) / v69) * (((v53 * 30.0) / v69) * -0.5)) * 7.0) + 1.0);
          }

          v55 = v54 * *(*(a1 + 48) + v50 + 4 * v44);
          if (!v44)
          {
            v55 = v29 + v55;
          }

          if (v74 == v44)
          {
            v55 = v28 + v55;
          }

          if (*(*(a1 + 32) + v49 + v44) == 1 && v55 >= 0.0000001)
          {
            v56 = v41 + v55;
            v57 = v41 / (v41 + v55);
            v72 = v57;
            if (v57 <= 0.0)
            {
              v61 = *(v51 + 16);
              v78 = *v51;
              v79 = v61;
            }

            else
            {
              v78.f64[0] = GVSInterpolateQuaternionsLERP(v51, &v78, 0, &v77, v57);
              v78.f64[1] = v58;
              *&v79 = v59;
              *(&v79 + 1) = v60;
            }

            if (v70)
            {
              v62.i64[0] = *(*(a1 + 16) + v48 + 8 * v44);
              v62.i64[1] = *(*(a1 + 8) + v48 + 8 * v44);
              v75 = vmlaq_n_f32(vmulq_n_f32(v75, v72), v62, 1.0 - v72);
            }

            v41 = v56;
          }
        }

        if (v47 == v44)
        {
          v63 = v40;
        }

        else
        {
          v63 = 0;
        }

        if (v63 == 1 && *(a1 + 80) == *(a1 + 76))
        {
          v64 = v78;
          *(v39 + 24) = v79;
          *(v39 + 8) = v64;
          *(v39 + 48) = v75;
          *v39 = v41;
          *(v39 + 64) = v68;
        }

        ++v44;
        v51 += 32;
      }

      while (v46 != v44);
      v9 = a5;
      v8 = a6;
      if (!v77)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_59:
  if (v9)
  {
    *v9 = vextq_s8(v75, v75, 8uLL).u64[0];
  }

  if (v8)
  {
    *v8 = v75.i64[0];
  }

  return v78.f64[0];
}

double GVSComputeSmoothedHorizonQuaternion(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 60);
  if (*(a1 + 56) + a2 <= v3)
  {
    v4 = *(a1 + 60);
  }

  else
  {
    v4 = *(a1 + 56) + a2;
  }

  v5 = *(a1 + 64);
  if (v4 >= v5)
  {
    v4 = *(a1 + 64);
  }

  v6 = *(*a1 + 16 * v4);
  if (*(a1 + 68) <= 1)
  {
    v41 = *(*a1 + 16 * v4);
    GVSComputeSmoothedHorizonQuaternion_cold_2(a3);
LABEL_28:
    v6 = v41;
    goto LABEL_25;
  }

  if (a3.n128_f32[0] <= 0.001)
  {
    v41 = *(*a1 + 16 * v4);
    GVSComputeSmoothedHorizonQuaternion_cold_1();
    goto LABEL_28;
  }

  v8 = v4;
  v9 = *(a1 + 40);
  v10 = *(v9 + 8 * v4);
  v11 = *(a1 + 72);
  v12 = v4 - v11;
  v13 = v11 + v8;
  v40 = 0.0;
  v14 = 0.0;
  v15 = v12;
  if (v12 < v3)
  {
    v16 = v10 - *(v9 + 8 * v3);
    v17 = fminf(fmaxf((v16 + (*(*(a1 + 48) + 4 * v3) * 0.5)) / a3.n128_f32[0], 0.0), 1.0);
    v14 = (0.6 - ((v17 - ((v17 * v17) * (v17 * v17))) + ((v17 * ((v17 * v17) * (v17 * v17))) * 0.6))) * a3.n128_f32[0];
    v15 = *(a1 + 60);
  }

  if (v13 > v5)
  {
    v18 = *(v9 + 8 * v5) - v10;
    v19 = fminf(fmaxf((v18 + (*(*(a1 + 48) + 4 * v5) * 0.5)) / a3.n128_f32[0], 0.0), 1.0);
    v40 = (0.6 - ((v19 - ((v19 * v19) * (v19 * v19))) + ((v19 * ((v19 * v19) * (v19 * v19))) * 0.6))) * a3.n128_f32[0];
    v13 = *(a1 + 64);
  }

  if (v15 <= v13)
  {
    v20 = 0;
    if (v3 <= v12)
    {
      v3 = v12;
    }

    v21 = v3;
    v22 = v13 - v3;
    v23 = 8 * v3;
    v24 = 4 * v3;
    v25 = 16 * v3;
    v26 = v13 - v3 + 1;
    v27 = 0.0;
    v28 = 1.0 / a3.n128_f32[0];
    do
    {
      v29 = *(*(a1 + 40) + v23 + 8 * v20) - v10;
      v30 = v28 * v29;
      v31 = fabsf(v30);
      if (v31 < 1.0)
      {
        v32 = ((((v30 * v30) * v31) * -4.0) + 1.0) + (((v30 * v30) * (v30 * v30)) * 3.0);
        if (v32 >= 0.0000001 && *(*(a1 + 32) + v21 + v20) == 1)
        {
          v33 = v32 * *(*(a1 + 48) + v24 + 4 * v20);
          if (!v20)
          {
            v33 = v14 + v33;
          }

          if (v22 == v20)
          {
            v33 = v40 + v33;
          }

          v34 = v27 + v33;
          *v35.i64 = GVSInterpolateQuatfNLERP(*(*a1 + v25 + 16 * v20), v6, v27 / (v27 + v33));
          v6 = v35;
          v27 = v34;
        }
      }

      ++v20;
    }

    while (v26 != v20);
  }

LABEL_25:
  v36 = vmulq_f32(v6, v6);
  *v36.i8 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
  v36.i32[0] = vadd_f32(*v36.i8, vdup_lane_s32(*v36.i8, 1)).u32[0];
  v37 = vrsqrte_f32(v36.u32[0]);
  v38 = vmul_f32(v37, vrsqrts_f32(v36.u32[0], vmul_f32(v37, v37)));
  *&result = vmulq_n_f32(v6, vmul_f32(v38, vrsqrts_f32(v36.u32[0], vmul_f32(v38, v38))).f32[0]).u64[0];
  return result;
}

void GVSComputeSmoothRamp(float a1, float a2, float a3)
{
  if (a3 < a2)
  {
    GVSComputeSmoothRamp_cold_1();
  }

  else if (a3 > a2)
  {
    powf(fminf(fmaxf(a1, 0.0), a3) / a3, a3 / (a3 - a2));
  }
}

float GVSComputeSmoothedDigitalZoomFactor(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 28);
  v4 = *(a1 + 24) + a2;
  if (v4 <= v3)
  {
    v4 = *(a1 + 28);
  }

  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = v4;
  }

  v7 = (*a1 + 20 * v6);
  v8 = v7[1];
  if (*(a1 + 36) <= 1)
  {
    GVSComputeSmoothedDigitalZoomFactor_cold_2(a3);
  }

  else if ((a3.n128_f32[0] * 3.0) <= 0.01)
  {
    GVSComputeSmoothedDigitalZoomFactor_cold_1();
  }

  else
  {
    v27 = v7[1];
    v9 = *v7;
    v10 = *(a1 + 40);
    if (v6 - v10 > v3)
    {
      v3 = v6 - v10;
    }

    v11 = v10 + v6;
    if (v11 < v5)
    {
      v5 = v11;
    }

    v12 = 0.0;
    v13 = v9;
    if (v3 <= v5)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 8 * v6);
      v16 = (v14 + 8 * v3);
      v17 = (*a1 + 20 * v3);
      v18 = v5 - v3 + 1;
      v19 = 30.0 / a3.n128_f32[0];
      v13 = v9;
      do
      {
        v20 = *v16 - v15;
        v21 = v19 * v20;
        if (fabsf(v21) < 3.0)
        {
          v22 = expf(v21 * (v21 * -0.5));
          if (v22 >= 0.0000001)
          {
            v23 = v12 <= 0.0;
            v24 = -0.0;
            if (v12 > 0.0)
            {
              v24 = v12;
            }

            v12 = v24 + v22;
            if (v23)
            {
              v13 = v22 * *v17;
            }

            else
            {
              v13 = v13 + (*v17 * v22);
            }
          }
        }

        ++v16;
        v17 += 5;
        --v18;
      }

      while (v18);
    }

    v25 = v13 / v12;
    if (v12 < 0.0000001)
    {
      v25 = v13;
    }

    return v27 * expf(v25 - v9);
  }

  return v8;
}

float GVSComputeDilatedTotalZoomFactor(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 28);
  if (*(a1 + 24) + a3 <= v3)
  {
    v4 = *(a1 + 28);
  }

  else
  {
    v4 = *(a1 + 24) + a3;
  }

  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = v4;
  }

  v7 = *(*a1 + 20 * v6 + 12);
  if (*(a1 + 36) <= 1)
  {
    GVSComputeDilatedTotalZoomFactor_cold_2();
  }

  else if (a2 < 1)
  {
    GVSComputeDilatedTotalZoomFactor_cold_1();
  }

  else
  {
    v8 = v6 - a2;
    if (v6 - a2 <= v3)
    {
      v8 = *(a1 + 28);
    }

    if (v6 + a2 < v5)
    {
      v5 = v6 + a2;
    }

    if (v8 <= v5)
    {
      v9 = (*a1 + 20 * v8 + 12);
      v10 = v5 - v8 + 1;
      do
      {
        v11 = *v9;
        v9 += 5;
        v7 = fmaxf(v7, v11);
        --v10;
      }

      while (v10);
    }
  }

  return v7;
}

float GVSComputeSmoothedDilatedDigitalZoomFactor(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 28);
  v4 = *(a1 + 32);
  v6 = *(a1 + 24) + a3;
  if (v6 <= v5)
  {
    v6 = *(a1 + 28);
  }

  if (v6 >= v4)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = *a1 + 20 * v7;
  v10 = *(v9 + 4);
  v11 = *(v9 + 16);
  if (a2 < 1)
  {
    GVSComputeSmoothedDilatedDigitalZoomFactor_cold_2();
  }

  else if (*(a1 + 36) <= 1)
  {
    GVSComputeSmoothedDilatedDigitalZoomFactor_cold_1();
  }

  else
  {
    if ((v8 - a2) > v5)
    {
      v5 = v8 - a2;
    }

    if ((v8 + a2) < v4)
    {
      v4 = v8 + a2;
    }

    v12 = 0.0;
    if (v5 <= v4)
    {
      v13 = 1.0 / (a2 / 3.0);
      v14 = v5 - v8;
      v15 = (*a1 + 20 * v5 + 16);
      v16 = v4 - v5 + 1;
      do
      {
        v17 = expf((v13 * v14) * ((v13 * v14) * -0.5));
        if (v17 >= 0.0000001)
        {
          v18 = v12 <= 0.0;
          if (v12 <= 0.0)
          {
            v19 = -0.0;
          }

          else
          {
            v19 = v12;
          }

          v12 = v19 + v17;
          if (v18)
          {
            v11 = v17 * *v15;
          }

          else
          {
            v11 = v11 + (*v15 * v17);
          }
        }

        ++v14;
        v15 += 5;
        --v16;
      }

      while (v16);
    }

    if (v12 >= 0.0000001)
    {
      v11 = v11 / v12;
    }
  }

  return v10 * expf(v11 - *(*a1 + 20 * v8));
}

void GVSComputeSmoothedFaceQuaternion(uint64_t a1, int a2, float a3)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 32) + a2;
  if (v5 <= v4)
  {
    v5 = *(a1 + 36);
  }

  v6 = *(a1 + 40);
  if (v5 >= v6)
  {
    v5 = *(a1 + 40);
  }

  v44 = *(*a1 + 48 * v5);
  if (*(a1 + 44) <= 1)
  {
    GVSComputeSmoothedFaceQuaternion_cold_2();
  }

  else
  {
    v7 = a3 * 3.0;
    if ((a3 * 3.0) <= 0.01)
    {
      GVSComputeSmoothedFaceQuaternion_cold_1();
    }

    else
    {
      v9 = v5;
      v10 = *(a1 + 48);
      if (v10 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = *(a1 + 48);
      }

      if (v6 - v5 >= v10)
      {
        v12 = *(a1 + 48);
      }

      else
      {
        v12 = v6 - v5;
      }

      v13 = *(a1 + 16);
      v42 = *(v13 + 8 * v5);
      v14 = 0.0;
      v15 = 0.0;
      if (v10 > v5 && v11 + 1 <= v10)
      {
        v16 = *(*(a1 + 24) + 4 * v4);
        v17 = v42 - *(v13 + 8 * v4);
        v18 = v10 - v11;
        do
        {
          v17 = v16 + v17;
          if ((v17 * 30.0) > v7)
          {
            break;
          }

          v19 = v16 * expf(((v17 * 30.0) / a3) * (((v17 * 30.0) / a3) * -0.5));
          if (v19 >= 0.0000001)
          {
            v15 = v15 + v19;
          }

          --v18;
        }

        while (v18);
      }

      v20 = -v11;
      if (v6 - v9 < v10)
      {
        v21 = *(*(a1 + 24) + 4 * v6);
        v22 = *(v13 + 8 * v6) - v42;
        v23 = v10 - v12;
        v14 = 0.0;
        do
        {
          v22 = v21 + v22;
          if ((v22 * 30.0) > v7)
          {
            break;
          }

          v24 = v21 * expf(((v22 * 30.0) / a3) * (((v22 * 30.0) / a3) * -0.5));
          if (v24 >= 0.0000001)
          {
            v14 = v14 + v24;
          }

          --v23;
        }

        while (v23);
      }

      v45 = 0;
      if (v12 >= v20)
      {
        v25 = 0;
        v26 = v12 - v20;
        v27 = v9 + v20;
        v28 = v11 + v12;
        v29 = 48 * v27;
        v30 = v28 + 1;
        v43 = v44;
        v31 = 30.0 / a3;
        v32 = 0.0;
        do
        {
          v33 = *(*(a1 + 16) + 8 * v27) - v42;
          v34 = v31 * v33;
          if (fabsf(v34) >= 3.0)
          {
            goto LABEL_34;
          }

          v35 = expf(v34 * (v34 * -0.5)) * *(*(a1 + 24) + 4 * v27);
          if (!v25)
          {
            v35 = v15 + v35;
          }

          v36 = v14 + v35;
          if (v26)
          {
            v36 = v35;
          }

          v37 = *(*a1 + v29);
          v38 = vmulq_f32(v44, v37);
          v39 = v36 * fmaxf(vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL))), 0.0);
          if (v39 >= 0.0000001)
          {
            v40 = v32 + v39;
            v41 = v32 / (v32 + v39);
            if (v41 > 0.0)
            {
              *v37.i64 = GVSInterpolateQuatfLERP(&v45, v37, v43, v41);
            }

            v43 = v37;
          }

          else
          {
LABEL_34:
            v40 = v32;
          }

          --v26;
          v25 -= 8;
          ++v27;
          v29 += 48;
          v32 = v40;
          --v30;
        }

        while (v30);
      }
    }
  }
}

uint64_t sbp_gvs_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v1 = DerivedStorage;
    *(DerivedStorage + 24) = 1;
    *DerivedStorage = 0;
    *(DerivedStorage + 8) = 0;
    v2 = *(DerivedStorage + 88);
    if (v2)
    {
      AffineTransformFinish(v2);
      AffineTransformContextRelease(*(v1 + 88));
      *(v1 + 88) = 0;
      if (*(v1 + 228))
      {
        v3 = 0;
        v4 = (v1 + 288);
        do
        {
          v5 = *(v4 - 4);
          if (v5)
          {
            CFRelease(v5);
            *(v4 - 4) = 0;
          }

          if (*v4)
          {
            CFRelease(*v4);
            *v4 = 0;
          }

          ++v3;
          ++v4;
        }

        while (v3 < *(v1 + 228));
      }
    }

    v6 = *(v1 + 112);
    if (v6)
    {
      [v6 finishProcessing];
      [*(v1 + 112) purgeResources];
      v7 = *(v1 + 112);
      *(v1 + 112) = 0;
    }

    v8 = *(v1 + 29728);
    if (v8)
    {
      *(v1 + 29728) = 0;
      free(v8);
    }

    v9 = *(v1 + 96);
    *(v1 + 96) = 0;

    v10 = *(v1 + 400);
    *(v1 + 400) = 0;

    v11 = *(v1 + 27128);
    *(v1 + 27128) = 0;

    v12 = *(v1 + 29568);
    *(v1 + 29568) = 0;

    v13 = *(v1 + 28896);
    *(v1 + 28896) = 0;

    v14 = *(v1 + 28904);
    *(v1 + 28904) = 0;

    v15 = *(v1 + 29136);
    *(v1 + 29136) = 0;

    v16 = *(v1 + 29744);
    *(v1 + 29744) = 0;

    v17 = *(v1 + 29752);
    *(v1 + 29752) = 0;

    [*(v1 + 48) removeAllObjects];
    [*(v1 + 64) removeAllObjects];
    [*(v1 + 56) removeAllObjects];
    v18 = *(v1 + 48);
    *(v1 + 48) = 0;

    v19 = *(v1 + 64);
    *(v1 + 64) = 0;

    v20 = *(v1 + 56);
    *(v1 + 56) = 0;

    v21 = *(v1 + 72);
    if (v21)
    {
      CFRelease(v21);
      v22 = *(v1 + 72);
      *(v1 + 72) = 0;
    }

    v23 = *(v1 + 416);
    if (v23)
    {
      CFRelease(v23);
      *(v1 + 416) = 0;
    }

    v24 = *(v1 + 28864);
    if (v24)
    {
      CFRelease(v24);
      *(v1 + 28864) = 0;
    }

    if ((*(v1 + 27148) - 1) <= 2)
    {
      _cinematic_freeRingBuffers(v1);
    }

    sbp_gvs_freeDerivedVectorsAndSphereLensMovements(v1);
    if (*(v1 + 29612))
    {
      sbp_ltm_deallocateLtcCorrectionTexture(v1);
      [*(v1 + 29648) purgeResources];
      v25 = *(v1 + 29648);
      *(v1 + 29648) = 0;
    }

    v26 = *(v1 + 30064);
    *(v1 + 30064) = 0;

    v27 = *(v1 + 30080);
    *(v1 + 30080) = 0;

    v28 = *(v1 + 30072);
    *(v1 + 30072) = 0;

    v29 = *(v1 + 30128);
    *(v1 + 30128) = 0;

    v30 = *(v1 + 30136);
    *(v1 + 30136) = 0;

    v31 = *(v1 + 30144);
    *(v1 + 30144) = 0;

    v32 = *(v1 + 30152);
    *(v1 + 30152) = 0;

    *(v1 + 30200) = 2143289344;
    __asm { FMOV            V0.2S, #1.0 }

    *(v1 + 30208) = _D0;
    *(v1 + 30216) = *&kCMTimeInvalid.value;
    *(v1 + 30232) = kCMTimeInvalid.epoch;
    v38 = *(v1 + 30288);
    *(v1 + 30288) = 0;
  }

  return 0;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization(const __CFDictionary *a1, CFTypeRef *a2)
{
  v321 = 0;
  valuePtr = 0;
  if (!a2)
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_69(&rect);
    goto LABEL_418;
  }

  v3 = a2;
  FigSampleBufferProcessorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    x_low = v5;
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_1();
    goto LABEL_120;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = v7;

  if (!*(DerivedStorage + 48))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_68(&rect);
    goto LABEL_418;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = v9;

  if (!*(DerivedStorage + 56))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_67(&rect);
    goto LABEL_418;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = v11;

  if (!*(DerivedStorage + 64))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_66(&rect);
    goto LABEL_418;
  }

  v13 = DerivedStorage + 27108;
  *(DerivedStorage + 44) = 0;
  *(DerivedStorage + 28) = 1028443341;
  *(DerivedStorage + 212) = 1;
  *(DerivedStorage + 28137) = 0;
  v311 = (DerivedStorage + 10680);
  *(DerivedStorage + 10684) = 0;
  v14 = objc_alloc_init(GVSGravityDataContext);
  v15 = *(DerivedStorage + 27128);
  *(DerivedStorage + 27128) = v14;

  v16 = *(DerivedStorage + 27128);
  if (!v16)
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_65();
    v111 = 0;
    goto LABEL_380;
  }

  LODWORD(v308) = DerivedStorage + 10684;
  [v16 setExtractGravityData:0];
  LODWORD(v17) = 10.0;
  [*(DerivedStorage + 27128) setGravityFilterTimescale:v17];
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 29156) = 1061675650;
  *(DerivedStorage + 84) = 0;
  *(DerivedStorage + 27416) = 0x3FEFAE147AE147AELL;
  *(DerivedStorage + 28132) = -1;
  *(DerivedStorage + 329) = 0;
  *(DerivedStorage + 392) = 256;
  *(DerivedStorage + 168) = 3;
  *(DerivedStorage + 200) = 1;
  *(DerivedStorage + 203) = 0;
  *(DerivedStorage + 176) = 6;
  *(DerivedStorage + 188) = 32;
  *(DerivedStorage + 196) = 1065353216;
  *(DerivedStorage + 28808) = -1082130432;
  *(DerivedStorage + 27148) = 0;
  v316 = (DerivedStorage + 27148);
  *(DerivedStorage + 29460) = 0xF3F000000;
  v314 = (DerivedStorage + 29536);
  *(DerivedStorage + 29536) = 0x4000000000000000;
  v18 = (DerivedStorage + 29544);
  objc_msgSend_defaultSettings(GVSMotionBlurFilter);
  origin = rect.origin;
  *(DerivedStorage + 29560) = rect.size.width;
  *(DerivedStorage + 29544) = origin;
  *(DerivedStorage + 29172) = 1053609165;
  *(DerivedStorage + 29184) = 0x3F36B3CC4EE655AALL;
  *(DerivedStorage + 216) = 0;
  *v13 = 1065252553;
  *(DerivedStorage + 29776) = 0;
  *(DerivedStorage + 28800) = 1;
  v313 = v3;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, kFigCaptureSampleBufferProcessorOption_SensorIDDictionary);
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 416) = Value;
    v21 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_DistortionCompensationEnabledPortTypes);
    v22 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_DistortionCorrectionEnabledPortTypes);
    v23 = v21;
    v24 = v22;
    v25 = objc_alloc_init(NSMutableDictionary);
    v307 = v23;
    if (v25)
    {
      v306 = a1;
      v332 = 0u;
      v333 = 0u;
      v330 = 0u;
      v331 = 0u;
      v26 = v23;
      v27 = [v26 countByEnumeratingWithState:&v330 objects:&rect count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v331;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v331 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [v25 setObject:&off_55C00 forKeyedSubscript:*(*(&v330 + 1) + 8 * i)];
          }

          v28 = [v26 countByEnumeratingWithState:&v330 objects:&rect count:16];
        }

        while (v28);
      }

      v305 = (DerivedStorage + 44);

      v328 = 0u;
      v329 = 0u;
      v326 = 0u;
      v327 = 0u;
      v303 = v24;
      v31 = v24;
      v32 = [v31 countByEnumeratingWithState:&v326 objects:&v322 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v327;
        while (2)
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v327 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v326 + 1) + 8 * j);
            v37 = [v25 allKeys];
            v38 = [v37 containsObject:v36];

            if (v38)
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_2(v31);
              v39 = 0;
              goto LABEL_28;
            }

            [v25 setObject:&off_55C18 forKeyedSubscript:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v326 objects:&v322 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v39 = v25;
LABEL_28:
      v3 = v313;
      v13 = DerivedStorage + 27108;
      a1 = v306;
      v24 = v303;
    }

    else
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_3();
      v39 = 0;
    }

    v40 = *(DerivedStorage + 29136);
    *(DerivedStorage + 29136) = v39;

    if (*(DerivedStorage + 29136))
    {
      FigCFDictionaryGetInt32IfPresent();
      v41 = [(__CFDictionary *)a1 objectForKeyedSubscript:kFigCaptureSampleBufferProcessorOption_MetalCommandQueue];
      FigCFDictionaryGetInt32IfPresent();
      v42 = [[FigMetalContext alloc] initWithoutLibraryUsingOptionalCommandQueue:v41];
      v43 = *(DerivedStorage + 96);
      *(DerivedStorage + 96) = v42;

      v44 = *(DerivedStorage + 96);
      if (v44)
      {
        if (*(DerivedStorage + 108))
        {
          v45 = FigDispatchQueueCreateWithPriority();
          if (!v45)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_4(&rect);
            goto LABEL_429;
          }

          v46 = v45;
          v47 = [*(DerivedStorage + 96) commandQueue];
          [v47 setSubmissionQueue:v46];
          [v47 setCompletionQueue:v46];

          v44 = *(DerivedStorage + 96);
        }

        [v44 setQueuePriority:*(DerivedStorage + 104)];
        FigCFDictionaryGetFloatIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetFloatIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        *(DerivedStorage + 328) = *(DerivedStorage + 224);
        FigCFDictionaryGetBooleanIfPresent();
        LOBYTE(v322) = 0;
        if (FigCFDictionaryGetBooleanIfPresent() && v322)
        {
          if (*v316 != 4)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_5(&v322, &rect);
            goto LABEL_429;
          }

          *(DerivedStorage + 200) = 0;
        }

        FigCFDictionaryGetBooleanIfPresent();
        v48 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_LivePhotoCleanOutputRect);
        if (v48)
        {
          size = CGRectZero.size;
          rect.origin = CGRectZero.origin;
          rect.size = size;
          if (!CGRectMakeWithDictionaryRepresentation(v48, &rect))
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_6(&rect, &v322);
            x_low = v322;
LABEL_430:

            goto LABEL_120;
          }

          v50 = rect.size;
          *(DerivedStorage + 29488) = rect.origin;
          *(DerivedStorage + 29504) = v50;
          *(v13 + 2372) = 1;
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        v51 = CFDictionaryGetValue(a1, kFigCaptureSampleBufferProcessorOption_CameraInfoByPortType);
        v52 = *(DerivedStorage + 28864);
        *(DerivedStorage + 28864) = v51;
        if (v51)
        {
          CFRetain(v51);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        FigCFDictionaryGetFloatIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        if (!*(v13 + 2996))
        {
          goto LABEL_51;
        }

        FigCFDictionaryGetInt64IfPresent();
        if (!FigCFDictionaryGetValue())
        {
          *(DerivedStorage + 30112) = xmmword_43580;
LABEL_51:
          *(v13 + 2998) = 0;
          if (!*(v13 + 2997) || *(v13 + 2996))
          {
            v308 = v41;
            *(v13 + 2999) = 257;
            *(v13 + 3060) = *(v13 + 2356) + 1;
            *(v13 + 3064) = xmmword_43590;
            *(DerivedStorage + 30216) = *&kCMTimeNegativeInfinity.value;
            *(DerivedStorage + 30232) = kCMTimeNegativeInfinity.epoch;
            *(DerivedStorage + 29608) = 0;
            v53 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_VideoSTFParameters);
            v54 = [v53 objectForKeyedSubscript:@"Version"];
            *(v13 + 2500) = [v54 intValue];

            if (*(v13 + 2500) >= 1)
            {
              v55 = [v53 objectForKeyedSubscript:@"LTMStabilizationMode"];
              if (v55)
              {
                v56 = [v53 objectForKeyedSubscript:@"LTMStabilizationMode"];
                *(v13 + 2504) = [v56 unsignedIntValue];
              }

              else
              {
                *(v13 + 2504) = 3;
              }

              v57 = [v53 objectForKeyedSubscript:@"TCRMode"];
              if (v57)
              {
                v58 = [v53 objectForKeyedSubscript:@"TCRMode"];
                *(v13 + 2508) = [v58 unsignedIntValue];
              }

              else
              {
                *(v13 + 2508) = 1;
              }

              v59 = [v53 objectForKeyedSubscript:@"TCRGlobalStrength"];
              if (v59)
              {
                v60 = [v53 objectForKeyedSubscript:@"TCRGlobalStrength"];
                [v60 floatValue];
                *(v13 + 2520) = v61;
              }

              else
              {
                *(v13 + 2520) = 1050253722;
              }

              v62 = [v53 objectForKeyedSubscript:@"TCRSkyMaskStrength"];
              if (v62)
              {
                v63 = [v53 objectForKeyedSubscript:@"TCRSkyMaskStrength"];
                [v63 floatValue];
                *(v13 + 2524) = v64;
              }

              else
              {
                *(v13 + 2524) = 1058642330;
              }

              v65 = [v53 objectForKeyedSubscript:@"TCRExtraMaskStrength"];
              if (v65)
              {
                v66 = [v53 objectForKeyedSubscript:@"TCRExtraMaskStrength"];
                [v66 floatValue];
                *(v13 + 2528) = v67;
              }

              else
              {
                *(v13 + 2528) = 1058642330;
              }

              v68 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime"];
              if (v68)
              {
                v69 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime"];
                [v69 floatValue];
                *(v13 + 2512) = v70;
              }

              else
              {
                *(v13 + 2512) = 1065353216;
              }

              v71 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime60Fps"];
              if (v71)
              {
                v72 = [v53 objectForKeyedSubscript:@"TemporalFilterWindowTime60Fps"];
                [v72 floatValue];
                *(v13 + 2516) = v73;
              }

              else
              {
                *(v13 + 2516) = 1061997773;
              }

              v74 = [v53 objectForKeyedSubscript:@"EnableCvisLtcCorrectionLutCompression"];
              *(v13 + 2532) = [v74 BOOLValue];

              v75 = [v53 objectForKeyedSubscript:@"EnableCvisLtmWithGlobalToneMapping"];
              if (v75)
              {
                v76 = [v53 objectForKeyedSubscript:@"EnableCvisLtmWithGlobalToneMapping"];
                *(v13 + 2564) = [v76 BOOLValue];
              }

              else
              {
                *(v13 + 2564) = 0;
              }
            }

            FigCFDictionaryGetBooleanIfPresent();
            *(v13 + 2696) = 0;
            *(v13 + 2708) = 1066192077;
            *(DerivedStorage + 29808) = 0x3F00000040200000;
            v77 = a1;
            v78 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationEnabled];
            *(v13 + 3140) = [v78 BOOLValue];

            if (*(v13 + 3140) == 1)
            {
              v79 = a1;
              v80 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaMultiplierForFaceFiltering];
              v81 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaMultiplierForBiasTracking];
              [v80 floatValue];
              *(v13 + 3144) = v82;
              [v81 floatValue];
              v84 = *(v13 + 3144);
              if (fminf(v84, v83) <= 0.0)
              {
                v83 = 1.0;
                v84 = 0.8;
              }

              v85 = fminf(fmaxf(v84, 0.0), 1.0);
              *(v13 + 3144) = v85;
              v86 = fminf(fmaxf(v83, 0.0), 1.0);
              *(v13 + 3148) = v86;
              if (v85 > v86)
              {
                *(v13 + 3144) = v86;
              }

              v87 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaModulationExponent];
              v88 = [(__CFDictionary *)v77 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_FaceStabilizationSigmaModulationSmoothTransitionMultiplier];
              [v87 floatValue];
              *(v13 + 3152) = v89;
              [v88 floatValue];
              v91 = *(v13 + 3152);
              if (v91 <= 0.0)
              {
                v90 = 0.4;
                v91 = 1.75;
              }

              *(v13 + 3152) = fmaxf(v91, 1.0);
              *(v13 + 3156) = fminf(fmaxf(v90, 0.0), 1.0);

              a1 = v79;
            }

            v92 = CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_InputPixelBufferAttributes);
            if (v92)
            {
              v93 = v92;
              if (FigCFDictionaryGetInt32IfPresent())
              {
                if (FigCFDictionaryGetInt32IfPresent())
                {
                  v94 = CFDictionaryGetValue(v93, kCVPixelBufferPixelFormatTypeKey);
                  if (v94)
                  {
                    v95 = v94;
                    v96 = a1;
                    v97 = CFGetTypeID(v94);
                    if (v97 == CFNumberGetTypeID())
                    {
                      ValueAtIndex = v95;
                    }

                    else
                    {
                      v99 = CFGetTypeID(v95);
                      if (v99 != CFArrayGetTypeID())
                      {
LABEL_118:
                        x_low = 4294954516;
LABEL_119:

LABEL_120:
                        v111 = 0;
                        goto LABEL_358;
                      }

                      if (CFArrayGetCount(v95) < 1)
                      {
                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_10(&rect);
                        goto LABEL_437;
                      }

                      ValueAtIndex = CFArrayGetValueAtIndex(v95, 0);
                    }

                    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
                    a1 = v96;
                    if (CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_OutputPixelBufferAttributes))
                    {
                      v100 = CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_GeneratedTransformsOutputDimensionsOverride);
                      if (v100 && *(v13 + 2612))
                      {
                        rect.origin = CGSizeZero;
                        CGSizeMakeWithDictionaryRepresentation(v100, &rect);
                        v101 = vmovn_s64(vcvtq_s64_f64(rect.origin));
                        *(DerivedStorage + 29688) = v101;
                        v102 = v101.i32[1];
LABEL_103:
                        v18 = (DerivedStorage + 29544);
                        if (v102 >= 1440)
                        {
                          *(DerivedStorage + 188) = 42;
                        }

                        if (*(v13 + 2580) >= 1921)
                        {
                          *(DerivedStorage + 188) = 64;
                        }

                        v103 = CFDictionaryGetValue(v77, kFigCaptureSampleBufferProcessorProperty_PixelBufferPoolAllocationSemaphore);
                        v104 = *(DerivedStorage + 72);
                        *(DerivedStorage + 72) = v103;

                        v105 = *(DerivedStorage + 72);
                        if (v105)
                        {
                          CFRetain(v105);
                        }

                        v106 = CFDictionaryGetValue(v77, kFigVideoStabilizationSampleBufferProcessorOption_TransformPlatform);
                        if (!v106)
                        {
                          goto LABEL_112;
                        }

                        v107 = v106;
                        LODWORD(rect.origin.x) = -1;
                        Type = CFNumberGetType(v106);
                        CFNumberGetValue(v107, Type, &rect);
                        if (LODWORD(rect.origin.x) <= 3)
                        {
                          *(DerivedStorage + 172) = LODWORD(rect.origin.x);
LABEL_112:

                          goto LABEL_113;
                        }

                        goto LABEL_118;
                      }

                      if (FigCFDictionaryGetInt32IfPresent())
                      {
                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          v102 = *(v13 + 2584);
                          goto LABEL_103;
                        }

                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_11(&rect);
                      }

                      else
                      {
                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_12(&rect);
                      }
                    }

                    else
                    {
                      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_13(&rect);
                    }
                  }

                  else
                  {
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_14(&rect);
                  }
                }

                else
                {
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_15(&rect);
                }
              }

              else
              {
                FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_16(&rect);
              }
            }

            else
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_17(&rect);
            }

LABEL_437:
            x_low = LODWORD(rect.origin.x);
            goto LABEL_119;
          }

          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_9(&rect);
          goto LABEL_429;
        }

        if (FigCFDictionaryGetCountOfKey())
        {
          if (FigCFDictionaryGetCountOfKey())
          {
            LODWORD(rect.origin.x) = 0;
            FigCFDictionaryGetInt32IfPresent();
            *(DerivedStorage + 30112) = SLODWORD(rect.origin.x);
            LODWORD(v322) = 0;
            FigCFDictionaryGetInt32IfPresent();
            *(DerivedStorage + 30120) = v322;
            goto LABEL_51;
          }

          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_7(&rect);
        }

        else
        {
          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_8(&rect);
        }
      }

      else
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_18(&rect);
      }

LABEL_429:
      x_low = LODWORD(rect.origin.x);
      goto LABEL_430;
    }

    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_19(&rect);
LABEL_418:
    v111 = 0;
    x_low = LODWORD(rect.origin.x);
    goto LABEL_358;
  }

LABEL_113:
  if ((*(DerivedStorage + 172) - 1) <= 2)
  {
    *(DerivedStorage + 120) = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_IspProcessingSession);
  }

  v109 = *v314;
  if (*v314)
  {
    if (v109 == 1)
    {
      *(v13 + 2432) = 1148846080;
      *(v13 + 2436) = 1;
      *(v13 + 2452) = 0;
      goto LABEL_127;
    }

    v112 = v109 <= 9;
  }

  else
  {
    v112 = *(DerivedStorage + 29460) <= 0.999;
  }

  v113 = !v112;
  LOBYTE(v18->x) = v113;
LABEL_127:
  *v311 = FigMotionHardwareAvailable() == 0;
  *(v13 + 32) = -1;
  *(v13 + 1172) = *(v13 + 1172);
  v114 = 0.0 * 0.0174532925;
  *(v13 + 2628) = v114;
  if (*(v13 + 2500) >= 1 && *(v13 + 2504))
  {
    *(v13 + 2533) = 1;
    *(v13 + 2536) = 0;
  }

  *(v13 + 1709) = *(v13 + 1709) == 1;
  *(v13 + 1710) = *(v13 + 1710) == 1;
  *(DerivedStorage + 203) = *(DerivedStorage + 203) == 1;
  *(v13 + 1772) = -1;
  if ([*(DerivedStorage + 29136) count])
  {
    v115 = 1;
  }

  else
  {
    v115 = *(v13 + 1772) > 0;
  }

  *(v13 + 2044) = v115;
  if (*v311)
  {
    *(DerivedStorage + 84) = 1;
  }

  *(v13 + 2684) = 0;
  v116 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorOption_VideoGreenGhostMitigationParameters);
  v111 = v116;
  if (v116)
  {
    v117 = v13;
    v119 = v321;
    v118 = HIDWORD(v321);
    v120 = [v116 objectForKeyedSubscript:@"BrightLightMitigationParameters"];
    v121 = [v111 objectForKeyedSubscript:@"LowLightMitigationParameters"];
    *(v117 + 2940) = 1;
    *(v117 + 2944) = 0;
    if (v120)
    {
      v286 = *(DerivedStorage + 28864);
      v287 = [*(DerivedStorage + 96) commandQueue];
      v288 = _loadAndConfigureVideoDeghosting(v286, v287, v120, v118 | (v119 << 32), (DerivedStorage + 30088));
      v289 = *(DerivedStorage + 30072);
      *(DerivedStorage + 30072) = v288;

      if (!*(DerivedStorage + 30072))
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_20();
      }
    }

    if (v121)
    {
      v290 = [v121 objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
      [v290 floatValue];
      *(DerivedStorage + 30052) = v291;

      v292 = *(DerivedStorage + 28864);
      v293 = [*(DerivedStorage + 96) commandQueue];
      v294 = _loadAndConfigureVideoDeghosting(v292, v293, v121, v118 | (v119 << 32), (DerivedStorage + 30092));
      v295 = *(DerivedStorage + 30080);
      *(DerivedStorage + 30080) = v294;

      if (!*(DerivedStorage + 30080))
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_21();
      }
    }

    LODWORD(rect.origin.x) = 0;
    LODWORD(v322) = 0;
    if (FigCFDictionaryGetIntIfPresent() && FigCFDictionaryGetIntIfPresent())
    {
      [*(DerivedStorage + 30080) setSensorBinningFactorHorizontal:LODWORD(rect.origin.x)];
      [*(DerivedStorage + 30080) setSensorBinningFactorVertical:v322];
      [*(DerivedStorage + 30072) setSensorBinningFactorHorizontal:LODWORD(rect.origin.x)];
      [*(DerivedStorage + 30072) setSensorBinningFactorVertical:v322];
    }

    v13 = DerivedStorage + 27108;
    *(DerivedStorage + 30056) = 2;

    v18 = (DerivedStorage + 29544);
  }

  else
  {
    *(v13 + 2940) = 0;
    v120 = *(DerivedStorage + 30064);
    *(DerivedStorage + 30064) = 0;
  }

  _resetFirstFrameParameters(DerivedStorage);
  v123 = v321;
  v122 = HIDWORD(v321);
  v124 = *v316;
  if (*v316 == 5)
  {
    if (*(DerivedStorage + 172))
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_22(&rect);
      goto LABEL_364;
    }

    if (*(v13 + 2612))
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_23(&rect);
      goto LABEL_364;
    }

    if (*(v13 + 1709))
    {
      *(v13 + 1709) = 0;
    }

    if (*(v13 + 1710))
    {
      *(v13 + 1710) = 0;
    }
  }

  if (v124 != 4 && *(v13 + 36))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_24(&rect);
    goto LABEL_364;
  }

  if ((*(v13 + 2372) || *(DerivedStorage + 224)) && *(DerivedStorage + 172))
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_25(&rect);
    goto LABEL_364;
  }

  if ((v124 - 1) >= 3 && *(v13 + 1020))
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v303, v305, v306, v307, v2, v308);
    fig_log_get_emitter();
    x_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v300, v302, v304);
    goto LABEL_158;
  }

  v337 = 0uLL;
  v336 = 0uLL;
  sbp_configureOverscanParameters(DerivedStorage, v122, v123, &v336, &v337);
  if (DWORD2(v337) + 2 * v337 != v122 || HIDWORD(v337) + 2 * DWORD1(v337) != v123)
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_26(&rect);
LABEL_364:
    x_low = LODWORD(rect.origin.x);
    goto LABEL_158;
  }

  *(DerivedStorage + 128) = v122;
  *(DerivedStorage + 132) = v123;
  *(DerivedStorage + 136) = v337;
  *(DerivedStorage + 152) = v336;
  v125 = *(DerivedStorage + 168);
  if ((v125 - 1) > 1)
  {
    if (v125 == 4)
    {
      *(DerivedStorage + 188) = 1;
    }
  }

  else
  {
    *(DerivedStorage + 176) = 1;
    *(v13 + 28) = 0;
  }

  v126 = *(DerivedStorage + 172);
  if (v126 != 3 && v126)
  {
    v127 = *(DerivedStorage + 176);
    if (v127 != 1)
    {
      v128 = *(DerivedStorage + 148);
      v129 = *(DerivedStorage + 188);
      goto LABEL_174;
    }

LABEL_172:
    v131 = v111;
    *(DerivedStorage + 180) = xmmword_435A0;
    v130 = 1;
    v132 = 1;
    goto LABEL_179;
  }

  v127 = *(DerivedStorage + 176);
  if (v127 == 1)
  {
    goto LABEL_172;
  }

  v128 = *(DerivedStorage + 148);
  v129 = *(DerivedStorage + 188);
  if (v127 >= 2)
  {
    v130 = (v128 - 2) / v129 + 2;
    goto LABEL_175;
  }

LABEL_174:
  v130 = (v128 + v129 - 1) / v129;
LABEL_175:
  v131 = v111;
  *(DerivedStorage + 180) = v130;
  if (*(v13 + 2044) == 1)
  {
    v132 = (*(DerivedStorage + 144) - 2) / v129 + 2;
  }

  else
  {
    v129 = 0;
    v132 = 1;
  }

  *(DerivedStorage + 192) = v129;
  *(DerivedStorage + 184) = v132;
  if (v127 > 6)
  {
    x_low = 4294954514;
    goto LABEL_366;
  }

LABEL_179:
  v133 = (v13 + 1172);
  *(DerivedStorage + 205) = *(DerivedStorage + 328);
  if (*(v13 + 2612) || *v316 == 5)
  {
    v134 = malloc_type_malloc(36 * v132 * v130 + 36, 0x10000408AA14F5FuLL);
    *(DerivedStorage + 29728) = v134;
    if (!v134)
    {
      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_61();
      x_low = 4294954510;
      goto LABEL_366;
    }

    if (*(v13 + 2612))
    {
      goto LABEL_199;
    }

    v126 = *(DerivedStorage + 172);
  }

  if ((v126 - 1) >= 3)
  {
    if (!v126)
    {
      v146 = [*(DerivedStorage + 96) commandQueue];
      *(DerivedStorage + 88) = AffineTransformContextAlloc(v146);

      v147 = *(DerivedStorage + 88);
      if (!v147)
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_31(&rect);
LABEL_416:
        x_low = LODWORD(rect.origin.x);
        goto LABEL_417;
      }

      AffineTransformSetOptions(v147, (*(DerivedStorage + 44) > 0));
      sbp_initializeGPUWithRenderMethod(DerivedStorage);
      if (*(DerivedStorage + 224))
      {
        LODWORD(v322) = 0;
        v335 = 0;
        AffineTransformGetBlurBuffersDimensions(*(DerivedStorage + 88), *(v13 + 2580), *(v13 + 2584), &v322, &v335);
        *(DerivedStorage + 228) = 4;
        v148 = (DerivedStorage + 288);
        v149 = 32;
        while (1)
        {
          PixelBuffer = CreatePixelBuffer();
          *(v148 - 4) = PixelBuffer;
          if (!PixelBuffer)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_30(&rect);
            goto LABEL_416;
          }

          if (*(v13 + 2997))
          {
            v151 = CreatePixelBuffer();
            *v148 = v151;
            if (!v151)
            {
              break;
            }
          }

          v152 = v149 - 31;
          ++v149;
          ++v148;
          if (v152 >= *(DerivedStorage + 228))
          {
            *(DerivedStorage + 232) = vmovn_s64(vcvtq_s64_f64(*(DerivedStorage + 29488)));
            *&v153 = *(DerivedStorage + 152);
            *(&v153 + 1) = *(DerivedStorage + 29688);
            *(DerivedStorage + 240) = v153;
            goto LABEL_197;
          }
        }

        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_29(&rect);
        goto LABEL_416;
      }

LABEL_197:
      AffineTransformConfigureBlurBorderPixels(*(DerivedStorage + 88), (DerivedStorage + 224));
      if (*v316 == 3)
      {
        goto LABEL_200;
      }

      AffineTransformSetOverscanFill(*(DerivedStorage + 88), *(DerivedStorage + 136), *(DerivedStorage + 140));
    }

LABEL_199:
    if (*v316 != 3)
    {
      v155 = *(DerivedStorage + 28864);
      if (v155 && (CFDictionaryGetValue(v155, kFigCapturePortType_BackFacingTelephotoCamera) || CFDictionaryGetValue(*(DerivedStorage + 28864), kFigCapturePortType_BackFacingSuperWideCamera)) && !FigMotionGetBravoDataFromDictionary(*(DerivedStorage + 28864), v13 + 1172))
      {
        if (!*v133)
        {
          *v133 = 6;
        }

        FigMotionAdjustBravoDataForReferenceCamera(v13 + 1172);
      }

      v156 = *v133;
      v154 = 1;
      if (*v133)
      {
        *(v13 + 1029) = 1;
        v154 = (v156 & 4) == 0;
      }

      goto LABEL_212;
    }

LABEL_200:
    if (*v133)
    {
      *v133 = 0;
    }

    v154 = 1;
LABEL_212:
    if (*(v13 + 1692) == 1 && (((*v316 - 4) > 0xFFFFFFFC) & ~v154) == 0)
    {
      *(v13 + 1692) = 0;
    }

    if (*(DerivedStorage + 392) != 1)
    {
LABEL_222:
      if (*(v13 + 2628) > 0.0)
      {
        [*(DerivedStorage + 27128) setExtractGravityData:1];
        if (!*(v13 + 1029))
        {
          *(v13 + 1029) = 1;
        }
      }

      v111 = v131;
      if (*(v13 + 2696) == 1)
      {
        *(v13 + 2704) = fminf(fmaxf(*(v13 + 2704), 0.0), 1.0);
        *(v13 + 2708) = fmaxf(*(v13 + 2708), 1.0);
        v160 = *(v13 + 2356);
        v161 = (v160 / *(v13 + 2352)) / 30.0;
        v162 = vcvtms_s32_f32(v161 * *(v13 + 2712));
        v163 = v162 & ~(v162 >> 31);
        if (v163 >= (v160 + ((v161 * -3.0) * *(v13 + 2700))))
        {
          v163 = (v160 + ((v161 * -3.0) * *(v13 + 2700)));
        }

        *(v13 + 2712) = v163;
      }

      v164 = *(v13 + 1772);
      v3 = v313;
      if (v164 < 1)
      {
        if (v164)
        {
          goto LABEL_237;
        }

        v165 = objc_alloc_init(NSDictionary);
      }

      else
      {
        v165 = [[NSMutableDictionary alloc] initWithDictionary:*(DerivedStorage + 29136)];
        v166 = [[NSNumber alloc] initWithUnsignedInt:v164 & 3];
        [v165 setObject:v166 forKeyedSubscript:kFigCapturePortType_BackFacingCamera];

        v167 = *(v13 + 1772);
        if ((v167 & 4) != 0)
        {
          v168 = [[NSNumber alloc] initWithUnsignedInt:v164 & 3];
          [v165 setObject:v168 forKeyedSubscript:kFigCapturePortType_BackFacingTelephotoCamera];

          v167 = *(v13 + 1772);
        }

        if ((v167 & 8) != 0)
        {
          v169 = [[NSNumber alloc] initWithUnsignedInt:v164 & 3];
          [v165 setObject:v169 forKeyedSubscript:kFigCapturePortType_BackFacingSuperWideCamera];
        }
      }

      v170 = *(DerivedStorage + 29136);
      *(DerivedStorage + 29136) = v165;

LABEL_237:
      v324 = 0u;
      v325 = 0u;
      v322 = 0u;
      v323 = 0u;
      v171 = *(DerivedStorage + 29136);
      v172 = [v171 countByEnumeratingWithState:&v322 objects:&rect count:16];
      if (v172)
      {
        v173 = v172;
        v174 = 0;
        v175 = *v323;
        do
        {
          for (k = 0; k != v173; k = k + 1)
          {
            if (*v323 != v175)
            {
              objc_enumerationMutation(v171);
            }

            v177 = [*(DerivedStorage + 29136) objectForKeyedSubscript:*(*(&v322 + 1) + 8 * k)];
            v174 |= [v177 unsignedIntValue];
          }

          v173 = [v171 countByEnumeratingWithState:&v322 objects:&rect count:16];
        }

        while (v173);

        if (v174)
        {
          v178 = objc_alloc_init(GVSDistortionModelEven14);
          v179 = *(DerivedStorage + 28896);
          *(DerivedStorage + 28896) = v178;
        }

        v13 = DerivedStorage + 27108;
        v18 = (DerivedStorage + 29544);
        if ((v174 & 2) == 0)
        {
          goto LABEL_249;
        }

        v180 = objc_alloc_init(GVSDistortionModelEven14);
        v171 = *(DerivedStorage + 28904);
        *(DerivedStorage + 28904) = v180;
      }

LABEL_249:
      if (!*(v13 + 1029) && (*(DerivedStorage + 28896) || *(DerivedStorage + 28904)))
      {
        *(v13 + 1029) = 1;
      }

      if (LOBYTE(v18->x) != 1)
      {
LABEL_257:
        v186 = *(DerivedStorage + 180);
        if (v186 < 1 || (v187 = *(DerivedStorage + 184), v187 < 1))
        {
          if (FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_35(&rect, &v322))
          {
LABEL_263:
            v190 = *(DerivedStorage + 152);
            if (v190 <= *(DerivedStorage + 156))
            {
              v190 = *(DerivedStorage + 156);
            }

            *(v13 + 2068) = vcvts_n_f32_s32(v190, 1uLL) / 10.0;
            v191 = *(v13 + 40);
            if ((v191 - 1) > 2)
            {
              goto LABEL_315;
            }

            if (v191 == 2)
            {
              v192 = 1;
            }

            else
            {
              v192 = (*(DerivedStorage + 29464) + 1);
            }

            *(v13 + 2288) = v192;
            if (*(v13 + 2504))
            {
              v193 = *(v13 + 2356) / *(v13 + 2352);
              v194 = 2516;
              if (v193 < 50.0)
              {
                v194 = 2512;
              }

              v195 = ((*(v13 + v194) * v193) * 0.5);
              v196 = *(v13 + 2500);
              v197 = [*(DerivedStorage + 96) commandQueue];
              v198 = [STFIBPProvider STFVideoProcessorForVersion:v196 ringBufferSize:v192 historySize:v195 cmdQueue:v197];
              v199 = *(DerivedStorage + 29648);
              *(DerivedStorage + 29648) = v198;

              x = *(DerivedStorage + 29648);
              if (x != 0.0)
              {
                goto LABEL_273;
              }

              if (!FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_36())
              {
                x = rect.origin.x;
LABEL_273:
                [*&x setLtmStabilizationMode:*(v13 + 2504)];
                [*(DerivedStorage + 29648) setTcrMode:*(v13 + 2508)];
                LODWORD(v201) = *(v13 + 2524);
                [*(DerivedStorage + 29648) setTcrSkyMaskStrength:v201];
                LODWORD(v202) = *(v13 + 2520);
                [*(DerivedStorage + 29648) setTcrGlobalStrength:v202];
                LODWORD(v203) = *(v13 + 2528);
                [*(DerivedStorage + 29648) setTcrExtraMaskStrength:v203];
                LODWORD(v204) = *(v13 + 2512);
                [*(DerivedStorage + 29648) setTemporalWindowTimeDefault:v204];
              }
            }

            v205 = *(v13 + 2288);
            if (!*(v13 + 2684))
            {
              *(v13 + 2684) = v205;
            }

            v206 = *(v13 + 2356);
            *(v13 + 2344) = v206 + 1;
            v207 = malloc_type_calloc(v205, 8uLL, 0x2004093837F09uLL);
            *(DerivedStorage + 29368) = v207;
            if (v207)
            {
              if (*(v13 + 2940) == 1)
              {
                v208 = malloc_type_calloc(*(v13 + 2288), 0x18uLL, 0x10A00403F27F3CFuLL);
                *(DerivedStorage + 29376) = v208;
                if (!v208)
                {
                  fig_log_get_emitter();
                  v298 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v299, v301, v303);
                  if (v298)
                  {
                    x_low = v298;
                    goto LABEL_372;
                  }

                  goto LABEL_308;
                }
              }

              *(DerivedStorage + 29408) = 0;
              *(DerivedStorage + 29416) = 0;
              if (*(v13 + 1029))
              {
                v209 = malloc_type_calloc(*(v13 + 2344), 8uLL, 0x2004093837F09uLL);
                *(DerivedStorage + 29408) = v209;
                if (!v209)
                {
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_44(&rect);
                  goto LABEL_371;
                }

                v210 = malloc_type_calloc(*(v13 + 2344), 8uLL, 0x2004093837F09uLL);
                *(DerivedStorage + 29416) = v210;
                if (!v210)
                {
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_43(&rect);
                  goto LABEL_371;
                }

                LODWORD(v211) = *(v13 + 2344);
                if (v211 >= 1)
                {
                  v212 = 0;
                  while (1)
                  {
                    *(*(DerivedStorage + 29408) + 8 * v212) = malloc_type_malloc(8 * *(DerivedStorage + 180), 0x100004000313F17uLL);
                    if (!*(*(DerivedStorage + 29408) + 8 * v212))
                    {
                      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_42(&rect);
                      goto LABEL_371;
                    }

                    *(*(DerivedStorage + 29416) + 8 * v212) = malloc_type_malloc(0x38uLL, 0x100004000313F17uLL);
                    if (!*(*(DerivedStorage + 29416) + 8 * v212))
                    {
                      break;
                    }

                    ++v212;
                    v211 = *(v13 + 2344);
                    if (v212 >= v211)
                    {
                      goto LABEL_287;
                    }
                  }

                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_41(&rect);
                  goto LABEL_371;
                }

LABEL_287:
                if (*(DerivedStorage + 28896) || *(DerivedStorage + 28904))
                {
                  v213 = malloc_type_calloc(v211, 0xF0uLL, 0x10800406B7F651AuLL);
                  *(DerivedStorage + 29424) = v213;
                  if (!v213)
                  {
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_39(&rect);
                    goto LABEL_371;
                  }

                  LODWORD(v211) = *(v13 + 2344);
                  if (v211 >= 1)
                  {
                    v214 = 0;
                    v215 = 0;
                    while (1)
                    {
                      if (*(DerivedStorage + 28896))
                      {
                        v216 = objc_alloc_init(GVSDistortionModelEven14);
                        v217 = *(DerivedStorage + 29424);
                        v218 = *(v217 + v214);
                        *(v217 + v214) = v216;

                        if (!*(*(DerivedStorage + 29424) + v214))
                        {
                          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_37(&rect);
                          goto LABEL_371;
                        }
                      }

                      if (*(DerivedStorage + 28904))
                      {
                        v219 = objc_alloc_init(GVSDistortionModelEven14);
                        v220 = *(DerivedStorage + 29424) + v214;
                        v221 = *(v220 + 8);
                        *(v220 + 8) = v219;

                        if (!*(*(DerivedStorage + 29424) + v214 + 8))
                        {
                          break;
                        }
                      }

                      ++v215;
                      v211 = *(v13 + 2344);
                      v214 += 240;
                      if (v215 >= v211)
                      {
                        goto LABEL_297;
                      }
                    }

                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_38(&rect);
                    goto LABEL_371;
                  }
                }

LABEL_297:
                if (*(v13 + 2628) > 0.0)
                {
                  v222 = malloc_type_calloc(v211, 0xCuLL, 0x10000403E1C8BA9uLL);
                  *(DerivedStorage + 29432) = v222;
                  if (!v222)
                  {
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_40(&rect);
                    goto LABEL_371;
                  }
                }
              }

              v223 = (2 * v206) | 1u;
              if (*(v13 + 2696))
              {
                v224 = 2;
              }

              else
              {
                v224 = 0;
              }

              if (*(v13 + 2628) > 0.0)
              {
                ++v224;
              }

              if (*(v13 + 3140))
              {
                v225 = v224 | 4;
              }

              else
              {
                v225 = v224;
              }

              v226 = [[GVSSmoothingBuffers alloc] initWithSize:v223 options:v225];
              v227 = *(DerivedStorage + 29400);
              *(DerivedStorage + 29400) = v226;

              if (*(DerivedStorage + 29400))
              {
LABEL_308:
                if ((*v316 & 0xFFFFFFFE) == 2)
                {
                  *(DerivedStorage + 10681) = 1;
                }

                if (*(v13 + 2940) != 1)
                {
                  goto LABEL_315;
                }

                v228 = *(DerivedStorage + 30072);
                if (v228 && (v229 = [v228 initGhostInformationLookAheadForSize:*(v13 + 2288)], v229))
                {
                  x_low = v229;
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_46();
                }

                else
                {
                  v230 = *(DerivedStorage + 30080);
                  if (!v230)
                  {
                    goto LABEL_315;
                  }

                  v231 = [v230 initGhostInformationLookAheadForSize:*(v13 + 2288)];
                  if (!v231)
                  {
                    goto LABEL_315;
                  }

                  x_low = v231;
                  FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_47();
                }

LABEL_373:
                FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_62(x_low);
                goto LABEL_358;
              }

              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_45(&rect);
            }

            else
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_48(&rect);
            }

LABEL_371:
            x_low = 4294954510;
LABEL_372:
            _cinematic_freeRingBuffers(DerivedStorage);
            emitter = fig_log_get_emitter();
            LODWORD(v299) = x_low;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< GyroVideoStabilizationV2 >>>> Fig", "err == 0 ", "bail", 0, "GVSGyroStabilizationV2.m", 3221, v299);
            goto LABEL_373;
          }

          x_low = v322;
LABEL_433:
          sbp_gvs_freeDerivedVectorsAndSphereLensMovements(DerivedStorage);
          v297 = fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v297, "<<<< GyroVideoStabilizationV2 >>>> Fig", "err == 0 ", "bail", 0, "GVSGyroStabilizationV2.m", 3212, x_low);
          goto LABEL_373;
        }

        if (*(v13 + 1029))
        {
          v188 = malloc_type_calloc(v186, 8uLL, 0x100004000313F17uLL);
          *(DerivedStorage + 28144) = v188;
          if (!v188)
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_33(&rect);
LABEL_432:
            x_low = 4294954510;
            goto LABEL_433;
          }

          LODWORD(v186) = *(DerivedStorage + 180);
          v187 = *(DerivedStorage + 184);
        }

        v189 = malloc_type_calloc(v186 * v187, 0x24uLL, 0x10000408AA14F5FuLL);
        *(DerivedStorage + 27408) = v189;
        if (v189)
        {
          goto LABEL_263;
        }

        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_34(&rect);
        goto LABEL_432;
      }

      v181 = [GVSMotionBlurFilter alloc];
      v182 = *v18;
      rect.size.width = v18[1].x;
      rect.origin = v182;
      v183 = [(GVSMotionBlurFilter *)v181 initWithSettings:&rect];
      v184 = *(DerivedStorage + 29568);
      *(DerivedStorage + 29568) = v183;

      v185 = *(DerivedStorage + 29568);
      if (v185)
      {
        if (*v314 == 11)
        {
          [v185 suspend];
        }

        goto LABEL_257;
      }

      FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_49(&rect);
      goto LABEL_364;
    }

    if ((*v316 - 1) > 3)
    {
      *(DerivedStorage + 392) = 0;
      goto LABEL_222;
    }

    v157 = *(DerivedStorage + 28864);
    v334 = 0;
    x_low = GVSExtractCameraGeometryFromCameraInfoByPortType(v157, &v334);
    v158 = v334;
    v159 = v334;
    if (!x_low)
    {
      objc_storeStrong((DerivedStorage + 400), v158);
      if ((*v133 & 2) != 0)
      {
        *v133 &= ~2u;
      }

      *(v13 + 1029) = 1;

      goto LABEL_222;
    }

    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_32();
LABEL_366:
    v111 = v131;
    goto LABEL_373;
  }

  *&v326 = &off_55C30;
  *(&v326 + 1) = &off_55C60;
  *&v330 = &off_55C48;
  *(&v330 + 1) = &off_55C78;
  *&v327 = &off_55C90;
  *&v331 = &off_55CA8;
  v135 = [NSDictionary dictionaryWithObjects:&v330 forKeys:&v326 count:3];
  v136 = [VISISPRendererV2 alloc];
  v137 = *(DerivedStorage + 120);
  v138 = [*(DerivedStorage + 96) commandQueue];
  v139 = [(VISISPRendererV2 *)v136 initWithISPProcessingSession:v137 metalContext:0 metalCommandQueue:v138];
  v140 = *(DerivedStorage + 112);
  *(DerivedStorage + 112) = v139;

  v141 = *(DerivedStorage + 112);
  if (v141)
  {
    HIWORD(v319) = v123;
    LOWORD(v319) = v122;
    [v141 setInputSize:v319];
    HIWORD(v318) = WORD2(*(DerivedStorage + 29688));
    LOWORD(v318) = *(DerivedStorage + 29688);
    [*(DerivedStorage + 112) setOutputSize:v318];
    v142 = vrev64_s32(*(DerivedStorage + 188));
    HIWORD(v317) = v142.i16[2];
    LOWORD(v317) = v142.i16[0];
    [*(DerivedStorage + 112) setGridSize:v317];
    [*(DerivedStorage + 112) setExtendedOutputRowsToFill:*(DerivedStorage + 44)];
    v143 = *(DerivedStorage + 112);
    v144 = [NSNumber numberWithInt:*(DerivedStorage + 172)];
    v145 = [v135 objectForKeyedSubscript:v144];
    x_low = [v143 prepareToProcess:{objc_msgSend(v145, "unsignedIntValue")}];

    v18 = (DerivedStorage + 29544);
    if (!x_low)
    {

      goto LABEL_199;
    }

    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_27(x_low);
  }

  else
  {
    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_28(&rect);
    x_low = LODWORD(rect.origin.x);
  }

LABEL_417:
  v111 = v131;
  v3 = v313;
LABEL_158:
  if (x_low)
  {
    goto LABEL_373;
  }

LABEL_315:
  if (*(v13 + 2996) || *(v13 + 2997))
  {
    v312 = v111;
    v232 = [*(DerivedStorage + 96) commandQueue];
    v233 = [NSString stringWithFormat:@"%@V%d", @"SmartStyle", 1];
    v234 = [NSString stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors", v233];
    v315 = [NSString stringWithFormat:@"CMI%@V%d", @"SmartStyleProcessor", 1];
    v235 = [NSBundle bundleWithPath:v234];
    v310 = v233;
    if (v235)
    {
      v236 = v235;
    }

    else
    {
      v237 = [NSString stringWithFormat:@"/AppleInternal/VideoProcessors/%@.bundle", v233];
      v236 = [NSBundle bundleWithPath:v237];

      if (!v236)
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_58(&rect);
        v247 = 0;
        v268 = 0;
        x_low = LODWORD(rect.origin.x);
        goto LABEL_350;
      }
    }

    if ([v236 loadAndReturnError:0])
    {
      v238 = [NSString stringWithFormat:@"CMISmartStyleProcessorInputOutputV%d", 1];
      *(DerivedStorage + 30160) = [v236 classNamed:v238];

      if (*(DerivedStorage + 30160))
      {
        v239 = *(DerivedStorage + 30240);
        v240 = [FigMetalAllocatorBackend alloc];
        v241 = +[FigMetalContext metalDevice];
        v242 = [v240 initWithDevice:v241 allocatorType:2];

        if (v242)
        {
          v243 = objc_opt_new();
          if (v243)
          {
            v244 = v243;
            [v243 setMemSize:5242880];
            [v244 setWireMemory:1];
            [v244 setLabel:@"VIS-SmartStyle-FigMetalAllocatorBackend"];
            [v244 setMemoryPoolId:v239];
            if ([v242 setupWithDescriptor:v244])
            {
              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_50();
            }

            else
            {
              v245 = objc_opt_new();
              if (v245)
              {
                v246 = v245;
                [v245 setAllocatorBackend:v242];
                v247 = v246;

                v248 = v315;
                v249 = [objc_alloc(objc_msgSend(v236 classNamed:{v315)), "initWithOptionalMetalCommandQueue:", v232}];
                v250 = *(DerivedStorage + 30128);
                *(DerivedStorage + 30128) = v249;

                v251 = *(DerivedStorage + 30128);
                if (!v251)
                {
                  v268 = 0;
                  x_low = 4294954510;
                  goto LABEL_351;
                }

                v309 = v234;
                [v251 setInstanceLabel:@"VIS-Integrate"];
                v252 = *(DerivedStorage + 30112);
                v253 = [v236 classNamed:v315];
                v254 = v232;
                if (v252 == 7)
                {
                  [v253 getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
                }

                else
                {
                  [v253 getDefaultProcessorConfigurationForStreaming];
                }
                v255 = ;
                [*(DerivedStorage + 30128) setConfiguration:v255];

                v256 = [*(DerivedStorage + 30128) configuration];

                if (v256)
                {
                  [*(DerivedStorage + 30128) setExternalMemoryResource:v247];
                  *&v322 = @"MemoryPoolId";
                  v257 = [NSNumber numberWithUnsignedLongLong:*(DerivedStorage + 30240)];
                  *&rect.origin.x = v257;
                  v258 = [NSDictionary dictionaryWithObjects:&rect forKeys:&v322 count:1];
                  v259 = [*(DerivedStorage + 30128) tuningParameters];
                  v260 = [v258 cmi_dictionaryMergedWithDefaultDict:v259];
                  [*(DerivedStorage + 30128) setTuningParameters:v260];

                  v261 = [*(DerivedStorage + 30128) setup];
                  if (v261)
                  {
                    x_low = v261;
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_51();
                    v268 = 0;
                    v13 = DerivedStorage + 27108;
                    v232 = v254;
                    v234 = v309;
                    goto LABEL_350;
                  }

                  v262 = [*(DerivedStorage + 30128) prepareToProcess:2];
                  v232 = v254;
                  v248 = v315;
                  if (v262)
                  {
                    x_low = v262;
                    FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_52();
                    v268 = 0;
                  }

                  else
                  {
                    v263 = [objc_alloc(objc_msgSend(v236 classNamed:{v315)), "initWithOptionalMetalCommandQueue:", v254}];
                    v264 = *(DerivedStorage + 30136);
                    *(DerivedStorage + 30136) = v263;

                    v265 = *(DerivedStorage + 30136);
                    if (v265)
                    {
                      [v265 setInstanceLabel:@"VIS-Apply"];
                      v266 = *(DerivedStorage + 30112);
                      v267 = [v236 classNamed:v315];
                      if (v266 == 7)
                      {
                        [v267 getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
                      }

                      else
                      {
                        [v267 getDefaultProcessorConfigurationForStreaming];
                      }
                      v268 = ;
                      if (v268)
                      {
                        [*(DerivedStorage + 30136) setExternalMemoryResource:v247];
                        *&v326 = @"MemoryPoolId";
                        v269 = [NSNumber numberWithUnsignedLongLong:*(DerivedStorage + 30240)];
                        *&v330 = v269;
                        v270 = [NSDictionary dictionaryWithObjects:&v330 forKeys:&v326 count:1];
                        v271 = [*(DerivedStorage + 30136) tuningParameters];
                        v272 = [v270 cmi_dictionaryMergedWithDefaultDict:v271];
                        [*(DerivedStorage + 30136) setTuningParameters:v272];

                        v248 = v315;
                        v13 = DerivedStorage + 27108;
                        LODWORD(v269) = *(DerivedStorage + 30168);
                        if (v269 <= [objc_msgSend(v236 classNamed:{v315), "getRequiredInputBufferSizeForFilterType:", 3}])
                        {
                          v273 = [objc_msgSend(v236 classNamed:{v315), "getRequiredInputBufferSizeForFilterType:", 3}];
                        }

                        else
                        {
                          v273 = *(DerivedStorage + 30168);
                        }

                        [v268 setTemporalFilterInputBufferSize:v273];
                        [*(DerivedStorage + 30136) setConfiguration:v268];
                        v274 = [*(DerivedStorage + 30136) setup];
                        v232 = v254;
                        if (!v274)
                        {
                          v275 = [*(DerivedStorage + 30136) prepareToProcess:4];
                          v234 = v309;
                          if (!v275)
                          {
                            v276 = *(DerivedStorage + 30120);
                            CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
                            if (CFPreferenceBooleanWithDefault | FigGetCFPreferenceBooleanWithDefault())
                            {
                              v278 = v276;
                            }

                            else
                            {
                              v278 = 0;
                            }

                            v279 = [[CMISmartStyleUtilitiesV1 alloc] initWithOptionalMetalCommandQueue:v232 useCase:v278 processingType:1 optionalExternalMemoryResource:v247];
                            v280 = *(DerivedStorage + 30144);
                            *(DerivedStorage + 30144) = v279;

                            if (*(DerivedStorage + 30144))
                            {
                              if (!*(DerivedStorage + 30107) || (v281 = [[CMISmartStyleUtilitiesV1 alloc] initWithOptionalMetalCommandQueue:v232 useCase:v278 processingType:0 optionalExternalMemoryResource:v247], v282 = *(DerivedStorage + 30152), *(DerivedStorage + 30152) = v281, v282, *(DerivedStorage + 30152)))
                              {
                                x_low = 0;
LABEL_350:
                                v248 = v315;
                                goto LABEL_351;
                              }
                            }

LABEL_400:
                            x_low = 4294954510;
                            goto LABEL_350;
                          }

                          x_low = v275;
                          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_54();
LABEL_351:

                          v111 = v312;
                          v3 = v313;
                          if (x_low)
                          {
                            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_59(x_low);
                            goto LABEL_358;
                          }

                          goto LABEL_352;
                        }

                        x_low = v274;
                        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_53();
LABEL_409:
                        v234 = v309;
                        goto LABEL_351;
                      }

LABEL_403:
                      x_low = 4294954510;
                      v13 = DerivedStorage + 27108;
                      v232 = v254;
                      goto LABEL_409;
                    }

                    v268 = 0;
                    x_low = 4294954510;
                  }

                  v13 = DerivedStorage + 27108;
                  goto LABEL_409;
                }

                v268 = 0;
                goto LABEL_403;
              }

              FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_55(v244);
            }
          }

          else
          {
            FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_56();
          }
        }

        else
        {
          FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_57();
        }
      }
    }

    v247 = 0;
    v268 = 0;
    goto LABEL_400;
  }

LABEL_352:
  if (*(v13 + 3140) == 1)
  {
    if (*v316 == 1)
    {
      v283 = objc_alloc_init(GVSFaceStabilizationProcessor);
      v284 = *(DerivedStorage + 30288);
      *(DerivedStorage + 30288) = v283;

      if (!*(DerivedStorage + 30288))
      {
        FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_60();
LABEL_380:
        x_low = 4294954510;
        goto LABEL_358;
      }
    }

    else
    {
      *(v13 + 3140) = 0;
    }
  }

  x_low = 0;
  *v3 = 0;
LABEL_358:

  return x_low;
}

void _sampleBufferImagePreStabilizationCallback(void *a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v5 = a1;
  v7 = v5;
  if (a3)
  {
    CMSampleBufferGetImageBuffer(a3);
  }

  else if (!a2)
  {
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained(v7 + 9);
  [WeakRetained willStartProcessingBuffer:a3 withStatus:a2];

  v5 = v7;
LABEL_5:
}

uint64_t sbp_gvs_setPostOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< GyroVideoStabilizationV2 >>>>", 9097, v3);
  }

  else
  {
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    [*(DerivedStorage + 112) setDelegate:a3];
    return 0;
  }
}

void _sampleBufferImageReadyCallback(void *a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v5 = a1;
  v16 = v5;
  if (a3)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    v5 = v16;
  }

  else
  {
    ImageBuffer = 0;
  }

  if ([v5[8] transformPlatform] == 1 || objc_msgSend(v16[8], "transformPlatform") == 2)
  {
    v7 = 1;
    if (a2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v7 = [v16[8] transformPlatform] == 3;
    if (a2)
    {
      goto LABEL_27;
    }
  }

  if (v7)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      if ([v16[4] containsObject:ImageBuffer])
      {
        [v16[4] removeObject:ImageBuffer];
        FigSimpleMutexUnlock();
        WeakRetained = objc_loadWeakRetained(v16 + 9);
        [WeakRetained didCompleteProcessingOfBuffer:a3 withStatus:0];
      }

      else
      {
        [v16[5] addObject:ImageBuffer];
        [v16[6] addObject:a3];
        FigSimpleMutexUnlock();
      }

      goto LABEL_31;
    }

    if (*(v16 + 17))
    {
      FigSimpleMutexLock();
      v9 = [v16[5] count];
      FigSimpleMutexUnlock();
      if (!v9)
      {
        goto LABEL_31;
      }

      v10 = 0;
      v11 = v9;
      while (1)
      {
        v12 = v11;
        v11 = v9;
        usleep(0x3E8u);
        if (v12 == v9)
        {
          v10 += 1000;
        }

        else
        {
          v10 = 0;
        }

        if (v10 < 0x493E0)
        {
          goto LABEL_25;
        }

        FigSimpleMutexLock();
        if (![v16[5] count])
        {
          goto LABEL_24;
        }

        v13 = [v16[6] objectAtIndexedSubscript:0];

        [v16[5] objectAtIndexedSubscript:0];
        if (!v13)
        {
          break;
        }

        CFRetain(v13);
        [v16[6] removeObjectAtIndex:0];
        [v16[5] removeObjectAtIndex:0];
        FigSimpleMutexUnlock();
        v14 = objc_loadWeakRetained(v16 + 9);
        [v14 didCompleteProcessingOfBuffer:v13 withStatus:4294954514];

        CFRelease(v13);
LABEL_25:
        FigSimpleMutexLock();
        v9 = [v16[5] count];
        FigSimpleMutexUnlock();
        if (!v9)
        {
          goto LABEL_31;
        }
      }

      [v16[6] removeObjectAtIndex:0];
      [v16[5] removeObjectAtIndex:0];
LABEL_24:
      FigSimpleMutexUnlock();
      goto LABEL_25;
    }
  }

LABEL_27:
  if (a2 || a3)
  {
    v15 = objc_loadWeakRetained(v16 + 9);
    [v15 didCompleteProcessingOfBuffer:a3 withStatus:a2];
  }

LABEL_31:
}

uint64_t sbp_gvs_setProperty(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v11 = DerivedStorage;
    if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_VideoStabilizationDisabled))
    {
      if (!a3 || (TypeID = CFBooleanGetTypeID(), TypeID != CFGetTypeID(a3)))
      {
        emitter = fig_log_get_emitter();
        v8 = v3;
        v9 = 4294954516;
        v10 = 8795;
        goto LABEL_16;
      }

      Value = CFBooleanGetValue(a3);
      a3 = 0;
      *(v11 + 84) = Value;
      return a3;
    }

    v14 = v11 + 27148;
    if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_SphereVideoEnabled))
    {
      if (!a3 || (v15 = CFBooleanGetTypeID(), v15 != CFGetTypeID(a3)))
      {
        emitter = fig_log_get_emitter();
        v8 = v3;
        v9 = 4294954516;
        v10 = 8816;
        goto LABEL_16;
      }

      v16 = CFBooleanGetValue(a3);
      if (*(v11 + 32))
      {
        if (!v16 || *(v11 + 28137))
        {
          a3 = 0;
          *(v11 + 28136) = v16;
          return a3;
        }

        sbp_gvs_setProperty_cold_1(&v30);
      }

      else
      {
        sbp_gvs_setProperty_cold_2(&v30);
      }
    }

    else
    {
      if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_FrameRateConversionEnabled))
      {
        if (a3)
        {
          v18 = CFBooleanGetTypeID();
          if (v18 == CFGetTypeID(a3) && (v19 = CFBooleanGetValue(a3)) != 0 && *v14 == 1)
          {
            a3 = 0;
            *(v14 + 2630) = v19;
            *(v14 + 2640) = 0;
            *(v14 + 2632) = 0xFFFFFFFFLL;
            *(v14 + 2648) = 1;
          }

          else
          {
            return 0;
          }
        }

        return a3;
      }

      if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_LongPressModeEnabled))
      {
        if (a3 && (v20 = CFBooleanGetTypeID(), v20 == CFGetTypeID(a3)))
        {
          if (*(v11 + 32))
          {
            if (*(v11 + 328))
            {
              if (*(v11 + 29504) > 0.0 && *(v11 + 29512) > 0.0)
              {
                v21 = CFBooleanGetValue(a3) != 0;
                v22 = sbp_enableLongPressMode(v11, v21);
                a3 = v22;
                if (v22)
                {
                  sbp_gvs_setProperty_cold_3(v22);
                }

                return a3;
              }

              sbp_gvs_setProperty_cold_4(&v30);
            }

            else
            {
              sbp_gvs_setProperty_cold_5(&v30);
            }
          }

          else
          {
            sbp_gvs_setProperty_cold_6(&v30);
          }
        }

        else
        {
          sbp_gvs_setProperty_cold_7(&v30);
        }
      }

      else if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_P3ToBT2020ConversionEnabled) && !*(v11 + 172))
      {
        if (a3 && (v25 = CFBooleanGetTypeID(), v25 == CFGetTypeID(a3)))
        {
          if (*(v11 + 32))
          {
            v26 = CFBooleanGetValue(a3) != 0;
            v27 = sbp_enableP3ToBT2020Conversion(v11, v26);
            a3 = v27;
            if (v27)
            {
              sbp_gvs_setProperty_cold_8(v27);
            }

            return a3;
          }

          sbp_gvs_setProperty_cold_9(&v30);
        }

        else
        {
          sbp_gvs_setProperty_cold_10(&v30);
        }
      }

      else if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_FlipHorizontalOrientation))
      {
        if (a3 && (v23 = CFBooleanGetTypeID(), v23 == CFGetTypeID(a3)))
        {
          v24 = CFBooleanGetValue(a3);
          if (!v24 || !*(v11 + 172))
          {
            a3 = 0;
            *(v11 + 203) = v24;
            return a3;
          }

          sbp_gvs_setProperty_cold_11(&v30);
        }

        else
        {
          sbp_gvs_setProperty_cold_12(&v30);
        }
      }

      else
      {
        if (!CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_IMUToCameraExtrinsic))
        {
          return 4294954512;
        }

        if (a3 && (v28 = CFDataGetTypeID(), v28 == CFGetTypeID(a3)))
        {
          if (*(v11 + 32))
          {
            v29 = sbp_setCameraExtrinsicAlignment(v11, a3);
            a3 = v29;
            if (v29)
            {
              sbp_gvs_setProperty_cold_13(v29);
            }

            return a3;
          }

          sbp_gvs_setProperty_cold_14(&v30);
        }

        else
        {
          sbp_gvs_setProperty_cold_15(&v30);
        }
      }
    }

    return v30;
  }

  emitter = fig_log_get_emitter();
  v8 = v3;
  v9 = 4294954511;
  v10 = 8786;
LABEL_16:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<<< GyroVideoStabilizationV2 >>>>", v10, v8);
}

uint64_t sbp_gvs_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (*(DerivedStorage + 24))
  {
    sbp_gvs_processSampleBuffer_cold_1(time);
LABEL_335:
    a2 = 0;
    x_low = LODWORD(time[0]);
    goto LABEL_451;
  }

  v13 = ImageBuffer;
  if (!ImageBuffer)
  {
    sbp_gvs_processSampleBuffer_cold_2();
  }

  if (!*(DerivedStorage + 29720) && !sbp_gvs_verifyInputBuffer(v13))
  {
    sbp_gvs_processSampleBuffer_cold_57();
    goto LABEL_341;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _getPresentationTimeStampForSampleBuffer(a2, 0, v7, v8, v9, v10, v11, v12, v311, v312, v313, v314, v315, v316, v317, v320, v322, sbuf);
    time[0] = origin;
    *&time[1] = v336.width;
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  if (CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_DepthSampleBuffer, 0))
  {
    v15 = CMSampleBufferGetImageBuffer(a2);
    if (sbp_gvs_verifyInputBuffer(v15))
    {
      if (*(DerivedStorage + 32) && !*(DerivedStorage + 29536))
      {
        *(DerivedStorage + 29544) = 0;
        v16 = *(DerivedStorage + 29568);
        *(DerivedStorage + 29568) = 0;
      }

      goto LABEL_13;
    }

    sbp_gvs_processSampleBuffer_cold_3();
LABEL_341:
    a2 = 0;
    x_low = 4294954514;
    goto LABEL_451;
  }

LABEL_13:
  MetadataDictionary = _getMetadataDictionary(a2, v14);
  if (!MetadataDictionary)
  {
    sbp_gvs_processSampleBuffer_cold_56(time);
    goto LABEL_335;
  }

  v19 = MetadataDictionary;
  v20 = *(DerivedStorage + 27148);
  if (v20 != 5 && v20 != 2)
  {
    goto LABEL_28;
  }

  v21 = kFigCaptureSampleBufferAttachmentKey_SmartStyleFutureLearnedCoefficientsArray;
  v22 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_SmartStyleFutureLearnedCoefficientsArray, 0);
  if (v22)
  {
    *(DerivedStorage + 30192) = CFRetain(v22);
    v23 = *(DerivedStorage + 27148);
    if (v23 != 5)
    {
      goto LABEL_20;
    }

    CMRemoveAttachment(a2, v21);
  }

  v23 = *(DerivedStorage + 27148);
LABEL_20:
  if (v23 == 2)
  {
    Value = CFDictionaryGetValue(v19, kFigCaptureVideoStabilizationMetadata_CinematicFutureMetadataInitializationArray);
    v25 = Value;
    if (*(DerivedStorage + 32))
    {
      if (!Value)
      {
        sbp_gvs_processSampleBuffer_cold_5(time);
        goto LABEL_335;
      }

      if (CFArrayGetCount(Value) <= 0)
      {
        sbp_gvs_processSampleBuffer_cold_4(time);
        goto LABEL_335;
      }

      *(DerivedStorage + 29472) = CFRetain(v25);
    }

    else
    {
      if (Value)
      {
        sbp_gvs_processSampleBuffer_cold_6(time);
        goto LABEL_335;
      }

      if (([*(DerivedStorage + 29400) centerIndex] & 0x80000000) != 0)
      {
        sbp_gvs_processSampleBuffer_cold_7(time);
        goto LABEL_335;
      }
    }

    v19 = CFDictionaryGetValue(v19, kFigCaptureVideoStabilizationMetadata_CinematicFutureMetadata);
  }

LABEL_28:
  if (*(DerivedStorage + 32))
  {
    ValueAtIndex = v19;
    if (*(DerivedStorage + 29472))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 29472), 0);
    }

    v27 = CFDictionaryGetValue(ValueAtIndex, kFigCaptureStreamMetadata_PortType);
    if (*(DerivedStorage + 28280))
    {
      v28 = bravoTransitionCameraIndexFromPortType(v27, (DerivedStorage + 28724));
      if (v28)
      {
        x_low = v28;
        sbp_gvs_processSampleBuffer_cold_8();
        a2 = 0;
        goto LABEL_451;
      }
    }

    v29 = *(DerivedStorage + 128);
    v30.i64[0] = v29;
    v30.i64[1] = SHIDWORD(v29);
    __asm { FMOV            V1.2D, #-1.0 }

    v35 = vaddq_f64(vcvtq_f64_s64(v30), _Q1);
    __asm { FMOV            V1.2D, #0.5 }

    *(DerivedStorage + 336) = vmulq_f64(v35, _Q1);
    if (FigCFEqual())
    {
      v37 = 1;
    }

    else
    {
      v37 = FigCFEqual() != 0;
    }

    *(DerivedStorage + 352) = v37;
    if ((*(DerivedStorage + 329) & 1) == 0)
    {
      *(DerivedStorage + 360) = GVSGetDefaultExtrinsicToIMU(v37);
      *(DerivedStorage + 368) = v38;
      *(DerivedStorage + 376) = v39;
      *(DerivedStorage + 384) = v40;
      v37 = *(DerivedStorage + 352);
    }

    v41 = *(DerivedStorage + 27148);
    v43 = (v41 - 1) < 3 && v37 == 0;
    *(DerivedStorage + 27136) = v43;
    v44 = *(DerivedStorage + 27140);
    if (v44 <= 1)
    {
      *(DerivedStorage + 27136) = v44 == 1;
    }

    if (*(DerivedStorage + 28136))
    {
      v45 = 1;
    }

    else
    {
      v45 = v41 == 3;
    }

    v46 = v45;
    *(DerivedStorage + 27106) = v46;
  }

  origin.x = 0.0;
  if (!_getMetadataDictionary(a2, v18))
  {
    sbp_gvs_processSampleBuffer_cold_55(&origin, time);
    goto LABEL_335;
  }

  FigCFDictionaryGetInt64IfPresent();
  CMSampleBufferGetPresentationTimeStamp(time, a2);
  *(DerivedStorage + 29760) = CMTimeGetSeconds(time);
  *(DerivedStorage + 29768) = origin.x;
  if (!*(DerivedStorage + 29778))
  {
    goto LABEL_62;
  }

  FrameRateConversionStatus = _getFrameRateConversionStatus(a2, v47);
  if (!FrameRateConversionStatus)
  {
    goto LABEL_62;
  }

  v49 = FrameRateConversionStatus;
  if (!*(DerivedStorage + 32))
  {
    v77 = (DerivedStorage + 29780);
    v78 = *(DerivedStorage + 29784);
    if (FrameRateConversionStatus != *(DerivedStorage + 29800))
    {
      if (!v78)
      {
        *v77 = *(DerivedStorage + 29388);
      }

      *(DerivedStorage + 29784) = ++v78;
    }

    if (v78 == 2)
    {
      sbuf = a2;
      v119 = *v77;
      if (*v77 == *(DerivedStorage + 29388))
      {
        v50 = 0;
      }

      else
      {
        v330 = a1;
        v150 = kFigCaptureSampleBufferAttachmentKey_MetadataDictionary;
        do
        {
          v151 = *(*(DerivedStorage + 29368) + 8 * v119);
          if (v151)
          {
            if (CMGetAttachment(v151, v150, 0))
            {
              FigCFDictionarySetInt32();
            }

            else
            {
              sbp_gvs_processSampleBuffer_cold_9();
            }
          }

          v152 = *(DerivedStorage + 29396);
          v119 += v152 + 1;
          do
          {
            v119 -= v152;
          }

          while (v119 >= v152);
        }

        while (*(DerivedStorage + 29388) != v119);
        v50 = 0;
        a1 = v330;
      }

      a2 = sbuf;
      goto LABEL_58;
    }

    if (v78 == 1)
    {
      ++*(DerivedStorage + 29788);
    }
  }

  v50 = 1;
LABEL_58:
  if (*(DerivedStorage + 29780) == *(DerivedStorage + 29384) || *(DerivedStorage + 29788) == *(DerivedStorage + 29792))
  {
    *(DerivedStorage + 29800) = v49;
LABEL_61:
    *(DerivedStorage + 29788) = 0;
    *(DerivedStorage + 29780) = 0xFFFFFFFFLL;
    goto LABEL_62;
  }

  *(DerivedStorage + 29800) = v49;
  if ((v50 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_62:
  v51 = *(DerivedStorage + 27148);
  if ((v51 - 1) < 3)
  {
    v331 = DerivedStorage;
    v52 = CMBaseObjectGetDerivedStorage();
    v53 = v52;
    v54 = v52 + 27148;
    *&v354 = 0;
    v55 = *(v52 + 29396);
    if (!*(v52 + 32))
    {
      goto LABEL_385;
    }

    v327 = a1;
    v56 = *(v52 + 104);
    v57 = *v54;
    if (*v54 == 3)
    {
      v58 = 1071644672;
      goto LABEL_113;
    }

    if (v57 != 2)
    {
      if (v57 == 1)
      {
        v58 = 1050253722;
LABEL_113:
        *(v52 + 29528) = v58;
        v89 = 1.0;
        goto LABEL_373;
      }

      fig_log_get_emitter();
      x_low = 4294954515;
      LODWORD(v311) = -12781;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v311, v2, v313, v314, v315, v316, v317, v320);
LABEL_115:
      a2 = 0;
      a1 = v327;
      DerivedStorage = v331;
      goto LABEL_486;
    }

    *(v52 + 29528) = 1050253722;
    v79 = *(v52 + 29472);
    sbuf = a2;
    if (v79)
    {
      Count = CFArrayGetCount(v79);
      if (Count > 0)
      {
        if (*(v54 + 2316) < Count)
        {
          sbp_gvs_processSampleBuffer_cold_25(time);
LABEL_328:
          x_low = LODWORD(time[0]);
        }

        else
        {
          v81 = 0;
          v82 = Count & 0x7FFFFFFF;
          while (1)
          {
            v83 = CFArrayGetValueAtIndex(v79, v81);
            if (!v83)
            {
              sbp_gvs_processSampleBuffer_cold_24(time);
              goto LABEL_328;
            }

            v84 = sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers(v53, v83);
            if (v84)
            {
              break;
            }

            if (v82 == ++v81)
            {
              x_low = 0;
              goto LABEL_104;
            }
          }

          x_low = v84;
          sbp_gvs_processSampleBuffer_cold_23();
        }

LABEL_104:
        v85 = *(v53 + 29472);
        if (v85)
        {
          CFRelease(v85);
          *(v53 + 29472) = 0;
        }

        if (x_low)
        {
          sbp_gvs_processSampleBuffer_cold_28(x_low);
          goto LABEL_115;
        }

        v86 = *(v53 + 29400);
        if (v86)
        {
          SmoothingAnalysisArrays = objc_msgSend_getSmoothingAnalysisArrays(v86);
          if (SHIDWORD(v347) < v348)
          {
            v88 = *(v345 + 8 * v348) - *(v345 + 8 * SHIDWORD(v347));
            if (v88 > 0.0)
            {
              v89 = (*(*(&time[1] + 1) + 144 * v348 + 72) - *(*(&time[1] + 1) + 144 * SHIDWORD(v347) + 72)) / v88;
              *(v54 + 2372) = v89 > 2.0;
              if (v89 > 2.0)
              {
                v56 = 0;
                goto LABEL_373;
              }

              goto LABEL_371;
            }

            sbp_gvs_processSampleBuffer_cold_29(SmoothingAnalysisArrays);
          }
        }

        *(v54 + 2372) = 0;
        v89 = 1.0;
LABEL_371:
        if (!*(v53 + 416))
        {
          sbp_gvs_processSampleBuffer_cold_30();
        }

LABEL_373:
        if (*(v53 + 88))
        {
          [*(v53 + 96) setQueuePriority:v56];
          AffineTransformContextSetPriority(*(v53 + 88), v56);
        }

        v267 = *(v54 + 2380);
        v268 = *(v54 + 2312);
        v269 = 16.0;
        if (v268 < 1.0)
        {
          v269 = 20.0;
          if (v268 > 0.5)
          {
            v269 = ((v268 + -0.5) * -8.0) + 20.0;
          }
        }

        v270 = fmaxf(v267, v268 * v269);
        a1 = v327;
        if (v89 > 30.0)
        {
          v270 = fmaxf(v267, v270 + (((v270 - v267) / -190.0) * (v89 + -30.0)));
        }

        *(v54 + 2376) = v270;
        *(v54 + 2308) = v270;
        if (*(v54 + 3100) == 1)
        {
          v271 = v270 * *(v54 + 3104);
          *(v54 + 3136) = v271;
          v272 = v270 * *(v54 + 3108);
          v273 = *(v54 + 3116) * (v272 - v271);
          if ((v271 - v273) > v267)
          {
            v267 = v271 - v273;
          }

          *(v54 + 3120) = v267;
          v274 = v272 + v273;
          *(v54 + 3124) = v274;
          if (v267 >= v274)
          {
            sbp_gvs_processSampleBuffer_cold_31();
            goto LABEL_488;
          }

          *(v54 + 3128) = v271;
          *(v54 + 3132) = fminf(fmaxf(v272, v271), v270);
        }

LABEL_385:
        if (*v54 != 1)
        {
          goto LABEL_391;
        }

        if (a2)
        {
          v275 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_OutputBiasRotationQuaternion, 0);
          if (v275)
          {
            v276 = v275;
            if ([v275 length] == &dword_10)
            {
              v277 = [v276 bytes];
              *(v53 + 28256) = *v277;
              *(v53 + 28264) = v277[1];
              *(v53 + 28272) = v277[2];
              *(v53 + 28248) = v277[3];

              v278 = 1;
LABEL_390:
              *(v54 + 1092) = v278;
LABEL_391:
              if (v19)
              {
                v279 = sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers(v53, v19);
                if (v279)
                {
                  x_low = v279;
                  sbp_gvs_processSampleBuffer_cold_34();
                  goto LABEL_480;
                }

                if (!*(v54 + 2464))
                {
                  goto LABEL_429;
                }

                if (*(v54 + 2493) == 1 && (*(v54 + 2526) & 1) == 0)
                {
                  v286 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferProcessorOption_SystemPressure, 0);
                  v287 = [v286 intValue];
                  *(v54 + 2496) = v287;
                  *(v54 + 2526) |= v287 > 2;
                }

                if (*(v54 + 2527))
                {
                  goto LABEL_407;
                }

                if (CFDictionaryContainsKey(v19, kFigCaptureStreamMetadata_LTMLookUpTables))
                {
                  if ([*(v53 + 29648) prepareToProcessWithMetadata:v19])
                  {
                    sbp_gvs_processSampleBuffer_cold_35();
                  }

                  *(v54 + 2527) = 1;
                  goto LABEL_407;
                }

                v288 = *(v54 + 2532);
                *(v54 + 2532) = v288 + 1;
                if (v288 < 3)
                {
LABEL_407:
                  if (!*(v53 + 29656) && !*(v54 + 2532) && *(v54 + 2527) == 1)
                  {
                    v289 = [*(v53 + 29648) allocateLTCsCorrectionTex:*(v54 + 2492) forISPProcessing:*(v53 + 172) == 3];
                    v290 = *(v53 + 29656);
                    *(v53 + 29656) = v289;

                    if (!*(v53 + 29656))
                    {
                      sbp_gvs_processSampleBuffer_cold_36();
                    }

                    if (sbp_ltm_checkPerVideoDisablement(v53, v19))
                    {
                      sbp_gvs_processSampleBuffer_cold_37();
                    }
                  }

                  if ((*(v54 + 2526) & 1) != 0 || *(v54 + 2527) != 1)
                  {
                    if (*(v54 + 2496) >= 3)
                    {
                      *(v54 + 2536) = 0;
                    }

                    if (*(v54 + 2525) == 1)
                    {
                      *(v54 + 2536) = 1;
                    }

                    *(v54 + 2528) = 0;
                  }

                  else
                  {
                    if (!*(v53 + 29648))
                    {
                      sbp_gvs_processSampleBuffer_cold_38(v53);
                    }

                    if (gGMFigKTraceEnabled == 1)
                    {
                      _getPresentationTimeStampForSampleBuffer(a2, 0, v280, v281, v282, v283, v284, v285, v311, v312, v313, v314, v315, v316, v317, v320, v322, sbuf);
                      time[0] = origin;
                      *&time[1] = v336.width;
                      CMTimeGetSeconds(time);
                      kdebug_trace();
                    }

                    if ([*(v53 + 29648) bufferFrame:a2])
                    {
                      sbp_gvs_processSampleBuffer_cold_39();
                    }

                    if (gGMFigKTraceEnabled == 1)
                    {
                      kdebug_trace();
                    }
                  }

                  goto LABEL_429;
                }
              }

              else if (!*(v54 + 2464))
              {
LABEL_429:
                _setAttachedMediaToSampleBuffer(a2, kFigCaptureStreamMetadataOutputKey_PreLTMThumbnail, 0);
                _setAttachedMediaToSampleBuffer(a2, kFigCaptureStreamMetadataOutputKey_LTMThumbnail, 0);
                _setAttachedMediaToSampleBuffer(a2, kFigCaptureStreamMetadataOutputKey_WeightSegmentMap, 0);
                v291 = CFRetain(a2);
                v292 = *(v54 + 2240);
                *(*(v53 + 29368) + 8 * v292) = v291;
                do
                {
                  v293 = v292 - v55;
                  v294 = v292 + 1;
                  LODWORD(v292) = v292 - v55;
                }

                while (v294 >= v55);
                *(v54 + 2240) = v55 + v293 + 1;
                v295 = *(v54 + 2244);
                if (v295 < v55)
                {
                  *(v54 + 2244) = ++v295;
                }

                if (*(v54 + 2900) == 1)
                {
                  v296 = (v55 + v293 + *(v54 + 2248)) % v55;
                  if (*(v53 + 32))
                  {
                    *&time[0] = 0;
                    FigCFDictionaryGetDoubleIfPresent();
                    if (*time > *(v54 + 2904) && (v297 = *(v53 + 30072)) != 0 || (v297 = *(v53 + 30080)) != 0)
                    {
                      objc_storeStrong((v53 + 30064), v297);
                    }

                    v295 = *(v54 + 2244);
                  }

                  *(*(v53 + 29376) + 24 * v296 + 16) = 0;
                  if (v295 >= 3)
                  {
                    _runVideoDeghostingDetection(*(v53 + 30064), v53 + 29368);
                  }
                }

                if (!*(v54 + 2956))
                {
                  goto LABEL_443;
                }

                if (_shouldBypassSmartStyle(a2))
                {
                  if (*v54 != 2)
                  {
                    v303 = _removeSmartStyleAttachments(v53, a2);
                    if (v303)
                    {
                      x_low = v303;
                      sbp_gvs_processSampleBuffer_cold_45();
LABEL_480:
                      a2 = 0;
                      goto LABEL_404;
                    }
                  }

                  goto LABEL_443;
                }

                if (!*(v54 + 2960))
                {
                  if (*(v53 + 172) == 3)
                  {
                    v306 = _runSmartStyleApplyOnUnstabilizedImage(v53, a2);
                    if (v306)
                    {
                      x_low = v306;
                      sbp_gvs_processSampleBuffer_cold_44();
                      goto LABEL_480;
                    }
                  }

LABEL_443:
                  if (*(v54 + 2244) < v55)
                  {
                    v298 = *(v53 + 88);
                    DerivedStorage = v331;
                    if (v298)
                    {
                      v299 = CMSampleBufferGetImageBuffer(a2);
                      AffineTransformCacheSourcePixelBuffer(v298, v299);
                    }

                    a2 = 0;
                    x_low = 0;
                    goto LABEL_450;
                  }

                  StabilizedSampleBuffer = sbp_gvs_gaussianAverageGetStabilizedSampleBuffer(v53, &v354);
                  DerivedStorage = v331;
                  if (!StabilizedSampleBuffer)
                  {
                    x_low = 0;
                    goto LABEL_449;
                  }

                  sbp_gvs_processSampleBuffer_cold_46(StabilizedSampleBuffer, &v354, time, &origin);
                  a2 = *&time[0];
LABEL_485:
                  x_low = LODWORD(origin.x);
                  if (!LODWORD(origin.x))
                  {
                    goto LABEL_450;
                  }

                  goto LABEL_486;
                }

                if (*v54 != 2)
                {
                  v304 = _enqueueCoefficientsForSmartStyleFilterForwardLearning(v53, a2);
                  if (v304)
                  {
                    x_low = v304;
                    sbp_gvs_processSampleBuffer_cold_40();
                    goto LABEL_480;
                  }
                }

                if (*(v53 + 172) != 3)
                {
                  goto LABEL_443;
                }

                v305 = *(v54 + 3036);
                if (*(v54 + 3028) < *(v54 + 3024) && v305 < *(v54 + 3032))
                {
                  *(v54 + 3036) = v305 + 1;
                  goto LABEL_443;
                }

                v307 = (*(v54 + 2240) + *(v54 + 2248) + ~v305) % *(v54 + 2248);
                v308 = *(v53 + 29368);
                v309 = *(v308 + 8 * v307);
                if (v309)
                {
                  if (_runSmartStyleFilterForwardLearning(v53, *(v308 + 8 * v307)))
                  {
                    sbp_gvs_processSampleBuffer_cold_41();
                  }

                  v310 = _runSmartStyleApplyOnUnstabilizedImage(v53, v309);
                  if (v310)
                  {
                    x_low = v310;
                    sbp_gvs_processSampleBuffer_cold_42();
                    goto LABEL_480;
                  }

                  goto LABEL_443;
                }

                sbp_gvs_processSampleBuffer_cold_43();
LABEL_488:
                a2 = 0;
                x_low = 4294954516;
LABEL_404:
                DerivedStorage = v331;
                if (x_low)
                {
                  goto LABEL_486;
                }

                goto LABEL_450;
              }

              sbp_ltm_deallocateLtcCorrectionTexture(v53);
              a2 = 0;
              x_low = 0;
              goto LABEL_404;
            }

            sbp_gvs_processSampleBuffer_cold_32(v276);
          }
        }

        else
        {
          sbp_gvs_processSampleBuffer_cold_33();
        }

        v278 = 0;
        goto LABEL_390;
      }

      sbp_gvs_processSampleBuffer_cold_26(time);
    }

    else
    {
      sbp_gvs_processSampleBuffer_cold_27(time);
    }

    x_low = LODWORD(time[0]);
    goto LABEL_104;
  }

  if (v51 == 4)
  {
    v63 = CMBaseObjectGetDerivedStorage();
    v64 = v63;
    v65 = v63 + 3393;
    v352 = 0;
    v353 = 0;
    v66 = v63[22].i32[0];
    origin = 0;
    v336 = 0;
    v337 = 0u;
    v338 = 0u;
    v339 = 0u;
    v340 = 0u;
    v341 = 0u;
    v342 = 0u;
    v343 = 0u;
    v67 = &v63[1336];
    if (v63[3517].i8[1])
    {
      v68 = &v63[1336];
    }

    else
    {
      v68 = 0;
    }

    if (v63[3517].i8[1])
    {
      v69 = v63[3518];
    }

    else
    {
      v69 = 0;
    }

    v90 = GVSExtractMetadataFromTopToBottomRows(v19, &v63[53], *&v63[3391], v68, &v63[42], v63 + 16, &origin, time, 0, &v352, v69, 0, v66);
    if (v90)
    {
      x_low = v90;
      sbp_gvs_processSampleBuffer_cold_13();
LABEL_345:
      a2 = 0;
      if (x_low)
      {
        goto LABEL_486;
      }

      goto LABEL_450;
    }

    v328 = a1;
    *(v64 + 28232) = vdiv_f32(vneg_f32(v352), vdup_lane_s32(*(&origin.x + 4), 0));
    if (v65->i8[0])
    {
      v91 = &time[2 * v66];
      v92 = *v91;
      *(v64 + 28112) = v91[1];
      *(v64 + 28096) = v92;
      if (v65[124].i8[1])
      {
        if (BYTE4(origin.y))
        {
          *&v354 = 0;
          v93 = FigMotionComputeLensMovementForTimeStamp(v67, &v354, DWORD2(v343), *(&v339 + 1), *&v336.width);
          *(v64 + 28232) = vsub_f32(*(v64 + 28232), vdiv_f32(*&v354, vdup_lane_s32(*(&origin.x + 4), 0)));
          if (v93)
          {
            goto LABEL_166;
          }
        }
      }

      goto LABEL_163;
    }

    if (*(v64 + 392) != 1)
    {
      if (a2)
      {
        v127 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCenterQuaternion, 0);
        if (v127)
        {
          v128 = v127;
          BytePtr = CFDataGetBytePtr(v127);
          if (CFDataGetLength(v128) == 32)
          {
            v130 = *(BytePtr + 1);
            *(v64 + 28096) = *BytePtr;
            *(v64 + 28112) = v130;
            if (FigMotionGetQuaternionLength((v64 + 28096)) > 0.00000001)
            {
              goto LABEL_163;
            }

            sbp_gvs_processSampleBuffer_cold_15(&v354);
          }

          else
          {
            sbp_gvs_processSampleBuffer_cold_14(&v354);
          }
        }

        else
        {
          sbp_gvs_processSampleBuffer_cold_16(&v354);
        }
      }

      else
      {
        sbp_gvs_processSampleBuffer_cold_17(&v354);
      }

      if (v354)
      {
        goto LABEL_137;
      }

LABEL_163:
      if (*(v64 + 10682))
      {
        v131 = *(v64 + 84);
        *(v64 + 202) = *(v64 + 84) != 0;
        if (!v131)
        {
LABEL_168:
          if (v65[124].i8[1])
          {
            v134 = *(v64 + 176);
            v135 = *(v64 + 28144);
            v136 = (v64 + 28152);
            if (v134 == 1)
            {
              *v136 = *v135;
            }

            else if (v134 >= 1)
            {
              v137 = 0;
              v138 = (*(v64 + 180) - 1);
              do
              {
                v136[v137] = v135[((v138 * v137) / (v134 - 1))];
                ++v137;
              }

              while (v134 != v137);
            }
          }

          v139 = *(v64 + 28896);
          if (v139 || *(v64 + 28904))
          {
            [v139 reset];
            [*(v64 + 28904) reset];
            sbp_gvs_extractDistortionData(*(v64 + 28864), v19, &origin, *(v64 + 29136), v64 + 28896, vsubq_f64(*(v64 + 336), vcvtq_f64_f32(vmul_n_f32(*(v64 + 28232), *(&origin.x + 1)))));
          }

          if (*(v64 + 10682))
          {
            sbufb = a2;
            *&v354 = vmul_n_f32(*(v64 + 28232), *(&origin.x + 1));
            *(v64 + 196) = 1065353216;
            if (v66 >= 1)
            {
              v140 = v64 + 27872;
              v141 = v64 + 28152;
              v142 = (v64 + 27152);
              v143 = time;
              while (1)
              {
                *v140 = FigMotionMultiplyByInverseOfQuaternion((v64 + 28096), v143);
                *(v140 + 8) = v144;
                *(v140 + 16) = v145;
                *(v140 + 24) = v146;
                v147 = v65[124].i8[1] ? v141 : 0;
                v148 = GVSComputeTransformFromCameraMotion(v140, (v64 + 336), &origin, v147, &v354, v142);
                if (v148)
                {
                  break;
                }

                if (*(v64 + 200))
                {
                  limitTransformToOverscan(v64 + 128, &v341 + 1, v142, *(&v336.width + 1));
                }

                v142 += 9;
                v141 += 8;
                v143 += 4;
                v140 += 32;
                if (!--v66)
                {
                  goto LABEL_186;
                }
              }

              x_low = v148;
              sbp_gvs_processSampleBuffer_cold_21(v148, &v354);
              a2 = 0;
LABEL_189:
              a1 = v328;
              if (x_low)
              {
                goto LABEL_486;
              }

LABEL_450:
              ++*(DerivedStorage + 36);
              *(DerivedStorage + 32) = 0;
              goto LABEL_451;
            }

LABEL_186:
            a2 = sbufb;
          }

          v149 = sbp_gvs_createStabilizedSampleBuffer(v64, a2, &origin, &v353);
          if (v149)
          {
            sbp_gvs_processSampleBuffer_cold_22(v149, &v353, &v354, v357);
            a2 = v354;
            x_low = *v357;
          }

          else
          {
            x_low = 0;
            a2 = v353;
          }

          goto LABEL_189;
        }

LABEL_167:
        v132 = &time[2 * ((*(v64 + 176) + (*(v64 + 176) >> 31)) >> 1)];
        v133 = v132[1];
        *(v64 + 28096) = *v132;
        *(v64 + 28112) = v133;
        goto LABEL_168;
      }

LABEL_166:
      *(v64 + 202) = 1;
      goto LABEL_167;
    }

    v354 = 0u;
    v355 = 0u;
    if (a2)
    {
      v98 = CMGetAttachment(a2, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCameraGeometry, 0);
      v99 = v98;
      if (v98 && [v98 length] == &stru_20.segname[8])
      {
        v100 = [v99 bytes];
        v354 = *v100;
        v355 = *(v100 + 1);
        v101 = *(v100 + 32);

        v102 = 0;
        goto LABEL_136;
      }

      sbp_gvs_processSampleBuffer_cold_18(v99, v357);
      v102 = *v357;
    }

    else
    {
      sbp_gvs_processSampleBuffer_cold_19();
      v102 = 0;
    }

    v101 = 0;
LABEL_136:
    v103 = v355;
    *(v64 + 28096) = v354;
    *(v64 + 28112) = v103;
    *(v64 + 28232) = vneg_f32(v101);
    if (v102)
    {
LABEL_137:
      sbp_gvs_processSampleBuffer_cold_20();
      goto LABEL_166;
    }

    goto LABEL_163;
  }

  if (v51 != 5)
  {
    v70 = CMBaseObjectGetDerivedStorage();
    v71 = v70;
    v72 = v70 + 3392;
    v73 = &v70[1335] + 2;
    v352 = 0;
    v342 = 0u;
    v343 = 0u;
    v340 = 0u;
    v341 = 0u;
    v338 = 0u;
    v339 = 0u;
    v336 = 0;
    v337 = 0u;
    origin = 0;
    v74 = v70[22].i32[0];
    if (v70[3517].i8[1])
    {
      v75 = &v70[1336];
    }

    else
    {
      v75 = 0;
    }

    if (v70[3517].i8[1])
    {
      v76 = v70[3518];
    }

    else
    {
      v76 = 0;
    }

    v94 = &v70[3535];
    if (!v70[3535].i32[0])
    {
      v94 = 0;
    }

    v95 = GVSExtractMetadataFromTopToBottomRows(v19, &v70[53], *&v70[3391], v75, &v70[42], v70 + 16, &origin, time, 0, 0, v76, v94, v74);
    if (v95)
    {
      x_low = v95;
      sbp_gvs_processSampleBuffer_cold_47();
      a2 = 0;
      goto LABEL_325;
    }

    v96 = *v73;
    v332 = DerivedStorage;
    if (*v73)
    {
      *(v71 + 202) = *(v71 + 84) != 0;
      v321 = (v71 + 202);
      v97 = (v71 + 32);
      if (!*(v71 + 32) && v73[1])
      {
        goto LABEL_142;
      }
    }

    else
    {
      *(v71 + 202) = 1;
      v321 = (v71 + 202);
      v97 = (v71 + 32);
      if (!*(v71 + 32))
      {
        goto LABEL_142;
      }
    }

    v104 = &time[2 * v74];
    v105 = *v104;
    *(v71 + 28112) = v104[1];
    *(v71 + 28096) = v105;
    if (v74 >= 1)
    {
      v106 = (v71 + 27648);
      v107 = time;
      v108 = v74;
      do
      {
        v109 = v107[1];
        *(v106 - 14) = *v107;
        *(v106 - 13) = v109;
        v110 = *v107;
        v111 = v107[1];
        v107 += 2;
        *v106 = v110;
        v106[1] = v111;
        v106 += 2;
        --v108;
      }

      while (v108);
    }

LABEL_142:
    sbufa = a2;
    if (v72[125].i8[1])
    {
      v112 = *(v71 + 176);
      v113 = *(v71 + 28144);
      v114 = (v71 + 28152);
      if (v112 == 1)
      {
        *v114 = *v113;
      }

      else if (v112 >= 1)
      {
        v115 = 0;
        v116 = (*(v71 + 180) - 1);
        do
        {
          v114[v115] = v113[((v116 * v115) / (v112 - 1))];
          ++v115;
        }

        while (v112 != v115);
      }
    }

    v334 = v74;
    v323 = v73;
    v329 = a1;
    if (!v96)
    {
      goto LABEL_321;
    }

    if (*v97)
    {
      v117 = *&v72[252].i32[1];
      v118 = v74;
      goto LABEL_310;
    }

    v120 = *(&v339 + 1) - *(v71 + 29360);
    if (v120 <= 0.0)
    {
      v121 = 1.0;
    }

    else
    {
      v121 = 0.0333333333 / v120;
    }

    *(v71 + 29352) = v121;
    v122 = *(v71 + 176);
    v123 = v121 * 0.0192 + 0.7808;
    v124 = v123;
    if (BYTE4(origin.y))
    {
      v125 = v121 * 0.005 + 0.945;
      if (v72[125].i8[0])
      {
        v125 = v125 + 0.02;
        v124 = v124 + 0.1;
        v126 = 1;
      }

      else
      {
        v126 = 0;
      }
    }

    else
    {
      v126 = 0;
      v125 = v121 * 0.005 + 0.945;
    }

    v153 = fminf(v124, 0.999);
    v319 = fminf(v125, 0.999);
    v154 = (v319 - v153);
    v155 = v153;
    if (v72[265].i32[0])
    {
      v155 = *&v72[252].i32[1];
    }

    v333 = v155;
    v156 = fmin(v123, 0.999);
    v157 = v154 / (v121 * 30.0);
    v158 = v154 / (v121 * 10.0);
    if (v122 < 1)
    {
      v160 = 0.0;
      v164 = 2.0;
      v161 = 2.0;
    }

    else
    {
      v354 = 0u;
      v355 = 0u;
      v159 = (v71 + 27648);
      v160 = 0.0;
      v161 = 2.0;
      v162 = time;
      v163 = v122;
      v164 = 2.0;
      do
      {
        *&v354 = FigMotionMultiplyByInverseOfQuaternion(v162, v159 - 28);
        *(&v354 + 1) = v165;
        *&v355 = v166;
        *(&v355 + 1) = v167;
        v168 = fabs(*&v354);
        if (v168 < v161)
        {
          v161 = v168;
        }

        *&v354 = FigMotionMultiplyByInverseOfQuaternion(v162, v159);
        *(&v354 + 1) = v169;
        *&v355 = v170;
        *(&v355 + 1) = v171;
        v172 = fabs(*&v354);
        if (v172 < v164)
        {
          v164 = v172;
        }

        v353 = 0;
        GVSComputeTranslationFromCameraMotion(&v354, &v353, *(&origin.x + 1));
        HIDWORD(v123) = HIDWORD(v353);
        v160 = COERCE_DOUBLE(vadd_f32(*&v160, v353));
        v159 += 4;
        v162 += 4;
        --v163;
      }

      while (v163);
    }

    v173 = v156;
    *&v123 = v157;
    v318 = *&v123;
    v174 = v158;
    *&v123 = v122;
    v175 = v72 + 257;
    v176 = COERCE_DOUBLE(vdiv_f32(*&v160, vdup_lane_s32(*&v123, 0)));
    if (v122)
    {
      v177 = v176;
    }

    else
    {
      v177 = v160;
    }

    v178 = acos(v164);
    v179 = *(v71 + 29352);
    v180 = acos(v161);
    v181 = sqrt(v179);
    v182 = v72[275].i32[1];
    *(v71 + 29260 + 8 * v182) = v177;
    v183 = v72[276].i32[0];
    v118 = v334;
    if (v183 <= 9)
    {
      v72[276].i32[0] = ++v183;
    }

    v184 = v178 * v179;
    v185 = v180 * v181;
    LOBYTE(v354) = 0;
    LOBYTE(v353) = 0;
    if (v183 == 10)
    {
      v186 = 0;
      v187 = 0.0;
      v188 = &v354;
      v189 = 1;
      do
      {
        v190 = 0;
        v191 = v189;
        v192 = 10;
        v193 = 0.0;
        v194 = v182;
        do
        {
          v195 = *(v71 + 29260 + 8 * v194 + 4 * v186);
          v193 = v193 + v195;
          if (v195 >= 0.0)
          {
            ++v190;
          }

          else
          {
            --v190;
          }

          v194 = (v194 + 9) % 10;
          --v192;
        }

        while (v192);
        if (v190 >= 0)
        {
          v196 = v190;
        }

        else
        {
          v196 = -v190;
        }

        if (v196 == 10)
        {
          v197 = fabsf(v193) / 10.0;
          if (v197 >= 0.75)
          {
            *v188 = 1;
            v187 = fmaxf(v187, v197);
          }
        }

        v189 = 0;
        v188 = &v353;
        v186 = 1;
      }

      while ((v191 & 1) != 0);
      v198 = v354 | v353;
    }

    else
    {
      v198 = 0;
      v187 = 0.0;
    }

    v72[253].i8[2] = v198 & 1;
    v199 = v184 <= 0.00447213968;
    v72[253].i8[1] = v184 <= 0.00447213968;
    v72[253].i8[0] = v185 <= 0.0109545059;
    v200 = v72[264].i32[1];
    if (v185 > 0.0109545059)
    {
      v199 = 0;
    }

    v175->i8[v200] = v199;
    v201 = v72[265].i32[0];
    if (v201 > 59)
    {
      v202 = v72[265].u32[0];
    }

    else
    {
      v202 = v201 + 1;
      v72[265].i32[0] = v201 + 1;
      if (v201 < 0)
      {
        goto LABEL_240;
      }
    }

    if (!v175->i8[0])
    {
      v72[253].i8[3] = 0;
LABEL_250:
      if (v126)
      {
        if (v72[253].i8[2] == 1 && *(v71 + 201))
        {
          v207 = v333 - v174;
        }

        else
        {
          v207 = fminf(v153, v333 + v318);
          v208 = fmaxf(v153, v333 - v174);
          if (v333 > v153)
          {
            v207 = v208;
          }
        }

LABEL_259:
        v209 = fminf(v319, fmaxf(v173, v207));
        v72[275].i32[1] = (v182 + 1) % 10;
        v72[264].i32[1] = (v200 + 1) % 60;
        if (v184 >= *(v71 + 29184))
        {
          v215 = 0.08 / v121 + v333;
          v214 = fminf(v209, v215);
          v72[253].i32[1] = 0;
          v216 = 0.005 / v121;
          *v72[254].i32 = v216;
        }

        else
        {
          v210 = v72[253].i32[1];
          v211 = llround(v121);
          if (v211 <= 1)
          {
            v211 = 1;
          }

          if (v210 < v211 || v184 >= 0.00019999999)
          {
            v214 = fminf(v209, v333);
          }

          else
          {
            v212 = fminf(*v72[254].i32 * 1.3, 1.0);
            *v72[254].i32 = v212;
            v213 = v333 - v212 / v121;
            v214 = fmaxf(*&v72[254].i32[1], v213);
          }

          v72[253].i32[1] = v210 + 1;
        }

        if (v72->i8[0])
        {
          v217 = *(v71 + 27416);
          v218 = fabs(FigMotionMultiplyByInverseOfQuaternion((v71 + 28096), &time[2 * v122]));
          if (v218 >= v217 || (v219 = acos(v217), v220 = acos(v218), v117 = v219 / (v220 + v220), v214 < v117))
          {
            v117 = v214;
          }

          goto LABEL_309;
        }

        if (v122 < 1)
        {
          v117 = 1.0;
        }

        else
        {
          v221 = (v71 + 27424);
          v117 = 1.0;
          v222 = time;
          do
          {
            v223 = *(v71 + 27416);
            v224 = fabs(FigMotionMultiplyByInverseOfQuaternion(v221, v222));
            if (v224 >= v223 || (v225 = acos(v223), v226 = acos(v224), v227 = v225 / (v226 + v226), v214 < v227))
            {
              v227 = v214;
            }

            if (v227 < v117)
            {
              v117 = v227;
            }

            v221 += 4;
            v222 += 4;
            v214 = v227;
            --v122;
          }

          while (v122);
        }

        v228 = v126 ^ 1;
        if (!*(v71 + 200))
        {
          v228 = 1;
        }

        if ((v228 & 1) == 0)
        {
          v118 = v334;
          if (v117 <= 0.7808)
          {
LABEL_309:
            *&v72[252].i32[1] = v117;
LABEL_310:
            FigMotionInterpolateQuaternionsByAngle(&time[2 * v118], (v71 + 28096), v117);
            *(v71 + 28096) = v238;
            *(v71 + 28104) = v239;
            *(v71 + 28112) = v240;
            *(v71 + 28120) = v241;
            *(v71 + 196) = 1065353216;
            if (v118 >= 1)
            {
              v242 = time;
              v243 = 27872;
              v244 = 28152;
              v245 = 27152;
              v246 = 27648;
              v247 = 27424;
              while (1)
              {
                v248 = v71 + 28096;
                if (!v72->i8[0])
                {
                  v248 = v71 + v247;
                  FigMotionInterpolateQuaternionsByAngle(v242, (v71 + v247), *&v72[252].i32[1]);
                  *v248 = v249;
                  *(v248 + 8) = v250;
                  *(v248 + 16) = v251;
                  *(v248 + 24) = v252;
                  FigMotionInterpolateQuaternionsByAngle(v242, (v71 + v246), 0.05);
                  *(v248 + 224) = v253;
                  *(v248 + 232) = v254;
                  *(v248 + 240) = v255;
                  *(v248 + 248) = v256;
                }

                v257 = v72;
                v258 = v71 + v247;
                *(v258 + 448) = FigMotionMultiplyByInverseOfQuaternion(v248, v242);
                *(v258 + 456) = v259;
                *(v258 + 464) = v260;
                *(v258 + 472) = v261;
                v72 = v257;
                v262 = v257[125].i8[1] ? (v71 + v244) : 0;
                v263 = GVSComputeTransformFromCameraMotion((v71 + v243), (v71 + 336), &origin, v262, 0, (v71 + v245));
                if (v263)
                {
                  break;
                }

                if (*(v71 + 200))
                {
                  limitTransformToOverscan(v71 + 128, &v341 + 1, v71 + v245, *(&v336.width + 1));
                }

                v242 += 4;
                v243 += 32;
                v244 += 8;
                v245 += 36;
                v246 += 32;
                v247 += 32;
                if (!--v334)
                {
                  goto LABEL_321;
                }
              }

              x_low = v263;
              sbp_gvs_processSampleBuffer_cold_52();
              a2 = 0;
              a1 = v329;
              DerivedStorage = v332;
              v73 = v323;
LABEL_325:
              v73[1] = *v73;
              *(v71 + 29360) = *(&v339 + 1);
              if (x_low)
              {
                goto LABEL_486;
              }

              goto LABEL_450;
            }

LABEL_321:
            if (*v321)
            {
              v264 = &time[2 * ((*(v71 + 176) + (*(v71 + 176) >> 31)) >> 1)];
              v265 = v264[1];
              *(v71 + 28096) = *v264;
              *(v71 + 28112) = v265;
            }

            v266 = sbp_gvs_createStabilizedSampleBuffer(v71, sbufa, &origin, &v352);
            a1 = v329;
            DerivedStorage = v332;
            v73 = v323;
            if (v266)
            {
              sbp_gvs_processSampleBuffer_cold_53(v266, &v352, &v354, &v353);
              a2 = v354;
              x_low = v353;
            }

            else
            {
              x_low = 0;
              a2 = v352;
            }

            goto LABEL_325;
          }

          v356 = 1;
          v229 = *(v71 + 176);
          *(v71 + 201) = 0;
          if (v229 < 1)
          {
            v234 = v117;
LABEL_307:
            v117 = v234;
          }

          else
          {
            v230 = 0;
            v231 = v71 + 27424;
            v232 = v117;
            while (1)
            {
              v233 = v72[125].i8[1] ? (v71 + 28152 + 8 * v230) : 0;
              if (sbp_gvs_iir_ComputeCorrection(v71, &time[2 * v230], v232, (v231 + 32 * v230), &origin, v233, &v356))
              {
                break;
              }

              if (v356)
              {
                v234 = v232;
              }

              else
              {
                *(v71 + 201) = 1;
                if (v232 < 0.7808)
                {
                  v234 = 0.7808;
                  if ((sbp_gvs_processSampleBuffer_cold_50(&v354, &v353) & 1) == 0)
                  {
                    v236 = v354;
                    v237 = v353;
LABEL_337:
                    sbp_gvs_processSampleBuffer_cold_51(v237, v236);
                    goto LABEL_308;
                  }
                }

                else
                {
                  v234 = 0.7808;
                  if ((v232 + -0.7808) > 0.01)
                  {
                    v234 = 0.7808;
                    while (1)
                    {
                      v357[0] = 0;
                      v235 = sbp_gvs_iir_ComputeCorrection(v71, &time[2 * v230], (v234 + v232) * 0.5, (v231 + 32 * v230), &origin, v233, v357);
                      if (v235)
                      {
                        break;
                      }

                      if (v357[0])
                      {
                        v234 = (v234 + v232) * 0.5;
                      }

                      else
                      {
                        v232 = (v234 + v232) * 0.5;
                      }

                      if ((v232 - v234) <= 0.01)
                      {
                        goto LABEL_302;
                      }
                    }

                    v237 = v235;
                    sbp_gvs_processSampleBuffer_cold_49(v235);
                    v236 = v354;
                    goto LABEL_337;
                  }
                }
              }

LABEL_302:
              ++v230;
              v232 = v234;
              if (v230 == v229)
              {
                goto LABEL_307;
              }
            }

            sbp_gvs_processSampleBuffer_cold_48();
          }
        }

LABEL_308:
        v118 = v334;
        goto LABEL_309;
      }

      v206 = v333 - v174;
LABEL_256:
      v207 = fmaxf(v153, v206);
      goto LABEL_259;
    }

    v203 = 0;
    while (v202 - 1 != v203)
    {
      v204 = *(v71 + 29193 + v203++);
      if ((v204 & 1) == 0)
      {
        v72[253].i8[3] = v203 >= v202;
        if (v203 < v202)
        {
          goto LABEL_250;
        }

        goto LABEL_247;
      }
    }

LABEL_240:
    v72[253].i8[3] = 1;
LABEL_247:
    if (v72[253].i8[2] != 1)
    {
      v207 = v333 + v318;
      goto LABEL_259;
    }

    v205 = fminf(v187 / *v72[255].i32, 1.0);
    v206 = v333 - ((v205 * (v205 * v205)) * v174);
    goto LABEL_256;
  }

  *&v354 = 0;
  if (!a2)
  {
    sbp_gvs_processSampleBuffer_cold_12(&origin);
    goto LABEL_485;
  }

  if (!a1)
  {
    sbp_gvs_processSampleBuffer_cold_11(&origin);
    a2 = 0;
    goto LABEL_485;
  }

  v59 = CMBaseObjectGetDerivedStorage();
  v350 = 0u;
  v351 = 0u;
  memset(time, 0, sizeof(time));
  v345 = 0u;
  v346 = 0u;
  v347 = 0u;
  v348 = 0u;
  v349 = 0u;
  *&v349 = *(v59 + 128);
  if (*(v59 + 224))
  {
    CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v336 = size;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      DWORD2(v348) = llround(origin.x);
      HIDWORD(v348) = llround(origin.y);
      LODWORD(v349) = llround(v336.width);
      DWORD1(v349) = llround(v336.height);
    }
  }

  v61 = sbp_gvs_createStabilizedSampleBuffer(v59, a2, time, &v354);
  x_low = v61;
  if (v61)
  {
    sbp_gvs_processSampleBuffer_cold_10(v61);
    goto LABEL_345;
  }

LABEL_449:
  a2 = v354;
  if (!x_low)
  {
    goto LABEL_450;
  }

LABEL_486:
  sbp_gvs_processSampleBuffer_cold_54(x_low);
LABEL_451:
  if (*(DerivedStorage + 8))
  {
    sbp_emitPendingFrames(a1, x_low, a2);
    x_low = 0;
  }

  if (a2)
  {
    CFRelease(a2);
  }

  v301 = *(DerivedStorage + 30192);
  if (v301)
  {
    CFRelease(v301);
    *(DerivedStorage + 30192) = 0;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return x_low;
}

uint64_t sbp_enableLongPressMode(uint64_t a1, int a2)
{
  v4 = a1 + 28672;
  *(a1 + 29520) = 0;
  v5 = a2 ^ 1;
  if (*(a1 + 30105))
  {
    *(a1 + 30106) = v5;
  }

  *(a1 + 320) = *(a1 + 30104);
  *(a1 + 29480) = v5;
  v18 = 0uLL;
  v17 = 0uLL;
  v6 = sbp_configureOverscanParameters(a1, *(a1 + 128), *(a1 + 132), &v17, &v18);
  if (v6)
  {
    v15 = v6;
    sbp_enableLongPressMode_cold_1();
    return v15;
  }

  if (*(a1 + 136) != v18 || *(a1 + 140) != *(&v18 + 4) || *(a1 + 148) != HIDWORD(v18))
  {
    sbp_enableLongPressMode_cold_2(&v19);
    return v19;
  }

  *(a1 + 152) = v17;
  if (!*(v4 + 1048))
  {
    v7 = *(a1 + 228);
    if (v7 >= 1)
    {
      v8 = (a1 + 288);
      v9 = 1;
      do
      {
        if (v9)
        {
          v10 = *(v8 - 4);
          if (*(v4 + 1434))
          {
            v11 = 1;
          }

          else
          {
            v11 = v10 == 0;
          }

          v9 = !v11;
          if (*(v4 + 1434))
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            v9 = *v8 != 0;
          }
        }

        else
        {
          v9 = 0;
        }

        ++v8;
        --v7;
      }

      while (v7);
      if (v9)
      {
        *(a1 + 224) = v5;
        AffineTransformConfigureBlurBorderPixels(*(a1 + 88), (a1 + 224));
        if (a2)
        {
          v13 = *(a1 + 136);
          v14 = *(a1 + 140);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        AffineTransformSetOverscanFill(*(a1 + 88), v13, v14);
        return 0;
      }
    }

    sbp_enableLongPressMode_cold_3(&v19);
    return v19;
  }

  return 0;
}

uint64_t sbp_enableP3ToBT2020Conversion(uint64_t a1, const char *a2)
{
  if (*(a1 + 172))
  {
    sbp_enableP3ToBT2020Conversion_cold_1(&v5);
    return v5;
  }

  else
  {
    v2 = a2;
    AffineTransformConfigureP3ToBT2020conversion(*(a1 + 88), a2);
    result = 0;
    *(a1 + 29776) = v2;
  }

  return result;
}

void _cinematic_freeRingBuffers(void *a1)
{
  v2 = (a1 + 3584);
  v3 = a1[3671];
  if (v3)
  {
    a1[3671] = 0;
    free(v3);
  }

  if (*(v2 + 1376) == 1)
  {
    v4 = a1[3672];
    if (v2[181] >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *&v4[v5 + 8];
        *&v4[v5 + 8] = 0;

        v4 = a1[3672];
        *&v4[v5] = 0;
        ++v6;
        v5 += 24;
      }

      while (v6 < v2[181]);
      goto LABEL_9;
    }

    if (v4)
    {
LABEL_9:
      a1[3672] = 0;
      free(v4);
    }
  }

  v8 = a1[3676];
  if (v8)
  {
    v9 = v2[195];
    if (v9 < 1)
    {
      goto LABEL_17;
    }

    for (i = 0; i < v9; ++i)
    {
      v11 = a1[3676];
      v12 = *(v11 + 8 * i);
      if (v12)
      {
        *(v11 + 8 * i) = 0;
        free(v12);
        v9 = v2[195];
      }
    }

    v8 = a1[3676];
    if (v8)
    {
LABEL_17:
      a1[3676] = 0;
      free(v8);
    }
  }

  v13 = a1[3677];
  if (v13)
  {
    v14 = v2[195];
    if (v14 < 1)
    {
      goto LABEL_25;
    }

    for (j = 0; j < v14; ++j)
    {
      v16 = a1[3677];
      v17 = *(v16 + 8 * j);
      if (v17)
      {
        *(v16 + 8 * j) = 0;
        free(v17);
        v14 = v2[195];
      }
    }

    v13 = a1[3677];
    if (v13)
    {
LABEL_25:
      a1[3677] = 0;
      free(v13);
    }
  }

  v18 = a1[3678];
  if (v18)
  {
    if (v2[195] < 1)
    {
      goto LABEL_31;
    }

    v19 = 0;
    v20 = 0;
    do
    {
      v21 = a1[3678];
      v22 = *(v21 + v19);
      *(v21 + v19) = 0;

      v23 = a1[3678] + v19;
      v24 = *(v23 + 8);
      *(v23 + 8) = 0;

      ++v20;
      v19 += 240;
    }

    while (v20 < v2[195]);
    v18 = a1[3678];
    if (v18)
    {
LABEL_31:
      a1[3678] = 0;
      free(v18);
    }
  }

  v25 = a1[3679];
  if (v25)
  {
    a1[3679] = 0;
    free(v25);
  }

  v26 = a1[3675];
  a1[3675] = 0;
}

void sbp_gvs_freeDerivedVectorsAndSphereLensMovements(uint64_t a1)
{
  v2 = *(a1 + 28144);
  if (v2)
  {
    *(a1 + 28144) = 0;
    free(v2);
  }

  v3 = *(a1 + 27408);
  if (v3)
  {
    *(a1 + 27408) = 0;

    free(v3);
  }
}

void sbp_ltm_deallocateLtcCorrectionTexture(uint64_t a1)
{
  v2 = a1 + 28672;
  FigMetalDecRef();
  v3 = *(a1 + 29656);
  *(a1 + 29656) = 0;

  *(v2 + 1002) = 1;
  if (*(v2 + 972) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  *(v2 + 1012) = v4;
  *(v2 + 1004) = 0;
}

double _resetFirstFrameParameters(uint64_t a1)
{
  v2 = a1 + 27104;
  *(a1 + 32) = 1;
  *(a1 + 30096) = 1;
  *(a1 + 36) = 0;
  *(a1 + 10682) = 257;
  [*(a1 + 27128) reset];
  *v2 = 257;
  *(a1 + 29352) = 0x3FF0000000000000;
  FigMotionInitializeQuaternion((a1 + 28096));
  FigMotionInitializeQuaternion((a1 + 28248));
  *(v2 + 1136) = 0;
  *(a1 + 29164) = 0x3BA3D70A00000000;
  *(a1 + 29340) = 0;
  *(a1 + 29252) = 0;
  v3 = (a1 + 27872);
  v4 = 7;
  do
  {
    FigMotionInitializeQuaternion(v3 - 56);
    FigMotionInitializeQuaternion(v3 - 28);
    FigMotionInitializeQuaternion(v3);
    v3 += 4;
    --v4;
  }

  while (v4);
  v5 = *(v2 + 44);
  if ((v5 - 1) < 3)
  {
    *(v2 + 2416) = v5 == 2;
    if (*(v2 + 2508))
    {
      [*(a1 + 29648) reset];
    }

    FigMetalDecRef();
    v6 = *(a1 + 29656);
    *(a1 + 29656) = 0;

    *(v2 + 2569) = 0x1000000;
    *(v2 + 2576) = 0x300000000;
    *(v2 + 2540) = 0;
    *(v2 + 2288) = 0;
    *(a1 + 29384) = 0;
    if (*(v2 + 2674))
    {
      *(v2 + 2684) = 0;
      *(v2 + 2676) = 0xFFFFFFFFLL;
      *(v2 + 2692) = 1;
    }

    *(v2 + 2344) = 0;
    *(a1 + 29440) = 0;
    [*(a1 + 29400) reset];
    v7 = [*(a1 + 30136) utilities];
    [v7 resetCoefficientsFilter];

    v8 = *(a1 + 29400);
    if (v8)
    {
      objc_msgSend_getQuaternionSmoothingArrays(v8, 0, 0, 0, 0);
    }

    v5 = *(v2 + 44);
  }

  if (v5 == 5)
  {
    v9 = [*(a1 + 30136) utilities];
    [v9 resetCoefficientsFilter];
  }

  v10 = *(a1 + 29568);
  if (v10)
  {
    [v10 reset];
  }

  v11 = *(a1 + 29744);
  if (v11)
  {
    [v11 reset];
  }

  v12 = *(a1 + 30064);
  if (v12)
  {
    [v12 resetState];
    v13 = *(a1 + 30064);
    *(a1 + 30064) = 0;
  }

  v14 = *(a1 + 30288);
  if (v14)
  {
    [v14 reset];
  }

  *(v2 + 1712) = 0;
  result = 0.0;
  *(a1 + 29760) = 0u;
  *(v2 + 1628) = 0;
  *(v2 + 1704) = -1082130432;
  *(a1 + 29824) = 0u;
  *(a1 + 29840) = 0u;
  *(a1 + 29856) = 0u;
  *(a1 + 29872) = 0u;
  *(a1 + 29888) = 0u;
  *(a1 + 29904) = 0u;
  *(a1 + 29920) = 0u;
  *(a1 + 29936) = 0u;
  *(a1 + 29952) = 0u;
  *(a1 + 29968) = 0u;
  *(a1 + 29984) = 0u;
  *(a1 + 30000) = 0u;
  *(a1 + 30016) = 0u;
  *(a1 + 30032) = 0u;
  return result;
}

__CFString *sbp_gvs_copyDebugDescription(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_GyroVideoStabilization %p>", a1);
  return Mutable;
}

uint64_t sbp_gvs_copyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    emitter = fig_log_get_emitter();
    v9 = v4;
    v10 = 4294954511;
    v11 = 8755;
LABEL_3:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< GyroVideoStabilizationV2 >>>>", v11, v9);
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v9 = v4;
    v10 = 4294954516;
    v11 = 8759;
    goto LABEL_3;
  }

  v13 = DerivedStorage;
  if (CFEqual(a2, kFigSampleBufferProcessorProperty_SourcePixelBufferAttributes))
  {
    Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    qmemcpy(v26, "v024f024024x02fx024p02fp0v8&0f8&0vx&0fx&0v8-0f8-0v8/0f8/0v8|0f8|0vx-0fx-0vx/0fx/0vx|0fx|", 88);
    IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
    valuePtr = 0;
    v16 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    for (i = 0; i != 88; i += 4)
    {
      v18 = *(v13 + 40);
      if (!v18 || v18 == *(v26 + i))
      {
        v19 = CFNumberCreate(0, kCFNumberSInt32Type, v26 + i);
        CFArrayAppendValue(v16, v19);
        CFRelease(v19);
      }
    }

    CFDictionaryAddValue(Mutable, kCVPixelBufferPixelFormatTypeKey, v16);
    CFRelease(v16);
    CFDictionaryAddValue(Mutable, kCVPixelBufferIOSurfacePropertiesKey, IOSurfacePropertiesDictionary);
    Value = CFDictionaryGetValue(IOSurfacePropertiesDictionary, kIOSurfaceCacheMode);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      PixelBufferCacheModeArray = FigCreatePixelBufferCacheModeArray();
      CFDictionaryAddValue(Mutable, kCVPixelBufferCacheModeKey, PixelBufferCacheModeArray);
      CFRelease(PixelBufferCacheModeArray);
    }

    CFRelease(IOSurfacePropertiesDictionary);
    result = 0;
    *a4 = Mutable;
  }

  else
  {
    if (CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_VideoStabilizationDisabled))
    {
      v22 = &kCFBooleanTrue;
      v23 = *(v13 + 84);
    }

    else
    {
      if (!CFEqual(a2, kFigVideoStabilizationSampleBufferProcessorProperty_FlipHorizontalOrientation))
      {
        return 4294954512;
      }

      v22 = &kCFBooleanTrue;
      v23 = *(v13 + 203);
    }

    if (!v23)
    {
      v22 = &kCFBooleanFalse;
    }

    v24 = CFRetain(*v22);
    result = 0;
    *a4 = v24;
  }

  return result;
}

uint64_t sbp_configureOverscanParameters(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  v6 = a2 - *(a1 + 29688);
  v7 = (v6 >> 1);
  if ((v7 & 0x80000000) != 0 || (v9 = a3 - *(a1 + 29692), v10 = (v9 >> 1), (v10 & 0x80000000) != 0))
  {
    sbp_configureOverscanParameters_cold_10(&v27 + 1);
    return HIDWORD(v27);
  }

  v13 = (a2 - (v6 & 0xFFFFFFFE)) | ((a3 - (v9 & 0xFFFFFFFE)) << 32);
  v14 = v7 | (v10 << 32);
  *a5 = v14;
  a5[1] = v13;
  *a4 = *a5;
  if (*(a1 + 29480))
  {
    v16 = *(a1 + 29688);
    v17 = *(a1 + 29692);
    v18 = *(a1 + 29488);
    v19 = *(a1 + 29496);
    v20 = *(a1 + 29504);
    v21 = *(a1 + 29512);
    v32.origin.x = v18;
    v32.origin.y = v19;
    v32.size.width = v20;
    v32.size.height = v21;
    if (CGRectIsEmpty(v32))
    {
      sbp_configureOverscanParameters_cold_9(&v27 + 1);
    }

    else
    {
      v22 = v20;
      if (v16 < v20)
      {
        sbp_configureOverscanParameters_cold_8(&v27 + 1);
      }

      else
      {
        v23 = v21;
        if (v17 < v21)
        {
          sbp_configureOverscanParameters_cold_7(&v27 + 1);
        }

        else if (v18)
        {
          sbp_configureOverscanParameters_cold_1(&v27 + 1);
        }

        else if (v19)
        {
          sbp_configureOverscanParameters_cold_2(&v27 + 1);
        }

        else if (v22)
        {
          sbp_configureOverscanParameters_cold_3(&v27 + 1);
        }

        else if (v23)
        {
          sbp_configureOverscanParameters_cold_4(&v27 + 1);
        }

        else if (v22 + 2 * v18 == v16)
        {
          if (v23 + 2 * v19 == v17)
          {
LABEL_13:
            v7 = (v7 + *(a1 + 29488));
            v10 = (v10 + *(a1 + 29496));
            v14 = v7 | (v10 << 32);
            goto LABEL_14;
          }

          sbp_configureOverscanParameters_cold_6(&v27 + 1);
        }

        else
        {
          sbp_configureOverscanParameters_cold_5(&v27 + 1);
        }
      }
    }

    v24 = HIDWORD(v27);
    if (HIDWORD(v27))
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v5, v26, v27, v28, v29, v30, v31);
      return v24;
    }

    goto LABEL_13;
  }

LABEL_14:
  v24 = 0;
  *a4 = v14;
  *(a4 + 8) = (a2 - 2 * v7) | ((a3 - 2 * v10) << 32);
  return v24;
}

id sbp_initializeGPUWithRenderMethod(uint64_t a1)
{
  if ((*(a1 + 216) & 1) == 0)
  {
    if (*(a1 + 416))
    {
      FigCFDictionaryGetIntIfPresent();
    }

    else if (*(a1 + 27148) == 2)
    {
      *(a1 + 212) = 1;
    }
  }

  v2 = *(a1 + 88);
  v3 = *(a1 + 212);

  return AffineTransformSetRenderMethod(v2, v3);
}

BOOL sbp_gvs_verifyInputBuffer(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  IOSurface = CVPixelBufferGetIOSurface(a1);
  Width = CVPixelBufferGetWidth(a1);
  if ((Width & 3) != 0)
  {
    return 0;
  }

  v6 = Width;
  result = 0;
  if (PixelFormatType <= 1534621231)
  {
    if (PixelFormatType <= 762869297)
    {
      if (PixelFormatType <= 645428785)
      {
        if (PixelFormatType <= 645424687)
        {
          if (PixelFormatType == 641230384)
          {
            goto LABEL_63;
          }

          v7 = 641234480;
        }

        else
        {
          if (PixelFormatType == 645424688 || PixelFormatType == 645424690)
          {
            goto LABEL_63;
          }

          v7 = 645428784;
        }
      }

      else if (PixelFormatType > 762865199)
      {
        if (PixelFormatType == 762865200 || PixelFormatType == 762865202)
        {
          goto LABEL_63;
        }

        v7 = 762869296;
      }

      else
      {
        if (PixelFormatType == 645428786 || PixelFormatType == 758670896)
        {
          goto LABEL_63;
        }

        v7 = 758674992;
      }

      goto LABEL_62;
    }

    if (PixelFormatType <= 796423729)
    {
      if (PixelFormatType > 796419631)
      {
        if (PixelFormatType == 796419632 || PixelFormatType == 796419634)
        {
          goto LABEL_63;
        }

        v7 = 796423728;
      }

      else
      {
        if (PixelFormatType == 762869298 || PixelFormatType == 792225328)
        {
          goto LABEL_63;
        }

        v7 = 792229424;
      }

      goto LABEL_62;
    }

    if (PixelFormatType <= 1380411456)
    {
      if (PixelFormatType == 796423730 || PixelFormatType == 875704422)
      {
        goto LABEL_63;
      }

      v7 = 875704438;
      goto LABEL_62;
    }

    if (PixelFormatType != 1380411457)
    {
      if (PixelFormatType == 1530422832)
      {
        goto LABEL_63;
      }

      v7 = 1530426928;
      goto LABEL_62;
    }

    return IOSurface || CVPixelBufferGetBytesPerRowOfPlane(a1, 0) == v6;
  }

  if (PixelFormatType > 2033463855)
  {
    if (PixelFormatType > 2088269359)
    {
      if (PixelFormatType > 2100852271)
      {
        if (PixelFormatType == 2100852272 || PixelFormatType == 2105046576)
        {
          goto LABEL_63;
        }

        v7 = 2105042480;
      }

      else
      {
        if (PixelFormatType == 2088269360 || PixelFormatType == 2088269362)
        {
          goto LABEL_63;
        }

        v7 = 2100848176;
      }

      goto LABEL_62;
    }

    if (PixelFormatType > 2084075055)
    {
      if (PixelFormatType == 2084075056 || PixelFormatType == 2088265264)
      {
        goto LABEL_63;
      }

      v7 = 2088265266;
      goto LABEL_62;
    }

    if (PixelFormatType != 2033463856 && PixelFormatType != 2037741171)
    {
      v7 = 2084070960;
      goto LABEL_62;
    }

LABEL_70:
    if (IOSurface)
    {
      return 1;
    }

    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    v11 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v12 = CVPixelBufferGetBytesPerRowOfPlane(a1, 2uLL);
    if (BytesPerRowOfPlane == v6)
    {
      v13 = v12;
      result = 0;
      if (v11 == v6 >> 1 && v13 == v6 >> 1)
      {
        return 1;
      }

      return result;
    }

    return 0;
  }

  if (PixelFormatType <= 1885745711)
  {
    if (PixelFormatType > 1751411058)
    {
      if (PixelFormatType != 1751411059)
      {
        if (PixelFormatType == 1882468912)
        {
          goto LABEL_63;
        }

        v7 = 1882468914;
        goto LABEL_62;
      }

      return IOSurface || CVPixelBufferGetBytesPerRowOfPlane(a1, 0) == v6;
    }

    if (PixelFormatType == 1534621232)
    {
      goto LABEL_63;
    }

    if (PixelFormatType != 1714696752)
    {
      return result;
    }

    goto LABEL_70;
  }

  if (PixelFormatType > 2016686641)
  {
    if (PixelFormatType == 2016686642 || PixelFormatType == 2019963440)
    {
      goto LABEL_63;
    }

    v7 = 2019963442;
  }

  else
  {
    if (PixelFormatType == 1885745712 || PixelFormatType == 1885745714)
    {
      goto LABEL_63;
    }

    v7 = 2016686640;
  }

LABEL_62:
  if (PixelFormatType != v7)
  {
    return result;
  }

LABEL_63:
  if (IOSurface)
  {
    return 1;
  }

  v8 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v9 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  result = 0;
  if (v8 == v6 && v9 == v6)
  {
    return 1;
  }

  return result;
}

CFTypeRef _getMetadataDictionary(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = kFigCaptureSampleBufferAttachmentKey_MetadataDictionary;

    return CMGetAttachment(a1, v3, 0);
  }

  else
  {
    _getMetadataDictionary_cold_1(a1, a2);
    return 0;
  }
}

uint64_t sbp_emitPendingFrames(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 29720))
  {
    if (!a2 && !a3)
    {
      return result;
    }
  }

  else if (!a2 && !a3 && !*(result + 29778) && !*(result + 25))
  {
    return result;
  }

  v7 = *(result + 8);
  v6 = *(result + 16);

  return v7(v6, a2, a3);
}

uint64_t _getFrameRateConversionStatus(const void *a1, uint64_t a2)
{
  if (_getMetadataDictionary(a1, a2))
  {
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  else
  {
    _getFrameRateConversionStatus_cold_1();
    return 0;
  }
}

uint64_t sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers(uint64_t a1, const __CFDictionary *a2)
{
  v4 = a1 + 27148;
  v5 = *(a1 + 176);
  v6 = *(a1 + 176);
  v7 = *(a1 + 29400);
  v218 = 0;
  v217 = 0;
  v216 = 0;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v214 = 0u;
  v215 = 0u;
  v219 = 0;
  v220 = 0;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  if (*(v4 + 989))
  {
    v8 = a1 + 10688;
  }

  else
  {
    v8 = 0;
  }

  if (*(v4 + 989))
  {
    v9 = *(*(a1 + 29408) + 8 * *(v4 + 2296));
  }

  else
  {
    v9 = 0;
  }

  v10 = (v4 + 1132);
  if (*(v4 + 1132))
  {
    v11 = (v4 + 1132);
  }

  else
  {
    v11 = 0;
  }

  v12 = GVSExtractMetadataFromTopToBottomRows(a2, (a1 + 424), *(a1 + 27128), v8, a1 + 336, (a1 + 128), &v219, v213, &v217, &v216, v9, v11, v6);
  if (v12)
  {
    x_low = v12;
    sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers_cold_1();
    goto LABEL_141;
  }

  v14 = 0.0;
  if (*v10 && *(v4 + 1652) == 1)
  {
    v13.i32[0] = *(v4 + 1588);
    v15.f32[0] = FigMotionAdjustParallaxShiftForScalingFactor(*(v4 + 1584), *&v13, *(v4 + 1660), *&v220.x);
    v15.i32[1] = v16;
    v13 = vdup_lane_s32(*(&v219.x + 4), 0);
    v14 = COERCE_DOUBLE(vdiv_f32(v15, v13));
  }

  v17 = v216;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  if (*(v4 + 2656) == 1)
  {
    LODWORD(point[0].x) = 1065353216;
    if (FigCFDictionaryGetFloatIfPresent())
    {
      *v230 = HIDWORD(v220.x);
      FigCFDictionaryGetFloatIfPresent();
      v19 = *(&v220.x + 1);
      v21 = *&point[0].x;
      if (*(&v220.x + 1) != *v230)
      {
        v21 = (*(&v220.x + 1) / *v230) * *&point[0].x;
        *&point[0].x = v21;
      }

      v20 = logf(v21);
      v22 = *(v4 + 2664);
      v23 = *(v4 + 2668);
      v24 = GVSComputeMinimumZoomFactor((&v226 + 8), (a1 + 152));
      v18 = fminf(fmaxf(v24 * powf(v19 / v24, 1.0 - fminf(fmaxf(v22, 0.0), 1.0)), v24), v23 * v24);
    }

    else
    {
      *(v4 + 2656) = 0;
    }
  }

  if (*(v4 + 989))
  {
    v25 = *(v4 + 2296);
    v26 = *(*(a1 + 29408) + 8 * v25);
    v27 = *(*(a1 + 29416) + 8 * v25);
    if (v6 == 1)
    {
      *v27 = *v26;
    }

    else if (v6 >= 1)
    {
      v30 = 0;
      v31 = (*(a1 + 180) - 1);
      do
      {
        v27[v30] = v26[((v31 * v30) / (v6 - 1))];
        ++v30;
      }

      while (v5 != v30);
    }

    if (*(v4 + 988) || *v4 == 3 || *v10)
    {
      if (v6 < 1)
      {
        v33 = 0;
      }

      else
      {
        v32 = *(*(a1 + 29416) + 8 * *(v4 + 2296));
        v33 = 0;
        v34 = v5;
        do
        {
          v35 = *v32++;
          v13.i32[1] = v35.i32[1];
          v33 = vadd_f32(v33, v35);
          --v34;
        }

        while (v34);
      }

      v13.f32[0] = v6;
      v29 = vsub_f32(vdiv_f32(v33, vdup_lane_s32(v13, 0)), v17);
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v36 = *(a1 + 29424);
    v37 = *(v4 + 2296);
    if (v36)
    {
      v38 = (v36 + 240 * v37);
      if (*v38 || v38[1])
      {
        v196 = v29;
        [*v38 reset];
        [v38[1] reset];
        sbp_gvs_extractDistortionData(*(a1 + 28864), a2, &v219, *(a1 + 29136), v38, *(a1 + 336));
        v29 = v196;
        v37 = *(v4 + 2296);
      }
    }

    v39 = *(a1 + 29432);
    if (v39)
    {
      v40 = v39 + 12 * v37;
      v41 = v217;
      *(v40 + 8) = v218;
      *v40 = v41;
      v37 = *(v4 + 2296);
    }

    v42 = *(v4 + 2304);
    v43 = v37 + v42 + 1;
    do
    {
      v43 -= v42;
    }

    while (v43 >= v42);
    *(v4 + 2296) = v43;
    v44 = *(v4 + 2300);
    if (v44 < v42)
    {
      *(v4 + 2300) = v44 + 1;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  if (*v4 == 3 && (v192 = v29, Value = CFDictionaryGetValue(a2, kFigVideoStabilizationSampleBufferProcessorMetadata_InputFrameCropOffset), v29 = v192, Value))
  {
    point[0].x = 0.0;
    point[0].y = 0.0;
    CGPointMakeWithDictionaryRepresentation(Value, point);
    v46 = *(a1 + 128);
    v47.i64[0] = v46;
    v47.i64[1] = SHIDWORD(v46);
    v29 = vsub_f32(v192, vcvt_f32_f64(vmulq_f64(point[0], vcvtq_f64_s64(v47))));
    v220.y = 0.0;
  }

  else
  {
    v17 = vsub_f32(v17, *&v220.y);
    if (!v28)
    {
      FigMotionInitializeQuaternion(&v214);
      goto LABEL_53;
    }
  }

  v193 = v29.f32[0];
  v48 = *(&v219.x + 1);
  LODWORD(point[0].x) = atanf(v29.f32[1] / *(&v219.x + 1));
  *(&point[0].x + 1) = -atanf(v193 / v48);
  LODWORD(point[0].y) = 0;
  FigMotionQuaternionFromDeltaRotation(point);
  *&v214 = v49;
  *(&v214 + 1) = v50;
  *&v215 = v51;
  *(&v215 + 1) = v52;
LABEL_53:
  if (*(v4 + 1092) == 1)
  {
    *&v214 = FigMotionMultiplyQuaternions(&v214, (a1 + 28248));
    *(&v214 + 1) = v53;
    *&v215 = v54;
    *(&v215 + 1) = v55;
  }

  v191 = v20;
  if (*(v4 + 2588) <= 0.0)
  {
    v74 = 0.0;
    v67 = INFINITY;
    v75 = NAN;
    v66 = NAN;
  }

  else
  {
    v56 = &v213[4 * v5];
    v57 = *(v56 + 1);
    *v230 = *v56;
    *&v230[16] = v57;
    point[0].x = FigMotionInverseOfQuaternion(v230);
    point[0].y = v58;
    point[1].x = v59;
    point[1].y = v60;
    LODWORD(v228) = GVSRotateVectorByQuaternion(&v217, point).u32[0];
    *(&v228 + 4) = __PAIR64__(v62, v61);
    GVSComputeRollPitchFromGravity(&v228);
    v66 = v63;
    v67 = *v64.i32;
    v68 = *(a1 + 29744);
    if (v68)
    {
      v69 = *(&v223 + 1);
      v70 = v68;
      *&v71 = v66;
      *&v72 = v67;
      [v70 updateRoll:v71 pitch:v72 atTime:v69];
      [v70 filteredRoll];
      v74 = v73;
    }

    else
    {
      *v64.i32 = roundf(v63 / 1.5708) + -2.0;
      *v65.i32 = *v64.i32 + (truncf(*v64.i32 * 0.25) * -4.0);
      v76.i64[0] = 0x8000000080000000;
      v76.i64[1] = 0x8000000080000000;
      v74 = (*vbslq_s8(v76, v65, v64).i32 + 2.0) * 1.5708;
    }

    v75 = _computeAdjustedRollForHorizonCorrection(v66, v67, v74, *(v4 + 2588));
  }

  v212 = 0;
  if (*v4 == 3)
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (!v212)
    {
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v77 = *(a1 + 29568);
  if (v77)
  {
    v78 = *(v4 + 2388);
    if (v78 == 11)
    {
      if (*&v222 <= 0.00435000006)
      {
        [v77 suspend];
      }

      else if (*&v222 >= 0.00499999989)
      {
        [v77 resume];
      }

      v78 = *(v4 + 2388);
    }

    v189 = v75;
    v190 = v66;
    v79 = v17;
    v80 = v67;
    v81 = v74;
    v82 = v19;
    v83 = v18;
    v84 = v14;
    if (v78 == 12)
    {
      point[0].x = 0.0;
      GVSComputeMotionBlur(a1 + 424, 0, &v219, (a1 + 360), point);
      x = point[0].x;
    }

    else
    {
      x = *&v224;
    }

    [*(a1 + 29568) updateBlurVector:x atTime:*(&v223 + 1)];
    v194 = v86;
    [*(a1 + 29568) accumulationFilterPole];
    v88 = v87;
    v89 = (v87 + 1.0) / ((v88 + v88) * *(&v219.x + 1));
    v231[0] = -atanf(vmuls_lane_f32(v89, v194, 1));
    v231[1] = atanf(v89 * v194.f32[0]);
    v231[2] = 0.0;
    FigMotionQuaternionFromDeltaRotation(v231);
    *v230 = v90;
    *&v230[8] = v91;
    *&v230[16] = v92;
    *&v230[24] = v93;
    v228 = 0u;
    v229 = 0u;
    FigMotionInitializeQuaternion(&v228);
    if (*(a1 + 32))
    {
      v94 = v229;
      *(a1 + 29576) = v228;
      *(a1 + 29592) = v94;
    }

    point[0].x = FigMotionMultiplyQuaternions((a1 + 29576), v230);
    point[0].y = v95;
    point[1].x = v96;
    point[1].y = v97;
    FigMotionInterpolateQuaternionsByAngle(&v228, &point[0].x, v88);
    point[0].x = v98;
    point[0].y = v99;
    point[1].x = v100;
    point[1].y = v101;
    v102 = point[1];
    *(a1 + 29576) = point[0];
    *(a1 + 29592) = v102;
    *&v210 = v98;
    *(&v210 + 1) = v99;
    *&v211 = v100;
    *(&v211 + 1) = v101;
    v103 = &v213[4 * *(a1 + 176)];
    v104 = *(v103 + 1);
    point[0] = *v103;
    point[1] = v104;
    *&v230[8] = vnegq_f64(*&point[0].y);
    *v230 = point[0].x;
    *&v230[24] = -v104.y;
    *&v208 = FigMotionMultiplyQuaternions(&point[0].x, &v210);
    *(&v208 + 1) = v105;
    *&v209 = v106;
    *(&v209 + 1) = v107;
    *&v208 = FigMotionMultiplyQuaternions(&v208, v230);
    *(&v208 + 1) = v108;
    *&v209 = v109;
    *(&v209 + 1) = v110;
    v14 = v84;
    v19 = v82;
    v18 = v83;
    v74 = v81;
    v67 = v80;
    v17 = v79;
    v75 = v189;
    v66 = v190;
  }

  else
  {
    FigMotionInitializeQuaternion(&v210);
    FigMotionInitializeQuaternion(&v208);
  }

  v207 = 0;
  FigCFDictionaryGetInt64IfPresent();
  [v7 openForNewData];
  if (([v7 centerIndex] & 0x80000000) != 0)
  {
    sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers_cold_2(point);
    x_low = LODWORD(point[0].x);
  }

  else
  {
    v195 = v5;
    if (*(v4 + 2656) == 1)
    {
      *&point[0].x = __PAIR64__(LODWORD(v19), LODWORD(v191));
      *&point[0].y = v18;
      *(&point[0].y + 4) = 0.0;
      [v7 setZoomSmoothingMetadataInput:point];
    }

    v204 = v225;
    v205 = v226;
    v206 = v227;
    v200 = v221;
    v201 = v222;
    v202 = v223;
    v203 = v224;
    point[0] = v219;
    point[1] = v220;
    [v7 setCameraMetadataInput:point];
    [v7 setDidHaveMotionDataInput:*(a1 + 10682) != 0];
    [v7 setAppliedCenterAdjustmentInput:{v214, v215}];
    [v7 setMotionBlurAdjustmentInput:{v208, v209}];
    [v7 setIsLivePhotoKeyFrameInput:v212 != 0];
    [v7 setSerialNumberInput:v207];
    [v7 setNormalizedOutputShiftInput:{COERCE_DOUBLE(vdiv_f32(vneg_f32(v17), vdup_lane_s32(*(&v219.x + 4), 0)))}];
    [v7 setNormalizedInputShiftInput:v14];
    if ((v5 & 0x80000000) == 0)
    {
      v113 = 0;
      v114 = 32 * (v5 + 1);
      do
      {
        v115 = [v7 originalQuaternionsInput] + v113;
        v116 = *&v213[v113 / 8 + 2];
        *v115 = *&v213[v113 / 8];
        v115[1] = v116;
        memset(point, 0, sizeof(point));
        point[0].x = FigMotionMultiplyByInverseOfQuaternion(&v214, &v210);
        point[0].y = v117;
        point[1].x = v118;
        point[1].y = v119;
        v120 = ([v7 quaternionsInput] + v113);
        v111 = FigMotionMultiplyQuaternions(&v213[v113 / 8], &point[0].x);
        *v120 = v111;
        v120[1] = v112;
        *(v120 + 2) = v121;
        *(v120 + 3) = v122;
        v113 += 32;
      }

      while (v114 != v113);
    }

    v123 = v195;
    if (*(v4 + 2588) > 0.0)
    {
      *&v111 = v66;
      *&v112 = v67;
      [v7 setRollPitchInput:{v111, v112}];
      *&v124 = v74;
      [v7 setRollHorizonTargetInput:v124];
      v125 = [v7 quaternionsInput];
      [v7 setHorizonQuaternionsInput:{_adjustQuaternionForRollCorrection(&v125[4 * v195], v75 - v66, v126, v127, v128, v129)}];
    }

    v130 = *(&v223 + 1);
    v198 = *(&v223 + 1);
    if (*v4 == 2)
    {
      FigCFDictionaryGetDoubleIfPresent();
      v130 = v198;
    }

    [v7 setOutputFrameTimeInput:v130];
    if ([v7 count] < 1)
    {
      goto LABEL_99;
    }

    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    memset(point, 0, sizeof(point));
    if (v7)
    {
      objc_msgSend_getSmoothingAnalysisArrays(v7);
    }

    [v7 outputFrameTimeInput];
    v132 = v131 - *(v200 + 8 * v203);
    v133 = v132;
    *&v132 = v133;
    [v7 setFrameDurationInput:v132];
    if ([v7 count] >= 2)
    {
      [v7 frameDurationPrevious];
      v133 = (*&v134 + v133) * 0.5;
    }

    if (((*&v134 = v133, [v7 setFrameDurationPrevious:v134], *v10) || *(a1 + 392) == 1) && ((v135 = *(*&point[1].y + 144 * v203 + 136), !v7) ? (v136 = 0) : (objc_msgSend_cameraMetadataInput(v7), v136 = v197), v136 != v135))
    {
      v140 = 0;
    }

    else
    {
LABEL_99:
      v137 = *&v223;
      v138 = *(a1 + 29400);
      if ([v138 count] <= 1)
      {
        v140 = 1;
      }

      else
      {
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        memset(point, 0, sizeof(point));
        if (v138)
        {
          objc_msgSend_getSmoothingAnalysisArrays(v138);
          v139 = v203;
        }

        else
        {
          v139 = 0;
        }

        [v138 outputFrameTimeInput];
        v142 = v141 - *(v200 + 8 * v139);
        v143 = 1.0;
        if (v142 > 0.0 && !*(v4 + 2372))
        {
          v143 = 0.0333333333 / v142;
        }

        *(a1 + 29352) = v143;
        v144 = cos(0.000246 / v143);
        if (*(a1 + 176) < 1)
        {
          v140 = 1;
        }

        else
        {
          v145 = v144;
          v146 = 0;
          v147 = 0;
          do
          {
            v148 = [v138 originalQuaternionsInput];
            v149 = fabs(FigMotionMultiplyByInverseOfQuaternion(&v148[v146], (*(*&point[0].x + 8 * v147) + 32 * v139)));
            v140 = v149 >= v145;
            if (v149 < v145)
            {
              break;
            }

            ++v147;
            v146 += 32;
          }

          while (v147 < *(a1 + 176));
        }

        if (*(v4 + 2372))
        {
          *v230 = 0;
          Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
          v152 = fabsf(*v230) > 0.6 && Float32IfPresent != 0;
          if (v137 <= 0.0)
          {
            v153 = 0.00006324555;
          }

          else
          {
            v153 = 0.00006324555 / (0.023223 / v137);
          }

          v154 = cos(v153);
          if (*(a1 + 176) >= 2)
          {
            v156 = v154;
            v157 = 1;
            v158 = 32;
            do
            {
              v159 = fabs(FigMotionMultiplyByInverseOfQuaternion(([v138 originalQuaternionsInput] + v158 - 32), (objc_msgSend(v138, "originalQuaternionsInput") + v158)));
              v155 = v159 >= v156;
              if (v159 < v156)
              {
                break;
              }

              ++v157;
              v158 += 32;
            }

            while (v157 < *(a1 + 176));
          }

          else
          {
            v155 = 1;
          }

          v140 |= v152 || v155;
        }

        v123 = v195;
      }
    }

    [v7 setIsPhysicalTripodInput:v140 & 1];
    if (*(v4 + 3100) == 1)
    {
      v160 = [(__CFDictionary *)a2 objectForKeyedSubscript:kFigCaptureStreamMetadata_DetectedObjectsInfo];
      v161 = [v160 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsInfoKey_HumanFaces];
      v162 = [v161 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsKey_ObjectsArray];

      v163 = &v213[4 * v123];
      v164 = *v163;
      v165 = v163[1];
      v166 = v163[2];
      v167 = v163[3];
      x_high = HIDWORD(v219.x);
      v169 = COERCE_DOUBLE(vcvt_f32_f64(vaddq_f64(*(a1 + 336), vcvtq_f64_f32(v216))));
      v170 = COERCE_DOUBLE(vcvt_f32_s32(*(a1 + 128)));
      v171 = *(&v223 + 1);
      *v230 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      *&v230[16] = _Q0;
      FigCFDictionaryGetCGRectIfPresent();
      LODWORD(v176) = x_high;
      [*(a1 + 30288) updateFacePoseWithFaceDetections:v162 cameraPose:v164 focalLength:v165 imageCenter:v166 sourcePixelBufferDimensions:v167 finalCropRect:v176 currentCaptureTime:{v169, v170, *v230, *&v230[16], v171}];
      [*(a1 + 30288) facePose];
      point[0] = v177;
      point[1] = 0u;
      v200 = 0u;
      [v7 setFaceStabilizationDataInput:point];
      v178 = *(a1 + 176);
      v179 = v7;
      v180 = 0.0;
      if ([v179 count] >= 2)
      {
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        memset(point, 0, sizeof(point));
        if (v179)
        {
          objc_msgSend_getSmoothingAnalysisArrays(v179);
          v181 = v203;
        }

        else
        {
          v181 = 0;
        }

        [v179 outputFrameTimeInput];
        v183 = v182 - *(v200 + 8 * v181);
        v184 = [v179 originalQuaternionsInput];
        v185 = FigMotionMultiplyByInverseOfQuaternion(&v184[4 * v178], (*(*&point[0].x + 8 * v178) + 32 * v181));
        if (v183 >= 2.22044605e-16)
        {
          v180 = acos(v185) / v183;
        }
      }

      *&v186 = v180;
      [v179 setRotationRateInput:v186];
    }

    [*(a1 + 29400) commitData];
    x_low = 0;
  }

LABEL_141:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return x_low;
}

uint64_t sbp_ltm_checkPerVideoDisablement(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = (a1 + 28672);
  *(a1 + 29673) = 0;
  if (theDict)
  {
    v5 = kFigCaptureStreamMetadata_LTMCurve;
    if (CFDictionaryContainsKey(theDict, kFigCaptureStreamMetadata_LTMCurve))
    {
      v6 = CFDictionaryGetValue(theDict, v5);
      v3[1001] = [v6 intValue] == 2;
    }
  }

  if (v3[1001] == 1)
  {
    v7 = v3[1000] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v3[1002];
  v3[1002] = v8;
  v9 = *(a1 + 29656);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v12 = [*(a1 + 29648) allocateLTCsCorrectionTex:v3[968] forISPProcessing:*(a1 + 172) == 3];
    v13 = *(a1 + 29656);
    *(a1 + 29656) = v12;

    if (!*(a1 + 29656))
    {
      sbp_ltm_checkPerVideoDisablement_cold_1(&v14);
      return v14;
    }

    if ((v3[1002] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if (v9 && v8)
  {
LABEL_16:
    sbp_ltm_deallocateLtcCorrectionTexture(a1);
    return 0;
  }

  return result;
}

void _setAttachedMediaToSampleBuffer(const void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    if (v10)
    {
      v6 = kFigSampleBufferAttachmentKey_AttachedMedia;
      v7 = CMGetAttachment(a1, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
      v8 = [v7 mutableCopy];
      if (!v8)
      {
        v8 = [[NSMutableDictionary alloc] initWithCapacity:1];
      }

      [v8 setObject:v5 forKeyedSubscript:v10];
      if ([v8 count])
      {
        v9 = [v8 copy];
        CMSetAttachment(a1, v6, v9, 1u);
      }

      else
      {
        CMRemoveAttachment(a1, v6);
      }
    }

    else
    {
      _setAttachedMediaToSampleBuffer_cold_1();
    }
  }

  else
  {
    _setAttachedMediaToSampleBuffer_cold_2();
  }
}

void _runVideoDeghostingDetection(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = *(a2 + 16);
    while (1)
    {
      v5 = v4;
      if ((*(*(a2 + 8) + 24 * v4 + 16) & 1) == 0)
      {
        break;
      }

      v6 = *(a2 + 28);
      v4 += v6 + 1;
      do
      {
        v4 -= v6;
      }

      while (v4 >= v6);
      if (*(a2 + 20) == v4)
      {
        goto LABEL_11;
      }
    }

    v15 = v3;
    _updateVideoDeghostingGhostInformationLookAhead([v3 ghostInformationLookAheadPointer], a2, v4, *(a2 + 20));
    v7 = *(*a2 + 8 * v5);
    [v15 setSampleBuffer:v7];
    if ([v15 detectAndTrack])
    {
      _runVideoDeghostingDetection_cold_1();
    }

    v8 = 3 * v5;
    v9 = *(a2 + 8) + 24 * v5;
    *(v9 + 16) = 1;
    *v9 = v7;
    v10 = [NSDictionary alloc];
    v11 = [v15 detectionResult];
    v12 = [v10 initWithDictionary:v11];
    v13 = *(a2 + 8) + 8 * v8;
    v14 = *(v13 + 8);
    *(v13 + 8) = v12;

    v3 = v15;
  }

LABEL_11:
}

uint64_t _enqueueCoefficientsForSmartStyleFilterForwardLearning(uint64_t a1, CMAttachmentBearerRef target)
{
  if (!a1)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_7(0, target);
    v2 = 0;
LABEL_15:
    v4 = 0;
LABEL_19:
    v8 = 4294954516;
    goto LABEL_10;
  }

  v2 = target;
  if (!target)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_6();
    goto LABEL_15;
  }

  v4 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v4)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_5();
    v2 = 0;
    goto LABEL_19;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_1(v2);
  }

  v5 = CMGetAttachment(v2, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v2 = v5;
  if (!v5)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_4();
    goto LABEL_19;
  }

  v6 = [v5 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

  if (!v6)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_3();
    goto LABEL_19;
  }

  v7 = _enqueueCoefficientsForSmartStyleFilterForwardLearningFromCoefficientsSampleBuffer(a1, v6, v4);
  v8 = v7;
  if (v7)
  {
    _enqueueCoefficientsForSmartStyleFilterForwardLearning_cold_2(v7);
  }

LABEL_10:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v8;
}

uint64_t _removeSmartStyleAttachments(uint64_t a1, CMAttachmentBearerRef target)
{
  if (!a1)
  {
    _removeSmartStyleAttachments_cold_2(0, target);
    return 4294954516;
  }

  if (!target)
  {
    _removeSmartStyleAttachments_cold_1();
    return 4294954516;
  }

  result = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (result)
  {
    v4 = result;
    v15[0] = kFigCaptureStreamMetadataOutputKey_HumanFullBodiesMask;
    v15[1] = kFigCaptureStreamMetadataOutputKey_HumanSkinsMask;
    v15[2] = kFigCaptureStreamMetadataOutputKey_HumanHairMask;
    v15[3] = kFigCaptureStreamMetadataOutputKey_SkyMask;
    v15[4] = kFigCaptureStreamMetadataOutputKey_PreLTMThumbnail;
    v15[5] = kFigCaptureStreamMetadataOutputKey_LTMThumbnail;
    v15[6] = kFigCaptureStreamMetadataOutputKey_WeightSegmentMap;
    v15[7] = kFigCaptureStreamMetadataOutputKey_PostColorProcessingThumbnail;
    v15[8] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLinearThumbnail;
    v15[9] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
    v15[10] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
    v15[11] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients;
    v15[12] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients;
    [NSArray arrayWithObjects:v15 count:13];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          _setAttachedMediaToSampleBuffer(target, *(*(&v11 + 1) + 8 * i), 0);
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }

    return 0;
  }

  return result;
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer(uint64_t a1, char *a2)
{
  v4 = a1 + 27148;
  v264 = 0;
  SmoothingAnalysisArrays = *(a1 + 29400);
  if (SmoothingAnalysisArrays && (objc_msgSend_getQuaternionSmoothingArrays(SmoothingAnalysisArrays), SmoothingAnalysisArrays = *(a1 + 29400), v263 = 0u, v262 = 0u, v261 = 0u, SmoothingAnalysisArrays))
  {
    SmoothingAnalysisArrays = objc_msgSend_getSmoothingAnalysisArrays(SmoothingAnalysisArrays);
  }

  else
  {
    DWORD2(v263) = 0;
    *(&v262 + 1) = 0;
    *(&v261 + 1) = 0;
  }

  if (!a2)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_17(SmoothingAnalysisArrays);
    v13 = 0;
    v126 = 4294954516;
    goto LABEL_293;
  }

  v256 = a2;
  if (([*(a1 + 29400) centerIndex] & 0x80000000) != 0)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_16(&v267);
LABEL_144:
    v13 = 0;
LABEL_321:
    v126 = v267;
    goto LABEL_292;
  }

  v6 = [*(a1 + 29400) centerIndex];
  if (v6 >= [*(a1 + 29400) size])
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_1(&v267);
    goto LABEL_144;
  }

  if (*a1)
  {
    (*a1)(*(a1 + 16), 0, *(*(a1 + 29368) + 8 * *(v4 + 2236)));
  }

  sbuf = *(*(a1 + 29368) + 8 * *(v4 + 2236));
  v255 = DWORD2(v263);
  v13 = -49;
  if (*(v4 + 989))
  {
    memcpy(*(a1 + 28144), *(*(a1 + 29408) + 8 * *(v4 + 2292)), 8 * *(a1 + 180));
    memcpy((a1 + 28152), *(*(a1 + 29416) + 8 * *(v4 + 2292)), 8 * *(a1 + 176));
    *(a1 + 28208) = 0x100000CFEEDFACFLL;
    *(a1 + 28216) = 0x100000CFEEDFACFLL;
    v14 = *(a1 + 29424);
    if (v14)
    {
      __copy_assignment_16_16_s0_s8_t16w224(a1 + 28896, v14 + 240 * *(v4 + 2292));
    }
  }

  v315 = 0;
  v15 = 0uLL;
  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v310 = 0u;
  v16 = *(a1 + 29400);
  if (v16 && (objc_msgSend_getQuaternionSmoothingArrays(v16), v17 = *(a1 + 29400), v15 = 0uLL, v309 = 0u, v308 = 0u, v306 = 0u, v307 = 0u, v305 = 0u, v17))
  {
    objc_msgSend_getRollSmoothingArraysForBaseTransform_(v17);
    v18 = *(a1 + 29400);
    v15 = 0uLL;
    v303 = 0u;
    v304 = 0u;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    if (v18)
    {
      objc_msgSend_getSmoothingAnalysisArrays(v18);
      v19 = *(a1 + 29400);
      goto LABEL_19;
    }
  }

  else
  {
    v309 = v15;
    v308 = v15;
    v306 = v15;
    v307 = v15;
    v305 = v15;
  }

  v19 = 0;
  v303 = v15;
  v304 = v15;
  v301 = v15;
  v302 = v15;
  v299 = v15;
  v300 = v15;
LABEL_19:
  v298 = 1;
  v20 = *(v4 + 2308);
  v282 = 0u;
  v283 = 0u;
  v266 = 0;
  memset(v265, 0, sizeof(v265));
  if (v19)
  {
    objc_msgSend_getFaceSmoothingArrays(v19);
  }

  v21 = *(v4 + 2380);
  v254 = __PAIR64__(v314, DWORD1(v314));
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (*(v4 + 2656) == 1)
  {
    v22 = *(a1 + 29400);
    if (v22)
    {
      v324 = 0u;
      v323 = 0u;
      v322 = 0u;
      v321 = 0u;
      v320 = 0u;
      v319 = 0u;
      objc_msgSend_getSmoothingAnalysisArrays(v22);
      v23 = llroundf(1 * 0.8);
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 - 1;
      v26 = *(v321 + 8 * SDWORD2(v323));
      if (v26 <= v26 + 1.01)
      {
        v27 = (v321 + 8 * SDWORD2(v323) + 8);
        v28 = v24 - 1;
        v29 = -1;
        while (v28)
        {
          v30 = *v27++;
          ++v29;
          --v28;
          if (v30 > v26 + 1.01)
          {
            goto LABEL_34;
          }
        }
      }

      v29 = v25;
LABEL_34:
      if (*(v4 + 2672) <= 0)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(&v320 + 1);
      v33.n128_u32[1] = 0;
      v33.n128_u64[1] = 0;
      v316 = 0u;
      v317 = 0u;
      v318 = 0u;
      v34 = *(a1 + 29400);
      if (v34)
      {
        objc_msgSend_getZoomSmoothingArrays(v34);
      }

      if ((v31 & 0x80000000) == 0)
      {
        for (i = 0; ; ++i)
        {
          v36 = i + DWORD2(v317);
          v33.n128_u32[0] = *(v4 + 2660);
          v33.n128_f32[0] = GVSComputeSmoothedDigitalZoomFactor(&v316, i, v33);
          v37 = v316 + 20 * v36;
          LODWORD(v8) = *(v37 + 4);
          if (v33.n128_f32[0] < *&v8)
          {
            GVSComputeSmoothRamp(v33.n128_f32[0], *(v37 + 8), *&v8);
          }

          if (*(v4 + 2672) < 1)
          {
            *(v32 + 144 * v36 + 20) = v33.n128_u32[0];
            if (v31 == i)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v38 = (v316 + 20 * v36);
            v39 = *v38;
            v38[3] = v39 + logf(v33.n128_f32[0] / v38[1]);
            if (v31 == i)
            {
              v40 = 0;
              do
              {
                v41 = v40 + DWORD2(v317);
                v42 = GVSComputeDilatedTotalZoomFactor(&v316, *(v4 + 2672), v40);
                *(v316 + 20 * v41 + 16) = v42;
                ++v40;
              }

              while (v31 + 1 != v40);
              goto LABEL_51;
            }
          }
        }
      }

      if (*(v4 + 2672) >= 1)
      {
LABEL_51:
        if ((v29 & 0x80000000) == 0)
        {
          v43 = 0;
          v44 = v29 + 1;
          do
          {
            v45 = v43 + DWORD2(v317);
            v46 = GVSComputeSmoothedDilatedDigitalZoomFactor(&v316, *(v4 + 2672), v43);
            v47 = v316 + 20 * v45;
            if (v46 < *(v47 + 8))
            {
              v46 = *(v47 + 8);
            }

            *(v32 + 144 * v45 + 20) = v46;
            ++v43;
          }

          while (v44 != v43);
        }
      }

LABEL_56:
      v13 = -49;
    }

    else if ((sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_2(&v319, &v316, &v267) & 1) == 0)
    {
      v127 = v267;
      goto LABEL_237;
    }
  }

  v48 = HIDWORD(v303);
  v49 = v304;
  if (SHIDWORD(v303) > v304)
  {
LABEL_61:
    if (SDWORD1(v304) >= 2)
    {
      if (SHIDWORD(v303) <= DWORD2(v303) - DWORD2(v304))
      {
        v48 = DWORD2(v303) - DWORD2(v304);
      }

      if (v304 >= DWORD2(v303) + DWORD2(v304))
      {
        v49 = DWORD2(v303) + DWORD2(v304);
      }

      v53 = v48;
      v7 = *(&v299 + 1) + 32 * v48;
      v54 = v49;
      v55 = 32 * v48 + 32;
      v56 = v53 - 1;
      while (++v56 < v54)
      {
        v57 = v55 + 32;
        v58 = *(&v299 + 1) + v55;
        v59 = FigMotionMultiplyByInverseOfQuaternion((*(&v299 + 1) + v55), v7);
        v55 = v57;
        v7 = v58;
        if (fabs(v59) < 0.999999244)
        {
          if (*(v4 + 2016) >= 1)
          {
            *(v4 + 2308) = *(v4 + 2376);
          }

          goto LABEL_71;
        }
      }
    }

    *(v4 + 2308) = 1050253722;
    v60 = *(v4 + 2016);
    if (v60 < 255)
    {
      v61 = v60 + 1;
    }

    else
    {
      v61 = 255;
    }

    *(v4 + 2016) = v61;
    v21 = 0.3;
  }

  else
  {
    v50 = v304 - HIDWORD(v303) + 1;
    v51 = (*(&v301 + 1) + SHIDWORD(v303));
    while (1)
    {
      v52 = *v51++;
      if ((v52 & 1) == 0)
      {
        break;
      }

      if (!--v50)
      {
        goto LABEL_61;
      }
    }

LABEL_71:
    *(v4 + 2016) = 0;
  }

  v62 = *(v4 + 2588);
  if (v62 > 0.0)
  {
    if (*(a1 + 29744))
    {
      v63 = *(a1 + 29752);
      if (v63)
      {
        v252 = v20;
        v64 = v63;
        [v64 reset];
        v65 = v309;
        v66 = SHIDWORD(v308);
        if (v309 >= SHIDWORD(v308))
        {
          k = *(*(&v306 + 1) + 4 * v309);
          v68 = *(*(&v307 + 1) + 8 * v309);
          HIDWORD(v69) = -1073143301;
          do
          {
            for (j = *(*(&v306 + 1) + 4 * v65); ; j = j + -6.2832)
            {
              v71 = k + 3.14159265;
              if (j <= v71)
              {
                break;
              }
            }

            v72 = k + -3.14159265;
              ;
            }

            v73 = *(*(&v307 + 1) + 8 * v65);
            v74 = v68 - v73;
            *&v74 = v74;
            *&v69 = 0.3 / (*&v74 + 0.3);
            *&v74 = k;
            [v64 updateValue:v74 withPole:v69];
            v76 = v75;
            v77 = v306;
            if (*(v306 + 8 * v65 + 4) >= 1.0472)
            {
              [v64 reset];
              v77 = v306;
            }

            v78 = (v77 + 8 * v65);
            v79 = *v78;
            v80 = _computeAdjustedRollForHorizonCorrection(*v78, v78[1], v76, v62);
            v81 = v305;
            *&v86 = _adjustQuaternionForRollCorrection((*(&v305 + 1) + 32 * v65), v80 - v79, v82, v83, v84, v85);
            *(v81 + 16 * v65) = v86;
            v68 = v73;
            v117 = v65-- <= v66;
          }

          while (!v117);
        }

        v20 = v252;
      }
    }
  }

  if (!*(a1 + 29568))
  {
    if (v304 <= 0)
    {
      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_3();
    }

    else
    {
      v87 = v304;
      v88 = SHIDWORD(v303);
      v89 = v304 - 4;
      if (SDWORD2(v303) > v304 - 4)
      {
        v89 = DWORD2(v303);
      }

      if (DWORD2(v303) == HIDWORD(v303))
      {
        LODWORD(v90) = HIDWORD(v303);
      }

      else
      {
        LODWORD(v90) = v89;
      }

      if (v90 <= v304)
      {
        v91 = v90 - 4;
        v92 = *(&v300 + 1);
        v93 = v303;
        v90 = v90;
        v94 = v304 + 1;
        v95 = *(&v300 + 1) + 84;
        do
        {
          if (v91 <= v88)
          {
            v7 = v88;
          }

          else
          {
            v7 = v91;
          }

          v96 = v90 - 4;
          if (v90 - 4 <= v88)
          {
            v96 = v88;
          }

          if (v90 + 4 >= v87)
          {
            v97 = v87;
          }

          else
          {
            v97 = v90 + 4;
          }

          v98 = 0.0;
          v99 = 0.0;
          v100 = __OFSUB__(v97, v96);
          v101 = v97 - v96;
          if (v101 < 0 == v100)
          {
            v102 = v7 - 1;
            v7 = v95 + 144 * v7;
            do
            {
              v98 = v98 + *(v7 - 4);
              v99 = v99 + *v7;
              ++v102;
              v7 += 144;
            }

            while (v102 < v97);
          }

          v103 = (v101 + 1);
          v104 = v98 / v103;
          v105 = v99 / v103;
          v106 = v92 + 144 * v90;
          LODWORD(v8) = *(v106 + 80);
          LODWORD(v9) = *(v106 + 84);
          *(v93 + 4 * v90++) = sqrtf(((*&v9 - v105) * (*&v9 - v105)) + ((*&v8 - v104) * (*&v8 - v104)));
          ++v91;
        }

        while (v94 != v90);
      }
    }
  }

  if (SDWORD1(v304) < 1)
  {
    goto LABEL_152;
  }

  v107 = SDWORD2(v303);
  v108 = (v301 + 8 * SDWORD2(v303));
  v109 = *v108 + 0.75;
  if (v304 - DWORD2(v303) >= 15)
  {
    v110 = 15;
  }

  else
  {
    v110 = v304 - DWORD2(v303);
  }

  if (v108[v110] <= v109)
  {
    v111 = 1 - v110;
    v112 = (8 * v110 + 8 * SDWORD2(v303) + v301 + 8);
    v113 = v304 - DWORD2(v303) - v110;
    while (v113)
    {
      v114 = *v112++;
      --v111;
      --v113;
      if (v114 > v109)
      {
        v110 = -v111;
        goto LABEL_122;
      }
    }

    v110 = v304 - DWORD2(v303);
  }

LABEL_122:
  v115 = *(v4 + 2308);
  v116 = 1.0;
  if (*(a1 + 352))
  {
    v117 = v304 <= SHIDWORD(v303);
  }

  else
  {
    v117 = 1;
  }

  if (v117)
  {
LABEL_128:
    LODWORD(v8) = 1156579328;
    v120 = (1920.0 / *(a1 + 144)) * v116;
    if ((v110 & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_149;
  }

  v118 = *(v301 + 8 * v304) - *(v301 + 8 * SHIDWORD(v303));
  if (v118 > 0.0)
  {
    v119 = v118;
    v116 = fminf(fmaxf((((v304 - HIDWORD(v303)) / v119) * 0.042088) + -1.5505, 1.0), 3.5);
    goto LABEL_128;
  }

  sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_4();
  v120 = 1.0;
  if ((v110 & 0x80000000) == 0)
  {
LABEL_129:
    v121 = 0;
    v122 = (*(&v300 + 1) + 144 * v107 + 12);
    v123 = 0.0;
    LODWORD(v8) = 10.0;
    LODWORD(v9) = 1.75;
    LODWORD(v10) = 0.5;
    LODWORD(v11) = 2.0;
    *&v12 = v115;
    do
    {
      v124 = (*(v303 + 4 * v107 + 4 * v121) * v120) - *(v4 + 2392);
      if (v124 <= 0.0 || (!*(v4 + 988) ? (v125 = 2.0) : *v122 ? (v125 = 0.5) : (v125 = 2.0), v115 = fmaxf(fminf(*(v4 + 2376), 10.0) - (v125 * v124), 1.75), v115 >= *&v12))
      {
        v115 = *&v12;
      }

      else
      {
        v123 = fmaxf(v123, vabds_f32(*(v4 + 2308), v115) / (v121 + 1));
      }

      v122 += 144;
      ++v121;
      *&v12 = v115;
    }

    while (v110 + 1 != v121);
    goto LABEL_150;
  }

LABEL_149:
  v123 = 0.0;
LABEL_150:
  if (HIDWORD(v254) != v254)
  {
    goto LABEL_153;
  }

  *(v4 + 2308) = fmaxf(v21, fminf(*(v4 + 2308), v115));
LABEL_152:
  v123 = 0.0;
LABEL_153:
  v128 = llroundf((v304 - DWORD2(v303) + 1) * 0.8);
  if (v128 <= 1)
  {
    v129 = 1;
  }

  else
  {
    v129 = v128;
  }

  v130 = v129 - 1;
  v131 = *(v301 + 8 * SDWORD2(v303));
  v132 = v131 + 1.01;
  if (v131 <= v131 + 1.01)
  {
    v133 = (v301 + 8 * SDWORD2(v303) + 8);
    v134 = v129 - 1;
    v135 = -1;
    while (v134)
    {
      v136 = *v133++;
      v131 = v136;
      ++v135;
      --v134;
      if (v136 > v132)
      {
        goto LABEL_162;
      }
    }
  }

  v135 = v130;
LABEL_162:
  if (*(v4 + 3100) == 1)
  {
    if ((v135 & 0x80000000) == 0)
    {
      v137 = 0;
      do
      {
        LODWORD(v132) = *(v4 + 3136);
        [*(a1 + 30288) updateFaceFilteredQuaternionsWithFaceSmoothingArrays:v265 faceFilteringSigma:v137 centerFrameOffset:{v132, v131, v8, v9, v10, v11, v12}];
        v137 = (v137 + 1);
      }

      while (v135 + 1 != v137);
    }

    [*(a1 + 30288) updateFaceCorrectionStrengthWithFaceSmoothingArrays:v265];
  }

  if (v135 < 0)
  {
    v140 = 0;
    v179 = 1.0;
    v143 = 0;
    goto LABEL_205;
  }

  v258 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  HIDWORD(v248) = 1053609165;
  v141 = v20;
  v142 = 1.0;
  v143 = 0;
  v144 = 1;
LABEL_169:
  v249 = v144;
  v253 = v139;
  v259 = v141;
  v260 = v123;
  v145 = -v123;
  if (v138 <= v135)
  {
    v146 = v135;
  }

  else
  {
    v146 = v138;
  }

  v147 = v146 + 1;
  do
  {
    v326 = 1;
    v148 = v138 + 1;
    v149 = fmaxf(v21, fminf(*(v4 + 2376), *(v4 + 2308) + (v145 * (v138 + 1))));
    v150 = sbp_gvs_gaussianAverageComputeCorrection(a1, v138, 1, &v326, v149);
    if (v150)
    {
      v127 = v150;
      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_5();
LABEL_318:
      v13 = -49;
      goto LABEL_237;
    }

    if (!v326)
    {
      v250 = v140;
      *(&v251 + 1) = v20;
      v166 = v21;
      if (v149 < v21)
      {
        v168 = v21;
        v166 = 0.0;
        if ((sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_7(&v327, v325) & 1) == 0)
        {
          v172 = v327;
          v127 = v325[0];
LABEL_317:
          fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v127, v172, v248, 0x3D0F5C293DCCCCCDLL, v250, v251, v254, DWORD2(v263));
          goto LABEL_318;
        }
      }

      else
      {
        v167 = fminf(fmaxf(v138 * 0.4, 1.0), 10.0) * fmaxf(*(v4 + 2308) * 0.035, 0.1);
        v168 = v166;
        if ((v149 - v166) > v167)
        {
          while (1)
          {
            LOBYTE(v325[0]) = 0;
            v169 = sbp_gvs_gaussianAverageComputeCorrection(a1, v138, 1, v325, (v166 + v149) * 0.5);
            if (v169)
            {
              break;
            }

            if (LOBYTE(v325[0]))
            {
              v166 = (v166 + v149) * 0.5;
            }

            else
            {
              v149 = (v166 + v149) * 0.5;
            }

            if ((v149 - v166) <= v167)
            {
              goto LABEL_186;
            }
          }

          v127 = v169;
          sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_6(v169);
          v172 = v327;
          goto LABEL_317;
        }
      }

LABEL_186:
      v170 = *(v4 + 2308);
      v123 = fmaxf(v260, vabds_f32(v170, v166) / v148);
      v141 = fminf(v259, v166);
      v20 = *(&v251 + 1);
      v21 = v168;
      v140 = v250;
      if (v138 >= v135 || (v144 = 0, v138 = (v138 + 1), v139 = 1, v171 = v258 >= 4, ++v258, v171))
      {
        v298 = 0;
        v13 = -49;
LABEL_194:
        v173 = fmaxf(v21, fminf(*(v4 + 2376), v170 - v123));
        v174 = fminf(v173, fmaxf(v141, 1.75));
        if (HIDWORD(v254) == v254)
        {
          v20 = v174;
        }

        else
        {
          v20 = v173;
        }

        v175 = sbp_gvs_gaussianAverageComputeCorrection(a1, 0, 0, &v298, v20);
        if (v175)
        {
          v127 = v175;
          sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_8();
          goto LABEL_237;
        }

        if (!v298)
        {
          v176 = *(a1 + 29424);
          if (!v176)
          {
            goto LABEL_322;
          }

          [*(v176 + 240 * *(v4 + 2292)) reset];
          [*(*(a1 + 29424) + 240 * *(v4 + 2292) + 8) reset];
          v177 = sbp_gvs_gaussianAverageComputeCorrection(a1, 0, 0, &v298, v20);
          if (v177)
          {
            v127 = v177;
            sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_9();
            goto LABEL_237;
          }

          if (!v298)
          {
LABEL_322:
            sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_10();
          }
        }

        v178 = fmaxf(*(v4 + 2380), v20);
        goto LABEL_236;
      }

      goto LABEL_169;
    }

    if (!v138)
    {
      v142 = *(a1 + 196);
      v151 = *(a1 + 28112);
      v282 = *(a1 + 28096);
      v283 = v151;
      v140 = *(a1 + 28224);
      v143 = *(a1 + 28232);
      v152 = *(a1 + 27360);
      v279 = *(a1 + 27344);
      v280 = v152;
      v281[0] = *(a1 + 27376);
      *(v281 + 12) = *(a1 + 27388);
      v153 = *(a1 + 27296);
      v275 = *(a1 + 27280);
      v276 = v153;
      v154 = *(a1 + 27328);
      v277 = *(a1 + 27312);
      v278 = v154;
      v155 = *(a1 + 27232);
      v271 = *(a1 + 27216);
      v272 = v155;
      v156 = *(a1 + 27264);
      v273 = *(a1 + 27248);
      v274 = v156;
      v157 = *(a1 + 27168);
      v267 = *(a1 + 27152);
      v268 = v157;
      v158 = *(a1 + 27200);
      v269 = *(a1 + 27184);
      v270 = v158;
      v159 = *(a1 + 28048);
      v294 = *(a1 + 28032);
      v295 = v159;
      v160 = *(a1 + 28080);
      v296 = *(a1 + 28064);
      v297 = v160;
      v161 = *(a1 + 27984);
      v290 = *(a1 + 27968);
      v291 = v161;
      v162 = *(a1 + 28016);
      v292 = *(a1 + 28000);
      v293 = v162;
      v163 = *(a1 + 27920);
      v286 = *(a1 + 27904);
      v287 = v163;
      v164 = *(a1 + 27952);
      v288 = *(a1 + 27936);
      v289 = v164;
      v165 = *(a1 + 27888);
      v20 = v149;
      v284 = *(a1 + 27872);
      v285 = v165;
    }

    v138 = (v138 + 1);
  }

  while (v147 != v148);
  v298 = v249;
  if (v253)
  {
    v170 = *(v4 + 2308);
    v13 = -49;
    v123 = v260;
    v141 = v259;
    goto LABEL_194;
  }

  v13 = -49;
  v179 = v142;
  v123 = v260;
LABEL_205:
  v198 = v123 == 0.0;
  v178 = v20;
  if (v198)
  {
    v180 = 10 * llroundf((*(v4 + 2316) / *(v4 + 2312)) / 30.0);
    if (v180 < v135)
    {
      v135 = v180;
    }

    v331 = 0u;
    v332 = 0u;
    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    v181 = *(a1 + 29400);
    v182 = 0.03337;
    if (v181)
    {
      objc_msgSend_getSmoothingAnalysisArrays(v181);
      v183 = DWORD2(v331);
      v184 = v140;
      if (SDWORD2(v331) < v332)
      {
        v182 = *(v329 + 8 * SDWORD2(v331) + 8) - *(v329 + 8 * SDWORD2(v331));
      }
    }

    else
    {
      v184 = v140;
      v183 = 0;
    }

    v185 = fmaxf(*(v4 + 2380), v20);
    if (*v4 == 3)
    {
      v186 = 1.81;
      if ((v183 & 0x80000000) == 0)
      {
        v187 = v183;
        v188 = *(*(&v328 + 1) + 144 * v183 + 72) + -0.5;
        v189 = (v183 + 1);
        v190 = (v330 + v187);
        v191 = (*(&v328 + 1) + 144 * v187 + 72);
        while (*v191 >= v188)
        {
          if (*v190 == 1)
          {
            v186 = 28.4;
            break;
          }

          --v190;
          v191 -= 18;
          if (!--v189)
          {
            break;
          }
        }
      }

      v178 = fminf(*(v4 + 2376), fmaxf(v185 * powf(v186, v182), v185 + 0.05));
    }

    else
    {
      v178 = fminf(*(v4 + 2376), v185 + (v182 * 6.0));
      if (v178 <= v20)
      {
LABEL_303:
        v140 = v184;
        if (v135 >= 1 && v178 > v20)
        {
          v244 = v178 * 1.1;
          v245 = 1;
          do
          {
            LOBYTE(v325[0]) = 1;
            v246 = sbp_gvs_gaussianAverageComputeCorrection(a1, v245, 1, v325, v244);
            v247 = v246;
            if (v246)
            {
              sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_12(v246);
            }

            if (!(v247 | LOBYTE(v325[0])))
            {
              v178 = v20;
            }

            if (v135 == v245)
            {
              break;
            }

            if (v247)
            {
              break;
            }

            v245 = (v245 + 1);
          }

          while (LOBYTE(v325[0]));
        }

        goto LABEL_235;
      }

      v192 = 0;
      v193 = 10.0 / v20 * (v182 * 30.0) * 0.000436332313;
      while (1)
      {
        v326 = 0;
        v194 = sbp_gvs_gaussianAverageComputeCorrection(a1, 0, 1, &v326, v178);
        if (v194)
        {
          break;
        }

        v195 = *(a1 + 28112);
        v325[0] = *(a1 + 28096);
        v325[1] = v195;
        v196 = FigMotionMultiplyByInverseOfQuaternion(&v282, v325);
        v197 = acos(v196);
        v198 = fabs(v197 + v197) > v193 || v326 == 0;
        if (!v198)
        {
          goto LABEL_303;
        }

        if (v192 > 3 || (v178 - v20) < 0.01)
        {
          v178 = v20;
          goto LABEL_303;
        }

        v178 = (v20 + v178) * 0.5;
        ++v192;
        if (v178 <= v20)
        {
          goto LABEL_303;
        }
      }

      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_11(v194, &v326);
    }

    v140 = v184;
  }

LABEL_235:
  *(a1 + 196) = v179;
  v199 = v283;
  *(a1 + 28096) = v282;
  *(a1 + 28112) = v199;
  *(a1 + 28224) = v140;
  *(a1 + 28232) = v143;
  v200 = v280;
  *(a1 + 27344) = v279;
  *(a1 + 27360) = v200;
  *(a1 + 27376) = v281[0];
  v201 = v276;
  *(a1 + 27280) = v275;
  *(a1 + 27296) = v201;
  v202 = v278;
  *(a1 + 27312) = v277;
  *(a1 + 27328) = v202;
  v203 = v272;
  *(a1 + 27216) = v271;
  *(a1 + 27232) = v203;
  v204 = v274;
  *(a1 + 27248) = v273;
  *(a1 + 27264) = v204;
  v205 = v268;
  *(a1 + 27152) = v267;
  *(a1 + 27168) = v205;
  v206 = v270;
  *(a1 + 27184) = v269;
  *(a1 + 27200) = v206;
  *(a1 + 27388) = *(v281 + 12);
  v207 = v295;
  *(a1 + 28032) = v294;
  *(a1 + 28048) = v207;
  v208 = v297;
  *(a1 + 28064) = v296;
  *(a1 + 28080) = v208;
  v209 = v291;
  *(a1 + 27968) = v290;
  *(a1 + 27984) = v209;
  v210 = v293;
  *(a1 + 28000) = v292;
  *(a1 + 28016) = v210;
  v211 = v287;
  *(a1 + 27904) = v286;
  *(a1 + 27920) = v211;
  v212 = v289;
  *(a1 + 27936) = v288;
  *(a1 + 27952) = v212;
  v213 = v285;
  *(a1 + 27872) = v284;
  *(a1 + 27888) = v213;
LABEL_236:
  v127 = 0;
  *(v4 + 2308) = v178;
  *(v4 + 2384) = v20;
LABEL_237:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v214 = *(&v261 + 1) + 144 * v255;
  if (v127)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_13();
  }

  if (*v4 == 2 && *(*(&v262 + 1) + 8 * SDWORD2(v263)) != *(a1 + 29768))
  {
    *(v214 + 20) = 1065353216;
    if (_getMetadataDictionary(sbuf, v7))
    {
      FigCFDictionaryGetFloatIfPresent();
    }

    v215 = 1;
    v13 = -49;
  }

  else
  {
    v215 = 0;
  }

  if (v127)
  {
    *(a1 + 202) = 1;
    goto LABEL_252;
  }

  if (*(a1 + 84))
  {
    v215 = 1;
  }

  *(a1 + 202) = v215;
  if (v215)
  {
LABEL_252:
    v216 = (*(8 * (*(a1 + 176) / 2)) + 32 * SDWORD2(v263));
    v217 = v216[1];
    *(a1 + 28096) = *v216;
    *(a1 + 28112) = v217;
  }

  v218 = *(a1 + 30064);
  if (v218)
  {
    v219 = v218;
    v220 = v219;
    if (*(a1 + 25))
    {
      _runVideoDeghostingDetection(v219, a1 + 29368);
    }

    v221 = v220;
    if (![v221 isHWAccelerated])
    {
      v230 = *(v4 + 2240);
      v231 = *(v4 + 2236);
      goto LABEL_289;
    }

    v222 = *(v4 + 2908);
    if (v222 < 0)
    {
      sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_14();
    }

    else
    {
      if (v222 && (*(v4 + 2948) & 1) != 0)
      {
        for (m = 0; m != v222; ++m)
        {
          v224 = *(v4 + 2248);
          LODWORD(v225) = *(v4 + 2240) + v224 + m;
          do
          {
            v225 = (v225 - v224);
          }

          while (v225 >= v224);
          LODWORD(v226) = *(v4 + 2236) + v224 + m;
          do
          {
            v226 = (v226 - v224);
          }

          while (v226 >= v224);
          _runVideoDeghostingRepairOnSingleFrame(v221, (a1 + 29368), v225, v226);
        }
      }

      v227 = *(v4 + 2240);
      v228 = *(v4 + 2236);
      v229 = *(v4 + 2248);
      v230 = v227;
      if (v228 == v227)
      {
        LODWORD(v230) = v227 + v222 + v229;
        do
        {
          v230 = (v230 - v229);
        }

        while (v230 >= v229);
      }

      LODWORD(v231) = v228 + v222 + v229;
      do
      {
        v231 = (v231 - v229);
      }

      while (v231 >= v229);
      v233 = v227 > v228 || v227 <= v231;
      v235 = v227 > v228 && v227 <= v231;
      if (v231 <= v228)
      {
        v235 = v233;
      }

      if (!v235 || !*(a1 + 25))
      {
LABEL_289:
        _runVideoDeghostingRepairOnSingleFrame(v221, (a1 + 29368), v230, v231);
      }
    }

    *(v4 + 2948) = 0;
  }

  StabilizedSampleBuffer = sbp_gvs_createStabilizedSampleBuffer(a1, sbuf, v214, &v264);
  v126 = StabilizedSampleBuffer;
  if (StabilizedSampleBuffer)
  {
    sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_15(StabilizedSampleBuffer, &v264, 207, &v284, &v267);
    v13 = v284;
    goto LABEL_321;
  }

LABEL_292:
  *v256 = v264;
LABEL_293:
  v237 = *(v4 + 2236);
  v238 = *(*(a1 + 29368) + 8 * v237);
  if (v238)
  {
    CFRelease(v238);
    v237 = *(v4 + 2236);
    *(*(a1 + 29368) + 8 * v237) = 0;
  }

  v239 = *(v4 + 2248);
  v240 = v237 + v239 + 1;
  do
  {
    v240 -= v239;
  }

  while (v240 >= v239);
  *(v4 + 2236) = v240;
  --*(v4 + 2244);
  if (*(v4 + 989))
  {
    v241 = *(v4 + 2304);
    v242 = *(v4 + 2292) + v241 + 1;
    do
    {
      v242 -= v241;
    }

    while (v242 >= v241);
    *(v4 + 2292) = v242;
    --*(v4 + 2300);
  }

  dword_0 = 0;
  [*(a1 + 29400) incrementCenter];
  *(a1 + 10683) = v13;
  return v126;
}

float _computeAdjustedRollForHorizonCorrection(float result, float a2, float a3, float a4)
{
  if (a4 > 0.0 && a2 < 1.0472)
  {
      ;
    }

      ;
    }

    if (i < 0.0)
    {
      a4 = -a4;
    }

    v5 = i / a4;
    v6 = 0.0;
    if (v5 > 0.0)
    {
      if (v5 >= 1.0)
      {
        v6 = v5;
      }

      else
      {
        v7 = fminf(fmaxf((1.0472 - a2) / 0.2618, 0.0), 1.0);
        v6 = ((((v5 * v5) * 0.0) + ((1.0 - v7) * v5)) + ((((1.0 - v7) * -3.0) + 3.0) * (v5 * (v5 * v5)))) + (((((1.0 - v7) * 2.0) + -2.0) + 0.0) * (v5 * (v5 * (v5 * v5))));
      }
    }

    return (a4 * v6) + a3;
  }

  return result;
}

double _adjustQuaternionForRollCorrection(double *a1, float a2, double a3, double a4, double a5, __n128 a6)
{
  a6.n128_f32[0] = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a1;
  v9 = a6;
  v9.n128_f32[1] = v6;
  v10 = v9;
  v10.n128_f32[2] = v7;
  v11 = v10;
  v11.f32[3] = v8;
  if (a2 != 0.0)
  {
    v21 = v10;
    v19 = a1[1];
    v20 = v11;
    v18 = v9.n128_u64[0];
    v12 = __sincosf_stret(a2 * 0.5);
    v13 = vmulq_n_f32(xmmword_435D0, v12.__sinval);
    v13.i32[3] = LODWORD(v12.__cosval);
    v14 = vnegq_f32(v13);
    v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
    v16 = vrev64q_s32(v13);
    v16.i32[0] = v14.i32[1];
    v16.i32[3] = v14.i32[2];
    v11.i64[0] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), v18, 1), vextq_s8(v15, v15, 8uLL), v19), vmlaq_laneq_f32(vmulq_laneq_f32(v13, v20, 3), v16, v21, 2)).u64[0];
  }

  return *v11.i64;
}

int *_updateVideoDeghostingGhostInformationLookAhead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return _updateVideoDeghostingGhostInformationLookAhead_cold_4(a1, 0, a3, a4);
  }

  if (!a1)
  {
    return _updateVideoDeghostingGhostInformationLookAhead_cold_3();
  }

  if (!*a1)
  {
    return _updateVideoDeghostingGhostInformationLookAhead_cold_2();
  }

  v5 = a4;
  v6 = a3;
  if (*(a1 + 8) < *(a2 + 24))
  {
    _updateVideoDeghostingGhostInformationLookAhead_cold_1();
  }

  v8 = 0;
  v15 = v6;
  *(a1 + 12) = 0;
  do
  {
    if (v8 < *(a1 + 8))
    {
      v9 = *(a2 + 8) + 24 * v6;
      if (*(v9 + 16) == 1)
      {
        v10 = *a1 + 24 * v8;
        *v10 = *v9;
        objc_storeStrong((v10 + 8), *(v9 + 8));
        *(v10 + 16) = *(v9 + 16);
      }

      else
      {
        v11 = *(*a2 + 8 * v6);
        v12 = *a1 + 24 * v8;
        *(v12 + 16) = 0;
        v13 = *(v12 + 8);
        *v12 = v11;
        *(v12 + 8) = 0;
      }
    }

    result = FigMotionIncreaseRingIndex(&v15, *(a2 + 28));
    v8 = *(a1 + 12) + 1;
    *(a1 + 12) = v8;
    v6 = v15;
  }

  while (v15 != v5);
  return result;
}

uint64_t sbp_gvs_getPixelBufferFromPool(__CVPixelBufferPool *a1, const __CFDictionary *a2, void *a3, unsigned int a4, _DWORD *a5, int a6, CVPixelBufferRef *a7)
{
  v13 = a3;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (v13 && a6)
  {
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    ++*a5;
  }

  PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(kCFAllocatorDefault, a1, a2, a7);
  if (a4 && PixelBufferWithAuxAttributes == -6689)
  {
    v15 = 1000;
    do
    {
      usleep(0x3E8u);
      PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(kCFAllocatorDefault, a1, a2, a7);
      if (PixelBufferWithAuxAttributes != -6689)
      {
        break;
      }

      v16 = v15 > a4;
      v15 += 1000;
    }

    while (!v16);
  }

  v17 = PixelBufferWithAuxAttributes;
  if (PixelBufferWithAuxAttributes)
  {
    sbp_gvs_getPixelBufferFromPool_cold_1(PixelBufferWithAuxAttributes, a7);
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v17;
}

uint64_t sbp_internalCreateSampleBufferWithNewPixelBuffer(__CVBuffer *a1, void *a2, void *a3, const CMSampleTimingInfo *a4, CMSampleBufferRef *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v9 objectForKeyedSubscript:v10];

  formatDescriptionOut = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  v27 = a4;
  v28 = a5;
  v29 = v9;
  v30 = v10;
  v12 = CMFormatDescriptionGetExtensions(v11);
  v13 = kCVImageBufferColorPrimariesKey;
  v14 = [v12 objectForKeyedSubscript:kCVImageBufferColorPrimariesKey];
  v15 = kCVImageBufferTransferFunctionKey;
  v31 = [v12 objectForKeyedSubscript:kCVImageBufferTransferFunctionKey];
  v16 = kCVImageBufferYCbCrMatrixKey;
  v17 = [v12 objectForKeyedSubscript:kCVImageBufferYCbCrMatrixKey];
  v18 = CVBufferCopyAttachment(a1, v13, 0);
  v19 = CVBufferCopyAttachment(a1, v15, 0);
  v20 = CVBufferCopyAttachment(a1, v16, 0);
  if (v14 == v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = [v14 isEqual:v18];
  }

  v9 = v29;
  if (v31 != v19)
  {
    v21 &= [v31 isEqual:v19];
  }

  if (v17 != v20)
  {
    if (v21 & [v17 isEqual:v20])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v21 & 1) == 0)
  {
LABEL_9:
    formatDescriptionOut = 0;
    [v29 setObject:0 forKeyedSubscript:{v30, v27, v28}];
    v11 = 0;
  }

LABEL_10:

  v10 = v30;
  a4 = v27;
  a5 = v28;
  if (v11)
  {
    v22 = kCFAllocatorDefault;
    goto LABEL_18;
  }

LABEL_12:
  v22 = kCFAllocatorDefault;
  v23 = CMVideoFormatDescriptionCreateForImageBuffer(kCFAllocatorDefault, a1, &formatDescriptionOut);
  if (v23)
  {
    v25 = v23;
    sbp_internalCreateSampleBufferWithNewPixelBuffer_cold_1();
    goto LABEL_20;
  }

  [v9 setObject:formatDescriptionOut forKeyedSubscript:v10];
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
    v11 = formatDescriptionOut;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  v24 = CMSampleBufferCreateForImageBuffer(v22, a1, 1u, 0, 0, v11, a4, a5);
  v25 = v24;
  if (v24)
  {
    sbp_internalCreateSampleBufferWithNewPixelBuffer_cold_2(v24);
  }

LABEL_20:

  return v25;
}

uint64_t _updateSmartStyleGlobalMixFactor(float32x2_t *a1, void *a2)
{
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  rect.size = _Q0;
  v8 = [a2 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_FinalCropRectFromSource];
  v9 = v8;
  if (v8 && !CGRectMakeWithDictionaryRepresentation(v8, &rect))
  {
    _updateSmartStyleGlobalMixFactor_cold_1();
    v20 = 4294954516;
  }

  else
  {
    v10 = a1[3775];
    v11 = vmvn_s8(vceq_f32(v10, v10));
    if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) != 0)
    {
      v20 = 0;
    }

    else
    {
      v12 = a1 + 3584;
      MidX = CGRectGetMidX(rect);
      MidY = CGRectGetMidY(rect);
      v14.f64[0] = MidX;
      v14.f64[1] = MidY;
      v15 = vcvt_f32_f64(v14);
      v16 = [*&a1[3767] configuration];
      v17 = [v16 styleEngineConfiguration];
      [v17 globalLinearSystemMixFactor];
      v19 = v18;

      v20 = 0;
      v21 = vsub_f32(v10, v15);
      v22 = fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v21, v21))) / 0.16667, 0.0), 1.0);
      v23 = v19 + (((v22 * v22) * ((v22 * -2.0) + 3.0)) * (1.0 - v19));
      v12[192].f32[0] = v23;
      v12[192].f32[1] = v12[192].f32[1] + ((v23 - v12[192].f32[1]) * 0.1);
    }
  }

  return v20;
}

__n128 __copy_assignment_16_16_s0_s8_t16w224(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v10;
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  result = *(a2 + 176);
  v12 = *(a2 + 192);
  v13 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v13;
  *(a1 + 176) = result;
  *(a1 + 192) = v12;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, uint64_t a4)
{
  v234 = a4;
  v5 = sbuf;
  v7 = (a1 + 27148);
  sourceBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v242 = 0;
  v243 = 0;
  FrameRateConversionStatus = _getFrameRateConversionStatus(v5, v8);
  if (gGMFigKTraceEnabled == 1)
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_1(v5);
  }

  if (*(v7 + 2630))
  {
    if (FrameRateConversionStatus == 1 && !*(v7 + 2648))
    {
      value_low = 0;
      v122 = 1;
      *(v7 + 2648) = 1;
      v123 = v234;
LABEL_212:
      *(v7 + 2649) = v122;
      goto LABEL_213;
    }

    *(v7 + 2648) = 0;
  }

  v233 = v5;
  HIDWORD(v232) = FrameRateConversionStatus;
  if (*v7 == 5)
  {
    if (v5)
    {
      v11 = *(a1 + 29728);
      if (v11)
      {
        v12 = *(a1 + 27408);
        v13 = kFigVideoStabilizationSampleBufferAttachmentKey_GPUTransformsParameters;
        v14 = CMGetAttachment(v5, kFigVideoStabilizationSampleBufferAttachmentKey_GPUTransformsParameters, 0);
        if (v14)
        {
          v15 = v14;
          Length = CFDataGetLength(v14);
          v17 = 36 * *(a1 + 180) * *(a1 + 184);
          if (Length == v17 + 36)
          {
            v18 = Length;
            BytePtr = CFDataGetBytePtr(v15);
            memcpy(v11, BytePtr, v18);
            if (*(a1 + 128) == *v11)
            {
              if (*(a1 + 132) == v11[1])
              {
                if (*(a1 + 152) == v11[2])
                {
                  if (*(a1 + 156) == v11[3])
                  {
                    if (*(a1 + 144) == v11[4])
                    {
                      if (*(a1 + 148) == v11[5])
                      {
                        if (*(a1 + 180) == v11[7])
                        {
                          if (*(a1 + 184) == v11[8])
                          {
                            if (*(a1 + 188) == v11[6])
                            {
                              memcpy(v12, v11 + 9, v17);
                              CMRemoveAttachment(v5, v13);
                              goto LABEL_22;
                            }

                            sbp_gvs_createStabilizedSampleBuffer_cold_12(&v241);
                          }

                          else
                          {
                            sbp_gvs_createStabilizedSampleBuffer_cold_11(&v241);
                          }
                        }

                        else
                        {
                          sbp_gvs_createStabilizedSampleBuffer_cold_10(&v241);
                        }
                      }

                      else
                      {
                        sbp_gvs_createStabilizedSampleBuffer_cold_9(&v241);
                      }
                    }

                    else
                    {
                      sbp_gvs_createStabilizedSampleBuffer_cold_8(&v241);
                    }
                  }

                  else
                  {
                    sbp_gvs_createStabilizedSampleBuffer_cold_7(&v241);
                  }
                }

                else
                {
                  sbp_gvs_createStabilizedSampleBuffer_cold_6(&v241);
                }
              }

              else
              {
                sbp_gvs_createStabilizedSampleBuffer_cold_5(&v241);
              }
            }

            else
            {
              sbp_gvs_createStabilizedSampleBuffer_cold_4(&v241);
            }
          }

          else
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_3(&v241);
          }
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_13(&v241);
        }
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_14(&v241);
      }
    }

    else
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_15(&v241);
    }

    value_low = LODWORD(v241.duration.value);
    if (LODWORD(v241.duration.value))
    {
      emitter = fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< GyroVideoStabilizationV2 >>>> Fig", "err == 0 ", "bail", 0, "GVSGyroStabilizationV2.m", 5333, value_low);
      goto LABEL_133;
    }
  }

  else
  {
    v160 = _getMetadataDictionary(v5, v9);
    _getPresentationTimeStampForSampleBuffer(v5, v160, v161, v162, v163, v164, v165, v166, v221, v222, v223, v226, v228, v230, v232, v5, v234, sourceBuffer);
    v168 = *(a1 + 27408);
    v169 = *(a1 + 172);
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    if (v169 <= 3 && *(a1 + 176) == 1)
    {
      v170 = *(a1 + 27152);
      v171 = *(a1 + 27168);
      *(v168 + 32) = *(a1 + 27184);
      *v168 = v170;
      *(v168 + 16) = v171;
    }

    v172 = *(a3 + 4);
    v173 = vmul_n_f32(vsub_f32(*(a1 + 28208), *(a1 + 28224)), v172);
    v175 = *(a1 + 28232);
    v174 = vmul_n_f32(*&v175, v172);
    LODWORD(v175) = v174.i32[1];
    v5 = v233;
    if (*(v7 + 989))
    {
      v176 = *(a1 + 28144);
    }

    else
    {
      v176 = 0;
    }

    v187 = GVSComputeTransforms(a1 + 128, (a1 + 336), a3, a1 + 27872, v176, v168, v173.f32[0], v173.f32[1], v174.f32[0], v175, v167);
    if (v187)
    {
      value_low = v187;
      fig_log_get_emitter();
      LODWORD(v221) = value_low;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v221, v231, v225, v227, v229, v231, v232, v233);
    }

    else
    {
      v188 = GVSApplyDistortionToTransforms((a1 + 128), (a1 + 28896), v168);
      value_low = v188;
      if (v188)
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_2(v188);
      }
    }

    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    if (value_low)
    {
      fig_log_get_emitter();
      LODWORD(v221) = value_low;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v221, v231, v225, v227, v229, v231, v232, v233);

      goto LABEL_133;
    }
  }

LABEL_22:
  if (!*(v7 + 2572))
  {
    if (*(a1 + 25) && (*v7 - 1) <= 2)
    {
      if (*(a1 + 72))
      {
        v177 = 0;
      }

      else
      {
        v177 = 66000;
      }
    }

    else
    {
      v177 = 0;
    }

    v178 = [*(a1 + 48) objectForKeyedSubscript:@"OutputBufferPrimary"];
    v179 = [*(a1 + 56) objectForKeyedSubscript:@"OutputBufferPrimary"];
    value_low = sbp_gvs_getPixelBufferFromPool(v178, v179, *(a1 + 72), v177, (a1 + 80), 1, &v243);

    if (value_low)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_20(value_low);
      goto LABEL_133;
    }

    if ((v7[657] & 1) == 0)
    {
      CVBufferPropagateAttachments(sourceBuffer, v243);
    }

    memset(&v241, 0, sizeof(v241));
    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v5, 1, &v241, 0);
    if (SampleTimingInfoArray)
    {
      value_low = SampleTimingInfoArray;
      sbp_gvs_createStabilizedSampleBuffer_cold_21();
      goto LABEL_133;
    }

    v181 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v243, *(a1 + 64), @"OutputBufferPrimary", &v241, &v242);
    if (v181)
    {
      value_low = v181;
      sbp_gvs_createStabilizedSampleBuffer_cold_22();
      goto LABEL_133;
    }

    CMPropagateAttachments(v5, v242);
    v182 = _shouldBypassSmartStyle(v5);
    if (v182)
    {
      _setAttachedMediaToSampleBuffer(v5, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients, 0);
      v183 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
      _setAttachedMediaToSampleBuffer(v5, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail, 0);
      _setAttachedMediaToSampleBuffer(v242, v183, 0);
      v184 = v7 + 739;
      if (*(v7 + 2956))
      {
        if (!*(v7 + 2958))
        {
LABEL_227:
          v196 = _removeSmartStyleAttachments(a1, v242);
          if (v196)
          {
            value_low = v196;
            sbp_gvs_createStabilizedSampleBuffer_cold_30();
            goto LABEL_133;
          }

          goto LABEL_234;
        }

        goto LABEL_225;
      }
    }

    else
    {
      v184 = v7 + 739;
      if (*(v7 + 2956))
      {
        v185 = *(a1 + 172);
        if (v185 == 3)
        {
          if ((*v7 - 1) > 2 || *(a1 + 25))
          {
            if (*(v7 + 2960))
            {
              sbp_gvs_createStabilizedSampleBuffer_cold_23(a1, v5);
            }

            v218 = _runSmartStyleApplyOnUnstabilizedImage(a1, v5);
            if (v218)
            {
              value_low = v218;
              sbp_gvs_createStabilizedSampleBuffer_cold_24();
              goto LABEL_133;
            }
          }
        }

        else if (!v185)
        {
          if (*(v7 + 2960))
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_25(a1, v5);
          }

          v186 = _runSmartStyleIntegrate(a1, v5);
          if (v186)
          {
            value_low = v186;
            sbp_gvs_createStabilizedSampleBuffer_cold_26();
            goto LABEL_133;
          }
        }

        goto LABEL_223;
      }
    }

    if (!*(v7 + 2958))
    {
      goto LABEL_234;
    }

LABEL_223:
    if (!*(v7 + 2958))
    {
      goto LABEL_227;
    }

    if ((v182 & 1) == 0)
    {
      if (!*(v7 + 2959))
      {
        v197 = _runSmartStyleApplyOnUnstabilizedThumbnail(a1, v5);
        if (v197)
        {
          value_low = v197;
          sbp_gvs_createStabilizedSampleBuffer_cold_27();
          goto LABEL_133;
        }
      }

      StabilizedAttachmentsPixelBuffers = sbp_gvs_createStabilizedAttachmentsPixelBuffers(a1, v5, v242, (a3 + 88));
      if (StabilizedAttachmentsPixelBuffers)
      {
        goto LABEL_317;
      }

      if (!*(v7 + 2959))
      {
        v198 = _runSmartStyleReverseLearning(a1, v5, v242);
        if (v198)
        {
          value_low = v198;
          sbp_gvs_createStabilizedSampleBuffer_cold_28();
          goto LABEL_133;
        }
      }

      goto LABEL_234;
    }

LABEL_225:
    StabilizedAttachmentsPixelBuffers = sbp_gvs_createStabilizedAttachmentsPixelBuffers(a1, v5, v242, (a3 + 88));
    if (StabilizedAttachmentsPixelBuffers)
    {
LABEL_317:
      value_low = StabilizedAttachmentsPixelBuffers;
      sbp_gvs_createStabilizedSampleBuffer_cold_29();
      goto LABEL_133;
    }

LABEL_234:
    v237 = v184;
    v199 = kFigVideoStabilizationSampleBufferAttachmentKey_DepthSampleBuffer;
    v200 = CMGetAttachment(v5, kFigVideoStabilizationSampleBufferAttachmentKey_DepthSampleBuffer, 0);
    v201 = v200;
    if (v200)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(v200);
      CMSetAttachment(sourceBuffer, @"InputDepthPixelBuffer", ImageBuffer, 0);
    }

    v239 = v182;
    CMSampleBufferGetPresentationTimeStamp(&valuePtr.duration, v5);
    *(a1 + 29664) = CMTimeGetSeconds(&valuePtr.duration);
    StabilizedPixelBuffer = sbp_gvs_createStabilizedPixelBuffer(a1, v5, (a3 + 88), v243);
    if (StabilizedPixelBuffer)
    {
      value_low = StabilizedPixelBuffer;
      sbp_gvs_createStabilizedSampleBuffer_cold_31();
      goto LABEL_133;
    }

    v204 = v242;
    v205 = kFigVideoStabilizationSampleBufferAttachmentKey_VideoSTFAnalytics;
    v206 = CMGetAttachment(v5, kFigVideoStabilizationSampleBufferAttachmentKey_VideoSTFAnalytics, 0);
    CMSetAttachment(v204, v205, v206, 1u);
    if (v201)
    {
      v207 = CMGetAttachment(sourceBuffer, @"OutputDepthPixelBuffer", 0);
      if (v207)
      {
        v208 = v207;
        memset(&valuePtr, 0, sizeof(valuePtr));
        v209 = CMSampleBufferGetSampleTimingInfoArray(v201, 1, &valuePtr, 0);
        if (v209)
        {
          value_low = v209;
          sbp_gvs_createStabilizedSampleBuffer_cold_32(v209, &valuePtr);
          goto LABEL_133;
        }

        *bytes = 0;
        v210 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v208, *(a1 + 64), @"OutputBufferDepth", &valuePtr, bytes);
        if (v210)
        {
          value_low = v210;
          sbp_gvs_createStabilizedSampleBuffer_cold_33(v210, bytes, &valuePtr);
          goto LABEL_133;
        }

        CMPropagateAttachments(v201, *bytes);
        CMSetAttachment(v242, v199, *bytes, 1u);
        CMRemoveAttachment(sourceBuffer, @"InputDepthPixelBuffer");
        CMRemoveAttachment(sourceBuffer, @"OutputDepthPixelBuffer");
        if (*bytes)
        {
          CFRelease(*bytes);
        }
      }
    }

    v211 = v239;
    if (*(a1 + 172))
    {
      v211 = 1;
    }

    if ((v211 & 1) == 0)
    {
      if (*v237)
      {
        v212 = CMGetAttachment(v242, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
        [v212 setObject:&__kCFBooleanTrue forKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleAppliedOnThisFrame];
      }

      if (*(v7 + 2958))
      {
        if (*(v7 + 2959))
        {
          v213 = _runSmartStyleReverseLearningAndComputeDeltaMap(a1, v5, v242);
          if (v213)
          {
            value_low = v213;
            sbp_gvs_createStabilizedSampleBuffer_cold_34();
            goto LABEL_133;
          }
        }

        v214 = CMGetAttachment(sourceBuffer, @"OutputSmartStyleDeltaMapPixelBuffer", 0);
        if (v214)
        {
          v215 = v214;
          memset(&valuePtr, 0, sizeof(valuePtr));
          v216 = CMSampleBufferGetSampleTimingInfoArray(v5, 1, &valuePtr, 0);
          if (v216)
          {
            value_low = v216;
            sbp_gvs_createStabilizedSampleBuffer_cold_35(v216, &valuePtr);
            goto LABEL_133;
          }

          *bytes = 0;
          v217 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v215, *(a1 + 64), kFigVideoStabilizationSampleBufferAttachmentKey_OutputSmartStyleDeltaMapSampleBuffer, &valuePtr, bytes);
          if (v217)
          {
            value_low = v217;
            sbp_gvs_createStabilizedSampleBuffer_cold_36(v217, bytes, &valuePtr);
            goto LABEL_133;
          }

          _setAttachedMediaToSampleBuffer(v242, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingDeltaMap, *bytes);
          CMRemoveAttachment(sourceBuffer, @"OutputSmartStyleDeltaMapPixelBuffer");
          if (*bytes)
          {
            CFRelease(*bytes);
          }
        }
      }

      if (CMGetAttachment(sourceBuffer, @"OutputSmartStyleUnstyledPixelBuffer", 0))
      {
        CMRemoveAttachment(sourceBuffer, @"OutputSmartStyleUnstyledPixelBuffer");
      }
    }

    goto LABEL_31;
  }

  if (v5)
  {
    v20 = CFRetain(v5);
    v242 = v20;
    if (*(a1 + 172))
    {
      goto LABEL_31;
    }

    v21 = v20;
    if (v20)
    {
      v22 = *(a1 + 27408);
      if (v22)
      {
        v23 = *(a1 + 29728);
        if (v23)
        {
          *&v24 = *(a1 + 128);
          *(&v24 + 1) = *(a1 + 152);
          *v23 = v24;
          *(v23 + 16) = *(a1 + 144);
          *(v23 + 24) = *(a1 + 188);
          v25 = *(a1 + 180);
          *(v23 + 28) = v25;
          v26 = *(a1 + 184);
          *(v23 + 32) = v26;
          v27 = 36 * v25 * v26;
          memcpy((v23 + 36), v22, v27);
          v28 = CFDataCreate(kCFAllocatorDefault, v23, v27 + 36);
          if (v28)
          {
            v29 = v28;
            CMSetAttachment(v21, kFigVideoStabilizationSampleBufferAttachmentKey_GPUTransformsParameters, v28, 1u);
            CFRelease(v29);
            goto LABEL_31;
          }

          sbp_gvs_createStabilizedSampleBuffer_cold_16(&v241);
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_17(&v241);
        }
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_18(&v241);
      }

      goto LABEL_198;
    }
  }

  else
  {
    v242 = 0;
    if (*(a1 + 172))
    {
      goto LABEL_31;
    }
  }

  sbp_gvs_createStabilizedSampleBuffer_cold_19(&v241);
LABEL_198:
  value_low = LODWORD(v241.duration.value);
  if (LODWORD(v241.duration.value))
  {
    v189 = fig_log_get_emitter();
    LODWORD(v221) = value_low;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v189, "<<<< GyroVideoStabilizationV2 >>>> Fig", "err == 0 ", "bail", 0, "GVSGyroStabilizationV2.m", 5366, v221);
    goto LABEL_133;
  }

LABEL_31:
  v30 = 0;
  v31 = v242;
  v32 = *(a1 + 180);
  v33 = *(a1 + 184);
  v34 = (v33 >> 1) * v32;
  v35 = v32 + (v32 >> 31);
  if (v33 <= 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v37 = *(a1 + 27408) + 36 * (v36 + (v35 >> 1));
  do
  {
    *(&v241.duration.value + v30) = *(v37 + v30);
    v30 += 4;
  }

  while (v30 != 36);
  v38 = CMGetAttachment(v31, kFigVideoStabilizationSampleBufferAttachmentKey_RemainingDigitalZoomAfterVIS, 0);
  if (v38)
  {
    LODWORD(valuePtr.duration.value) = 1065353216;
    CFNumberGetValue(v38, kCFNumberFloatType, &valuePtr);
    v39.i32[0] = valuePtr.duration.value;
    FigMotionApplyDigitalZoomToTransform(1, &v241, v39, *(a1 + 336), *(a1 + 344), v40, v41);
  }

  invert3x3Matrix(&v241, &valuePtr);
  *bytes = *&valuePtr.duration.value;
  *&bytes[16] = *&valuePtr.duration.epoch;
  timescale = valuePtr.presentationTimeStamp.timescale;
  v42 = CFDataCreate(kCFAllocatorDefault, bytes, 36);
  CMSetAttachment(v31, kFigVideoStabilizationSampleBufferAttachmentKey_CenterStabilizationInvertedTransform, v42, 1u);
  if (v42)
  {
    CFRelease(v42);
  }

  if (!a1)
  {
    StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_48();
    goto LABEL_70;
  }

  v45 = v242;
  if (!v242)
  {
    StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_47();
    goto LABEL_70;
  }

  if (!a3)
  {
    StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_46();
    goto LABEL_70;
  }

  if (*(v7 + 1669) || *(v7 + 1670))
  {
    if (*(a3 + 4) <= 0.0)
    {
      StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_45();
      goto LABEL_70;
    }

    if (*(a3 + 20) <= 0.0)
    {
      StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_44();
      goto LABEL_70;
    }

    v46 = (a1 + 28096);
    if (FigMotionGetQuaternionLength((a1 + 28096)) <= 0.00000001)
    {
      StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_43();
      goto LABEL_70;
    }

    if (!*(v7 + 1668))
    {
      v47 = *(a1 + 28112);
      *(a1 + 28824) = *v46;
      *(a1 + 28840) = v47;
      *(a1 + 28856) = 0;
      *(v7 + 1668) = 1;
    }

    if (*(v7 + 1669))
    {
      v48 = CMGetAttachment(v45, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (!v48)
      {
        StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_40();
        goto LABEL_70;
      }

      v49 = v48;
      v249 = FigMotionMultiplyByInverseOfQuaternion((a1 + 28096), (a1 + 28824));
      v250.f64[0] = v50;
      v250.f64[1] = v51;
      v251 = v52;
      v248 = 0;
      v53 = GVSComputeTranslationFromCameraMotion(&v249, &v248, *(a3 + 4));
      if (v53)
      {
        StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_37(v53, &v248, &v249);
        goto LABEL_70;
      }

      v54.f32[0] = -*(a3 + 20);
      if (!*(a1 + 203))
      {
        v54.i32[0] = *(a3 + 20);
      }

      v54.i32[1] = *(a3 + 20);
      *(a1 + 28856) = vmla_f32(*(a1 + 28856), v54, v248);
      v241.duration.value = vmul_f32(v54, *(a3 + 80));
      v55 = CFDataCreate(kCFAllocatorDefault, (a1 + 28856), 8);
      if (v55)
      {
        v56 = CFDataCreate(kCFAllocatorDefault, &v241, 8);
        if (v56)
        {
          v57 = v56;
          CFDictionarySetValue(v49, kFigVideoStabilizationSampleBufferAttachmentKey_EstimatedCenterMotionVector, v55);
          CFDictionarySetValue(v49, kFigVideoStabilizationSampleBufferAttachmentKey_EstimatedMotionBlurVector, v57);
          goto LABEL_59;
        }

        StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_38();
      }

      else
      {
        StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_39();
      }

LABEL_68:
      if (v55)
      {
        CFRelease(v55);
      }

      goto LABEL_70;
    }

    v55 = 0;
    v57 = 0;
LABEL_59:
    if (*(v7 + 1670))
    {
      v241.duration.flags = 0;
      *(&v241.duration.value + 4) = 0;
      *(&v241.duration.epoch + 4) = 0;
      *(&v241.presentationTimeStamp.value + 4) = 0x3F80000000000000;
      LODWORD(v241.duration.value) = 1065353216;
      LODWORD(v241.duration.epoch) = 1065353216;
      v58 = *(a1 + 28096);
      *&bytes[8] = vnegq_f64(*(v7 + 239));
      v59 = -*(a1 + 28120);
      *bytes = v58;
      *&bytes[24] = v59;
      *&v58 = v7[635] * 0.75;
      v60 = *(a1 + 336);
      *&v249 = COERCE_UNSIGNED_INT(*(a3 + 4) * *(a3 + 20));
      v61 = *(a1 + 136);
      v62.i64[0] = v61;
      v62.i64[1] = SHIDWORD(v61);
      v250 = vsubq_f64(v60, vcvtq_f64_s64(v62));
      v246 = v58;
      v247 = v250;
      GVSInverseRotationMatrixFromQuaternion(bytes, &valuePtr);
      *v63.i64 = FigMotionComputeTransformFromRotation(&v249, &v246, &valuePtr.duration.value, &v241);
      if (*(a1 + 203))
      {
        *v64.i32 = *(a1 + 144);
        v63.i32[0] = -1.0;
        FigMotionPreMultiplyScalingTranslationToTransform(&v241, v63, v64, 1.0, 0.0, v65);
      }

      v248 = (*(a3 + 72) * 1000000000.0);
      v66 = CFDataCreate(kCFAllocatorDefault, &v241, 36);
      if (v66)
      {
        v67 = v66;
        CMSetAttachment(v45, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedTrajectoryHomography, v66, 1u);
        CFRelease(v67);
        v68 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v248);
        if (v68)
        {
          v69 = v68;
          CMSetAttachment(v45, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedTrajectoryHomographyTimestamp, v68, 1u);
          CFRelease(v69);
          goto LABEL_65;
        }

        StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_41();
      }

      else
      {
        StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_42();
      }

LABEL_66:
      if (v57)
      {
        CFRelease(v57);
      }

      goto LABEL_68;
    }

LABEL_65:
    v70 = *(a1 + 28112);
    *(a1 + 28824) = *v46;
    *(a1 + 28840) = v70;
    goto LABEL_66;
  }

LABEL_70:
  v71 = v233;
  if (*v7 != 3 && *v7 != 5)
  {
    StabilizedSampleBuffer_cold_48 = CMGetAttachment(v242, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    if (StabilizedSampleBuffer_cold_48)
    {
      v72 = StabilizedSampleBuffer_cold_48;
      LOBYTE(valuePtr.duration.value) = 0;
      StabilizedSampleBuffer_cold_48 = FigCFDictionaryGetBooleanIfPresent();
      if (LOBYTE(valuePtr.duration.value))
      {
        v75 = *(a1 + 180);
        v76 = *(a1 + 184);
        v77 = v75 + (v75 >> 31);
        v78 = (v76 >> 1) * v75;
        if (v76 <= 1)
        {
          v78 = 0;
        }

        v79 = *(a1 + 27408) + 36 * (v78 + (v77 >> 1));
        v80 = *(v79 + 32);
        v81 = *(v79 + 16);
        *&v241.duration.value = *v79;
        *&v241.duration.epoch = v81;
        v241.presentationTimeStamp.timescale = v80;
        v81.i32[0] = *(a3 + 20);
        if (*v81.i32 > 0.0)
        {
          FigMotionApplyDigitalZoomToTransform(0, &v241, v81, *(a1 + 336), *(a1 + 344), v73, v74);
        }

        v82 = *(a1 + 128) - v7[635];
        v83 = v82;
        v84 = vcvts_n_f32_s32(*(a1 + 132) - v7[636], 1uLL) + v7[636];
        FigMotionPostMultiplyScalingTranslationToTransform(&v241, 1.0, vcvts_n_f32_s32(v82, 1uLL), -1.0, v84);
        *v85.i32 = -(v83 * 0.5);
        v86.i32[0] = 1.0;
        FigMotionPreMultiplyScalingTranslationToTransform(&v241, v86, v85, -1.0, v84, v87);
        v88 = CFDataCreate(kCFAllocatorDefault, &v241, 36);
        if (v88)
        {
          v89 = v88;
          CFDictionarySetValue(v72, kFigVideoStabilizationSampleBufferProcessorMetadata_VitalityTransformMatrix, v88);
          CFRelease(v89);
        }

        else
        {
          StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_49();
        }
      }
    }
  }

  if (*(a1 + 205) && *(a3 + 136) == 4 && *v7 != 5)
  {
    if (_getMetadataDictionary(v242, v44))
    {
      StabilizedSampleBuffer_cold_48 = FigCFDictionarySetCGRect();
    }

    else
    {
      StabilizedSampleBuffer_cold_48 = sbp_gvs_createStabilizedSampleBuffer_cold_50();
    }
  }

  v90 = *v7;
  if ((*v7 - 1) <= 2)
  {
    if (*(v7 + 980))
    {
      v91 = v242;
      if (*(a1 + 392) == 1)
      {
        if (a1 && a3 && v242)
        {
          v241.presentationTimeStamp.epoch = 0;
          v92 = *(a1 + 28112);
          *&v241.duration.value = *(a1 + 28096);
          *&v241.duration.epoch = v92;
          *&v241.presentationTimeStamp.timescale = vneg_f32(*(a1 + 28232));
          *&v241.presentationTimeStamp.epoch = *(a3 + 4) * *(a3 + 20);
          v93 = [NSData dataWithBytes:&v241 length:48];
          if (v93)
          {
            v94 = v93;
            CMSetAttachment(v91, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCameraGeometry, v93, 1u);
          }

          else
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_53();
          }
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_54(StabilizedSampleBuffer_cold_48);
        }
      }

      else if (v242)
      {
        v95 = CFDataCreate(kCFAllocatorDefault, (a1 + 28096), 32);
        if (v95)
        {
          v96 = v95;
          CMSetAttachment(v91, kFigVideoStabilizationSampleBufferAttachmentKey_StabilizedOutputCenterQuaternion, v95, 1u);
          CFRelease(v96);
        }

        else
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_51();
        }
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_52(StabilizedSampleBuffer_cold_48);
      }
    }

    v90 = *v7;
  }

  if (v90 != 5)
  {
    goto LABEL_125;
  }

  v97 = *(a1 + 27408);
  v98 = CMGetAttachment(v242, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (v98)
  {
    v99 = v98;
    v252[0] = 1;
    v100 = CFDictionaryContainsKey(v98, kFigMotionAttachmentsSampleBufferProcessorMetadata_StereoStitchingNarrowBufferRect);
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    v102 = v252[0];
    if (!BooleanIfPresent)
    {
      v102 = v100 == 0;
    }

    v103 = *(a1 + 144);
    v104.i64[0] = v103;
    v104.i64[1] = SHIDWORD(v103);
    v105 = vcvtq_f64_s64(v104);
    v106 = 0.0;
    if (v102)
    {
      v107.f64[0] = 0.0;
LABEL_123:
      v138 = v105.f64[1];
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v106 - 1));
      if (DictionaryRepresentation)
      {
        v140 = DictionaryRepresentation;
        CFDictionarySetValue(v99, kFigVideoStabilizationSampleBufferProcessorMetadata_StitchingCleanApertureRect, DictionaryRepresentation);
        CFRelease(v140);
        goto LABEL_125;
      }

      sbp_gvs_createStabilizedSampleBuffer_cold_55(&v241);
      goto LABEL_303;
    }

    if (*(a1 + 180) <= 0)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_58(&v241);
    }

    else
    {
      v224 = v105;
      if (v100)
      {
        size = CGRectNull.size;
        *&valuePtr.duration.value = CGRectNull.origin;
        *&valuePtr.duration.epoch = size;
        FigCFDictionaryGetCGRectIfPresent();
        if (*&valuePtr.presentationTimeStamp.value > 0.0)
        {
          v110 = *(a1 + 180);
          v111 = *&valuePtr.duration.value;
          v112 = *&valuePtr.duration.value + *&valuePtr.duration.epoch + -1.0;
          *&v246 = v111;
          *v247.f64 = v112;
          v113 = (*&valuePtr.presentationTimeStamp.value + *&valuePtr.duration.timescale);
          v114 = *&valuePtr.duration.timescale;
          if (*&valuePtr.duration.timescale >= v113)
          {
            v236.n128_u64[0] = 0;
            v109.n128_u32[1] = 1206910975;
            v238.n128_u64[0] = 0x47EFFFFFE0000000;
            v117 = 0.0;
          }

          else
          {
            v115 = 0;
            v116 = (*&valuePtr.presentationTimeStamp.value / v110);
            v117 = 0.0;
            v109.n128_u64[0] = 0x47EFFFFFE0000000;
            v238 = v109;
            v109.n128_u64[0] = 0;
            v236 = v109;
            do
            {
              *(v247.f64 + 1) = v114;
              *(&v246 + 1) = v114;
              v118.n128_f32[0] = invert3x3Matrix(v97, &v241);
              _computeProjectedPoints(&v241, &v246, bytes, v118);
              v119 = *&bytes[8];
              if (*&bytes[8] <= *&bytes[24])
              {
                v119 = *&bytes[24];
              }

              v120 = v236;
              if (!v115)
              {
                v120.n128_f64[0] = v119;
              }

              if (v117 <= *bytes)
              {
                v117 = *bytes;
              }

              v109 = v238;
              if (v238.n128_f64[0] >= *&bytes[16])
              {
                v109.n128_u64[0] = *&bytes[16];
              }

              v236 = v120;
              v238 = v109;
              v114 += v116;
              --v115;
              v97 += 36;
            }

            while (v114 < v113);
          }

          v109.n128_f32[0] = (v113 - 1);
          *(v247.f64 + 1) = v109.n128_f32[0];
          *(&v246 + 1) = v109.n128_f32[0];
          _computeProjectedPoints(&v241, &v246, bytes, v109);
          v124.f64[0] = *bytes;
          if (v117 > *bytes)
          {
            v124.f64[0] = v117;
          }

          __asm { FMOV            V1.2D, #-1.0 }

          v130 = vaddq_f64(v224, _Q1);
          *&v131.f64[0] = v238.n128_u64[0];
          v131.f64[1] = *&bytes[8];
          v132 = *(a1 + 136);
          v133.i64[0] = v132;
          v133.i64[1] = SHIDWORD(v132);
          v134 = vcvtq_f64_s64(v133);
          *&v124.f64[1] = v236.n128_u64[0];
          v107 = vmaxnmq_f64(vsubq_f64(v124, v134), 0);
          v135 = vsubq_f64(vbslq_s8(vcgtq_f64(*&bytes[16], v131), v131, *&bytes[16]), v134);
          v136 = vsubq_f64(vbslq_s8(vcgtq_f64(v130, v135), v135, v130), v107);
          __asm { FMOV            V2.2D, #1.0 }

          v105 = vaddq_f64(v136, _Q2);
          v106 = v107.f64[1];
          v71 = v233;
          goto LABEL_123;
        }

        sbp_gvs_createStabilizedSampleBuffer_cold_56(&valuePtr, &v241);
      }

      else
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_57(&v241);
      }
    }
  }

  else
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_59(&v241);
  }

LABEL_303:
  value_low = LODWORD(v241.duration.value);
  if (LODWORD(v241.duration.value))
  {
    v220 = fig_log_get_emitter();
    LODWORD(v221) = value_low;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v220, "<<<< GyroVideoStabilizationV2 >>>> Fig", "err == 0 ", "bail", 0, "GVSGyroStabilizationV2.m", 5648, v221);
    goto LABEL_133;
  }

LABEL_125:
  if (!*(v7 + 2957))
  {
    v141 = *(a1 + 27408);
    if (v141)
    {
      __asm { FMOV            V2.2S, #-1.0 }

      v143 = vmla_f32(vcvt_f32_s32(*(a1 + 152)), 0x3F0000003F000000, vadd_f32(vcvt_f32_s32(*(a1 + 160)), _D2));
      v144 = *(a1 + 180);
      v145 = *(a1 + 184);
      v146 = v144 + (v144 >> 31);
      v147 = (v145 >> 1) * v144;
      if (v145 <= 1)
      {
        v147 = 0;
      }

      LODWORD(v241.duration.value) = 0;
      *bytes = 0;
      GVSComputePerspectiveProjectedPoint((v141 + 36 * (v147 + (v146 >> 1))), &v241, bytes, v143.f32[0], v143.f32[1]);
      v148 = __PAIR64__(*bytes, v241.duration.value);
    }

    else
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_60();
      v148 = 0;
    }

    *(a1 + 30200) = vdiv_f32(v148, vcvt_f32_s32(*(a1 + 128)));
  }

  if (*v7 == 5)
  {
    value_low = 0;
LABEL_133:
    v123 = v234;
    goto LABEL_207;
  }

  if (a1 && v71 && a3)
  {
    v149.n128_u64[0] = GVSComputeOverscanUsage((a1 + 128), (a3 + 104), *(a1 + 27408));
    v153.n128_f32[0] = *(a3 + 96);
    v151.n128_f32[0] = *(a3 + 100);
    v152 = v149.n128_f32[0] / v153.n128_f32[0];
    _NF = v149.n128_f32[0] < v153.n128_f32[0];
    v153.n128_u32[0] = 1.0;
    if (_NF)
    {
      v149.n128_f32[0] = v152;
    }

    else
    {
      v149.n128_f32[0] = 1.0;
    }

    if (v150.n128_f32[0] >= v151.n128_f32[0])
    {
      v150.n128_f32[0] = 1.0;
    }

    else
    {
      v150.n128_f32[0] = v150.n128_f32[0] / v151.n128_f32[0];
    }

    v154 = *(a3 + 136);
    if (v154 >= 5)
    {
      sbp_gvs_createStabilizedSampleBuffer_cold_64(v149, v150, v153, v151);
    }

    else
    {
      v155 = *(a3 + 140);
      if (v155 >= 3)
      {
        sbp_gvs_createStabilizedSampleBuffer_cold_63(v149, v150, v153, v151);
      }

      else
      {
        v156 = v155 - 1;
        if (v155 <= 0)
        {
          v156 = 0;
        }

        v157 = OverscanHistogramIndexMapping[2 * v154 + v156];
        if ((v157 & 0x80000000) != 0)
        {
          sbp_gvs_createStabilizedSampleBuffer_cold_62(v149, v150, v153, v151);
        }

        else
        {
          v158 = fminf(v149.n128_f32[0], v150.n128_f32[0]);
          if (v158 >= 0.02)
          {
            if (v158 >= 0.04)
            {
              if (v158 >= 0.06)
              {
                if (v158 >= 0.11)
                {
                  if (v158 >= 0.16)
                  {
                    v159 = 6;
                    if (v158 < 0.21)
                    {
                      v159 = 5;
                    }
                  }

                  else
                  {
                    v159 = 4;
                  }
                }

                else
                {
                  v159 = 3;
                }
              }

              else
              {
                v159 = 2;
              }
            }

            else
            {
              v159 = 1;
            }
          }

          else
          {
            v159 = 0;
          }

          *(a1 + 4 * v157 + 30024) = v154 | (v155 << 16);
          v190 = a1 + 28 * v157 + 4 * v159;
          *(v190 + 29824) = *(v190 + 29824) + 1.0;
          v191 = *(v7 + 594);
          if (v191 > 0.0)
          {
            v192 = a1 + 4 * vcvtms_s32_f32((*(v7 + 596) / v191) * 6.0);
            *(v192 + 29992) = *(v192 + 29992) + 1.0;
          }

          LODWORD(v241.duration.value) = 0;
          if (CMGetAttachment(v71, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0))
          {
            FigCFDictionaryGetInt32IfPresent();
            *(v7 + 718) = *(v7 + 718) + SLODWORD(v241.duration.value);
          }

          else
          {
            sbp_gvs_createStabilizedSampleBuffer_cold_61();
          }
        }
      }
    }
  }

  else
  {
    sbp_gvs_createStabilizedSampleBuffer_cold_65();
  }

  v123 = v234;
  value_low = 0;
LABEL_207:
  if (*(v7 + 2630))
  {
    v122 = HIDWORD(v232) == 1 && *(v7 + 2648);
    goto LABEL_212;
  }

LABEL_213:
  CMRemoveAttachment(sourceBuffer, @"InputDepthPixelBuffer");
  CMRemoveAttachment(sourceBuffer, @"OutputDepthPixelBuffer");
  v193 = v242;
  if (value_low && v242)
  {
    CFRelease(v242);
    v193 = 0;
    v242 = 0;
  }

  *v123 = v193;
  if (v243)
  {
    CFRelease(v243);
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return value_low;
}
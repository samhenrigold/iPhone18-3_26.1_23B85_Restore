uint64_t re::ecs2::CustomMatrixCameraComponent::cullingProjectionMatrix(uint64_t a1, uint64_t a2)
{
  if (a2 < 3)
  {
    return a1 + qword_1E3085540[a2];
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "cullingProjectionMatrix", 385, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid Camera Eye.");
  __break(1u);
  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setProjection(uint64_t a1, re::Projection *this, uint64_t a3)
{
  v3 = a3;
  if (*(this + 80) == 1)
  {
    v6 = *(this + 7);
    v10 = *(this + 6);
    v11 = v6;
    v7 = *(this + 9);
    v12 = *(this + 8);
    v13 = v7;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(&v10, this);
  }

  result = re::ecs2::CustomMatrixCameraComponent::setRenderProjectionFromMatrix(a1, &v10, v3);
  if (*(this + 160) == 1)
  {
    re::Projection::cullingProjectionMatrix(v9, this);
    LOBYTE(v10) = 1;
    v11 = v9[0];
    v12 = v9[1];
    v13 = v9[2];
    v14 = v9[3];
    return re::ecs2::CustomMatrixCameraComponent::setCullingProjectionFromMatrix(a1, &v10, v3);
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setRenderProjectionFromMatrix(uint64_t result, __int128 *a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setRenderProjectionFromMatrix", 405, v3, v4);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid Camera Eye.");
    __break(1u);
  }

  else
  {
    v5 = (result + qword_1E3085558[a3]);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v5[2] = a2[2];
    v5[3] = v8;
    *v5 = v6;
    v5[1] = v7;
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setCullingProjectionFromMatrix(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 2)
  {
    if (*(result + 496))
    {
      if ((*a2 & 1) == 0)
      {
        *(result + 496) = 0;
        return result;
      }
    }

    else
    {
      if ((*a2 & 1) == 0)
      {
        return result;
      }

      *(result + 496) = 1;
    }

    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 64);
    *(result + 544) = *(a2 + 48);
    *(result + 560) = v10;
    *(result + 512) = v8;
    *(result + 528) = v9;
    return result;
  }

  if (a3 > 1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setCullingProjectionFromMatrix", 418, v3, v4);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid Camera Eye.");
    __break(1u);
  }

  else
  {
    if (*(result + 416))
    {
      if ((*a2 & 1) == 0)
      {
        *(result + 416) = 0;
        return result;
      }

      goto LABEL_12;
    }

    if (*a2)
    {
      *(result + 416) = 1;
LABEL_12:
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 64);
      *(result + 464) = *(a2 + 48);
      *(result + 480) = v7;
      *(result + 432) = v5;
      *(result + 448) = v6;
    }
  }

  return result;
}

void re::ecs2::CustomMatrixCameraComponent::localEyePose(re::TransformService **result@<X0>, int8x16_t *a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  if (a3 == 1)
  {
    v8 = re::TransformService::transformServiceFromEntity(result[2], a2);
    if (v8)
    {
      re::TransformService::worldTransform(v8, result[2], 0, v31);
      _V0.S[3] = v32.i32[3];
      _Q1 = vnegq_f32(v32);
      v11 = vnegq_f32(v33);
      v12 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
      v13 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v32), v12, v33);
      v14 = vaddq_f32(v13, v13);
      v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v32), v15, v12);
      v17 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v15, v32, 3), v33), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
      v18 = a2[1];
      v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a2, *a2), *a2, 0xCuLL), v32), *a2, v12);
      v20 = vaddq_f32(v19, v19);
      v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v32), v21, v12);
      v23 = vaddq_f32(vaddq_f32(*a2, vmulq_laneq_f32(v21, v32, 3)), vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
      _Q6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v32), v18, v12);
      v25 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL), v18, v32, 3);
      _Q6.i32[0] = v18.i32[3];
      v26 = vmlsq_laneq_f32(v25, v32, v18, 3);
      __asm { FMLA            S1, S6, V0.S[3] }

      v26.i32[3] = _Q1.i32[0];
      *a4 = vaddq_f32(v17, v23);
      a4[1] = v26;
    }

    else
    {
      a4->i64[0] = 0;
      a4->i64[1] = 0;
      a4[1].i64[0] = 0;
      a4[1].i64[1] = 0x3F80000000000000;
    }
  }

  else if (a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid pose reference", "!Unreachable code", "localEyePose", 461);
    _os_crash("assertion failure: (!Unreachable code) Invalid pose reference");
    __break(1u);
  }

  else
  {
    v6 = a2[1];
    *a4 = *a2;
    a4[1] = v6;
  }
}

__n128 re::ecs2::CustomMatrixCameraComponent::localEyePoseMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::ecs2::CustomMatrixCameraComponent::localEyePose(a1, a2, &v24);
  v4 = v25;
  v5 = v26;
  v6 = v4 + v4;
  v7 = v5 + v5;
  v8 = v27;
  v9 = v8 + v8;
  v10 = v4 * (v4 + v4);
  v11 = v5 * (v5 + v5);
  v12 = v8 * (v8 + v8);
  v13 = v6 * v26;
  v14 = v6 * v27;
  v15 = v7 * v27;
  v16 = v7 * v28;
  v17 = v9 * v28;
  HIDWORD(v18) = 0;
  *&v18 = 1.0 - (v11 + v12);
  *(&v18 + 1) = (v6 * v26) + v17;
  *(&v18 + 2) = (v6 * v27) - v16;
  v19 = v6 * v28;
  v20 = 1.0 - (v10 + v12);
  HIDWORD(v21) = 0;
  *&v21 = v13 - v17;
  *(&v21 + 1) = v20;
  *(&v21 + 2) = v15 + v19;
  HIDWORD(v22) = 0;
  *&v22 = v14 + v16;
  *(&v22 + 1) = v15 - v19;
  *(&v22 + 2) = 1.0 - (v10 + v11);
  *a3 = v18;
  *(a3 + 16) = v21;
  result = v24;
  result.n128_u32[3] = 1.0;
  *(a3 + 32) = v22;
  *(a3 + 48) = result;
  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setEyePose(uint64_t result, _OWORD *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v7 = a2[1];
      *(result + 208) = *a2;
      *(result + 224) = v7;
      *(result + 241) = a3;
    }

    else if (a4 == 1)
    {
      v6 = a2[1];
      *(result + 176) = *a2;
      *(result + 192) = v6;
      *(result + 240) = a3;
    }

    else
    {
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setEyePose", 498, v4, v5);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid Camera Eye.");
      __break(1u);
    }
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setLocalEyePoseFromMatrix(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v5 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = (*a2 + v9) + v13;
  if (v15 >= 0.0)
  {
    v36 = sqrtf(v15 + 1.0);
    v37 = v36 + v36;
    v38 = vrecpe_f32(COERCE_UNSIGNED_INT(v36 + v36));
    v39 = vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v38));
    v40 = vmul_f32(v39, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v39)).f32[0];
    *&v45 = (v10 - v12) * v40;
    v46 = (v11 - v7) * v40;
    v47 = (v5 - v8) * v40;
    v48 = v37 * 0.25;
  }

  else if (v6 < v9 || v6 < v13)
  {
    v17 = 1.0 - v6;
    v18 = v9 < v13;
    v19 = sqrtf((v17 - v9) + v13);
    *&v20 = v19 + v19;
    v21 = vrecpe_f32(v20);
    v22 = vmul_f32(v21, vrecps_f32(v20, v21));
    v23 = vmul_f32(v22, vrecps_f32(v20, v22)).f32[0];
    v24 = (v7 + v11) * v23;
    v25 = v10 + v12;
    v26 = v25 * v23;
    v27 = *&v20 * 0.25;
    v28 = (v5 - v8) * v23;
    v29 = sqrtf(v9 + (v17 - v13));
    *&v30 = v29 + v29;
    v31 = vrecpe_f32(v30);
    v32 = vmul_f32(v31, vrecps_f32(v30, v31));
    v32.f32[0] = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
    v33 = (v5 + v8) * v32.f32[0];
    v34 = *&v30 * 0.25;
    v35 = v25 * v32.f32[0];
    v48 = (v11 - v7) * v32.f32[0];
    if (v18)
    {
      *&v45 = v24;
    }

    else
    {
      *&v45 = v33;
    }

    if (v18)
    {
      v46 = v26;
    }

    else
    {
      v46 = v34;
    }

    if (v18)
    {
      v47 = v27;
    }

    else
    {
      v47 = v35;
    }

    if (v18)
    {
      v48 = v28;
    }
  }

  else
  {
    v41 = sqrtf(v6 + ((1.0 - v9) - v13));
    *&v42 = v41 + v41;
    v43 = vrecpe_f32(v42);
    v44 = vmul_f32(v43, vrecps_f32(v42, v43));
    v44.f32[0] = vmul_f32(v44, vrecps_f32(v42, v44)).f32[0];
    *&v45 = *&v42 * 0.25;
    v46 = (v5 + v8) * v44.f32[0];
    v47 = (v7 + v11) * v44.f32[0];
    v48 = (v10 - v12) * v44.f32[0];
  }

  v51 = v3;
  v52 = v4;
  *(&v45 + 1) = v46;
  *(&v45 + 1) = __PAIR64__(LODWORD(v48), LODWORD(v47));
  v50[0] = v14;
  v50[1] = v45;
  return re::ecs2::CustomMatrixCameraComponent::setEyePose(a1, v50, 0, a3);
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setWorldEyePoseFromMatrix(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v5 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = (*a2 + v9) + v13;
  if (v15 >= 0.0)
  {
    v36 = sqrtf(v15 + 1.0);
    v37 = v36 + v36;
    v38 = vrecpe_f32(COERCE_UNSIGNED_INT(v36 + v36));
    v39 = vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v38));
    v40 = vmul_f32(v39, vrecps_f32(COERCE_UNSIGNED_INT(v36 + v36), v39)).f32[0];
    *&v45 = (v10 - v12) * v40;
    v46 = (v11 - v7) * v40;
    v47 = (v5 - v8) * v40;
    v48 = v37 * 0.25;
  }

  else if (v6 < v9 || v6 < v13)
  {
    v17 = 1.0 - v6;
    v18 = v9 < v13;
    v19 = sqrtf((v17 - v9) + v13);
    *&v20 = v19 + v19;
    v21 = vrecpe_f32(v20);
    v22 = vmul_f32(v21, vrecps_f32(v20, v21));
    v23 = vmul_f32(v22, vrecps_f32(v20, v22)).f32[0];
    v24 = (v7 + v11) * v23;
    v25 = v10 + v12;
    v26 = v25 * v23;
    v27 = *&v20 * 0.25;
    v28 = (v5 - v8) * v23;
    v29 = sqrtf(v9 + (v17 - v13));
    *&v30 = v29 + v29;
    v31 = vrecpe_f32(v30);
    v32 = vmul_f32(v31, vrecps_f32(v30, v31));
    v32.f32[0] = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
    v33 = (v5 + v8) * v32.f32[0];
    v34 = *&v30 * 0.25;
    v35 = v25 * v32.f32[0];
    v48 = (v11 - v7) * v32.f32[0];
    if (v18)
    {
      *&v45 = v24;
    }

    else
    {
      *&v45 = v33;
    }

    if (v18)
    {
      v46 = v26;
    }

    else
    {
      v46 = v34;
    }

    if (v18)
    {
      v47 = v27;
    }

    else
    {
      v47 = v35;
    }

    if (v18)
    {
      v48 = v28;
    }
  }

  else
  {
    v41 = sqrtf(v6 + ((1.0 - v9) - v13));
    *&v42 = v41 + v41;
    v43 = vrecpe_f32(v42);
    v44 = vmul_f32(v43, vrecps_f32(v42, v43));
    v44.f32[0] = vmul_f32(v44, vrecps_f32(v42, v44)).f32[0];
    *&v45 = *&v42 * 0.25;
    v46 = (v5 + v8) * v44.f32[0];
    v47 = (v7 + v11) * v44.f32[0];
    v48 = (v10 - v12) * v44.f32[0];
  }

  v51 = v3;
  v52 = v4;
  *(&v45 + 1) = v46;
  *(&v45 + 1) = __PAIR64__(LODWORD(v48), LODWORD(v47));
  v50[0] = v14;
  v50[1] = v45;
  return re::ecs2::CustomMatrixCameraComponent::setEyePose(a1, v50, 1, a3);
}

uint64_t re::ecs2::CustomMatrixCameraComponent::setRenderFrustumTangents(uint64_t result, _OWORD *a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "setRenderFrustumTangents", 525, v3, v4);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid Camera Eye.");
    __break(1u);
  }

  else
  {
    *(result + qword_1E3085570[a3]) = *a2;
  }

  return result;
}

uint64_t re::ecs2::CustomMatrixCameraComponent::renderFrustumTangents(uint64_t a1, uint64_t a2)
{
  if (a2 < 3)
  {
    return *(a1 + qword_1E3085570[a2]);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid Camera Eye.", "!Unreachable code", "renderFrustumTangents", 539, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid Camera Eye.");
  __break(1u);
  return result;
}

void re::ecs2::PerspectiveCameraComponent::~PerspectiveCameraComponent(re::ecs2::PerspectiveCameraComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::OrthographicCameraComponent::~OrthographicCameraComponent(re::ecs2::OrthographicCameraComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::CustomMatrixCameraComponent::~CustomMatrixCameraComponent(re::ecs2::CustomMatrixCameraComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226PerspectiveCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227OrthographicCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227CustomMatrixCameraComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void re::registerSerializationFunctions(re *this)
{
  v198 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v198);
  v202 = 0x6DAE480279BALL;
  v203 = "Component";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v199 = 0x7F36B44A9D0F5EC6;
  v200 = "AssetBinarySerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v2);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x81C6E49267FF3CC8;
  v200 = "AssetBinaryDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v16);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x3D2ADDFABE78EB94;
  v200 = "AssetOPACKSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v30);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x935762BFD538CE16;
  v200 = "AssetOPACKDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v44);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x8EBD744EB006D4;
  v200 = "AssetJSONSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v58);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xD414A1634161956;
  v200 = "AssetJSONDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v72);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xE1F66B0F30BD1E9ELL;
  v200 = "ECSJSONSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v86);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x3373FC80C73C66A0;
  v200 = "ECSJSONDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v100);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x88B8E3BC1E0ECD0ALL;
  v200 = "ECSOPACKSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v114);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x337AFDA7A6DC2A0CLL;
  v200 = "ECSOPACKDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v128);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xD66B7D4190E6B598;
  v200 = "NetworkOPACKSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v142);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xDEED4B9BC35C271ALL;
  v200 = "NetworkOPACKDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v156);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0x287C37956ADFC9C4;
  v200 = "NetworkCompatSerializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v170);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  v199 = 0xEFB8C0610360E046;
  v200 = "NetworkCompatDeserializer";
  re::introspect_Vector2F(1);
  re::introspect_Vector3F(1);
  re::introspect_Vector4F(1);
  re::introspect_Vector2D(1);
  re::introspect_Vector3D(1);
  re::introspect_Vector4D(1);
  re::introspect_Matrix2x2F(1);
  re::introspect_Matrix3x3F(1);
  re::introspect_Matrix4x4F(1);
  re::introspect_PoseF(1);
  re::introspect_QuaternionF(1);
  re::introspect_SRT(1);
  introspect_REAudioPlaybackState(1, v184);
  v202 = 0x478E8020DEELL;
  v203 = "Vector2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E2CLL;
  v203 = "Vector3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E6ALL;
  v203 = "Vector4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020DEALL;
  v203 = "Vector2D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E28;
  v203 = "Vector3D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x478E8020E66;
  v203 = "Vector4D";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E85D76;
  v203 = "Matrix2x2F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04E94672;
  v203 = "Matrix3x3F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0xF13AC04EA2F6ELL;
  v203 = "Matrix4x4F";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 154604394;
  v203 = "PoseF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x1EE51E553020190;
  v203 = "QuaternionF";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 164778;
  v203 = "SRT";
  if (v202)
  {
    if (v202)
    {
    }
  }

  v202 = 0x6E6EE0AE8D82AD26;
  v203 = "REAudioPlaybackState";
  if (v202)
  {
    if (v202)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  std::__shared_mutex_base::unlock(v198);
}

void re::registerSerializeSwiftCodableComponent(re *this, const char *a2)
{
  v3 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v3);
  v20 = 0x7F36B44A9D0F5EC6;
  v21 = "AssetBinarySerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x81C6E49267FF3CC8;
  v21 = "AssetBinaryDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x3D2ADDFABE78EB94;
  v21 = "AssetOPACKSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x935762BFD538CE16;
  v21 = "AssetOPACKDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x8EBD744EB006D4;
  v21 = "AssetJSONSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xD414A1634161956;
  v21 = "AssetJSONDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xE1F66B0F30BD1E9ELL;
  v21 = "ECSJSONSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x3373FC80C73C66A0;
  v21 = "ECSJSONDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x88B8E3BC1E0ECD0ALL;
  v21 = "ECSOPACKSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0x337AFDA7A6DC2A0CLL;
  v21 = "ECSOPACKDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xD66B7D4190E6B598;
  v21 = "NetworkOPACKSerializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0xDEED4B9BC35C271ALL;
  v21 = "NetworkOPACKDeserializer";
  v18 = 0;
  v19 = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  re::ecs2::IntrospectedNetworkTypeHelper::registerSwiftComponent(this, v17);
  std::__shared_mutex_base::unlock(v3);
}

void re::registerSerializeFunc<re::AssetBinarySerializer>(const re::StringID *a1, re::TypeRegistry *this, re::StringID *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = re::TypeRegistry::typeID(&v14, this, a3);
  if (v14)
  {
    re::TypeRegistry::typeID(buf, this, a1);
    if (!buf[0])
    {
      re::TypeRegistry::declareType(&v13, a1, this, 8, 1u, 0);
      *buf = v13;
    }

    v11 = *buf;
    v12 = v14;
    re::TypeRegistry::addAttribute(this, &v12, 0xFFFFFFFFLL, &v11, a4, 0);
  }

  else
  {
    v9 = *re::foundationSerializationLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a3 + 1);
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v10;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Failed to register serialization function. Type %s not found in type registry.", buf, 0xCu);
    }
  }
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if ((*(*v14 + 8))(v14))
  {
    re::TypeMemberCollection::TypeMemberCollection(v37, *a5, *(a5 + 2));
    re::TypeMemberCollection::operator[](v37, 0, v39);
    re::TypeRegistry::typeInfo(v39[0], *v39[2], &Length);
    re::TypeInfo::TypeInfo(v40, v43);
    re::TypeRegistry::typeInfo(v40[0], v40[2][10], &Length);
    re::TypeInfo::TypeInfo(v41, v43);
    v15 = re::TypeMemberCollection::TypeMemberCollection(&Length, v41[0], v41[2]);
    if (v43[3])
    {
      re::TypeMemberCollection::operator[](v15, 0, v37);
      if (*(v38 + 8) >> 1 != 0x274B0FCFAA8 || (v16 = *(v38 + 16), v16 != "__JSON__") && strcmp(v16, "__JSON__"))
      {
        v17 = re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
        return v17 & 1;
      }
    }
  }

  v18 = (*(*a4 + 40))(a4);
  if ((*(*v18 + 8))(v18))
  {
    v20 = v18[12];
    if (v20)
    {
      v21 = v20(a4, v18, "json");
      if (v21)
      {
        v22 = v21;
        goto LABEL_13;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v22 = re::ecs2::g_encodeComponent(a4, v18, "json");
    if (!v22)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v23, v24, v25, v26, v27, v28, v18[4]);
LABEL_23:
      v17 = 0;
      return v17 & 1;
    }

LABEL_13:
    Length = CFDataGetLength(v22);
    if (Length)
    {
      LODWORD(v37[0]) = 2;
      if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, v37, 0))
      {
        LODWORD(v41[0]) = 2;
        if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, v41, 0))
        {
          if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, a3, &Length, 0))
          {
            BytePtr = CFDataGetBytePtr(v22);
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, BytePtr, 0);
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
          }

          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        }

        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
      }

      CFRelease(v22);
      v17 = *(a1 + 64) ^ 1;
      return v17 & 1;
    }

    re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v29, v30, v31, v32, v33, v34, v18[4]);
    CFRelease(v22);
    goto LABEL_23;
  }

  re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsEmbeddedJSON", 42);
  result = _os_crash("assertion failure: (g_encodeComponent) Swift Codable Encode Callback not registered");
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if (!(*(*v14 + 8))(v14) || (re::TypeMemberCollection::TypeMemberCollection(v26, *a5, *(a5 + 2)), re::TypeMemberCollection::operator[](v26, 0, v28), re::TypeRegistry::typeInfo(v28[0], *v28[2], &__dst), re::TypeInfo::TypeInfo(v29, v32), re::TypeRegistry::typeInfo(v29[0], v29[2][10], &__dst), re::TypeInfo::TypeInfo(v30, v32), v15 = re::TypeMemberCollection::TypeMemberCollection(&__dst, v30[0], v30[2]), !v32[3]) || (re::TypeMemberCollection::operator[](v15, 0, v26), *(v27 + 8) >> 1 == 0x274B0FCFAA8) && ((v16 = *(v27 + 16), v16 == "__JSON__") || !strcmp(v16, "__JSON__")))
  {
    v18 = (*(*a4 + 40))(a4);
    LODWORD(v26[0]) = 0;
    v17 = re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, v26, 0);
    if (!v17)
    {
      return v17 & 1;
    }

    if (LODWORD(v26[0]) == 2)
    {
      v17 = re::EncoderBinary<re::SeekableInputStream>::beginPointer((a1 + 24), a2, a3, v26, 0);
      if (!v17)
      {
        return v17 & 1;
      }

      if (LODWORD(v26[0]) == 2)
      {
        __dst = 0;
        v19 = re::EncoderBinary<re::SeekableInputStream>::beginString((a1 + 24), a2, a3, &__dst, 0);
        LOBYTE(v17) = 0;
        if (!v19)
        {
          return v17 & 1;
        }

        if (__dst)
        {
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], __dst);
          if (Mutable)
          {
            v21 = Mutable;
            CFDataIncreaseLength(Mutable, __dst);
            MutableBytePtr = CFDataGetMutableBytePtr(v21);
            re::EncoderBinary<re::SeekableInputStream>::serializeString(a1 + 24, MutableBytePtr, 0);
            re::EncoderBinary<re::SeekableInputStream>::endString((a1 + 24));
            re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
            re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
            if ((*(*v18 + 8))(v18))
            {
              v23 = v18[13];
              if (v23)
              {
                if (v23(a4, v18, v21, "json"))
                {
                  CFRelease(v21);
LABEL_24:
                  LOBYTE(v17) = *(a1 + 64) ^ 1;
                  return v17 & 1;
                }
              }
            }

            v25 = re::ecs2::g_decodeComponent(a4, v18, v21, "json");
            CFRelease(v21);
            if (v25)
            {
              goto LABEL_24;
            }

            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.");
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to allocate buffer for JSON data (size = %zu bytes).");
          }
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "JSON data is empty.");
        }
      }

      else
      {
        re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "JSON data not found.");
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Object not found.");
    }

    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  LOBYTE(v17) = re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
  return v17 & 1;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if ((*(*v14 + 8))(v14))
  {
    re::TypeMemberCollection::TypeMemberCollection(v37, *a5, *(a5 + 2));
    re::TypeMemberCollection::operator[](v37, 0, v39);
    re::TypeRegistry::typeInfo(v39[0], *v39[2], &Length);
    re::TypeInfo::TypeInfo(v40, v43);
    re::TypeRegistry::typeInfo(v40[0], v40[2][10], &Length);
    re::TypeInfo::TypeInfo(v41, v43);
    v15 = re::TypeMemberCollection::TypeMemberCollection(&Length, v41[0], v41[2]);
    if (v43[3])
    {
      re::TypeMemberCollection::operator[](v15, 0, v37);
      if (*(v38 + 8) >> 1 != 0x274B0FCFAA8 || (v16 = *(v38 + 16), v16 != "__JSON__") && strcmp(v16, "__JSON__"))
      {
        v17 = re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
        return v17 & 1;
      }
    }
  }

  v18 = (*(*a4 + 40))(a4);
  if ((*(*v18 + 8))(v18))
  {
    v20 = v18[12];
    if (v20)
    {
      v21 = v20(a4, v18, "json");
      if (v21)
      {
        v22 = v21;
        goto LABEL_13;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v22 = re::ecs2::g_encodeComponent(a4, v18, "json");
    if (!v22)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v23, v24, v25, v26, v27, v28, v18[4]);
LABEL_23:
      v17 = 0;
      return v17 & 1;
    }

LABEL_13:
    Length = CFDataGetLength(v22);
    if (Length)
    {
      LODWORD(v37[0]) = 2;
      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, v37, 0))
      {
        LODWORD(v41[0]) = 2;
        if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, v41, 0))
        {
          if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, a3, &Length, 0))
          {
            BytePtr = CFDataGetBytePtr(v22);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, BytePtr, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
          }

          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        }

        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
      }

      CFRelease(v22);
      v17 = *(a1 + 64) ^ 1;
      return v17 & 1;
    }

    re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v29, v30, v31, v32, v33, v34, v18[4]);
    CFRelease(v22);
    goto LABEL_23;
  }

  re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsEmbeddedJSON", 42);
  result = _os_crash("assertion failure: (g_encodeComponent) Swift Codable Encode Callback not registered");
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if (!(*(*v14 + 8))(v14) || (re::TypeMemberCollection::TypeMemberCollection(v26, *a5, *(a5 + 2)), re::TypeMemberCollection::operator[](v26, 0, v28), re::TypeRegistry::typeInfo(v28[0], *v28[2], &v31), re::TypeInfo::TypeInfo(v29, v32), re::TypeRegistry::typeInfo(v29[0], v29[2][10], &v31), re::TypeInfo::TypeInfo(v30, v32), v15 = re::TypeMemberCollection::TypeMemberCollection(&v31, v30[0], v30[2]), !v32[3]) || (re::TypeMemberCollection::operator[](v15, 0, v26), *(v27 + 8) >> 1 == 0x274B0FCFAA8) && ((v16 = *(v27 + 16), v16 == "__JSON__") || !strcmp(v16, "__JSON__")))
  {
    v18 = (*(*a4 + 40))(a4);
    LODWORD(v26[0]) = 0;
    v17 = re::EncoderOPACK<re::SeekableInputStream>::beginPointer(a1 + 24, a2, a3, v26, 0);
    if (!v17)
    {
      return v17 & 1;
    }

    if (LODWORD(v26[0]) == 2)
    {
      v17 = re::EncoderOPACK<re::SeekableInputStream>::beginPointer(a1 + 24, a2, a3, v26, 0);
      if (!v17)
      {
        return v17 & 1;
      }

      if (LODWORD(v26[0]) == 2)
      {
        v31 = 0;
        v19 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, a3, &v31, 0);
        LOBYTE(v17) = 0;
        if (!v19)
        {
          return v17 & 1;
        }

        if (v31)
        {
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v31);
          if (Mutable)
          {
            v21 = Mutable;
            CFDataIncreaseLength(Mutable, v31);
            MutableBytePtr = CFDataGetMutableBytePtr(v21);
            re::EncoderOPACK<re::SeekableInputStream>::serializeString(a1 + 24, MutableBytePtr, 0);
            re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
            re::EncoderOPACK<re::SeekableInputStream>::endPointer((a1 + 24));
            re::EncoderOPACK<re::SeekableInputStream>::endPointer((a1 + 24));
            if ((*(*v18 + 8))(v18))
            {
              v23 = v18[13];
              if (v23)
              {
                if (v23(a4, v18, v21, "json"))
                {
                  CFRelease(v21);
LABEL_24:
                  LOBYTE(v17) = *(a1 + 64) ^ 1;
                  return v17 & 1;
                }
              }
            }

            v25 = re::ecs2::g_decodeComponent(a4, v18, v21, "json");
            CFRelease(v21);
            if (v25)
            {
              goto LABEL_24;
            }

            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.");
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to allocate buffer for JSON data (size = %zu bytes).");
          }
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "JSON data is empty.");
        }
      }

      else
      {
        re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "JSON data not found.");
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Object not found.");
    }

    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  LOBYTE(v17) = re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
  return v17 & 1;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 40))(a4, a2, a3);
  if ((*(*v7 + 8))(v7))
  {
    v9 = v7[12];
    if (v9)
    {
      v10 = v9(a4, v7, "json");
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v10 = re::ecs2::g_encodeComponent(a4, v7, "json");
    if (!v10)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v11, v12, v13, v14, v15, v16, v7[4]);
      return 0;
    }

LABEL_6:
    v17 = v10;
    if (CFDataGetLength(v10))
    {
      BytePtr = CFDataGetBytePtr(v17);
      Length = CFDataGetLength(v17);
      v32 = a2;
      v26 = *(a1 + 64);
      if ((v26 & 1) == 0)
      {
        v27 = Length;
        if ((*(*(a1 + 152) + 48 * *(a1 + 136) - 44) & 0x20) != 0)
        {
          rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 192), &v32);
        }

        v28 = *(a1 + 192);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v28);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteRawValue(v28, BytePtr, v27);
        v29 = *(a1 + 152) + 48 * *(a1 + 136);
        ++*(v29 - 16);
      }

      v30 = v26 ^ 1u;
    }

    else
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v18, v19, v20, v21, v22, v23, v7[4]);
      v30 = 0;
    }

    CFRelease(v17);
    return v30;
  }

  re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsJSON", 163);
  result = _os_crash("assertion failure: (g_encodeComponent) Swift Codable Encode Callback not registered");
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 40))(a4, a2, a3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = 256;
  if ((*(a1 + 64) & 1) == 0)
  {
    JSONValue = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue((a1 + 24), a2, 0);
    if (JSONValue)
    {
      v22 = &v18;
      memset(v23, 0, sizeof(v23));
      v24 = 0;
      v25 = 512;
      v26 = 324;
      v27 = 0;
      rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(JSONValue, &v22);
      v9 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v9 - 16);
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v23);
    }
  }

  if ((*(a1 + 64) & 1) != 0 || *(&v19 + 1) == v19)
  {
    goto LABEL_14;
  }

  v10 = *MEMORY[0x1E695E480];
  String = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(&v18);
  v12 = CFDataCreateWithBytesNoCopy(v10, String, *(&v19 + 1) - v19, *MEMORY[0x1E695E498]);
  if ((*(*v7 + 8))(v7))
  {
    v14 = *(v7 + 104);
    if (v14)
    {
      if (v14(a4, v7, v12, "json"))
      {
        CFRelease(v12);
LABEL_12:
        v16 = *(a1 + 64) ^ 1;
LABEL_15:
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(&v18);
        return v16 & 1;
      }
    }
  }

  if (re::ecs2::g_decodeComponent)
  {
    v15 = re::ecs2::g_decodeComponent(a4, v7, v12, "json");
    CFRelease(v12);
    if (v15)
    {
      goto LABEL_12;
    }

    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.", *(v7 + 32));
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Swift Codable Decode Callback not registered", "g_decodeComponent", "serializeComponentAsJSON", 204, v18);
  result = _os_crash("assertion failure: (g_decodeComponent) Swift Codable Decode Callback not registered");
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 40))(a4, a2, a3);
  if ((*(*v7 + 8))(v7))
  {
    v9 = v7[12];
    if (v9)
    {
      v10 = v9(a4, v7, "json");
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  if (re::ecs2::g_encodeComponent)
  {
    v10 = re::ecs2::g_encodeComponent(a4, v7, "json");
    if (!v10)
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v11, v12, v13, v14, v15, v16, v7[4]);
      return 0;
    }

LABEL_6:
    v17 = v10;
    if (CFDataGetLength(v10))
    {
      BytePtr = CFDataGetBytePtr(v17);
      Length = CFDataGetLength(v17);
      v32 = a2;
      v26 = *(a1 + 64);
      if ((v26 & 1) == 0)
      {
        v27 = Length;
        if ((*(*(a1 + 152) + 48 * *(a1 + 136) - 44) & 0x20) != 0)
        {
          rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 192), &v32);
        }

        v28 = *(a1 + 192);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v28);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteRawValue(v28, BytePtr, v27);
        v29 = *(a1 + 152) + 48 * *(a1 + 136);
        ++*(v29 - 16);
      }

      v30 = v26 ^ 1u;
    }

    else
    {
      re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError((a1 + 24), a2, v18, v19, v20, v21, v22, v23, v7[4]);
      v30 = 0;
    }

    CFRelease(v17);
    return v30;
  }

  re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Swift Codable Encode Callback not registered", "g_encodeComponent", "serializeComponentAsJSON", 163);
  result = _os_crash("assertion failure: (g_encodeComponent) Swift Codable Encode Callback not registered");
  __break(1u);
  return result;
}

uint64_t re::ecs2::serializeSwiftCodableComponent<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *a5, re::TypeInfo *a6, uint64_t a7)
{
  v14 = (*(*a4 + 40))(a4);
  if (!(*(*v14 + 8))(v14) || (re::TypeMemberCollection::TypeMemberCollection(v26, *a5, *(a5 + 2)), re::TypeMemberCollection::operator[](v26, 0, v28), re::TypeRegistry::typeInfo(v28[0], *v28[2], &v31), re::TypeInfo::TypeInfo(v29, v32), re::TypeRegistry::typeInfo(v29[0], v29[2][10], &v31), re::TypeInfo::TypeInfo(v30, v32), v15 = re::TypeMemberCollection::TypeMemberCollection(&v31, v30[0], v30[2]), !v32[3]) || (re::TypeMemberCollection::operator[](v15, 0, v26), *(v27 + 8) >> 1 == 0x274B0FCFAA8) && ((v16 = *(v27 + 16), v16 == "__JSON__") || !strcmp(v16, "__JSON__")))
  {
    v18 = (*(*a4 + 40))(a4);
    LODWORD(v26[0]) = 0;
    v17 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, a3, v26, 0);
    if (!v17)
    {
      return v17 & 1;
    }

    if (LODWORD(v26[0]) == 2)
    {
      v17 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, a3, v26, 0);
      if (!v17)
      {
        return v17 & 1;
      }

      if (LODWORD(v26[0]) == 2)
      {
        v31 = 0;
        v19 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, &v31, 0);
        LOBYTE(v17) = 0;
        if (!v19)
        {
          return v17 & 1;
        }

        if (v31)
        {
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v31);
          if (Mutable)
          {
            v21 = Mutable;
            CFDataIncreaseLength(Mutable, v31);
            MutableBytePtr = CFDataGetMutableBytePtr(v21);
            re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, MutableBytePtr, 0);
            re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
            re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
            re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
            if ((*(*v18 + 8))(v18))
            {
              v23 = v18[13];
              if (v23)
              {
                if (v23(a4, v18, v21, "json"))
                {
                  CFRelease(v21);
LABEL_24:
                  LOBYTE(v17) = *(a1 + 64) ^ 1;
                  return v17 & 1;
                }
              }
            }

            v25 = re::ecs2::g_decodeComponent(a4, v18, v21, "json");
            CFRelease(v21);
            if (v25)
            {
              goto LABEL_24;
            }

            re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "Failed to deserialize Swift Codable component of type %s.");
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "Failed to allocate buffer for JSON data (size = %zu bytes).");
          }
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "JSON data is empty.");
        }
      }

      else
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "JSON data not found.");
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "Object not found.");
    }

    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  LOBYTE(v17) = re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
  return v17 & 1;
}

double re::registerSerializationFunctions(void)::$_0::__invoke@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v2 = *(*(*(*a1 + 40))(a1) + 56);

    v2();
  }

  else
  {
    *a2 = 0;
    *&result = 0xFFFFFFFFLL;
    a2[1] = 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<long long>(a1 + 24, "w", 3, a4 + 24, "double", a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v21[0] = 1, v22 = 0, v23 = a2, v24 = 0u, v25 = 0u, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "position", 1, a4, a7), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v21[0] = 1, v22 = 0, v23 = a2, v24 = 0u, v25 = 0u, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "scale", 1, a4, a7), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7), re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "translation", 3, a4 + 32, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

re::TypeInfo *re::serializeAudioPlaybackState<re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 != this)
  {
    v14 = re::TypeInfo::enumConstants(this);
    if (!v15)
    {
LABEL_6:
      re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v20);
      re::TypeInfo::TypeInfo(v19, v21);
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v20);
      re::TypeInfo::TypeInfo(v18, v21);
      if (*(a1 + 64))
      {
        return 0;
      }

      else
      {
        return (*(*a1 + 72))(a1, a2, a3, a4, v19, v18, a7);
      }
    }

    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  return re::serializeEnum<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, this, a7);
}

uint64_t re::serialize<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  v10 = 2;
  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "x", 0, a4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "y", 1, a4 + 4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "x", 0, a4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "y", 1, a4 + 4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "z", 2, a4 + 8, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "x", 0, a4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "y", 1, a4 + 4, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "z", 2, a4 + 8, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::serializeValue<int>(a1, "w", 3, a4 + 12, "float", a5);
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3054780, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3085590, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3068150, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(a1 + 24, "w", 3, a4 + 24, "double", a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3054780, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column1", a4 + 8, a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3085590, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3068150, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "column3", a4 + 48, a7);
          re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v21[0] = 1, v22 = 0, v23 = a2, v24 = 0u, v25 = 0u, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "position", a4, a7), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "orientation", a4 + 16, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v21[0] = 1, v22 = 0, v23 = a2, v24 = 0u, v25 = 0u, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "scale", a4, a7), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "rotation", a4 + 16, a7), re::serialize<re::EncoderBinary<re::SeekableInputStream>>(a1 + 24, "translation", a4 + 32, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v20, v22);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v19, v22);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v20, v19, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderBinary<re::SeekableInputStream>>(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v17 = v4;
    v18 = v5;
    v11[0] = 5;
    v12 = 4;
    v13 = a2;
    v14 = xmmword_1E3054780;
    v15 = 0;
    v16 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v17 = v4;
    v18 = v5;
    v11[0] = 5;
    v12 = 4;
    v13 = a2;
    v14 = xmmword_1E3085590;
    v15 = 0;
    v16 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v17 = v4;
    v18 = v5;
    v11[0] = 5;
    v12 = 4;
    v13 = a2;
    v14 = xmmword_1E3068150;
    v15 = 0;
    v16 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(a1, "w", 3, a3 + 12, "float", a4);
      re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, "w", 3, a4 + 24, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>((a1 + 24), "translation", 3, a4 + 32, a7);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

re::TypeInfo *re::serializeAudioPlaybackState<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 != this)
  {
    v14 = re::TypeInfo::enumConstants(this);
    if (!v15)
    {
LABEL_6:
      re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v20);
      re::TypeInfo::TypeInfo(v19, v21);
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v20);
      re::TypeInfo::TypeInfo(v18, v21);
      if (*(a1 + 64))
      {
        return 0;
      }

      else
      {
        return (*(*a1 + 72))(a1, a2, a3, a4, v19, v18, a7);
      }
    }

    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  return re::serializeEnum<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, this, a7);
}

uint64_t re::serialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, int a3, char *a4, char a5)
{
  v10 = 2;
  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "x", 0, a4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "x", 0, a4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "x", 0, a4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 2)
      {
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 3)
      {
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 4)
      {
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, "w", 3, a4 + 24, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 2)
      {
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 2, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 3)
      {
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 3, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 4)
      {
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
        re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 4, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7);
      re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::SeekableInputStream>>((a1 + 24), "translation", 3, a4 + 32, a7);
      re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v20, v22);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v19, v22);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v20, v19, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderOPACK<re::SeekableInputStream>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  v10 = 2;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 2)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 3;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 3)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 4;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 4;
  if (!re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize quaternion. Expected array length = 4, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "w", 3, a4 + 3, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column3", 3, a4 + 12, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "orientation", 2, a4 + 4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "rotation", 2, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "translation", 3, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serialize<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, float *a4, char a5)
{
  v10 = 2;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      if (v20 == 2)
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7, "double");
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      if (v20 == 3)
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7, "double");
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      if (v20 == 4)
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7, "double");
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "w", 3, a4 + 3, a7, "double");
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      if (v20 == 2)
      {
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 2, a7);
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 2, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      if (v20 == 3)
      {
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 3, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v20, 4))
    {
      if (v20 == 4)
      {
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
        re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column3", 3, a4 + 12, a7);
        re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 4, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0) || (re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "position", 1, a4, a7), re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "orientation", 2, a4 + 4, a7), (*(a1 + 64) & 1) != 0))
        {
          v15 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
          v14 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v14 - 16);
          v15 = *(a1 + 64) ^ 1;
        }

        return v15 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0) || (re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "scale", 1, a4, a7), re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "rotation", 2, a4 + 4, a7), re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "translation", 3, a4 + 8, a7), (*(a1 + 64) & 1) != 0))
        {
          v15 = 0;
        }

        else
        {
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
          v14 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v14 - 16);
          v15 = *(a1 + 64) ^ 1;
        }

        return v15 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serialize<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, uint64_t a3, float *a4, char a5)
{
  v10 = 2;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 2)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 3;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 3)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 4;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 4;
  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(a1, 0, "Failed to deserialize quaternion. Expected array length = 4, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5, "float");
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5, "float");
  re::EncoderBinary<re::SeekableInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "x", 0, a4, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "y", 1, a4 + 1, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "z", 2, a4 + 2, a7);
      re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, "w", 3, a4 + 3, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 2, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 3;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v20 = 4;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column0", 0, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column1", 1, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column2", 2, a4 + 8, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "column3", 3, a4 + 12, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
      v14 = *(a1 + 64) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 == v17)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "orientation", 2, a4 + 4, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "rotation", 2, a4 + 4, a7);
      re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>((a1 + 24), "translation", 3, a4 + 8, a7);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serialize<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, float *a4, char a5)
{
  v10 = 2;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 3;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v10 = 4;
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1, a2, a3, &v10, 4))
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "x", 0, a4, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "y", 1, a4 + 1, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "z", 2, a4 + 2, a5);
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1, "w", 3, a4 + 3, a5);
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(a1);
    v8 = *(a1 + 40) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 2)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 3)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 4)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "x", 0, a4, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "y", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "z", 2, a4 + 16, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, "w", 3, a4 + 24, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 2;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 2)
      {
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column1", 1, a4 + 8, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 2, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 3;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 3)
      {
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 3, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_12;
    }

LABEL_4:
    v20 = 4;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v20, 4))
    {
      if (v20 == 4)
      {
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column0", 0, a4, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column1", 1, a4 + 16, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column2", 2, a4 + 32, a7);
        re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "column3", 3, a4 + 48, a7);
        re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
        v14 = *(a1 + 64) ^ 1;
        return v14 & 1;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), 0, "Failed to deserialize matrix. Expected array length = 4, actual array length = %zu", v20);
    }

    v14 = 0;
    return v14 & 1;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

LABEL_12:

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "position", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "orientation", 2, a4 + 16, a7);
      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), a2, a3, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:
    v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v15 = 0;
    if (v14)
    {
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "scale", 1, a4, a7);
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "rotation", 2, a4 + 16, a7);
      re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>((a1 + 24), "translation", 3, a4 + 32, a7);
      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
      v15 = *(a1 + 64) ^ 1;
    }

    return v15 & 1;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v20, v22);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v19, v22);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v20, v19, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderOPACK<re::FixedArrayInputStream>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  v10 = 2;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 2)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 2, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 3;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 3)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 3, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 4;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize vector. Expected array length = 4, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

{
  v10 = 4;
  if (!re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1, a2, a3, &v10, 4))
  {
    goto LABEL_5;
  }

  if (v10 != 4)
  {
    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(a1, 0, "Failed to deserialize quaternion. Expected array length = 4, actual array length = %zu", v10);
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "x", 0, a4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "y", 1, a4 + 4, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "z", 2, a4 + 8, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1, "w", 3, a4 + 12, a5);
  re::EncoderOPACK<re::FixedArrayInputStream>::endArray(a1);
  v8 = *(a1 + 40) ^ 1;
  return v8 & 1;
}

uint64_t re::serializeVector2F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector2D<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3054780, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector3D<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3085590, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeVector4D<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3068150, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "x", 0, a4, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "y", 1, a4 + 8, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "z", 2, a4 + 16, "double", a7);
          re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "w", 3, a4 + 24, "double", a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix2x2F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3054780, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column1", a4 + 8, a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix3x3F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3085590, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeMatrix4x4F<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v20[0] = 5, v21 = 4, v22 = a2, v23 = xmmword_1E3068150, v24 = 0, v25 = 0, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v20), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column0", a4, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column1", a4 + 16, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column2", a4 + 32, a7);
          re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "column3", a4 + 48, a7);
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializePoseF<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v21[0] = 1, v22 = 0, v23 = a2, v24 = 0u, v25 = 0u, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "position", a4, a7), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "orientation", a4 + 16, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeQuaternionF<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
LABEL_4:

    return re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, a2, a4, a7);
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeSRT<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 == v18)
    {
      v20 = WORD1(v17) == WORD1(v18);
      v19 = (v18 ^ v17) & 0xFFFFFF00000000;
      v20 = v20 && v19 == 0;
      if (v20)
      {
LABEL_4:
        if (*(a1 + 64) & 1) != 0 || (v21[0] = 1, v22 = 0, v23 = a2, v24 = 0u, v25 = 0u, re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v21), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "scale", a4, a7), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "rotation", a4 + 16, a7), re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(a1 + 24, "translation", a4 + 32, a7), (*(a1 + 64)))
        {
          v14 = 0;
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
          v15 = *(a1 + 152) + 48 * *(a1 + 136);
          ++*(v15 - 16);
          v14 = *(a1 + 64) ^ 1;
        }

        return v14 & 1;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_4;
  }

  return re::serializeObject<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeAudioPlaybackState<re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re::TypeInfo *a5, re::TypeInfo *this, uint64_t a7)
{
  if (a5 == this)
  {
LABEL_11:

    return re::serializeEnum<re::EncoderBinary<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, this, a7);
  }

  v14 = re::TypeInfo::enumConstants(this);
  if (v15)
  {
    v16 = 24 * v15;
    while (*v14 != 9)
    {
      v14 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v17 = *a4;
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v20, v22);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v21);
  re::TypeInfo::TypeInfo(v19, v22);
  if (a1[64] != 1)
  {
    result = (*(*a1 + 72))(a1, a2, a3, a4, v20, v19, a7);
    if (!result)
    {
      return result;
    }

    if (*a4 < 0xA && ((0x21Fu >> *a4) & 1) != 0)
    {
      return 1;
    }

    *a4 = v17;
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to read REAudioPlaybackState. Invalid value %zu.", v17);
  }

  return 0;
}

uint64_t re::serialize<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v17 = v4;
    v18 = v5;
    v11[0] = 5;
    v12 = 4;
    v13 = a2;
    v14 = xmmword_1E3054780;
    v15 = 0;
    v16 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v17 = v4;
    v18 = v5;
    v11[0] = 5;
    v12 = 4;
    v13 = a2;
    v14 = xmmword_1E3085590;
    v15 = 0;
    v16 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v17 = v4;
    v18 = v5;
    v11[0] = 5;
    v12 = 4;
    v13 = a2;
    v14 = xmmword_1E3068150;
    v15 = 0;
    v16 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    if (*(a1 + 40))
    {
      v6 = 0;
    }

    else
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "x", 0, a3, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "y", 1, a3 + 4, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "z", 2, a3 + 8, "float", a4);
      re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1, "w", 3, a3 + 12, "float", a4);
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endArray(a1);
      v6 = *(a1 + 40) ^ 1;
    }
  }

  return v6 & 1;
}

uint64_t *re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  re::DynamicString::setCapacity(&v22, 0);
  va_copy(v21, va);
  re::DynamicString::vassignf(&v22, "Failed to serialize Swift Codable component of type %s.", va);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v14);
  if (v15)
  {
    v11 = *&v16[7];
  }

  else
  {
    v11 = v16;
  }

  if (v23)
  {
    v12 = v24;
  }

  else
  {
    v12 = &v23 + 1;
  }

  re::DynamicString::format(&v17, "Failed to %s %s. Reason: %s", v10, "serialize", v11, v12);
  *&v20[0] = 400;
  *(&v20[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v20[1] = v17;
  *(&v20[2] + 1) = v19;
  *(&v20[1] + 8) = v18;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v20);
  if (*&v20[1])
  {
    if (BYTE8(v20[1]))
    {
      (*(**&v20[1] + 40))();
    }

    memset(&v20[1], 0, 32);
  }

  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  result = v22;
  if (v22)
  {
    if (v23)
    {
      return (*(*v22 + 40))();
    }
  }

  return result;
}

char *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteRawValue(char **a1, uint64_t a2, unint64_t a3)
{
  result = *a1;
  if (*(result + 4) - *(result + 3) < a3)
  {
    result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(result, a3);
    if (!a3)
    {
      return result;
    }
  }

  else if (!a3)
  {
    return result;
  }

  v7 = 0;
  do
  {
    v8 = *(a2 + v7);
    v9 = *(*a1 + 3);
    *(*a1 + 3) = v9 + 1;
    *v9 = v8;
    ++v7;
  }

  while (v7 < a3);
  return result;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(unsigned int *a1, char *a2)
{
  v4 = *(a1 + 11);
  v5 = v4 & 7;
  if (v5 <= 2)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 1)
      {
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
        v6 = a2;
        v7 = 0;
        goto LABEL_40;
      }

      if (v5 == 2)
      {
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
        v6 = a2;
        v7 = 1;
LABEL_40:

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(v6, v7);
      }

      goto LABEL_32;
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

    return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(a2);
  }

  if (v5 == 3)
  {
    if (rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(a2))
    {
      if (!*a1)
      {
LABEL_29:
        *(a2 + 4) -= 16;

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(a2);
      }

      v11 = (*(a1 + 1) + 24);
      while (1)
      {
        v12 = (*(v11 - 1) & 0x1000) != 0 ? (v11 - 6) : *(v11 - 2);
        v13 = (*(v11 - 1) & 0x1000) != 0 ? 21 - *(v11 - 3) : *(v11 - 6);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
        if (!rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(a2, v12, v13) || (rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(v11, a2) & 1) == 0)
        {
          break;
        }

        v14 = v11 + 6;
        v11 += 12;
        if (v14 == (*(a1 + 1) + 48 * *a1))
        {
          goto LABEL_29;
        }
      }
    }

    return 0;
  }

  if (v5 == 4)
  {
    if (rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(a2))
    {
      if (!*a1)
      {
LABEL_48:
        *(a2 + 4) -= 16;

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(a2);
      }

      v17 = *(a1 + 1);
      while ((rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>(v17, a2) & 1) != 0)
      {
        v17 += 6;
        if (v17 == (*(a1 + 1) + 24 * *a1))
        {
          goto LABEL_48;
        }
      }
    }

    return 0;
  }

  if (v5 != 5)
  {
LABEL_32:
    if ((*(a1 + 11) & 0x200) != 0)
    {
      v18 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

      return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(a2, v18);
    }

    else if ((v4 & 0x20) != 0)
    {
      v19 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

      return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(a2, v19, v20);
    }

    else if ((v4 & 0x40) != 0)
    {
      v21 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

      return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(a2, v21, v22);
    }

    else
    {
      v15 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);
      if ((v4 & 0x80) != 0)
      {

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt64(a2, v15, v16);
      }

      else
      {

        return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint64(a2, v15, v16);
      }
    }
  }

  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a1 + 1);
  }

  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v9 = 21 - *(a1 + 21);
  }

  else
  {
    v9 = *a1;
  }

  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a2);

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(a2, v8, v9);
}

unint64_t re::ecs2::AnimationSceneManager::animationService(re::ecs2::AnimationSceneManager *this, const re::ecs2::Scene *a2)
{
  result = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

unint64_t re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 16;
  }
}

void re::ecs2::AnimationSceneManager::updateAnimationsForScene(re::ecs2::AnimationSceneManager *this, const re::ecs2::Scene *a2, float a3)
{
  v4 = re::HashTable<re::ecs2::Scene const*,std::unique_ptr<re::AnimationManager,std::function<void ()(re::AnimationManager*)>>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *v4;
    if (*(v6 + 29))
    {
      if (*(v6 + 28) || *(v6 + 44))
      {
        re::AnimationManager::update(v6, a3);
        v7 = *v5;

        re::AnimationManager::applyAnimations(v7);
      }
    }
  }
}

uint64_t re::ecs2::AnimationSceneManager::setTaskOptions(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 272) = *(a2 + 8);
  *(result + 264) = v2;
  v3 = *(result + 248);
  if (v3)
  {
    v5 = result;
    for (i = 0; i != v3; ++i)
    {
      v7 = re::BucketArray<unsigned long,8ul>::operator[](v5 + 208, i);
      result = re::ecs2::System::setDefaultTaskOptions(*v7, a2);
    }
  }

  return result;
}
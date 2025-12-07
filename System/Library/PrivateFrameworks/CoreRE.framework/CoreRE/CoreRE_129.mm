void re::internal::defaultConstruct<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8390;
}

void re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8390;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalFadeComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

re::snapshot::BufferDecoder *re::snapshot::DecoderRaw::operator>>(re::snapshot::BufferDecoder *result, _DWORD *a2)
{
  v2 = *(result + 3);
  v3 = *(result + 4) - v2;
  if (v3 <= 3)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v3);
  }

  *a2 = *v2;
  *(result + 3) += 4;
  return result;
}

{
  v2 = *(result + 3);
  v3 = *(result + 4) - v2;
  if (v3 <= 3)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v3);
  }

  *a2 = *v2;
  *(result + 3) += 4;
  return result;
}

{
  v2 = *(result + 3);
  v3 = *(result + 4) - v2;
  if (v3 <= 3)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v3);
  }

  *a2 = *v2;
  *(result + 3) += 4;
  return result;
}

re::snapshot::BufferDecoder *re::snapshot::DecoderRaw::operator>>(re::snapshot::BufferDecoder *result, _BYTE *a2)
{
  v2 = *(result + 3);
  if (*(result + 4) == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++*(result + 3);
  return result;
}

BOOL re::snapshot::DecoderOPACK::field<0,re::ecs2::Component>(const char **a1, double *a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<0>(a1, a2, a3);
  if (v5)
  {
    v6 = &unk_1EE187000;
    {
      v6 = &unk_1EE187000;
      if (v8)
      {
        re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, v9, v10, v11, v12, v13);
        v6 = &unk_1EE187000;
      }
    }

    re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, a2, v6[54]);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

BOOL re::snapshot::DecoderOPACK::field<1,float>(re::snapshot::DecoderOPACK *a1, float *a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<1>(a1, a2, a3);
  if (v5)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

BOOL re::snapshot::DecoderOPACK::field<4,BOOL>(re::snapshot::DecoderOPACK *a1, _BYTE *a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<4>(a1, a2, a3);
  if (v5)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

BOOL re::snapshot::DecoderOPACK::beginField<0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Integer = *(a1 + 40);
  if (Integer < 0)
  {
    while (1)
    {
      v7 = *(a1 + 24);
      if (v7 >= *(a1 + 32))
      {
        v6 = 0;
      }

      else
      {
        *(a1 + 24) = v7 + 1;
        v6 = *v7;
      }

      re::snapshot::DecoderOPACK::skip(a1, v6, a3);
      v8 = *(a1 + 24);
      if (v8 >= *(a1 + 32))
      {
        break;
      }

      v5 = *v8;
      if (v5 == 3)
      {
        break;
      }

      if ((v5 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v8 + 1;
        Integer = v5 - 8;
      }

      *(a1 + 40) = Integer;
      if ((Integer & 0x80000000) == 0)
      {
        return Integer == 0;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs247HierarchicalFadeSecondaryOpacityMarkerComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

re::ecs2::SpatialMediaStatusComponent *re::ecs2::SpatialMediaStatusComponent::SpatialMediaStatusComponent(re::ecs2::SpatialMediaStatusComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF5820;
  v3 = vdup_n_s32(0x3FC66666u);
  *(v2 + 32) = v3;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = xmmword_1E308ED80;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 256;
  *(v2 + 120) = 0;
  *(v2 + 116) = 0;
  *(v2 + 128) = 1;
  *(v2 + 132) = xmmword_1E3091CF0;
  *(v2 + 152) = 0x3F80000040000000;
  *(v2 + 160) = 1;
  *(v2 + 164) = 0x3F4000003F428F5CLL;
  *(v2 + 172) = 0;
  *(v2 + 176) = 0;
  *(v2 + 232) = 0;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  v4 = *re::spatialMediaLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "[SpatialMediaStatusComponent] Component initialized.", v6, 2u);
  }

  return this;
}

void re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(re::ecs2::SpatialMediaStatusComponent *this)
{
  re::ecs2::Component::markDirty(this);
  v2 = *(*(this + 2) + 216);
  if (v2)
  {

    re::ecs2::NetworkComponent::markDirty(v2, this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setImmersiveFrameSize(re::ecs2::SpatialMediaStatusComponent *this, uint64_t a2)
{
  v2 = *(this + 8);
  if (v2 != *&a2 && vabds_f32(*&a2, v2) >= (((fabsf(*&a2) + fabsf(v2)) + 1.0) * 0.00001) || (v3 = *(this + 9), v3 != *(&a2 + 1)) && vabds_f32(*(&a2 + 1), v3) >= (((fabsf(*(&a2 + 1)) + fabsf(v3)) + 1.0) * 0.00001))
  {
    *(this + 4) = a2;
    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::publishUpdatesInApp(float32x2_t *this)
{
  v1 = this[2];
  if (!v1)
  {
    v8 = *re::spatialMediaLogObjects(this);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 0;
    v9 = "[SpatialMediaStatusComponent::publishUpdatesInApp] Cannot find entity of SpatialMediaStatusComponent";
    v10 = &v17;
LABEL_15:
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    return;
  }

  v3 = this[2];
  do
  {
    v4 = v3;
    v3 = *(*&v3 + 32);
  }

  while (v3);
  v5 = *(*&v4 + 24);
  if (!v5)
  {
    v8 = *re::spatialMediaLogObjects(this);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 0;
    v9 = "[SpatialMediaStatusComponent::publishUpdatesInApp] Entity of SpatialMediaStatusComponent is not in a scene";
    v10 = &v16;
    goto LABEL_15;
  }

  v6 = *(v5 + 288);
  if (!v6)
  {
    v8 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = "[SpatialMediaStatusComponent::publishUpdatesInApp] Cannot find eventBus for the scene of SpatialMediaStatusComponent";
    v10 = buf;
    goto LABEL_15;
  }

  v7 = vmvn_s8(vceq_f32(this[5], this[4]));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    v14 = this[4];
    if ((atomic_load_explicit(&qword_1EE1ADA80, memory_order_acquire) & 1) == 0)
    {
      v12 = v1;
      v13 = v6;
      v11 = __cxa_guard_acquire(&qword_1EE1ADA80);
      v1 = v12;
      v6 = v13;
      if (v11)
      {
        qword_1EE1ADA78 = re::EventBus::typeStringToId(("46RESpatialMediaImmersiveFrameSizeDidChangeEvent" & 0x7FFFFFFFFFFFFFFFLL), v12);
        __cxa_guard_release(&qword_1EE1ADA80);
        v1 = v12;
        v6 = v13;
      }
    }

    re::EventBus::publish(v6, v1, qword_1EE1ADA78, &v14, 8uLL, 0);
    this[5] = this[4];
    re::ecs2::Component::wasModified(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setBackingPlaneImmersiveParameters(re::ecs2::SpatialMediaStatusComponent *this, float *a2)
{
  v2 = vabds_f32(*a2, *(this + 35));
  v3 = v2 > 0.00000011921;
  if (v2 > 0.00000011921)
  {
    *(this + 35) = *a2;
  }

  v4 = a2[1];
  if (vabds_f32(v4, *(this + 36)) > 0.00000011921)
  {
    *(this + 36) = v4;
    v3 = 1;
  }

  v5 = a2[2];
  if (vabds_f32(v5, *(this + 33)) > 0.00000011921)
  {
    *(this + 33) = v5;
    v3 = 1;
  }

  v6 = a2[4];
  v7 = *(this + 38);
  if (v6 != v7 && vabds_f32(v6, v7) >= (((fabsf(v6) + fabsf(v7)) + 1.0) * 0.00001) || (v8 = a2[5], v9 = *(this + 39), v8 != v9) && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001))
  {
    *(this + 19) = *(a2 + 2);
    goto LABEL_14;
  }

  if (v3)
  {
LABEL_14:
    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setLoadingTextureBlend(re::ecs2::SpatialMediaStatusComponent *this, float a2)
{
  if (vabds_f32(a2, *(this + 43)) > 0.00000011921)
  {
    v2 = 1.0;
    if (a2 <= 1.0)
    {
      v2 = a2;
    }

    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    *(this + 43) = v2;
    if (a2 > 0.0)
    {
      *(this + 176) = 1;
    }

    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setPortalParams(re::ecs2::SpatialMediaStatusComponent *this, float *a2)
{
  v2 = *(this + 16);
  if ((*a2 == v2 || vabds_f32(*a2, v2) < (((fabsf(*a2) + fabsf(v2)) + 1.0) * 0.00001)) && ((v3 = a2[1], v4 = *(this + 17), v3 == v4) || vabds_f32(v3, v4) < (((fabsf(v3) + fabsf(v4)) + 1.0) * 0.00001)))
  {
    v5 = 0;
  }

  else
  {
    *(this + 8) = *a2;
    v5 = 1;
  }

  v6 = a2[2];
  if (vabds_f32(v6, *(this + 18)) > 0.00000011921)
  {
    *(this + 18) = v6;
    v5 = 1;
  }

  v7 = a2[3];
  if (vabds_f32(v7, *(this + 19)) > 0.00000011921)
  {
    *(this + 19) = v7;
    v5 = 1;
  }

  v8 = a2[4];
  v9 = *(this + 20);
  if (v8 != v9 && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001) || (v10 = a2[5], v11 = *(this + 21), v10 != v11) && vabds_f32(v10, v11) >= (((fabsf(v10) + fabsf(v11)) + 1.0) * 0.00001) || (v12 = a2[6], v13 = *(this + 22), v12 != v13) && vabds_f32(v12, v13) >= (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001))
  {
    *(this + 5) = *(a2 + 1);
    v14 = a2[8];
    v15 = (this + 96);
    if (vabds_f32(v14, *(this + 24)) <= 0.00000011921)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v15 = v14;
    goto LABEL_22;
  }

  v14 = a2[8];
  v15 = (this + 96);
  if (vabds_f32(v14, *(this + 24)) > 0.00000011921)
  {
    goto LABEL_21;
  }

  if (v5)
  {
LABEL_22:
    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setSpatialMediaLoadingTexture(uint64_t a1, re::AssetHandle *a2)
{
  v4 = re::AssetHandle::assetInfo((a1 + 184));
  if (v4[10] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[10];
  }

  v6 = *(re::AssetHandle::assetInfo(a2) + 10);
  if (v6 == -1)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    re::AssetHandle::operator=(a1 + 184, a2);
    re::AssetHandle::loadAsync((a1 + 184));

    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(a1);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setMixedSpillTextureAsset(uint64_t a1, re::AssetHandle *a2)
{
  v4 = re::AssetHandle::assetInfo((a1 + 208));
  if (v4[10] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[10];
  }

  v6 = *(re::AssetHandle::assetInfo(a2) + 10);
  if (v6 == -1)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    re::AssetHandle::operator=(a1 + 208, a2);

    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(a1);
  }
}

void *re::ecs2::allocInfo_SpatialMediaStatusComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADA70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADA88, "SpatialMediaStatusComponent");
    __cxa_guard_release(&qword_1EE1ADA70);
  }

  return &unk_1EE1ADA88;
}

void re::ecs2::initInfo_SpatialMediaStatusComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v112[0] = 0xB986AC139C129F56;
  v112[1] = "SpatialMediaStatusComponent";
  if (v112[0])
  {
    if (v112[0])
    {
    }
  }

  *(this + 2) = v113;
  if ((atomic_load_explicit(&_MergedGlobals_324, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_324))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1ADB18 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::ecs2::introspect_ImmersiveAnimationMode(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_immersiveAnimationMode";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1ADB20 = v18;
    v19 = re::introspectionAllocator();
    v20 = re::introspect_Vector2F(1);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_immersiveFrameSize";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1ADB28 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_BOOL(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "m_renderingVideoSpatially";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1ADB30 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_BOOL(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "m_renderWithRaycasting";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7100000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1ADB38 = v29;
    v30 = re::introspectionAllocator();
    v31 = re::introspect_Vector2F(1);
    v32 = (*(*v30 + 32))(v30, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "m_portalParams.portalScale";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x4000000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1ADB40 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_float(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "m_portalParams.portalZOffset";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x4800000006;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1ADB48 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::introspect_float(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "m_portalParams.mediaScale";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x4C00000007;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1ADB50 = v40;
    v41 = re::introspectionAllocator();
    v42 = re::introspect_Vector3F(1);
    v43 = (*(*v41 + 32))(v41, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "m_portalParams.mediaOffset";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x5000000008;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1ADB58 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_float(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "m_portalParams.immersiveFactor";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x6000000009;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1ADB60 = v47;
    v48 = re::introspectionAllocator();
    v50 = re::introspect_float(1, v49);
    v51 = (*(*v48 + 32))(v48, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "m_loadingTextureBlend";
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0xAC0000000ALL;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE1ADB68 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::introspect_BOOL(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "m_loadingAnimationStarted";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0xB00000000BLL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE1ADB70 = v55;
    v56 = re::introspectionAllocator();
    v58 = re::introspect_float(1, v57);
    v59 = (*(*v56 + 32))(v56, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "m_currentHorizontalFOV";
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0x780000000CLL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE1ADB78 = v59;
    v60 = re::introspectionAllocator();
    v62 = re::introspect_float(1, v61);
    v63 = (*(*v60 + 32))(v60, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "m_portalModeHalfDisparityShift";
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x740000000DLL;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE1ADB80 = v63;
    v64 = re::introspectionAllocator();
    v66 = re::introspect_BOOL(1, v65);
    v67 = (*(*v64 + 32))(v64, 72, 8);
    *v67 = 1;
    *(v67 + 8) = "m_isBackingPlaneEnabled";
    *(v67 + 16) = v66;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0x800000000ELL;
    *(v67 + 40) = 0;
    *(v67 + 48) = 0;
    *(v67 + 56) = 0;
    *(v67 + 64) = 0;
    qword_1EE1ADB88 = v67;
    v68 = re::introspectionAllocator();
    v70 = re::introspect_float(1, v69);
    v71 = (*(*v68 + 32))(v68, 72, 8);
    *v71 = 1;
    *(v71 + 8) = "m_fallOffExp";
    *(v71 + 16) = v70;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0x840000000FLL;
    *(v71 + 40) = 0;
    *(v71 + 48) = 0;
    *(v71 + 56) = 0;
    *(v71 + 64) = 0;
    qword_1EE1ADB90 = v71;
    v72 = re::introspectionAllocator();
    v74 = re::introspect_float(1, v73);
    v75 = (*(*v72 + 32))(v72, 72, 8);
    *v75 = 1;
    *(v75 + 8) = "m_backingPlaneBlendStartPortal";
    *(v75 + 16) = v74;
    *(v75 + 24) = 0;
    *(v75 + 32) = 0x8800000010;
    *(v75 + 40) = 0;
    *(v75 + 48) = 0;
    *(v75 + 56) = 0;
    *(v75 + 64) = 0;
    qword_1EE1ADB98 = v75;
    v76 = re::introspectionAllocator();
    v78 = re::introspect_float(1, v77);
    v79 = (*(*v76 + 32))(v76, 72, 8);
    *v79 = 1;
    *(v79 + 8) = "m_backingPlaneBlendStartImmersive";
    *(v79 + 16) = v78;
    *(v79 + 24) = 0;
    *(v79 + 32) = 0x8C00000011;
    *(v79 + 40) = 0;
    *(v79 + 48) = 0;
    *(v79 + 56) = 0;
    *(v79 + 64) = 0;
    qword_1EE1ADBA0 = v79;
    v80 = re::introspectionAllocator();
    v82 = re::introspect_float(1, v81);
    v83 = (*(*v80 + 32))(v80, 72, 8);
    *v83 = 1;
    *(v83 + 8) = "m_backingPlaneBlendEnd";
    *(v83 + 16) = v82;
    *(v83 + 24) = 0;
    *(v83 + 32) = 0x9000000012;
    *(v83 + 40) = 0;
    *(v83 + 48) = 0;
    *(v83 + 56) = 0;
    *(v83 + 64) = 0;
    qword_1EE1ADBA8 = v83;
    v84 = re::introspectionAllocator();
    v85 = re::introspect_Vector2F(1);
    v86 = (*(*v84 + 32))(v84, 72, 8);
    *v86 = 1;
    *(v86 + 8) = "m_backingPlaneBlendEaseSlopeE";
    *(v86 + 16) = v85;
    *(v86 + 24) = 0;
    *(v86 + 32) = 0x9800000013;
    *(v86 + 40) = 0;
    *(v86 + 48) = 0;
    *(v86 + 56) = 0;
    *(v86 + 64) = 0;
    qword_1EE1ADBB0 = v86;
    v87 = re::introspectionAllocator();
    v89 = re::introspect_BOOL(1, v88);
    v90 = (*(*v87 + 32))(v87, 72, 8);
    *v90 = 1;
    *(v90 + 8) = "m_isInnerGlowEnabled";
    *(v90 + 16) = v89;
    *(v90 + 24) = 0;
    *(v90 + 32) = 0xA000000014;
    *(v90 + 40) = 0;
    *(v90 + 48) = 0;
    *(v90 + 56) = 0;
    *(v90 + 64) = 0;
    qword_1EE1ADBB8 = v90;
    v91 = re::introspectionAllocator();
    v93 = re::introspect_float(1, v92);
    v94 = (*(*v91 + 32))(v91, 72, 8);
    *v94 = 1;
    *(v94 + 8) = "m_innerGlowStart";
    *(v94 + 16) = v93;
    *(v94 + 24) = 0;
    *(v94 + 32) = 0xA400000015;
    *(v94 + 40) = 0;
    *(v94 + 48) = 0;
    *(v94 + 56) = 0;
    *(v94 + 64) = 0;
    qword_1EE1ADBC0 = v94;
    v95 = re::introspectionAllocator();
    v97 = re::introspect_float(1, v96);
    v98 = (*(*v95 + 32))(v95, 72, 8);
    *v98 = 1;
    *(v98 + 8) = "m_innerGlowAmplitudeMultiplier";
    *(v98 + 16) = v97;
    *(v98 + 24) = 0;
    *(v98 + 32) = 0xA800000016;
    *(v98 + 40) = 0;
    *(v98 + 48) = 0;
    *(v98 + 56) = 0;
    *(v98 + 64) = 0;
    qword_1EE1ADBC8 = v98;
    v99 = re::introspectionAllocator();
    v101 = re::introspect_float(1, v100);
    v102 = (*(*v99 + 32))(v99, 72, 8);
    *v102 = 1;
    *(v102 + 8) = "m_currentStereoBaseline";
    *(v102 + 16) = v101;
    *(v102 + 24) = 0;
    *(v102 + 32) = 0x7C00000017;
    *(v102 + 40) = 0;
    *(v102 + 48) = 0;
    *(v102 + 56) = 0;
    *(v102 + 64) = 0;
    qword_1EE1ADBD0 = v102;
    v103 = re::introspectionAllocator();
    v105 = re::introspect_AssetHandle(1, v104);
    v106 = (*(*v103 + 32))(v103, 72, 8);
    *v106 = 1;
    *(v106 + 8) = "m_spatialMediaLoadingTextureAsset";
    *(v106 + 16) = v105;
    *(v106 + 24) = 0;
    *(v106 + 32) = 0xB80000001ALL;
    *(v106 + 40) = 0;
    *(v106 + 48) = 0;
    *(v106 + 56) = 0;
    *(v106 + 64) = 0;
    qword_1EE1ADBD8 = v106;
    v107 = re::introspectionAllocator();
    v109 = re::introspect_BOOL(1, v108);
    v110 = (*(*v107 + 32))(v107, 72, 8);
    *v110 = 1;
    *(v110 + 8) = "m_spatialMediaReady";
    *(v110 + 16) = v109;
    *(v110 + 24) = 0;
    *(v110 + 32) = 0xE80000001CLL;
    *(v110 + 40) = 0;
    *(v110 + 48) = 0;
    *(v110 + 56) = 0;
    *(v110 + 64) = 0;
    qword_1EE1ADBE0 = v110;
    __cxa_guard_release(&_MergedGlobals_324);
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 26;
  *(this + 8) = &qword_1EE1ADB18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227SpatialMediaStatusComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v111 = v113;
}

void re::ecs2::SpatialMediaStatusComponent::~SpatialMediaStatusComponent(re::ecs2::SpatialMediaStatusComponent *this)
{
  re::ecs2::SpatialMediaStatusComponent::~SpatialMediaStatusComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CF5820;
  v2 = (this + 184);
  re::AssetHandle::~AssetHandle((this + 208));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227SpatialMediaStatusComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

re::ecs2::LoadTraceSystem *re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceSystem *this, re::ecs2::LoadTraceComponent *a2, re::ecs2::Entity *a3)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8 = this;
  if (this)
  {
    if (a2)
    {
      v9[0] = &unk_1F5CF59E8;
      v9[1] = &v8;
      v9[3] = v9;
      re::ecs2::ComponentHelper::findAssetHandles(a2, v9);
      this = std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v9);
      v5 = *(a2 + 43);
      if (v5)
      {
        v6 = *(a2 + 45);
        v7 = 8 * v5;
        do
        {
          if (*v6)
          {
            this = re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(v8, *v6, v4);
          }

          ++v6;
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  return this;
}

uint64_t re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::LoadTraceSystem::willAddSystemToECSService(re::ecs2::LoadTraceSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v2);
  *(this + 35) = result;
  if (result)
  {
    if (*(result + 2234) == 1)
    {
      v36 = re::MeshAsset::assetType(result);
      v35 = 1;
      v4 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::TextureAsset::assetType(v4);
      v35 = 2;
      v5 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RenderGraphAsset::assetType(v5);
      v35 = 3;
      v6 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::SceneAsset::assetType(v6);
      v35 = 4;
      v7 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::ShaderLibraryAsset::assetType(v7);
      v35 = 5;
      v8 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::ShaderGraphAsset::assetType(v8);
      v35 = 6;
      v9 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::MeshDeformationAsset::assetType(v9);
      v35 = 7;
      v10 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RenderGraphEmitterAsset::assetType(v10);
      v35 = 8;
      v11 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::FontAsset::assetType(v11);
      v35 = 9;
      v12 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::ImageBasedLightAsset::assetType(v12);
      v35 = 10;
      v13 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::FontLayoutAsset::assetType(v13);
      v35 = 11;
      v14 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::CGPerspectiveContextAsset::assetType(v14);
      v35 = 12;
      v15 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VideoAsset::assetType(v15);
      v35 = 13;
      v16 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VideoFileAsset::assetType(v16);
      v35 = 14;
      v17 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VFXAsset::assetType(v17);
      v35 = 15;
      v18 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VertexCacheAsset::assetType(v18);
      v35 = 16;
      v19 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::MaterialDefinitionAsset::assetType(v19);
      v35 = 17;
      v20 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::MaterialAsset::assetType(v20);
      v35 = 18;
      v21 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AcousticMeshAsset::assetType(v21);
      v35 = 19;
      v22 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AnimationLibraryAsset::assetType(v22);
      v35 = 20;
      v23 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AudioFileAsset::assetType(v23);
      v35 = 21;
      v24 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AudioFileGroupAsset::assetType(v24);
      v35 = 22;
      v25 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AudioGeneratorAsset::assetType(v25);
      v35 = 23;
      v26 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::BlendShapeWeightsDefinitionAsset::assetType(v26);
      v35 = 24;
      v27 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::IKRigAsset::assetType(v27);
      v35 = 25;
      v28 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RigAsset::assetType(v28);
      v35 = 26;
      v29 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RigGraphAsset::assetType(v29);
      v35 = 27;
      v30 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::SkeletalPoseDefinitionAsset::assetType(v30);
      v35 = 28;
      v31 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::SkeletonAsset::assetType(v31);
      v35 = 29;
      v32 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::StateMachineAsset::assetType(v32);
      v35 = 30;
      v33 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::StateParameterBlackboardAsset::assetType(v33);
      v35 = 31;
      v34 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::TimelineAsset::assetType(v34);
      v35 = 32;
      return re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
    }
  }

  return result;
}

re *re::ecs2::LoadTraceSystem::willAddSceneToECSService(re *this, re::EventBus **a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v2 = *(this + 35);
  if (v2 && *(v2 + 2234) == 1)
  {
    v3 = a2[36];
    if (v3)
    {
      v4 = this;
      v17 = re::globalAllocators(this)[2];
      v5 = (*(*v17 + 32))(v17, 32, 0);
      *v5 = &unk_1F5CF5938;
      v5[1] = v4;
      v5[2] = re::ecs2::LoadTraceSystem::onEntityAdded;
      v5[3] = 0;
      v18 = v5;
      *&v11 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(v3, 0, v16, 0, 0);
      *(&v11 + 1) = v6;
      v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v16);
      v14 = re::globalAllocators(v7)[2];
      v8 = (*(*v14 + 32))(v14, 32, 0);
      *v8 = &unk_1F5CF5990;
      v8[1] = v4;
      v8[2] = re::ecs2::LoadTraceSystem::onEntityWillRemove;
      v8[3] = 0;
      v15 = v8;
      *&v10 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v3, 0, v13, 0, 0);
      *(&v10 + 1) = v9;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v13);
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(v4 + 288, &v12, &v11);
      return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(v4 + 336, &v12, &v10);
    }
  }

  return this;
}

uint64_t re::ecs2::LoadTraceSystem::onEntityAdded(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    if (a2)
    {
      if (*(v2 + 2234))
      {
        v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v5)
        {
          v6 = v5;
          re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(v5, 2018);
          re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(v6 + 136);
          re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(v6, a2, v7);
          re::ecs2::LoadTraceComponent::updateTrackedAssets(v6, 2020, 2024, a1 + 232);
        }
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::LoadTraceSystem::onEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    if (a2)
    {
      if (*(v2 + 2234))
      {
        v3 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v3)
        {
          re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(v3, 2025);
        }
      }
    }
  }

  return 0;
}

BOOL re::ecs2::LoadTraceSystem::willRemoveSceneFromECSService(_BOOL8 this, re::ecs2::Scene *a2)
{
  v7 = a2;
  v2 = *(this + 280);
  if (v2 && *(v2 + 2234) == 1)
  {
    v3 = *(a2 + 36);
    if (v3)
    {
      v4 = this;
      v5 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](this + 288, &v7);
      re::EventBus::unsubscribe(v3, *v5, v5[1]);
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v4 + 288, &v7);
      v6 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](v4 + 336, &v7);
      re::EventBus::unsubscribe(v3, *v6, v6[1]);
      return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v4 + 336, &v7);
    }
  }

  return this;
}

void re::ecs2::LoadTraceSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 280);
  if (v3 && *(v3 + 2234) == 1)
  {
    v6 = *(a1 + 264);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 248);
      while (1)
      {
        v9 = *v8;
        v8 += 8;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(a1 + 264);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    if (v6 != v7)
    {
      v10 = v7;
      while (1)
      {
        v11 = *(a1 + 248);
        if (v6 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = v6;
        }

        while (v12 - 1 != v10)
        {
          if ((*(v11 + 32 * ++v10) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        v10 = v12;
LABEL_18:
        if (v10 == v6)
        {
          if ((re::internal::enableSignposts(0, 0) & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v13 = v6 <= v10 + 1 ? v10 + 1 : v6;
        v14 = v10;
        while (v13 - 1 != v14)
        {
          if ((*(v11 + 32 * ++v14) & 0x80000000) != 0)
          {
            goto LABEL_27;
          }
        }

        v14 = v13;
LABEL_27:
        if (v14 == v6)
        {
          break;
        }

        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }

        LODWORD(v6) = *(a1 + 264);
        if (v6 <= v14 + 1)
        {
          v10 = v14 + 1;
        }

        else
        {
          v10 = *(a1 + 264);
        }

        v15 = v14;
        while (v10 - 1 != v15)
        {
          if ((*(*(a1 + 248) + 32 * ++v15) & 0x80000000) != 0)
          {
            v10 = v15;
            break;
          }
        }

        if (v6 == v10)
        {
          goto LABEL_43;
        }
      }

      if ((re::internal::enableSignposts(0, 0) & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_42:
      kdebug_trace();
    }

LABEL_43:
    v16 = *(a3 + 200);
    if (v16)
    {
      v17 = *(a3 + 216);
      v18 = v17 + 8 * v16;
      do
      {
        v19 = re::ecs2::SceneComponentTable::get((*v17 + 200), re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v19)
        {
          v20 = *(v19 + 384);
          if (v20)
          {
            v21 = *(v19 + 400);
            if (re::ecs2::LoadTraceComponent::log(void)::onceToken != -1)
            {
              dispatch_once(&re::ecs2::LoadTraceComponent::log(void)::onceToken, &__block_literal_global_22);
            }

            v22 = re::ecs2::LoadTraceComponent::log(void)::log;
            if (os_log_type_enabled(re::ecs2::LoadTraceComponent::log(void)::log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v27 = v20;
              _os_log_debug_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEBUG, "Load trace components in scene: %d", buf, 8u);
            }

            v23 = 8 * v20;
            do
            {
              v24 = *v21++;
              re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear((v24 + 17));
              re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(v24, v24[2], v25);
              re::ecs2::LoadTraceComponent::updateTrackedAssets(v24, 2020, 2024, a1 + 232);
              re::ecs2::LoadTraceComponent::checkAssetLoadStates(v24, 2021, 2022, 2023, a1 + 232);
              v23 -= 8;
            }

            while (v23);
          }
        }

        v17 += 8;
      }

      while (v17 != v18);
    }
  }
}

void *re::ecs2::allocInfo_LoadTraceSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_325, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_325))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADBF0, "LoadTraceSystem");
    __cxa_guard_release(&_MergedGlobals_325);
  }

  return &unk_1EE1ADBF0;
}

void re::ecs2::initInfo_LoadTraceSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x97E86156DCE06DDCLL;
  v8[1] = "LoadTraceSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x18000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_LoadTraceSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LoadTraceSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LoadTraceSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::LoadTraceSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::LoadTraceSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LoadTraceSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LoadTraceSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::LoadTraceSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 29);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::LoadTraceSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 29);

  re::ecs2::System::~System(a1);
}

void re::ecs2::LoadTraceSystem::~LoadTraceSystem(re::ecs2::LoadTraceSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 29);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 29);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5938;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5938;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5990;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5990;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t std::__function::__func<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0,std::allocator<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0>,void ()(re::AssetHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF59E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0,std::allocator<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0>,void ()(re::AssetHandle *)>::operator()(uint64_t a1, const re::AssetHandle **a2)
{
  v2 = *a2;
  if (v2)
  {
    if (*(v2 + 1))
    {
      v3 = **(a1 + 8);
      re::AssetHandle::AssetHandle(v4, v2);
      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(v3 + 136, v4);
      re::AssetHandle::~AssetHandle(v4);
    }
  }
}

uint64_t std::__function::__func<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0,std::allocator<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0>,void ()(re::AssetHandle *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double re::make::shared::unsafelyInplace<re::ecs2::LoadTraceSystem>(_OWORD *a1)
{
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v1 = re::ecs2::System::System(a1, 1);
  *v1 = &unk_1F5CF58A8;
  *(v1 + 224) = 2;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0;
  *(v1 + 268) = 0x7FFFFFFFLL;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 308) = 0u;
  *(v1 + 324) = 0x7FFFFFFFLL;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0;
  *(v1 + 372) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_ClippingService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_326, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_326))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADC88, "ClippingService");
    __cxa_guard_release(&_MergedGlobals_326);
  }

  return &unk_1EE1ADC88;
}

void re::ecs2::initInfo_ClippingService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xC1FF1FD5603D36E6;
  v8[1] = "ClippingService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_ClippingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::snapshot::BufferDecoder *re::ecs2::snapshotMapFields<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *a1, void *a2)
{
  re::snapshot::operator>><re::snapshot::DecoderRaw,re::AABB>(a1, a2 + 4);
  re::snapshot::operator>><re::snapshot::DecoderRaw,re::AABB>(a1, a2 + 9);

  return re::snapshot::operator>><re::snapshot::DecoderRaw,BOOL>(a1, a2 + 14);
}

BOOL re::ecs2::snapshotMapFields<re::snapshot::DecoderOPACK>(const char **a1, void *a2)
{
  re::snapshot::DecoderOPACK::field<1,re::DynamicArray<re::AABB>>(a1, a2 + 4, "perModelBounds");
  re::snapshot::DecoderOPACK::field<2,re::DynamicArray<re::AABB>>(a1, a2 + 9, "perPartBounds");

  return re::snapshot::DecoderOPACK::field<3,re::DynamicArray<BOOL>>(a1, a2 + 14, "isBoundsOverridden");
}

BOOL re::snapshot::DecoderOPACK::field<1,re::DynamicArray<re::AABB>>(const char **a1, void *a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<1>(a1, a2, a3);
  if (v5)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::AABB>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

BOOL re::snapshot::DecoderOPACK::field<2,re::DynamicArray<re::AABB>>(const char **a1, void *a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<2>(a1, a2, a3);
  if (v5)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::AABB>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

BOOL re::snapshot::DecoderOPACK::field<3,re::DynamicArray<BOOL>>(re::snapshot::DecoderOPACK *a1, void *a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<3>(a1, a2, a3);
  if (v5)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,BOOL>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

void *re::ecs2::allocInfo_InstanceGroupBoundsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_327, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_327))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADD38, "InstanceGroupBoundsComponent");
    __cxa_guard_release(&_MergedGlobals_327);
  }

  return &unk_1EE1ADD38;
}

void re::ecs2::initInfo_InstanceGroupBoundsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xF8C3A6C6E751AB3CLL;
  v16[1] = "InstanceGroupBoundsComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1ADD28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADD28))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1ADD20 = v14;
    __cxa_guard_release(&qword_1EE1ADD28);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1ADD20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228InstanceGroupBoundsComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::ecs2::allocInfo_InstanceGroupBoundsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADD30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADDC8, "InstanceGroupBoundsSystem");
    __cxa_guard_release(&qword_1EE1ADD30);
  }

  return &unk_1EE1ADDC8;
}

void re::ecs2::initInfo_InstanceGroupBoundsSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x9195F305A9F2CA5CLL;
  v8[1] = "InstanceGroupBoundsSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x25000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_InstanceGroupBoundsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::InstanceGroupBoundsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::InstanceGroupBoundsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::InstanceGroupBoundsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[58] = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a3 + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::InstanceGroupBoundsSystem>(uint64_t *a1)
{
  a1[58] = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a1 + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 28);

  re::ecs2::System::~System(a1);
}

void re::ecs2::InstanceGroupBoundsSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[54];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[54];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 35, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[36] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 49));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[54];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[54];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 49), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 28), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 49), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 28));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

uint64_t re::ecs2::InstanceGroupBoundsComponentStateImpl::directResourceDidUpdateEvent(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(a3 + 8) + (*a3 << 6) + (*a3 >> 2) - 0x61C8864680B583E9) ^ *a3;
  v6 = *(a1 + 48);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 32) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v7, v5, a3, a3);
    ++*(a1 + 64);
    return 0;
  }

  v9 = *(a1 + 40);
  while (uuid_compare((v9 + 32 * v8 + 12), a3))
  {
    v9 = *(a1 + 40);
    v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

float32x4_t re::ecs2::InstanceGroupBoundsComponent::computeObjectBoundsUncached@<Q0>(float32x4_t *__return_ptr a1@<X8>, re::ecs2::InstanceGroupBoundsComponent *this@<X0>)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v4 = *(v3 + 192);
  if (v4 && (v6 = re::AssetHandle::loadedAsset<re::MeshAsset>((v4 + 32))) != 0 && (v7 = v6, (v8 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0))
  {
    v9 = v8;
    v10 = *(v8 + 48);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13.i64[0] = 0x7F0000007FLL;
      v13.i64[1] = 0x7F0000007FLL;
      v39 = vnegq_f32(v13);
      v40 = v13;
      v38 = v39;
      while (1)
      {
        v14 = *(v9 + 48);
        if (v14 <= v12)
        {
          v42 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          v35 = MEMORY[0x1E69E9C10];
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v43 = 136315906;
          *&v43[4] = "operator[]";
          *&v43[12] = 1024;
          if (v36)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          *&v43[14] = 789;
          *&v43[18] = 2048;
          *&v43[20] = v12;
          *&v43[28] = 2048;
          *&v43[30] = v14;
          _os_log_send_and_compose_impl(v37, &v42, &v44, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v38.u64[0], v38.u64[1]);
          _os_crash_msg();
          __break(1u);
        }

        v15 = *(*(v9 + 64) + 8 * v12);
        v41 = v15;
        if (v15)
        {
          if (v12 < *(this + 16) && (*(*(this + 18) + v12) & 1) != 0)
          {
            if (v12 < *(this + 11))
            {
              v16 = (*(this + 13) + v11);
              v17 = v39;
              v17.i32[3] = 0;
              v18 = *v16;
              v19 = v16[1];
              v18.i32[3] = 0;
              v20 = vminnmq_f32(v17, v18);
              v21 = v40;
              v21.i32[3] = 0;
              v19.i32[3] = 0;
              v39 = v20;
              v40 = vmaxnmq_f32(v21, v19);
            }
          }

          else
          {
            v22.i64[0] = 0x7F0000007FLL;
            v22.i64[1] = 0x7F0000007FLL;
            v44 = v38;
            v45 = v22;
            if (v12 < *(v7 + 1072))
            {
              v23 = *(*(v7 + 1080) + 8 * v12);
              v24 = *(v23 + 432);
              *v43 = *(v23 + 416);
              *&v43[16] = v24;
              {
                v34.i64[0] = 0x7F0000007FLL;
                v34.i64[1] = 0x7F0000007FLL;
                *a1 = vnegq_f32(v34);
                a1[1] = v34;

                return result;
              }

              v25 = v39;
              v25.i32[3] = 0;
              v26 = v44;
              v27 = v45;
              v26.i32[3] = 0;
              v28 = vminnmq_f32(v25, v26);
              v29 = v40;
              v29.i32[3] = 0;
              v27.i32[3] = 0;
              v39 = v28;
              v40 = vmaxnmq_f32(v29, v27);
              v15 = v41;
            }
          }
        }

        ++v12;
        v11 += 32;
        if (v10 == v12)
        {
          goto LABEL_19;
        }
      }
    }

    v32.i64[0] = 0x7F0000007FLL;
    v32.i64[1] = 0x7F0000007FLL;
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v39 = vnegq_f32(v32);
    v40 = v33;
LABEL_19:
    v31 = v39;
    result = v40;
  }

  else
  {
    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    v31 = vnegq_f32(result);
  }

  *a1 = v31;
  a1[1] = result;
  return result;
}

uint64_t re::ecs2::anonymous namespace::computeInstancedBoundsFromDirectBuffer(uint64_t a1, uint64_t *a2, float32x4_t *a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x5012000000;
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  v14 = "";
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v15 = vnegq_f32(v4);
  v16 = v4;
  *a3 = v15;
  a3[1] = v4;
  DRBufferRead();
  v5 = 0;
  v6 = v18;
  if ((v18[3] & 1) == 0)
  {
    v7 = v10[4];
    *a3 = v10[3];
    a3[1] = v7;
    v5 = *(v6 + 24) ^ 1;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v17, 8);
  return v5 & 1;
}

BOOL re::ecs2::InstanceGroupBoundsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(uu2, a5, 0);
  v32 = a4;
  v33 = *uu2;
  v34 = *&uu2[8];
  v31 = a5;
  if (*uu2 != a5 || *&uu2[8] != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v32);
      v11 = *(v10 + 16);
      v12 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + 48);
        re::DynamicArray<re::AABB>::resize((v10 + 72), v14);
        *(v10 + 48) = 0;
        ++*(v10 + 56);
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            v16 = *(v13 + 48);
            if (v16 <= i)
            {
              v35 = 0;
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              *uu2 = 0u;
              v27 = MEMORY[0x1E69E9C10];
              v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v36 = 136315906;
              *&v36[4] = "operator[]";
              v37 = 1024;
              if (v28)
              {
                v29 = 3;
              }

              else
              {
                v29 = 2;
              }

              v38 = 789;
              v39 = 2048;
              v40 = i;
              v41 = 2048;
              v42 = v16;
              _os_log_send_and_compose_impl(v29, &v35, uu2, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v30, v31);
              _os_crash_msg();
              __break(1u);
            }

            *v36 = *(*(v13 + 64) + 8 * i);
            re::DirectBuffer::getResourceId(v36, uu2);
            v17 = (*&uu2[8] + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
            v18 = *(a1 + 48);
            if (v18)
            {
              v19 = v17 % v18;
              v20 = *(*(a1 + 32) + 4 * (v17 % v18));
              if (v20 != 0x7FFFFFFF)
              {
                v21 = *(a1 + 40);
                while (uuid_compare((v21 + 32 * v20 + 12), uu2))
                {
                  v21 = *(a1 + 40);
                  v20 = *(v21 + 32 * v20 + 8) & 0x7FFFFFFF;
                  if (v20 == 0x7FFFFFFF)
                  {
                    goto LABEL_16;
                  }
                }

                goto LABEL_17;
              }
            }

            else
            {
              LODWORD(v19) = 0;
            }

LABEL_16:
            re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v19, v17, uu2, uu2);
            ++*(a1 + 64);
LABEL_17:
          }
        }

        v22 = v32;
        v23 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v33);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v22, v23, a3[6]);
      }

      else
      {
        v24 = v32;
        v25 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v33);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v24, v25, a3[4]);
        re::ecs2::EntityComponentCollection::remove((v11 + 48), v10);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v33);
    }

    while (v33 != v31 || v34 != 0xFFFF || HIWORD(v34) != 0xFFFF);
  }

  return *(v31 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::InstanceGroupBoundsComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v100 = *MEMORY[0x1E69E9840];
  v8 = *(*(*(a1 + 96) + 584) + 144);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&uu2, a5, 0);
  v86 = a4;
  v87 = uu2;
  v88 = DWORD2(uu2);
  if (uu2 != v5 || DWORD2(uu2) != 0xFFFFFFFFLL)
  {
    v10 = 0x94D049BB133111EBLL;
    v11 = (v8 + 8);
    if (!v8)
    {
      v11 = 0;
    }

    val = v11;
    v12.i64[0] = 0x7F0000007FLL;
    v12.i64[1] = 0x7F0000007FLL;
    v85 = vnegq_f32(v12);
    v82 = v5;
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v86);
      v14 = *(v13 + 16);
      v15 = v14[24];
      if (v15)
      {
        v16 = v13;
        v17 = re::AssetHandle::loadedAsset<re::MeshAsset>((v15 + 32));
        if (v17)
        {
          v18 = v17;
          v83 = v14[27];
          v19 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (!v19)
          {
            re::ecs2::EntityComponentCollection::remove((v14 + 6), v16);
          }

          v20 = *(v19 + 48);
          if (v20)
          {
            v21 = 0;
            v84 = 0;
            for (i = 0; i != v20; ++i)
            {
              v23 = *(v19 + 48);
              if (v23 <= i)
              {
                location[0] = 0;
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                uu2 = 0u;
                v72 = MEMORY[0x1E69E9C10];
                v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v94 = 136315906;
                *&v94[4] = "operator[]";
                *&v94[12] = 1024;
                if (v73)
                {
                  v74 = 3;
                }

                else
                {
                  v74 = 2;
                }

                *&v94[14] = 789;
                *&v94[18] = 2048;
                *&v94[20] = i;
                *&v94[28] = 2048;
                *&v94[30] = v23;
                _os_log_send_and_compose_impl(v74, location, &uu2, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v94, 38, val, v82);
                _os_crash_msg();
                __break(1u);
LABEL_80:
                v93 = 0;
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                uu2 = 0u;
                v75 = MEMORY[0x1E69E9C10];
                v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v94 = 136315906;
                *&v94[4] = "operator[]";
                *&v94[12] = 1024;
                if (v76)
                {
                  v77 = 3;
                }

                else
                {
                  v77 = 2;
                }

                *&v94[14] = 789;
                *&v94[18] = 2048;
                *&v94[20] = i;
                *&v94[28] = 2048;
                *&v94[30] = v10;
                _os_log_send_and_compose_impl(v77, &v93, &uu2, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v94, 38, val, v82);
                _os_crash_msg();
                __break(1u);
LABEL_84:
                v93 = 0;
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                uu2 = 0u;
                v78 = MEMORY[0x1E69E9C10];
                v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v94 = 136315906;
                *&v94[4] = "operator[]";
                *&v94[12] = 1024;
                if (v79)
                {
                  v80 = 3;
                }

                else
                {
                  v80 = 2;
                }

                *&v94[14] = 789;
                *&v94[18] = 2048;
                *&v94[20] = i;
                *&v94[28] = 2048;
                *&v94[30] = v10;
                _os_log_send_and_compose_impl(v80, &v93, &uu2, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v94, 38, val, v82);
                _os_crash_msg();
                __break(1u);
              }

              v92 = *(*(v19 + 64) + 8 * i);
              if (v92)
              {
                re::DirectBuffer::getResourceId(&v92, &uu2);
                v24 = re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::contains(a1 + 24, &uu2);
                v25 = i >= *(v16 + 128) ? 1 : *(*(v16 + 144) + i) ^ 1;
                if (i >= *(v16 + 88))
                {
                  v27 = 1;
                }

                else
                {
                  v26 = vcgtq_f32(*(*(v16 + 104) + v21), *(*(v16 + 104) + v21 + 16));
                  v26.i32[3] = v26.i32[2];
                  v27 = vmaxvq_u32(v26) >> 31;
                }

                if (v25 & (v24 | v27))
                {
                  *&v28 = 0x7F0000007FLL;
                  *(&v28 + 1) = 0x7F0000007FLL;
                  *location = v85;
                  v91 = v28;
                  if (i < v18[134])
                  {
                    v29 = v10;
                    v30 = *(v18[135] + 8 * i);
                    v31 = *(v30 + 432);
                    v89[0] = *(v30 + 416);
                    v89[1] = v31;
                    v10 = *(v16 + 88);
                    if (i >= v10)
                    {
                      re::DynamicArray<re::AABB>::resize((v16 + 72), i + 1);
                      v10 = *(v16 + 88);
                    }

                    if (v32)
                    {
                      if (v10 <= i)
                      {
                        goto LABEL_80;
                      }

                      v33 = (*(v16 + 104) + v21);
                      *v33 = *location;
                      v33[1] = v91;
                      re::ecs2::Component::markDirty(v16);
                      if (v83)
                      {
                        re::ecs2::NetworkComponent::markDirty(v83, v16);
                      }

                      v84 = 1;
                    }

                    else
                    {
                      if (v10 <= i)
                      {
                        goto LABEL_84;
                      }

                      v34 = (*(v16 + 104) + v21);
                      v35.i64[0] = 0x7F0000007FLL;
                      v35.i64[1] = 0x7F0000007FLL;
                      *v34 = v85;
                      v34[1] = v35;
                    }

                    v10 = v29;
                  }
                }
              }

              v21 += 32;
            }

            v5 = v82;
            if (v84)
            {
              goto LABEL_38;
            }
          }

          if (!*(v16 + 48) || !*(v16 + 160))
          {
LABEL_38:
            *(v16 + 48) = 0;
            ++*(v16 + 56);
            LODWORD(v97) = 0;
            uu2 = 0u;
            v96 = 0u;
            *(&v97 + 4) = 0x7FFFFFFFLL;
            v36 = v18[79];
            v37 = v18[76];
            if (v37)
            {
              v38 = v18[78];
              v39 = &v38[v37];
              do
              {
                *&v89[0] = *v38;
                if (re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet((v18 + 148), v89))
                {
                  v40.i64[0] = 0x7F0000007FLL;
                  v40.i64[1] = 0x7F0000007FLL;
                  *v94 = v85;
                  *&v94[16] = v40;
                  v41 = *(v16 + 88);
                  if (v41)
                  {
                    v42 = vnegq_f32(v40);
                    v43 = (*(v16 + 104) + 16);
                    do
                    {
                      v44 = v43[-1];
                      v45 = *v43;
                      v42.i32[3] = 0;
                      v44.i32[3] = 0;
                      v40.i32[3] = 0;
                      v45.i32[3] = 0;
                      v42 = vminnmq_f32(v42, v44);
                      v40 = vmaxnmq_f32(v40, v45);
                      *v94 = v42;
                      *&v94[16] = v40;
                      v43 += 2;
                      --v41;
                    }

                    while (v41);
                  }

                  re::DynamicArray<re::AABB>::add((v16 + 32), v94);
                  v46 = *(v16 + 48);
                  location[0] = 0;
                  location[1] = 0;
                  *&v91 = 0;
                  v47 = ((0xBF58476D1CE4E5B9 * (v89[0] & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v89[0] & 0xFFFFFF)) >> 27)) * v10;
                  re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(&uu2, v89, v47 ^ (v47 >> 31), location);
                  if (HIDWORD(location[1]) == 0x7FFFFFFF)
                  {
                    v48 = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(&uu2, location[1], location[0]);
                    *(v48 + 8) = *&v89[0];
                    *(v48 + 16) = v46 - 1;
                    ++DWORD2(v97);
                  }
                }

                else
                {
                  *&v49 = 0x7F0000007FLL;
                  *(&v49 + 1) = 0x7F0000007FLL;
                  *v94 = v85;
                  *&v94[16] = v49;
                  re::DynamicArray<re::AABB>::add((v16 + 32), v94);
                }

                ++v38;
              }

              while (v38 != v39);
            }

            inited = objc_initWeak(location, val);
            v51 = re::globalAllocators(inited);
            v52 = (*(*v51[2] + 32))(v51[2], 192, 8);
            *(v52 + 128) = 0u;
            *(v52 + 144) = 0u;
            *(v52 + 96) = 0u;
            *(v52 + 112) = 0u;
            *v52 = 0u;
            *(v52 + 16) = 0u;
            *(v52 + 32) = 0u;
            *(v52 + 48) = 0u;
            *(v52 + 64) = 0u;
            *(v52 + 80) = 0u;
            *(v52 + 160) = 0u;
            *(v52 + 176) = 0u;
            *(v52 + 80) = 1;
            *(v52 + 88) = 0;
            *(v52 + 96) = 0;
            *(v52 + 136) = 0u;
            *(v52 + 120) = 0u;
            *(v52 + 152) = 1;
            *(v52 + 160) = 0;
            *(v52 + 168) = 0;
            memset(v94, 0, 24);
            *&v94[24] = re::globalAllocators(v52)[2];
            *&v94[32] = 0;
            re::FramePersistentPtr<re::ecs2::InstanceGroupBoundsComponent::BoundingBoxRenderData,re::FrameManager>::reset((v16 + 152), location, v52, v94);
            re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v94);
            objc_destroyWeak(location);
            location[0] = 0;
            v53 = *(v16 + 48);
            *v94 = *(v16 + 64);
            *&v94[8] = v53;
            re::FixedArray<re::AABB>::operator=(*(v16 + 160), v94);
            v54 = *(v16 + 88);
            *v94 = *(v16 + 104);
            *&v94[8] = v54;
            re::FixedArray<re::AABB>::operator=((*(v16 + 160) + 24), v94);
            v55 = *(v16 + 160);
            *(v55 + 48) = *(v55 + 16);
            *(v55 + 120) = *(v55 + 40);
            v56 = v18[137];
            if (v56)
            {
              v57 = v18[138];
              v58 = &v57[12 * v56];
              do
              {
                v59 = v57[1];
                v60 = v59 - *v57;
                if (v59 > *v57)
                {
                  v61 = 2 * *v57;
                  do
                  {
                    re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::ensureCapacity((v55 + 136));
                    v62 = v55 + 160;
                    if ((*(v55 + 152) & 1) == 0)
                    {
                      v62 = *(v55 + 168);
                    }

                    *(v62 + 4 * (*(v55 + 144))++) = v61;
                    *(v55 + 152) += 2;
                    v61 += 2;
                    --v60;
                  }

                  while (v60);
                }

                v57 += 12;
              }

              while (v57 != v58);
            }

            v63 = v18[71];
            v5 = v82;
            if (v63)
            {
              v64 = v18[73];
              v65 = 8 * v63;
              do
              {
                if (re::DataArray<re::MeshInstance>::tryGet(v36 + 72, *v64) || (v66 = ((0xBF58476D1CE4E5B9 * (MEMORY[0x10] & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (MEMORY[0x10] & 0xFFFFFFLL)) >> 27)) * v10, re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(&uu2, 0x10, v66 ^ (v66 >> 31), v94), *&v94[12] == 0x7FFFFFFF))
                {
                  v67 = 0;
                }

                else
                {
                  v67 = 2 * *(v96 + 32 * *&v94[12] + 16);
                }

                re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::ensureCapacity((v55 + 64));
                v68 = v55 + 88;
                if ((*(v55 + 80) & 1) == 0)
                {
                  v68 = *(v55 + 96);
                }

                *(v68 + 4 * (*(v55 + 72))++) = v67;
                *(v55 + 80) += 2;
                ++v64;
                v65 -= 8;
              }

              while (v65);
            }

            re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&uu2);
          }
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v87);
    }

    while (v87 != v5 || v88 != 0xFFFF || HIWORD(v88) != 0xFFFF);
  }

  return *(v5 + 40) != 0;
}

uint64_t (***re::ecs2::InstanceGroupBoundsSystem::willAddSystemToECSService(re::ecs2::InstanceGroupBoundsSystem *this))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 72) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 73) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(v4);
  *(this + 71) = v5;
  v6 = re::globalAllocators(v5)[2];
  v15 = v6;
  v7 = (*(*v6 + 32))(v6, 32, 0);
  *v7 = &unk_1F5CF5B60;
  v7[1] = this + 464;
  v7[2] = re::ecs2::InstanceGroupBoundsComponentStateImpl::directResourceDidUpdateEvent;
  v7[3] = 0;
  v16 = v7;
  v8 = *(*(*(this + 70) + 576) + 1512);
  v12 = v6;
  v13 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v11, v14);
  *(this + 59) = re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(v8, v11, 0, 0);
  *(this + 60) = v9;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v11);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v14);
}

double re::ecs2::InstanceGroupBoundsSystem::willRemoveSystemFromECSService(re::ecs2::InstanceGroupBoundsSystem *this)
{
  re::EventBus::unsubscribe(*(*(*(this + 70) + 576) + 1512), *(this + 59), *(this + 60));
  *(this + 73) = 0;
  result = 0.0;
  *(this + 568) = 0u;
  return result;
}

unint64_t re::ecs2::InstanceGroupBoundsSystem::willAddSceneToECSService(re::ecs2::InstanceGroupBoundsSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 44);
  v5 = *(this + 90);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 368);
    }

    else
    {
      v6 = *(this + 47);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 368);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 47);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 344, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::init(v12, this + 224, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 344, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(this + 33);
  *&v51 = 0;
  v15 = *(this + 29);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,4ul>::setBucketsCapacity(this + 28, (v14 + 4) >> 2);
    v15 = *(this + 29);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 240))
  {
    v16 = this + 248;
  }

  else
  {
    v16 = *(this + 32);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 33);
  ++*(this + 68);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(this + 33);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::init(v24, this + 224, v52);
  *&v62[0] = *(this + 33) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, &v52, v62);
  v25 = *(this + 33);
  v26 = *(this + 48);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 48) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 344), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 48) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 360))
    {
      v30 = this + 368;
    }

    else
    {
      v30 = *(this + 47);
    }

    *&v30[8 * *(this + 44) - 8] &= v28;
  }

  v31 = *(this + 33);
  v32 = *(this + 54);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 54) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 392), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 54) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 408))
    {
      v36 = this + 416;
    }

    else
    {
      v36 = *(this + 53);
    }

    *&v36[8 * *(this + 50) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 392, v13);
  if (*(this + 456) == 1)
  {
    v38 = *(this + 55);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 224);
  }

  return result;
}

uint64_t re::ecs2::InstanceGroupBoundsSystem::willRemoveSceneFromECSService(re::ecs2::InstanceGroupBoundsSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 35, &v15);
  if (result != -1)
  {
    v4 = *(this + 36) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 344, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 392, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 280, &v15);
  }

  return result;
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::InstanceGroupBoundsComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::InstanceGroupBoundsComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

void re::ecs2::InstanceGroupBoundsSystem::~InstanceGroupBoundsSystem(re::ecs2::InstanceGroupBoundsSystem *this)
{
  *(this + 58) = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);

  re::ecs2::System::~System(this);
}

{
  *(this + 58) = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

__n128 __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN2re4ecs212_GLOBAL__N_138computeInstancedBoundsFromDirectBufferERKNS_4AABBERKNS_12DirectBufferERS2__block_invoke(uint64_t a1, float32x4_t *a2)
{
  v18 = DRBufferCopyDescriptor();
  if (a2->i8[DRBufferDescriptorGetCapacity() - 1])
  {
    if (**(a1 + 48))
    {
      BytesUsed = DRBufferGetBytesUsed();
      if (BytesUsed >= 0x40)
      {
        v5 = BytesUsed >> 6;
        v6 = a2 + 2;
        do
        {
          v7 = v6[-2];
          v8 = v6[-1];
          v9 = *v6;
          v10 = v6[1];
          v6 += 4;
          v11 = *(a1 + 56);
          v19[0] = v7;
          v19[1] = v8;
          v19[2] = v9;
          v19[3] = v10;
          re::AABB::transform(v11, v19, v20);
          v12 = *(*(a1 + 40) + 8);
          v13 = v12[3];
          v13.i32[3] = 0;
          v14 = v20[0];
          v15 = v20[1];
          v14.i32[3] = 0;
          v12[3] = vminnmq_f32(v13, v14);
          v16 = *(*(a1 + 40) + 8);
          v17 = v16[4];
          v17.i32[3] = 0;
          v15.i32[3] = 0;
          v16[4] = vmaxnmq_f32(v17, v15);
          --v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::InstanceGroupBoundsComponentStateImpl,REEventHandlerResult (re::ecs2::InstanceGroupBoundsComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::InstanceGroupBoundsComponentStateImpl,REEventHandlerResult (re::ecs2::InstanceGroupBoundsComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::InstanceGroupBoundsComponentStateImpl,REEventHandlerResult (re::ecs2::InstanceGroupBoundsComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5B60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,re::AABB>(re::snapshot::BufferDecoder *this, void *a2)
{
  v16 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 >= 8)
  {
    v6 = *v4;
    *(this + 3) = v4 + 1;
    if ((v6 & 0x1F) != 0)
    {
      return re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
    }

    re::DynamicArray<re::AABB>::resize(a2, v6 >> 5);
    v12 = a2[4];

    return re::snapshot::BufferDecoder::readRaw(this, v12, v6);
  }

  re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
  result = re::snapshot::DecoderRaw::beginArray(this, &v16);
  if (!result)
  {
    return result;
  }

  v8 = v16;
  if (v16 != -1 && a2[1] < v16)
  {
    re::DynamicArray<re::AABB>::setCapacity(a2, v16);
LABEL_15:
    v13 = 0;
    v10 = v8 + 1;
    if (v8 + 1 > 1)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = 1;
    }

    while (v8 != -1 && v14 - 1 != v13)
    {
      re::DynamicArray<re::AABB>::resize(a2, v13 + 1);
      v15 = a2[4] + 32 * a2[2];
      re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(this, v15 - 32);
      result = re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(this, v15 - 16);
      if (v8 == ++v13)
      {
        v11 = v13 + 1;
        goto LABEL_22;
      }
    }

    return re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
  }

  if (v16)
  {
    goto LABEL_15;
  }

  v10 = 1;
  v11 = 1;
LABEL_22:
  if (v10 != v11)
  {
    return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
  }

  return result;
}

re::snapshot::BufferDecoder *re::snapshot::operator>><re::snapshot::DecoderRaw,BOOL>(re::snapshot::BufferDecoder *this, void *a2)
{
  v15 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 >= 8)
  {
    v6 = *v4;
    *(this + 3) = v4 + 1;
    re::DynamicArray<BOOL>::resize(a2, v6);
    v7 = a2[4];

    return re::snapshot::BufferDecoder::readRaw(this, v7, v6);
  }

  re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
  result = re::snapshot::DecoderRaw::beginArray(this, &v15);
  if (!result)
  {
    return result;
  }

  v9 = v15;
  if (v15 != -1 && a2[1] < v15)
  {
    re::DynamicArray<BOOL>::setCapacity(a2, v15);
LABEL_13:
    v13 = 0;
    v11 = v9 + 1;
    if (v9 + 1 > 1)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = 1;
    }

    while (v9 != -1 && v14 - 1 != v13)
    {
      re::DynamicArray<BOOL>::resize(a2, v13 + 1);
      result = re::snapshot::DecoderRaw::operator>>(this, (a2[4] + a2[2] - 1));
      if (v9 == ++v13)
      {
        v12 = v13 + 1;
        goto LABEL_20;
      }
    }

    return re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v11 = 1;
  v12 = 1;
LABEL_20:
  if (v11 != v12)
  {
    return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
  }

  return result;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,re::AABB>(const char **a1, void *a2)
{
  v15 = 0;
  if (re::snapshot::DecoderOPACK::beginData(a1, &v15, 1))
  {
    v4 = v15;
    if ((v15 & 0x1F) != 0)
    {
      return re::snapshot::BufferDecoder::error(a1, "Bad data: %zu bytes, expected multiple of %zu");
    }

    else
    {
      re::DynamicArray<re::AABB>::resize(a2, v15 >> 5);
      v14 = a2[4];

      return re::snapshot::BufferDecoder::readRaw(a1, v14, v4);
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v15);
    if (result)
    {
      v6 = v15;
      if (v15 != -1 && a2[1] < v15)
      {
        re::DynamicArray<re::AABB>::setCapacity(a2, v15);
      }

      LODWORD(v8) = 1;
      if (v6 + 1 > 1)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = 1;
      }

      result = re::snapshot::DecoderOPACK::endArray(a1, &v15);
      if (result)
      {
LABEL_20:
        if (v6 + 1 != v8)
        {
          return re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        v8 = 1;
        while (v6 != -1 && v9 != v8)
        {
          re::DynamicArray<re::AABB>::resize(a2, v8);
          v10 = a2[4];
          v11 = a2[2];
          if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
          {
            v12 = v10 + 32 * v11;
            re::snapshot::DecoderOPACK::field<1,re::Vector3<float>>(a1, v12 - 32, "min");
            re::snapshot::DecoderOPACK::field<2,re::Vector3<float>>(a1, v12 - 16, "max");
            re::snapshot::DecoderOPACK::endObject(a1, 0, v13);
          }

          ++v8;
          result = re::snapshot::DecoderOPACK::endArray(a1, &v15);
          if (result)
          {
            goto LABEL_20;
          }
        }

        return re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
      }
    }
  }

  return result;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,BOOL>(re::snapshot::BufferDecoder *a1, void *a2)
{
  v11 = 0;
  if (re::snapshot::DecoderOPACK::beginData(a1, &v11, 1))
  {
    v4 = v11;
    re::DynamicArray<BOOL>::resize(a2, v11);
    v5 = a2[4];

    return re::snapshot::BufferDecoder::readRaw(a1, v5, v4);
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v11);
    if (result)
    {
      v7 = v11;
      if (v11 != -1 && a2[1] < v11)
      {
        re::DynamicArray<BOOL>::setCapacity(a2, v11);
      }

      LODWORD(v9) = 1;
      if (v7 + 1 > 1)
      {
        v10 = v7 + 1;
      }

      else
      {
        v10 = 1;
      }

      result = re::snapshot::DecoderOPACK::endArray(a1, &v11);
      if (result)
      {
LABEL_19:
        if (v7 + 1 != v9)
        {
          return re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        v9 = 1;
        while (v7 != -1 && v10 != v9)
        {
          re::DynamicArray<BOOL>::resize(a2, v9);
          re::snapshot::DecoderOPACK::operator>>(a1, (a2[4] + a2[2] - 1));
          ++v9;
          result = re::snapshot::DecoderOPACK::endArray(a1, &v11);
          if (result)
          {
            goto LABEL_19;
          }
        }

        return re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
      }
    }
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::InstanceGroupBoundsComponent>(uint64_t a1)
{
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE8418;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  *(v2 + 144) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0;
  inited = objc_initWeak((v2 + 152), 0);
  *(a1 + 160) = 0;
  *(a1 + 192) = re::globalAllocators(inited)[2];
  *(a1 + 200) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228InstanceGroupBoundsComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 32 * v6;
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      result = v12;
      if (v12 == *a2)
      {
        result = *(v11 + 2);
        if (result == HIWORD(*a2) && ((*(v11 + 4) ^ a2[1]) & 0xFFFFFF) == 0)
        {
          break;
        }
      }

      v6 = *(v8 + 32 * v9) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v7 = *(a2 + 16);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 8;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 8)
    {
      return result;
    }

    v5 = 16;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(result, a2);
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CF5BB8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF5C10;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF5C68;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF5CC0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CF5BB8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CF5C10;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CF5C68;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CF5CC0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5BB8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5C10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5C10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5C68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5C68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5CC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5CC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_AudioGroupPlaybackComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADF28, "AudioGroupPlaybackComponent");
    __cxa_guard_release(&qword_1EE1ADE60);
  }

  return &unk_1EE1ADF28;
}

void re::ecs2::initInfo_AudioGroupPlaybackComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x2F587CFA4460AF72;
  v19[1] = "AudioGroupPlaybackComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1ADE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE68))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1ADE88 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "audioPlaybackGroups";
    *(v17 + 16) = &qword_1EE1ADED8;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1ADE90 = v17;
    __cxa_guard_release(&qword_1EE1ADE68);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1ADE88;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227AudioGroupPlaybackComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1ADE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE78))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1ADED8);
    qword_1EE1ADED8 = &unk_1F5CF5E30;
    __cxa_guard_release(&qword_1EE1ADE78);
  }

  if ((_MergedGlobals_328 & 1) == 0)
  {
    v7 = re::introspect_uint64_t(1, a2);
    if ((atomic_load_explicit(&qword_1EE1ADE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE80))
    {
      re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1ADE80);
    }

    if ((byte_1EE1ADE59 & 1) == 0)
    {
      v8 = re::ecs2::introspect_AudioPlaybackGroup(1, v2, v3, v4, v5, v6);
      if ((byte_1EE1ADE59 & 1) == 0)
      {
        v9 = v8;
        byte_1EE1ADE59 = 1;
        v10 = *(v8 + 24);
        ArcSharedObject::ArcSharedObject(&qword_1EE1ADE98, 0);
        qword_1EE1ADEA8 = 0x2800000003;
        dword_1EE1ADEB0 = v10;
        *algn_1EE1ADEB4 = 0;
        *&xmmword_1EE1ADEB8 = 0;
        *(&xmmword_1EE1ADEB8 + 1) = 0xFFFFFFFFLL;
        *algn_1EE1ADEC8 = v9;
        qword_1EE1ADED0 = 0;
        qword_1EE1ADE98 = &unk_1F5CF5ED0;
        re::IntrospectionRegistry::add(v11, v12);
        re::getPrettyTypeName(&v33, &qword_1EE1ADE98);
        if (BYTE8(v33))
        {
          v13 = v34;
        }

        else
        {
          v13 = &v33 + 9;
        }

        if (v33 && (BYTE8(v33) & 1) != 0)
        {
          (*(*v33 + 40))();
        }

        v37 = *(v9 + 32);
        if (v38)
        {
          v36 = v38;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(v35);
          re::TypeBuilder::TypeBuilder(&v33, v35);
          v41 = v37;
          re::TypeBuilder::beginListType(&v33, &v40, 1, 0x28uLL, 8uLL, &v41);
          re::TypeBuilder::setConstructor(&v33, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
          re::TypeBuilder::setDestructor(&v33, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
          re::TypeBuilder::setListUsesContiguousStorage(&v33, 1);
          re::TypeBuilder::setListAccessors(&v33, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
          re::TypeBuilder::setListIndexer(&v33, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
          re::TypeBuilder::setListIterator(&v33, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v33, v15);
          re::StackScratchAllocator::~StackScratchAllocator(v35);
        }

        xmmword_1EE1ADEB8 = v36;
        if (v40)
        {
          if (v40)
          {
          }
        }
      }
    }

    if ((_MergedGlobals_328 & 1) == 0)
    {
      _MergedGlobals_328 = 1;
      v16 = dword_1EE1ADEB0;
      ArcSharedObject::ArcSharedObject(&qword_1EE1ADED8, 0);
      qword_1EE1ADEE8 = 0x3000000007;
      dword_1EE1ADEF0 = v16;
      word_1EE1ADEF4 = 0;
      *&xmmword_1EE1ADEF8 = 0;
      *(&xmmword_1EE1ADEF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1ADF08 = v7;
      unk_1EE1ADF10 = 0;
      qword_1EE1ADF18 = &qword_1EE1ADE98;
      unk_1EE1ADF20 = 0;
      qword_1EE1ADED8 = &unk_1F5CF5E30;
      re::IntrospectionRegistry::add(v17, v18);
      re::getPrettyTypeName(&v33, &qword_1EE1ADED8);
      if (BYTE8(v33))
      {
        v19 = v34;
      }

      else
      {
        v19 = &v33 + 9;
      }

      if (v33 && (BYTE8(v33) & 1) != 0)
      {
        (*(*v33 + 40))();
      }

      v20 = v7[2];
      v28 = xmmword_1EE1ADEB8;
      v29 = v20;
      if (v41)
      {
        v27 = v41;
      }

      else
      {
        *&v33 = 0x449AD97C4B77BED4;
        *(&v33 + 1) = "_CompareFunc";
        if (v33)
        {
          if (v33)
          {
          }
        }

        if (!v40)
        {
          v35[0] = 0x449AD97C4B77BED4;
          v35[1] = "_CompareFunc";
          v40 = v33;
          if (v35[0])
          {
            if (v35[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(&v38, &v33 + 8);
        if (!v40 || (v24 = *v39, *&v33 = *(&v40 + 1), *(&v33 + 1) = v24, LODWORD(v34) = -1, (v25 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v38 + 768, &v33)) == 0) || !*v25)
        {
          v36 = v40;
          v37 = v29;
        }

        re::StackScratchAllocator::StackScratchAllocator(v35);
        re::TypeBuilder::TypeBuilder(&v33, v35);
        v31 = v28;
        v32 = v29;
        re::TypeBuilder::beginDictionaryType(&v33, &v30, 1, 0x30uLL, 8uLL, &v32, &v31);
        re::TypeBuilder::setConstructor(&v33, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v33, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v33, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v33, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v33, v26);
        re::StackScratchAllocator::~StackScratchAllocator(v35);
      }

      xmmword_1EE1ADEF8 = v27;
      if (v30)
      {
        if (v30)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF5D18;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF5D18;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_AudioGroupPlaybackSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADFB8, "AudioGroupPlaybackSystem");
    __cxa_guard_release(&qword_1EE1ADE70);
  }

  return &unk_1EE1ADFB8;
}

void re::ecs2::initInfo_AudioGroupPlaybackSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xB400DA8C1B2F21E6;
  v8[1] = "AudioGroupPlaybackSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioGroupPlaybackSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioGroupPlaybackSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioGroupPlaybackSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CF5D70;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CF5D70;
  result[28] = 0;
  return result;
}

void re::ecs2::AudioGroupPlaybackComponent::~AudioGroupPlaybackComponent(re::ecs2::AudioGroupPlaybackComponent *this)
{
  *this = &unk_1F5CF5D18;
  v2 = (this + 32);
  re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 32);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioGroupPlaybackComponent::~AudioGroupPlaybackComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 32);
        }

        v4 += 64;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

_anonymous_namespace_ *re::ecs2::AudioGroupPlaybackSystem::willAddSystemToECSService(re::ecs2::AudioGroupPlaybackSystem *this)
{
  result = *(this + 5);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v3);
    *(this + 28) = result;
  }

  return result;
}

double re::ecs2::AudioGroupPlaybackSystem::willAddSceneToECSService(re::ecs2::AudioGroupPlaybackSystem *this, re::ecs2::Scene *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v5 = this;
    *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::didAddComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v6 = 0;
    v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 96), &v5);
    *&v5 = this;
    *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::willRemoveComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v6 = 0;
    v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 184), &v5);
  }

  return result;
}

void re::ecs2::AudioGroupPlaybackSystem::willRemoveSceneFromECSService(re::ecs2::AudioGroupPlaybackSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::didAddComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 96, &v4);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::willRemoveComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 184, &v4);
  }
}

void *re::ecs2::AudioGroupPlaybackSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v49);
  if (*(a1 + 224))
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v8 = &unk_1EE187000;
      v41 = v7;
      v42 = a1;
      do
      {
        v9 = *v6;
        v10 = re::ecs2::SceneComponentTable::get((*v6 + 200), v8[444]);
        if (v10)
        {
          v11 = *(v10 + 384);
          if (v11)
          {
            re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v48, 3152, a1, v11, 0, 0);
            v12 = (*(**(a1 + 224) + 16))(*(a1 + 224), v9);
            if ((*(*v12 + 568))())
            {
              v43 = v6;
              v15 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[444]);
              if (v15)
              {
                v16 = *(v15 + 384);
                if (v16)
                {
                  v17 = *(v15 + 400);
                  v44 = &v17[v16];
                  do
                  {
                    v18 = (*(*v12 + 912))(&v46, v12);
                    v20 = v46;
                    v19 = v47;
                    if (v46 != v47)
                    {
                      do
                      {
                        v45 = *v20;
                        v21 = *v17;
                        v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27));
                        v18 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(*v17 + 32, &v45, v22 ^ (v22 >> 31), buf);
                        v23 = v52;
                        if (v52 != 0x7FFFFFFF)
                        {
                          v24 = *(v21 + 48);
                          v25 = *(v24 + (v52 << 6)) & 0x7FFFFFFF;
                          if (v53 == 0x7FFFFFFF)
                          {
                            *(*(v21 + 40) + 4 * v51) = v25;
                            v23 = v52;
                          }

                          else
                          {
                            *(v24 + (v53 << 6)) = *(v24 + (v53 << 6)) & 0x80000000 | v25;
                          }

                          v18 = v24 + (v23 << 6);
                          v26 = *v18;
                          if ((*v18 & 0x80000000) != 0)
                          {
                            *v18 = v26 & 0x7FFFFFFF;
                            v18 = re::DynamicArray<unsigned long>::deinit(v18 + 16);
                            v23 = v52;
                            v24 = *(v21 + 48);
                            v26 = *(v24 + (v52 << 6));
                          }

                          *(v24 + (v23 << 6)) = *(v21 + 68) | v26 & 0x80000000;
                          --*(v21 + 60);
                          v27 = *(v21 + 72) + 1;
                          *(v21 + 68) = v23;
                          *(v21 + 72) = v27;
                        }

                        ++v20;
                      }

                      while (v20 != v19);
                      v20 = v46;
                    }

                    if (v20)
                    {
                      v47 = v20;
                      operator delete(v20);
                    }

                    v28 = *v17;
                    v29 = *(*v17 + 64);
                    if (v29)
                    {
                      v30 = 0;
                      v31 = *(v28 + 48);
                      while (1)
                      {
                        v32 = *v31;
                        v31 += 16;
                        if (v32 < 0)
                        {
                          break;
                        }

                        if (v29 == ++v30)
                        {
                          LODWORD(v30) = *(*v17 + 64);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v30) = 0;
                    }

                    v33 = *(*v17 + 64);
LABEL_30:
                    while (v30 != v29)
                    {
                      v34 = *(v28 + 48) + (v30 << 6);
                      v35 = *(v34 + 32);
                      if (v35)
                      {
                        v36 = *(v34 + 48);
                        v37 = 40 * v35;
                        do
                        {
                          if (*v36)
                          {
                            v18 = (*(*v12 + 864))(v12, *v36, *(v36 + 8), *(v36 + 32));
                            if (*(v36 + 24) == 1)
                            {
                              v18 = (*(*v12 + 872))(v12, *v36, *(v36 + 16));
                            }
                          }

                          else
                          {
                            v38 = *re::audioLogObjects(v18);
                            v18 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
                            if (v18)
                            {
                              *buf = 0;
                              _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "[AudioGroupPlaybackSystem] Group Token is invalid.", buf, 2u);
                            }
                          }

                          v36 += 40;
                          v37 -= 40;
                        }

                        while (v37);
                        v33 = *(v28 + 64);
                      }

                      if (v33 <= v30 + 1)
                      {
                        v39 = v30 + 1;
                      }

                      else
                      {
                        v39 = v33;
                      }

                      while (v39 - 1 != v30)
                      {
                        LODWORD(v30) = v30 + 1;
                        if ((*(*(v28 + 48) + (v30 << 6)) & 0x80000000) != 0)
                        {
                          goto LABEL_30;
                        }
                      }

                      LODWORD(v30) = v39;
                    }

                    ++v17;
                  }

                  while (v17 != v44);
                }
              }

              (*(*v12 + 880))(v12);
              a1 = v42;
              v6 = v43;
              v7 = v41;
              v8 = &unk_1EE187000;
            }

            re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v48, v13, v14);
          }
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v49);
}

void re::ecs2::AudioGroupPlaybackSystem::~AudioGroupPlaybackSystem(re::ecs2::AudioGroupPlaybackSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + (v6 << 6);
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + (v6 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24), *(v7 + v5 + 56));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 8);
        *(result + 48) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        *(result + 32) = 0;
        *(result + 8) = v9;
        *(result + 16) = 0;
        v10 = *(v8 + 24);
        *(result + 16) = *(v8 + 16);
        *(result + 24) = v10;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v11 = *(result + 32);
        *(result + 32) = *(v8 + 32);
        *(v8 + 32) = v11;
        v12 = *(result + 48);
        *(result + 48) = *(v8 + 48);
        *(v8 + 48) = v12;
        ++*(v8 + 40);
        ++*(result + 40);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v25);
  v8 = HIDWORD(v26);
  if (HIDWORD(v26) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v26, v25);
    v10 = *a2;
    *(v9 + 16) = 0;
    result = v9 + 16;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v12 = *a3;
    v13 = a3[1];
    *(result - 8) = v10;
    *result = v12;
    *(result + 8) = v13;
    *a3 = 0;
    a3[1] = 0;
    v14 = *(result + 16);
    *(result + 16) = a3[2];
    a3[2] = v14;
    v15 = *(result + 32);
    *(result + 32) = a3[4];
    a3[4] = v15;
    ++*(a3 + 6);
    ++*(result + 24);
    v16 = (a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *(a1 + 16) + (v8 << 6) + 16;
    if (result == a3)
    {
      return result;
    }

    v17 = *result;
    v18 = *a3;
    if (*result)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19 && v17 != v18)
    {
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
      return result;
    }

    v21 = *(result + 8);
    v22 = a3[1];
    *result = v18;
    *(result + 8) = v22;
    *a3 = v17;
    a3[1] = v21;
    v23 = *(result + 16);
    *(result + 16) = a3[2];
    a3[2] = v23;
    v24 = *(result + 32);
    *(result + 32) = a3[4];
    a3[4] = v24;
    ++*(a3 + 6);
    v16 = (result + 24);
  }

  ++*v16;
  return result;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1ADE98, 0);
  *(&qword_1EE1ADEA8 + 6) = 0;
  qword_1EE1ADEA8 = 0;
  *&xmmword_1EE1ADEB8 = 0;
  *(&xmmword_1EE1ADEB8 + 1) = 0xFFFFFFFFLL;
  qword_1EE1ADE98 = &unk_1F5CADA48;
  qword_1EE1ADED0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(algn_1EE1ADEC8);
  qword_1EE1ADE98 = &unk_1F5CF5ED0;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::AudioPlaybackGroup>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4);
  *(v9 + 40 * v8 + 24) = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (v9 + 40 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::DynamicArray<re::ecs2::AudioPlaybackGroup>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v5;
      if (40 * v5 >= 1)
      {
        v7 = 0;
        v8 = (v3[4] + 40 * v4);
        v9 = v6 / 0x28 - (v6 > 0x27);
        v10 = vdupq_n_s64(v9);
        do
        {
          v11 = vdupq_n_s64(v7);
          v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E3049620)));
          if (vuzp1_s8(vuzp1_s16(v12, *v10.i8), *v10.i8).u8[0])
          {
            v8[24] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v12, *&v10), *&v10).i8[1])
          {
            v8[64] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E3049640)))), *&v10).i8[2])
          {
            v8[104] = 0;
            v8[144] = 0;
          }

          v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E3049660)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i32[1])
          {
            v8[184] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i8[5])
          {
            v8[224] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E305F210))))).i8[6])
          {
            v8[264] = 0;
            v8[304] = 0;
          }

          v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903F0)));
          if (vuzp1_s8(vuzp1_s16(v14, *v10.i8), *v10.i8).u8[0])
          {
            v8[344] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v14, *&v10), *&v10).i8[1])
          {
            v8[384] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903E0)))), *&v10).i8[2])
          {
            v8[424] = 0;
            v8[464] = 0;
          }

          v15 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903D0)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i32[1])
          {
            v8[504] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i8[5])
          {
            v8[544] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903C0))))).i8[6])
          {
            v8[584] = 0;
            v8[624] = 0;
          }

          v7 += 16;
          v8 += 640;
        }

        while (((v9 + 16) & 0xFFFFFFFFFFFFFFF0) != v7);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::ecs2::AudioPlaybackGroup>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 40 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1);

  return re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + (v4 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 16;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

unint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

unint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227AudioGroupPlaybackComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::willRemoveComponents,re::ecs2::AudioGroupPlaybackSystem>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  if (*(a2 + 472))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = (*(*v2 + 16))(v2);
    if ((*(*v4 + 568))())
    {
      (*(*v4 + 896))(v4);
    }
  }

  return 0;
}

void *re::ecs2::allocInfo_UISystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_329, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_329))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE050, "UISystem");
    __cxa_guard_release(&_MergedGlobals_329);
  }

  return &unk_1EE1AE050;
}

void re::ecs2::initInfo_UISystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x4604FD853C6;
  v8[1] = "UISystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_UISystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UISystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UISystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::UISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::UISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UISystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UISystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::UISystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 0, 1);
  *result = &unk_1F5CF5F68;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::UISystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 0, 1);
  *result = &unk_1F5CF5F68;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void re::ecs2::UISystem::willAddSystemToECSService(re::ecs2::UISystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  {
    re::introspect<re::ecs2::UILayerGeometryService>(BOOL)::info = re::ecs2::introspect_UILayerGeometryService(0, v11, v12, v13, v14, v15);
  }

  v3 = re::introspect<re::ecs2::UILayerGeometryService>(BOOL)::info;
  re::StringID::invalid(&v21);
  v4 = (*(*v2 + 16))(v2, v3, &v21);
  v5 = v4;
  if (v21)
  {
    if (v21)
    {
    }
  }

  *(this + 28) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = (*(**(this + 5) + 32))(*(this + 5));
  {
    re::introspect<re::ecs2::UIGroundingShadowService>(BOOL)::info = re::ecs2::introspect_UIGroundingShadowService(0, v16, v17, v18, v19, v20);
  }

  v7 = re::introspect<re::ecs2::UIGroundingShadowService>(BOOL)::info;
  re::StringID::invalid(&v21);
  v8 = (*(*v6 + 16))(v6, v7, &v21);
  v9 = v8;
  if (v21)
  {
    if (v21)
    {
    }
  }

  *(this + 29) = v9;
  if (v9)
  {
    v10 = *(*v9 + 24);

    v10(v9);
  }
}

uint64_t re::ecs2::UISystem::willRemoveSystemFromECSService(re::ecs2::UISystem *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(this + 28) = 0;
  result = *(this + 29);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(this + 29) = 0;
  return result;
}

uint64_t re::ecs2::UISystem::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    (*(*v3 + 40))(v3, a2);
  }

  result = *(a1 + 232);
  if (result)
  {
    v5 = *(*result + 40);

    return v5();
  }

  return result;
}

uint64_t re::ecs2::UISystem::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    (*(*v3 + 48))(v3, a2);
  }

  result = *(a1 + 232);
  if (result)
  {
    v5 = *(*result + 48);

    return v5();
  }

  return result;
}

void *re::ecs2::UISystem::update(void *result, uint64_t a2, uint64_t a3)
{
  if (result[5])
  {
    v4 = result;
    v5 = result[28];
    if (v5)
    {
      v6 = *(a3 + 200);
      v8 = *(a3 + 216);
      v9 = v6;
      (*(*v5 + 16))(v5, &v8);
    }

    result = v4[29];
    if (result)
    {
      v7 = *(a3 + 200);
      v8 = *(a3 + 216);
      v9 = v7;
      return (*(*result + 16))(result, &v8);
    }
  }

  return result;
}

void re::ecs2::UISystem::~UISystem(re::ecs2::UISystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::MaterialParametersManager::~MaterialParametersManager(re::MaterialParametersManager *this)
{
  re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 4);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }
}

{
  re::MaterialParametersManager::~MaterialParametersManager(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::MaterialParametersManager::willAddScene(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t re::MaterialParametersManager::willRemoveScene(uint64_t result, uint64_t a2)
{
  if (*(result + 16) == a2)
  {
    *(result + 16) = 0;
  }

  return result;
}

void re::MaterialParametersManager::ensureRootEntityExists(re::MaterialParametersManager *this)
{
  v2 = (this + 24);
  if (!*(this + 3))
  {
    v3 = re::ecs2::EntityFactory::instance(this);
    re::ecs2::EntityFactory::make(v9, v3, 4uLL);
    v4 = *v2;
    v5 = v9[0];
    *v2 = v9[0];
    if (v4)
    {

      v5 = *v2;
    }

    *(v5 + 76) |= 0x1400u;
    v9[0] = 0xB0FDF3493E2CFA72;
    v9[1] = "MaterialInstanceSyncRoot";
    v6 = re::StringID::operator=(v5 + 36, v9);
    if (v9[0])
    {
    }

    re::ecs2::EntityComponentCollection::add((*v2 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = (*(v7 + 104) + 320);

    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v8, v2);
  }
}

void re::MaterialParametersManager::createPbrMaterialParametersEntity(_anonymous_namespace_ *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, re::ecs2::Entity **a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  v28 = 0uLL;
  v29 = 0;
  if (a2 == 2)
  {
    (*(**(a1 + 1) + 8))(&v24);
    goto LABEL_5;
  }

  if (a2 <= 1)
  {
    (*(**(a1 + 1) + 8))(&v24);
LABEL_5:
    v28 = v24;
    v24 = 0uLL;
    v29 = v25;
    *&v25 = 0;
    re::AssetHandle::~AssetHandle(&v24);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v27 = 0x7FFFFFFFLL;
  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v24, "EnableClearcoat", &v22);
    a1 = v22;
    if (v22)
    {
      if (v23)
      {
        a1 = (*(*v22 + 40))();
      }
    }
  }

  if (a4)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v24, "EnableAnisotropy", &v22);
    a1 = v22;
    if (v22)
    {
      if (v23)
      {
        a1 = (*(*v22 + 40))();
      }
    }
  }

  if (a5)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v24, "EnableCloth", &v22);
    a1 = v22;
    if (v22)
    {
      if (v23)
      {
        a1 = (*(*v22 + 40))();
      }
    }
  }

  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 1992, 8);
  bzero(v13, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v13);
  v22 = "PhysicallyBasedMaterialResource";
  v23 = 31;
  re::DynamicString::operator=((v13 + 8), &v22);
  re::AssetHandle::operator=(v13 + 40, &v28);
  v14 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v13 + 304), &v24);
  v15 = *(v10 + 1);
  v16 = re::MaterialAsset::assetType(v14);
  (*(*v15 + 424))(&v22, v15, v13, v16, 0, 0, 1);
  re::MaterialParametersManager::ensureRootEntityExists(v10);
  v18 = re::ecs2::EntityFactory::instance(v17);
  re::ecs2::EntityFactory::make(a6, v18, 4uLL);
  v19 = *a6;
  *(v19 + 76) |= 0x1400u;
  v21[0] = 0xCEA8EA11163BE4E8;
  v21[1] = "PbrMaterialParametersEntity";
  re::StringID::operator=(v19 + 36, v21);
  re::ecs2::Entity::setParentInternal(v19, *(v10 + 3), 0xFFFFFFFFFFFFFFFFLL);
  v20 = re::ecs2::EntityComponentCollection::add((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v20[512] = v9;
  v20[513] = a3;
  v20[515] = a5;
  v20[514] = a4;
  re::AssetHandle::operator=((v20 + 528), &v22);
  re::ecs2::EntityComponentCollection::add((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::AssetHandle::~AssetHandle(&v22);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v24);
  re::AssetHandle::~AssetHandle(&v28);
}

void re::MaterialParametersManager::addOrUpdatePbrMaterialInstanceHandle(uint64_t a1, re::RenderManager *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = 0;
  v32 = a3;
  v9 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, a3);
  if (!v9)
  {
    v12 = re::globalAllocators(0);
    v13 = (*(*v12[2] + 32))(v12[2], 592, 16);
    re::PbrMaterial::PbrMaterial(v13, 0);
    v30[0] = 2;
    v31 = v14;
    re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 32, &v32, v30);
LABEL_7:
    v15 = v31;
    if (v31)
    {
      v16 = (v31 + 8);
      *(v15 + 368) = *(a4 + 336);
      v17 = *(a4 + 400);
      v19 = *(a4 + 352);
      v18 = *(a4 + 368);
      *(v15 + 416) = *(a4 + 384);
      *(v15 + 432) = v17;
      *(v15 + 384) = v19;
      *(v15 + 400) = v18;
      v20 = *(a4 + 464);
      v22 = *(a4 + 416);
      v21 = *(a4 + 432);
      *(v15 + 480) = *(a4 + 448);
      *(v15 + 496) = v20;
      *(v15 + 448) = v22;
      *(v15 + 464) = v21;
      re::PbrMaterialTextures::operator=(v15 + 32, a4);
      *(v15 + 512) = *(a4 + 480);
      *(v15 + 516) = *(a4 + 484);
      *(v15 + 520) = *(a4 + 488);
      re::AssetHandle::operator=(v15 + 528, a5);
      re::PbrMaterial::commitConstantChanges(v15, a2);
      re::PbrMaterial::commitTextureChanges(v15, a2);
    }

    else
    {
      MEMORY[0x170] = *(a4 + 336);
      v23 = *(a4 + 352);
      v24 = *(a4 + 368);
      v25 = *(a4 + 384);
      MEMORY[0x1B0] = *(a4 + 400);
      MEMORY[0x1A0] = v25;
      MEMORY[0x190] = v24;
      MEMORY[0x180] = v23;
      v26 = *(a4 + 416);
      v27 = *(a4 + 432);
      v28 = *(a4 + 448);
      MEMORY[0x1F0] = *(a4 + 464);
      MEMORY[0x1E0] = v28;
      MEMORY[0x1D0] = v27;
      MEMORY[0x1C0] = v26;
      re::PbrMaterialTextures::operator=(32, a4);
      MEMORY[0x200] = *(a4 + 480);
      MEMORY[0x204] = *(a4 + 484);
      MEMORY[0x208] = *(a4 + 488);
      re::AssetHandle::operator=(528, a5);
      re::PbrMaterial::commitConstantChanges(0, a2);
      re::PbrMaterial::commitTextureChanges(0, a2);
    }

    goto LABEL_10;
  }

  v30[0] = *v9;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v31, *(v9 + 8));
  if (v30[0] == 2)
  {
    goto LABEL_7;
  }

  if ((atomic_exchange(re::MaterialParametersManager::addOrUpdatePbrMaterialInstanceHandle(re::RenderManager *,unsigned long long,re::PbrMaterialParameters const&,re::AssetHandle)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v11 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "MaterialInstanceHandle is not expected type", v29, 2u);
    }
  }

LABEL_10:
  if (v31)
  {
  }
}

uint64_t re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

void *re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    result[1] = *a2;
    *(result + 16) = *a3;
    v8 = *(a3 + 8);
    result[3] = v8;
    if (v8)
    {
      result = (v8 + 8);
    }

    ++*(a1 + 40);
  }

  return result;
}

__n128 re::PbrMaterial::commitConstantChanges(re::PbrMaterial *this, re::RenderManager *a2)
{
  if (*(this + 130))
  {
    v4 = re::PbrMaterial::addRenderFrameParameterDelta(this, a2);
    if (v4)
    {
      v6 = v4;
      *(v4 + 16) = 1;
      re::PbrMaterialConstants::asPbrConstants(this + 368, a2, v10);
      v7 = v10[7];
      *(v6 + 128) = v10[6];
      *(v6 + 144) = v7;
      *(v6 + 160) = v10[8];
      v8 = v10[3];
      *(v6 + 64) = v10[2];
      *(v6 + 80) = v8;
      v9 = v10[5];
      *(v6 + 96) = v10[4];
      *(v6 + 112) = v9;
      result = v10[1];
      *(v6 + 32) = v10[0];
      *(v6 + 48) = result;
      *(v6 + 20) = *(this + 129);
      *(this + 130) = 0;
    }
  }

  return result;
}

void re::PbrMaterial::commitTextureChanges(re::PbrMaterial *this, re::RenderManager *a2)
{
  v3 = re::PbrMaterial::addRenderFrameParameterDelta(this, a2);
  if (v3)
  {
    *(v3 + 17) = 1;
    v4 = (this + 32);
    v5 = v3 + 176;
    v6 = 14;
    do
    {
      re::PbrMaterial::makeTextureHandle(v4, v7);
      re::TextureHandle::operator=(v5, v7);
      re::TextureHandle::invalidate(v7);
      v5 += 16;
      v4 = (v4 + 24);
      --v6;
    }

    while (v6);
  }
}

void re::MaterialParametersManager::createUnlitMaterialParametersEntity(_anonymous_namespace_ *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, re::ecs2::Entity **a6@<X8>, float a7@<S0>)
{
  v11 = a2;
  v12 = a1;
  v31 = 0uLL;
  v32 = 0;
  if (a2 == 2)
  {
    (*(**(a1 + 1) + 8))(&v27);
    goto LABEL_5;
  }

  if (a2 <= 1)
  {
    (*(**(a1 + 1) + 8))(&v27);
LABEL_5:
    v31 = v27;
    v27 = 0uLL;
    v32 = v28;
    *&v28 = 0;
    re::AssetHandle::~AssetHandle(&v27);
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v30 = 0x7FFFFFFFLL;
  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v27, "MatchUnlitColor", &v25);
    a1 = v25;
    if (v25)
    {
      if (v26)
      {
        a1 = (*(*v25 + 40))();
      }
    }
  }

  v14 = re::globalAllocators(a1);
  v15 = (*(*v14[2] + 32))(v14[2], 1992, 8);
  bzero(v15, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v15);
  v25 = "UnlitMaterialResource";
  v26 = 21;
  re::DynamicString::operator=((v15 + 8), &v25);
  re::AssetHandle::operator=(v15 + 40, &v31);
  v16 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v15 + 304), &v27);
  v17 = *(v12 + 1);
  v18 = re::MaterialAsset::assetType(v16);
  (*(*v17 + 424))(&v25, v17, v15, v18, 0, 0, 1);
  re::MaterialParametersManager::ensureRootEntityExists(v12);
  v20 = re::ecs2::EntityFactory::instance(v19);
  re::ecs2::EntityFactory::make(a6, v20, 4uLL);
  v21 = *a6;
  *(v21 + 76) |= 0x1400u;
  v24[0] = 0x942092D10A3FF97ALL;
  v24[1] = "UnlitMaterialInstanceEntity";
  re::StringID::operator=(v21 + 36, v24);
  re::ecs2::Entity::setParentInternal(v21, *(v12 + 3), 0xFFFFFFFFFFFFFFFFLL);
  v22 = re::ecs2::EntityComponentCollection::add((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v22 + 76) = v11;
  *(v22 + 77) = a3;
  v23 = *(a4 + 16);
  *(v22 + 28) = *a4;
  *(v22 + 44) = v23;
  *(v22 + 72) = a7;
  re::AssetHandle::operator=(v22 + 48, a5);
  re::AssetHandle::operator=(v22 + 80, &v25);
  re::ecs2::EntityComponentCollection::add((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::AssetHandle::~AssetHandle(&v25);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v27);
  re::AssetHandle::~AssetHandle(&v31);
}

uint64_t re::MaterialParametersManager::findMaterialParametersEntityByID(re::MaterialParametersManager *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v5 = a2;
  v3 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2 + 152, &v5);
  if (v3)
  {
    return *(v3 + 8);
  }

  if (*(*(v2 + 104) + 312) == v5)
  {
    return *(v2 + 104);
  }

  return 0;
}

void re::MaterialParametersManager::addOrUpdateUnlitMaterialInstanceHandle(uint64_t a1, re::RenderManager *a2, unint64_t a3, char a4, char a5, __int128 *a6, uint64_t *a7, uint64_t *a8, float a9)
{
  v31 = 0;
  v32 = a3;
  v17 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, a3);
  if (v17)
  {
    v30[0] = *v17;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v31, *(v17 + 8));
    if (v30[0] != 1)
    {
      v18 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v19 = re::globalAllocators(0);
    v20 = (*(*v19[2] + 32))(v19[2], 136, 8);
    ArcSharedObject::ArcSharedObject(v20, 0);
    *v20 = &unk_1F5CF6080;
    __asm { FMOV            V0.4S, #1.0 }

    *(v20 + 24) = _Q0;
    *(v20 + 40) = 0;
    *(v20 + 44) = 1065353216;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    *(v20 + 48) = 0;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 72) = 0;
    *(v20 + 112) = vdupq_n_s64(0xFFFFFFFFFFFFFFFuLL);
    *(v20 + 128) = 0;
    v30[0] = 1;
    v31 = v20;
    re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 32, &v32, v30);
  }

  v18 = v31;
  if (v31)
  {
    v26 = (v31 + 8);
  }

LABEL_7:
  v27 = *a6;
  *(v18 + 40) = *(a6 + 16);
  *(v18 + 24) = v27;
  *(v18 + 44) = a9;
  *(v18 + 72) = a4;
  re::AssetHandle::operator=(v18 + 48, a7);
  *(v18 + 73) = a5;
  re::AssetHandle::operator=(v18 + 80, a8);
  re::UnlitMaterial::commitConstantChanges(v18, a2);
  v28 = re::UnlitMaterial::addRenderFrameParameterDelta(v18, a2);
  if (v28)
  {
    v29 = v28;
    *(v28 + 17) = 1;
    re::PbrMaterial::makeTextureHandle((v18 + 48), v33);
    re::TextureHandle::operator=(v29 + 64, v33);
    re::TextureHandle::invalidate(v33);
  }

  if (v31)
  {
  }
}

uint64_t re::MaterialParametersManager::materialInstanceHandle(re::MaterialParametersManager *this, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, this + 32, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(this + 6) + 40 * v6 + 16;
  }
}

double re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 40 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 24);
    if (v3)
    {

      *(v2 + 24) = 0;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 40 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *v18 % *(a1 + 24), *v18);
                *(v19 + 8) = *(v18 - 3);
                *(v19 + 16) = *(v18 - 16);
                *(v19 + 24) = *(v18 - 1);
                *(v18 - 1) = 0;
              }

              ++v17;
              v18 += 5;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

void re::UnlitMaterial::~UnlitMaterial(re::UnlitMaterial *this)
{
  *this = &unk_1F5CF6080;
  v2 = *(this + 13);
  if (v2)
  {

    *(this + 13) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF6080;
  v2 = *(this + 13);
  if (v2)
  {

    *(this + 13) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_ImageBasedLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE0E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE198, "ImageBasedLightComponent");
    __cxa_guard_release(&qword_1EE1AE0E8);
  }

  return &unk_1EE1AE198;
}

void re::ecs2::initInfo_ImageBasedLightComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v74[0] = 0x54A3D8680549C3BELL;
  v74[1] = "ImageBasedLightComponent";
  if (v74[0])
  {
    if (v74[0])
    {
    }
  }

  *(this + 2) = v75;
  if ((atomic_load_explicit(&_MergedGlobals_330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_330))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AE118 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "intensityExponent";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AE120 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_AssetHandle(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "ibl";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x5800000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AE128 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_AssetHandle(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "diffuseTexture";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2800000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1AE130 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_AssetHandle(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "specularTexture";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x4000000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1AE138 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "isGlobalIBL";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x9400000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1AE140 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_float(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "mixFactor";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x4B000000006;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1AE148 = v38;
    v39 = re::introspectionAllocator();
    v40 = re::introspect_Vector3F(1);
    v41 = (*(*v39 + 32))(v39, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "mixColor";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x50000000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1AE150 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::introspect_ColorGamut(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "mixColorGamut";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x51000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1AE158 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_AssetHandle(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "iblBlend";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0x7000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE1AE160 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_BOOL(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "enableBlend";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0x880000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE1AE168 = v53;
    v54 = re::introspectionAllocator();
    v56 = re::introspect_float(1, v55);
    v57 = (*(*v54 + 32))(v54, 72, 8);
    *v57 = 1;
    *(v57 + 8) = "blendIBLsFactor";
    *(v57 + 16) = v56;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0x8C0000000BLL;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    qword_1EE1AE170 = v57;
    v58 = re::introspectionAllocator();
    v60 = re::introspect_BOOL(1, v59);
    v61 = (*(*v58 + 32))(v58, 72, 8);
    *v61 = 1;
    *(v61 + 8) = "enableRotation";
    *(v61 + 16) = v60;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0x4B80000000CLL;
    *(v61 + 40) = 0;
    *(v61 + 48) = 0;
    *(v61 + 56) = 0;
    *(v61 + 64) = 0;
    qword_1EE1AE178 = v61;
    v62 = re::introspectionAllocator();
    v64 = re::introspect_BOOL(1, v63);
    v65 = (*(*v62 + 32))(v62, 72, 8);
    *v65 = 1;
    *(v65 + 8) = "enableRotationBlend";
    *(v65 + 16) = v64;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0x4B90000000DLL;
    *(v65 + 40) = 0;
    *(v65 + 48) = 0;
    *(v65 + 56) = 0;
    *(v65 + 64) = 0;
    qword_1EE1AE180 = v65;
    v66 = re::introspectionAllocator();
    v67 = re::introspect_Matrix3x3F(1);
    v68 = (*(*v66 + 32))(v66, 72, 8);
    *v68 = 1;
    *(v68 + 8) = "rotationBlendIBL";
    *(v68 + 16) = v67;
    *(v68 + 24) = 0;
    *(v68 + 32) = 0x4C00000000ELL;
    *(v68 + 40) = 0;
    *(v68 + 48) = 0;
    *(v68 + 56) = 0;
    *(v68 + 64) = 0;
    qword_1EE1AE188 = v68;
    v69 = re::introspectionAllocator();
    v71 = re::introspect_uint64_t(1, v70);
    v72 = (*(*v69 + 32))(v69, 72, 8);
    *v72 = 1;
    *(v72 + 8) = "textureContentUpdateTimestamp";
    *(v72 + 16) = v71;
    *(v72 + 24) = 0;
    *(v72 + 32) = 0x4F00000000FLL;
    *(v72 + 40) = 0;
    *(v72 + 48) = 0;
    *(v72 + 56) = 0;
    *(v72 + 64) = 0;
    qword_1EE1AE190 = v72;
    __cxa_guard_release(&_MergedGlobals_330);
  }

  *(this + 2) = 0x55000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 16;
  *(this + 8) = &qword_1EE1AE118;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224ImageBasedLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v73 = v75;
}

void *re::ecs2::allocInfo_ImageBasedLightReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE0F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE228, "ImageBasedLightReceiverComponent");
    __cxa_guard_release(&qword_1EE1AE0F0);
  }

  return &unk_1EE1AE228;
}

void re::ecs2::initInfo_ImageBasedLightReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x4BF3A083172FA560;
  v20[1] = "ImageBasedLightReceiverComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1AE0F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE0F8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AE108 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::ecs2::introspect_EntityHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "iblEntity";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AE110 = v18;
    __cxa_guard_release(&qword_1EE1AE0F8);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AE108;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232ImageBasedLightReceiverComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::ecs2::allocInfo_ImageBasedLightSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE100))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE2B8, "ImageBasedLightSystem");
    __cxa_guard_release(&qword_1EE1AE100);
  }

  return &unk_1EE1AE2B8;
}

void re::ecs2::initInfo_ImageBasedLightSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x8D1ECFE7443B511ALL;
  v8[1] = "ImageBasedLightSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x58000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ImageBasedLightSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedLightSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedLightSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ImageBasedLightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ImageBasedLightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedLightSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedLightSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::ImageBasedLightSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 173));
  a3[68] = &unk_1F5CF60C8;
  re::IBL::~IBL((a3 + 142));
  re::IBL::~IBL((a3 + 112));
  re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a3 + 104));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a3 + 95));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a3 + 87));
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::deinit((a3 + 79));
  re::DynamicArray<unsigned long>::deinit((a3 + 79));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a3 + 73);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::ImageBasedLightSystem>(uint64_t *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 173));
  a1[68] = &unk_1F5CF60C8;
  re::IBL::~IBL((a1 + 142));
  re::IBL::~IBL((a1 + 112));
  re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 104));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a1 + 95));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a1 + 87));
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::deinit((a1 + 79));
  re::DynamicArray<unsigned long>::deinit((a1 + 79));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 73);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::ImageBasedLightComponent::mainIBLForScene(uint64_t a1)
{
  v1 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a1 + 224) <= v1)
  {
    return 0;
  }

  v2 = *(*(a1 + 240) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 400);
  v5 = 8 * v3;
  while (1)
  {
    result = *v4;
    if (*(*(*v4 + 16) + 304))
    {
      break;
    }

    v4 += 8;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

re::ecs2::ImageBasedLightComponentStateImpl *re::ecs2::ImageBasedLightComponentStateImpl::ImageBasedLightComponentStateImpl(re::ecs2::ImageBasedLightComponentStateImpl *this, re::ecs2::ImageBasedLightSystem *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF60C8;
  *(this + 1) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 1) = 0u;
  *(this + 76) = 0x7FFFFFFFLL;
  *(this + 28) = 0;
  *(this + 6) = 0u;
  *(this + 11) = 0;
  v3 = (this + 88);
  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 140) = 0x1FFFFFFFFLL;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 280) = 0;
  *(this + 152) = 0u;
  *(this + 264) = 0u;
  *(this + 364) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 18) = 0u;
  *(this + 24) = xmmword_1E3047670;
  *(this + 25) = xmmword_1E3047680;
  *(this + 26) = xmmword_1E30476A0;
  *(this + 108) = 0;
  *(this + 28) = xmmword_1E3092750;
  *(this + 116) = 0;
  *(this + 234) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 63) = 0;
  *(this + 32) = xmmword_1E3047670;
  *(this + 33) = xmmword_1E3047680;
  *(this + 34) = xmmword_1E30476A0;
  *(this + 280) = 256;
  *(this + 576) = 0;
  *(this + 154) = 0;
  *(this + 76) = 0;
  *(this + 37) = 0u;
  *(this + 39) = xmmword_1E3047670;
  *(this + 40) = xmmword_1E3047680;
  *(this + 41) = xmmword_1E30476A0;
  *(this + 168) = 0;
  *(this + 43) = xmmword_1E3092750;
  *(this + 176) = 0;
  *(this + 354) = 0;
  *(this + 93) = 0;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 47) = xmmword_1E3047670;
  *(this + 48) = xmmword_1E3047680;
  *(this + 49) = xmmword_1E30476A0;
  *(this + 400) = 256;
  *(this + 816) = 0;
  v6[0] = v7;
  v6[1] = 1;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 16), v6);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 11, 0);
  ++*(this + 28);
  *(this + 33) = 4;
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::allocBlock(this + 11);
  return this;
}

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::didReparentEntityHandler(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v6 = *(v5 + 24);
  v7 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v7 && *(v7 + 384))
  {
    v8 = *(a1 + 8);
    v12 = v6;
    v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v8 + 352), &v12);
    if (v9 == -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v8 + 296, *(*(v8 + 360) + 16 * v9 + 8));
    }

    re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(v10, a2);
    *(a1 + 280) = 1;
  }

  return 0;
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::destroy(uint64_t result, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = WORD1(a2);
  v3 = *(result + 16);
  if (WORD1(a2) < v3)
  {
    v4 = a2;
    v5 = result;
    v6 = (v3 - 1) == WORD1(a2) ? *(result + 48) : *(result + 44);
    if (a2 < v6)
    {
      v7 = a2;
      v8 = (*(result + 32) + 16 * WORD1(a2));
      v9 = *(v8[1] + 4 * a2);
      if (v9 && v9 == (HIDWORD(a2) & 0xFFFFFF))
      {
        v11 = *v8;
        if (v11)
        {
          v12 = (v11 + (a2 << 7));
          re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((v12 + 16));
          re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::deinit(v12);
          result = re::DynamicArray<unsigned long>::deinit(v12);
          v13 = *(v5 + 16);
          if (v13 <= v2)
          {
            v18 = 0;
            memset(v27, 0, sizeof(v27));
            v14 = MEMORY[0x1E69E9C10];
            v15 = v13;
            v19 = 136315906;
            v20 = "operator[]";
            v21 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v22 = 789;
            v23 = 2048;
            v24 = v2;
            v25 = 2048;
            v26 = v15;
            _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
            _os_crash_msg();
            __break(1u);
          }

          *(*(*(v5 + 32) + 16 * v2 + 8) + 4 * v7) = 0;
          *v12 = *(v5 + 52);
          *(v5 + 52) = v4;
          --*(v5 + 40);
        }
      }
    }
  }

  return result;
}

double re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = (*(a1 + 8) + 72 * v3);
    v10 = 0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30));
    *(a1 + 40) ^= ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27)));
    v11 = v9 + 1;
    v12 = v9[7];
    if (v12)
    {

      v11[6] = 0;
    }

    re::DynamicArray<re::IBL>::deinit((v11 + 1));
    v13.i64[0] = -1;
    v13.i64[1] = *&v7 != 0;
    v4 = vaddq_s64(*(a1 + 24), v13);
    *(a1 + 24) = v4;
    v14 = *(a1 + 16);
    if (v14 >= 0x11 && v4.i64[0] < v14 >> 2)
    {

      *v4.i64 = re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 0);
    }
  }

  return *v4.i64;
}

re::ecs2::Component *re::ecs2::ImageBasedLightComponentStateImpl::didDependentComponentChange(uint64_t a1, re::ecs2::Component *a2, uint64_t a3)
{
  result = re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(a2, a3);
  *(a1 + 280) = 1;
  return result;
}

re::ecs2::Component *re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(re::ecs2::Component *result, uint64_t a2)
{
  if (*(a2 + 304))
  {
    v3 = result;
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v4 = result;
      v5 = 24;
      v6 = 0xFFFFFFFFLL;
      do
      {
        v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(v3 + 16), *(v3 + v5), v4);
        if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
        {
          v10 = v7;
          v6 = v8;
          goto LABEL_11;
        }

        v5 += 8;
      }

      while (v5 != 56);
      v10 = -1;
LABEL_11:
      result = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(v3, v10, v6);
    }

    v11 = *(a2 + 344);
    if (v11)
    {
      v12 = *(a2 + 360);
      v13 = 8 * v11;
      do
      {
        v14 = *v12++;
        result = re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(v3, v14);
        v13 -= 8;
      }

      while (v13);
    }
  }

  return result;
}

double re::ecs2::ImageBasedLightComponentStateImpl::clearDataForEntity(int64x2_t *this, const re::ecs2::Entity *a2)
{
  v3 = this;
  v69 = *MEMORY[0x1E69E9840];
  v4 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find(&this[13].i64[1], a2);
  if (v4 == -1)
  {
    return *v5.i64;
  }

  v6 = 0xBF58476D1CE4E5B9;
  v7 = v3[14].i64[0] + 32 * v4;
  v9 = *(v7 + 8);
  v8 = (v7 + 8);
  v10 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::get(&v3[5].i64[1], v9);
  v11 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::get(*(v10 + 16), *(v10 + 32), v8[1]);
  v12 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v13 = 0x1E304F000;
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = *(v11 + 88);
  v15 = *(v11 + 72);
  if (v15)
  {
    v16 = 8 * v15;
    v17 = *(v11 + 88);
    while (*v17 != v12)
    {
      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v17 = *(v11 + 88);
  }

  if (v17 == (v14 + 8 * v15))
  {
    goto LABEL_17;
  }

  v18 = v17 - v14;
  v13 = (v17 - v14) >> 3;
  v6 = *(v11 + 16);
  if (v6 <= v13)
  {
    v60 = 0;
    v68 = 0u;
    memset(v67, 0, sizeof(v67));
    *buf = 0u;
    v66 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    *v61 = 136315906;
    *&v61[4] = "removeAt";
    *&v61[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v61[14] = 931;
    *&v61[18] = 2048;
    *&v61[20] = v13;
    v62 = 2048;
    *v63 = v6;
    _os_log_send_and_compose_impl(v55, &v60, buf, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v59);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v60 = 0;
    v68 = 0u;
    memset(v67, 0, sizeof(v67));
    *buf = 0u;
    v66 = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "removeAt";
    *&v61[12] = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    *&v61[14] = 931;
    *&v61[18] = 2048;
    *&v61[20] = v13;
    v62 = 2048;
    *v63 = v6;
    _os_log_send_and_compose_impl(v57, &v60, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_51;
  }

  if (v6 - 1 > v13)
  {
    v19 = *(v11 + 32);
    v20 = v19 + 224 * v6;
    v21 = v19 + 224 * v13;
    NS::SharedPtr<MTL::Texture>::operator=(v21, (v20 - 224));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 8), (v20 - 216));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 16), (v20 - 208));
    v22 = *(v20 - 184);
    *(v21 + 24) = *(v20 - 200);
    *(v21 + 40) = v22;
    v23 = *(v20 - 152);
    v24 = *(v20 - 136);
    v25 = *(v20 - 122);
    *(v21 + 56) = *(v20 - 168);
    *(v21 + 102) = v25;
    *(v21 + 88) = v24;
    *(v21 + 72) = v23;
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 120), (v20 - 104));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 128), (v20 - 96));
    *(v21 + 136) = *(v20 - 88);
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 144), (v20 - 80));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 152), (v20 - 72));
    v26 = *(v20 - 64);
    v27 = *(v20 - 48);
    v28 = *(v20 - 32);
    *(v21 + 208) = *(v20 - 16);
    *(v21 + 176) = v27;
    *(v21 + 192) = v28;
    *(v21 + 160) = v26;
    v6 = *(v11 + 16);
  }

  re::IBL::~IBL((*(v11 + 32) + 224 * v6 - 224));
  --*(v11 + 16);
  ++*(v11 + 24);
  v6 = *(v11 + 72);
  if (v6 <= v13)
  {
    goto LABEL_47;
  }

  v29 = v6 - 1;
  if (v6 - 1 > v13)
  {
    *&v18[*(v11 + 88)] = *(*(v11 + 88) + 8 * v6 - 8);
    *(v11 + 72) = v29;
    ++*(v11 + 80);
    v6 = 0xBF58476D1CE4E5B9;
    v13 = 0x1E304F000;
    goto LABEL_17;
  }

  *(v11 + 72) = v29;
  ++*(v11 + 80);
  v6 = 0xBF58476D1CE4E5B9;
  v13 = "omToByAnimationINS_7Vector2IfEEEE";
  if (!v29)
  {
    re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::destroy(v10, v8[1]);
    v38 = v8[2];
    v8 += 2;
    v39 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v10 + 64), v38);
    if (v39 == -1 || ((v40 = (*(v10 + 64) + (v39 & 0xFFFFFFFFFFFFFFF0)), v41.i64[0] = -1, v41.i64[1] = -1, (v42 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v40, v41), xmmword_1E304FAD0)))), 0x3830282018100800)) != 0) ? (v43 = -1) : (v43 = 0x80), (v40->i8[v39 & 0xF] = v43, v44 = *(v10 + 80), v45 = *(*(v10 + 72) + 16 * v39), v46 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27)), *(v10 + 104) ^= (v46 >> 31) ^ v46, v41.i64[1] = *&v42 != 0, v47 = vaddq_s64(*(v10 + 88), v41), *(v10 + 88) = v47, v44 < 0x11) || v47.i64[0] >= v44 >> 2))
    {
LABEL_31:
      re::AssetHandle::AssetHandle(buf, (v3->i64[1] + 1384));
      if (*&buf[8])
      {
        v48 = atomic_load((*&buf[8] + 896));
        re::AssetHandle::~AssetHandle(buf);
        if (v48 == 2)
        {
          memset(v61, 0, sizeof(v61));
          *&v63[2] = 0;
          *&v63[10] = 0;
          v64 = 0;
          DefaultIBLData = re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(v3);
          re::DynamicArray<re::IBL>::add(v61, DefaultIBLData);
          v51 = a2;
          do
          {
            v52 = v51;
            v51 = *(v51 + 4);
          }

          while (v51);
          *buf = *(v52 + 3);
          *&buf[8] = *v61;
          memset(v61, 0, 24);
          v66 = *&v61[8];
          ++*&v61[24];
          LODWORD(v67[0]) = 1;
          *(v67 + 8) = *&v63[2];
          *&v63[2] = 0u;
          DWORD2(v67[1]) = v64;
          re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addOrReplace(v3[18].i64, v8, buf);
          if (*&v67[1])
          {

            *&v67[1] = 0;
          }

          re::DynamicArray<re::IBL>::deinit(&buf[8]);
          if (*&v63[10])
          {

            *&v63[10] = 0;
          }

          re::DynamicArray<re::IBL>::deinit(v61);
          goto LABEL_17;
        }
      }

      else
      {
        re::AssetHandle::~AssetHandle(buf);
      }

      v53 = *re::graphicsLogObjects(v49);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "Failed to add default IBL data to the world upon IBLComponent removal because the default IBL asset hasn't been loaded yet.", buf, 2u);
      }

      goto LABEL_17;
    }

LABEL_51:
    re::HashBrown<unsigned long long,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(v10 + 64, 0);
    goto LABEL_31;
  }

LABEL_17:
  v30 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find(&v3[13].i64[1], a2);
  if (v30 != -1)
  {
    v31 = (v3[13].i64[1] + (v30 & 0xFFFFFFFFFFFFFFF0));
    v32.i64[0] = -1;
    v32.i64[1] = -1;
    v33 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v31, v32), xmmword_1E304FAD0)))), *(v13 + 2752));
    if (v33)
    {
      v34 = -1;
    }

    else
    {
      v34 = 0x80;
    }

    v31->i8[v30 & 0xF] = v34;
    v35 = v3[14].u64[1];
    v36 = *(v3[14].i64[0] + 32 * v30);
    v37 = 0x94D049BB133111EBLL * (((v36 ^ (v36 >> 30)) * v6) ^ (((v36 ^ (v36 >> 30)) * v6) >> 27));
    v3[16].i64[0] ^= (v37 >> 31) ^ v37;
    v32.i64[1] = *&v33 != 0;
    v5 = vaddq_s64(v3[15], v32);
    v3[15] = v5;
    if (v35 >= 0x11 && v5.i64[0] < v35 >> 2)
    {
      *v5.i64 = re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(&v3[13].i64[1], 0);
    }
  }

  return *v5.i64;
}

unint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + (a2 << 7);
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::get(unint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = HIWORD(a3);
  if (HIWORD(a3) >= a1)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16 * HIWORD(a3)) + 96 * a3;
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::destroy(uint64_t result, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = WORD1(a2);
  v3 = *(result + 16);
  if (WORD1(a2) < v3)
  {
    v4 = a2;
    v5 = result;
    v6 = (v3 - 1) == WORD1(a2) ? *(result + 48) : *(result + 44);
    if (a2 < v6)
    {
      v7 = a2;
      v8 = (*(result + 32) + 16 * WORD1(a2));
      v9 = *(v8[1] + 4 * a2);
      if (v9 && v9 == (HIDWORD(a2) & 0xFFFFFF))
      {
        v11 = *v8;
        if (v11)
        {
          v12 = v11 + 96 * a2;
          v13 = *(v12 + 56);
          if (v13)
          {
            if (*(v12 + 88))
            {
              (*(*v13 + 40))(v13);
            }

            *(v12 + 88) = 0;
            *(v12 + 64) = 0;
            *(v12 + 72) = 0;
            *(v12 + 56) = 0;
            ++*(v12 + 80);
          }

          v14 = *(v12 + 40);
          if (v14)
          {

            *(v12 + 40) = 0;
          }

          result = re::DynamicArray<re::IBL>::deinit(v12);
          v15 = *(v5 + 16);
          if (v15 <= v2)
          {
            v20 = 0;
            memset(v29, 0, sizeof(v29));
            v16 = MEMORY[0x1E69E9C10];
            v17 = v15;
            v21 = 136315906;
            v22 = "operator[]";
            v23 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v18 = 3;
            }

            else
            {
              v18 = 2;
            }

            v24 = 789;
            v25 = 2048;
            v26 = v2;
            v27 = 2048;
            v28 = v17;
            _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
            _os_crash_msg();
            __break(1u);
          }

          *(*(*(v5 + 32) + 16 * v2 + 8) + 4 * v7) = 0;
          *v12 = *(v5 + 52);
          *(v5 + 52) = v4;
          --*(v5 + 40);
        }
      }
    }
  }

  return result;
}

__n128 re::DynamicArray<re::IBL>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::IBL>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 224 * v4;
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  *(v5 + 16) = *(a2 + 16);
  v6 = *(a2 + 40);
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = v6;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 102);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 102) = v9;
  *(v5 + 88) = v8;
  *(v5 + 72) = v7;
  *(v5 + 120) = *(a2 + 120);
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 136) = *(a2 + 136);
  *(v5 + 144) = *(a2 + 144);
  *(v5 + 152) = *(a2 + 152);
  v11 = *(a2 + 176);
  result = *(a2 + 192);
  v12 = *(a2 + 160);
  *(v5 + 208) = *(a2 + 208);
  *(v5 + 176) = v11;
  *(v5 + 192) = result;
  *(v5 + 160) = v12;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(re::ecs2::ImageBasedLightComponentStateImpl *this)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 576))
  {
    return this + 352;
  }

  re::AssetHandle::AssetHandle(&v16, (*(this + 1) + 1384));
  v4 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>(&v16);
  re::AssetHandle::~AssetHandle(&v16);
  v15 = *(*(*(*(this + 1) + 232) + 56) + 88);
  v5 = re::AssetHandle::loadedAsset<re::TextureAsset>((v4 + 24));
  v6 = re::AssetHandle::loadedAsset<re::TextureAsset>((v4 + 72));
  re::AssetHandle::AssetHandle(v14, (v4 + 48));
  if (v14[1])
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v14);
  }

  else
  {
    v7 = 0;
  }

  v16 = 0;
  v17 = 0;
  *v19 = 0;
  v18 = 0;
  *&v19[8] = xmmword_1E3047670;
  *&v19[24] = xmmword_1E3047680;
  *&v19[40] = xmmword_1E30476A0;
  *&v19[56] = 0;
  *&v20[8] = xmmword_1E3092750;
  *&v20[24] = 0;
  *&v20[28] = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = xmmword_1E3047670;
  v25 = xmmword_1E3047680;
  v26 = xmmword_1E30476A0;
  v27 = 256;
  if (*(v5 + 120))
  {
    goto LABEL_19;
  }

  v1 = (v5 + 112);
  if ([*(v5 + 112) textureType] == 5)
  {
    if (*(v5 + 120))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v1 = &v15;
  }

  v2 = &v16;
  NS::SharedPtr<MTL::Buffer>::operator=(&v17, v1);
  if (*(v6 + 120))
  {
    goto LABEL_19;
  }

  v8 = (v6 + 112);
  if ([*(v6 + 112) textureType] == 5)
  {
    if (*(v6 + 120))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = &v15;
  }

  v1 = &v16;
  NS::SharedPtr<MTL::Buffer>::operator=(&v16, v8);
  if (!v7)
  {
LABEL_20:
    v9 = &v16;
    goto LABEL_22;
  }

  if (*(v7 + 120))
  {
    goto LABEL_19;
  }

  v9 = (v7 + 112);
  if ([*(v7 + 112) textureType] != 5)
  {
    v9 = &v15;
    goto LABEL_22;
  }

  if (*(v7 + 120))
  {
LABEL_19:
    std::__throw_bad_variant_access[abi:nn200100]();
    goto LABEL_20;
  }

LABEL_22:
  NS::SharedPtr<MTL::Buffer>::operator=(v1 + 2, v9);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 44, &v16);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 45, (v2 | 8));
  NS::SharedPtr<MTL::Buffer>::operator=(this + 46, v1 + 2);
  v10 = *&v19[48];
  *(this + 408) = *&v19[32];
  *(this + 424) = v10;
  *(this + 440) = *v20;
  *(this + 454) = *&v20[14];
  v11 = *&v19[16];
  *(this + 376) = *v19;
  *(this + 392) = v11;
  NS::SharedPtr<MTL::Buffer>::operator=(this + 59, &v21);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 60, v1 + 16);
  *(this + 61) = v22;
  NS::SharedPtr<MTL::Buffer>::operator=(this + 62, v1 + 18);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 63, v1 + 19);
  v12 = v25;
  *(this + 32) = v24;
  *(this + 33) = v12;
  *(this + 34) = v26;
  *(this + 280) = v27;
  *(this + 576) = 1;
  if (v23)
  {

    v23 = 0;
  }

  if (*(&v22 + 1))
  {

    *(&v22 + 1) = 0;
  }

  if (*(&v21 + 1))
  {

    *(&v21 + 1) = 0;
  }

  if (v21)
  {

    *&v21 = 0;
  }

  if (v18)
  {

    v18 = 0;
  }

  if (v17)
  {

    v17 = 0;
  }

  if (v16)
  {
  }

  re::AssetHandle::~AssetHandle(v14);
  if (v15)
  {
  }

  return this + 352;
}

void **re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addOrReplace(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, *a2);
  if (v6 == -1)
  {

    return re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v8 = a1[1] + 72 * v6;
    *(v8 + 8) = *a3;
    v9 = v8 + 8;
    if (v9 != a3)
    {
      v10 = *(v9 + 8);
      v11 = *(a3 + 8);
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 && v10 != v11)
      {
        re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }

      v14 = *(v9 + 16);
      v15 = *(a3 + 16);
      *(v9 + 8) = v11;
      *(v9 + 16) = v15;
      *(a3 + 8) = v10;
      *(a3 + 16) = v14;
      v16 = *(v9 + 24);
      *(v9 + 24) = *(a3 + 24);
      *(a3 + 24) = v16;
      v17 = *(v9 + 40);
      *(v9 + 40) = *(a3 + 40);
      *(a3 + 40) = v17;
      ++*(a3 + 32);
      ++*(v9 + 32);
    }

    result = NS::SharedPtr<MTL::Texture>::operator=((v9 + 48), (a3 + 48));
    *(v9 + 56) = *(a3 + 56);
  }

  return result;
}

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLDataForWorld(re::ecs2::ImageBasedLightComponentStateImpl *this, uint64_t a2)
{
  v4 = (*(**(*(this + 1) + 256) + 24))(*(*(this + 1) + 256));
  v5 = (*(*v4 + 24))(v4, a2);
  v6 = (*(*v4 + 32))(v4, a2);
  if (v5 != 1 || v6 == 0)
  {

    return re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(this);
  }

  else
  {
    if ((*(this + 816) & 1) == 0)
    {
      DefaultIBLData = re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(this);
      NS::SharedPtr<MTL::Buffer>::operator=(this + 74, DefaultIBLData);
      NS::SharedPtr<MTL::Buffer>::operator=(this + 75, (DefaultIBLData + 8));
      NS::SharedPtr<MTL::Buffer>::operator=(this + 76, (DefaultIBLData + 16));
      v10 = *(DefaultIBLData + 40);
      *(this + 616) = *(DefaultIBLData + 24);
      *(this + 632) = v10;
      v11 = *(DefaultIBLData + 72);
      v12 = *(DefaultIBLData + 88);
      v13 = *(DefaultIBLData + 56);
      *(this + 694) = *(DefaultIBLData + 102);
      *(this + 664) = v11;
      *(this + 680) = v12;
      *(this + 648) = v13;
      NS::SharedPtr<MTL::Buffer>::operator=(this + 89, (DefaultIBLData + 120));
      NS::SharedPtr<MTL::Buffer>::operator=(this + 90, (DefaultIBLData + 128));
      *(this + 91) = *(DefaultIBLData + 136);
      NS::SharedPtr<MTL::Buffer>::operator=(this + 92, (DefaultIBLData + 144));
      NS::SharedPtr<MTL::Buffer>::operator=(this + 93, (DefaultIBLData + 152));
      v15 = *(DefaultIBLData + 176);
      v14 = *(DefaultIBLData + 192);
      v16 = *(DefaultIBLData + 160);
      *(this + 400) = *(DefaultIBLData + 208);
      *(this + 48) = v15;
      *(this + 49) = v14;
      *(this + 47) = v16;
      *(this + 154) = 1077936128;
      *(this + 816) = 1;
    }

    return this + 592;
  }
}

BOOL re::ecs2::ImageBasedLightComponentStateImpl::processDirtyComponents(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v21, a5, 0);
  v9 = v21;
  v10 = v22;
  v11 = v22;
  v21 = a4;
  v22 = v9;
  v23 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = *(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v21) + 16);
      re::ecs2::ImageBasedLightComponentStateImpl::clearDataForEntity(a1, v13);
      v14 = *(v13 + 76);
      v15 = v21;
      v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v22);
      if (v14)
      {
        v17 = 40;
      }

      else
      {
        v17 = 32;
      }

      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v15, v16, *(a3 + v17));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v22);
    }

    while (v22 != a5 || v23 != 0xFFFF || HIWORD(v23) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::processPreparingComponents(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v265 = *MEMORY[0x1E69E9840];
  v7 = a3[1];
  v8 = *(a1[1] + 232);
  v9 = *(v8 + 160);
  v10 = *(v8 + 96);
  v238 = -1.0;
  if (v10)
  {
    v240 = 0x7FB5C51BA04C45D6;
    v241 = "imageBasedLight:systemIBLIntensity";
    v11 = re::DebugSettingsManager::getWithErrorCode<float>(v10, &v240, &v238);
    if (v240)
    {
      if (v240)
      {
      }
    }
  }

  if (v9)
  {
    v213 = *v9;
  }

  else
  {
    v213 = 0;
  }

  v12 = *(a1[1] + 232);
  v13 = *(v12 + 112);
  if (v13)
  {
    re::RenderFrameBox::get((v13 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v12 = *(a1[1] + 232);
  }

  v237 = *(*(v12 + 56) + 88);
  v212 = (a1[20] + 16 * re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(a1 + 19, v7) + 8);
  v222 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::get((a1 + 11), *v212);
  v214 = (*(**(a1[1] + 256) + 24))(*(a1[1] + 256));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v240, a5, 0);
  v234 = a4;
  v235 = v240;
  v236 = v241;
  if (v240 != a5 || v241 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v232 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v234);
      v233 = *(v232 + 2);
      (*(*v214 + 8))(&v240);
      v18 = v232;
      if (v240)
      {
        v19 = v241;
      }

      else
      {
        v19 = 0;
      }

      v231 = v19;
      v240 = 0;
      v241 = 0;
      *v243 = 0;
      v242 = 0;
      *&v243[8] = xmmword_1E3047670;
      *&v243[24] = xmmword_1E3047680;
      *&v243[40] = xmmword_1E30476A0;
      *&v244[8] = xmmword_1E3092750;
      *&v243[56] = 0;
      *&v244[24] = 0;
      *&v244[28] = 0;
      v247 = 0;
      v246 = 0u;
      v245 = 0u;
      v248 = xmmword_1E3047670;
      v249 = xmmword_1E3047680;
      v250 = xmmword_1E30476A0;
      v251 = 256;
      if (*(v232 + 136) != 1)
      {
        goto LABEL_29;
      }

      v20 = *(v232 + 15);
      if (!v20)
      {
        break;
      }

      v21 = atomic_load((v20 + 896));
      if (v21 == 2)
      {
        v223 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v232 + 112));
        v22 = re::AssetHandle::loadedAsset<re::TextureAsset>((v223 + 24));
        if (*(v22 + 120))
        {
          goto LABEL_263;
        }

        v227 = v22;
        v23 = (v22 + 112);
        v24 = [*(v22 + 112) textureType];
        if (v24 == 5)
        {
          if (*(v227 + 30))
          {
            goto LABEL_263;
          }

          NS::SharedPtr<MTL::Buffer>::operator=(&v245 + 1, v23);
        }

        else
        {
          v73 = *re::ecsComponentsLogObjects(v24);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = re::AssetHandle::assetInfo((v232 + 112));
            if (v74[17])
            {
              v75 = v74[18];
            }

            else
            {
              v75 = v74 + 137;
            }

            *buf = 136315138;
            *&buf[4] = v75;
            _os_log_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_DEFAULT, "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.", buf, 0xCu);
          }
        }

        v76 = re::AssetHandle::loadedAsset<re::TextureAsset>((v223 + 72));
        if (*(v76 + 120))
        {
          goto LABEL_263;
        }

        v225 = v76;
        v77 = (v76 + 112);
        v78 = [*(v76 + 112) textureType];
        if (v78 == 5)
        {
          if (*(v225 + 30))
          {
            goto LABEL_263;
          }

          NS::SharedPtr<MTL::Buffer>::operator=(&v245, v77);
        }

        else
        {
          v80 = *re::ecsComponentsLogObjects(v78);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v81 = re::AssetHandle::assetInfo((v232 + 112));
            if (v81[17])
            {
              v82 = v81[18];
            }

            else
            {
              v82 = v81 + 137;
            }

            *buf = 136315138;
            *&buf[4] = v82;
            _os_log_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_DEFAULT, "Wrong specular IBL texture type [%s]. Specular IBL texture must be cubemap.", buf, 0xCu);
          }
        }

        re::ecs2::ImageBasedLightingHelper::checkIBLAssetVersion(v232, v227, v225, v79);
        v83 = re::AssetHandle::assetInfo((v232 + 112));
        if (*(v83 + 13))
        {
          v84 = *(v83 + 14);
        }

        else
        {
          v84 = v83 + 105;
        }

        v228 = re::Hash<re::DynamicString>::operator()(buf, v84);
        v18 = v232;
        v224 = 1;
      }

      else
      {
        re::AssetHandle::loadAsync((v232 + 112));
        NS::SharedPtr<MTL::Buffer>::operator=(&v245 + 1, &v237);
        NS::SharedPtr<MTL::Buffer>::operator=(&v245, &v237);
        NS::SharedPtr<MTL::Buffer>::operator=(&v246 + 1, &v237);
        NS::SharedPtr<MTL::Buffer>::operator=(&v247, &v237);
        v18 = v232;
        v228 = 0;
        v224 = 0;
      }

LABEL_30:
      if (*(v18 + 12))
      {
        v25 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v18 + 88));
        if (!v25)
        {
          re::AssetHandle::loadAsync((v232 + 88));
          NS::SharedPtr<MTL::Buffer>::operator=(&v241, &v237);
          NS::SharedPtr<MTL::Buffer>::operator=(&v240, &v237);
          v32 = v232;
          v224 = 0;
          goto LABEL_133;
        }

        v215 = v25;
        v26 = re::AssetHandle::loadedAsset<re::TextureAsset>((v25 + 24));
        v210 = v26;
        if (v26)
        {
          if (*(v26 + 120))
          {
            goto LABEL_263;
          }

          v28 = (v26 + 112);
          v27 = *(v26 + 112);
          if (v27)
          {
            v27 = [v27 textureType];
            if (v27 == 5)
            {
              if (*(v210 + 30))
              {
                goto LABEL_263;
              }

              NS::SharedPtr<MTL::Buffer>::operator=(&v241, v28);
LABEL_58:
              v42 = re::AssetHandle::AssetHandle(buf, (v215 + 48));
              if (*&buf[8])
              {
                v43 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v42);
                if (v43)
                {
                  v44 = v43;
                  if (*(v43 + 120))
                  {
                    goto LABEL_263;
                  }

                  v45 = *(v43 + 112);
                  if (v45 && (v45 = [(re *)v45 textureType], v46 = (v44 + 112), v45 == 5))
                  {
                    if (*(v44 + 120))
                    {
                      goto LABEL_263;
                    }

LABEL_66:
                    NS::SharedPtr<MTL::Buffer>::operator=(&v242, v46);
                  }

                  else
                  {
                    v61 = *re::ecsComponentsLogObjects(v45);
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                    {
                      v62 = re::AssetHandle::assetInfo((v232 + 88));
                      if (v62[17])
                      {
                        v63 = v62[18];
                      }

                      else
                      {
                        v63 = v62 + 137;
                      }

                      *v252 = 136315138;
                      v253 = v63;
                      _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.", v252, 0xCu);
                    }
                  }

                  v47 = re::AssetHandle::loadedAsset<re::TextureAsset>((v215 + 72));
                  if (v47)
                  {
                    if (*(v47 + 120))
                    {
                      goto LABEL_263;
                    }

                    v217 = v47;
                    v49 = (v47 + 112);
                    v48 = *(v47 + 112);
                    if (v48 && (v48 = [(re *)v48 textureType], v48 == 5))
                    {
                      if (*(v217 + 30))
                      {
                        goto LABEL_263;
                      }

                      NS::SharedPtr<MTL::Buffer>::operator=(&v240, v49);
                    }

                    else
                    {
                      v51 = *re::ecsComponentsLogObjects(v48);
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                      {
                        v52 = re::AssetHandle::assetInfo((v232 + 88));
                        if (v52[17])
                        {
                          v53 = v52[18];
                        }

                        else
                        {
                          v53 = v52 + 137;
                        }

                        *v252 = 136315138;
                        v253 = v53;
                        _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "Wrong specular IBL texture type [%s]. Specular IBL texture must be cubemap.", v252, 0xCu);
                      }
                    }

                    if (v210)
                    {
                      re::ecs2::ImageBasedLightingHelper::checkIBLAssetVersion(v232, v210, v217, v50);
                      v54 = re::AssetHandle::assetInfo((v232 + 88));
                      if (*(v54 + 13))
                      {
                        v55 = *(v54 + 14);
                      }

                      else
                      {
                        v55 = v54 + 105;
                      }

                      v228 = (v228 + re::Hash<re::DynamicString>::operator()(v252, v55));
                    }
                  }

                  else
                  {
                    v56 = NS::SharedPtr<MTL::Buffer>::operator=(&v240, &v237);
                    v57 = *re::ecsComponentsLogObjects(v56);
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                    {
                      v58 = re::AssetHandle::assetInfo((v232 + 88));
                      if (v58[17])
                      {
                        v59 = v58[18];
                      }

                      else
                      {
                        v59 = v58 + 137;
                      }

                      *v252 = 136315138;
                      v253 = v59;
                      _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "Null specular texture encountered for IBL texture type [%s].", v252, 0xCu);
                    }
                  }

                  re::AssetHandle::~AssetHandle(buf);
LABEL_112:
                  v32 = v232;
                  goto LABEL_133;
                }
              }

              v46 = &v241;
              goto LABEL_66;
            }
          }

          v33 = *re::ecsComponentsLogObjects(v27);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v34 = re::AssetHandle::assetInfo((v232 + 88));
          if (v34[17])
          {
            v35 = v34[18];
          }

          else
          {
            v35 = v34 + 137;
          }

          *buf = 136315138;
          *&buf[4] = v35;
          v36 = v33;
          v37 = "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.";
        }

        else
        {
          v38 = NS::SharedPtr<MTL::Buffer>::operator=(&v241, &v237);
          v39 = *re::ecsComponentsLogObjects(v38);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v40 = re::AssetHandle::assetInfo((v232 + 88));
          if (v40[17])
          {
            v41 = v40[18];
          }

          else
          {
            v41 = v40 + 137;
          }

          *buf = 136315138;
          *&buf[4] = v41;
          v36 = v39;
          v37 = "Null diffuse texture encountered for IBL texture type [%s].";
        }

        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
        goto LABEL_58;
      }

      if (*(v18 + 6) || *(v18 + 9))
      {
        v29 = re::AssetHandle::loadedAsset<re::TextureAsset>((v18 + 40));
        if (v29)
        {
          v30 = v29;
          if (*(v29 + 120))
          {
            goto LABEL_263;
          }

          v216 = (v29 + 112);
          v31 = [*(v29 + 112) textureType];
          if (v31 == 5)
          {
            if (*(v30 + 120))
            {
              goto LABEL_263;
            }

            NS::SharedPtr<MTL::Buffer>::operator=(&v241, v216);
          }

          else
          {
            v64 = *re::ecsComponentsLogObjects(v31);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = re::AssetHandle::assetInfo((v232 + 40));
              if (v65[17])
              {
                v66 = v65[18];
              }

              else
              {
                v66 = v65 + 137;
              }

              *buf = 136315138;
              *&buf[4] = v66;
              _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.", buf, 0xCu);
            }
          }

          v60 = v232;
        }

        else
        {
          re::AssetHandle::loadAsync((v232 + 40));
          NS::SharedPtr<MTL::Buffer>::operator=(&v241, &v237);
          v60 = v232;
          v224 = 0;
        }

        v67 = re::AssetHandle::loadedAsset<re::TextureAsset>((v60 + 64));
        if (!v67)
        {
          re::AssetHandle::loadAsync((v232 + 64));
          NS::SharedPtr<MTL::Buffer>::operator=(&v240, &v237);
          v32 = v232;
          v224 = 0;
          goto LABEL_133;
        }

        v68 = v67;
        if (*(v67 + 120))
        {
          goto LABEL_263;
        }

        v218 = (v67 + 112);
        v69 = [*(v67 + 112) textureType];
        if (v69 == 5)
        {
          if (*(v68 + 120))
          {
            goto LABEL_263;
          }

          NS::SharedPtr<MTL::Buffer>::operator=(&v240, v218);
          goto LABEL_112;
        }

        v70 = *re::ecsComponentsLogObjects(v69);
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_112;
        }

        v71 = re::AssetHandle::assetInfo((v232 + 64));
        if (v71[17])
        {
          v72 = v71[18];
        }

        else
        {
          v72 = v71 + 137;
        }

        *buf = 136315138;
        *&buf[4] = v72;
        _os_log_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_DEFAULT, "Wrong specular IBL texture type [%s]. Specular IBL texture must be cubemap.", buf, 0xCu);
      }

      else
      {
        NS::SharedPtr<MTL::Buffer>::operator=(&v241, &v237);
        NS::SharedPtr<MTL::Buffer>::operator=(&v240, &v237);
      }

      v32 = v232;
LABEL_133:
      v85 = *(v32 + 158);
      v86 = *(v32 + 136);
      if (*(v32 + 1208) == 1)
      {
        v244[28] = 1;
        v244[29] = v86;
LABEL_135:
        v87 = 0xBF58476D1CE4E5B9;
        goto LABEL_140;
      }

      if (v86)
      {
        v244[28] = *(v32 + 1209);
        v244[29] = v86;
        if (v244[28] == 1)
        {
          goto LABEL_135;
        }

        v87 = 0;
      }

      else
      {
        v87 = 0;
        v244[28] = 0;
        v244[29] = v86;
      }

LABEL_140:
      v88 = *(v32 + 1209);
      if (v88 == 1)
      {
        v89 = *(v32 + 77);
        v248 = *(v32 + 76);
        v249 = v89;
        v90 = *(v32 + 78);
        v250 = v90;
      }

      else
      {
        v248 = xmmword_1E3047670;
        v249 = xmmword_1E3047680;
        HIDWORD(v90) = 0;
        v250 = xmmword_1E30476A0;
      }

      v91 = 0;
      v92 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) >> 27));
      v93 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v86) ^ ((0xBF58476D1CE4E5B9 * v86) >> 27));
      v94 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v88) ^ ((0xBF58476D1CE4E5B9 * v88) >> 27));
      v95 = v228 + (v92 ^ (v92 >> 31)) + (v93 ^ (v93 >> 31)) + ((0x94D049BB133111EBLL * (v87 ^ (v87 >> 27))) ^ ((0x94D049BB133111EBLL * (v87 ^ (v87 >> 27))) >> 31)) + (v94 ^ (v94 >> 31));
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          v97 = &v248;
          v98 = &v249;
          v99 = &v250;
          if (v91)
          {
            if (v91 == 2)
            {
              v97 = (&v248 + 8);
            }

            else
            {
              v97 = (&v248 + 4);
            }

            if (v91 == 2)
            {
              v98 = (&v249 + 8);
            }

            else
            {
              v98 = (&v249 + 4);
            }

            if (v91 == 2)
            {
              v99 = (&v250 + 8);
            }

            else
            {
              v99 = (&v250 + 4);
            }
          }

          LODWORD(v90) = *v97;
          DWORD1(v90) = *v98;
          DWORD2(v90) = *v99;
          *buf = v90;
          v100 = 0xBF58476D1CE4E5B9 * (*&buf[i] ^ (*&buf[i] >> 30));
          v95 += ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) ^ ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) >> 31)) * v91;
        }

        ++v91;
      }

      while (v91 != 3);
      v101 = *(v32 + 136);
      if (v101)
      {
        v102 = *(v32 + 35);
      }

      else
      {
        v102 = 0;
      }

      LODWORD(v246) = v102;
      if (v101 && *(v32 + 137) == 1)
      {
        v103 = *(v32 + 36);
      }

      else
      {
        v103 = 0;
      }

      v104 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v102 ^ (v102 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v102 ^ (v102 >> 30))) >> 27));
      v105 = (v104 ^ (v104 >> 31)) + v95;
      DWORD1(v246) = v103;
      v106 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v103 ^ (v103 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v103 ^ (v103 >> 30))) >> 27));
      *(v32 + 166) = v105 + (v106 ^ (v106 >> 31));
      if (v238 >= 0.0 && *(v32 + 148) == 1)
      {
        v107 = log2f(v238);
        v32 = v232;
      }

      else
      {
        v107 = *(v32 + 7);
      }

      v108 = *(v32 + 300);
      *v243 = v107;
      *&v243[56] = v108;
      v109 = *(v32 + 322);
      v110 = *(v32 + 1296);
      *buf = *(v32 + 160);
      buf[12] = v110;
      *&buf[8] = v109;
      v111 = v32;
      *&v112 = re::ColorGamut3F::as(buf, v213, 1);
      DWORD2(v112) = v113;
      *&v244[8] = v112;
      *&v244[24] = *(v111 + 301);
      HIBYTE(v251) = *(v111 + 148);
      v114 = v222;
      v115 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v222 + 64), v231);
      if (v115 != -1)
      {
        goto LABEL_182;
      }

      v117 = *(v222 + 56);
      v118 = (v117 + 1) >> 24 ? 1 : v117 + 1;
      *(v222 + 56) = v118;
      v119 = *(v222 + 52);
      v120 = *(v222 + 54);
      v121 = v222;
      if (v119 == 0xFFFF && v120 == 0xFFFF)
      {
        v122 = buf;
        if (*(v222 + 48) >= *(v222 + 44))
        {
          re::DataArray<re::TransformCache>::allocBlock(v222);
          v121 = v222;
        }

        v123 = *(v121 + 16);
        v124 = (v123 - 1);
        if (!v123)
        {
          goto LABEL_254;
        }

        v125 = *(v121 + 48);
        if (v125 >= 0x10000)
        {
          goto LABEL_262;
        }

        v229 = (v123 - 1);
        v126 = (*(v121 + 32) + 16 * v124);
        *(v121 + 48) = v125 + 1;
        *(v126[1] + 4 * v125) = *(v121 + 56);
        v219 = v125;
        v127 = *v126 + 96 * v125;
      }

      else
      {
        v128 = *(v222 + 16);
        v129 = buf;
        if (v128 <= v120)
        {
          goto LABEL_258;
        }

        v229 = *(v222 + 54);
        v130 = (*(v222 + 32) + 16 * v120);
        *(v130[1] + 4 * v119) = v118;
        v219 = v119;
        v127 = *v130 + 96 * v119;
        *(v222 + 52) = *v127;
      }

      ++*(v121 + 40);
      *(v127 + 64) = 0u;
      *(v127 + 80) = 0u;
      *(v127 + 32) = 0u;
      *(v127 + 48) = 0u;
      *v127 = 0u;
      *(v127 + 16) = 0u;
      v211 = *(v121 + 56);
      v114 = v121;
      v115 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v121 + 64), v231);
      if (v115 == -1)
      {
        v155 = v114;
        if (!v114[15])
        {
          v155 = v222;
        }

        v156 = v155[12];
        if (!v156 || (v157 = v155[10], v157 > 8 * v156))
        {
          re::HashBrown<unsigned long long,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(v222 + 64, 1u);
          v155 = v222;
          v157 = *(v222 + 80);
        }

        v158 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v231 ^ (v231 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v231 ^ (v231 >> 30))) >> 27));
        v159 = v158 ^ (v158 >> 31);
        v160 = v157 >> 4;
        v161 = v159 % (v157 >> 4);
        v162 = v155[8];
        v163 = v161;
        v132 = a1;
        while (1)
        {
          v164 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v162 + 16 * v163)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v164 < 0x40)
          {
            break;
          }

          if (v163 + 1 == v160)
          {
            v163 = 0;
          }

          else
          {
            ++v163;
          }

          if (v163 == v161)
          {
            re::internal::assertLog(4, v131, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            result = _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
            __break(1u);
            return result;
          }
        }

        v165 = v162 + 16 * v163;
        v166 = *(v165 + v164);
        *(v165 + v164) = v159 & 0x7F;
        v167 = v164 + 16 * v163;
        v168 = (v155[9] + 16 * v167);
        *v168 = v231;
        v168[1] = v219 + 0x10000 * v229 + ((v211 & 0xFFFFFF) << 32);
        if (v166 == 255)
        {
          v169 = -1;
        }

        else
        {
          v169 = 0;
        }

        v170.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v170.i64[1] = v169;
        *(v155 + 11) = vaddq_s64(*(v155 + 11), v170);
        v171 = (v155[9] + 16 * v167);
        v230 = (v171 + 1);
        v172 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v171 ^ (*v171 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v171 ^ (*v171 >> 30))) >> 27));
        v155[13] ^= (v172 >> 31) ^ v172;
        v114 = v155;
      }

      else
      {
LABEL_182:
        v230 = (v114[9] + 16 * v115 + 8);
        v132 = a1;
      }

      re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove((v132 + 36), v231);
      v133 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::get(v114[2], v114[4], *v230);
      v134 = v133;
      v135 = *(v133 + 11);
      v136 = *(v133 + 9);
      v137 = v135;
      v138 = v232;
      if (v136)
      {
        v139 = 8 * v136;
        v137 = *(v133 + 11);
        while (*v137 != v232)
        {
          ++v137;
          v139 -= 8;
          if (!v139)
          {
            goto LABEL_192;
          }
        }
      }

      if (v137 == &v135[v136])
      {
LABEL_192:
        v152 = *(v133 + 8);
        v151 = v230;
        if (v136 >= v152)
        {
          if (v152 < v136 + 1)
          {
            if (*(v133 + 7))
            {
              v153 = 2 * v152;
              if (!v152)
              {
                v153 = 8;
              }

              if (v153 <= v136 + 1)
              {
                v154 = v136 + 1;
              }

              else
              {
                v154 = v153;
              }

              re::DynamicArray<float *>::setCapacity(v133 + 7, v154);
            }

            else
            {
              v220 = (v136 + 1);
              re::DynamicArray<float *>::setCapacity(v134 + 7, v220);
              ++*(v134 + 20);
            }

            v138 = v232;
            v151 = v230;
          }

          v136 = *(v134 + 9);
          v135 = *(v134 + 11);
        }

        v135[v136] = v138;
        *(v134 + 9) = v136 + 1;
        ++*(v134 + 20);
        v173 = *(v134 + 2);
        if (v173 >= *(v134 + 1))
        {
          re::DynamicArray<re::IBL>::growCapacity(v134, v173 + 1);
          v151 = v230;
          v173 = *(v134 + 2);
        }

        v174 = *(v134 + 4) + 224 * v173;
        *v174 = v240;
        v240 = 0;
        *(v174 + 8) = v241;
        v241 = 0;
        *(v174 + 16) = v242;
        v242 = 0;
        v175 = *&v243[32];
        v176 = *&v243[48];
        v177 = *v244;
        *(v174 + 102) = *&v244[14];
        *(v174 + 88) = v177;
        *(v174 + 72) = v176;
        *(v174 + 56) = v175;
        v178 = *v243;
        *(v174 + 40) = *&v243[16];
        *(v174 + 24) = v178;
        *(v174 + 120) = v245;
        *&v245 = 0;
        *(v174 + 128) = *(&v245 + 1);
        *(&v245 + 1) = 0;
        *(v174 + 136) = v246;
        *(&v246 + 1) = 0;
        *(v174 + 152) = v247;
        v247 = 0;
        v179 = v248;
        v180 = v249;
        v181 = v250;
        *(v174 + 208) = v251;
        *(v174 + 176) = v180;
        *(v174 + 192) = v181;
        *(v174 + 160) = v179;
        ++*(v134 + 2);
        ++*(v134 + 6);
      }

      else
      {
        v140 = v137 - v135;
        v141 = v140 >> 3;
        if (v136 <= v140 >> 3)
        {
          v239 = 0;
          v263 = 0u;
          v264 = 0u;
          v261 = 0u;
          v262 = 0u;
          *buf = 0u;
          v186 = MEMORY[0x1E69E9C10];
          v187 = v136;
          v188 = v140 >> 3;
          v189 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v252 = 136315906;
          v253 = "operator[]";
          v254 = 1024;
          if (v189)
          {
            v190 = 3;
          }

          else
          {
            v190 = 2;
          }

          v255 = 789;
          v256 = 2048;
          v257 = v188;
          v258 = 2048;
          v259 = v187;
          _os_log_send_and_compose_impl(v190, &v239, buf, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v252, 38, v205, v206);
          _os_crash_msg();
          __break(1u);
LABEL_250:
          v239 = 0;
          v191 = v142;
          v263 = 0u;
          v264 = 0u;
          v261 = 0u;
          v262 = 0u;
          *buf = 0u;
          v122 = MEMORY[0x1E69E9C10];
          v192 = v141;
          v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v252 = 136315906;
          v253 = "operator[]";
          v254 = 1024;
          if (v193)
          {
            v194 = 3;
          }

          else
          {
            v194 = 2;
          }

          v255 = 789;
          v256 = 2048;
          v257 = v192;
          v258 = 2048;
          v259 = v191;
          _os_log_send_and_compose_impl(v194, &v239, buf, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v252, 38, v205, v206);
          _os_crash_msg();
          __break(1u);
LABEL_254:
          v239 = 0;
          *(v122 + 3) = 0u;
          *(v122 + 4) = 0u;
          *(v122 + 1) = 0u;
          *(v122 + 2) = 0u;
          *v122 = 0u;
          v195 = MEMORY[0x1E69E9C10];
          v196 = v124;
          v197 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v252 = 136315906;
          v253 = "operator[]";
          v254 = 1024;
          if (v197)
          {
            v198 = 3;
          }

          else
          {
            v198 = 2;
          }

          v255 = 789;
          v256 = 2048;
          v257 = v196;
          v258 = 2048;
          v259 = 0;
          _os_log_send_and_compose_impl(v198, &v239, buf, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v252, 38, v205, v206);
          _os_crash_msg();
          __break(1u);
LABEL_258:
          v239 = 0;
          *(v129 + 3) = 0u;
          *(v129 + 4) = 0u;
          *(v129 + 1) = 0u;
          *(v129 + 2) = 0u;
          *v129 = 0u;
          v199 = MEMORY[0x1E69E9C10];
          v200 = v120;
          v201 = v128;
          v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v252 = 136315906;
          v253 = "operator[]";
          v254 = 1024;
          if (v202)
          {
            v203 = 3;
          }

          else
          {
            v203 = 2;
          }

          v255 = 789;
          v256 = 2048;
          v257 = v200;
          v258 = 2048;
          v259 = v201;
          _os_log_send_and_compose_impl(v203, &v239, buf, 80, &dword_1E1C61000, v199, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v252, 38, v205, v206);
          _os_crash_msg();
          __break(1u);
LABEL_262:
          re::internal::assertLog(5, v116, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v125);
          _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v204);
          __break(1u);
LABEL_263:
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        *(v135 + v140) = v232;
        v142 = *(v133 + 2);
        if (v142 <= v141)
        {
          goto LABEL_250;
        }

        v143 = *(v133 + 4) + 224 * v141;
        NS::SharedPtr<MTL::Texture>::operator=(v143, &v240);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 8), &v241);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 16), &v242);
        v144 = *&v243[16];
        *(v143 + 24) = *v243;
        *(v143 + 40) = v144;
        v145 = *&v243[48];
        v146 = *v244;
        v147 = *&v244[14];
        *(v143 + 56) = *&v243[32];
        *(v143 + 102) = v147;
        *(v143 + 88) = v146;
        *(v143 + 72) = v145;
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 120), &v245);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 128), &v245 + 1);
        *(v143 + 136) = v246;
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 144), &v246 + 1);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 152), &v247);
        v149 = v249;
        v148 = v250;
        v150 = v248;
        *(v143 + 208) = v251;
        *(v143 + 176) = v149;
        *(v143 + 192) = v148;
        *(v143 + 160) = v150;
        v151 = v230;
      }

      *buf = *v212;
      *&buf[8] = *v151;
      *&v261 = v231;
      v182 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find(a1 + 27, v233);
      if (v182 == -1)
      {
        re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::internalAdd(a1 + 27, &v233, buf);
      }

      else
      {
        v183 = a1[28] + 32 * v182;
        *(v183 + 8) = *buf;
        *(v183 + 24) = v261;
      }

      if (v224)
      {
        v184 = v234;
        v185 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v235);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v184, v185, a3[6]);
      }

      if (v247)
      {

        v247 = 0;
      }

      if (*(&v246 + 1))
      {

        *(&v246 + 1) = 0;
      }

      if (*(&v245 + 1))
      {

        *(&v245 + 1) = 0;
      }

      if (v245)
      {

        *&v245 = 0;
      }

      if (v242)
      {

        v242 = 0;
      }

      if (v241)
      {

        v241 = 0;
      }

      if (v240)
      {
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v235);
      if (v235 == a5 && v236 == 0xFFFF && HIWORD(v236) == 0xFFFF)
      {
        goto LABEL_12;
      }
    }

    NS::SharedPtr<MTL::Buffer>::operator=(&v245 + 1, &v237);
    NS::SharedPtr<MTL::Buffer>::operator=(&v245, &v237);
    NS::SharedPtr<MTL::Buffer>::operator=(&v246 + 1, &v237);
    NS::SharedPtr<MTL::Buffer>::operator=(&v247, &v237);
    v18 = v232;
LABEL_29:
    v228 = 0;
    v224 = 1;
    goto LABEL_30;
  }

LABEL_12:
  v14 = a3[6];
  v15 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a3[2] + 8, v14);
  v16 = a5[10];
  if (v16 && !*(v15 + 40))
  {
    (*(*a1 + 40))(a1, a2, a3, v14, v15, a6);
    v16 = a5[10];
  }

  if (v237)
  {
  }

  return v16 != 0;
}
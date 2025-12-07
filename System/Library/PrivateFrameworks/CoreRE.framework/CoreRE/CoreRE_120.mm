_anonymous_namespace_ *re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::ecs2::PhysicsSimulationService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::ecs2::PhysicsSimulationService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v3, v7);
    if (v9)
    {
      v5 = *&v10[7];
    }

    else
    {
      v5 = v10;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    result = _os_crash("assertion failure: (service) %s", v6);
    __break(1u);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSimulationData::setFixedTimeStepOverride(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 96))
  {
    if ((*a2 & 1) == 0)
    {
      *(result + 96) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(result + 96) = 1;
  }

  *(result + 100) = *(a2 + 4);
LABEL_7:
  if (*a2 == 1)
  {
    v3 = *(a2 + 4);
  }

  else
  {
    v4 = re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(*result);
    result = (*(*v4 + 152))(v4);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    *(v5 + 68) = v3;
  }

  else
  {
    *(v2 + 256) = v3;
  }

  return result;
}

void re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(uint64_t a1, simd_float4x4 *a2)
{
  v3 = a2->columns[0];
  v4 = a2->columns[1];
  v5 = a2->columns[3];
  *(a1 + 144) = a2->columns[2];
  *(a1 + 160) = v5;
  *(a1 + 112) = v3;
  *(a1 + 128) = v4;
  *(a1 + 176) = __invert_f4(*a2);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(**(v6 + 56) + 120);

    v7();
  }
}

double re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v8;
  do
  {
    v14[v3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v13[v3])), v5, *&v13[v3], 1), v6, v13[v3], 2), v7, v13[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  result = *v14;
  v10 = v14[1];
  v11 = v14[2];
  v12 = v14[3];
  *a3 = v14[0];
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  return result;
}

uint64_t re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a3 + 32);
  if (v8)
  {
    if ((*(v8 + 304) & 0x80) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a3 + 32);
    }
  }

  else
  {
    v9 = 0;
  }

  re::TransformService::worldMatrix(v7, v9, 0, v26);
  v34.columns[2] = v26[2];
  v34.columns[3] = v26[3];
  v34.columns[0] = v26[0];
  v34.columns[1] = v26[1];
  v35 = __invert_f4(v34);
  v10 = 0;
  v11 = *(a1 + 128);
  v12 = *(a1 + 144);
  v13 = *(a1 + 160);
  v27 = *(a1 + 112);
  v28 = v11;
  v29 = v12;
  v30 = v13;
  do
  {
    v31[v10 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(&v27 + v10))), v35.columns[1], *&v27.i8[v10], 1), v35.columns[2], *(&v27 + v10), 2), v35.columns[3], *(&v27 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v14 = 0;
  v15 = v31[0];
  v16 = v31[1];
  v17 = v31[2];
  v18 = v31[3];
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  v27 = *a2;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  do
  {
    v31[v14 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(&v27 + v14))), v16, *&v27.i8[v14], 1), v17, *(&v27 + v14), 2), v18, *(&v27 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v27 = 0u;
  v32 = 0u;
  v33 = xmmword_1E30474D0;
  result = re::decomposeScaleRotationTranslation<float>(v31, &v27, &v33, &v32);
  v23 = v27.i64[1];
  v24 = v33;
  v25 = v32;
  *a4 = v27.i64[0];
  *(a4 + 8) = v23;
  *(a4 + 16) = v24;
  *(a4 + 32) = v25;
  return result;
}

uint64_t re::introspect<re::ecs2::PhysicsSimulationService>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info = re::ecs2::introspect_PhysicsSimulationService(a1, v4, v5, v6, v7, v8);
      v1 = &unk_1EE187000;
    }
  }

  return v1[74];
}

void *re::ecs2::allocInfo_LightGroupComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_260))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8A38, "LightGroupComponent");
    __cxa_guard_release(&_MergedGlobals_260);
  }

  return &unk_1EE1A8A38;
}

void re::ecs2::initInfo_LightGroupComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xE3D9149F7DF89FA8;
  v16[1] = "LightGroupComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A8A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8A30))
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
    qword_1EE1A8A28 = v14;
    __cxa_guard_release(&qword_1EE1A8A30);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A8A28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LightGroupComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LightGroupComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LightGroupComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LightGroupComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219LightGroupComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::LightGroupComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDCBB0;
}

void re::internal::defaultConstructV2<re::ecs2::LightGroupComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDCBB0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219LightGroupComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_ChannelAudioComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_261, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_261))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8AE8, "ChannelAudioComponent");
    __cxa_guard_release(&_MergedGlobals_261);
  }

  return &unk_1EE1A8AE8;
}

void re::ecs2::initInfo_ChannelAudioComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xD5EC3C99B0BB5314;
  v20[1] = "ChannelAudioComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A8AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8AD0))
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
    qword_1EE1A8AD8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "gain";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A8AE0 = v18;
    __cxa_guard_release(&qword_1EE1A8AD0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A8AD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ChannelAudioComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ChannelAudioComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ChannelAudioComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ChannelAudioComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221ChannelAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::ChannelAudioComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD9660;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ChannelAudioComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD9660;
  *(v1 + 28) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221ChannelAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

re::VideoBufferInfo *re::VideoBufferInfo::VideoBufferInfo(re::VideoBufferInfo *this, CVPixelBufferRef pixelBuffer)
{
  *this = CVPixelBufferGetWidth(pixelBuffer);
  *(this + 1) = CVPixelBufferGetHeight(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  re::PeerVideoStreamingUtils::mtlPixelFormatFromCVPixelFormat(PixelFormatType, v5);
  *(this + 4) = 80;
  return this;
}

uint64_t re::PeerVideoStreamingUtils::mtlPixelFormatFromCVPixelFormat(re::PeerVideoStreamingUtils *this, uint64_t a2)
{
  if (this == 1111970369)
  {
    return 80;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unsupported CV pixel format %lu", "false", "mtlPixelFormatFromCVPixelFormat", 432, this);
  result = _os_crash("assertion failure: (false) Unsupported CV pixel format %lu", v3);
  __break(1u);
  return result;
}

uint64_t *re::VideoBufferInfo::debugStr@<X0>(re::VideoBufferInfo *this@<X0>, re::DynamicString *a2@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v5 = *(this + 4);
  if (v5)
  {
    v6 = re::PeerVideoStreamingUtils::cvPixelFormatFromMTLPixelFormat(v5, v4);
    strcpy(__s, "ARGB");
    re::DynamicString::operator=(&v12, &v10);
    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }
  }

  else
  {
    v10 = "Invalid";
    v11 = 7;
    re::DynamicString::operator=(&v12, &v10);
  }

  if (v13)
  {
    v8 = v14;
  }

  else
  {
    v8 = &v13 + 1;
  }

  re::DynamicString::format(a2, "(Size %lux%lu, Format %s)", v7, *this, *(this + 1), v8);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t re::PeerVideoStreamingUtils::cvPixelFormatFromMTLPixelFormat(int a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFE) == 0x50)
  {
    return 1111970369;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unsupported metal format: %lu", "false", "cvPixelFormatFromMTLPixelFormat", 444, a1);
  result = _os_crash("assertion failure: (false) Unsupported metal format: %lu", v3);
  __break(1u);
  return result;
}

uint64_t re::PeerVideoStreamingUtils::writeCMSampleBuffer(re::zerocopy **this, re::OPackWriter *a2, opaqueCMSampleBuffer *a3, unint64_t a4)
{
  v23 = -27;
  re::zerocopy::writeAll(*this, &v23, 1);
  v24 = 8;
  re::zerocopy::writeAll(*this, &v24, 1);
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  re::PeerVideoStreamingUtils::writeCMFormatDescription(this, FormatDescription, v8);
  v25 = 9;
  re::zerocopy::writeAll(*this, &v25, 1);
  NumSamples = CMSampleBufferGetNumSamples(a2);
  re::OPackWriter::writeInteger(this, NumSamples, v10, v11);
  v26 = 10;
  re::zerocopy::writeAll(*this, &v26, 1);
  re::OPackWriter::writeArrayBegin(this, NumSamples, v12, v13);
  if (NumSamples)
  {
    for (i = 0; i != NumSamples; ++i)
    {
      SampleSize = CMSampleBufferGetSampleSize(a2, i);
      re::OPackWriter::writeInteger(this, SampleSize, v16, v17);
    }

    if (NumSamples >= 0xF)
    {
      v27 = 3;
      re::zerocopy::writeAll(*this, &v27, 1);
    }
  }

  v28 = 11;
  re::zerocopy::writeAll(*this, &v28, 1);
  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  re::PeerVideoStreamingUtils::writeCMBlockBuffer(this, DataBuffer, v19);
  v29 = 12;
  re::zerocopy::writeAll(*this, &v29, 1);

  return re::OPackWriter::writeInteger(this, a3, v20, v21);
}

uint64_t re::PeerVideoStreamingUtils::writeCMFormatDescription(re::zerocopy **this, CMFormatDescriptionRef videoDesc, const opaqueCMFormatDescription *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  parameterSetCountOut = 0;
  NALUnitHeaderLengthOut = 0;
  HEVCParameterSetAtIndex = CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(videoDesc, 0, 0, 0, &parameterSetCountOut, &NALUnitHeaderLengthOut);
  if (HEVCParameterSetAtIndex)
  {
    v8 = HEVCParameterSetAtIndex;
    v9 = *re::peerVideoStreamingLogObjects(HEVCParameterSetAtIndex);
    HEVCParameterSetAtIndex = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (HEVCParameterSetAtIndex)
    {
      LODWORD(parameterSetPointerOut) = 67109120;
      HIDWORD(parameterSetPointerOut) = v8;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Error getting parameter set: %d", &parameterSetPointerOut, 8u);
    }
  }

  if (NALUnitHeaderLengthOut != 4)
  {
    v10 = *re::peerVideoStreamingLogObjects(HEVCParameterSetAtIndex);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      parameterSetPointerOut = 0x404000200;
      v23 = 1024;
      v24 = NALUnitHeaderLengthOut;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Expected parameter sets to use NAL header size of %d. Parameters are using %d instead.", &parameterSetPointerOut, 0xEu);
    }
  }

  result = re::OPackWriter::writeArrayBegin(this, parameterSetCountOut, v6, v7);
  if (parameterSetCountOut)
  {
    for (i = 0; i < parameterSetCountOut; ++i)
    {
      parameterSetPointerOut = 0;
      parameterSetSizeOut = 0;
      v13 = CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(videoDesc, i, &parameterSetPointerOut, &parameterSetSizeOut, 0, 0);
      if (v13)
      {
        v15 = v13;
        v16 = *re::peerVideoStreamingLogObjects(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v21 = v15;
          _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Error getting parameter set, errCode: %d", buf, 8u);
        }
      }

      result = re::OPackWriter::writeData(this, parameterSetPointerOut, parameterSetSizeOut, v14);
    }

    if (parameterSetCountOut >= 0xF)
    {
      LOBYTE(parameterSetPointerOut) = 3;
      return re::zerocopy::writeAll(*this, &parameterSetPointerOut, 1);
    }
  }

  return result;
}

void re::PeerVideoStreamingUtils::writeCMBlockBuffer(re::zerocopy **this, CMBlockBufferRef theBuffer, OpaqueCMBlockBuffer *a3)
{
  lengthAtOffsetOut[1] = *MEMORY[0x1E69E9840];
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  blockBufferOut = 0;
  v6 = CMBlockBufferCreateContiguous(0, theBuffer, 0, 0, 0, DataLength, 0, &blockBufferOut);
  if (v6)
  {
    v7 = v6;
    v8 = *re::peerVideoStreamingLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(lengthAtOffsetOut[0]) = 67109120;
      HIDWORD(lengthAtOffsetOut[0]) = v7;
      v9 = "Error creating contiguous CMSampleBuffer, errCode: %d";
      v10 = lengthAtOffsetOut;
LABEL_7:
      v15 = v8;
      v16 = 8;
LABEL_8:
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v9, v10, v16);
    }
  }

  else
  {
    lengthAtOffsetOut[0] = 0;
    dataPointerOut = 0;
    totalLengthOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      v13 = DataPointer;
      CFRelease(blockBufferOut);
      v8 = *re::peerVideoStreamingLogObjects(v14);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = v13;
        v9 = "Error getting CMSampleBuffer data pointer, errCode: %d";
        v10 = buf;
        goto LABEL_7;
      }
    }

    else if (lengthAtOffsetOut[0] == totalLengthOut)
    {
      re::OPackWriter::writeData(this, dataPointerOut, lengthAtOffsetOut[0], v12);
      CFRelease(blockBufferOut);
    }

    else
    {
      CFRelease(blockBufferOut);
      v18 = *re::peerVideoStreamingLogObjects(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = "Expected lengthAtOffset == totalLength because buffer is contiguous.";
        v10 = buf;
        v15 = v18;
        v16 = 2;
        goto LABEL_8;
      }
    }
  }
}

BOOL re::PeerVideoStreamingUtils::readCMSampleBuffer(re::PeerVideoStreamingUtils *this, re::OPackReader *a2, unint64_t *a3, opaqueCMSampleBuffer **a4, unint64_t *a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if (re::OPackReader::next(this, a2) && *(this + 196) == 13)
  {
    v55 = a3;
    sampleSizeArray = 0;
    formatDescriptionOut = 0;
    v60[1] = 0;
    v61 = 0;
    v60[0] = 0;
    v62 = 0;
    v12 = 0;
    if (re::OPackReader::next(this, v9))
    {
      v13 = 0;
      if (*(this + 196) == 6)
      {
        v13 = 0;
        v12 = 0;
        while (1)
        {
          v10 = 0;
          v14 = *(this + 224);
          if (v14 <= 1)
          {
            break;
          }

          switch(v14)
          {
            case 2u:
              v10 = 0;
              if (!re::OPackReader::next(this, v11) || *(this + 196) != 12)
              {
                goto LABEL_89;
              }

              while (re::OPackReader::next(this, v33) && *(this + 184) != 3)
              {
                *(this + 2) = 1;
                v10 = 0;
                if (!re::OPackReader::next(this, v15) || *(this + 196) != 6)
                {
                  goto LABEL_89;
                }

                destinationBuffer[0] = *(this + 28);
                re::DynamicArray<unsigned long>::add(v60, destinationBuffer);
              }

              break;
            case 3u:
              v10 = 0;
              if (!re::OPackReader::next(this, v11) || *(this + 196) != 11)
              {
                goto LABEL_89;
              }

              destinationBuffer[0] = 0;
              v16 = CMBlockBufferCreateWithMemoryBlock(0, 0, *(this + 27), 0, 0, 0, *(this + 27), 1u, destinationBuffer);
              v17 = v16;
              if (!destinationBuffer[0] || v16)
              {
                v52 = *re::peerVideoStreamingLogObjects(v16);
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                *v68 = 67109120;
                *&v68[4] = v17;
                v49 = "Failed to create block buffer, errCode: %d";
                goto LABEL_94;
              }

              v18 = CMBlockBufferReplaceDataBytes(*(this + 26), destinationBuffer[0], 0, *(this + 27));
              v12 = destinationBuffer[0];
              if (v18)
              {
                v50 = v18;
                CFRelease(destinationBuffer[0]);
                v52 = *re::peerVideoStreamingLogObjects(v51);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *v68 = 67109120;
                  *&v68[4] = v50;
                  v49 = "Failed to copy data to block buffer, errCode: %d";
LABEL_94:
                  _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, v49, v68, 8u);
                }

LABEL_88:
                v10 = 0;
                goto LABEL_89;
              }

              break;
            case 4u:
              v10 = 0;
              if (!re::OPackReader::next(this, v11) || *(this + 196) != 6)
              {
                goto LABEL_89;
              }

              *a4 = *(this + 28);
              break;
            default:
              goto LABEL_89;
          }

LABEL_65:
          if (!re::OPackReader::next(this, v15) || *(this + 196) != 6)
          {
            goto LABEL_69;
          }
        }

        if (*(this + 224))
        {
          if (v14 != 1)
          {
            goto LABEL_89;
          }

          v10 = 0;
          if (!re::OPackReader::next(this, v11) || *(this + 196) != 6)
          {
            goto LABEL_89;
          }

          v13 = *(this + 28);
          goto LABEL_65;
        }

        v10 = 0;
        if (!re::OPackReader::next(this, v11) || *(this + 196) != 12)
        {
          goto LABEL_89;
        }

        *&v57[16] = 0;
        destinationBuffer[1] = 0;
        *v57 = 0;
        destinationBuffer[0] = 0;
        *&v57[8] = 0;
        v72 = 0;
        v69 = 0;
        v70 = 0;
        *v68 = 0;
        v71 = 0;
        v20 = re::OPackReader::next(this, v19);
        v22 = 0;
        if (v20)
        {
          v23 = 0;
          v24 = 0;
          if (*(this + 184) != 3)
          {
            v25 = 0;
            v26 = 0;
            v24 = 0;
            while (1)
            {
              *(this + 2) = 1;
              v27 = re::OPackReader::next(this, v21);
              v28 = 0;
              if (!v27 || *(this + 196) != 11)
              {
                break;
              }

              if (v24 >= destinationBuffer[1])
              {
                v29 = (v24 + 1);
                if (destinationBuffer[1] < v29)
                {
                  if (destinationBuffer[0])
                  {
                    v30 = 8;
                    if (destinationBuffer[1])
                    {
                      v30 = 2 * destinationBuffer[1];
                    }

                    if (v30 <= v29)
                    {
                      v31 = v29;
                    }

                    else
                    {
                      v31 = v30;
                    }

                    re::DynamicArray<float *>::setCapacity(destinationBuffer, v31);
                    v25 = *&v57[8];
                  }

                  else
                  {
                    re::DynamicArray<float *>::setCapacity(destinationBuffer, v29);
                    v25 = *&v57[8] + 1;
                  }
                }

                v24 = *v57;
                v26 = *&v57[16];
              }

              *(v26 + 8 * v24++) = *(this + 26);
              *v57 = v24;
              *&v57[8] = ++v25;
              re::DynamicArray<unsigned long>::add(v68, this + 27);
              if (!re::OPackReader::next(this, v32) || *(this + 184) == 3)
              {
                v23 = *&v57[16];
                v22 = v72;
                goto LABEL_53;
              }
            }

LABEL_58:
            if (*v68)
            {
              v15 = v72;
              if (v72)
              {
                (*(**v68 + 40))(*v68);
              }
            }

            if (destinationBuffer[0])
            {
              v15 = *&v57[16];
              if (*&v57[16])
              {
                (*(*destinationBuffer[0] + 40))();
              }
            }

            if ((v28 & 1) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_65;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

LABEL_53:
        v34 = CMVideoFormatDescriptionCreateFromHEVCParameterSets(0, v24, v23, v22, 4, 0, &formatDescriptionOut);
        if (v34)
        {
          v35 = v34;
          v36 = *re::peerVideoStreamingLogObjects(v34);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.value) = 67109120;
            HIDWORD(buf.value) = v35;
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Error creating format description from parameters, errCode: %d", &buf, 8u);
          }

          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_69:
    if (*(this + 184) != 5)
    {
      goto LABEL_88;
    }

    v72 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v58 = *MEMORY[0x1E6960C70];
    v59 = *(MEMORY[0x1E6960C70] + 16);
    CMTimeMake(destinationBuffer, 1, 90);
    v37 = (*a2)++;
    v38 = CMTimeMake(&buf, v37, 90);
    *&v57[8] = buf;
    re::DynamicArray<CMSampleTimingInfo>::setCapacity(v68, 1uLL);
    v39 = v71;
    v40 = v70;
    v41 = v72;
    v42 = &v72[v70];
    *&v42->duration.value = *destinationBuffer;
    v43 = v58;
    v44 = *&v57[16];
    v45 = *v57;
    v42->decodeTimeStamp.epoch = v59;
    *&v42->presentationTimeStamp.timescale = v44;
    *&v42->decodeTimeStamp.value = v43;
    *&v42->duration.epoch = v45;
    v70 = v40 + 1;
    v71 = v39 + 2;
    buf.value = 0;
    v46 = CMSampleBufferCreate(*MEMORY[0x1E695E480], v12, 1u, 0, 0, formatDescriptionOut, v13, v40 + 1, v41, v61, sampleSizeArray, &buf);
    v10 = v46 == 0;
    v47 = formatDescriptionOut;
    if (v46)
    {
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      v48 = *re::peerVideoStreamingLogObjects(v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *v65 = 67109120;
        v66 = v46;
        _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "Failed to create CMSampleBuffer, errCode: %d", v65, 8u);
      }
    }

    else
    {
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      *v55 = buf.value;
    }

    if (*v68 && v72)
    {
      (*(**v68 + 40))();
    }

LABEL_89:
    if (v60[0] && sampleSizeArray)
    {
      (*(*v60[0] + 40))();
    }
  }

  return v10;
}

void *re::DynamicArray<CMSampleTimingInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 72 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<CMSampleTimingInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_UIGroundingShadowService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_262, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_262))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8B80, "UIGroundingShadowService");
    __cxa_guard_release(&_MergedGlobals_262);
  }

  return &unk_1EE1A8B80;
}

void re::ecs2::initInfo_UIGroundingShadowService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x5B1C4CC1C23827DCLL;
  v8[1] = "UIGroundingShadowService";
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
  *(this + 8) = &re::ecs2::initInfo_UIGroundingShadowService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::ecs2::allocInfo_ReverbComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_263, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_263))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8C48, "ReverbComponent");
    __cxa_guard_release(&_MergedGlobals_263);
  }

  return &unk_1EE1A8C48;
}

void re::ecs2::initInfo_ReverbComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x53A499A3A873EE56;
  v28[1] = "ReverbComponent";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1A8C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8C18))
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
    qword_1EE1A8C28 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint16_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "priority";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2A00000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A8C30 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "allowSpaceBlendingWithReverbPreset";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2800000003;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A8C38 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_ReverbPreset(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "reverbPreset";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000004;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A8C40 = v26;
    __cxa_guard_release(&qword_1EE1A8C18);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A8C28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ReverbComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ReverbComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ReverbComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ReverbComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs215ReverbComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v27 = v29;
}

void re::internal::defaultConstruct<re::ecs2::ReverbComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF0A80;
  *(v3 + 32) = -1;
  *(v3 + 40) = 1;
  *(v3 + 42) = 1;
}

void re::internal::defaultConstructV2<re::ecs2::ReverbComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF0A80;
  *(v1 + 32) = -1;
  *(v1 + 40) = 1;
  *(v1 + 42) = 1;
}

void *re::ecs2::allocInfo_ReverbSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8C20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8CD8, "ReverbSystem");
    __cxa_guard_release(&qword_1EE1A8C20);
  }

  return &unk_1EE1A8CD8;
}

void re::ecs2::initInfo_ReverbSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x3C372182C9CAED82;
  v8[1] = "ReverbSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1F000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ReverbSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ReverbSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ReverbSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ReverbSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ReverbSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ReverbSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ReverbSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::ReverbSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 32);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::ReverbSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 32);

  re::ecs2::System::~System(a1);
}

void re::ecs2::ReverbComponent::~ReverbComponent(re::ecs2::ReverbComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ReverbComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  if (!v5)
  {
    return 0;
  }

  result = *(a1 + 8);
  if (result)
  {
    v11 = (*(*result + 16))(result, a3[1]);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v42, a5, 0);
    v13 = v42;
    v33 = v42;
    v34 = DWORD2(v42);
    v14 = WORD4(v42);
    v15 = HIWORD(DWORD2(v42));
    if (v42 != a5 || WORD4(v42) != 0xFFFF || v15 != 0xFFFF)
    {
      *&v12 = 134218242;
      v32 = v12;
      do
      {
        v18 = v15;
        v19 = *(v13 + 16);
        if (v19 <= v15)
        {
          v35 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          v29 = MEMORY[0x1E69E9C10];
          v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          if (v30)
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          *v39 = 797;
          *&v39[4] = 2048;
          *&v39[6] = v18;
          v40 = 2048;
          v41 = v19;
          _os_log_send_and_compose_impl(v31, &v35, &v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v32, *(&v32 + 1));
          _os_crash_msg();
          __break(1u);
        }

        v20 = *(*(*(v13 + 32) + 16 * v15) + 8 * v14);
        if (*(v20 + 16))
        {
          v21 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v33);
          v22 = re::ecs2::ComponentBucketsBase::moveComponent(a3[2], a4, v21, a3[6]);
          v23 = *re::audioLogObjects(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(v20 + 16);
            v27 = v23;
            re::ecs2::Entity::debugDescription(&v42, v26);
            v28 = &v42 + 9;
            if (BYTE8(v42))
            {
              v28 = v43;
            }

            *buf = v32;
            v37 = v20;
            v38 = 2080;
            *v39 = v28;
            _os_log_debug_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEBUG, "[RE/ECS] [Update] ReverbComponentStateImpl::processDirtyComponents: setting state to 'updating' for ReverbComponent %p on entity %s", buf, 0x16u);

            if (v42 && (BYTE8(v42) & 1) != 0)
            {
              (*(*v42 + 40))();
            }
          }
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v33);
        v13 = v33;
        v14 = v34;
        v15 = HIWORD(v34);
      }

      while (v33 != a5 || v34 != 0xFFFF || HIWORD(v34) != 0xFFFF);
    }

    if (*(a1 + 16) && v11)
    {
      if ((*(*v11 + 568))(v11))
      {
        re::ecs2::ReverbSystem::updateLatestReverbPresetState(*(*(a1 + 16) + 224), v5, 0, 0);
      }
    }

    return *(a5 + 40) != 0;
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

void re::ecs2::ReverbSystem::updateLatestReverbPresetState(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  v7 = (*(*a1 + 16))(a1, a2);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(*(a2 + 104) + 288) >> 1;
  v10 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = *(v10 + 384);
  if (!v11)
  {
    goto LABEL_31;
  }

  v33 = v9;
  v12 = 0;
  v13 = 0;
  v34 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *(v10 + 400);
  v17 = &v16[v11];
  do
  {
    v18 = *v16;
    v19 = *(*v16 + 16);
    if (!v19 || (*(v19 + 304) & 1) == 0)
    {
      goto LABEL_9;
    }

    if (a4)
    {
      v22 = 8 * a4;
      v23 = a3;
      while (*v23 != v18)
      {
        ++v23;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_18;
        }
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

LABEL_18:
    v24 = *(v19 + 216);
    if (v24)
    {
      v20 = re::ecs2::NetworkComponent::owningProcessType(v24) == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(v18 + 42);
    if (v12)
    {
      v25 = v20 && !v13;
      if (v14 != v21)
      {
        v25 = 0;
      }

      if (v14 >= v21 && !v25)
      {
        v12 = 1;
LABEL_9:
        v20 = v13;
        v21 = v14;
        goto LABEL_10;
      }
    }

    v12 = 1;
    v34 = *(v18 + 40);
    v15 = *(v18 + 32);
LABEL_10:
    ++v16;
    v13 = v20;
    v14 = v21;
  }

  while (v16 != v17);
  v9 = v33;
  if (v12)
  {
    v26 = (*(*v8 + 496))(v8, v33, v15, v34 & 1);
    v27 = *re::audioLogObjects(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v36 = v33;
      v37 = 2048;
      v38 = v15;
      v39 = 1024;
      v40 = v34 & 1;
      v28 = "[RE/ECS] [Update] Set sceneID %llu with reverbPreset %lld and allowSpaceBlending %d";
      v29 = v27;
      v30 = 28;
      goto LABEL_33;
    }

    return;
  }

LABEL_31:
  v31 = (*(*v8 + 496))(v8, v9, -1, 1);
  v32 = *re::audioLogObjects(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v28 = "[RE/ECS] [Update] Set sceneID to default reverbPreset with no valid reverb components in scene.";
    v29 = v32;
    v30 = 2;
LABEL_33:
    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
  }
}

_anonymous_namespace_ *re::ecs2::ReverbSystem::willAddSystemToECSService(re::ecs2::ReverbSystem *this)
{
  result = *(this + 5);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v3);
    *(this + 28) = result;
    *(this + 30) = result;
  }

  return result;
}

uint64_t re::ecs2::ReverbSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 240) = 0;
  return this;
}

unint64_t re::ecs2::ReverbSystem::willAddSceneToECSService(unint64_t this, re::ecs2::Scene *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v47 = v3;
    *(&v47 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::activateComponents,re::ecs2::ReverbSystem>;
    *&v48 = 0;
    *(&v48 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 96), &v47);
    *&v47 = v3;
    *(&v47 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::deactivateComponents,re::ecs2::ReverbSystem>;
    *&v48 = 0;
    *(&v48 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 184), &v47);
    v45 = a2;
    v5 = *(v3 + 384);
    v6 = *(v3 + 392);
    if (v5 >= 0xB)
    {
      if (v6)
      {
        v7 = (v3 + 400);
      }

      else
      {
        v7 = *(v3 + 408);
      }

      v9 = 8 * v5;
      while (!*v7)
      {
        ++v7;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }

    if (v6)
    {
      v8 = (v3 + 400);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = *(v3 + 408);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
    v11 = 8 * v5;
    do
    {
      v12 = *v8++;
      v10 |= v12;
      v11 -= 8;
    }

    while (v11);
    if (v10)
    {
LABEL_17:
      *&v47 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v3 + 376, 0);
      v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 256, v47);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::init(v13, v3 + 256, a2);
      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 312), &v45, &v47);
      re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 376, v47);
      v14 = v47;
LABEL_50:
      this = re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 424, v14);
      if (*(v3 + 488) == 1)
      {
        v38 = *(v3 + 472);
        v39 = *(v45 + 47);
        LOWORD(v47) = 257;
        DWORD1(v47) = 1023969417;
        BYTE8(v47) = 0;
        re::ecs2::System::setTaskOptions(v38, v39, &v47);
        return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v3 + 256);
      }

      return this;
    }

LABEL_18:
    v54 = 0u;
    v47 = 0u;
    *&v48 = 0;
    v49 = 0u;
    v50 = 0u;
    *(&v48 + 1) = -1;
    v51 = 0;
    v52 = 1;
    v53 = 0uLL;
    v15 = *(v3 + 296);
    *&v54 = 0;
    v16 = *(v3 + 264);
    DWORD2(v54) = 0;
    if (v15 + 1 > 4 * v16)
    {
      re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::setBucketsCapacity((v3 + 256), (v15 + 4) >> 2);
      v16 = *(v3 + 264);
    }

    if (v16 <= v15 >> 2)
    {
      v46 = 0;
      memset(v63, 0, sizeof(v63));
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v55 = 136315906;
      v56 = "operator[]";
      v57 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v58 = 858;
      v59 = 2048;
      v60 = v15 >> 2;
      v61 = 2048;
      v62 = v16;
      _os_log_send_and_compose_impl(v42, &v46, v63, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (*(v3 + 272))
      {
        v17 = v3 + 280;
      }

      else
      {
        v17 = *(v3 + 288);
      }

      v18 = *(v17 + 8 * (v15 >> 2));
      ++*(v3 + 296);
      ++*(v3 + 304);
      v19 = v18 + 112 * (v15 & 3);
      v20 = v47;
      v21 = v48;
      v22 = v49;
      *(v19 + 48) = v50;
      *(v19 + 16) = v21;
      *(v19 + 32) = v22;
      *v19 = v20;
      re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v19 + 56, &v50 + 1);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v47);
      v24 = *(v3 + 296);
      if (v24)
      {
        v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 256, v24 - 1);
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::init(v25, v3 + 256, v45);
        *&v63[0] = *(v3 + 296) - 1;
        re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 312), &v45, v63);
        v26 = *(v3 + 296);
        v27 = *(v3 + 416);
        if ((v26 & 0x3F) != 0)
        {
          v28 = (v26 >> 6) + 1;
        }

        else
        {
          v28 = v26 >> 6;
        }

        *(v3 + 416) = v26;
        *&v47 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 376), v28, &v47);
        if (v26 && v27 > v26)
        {
          v29 = 63;
          v30 = *(v3 + 416) & 0x3FLL;
          if (v30 && v30 != 63)
          {
            v29 = ~(-1 << v30);
          }

          if (*(v3 + 392))
          {
            v31 = v3 + 400;
          }

          else
          {
            v31 = *(v3 + 408);
          }

          *(v31 + 8 * *(v3 + 384) - 8) &= v29;
        }

        v32 = *(v3 + 296);
        v33 = *(v3 + 464);
        if ((v32 & 0x3F) != 0)
        {
          v34 = (v32 >> 6) + 1;
        }

        else
        {
          v34 = v32 >> 6;
        }

        *(v3 + 464) = v32;
        *&v47 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 424), v34, &v47);
        if (v32 && v33 > v32)
        {
          v35 = 63;
          v36 = *(v3 + 464) & 0x3FLL;
          if (v36 && v36 != 63)
          {
            v35 = ~(-1 << v36);
          }

          if (*(v3 + 440))
          {
            v37 = v3 + 448;
          }

          else
          {
            v37 = *(v3 + 456);
          }

          *(v37 + 8 * *(v3 + 432) - 8) &= v35;
        }

        v14 = *&v63[0];
        goto LABEL_50;
      }
    }

    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return this;
}

uint64_t re::ecs2::ReverbSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v16 = v3;
    *(&v16 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::activateComponents,re::ecs2::ReverbSystem>;
    v17 = 0;
    v18 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 96, &v16);
    *&v16 = v3;
    *(&v16 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::deactivateComponents,re::ecs2::ReverbSystem>;
    v17 = 0;
    v18 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 184, &v16);
    *&v16 = a2;
    this = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 312), &v16);
    if (this != -1)
    {
      v5 = *(v3 + 320) + 16 * this;
      re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 376, *(v5 + 8));
      re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 424, *(v5 + 8));
      v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 256, *(v5 + 8));
      if (*v6)
      {
        v7 = v6;
        *v6 = 0;
        v8 = v6 + 1;
        v9 = *(v6[1] + 288);
        if (v9)
        {
          v10 = v6[12];
          if (v10)
          {
            for (i = 0; i != v10; ++i)
            {
              v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
              re::EventBus::unsubscribe(v9, *v12, v12[1]);
            }
          }
        }

        re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
        v13 = 0;
        v14 = v7 + 3;
        do
        {
          v15 = v7[2];
          if (*v15)
          {
            re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
          }

          v14[v13++] = -1;
        }

        while (v13 != 4);
        *v8 = 0;
        v8[1] = 0;
      }

      return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(v3 + 312, &v16);
    }
  }

  return this;
}

void *re::ecs2::ReverbSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v34[0] = a2;
  v34[1] = a3;
  if (result[28])
  {
    v4 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v33);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v32, 3148, v4, 1, 0, 0);
    re::StackScratchAllocator::StackScratchAllocator(v46);
    v42 = 1;
    v43 = 0;
    v44 = 0;
    v40 = v46;
    v41 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v40, 0);
    v42 += 2;
    v5 = v4[58];
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v45 = v4[58];
    v35[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v40, v6, v35);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        v35[0] = v10;
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 39, v35);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v40, *(v4[40] + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v40, (v4 + 53));
    v36 = 1;
    v37 = 0;
    v38 = 0;
    v35[0] = v46;
    v35[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v35, 0);
    v36 += 2;
    v12 = v4[58];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v39 = v4[58];
    v47 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v35, v13, &v47);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((v4 + 53), &v40);
    v14 = v44;
    if (v42)
    {
      v14 = &v43;
    }

    v15 = v41;
    if ((v41 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
          goto LABEL_31;
        }
      }

      v19 = __clz(__rbit64(v17));
      if (v19 + 1 != v16)
      {
        FirstBitSet = v19 - v16;
        do
        {
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((v4 + 32), FirstBitSet);
          v22 = *(*v21 + 224);
          v23 = v21[3];
          v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
          if (*(v24 + 40))
          {
            v25 = (*(*v22 + 24))(v22, v34, v21, v23, v24, 0);
          }

          else
          {
            v25 = 0;
          }

          v26 = v21[5];
          v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
          if (*(v27 + 40))
          {
            v25 |= (*(*v22 + 32))(v22, v34, v21, v26, v27, 0);
          }

          v28 = v21[6];
          v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
          if (*(v29 + 40))
          {
            if (((v25 | (*(*v22 + 40))(v22, v34, v21, v28, v29, 0)) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else if (!v25)
          {
LABEL_29:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v35, FirstBitSet);
            goto LABEL_30;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v35, FirstBitSet);
LABEL_30:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v40, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_31:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((v4 + 53), v35);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((v4 + 32));
    if (v35[0] && (v36 & 1) == 0)
    {
      (*(*v35[0] + 40))();
    }

    if (v40)
    {
      if ((v42 & 1) == 0)
      {
        (*(*v40 + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v46);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v32, v30, v31);
    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v33);
  }

  return result;
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::ReverbComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ReverbComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::ReverbSystem::~ReverbSystem(re::ecs2::ReverbSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs215ReverbComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::ReverbSystem *re::ecs2::ReverbSystem::ReverbSystem(re::ecs2::ReverbSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF09F0;
  v3 = v2 + 232;
  *(v2 + 224) = 0;
  *(v2 + 232) = &unk_1F5CF0988;
  *(v2 + 240) = 0;
  *(v2 + 248) = v2;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = 1;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 280) = 0;
  *(v2 + 304) = 0;
  v4 = (v2 + 312);
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 1;
  *(v2 + 432) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 440) = 1;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 473) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 376), 0);
  *(this + 98) += 2;
  *(this + 52) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 424), 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  *(this + 59) = this;
  *(this + 60) = v3;
  *(this + 488) = 1;
  return this;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::activateComponents,re::ecs2::ReverbSystem>(re *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 16);
      v8 = *re::audioLogObjects(a1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v9 = *(v7 + 296);
          v10 = *(v7 + 312);
        }

        else
        {
          v10 = 0;
          v9 = "(null)";
        }

        v11 = *(v6 + 32);
        v12 = *(v6 + 40);
        v13 = *(v6 + 42);
        *buf = 136316162;
        v16 = v9;
        v17 = 2048;
        v18 = v10;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = v12;
        v23 = 1024;
        v24 = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ReverbSystem::activateComponents() ReverbComponent activating, name='%s', entityId=%llu, preset=%d, allowSpaceBlending=%d, priority=%d", buf, 0x28u);
      }

      ++a3;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::deactivateComponents,re::ecs2::ReverbSystem>(re *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = *a3;
    v5 = *(*a3 + 16);
    v6 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v7 = v5[37];
        v8 = v5[39];
      }

      else
      {
        v8 = 0;
        v7 = "(null)";
      }

      v9 = *(v4 + 32);
      v10 = *(v4 + 40);
      v11 = *(v4 + 42);
      *buf = 136316162;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ReverbSystem::deactivateComponents() ReverbComponent deactivating, name='%s', entityId=%llu, preset=%d, allowSpaceBlending=%d, priority=%d", buf, 0x28u);
    }

    do
    {
      v5 = v5[4];
    }

    while (v5);
    operator new();
  }

  std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(0);
  return 0;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF0B08;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF0B60;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF0BB8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF0C10;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF0B08;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF0B60;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF0BB8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF0C10;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0B08;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0B08;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0B60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0BB8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0C10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0C10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::RigComponentHelper::areExternalDependenciesLoadedForRigGraph(re::ecs2::RigComponentHelper *this, const re::ecs2::RigComponent *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *(this + 5);
  if (v6)
  {
    v7 = *(v6 + 280);
  }

  else
  {
    v7 = 0;
  }

  v8 = re::AssetHandle::assetWithType((this + 32), v7, 0);
  re::makeBindNode(v40, *(this + 2));
  v9 = 0;
  if (!(v40[0] | v40[2]))
  {
    goto LABEL_33;
  }

  v38 = v8[17];
  if (!v38)
  {
LABEL_29:
    v9 = 1;
    goto LABEL_33;
  }

  v10 = 0;
  while (1)
  {
    v11 = v8[12];
    if (v11)
    {
      break;
    }

LABEL_28:
    if (++v10 == v38)
    {
      goto LABEL_29;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = v8[12];
    if (v13 <= v12)
    {
      v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      *&buf[14] = 797;
      v42 = 2048;
      v43 = v12;
      v44 = 2048;
      v45 = v13;
      _os_log_send_and_compose_impl(v28, &v39, &v46, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v38);
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v29 = MEMORY[0x1E69E9C10];
      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v30)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      *&buf[14] = 797;
      v42 = 2048;
      v43 = v10;
      v44 = 2048;
      v45 = v13;
      _os_log_send_and_compose_impl(v31, &v39, &v46, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v38);
      _os_crash_msg();
      __break(1u);
LABEL_42:
      v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v32 = MEMORY[0x1E69E9C10];
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v33)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      *&buf[14] = 797;
      v42 = 2048;
      v43 = v4;
      v44 = 2048;
      v45 = v2;
      _os_log_send_and_compose_impl(v34, &v39, &v46, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v38);
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      *&buf[14] = 797;
      v42 = 2048;
      v43 = v2;
      v44 = 2048;
      v45 = v3;
      _os_log_send_and_compose_impl(v37, &v39, &v46, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v38);
      _os_crash_msg();
      __break(1u);
    }

    v14 = v8[14] + 40 * v12;
    if (v10 == *(v14 + 32))
    {
      v13 = v8[17];
      if (v13 <= v10)
      {
        goto LABEL_38;
      }

      v15 = (v8[19] + 200 * v10);
      v2 = v15[2];
      if (v2)
      {
        v16 = 0;
        v3 = v15[4];
        while (!re::StringID::operator==(v14, v3))
        {
          ++v16;
          v3 += 40;
          if (v2 == v16)
          {
            goto LABEL_18;
          }
        }

        v4 = v16;
      }

LABEL_18:
      if (v2 <= v4)
      {
        goto LABEL_42;
      }

      v2 = *(v15[4] + 40 * v4 + 16);
      v3 = v15[17];
      if (v3 <= v2)
      {
        goto LABEL_46;
      }

      if (re::StringID::operator==((v15[19] + 16 * v2), re::ecs2::RigComponentHelper::areExternalDependenciesLoadedForRigGraph(re::ecs2::RigComponent const&)::rigHierarchyStr))
      {
        break;
      }
    }

LABEL_24:
    if (++v12 == v11)
    {
      goto LABEL_28;
    }
  }

  v3 = *(v14 + 24);
  v17 = strlen(v3);
  *buf = v3;
  *&buf[8] = v17;
  {
    re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v18, v19, v20, v21, v22);
  }

  re::BindNode::bindPointWithOverride(&v46, v40, re::introspect<re::SkeletalPose>(BOOL)::info, buf);
  if (re::BindPoint::valueUntyped(&v46))
  {
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v46 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v46 + 8);
    goto LABEL_24;
  }

  v23 = *re::assetsLogObjects(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v14 + 24);
    *buf = 136315138;
    *&buf[4] = v24;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "RigHierarchy Input Binding path could not be resolved: %s", buf, 0xCu);
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v46 + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v46 + 8);
  v9 = 0;
LABEL_33:
  re::BindNode::deinit(v40);
  return v9;
}

uint64_t re::ecs2::RigComponentHelper::areAssetAndDependenciesLoaded(re::ecs2::RigComponentHelper *this, const re::ecs2::RigComponent *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = atomic_load((v2 + 896));
  if (v3 != 2)
  {
    return 0;
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_7:
    re::RigGraphAsset::assetType(this);
    return 1;
  }

  v6 = *(v5 + 280);
  if (v6 != re::RigGraphAsset::assetType(this))
  {
    return 1;
  }

  result = re::ecs2::RigComponentHelper::areExternalDependenciesLoadedForRigGraph(this, v7);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t re::ecs2::ECSSimulationEventDelegate::shouldTriggerEventWithNullRoot(re::ecs2::ECSSimulationEventDelegate *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8D70))
  {
    _MergedGlobals_264 = dyld_program_sdk_at_least();
    __cxa_guard_release(&qword_1EE1A8D70);
  }

  return _MergedGlobals_264;
}

void re::ecs2::ECSSimulationEventDelegate::preSimulation(id *location, char a2, re::PhysicsSimulation *a3, _BYTE *a4, float a5)
{
  v9 = location;
  v43 = *MEMORY[0x1E69E9840];
  v11 = location + 3;
  v10 = location[3];
  v12 = location[2];
  if (v10)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_23;
  }

  v14 = *(v12 + 36);
  WeakRetained = objc_loadWeakRetained(location + 3);
  location = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(v14, v16);
  if (location)
  {
    v18 = location;
    if (WeakRetained)
    {
      v42 = WeakRetained - 8;
      v19 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(location + 27, &v42);
      if (v19 != -1)
      {
        v20 = *(v18[28] + 18 * v19 + 17);
        goto LABEL_11;
      }

LABEL_10:
      v20 = 0;
LABEL_11:
      Event = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(v14, v17);
      if (Event)
      {
        v22 = *(Event + 208);
      }

      else
      {
        v22 = 0;
      }

      if (!(v22 + v20))
      {
        goto LABEL_22;
      }

LABEL_14:
      v23 = objc_loadWeakRetained(v11);
      if (v23)
      {
        v24 = v23 - 8;
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
      }

      v25 = *(v12 + 36);
      *&v42 = a5;
      *(&v42 + 1) = v24;
      Type = re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>();
      v27 = v25;
      v28 = v24;
      goto LABEL_33;
    }

    if (location[26])
    {
      goto LABEL_14;
    }
  }

  else if (WeakRetained)
  {
    goto LABEL_10;
  }

LABEL_22:
  v10 = *v11;
LABEL_23:
  if (!v10 && re::ecs2::ECSSimulationEventDelegate::shouldTriggerEventWithNullRoot(location) && v12)
  {
    v29 = *(v12 + 36);
    v30 = re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsWillSimulateEvent>(v29, v12);
    v32 = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(v29, v31);
    v33 = v32 ? *(v32 + 208) : 0;
    if (v33 + v30)
    {
      v34 = *(v12 + 36);
      *&v42 = a5;
      *(&v42 + 1) = 0;
      Type = re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>();
      v27 = v34;
      v28 = v12;
LABEL_33:
      re::EventBus::publish(v27, v28, Type, &v42, 0x10uLL, 0);
      (*(**(v12 + 7) + 248))(*(v12 + 7));
      v35 = (*(**(v12 + 7) + 32))(*(v12 + 7));
      v36 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v35);
      (*(*v36 + 56))(v36, 1);
      goto LABEL_34;
    }
  }

  if (a2)
  {
LABEL_36:
    if (!v12)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (!v9[1])
  {
    goto LABEL_36;
  }

  (*(**(v12 + 7) + 248))(*(v12 + 7));
  re::ecs2::PhysicsSystem::ecsToSim(v9[1], v12, a3);
LABEL_37:
  v37 = (*(**(v12 + 7) + 32))(*(v12 + 7));
  v38 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v37);
  if (v38)
  {
    v39 = v38;
    *a4 = (*(*v38 + 208))(v38, a3);
    v40 = (*(*v39 + 232))(v39, a3);
    if (v40)
    {
      v41 = *re::physicsLogObjects(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v42) = 134217984;
        *(&v42 + 4) = a3;
        _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "ECSSimulationEventDelegate::preSimulation dying simulation %p", &v42, 0xCu);
      }

      (*(*v39 + 224))(v39, a3);
    }
  }

  else
  {
    *a4 = 0;
  }
}

void re::ecs2::ECSSimulationEventDelegate::postSimulation(re::ecs2::ECSSimulationEventDelegate *this, float a2, re::PhysicsSimulation *a3)
{
  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6)
  {
    v8 = *(v6 + 304);
    if (v8)
    {
      v9 = *(v6 + 312);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        (*(*v11 + 64))(v11, a3, v7);
        v10 -= 8;
      }

      while (v10);
    }
  }

  if (a2 <= 0.0)
  {
    return;
  }

  Event = (*(**(a3 + 7) + 208))(*(a3 + 7));
  v15 = *(this + 3);
  v14 = (this + 24);
  v13 = v15;
  if (v15)
  {
    v16 = v7 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(v7 + 288);
    WeakRetained = objc_loadWeakRetained(v14);
    Event = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(v17, v19);
    if (Event)
    {
      v21 = Event;
      if (WeakRetained)
      {
        v38 = WeakRetained - 8;
        v39 = 0;
        v22 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(Event + 27, &v38);
        if (v22 != -1)
        {
          v23 = *(v21[28] + 144 * v22 + 136);
          goto LABEL_16;
        }

LABEL_15:
        v23 = 0;
LABEL_16:
        v24 = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(v17, v20);
        if (v24)
        {
          v25 = *(v24 + 208);
        }

        else
        {
          v25 = 0;
        }

        if (!(v25 + v23))
        {
          goto LABEL_27;
        }

LABEL_19:
        v26 = objc_loadWeakRetained(v14);
        if (v26)
        {
          v27 = v26 - 8;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
        }

        v28 = *(v7 + 288);
        *&v38 = a2;
        v39 = v27;
        Type = re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>();
        v30 = v28;
        v31 = v27;
        goto LABEL_36;
      }

      if (Event[26])
      {
        goto LABEL_19;
      }
    }

    else if (WeakRetained)
    {
      goto LABEL_15;
    }

LABEL_27:
    v13 = *v14;
  }

  if (!v13 && re::ecs2::ECSSimulationEventDelegate::shouldTriggerEventWithNullRoot(Event) && v7)
  {
    v32 = *(v7 + 288);
    v33 = re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsDidSimulateEvent>(v32, v7);
    v35 = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(v32, v34);
    v36 = v35 ? *(v35 + 208) : 0;
    if (v36 + v33)
    {
      v37 = *(v7 + 288);
      *&v38 = a2;
      v39 = 0;
      Type = re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>();
      v30 = v37;
      v31 = v7;
LABEL_36:
      re::EventBus::publish(v30, v31, Type, &v38, 0x10uLL, 0);
      (*(**(v7 + 56) + 248))(*(v7 + 56));
    }
  }
}

uint64_t re::ecs2::ECSSimulationEventDelegate::simulationPausedTick(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 304);
    if (v3)
    {
      v5 = *(result + 16);
      v6 = *(v2 + 312);
      v7 = 8 * v3;
      do
      {
        v8 = *v6++;
        result = (*(*v8 + 64))(v8, a2, v5);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return result;
}

void re::ecs2::ECSSimulationEventDelegate::~ECSSimulationEventDelegate(id *this)
{
  *this = &unk_1F5CF0C68;
  objc_destroyWeak(this + 3);
  this[3] = 0;
}

{
  *this = &unk_1F5CF0C68;
  objc_destroyWeak(this + 3);
  this[3] = 0;

  JUMPOUT(0x1E6906520);
}

uint64_t re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(uint64_t a1, uint64_t a2)
{
  Type = re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>();
  v3 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v3 + 8);
  }
}

uint64_t re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>()
{
  if ((atomic_load_explicit(&qword_1EE1A8D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8D80))
  {
    qword_1EE1A8D78 = re::EventBus::typeStringToId(("32REEntityPhysicsWillSimulateEvent" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1A8D80);
  }

  return qword_1EE1A8D78;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsWillSimulateEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(a1, a2);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(uint64_t a1, uint64_t a2)
{
  Type = re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>();
  v3 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v3 + 8);
  }
}

uint64_t re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>()
{
  if ((atomic_load_explicit(&qword_1EE1A8D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8D90))
  {
    qword_1EE1A8D88 = re::EventBus::typeStringToId(("31REEntityPhysicsDidSimulateEvent" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1A8D90);
  }

  return qword_1EE1A8D88;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsDidSimulateEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(a1, a2);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::ecs2::MipmapGenerationSystem::update(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 224);
  if (!v3 || (*(v3 + 432) & 0x10) != 0)
  {
    v4 = *(*(result + 232) + 112);
    if (v4 && re::RenderFrameBox::get((v4 + 328), 0xFFFFFFFFFFFFFFFuLL))
    {
      v5 = *(v2 + 232);
      v6 = *(v5 + 112);
      if (v6)
      {
        v7 = re::RenderFrameBox::get((v6 + 328), 0xFFFFFFFFFFFFFFFuLL);
        v5 = *(v2 + 232);
      }

      else
      {
        v7 = 0;
      }

      v12 = 0;
      v9[1] = 0;
      v10 = 0;
      v9[0] = 0;
      v11 = 0;
      re::TextureManager::dequeueMipmapGeneration(v8, *(v5 + 56));
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v9, v8);
      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v8);
      if (v10)
      {
        (*(**(v7 + 320) + 16))(*(v7 + 320), v9);
      }

      return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v9);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager->renderFrame()", "update", 19);
      result = _os_crash("assertion failure: (m_renderManager->renderFrame()) ");
      __break(1u);
    }
  }

  return result;
}

void *re::ecs2::allocInfo_MipmapGenerationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_265, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_265))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8DA0, "MipmapGenerationSystem");
    __cxa_guard_release(&_MergedGlobals_265);
  }

  return &unk_1EE1A8DA0;
}

void re::ecs2::initInfo_MipmapGenerationSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x7C4B2F6E5830485ELL;
  v8[1] = "MipmapGenerationSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MipmapGenerationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MipmapGenerationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MipmapGenerationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MipmapGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MipmapGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MipmapGenerationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MipmapGenerationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::MipmapGenerationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF0CC8;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MipmapGenerationSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF0CC8;
  return result;
}

void re::ecs2::MipmapGenerationSystem::~MipmapGenerationSystem(re::ecs2::MipmapGenerationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::TintManagerStateTracking *re::ecs2::TintManagerStateTracking::TintManagerStateTracking(re::ecs2::TintManagerStateTracking *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<float>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CF0D58;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::HierarchicalTintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CF0E28;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::TintManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = (*(a2 + 16) + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v33 = v8;
    do
    {
      v9 = *(v7 + 24 * v4 + 16);
      v10 = *(a1 + 328);
      if (!*(a1 + 56) || (v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v12 = *(*(a1 + 64) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 80))), v12 == 0x7FFFFFFF))
      {
LABEL_14:
        (*(**v10 + 8))(&v43);
        if (v43)
        {
          v14 = v44;
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v9 + 32);
        for (i = 1.0; v15; v15 = *(v36 + 32))
        {
          if ((*(v15 + 304) & 0x80) != 0)
          {
            break;
          }

          v36 = v15;
          (*(**v10 + 8))(&v43);
          v17 = v43 ? v44 : 0;
          if (v14 != v17)
          {
            break;
          }

          v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v36, v18 ^ (v18 >> 31), &v43);
          if (HIDWORD(v44) != 0x7FFFFFFF)
          {
            i = *(*(a1 + 72) + 32 * HIDWORD(v44) + 16);
            break;
          }

          v19 = *(v36 + 176);
          if (v19 && *(v19 + 28) != 0.0)
          {
            v9 = v36;
          }
        }

        re::StackScratchAllocator::StackScratchAllocator(&v43);
        v36 = 0;
        v37 = 0;
        v38 = 1;
        v40 = 0;
        v41 = 0;
        v39 = 0;
        v42 = 0;
        re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::init(&v36, &v43, 1uLL);
        v45.n128_u64[0] = v9;
        v45.n128_u32[2] = i;
        v20 = re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::add(&v36, &v45);
LABEL_31:
        v21 = v41;
        while (v21)
        {
          v35 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v36, --v21);
          re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v36, v21);
          v41 = v21;
          ++v42;
          v22 = v35;
          if (*(v35 + 304))
          {
            v23 = *(v35 + 176);
            if (v23)
            {
              v20.n128_f32[0] = 1.0 - *(v23 + 28);
              v24 = *(&v35 + 2) * v20.n128_f32[0];
              *(&v35 + 2) = *(&v35 + 2) * v20.n128_f32[0];
            }

            else
            {
              v24 = *(&v35 + 2);
            }

            if (v24 != 1.0)
            {
              v45 = 0uLL;
              v46 = 0;
              v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
              re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v35, v25 ^ (v25 >> 31), &v45);
              if (v45.n128_u32[3] == 0x7FFFFFFF)
              {
                v26 = re::HashTable<re::ecs2::Entity const*,float,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v45.n128_u32[2], v45.n128_u64[0]);
                v22 = v35;
                *(v26 + 8) = v35;
                *(v26 + 16) = v24;
                ++*(a1 + 96);
              }

              else
              {
                v22 = v35;
              }
            }

            v27 = *(v22 + 344);
            if (v27)
            {
              v28 = *(v22 + 360);
              v29 = 8 * v27;
              do
              {
                v30 = *v28;
                (*(**v10 + 8))(&v45);
                if (v45.n128_u8[0])
                {
                  v31 = v45.n128_u64[1];
                }

                else
                {
                  v31 = 0;
                }

                v45.n128_u64[0] = v30;
                if (v14 == v31)
                {
                  v45.n128_u32[2] = DWORD2(v35);
                }

                else
                {
                  v45.n128_u32[2] = 1065353216;
                }

                v20 = re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::add(&v36, &v45);
                ++v28;
                v29 -= 8;
              }

              while (v29);
              goto LABEL_31;
            }
          }
        }

        while (v37)
        {
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v36);
        }

        if (v36 && (v38 & 1) == 0)
        {
          (*(*v36 + 40))(v20);
        }

        re::StackScratchAllocator::~StackScratchAllocator(&v43);
        LODWORD(v3) = v33;
        v8 = *(a2 + 32);
        v7 = *(a2 + 16);
      }

      else
      {
        v13 = *(a1 + 72);
        while (*(v13 + 32 * v12 + 8) != v9)
        {
          v12 = *(v13 + 32 * v12) & 0x7FFFFFFF;
          if (v12 == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 <= v4 + 1)
      {
        v32 = v4 + 1;
      }

      else
      {
        v32 = v8;
      }

      while (v32 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_64;
        }
      }

      LODWORD(v4) = v32;
LABEL_64:
      ;
    }

    while (v4 != v3);
  }
}

__n128 re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::add(uint64_t a1, __n128 *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 858;
    v17 = 2048;
    v18 = v4 >> 5;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  result = *a2;
  *(v7 + 16 * (v4 & 0x1F)) = *a2;
  return result;
}

void re::ecs2::TintManager::updateTintData(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  *(a1 + 336) = a2;
  (*(v2 + 32))(a1 + 8, a1 + 112);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 200);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 248);
  *(v3 + 328) = 0;
}

uint64_t re::ecs2::TintManager::registerScene(re::ecs2::TintManager *this, re::EventBus **a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
  }

  v4 = (this + 8);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 1;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v52 = re::globalAllocators(v5)[2];
      v10 = (*(*v52 + 32))(v52, 32, 0);
      *v10 = &unk_1F5CF0E68;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CF0F70;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v53 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v51, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v25)[2];
  v26 = (*(*v52 + 32))(v52, 32, 0);
  *v26 = &unk_1F5CF0FC8;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v53 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v51, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v31)[2];
  v32 = (*(*v52 + 32))(v52, 32, 0);
  *v32 = &unk_1F5CF1020;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 3) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 4);
      if (*(v42 + 24 * v41 + 16) == v50)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v41) = *(v42 + 24 * v41 + 8) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v42 + 24 * v41 + 16) == v50)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v40, v38, &v50, &v50);
  ++*(this + 14);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v44);
  result = v44[0];
  if (v44[0])
  {
    if ((v45 & 1) == 0)
    {
      return (*(*v44[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::TintManager::unregisterScene(re::ecs2::TintManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, v12[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

void re::ecs2::TintManagerStateTracking::~TintManagerStateTracking(re::ecs2::TintManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::HierarchyStateTracking<float>::clearEntityHierarchyStateData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    if (*(a1 + 296) != *(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v15, v21, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = a2;
    for (i = v19; v19; i = v19)
    {
      v14 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, --v19);
      ++v20;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v14))
      {
        v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
        re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v14, v5 ^ (v5 >> 31), v22);
        v6 = v24;
        if (v24 != 0x7FFFFFFF)
        {
          v7 = *(a1 + 72);
          v8 = *(v7 + 32 * v24) & 0x7FFFFFFF;
          if (v25 == 0x7FFFFFFF)
          {
            *(*(a1 + 64) + 4 * v23) = v8;
            v6 = v24;
          }

          else
          {
            *(v7 + 32 * v25) = *(v7 + 32 * v25) & 0x80000000 | v8;
          }

          v9 = *(a1 + 96);
          *(v7 + 32 * v6) = *(a1 + 92);
          --*(a1 + 84);
          *(a1 + 92) = v6;
          *(a1 + 96) = v9 + 1;
        }

        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 248, &v14);
        v10 = *(v14 + 344);
        if (v10)
        {
          v11 = *(v14 + 360);
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = v13;
            v12 -= 8;
          }

          while (v12);
        }
      }
    }

    *(a1 + 296) = *(a1 + 96);
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v15);
    if (v15[0])
    {
      if ((v16 & 1) == 0)
      {
        (*(*v15[0] + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void re::ecs2::TintManager::~TintManager(re::ecs2::TintManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CF0E28;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

void *re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 512, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,float,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Entity const*,float,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24), *(v17 + 8));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

uint64_t (***re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF0EC0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF0F18;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0E68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0EC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0F18;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0F18;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0F70;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0F70;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0FC8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0FC8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1020;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1020;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::EngineMotionStateEventDelegate::updateMotionState(uint64_t this, const re::RigidBody *a2, char a3)
{
  v4 = *(a2 + 9);
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = *(v4 + 40);
    do
    {
      v7 = v6;
      v6 = *(v6 + 32);
    }

    while (v6);
    if (!*(v7 + 24))
    {
      goto LABEL_8;
    }

    v8 = v5;
    do
    {
      v9 = v8;
      v8 = *(v8 + 32);
    }

    while (v8);
    v10 = *(*(v9 + 24) + 288);
    if (!v10)
    {
LABEL_8:
      v10 = *(this + 8);
    }

    v14 = a2;
    v15 = a3;
    if ((atomic_load_explicit(&qword_1EE1A8E38, memory_order_acquire) & 1) == 0)
    {
      v12 = v5;
      v13 = v10;
      v11 = __cxa_guard_acquire(&qword_1EE1A8E38);
      v5 = v12;
      v10 = v13;
      if (v11)
      {
        _MergedGlobals_266 = re::EventBus::typeStringToId(("27REMotionStateDidChangeEvent" & 0x7FFFFFFFFFFFFFFFLL), v12);
        __cxa_guard_release(&qword_1EE1A8E38);
        v5 = v12;
        v10 = v13;
      }
    }

    return re::EventBus::publish(v10, v5, _MergedGlobals_266, &v14, 0x10uLL, 0);
  }

  return this;
}

void *re::ecs2::allocInfo_PlanarReflectionCaptureComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8E80, "PlanarReflectionCaptureComponent");
    __cxa_guard_release(&qword_1EE1A8E50);
  }

  return &unk_1EE1A8E80;
}

void re::ecs2::initInfo_PlanarReflectionCaptureComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x28414266274E86F8;
  v16[1] = "PlanarReflectionCaptureComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A8E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E48))
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
    _MergedGlobals_267 = v14;
    __cxa_guard_release(&qword_1EE1A8E48);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_267;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232PlanarReflectionCaptureComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::PlanarReflectionCaptureComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE03D0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PlanarReflectionCaptureComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE03D0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_PlanarReflectionReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8F10, "PlanarReflectionReceiverComponent");
    __cxa_guard_release(&qword_1EE1A8E60);
  }

  return &unk_1EE1A8F10;
}

void re::ecs2::initInfo_PlanarReflectionReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x4B7E6CB8AD15EA92;
  v20[1] = "PlanarReflectionReceiverComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A8E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E58))
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
    qword_1EE1A8E70 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::ecs2::introspect_EntityHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "captureEntity";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A8E78 = v18;
    __cxa_guard_release(&qword_1EE1A8E58);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A8E70;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233PlanarReflectionReceiverComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::PlanarReflectionReceiverComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v4 = (this + 32);
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 2) = 0;
  *(this + 24) = 0;
  *this = &unk_1F5CE0538;
  objc_initWeak(v4, 0);
  *(this + 5) = 0;
  *(this + 6) = 0;

  re::ecs2::EntityHandle::reset(v4);
}

void re::internal::defaultConstructV2<re::ecs2::PlanarReflectionReceiverComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE0538;
  objc_initWeak(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;

  re::ecs2::EntityHandle::reset(v2);
}

void *re::ecs2::allocInfo_PlanarReflectionSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8FA0, "PlanarReflectionSystem");
    __cxa_guard_release(&qword_1EE1A8E68);
  }

  return &unk_1EE1A8FA0;
}

void re::ecs2::initInfo_PlanarReflectionSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x9B1399D5F4C5728;
  v8[1] = "PlanarReflectionSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PlanarReflectionSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PlanarReflectionSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PlanarReflectionSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PlanarReflectionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PlanarReflectionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PlanarReflectionSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PlanarReflectionSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::PlanarReflectionSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 336) = 0;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF10C8;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0;
  *(v3 + 332) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PlanarReflectionSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 37);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::PlanarReflectionSystem>(uint64_t a1)
{
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
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
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF10C8;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0;
  *(v1 + 332) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PlanarReflectionSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 37);

  re::ecs2::System::~System(a1);
}

uint64_t (***re::ecs2::PlanarReflectionSystem::willAddSceneToECSService(re::ecs2::PlanarReflectionSystem *this, re::EventBus **a2))(void)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for PlanarReflectionSystem to track parameter changes.", "eventBus", "willAddSceneToECSService", 63);
    _os_crash("assertion failure: (eventBus) An event bus is expected for PlanarReflectionSystem to track parameter changes.");
    __break(1u);
  }

  v10 = re::globalAllocators(this)[2];
  v4 = (*(*v10 + 32))(v10, 32, 0);
  *v4 = &unk_1F5CF1158;
  v4[1] = this;
  v4[2] = re::ecs2::PlanarReflectionSystem::componentWillDeactivateEventHandler;
  v4[3] = 0;
  v11 = v4;
  *&v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v2, v9, re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  *(&v7 + 1) = v5;
  re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addNew(this + 296, &v8, &v7);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v9);
}

uint64_t re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addNew(uint64_t a1, void *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

BOOL re::ecs2::PlanarReflectionSystem::willRemoveSceneFromECSService(_BOOL8 this, unint64_t a2)
{
  v8 = a2;
  if (*(this + 296))
  {
    v2 = this;
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = *(*(this + 304) + 4 * ((v3 ^ (v3 >> 31)) % *(this + 320)));
    if (v4 != 0x7FFFFFFF)
    {
      v5 = *(a2 + 288);
      v6 = *(this + 312);
      while (*(v6 + 40 * v4 + 8) != a2)
      {
        v4 = *(v6 + 40 * v4) & 0x7FFFFFFF;
        if (v4 == 0x7FFFFFFF)
        {
          return this;
        }
      }

      v7 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](this + 296, &v8);
      re::EventBus::unsubscribe(v5, *v7, v7[1]);
      return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2 + 296, &v8);
    }
  }

  return this;
}

void anonymous namespace::removeParamsFromSystemParameterBlock(_anonymous_namespace_ *this, re::MaterialManager *a2, int a3)
{
  SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(this, a2);
  if (SystemMaterialParameterBlock)
  {
    v7 = SystemMaterialParameterBlock;
    v8 = 0x3578C2CBE23A420;
    re::MaterialParameterBlock::removeTexture(SystemMaterialParameterBlock, &v8);
    v8 = 0;
    if (a3)
    {
      if (re::MaterialParameterBlock::isEmpty(v7))
      {
        re::MaterialManager::removeSystemMaterialParameterBlock(this, a2);
      }
    }
  }
}

void *re::ecs2::PlanarReflectionSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v127 = *MEMORY[0x1E69E9840];
  v4 = result[28];
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v8 = &unk_1EE1C6000;
      v100 = v7;
      do
      {
        v104 = *v6;
        if (*v6)
        {
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v122);
          v10 = *(v3 + 232);
          if (!v10)
          {
            re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 116);
            _os_crash("assertion failure: (m_renderManager) ");
            __break(1u);
LABEL_128:
            std::__throw_bad_variant_access[abi:nn200100]();
          }

          v11 = *(v10 + 112);
          if (v11)
          {
            v103 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v103 = 0;
          }

          v12 = (*(*v104[7] + 32))(v104[7]);
          v105 = re::ServiceLocator::service<re::TransformService>(v12);
          v13 = *(*(v3 + 232) + 24);
          if (v8[320] != -1)
          {
            dispatch_once(&re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken, &__block_literal_global_41);
          }

          if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking == 1)
          {
            v14 = re::ecs2::SceneComponentTable::get((v104 + 25), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v14)
            {
              v15 = *(v14 + 384);
              if (v15)
              {
                v16 = *(v14 + 400);
                v17 = 8 * v15;
                do
                {
                  v18 = *v16++;
                  v17 -= 8;
                }

                while (v17);
              }
            }
          }

          v19 = re::ecs2::SceneComponentTable::get((v104 + 25), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v19)
          {
            v20 = *(v19 + 384);
            if (v20)
            {
              v101 = v13;
              v21 = *(v19 + 400);
              v22 = (*(**(v3 + 256) + 24))(*(v3 + 256));
              v23 = (*(*v22 + 16))(v22);
              if (*(v23 + 31))
              {
                v24 = *(v23 + 31);
              }

              else
              {
                v24 = *(v23 + 4);
              }

              v120 = 0;
              v118 = 0u;
              v119 = 0u;
              v121 = 0x7FFFFFFFLL;
              v116.i32[0] = 0;
              v114 = 0u;
              v115 = 0u;
              *(v116.i64 + 4) = 0x7FFFFFFFLL;
              v26 = 8 * v20;
              v27 = v21;
              v28 = &v21[v20];
              do
              {
                v29 = *v27++;
                (*(*v22 + 8))(v124, v22, *(v29 + 16));
                if (v124[0])
                {
                  v30 = *&v124[8];
                }

                else
                {
                  v30 = 0;
                }

                *v124 = v30;
                v123[0] = 0;
                v31 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v114, v124, v123);
                ++*v31;
                v26 -= 8;
              }

              while (v26);
              v102 = v6;
              v32 = v116.i32[0];
              if (v116.i32[0])
              {
                v33 = 0;
                v34 = v115.i64[0];
                while (1)
                {
                  v35 = *v34;
                  v34 += 8;
                  if (v35 < 0)
                  {
                    break;
                  }

                  if (v116.u32[0] == ++v33)
                  {
                    LODWORD(v33) = v116.i32[0];
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v33) = 0;
              }

              if (v33 != v116.i32[0])
              {
                v36 = v115.i64[0];
                do
                {
                  v37 = v36 + 32 * v33;
                  v38 = *(v37 + 16);
                  v126 = 0;
                  memset(v124, 0, sizeof(v124));
                  v125 = 0;
                  re::DynamicArray<re::PlanarReflectionData>::setCapacity(v124, v38);
                  v41 = *(v37 + 8);
                  v40 = (v37 + 8);
                  v39 = v41;
                  ++v125;
                  v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
                  v43 = v42 ^ (v42 >> 31);
                  if (v118)
                  {
                    v44 = v43 % DWORD2(v119);
                    v45 = *(*(&v118 + 1) + 4 * v44);
                    if (v45 != 0x7FFFFFFF)
                    {
                      while (*(v119 + (v45 << 6) + 8) != v39)
                      {
                        v45 = *(v119 + (v45 << 6)) & 0x7FFFFFFF;
                        if (v45 == 0x7FFFFFFF)
                        {
                          goto LABEL_42;
                        }
                      }

                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    LODWORD(v44) = 0;
                  }

LABEL_42:
                  v46 = re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v118, v44, v43);
                  v47 = *v124;
                  *(v46 + 8) = *v40;
                  *(v46 + 16) = v47;
                  *(v46 + 24) = *&v124[8];
                  memset(v124, 0, sizeof(v124));
                  *(v46 + 48) = v126;
                  v126 = 0;
                  ++v125;
                  *(v46 + 40) = 1;
                  ++HIDWORD(v121);
LABEL_43:
                  v31 = re::DynamicArray<re::PlanarReflectionData>::deinit(v124);
                  if (v116.i32[0] <= (v33 + 1))
                  {
                    v48 = v33 + 1;
                  }

                  else
                  {
                    v48 = v116.i32[0];
                  }

                  v36 = v115.i64[0];
                  while (v48 - 1 != v33)
                  {
                    LODWORD(v33) = v33 + 1;
                    if ((*(v115.i64[0] + 32 * v33) & 0x80000000) != 0)
                    {
                      goto LABEL_51;
                    }
                  }

                  LODWORD(v33) = v48;
LABEL_51:
                  ;
                }

                while (v33 != v32);
              }

              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v114);
              do
              {
                v49 = *v21;
                v50 = *(*v21 + 16);
                re::TransformService::worldMatrix(v105, v50, 0, &v114);
                v128.columns[2] = v116;
                v108 = v117;
                v128.columns[0] = v114;
                v128.columns[1] = v115;
                v129 = __invert_f3(v128);
                v51 = vzip2q_s32(v129.columns[0], v129.columns[2]);
                v52 = vzip1q_s32(vzip1q_s32(v129.columns[0], v129.columns[2]), v129.columns[1]);
                v129.columns[0] = vtrn2q_s32(v129.columns[0], v129.columns[1]);
                v129.columns[0].i32[2] = v129.columns[2].i32[1];
                v129.columns[0] = vmlaq_f32(vaddq_f32(v129.columns[0], vmulq_f32(v52, 0)), 0, vzip1q_s32(v51, vdupq_laneq_s32(v129.columns[1], 2)));
                v129.columns[1] = vmulq_f32(v129.columns[0], v129.columns[0]);
                v129.columns[2].f32[0] = v129.columns[1].f32[2] + vaddv_f32(*v129.columns[1].f32);
                *v129.columns[1].f32 = vrsqrte_f32(v129.columns[2].u32[0]);
                *v129.columns[1].f32 = vmul_f32(*v129.columns[1].f32, vrsqrts_f32(v129.columns[2].u32[0], vmul_f32(*v129.columns[1].f32, *v129.columns[1].f32)));
                v53 = vmulq_n_f32(v129.columns[0], vmul_f32(*v129.columns[1].f32, vrsqrts_f32(v129.columns[2].u32[0], vmul_f32(*v129.columns[1].f32, *v129.columns[1].f32))).f32[0]);
                if (v53.f32[0] != 0.0 && (v54 = fabsf(v53.f32[0]), v54 >= ((v54 + 1.0) * 0.00001)) || v53.f32[1] != 0.0 && (v55 = fabsf(v53.f32[1]), v55 >= ((v55 + 1.0) * 0.00001)) || v53.f32[2] != 0.0 && (v56 = fabsf(v53.f32[2]), v56 >= ((v56 + 1.0) * 0.00001)))
                {
                  if (!v49[5])
                  {
                    v106 = v53;
                    v57 = v3;
                    v58 = *(*(v3 + 232) + 208);
                    v123[0] = v58;
                    v113 = 5;
                    v112 = 115;
                    v111 = 2;
                    *v124 = 2;
                    TextureCompressionType = re::mtl::getTextureCompressionType(v123, &v111, &v112, &v113, v124);
                    v60 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
                    [v60 setStorageMode_];
                    if (([v60 respondsToSelector_] & 1) != 0 || objc_msgSend(v60, sel_methodSignatureForSelector_, sel_setCompressionType_))
                    {
                      [v60 setCompressionType_];
                    }

                    [v60 setTextureType_];
                    [v60 setWidth_];
                    [v60 setHeight_];
                    [v60 setPixelFormat_];
                    [v60 setMipmapLevelCount_];
                    [v60 setUsage_];
                    [v60 setSampleCount_];
                    [v60 setProtectionOptions_];
                    re::mtl::Device::makeTexture(&v110, v60, (*(v3 + 232) + 208));
                    v61 = *(v3 + 240);
                    v62 = v110;
                    v109 = v62;
                    re::AssetHelper::makeTextureMemoryAsset(v61, &v109, 0);
                    v63 = *(v49 + 2);
                    *(v49 + 2) = *v124;
                    *v124 = v63;
                    v64 = v49[6];
                    v49[6] = *&v124[16];
                    *&v124[16] = v64;
                    re::AssetHandle::~AssetHandle(v124);
                    if (v62)
                    {

                      v109 = 0;
                    }

                    if (v110)
                    {
                    }

                    v3 = v57;
                    if (v60)
                    {
                    }

                    v53 = v106;
                  }

                  v65 = vmulq_f32(v108, v53);
                  v53.f32[3] = -(v65.f32[2] + vaddv_f32(*v65.f32));
                  v107 = v53;
                  v66 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v49 + 4));
                  *&v124[16] = 0;
                  *v124 = v107;
                  if (*(v66 + 120))
                  {
                    goto LABEL_128;
                  }

                  NS::SharedPtr<MTL::Buffer>::operator=(&v124[16], (v66 + 112));
                  v67 = (*(*v22 + 8))(v123, v22, v50);
                  if (LOBYTE(v123[0]))
                  {
                    v68 = v123[1];
                  }

                  else
                  {
                    v68 = 0;
                  }

                  if (!v118 || (v69 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v68 ^ (v68 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v68 ^ (v68 >> 30))) >> 27)), v70 = *(*(&v118 + 1) + 4 * ((v69 ^ (v69 >> 31)) % DWORD2(v119))), v70 == 0x7FFFFFFF))
                  {
LABEL_78:
                    v71 = 0;
                  }

                  else
                  {
                    while (*(v119 + (v70 << 6) + 8) != v68)
                    {
                      v70 = *(v119 + (v70 << 6)) & 0x7FFFFFFF;
                      if (v70 == 0x7FFFFFFF)
                      {
                        goto LABEL_78;
                      }
                    }

                    v71 = v119 + (v70 << 6) + 16;
                  }

                  v72 = *(v71 + 8);
                  v73 = *(v71 + 16);
                  if (v73 >= v72)
                  {
                    v74 = v73 + 1;
                    if (v72 < v73 + 1)
                    {
                      if (*v71)
                      {
                        v75 = 2 * v72;
                        v76 = v72 == 0;
                        v77 = 8;
                        if (!v76)
                        {
                          v77 = v75;
                        }

                        if (v77 <= v74)
                        {
                          v78 = v74;
                        }

                        else
                        {
                          v78 = v77;
                        }

                        re::DynamicArray<re::PlanarReflectionData>::setCapacity(v71, v78);
                      }

                      else
                      {
                        re::DynamicArray<re::PlanarReflectionData>::setCapacity(v71, v74);
                        ++*(v71 + 24);
                      }
                    }

                    v73 = *(v71 + 16);
                  }

                  v79 = *(v71 + 32) + 32 * v73;
                  *v79 = *v124;
                  *(v79 + 16) = *&v124[16];
                  ++*(v71 + 16);
                  ++*(v71 + 24);
                }

                ++v21;
              }

              while (v21 != v28);
              v80 = re::ecs2::SceneComponentTable::get((v104 + 25), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              v7 = v100;
              v8 = &unk_1EE1C6000;
              if (v80)
              {
                v81 = *(v80 + 384);
                if (v81)
                {
                  v82 = *(v80 + 400);
                  v83 = 8 * v81;
                  do
                  {
                    v84 = *(*(*v82 + 16) + 312);
                    v85 = re::ecs2::EntityHandle::resolve((*v82 + 32), *(v3 + 40));
                    if (v85)
                    {
                      v86 = re::ecs2::EntityComponentCollection::get((v85 + 48), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                      if (v86)
                      {
                        v87 = re::AssetHandle::loadedAsset<re::TextureAsset>((v86 + 32));
                        if (v87)
                        {
                          v88 = v87;
                          v89 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v101, v84);
                          v123[0] = 0x3578C2CBE23A420;
                          re::MaterialParameterBlock::setTextureHandle(v89, v123, (v88 + 8), &v114);
                          v114.i64[0] = 0;
                          v123[0] = 0;
                        }
                      }
                    }

                    v82 += 8;
                    v83 -= 8;
                  }

                  while (v83);
                }
              }

              v90 = v120;
              if (v120)
              {
                v91 = 0;
                v92 = v119;
                v6 = v102;
                while (1)
                {
                  v93 = *v92;
                  v92 += 16;
                  if (v93 < 0)
                  {
                    break;
                  }

                  if (v120 == ++v91)
                  {
                    LODWORD(v91) = v120;
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v91) = 0;
                v6 = v102;
              }

              if (v91 != v120)
              {
                v94 = v119;
                v95 = v120;
                do
                {
                  v96 = v94 + (v91 << 6);
                  if (*(v96 + 32))
                  {
                    re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v124, v104, *(v96 + 8), v103);
                    v113 = *v124 >> 1;
                    v97 = **(re::RenderFrameData::stream((v103 + 33), &v113) + 48);
                    v98 = (*(v97 + 936))();
                    if (v124[0])
                    {
                      if (v124[0])
                      {
                      }
                    }

                    v95 = v120;
                    v94 = v119;
                  }

                  if (v95 <= v91 + 1)
                  {
                    v99 = v91 + 1;
                  }

                  else
                  {
                    v99 = v95;
                  }

                  while (v99 - 1 != v91)
                  {
                    LODWORD(v91) = v91 + 1;
                    if ((*(v94 + (v91 << 6)) & 0x80000000) != 0)
                    {
                      goto LABEL_122;
                    }
                  }

                  LODWORD(v91) = v99;
LABEL_122:
                  ;
                }

                while (v91 != v90);
              }

              re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v118);
            }
          }

          result = re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v122);
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  return result;
}

void re::ecs2::PlanarReflectionSystem::~PlanarReflectionSystem(re::ecs2::PlanarReflectionSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::PlanarReflectionSystem,REEventHandlerResult (re::ecs2::PlanarReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::PlanarReflectionSystem,REEventHandlerResult (re::ecs2::PlanarReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1158;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PlanarReflectionSystem,REEventHandlerResult (re::ecs2::PlanarReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1158;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::DynamicArray<re::PlanarReflectionData>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PlanarReflectionData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 32 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = 0;
          v8 += 32;
          v11 += 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::PlanarReflectionData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 32 * v4;
        v6 = (v3 + 16);
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v6 += 4;
          v5 -= 32;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs232PlanarReflectionCaptureComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs233PlanarReflectionReceiverComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

double re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::PlanarReflectionData>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

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

uint64_t re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24), *(v17 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

BOOL re::ecs2::JiggleSystemComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, size_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v32, a5, 0);
  v20 = a4;
  v21 = *&v32[0];
  v22 = DWORD2(v32[0]);
  if (*&v32[0] != a5 || DWORD2(v32[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v9 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      v10 = a3 + 4;
      if (v9[30])
      {
        v11 = v9[46];
        if (v11 <= 0x10)
        {
          v23 = 0;
          memset(v32, 0, sizeof(v32));
          v17 = MEMORY[0x1E69E9C10];
          v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v24 = 136315906;
          v25 = "operator[]";
          v26 = 1024;
          if (v18)
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          v27 = 476;
          v28 = 2048;
          v29 = 16;
          v30 = 2048;
          v31 = v11;
          _os_log_send_and_compose_impl(v19, &v23, v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v20, v21);
          _os_crash_msg();
          __break(1u);
        }

        if (*(v9[47] + 1544))
        {
          v10 = a3 + 6;
        }

        else
        {
          v10 = a3 + 4;
        }
      }

      v12 = v20;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v12, v13, *v10);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

uint64_t re::ecs2::JiggleSystemComponentStateImpl::processUpdatingComponents(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = re::RenderManager::perFrameAllocator(*(*(a1 + 8) + 232));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v34, a5, 0);
  v9 = v34;
  v10 = v35;
  v11 = v35;
  v34 = a4;
  v35 = v9;
  v36 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v34);
      v32 = v13 + 232;
      v33 = 16;
      v14 = *(v13 + 392);
      v15 = *(v14 + 88);
      v16 = *(v14 + 96);
      v29 = v13 + 232;
      v30 = 16;
      v31 = 0;
      while (1)
      {
        re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v26, &v32);
        if (HIDWORD(v30) == v27 && v31 == v28)
        {
          break;
        }

        v17 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(&v29);
        if (v15 <= v17)
        {
          re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v15);
          result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v25);
          __break(1u);
          return result;
        }

        v19 = v16 + 168 * v17;
        v20 = (*(*v8 + 32))(v8, 4, 4);
        *v20 = *a2;
        ++*(v19 + 16);
        *(v19 + 152) = v20;
        re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v29);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v35);
    }

    while (v35 != a5 || v36 != 0xFFFF || HIWORD(v36) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

void *re::ecs2::JiggleSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 296), v6, 0);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v5);
}

void re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  re::StackScratchAllocator::StackScratchAllocator(v35);
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v29 = v35;
  v30 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v29, 0);
  v31 += 2;
  v6 = a1[26];
  if ((v6 & 0x3F) != 0)
  {
    v7 = (v6 >> 6) + 1;
  }

  else
  {
    v7 = v6 >> 6;
  }

  v34 = a1[26];
  v24[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v29, v7, v24);
  v8 = *(a2 + 8);
  v9 = *(v8 + 200);
  if (v9)
  {
    v10 = *(v8 + 216);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      v24[0] = v12;
      v13 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 7, v24);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v29, *(a1[8] + 16 * v13 + 8));
      v11 -= 8;
    }

    while (v11);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v29, (a1 + 21));
  v25 = 1;
  v26 = 0;
  v27 = 0;
  v24[0] = v35;
  v24[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v24, 0);
  v25 += 2;
  v14 = a1[26];
  if ((v14 & 0x3F) != 0)
  {
    v15 = (v14 >> 6) + 1;
  }

  else
  {
    v15 = v14 >> 6;
  }

  v28 = a1[26];
  v36 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v24, v15, &v36);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 21), &v29);
  v16 = v33;
  if (v31)
  {
    v16 = &v32;
  }

  v17 = v30;
  if ((v30 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 0;
    while (1)
    {
      v20 = *v16++;
      v19 = v20;
      if (v20)
      {
        break;
      }

      v18 -= 64;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }

    v21 = __clz(__rbit64(v19));
    if (v21 + 1 != v18)
    {
      FirstBitSet = v21 - v18;
      do
      {
        v23 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, FirstBitSet);
        if (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::update(v23, a2, a3))
        {
          re::DynamicBitset<unsigned long long,64ul>::setBit(v24, FirstBitSet);
        }

        else
        {
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v24, FirstBitSet);
        }

        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v29, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_23:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 21), v24);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  if (v24[0] && (v25 & 1) == 0)
  {
    (*(*v24[0] + 40))();
  }

  if (v29 && (v31 & 1) == 0)
  {
    (*(*v29 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v35);
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::addScene(unint64_t a1, uint64_t a2)
{
  v43 = a2;
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 144);
    }

    else
    {
      v6 = *(a1 + 152);
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
    v7 = (a1 + 144);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 152);
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
    *&v35 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 120, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v35);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::init(v12, a1, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v43, &v35);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 120, v35);
    v13 = v35;
    goto LABEL_43;
  }

LABEL_17:
  v35 = 0u;
  *&v36 = 0;
  v37 = 0u;
  v38 = 0u;
  *(&v36 + 1) = -1;
  v39 = 0;
  v40 = 1;
  v41 = 0uLL;
  v42 = 0uLL;
  v14 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::addUninitialized(a1);
  v15 = v36;
  *(v14 + 48) = 0;
  *(v14 + 16) = v15;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v14 + 56, &v38 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v35);
  v17 = *(a1 + 40);
  if (!v17)
  {
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
    return result;
  }

  v18 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v17 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::init(v18, a1, v43);
  v34 = *(a1 + 40) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v43, &v34);
  v19 = *(a1 + 40);
  v20 = *(a1 + 160);
  if ((v19 & 0x3F) != 0)
  {
    v21 = (v19 >> 6) + 1;
  }

  else
  {
    v21 = v19 >> 6;
  }

  *(a1 + 160) = v19;
  *&v35 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 120), v21, &v35);
  if (v19 && v20 > v19)
  {
    v22 = 63;
    v23 = *(a1 + 160) & 0x3FLL;
    if (v23 && v23 != 63)
    {
      v22 = ~(-1 << v23);
    }

    if (*(a1 + 136))
    {
      v24 = a1 + 144;
    }

    else
    {
      v24 = *(a1 + 152);
    }

    *(v24 + 8 * *(a1 + 128) - 8) &= v22;
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 208);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 208) = v25;
  *&v35 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 168), v27, &v35);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 208) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 184))
    {
      v30 = a1 + 192;
    }

    else
    {
      v30 = *(a1 + 200);
    }

    *(v30 + 8 * *(a1 + 176) - 8) &= v28;
  }

  v13 = v34;
LABEL_43:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 168, v13);
  if (*(a1 + 232) == 1)
  {
    v32 = *(a1 + 216);
    v33 = *(v43 + 376);
    LOWORD(v35) = 257;
    DWORD1(v35) = 1023969417;
    BYTE8(v35) = 0;
    re::ecs2::System::setTaskOptions(v32, v33, &v35);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  }

  return result;
}

uint64_t re::ecs2::JiggleSystem::willRemoveSceneFromECSService(re::ecs2::JiggleSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 44, &v15);
  if (result != -1)
  {
    v4 = *(this + 45) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 416, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 464, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 352, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_JiggleSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_268))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9038, "JiggleSystem");
    __cxa_guard_release(&_MergedGlobals_268);
  }

  return &unk_1EE1A9038;
}

void re::ecs2::initInfo_JiggleSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x36A7507F0523F10ELL;
  v8[1] = "JiggleSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_JiggleSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::JiggleSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::JiggleSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::JiggleSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::JiggleSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::JiggleSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::JiggleSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::JiggleSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::JiggleSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

void re::ecs2::BasicComponentStateImpl<re::ecs2::MeshDeformationComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  if (v3)
  {
    v5 = 24;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v5), v3);
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

    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a2, v10, v6, 0);
  }
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::MeshDeformationComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::JiggleSystem::~JiggleSystem(re::ecs2::JiggleSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 224);
  v7 = a1[3];
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v7);
  if (*(v8 + 40))
  {
    v9 = (*(*v6 + 24))(v6, a2, a1, v7, v8, a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  v11 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v10);
  if (*(v11 + 40))
  {
    v9 = v9 | (*(*v6 + 32))(v6, a2, a1, v10, v11, a3);
  }

  v12 = a1[6];
  v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v12);
  if (*(v13 + 40))
  {
    return v9 | (*(*v6 + 40))(v6, a2, a1, v12, v13, a3);
  }

  return v9;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF12A8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF1300;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF1358;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF13B0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF12A8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF1300;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF1358;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF13B0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF12A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF12A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1300;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1300;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1358;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1358;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF13B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF13B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 112 * (v2 & 3);
}

void *re::ecs2::allocInfo_AudioMixGroupsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_269, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_269))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A90E8, "AudioMixGroupsComponent");
    __cxa_guard_release(&_MergedGlobals_269);
  }

  return &unk_1EE1A90E8;
}

void re::ecs2::initInfo_AudioMixGroupsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xAE6F5221A4A0CBC6;
  v20[1] = "AudioMixGroupsComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A90D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A90D0))
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
    qword_1EE1A90D8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "mixGroups";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A90E0 = v18;
    __cxa_guard_release(&qword_1EE1A90D0);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A90D8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioMixGroupsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioMixGroupsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioMixGroupsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioMixGroupsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223AudioMixGroupsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

double re::internal::defaultConstruct<re::ecs2::AudioMixGroupsComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF1408;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioMixGroupsComponent>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF1408;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *(v1 + 116) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::ecs2::AudioMixGroupsComponent::addOrReplaceMixGroup(re::ecs2::AudioMixGroupsComponent *this, uint64_t a2, const char *a3, float a4, float a5, char a6)
{
  v29 = 0;
  *v30 = 0;
  v27 = 0u;
  memset(v28, 0, 28);
  *&v30[4] = xmmword_1E30474D0;
  *&v30[28] = 0;
  *&v30[20] = 0;
  *&v30[36] = 1;
  v12 = strlen(a3);
  v31[0] = a3;
  v31[1] = v12;
  re::DynamicString::operator=(&v24, v31);
  v13 = 15.0;
  if (a4 <= 15.0)
  {
    v13 = a4;
  }

  *&v30[24] = fmaxf(v13, -60.0);
  *&v30[28] = *&v30[24];
  *&v30[20] = 0;
  *&v30[12] = 0;
  ++*&v30[36];
  v30[0] = a6;
  *&v30[16] = a5;
  *&v27 = a2;
  re::DynamicString::DynamicString(v17, &v24);
  v17[2] = v27;
  re::DynamicArray<char const*>::DynamicArray(v18, v28);
  v21 = *v30;
  v22 = *&v30[16];
  v23 = *&v30[32];
  re::ecs2::AudioMixGroupsComponent::updateMixGroupInMixGroupsStructure(this, v17);
  if (v18[0])
  {
    if (v20)
    {
      (*(*v18[0] + 40))();
    }

    v20 = 0;
    memset(v18, 0, sizeof(v18));
    ++v19;
  }

  if (*&v17[0])
  {
    if (BYTE8(v17[0]))
    {
      (*(**&v17[0] + 40))();
    }

    memset(v17, 0, 32);
  }

  if (*&v28[0])
  {
    if (v29)
    {
      (*(**&v28[0] + 40))(*&v28[0], v29, v14, v15);
    }

    v29 = 0;
    memset(v28, 0, 24);
    ++DWORD2(v28[1]);
  }

  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))(v24, v26, v14, v15);
    }
  }

  return result;
}

void re::ecs2::AudioMixGroupsComponent::updateMixGroupInMixGroupsStructure(const re::ecs2::Component *a1, uint64_t a2)
{
  v4 = *(a2 + 124);
  v5 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, (a2 + 32));
  if (v5)
  {
    v6 = *(v5 + 124);
    if (v4 <= v6 + 1)
    {
      v4 = v6 + 1;
    }
  }

  *(a2 + 124) = v4;
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1 + 32, (a2 + 32), a2);

  re::ecs2::AudioPlayerComponent::markDirtyAndMarkDirtyForNetwork(a1);
}

BOOL re::ecs2::AudioMixGroupsComponent::isMixGroupGainDirty(re::ecs2::AudioMixGroupsComponent *this, uint64_t a2)
{
  v6 = a2;
  v3 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v6);
  v4 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, &v6);
  result = 1;
  if (v3)
  {
    if (v4)
    {
      return *v4 != *(v3 + 124);
    }
  }

  return result;
}

void re::ecs2::AudioMixGroupsComponent::~AudioMixGroupsComponent(re::ecs2::AudioMixGroupsComponent *this)
{
  *this = &unk_1F5CF1408;
  v2 = (this + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 10);
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioMixGroupsComponent::~AudioMixGroupsComponent(this);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223AudioMixGroupsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_DrawableQueueSyncComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_270))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A91A8, "DrawableQueueSyncComponent");
    __cxa_guard_release(&_MergedGlobals_270);
  }

  return &unk_1EE1A91A8;
}

void re::ecs2::initInfo_DrawableQueueSyncComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x4E59B8C38DB250DELL;
  v24[1] = "DrawableQueueSyncComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1A9180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9180))
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
    qword_1EE1A9190 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_int(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "bestToPresentIndex";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A9198 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_AssetHandle(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "textureHandle";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A91A0 = v22;
    __cxa_guard_release(&qword_1EE1A9180);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A9190;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226DrawableQueueSyncComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ecs2::DrawableQueueSyncComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CBDA20;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void *re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::DrawableQueueSyncComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CBDA20;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_DrawableQueueSyncSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9188))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9238, "DrawableQueueSyncSystem");
    __cxa_guard_release(&qword_1EE1A9188);
  }

  return &unk_1EE1A9238;
}

void re::ecs2::initInfo_DrawableQueueSyncSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x61AC455877C2D7FALL;
  v8[1] = "DrawableQueueSyncSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x26000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_DrawableQueueSyncSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DrawableQueueSyncSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DrawableQueueSyncSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a3 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 40);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncSystem>(uint64_t *a1)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 40);

  re::ecs2::System::~System(a1);
}

_anonymous_namespace_ *re::ecs2::DrawableQueueSyncSystem::willAddSystemToECSService(re::ecs2::DrawableQueueSyncSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 37) = re::ServiceLocator::serviceOrNull<re::AssetService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::DrawableQueueService>(v3);
  *(this + 38) = result;
  return result;
}

double re::ecs2::DrawableQueueSyncSystem::willRemoveSystemFromECSService(re::ecs2::DrawableQueueSyncSystem *this)
{
  *(this + 38) = 0;
  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  return result;
}

_BYTE *re::ecs2::DrawableQueueSyncSystem::willAddSceneToECSService(re::ecs2::DrawableQueueSyncSystem *this, re::ecs2::Scene *a2)
{
  v5 = a2;
  result = (*(**(this + 5) + 304))(*(this + 5), *(a2 + 47));
  if (result[8] != 2)
  {
    re::ecs2::BasicComponentStates<re::ecs2::DrawableQueueSyncComponent>::addScene(this + 320, a2);
    result = re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 560, &v5);
    if (v5)
    {
      result = *(this + 38);
      if (result)
      {
        return (*(*result + 24))(result);
      }
    }
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::DrawableQueueSyncComponent>::addScene(unint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 144);
    }

    else
    {
      v6 = *(a1 + 152);
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
    v7 = (a1 + 144);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 152);
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 120, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::init(v12, a1, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 120, v44);
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
  v14 = *(a1 + 40);
  *&v51 = 0;
  v15 = *(a1 + 8);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,4ul>::setBucketsCapacity(a1, (v14 + 4) >> 2);
    v15 = *(a1 + 8);
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

  if (*(a1 + 16))
  {
    v16 = a1 + 24;
  }

  else
  {
    v16 = *(a1 + 32);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
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
  v23 = *(a1 + 40);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::init(v24, a1, v52);
  *&v62[0] = *(a1 + 40) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v52, v62);
  v25 = *(a1 + 40);
  v26 = *(a1 + 160);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 160) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 120), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 160) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 136))
    {
      v30 = a1 + 144;
    }

    else
    {
      v30 = *(a1 + 152);
    }

    *(v30 + 8 * *(a1 + 128) - 8) &= v28;
  }

  v31 = *(a1 + 40);
  v32 = *(a1 + 208);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 208) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 168), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 208) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 184))
    {
      v36 = a1 + 192;
    }

    else
    {
      v36 = *(a1 + 200);
    }

    *(v36 + 8 * *(a1 + 176) - 8) &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 168, v13);
  if (*(a1 + 232) == 1)
  {
    v38 = *(a1 + 216);
    v39 = *(v52 + 376);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  }

  return result;
}

uint64_t re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

uint64_t re::ecs2::DrawableQueueSyncSystem::willRemoveSceneFromECSService(re::ecs2::DrawableQueueSyncSystem *this, re::ecs2::Scene *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v44 = a2;
  *&v54[0] = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 47, v54);
  if (v3 != -1)
  {
    v4 = *(this + 48) + 16 * v3;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 440, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 488, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 320, *(v4 + 8));
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

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 376, v54);
  }

  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 560, &v44);
  if (v44)
  {
    v15 = *(this + 38);
    if (v15)
    {
      (*(*v15 + 32))(v15);
    }
  }

  v16 = *(this + 148);
  if (v16)
  {
    v17 = 0;
    v18 = (*(this + 72) + 8);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(this + 148);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = *(this + 72);
    do
    {
      v21 = *(v20 + 24 * v17 + 16);
      if (v21 && v21 != v44)
      {
        v23 = *(this + 38);
        if (v23)
        {
          return (*(*v23 + 24))(v23);
        }
      }

      if (v16 <= v17 + 1)
      {
        v24 = v17 + 1;
      }

      else
      {
        v24 = *(this + 148);
      }

      while (v24 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(v20 + 24 * v17 + 8) & 0x80000000) != 0)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v17) = v24;
LABEL_36:
      ;
    }

    while (v17 != v16);
  }

  v25 = (*(**(this + 5) + 288))(*(this + 5)) + 120;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v54, v25, 0);
  v27 = *&v54[0];
  v42 = *&v54[0];
  LODWORD(v43) = DWORD2(v54[0]);
  v28 = WORD4(v54[0]);
  v29 = HIWORD(DWORD2(v54[0]));
  if (v25 != *&v54[0] || WORD4(v54[0]) != 0xFFFF || v29 != 0xFFFF)
  {
    while (1)
    {
      v32 = v29;
      v33 = *(v27 + 16);
      if (v33 <= v29)
      {
        v45 = 0;
        memset(v54, 0, sizeof(v54));
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        v49 = 797;
        v50 = 2048;
        v51 = v32;
        v52 = 2048;
        v53 = v33;
        _os_log_send_and_compose_impl(v41, &v45, v54, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v42, v43);
        _os_crash_msg();
        __break(1u);
      }

      v34 = *(*(v27 + 32) + 16 * v29) + 240 * v28;
      v35 = *(v34 + 200);
      if (v35)
      {
        break;
      }

LABEL_53:
      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v42);
      v27 = v42;
      v28 = v43;
      v29 = WORD1(v43);
      if (v42 == v25 && v43 == 0xFFFF && WORD1(v43) == 0xFFFF)
      {
        return result;
      }
    }

    v36 = *(v34 + 216);
    v37 = 8 * v35;
    while (1)
    {
      if (*v36 != v44 && *((*(**(this + 5) + 304))(*(this + 5), *(*v36 + 376)) + 8) != 2)
      {
        v38 = *v36;
        if (*(*v36 + 56))
        {
          *&v54[0] = *v36;
          re::ecs2::BasicComponentStates<re::ecs2::DrawableQueueSyncComponent>::addScene(this + 320, v38);
          re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 560, v54);
          if (*&v54[0])
          {
            v23 = *(this + 38);
            if (v23)
            {
              return (*(*v23 + 24))(v23);
            }
          }
        }
      }

      ++v36;
      v37 -= 8;
      if (!v37)
      {
        goto LABEL_53;
      }
    }
  }

  return result;
}

void re::ecs2::DrawableQueueSyncSystem::update(void *a1, uint64_t a2, uint64_t a3)
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
  v5 = a1[66];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[66];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[48] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 61));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[66];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[66];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 61), &v36);
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 40), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 61), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 40));
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

BOOL re::ecs2::DrawableQueueSyncComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v47, a5, 0);
  v8 = *&v47[0];
  v35 = a4;
  v36 = *&v47[0];
  v37 = DWORD2(v47[0]);
  v9 = WORD4(v47[0]);
  v10 = HIWORD(DWORD2(v47[0]));
  if (*&v47[0] != a5 || WORD4(v47[0]) != 0xFFFF || v10 != 0xFFFF)
  {
    do
    {
      v13 = v10;
      v14 = *(v8 + 16);
      if (v14 <= v10)
      {
        v38 = 0;
        memset(v47, 0, sizeof(v47));
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v42 = 797;
        v43 = 2048;
        v44 = v13;
        v45 = 2048;
        v46 = v14;
        _os_log_send_and_compose_impl(v34, &v38, v47, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v35, v36);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(*(*(v8 + 32) + 16 * v10) + 8 * v9);
      v16 = *(v15 + 40);
      if (v16)
      {
        v17 = atomic_load((v16 + 896));
        if (v17 == 2)
        {
          v18 = re::AssetHandle::loadedAsset<re::TextureAsset>((v15 + 32));
          v19 = *(v18 + 56);
          if (v19 && *(v19 + 295) == 1)
          {
            v20 = 0;
            v21 = 3;
            atomic_compare_exchange_strong((*(*(v19 + 432) + 32) + 16 * *(v15 + 28) + 32), &v21, 2u);
            v22 = atomic_load((*(*(*(v18 + 56) + 432) + 32) + 16 * *(v15 + 28) + 40));
            v23 = *(*(v18 + 56) + 432);
            do
            {
              v24 = atomic_load((*(v23 + 32) + v20 + 32));
              v25 = atomic_load((*(v23 + 32) + v20 + 40));
              if (v24 == 3 && v25 < v22)
              {
                v27 = 3;
                atomic_compare_exchange_strong((*(v23 + 32) + v20 + 32), &v27, 2u);
              }

              v20 += 16;
            }

            while (v20 != 48);
          }

          v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v36);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v35, v28, *(a3 + 32));
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v36);
      v8 = v36;
      v9 = v37;
      v10 = HIWORD(v37);
    }

    while (v36 != a5 || v37 != 0xFFFF || HIWORD(v37) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::DrawableQueueSyncComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DrawableQueueSyncComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::DrawableQueueSyncSystem::~DrawableQueueSyncSystem(re::ecs2::DrawableQueueSyncSystem *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 40);

  re::ecs2::System::~System(this);
}

{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 40);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226DrawableQueueSyncComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 8;
  *(a2 + 8) = 0;
  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF1588;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF15E0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF1638;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF1690;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF1588;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF15E0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF1638;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF1690;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1588;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1588;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF15E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF15E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1638;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1638;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1690;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1690;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::ecs2::introspect_AlchemistAnimationState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A92D0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A92D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A92D8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A9338, "AlchemistAnimationState", 1, 1, 1, 1);
      qword_1EE1A9338 = &unk_1F5D0C658;
      qword_1EE1A9378 = &re::ecs2::introspect_AlchemistAnimationState(BOOL)::enumTable;
      dword_1EE1A9348 = 9;
      __cxa_guard_release(&qword_1EE1A92D8);
    }

    if (_MergedGlobals_271)
    {
      break;
    }

    _MergedGlobals_271 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A9338, a2);
    v37 = 0x984AC611EA72F5FELL;
    v38 = "AlchemistAnimationState";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A9378;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1A9358 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1A92D0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Idle";
      qword_1EE1A92F0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Preparing";
      qword_1EE1A92F8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Animating";
      qword_1EE1A9300 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Ending";
      qword_1EE1A9308 = v35;
      __cxa_guard_release(&qword_1EE1A92D0);
    }
  }
}
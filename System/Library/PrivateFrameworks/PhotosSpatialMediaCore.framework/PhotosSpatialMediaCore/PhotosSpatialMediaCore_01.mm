uint64_t sub_1D8BC350C(int *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  dword_1ECAA47A8 = v1;
  return result;
}

uint64_t static SpatialPhoto.Camera.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    v5 = 0;
    return v5 & 1;
  }

  v5 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return v5 & 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_21;
    }
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 48), *(a2 + 48)), vceqq_f32(*(a1 + 32), *(a2 + 32))), vandq_s8(vceqq_f32(*(a1 + 64), *(a2 + 64)), vceqq_f32(*(a1 + 80), *(a2 + 80))))) & 0x80000000) == 0 || (v6 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 112), *(a2 + 112)), vceqq_f32(*(a1 + 96), *(a2 + 96))), vceqq_f32(*(a1 + 128), *(a2 + 128))), v6.i32[3] = v6.i32[2], (vminvq_u32(v6) & 0x80000000) == 0) || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 160), *(a2 + 160)), vceqq_f32(*(a1 + 144), *(a2 + 144))), vandq_s8(vceqq_f32(*(a1 + 176), *(a2 + 176)), vceqq_f32(*(a1 + 192), *(a2 + 192))))) & 0x80000000) == 0)
  {
LABEL_21:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 0;
  if (vmovn_s64(vceqq_s64(*(a1 + 208), *(a2 + 208))).u8[0])
  {
    v8.i64[0] = *(a1 + 224);
    v8.i64[1] = *(a1 + 216);
    v9.i64[0] = *(a2 + 224);
    v9.i64[1] = *(a2 + 216);
    v10 = vmovn_s64(vceqq_s64(v8, v9));
    if (v10.i8[4] & 1) != 0 && (v10.i8[0])
    {
      v5 = vmovn_s64(vceqq_s64(*(a1 + 224), *(a2 + 224))).i8[4];
    }
  }

  return v5 & 1;
}

uint64_t sub_1D8BC36D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 240))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BC36F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 240) = v3;
  return result;
}

double sub_1D8BC3768()
{
  v1 = 0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *v0;
  v6 = v2;
  v7 = 2.0 / v5;
  v8 = *(v0 + 232);
  v9 = vcvts_n_f32_s64(v2, 1uLL);
  v10 = *(v0 + 224);
  v11 = v3 - v4;
  v12 = v3 / (v3 - v4);
  *&v13 = -(((vcvts_n_f32_s64(v10, 1uLL) + *(v0 + 208)) - vcvts_n_f32_s64(*v0, 1uLL)) * (2.0 / v5));
  *(&v13 + 1) = (2.0 / v6) * ((vcvts_n_f32_s64(v8, 1uLL) + *(v0 + 216)) - v9);
  DWORD2(v13) = 0;
  HIDWORD(v13) = 1.0;
  v14.i32[1] = 0;
  v14.i64[1] = 0;
  v14.f32[0] = v5 / v10;
  v15 = -(v4 * v3);
  v16.i32[0] = 0;
  v16.i64[1] = 0;
  v17 = v15 / v11;
  v29 = xmmword_1D8BF7190;
  v30 = v13;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  while (v1 != 4)
  {
    v16.f32[1] = v6 / v8;
    *(&v31 + v1 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v28[v1])), v16, *&v28[v1], 1), xmmword_1D8BF7190, v28[v1], 2), xmmword_1D8BF71A0, v28[v1], 3);
    ++v1;
  }

  v18 = 0;
  v19 = v7;
  LODWORD(v20) = 0;
  *(&v20 + 1) = -(2.0 / v6);
  *&v21 = __PAIR64__(1.0, -1.0);
  *(&v21 + 1) = __PAIR64__(1.0, LODWORD(v12));
  *&v22 = 0;
  *(&v22 + 1) = LODWORD(v17);
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v28[0] = LODWORD(v19);
  v28[1] = v20;
  v29 = v21;
  v30 = v22;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  while (v18 != 4)
  {
    *(&v31 + v18 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(v28[v18])), v24, *&v28[v18], 1), v25, v28[v18], 2), v26, v28[v18], 3);
    ++v18;
  }

  return *v31.i64;
}

uint64_t SpatialPhoto.DepthBufferMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.DepthBufferMode.description.getter()
{
  if (*v0)
  {
    return 0x6465726975716572;
  }

  else
  {
    return 0x6C616E6F6974706FLL;
  }
}

uint64_t SpatialPhoto.RenderDestinationResult.commandBuffer.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t SpatialPhoto.RenderDestinationResult.drawable.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t SpatialPhoto.RenderDestinationResult.init(commandBuffer:drawable:presentHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

Swift::Void __swiftcall SpatialPhoto.RenderDestinationResult.present()()
{
  v1 = (v0 + 16);
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    *v1 = 0;
    v1[1] = 0;
    v2();

    sub_1D8BB1504(v2, v3);
  }
}

uint64_t SpatialPhoto.RenderDestinationContext.colorTexture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 96) = a1;
  return result;
}

uint64_t SpatialPhoto.RenderDestinationContext.depthTexture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 104) = a1;
  return result;
}

void SpatialPhoto.RenderDestinationContext.init(renderPassDescriptor:commandBuffer:commandEncoder:commitHandler:presentHandler:stencilCompareFunction:shouldWriteDepth:shouldPerformSRGBConversion:scale:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, char a11, char a12)
{
  v19 = [a1 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = [v20 texture];

  v22 = [a1 depthAttachment];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 texture];

  swift_unknownObjectRetain();
  if (v21)
  {
    v25 = [v21 pixelFormat];
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = [v24 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  *a9 = [a2 device];
  *(a9 + 8) = v25;
  *(a9 + 16) = v26;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a8;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = v27;
  *(a9 + 88) = a12 & 1;
  *(a9 + 89) = a11 & 1;
  *(a9 + 96) = v21;
  *(a9 + 104) = v24;
  *(a9 + 112) = a10;
}

Swift::Void __swiftcall SpatialPhoto.RenderDestinationContext.commit()()
{
  v1 = (v0 + 56);
  v2 = *(v0 + 56);
  if (v2)
  {
    v3 = *(v0 + 64);
    *v1 = 0;
    v1[1] = 0;
    v2();

    sub_1D8BB1504(v2, v3);
  }
}

Swift::Void __swiftcall SpatialPhoto.RenderDestinationContext.present(additionalCommandBuffers:)(Swift::OpaquePointer additionalCommandBuffers)
{
  v2 = (v1 + 72);
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = *(v1 + 80);
    *v2 = 0;
    v2[1] = 0;
    v3(additionalCommandBuffers._rawValue);

    sub_1D8BB1504(v3, v4);
  }
}

uint64_t static SpatialPhoto.beginRenderSignpostInterval(for:)(uint64_t a1)
{
  v1 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1ECAA3E78);
  }

  v10 = sub_1D8BF0820();
  __swift_project_value_buffer(v10, qword_1ECAA4C20);
  sub_1D8BF0810();
  swift_unknownObjectRetain();
  sub_1D8BF07C0();
  v11 = sub_1D8BF0810();
  v12 = sub_1D8BF0C90();
  if (sub_1D8BF0CF0())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v11, v12, v14, "SpatialPhotoRender", "isAnimation=YES", v13, 2u);
    MEMORY[0x1DA723A30](v13, -1, -1);
  }

  (*(v3 + 16))(v7, v9, v1);
  sub_1D8BF0860();
  swift_allocObject();
  v15 = sub_1D8BF0850();
  (*(v3 + 8))(v9, v1);
  return v15;
}

uint64_t static SpatialPhoto.endRenderSignpostInterval(for:)(uint64_t a1)
{
  v1 = sub_1D8BF0830();
  OUTLINED_FUNCTION_3_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1ECAA3E78);
  }

  v13 = sub_1D8BF0820();
  __swift_project_value_buffer(v13, qword_1ECAA4C20);
  v14 = sub_1D8BF0810();
  sub_1D8BF0840();
  v15 = sub_1D8BF0C80();
  if (sub_1D8BF0CF0())
  {

    sub_1D8BF0870();

    if ((*(v3 + 88))(v6, v1) == *MEMORY[0x1E69E93E8])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v1);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v14, v15, v18, "SpatialPhotoRender", v16, v17, 2u);
    MEMORY[0x1DA723A30](v17, -1, -1);
  }

  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_1D8BC42CC()
{
  result = qword_1ECAA47B0;
  if (!qword_1ECAA47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47B0);
  }

  return result;
}

unint64_t sub_1D8BC4324()
{
  result = qword_1ECAA47B8;
  if (!qword_1ECAA47B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAA47C0, &qword_1D8BF7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47B8);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O15DepthBufferModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BC4618(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC4658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8BC46FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 116))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC473C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SpatialPhoto.PixelBufferRenderDestination.__allocating_init(size:renderScale:options:)(char *a1, double a2, double a3, double a4)
{
  v8 = swift_allocObject();
  SpatialPhoto.PixelBufferRenderDestination.init(size:renderScale:options:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SpatialPhoto.PixelBufferRenderDestination.init(size:renderScale:options:)(char *a1, double a2, double a3, double a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v10;
  *(v4 + 64) = 1;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = v10;
  *(v4 + 144) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 104) = 0;
  *(v4 + 160) = 257;
  *(v4 + 200) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 168) = 0;
  swift_unknownObjectWeakInit();
  v11 = MTLCreateSystemDefaultDevice();
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v11 newCommandQueue];
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v18 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v18);
    OUTLINED_FUNCTION_5_0(v19, 1);
LABEL_8:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1D8BC4BCC(v4 + 192);
    type metadata accessor for SpatialPhoto.PixelBufferRenderDestination();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v14 = v13;
  v23[0] = 0;
  CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, v12, 0, v23);
  if (!v23[0])
  {
    v21 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v21);
    OUTLINED_FUNCTION_5_0(v22, 6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v15 = v23[0];
  v16 = sub_1D8BF09B0();
  [v14 setLabel_];

  *(v4 + 128) = v12;
  *(v4 + 136) = v14;
  *(v4 + 152) = v15;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 66) = v9;
  v17 = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1D8BC59B4();
  if (v5)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v4;
}

unint64_t sub_1D8BC4B78()
{
  result = qword_1ECAA47D0;
  if (!qword_1ECAA47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47D0);
  }

  return result;
}

uint64_t sub_1D8BC4C40(double a1, double a2)
{
  result = swift_beginAccess();
  if (*(v2 + 16) != a1 || *(v2 + 24) != a2)
  {
    return sub_1D8BC5920();
  }

  return result;
}

double sub_1D8BC4C94()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1D8BC4CC4(double a1, double a2)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1D8BC4C40(v5, v6);
}

uint64_t sub_1D8BC4D08()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 40) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + 16);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC4D74(uint64_t a1)
{
  v1 = *a1;
  sub_1D8BC4CC4(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

void sub_1D8BC4DB4(double a1)
{
  swift_beginAccess();
  if (*(v1 + 32) != a1)
  {
    sub_1D8BC5920();
  }
}

double sub_1D8BC4E00()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return *(v0 + 32);
}

void sub_1D8BC4E30(double a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1D8BC4DB4(v3);
}

uint64_t sub_1D8BC4E70()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 32) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + 32);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC4EDC(uint64_t a1)
{
  v1 = *a1;
  sub_1D8BC4E30(*(*a1 + 24));

  free(v1);
}

uint64_t sub_1D8BC4F1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D8BC4FA4(v1, v2);
}

uint64_t sub_1D8BC4F5C()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D8BC4FA4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1D8BC5060()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
}

uint64_t sub_1D8BC5094(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void sub_1D8BC518C(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *a1 = *(v1 + 64);
}

void sub_1D8BC51CC(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v1 + 64) = v2;
}

void sub_1D8BC52BC(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 != *(v1 + 65))
  {
    *(v1 + 161) = 1;
  }
}

void sub_1D8BC530C(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *a1 = *(v1 + 65);
}

void sub_1D8BC534C(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 65);
  *(v1 + 65) = v2;
  v4[0] = v3;
  sub_1D8BC52BC(v4);
}

uint64_t sub_1D8BC5394()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 24) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + 65);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC5400(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D8BC534C(v3);

  free(v2);
}

uint64_t sub_1D8BC548C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  v6 = (a1 + 32);

  v8 = 0;
  while (1)
  {
    if (v8 == v4)
    {
      v9 = 0;
      v10 = 0;
      v8 = v4;
      if (!v5)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(v3 + 16))
    {
      goto LABEL_22;
    }

    v9 = *(v3 + 32 + 16 * v8);
    swift_unknownObjectRetain();
    if (!v5)
    {
      if (v9)
      {
LABEL_14:
        swift_unknownObjectRelease();
LABEL_15:
      }

      else
      {
        v10 = 0;
LABEL_17:

        if (!v10)
        {
          return result;
        }

        result = swift_unknownObjectRelease();
      }

      *(v1 + 161) = 1;
      return result;
    }

    ++v8;
LABEL_9:
    v10 = *v6;
    swift_unknownObjectRetain();
    if (!v9)
    {
      goto LABEL_17;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    --v5;
    v6 += 2;
    if (v9 != v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D8BC55CC()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
}

uint64_t sub_1D8BC5600(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
  sub_1D8BC548C(v3);
}

void (*sub_1D8BC5654())(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 32) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + 96);

  return sub_1D8BC56CC;
}

void sub_1D8BC56CC(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_1D8BC5600(v4);
  }

  else
  {
    sub_1D8BC5600(v3);
  }

  free(v2);
}

void sub_1D8BC5730(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D8BC57A0(v1);
}

void *sub_1D8BC5760()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void sub_1D8BC57A0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_1D8BC580C()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8BC5840(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v1 + 112) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC58AC()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8BC58E0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v1 + 120) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC5920()
{
  *(v0 + 144) = 0;

  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 200);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &protocol witness table for SpatialPhoto.PixelBufferRenderDestination, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8BC59B4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
LABEL_11:

    return v1;
  }

  v2 = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v4 = *(v0 + 32);
  v5 = round(v3 * v4);
  v6 = round(v4 * *(v0 + 24));
  _s14descr1F54466F9O15PixelBufferPoolCMa();
  v1 = sub_1D8BB3A9C(1111970369, v5, v6);
  v2[18] = v1;

  if (!v1)
  {
    v2[9] = 0;
    v2[10] = 0;
    v2[11] = 1;
    v10 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v10);
    OUTLINED_FUNCTION_5_0(v11, 5);
    return v1;
  }

  v8 = *(v1 + 24);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v1 + 32);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 < 9.22337204e18)
  {
    v2[9] = v8;
    v2[10] = v9;
    v2[11] = 1;
    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D8BC5B44()
{
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  v1 = *(v0 + 104);
  *(v0 + 104) = 0;

  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  *(v0 + 112) = 0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v0 + 120) = 0;
  swift_unknownObjectRelease();
  v2 = *(v0 + 144);
  if (v2)
  {
    CVPixelBufferPoolFlush(*(v2 + 16), 1uLL);
  }

  *(v0 + 161) = 1;
}

void sub_1D8BC5BD4()
{
  if (*(v0 + 160) == 1)
  {
    *(v0 + 160) = 0;
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = *(v0 + 200);
      ObjectType = swift_getObjectType();
      (*(v1 + 16))(v0, &protocol witness table for SpatialPhoto.PixelBufferRenderDestination, ObjectType, v1);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D8BC5C6C(char a1)
{
  sub_1D8BC5BD4();
  if (*(v1 + 161) == 1)
  {
    sub_1D8BC5D70(a1 & 1);
  }

  else
  {
    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v3 = sub_1D8BF08A0();
    __swift_project_value_buffer(v3, qword_1EE320A70);
    v4 = sub_1D8BF0880();
    v5 = sub_1D8BF0B80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D8BAF000, v4, v5, "Nothing to render, skipping", v6, 2u);
      MEMORY[0x1DA723A30](v6, -1, -1);
    }
  }
}

void sub_1D8BC5D70(int a1)
{
  v3 = v1;
  pixelBufferOut[7] = *MEMORY[0x1E69E9840];
  sub_1D8BC5BD4();
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v7 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v7);
    OUTLINED_FUNCTION_5_0(v8, 10);
    return;
  }

  v5 = v1[25];
  v6 = sub_1D8BC59B4();
  if (v2)
  {
LABEL_3:
    swift_unknownObjectRelease();
    return;
  }

  v9 = v6;
  if (v1[9] < 1 || v1[10] < 1)
  {
    v15 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v15);
    OUTLINED_FUNCTION_5_0(v16, 12);
    swift_unknownObjectRelease();
LABEL_27:

    return;
  }

  type metadata accessor for SpatialPhoto.CaptureManager();
  v10 = static SpatialPhoto.CaptureManager.start(_:device:)(0xD000000000000029, 0x80000001D8BF36C0, v1[16]);
  v11 = [v3[17] commandBuffer];
  if (!v11)
  {
    v17 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v17);
    OUTLINED_FUNCTION_5_0(v18, 3);
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

  HIDWORD(v200) = a1;
  v208 = v11;
  v12 = 0xE000000000000000;
  sub_1D8BF0DE0();

  v216[0] = 0xD000000000000029;
  v216[1] = 0x80000001D8BF36C0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  if (v3[6])
  {
    v13 = v3[5];
    __dst[0] = 23328;
    __dst[1] = 0xE200000000000000;
    MEMORY[0x1DA722A10](v13);
    MEMORY[0x1DA722A10](93, 0xE100000000000000);
    v14 = 23328;
    v12 = 0xE200000000000000;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1DA722A10](v14, v12);

  v19 = sub_1D8BF09B0();

  v27 = OUTLINED_FUNCTION_9_0(v20, sel_setLabel_, v21, v22, v23, v24, v25, v26, textureOut, v127, v130, buffer, v141, v145, v150, v154, v157, v161, v164, v168, v171, v176, v181, v185, v188, v193, v196, v200, v10, v208);
  [v27 v28];

  v29 = sub_1D8BF09B0();
  [0xD000000000000029 pushDebugGroup_];

  pixelBufferOut[0] = 0;
  v30 = *MEMORY[0x1E695E480];
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *(v9 + 16), pixelBufferOut);
  if (!pixelBufferOut[0] || PixelBuffer)
  {
    v43 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v43);
    OUTLINED_FUNCTION_5_0(v44, 7);
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v218 = 0;
  v32 = v3[19];
  v34 = v3[9];
  v33 = v3[10];
  v177 = pixelBufferOut[0];
  v35 = pixelBufferOut[0];
  v36 = v32;
  v37 = v35;
  v38 = CVMetalTextureCacheCreateTextureFromImage(v30, v36, v35, 0, MTLPixelFormatBGRA8Unorm_sRGB, v34, v33, 0, &v218);
  v39 = v205;
  if (!v218)
  {
    goto LABEL_25;
  }

  v40 = v38;
  v41 = v218;
  v42 = CVMetalTextureGetTexture(v41);
  if (!v42)
  {

    goto LABEL_24;
  }

  v172 = v41;
  if (v40)
  {

    swift_unknownObjectRelease();
LABEL_24:
    v39 = v205;
LABEL_25:
    v45 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v45);
    OUTLINED_FUNCTION_5_0(v46, 7);
    swift_unknownObjectRelease();

    if (v39)
    {
LABEL_26:
      sub_1D8BDB448();

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_79:

    goto LABEL_3;
  }

  v146 = v42;
  v47 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v48 = [v47 colorAttachments];
  v49 = [v48 objectAtIndexedSubscript_];

  if (!v49)
  {
    __break(1u);
    goto LABEL_82;
  }

  [v49 setLoadAction_];

  v50 = [v47 colorAttachments];
  v51 = [v50 objectAtIndexedSubscript_];

  if (!v51)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  [v51 setClearColor_];

  v52 = [v47 colorAttachments];
  v53 = [v52 objectAtIndexedSubscript_];

  if (!v53)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  swift_unknownObjectRetain();
  [v53 setTexture_];

  if (sub_1D8BC7164())
  {
    v54 = sub_1D8BC71A4();
    buffera = v37;
    v55 = [v47 depthAttachment];
    if (!v55)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v56 = v55;
    [v55 setTexture_];

    v57 = [v47 depthAttachment];
    if (!v57)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v58 = v57;
    [v57 setClearDepth_];

    v59 = [v47 depthAttachment];
    if (!v59)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v60 = v59;
    [v59 setLoadAction_];

    v61 = [v47 depthAttachment];
    if (!v61)
    {
LABEL_89:
      __break(1u);
      return;
    }

    v62 = v61;
    [v61 setStoreAction_];
    swift_unknownObjectRelease();

    v37 = buffera;
  }

  v63 = [v209 renderCommandEncoderWithDescriptor_];
  if (!v63)
  {
    swift_unknownObjectRelease();
    v82 = sub_1D8BC4B78();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v82);
    OUTLINED_FUNCTION_5_0(v83, 4);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_21:
    if (v205)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

  v189 = v47;
  v142 = v63;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v64 = *(v3[7] + 16);
  bufferb = v37;
  if (v64)
  {

    v65 = v182 + 40;
    do
    {

      v66 = sub_1D8BF09B0();

      [v142 insertDebugSignpost_];

      v65 += 16;
      --v64;
    }

    while (v64);
  }

  v67 = v189;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v68 = [v67 colorAttachments];
  v69 = [v68 objectAtIndexedSubscript_];

  if (!v69)
  {
    goto LABEL_84;
  }

  v70 = [v69 texture];

  v71 = [v67 depthAttachment];
  if (!v71)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v72 = v71;
  v131 = v67;
  v73 = [v71 texture];

  v74 = swift_unknownObjectRetain();
  if (v70)
  {
    v74 = [v70 pixelFormat];
    v81 = v74;
  }

  else
  {
    v81 = 0;
  }

  if (v73)
  {
    v84 = [v73 pixelFormat];
    v74 = swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0;
  }

  v85 = OUTLINED_FUNCTION_9_0(v74, sel_device, v75, v76, v77, v78, v79, v80, textureOuta, v128, v131, bufferb, v142, v146, v151, v155, v158, v162, v165, v9, v172, v177, v182, v186, v70, v194, v197, v201, v205, v209);
  __src[0] = [v85 v86];
  __src[1] = v81;
  __src[2] = v84;
  __src[3] = v132;
  __src[4] = v70;
  __src[5] = v143;
  __src[6] = 1;
  memset(&__src[7], 0, 32);
  LOWORD(__src[11]) = 256;
  __src[12] = v190;
  __src[13] = v73;
  LODWORD(__src[14]) = 1060320051;
  ObjectType = swift_getObjectType();
  memcpy(__dst, __src, 0x74uLL);
  (*(v5 + 24))(v214, v3, &protocol witness table for SpatialPhoto.PixelBufferRenderDestination, __dst, ObjectType, v5);
  v183 = *&v214[16];
  v191 = *v214;
  v152 = *&v214[48];
  v159 = *&v214[32];
  v88 = v214[64];
  v89 = v206;
  if (v214[64])
  {
    if (qword_1ECAA3D38 != -1)
    {
      swift_once();
    }

    v90 = &qword_1ECAA4790;
  }

  else
  {
    if (qword_1ECAA3D30 != -1)
    {
      swift_once();
    }

    v90 = &qword_1ECAA4788;
  }

  v91 = *MEMORY[0x1E6965CE8];
  v92 = *v90;
  CVBufferSetAttachment(bufferc, v91, v92, kCVAttachmentMode_ShouldPropagate);
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  if (*(v3[12] + 16))
  {
    memcpy(v214, __src, sizeof(v214));
    v212[0] = v191;
    v212[1] = v183;
    v212[2] = v159;
    v212[3] = v152;
    v213 = v88;
    sub_1D8BC6D80(v212, __dst);

    sub_1D8BC77DC(__src);
    memcpy(v216, __dst, sizeof(v216));
    v94 = v216[0];
  }

  else
  {

    sub_1D8BC77DC(__src);
    v94 = 0;
    v93 = OUTLINED_FUNCTION_6_0();
    v216[14] = 0;
  }

  [v143 endEncoding];
  memcpy(v214, &v216[1], 0x70uLL);
  if (v94)
  {
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    v95 = v3[12];
    *&v152 = *(v95 + 16);
    sub_1D8BC7848(v216, __dst);

    v96 = 0;
    *&v159 = v95;
    v97 = (v95 + 40);
    while (v152 != v96)
    {
      if (v96 >= *(v95 + 16))
      {
        __break(1u);
      }

      v98 = v96;
      v99 = *v97;
      *&v191 = swift_getObjectType();
      __dst[0] = v94;
      memcpy(&__dst[1], v214, 0x70uLL);
      *&v183 = *(v99 + 8);
      swift_unknownObjectRetain();
      (v183)(__dst, v191, v99);
      swift_unknownObjectRelease();
      v96 = v98 + 1;
      v97 += 2;
      v89 = v206;
    }

    sub_1D8BC81E4(v216, &qword_1ECAA47D8, &qword_1D8BF74D0);
  }

  __dst[4] = sub_1D8BC6F64;
  __dst[5] = 0;
  __dst[0] = MEMORY[0x1E69E9820];
  __dst[1] = 1107296256;
  __dst[2] = sub_1D8BC7104;
  __dst[3] = &block_descriptor_0;
  v100 = _Block_copy(__dst);
  v107 = OUTLINED_FUNCTION_9_0(v100, sel_addCompletedHandler_, v101, v102, v103, v104, v105, v106, textureOutb, 0, v132, bufferc, v143, v147, v152, *(&v152 + 1), v159, *(&v159 + 1), v166, v169, v173, v178, v183, *(&v183 + 1), v191, *(&v191 + 1), v198, v202, v206, v210);
  [v107 v108];
  _Block_release(v100);
  v109 = [v94 commit];
  if (!v129)
  {
    v116 = OUTLINED_FUNCTION_9_0(v109, sel_popDebugGroup, v110, v111, v112, v113, v114, v115, textureOutc, 0, v133, bufferd, v144, v148, v153, v156, v160, v163, v167, v170, v174, v179, v184, v187, v192, v195, v199, v203, v207, v211);
    [v116 v117];
    [v94 waitUntilScheduled];
    if (v204)
    {
      [v94 waitUntilCompleted];
    }

    v118 = [v94 status];
    swift_unknownObjectRelease();
    if (v118 == 5)
    {
      v119 = [v94 error];
      v120 = sub_1D8BC4B78();
      OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v120);
      *v121 = v119;
      swift_willThrow();
      sub_1D8BC81E4(v216, &qword_1ECAA47D8, &qword_1D8BF74D0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      sub_1D8BC81E4(v216, &qword_1ECAA47D8, &qword_1D8BF74D0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_2();
      swift_beginAccess();
      v122 = v3[13];
      v3[13] = v180;

      OUTLINED_FUNCTION_2_2();
      swift_beginAccess();
      v3[14] = v149;
      swift_unknownObjectRelease();
      *(v3 + 161) = 0;
    }

    if (v89)
    {
      sub_1D8BDB448();

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    goto LABEL_79;
  }

  swift_unknownObjectRelease();
  swift_willThrow();
  sub_1D8BC81E4(v216, &qword_1ECAA47D8, &qword_1D8BF74D0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v89)
  {
    sub_1D8BDB448();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1D8BC6D80(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1[1];
  v20 = *a1;
  v17 = a1[3];
  v18 = a1[2];
  v4 = *(a1 + 64);
  v5 = *v2;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = [v6 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (v10)
  {
    v11 = [v10 texture];

    v12 = [v6 depthAttachment];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 texture];

      swift_unknownObjectRetain();
      if (v11)
      {
        v15 = [v5 newFence];
        if (v14)
        {
LABEL_5:
          v16 = [v5 newFence];
          goto LABEL_8;
        }
      }

      else
      {
        v15 = 0;
        if (v14)
        {
          goto LABEL_5;
        }
      }

      v16 = 0;
LABEL_8:
      if (v15)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [v8 updateFence:v15 afterStages:2];
        if (!v16)
        {
LABEL_11:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *a2 = v7;
          *(a2 + 16) = v20;
          *(a2 + 32) = v19;
          *(a2 + 48) = v18;
          *(a2 + 64) = v17;
          *(a2 + 80) = v4;
          *(a2 + 88) = v11;
          *(a2 + 96) = v15;
          *(a2 + 104) = v14;
          *(a2 + 112) = v16;
          return;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if (!v16)
        {
          goto LABEL_11;
        }
      }

      swift_unknownObjectRetain();
      [v8 updateFence:v16 afterStages:2];
      swift_unknownObjectRelease();
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D8BC6F64(void *a1)
{
  if ([a1 status] == 5)
  {
    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v2 = sub_1D8BF08A0();
    __swift_project_value_buffer(v2, qword_1EE320A70);
    swift_unknownObjectRetain();
    oslog = sub_1D8BF0880();
    v3 = sub_1D8BF0B90();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      v6 = [a1 error];
      if (v6)
      {
        v6 = _swift_stdlib_bridgeErrorToNSError();
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      *(v4 + 4) = v6;
      *v5 = v7;
      _os_log_impl(&dword_1D8BAF000, oslog, v3, "SpatialPhoto.PixelBufferRenderDestination command buffer encountered error:%{public}@", v4, 0xCu);
      sub_1D8BC81E4(v5, &qword_1ECAA45F0, &qword_1D8BF7680);
      MEMORY[0x1DA723A30](v5, -1, -1);
      MEMORY[0x1DA723A30](v4, -1, -1);
    }
  }
}

uint64_t sub_1D8BC7104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC7164()
{
  if (*(v0 + 66))
  {
    return 1;
  }

  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1D8BC71A4()
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    if ((sub_1D8BC7164() & 1) == 0)
    {
      v7 = sub_1D8BC4B78();
      OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v7);
      OUTLINED_FUNCTION_5_0(v8, 9);
      return v1;
    }

    v2 = *(v0 + 66);
    v3 = [objc_opt_self() texture2DDescriptorWithPixelFormat:252 width:*(v0 + 72) height:*(v0 + 80) mipmapped:0];
    v4 = v3;
    if (v2)
    {
      v5 = 7;
    }

    else
    {
      v5 = 4;
    }

    if (v2)
    {
      v1 = 0;
    }

    else
    {
      v1 = 3;
    }

    [v3 setUsage_];
    [v4 setStorageMode_];
    v6 = [*(v0 + 128) newTextureWithDescriptor_];
    if (!v6)
    {
      v9 = sub_1D8BC4B78();
      OUTLINED_FUNCTION_65(&_s14descr1F54466F9O28PixelBufferRenderDestinationC5ErrorON, v9);
      OUTLINED_FUNCTION_5_0(v10, 8);

      return v1;
    }

    v1 = v6;

    *(v0 + 120) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

double sub_1D8BC7308@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v5 = *(v1 + 16);
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  result = *(v1 + 32);
  v4 = *(v1 + 72);
  *a1 = v5;
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v4;
  return result;
}

uint64_t sub_1D8BC7378(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_1D8BC73EC(v2, v1);
}

uint64_t sub_1D8BC73B4()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D8BC73EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v2 + 200) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC7444()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 40) = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 200);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v4;
  return OUTLINED_FUNCTION_10_0();
}

id *SpatialPhoto.PixelBufferRenderDestination.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D8BC4BCC((v0 + 24));
  return v0;
}

uint64_t SpatialPhoto.PixelBufferRenderDestination.__deallocating_deinit()
{
  SpatialPhoto.PixelBufferRenderDestination.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D8BC75A8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 200);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D8BC8248;
}

void sub_1D8BC7628(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + 200) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

void (*sub_1D8BC775C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 65);
  return sub_1D8BC5400;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8BC7848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA47D8, &qword_1D8BF74D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr1F54466F9O28PixelBufferRenderDestinationC7OptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F54466F9O28PixelBufferRenderDestinationC7OptionsVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22PhotosSpatialMediaCore0B5PhotoO28PixelBufferRenderDestinationC5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC80F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 8))
  {
    return (*a1 + 2147483635);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0xD)
  {
    return (v3 - 12);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BC8154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *result = 0;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

void *sub_1D8BC81A4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1D8BC81E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_6_0()
{
  result = 0.0;
  *&STACK[0x220] = 0u;
  *&STACK[0x230] = 0u;
  *&STACK[0x240] = 0u;
  *&STACK[0x250] = 0u;
  *&STACK[0x260] = 0u;
  *&STACK[0x270] = 0u;
  *&STACK[0x280] = 0u;
  return result;
}

double OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

__n128 SpatialPhoto.ComputeContext.init(commandBuffer:renderOutput:colorTexture:colorTextureFence:depthTexture:depthTextureFence:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *a7 = a1;
  *(a7 + 16) = result;
  *(a7 + 32) = v8;
  *(a7 + 48) = v9;
  *(a7 + 64) = v10;
  *(a7 + 80) = v11;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t sub_1D8BC8314(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC8354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8BC83E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8BF09E0();
  v4 = v3;
  if (v2 == sub_1D8BF09E0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D8BF0FD0();
  }

  return v7 & 1;
}

uint64_t sub_1D8BC846C(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6174726F70;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x654C6C6174726F70;
    }

    else
    {
      v4 = 0x6C6172656E6567;
    }

    if (v3 == 1)
    {
      v5 = 0xEC00000079636167;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6C6174726F70;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x654C6C6174726F70;
    }

    else
    {
      v2 = 0x6C6172656E6567;
    }

    if (a2 == 1)
    {
      v6 = 0xEC00000079636167;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8BF0FD0();
  }

  return v8 & 1;
}

uint64_t sub_1D8BC8580(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8BF0A50();
}

uint64_t sub_1D8BC8610(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8BF1070();
  MEMORY[0x1DA723030](a2);
  return sub_1D8BF1090();
}

uint64_t sub_1D8BC8654(uint64_t a1, char a2)
{
  sub_1D8BF1070();
  sub_1D8BF0A50();

  return sub_1D8BF1090();
}

float SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(_BYTE *a1, _BYTE *a2, float a3)
{
  v4 = a3;
  v5 = *a2;
  v7 = *(v3 + 12);
  v6 = *(v3 + 16);
  if (!*a1)
  {
    if (!*a2)
    {
      return v4;
    }

    if (v5 == 1)
    {
      v25 = a3 - v7;
      v26 = v6 - v7;
    }

    else
    {
      v25 = (1.0 / a3) - (1.0 / v7);
      v26 = (1.0 / v6) - (1.0 / v7);
    }

    return v25 / v26;
  }

  if (*a1 == 1)
  {
    if (!*a2)
    {
      return v7 + a3 * (v6 - v7);
    }

    if (v5 != 1)
    {
      OUTLINED_FUNCTION_0_5();
      v8 = OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_7_1(v8, v9, v10, v11, v12, v13, v14, v15, v44, *v47, *&v47[4], 0, 1);
      OUTLINED_FUNCTION_0_5();
      v16 = OUTLINED_FUNCTION_9_1();
      return OUTLINED_FUNCTION_7_1(v16, v17, v18, v19, v20, v21, v22, v23, v45, v48, v50, 2, 0);
    }

    return v4;
  }

  if (!*a2)
  {
    v25 = 1.0;
    v26 = (1.0 / v7) + (((1.0 / v6) - (1.0 / v7)) * v4);
    return v25 / v26;
  }

  if (v5 == 1)
  {
    OUTLINED_FUNCTION_0_5();
    v27 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_7_1(v27, v28, v29, v30, v31, v32, v33, v34, v44, *v47, *&v47[4], 0, 2);
    OUTLINED_FUNCTION_0_5();
    v35 = OUTLINED_FUNCTION_9_1();
    return OUTLINED_FUNCTION_7_1(v35, v36, v37, v38, v39, v40, v41, v42, v46, v49, v51, 1, 0);
  }

  return v4;
}

uint64_t SpatialPhoto.CameraController.Style.description.getter()
{
  v1 = 0x654C6C6174726F70;
  if (*v0 != 1)
  {
    v1 = 0x6C6172656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6174726F70;
  }
}

uint64_t SpatialPhoto.CameraController.Style.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D8BF0E90();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1D8BC8954@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialPhoto.CameraController.Style.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SpatialPhoto.CameraController.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.CameraController.Orientation.description.getter()
{
  if (*v0)
  {
    return 0x70616373646E616CLL;
  }

  else
  {
    return 0x7469617274726F70;
  }
}

uint64_t SpatialPhoto.CameraController.__allocating_init(style:)(char *a1)
{
  v2 = swift_allocObject();
  SpatialPhoto.CameraController.init(style:)(a1);
  return v2;
}

uint64_t SpatialPhoto.CameraController.init(style:)(char *a1)
{
  v2 = *a1;
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 513;
  type metadata accessor for SpatialPhoto.CameraParameters(0);
  swift_allocObject();
  *(v1 + 40) = sub_1D8BED144();
  *(v1 + 56) = 0;
  swift_unknownObjectWeakInit();
  static SpatialPhoto.CameraTechnique.none.getter(v1 + 80);
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  memcpy((v1 + 240), SPProjectiveTransform3DIdentity, 0x80uLL);
  *(v1 + 368) = 0;
  if (qword_1ECAA3DF0 != -1)
  {
    swift_once();
  }

  if (qword_1ECAAA808)
  {

    v3 = sub_1D8BF0E90();

    if (v3 < 3)
    {
      v2 = v3;
    }
  }

  *(v1 + 64) = v2;
  return v1;
}

uint64_t sub_1D8BC8C64(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0x654C6C6174726F70;
  v4 = 0xEC00000079636167;
  if (*(v1 + 64) != 1)
  {
    v3 = 0x6C6172656E6567;
    v4 = 0xE700000000000000;
  }

  if (*(v1 + 64))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6174726F70;
  }

  if (*(v1 + 64))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x654C6C6174726F70;
  v8 = 0xEC00000079636167;
  if (v2 != 1)
  {
    v7 = 0x6C6172656E6567;
    v8 = 0xE700000000000000;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6174726F70;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_1D8BF0FD0();

    if ((v12 & 1) == 0)
    {
      *(v1 + 64) = v2;

      return sub_1D8BCAA70();
    }
  }

  return result;
}

uint64_t (*sub_1D8BC8DC8(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_1D8BC8DF4;
}

uint64_t sub_1D8BC8DF4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return sub_1D8BC8C64(v2);
}

void sub_1D8BC8E90(const void *a1)
{
  v6 = *(v1 + 80);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = sub_1D8BF0C70();
  *&v7[1] = v3;
  *(&v7[1] + 1) = v4;
  *v10.vector.f64 = v6;
  v7[0] = v6;
  SPRotation3DGetEulerAngles(__dst, v10, v7, v5);
  PFKTraceSpatialPhotoSetCameraTechnique();
  memcpy(__dst, (v1 + 80), 0x78uLL);
  memcpy(v7, a1, 0x78uLL);
  if ((static SpatialPhoto.CameraTechnique.== infix(_:_:)(__dst, v7) & 1) == 0)
  {
    memcpy((v1 + 80), a1, 0x78uLL);

    sub_1D8BCA52C();
  }
}

uint64_t sub_1D8BC8F74(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v3;
  v3[15] = v1;
  memcpy(v3, (v1 + 80), 0x78uLL);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC8FD8(const void **a1)
{
  v1 = *a1;
  memcpy(v2, *a1, 0x78uLL);
  sub_1D8BC8E90(v2);

  free(v1);
}

void sub_1D8BC90A4(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 != *(v1 + 16))
  {
    sub_1D8BCAA70();
  }
}

void sub_1D8BC9128(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_5_1(v1 + 16);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4[0] = v3;
  sub_1D8BC90A4(v4);
}

uint64_t sub_1D8BC916C()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1(v0 + 16);
  *(v1 + 32) = *(v0 + 16);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC91CC(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D8BC9128(v3);

  free(v2);
}

unint64_t sub_1D8BC922C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8BC92D0();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1D8BC9260(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if ((a1 & 0x100000000) != 0)
  {
    if (*(v1 + 24))
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(v1 + 20) != *&a1)
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_7:
    sub_1D8BCAA70();
  }
}

void sub_1D8BC9300(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(v1 + 20);
  v3 = *(v1 + 20);
  *(v1 + 20) = a1;
  *(v1 + 24) = BYTE4(a1) & 1;
  v4 = OUTLINED_FUNCTION_4_1(v3);
  sub_1D8BC9260(v4);
}

uint64_t sub_1D8BC934C()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1(v0 + 20);
  v4 = *(v0 + 24);
  *(v1 + 32) = *(v0 + 20);
  *(v1 + 36) = v4;
  return OUTLINED_FUNCTION_10_0();
}

unint64_t sub_1D8BC93CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8BC94B4();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1D8BC9444(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if ((a1 & 0x100000000) != 0)
  {
    if (*(v1 + 32))
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(v1 + 28) != *&a1)
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_7:
    sub_1D8BCAA70();
  }
}

void sub_1D8BC94E4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(v1 + 28);
  v3 = *(v1 + 28);
  *(v1 + 28) = a1;
  *(v1 + 32) = BYTE4(a1) & 1;
  v4 = OUTLINED_FUNCTION_4_1(v3);
  sub_1D8BC9444(v4);
}

uint64_t sub_1D8BC9530()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1(v0 + 28);
  v4 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 28);
  *(v1 + 36) = v4;
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC95B0(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t))
{
  v3 = *a1;
  a3(*(*a1 + 32) | (*(*a1 + 36) << 32), a2);

  free(v3);
}

void sub_1D8BC967C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 != *(v1 + 33))
  {
    sub_1D8BCAA70();
  }
}

void sub_1D8BC9700(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_5_1(v1 + 33);
  v3 = *(v1 + 33);
  *(v1 + 33) = v2;
  v4[0] = v3;
  sub_1D8BC967C(v4);
}

uint64_t sub_1D8BC9744()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1(v0 + 33);
  *(v1 + 32) = *(v0 + 33);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC97A4(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D8BC9700(v3);

  free(v2);
}

uint64_t sub_1D8BC981C(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1D8BF0200();
}

uint64_t (*sub_1D8BC98C8(uint64_t a1))()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D8BCBBD4;
}

uint64_t sub_1D8BC9924(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8BCAA70();
  }

  return result;
}

uint64_t sub_1D8BC997C(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_1D8BC99E8(v2, v1);
}

uint64_t sub_1D8BC99E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_1(v2 + 48);
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC9A3C(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return OUTLINED_FUNCTION_10_0();
}

uint64_t sub_1D8BC9ABC()
{
  strcpy(__dst, "eyePosition: ");
  HIWORD(__dst[0].f64[1]) = -4864;
  v1 = sub_1D8BF0B20();
  MEMORY[0x1DA722A10](v1);

  MEMORY[0x1DA722A10](*&__dst[0].f64[0], *&__dst[0].f64[1]);

  memcpy(__dst, (v0 + 32), sizeof(__dst));
  OUTLINED_FUNCTION_11_0(vandq_s8(vandq_s8(vceqzq_f64(__dst[3]), vceqzq_f64(__dst[1])), vandq_s8(vceqq_f64(__dst[5], xmmword_1D8BF7700), vceqq_f64(__dst[7], xmmword_1D8BF7710))), vandq_s8(vandq_s8(vceqq_f64(__dst[2], xmmword_1D8BF7710), vceqq_f64(__dst[0], xmmword_1D8BF7700)), vandq_s8(vceqzq_f64(__dst[4]), vceqzq_f64(__dst[6]))));
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_1D8BF0DE0();

    v3 = sub_1D8BF0CC0();
    MEMORY[0x1DA722A10](v3);

    MEMORY[0x1DA722A10](0xD000000000000016, 0x80000001D8BF39E0);
  }

  if (*(v0 + 160) != 0.0)
  {
    sub_1D8BF0DE0();

    v4 = sub_1D8BF0AF0();
    MEMORY[0x1DA722A10](v4);

    MEMORY[0x1DA722A10](0xD000000000000017, 0x80000001D8BF3A00);
  }

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 8315;
}

BOOL sub_1D8BC9CC0(float64x2_t *a1, float64x2_t *a2)
{
  v3 = a1->f64[0] == a2->f64[0] && a1->f64[1] == a2->f64[1] && a1[1].f64[0] == a2[1].f64[0];
  result = 0;
  if (v3)
  {
    OUTLINED_FUNCTION_11_0(vandq_s8(vandq_s8(vceqq_f64(a1[5], a2[5]), vceqq_f64(a1[3], a2[3])), vandq_s8(vceqq_f64(a1[7], a2[7]), vceqq_f64(a1[9], a2[9]))), vandq_s8(vandq_s8(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[2], a2[2])), vandq_s8(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[8], a2[8]))));
    if (v6 < 0 && *(v4 + 160) == *(v5 + 160))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D8BC9D78@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v69 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v70 = *(a1 + 2);
  v74 = *(a1 + 3);
  v75 = *(a1 + 4);
  v7 = *(a1 + 80);
  v54 = *v3;
  memcpy(__dst, a2, 0x151uLL);
  v8 = *(v3 + 40);
  v51 = *(v3 + 208);
  v52 = *(v3 + 224);
  v55 = *(v3 + 240);
  v56 = *(v3 + 256);
  v57 = *(v3 + 272);
  v58 = *(v3 + 288);
  v60 = *(v3 + 304);
  v61 = *(v3 + 320);
  v64 = *(v3 + 336);
  v66 = *(v3 + 352);
  v9 = *(v3 + 368);
  if (qword_1ECAA3D70 != -1)
  {
    swift_once();
  }

  if (byte_1ECAAA79C == 1)
  {
    OUTLINED_FUNCTION_6_1(v3 + 28);
    if (*(v3 + 32) == 1)
    {
      OUTLINED_FUNCTION_16_0(__src);
      OUTLINED_FUNCTION_6_1(v3 + 16);
      v10 = OUTLINED_FUNCTION_14_0();
      v11 = *&v10;
      if ((v10 & 0x100000000) != 0)
      {
        HIDWORD(v53) = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *(v3 + 28);
    }
  }

  else
  {
    v11 = *&dword_1ECAAA798;
  }

  HIDWORD(v53) = 0;
  v11 = OUTLINED_FUNCTION_10_1(v11);
LABEL_10:
  if (qword_1ECAA3D68 != -1)
  {
    swift_once();
  }

  if (byte_1ECAAA794 != 1)
  {
    LODWORD(v12) = dword_1ECAAA790;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_1(v3 + 20);
  if (*(v3 + 24) != 1)
  {
    LODWORD(v12) = *(v3 + 20);
    goto LABEL_19;
  }

  if (!v7)
  {
    v13.n128_f64[0] = OUTLINED_FUNCTION_6_1(v3 + 33);
    LODWORD(v12) = __dst[28];
    if (__dst[29])
    {
      goto LABEL_38;
    }

    v50 = *(v3 + 33);
    LODWORD(__src[0]) = __dst[28];
    sub_1D8BCADE4(__src, __dst, v50, v79);
    LODWORD(v12) = v79[0];
LABEL_19:
    v14 = *&v12;
    v15 = OUTLINED_FUNCTION_10_1(*&v12);
    LOBYTE(__src[0]) = 0;
    LOBYTE(v79[0]) = 2;
    v13.n128_f32[0] = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(__src, v79, v15);
    v16 = 0;
    LODWORD(v12) = v13.n128_u32[0];
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_16_0(__src);
  OUTLINED_FUNCTION_6_1(v3 + 16);
  v12 = OUTLINED_FUNCTION_14_0();
  if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_38:
  v16 = 1;
  v15 = *&v12;
  v14 = *&v12;
LABEL_20:
  LOBYTE(__src[0]) = v16;
  sub_1D8BED1F0(v12 | (v16 << 32), v13);
  v17 = v14;
  if (v16)
  {
    v17 = 0.0;
  }

  *(v8 + 48) = v17;
  v18 = v9;
  OUTLINED_FUNCTION_16_0(&__src[5]);
  *&__src[0] = v4;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v6;
  __src[2] = v70;
  __src[3] = v74;
  __src[4] = v75;
  *(&__src[26] + 1) = v8;
  *&__src[27] = v18;
  if (*(v3 + 64))
  {
    if (*(v3 + 64) != 1)
    {
      v82 = &_s14descr1F54466F9O18GeneralCameraModelVN;
      v83 = &off_1F544A208;
      v37 = swift_allocObject();
      v81[0] = v37;
      *(v37 + 16) = v4;
      *(v37 + 24) = v5;
      *(v37 + 32) = v6;
      *(v37 + 48) = v70;
      *(v37 + 64) = v74;
      *(v37 + 80) = v75;
      *(v37 + 96) = v8;
      *(v37 + 104) = v18;
      OUTLINED_FUNCTION_16_0((v37 + 112));
      *(v37 + 452) = 0x3F80000000000000;
      sub_1D8BBE85C(__dst, v79);
      swift_retain_n();
      sub_1D8BBE85C(&__src[5], v79);
      goto LABEL_28;
    }

    memcpy(v79, __src, 0x1B4uLL);
    v82 = &_s14descr1F54466F9O17PortalCameraModelVN;
    v83 = &off_1F5449B40;
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_15_0(v19, v20, v21, v22, v23, v24, v25, v26, *&v51.f64[0], *&v51.f64[1], v52, *(&v52 + 1), v53, v54, *&v55.f64[0], *&v55.f64[1], *&v56.f64[0], *&v56.f64[1], *&v57.f64[0], *&v57.f64[1], *&v58.f64[0], *&v58.f64[1], *&v60.f64[0], *&v60.f64[1], *&v61.f64[0], *&v61.f64[1], *&v64.f64[0], *&v64.f64[1], *&v66.f64[0], *&v66.f64[1], v68, v69, v70, *(&v70 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78[0]);

    sub_1D8BCBB78(__src, v78);
    v27 = v8 + 16;
    v28 = 1;
  }

  else
  {
    memcpy(v79, __src, 0x1B4uLL);
    v82 = &_s14descr1F54466F9O17PortalCameraModelVN;
    v83 = &off_1F5449B40;
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_15_0(v29, v30, v31, v32, v33, v34, v35, v36, *&v51.f64[0], *&v51.f64[1], v52, *(&v52 + 1), v53, v54, *&v55.f64[0], *&v55.f64[1], *&v56.f64[0], *&v56.f64[1], *&v57.f64[0], *&v57.f64[1], *&v58.f64[0], *&v58.f64[1], *&v60.f64[0], *&v60.f64[1], *&v61.f64[0], *&v61.f64[1], *&v64.f64[0], *&v64.f64[1], *&v66.f64[0], *&v66.f64[1], v68, v69, v70, *(&v70 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78[0]);

    sub_1D8BCBB78(__src, v78);
    v27 = v8 + 16;
    v28 = 0;
  }

  sub_1D8BE368C(v79, v28, v27);
LABEL_28:
  v38.n128_u64[0] = vcvt_f32_f64(v51);
  *&v39 = *&v52;
  v38.n128_u64[1] = v39;
  v40.n128_u64[0] = sub_1D8BCA424(v81, v38);
  v71 = v40;
  v41 = v83;
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  (v41[1])(v80, v71);
  *v42.i64 = sub_1D8BC8850(v55, v56);
  v72 = v42;
  *v43.i64 = sub_1D8BC8850(v57, v58);
  v59 = v43;
  *v44.i64 = sub_1D8BC8850(v60, v61);
  v62 = v44;
  *v45.i64 = sub_1D8BC8850(v64, v66);
  v46 = 0;
  v78[0] = v80[2];
  v78[1] = v80[3];
  v78[2] = v80[4];
  v78[3] = v80[5];
  memset(v79, 0, 64);
  while (v46 != 4)
  {
    v79[v46] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(v78[v46])), v59, *&v78[v46], 1), v62, v78[v46], 2), v45, v78[v46], 3);
    ++v46;
  }

  v73 = v79[0];
  v65 = v79[2];
  v67 = v79[1];
  v63 = v79[3];
  sub_1D8BCBAD8(__src);
  v80[2] = v73;
  v80[3] = v67;
  v80[4] = v65;
  v80[5] = v63;
  if (v7)
  {
    v47 = v11;
  }

  else
  {
    v47 = v15;
  }

  v48 = BYTE4(v53);
  if (!v7)
  {
    v48 = v16;
  }

  *(&v80[1] + 2) = v47;
  BYTE12(v80[1]) = v48;
  v80[13] = v74;
  v80[14] = v75;
  memcpy(v69, v80, 0xF0uLL);
  return __swift_destroy_boxed_opaque_existential_1Tm(v81);
}

unint64_t SpatialPhoto.Scene.Metadata.zSplitNormalized(for:)(_BYTE *a1)
{
  v2 = *(v1 + 264);
  if (*a1)
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 256);
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 184);
  }

  if (*(v1 + 296) == 6)
  {
    v5 = 0;
  }

  else
  {
    v2 = 0;
    v5 = 1;
  }

  if ((v4 & 0xFF00) != 0x300 && v4 == 6)
  {
    v2 = v3;
    v5 = 0;
  }

  return v2 | (v5 << 32);
}

unint64_t SpatialPhoto.Scene.Metadata.zFocusNormalized(for:bias:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  memcpy(__dst, v2, 0x151uLL);
  v4 = __dst[28];
  v5 = __dst[29];
  if ((__dst[29] & 1) == 0)
  {
    v8 = __dst[28];
    sub_1D8BCADE4(&v8, __dst, v3, &v7);
    v4 = v7;
  }

  return v4 | ((v5 & 1) << 32);
}

float32x2_t sub_1D8BCA424(void *a1, __n128 a2)
{
  v13 = a2.n128_u64[0];
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11.f32[0] = v5;

  return sub_1D8BCA4E4(v13, v10, v11, v7);
}

float32x2_t sub_1D8BCA4E4(float32x2_t a1, float a2, float32x2_t a3, float32_t a4)
{
  v4 = vmul_n_f32(a1, a2);
  a3.f32[1] = a4;
  v5 = vdiv_f32(v4, a3);
  v6 = sqrtf(vaddv_f32(vmul_f32(v5, v5)));
  if (v6 <= 1.0)
  {
    v6 = 1.0;
  }

  return vmul_n_f32(v4, 1.0 / v6);
}

void sub_1D8BCA52C()
{
  PFKTraceSpatialPhotoCameraTechniqueChanged();
  memcpy(v1, (v0 + 80), sizeof(v1));
  sub_1D8BCA58C(v2);
  sub_1D8BCA774(v2);
}

void *sub_1D8BCA58C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 32);
  v9 = *(v1 + 96);
  v8 = *(v1 + 104);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = *(v1 + 112);
  if (qword_1ECAA3DE8 != -1)
  {
    v22 = *(v1 + 32);
    swift_once();
    v7 = v22;
  }

  if (byte_1ECAAA7F8)
  {
    memcpy(__dst, SPProjectiveTransform3DIdentity, 0x80uLL);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
  }

  else
  {
    v21 = v7;
    v17 = sub_1D8BF0C70();
    __src[0].f64[0] = v6;
    __src[0].f64[1] = v5;
    __src[1].f64[0] = v4;
    __src[1].f64[1] = v3;
    SPRotation3DGetEulerAngles(__dst, v25, __src, v17);
    v18 = vmulq_f64(__dst[0], xmmword_1D8BF7720);
    v20 = vextq_s8(v18, v18, 8uLL);
    __dst[1].f64[0] = v9;
    __dst[1].f64[1] = v8;
    __dst[0].f64[0] = v11;
    __dst[0].f64[1] = v10;
    SPProjectiveTransform3DTranslate(SPProjectiveTransform3DIdentity, __dst, __src);
    type metadata accessor for ProjectiveTransform3D(0);
    sub_1D8BF08B0();
    v16 = v12 * 2500.0;
    v15 = v21;
    v14 = v20.i64[1];
    v13 = v20.i64[0];
    memcpy(__dst, __src, 0x80uLL);
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = 0;
  result = memcpy((a1 + 32), __dst, 0x80uLL);
  *(a1 + 160) = v16;
  return result;
}

void sub_1D8BCA740(void *__src)
{
  memcpy((v1 + 80), __src, 0x78uLL);

  sub_1D8BCA52C();
}

void sub_1D8BCA774(float64x2_t *a1)
{
  v2 = v1;
  v5 = v1[13].f64[0];
  v6 = v1[13].f64[1];
  v4 = v1 + 13;
  v7 = a1->f64[0];
  v8 = a1->f64[1];
  v9 = a1[1].f64[0];
  if (v5 == a1->f64[0] && v6 == v8 && v4[1].f64[0] == v9)
  {
    OUTLINED_FUNCTION_11_0(vandq_s8(vandq_s8(vceqq_f64(v4[5], a1[5]), vceqq_f64(v2[16], a1[3])), vandq_s8(vceqq_f64(v4[7], a1[7]), vceqq_f64(v4[9], a1[9]))), vandq_s8(vandq_s8(vceqq_f64(v4[4], a1[4]), vceqq_f64(v2[15], a1[2])), vandq_s8(vceqq_f64(v4[6], a1[6]), vceqq_f64(v4[8], a1[8]))));
    if (v12 < 0 && v4[10].f64[0] == a1[10].f64[0])
    {
      goto LABEL_24;
    }
  }

  v13 = a1[10].f64[0];
  if (qword_1ECAA3DE0 != -1)
  {
    swift_once();
  }

  SPVector3DMake(__src[0].f64, round(v7 * *&qword_1ECAAA7F0) / *&qword_1ECAAA7F0, round(v8 * *&qword_1ECAAA7F0) / *&qword_1ECAAA7F0, round(v9 * *&qword_1ECAAA7F0) / *&qword_1ECAAA7F0);
  memcpy(&__src[2], &a1[2], 0x80uLL);
  __src[10].f64[0] = v13;
  if (sub_1D8BC9CC0(v4, __src))
  {
    if (qword_1ECAA3E70 != -1)
    {
      swift_once();
    }

    v14 = sub_1D8BF08A0();
    __swift_project_value_buffer(v14, qword_1ECAA4C08);

    oslog = sub_1D8BF0880();
    v15 = sub_1D8BF0B80();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      sub_1D8BF0B30();
      v18 = sub_1D8BF0B20();
      v20 = sub_1D8BBE6E8(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D8BAF000, oslog, v15, "Skipping rendering visually similar portal transforms, delta: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA723A30](v17, -1, -1);
      MEMORY[0x1DA723A30](v16, -1, -1);

LABEL_24:
      OUTLINED_FUNCTION_13_0();
      return;
    }

    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    memcpy(v4, __src, 0xA8uLL);
    PFKTraceSpatialPhotoCameraTransformsChanged();
    OUTLINED_FUNCTION_13_0();

    sub_1D8BCAA70();
  }
}

uint64_t sub_1D8BCAA70()
{
  OUTLINED_FUNCTION_2_3(v0 + 48);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SpatialPhoto.CameraController.deinit()
{

  sub_1D8BC4BCC(v0 + 48);
  return v0;
}

uint64_t SpatialPhoto.CameraController.__deallocating_deinit()
{

  sub_1D8BC4BCC(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D8BCAB54(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D8BCBEC8;
}

void sub_1D8BCABD4(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

unint64_t SpatialPhoto.PivotPointBias.description.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t static SpatialPhoto.Attitude.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1].f64[1];
  v4 = *a2;
  v5 = a2[1].f64[0];
  v6 = a2[1].f64[1];
  v12 = a1[1].f64[0];
  v13 = v3;
  v11 = v2;
  v9 = v5;
  v10 = v6;
  v8 = v4;
  return SPRotation3DEqualToRotation(&v11, &v8);
}

uint64_t _s22PhotosSpatialMediaCore0B5PhotoO14PivotPointBiasO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

void sub_1D8BCADE4(float *a1@<X0>, const void *a2@<X1>, char a3@<W2>, float *a4@<X8>)
{
  v7 = *a1;
  memcpy(__dst, a2, 0x151uLL);
  if (qword_1ECAA3D60 != -1)
  {
    swift_once();
  }

  v14 = 2;
  v13 = 0;
  v8 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&v14, &v13, *&dword_1ECAAA78C);
  memcpy(__dst, a2, 0x151uLL);
  if (qword_1ECAA3D58 != -1)
  {
    swift_once();
  }

  v14 = 2;
  v13 = 0;
  v9 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&v14, &v13, *&dword_1ECAAA788);
  __dst[0] = 1;
  v14 = 0;
  v10 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(__dst, &v14, v7);
  if (a3)
  {
    if (a3 == 1)
    {
      if (qword_1ECAA3D80 != -1)
      {
        swift_once();
      }

      v11 = &dword_1ECAAA7A4;
    }

    else
    {
      if (qword_1ECAA3D78 != -1)
      {
        swift_once();
      }

      v11 = &dword_1ECAAA7A0;
    }

    v10 = v10 * *v11;
  }

  if (v8 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= v9)
  {
    v12 = v9;
  }

  __dst[0] = 0;
  v14 = 1;
  *a4 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(__dst, &v14, v12);
}

void SPRotation3DGetEulerAngles(uint64_t *__return_ptr a1@<X8>, SPRotation3D a2@<0:Q0, 16:Q1>, uint64_t a3@<X0>, int a4@<W1>)
{
  _Q1 = *a3;
  if (a4 == 2)
  {
    v7 = *a3;
    _Q1.i64[0] = *(a3 + 16);
  }

  else if (a4 == 1)
  {
    v7 = vextq_s8(_Q1, *(a3 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a3 + 24);
  v26 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v26.f64[0] - _D9 * v27 + v8 * v26.f64[0] - _D9 * v27;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a4 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a4 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a1 = v23;
  *(a1 + 1) = v22;
  *(a1 + 8) = a4;
}

unint64_t SPRotation3DEqualToRotation(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(v2, v3));
  if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v5 = vandq_s8(vceqq_f64(*a1, vnegq_f64(*a2)), vceqq_f64(v2, vnegq_f64(v3)));
  return vandq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] >> 63;
}

unint64_t sub_1D8BCB1E0()
{
  result = qword_1ECAA47E0;
  if (!qword_1ECAA47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47E0);
  }

  return result;
}

unint64_t sub_1D8BCB268()
{
  result = qword_1ECAA47F8;
  if (!qword_1ECAA47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47F8);
  }

  return result;
}

unint64_t sub_1D8BCB2F0()
{
  result = qword_1ECAA4810;
  if (!qword_1ECAA4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4810);
  }

  return result;
}

uint64_t sub_1D8BCB374(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8BCB3CC()
{
  result = qword_1ECAA4828;
  if (!qword_1ECAA4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4828);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O16CameraControllerC11OrientationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BCB940(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D8BCB96C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BCBA4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BCBA6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 168) = v3;
  return result;
}

void SPVector3DMake(double *__return_ptr a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 15);
}

float64x2_t *SPProjectiveTransform3DTranslate@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = *a2;
  __asm { FMOV            V18.2D, #1.0 }

  _Q18.f64[0] = a2[1].f64[0];
  v9 = *(MEMORY[0x1E69E9B08] + 16);
  v10 = *(MEMORY[0x1E69E9B08] + 32);
  v11 = *(MEMORY[0x1E69E9B08] + 48);
  v12 = *(MEMORY[0x1E69E9B08] + 64);
  v13 = *(MEMORY[0x1E69E9B08] + 80);
  v14 = *result;
  v15 = result[1];
  v16 = result[2];
  v17 = result[3];
  v18 = result[4];
  v19 = result[5];
  v21 = result[6];
  v20 = result[7];
  v22 = xmmword_1D8BF7710;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(vzip2q_s64(v15, v17)), vceqq_f64(vzip2q_s64(v19, v20), xmmword_1D8BF7710))))))
  {
    goto LABEL_6;
  }

  v23 = vandq_s8(vceqq_f64(v14, xmmword_1D8BF7700), vceqzq_f64(v15));
  if ((vandq_s8(v23, vdupq_laneq_s64(v23, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    v24 = vandq_s8(vceqq_f64(v16, xmmword_1D8BF7710), vceqzq_f64(v17));
    if ((vandq_s8(v24, vdupq_laneq_s64(v24, 1)).u64[0] & 0x8000000000000000) != 0)
    {
      v25 = vandq_s8(vceqzq_f64(v18), vceqq_f64(v19, xmmword_1D8BF7700));
      if ((vandq_s8(v25, vdupq_laneq_s64(v25, 1)).u64[0] & 0x8000000000000000) != 0)
      {
        _VF = 0;
        if (v9.f64[1] == 0.0)
        {
          v38 = vmovn_s64(vceqzq_f64(vzip2q_s64(v13, v11)));
          if (v38.i8[4] & 1) != 0 && (v38.i8[0])
          {
            v39 = vandq_s8(vceqq_f64(*MEMORY[0x1E69E9B08], xmmword_1D8BF7700), vceqzq_f64(v9));
            if ((vandq_s8(v39, vdupq_laneq_s64(v39, 1)).u64[0] & 0x8000000000000000) != 0)
            {
              v40 = vandq_s8(vceqq_f64(v10, xmmword_1D8BF7710), vceqzq_f64(v11));
              if ((vandq_s8(v40, vdupq_laneq_s64(v40, 1)).u64[0] & 0x8000000000000000) != 0)
              {
                v41 = vandq_s8(vceqzq_f64(v12), vceqq_f64(v13, xmmword_1D8BF7700));
                if ((vandq_s8(v41, vdupq_laneq_s64(v41, 1)).u64[0] & 0x8000000000000000) != 0)
                {
                  v31 = vaddq_f64(v3, v21);
                  *&v22.f64[0] = *&vaddq_f64(_Q18, v20);
                  v22.f64[1] = result[7].f64[1];
                  goto LABEL_9;
                }
              }
            }
          }
        }
      }
    }
  }

  v26 = vceqzq_f64(v21);
  if ((v26.i64[0] & v26.i64[1] & vceqzq_f64(v20).u64[0] & 0x8000000000000000) != 0) != _VF && v9.f64[1] == 0.0 && (v32 = vmovn_s64(vceqzq_f64(vzip2q_s64(v13, v11))), (v32.i8[4]) && (v32.i8[0] & 1) != 0 && (v33 = vceqzq_f64(v3), (v33.i64[0] & v33.i64[1] & vceqzq_f64(_Q18).u64[0] & 0x8000000000000000) != 0))
  {
    v34 = 0;
    v42 = *MEMORY[0x1E69E9B08];
    v43 = v9;
    v44 = v10;
    v45 = v11;
    v46 = v12;
    v47 = v13;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    do
    {
      v36 = *(&v42 + v34);
      v35 = *(&v42 + v34 + 16);
      v37 = (&v50 + v34);
      *v37 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v36.f64[0]), v16, v36, 1), v18, *&v35);
      v37[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v15, v36.f64[0]), v17, v36, 1), v19, *&v35);
      v34 += 32;
    }

    while (v34 != 96);
    v14 = v50;
    v16 = v52;
    v15 = *&v51.f64[0];
    v18 = v54;
    v17 = *&v53.f64[0];
    v19 = *&v55.f64[0];
    v31 = 0uLL;
  }

  else
  {
LABEL_6:
    v27 = 0;
    v42 = *MEMORY[0x1E69E9B08];
    v43 = v9;
    v44 = v10;
    v45 = v11;
    v46 = v12;
    v47 = v13;
    v48 = v3;
    v49 = _Q18;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    do
    {
      v29 = *(&v42 + v27);
      v28 = *(&v42 + v27 + 16);
      v30 = (&v50 + v27);
      *v30 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v29.f64[0]), v16, v29, 1), v18, v28.f64[0]), v21, v28, 1);
      v30[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v15, v29.f64[0]), v17, v29, 1), v19, v28.f64[0]), v20, v28, 1);
      v27 += 32;
    }

    while (v27 != 128);
    v14 = v50;
    v15 = v51;
    v16 = v52;
    v17 = v53;
    v18 = v54;
    v19 = v55;
    v31 = v56;
    v22 = v57;
  }

LABEL_9:
  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  a3[3] = v17;
  a3[4] = v18;
  a3[5] = v19;
  a3[6] = v31;
  a3[7] = v22;
  return result;
}

double OUTLINED_FUNCTION_2_3(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

double OUTLINED_FUNCTION_5_1(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

double OUTLINED_FUNCTION_6_1(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

float OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&a13, &a12, v14);
}

void *OUTLINED_FUNCTION_9_1()
{

  return memcpy((v1 + 20), (v0 + 20), 0x13DuLL);
}

float OUTLINED_FUNCTION_10_1(float a1)
{
  LOBYTE(STACK[0x5A0]) = 1;
  LOBYTE(STACK[0x2C0]) = 0;

  return SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&STACK[0x5A0], &STACK[0x2C0], a1);
}

double OUTLINED_FUNCTION_11_0(int8x16_t a1, int8x16_t a2)
{
  v2 = vandq_s8(a2, a1);
  *&result = vandq_s8(v2, vdupq_laneq_s64(v2, 1)).u64[0];
  return result;
}

unint64_t OUTLINED_FUNCTION_14_0()
{
  LOBYTE(STACK[0x2C0]) = *(v0 + 16);

  return SpatialPhoto.Scene.Metadata.zSplitNormalized(for:)(&STACK[0x2C0]);
}

uint64_t OUTLINED_FUNCTION_15_0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  STACK[0x578] = a1;

  return sub_1D8BBE85C(&STACK[0x7C0], &a41);
}

void *OUTLINED_FUNCTION_16_0(void *a1)
{

  return memcpy(a1, &STACK[0x7C0], 0x151uLL);
}

float static SpatialPhoto.predictPivotPointDepth(for:normalizedSearchRect:sceneAnalysis:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1ECAA3D68 != -1)
  {
    swift_once();
  }

  if (byte_1ECAAA794)
  {
    static SpatialPhoto.predictSalientDepth(for:normalizedSearchRect:sceneAnalysis:)(a1, a2, a3, v17);
    if (!v3)
    {
      v5 = *v17;
      sub_1D8BCF208(v17[1], v17[2], v17[3], v17[4]);
    }
  }

  else
  {
    v5 = *&dword_1ECAAA790;
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
    }

    v9 = sub_1D8BF08A0();
    __swift_project_value_buffer(v9, qword_1EE320A70);

    v10 = sub_1D8BF0880();
    v11 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_24_0();
      v12 = OUTLINED_FUNCTION_19_0();
      v17[0] = v12;
      *v4 = 136446466;
      v13 = sub_1D8BF10C0();
      v15 = sub_1D8BBE6E8(v13, v14, v17);

      *(v4 + 4) = v15;
      *(v4 + 12) = 2048;
      *(v4 + 14) = v5;
      _os_log_impl(&dword_1D8BAF000, v10, v11, "predictPivotPointDepth[%{public}s] SpatialPhotoCameraOverridePivotPoint set to %f for analysis", v4, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_10_2();
    }
  }

  return v5;
}

Swift::Float __swiftcall SpatialPhoto.SaliencyMap.saliencyWeight(at:)(CGPoint at)
{
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  at.x = (*v1 - 1) * at.x;
  if (at.x <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (at.x >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v1[1], 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_39_0();
  if (v8 > v9 || (v5 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (v6 <= v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (at.x <= 0)
  {
    if ((x & 0x8000000000000000) == 0)
    {
      x = 0;
    }
  }

  else if (x >= at.x)
  {
    x = at.x;
  }

  v10 = v6 & ~(v6 >> 63);
  if (v4 < v10)
  {
    v10 = v4;
  }

  v11 = v10 * v3;
  if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
  {
    goto LABEL_29;
  }

  v12 = __OFADD__(v11, x);
  v13 = v11 + x;
  if (v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v13 >= *(v1[2] + 16))
  {
LABEL_32:
    __break(1u);
    return *&at.x;
  }

  *&at.x = OUTLINED_FUNCTION_31_0(v13);
  return *&at.x;
}

Swift::Float __swiftcall SpatialPhoto.SaliencyMap.depth(at:)(CGPoint at)
{
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  at.x = (*v1 - 1) * at.x;
  if (at.x <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (at.x >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v1[1], 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_39_0();
  if (v8 > v9 || (v5 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (v6 <= v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (at.x <= 0)
  {
    if ((x & 0x8000000000000000) == 0)
    {
      x = 0;
    }
  }

  else if (x >= at.x)
  {
    x = at.x;
  }

  v10 = v6 & ~(v6 >> 63);
  if (v4 < v10)
  {
    v10 = v4;
  }

  v11 = v10 * v3;
  if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
  {
    goto LABEL_29;
  }

  v12 = __OFADD__(v11, x);
  v13 = v11 + x;
  if (v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v13 >= *(v1[3] + 16))
  {
LABEL_32:
    __break(1u);
    return *&at.x;
  }

  *&at.x = OUTLINED_FUNCTION_31_0(v13);
  return *&at.x;
}

void SpatialPhoto.SaliencyMap.depthRange(for:)(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[3];
  v32 = CGRectIntersection(*&a1, *MEMORY[0x1E69BDDA8]);
  MinX = CGRectGetMinX(v32);
  v9 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = MinX * v9;
  OUTLINED_FUNCTION_3_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_55;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v33.origin.x = OUTLINED_FUNCTION_1_2();
  v14 = CGRectGetMaxX(v33) * v9;
  OUTLINED_FUNCTION_3_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_58;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v34.origin.x = OUTLINED_FUNCTION_1_2();
  MinY = CGRectGetMinY(v34);
  v13 = __OFSUB__(v6, 1);
  v16 = v6 - 1;
  if (v13)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = MinY * v16;
  OUTLINED_FUNCTION_3_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_62;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v35.origin.x = OUTLINED_FUNCTION_1_2();
  CGRectGetMaxY(v35);
  OUTLINED_FUNCTION_2_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_65;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_4_2();
  if (!v12)
  {
    goto LABEL_67;
  }

  v20 = v17;
  v21 = v19;
  if (v19 < v17)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v14 >= v10)
  {
    v23 = 3.4028e38;
    v24 = -3.4028e38;
LABEL_23:
    if ((v20 & ~(v20 >> 63)) >= v16)
    {
      v25 = v16;
    }

    else
    {
      v25 = v20 & ~(v20 >> 63);
    }

    v26 = v25 * v5;
    v27 = (v25 * v5) >> 64 != (v25 * v5) >> 63;
    v28 = v10;
    while (1)
    {
      if (v28 <= 0)
      {
        v29 = v5 - 1;
        if ((v9 & 0x8000000000000000) == 0)
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = v9 >= v28 ? v28 : v5 - 1;
      }

      if (v27)
      {
        break;
      }

      v13 = __OFADD__(v26, v29);
      v30 = v26 + v29;
      if (v13)
      {
        goto LABEL_51;
      }

      if (v30 >= *(v7 + 16))
      {
        goto LABEL_52;
      }

      v22 = v7 + 32;
      v31 = *(v7 + 32 + 4 * v30);
      if (v31 > 0.0)
      {
        if (v31 < v23)
        {
          v23 = *(v22 + 4 * v30);
        }

        if (v24 <= v31)
        {
          v24 = *(v22 + 4 * v30);
        }
      }

      if (v14 == v28)
      {
        if (v20 == v21)
        {
          return;
        }

        v13 = __OFADD__(v20++, 1);
        if (v13)
        {
          __break(1u);
          return;
        }

        goto LABEL_23;
      }

      v13 = __OFADD__(v28++, 1);
      if (v13)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_69:
  __break(1u);
}

void SpatialPhoto.SaliencyMap.harmonicMeanSalientDepth.getter()
{
  v1 = *(v0 + 1);
  v2 = *v0 * v1;
  if ((*v0 * v1) >> 64 != v2 >> 63)
  {
    goto LABEL_15;
  }

  if (v2 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v2)
  {
    v3 = *(v0 + 2);
    if (v2 <= *(v3 + 16))
    {
      v4 = 0;
      v5 = *(v0 + 3);
      v6 = v3 + 32;
      v7 = 0.0;
      v8 = 0.0;
      while (1)
      {
        v9 = *(v6 + 4 * v4);
        if (v0[10] * 0.9 < v9)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_14;
          }

          v10 = *(v5 + 32 + 4 * v4);
          if (v10 > 0.0)
          {
            v8 = v8 + v9 / v10;
            v7 = v7 + v9;
          }
        }

        if (v2 == ++v4)
        {
          return;
        }
      }
    }

    goto LABEL_17;
  }
}

void static SpatialPhoto.predictSalientDepth(for:normalizedSearchRect:sceneAnalysis:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4;
  v262 = a4;
  v270[1] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v264 = a2;
  v266 = sub_1D8BF07F0();
  v12 = *(v266 - 8);
  v13 = MEMORY[0x1EEE9AC00](v266);
  v265 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v240 - v15;
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v17 = sub_1D8BF0820();
  __swift_project_value_buffer(v17, qword_1ECAA4C20);
  sub_1D8BF0810();

  sub_1D8BF07C0();

  v18 = sub_1D8BF0810();
  LODWORD(v263) = sub_1D8BF0C90();

  v19 = sub_1D8BF0CF0();
  v20 = MEMORY[0x1E69E7CA0];
  if (v19)
  {
    v261 = v4;
    OUTLINED_FUNCTION_24_0();
    v260 = OUTLINED_FUNCTION_20_0();
    v268 = v260;
    *v4 = 136315394;
    v270[0] = a1;
    v21 = sub_1D8BF10C0();
    OUTLINED_FUNCTION_28_0(v21, v22);
    OUTLINED_FUNCTION_29_0();
    *(v4 + 1) = v20;
    *(v4 + 6) = 2082;
    if (v264[4])
    {
      v23 = 7104878;
      v24 = 0xE300000000000000;
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      OUTLINED_FUNCTION_9_2();
      v27 = a1;
      v28 = a3;
      v29 = [v26 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
      v23 = sub_1D8BF09E0();
      v24 = v30;

      a3 = v28;
      a1 = v27;
    }

    sub_1D8BBE6E8(v23, v24, &v268);
    OUTLINED_FUNCTION_29_0();
    *(v4 + 14) = v23;
    v31 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v18, v263, v31, "PredictSalientDepth", "scene:%s normalizedSearchRect:%{public}s", v4, 0x16u);
    OUTLINED_FUNCTION_12_1(&v273);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();

    v5 = v261;
  }

  else
  {
  }

  v32 = v266;
  (*(v12 + 16))(v265, v16, v266);
  sub_1D8BF0860();
  swift_allocObject();
  v33 = sub_1D8BF0850();
  (*(v12 + 8))(v16, v32);
  sub_1D8BCE9E0(a1);
  v34 = v5;
  if (v5)
  {
    goto LABEL_24;
  }

  type metadata accessor for SpatialPhoto.CaptureManager();
  v268 = 0;
  v269 = 0xE000000000000000;
  sub_1D8BF0DE0();

  v268 = 0xD000000000000014;
  v269 = 0x80000001D8BF3A20;
  v270[0] = a1;
  v35 = sub_1D8BF10C0();
  v36 = a1;
  MEMORY[0x1DA722A10](v35);

  MEMORY[0x1DA722A10](93, 0xE100000000000000);
  v37 = static SpatialPhoto.CaptureManager.start(_:device:)(v268, v269, 0);

  v259 = v36;
  if (!a3)
  {
    type metadata accessor for SpatialPhoto.SceneAnalysis();

    a3 = SpatialPhoto.SceneAnalysis.__allocating_init(scene:size:renderScale:)(v40, 0, 0, 1, 1.0);

    goto LABEL_15;
  }

  v38 = sub_1D8BEBB2C();
  if (!v38)
  {

LABEL_17:
    v41 = sub_1D8BCF4AC();
    v34 = OUTLINED_FUNCTION_65(&type metadata for SpatialPhoto.PredictSalientDepthError, v41);
    *v42 = 6;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 1;
    swift_willThrow();

    LODWORD(v266) = 0;
    if (qword_1EE320A68 != -1)
    {
      goto LABEL_137;
    }

    goto LABEL_18;
  }

  v39 = *(v38 + 66);

  if (v39 != 1)
  {
    goto LABEL_17;
  }

  sub_1D8BEB168();
  v34 = 0;
LABEL_15:
  LOBYTE(v268) = 1;
  sub_1D8BEB5C4(&v268);
  sub_1D8BEB6E8();

  v63 = sub_1D8BEBA14(v62);
  if (!v63)
  {
    goto LABEL_250;
  }

  v64 = v63;
  v65 = [v63 width];
  v66 = [v64 height];
  if ((v65 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_207;
  }

  v67 = v66;
  v68 = 4 * v65 * v66;
  v266 = 4 * v65;
  if ((4 * v65 * v66) >> 64 != v68 >> 63)
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  v255 = v65 * v66;
  if ((v65 * v66) >> 64 != (v65 * v66) >> 63)
  {
LABEL_208:
    __break(1u);
LABEL_209:
    swift_once();
    goto LABEL_32;
  }

  v263 = v37;
  v69 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength_];
  if (!v69)
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v70 = v69;
  v71 = [v69 mutableBytes];
  MTLRegionMake2D(v65, v67, &v268);
  v260 = v64;
  [v64 getBytes:v71 bytesPerRow:v266 fromRegion:&v268 mipmapLevel:0];
  v72 = v70;
  v261 = v70;
  v256 = [v72 bytes];
  v73 = sub_1D8BEB960(v256);
  if (!v73)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
    return;
  }

  v74 = v73;
  v257 = v67;
  v258 = v65;
  type metadata accessor for VNImageOption(0);
  sub_1D8BCF38C();
  v37 = v74;
  v64 = sub_1D8BF0980();
  if (qword_1ECAA3E60 != -1)
  {
    goto LABEL_209;
  }

LABEL_32:
  v75 = sub_1D8BEE034();
  v76 = objc_allocWithZone(MEMORY[0x1E69845B8]);
  v77 = sub_1D8BCF24C(v37, v64, v75);
  v78 = [objc_allocWithZone(MEMORY[0x1E6984540]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4830, &qword_1D8BF7CE8);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1D8BF7CB0;
  *(v79 + 32) = v78;
  sub_1D8BCF84C(0, &qword_1ECAA4838, 0x1E6984658);
  v80 = v78;
  v81 = v77;
  v82 = sub_1D8BF0AA0();

  v268 = 0;
  v83 = [v77 performRequests:v82 error:&v268];

  Height = v268;
  if (!v83)
  {
    v98 = v268;
    sub_1D8BEFEA0();

    swift_willThrow();

    OUTLINED_FUNCTION_27_0();

    OUTLINED_FUNCTION_40_0();
    goto LABEL_50;
  }

  v254 = v37;
  v85 = v268;
  v86 = sub_1D8BCF43C(v80);
  v87 = v80;
  v253 = v81;
  if (!v86)
  {
LABEL_44:
    if (qword_1EE320A68 != -1)
    {
      goto LABEL_231;
    }

    goto LABEL_45;
  }

  Height = v86;
  if (!sub_1D8BCF2EC(v86))
  {

    goto LABEL_44;
  }

  if ((Height & 0xC000000000000001) != 0)
  {
    goto LABEL_234;
  }

  if (!*((Height & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  v91 = *(Height + 32);
  while (1)
  {
    OUTLINED_FUNCTION_29_0();
    v92 = [v80 pixelBuffer];
    Height = CVPixelBufferGetHeight(v92);
    Width = CVPixelBufferGetWidth(v92);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v92);
    CVPixelBufferLockBaseAddress(v92, 1uLL);
    v251 = v92;
    BaseAddress = CVPixelBufferGetBaseAddress(v92);
    if (!BaseAddress)
    {
      if (qword_1EE320A68 == -1)
      {
LABEL_53:
        v109 = sub_1D8BF08A0();
        __swift_project_value_buffer(v109, qword_1EE320A70);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_12_1(v110);

        v111 = sub_1D8BF0880();
        sub_1D8BF0B90();

        if (OUTLINED_FUNCTION_41_0())
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_37_0();
          v112 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_34_0(v112);
          *v87 = 136446210;
          v270[0] = v34;
          Height = v270;
          v113 = sub_1D8BF10C0();
          OUTLINED_FUNCTION_28_0(v113, v114);
          OUTLINED_FUNCTION_33_0();
          *(v87 + 4) = a3;
          OUTLINED_FUNCTION_13_1(&dword_1D8BAF000, v115, v116, "predictSalientDepth[%{public}s] cannot get raw pointer for saliency map buffer.");
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_16_1();
          OUTLINED_FUNCTION_11_1();

          OUTLINED_FUNCTION_15_1();
        }

        else
        {

          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_16_1();
        }

        v142 = sub_1D8BCF4AC();
        OUTLINED_FUNCTION_65(&type metadata for SpatialPhoto.PredictSalientDepthError, v142);
        *v143 = 1;
        *(v143 + 8) = 0;
        *(v143 + 16) = 0;
        *(v143 + 24) = 0;
        *(v143 + 32) = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_14_1();

        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_30_0();

        goto LABEL_49;
      }

LABEL_239:
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      goto LABEL_53;
    }

    v95 = BytesPerRow / 4;
    if ((Height * (BytesPerRow / 4)) >> 64 != (Height * (BytesPerRow / 4)) >> 63)
    {
      goto LABEL_236;
    }

    v96 = BaseAddress;
    v97 = *(v264 + 32);
    v249 = v95;
    if ((v97 & 1) != 0 || (v274.origin.x = OUTLINED_FUNCTION_1_2(), CGRectIsNull(v274)))
    {
      OUTLINED_FUNCTION_8_1();
    }

    else
    {
      v275.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectIntersection(v275, v283);
      OUTLINED_FUNCTION_1_2();
      if (!PFRectIsValid() || (v276.origin.x = OUTLINED_FUNCTION_5_2(), CGRectIsNull(v276)) || (v277.origin.x = OUTLINED_FUNCTION_5_2(), CGRectIsInfinite(v277)) || (v278.origin.x = OUTLINED_FUNCTION_5_2(), CGRectIsEmpty(v278)))
      {
        OUTLINED_FUNCTION_37_0();
        if (qword_1EE320A68 != -1)
        {
          goto LABEL_243;
        }

        goto LABEL_90;
      }

      v247 = v97;
      v248 = v34;
      v264 = v33;
      v265 = a3;
      OUTLINED_FUNCTION_18_0();
      v279.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetMinY(v279);
      OUTLINED_FUNCTION_2_4();
      if (!(v203 ^ v204 | v202))
      {
        goto LABEL_253;
      }

      if (v201 <= -9.22337204e18)
      {
        goto LABEL_254;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v203)
      {
        goto LABEL_255;
      }

      OUTLINED_FUNCTION_18_0();
      if (__OFSUB__(v205, 1))
      {
        goto LABEL_256;
      }

      OUTLINED_FUNCTION_6_2();
      if (v203 != v204)
      {
        v33 = v207;
      }

      else
      {
        v33 = v206;
      }

      OUTLINED_FUNCTION_17_0();
      v280.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetMinX(v280);
      OUTLINED_FUNCTION_2_4();
      if (!(v203 ^ v204 | v202))
      {
        goto LABEL_257;
      }

      if (v208 <= -9.22337204e18)
      {
        goto LABEL_258;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v203)
      {
        goto LABEL_259;
      }

      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_6_2();
      if (v203 != v204)
      {
        v34 = v210;
      }

      else
      {
        v34 = v209;
      }

      v281.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetHeight(v281);
      OUTLINED_FUNCTION_2_4();
      if (!(v203 ^ v204 | v202))
      {
        goto LABEL_260;
      }

      if (v211 <= -9.22337204e18)
      {
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v203)
      {
        goto LABEL_262;
      }

      OUTLINED_FUNCTION_18_0();
      if (__OFSUB__(v212, v33))
      {
        goto LABEL_263;
      }

      OUTLINED_FUNCTION_6_2();
      if (v203 != v204)
      {
        v215 = v214;
      }

      else
      {
        v215 = v213;
      }

      v282.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetWidth(v282);
      OUTLINED_FUNCTION_2_4();
      if (!(v203 ^ v204 | v202))
      {
        goto LABEL_264;
      }

      if (v216 <= -9.22337204e18)
      {
        goto LABEL_265;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v203)
      {
        goto LABEL_266;
      }

      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_6_2();
      a3 = v203 != v204 ? v218 : v217;
      LODWORD(v97) = v247;
      v117 = v215;
    }

    v37 = v33 + v117;
    if (__OFADD__(v33, v117))
    {
      goto LABEL_237;
    }

    if (v37 < v33)
    {
      goto LABEL_238;
    }

    OUTLINED_FUNCTION_17_0();
    v120 = v119 / v118;
    OUTLINED_FUNCTION_18_0();
    v123 = 0.0;
    v125 = v124 / v122;
    if (v33 != v37)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v126 = 0.0;
      v127 = v33;
      do
      {
        if (v127 >= v37)
        {
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
          goto LABEL_223;
        }

        v128 = v125 * v127;
        if (COERCE_INT(fabs(v128)) > 2139095039)
        {
          goto LABEL_216;
        }

        if (v128 <= -9.2234e18)
        {
          goto LABEL_217;
        }

        if (v128 >= 9.2234e18)
        {
          goto LABEL_218;
        }

        if (a3)
        {
          v129 = v128 * v121;
          v130 = a3;
          v131 = v34;
          if ((v128 * v121) >> 64 == v129 >> 63)
          {
            while (1)
            {
              v132 = v120 * v131;
              if (COERCE_INT(fabs(v132)) > 2139095039)
              {
                break;
              }

              if (v132 <= -9.2234e18)
              {
                goto LABEL_130;
              }

              if (v132 >= 9.2234e18)
              {
                goto LABEL_131;
              }

              if (__OFADD__(v129, v132))
              {
                goto LABEL_132;
              }

              v133 = v129 + v132;
              if (v126 < v96[v133])
              {
                v126 = v96[v133];
              }

              ++v131;
              if (!--v130)
              {
                goto LABEL_75;
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
LABEL_18:
            v43 = sub_1D8BF08A0();
            __swift_project_value_buffer(v43, qword_1EE320A70);
            OUTLINED_FUNCTION_26_0();
            v45 = *(v44 - 256);

            v46 = v34;
            v47 = sub_1D8BF0880();
            v48 = sub_1D8BF0B90();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = OUTLINED_FUNCTION_24_0();
              v50 = swift_slowAlloc();
              v264 = v33;
              v51 = v50;
              v52 = OUTLINED_FUNCTION_76();
              v265 = a3;
              v53 = v52;
              v268 = v52;
              *v49 = 136446466;
              v270[0] = v45;
              v54 = sub_1D8BF10C0();
              v56 = v34;
              v57 = v37;
              v58 = OUTLINED_FUNCTION_28_0(v54, v55);

              *(v49 + 4) = v58;
              v37 = v57;
              *(v49 + 12) = 2114;
              v59 = v56;
              v60 = _swift_stdlib_bridgeErrorToNSError();
              *(v49 + 14) = v60;
              *v51 = v60;
              OUTLINED_FUNCTION_32_0(&dword_1D8BAF000, v61, v48, "predictSalientDepth[%{public}s] error rendering: %{public}@");
              sub_1D8BCF310(v51);
              v33 = v264;
              OUTLINED_FUNCTION_11_1();
              __swift_destroy_boxed_opaque_existential_1Tm(v53);
              OUTLINED_FUNCTION_11_1();
              OUTLINED_FUNCTION_11_1();
            }

            swift_willThrow();
            if (v266)
            {
            }

            if (v37)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

LABEL_75:
        ++v127;
      }

      while (v127 != v37);
      v123 = v126 * 0.9;
    }

    OUTLINED_FUNCTION_37_0();
    v247 = v97;
    v246 = v134;
    Width = v80;
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
    }

    v135 = sub_1D8BF08A0();
    __swift_project_value_buffer(v135, qword_1EE320A70);
    OUTLINED_FUNCTION_26_0();
    v137 = *(v136 - 256);

    v97 = sub_1D8BF0880();
    v87 = sub_1D8BF0BB0();

    v245 = v87;
    if (os_log_type_enabled(v97, v87))
    {
      v242 = v97;
      v243 = v34;
      v244 = Height;
      swift_slowAlloc();
      v241 = OUTLINED_FUNCTION_20_0();
      v268 = v241;
      *v97 = 136447490;
      v270[0] = v137;
      v138 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_28_0(v138, v139);
      OUTLINED_FUNCTION_29_0();
      *(v97 + 4) = v137;
      *(v97 + 12) = 2080;
      if (v247)
      {
        v140 = 7104878;
        v141 = 0xE300000000000000;
      }

      else
      {
        v159 = objc_alloc(MEMORY[0x1E696AEC0]);
        OUTLINED_FUNCTION_9_2();
        v137 = [v160 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
        v140 = sub_1D8BF09E0();
        v141 = v161;
      }

      OUTLINED_FUNCTION_38_0();
      sub_1D8BBE6E8(v140, v141, &v268);
      OUTLINED_FUNCTION_29_0();
      *(v97 + 14) = v137;
      *(v97 + 22) = 2050;
      *(v97 + 24) = v33;
      *(v97 + 32) = 2050;
      v34 = v243;
      *(v97 + 34) = v243;
      *(v97 + 42) = 2050;
      *(v97 + 44) = v246;
      *(v97 + 52) = 2050;
      *(v97 + 54) = a3;
      v162 = v242;
      _os_log_impl(&dword_1D8BAF000, v242, v245, "predictSalientDepth[%{public}s] analyze salient pixel depth normalizedSearchRect:%s rowStart: %{public}ld colStart:%{public}ld rowLen:%{public}ld colLen:%{public}ld", v97, 0x3Eu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();

      Height = v244;
    }

    else
    {

      OUTLINED_FUNCTION_38_0();
    }

    v80 = Width;
    if (v33 == v37)
    {
      goto LABEL_95;
    }

    v169 = v34 + a3;
    if (__OFADD__(v34, a3))
    {
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
LABEL_90:
      v144 = sub_1D8BF08A0();
      __swift_project_value_buffer(v144, qword_1EE320A70);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_12_1(v145);

      v146 = sub_1D8BF0880();
      v147 = sub_1D8BF0BA0();

      if (os_log_type_enabled(v146, v147))
      {
        OUTLINED_FUNCTION_24_0();
        v148 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_34_0(v148);
        *v97 = 136446466;
        v270[0] = v34;
        v149 = sub_1D8BF10C0();
        OUTLINED_FUNCTION_28_0(v149, v150);
        OUTLINED_FUNCTION_33_0();
        *(v97 + 4) = a3;
        *(v97 + 12) = 2082;
        v151 = objc_alloc(MEMORY[0x1E696AEC0]);
        OUTLINED_FUNCTION_9_2();
        v153 = [v152 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
        v154 = sub_1D8BF09E0();
        v155 = v33;
        v157 = v156;

        v158 = v263;
        Height = sub_1D8BBE6E8(v154, v157, &v268);
        v33 = v155;

        *(v97 + 14) = Height;
        _os_log_impl(&dword_1D8BAF000, v146, v147, "predictSalientDepth[%{public}s] Invalid searchRect:%{public}s", v97, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_11_1();

        OUTLINED_FUNCTION_15_1();
      }

      else
      {

        OUTLINED_FUNCTION_15_1();
        v158 = v263;
      }

      v183 = sub_1D8BCF4AC();
      OUTLINED_FUNCTION_65(&type metadata for SpatialPhoto.PredictSalientDepthError, v183);
      *v184 = v8;
      *(v184 + 8) = v9;
      *(v184 + 16) = v10;
      *(v184 + 24) = v11;
      *(v184 + 32) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_14_1();

      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_30_0();

      OUTLINED_FUNCTION_40_0();
      if (v158)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (v169 < v34)
    {
      goto LABEL_242;
    }

    v88.n128_u64[0] = 0;
    v90.n128_u64[0] = 0x5F0000005F000000;
    v89.n128_u64[0] = 0;
LABEL_100:
    if (v33 >= v37)
    {
      goto LABEL_219;
    }

    v170 = v125 * v33;
    if (COERCE_INT(fabs(v170)) > 2139095039)
    {
      goto LABEL_220;
    }

    if (v170 <= -9.2234e18)
    {
      goto LABEL_221;
    }

    if (v170 >= 9.2234e18)
    {
      goto LABEL_222;
    }

    if (v34 == v169)
    {
      break;
    }

    v171 = v170 * v249;
    if ((v170 * v249) >> 64 == v171 >> 63)
    {
      if (v34 < v169)
      {
        v172 = v33 * v258;
        v173 = a3;
        v174 = v34;
        while (1)
        {
          v175 = v120 * v174;
          if (COERCE_INT(fabs(v175)) > 2139095039)
          {
            goto LABEL_133;
          }

          if (v175 <= -9.2234e18)
          {
            goto LABEL_134;
          }

          if (v175 >= 9.2234e18)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v171, v175))
          {
            goto LABEL_136;
          }

          v176 = v96[v171 + v175];
          if (v123 < v176)
          {
            if ((v33 * v258) >> 64 != (v33 * v258) >> 63)
            {
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              v191 = a3;
LABEL_203:
              v219 = v191;
              v220 = v259;
              OUTLINED_FUNCTION_45();
              swift_beginAccess();
              v221 = *(v220 + 44);

              v222 = sub_1D8BF0880();
              v223 = sub_1D8BF0BB0();

              if (os_log_type_enabled(v222, v223))
              {
                OUTLINED_FUNCTION_76();
                v270[0] = OUTLINED_FUNCTION_20_0();
                *v97 = 136446722;
                v267 = v220;
                v224 = sub_1D8BF10C0();
                v226 = sub_1D8BBE6E8(v224, v225, v270);

                *(v97 + 4) = v226;
                *(v97 + 12) = 2082;
                if (v247)
                {
                  v227 = 7104878;
                  v228 = 0xE300000000000000;
                }

                else
                {
                  v229 = objc_alloc(MEMORY[0x1E696AEC0]);
                  OUTLINED_FUNCTION_9_2();
                  a3 = [v230 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
                  v227 = sub_1D8BF09E0();
                  v228 = v231;
                }

                sub_1D8BBE6E8(v227, v228, v270);
                OUTLINED_FUNCTION_33_0();
                *(v97 + 14) = a3;
                *(v97 + 22) = 2050;
                *(v97 + 24) = *&v246;
                _os_log_impl(&dword_1D8BAF000, v222, v223, "predictSalientDepth[%{public}s] success normalizedSearchRect:%{public}s result:%{public}f", v97, 0x20u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_11_1();
                OUTLINED_FUNCTION_11_1();
              }

              v232 = v262;
              *v262 = v246;
              OUTLINED_FUNCTION_45();
              sub_1D8BCF208(v233, v234, v235, v236);
              OUTLINED_FUNCTION_18_0();
              *(v232 + 1) = v238;
              *(v232 + 2) = v237;
              *(v232 + 3) = v219;
              *(v232 + 4) = v80;
              *(v232 + 5) = v221;
              v232[12] = LODWORD(v123);
              v239 = OUTLINED_FUNCTION_12_1(&v271);
              CVPixelBufferUnlockBaseAddress(v239, 1uLL);

              OUTLINED_FUNCTION_27_0();
              OUTLINED_FUNCTION_30_0();

              OUTLINED_FUNCTION_40_0();
              if (v263)
              {
                sub_1D8BDB448();
              }

              sub_1D8BCE754(v264);

              return;
            }

            if (__OFADD__(v172, v174))
            {
              goto LABEL_201;
            }

            v89.n128_f64[0] = v89.n128_f64[0] + v176 / v256[v172 + v174];
            v88.n128_f64[0] = v88.n128_f64[0] + v176;
          }

          ++v174;
          if (!--v173)
          {
            goto LABEL_117;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_234:
    MEMORY[0x1DA722DA0](0, Height, v88, v89, v90);
  }

LABEL_117:
  if (++v33 != v37)
  {
    goto LABEL_100;
  }

  if (v89.n128_f64[0] <= 0.0)
  {
LABEL_95:
    v163 = v259;

    v164 = sub_1D8BF0880();
    sub_1D8BF0B90();

    if (OUTLINED_FUNCTION_41_0())
    {
      swift_slowAlloc();
      v33 = v87;
      v80 = OUTLINED_FUNCTION_19_0();
      v268 = v80;
      *v87 = 136446210;
      v270[0] = v163;
      Height = v270;
      v165 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_28_0(v165, v166);
      OUTLINED_FUNCTION_33_0();
      *(v87 + 4) = a3;
      OUTLINED_FUNCTION_13_1(&dword_1D8BAF000, v167, v168, "predictSalientDepth[%{public}s] invalid depth map received, aborting.");
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_11_1();

      OUTLINED_FUNCTION_23_0();
    }

    else
    {

      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_16_1();
    }

    v181 = sub_1D8BCF4AC();
    OUTLINED_FUNCTION_65(&type metadata for SpatialPhoto.PredictSalientDepthError, v181);
    *v182 = 2;
    *(v182 + 8) = 0;
    *(v182 + 16) = 0;
    *(v182 + 24) = 0;
    *(v182 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_14_1();

    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_30_0();

    if (Height)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v177 = v88.n128_f64[0] / v89.n128_f64[0];
  v178 = v248;
  sub_1D8BCEBFC(v259, v177);
  v248 = v178;
  if (v178)
  {
    v180 = OUTLINED_FUNCTION_12_1(&v271);
    CVPixelBufferUnlockBaseAddress(v180, 1uLL);

    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_30_0();

    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_23_0();
    if (Height)
    {
      sub_1D8BDB448();
    }

    goto LABEL_24;
  }

  v244 = Height;
  LODWORD(v246) = v179;
  LODWORD(v123) = 0;
  v185 = OUTLINED_FUNCTION_12_1(&v272);
  a3 = sub_1D8BCF11C(v185, v186);
  v187 = sub_1D8BCF11C(v34, 0.0);
  if (v257 < 0)
  {
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  v80 = v187;
  if (!v257)
  {
    goto LABEL_202;
  }

  OUTLINED_FUNCTION_17_0();
  if (v188 < 0)
  {
    goto LABEL_267;
  }

  v34 = 0;
  Height = 0;
  v97 = 32;
  v37 = 2139095039;
  v189 = 9.2234e18;
  v87 = v256;
  v190 = v249;
  v191 = a3;
  while (1)
  {
    v192 = v125 * Height;
    if (COERCE_INT(fabs(v192)) > 2139095039)
    {
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
      goto LABEL_247;
    }

    if (v192 <= -9.2234e18)
    {
      goto LABEL_245;
    }

    if (v192 >= v189)
    {
      goto LABEL_246;
    }

    if (v258)
    {
      break;
    }

LABEL_163:
    ++Height;
    OUTLINED_FUNCTION_17_0();
    v34 += v197;
    v97 += v266;
    v87 += v266;
    OUTLINED_FUNCTION_18_0();
    if (Height == v198)
    {
      goto LABEL_203;
    }
  }

  if ((Height * v258) >> 64 != (Height * v258) >> 63)
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  a3 = v192 * v190;
  if ((v192 * v190) >> 64 != a3 >> 63)
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  v33 = v191;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8BCF428(v33);
    v33 = v199;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8BCF428(v80);
    v80 = v200;
  }

  v193 = 0;
  while (1)
  {
    v194 = v120 * v193;
    if (COERCE_INT(fabs(v194)) > 2139095039)
    {
      break;
    }

    if (v194 <= -9.2234e18)
    {
      goto LABEL_225;
    }

    if (v194 >= 9.2234e18)
    {
      goto LABEL_226;
    }

    if (__OFADD__(a3, v194))
    {
      goto LABEL_227;
    }

    if (v34 < 0)
    {
      goto LABEL_228;
    }

    if (v34 + v193 >= *(v33 + 16))
    {
      goto LABEL_229;
    }

    v195 = v96[a3 + v194];
    *(v33 + v97 + 4 * v193) = v195;
    if (v34 + v193 >= v80[2])
    {
      goto LABEL_230;
    }

    *(v80 + 4 * v193 + v97) = *&v87[4 * v193];
    v196 = v193 + 1;
    if (*&v123 <= v195)
    {
      *&v123 = v195;
    }

    ++v193;
    if (v258 == v196)
    {
      goto LABEL_163;
    }
  }

LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
LABEL_45:
  v99 = sub_1D8BF08A0();
  __swift_project_value_buffer(v99, qword_1EE320A70);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12_1(v100);

  v101 = sub_1D8BF0880();
  sub_1D8BF0B90();

  if (OUTLINED_FUNCTION_41_0())
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_37_0();
    v102 = OUTLINED_FUNCTION_19_0();
    v268 = v102;
    *v87 = 136446210;
    v270[0] = v34;
    Height = v270;
    v103 = sub_1D8BF10C0();
    OUTLINED_FUNCTION_28_0(v103, v104);
    OUTLINED_FUNCTION_33_0();
    *(v87 + 4) = a3;
    OUTLINED_FUNCTION_13_1(&dword_1D8BAF000, v105, v106, "predictSalientDepth[%{public}s] cannot predict saliency map.");
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_11_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_16_1();
  }

  v107 = sub_1D8BCF4AC();
  OUTLINED_FUNCTION_65(&type metadata for SpatialPhoto.PredictSalientDepthError, v107);
  *v108 = 0u;
  *(v108 + 16) = 0u;
  *(v108 + 32) = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_30_0();
LABEL_49:

LABEL_50:
  if (v263)
  {
LABEL_23:
    sub_1D8BDB448();
  }

LABEL_24:
  sub_1D8BCE754(v33);
}

void SpatialPhoto.SalientDepthResult.saliencyMap.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  sub_1D8BCF500(v2, v3, v4, v5);
}

__n128 SpatialPhoto.SalientDepthResult.saliencyMap.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1D8BCF208(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

float sub_1D8BCE5A0(float (*a1)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[3];
  if (!v7)
  {
    return 0.0;
  }

  v8 = v6[4];
  v10 = v6[1];
  v9 = v6[2];
  v11 = a1(a1, a2, a3, a4, a5, a6);
  sub_1D8BCF500(v10, v9, v7, v8);

  return v11;
}

uint64_t SpatialPhoto.SalientDepthResult.description.getter()
{
  v1 = *(v0 + 24);
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](0xD000000000000018, 0x80000001D8BF3A60);
  sub_1D8BF0B10();
  MEMORY[0x1DA722A10](0xD000000000000012, 0x80000001D8BF3A80);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA722A10](v2, v3);

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D8BCE754(uint64_t a1)
{
  v1 = sub_1D8BF0830();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8BF07F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v9 = sub_1D8BF0820();
  __swift_project_value_buffer(v9, qword_1ECAA4C20);
  v10 = sub_1D8BF0810();
  sub_1D8BF0840();
  v11 = sub_1D8BF0C80();
  if (sub_1D8BF0CF0())
  {

    sub_1D8BF0870();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v10, v11, v14, "PredictSalientDepth", v12, v13, 2u);
    MEMORY[0x1DA723A30](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D8BCE9E0(uint64_t a1)
{
  if (sub_1D8BB731C())
  {
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    if (*(a1 + 48) > *(a1 + 44))
    {
      return;
    }

    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
    }

    v3 = sub_1D8BF08A0();
    __swift_project_value_buffer(v3, qword_1EE320A70);

    v4 = sub_1D8BF0880();
    v5 = sub_1D8BF0B90();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_24_0();
      v16 = swift_slowAlloc();
      *v6 = 136446466;
      v7 = sub_1D8BF10C0();
      sub_1D8BBE6E8(v7, v8, &v16);
      OUTLINED_FUNCTION_29_0();
      *(v6 + 4) = v1;
      *(v6 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4850, &qword_1D8BF8280);
      sub_1D8BCF7E8();
      v9 = sub_1D8BF0FE0();
      v11 = sub_1D8BBE6E8(v9, v10, &v16);

      *(v6 + 14) = v11;
      _os_log_impl(&dword_1D8BAF000, v4, v5, "predictSalientDepth[%{public}s] invalid depth range:%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_11_1();
    }

    v12 = sub_1D8BCF794();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O13AnalysisErrorON, v12);
    v14 = 0;
  }

  else
  {
    v15 = sub_1D8BCF794();
    OUTLINED_FUNCTION_65(&_s14descr1F54466F9O13AnalysisErrorON, v15);
    v14 = 2;
  }

  *v13 = v14;
  swift_willThrow();
}

void sub_1D8BCEBFC(uint64_t a1, float a2)
{
  sub_1D8BCE9E0(a1);
  if (!v2)
  {
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    v6 = *(a1 + 48) - *(a1 + 44);
    if (v6 <= 0.0)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v26 = sub_1D8BF08A0();
      __swift_project_value_buffer(v26, qword_1EE320A70);
      OUTLINED_FUNCTION_36_0();

      v27 = sub_1D8BF0880();
      v28 = sub_1D8BF0B90();

      if (OUTLINED_FUNCTION_41_0())
      {
        v29 = OUTLINED_FUNCTION_24_0();
        v45 = a1;
        v46 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = sub_1D8BF10C0();
        sub_1D8BBE6E8(v30, v31, &v46);
        OUTLINED_FUNCTION_29_0();
        *(v29 + 4) = v3;
        *(v29 + 12) = 2082;
        v45 = *(a1 + 44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4850, &qword_1D8BF8280);
        sub_1D8BCF7E8();
        v32 = sub_1D8BF0FE0();
        sub_1D8BBE6E8(v32, v33, &v46);
        OUTLINED_FUNCTION_36_0();

        *(v29 + 14) = &v45;
        _os_log_impl(&dword_1D8BAF000, v27, v28, "predictSalientDepth[%{public}s] invalid depth range:%{public}s", v29, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_11_1();
      }

      v34 = sub_1D8BCF794();
      OUTLINED_FUNCTION_65(&_s14descr1F54466F9O13AnalysisErrorON, v34);
      *v35 = 0;
      goto LABEL_25;
    }

    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
    }

    v7 = a2 / v6;
    v8 = sub_1D8BF08A0();
    __swift_project_value_buffer(v8, qword_1EE320A70);

    v9 = sub_1D8BF0880();
    v10 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_76();
      v45 = a1;
      v46 = v12;
      *v11 = 136446978;
      v13 = sub_1D8BF10C0();
      v15 = sub_1D8BBE6E8(v13, v14, &v46);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v6;
      *(v11 + 22) = 2048;
      *(v11 + 24) = a2;
      *(v11 + 32) = 2048;
      *(v11 + 34) = v7;
      _os_log_impl(&dword_1D8BAF000, v9, v10, "normalizeSceneDepth[%{public}s] sceneDepthLength:%f sceneDepth:%f normalizedSceneSpaceDepth:%f", v11, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
    }

    if (COERCE_UNSIGNED_INT(fabs(a2 / v6)) > 0x7F7FFFFF)
    {

      v16 = sub_1D8BF0880();
      v17 = sub_1D8BF0B90();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_24_0();
        v19 = OUTLINED_FUNCTION_76();
        v45 = a1;
        v46 = v19;
        *v18 = 136446466;
        v20 = sub_1D8BF10C0();
        sub_1D8BBE6E8(v20, v21, &v46);
        OUTLINED_FUNCTION_36_0();

        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_32_0(&dword_1D8BAF000, v22, v17, "normalizeSceneDepth[%{public}s] invalid computed depth:%{public}f");
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_11_1();
      }

      v23 = sub_1D8BCF794();
      OUTLINED_FUNCTION_65(&_s14descr1F54466F9O13AnalysisErrorON, v23);
      v25 = 1;
LABEL_24:
      *v24 = v25;
LABEL_25:
      swift_willThrow();
      return;
    }

    if (v7 < COERCE_FLOAT(-2147483647) || v7 > 1.0)
    {

      v37 = sub_1D8BF0880();
      v38 = sub_1D8BF0B90();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_24_0();
        v40 = OUTLINED_FUNCTION_76();
        v45 = a1;
        v46 = v40;
        *v39 = 136446466;
        v41 = sub_1D8BF10C0();
        sub_1D8BBE6E8(v41, v42, &v46);
        OUTLINED_FUNCTION_36_0();

        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_32_0(&dword_1D8BAF000, v43, v38, "normalizeSceneDepth[%{public}s] computed depth out of valid range:%{public}f");
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_11_1();
      }

      v44 = sub_1D8BCF794();
      OUTLINED_FUNCTION_65(&_s14descr1F54466F9O13AnalysisErrorON, v44);
      v25 = 3;
      goto LABEL_24;
    }
  }
}

uint64_t sub_1D8BCF11C(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1D8BF0AD0();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1D8BF7CD0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1D8BF7CC0)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1D8BCF208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

id sub_1D8BCF24C(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for VNImageOption(0);
  sub_1D8BCF38C();
  v6 = sub_1D8BF0960();

  v7 = [v3 initWithCVPixelBuffer:a1 options:v6 session:a3];

  return v7;
}

uint64_t sub_1D8BCF2EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

uint64_t sub_1D8BCF310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA45F0, &qword_1D8BF7680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

unint64_t sub_1D8BCF38C()
{
  result = qword_1ECAA4228;
  if (!qword_1ECAA4228)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4228);
  }

  return result;
}

unint64_t sub_1D8BCF3E4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D8BCF408(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8BCF43C(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D8BCF84C(0, &qword_1ECAA4860, 0x1E6984660);
  v3 = sub_1D8BF0AB0();

  return v3;
}

unint64_t sub_1D8BCF4AC()
{
  result = qword_1ECAA4840;
  if (!qword_1ECAA4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4840);
  }

  return result;
}

void sub_1D8BCF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t _s14descr1F54466F9O24PredictSalientDepthErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr1F54466F9O24PredictSalientDepthErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1D8BCF598(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BCF5B4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = v2;
  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8BCF5FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BCF63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22PhotosSpatialMediaCore0B5PhotoO11SaliencyMapVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8BCF6CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 52))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BCF720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1D8BCF794()
{
  result = qword_1ECAA4848;
  if (!qword_1ECAA4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4848);
  }

  return result;
}

unint64_t sub_1D8BCF7E8()
{
  result = qword_1ECAA4858;
  if (!qword_1ECAA4858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAA4850, &qword_1D8BF8280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4858);
  }

  return result;
}

uint64_t sub_1D8BCF84C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _s14descr1F54466F9O13AnalysisErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F54466F9O13AnalysisErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8BCF9F4()
{
  result = qword_1ECAA4868;
  if (!qword_1ECAA4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x1DA723A30);
}

void OUTLINED_FUNCTION_8_1()
{
  *(v3 - 384) = v0;
  *(v3 - 256) = v2;
  *(v3 - 248) = v1;
}

void OUTLINED_FUNCTION_10_2()
{

  JUMPOUT(0x1DA723A30);
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x1DA723A30);
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v2 = *(v0 - 360);

  return CVPixelBufferUnlockBaseAddress(v2, 1uLL);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_25_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  result = v2;
  *(v1 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return swift_unknownObjectRelease();
}

unint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, unint64_t a2)
{

  return sub_1D8BBE6E8(a1, a2, (v2 - 224));
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

void OUTLINED_FUNCTION_30_0()
{
  v2 = *(v0 - 344);
}

void OUTLINED_FUNCTION_32_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_33_0()
{
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t result)
{
  *(v2 - 368) = v1;
  *(v2 - 224) = result;
  return result;
}

void OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 - 280);
}

BOOL OUTLINED_FUNCTION_41_0()
{

  return os_log_type_enabled(v0, v1);
}

double static SpatialPhoto.CameraTechnique.none.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

double static SpatialPhoto.CameraTechnique.gyroRotation(_:)@<D0>(__n128 *a1@<X8>, float64x2_t a2@<Q0>, __n128 a3@<Q1>)
{
  v4 = sub_1D8BF0C70();
  *v25.vector.f64 = a3;
  v23 = a2;
  v24 = a3;
  SPRotation3DGetEulerAngles(&v22, v25, &v23, v4);
  v5 = *v22.angles.f64;
  if (qword_1ECAA3E00 != -1)
  {
    v21 = *v22.angles.f64;
    swift_once();
    v5 = v21;
  }

  v6 = 1.0;
  if (byte_1ECAAA811)
  {
    v6 = -1.0;
  }

  *&v7 = v6 * *&v5;
  v16 = v6 * *&v5;
  v18 = -(*(&v5 + 1) * v6);
  *(&v7 + 1) = v18;
  v20 = v7;
  v8 = sub_1D8BF0C70();
  *&v22.angles.f64[2] = 0uLL;
  *v22.angles.f64 = v20;
  v22.order = v8;
  SPRotation3DMakeWithEulerAngles(&v23, &v22);
  v9 = v24;
  v10 = v23;
  if (qword_1ECAA3E70 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8BF08A0();
  __swift_project_value_buffer(v11, qword_1ECAA4C08);
  v12 = sub_1D8BF0880();
  v13 = sub_1D8BF0B80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v16;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v18;
    _os_log_impl(&dword_1D8BAF000, v12, v13, "angles: %f,%f", v14, 0x16u);
    MEMORY[0x1DA723A30](v14, -1, -1);
  }

  *a1 = v10;
  a1[1] = v9;
  return OUTLINED_FUNCTION_3_5();
}

double sub_1D8BCFFC0@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  v5 = -5.0;
  if (!v7 & v6)
  {
    v5 = v4;
  }

  sub_1D8BD09F0(v5);
  SPAngleMakeWithDegrees(v8);
  v9 = a1();
  OUTLINED_FUNCTION_4_3(v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v14, v15, v16, v26, v28, v30, v32, v33, v34);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF0000000000000;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 64) = v29;
  *(a2 + 72) = v31;
  *(a2 + 48) = v27;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0;
  return result;
}

double static SpatialPhoto.CameraTechnique.pedestal(_:)()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  if (!(!v2 & v1))
  {
    v0 = -0.004;
  }

  SPVector3DMake(v14, 0.0, v0, 0.0);
  *&result = OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]).n128_u64[0];
  return result;
}

double static SpatialPhoto.CameraTechnique.truck(_:)()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  v1 = -0.004;
  if (!v3 & v2)
  {
    v1 = v0;
  }

  SPVector3DMake(v15, v1, 0.0, 0.0);
  *&result = OUTLINED_FUNCTION_0_7(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1]).n128_u64[0];
  return result;
}

double static SpatialPhoto.CameraTechnique.dolly(_:)()
{
  OUTLINED_FUNCTION_1_3();
  v1 = v0 * -0.15;
  if (v2 > 0.0)
  {
    v3 = v1;
  }

  else
  {
    v3 = -0.0;
  }

  SPVector3DMake(v15, 0.0, 0.0, v3);
  *&result = OUTLINED_FUNCTION_0_7(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1]).n128_u64[0];
  return result;
}

double sub_1D8BD0188@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  v5 = -0.300000004;
  if (!v7 & v6)
  {
    v5 = v4;
  }

  v8 = sub_1D8BD09F0(v5);
  v9 = a1(v8);
  OUTLINED_FUNCTION_4_3(v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v14, v15, v16, v26, v28, v30, v32, v33, v34);
  *(a2 + 16) = v29;
  *(a2 + 24) = v31;
  *a2 = v27;
  *(a2 + 32) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x3FF0000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0;
  return result;
}

void static SpatialPhoto.CameraTechnique.circle(_:radius:)(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 <= 0.0)
  {
    v4 = 0.0;
    v7 = 1.0;
    if (a3 <= 1.0)
    {
      v7 = a3;
    }

    if (a3 > 0.0)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v4 = 1.0;
    if (a2 <= 1.0)
    {
      if (a3 <= 1.0)
      {
        v8 = a3;
      }

      else
      {
        v8 = 1.0;
      }

      if (a3 > 0.0)
      {
        v6 = v8;
      }

      else
      {
        v6 = 0.0;
      }

      v4 = a2;
    }

    else
    {
      v5 = 1.0;
      if (a3 <= 1.0)
      {
        v5 = a3;
      }

      if (a3 > 0.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0.0;
      }
    }
  }

  if (qword_1ECAA3D48 != -1)
  {
    swift_once();
  }

  v9 = v6 * *&qword_1ECAAA778;
  v10 = __sincos_stret(v4 * 3.14159265 + v4 * 3.14159265);
  v11 = v10.__sinval * v9;
  sub_1D8BD09F0(v10.__cosval * v9);
  v13 = v12;
  sub_1D8BD09F0(v11);
  v15 = v14;
  sub_1D8BD09F0(0.0);
  SPVector3DMake(&v19, v13, v15, v16);
  SPVector3DMake(&v19, 0.0, 0.0, 0.300000012);
  SPVector3DMake(&v19, 0.0, 1.0, 0.0);
  sub_1D8BF0B50();
  *a1 = v17;
  a1[1] = v18;
  OUTLINED_FUNCTION_3_5();
}

void static SpatialPhoto.CameraTechnique.zoom(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    a2 = 0.0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a2;
}

double static SpatialPhoto.CameraTechnique.dollyZoom(_:)@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_3();
  if (v3 > 0.0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0.0;
  }

  SPVector3DMake(v6, 0.0, 0.0, 0.300000012);
  result = v4 * v6[2] * -10.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  *a1 = 0u;
  *(a1 + 32) = result;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

__n128 SpatialPhoto.CameraTechnique.interpolated(towards:fraction:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>, float64_t a3@<D0>)
{
  v7 = sub_1D8BF0B60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v37 = *a1;
  v36 = v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v39 = *(a1 + 48);
  v38 = v13;
  v14 = *(a1 + 80);
  v42 = *(a1 + 96);
  v43 = v14;
  v15 = *(a1 + 112);
  v16 = *(v3 + 16);
  v35[1] = *v3;
  v35[0] = v16;
  v17 = *(v3 + 32);
  v18 = *(v3 + 64);
  v35[3] = *(v3 + 48);
  v35[2] = v18;
  v20 = *(v3 + 96);
  v41 = *(v3 + 80);
  v40 = v20;
  v19 = *(v3 + 112);
  v20.f64[0] = 0.0;
  if (a3 > 0.0)
  {
    v20.f64[0] = a3;
  }

  if (v20.f64[0] > 1.0)
  {
    v20.f64[0] = 1.0;
  }

  v44 = v20;
  v21 = *MEMORY[0x1E69E82B8];
  v22 = *(v8 + 104);
  v22(v10, v21, v7);
  sub_1D8BF0B40();
  v37 = v23;
  v36 = v24;
  v25 = *(v8 + 8);
  v25(v10, v7);
  v26 = v17 + v44.f64[0] * (v12 - v17);
  v22(v10, v21, v7);
  sub_1D8BF0B40();
  v39 = v27;
  v38 = v28;
  v25(v10, v7);
  v48[0] = vmlaq_n_f64(v41, vsubq_f64(v43, v41), v44.f64[0]);
  v48[1] = vmlaq_n_f64(v40, vsubq_f64(v42, v40), v44.f64[0]);
  SPVector3DMakeWithVector(v48, &v45);
  result = v45;
  v30 = v46;
  v31 = v47;
  v32 = v19 + v44.f64[0] * (v15 - v19);
  v33 = v36;
  *a2 = v37;
  a2[1] = v33;
  a2[2].n128_f64[0] = v26;
  v34 = v38;
  a2[3] = v39;
  a2[4] = v34;
  a2[6].n128_u64[0] = v30;
  a2[6].n128_u64[1] = v31;
  a2[5] = result;
  a2[7].n128_f64[0] = v32;
  return result;
}

uint64_t static SpatialPhoto.CameraTechnique.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v26 = *(a1 + 96);
  v27 = *(a1 + 80);
  v25 = *(a1 + 112);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 64);
  v13 = *(a2 + 72);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  v23 = *(a2 + 96);
  v24 = *(a2 + 80);
  v22 = *(a2 + 112);
  v32 = *(a1 + 16);
  v33 = v3;
  v31 = v2;
  v29 = v10;
  v30 = v11;
  v28 = v9;
  v17 = SPRotation3DEqualToRotation(&v31, &v28);
  v18 = 0;
  if (v17 && v4 == v12)
  {
    v31.f64[0] = v8;
    v31.f64[1] = v7;
    v32 = v6;
    v33 = v5;
    v29 = v14;
    v30 = v13;
    v28.f64[0] = v16;
    v28.f64[1] = v15;
    if (SPRotation3DEqualToRotation(&v31, &v28))
    {
      v19.f64[0] = v26;
      v19.f64[1] = v25;
      v20.f64[0] = v23;
      v20.f64[1] = v22;
      v18 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v27, v24), vceqq_f64(v19, v20))));
    }

    else
    {
      v18 = 0;
    }
  }

  return v18 & 1;
}

void SPRotation3DMakeWithEulerAngles(float64x2_t *__return_ptr a1@<X8>, SPEulerAngles *a2@<X0>)
{
  order = a2->order;
  __asm { FMOV            V2.2D, #0.5 }

  xa = vmulq_f64(*a2->angles.f64, _Q2);
  v23 = *&vmulq_f64(*&a2->angles.f64[2], _Q2);
  v20 = _simd_cos_d2(xa);
  v19 = _simd_cos_d2(v23);
  x = _simd_sin_d2(xa);
  v9 = _simd_sin_d2(v23);
  if (order == SPEulerZXY)
  {
    v16.f64[0] = v9.f64[0];
    v16.f64[1] = -v9.f64[0];
    v17 = vmulq_f64(vzip1q_s64(v20, x), v16);
    v18 = vdupq_lane_s64(*&v9.f64[0], 0);
    v18.f64[0] = -v19.f64[0];
    v14 = vmlaq_f64(vmulq_f64(v17, vzip2q_s64(x, v20)), vzip2q_s64(v20, x), vmulq_f64(vzip1q_s64(v19, v20), vzip1q_s64(x, v19)));
    v15 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), x), v18), vzip1q_s64(v9, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v20));
  }

  else
  {
    if (order != SPEulerPitchYawRoll)
    {
      v15 = unk_1D8BF7FD0;
      *a1 = SPRotation3DInvalid;
      goto LABEL_7;
    }

    v10.f64[0] = v19.f64[0];
    v10.f64[1] = x.f64[1];
    v11 = vdupq_lane_s64(*&v9.f64[0], 0);
    v12.f64[1] = v11.f64[1];
    v12.f64[0] = -x.f64[0];
    v13.f64[0] = v9.f64[0];
    v13.f64[1] = v20.f64[1];
    v11.f64[0] = -v20.f64[0];
    v14 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), v13), v11), vzip1q_s64(x, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v10));
    v15 = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v12, x, 1), vzip1q_s64(v19, x)), vzip1q_s64(v9, v20), vmulq_f64(v20, vextq_s8(v20, v19, 8uLL)));
  }

  *a1 = v14;
LABEL_7:
  a1[1] = v15;
}

void SPRotation3DMake(SPAngle a1@<0:D0>, SPRotationAxis3D *a2@<X0>, float64x2_t *a3@<X8>, float64x2_t a4@<Q2>)
{
  a4.f64[0] = a2->z;
  v6 = vceqzq_f64(*&a2->x);
  if (((v6.i64[0] & v6.i64[1] & vceqzq_f64(a4).u64[0] & 0x8000000000000000) != 0) != v4)
  {
    v11 = xmmword_1D8BF7710;
    v10 = 0uLL;
  }

  else
  {
    v13 = *&a2->vector.f64[2];
    v14 = *&a2->x;
    v7 = vmulq_f64(v13, v13);
    v7.f64[0] = 1.0 / sqrt(v7.f64[0] + vaddvq_f64(vmulq_f64(v14, v14)));
    v12 = v7;
    v9 = __sincos_stret(a1.radians * 0.5);
    v8.f64[0] = v9.__sinval;
    v10 = vmulq_n_f64(vmulq_n_f64(v14, v12.f64[0]), v9.__sinval);
    *&v11.f64[0] = *&vmulq_f64(v8, vmulq_f64(v13, v12));
    v11.f64[1] = v9.__cosval;
  }

  *a3 = v10;
  a3[1] = v11;
}

__n128 SPVector3DMakeWithVector@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_1D8BD0AE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BD0B08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 120) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_0_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12)
{
  result = a10;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0x3FF0000000000000;
  *v12 = 0u;
  *(v12 + 32) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0x3FF0000000000000;
  *(v12 + 48) = 0u;
  *(v12 + 96) = a11;
  *(v12 + 104) = a12;
  *(v12 + 80) = a10;
  *(v12 + 112) = 0;
  return result;
}

double OUTLINED_FUNCTION_3_5()
{
  *(v0 + 32) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0x3FF0000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

void OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SPRotationAxis3D *a5, double a6, double a7, float64x2_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, float64x2_t a17, uint64_t a18, uint64_t a19, double a20, double a21, float64_t a22)
{
  a20 = a6;
  a21 = a7;
  a22 = a8.f64[0];
  v24.radians = v23;

  SPRotation3DMake(v24, &a20, &a17, a8);
}

void sub_1D8BD0BFC(void *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v22[0] = 0;
  v5 = [a1 newDefaultLibraryWithBundle:v4 error:v22];

  if (v5)
  {
    v6 = v22[0];
    v7 = sub_1D8BF09B0();
    v8 = [v5 newFunctionWithName_];

    if (v8)
    {
      v22[0] = 0;
      v9 = [a1 newComputePipelineStateWithFunction:v8 error:v22];
      v10 = v22[0];
      if (v9)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *(v1 + 16) = v9;
        swift_unknownObjectRelease();
        return;
      }

      v13 = v10;
      v12 = sub_1D8BEFEA0();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D8BD15C4();
      v12 = swift_allocError();
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v22[0];
    v12 = sub_1D8BEFEA0();

    swift_willThrow();
  }

  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
  }

  v14 = sub_1D8BF08A0();
  __swift_project_value_buffer(v14, qword_1EE320A70);
  v15 = v12;
  v16 = sub_1D8BF0880();
  v17 = sub_1D8BF0B90();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1D8BAF000, v16, v17, "MaskCompositingEffect failed to prepare %@", v18, 0xCu);
    sub_1D8BCF310(v19);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  else
  {
  }
}

void sub_1D8BD0F0C(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == 5)
  {
    v2 = *a1;
    v44 = *(a1 + 256);
    v45 = *(a1 + 240);
    v3 = *(a1 + 272);
    v4 = *(a1 + 536);
    memcpy(__dst, (a1 + 288), sizeof(__dst));
    if (sub_1D8BD15A8(__dst) == 1)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v5 = sub_1D8BF08A0();
      __swift_project_value_buffer(v5, qword_1EE320A70);
      v6 = sub_1D8BF0880();
      v7 = sub_1D8BF0B90();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_34;
      }

      v8 = OUTLINED_FUNCTION_2_6();
      *v8 = 0;
      v9 = "MaskCompositingEffect missing secondaryCamera";
LABEL_33:
      _os_log_impl(&dword_1D8BAF000, v6, v7, v9, v8, 2u);
      OUTLINED_FUNCTION_11_1();
LABEL_34:

      return;
    }

    v10 = [v3 newTextureViewWithPixelFormat_];
    if (!v10)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v36 = sub_1D8BF08A0();
      __swift_project_value_buffer(v36, qword_1EE320A70);
      v6 = sub_1D8BF0880();
      v7 = sub_1D8BF0B90();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_34;
      }

      v8 = OUTLINED_FUNCTION_2_6();
      *v8 = 0;
      v9 = "MaskCompositingEffect creating texture view from primaryDrawable failed";
      goto LABEL_33;
    }

    v11 = v10;
    if (!v4 || (v12 = [v4 newTextureViewWithPixelFormat_]) == 0)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v32 = sub_1D8BF08A0();
      __swift_project_value_buffer(v32, qword_1EE320A70);
      v33 = sub_1D8BF0880();
      v34 = sub_1D8BF0B90();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_2_6();
        *v35 = 0;
        _os_log_impl(&dword_1D8BAF000, v33, v34, "MaskCompositingEffect creating texture view from secondaryDrawable failed", v35, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      goto LABEL_39;
    }

    v13 = v12;
    v14 = *(v1 + 16);
    if (!v14)
    {
      if (qword_1EE320A68 == -1)
      {
LABEL_36:
        v37 = sub_1D8BF08A0();
        __swift_project_value_buffer(v37, qword_1EE320A70);
        v33 = sub_1D8BF0880();
        v38 = sub_1D8BF0B90();
        if (os_log_type_enabled(v33, v38))
        {
          v39 = OUTLINED_FUNCTION_2_6();
          *v39 = 0;
          _os_log_impl(&dword_1D8BAF000, v33, v38, "MaskCompositingEffect missing pipelineState", v39, 2u);
          OUTLINED_FUNCTION_11_1();
        }

        swift_unknownObjectRelease();
LABEL_39:

LABEL_46:
        swift_unknownObjectRelease();
        return;
      }

LABEL_54:
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      goto LABEL_36;
    }

    swift_unknownObjectRetain();
    v15 = [v2 computeCommandEncoder];
    if (!v15)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v40 = sub_1D8BF08A0();
      __swift_project_value_buffer(v40, qword_1EE320A70);
      v41 = sub_1D8BF0880();
      v42 = sub_1D8BF0B90();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_2_6();
        *v43 = 0;
        _os_log_impl(&dword_1D8BAF000, v41, v42, "MaskCompositingEffect makeComputeCommandEncoder failed", v43, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      swift_unknownObjectRelease();

      goto LABEL_45;
    }

    v16 = v15;
    [v15 setComputePipelineState_];
    [v16 setTexture:v13 atIndex:0];
    [v16 setTexture:v11 atIndex:1];
    v17 = vcvtq_f64_s64(vzip1q_s64(*&__dst[208], v45));
    v17.f64[0] = v17.f64[0] - v17.f64[1];
    if (v44)
    {
      v18 = v44;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = v17.f64[0] / v18;
    if (*(&v44 + 1))
    {
      v20 = *(&v44 + 1);
    }

    else
    {
      v20 = 1.0;
    }

    v21 = round(v17.f64[1] + v19 * v44 - v17.f64[1]);
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -32769.0)
    {
      if (v21 < 32768.0)
      {
        v22 = round(v45.i64[1] + (*&__dst[216] - v45.i64[1]) / v20 * *(&v44 + 1) - v45.i64[1]);
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v22 > -32769.0)
          {
            if (v22 < 32768.0)
            {
              v48[0] = v21;
              v48[1] = v22;
              [v16 setBytes:v48 length:4 atIndex:0];
              v23 = [v13 width];
              v24 = [v13 height];
              v25 = sub_1D8BD2208(v23, v24, 1, v14);
              v27 = v26;
              v29 = v28;
              v47[0] = sub_1D8BD2438(v25, v26, v28, v23, v24);
              v47[1] = v30;
              v47[2] = v31;
              v46[0] = v25;
              v46[1] = v27;
              v46[2] = v29;
              [v16 dispatchThreadgroups:v47 threadsPerThreadgroup:v46];
              [v16 endEncoding];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
LABEL_45:
              swift_unknownObjectRelease();
              goto LABEL_46;
            }

            goto LABEL_53;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_50;
  }
}

uint64_t sub_1D8BD150C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D8BD1534()
{
  sub_1D8BD150C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8BD158C()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1D8BD15A8(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8BD15C4()
{
  result = qword_1ECAA4878;
  if (!qword_1ECAA4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4878);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O21MaskCompositingEffectC5ErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D8BD16C8()
{
  result = qword_1ECAA4880;
  if (!qword_1ECAA4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4880);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return swift_slowAlloc();
}

uint64_t SpatialPhoto.DepthNormalization.__allocating_init(device:)(void *a1)
{
  v2 = swift_allocObject();
  SpatialPhoto.DepthNormalization.init(device:)(a1);
  return v2;
}

uint64_t *SpatialPhoto.DepthNormalization.init(device:)(void *a1)
{
  v1[4] = 0x3F80000000000000;
  v1[2] = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  swift_unknownObjectRetain();
  v4 = [v3 bundleForClass_];
  v5 = OUTLINED_FUNCTION_0_8();
  v7 = [v5 v6];

  if (!v7)
  {
    v16 = 0;
    sub_1D8BEFEA0();

    swift_willThrow();
LABEL_7:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    type metadata accessor for SpatialPhoto.DepthNormalization();
    swift_deallocPartialClassInstance();
    return v1;
  }

  v8 = 0;
  v9 = sub_1D8BF09B0();
  v10 = [v7 newFunctionWithName_];

  if (!v10)
  {
    sub_1D8BD1A00();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v11 = OUTLINED_FUNCTION_0_8();
  v13 = [v11 v12];
  if (!v13)
  {
    v19 = 0;
    sub_1D8BEFEA0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v14 = v13;
  v15 = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1[3] = v14;
  return v1;
}

unint64_t sub_1D8BD1A00()
{
  result = qword_1ECAA4890;
  if (!qword_1ECAA4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4890);
  }

  return result;
}

uint64_t sub_1D8BD1B28(void *a1, uint64_t a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  *&v32[32] = a6;
  *&v32[48] = a7;
  *v32 = a4;
  *&v32[16] = a5;
  v41 = *MEMORY[0x1E69E9840];
  v11 = v7[2];
  swift_unknownObjectRetain();
  v12 = [a3 device];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v11 != v12)
  {
    v13 = 0;
LABEL_3:
    sub_1D8BD1A00();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  v16 = [a3 computeCommandEncoder];
  if (!v16)
  {
    v13 = 4;
    goto LABEL_3;
  }

  v17 = v16;
  if (a2)
  {
    v18 = OUTLINED_FUNCTION_0_8();
    [v18 v19];
  }

  v20 = v7[3];
  [v17 setComputePipelineState_];
  [v17 setTexture:a1 atIndex:0];
  v31 = [a1 width];
  v21 = [a1 height];
  *&v22 = v31;
  *(&v22 + 1) = v21;
  v38 = v22;
  v39 = __invert_f4(*v32);
  swift_beginAccess();
  v40 = v7[4];
  [v17 setBytes:&v38 length:96 atIndex:0];
  v23 = [v20 threadExecutionWidth];
  v24 = [v20 maxTotalThreadsPerThreadgroup];
  if (!v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 == 0x8000000000000000 && v23 == -1)
  {
LABEL_17:
    __break(1u);
  }

  MTLSizeMake(v23, v24 / v23, &v36);
  v33 = v36;
  v26 = v37;
  v27 = [a1 width];
  v28 = [a1 height];
  *&v36 = v27;
  *(&v36 + 1) = v28;
  v37 = 1;
  v34 = v33;
  v35 = v26;
  [v17 dispatchThreads:&v36 threadsPerThreadgroup:&v34];
  if (a2)
  {
    v29 = OUTLINED_FUNCTION_0_8();
    [v29 v30];
  }

  [v17 endEncoding];
  return swift_unknownObjectRelease();
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_1D8BD1DF8(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = *(a1 + 112);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    v2 = *a1;
    v3 = swift_unknownObjectRetain();
    sub_1D8BD1B28(v3, v1, v2, v6, v7, v8, v9);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8BD1A00();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }
}

uint64_t SpatialPhoto.DepthNormalization.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.DepthNormalization.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SpatialPhoto.DepthNormalization.__deallocating_deinit()
{
  SpatialPhoto.DepthNormalization.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D8BD1F98()
{
  result = qword_1ECAA4898;
  if (!qword_1ECAA4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4898);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O18DepthNormalizationC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BD2208(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = [a4 threadExecutionWidth];
  result = [a4 maxTotalThreadsPerThreadgroup];
  if (!v5)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v7 = result;
  if (result == 0x8000000000000000 && v5 == -1)
  {
    goto LABEL_65;
  }

  v9 = result / v5;
  result = MTLSizeMake(v5, result / v5, &v35);
  v32 = v35;
  if (v7 < v5)
  {
    return v32;
  }

  v10 = a1 * a2;
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = v5;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v14 = a1 + v12;
      if (__OFADD__(a1, v12))
      {
        break;
      }

      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        goto LABEL_50;
      }

      if (v16 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_60;
      }

      v18 = a2 + v9;
      if (__OFADD__(a2, v9))
      {
        goto LABEL_51;
      }

      v15 = __OFSUB__(v18, 1);
      v19 = v18 - 1;
      if (v15)
      {
        goto LABEL_52;
      }

      if (!v9)
      {
        goto LABEL_53;
      }

      if (v19 == 0x8000000000000000 && v9 == -1)
      {
        goto LABEL_61;
      }

      v21 = v16 / v12;
      result = v21 * v12;
      if ((v21 * v12) >> 64 != (v21 * v12) >> 63)
      {
        goto LABEL_54;
      }

      v22 = v19 / v9 * v9;
      if ((v19 / v9 * v9) >> 64 != v22 >> 63)
      {
        goto LABEL_55;
      }

      result = MTLSizeMake(result, v22, &v35);
      v23 = v35 * v36;
      if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
      {
        goto LABEL_56;
      }

      v24 = v23 - v10;
      if (__OFSUB__(v23, v10))
      {
        goto LABEL_57;
      }

      if (v9 >= v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = v9;
      }

      if (v9 <= v12)
      {
        v26 = v12;
      }

      else
      {
        v26 = v9;
      }

      if (v26 == 0x8000000000000000 && v25 == -1)
      {
        goto LABEL_62;
      }

      v28 = v26 / v25;
      if (v13 >= v24 && v11 >= v28)
      {
        result = MTLSizeMake(v12, v9, &v35);
        v32 = v35;
        v11 = v28;
        v13 = v24;
      }

      v30 = v12 + v5;
      if (__OFADD__(v12, v5))
      {
        goto LABEL_58;
      }

      if (!v30)
      {
        goto LABEL_59;
      }

      if (v7 == 0x8000000000000000 && v30 == -1)
      {
        goto LABEL_63;
      }

      v12 += v5;
      v9 = v7 / v30;
      if (v7 < v30)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1D8BD2438(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + result;
  if (__OFADD__(a4, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_22;
  }

  v9 = a5 + a2;
  if (__OFADD__(a5, a2))
  {
    goto LABEL_19;
  }

  v6 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  if (v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!a2)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 != 0x8000000000000000 || a2 != -1)
  {
    return v7 / result;
  }

LABEL_23:
  __break(1u);
  return result;
}

void SpatialPhoto.OcclusionResult.normalizedSearchRect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void SpatialPhoto.OcclusionResult.salientDepthResult.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  sub_1D8BD2568(v2, v3, v4, v5, v6);
}

void sub_1D8BD2568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 1)
  {
    sub_1D8BCF500(a2, a3, a4, a5);
  }
}

__n128 SpatialPhoto.OcclusionResult.salientDepthResult.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_1D8BD25F0(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

void sub_1D8BD25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 1)
  {
    sub_1D8BCF208(a2, a3, a4, a5);
  }
}

__n128 SpatialPhoto.OcclusionResult.analysisRegion.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 128);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 96);
  v6 = *(v1 + 112);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  *(a1 + 64) = v3;
  *(a1 + 65) = v2;
  return result;
}

uint64_t SpatialPhoto.OcclusionResult.description.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v12 = *v0;
  v13 = v0[4];
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](0xD000000000000018, 0x80000001D8BF3BB0);
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v12, v1, v2];
  v4 = sub_1D8BF09E0();
  v6 = v5;

  MEMORY[0x1DA722A10](v4, v6);

  MEMORY[0x1DA722A10](0xD000000000000016, 0x80000001D8BF3BD0);
  if (v13 == 1)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = SpatialPhoto.SalientDepthResult.description.getter();
    v7 = v9;
  }

  MEMORY[0x1DA722A10](v8, v7);

  MEMORY[0x1DA722A10](0x73796C616E61202CLL, 0xEC000000203A7369);
  v10 = SpatialPhoto.Scene.OcclusionAnalysis.description.getter();
  MEMORY[0x1DA722A10](v10);

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D8BD283C()
{
  v1 = *v0;
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 3);
  v8 = *(v0 + 8);
  v7 = *(v0 + 9);
  v131 = *(v0 + 7);
  v148 = *(v0 + 9);
  v9 = *(v0 + 88);
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](14963, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0, &qword_1D8BF8290);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6530];
  *(v10 + 16) = xmmword_1D8BF5A50;
  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v1;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28_1();
  v13 = OUTLINED_FUNCTION_5_3();
  v14 = MEMORY[0x1E69E6448];
  *(v13 + 16) = xmmword_1D8BF5A50;
  v15 = MEMORY[0x1E69E64A8];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = v3;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28_1();
  v16 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v16, v17, v18, v19, v20, v21, v22, v23, v24, v131, *(&v131 + 1), v148, *(&v148 + 1), v25);
  *(v26 + 56) = v14;
  *(v26 + 64) = v15;
  *(v26 + 32) = v2;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A70616720, 0xE500000000000000);
  v27 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v27, v28, v29, v30, v31, v32, v33, v34, v35, v132, v140, v149, v157, v36);
  *(v37 + 56) = v14;
  *(v37 + 64) = v15;
  *(v37 + 32) = v5;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A6565726620, 0xE600000000000000);
  v38 = OUTLINED_FUNCTION_5_3();
  v39 = MEMORY[0x1E69E63B0];
  *(v38 + 16) = xmmword_1D8BF5A50;
  v40 = MEMORY[0x1E69E6438];
  *(v38 + 56) = v39;
  *(v38 + 64) = v40;
  *(v38 + 32) = v6;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A63636F20, 0xE500000000000000);
  v41 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v41, v42, v43, v44, v45, v46, v47, v48, v49, v133, v141, v150, v158, v50);
  *(v51 + 56) = v14;
  *(v51 + 64) = v15;
  *(v51 + 32) = v8;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A63634F7320, 0xE600000000000000);
  v52 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v52, v53, v54, v55, v56, v57, v58, v59, v60, v134, v142, v151, v159, v61);
  *(v62 + 56) = v14;
  *(v62 + 64) = v15;
  *(v62 + 32) = v7;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28_1();
  v63 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v63, v64, v65, v66, v67, v68, v69, v70, v71, v135, v143, v152, v160, v72);
  v73 = v6 * 30.0;
  *(v74 + 56) = v39;
  *(v74 + 64) = v40;
  *(v74 + 32) = v73;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  v75 = 0xE300000000000000;
  OUTLINED_FUNCTION_16_2();
  v76 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v76, v77, v78, v79, v80, v81, v82, v83, v84, v136, v144, v153, v161, v85);
  v86 = v8 * 25.0;
  *(v87 + 56) = v39;
  *(v87 + 64) = v40;
  *(v87 + 32) = v86;
  OUTLINED_FUNCTION_15();
  v88 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v88);

  OUTLINED_FUNCTION_16_2();
  v89 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v89, v90, v91, v92, v93, v94, v95, v96, v97, v137, v145, v154, v162, v98);
  v99 = v7;
  *(v100 + 56) = v39;
  *(v100 + 64) = v40;
  *(v100 + 32) = v99;
  OUTLINED_FUNCTION_15();
  v101 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v101);

  OUTLINED_FUNCTION_16_2();
  v102 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v102, v103, v104, v105, v106, v107, v108, v109, v110, v138, v146, v155, v163, v111);
  v112 = (1.0 - v4) * 10.0;
  *(v113 + 56) = v39;
  *(v113 + 64) = v40;
  *(v113 + 32) = v112;
  OUTLINED_FUNCTION_15();
  v114 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v114);

  MEMORY[0x1DA722A10](2112800, 0xE300000000000000);
  v115 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v115, v116, v117, v118, v119, v120, v121, v122, v123, v139, v147, v156, v164, v124);
  v126 = v112 + v73 + v86 + v99;
  if (v9 != 6)
  {
    v126 = -1000.0;
  }

  *(v125 + 56) = v39;
  *(v125 + 64) = v40;
  *(v125 + 32) = v126;
  OUTLINED_FUNCTION_15();
  v127 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v127);

  MEMORY[0x1DA722A10](0x656D6F6374756F20, 0xE90000000000003ALL);
  if (v9 == 255)
  {
    v128 = 7104878;
  }

  else
  {
    v128 = SpatialPhoto.Scene.OcclusionAnalysis.description.getter();
    v75 = v129;
  }

  MEMORY[0x1DA722A10](v128, v75);

  return 0;
}

uint64_t static SpatialPhoto.predictOcclusionDepth(for:normalizedSearchRect:isInteractive:sceneAnalysis:)(uint64_t a1, int a2, uint64_t a3)
{
  v8 = v3;
  v160 = a3;
  LODWORD(v164) = a2;
  OUTLINED_FUNCTION_35_0();
  v10 = v9;
  v162 = v11;
  v12 = sub_1D8BF07F0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v151 - v17;
  if (qword_1ECAA3E28 != -1)
  {
    swift_once();
  }

  _s14descr1F54466F9O28OcclusionDepthDebugCollectorCMa();
  v195 = swift_allocObject();
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v19 = sub_1D8BF0820();
  __swift_project_value_buffer(v19, qword_1ECAA4C20);
  sub_1D8BF0810();

  sub_1D8BF07C0();

  v20 = sub_1D8BF0810();
  LODWORD(v161) = sub_1D8BF0C90();

  if (sub_1D8BF0CF0())
  {
    v21 = OUTLINED_FUNCTION_24_0();
    v158 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    v159 = v3;
    v157 = v23;
    v186 = v23;
    *v22 = 136315394;
    v175[0] = v10;
    v24 = sub_1D8BF10C0();
    v26 = sub_1D8BBE6E8(v24, v25, &v186);
    v163 = v10;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v7, *&v6, *&v5, *&v4];
    v29 = sub_1D8BF09E0();
    v30 = v12;
    v32 = v31;

    v33 = v29;
    v10 = v163;
    v34 = sub_1D8BBE6E8(v33, v32, &v186);

    *(v22 + 14) = v34;
    v35 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v20, v161, v35, "PredictOcclusionDepth", "scene:%s normalizedSearchRect:%{public}s", v22, 0x16u);
    v12 = v30;
    swift_arrayDestroy();
    v8 = v159;
    OUTLINED_FUNCTION_11_1();
    v16 = v158;
    OUTLINED_FUNCTION_11_1();
  }

  (*(v13 + 16))(v16, v18, v12);
  sub_1D8BF0860();
  swift_allocObject();
  v36 = sub_1D8BF0850();
  (*(v13 + 8))(v18, v12);
  if (qword_1ECAA3D70 != -1)
  {
    swift_once();
  }

  if ((byte_1ECAAA79C & 1) == 0)
  {
    v42 = dword_1ECAAA798;
    v43 = *&dword_1ECAAA798;
    OUTLINED_FUNCTION_10_3();
    sub_1D8BF0DE0();
    OUTLINED_FUNCTION_36_1();
    MEMORY[0x1DA722A10](0xD000000000000035, 0x80000001D8BF3C40);
    sub_1D8BF0B10();
    MEMORY[0x1DA722A10](0x616E6120726F6620, 0xED0000736973796CLL);

    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
    }

    v44 = sub_1D8BF08A0();
    __swift_project_value_buffer(v44, qword_1EE320A70);
    v45 = sub_1D8BF0880();
    v46 = sub_1D8BF0BB0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v43;
      _os_log_impl(&dword_1D8BAF000, v45, v46, "SpatialPhoto SpatialPhotoCameraOverrideZSplit set to %f for analysis", v47, 0xCu);
      OUTLINED_FUNCTION_11_1();
    }

    v48 = v162;
    *v162 = v7;
    v48[1] = v6;
    v48[2] = v5;
    v48[3] = v4;
    OUTLINED_FUNCTION_33_1();
    *(v50 + 32) = v49;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 1;
    *(v50 + 72) = 0;
    *(v50 + 80) = 0;
    *(v50 + 88) = 0;
    *(v50 + 96) = v42;
    *(v50 + 104) = 0;
    *(v50 + 112) = 0;
    *(v50 + 120) = 0;
    *(v50 + 128) = 6;
    goto LABEL_24;
  }

  swift_beginAccess();
  v37 = *(v10 + 48) - *(v10 + 44);
  if (v37 <= 0.0)
  {
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
    }

    v51 = sub_1D8BF08A0();
    __swift_project_value_buffer(v51, qword_1EE320A70);
    OUTLINED_FUNCTION_18_1();

    v52 = sub_1D8BF0880();
    v53 = sub_1D8BF0B90();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_24_0();
      v186 = swift_slowAlloc();
      *v54 = 136446466;
      v175[0] = v10;
      v55 = sub_1D8BF10C0();
      sub_1D8BBE6E8(v55, v56, &v186);
      OUTLINED_FUNCTION_29_0();
      *(v54 + 4) = v20;
      *(v54 + 12) = 2082;
      v175[0] = *(v10 + 44);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4850, &qword_1D8BF8280);
      sub_1D8BCF7E8();
      v58 = sub_1D8BF0FE0();
      sub_1D8BBE6E8(v58, v59, &v186);
      OUTLINED_FUNCTION_29_0();
      *(v54 + 14) = v57;
      _os_log_impl(&dword_1D8BAF000, v52, v53, "predictOcclusionDepth[%{public}s] invalid depth range:%{public}s", v54, 0x16u);
      OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
    }

    sub_1D8BD7EDC();
    swift_allocError();
    *v60 = 2;
    *(v60 + 8) = 0;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = 1;
    swift_willThrow();
    goto LABEL_24;
  }

  type metadata accessor for SpatialPhoto.CaptureManager();
  OUTLINED_FUNCTION_10_3();
  sub_1D8BF0DE0();

  v186 = 0xD000000000000016;
  v187 = 0x80000001D8BF3BF0;
  v175[0] = v10;
  v38 = sub_1D8BF10C0();
  v163 = v10;
  MEMORY[0x1DA722A10](v38);

  MEMORY[0x1DA722A10](93, 0xE100000000000000);
  v39 = static SpatialPhoto.CaptureManager.start(_:device:)(v186, v187, 0);
  v40 = v163;

  v41 = sub_1D8BD45E4(v160, v40);
  if (!v8)
  {
    v62 = v41;
    *v193 = v7;
    *&v193[1] = v6;
    *&v193[2] = v5;
    *&v193[3] = v4;
    v194 = 0;

    static SpatialPhoto.predictSalientDepth(for:normalizedSearchRect:sceneAnalysis:)(v40, v193, v62, &v186);
    v157 = v36;
    v158 = v39;

    v63 = v186;
    v153 = v188;
    v154 = v187;
    *&v161 = v189;
    v64 = v190;
    v159 = v191;
    v65 = v192;
    OUTLINED_FUNCTION_10_3();
    sub_1D8BF0DE0();
    OUTLINED_FUNCTION_36_1();
    MEMORY[0x1DA722A10](0xD000000000000016, 0x80000001D8BF3BF0);
    v175[0] = v40;
    v66 = sub_1D8BF10C0();
    MEMORY[0x1DA722A10](v66);

    v67 = v159;
    MEMORY[0x1DA722A10](0xD00000000000002ELL, 0x80000001D8BF3C10);
    if (v161)
    {
      v68 = 1702195828;
    }

    else
    {
      v68 = 0x65736C6166;
    }

    if (v161)
    {
      v69 = 0xE400000000000000;
    }

    else
    {
      v69 = 0xE500000000000000;
    }

    MEMORY[0x1DA722A10](v68, v69);

    sub_1D8BEB168();
    LOBYTE(v186) = 4;
    sub_1D8BEB3E0(&v186);
    LOBYTE(v186) = 1;
    sub_1D8BEB5C4(&v186);
    v166 = v63;
    v167 = v154;
    v168 = v153;
    v169 = v161;
    v170 = v64;
    v171 = v67;
    v172 = v65;
    v70 = v154;
    v71 = v153;
    v155 = v64;
    v156 = v65;
    sub_1D8BCF500(v154, v153, v161, v64);
    v160 = v62;
    sub_1D8BD47CC(v40, &v166, v62, v164 & 1, 1.0, v7, v6, v5, v4);
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v152 = v78;
    v79 = v71;
    v80 = v161;
    OUTLINED_FUNCTION_37_1();
    v81 = v77;
    if (!v77)
    {
      v82 = v163;
      sub_1D8BCEBFC(v163, *&v152);
      OUTLINED_FUNCTION_34_1();
      v176 = v97;
      OUTLINED_FUNCTION_1_4(v98);
      v184 = v99;
      OUTLINED_FUNCTION_9_3();
      v185 = 6;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v100 = sub_1D8BF08A0();
      __swift_project_value_buffer(v100, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v101 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v101, v102);
      v103 = sub_1D8BF0880();
      v104 = sub_1D8BF0BB0();

      sub_1D8BD7FC8(v175);
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v174 = v164;
        *v105 = 136446978;
        v173[0] = v82;
        v106 = sub_1D8BF10C0();
        v108 = OUTLINED_FUNCTION_24_1(v106, v107);

        *(v105 + 4) = v108;
        *(v105 + 12) = 2082;
        OUTLINED_FUNCTION_19_1();
        v109 = OUTLINED_FUNCTION_7_3();
        sub_1D8BD7F90(v109, v110);
        v111 = SpatialPhoto.OcclusionResult.description.getter();
        v113 = v112;
        memcpy(v173, v165, 0x81uLL);
        sub_1D8BD7FC8(v173);
        sub_1D8BBE6E8(v111, v113, &v174);
        OUTLINED_FUNCTION_18_1();

        *(v105 + 14) = v111;
        *(v105 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0, &qword_1D8BF8290);
        v114 = swift_allocObject();
        v161 = xmmword_1D8BF5A50;
        v115 = MEMORY[0x1E69E6448];
        *(v114 + 16) = xmmword_1D8BF5A50;
        v116 = MEMORY[0x1E69E64A8];
        *(v114 + 56) = v115;
        *(v114 + 64) = v116;
        *(v114 + 32) = v37;
        OUTLINED_FUNCTION_15();
        v117 = sub_1D8BF0A10();
        v119 = sub_1D8BBE6E8(v117, v118, &v174);
        v82 = v163;

        *(v105 + 24) = v119;
        *(v105 + 32) = 2080;
        v120 = swift_allocObject();
        *(v120 + 16) = v161;
        *(v120 + 56) = MEMORY[0x1E69E6448];
        *(v120 + 64) = MEMORY[0x1E69E64A8];
        *(v120 + 32) = v152;
        OUTLINED_FUNCTION_15();
        v121 = sub_1D8BF0A10();
        v123 = OUTLINED_FUNCTION_24_1(v121, v122);

        *(v105 + 34) = v123;
        _os_log_impl(&dword_1D8BAF000, v103, v104, "predictOcclusionDepth[%{public}s] Success result:%{public}s sceneDepthLength:%s sceneDepth:%s", v105, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_11_1();
      }

      v124 = OUTLINED_FUNCTION_14_2();
      memcpy(v124, v125, 0x81uLL);
      v36 = v157;
LABEL_55:
      v150 = v158;
      v175[0] = v82;
      sub_1D8BF10C0();

      OUTLINED_FUNCTION_29_1();
      if (!v150)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    v82 = v163;
    if (v81 == 1)
    {
      OUTLINED_FUNCTION_34_1();
      v176 = v136;
      v177 = v137;
      v178 = v70;
      v179 = v79;
      v180 = v80;
      v181 = v155;
      v182 = v159;
      v183 = v156;
      v184 = v138;
      OUTLINED_FUNCTION_9_3();
      v185 = v139;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v140 = sub_1D8BF08A0();
      __swift_project_value_buffer(v140, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v141 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v141, v142);
      v88 = sub_1D8BF0880();
      sub_1D8BF0BB0();
      OUTLINED_FUNCTION_32_1();
      sub_1D8BD7FC8(v175);
      v143 = OUTLINED_FUNCTION_31_1();
      v36 = v157;
      if (!v143)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_24_0();
      v174 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_21_0(4.8752e-34);
      v144 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_24_1(v144, v145);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_19_1();
      v146 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v146, v147);
      SpatialPhoto.OcclusionResult.description.getter();
      OUTLINED_FUNCTION_8_2();
      sub_1D8BD7FC8(v173);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_23_1();

      *(v82 + 14) = v165;
      v96 = "predictOcclusionDepth[%{public}s] Failed, too occluded:%{public}s.";
    }

    else if (v75 | v73 | v152)
    {
      OUTLINED_FUNCTION_34_1();
      v176 = v83;
      OUTLINED_FUNCTION_1_4(v84);
      v184 = 2;
      OUTLINED_FUNCTION_9_3();
      v185 = 7;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v85 = sub_1D8BF08A0();
      __swift_project_value_buffer(v85, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v86 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v86, v87);
      v88 = sub_1D8BF0880();
      sub_1D8BF0BB0();
      OUTLINED_FUNCTION_32_1();
      sub_1D8BD7FC8(v175);
      v89 = OUTLINED_FUNCTION_31_1();
      v36 = v157;
      if (!v89)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_24_0();
      v174 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_21_0(4.8752e-34);
      v90 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_24_1(v90, v91);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_19_1();
      v92 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v92, v93);
      SpatialPhoto.OcclusionResult.description.getter();
      OUTLINED_FUNCTION_8_2();
      sub_1D8BD7FC8(v173);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_23_1();

      *(v82 + 14) = v165;
      v96 = "predictOcclusionDepth[%{public}s] Failed, not enough free space:%{public}s.";
    }

    else
    {
      OUTLINED_FUNCTION_34_1();
      v176 = v126;
      OUTLINED_FUNCTION_1_4(v127);
      v184 = 1;
      OUTLINED_FUNCTION_9_3();
      v185 = 7;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_1EE320A68);
      }

      v128 = sub_1D8BF08A0();
      __swift_project_value_buffer(v128, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v129 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v129, v130);
      v88 = sub_1D8BF0880();
      sub_1D8BF0BB0();
      OUTLINED_FUNCTION_32_1();
      sub_1D8BD7FC8(v175);
      v131 = OUTLINED_FUNCTION_31_1();
      v36 = v157;
      if (!v131)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_24_0();
      v174 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_21_0(4.8752e-34);
      v132 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_24_1(v132, v133);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_19_1();
      v134 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v134, v135);
      SpatialPhoto.OcclusionResult.description.getter();
      OUTLINED_FUNCTION_8_2();
      sub_1D8BD7FC8(v173);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_23_1();

      *(v82 + 14) = v165;
      v96 = "predictOcclusionDepth[%{public}s] Failed, no salient overlap:%{public}s.";
    }

    OUTLINED_FUNCTION_15_2(&dword_1D8BAF000, v94, v95, v96);
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_11_1();
    v82 = v163;
    OUTLINED_FUNCTION_11_1();
LABEL_54:

    v148 = OUTLINED_FUNCTION_14_2();
    memcpy(v148, v149, 0x81uLL);
    goto LABEL_55;
  }

  if (v39)
  {
LABEL_13:
    sub_1D8BDB448();
  }

LABEL_24:
  sub_1D8BD4358(v36);

  swift_setDeallocating();
  return swift_deallocClassInstance();
}
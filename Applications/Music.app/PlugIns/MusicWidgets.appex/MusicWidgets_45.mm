CGImageRef sub_10048B6F8(uint64_t Width, char a2, int64_t Height, char a4)
{
  v5 = v4;
  if (a2)
  {
    Width = CGImageGetWidth(v5);
  }

  v9 = CGImageGetWidth(v5);
  if (v9 < Width)
  {
    Width = v9;
  }

  if (a4)
  {
    Height = CGImageGetHeight(v5);
  }

  v10 = CGImageGetHeight(v5);
  if (v10 >= Height)
  {
    v11 = Height;
  }

  else
  {
    v11 = v10;
  }

  v12 = CGImageGetColorSpace(v5);
  if (!v12 || (v13 = v12, Model = CGColorSpaceGetModel(v12), v13, Model))
  {
    if (CGImageGetAlphaInfo(v5) != kCGImageAlphaNoneSkipFirst && CGImageGetAlphaInfo(v5) != kCGImageAlphaPremultipliedFirst)
    {
      return v5;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = sub_1004915A8(Width, v11, DeviceRGB);

  if (!v16)
  {
    return v5;
  }

  v17 = sub_100573408();
  sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
  v18 = sub_100573BF8();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    _s3__C7CGImageCMa_0(0);
    v21 = v5;
    v22 = sub_100572978();
    v24 = sub_1004906C4(v22, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v17, "Backdrop: Redrawing incompatible image: %s", v19, 0xCu);
    sub_100010474(v20);
  }

  sub_100573388();
  Image = CGBitmapContextCreateImage(v16);

  return Image;
}

uint64_t sub_10048B924(uint64_t result, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  if (!*(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage))
  {
    v6 = result;
    v7 = sub_10048CB20(a2, a3, a4);
    v8 = 1.0;
    if (v6)
    {
      v8 = 0.0;
    }

    *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v8;
    v9 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v9 + 96) = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v9 + 104) = 1;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_10048B9E0(uint64_t *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_state] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat] = 80;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_colorPixelFormat] = 115;
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_isPaused] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration] = 1077097267;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage] = 0;
  v4 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor];
  *v4 = 0x3FF0000000000000;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v5 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment];
  *v5 = 0;
  *(v5 + 4) = 0x432000004019999ALL;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction;
  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1050253722;
  LODWORD(v9) = 1.0;
  *&v2[v6] = [v7 initWithControlPoints:0.0 :0.0 :v8 :v9];
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchMix] = 0;
  v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  if (qword_1006F67A8 != -1)
  {
    swift_once();
  }

  memmove(&v2[v10], &static Uniforms.standard, 0x170uLL);
  memmove(&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], &static Uniforms.standard, 0x170uLL);
  v11 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis();
  swift_allocObject();
  *&v2[v11] = sub_1004922C4();
  __asm { FMOV            V0.2S, #1.0 }

  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio] = _D0;
  v17 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
  *v17 = 0;
  v17[4] = 1;
  v18 = a1[3];
  v19 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context];
  *(v19 + 25) = *(a1 + 25);
  v20 = *(a1 + 1);
  *v19 = *a1;
  *(v19 + 1) = v20;
  type metadata accessor for Backdrop.TextureBlender();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v18;
  v22 = sub_100490DF0(a1);
  type metadata accessor for Backdrop.RotatingArtworkRenderer();
  v23 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v21;
  sub_10048EAA0(a1);
  type metadata accessor for Backdrop.PinchRenderer();
  v25 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = v24;
  sub_10048D294(a1, 0);
  v27 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
  *v27 = v22;
  v27[1] = v23;
  v27[2] = v25;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_10048BD3C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v28;
}

void sub_10048BD3C()
{
  sub_1004910EC();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, COERCE_FLOAT(*(v1 + 96))), xmmword_1005A3B10, *(v1 + 96), 1), xmmword_1005A3B20, *(v1 + 96), 2), xmmword_1005A3B40, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, COERCE_FLOAT(*(v1 + 112))), xmmword_1005A3B10, *(v1 + 112), 1), xmmword_1005A3B20, *(v1 + 112), 2), xmmword_1005A3B40, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, COERCE_FLOAT(*(v1 + 128))), xmmword_1005A3B10, *(v1 + 128), 1), xmmword_1005A3B20, *(v1 + 128), 2), xmmword_1005A3B40, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, COERCE_FLOAT(*(v1 + 144))), xmmword_1005A3B10, *(v1 + 144), 1), xmmword_1005A3B20, *(v1 + 144), 2), xmmword_1005A3B40, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 80) = v15;
    *(v3 + 96) = v14;
    *(v3 + 112) = v13;
    *(v3 + 128) = v12;
    *(v3 + 144) = -1;
    *(v3 + 148) = 1130102784;
    *(v3 + 160) = v11;
    *(v3 + 176) = v10;
    *(v3 + 192) = v9;
    *(v3 + 208) = v8;
    *(v3 + 224) = -1;
    *(v3 + 228) = 1124204544;
    *(v3 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, v7.f32[0]), xmmword_1005A3B10, *v7.f32, 1), xmmword_1005A3B20, v7, 2), xmmword_1005A3B50, v7, 3);
    *(v3 + 256) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, v6.f32[0]), xmmword_1005A3B10, *v6.f32, 1), xmmword_1005A3B20, v6, 2), xmmword_1005A3B50, v6, 3);
    *(v3 + 272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, v5.f32[0]), xmmword_1005A3B10, *v5.f32, 1), xmmword_1005A3B20, v5, 2), xmmword_1005A3B50, v5, 3);
    *(v3 + 288) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1005A3B00, v4.f32[0]), xmmword_1005A3B10, *v4.f32, 1), xmmword_1005A3B20, v4, 2), xmmword_1005A3B50, v4, 3);
    *(v3 + 304) = 0;
    *(v3 + 308) = 1124859904;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_10048BF18(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v10 = sub_10048CB20(*&a1, *&a2, *&a3);
    v11 = 1.0;
    if (a5)
    {
      v11 = 0.0;
    }

    *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = v11;
    v12 = *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
    *(v12 + 96) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v12 + 104) = 1;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = 0;
    *(v14 + 48) = v5;
    *(v14 + 56) = a5 & 1;
    sub_100009DCC(&qword_1006F7608, &qword_1005A44D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    v16 = MTKTextureLoaderOptionSRGB;
    *(inited + 32) = MTKTextureLoaderOptionSRGB;
    *(inited + 40) = 0;
    v17 = v5;
    sub_1004913F0(a1, a2, a3, 0);
    v18 = v16;
    v19 = sub_100490D00(inited);
    swift_setDeallocating();
    sub_1004913FC(inited + 32);
    v20 = *&v17[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 24];
    sub_10048C3E4(v19);

    type metadata accessor for Option(0);
    sub_100491560(&qword_1006F6A00, type metadata accessor for Option, &unk_1005A40E0);
    v21.super.isa = sub_100572688().super.isa;

    if (a5)
    {
      v22 = swift_allocObject();
      v22[2] = sub_1004913D8;
      v22[3] = v14;
      v28[4] = sub_10049149C;
      v28[5] = v22;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 1107296256;
      v28[2] = sub_10048CAA0;
      v28[3] = &unk_1006AC1E8;
      v23 = _Block_copy(v28);

      [v20 newTextureWithCGImage:a1 options:v21.super.isa completionHandler:v23];

      _Block_release(v23);
    }

    else
    {
      v28[0] = 0;
      v24 = [v20 newTextureWithCGImage:a1 options:v21.super.isa error:v28];

      v25 = v28[0];
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v27 = v25;
        sub_10056C728();

        swift_willThrow();

        v26 = 0;
      }

      sub_10048C2E0(v26, a1, a2, a3, 0, v17, 0);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10048C2E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a5 & 1) != 0 || (v7 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage)) == 0 || (v8 = result, v9 = a6, v10 = a7, _s3__C7CGImageCMa_0(0), sub_100491560(&qword_1006F7658, _s3__C7CGImageCMa_0, &unk_1005A3E28), v11 = v7, v12 = sub_10056CFD8(), v11, a7 = v10, a6 = v9, result = v8, (v12))
  {
    v13 = 1.0;
    if (a7)
    {
      v13 = 0.0;
    }

    *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v13;
    v14 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v14 + 96) = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v14 + 104) = 1;
  }

  return result;
}

void sub_10048C3E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006F7648, &qword_1005A44F0);
    v1 = sub_1005741C8();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_1000F51DC((v24 + 8), v22);
    sub_1000F51DC(v22, v24);
    sub_1005728D8();
    sub_100574678();
    sub_1005729F8();
    v13 = sub_1005746C8();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    sub_1000F51DC(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_10048C67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = sub_100570B88();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_100570BC8();
  v11 = *(v34 - 8);
  __chkstk_darwin();
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v33 = v11;
    swift_errorRetain();
    v14 = sub_100573428();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v15 = sub_100573BF8();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v31 = v16;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v16 = 136315138;
      swift_getErrorValue();
      v30 = v15;
      v17 = sub_1005745D8();
      v19 = sub_1004906C4(v17, v18, aBlock);
      v29 = v14;
      v20 = v8;
      v21 = v19;

      v23 = v30;
      v22 = v31;
      *(v31 + 1) = v21;
      v8 = v20;
      _os_log_impl(&_mh_execute_header, v23, v29, "Error loading texture: %s", v22, 0xCu);
      sub_100010474(v32);
    }

    else
    {
    }

    v11 = v33;
  }

  sub_1000D3B98(0, &qword_1006F7620, OS_dispatch_queue_ptr);
  v24 = sub_1005735E8();
  v25 = swift_allocObject();
  v25[2] = v35;
  v25[3] = a4;
  v25[4] = a1;
  aBlock[4] = sub_100473E58;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_1006AC238;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_100570BA8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100491560(&qword_1006F7628, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009DCC(&qword_1006F7630, &qword_1005A44E0);
  sub_1004914FC();
  sub_100573DA8();
  sub_100573608();
  _Block_release(v26);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v34);
}

uint64_t sub_10048CAA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_10048CB20(double a1, double a2, double a3)
{
  v7 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  result = [*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context) newTextureWithDescriptor:v7];
  v9 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = a3 * 255.0;
  if (COERCE__INT64(fabs(a3 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 256.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[0] = v10;
  v11 = a2 * 255.0;
  if (COERCE__INT64(fabs(a2 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 >= 256.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16[1] = v11;
  v12 = a1 * 255.0;
  if (COERCE__INT64(fabs(a1 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 256.0)
  {
    v16[2] = v12;
    v16[3] = -1;
    memset(v13, 0, sizeof(v13));
    v14 = vdupq_n_s64(1uLL);
    v15 = 1;
    [result replaceRegion:v13 mipmapLevel:0 withBytes:v16 bytesPerRow:4];
LABEL_12:

    return v9;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_10048CD28(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

int8x8_t sub_10048CE4C(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = a1 / a2;
  v9 = 1.0 / v8;
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio);
  *v10 = v9;
  v10[1] = v8;
  v19 = LODWORD(v9);
  LODWORD(v11) = 0;
  *(&v11 + 1) = v8;
  v18 = v11;
  v12 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms);
  swift_beginAccess();
  v12[1] = v19;
  v12[2] = v18;
  v12[3] = xmmword_1005A3B20;
  v12[4] = xmmword_1005A3B30;
  v13 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
  v14 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v14[6] = a3;
  sub_10048ECBC(a1, a2);
  v15 = v14[5] < v14[4];
  v16 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment;
  *v16 = v15;
  result = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v15), 0x1FuLL)), 0x42F000004019999ALL, 0x42AA000040000000);
  *(v16 + 4) = result;
  *(*(v13 + 16) + 104) = v15;
  return result;
}

void sub_10048CFE4(void *a1)
{
  v2 = v1;
  v14 = [a1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 isDrawableAvailable];

    if (v5)
    {
      sub_100491174(0.016667);
      v6 = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 8) commandBuffer];
      if (v6)
      {
        v7 = v6;
        v8 = v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
        v9 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
        v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
        swift_beginAccess();
        sub_10048E5E0(v7, v2 + v10);
        swift_endAccess();
        v11 = *(v8 + 8);
        *(v11 + 152) = *(v9 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        swift_beginAccess();
        sub_10048ED4C(v7, v2 + v10);
        swift_endAccess();
        *(*(v8 + 16) + 32) = *(v11 + 168);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v12 = [a1 currentRenderPassDescriptor];
        swift_beginAccess();
        sub_10048D6E4(v7, v2 + v10, v12);
        swift_endAccess();

        v13 = [a1 currentDrawable];
        if (v13)
        {
          [v7 presentDrawable:v13];
          swift_unknownObjectRelease();
        }

        [v7 commit];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }
}

void sub_10048D294(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + 16) = 80;
  *(v2 + 32) = 0;
  *(v2 + 104) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  *(v3 + 112) = *a1;
  *(v3 + 128) = v6;
  *(v3 + 137) = *(a1 + 25);
  v45 = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v43 = v5;
  sub_10049355C(1, &v46);
  v7 = v48;
  v8 = v49;
  v9 = kCADepthNormalizationNone;
  v10 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:kCADepthNormalizationNone];
  v11 = [v10 subdividedMesh:2];

  v12 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v7 + 16) vertices:v7 + 32 faceCount:*(v8 + 16) faces:v8 + 32 depthNormalization:v9];

  v13 = [v12 subdividedMesh:2];

  sub_10048B118(v13);
  v16 = *(v14 + 16);
  if (v16 >> 57)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = v14;
  v18 = v15;
  v19 = v16 << 6;

  v20 = [v45 newBufferWithBytes:v17 + 32 length:v19 options:0];
  v21 = *(v18 + 16);
  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v22 = v20;
  v23 = 2 * v21;
  swift_unknownObjectRetain();
  v24 = [v45 newBufferWithBytes:v18 + 32 length:v23 options:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  *(v3 + 40) = v17;
  *(v3 + 48) = v18;
  *(v3 + 56) = v22;
  *(v3 + 64) = v24;
  swift_unknownObjectRetain();
  sub_10049355C(0, &v46);
  v25 = v48;
  v26 = v49;
  v27 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:v9];
  v28 = [v27 subdividedMesh:2];

  v29 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v25 + 16) vertices:v25 + 32 faceCount:*(v26 + 16) faces:v26 + 32 depthNormalization:v9];

  v30 = [v29 subdividedMesh:2];

  sub_10048B118(v30);
  v33 = *(v31 + 16);
  if (v33 >> 57)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34 = v31;
  v35 = v32;
  v36 = v33 << 6;

  v37 = [v45 newBufferWithBytes:v34 + 32 length:v36 options:0];
  v38 = *(v35 + 16);
  if (v38 + 0x4000000000000000 >= 0)
  {
    v39 = v37;
    v40 = 2 * v38;
    swift_unknownObjectRetain();
    v41 = [v45 newBufferWithBytes:v35 + 32 length:v40 options:0];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *(v3 + 72) = v34;
    *(v3 + 80) = v35;
    *(v3 + 88) = v39;
    *(v3 + 96) = v41;
    *(v3 + 24) = a2 & 1;
    v42 = sub_10048DA60();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 160) = v42;
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10048D6E4(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 160);
  if (!v4)
  {
    return;
  }

  if (*(v3 + 104) == 1)
  {
    v5 = *(v3 + 56);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 64);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v5 = *(v3 + 88);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 96);
    if (!v6)
    {
      return;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = *(v3 + 32);
  if (!v10 || !a3)
  {
    swift_unknownObjectRelease();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v15 = a3;
  swift_unknownObjectRetain();
  v11 = [a1 renderCommandEncoderWithDescriptor:v15];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100572898();
    [v12 setLabel:v13];

    [v12 setRenderPipelineState:v4];
    [v12 setVertexBuffer:v5 offset:0 atIndex:0];
    [v12 setVertexBytes:a2 length:368 atIndex:1];
    [v12 setFragmentBytes:a2 length:368 atIndex:1];
    [v12 setFragmentTexture:v10 atIndex:0];
    v14 = 80;
    if (*(v3 + 104))
    {
      v14 = 48;
    }

    [v12 drawIndexedPrimitives:3 indexCount:*(*(v3 + v14) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
    [v12 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id sub_10048D97C()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 168);
  }

  else
  {
    if (*(v0 + 24))
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x72665F68636E6970;
    }

    if (*(v0 + 24))
    {
      v4 = 0x80000001005BC170;
    }

    else
    {
      v4 = 0xEE00746E656D6761;
    }

    v5 = sub_100491F70(0x65765F68636E6970, 0xEC00000078657472, v3, v4, 0xD000000000000022, 0x80000001005BC140, *(v0 + 128));

    v6 = *(v0 + 168);
    *(v0 + 168) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_10048DA60()
{
  v1 = sub_10048D97C();
  if (qword_1006F6778 != -1)
  {
    swift_once();
  }

  [v1 setVertexDescriptor:qword_1006FE890];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3)
  {
    v7 = sub_100573428();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v8 = sub_100573BF8();
    sub_10056DE58(v7, &_mh_execute_header, v8, "Backdrop: could not create pipeline for pinch. Missing color attachments", 72, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  [v3 setPixelFormat:*(v0 + 16)];
  v4 = *(v0 + 112);
  v20 = 0;
  v5 = [v4 newRenderPipelineStateWithDescriptor:v1 error:&v20];
  v6 = v20;
  if (!v5)
  {
    v9 = v6;
    v10 = sub_10056C728();

    swift_willThrow();
    v23 = v10;
    sub_100009DCC(&qword_1006F75F0, &qword_1005A44C0);
    sub_1000D3B98(0, &qword_1006F75F8, NSError_ptr);
    swift_dynamicCast();
    v11 = v22;
    sub_100009DCC(&qword_1006F7600, &qword_1005A44C8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10057B510;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_100573ED8(33);

    v20 = 0xD00000000000001FLL;
    v21 = 0x80000001005BBF20;
    v13 = [v11 description];
    v14 = sub_1005728D8();
    v16 = v15;

    v24._countAndFlagsBits = v14;
    v24._object = v16;
    sub_100572A98(v24);

    v17 = v20;
    v18 = v21;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    sub_100574648();

    return 0;
  }

  return v5;
}

uint64_t sub_10048DD6C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_10048DE54()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = sub_10048DEAC();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10048DEAC()
{
  v1 = sub_100491F70(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x80000001005BC0D0, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 64));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_1006F6778 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006FE890];

    return v1;
  }

  else
  {
    sub_100573ED8(56);
    v9._countAndFlagsBits = 0xD000000000000036;
    v9._object = 0x80000001005BBF40;
    sub_100572A98(v9);
    v5 = [v1 description];
    v6 = sub_1005728D8();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_100572A98(v10);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

id sub_10048E0A0()
{
  v1 = *(v0 + 48);
  v2 = sub_10048DE54();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_10056C728();

    swift_willThrow();
    v19 = v6;
    sub_100009DCC(&qword_1006F75F0, &qword_1005A44C0);
    sub_1000D3B98(0, &qword_1006F75F8, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100009DCC(&qword_1006F7600, &qword_1005A44C8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10057B510;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_100573ED8(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001005BBF20;
    v9 = [v7 description];
    v10 = sub_1005728D8();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_100572A98(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_100574648();

    return 0;
  }

  return v3;
}

id sub_10048E298()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_100573ED8(52);
    v11._object = 0x80000001005BBEE0;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_100572A98(v11);
    v7 = [v1 description];
    v8 = sub_1005728D8();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_100572A98(v12);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

void sub_10048E448(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 32);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode:0];
  [v5 setUsage:7];
  *(v1 + 40) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  *(v1 + 112) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  v6 = sub_10048E298();

  v7 = *(v1 + 168);
  *(v1 + 168) = v6;
}

void sub_10048E5E0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (!v3 || (v4 = *(v2 + 136)) == 0 || (v5 = *(v2 + 144)) == 0 || (v6 = *(v2 + 96)) == 0)
  {
    v13 = sub_100573408();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v18 = sub_100573BF8();
    sub_10056DE58(v13, &_mh_execute_header, v18, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
LABEL_11:

    return;
  }

  if (*(v2 + 104) == 1 && (v7 = *(v2 + 40)) != 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = *(v2 + 112);
    if (v10)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = [v8 blitCommandEncoder];
      if (v11)
      {
        v12 = v11;
        [v11 copyFromTexture:v7 toTexture:v10];
        *(v2 + 104) = 0;
        [v12 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!*(v2 + 168))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = a1;
    v9 = a2;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (!*(v2 + 168))
  {
LABEL_21:
    v17 = sub_100573428();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v18 = sub_100573BF8();
    sub_10056DE58(v17, &_mh_execute_header, v18, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_16:
  v14 = [v8 renderCommandEncoderWithDescriptor:?];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v16 = sub_100572898();
  [v15 setLabel:v16];

  [v15 setRenderPipelineState:v3];
  [v15 setVertexBuffer:v4 offset:0 atIndex:0];
  [v15 setVertexBytes:v9 length:368 atIndex:1];
  [v15 setFragmentTexture:v6 atIndex:0];
  [v15 setFragmentTexture:*(v2 + 112) atIndex:1];
  [v15 setFragmentBytes:v9 length:368 atIndex:1];
  [v15 drawIndexedPrimitives:3 indexCount:*(*(v2 + 128) + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
  [v15 endEncoding];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id *sub_10048E9AC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10048EA48()
{
  sub_10048E9AC();

  return swift_deallocClassInstance();
}

uint64_t sub_10048EAA0(uint64_t *a1)
{
  v2 = v1;
  *(v2 + 16) = 115;
  *(v2 + 24) = 1117782016;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0x3FF0000000000000;
  *(v2 + 184) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  v4 = a1[3];
  *(v2 + 81) = *(a1 + 25);
  v5 = *a1;
  *(v2 + 72) = *(a1 + 1);
  *(v2 + 56) = v5;
  v6 = qword_1006F67A0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  result = qword_1006FE9A0;
  *(v2 + 104) = qword_1006FE9A0;
  *(v2 + 112) = &off_1006A6DA8;
  v9 = *(result + 16);
  if (v9 >> 57)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = [*(v2 + 56) newBufferWithBytes:+ 32 length:v9 << 6 options:0];
    result = swift_unknownObjectRelease();
    v10 = *(v2 + 112);
    v11 = *(v10 + 16);
    if (v11 + 0x4000000000000000 >= 0)
    {
      *(v2 + 128) = [*(v2 + 56) newBufferWithBytes:v10 + 32 length:2 * v11 options:0];
      swift_unknownObjectRelease();
      type metadata accessor for Backdrop.TexturePan();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = v7;
      v13 = sub_100490F74(a1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 176) = v13;
      v14 = sub_10048F2B0();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 136) = v14;
      swift_unknownObjectRelease();
      return v2;
    }
  }

  __break(1u);
  return result;
}

double sub_10048ECBC(double result, double a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  if (v3 != result || v4 != a2)
  {
    sub_10048F644(*(v2 + 56));
    sub_10048F820();
    v6 = *(v2 + 176);
    result = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    *(v6 + 24) = result;
    *(v6 + 32) = v7;
    if (result != v8 || v7 != v9)
    {
      v11 = *(v6 + 56);

      sub_10048F9C0(v11);
    }
  }

  return result;
}

void sub_10048ED4C(void *a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[20]) != 0 && (v7 = v2[21]) != 0)
  {
    v8 = v2[18];
    if (v8)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = a1;
      v12 = [a1 renderCommandEncoderWithDescriptor:v8];
      if (v12)
      {
        v13 = v12;
        v14 = sub_100572898();
        [v13 setLabel:v14];

        [v13 setRenderPipelineState:v3];
        [v13 setVertexBuffer:v4 offset:0 atIndex:0];
        [v13 setVertexBytes:a2 length:368 atIndex:1];
        [v13 setFragmentBytes:a2 length:368 atIndex:1];
        [v13 setFragmentTexture:v2[19] atIndex:0];
        [v13 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:3];
        [v13 endEncoding];
        *(v2[22] + 40) = v6;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();

        v15 = v2;
        sub_10049015C(v11, a2);

        v16 = *(v2[22] + 48);
        if (v16 && (v17 = v15[23]) != 0)
        {
          swift_unknownObjectRetain();
          v18 = v17;
          [v18 encodeToCommandBuffer:v11 sourceTexture:v16 destinationTexture:v7];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v20 = sub_100573428();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v21 = sub_100573BF8();
    sub_10056DE58(v20, &_mh_execute_header, v21, "Backdrop: Could not create command Encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_100573408();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v21 = sub_100573BF8();
    sub_10056DE58(v19, &_mh_execute_header, v21, "Backdrop: could not encode rotating artwork, missing required value", 67, 2, _swiftEmptyArrayStorage);
  }
}

id sub_10048F120()
{
  v1 = sub_100491F70(0x6E6F697461746F72, 0xEF7865747265765FLL, 0xD000000000000011, 0x80000001005BBF80, 0xD000000000000024, 0x80000001005BBFA0, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    [v3 setBlendingEnabled:0];
    if (qword_1006F6778 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006FE890];

    return v1;
  }

  else
  {
    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

id sub_10048F2B0()
{
  v1 = *(v0 + 56);
  v2 = sub_10048F120();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_10056C728();

    swift_willThrow();
    v19 = v6;
    sub_100009DCC(&qword_1006F75F0, &qword_1005A44C0);
    sub_1000D3B98(0, &qword_1006F75F8, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100009DCC(&qword_1006F7600, &qword_1005A44C8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10057B510;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_100573ED8(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001005BBF20;
    v9 = [v7 description];
    v10 = sub_1005728D8();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_100572A98(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_100574648();

    return 0;
  }

  return v3;
}

id sub_10048F4A8()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 160);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_100573ED8(52);
    v11._object = 0x80000001005BBEE0;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_100572A98(v11);
    v7 = [v1 description];
    v8 = sub_1005728D8();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_100572A98(v12);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

void sub_10048F644(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 40);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 160) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              *(v1 + 168) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_10048F4A8();

              v7 = *(v1 + 144);
              *(v1 + 144) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 160) = 0;
  swift_unknownObjectRelease();
  *(v1 + 168) = 0;

  swift_unknownObjectRelease();
}

void sub_10048F820()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24) / (4.0 / v1);
  v3 = *(v0 + 184);
  if (!v3 || ([v3 sigma], v2 != v4))
  {
    v5 = *(v0 + 56);
    v6 = objc_allocWithZone(MPSImageGaussianBlur);
    *&v7 = v2;
    v8 = [v6 initWithDevice:v5 sigma:v7];
    v9 = *(v0 + 184);
    *(v0 + 184) = v8;
  }
}

id *sub_10048F8C4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10048F968()
{
  sub_10048F8C4();

  return swift_deallocClassInstance();
}

void sub_10048F9C0(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 32);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 48) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_10048FFAC();

              v7 = *(v1 + 152);
              *(v1 + 152) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 48) = 0;

  swift_unknownObjectRelease();
}

id sub_10048FB70()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = sub_10048FBC8();
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10048FBC8()
{
  v1 = sub_100491F70(0x797469746E656469, 0xEF7865747265765FLL, 0x676172665F6E6170, 0xEC000000746E656DLL, 0x2065727574786554, 0xEE0072656E6E6150, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_1006F6778 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006FE890];

    return v1;
  }

  else
  {
    sub_100573ED8(56);
    v9._object = 0x80000001005BBF40;
    v9._countAndFlagsBits = 0xD000000000000036;
    sub_100572A98(v9);
    v5 = [v1 description];
    v6 = sub_1005728D8();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_100572A98(v10);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

id sub_10048FDB4()
{
  v1 = *(v0 + 56);
  v2 = sub_10048FB70();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_10056C728();

    swift_willThrow();
    v19 = v6;
    sub_100009DCC(&qword_1006F75F0, &qword_1005A44C0);
    sub_1000D3B98(0, &qword_1006F75F8, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100009DCC(&qword_1006F7600, &qword_1005A44C8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10057B510;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_100573ED8(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001005BBF20;
    v9 = [v7 description];
    v10 = sub_1005728D8();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_100572A98(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_100574648();

    return 0;
  }

  return v3;
}

id sub_10048FFAC()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 48);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_100573ED8(52);
    v11._object = 0x80000001005BBEE0;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_100572A98(v11);
    v7 = [v1 description];
    v8 = sub_1005728D8();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_100572A98(v12);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

void sub_10049015C(void *a1, uint64_t a2)
{
  v3 = v2[18];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[5]) != 0)
  {
    v7 = v2[19];
    if (v7)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [a1 renderCommandEncoderWithDescriptor:v7];
      if (v10)
      {
        v11 = v10;
        v12 = sub_100572898();
        [v11 setLabel:v12];

        [v11 setRenderPipelineState:v3];
        [v11 setVertexBuffer:v4 offset:0 atIndex:0];
        [v11 setVertexBytes:a2 length:368 atIndex:1];
        [v11 setFragmentTexture:v6 atIndex:0];
        [v11 setFragmentBytes:a2 length:368 atIndex:1];
        [v11 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
        [v11 endEncoding];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v14 = sub_100573428();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v15 = sub_100573BF8();
    sub_10056DE58(v14, &_mh_execute_header, v15, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_100573408();
    sub_1000D3B98(0, &qword_1006F75E8, OS_os_log_ptr);
    v15 = sub_100573BF8();
    sub_10056DE58(v13, &_mh_execute_header, v15, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
  }
}

id *sub_10049045C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1004904F0()
{
  sub_10049045C();

  return swift_deallocClassInstance();
}

__n128 sub_100490548(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Backdrop.Specs.Environment(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Backdrop.Specs.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Backdrop.Specs.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100490670()
{
  result = qword_1006F75E0;
  if (!qword_1006F75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F75E0);
  }

  return result;
}

unint64_t sub_1004906C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100490790(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100081F38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010474(v11);
  return v7;
}

unint64_t sub_100490790(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10049089C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100573F98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10049089C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1004908E8(a1, a2);
  sub_100490A18(&off_1006A6D50);
  return v3;
}

void *sub_1004908E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100490B04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100573F98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100572AB8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100490B04(v10, 0);
        result = sub_100573EC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_100490A18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100490B78(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100490B04(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006F7640, &qword_1005A44E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100490B78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F7640, &qword_1005A44E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100490C6C(uint64_t a1)
{
  sub_1005728D8();
  sub_100574678();
  sub_1005729F8();
  v2 = sub_1005746C8();

  return sub_1000EC53C(a1, v2);
}

unint64_t sub_100490D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F7650, &qword_1005A44F8);
    v3 = sub_1005741C8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100490C6C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_100490DF0(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  if (qword_1006F67A0 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = qword_1006FE9A0;
  *(v1 + 120) = qword_1006FE9A0;
  *(v1 + 128) = &off_1006A6DA8;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 48) = *result;
  *(v1 + 64) = v5;
  *(v1 + 73) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 136) = result;
    v9 = *(v1 + 128);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 144) = [*(v1 + 48) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 160) = sub_10048E0A0();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_10048E448(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

char *sub_100490F74(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  if (qword_1006F67A0 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = qword_1006FE9A0;
  *(v1 + 104) = qword_1006FE9A0;
  *(v1 + 112) = &off_1006A6DA8;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 136) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 56) = *result;
  *(v1 + 72) = v5;
  *(v1 + 81) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 120) = result;
    v9 = *(v1 + 112);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 128) = [*(v1 + 56) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 144) = sub_10048FDB4();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_10048F9C0(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

double sub_1004910EC()
{
  sub_100009DCC(&unk_1006F7660, qword_1005A4500);
  v0 = swift_allocObject();
  v0[1] = xmmword_100580F90;
  v0[2] = xmmword_1005A3B60;
  v0[3] = xmmword_1005A3B70;
  v0[4] = xmmword_1005A3B20;
  result = 0.0;
  v0[5] = xmmword_1005A3B30;
  v0[6] = xmmword_1005A3B80;
  v0[7] = xmmword_1005A3B90;
  v0[8] = xmmword_1005A3B20;
  v0[9] = xmmword_1005A3B30;
  v0[10] = xmmword_1005A3B80;
  v0[11] = xmmword_1005A3B90;
  v0[12] = xmmword_1005A3B20;
  v0[13] = xmmword_1005A3B30;
  return result;
}

id sub_100491174(float a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms;
  v5 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms);
  v6 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  *v6 = v5;
  *(v6 + 340) = *(v4 + 340);
  *(v6 + 352) = *(v4 + 352);
  *(v6 + 8) = *(v4 + 8);
  if ((*(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor + 4) & 1) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor);
    v8 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
    v9 = *(v8 + 32);
    if (*(v8 + 40) < v9)
    {
      v9 = *(v8 + 40);
    }

    v10 = v9;
    *(v8 + 24) = v7 * v10;
    sub_10048F820();
  }

  if ((((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix)) <= 1.0)
  {
    v11 = ((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix);
  }

  else
  {
    v11 = 1.0;
  }

  *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v11;
  v12 = *(v4 + 348);
  swift_beginAccess();
  *(v6 + 348) = v12;
  *(v6 + 344) = *(v4 + 344);
  *(v6 + 328) = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix);
  *&v13 = v11;
  result = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction) _solveForInput:v13];
  *(v6 + 320) = v15;
  *(v6 + 332) = 1082130432;
  v16 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v17 = *(v16 + 32);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 <= -32769.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 32768.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v6 + 336) = v17;
  v18 = *(v16 + 40);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 <= -32769.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 < 32768.0)
  {
    *(v6 + 338) = v18;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100491384()
{
  sub_1004913CC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_1004913CC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

id sub_1004913F0(id result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1004913FC(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006F7610, &qword_1005A44D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100491464()
{

  return swift_deallocObject();
}

uint64_t sub_1004914A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004914BC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1004914FC()
{
  result = qword_1006F7638;
  if (!qword_1006F7638)
  {
    sub_100010324(&qword_1006F7630, &qword_1005A44E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F7638);
  }

  return result;
}

uint64_t sub_100491560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int *Uniforms.standard.unsafeMutableAddressor()
{
  if (qword_1006F67A8 != -1)
  {
    swift_once();
  }

  return &static Uniforms.standard;
}

double sub_100491620()
{
  v0 = MTLCreateSystemDefaultDevice();
  sub_100492084(v0, &v2);
  xmmword_1006FE860 = v2;
  unk_1006FE870 = v3[0];
  result = *(v3 + 9);
  *(&qword_1006FE878 + 1) = *(v3 + 9);
  return result;
}

void sub_100491680()
{
  v0 = [objc_allocWithZone(MTLVertexDescriptor) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript:0];

  if (!v2)
  {
    goto LABEL_21;
  }

  [v2 setFormat:30];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript:0];

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v4 setOffset:0];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v6 setBufferIndex:0];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript:1];

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v8 setFormat:30];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript:1];

  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v10 setOffset:16];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript:1];

  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v12 setBufferIndex:0];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript:2];

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v14 setFormat:30];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript:2];

  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript:1];

  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [v18 offset];

  if (__OFADD__(v19, 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setOffset:v19 + 16];

  v20 = [v0 attributes];
  v21 = [v20 objectAtIndexedSubscript:2];

  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 setBufferIndex:0];

  v22 = [v0 attributes];
  v23 = [v22 objectAtIndexedSubscript:3];

  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v23 setFormat:29];

  v24 = [v0 attributes];
  v25 = [v24 objectAtIndexedSubscript:3];

  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = [v0 attributes];
  v27 = [v26 objectAtIndexedSubscript:2];

  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = [v27 offset];

  if (__OFADD__(v28, 16))
  {
    goto LABEL_20;
  }

  [v25 setOffset:v28 + 16];

  v29 = [v0 attributes];
  v30 = [v29 objectAtIndexedSubscript:3];

  if (!v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v30 setBufferIndex:0];

  v31 = [v0 layouts];
  v32 = [v31 objectAtIndexedSubscript:0];

  if (v32)
  {
    [v32 setStride:64];

    return;
  }

LABEL_35:
  __break(1u);
}

double sub_100491BB8()
{
  result = -0.00781250557;
  xmmword_1006FE8A0 = xmmword_1005A3BA0;
  qword_1006FE8B0 = 0x3F80000000000000;
  xmmword_1006FE8C0 = xmmword_1005A3BA0;
  unk_1006FE8D0 = xmmword_1005A3BA0;
  return result;
}

double sub_100491BE0()
{
  result = 0.00781250557;
  xmmword_1006FE8E0 = xmmword_1005A3BB0;
  qword_1006FE8F0 = 0;
  xmmword_1006FE900 = xmmword_1005A3BB0;
  unk_1006FE910 = xmmword_1005A3BB0;
  return result;
}

double sub_100491C00()
{
  result = 0.00781250185;
  xmmword_1006FE920 = xmmword_1005A3BC0;
  qword_1006FE930 = 1065353216;
  xmmword_1006FE940 = xmmword_1005A3BC0;
  unk_1006FE950 = xmmword_1005A3BC0;
  return result;
}

double sub_100491C28()
{
  result = -0.00781250185;
  xmmword_1006FE960 = xmmword_1005A3BD0;
  __asm { FMOV            V1.2S, #1.0 }

  qword_1006FE970 = _D1;
  xmmword_1006FE980 = xmmword_1005A3BD0;
  unk_1006FE990 = xmmword_1005A3BD0;
  return result;
}

double sub_100491C4C()
{
  sub_100009DCC(&qword_1006F7670, &unk_1005A45C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057BD80;
  if (qword_1006F6780 != -1)
  {
    v14 = v0;
    swift_once();
    v0 = v14;
  }

  v1 = qword_1006FE8B0;
  v2 = xmmword_1006FE8C0;
  v3 = unk_1006FE8D0;
  *(v0 + 32) = xmmword_1006FE8A0;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  if (qword_1006F6788 != -1)
  {
    v15 = v0;
    swift_once();
    v0 = v15;
  }

  v4 = qword_1006FE8F0;
  v5 = xmmword_1006FE900;
  v6 = unk_1006FE910;
  *(v0 + 96) = xmmword_1006FE8E0;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  if (qword_1006F6790 != -1)
  {
    v16 = v0;
    swift_once();
    v0 = v16;
  }

  v7 = qword_1006FE930;
  v8 = xmmword_1006FE940;
  v9 = unk_1006FE950;
  *(v0 + 160) = xmmword_1006FE920;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  if (qword_1006F6798 != -1)
  {
    v17 = v0;
    swift_once();
    v0 = v17;
  }

  result = *&xmmword_1006FE960;
  v11 = qword_1006FE970;
  v12 = xmmword_1006FE980;
  v13 = unk_1006FE990;
  *(v0 + 224) = xmmword_1006FE960;
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v13;
  qword_1006FE9A0 = v0;
  return result;
}

double sub_100491E0C()
{
  if (qword_1006F6768 != -1)
  {
    swift_once();
  }

  static Uniforms.standard = 0;
  qword_1006FE9B8 = 0;
  xmmword_1006FE9C0 = xmmword_1006FE820;
  unk_1006FE9D0 = *algn_1006FE830;
  xmmword_1006FE9E0 = xmmword_1006FE840;
  unk_1006FE9F0 = unk_1006FE850;
  dword_1006FEA44 = 0;
  dword_1006FEA94 = 0;
  dword_1006FEAE4 = 0;
  xmmword_1006FEA00 = 0u;
  unk_1006FEA10 = 0u;
  xmmword_1006FEA20 = 0u;
  unk_1006FEA30 = 0u;
  word_1006FEA40 = 0;
  word_1006FEA90 = 0;
  xmmword_1006FEA70 = 0u;
  unk_1006FEA80 = 0u;
  xmmword_1006FEA50 = 0u;
  unk_1006FEA60 = 0u;
  xmmword_1006FEAA0 = 0u;
  unk_1006FEAB0 = 0u;
  xmmword_1006FEAC0 = 0u;
  unk_1006FEAD0 = 0u;
  word_1006FEAE0 = 0;
  result = 0.0;
  xmmword_1006FEAF0 = xmmword_1005A3B30;
  qword_1006FEB00 = 0x3F80000000000000;
  unk_1006FEB08 = 0;
  qword_1006FEB10 = 0;
  unk_1006FEB18 = 0;
  return result;
}

void *static Uniforms.standard.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1006F67A8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &static Uniforms.standard, 0x170uLL);
}

__n128 sub_100491F4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_100491F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_100572898();
  v9 = [a7 newFunctionWithName:v8];

  v10 = sub_100572898();
  v11 = [a7 newFunctionWithName:v10];

  v12 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v13 = sub_100572898();
  [v12 setLabel:v13];

  [v12 setVertexFunction:v9];
  [v12 setFragmentFunction:v11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

void sub_100492084(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v4)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v13 = sub_100573428();
    sub_100492278();
    v14 = sub_100573BF8();
    sub_10056DE58(v13, &_mh_execute_header, v14, "Backdrop: Could not create default device, Metal rendering unavailable", 70, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();

    v2 = 0;
    v5 = 0;
    v6 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  if (qword_1006F6760 != -1)
  {
    swift_once();
  }

  v15 = 0;
  v6 = [v2 newDefaultLibraryWithBundle:qword_1006FE810 error:&v15];
  v7 = v15;
  if (!v6)
  {
    v12 = v7;
    sub_10056C728();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v8 = objc_allocWithZone(MTKTextureLoader);
  swift_unknownObjectRetain();
  v9 = [v8 initWithDevice:v2];
  v10 = [v2 supportsFamily:1003];
  swift_unknownObjectRelease();
  v11 = 80;
LABEL_10:
  *a2 = v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
}

unint64_t sub_100492278()
{
  result = qword_1006F75E8;
  if (!qword_1006F75E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F75E8);
  }

  return result;
}

uint64_t sub_1004922C4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1045220557;
  *(v0 + 80) = 0u;
  sub_100009DCC(&qword_1006F7858, &unk_1005A4690);
  v1 = sub_100572D98();
  *(v1 + 16) = 4;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v0 + 96) = v1;
  *(v0 + 104) = &off_1006A6D78;
  return v0;
}

uint64_t sub_10049234C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_10049240C();
    [v2 unregisterObserver:v3];

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

id sub_10049240C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_100492468(v0);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100492468(uint64_t a1)
{
  v1 = [objc_allocWithZone(MPCAudioSpectrumObserver) init];
  LODWORD(v2) = 20.0;
  LODWORD(v3) = 1133903872;
  [v1 addFrequencyBand:{v2, v3}];
  LODWORD(v4) = 1133903872;
  LODWORD(v5) = 1163575296;
  [v1 addFrequencyBand:{v4, v5}];
  LODWORD(v6) = 1186693120;
  LODWORD(v7) = 1163575296;
  [v1 addFrequencyBand:{v7, v6}];
  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_10049354C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10017EDD8;
  v11[3] = &unk_1006AC3F0;
  v9 = _Block_copy(v11);

  [v1 setOnUpdate:v9];
  _Block_release(v9);
  return v1;
}

double sub_1004925C4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004926B0(a1);
  }

  return result;
}

uint64_t sub_100492624(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004933B4(v3);
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
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_1004926B0(void *a1)
{
  v2 = v1;
  v4 = sub_100570B88();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100570BC8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004929BC();
  sub_1004933C8(v12);
  v26 = v13;

  [a1 powerLevel];
  v15 = log10f(v14) * 20.0;
  v16.i64[0] = vdivq_f32(vmulq_n_f32(v26, v15), vdupq_n_s32(0x42F00000u)).u64[0];
  v16.f32[2] = vmuls_lane_f32(v15, v26, 2) / 120.0;
  v16.f32[3] = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v26 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q1), *(v2 + 64));
  sub_100493414();
  v22 = sub_1005735E8();
  v23 = swift_allocObject();
  v23[1].i64[0] = v2;
  v23[2] = v26;
  aBlock[4] = sub_100493498;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_1006AC3A0;
  v24 = _Block_copy(aBlock);

  sub_100570BA8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004934BC();
  sub_100009DCC(&qword_1006F7630, &qword_1005A44E0);
  sub_1004914FC();
  sub_100573DA8();
  sub_100573608();
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1004929BC()
{
  result = [v0 numberOfBands];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      [v0 averagePowerOfFrequencyBandAtIndex:v3 frequencyBand:0];
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1004931AC(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1004931AC((v7 > 1), v8 + 1, 1, v4);
      }

      ++v3;
      *(v4 + 2) = v8 + 1;
      *&v4[4 * v8 + 32] = v6;
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

uint64_t sub_100492AC4(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  sub_100492624(0);
  v3 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1004932B0(0, *(v3 + 2) + 1, 1, v3);
    *(a1 + 96) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1004932B0((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  *&v3[16 * v6 + 32] = a2;
  *(a1 + 96) = v3;
  return swift_endAccess();
}

void *sub_100492B9C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(&qword_1006F69B8, &qword_1005A3ED0);
  v10 = *(sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0) - 8);
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
  v15 = *(sub_100009DCC(&qword_1006F69B0, &unk_1005A46A0) - 8);
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

char *sub_100492D8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&unk_1006F6B40, &unk_1005A4670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100492E88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F7670, &unk_1005A45C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_100492F8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F7848, &qword_1005A4680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100493090(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F7850, &qword_1005A4688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_1004931AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F7840, &qword_1005A4668);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1004932B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F7838, &qword_1005A4660);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_1004933C8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_100493414()
{
  result = qword_1006F7620;
  if (!qword_1006F7620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F7620);
  }

  return result;
}

uint64_t sub_100493460()
{

  return swift_deallocObject();
}

uint64_t sub_1004934A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1004934BC()
{
  result = qword_1006F7628;
  if (!qword_1006F7628)
  {
    sub_100570B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F7628);
  }

  return result;
}

uint64_t sub_100493514()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10049355C(char a1@<W0>, char **a2@<X8>)
{
  v3 = 5;
  if (a1)
  {
    v3 = 8;
  }

  v100 = v3;
  if (a1)
  {
    v4 = &off_1006AA1B8;
  }

  else
  {
    v4 = &off_1006AB9E8;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_81;
  }

  v7 = sub_100193B54(v5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (v7 < v4[2])
  {
    v91 = a2;
    if (a1)
    {
      v8 = &off_1006AA1B8;
    }

    else
    {
      v8 = &off_1006AB9E8;
    }

    v9 = &v8[2 * v7];
    v11 = v9[4];
    v10 = v9[5];
    swift_bridgeObjectRetain_n();
    v92 = v10;

    if (v11[2])
    {
      v12 = 0;
      v13 = 0;
      v14 = v100;
      v15 = 0.0;
      v16 = 0.0 / v100;
      v99 = v100 + 1;
      v17 = v11 + 6;
      v93 = v11 + 4;
      v18 = _swiftEmptyArrayStorage;
      __asm { FMOV            V2.2D, #-1.0 }

      v95 = _Q2;
      v97 = v11;
      while (2)
      {
        v101 = *&v93[2 * v12];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100493090(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        v26 = (v25 + 1);
        v27 = v100;
        v28 = v95;
        v29 = v97;
        if (v25 >= v24 >> 1)
        {
          v40 = sub_100493090((v24 > 1), v25 + 1, 1, v18);
          v29 = v97;
          v28 = v95;
          v27 = v100;
          v18 = v40;
        }

        v30 = 0;
        v31 = v15 / v14;
        *(v18 + 2) = v26;
        v32 = 40 * v25;
        v33 = &v18[40 * v25];
        *(v33 + 4) = v16;
        *(v33 + 5) = v31;
        *(v33 + 3) = vaddq_f64(vaddq_f64(v101, v101), v28);
        *(v33 + 8) = 0x3FE0000000000000;
        do
        {
          v34 = v30 + 1;
          if (&v12[v30 + 1] >= v29[2])
          {
            __break(1u);
LABEL_40:
            swift_bridgeObjectRelease_n();
            if (!v92[2])
            {
              goto LABEL_76;
            }

            v53 = 0;
            v54 = 0;
            v55 = v92 + 6;
            v13 = _swiftEmptyArrayStorage;
            v56 = 0.0;
LABEL_42:
            v104 = *&v92[2 * v53 + 4];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_100493090(0, *(v13 + 2) + 1, 1, v13);
            }

            v57 = v95;
            v59 = *(v13 + 2);
            v58 = *(v13 + 3);
            v12 = (v59 + 1);
            v27 = v100;
            v60 = v92;
            if (v59 >= v58 >> 1)
            {
              v71 = sub_100493090((v58 > 1), v59 + 1, 1, v13);
              v57 = v95;
              v27 = v100;
              v13 = v71;
              v60 = v92;
            }

            v61 = 0;
            v62 = v56 / v14;
            *(v13 + 2) = v12;
            v63 = 40 * v59;
            v64 = &v13[40 * v59];
            *(v64 + 4) = v16;
            *(v64 + 5) = v62;
            *(v64 + 3) = vaddq_f64(vaddq_f64(v104, v104), v57);
            *(v64 + 8) = 0x3FE0000000000000;
            while (1)
            {
              v65 = v61 + 1;
              if (v61 + 1 + v53 >= v60[2])
              {
                break;
              }

              v66 = *&v55[2 * v61];
              v67 = *(v13 + 3);
              v68 = v59 + v61;
              v12 = (v68 + 2);
              if (v65 + v59 >= v67 >> 1)
              {
                v105 = v66;
                v70 = sub_100493090((v67 > 1), v68 + 2, 1, v13);
                v66 = v105;
                v57 = v95;
                v27 = v100;
                v13 = v70;
                v60 = v92;
              }

              *(v13 + 2) = v12;
              v69 = &v13[v63];
              *(v69 + 9) = v65 / v14;
              *(v69 + 10) = v62;
              *(v69 + 88) = vaddq_f64(vaddq_f64(v66, v66), v57);
              *(v69 + 13) = 0x3FE0000000000000;
              v63 += 40;
              v61 = v65;
              if (v27 == v65)
              {
                if (v54 == v27)
                {
                  v72 = 0;
                  v73 = 0;
                  v12 = _swiftEmptyArrayStorage;
                  v74 = v27;
                  while (v73 != v27)
                  {
                    v98 = v74;
                    v75 = v73;
                    v106 = v72;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v12 = sub_100492F8C(0, *(v12 + 2) + 1, 1, v12);
                    }

                    v76 = v98;
                    v77 = 0;
                    v73 = v75 + 1;
                    v27 = v100;
                    v78 = v106;
                    v79 = v106 - 0xFFFFFFFFLL;
                    do
                    {
                      if (!&v77[v79])
                      {
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

                      v80 = &v77[v76];
                      if (&v77[v76] > 0xFFFFFFFDLL)
                      {
                        goto LABEL_73;
                      }

                      v81 = v78 + v77;
                      v82 = &v77[v78 + 1];
                      v83 = v80 + 2;
                      if (((v82 | &v77[v78] | (v80 + 2) | (v80 + 1)) & 0x8000000000000000) != 0)
                      {
                        goto LABEL_74;
                      }

                      v85 = *(v12 + 2);
                      v84 = *(v12 + 3);
                      if (v85 >= v84 >> 1)
                      {
                        v87 = v12;
                        v88 = v73;
                        v96 = v79;
                        v89 = sub_100492F8C((v84 > 1), v85 + 1, 1, v87);
                        v79 = v96;
                        v76 = v98;
                        v73 = v88;
                        v27 = v100;
                        v78 = v106;
                        v12 = v89;
                      }

                      *(v12 + 2) = v85 + 1;
                      v86 = &v12[32 * v85];
                      *(v86 + 8) = v81;
                      *(v86 + 9) = v82;
                      *(v86 + 10) = v83;
                      *(v86 + 11) = v76 + v77++ + 1;
                      *(v86 + 6) = 0;
                      *(v86 + 7) = 0;
                    }

                    while (v27 != v77);
                    v72 = v78 + v99;
                    v74 = &v76[v99];
                    if (v73 == v27)
                    {
                      goto LABEL_71;
                    }
                  }

                  goto LABEL_78;
                }

                v56 = ++v54;
                v53 += v99;
                v55 += 2 * v100 + 2;
                if (v53 < v60[2])
                {
                  goto LABEL_42;
                }

                goto LABEL_76;
              }
            }

LABEL_70:
            __break(1u);
LABEL_71:
            v90 = v27;

            *v91 = v18;
            v91[1] = v26;
            v91[2] = v90;
            v91[3] = v90;
            v91[4] = v13;
            v91[5] = v12;
            v91[6] = v90;
            v91[7] = v90;
            return;
          }

          v35 = *&v17[2 * v30];
          v36 = *(v18 + 3);
          v37 = v25 + v30;
          v26 = (v37 + 2);
          if (v34 + v25 >= v36 >> 1)
          {
            v102 = v35;
            v39 = sub_100493090((v36 > 1), v37 + 2, 1, v18);
            v35 = v102;
            v29 = v97;
            v28 = v95;
            v27 = v100;
            v18 = v39;
          }

          *(v18 + 2) = v26;
          v38 = &v18[v32];
          *(v38 + 9) = v34 / v14;
          *(v38 + 10) = v31;
          *(v38 + 88) = vaddq_f64(vaddq_f64(v35, v35), v28);
          *(v38 + 13) = 0x3FE0000000000000;
          v32 += 40;
          v30 = v34;
        }

        while (v27 != v34);
        if (v13 == v27)
        {
          v41 = 0;
          v42 = 0;
          v26 = _swiftEmptyArrayStorage;
          v43 = v27;
          while (v42 != v27)
          {
            v103 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_100492F8C(0, *(v26 + 2) + 1, 1, v26);
            }

            v44 = 0;
            v94 = v42 + 1;
            v27 = v100;
            v45 = v103;
            do
            {
              if (!&v44[v103 - 0xFFFFFFFFLL])
              {
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              v46 = &v44[v43];
              if (&v44[v43] > 0xFFFFFFFDLL)
              {
                goto LABEL_68;
              }

              v13 = &v44[v45];
              v47 = &v44[v45 + 1];
              v48 = v46 + 2;
              if (((v47 | &v44[v45] | (v46 + 2) | (v46 + 1)) & 0x8000000000000000) != 0)
              {
                goto LABEL_69;
              }

              v50 = *(v26 + 2);
              v49 = *(v26 + 3);
              v12 = (v50 + 1);
              if (v50 >= v49 >> 1)
              {
                v52 = sub_100492F8C((v49 > 1), v50 + 1, 1, v26);
                v27 = v100;
                v45 = v103;
                v26 = v52;
              }

              *(v26 + 2) = v12;
              v51 = &v26[32 * v50];
              *(v51 + 8) = v13;
              *(v51 + 9) = v47;
              *(v51 + 10) = v48;
              *(v51 + 11) = v43 + v44++ + 1;
              *(v51 + 6) = 0;
              *(v51 + 7) = 0;
            }

            while (v27 != v44);
            v41 = v45 + v99;
            v43 += v99;
            v42 = v94;
            if (v94 == v27)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_77;
        }

        v15 = ++v13;
        v12 += v99;
        v17 += 2 * v100 + 2;
        if (v12 < v29[2])
        {
          continue;
        }

        break;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  __break(1u);
LABEL_81:
  sub_1005740F8();
  __break(1u);
}

void sub_100493CC8(double *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration);
  swift_beginAccess();
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v13 = v3[11];
  if (*v3 != *a1)
  {
    if (!*(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image))
    {
      v15.value.super.isa = 0;
      v15.is_nil = 1;
      ShaderFallback.setImage(_:animated:)(v15, v4);
      v6 = v3[3];
      v5 = v3[4];
      v7 = v3[5];
      v8 = v3[6];
      v9 = v3[7];
      v10 = v3[8];
      v11 = v3[9];
      v12 = v3[10];
      v13 = v3[11];
    }

LABEL_15:
    v14 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
    *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = v3[1];
    *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime);
    v14[57] = v6;
    v14[58] = v10;
    v14[59] = v11;
    v14[60] = v12;
    v14[61] = v13;
    v14[53] = v7;
    v14[54] = v8;
    v14[55] = v9;
    v14[56] = v5;
    return;
  }

  if (v3[1] != a1[1] || v3[2] != a1[2] || v6 != a1[3] || v5 != a1[4] || v7 != a1[5] || v8 != a1[6] || v9 != a1[7] || v10 != a1[8] || v11 != a1[9] || v12 != a1[10] || v13 != a1[11])
  {
    goto LABEL_15;
  }
}

__n128 ShaderFallback.configuration.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
  swift_beginAccess();
  v4 = *(v3 + 48);
  a1[2] = *(v3 + 32);
  a1[3] = v4;
  v5 = *(v3 + 80);
  a1[4] = *(v3 + 64);
  a1[5] = v5;
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v7;
  return result;
}

void ShaderFallback.configuration.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration);
  swift_beginAccess();
  v4 = v3[3];
  v10[2] = v3[2];
  v10[3] = v4;
  v5 = v3[5];
  v10[4] = v3[4];
  v10[5] = v5;
  v6 = v3[1];
  v10[0] = *v3;
  v10[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  sub_100493CC8(v10);
}

void (*ShaderFallback.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
  *(v3 + 312) = v1;
  *(v3 + 320) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v4[12] = *v6;
  v4[13] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v4[16] = v6[4];
  v4[17] = v10;
  v4[14] = v8;
  v4[15] = v9;
  return sub_100493FD4;
}

void sub_100493FD4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 312) + *(*a1 + 320));
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 96;
  }

  v5 = v3[1];
  *v4 = *v3;
  *(v4 + 16) = v5;
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  *(v4 + 64) = v3[4];
  *(v4 + 80) = v6;
  *(v4 + 32) = v8;
  *(v4 + 48) = v7;
  v9 = v2[13];
  *v3 = v2[12];
  v3[1] = v9;
  v10 = v2[17];
  v12 = v2[14];
  v11 = v2[15];
  v3[4] = v2[16];
  v3[5] = v10;
  v3[2] = v12;
  v3[3] = v11;
  sub_100493CC8(v4);

  free(v2);
}

void *ShaderFallback.image.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  v2 = v1;
  return v1;
}

void ShaderFallback.image.setter(UIImage_optional a1, Swift::Bool a2)
{
  isa = a1.value.super.isa;
  a1.is_nil = 0;
  ShaderFallback.setImage(_:animated:)(a1, a2);
}

void (*ShaderFallback.image.modify(void *a1))(Class *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100494110;
}

void sub_100494110(Class *a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v8.value.super.isa = v6;
    v8.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v8, v4);

    v5 = v3;
  }

  else
  {
    v9.value.super.isa = *a1;
    v9.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v9, v2);
    v5 = v6;
  }
}

Swift::Void __swiftcall ShaderFallback.setImage(_:animated:)(UIImage_optional _, Swift::Bool animated)
{
  v3 = v2;
  isa = _.value.super.isa;
  if (!_.is_nil || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v16 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
    swift_beginAccess();
    v5 = *(v3 + v16) ^ 1;
  }

  v6 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = isa;
  v7 = isa;

  if (!isa)
  {
    v8 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    isa = sub_100497808(*(v3 + v8));
  }

  v9 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = v7;
    v11 = v9;
    v12 = [isa CGImage];
    sub_10048B478(v12, v5 & 1);

    if (v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v7;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (v14)
  {
    v15 = v14;
    [v15 setNeedsDisplay];
  }

LABEL_13:
}

uint64_t ShaderFallback.isPaused.getter()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

id ShaderFallback.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_10049668C();
}

id (*ShaderFallback.isPaused.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1004943D8;
}

id sub_1004943D8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_10049668C();
  }

  return result;
}

char *ShaderFallback.init(configuration:)(_OWORD *a1)
{
  swift_getObjectType();
  sub_100009DCC(&qword_1006F7898, &qword_1005A46B0);
  __chkstk_darwin();
  v4 = &v31 - v3;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = 0;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  *&v1[v5] = sub_100496D38();
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = 0;
  v6 = &v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration];
  v7 = a1[3];
  v6[2] = a1[2];
  v6[3] = v7;
  v8 = a1[5];
  v6[4] = a1[4];
  v6[5] = v8;
  v9 = a1[1];
  *v6 = *a1;
  v6[1] = v9;
  v10 = type metadata accessor for ShaderFallback();
  v31.receiver = v1;
  v31.super_class = v10;
  v11 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10049631C();
  v12 = [v11 traitCollection];
  v13 = [v12 accessibilityContrast];

  *(v11 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = v13 == 1;
  sub_100009DCC(&qword_1006F78D0, &qword_1005A46B8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057B510;
  *(v14 + 32) = sub_10056E298();
  *(v14 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1005739D8();
  swift_unknownObjectRelease();

  v15 = objc_opt_self();
  v16 = [v15 processInfo];
  v17 = [v16 isLowPowerModeEnabled];

  *(v11 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = v17;
  v18 = sub_100572F48();
  v19 = *(*(v18 - 8) + 56);
  v19(v4, 1, 1, v18);
  sub_100572F08();
  v20 = v11;
  v21 = sub_100572EF8();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  *(v20 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver) = sub_100495064(0, 0, v4, &unk_1005A46C8, v22);

  v23 = [v15 processInfo];
  v24 = [v23 thermalState];

  *(v20 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel) = v24;
  v19(v4, 1, 1, v18);
  v25 = v20;
  v26 = sub_100572EF8();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;
  *&v25[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = sub_100495064(0, 0, v4, &unk_1005A46D8, v27);

  v25[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v19(v4, 1, 1, v18);
  v28 = sub_100572EF8();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v25;
  *&v25[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = sub_100495064(0, 0, v4, &unk_1005A46E8, v29);

  return v25;
}

uint64_t sub_10049491C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100009DCC(&qword_1006F7EF0, &unk_1005A48C0);
  v4[4] = swift_task_alloc();
  v5 = sub_1005736F8();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_100572F08();
  v4[9] = sub_100572EF8();
  v7 = sub_100572E78();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100494A4C, v7, v6);
}

uint64_t sub_100494A4C()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_100573718();

  sub_1005736E8();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = sub_100572EF8();
  v4 = sub_100497EF8();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100494B80;
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_100494B80()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100494FD8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100494D18;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100494D18()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100494D7C, v1, v2);
}

uint64_t sub_100494D7C()
{
  v1 = v0[4];
  v2 = sub_10056C368();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[12];
    v6 = v0[3];
    v7 = [objc_opt_self() processInfo];
    v8 = [v7 isLowPowerModeEnabled];

    v9 = *(v6 + v5);
    *(v6 + v5) = v8;
    if (v8 != v9)
    {
      v10 = v0[3];
      if (*(v10 + v0[13]))
      {
        v11 = *(v10 + v0[14]);
        if (v11)
        {
          v12 = *(v10 + v0[15]);
          v13 = 60;
          if (v8)
          {
            v13 = 30;
          }

          v14 = 30;
          if (v8)
          {
            v14 = 20;
          }

          v15 = 60;
          if (v8)
          {
            v15 = 30;
          }

          v16 = 20;
          if (v8)
          {
            v16 = 15;
          }

          if (v12 == 3)
          {
            v15 = v16;
          }

          v17 = v12 >= 2;
          if (v12 == 2)
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          if (v17)
          {
            v19 = v18;
          }

          else
          {
            v19 = v13;
          }

          [v11 setPreferredFramesPerSecond:v19];
        }
      }
    }

    sub_10001036C(v0[4], &qword_1006F7EF0, &unk_1005A48C0);
    v0[16] = sub_100572EF8();
    v20 = sub_100497EF8();
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_100494B80;
    v22 = v0[4];
    v23 = v0[5];

    return dispatch thunk of AsyncIteratorProtocol.next()(v22, v23, v20);
  }
}

uint64_t sub_100494FD8()
{
  *(v0 + 16) = *(v0 + 144);
  sub_100009DCC(&qword_1006F75F0, &qword_1005A44C0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100495064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006F7898, &qword_1005A46B0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100497F50(a3, v24 - v9);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001036C(v10, &qword_1006F7898, &qword_1005A46B0);
  }

  else
  {
    sub_100572F38();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100572E78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1005729C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10001036C(a3, &qword_1006F7898, &qword_1005A46B0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001036C(a3, &qword_1006F7898, &qword_1005A46B0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100495354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100009DCC(&qword_1006F7EF0, &unk_1005A48C0);
  v4[4] = swift_task_alloc();
  v5 = sub_1005736F8();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_100572F08();
  v4[9] = sub_100572EF8();
  v7 = sub_100572E78();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100495484, v7, v6);
}

uint64_t sub_100495484()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_100573718();

  sub_1005736E8();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = sub_100572EF8();
  v4 = sub_100497EF8();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1004955B8;
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_1004955B8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100498174;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100495750;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100495750()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1004957B4, v1, v2);
}

uint64_t sub_1004957B4()
{
  v1 = v0[4];
  v2 = sub_10056C368();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[12];
  v6 = v0[3];
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 thermalState];

  v9 = *(v6 + v5);
  *(v6 + v5) = v8;
  if (v8 != v9)
  {
    v10 = v0[3];
    if (*(v10 + v0[13]))
    {
      v11 = *(v10 + v0[14]);
      if (v11)
      {
        if (v8 < 2)
        {
          goto LABEL_12;
        }

        if (v8 == 2)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 30;
          v14 = 20;
          goto LABEL_14;
        }

        if (v8 == 3)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 20;
          v14 = 15;
        }

        else
        {
LABEL_12:
          v12 = *(v10 + v0[15]) == 0;
          v13 = 60;
          v14 = 30;
        }

LABEL_14:
        if (v12)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        [v11 setPreferredFramesPerSecond:v15];
      }
    }
  }

  sub_10001036C(v0[4], &qword_1006F7EF0, &unk_1005A48C0);
  v0[16] = sub_100572EF8();
  v16 = sub_100497EF8();
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_1004955B8;
  v18 = v0[4];
  v19 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v18, v19, v16);
}

uint64_t sub_100495A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_100009DCC(&qword_1006F7EF0, &unk_1005A48C0);
  v4[7] = swift_task_alloc();
  v5 = sub_1005736F8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_100572F08();
  v4[12] = sub_100572EF8();
  v7 = sub_100572E78();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100495B40, v7, v6);
}

uint64_t sub_100495B40()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_100573718();

  sub_1005736E8();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled;
  v0[16] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  v0[17] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled;
  v0[18] = v3;
  swift_beginAccess();
  v0[19] = sub_100572EF8();
  v4 = sub_100497EF8();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100495C8C;
  v6 = v0[7];
  v7 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_100495C8C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1004960B0;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100495E24;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100495E24()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100495E88, v1, v2);
}

uint64_t sub_100495E88()
{
  v1 = v0[7];
  v2 = sub_10056C368();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[15];
    v6 = v0[6];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v8 = *(v6 + v5);
    *(v6 + v5) = IsReduceMotionEnabled;
    if (IsReduceMotionEnabled != v8)
    {
      v9 = IsReduceMotionEnabled;
      v10 = v0[16];
      v11 = v0[6];
      v12 = *(v11 + v10);
      if (v12)
      {
        v13 = ((v9 | *(v11 + v0[17])) & 1) != 0 ? 1 : *(v11 + v0[18]);
        [v12 setEnableSetNeedsDisplay:v13];
        v14 = *(v11 + v10);
        if (v14)
        {
          v15 = v0[6];
          if ((*(v15 + v0[17]) & 1) != 0 || *(v15 + v0[15]) == 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = *(v15 + v0[18]);
          }

          [v14 setPaused:v16];
        }
      }
    }

    sub_10001036C(v0[7], &qword_1006F7EF0, &unk_1005A48C0);
    v0[19] = sub_100572EF8();
    v17 = sub_100497EF8();
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_100495C8C;
    v19 = v0[7];
    v20 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v17);
  }
}

uint64_t sub_1004960B0()
{
  *(v0 + 40) = *(v0 + 168);
  sub_100009DCC(&qword_1006F75F0, &qword_1005A44C0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id ShaderFallback.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver])
  {

    sub_100572FB8();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver])
  {

    sub_100572FB8();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver])
  {

    sub_100572FB8();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShaderFallback();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10049631C()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  if (!*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView])
  {
    v2 = v0;
    if (qword_1006F6770 != -1)
    {
      swift_once();
    }

    v3 = xmmword_1006FE860;
    if (xmmword_1006FE860)
    {
      v4 = byte_1006FE888;
      v5 = qword_1006FE878;
      v25 = xmmword_1006FE860;
      v26 = unk_1006FE870;
      v27 = qword_1006FE878;
      v28 = unk_1006FE880;
      v29 = byte_1006FE888 & 1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = v5;
      [v2 bounds];
      v11 = [objc_allocWithZone(MTKView) initWithFrame:v3 device:{v7, v8, v9, v10}];
      [v11 setAutoresizingMask:18];
      v12 = [v11 layer];

      [v12 setAllowsDisplayCompositing:0];
      if ((v4 & 1) != 0 && *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor() == 1)
      {
        [v11 setColorPixelFormat:552];
      }

      v13 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = sub_10048B9E0(&v25);
      *(v15 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8) = &off_1006AC490;
      swift_unknownObjectWeakAssign();
      sub_10048B924(0, 0.5, 0.5, 0.5);
      sub_10048B404([v11 colorPixelFormat]);
      [v11 setDelegate:v2];
      v31.value.super.isa = 0;
      v31.is_nil = 0;
      ShaderFallback.setImage(_:animated:)(v31, v16);
      v17 = [v11 delegate];
      if (v17)
      {
        v18 = v17;
        [v2 frame];
        [v18 mtkView:v11 drawableSizeWillChange:{v19, v20}];
        swift_unknownObjectRelease();
      }

      [v11 setPreferredFramesPerSecond:60];
      v21 = *&v2[v1];
      *&v2[v1] = v11;
      v22 = v11;

      v23 = *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer];
      *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = v15;
      v24 = v15;

      [v2 addSubview:v22];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

id sub_10049668C()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  result = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled))
    {
      v3 = 1;
    }

    else
    {
      v4 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
      v5 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
      swift_beginAccess();
      result = v5;
      v3 = *(v0 + v4);
    }

    [result setEnableSetNeedsDisplay:v3];
    result = *(v0 + v1);
    if (result)
    {
      if ((*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) == 1)
      {
        v6 = 1;
      }

      else
      {
        v7 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
        v8 = *(v0 + v1);
        swift_beginAccess();
        result = v8;
        v6 = *(v0 + v7);
      }

      return [result setPaused:v6];
    }
  }

  return result;
}

Swift::Void __swiftcall ShaderFallback.draw(in:)(MTKView in)
{
  v2 = v1;
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
  sub_10056CA68();
  sub_100496EC0(v7);
  (*(v5 + 8))(v7, v4);
  v9 = *(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis];
    v11 = v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    v12 = *(v11 + 16);
    *(v10 + 64) = v12;
    *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = *(v8 + 344);
    memmove(&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], (v8 + 16), 0x170uLL);
    v13 = &v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
    *v13 = *(v8 + 400) / 786.0;
    *(v13 + 4) = 0;
  }

  [v9 drawInMTKView:in.super.super.super.isa];
}

void __swiftcall ShaderFallback.Configuration.init(fallbackImage:transitionSpeed:intensity:blur:pinchMix:speed:ySpeed:xSpeed:bassAmount:saturation:whiteScrim:blackScrim:)(ShaderFallbackKit::ShaderFallback::Configuration *__return_ptr retstr, ShaderFallbackKit::ShaderFallback::Configuration::FallbackImage fallbackImage, Swift::Double transitionSpeed, Swift::Double intensity, Swift::Double blur, Swift::Double pinchMix, Swift::Double speed, Swift::Double ySpeed, Swift::Double xSpeed, Swift::Double bassAmount, Swift::Double saturation, Swift::Double whiteScrim, Swift::Double blackScrim)
{
  retstr->fallbackImage = fallbackImage & 1;
  retstr->transitionSpeed = transitionSpeed;
  retstr->intensity = intensity;
  retstr->blur = blur;
  retstr->pinchMix = pinchMix;
  retstr->speed = speed;
  retstr->ySpeed = ySpeed;
  retstr->xSpeed = xSpeed;
  retstr->bassAmount = bassAmount;
  *&retstr->saturation = *&saturation;
  retstr->blackScrim = blackScrim;
}

double ShaderFallback.Configuration.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v13 = v2[2];
  v14 = v4;
  v5 = v2[5];
  v15 = v2[4];
  v16 = v5;
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  a1(&v11);
  v7 = v14;
  a2[2] = v13;
  a2[3] = v7;
  v8 = v16;
  a2[4] = v15;
  a2[5] = v8;
  result = *&v11;
  v10 = v12;
  *a2 = v11;
  a2[1] = v10;
  return result;
}

double sub_100496AC4()
{
  LOBYTE(static ShaderFallback.Configuration.zero) = 0;
  result = 0.0;
  *(&static ShaderFallback.Configuration.zero + 8) = 0u;
  *&algn_1006FEB30[8] = 0u;
  *(&xmmword_1006FEB40 + 8) = 0u;
  unk_1006FEB58 = 0u;
  *(&xmmword_1006FEB60 + 8) = 0u;
  qword_1006FEB78 = 0;
  return result;
}

__int128 *ShaderFallback.Configuration.zero.unsafeMutableAddressor()
{
  if (qword_1006F67B0 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.zero;
}

double static ShaderFallback.Configuration.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1006F67B0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1006FEB50;
  a1[2] = xmmword_1006FEB40;
  a1[3] = v1;
  v2 = unk_1006FEB70;
  a1[4] = xmmword_1006FEB60;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.zero;
  v4 = *algn_1006FEB30;
  *a1 = static ShaderFallback.Configuration.zero;
  a1[1] = v4;
  return result;
}

double sub_100496BB8()
{
  LOBYTE(static ShaderFallback.Configuration.default) = 0;
  *(&static ShaderFallback.Configuration.default + 8) = xmmword_1005A3BE0;
  *&algn_1006FEB90[8] = xmmword_1005A3BF0;
  *(&xmmword_1006FEBA0 + 8) = xmmword_1005A3C00;
  unk_1006FEBB8 = xmmword_1005A3C10;
  result = 2.0;
  *(&xmmword_1006FEBC0 + 8) = xmmword_1005A3C20;
  qword_1006FEBD8 = 0x3FD6666666666666;
  return result;
}

__int128 *ShaderFallback.Configuration.default.unsafeMutableAddressor()
{
  if (qword_1006F67B8 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.default;
}

double static ShaderFallback.Configuration.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1006F67B8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1006FEBB0;
  a1[2] = xmmword_1006FEBA0;
  a1[3] = v1;
  v2 = unk_1006FEBD0;
  a1[4] = xmmword_1006FEBC0;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.default;
  v4 = *algn_1006FEB90;
  *a1 = static ShaderFallback.Configuration.default;
  a1[1] = v4;
  return result;
}

BOOL sub_100496CDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s17ShaderFallbackKit0aB0C13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v10);
}

uint64_t sub_100496D38()
{
  if (qword_1006F67A8 != -1)
  {
    swift_once();
  }

  memmove((v0 + 16), &static Uniforms.standard, 0x170uLL);
  *(v0 + 384) = xmmword_1005A3C30;
  *(v0 + 400) = xmmword_1005A3C40;
  *(v0 + 416) = 1028443341;
  *(v0 + 424) = 0x3F50624DD2F1A9FCLL;
  *(v0 + 432) = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  *(v0 + 448) = xmmword_1005A3C50;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 464) = _Q0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  sub_10056CA68();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = 0;
  sub_10056CA68();
  sub_10056CA68();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = 0x4024000000000000;
  return v0;
}

void sub_100496EC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v25 - v9;
  v26 = *(v5 + 16);
  v26(&v25 - v9, v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime, v4, v8);
  sub_10056C9B8();
  v12 = v11;
  v13 = v5;
  v25 = v5;
  v14 = *(v5 + 8);
  v14(v10, v4);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = v12;
  v15 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime;
  swift_beginAccess();
  (*(v13 + 24))(v2 + v15, a1, v4);
  swift_endAccess();
  v16 = v26;
  (v26)(v10, v2 + v15, v4);
  v17 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime;
  swift_beginAccess();
  v16(v7, v2 + v17, v4);
  sub_10056C9B8();
  v19 = v18;
  v14(v7, v4);
  v14(v10, v4);
  v20 = v19 * v2[96];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = v20;
  v21 = v19 * v2[97];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = v21;
  v22 = v19 * v2[98];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = v22;
  v23 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed;
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = v20 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = v21 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = v22 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  (v26)(v10, v2 + v15, v4);
  swift_beginAccess();
  (*(v25 + 40))(v2 + v17, v10, v4);
  swift_endAccess();
  v24 = *(v2 + v23);
  v2[4] = v24;
  sub_100497224();
  sub_1004973E0();
}

double sub_1004971D4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = *(a1 + 8);
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime);
  v3 = *(a1 + 24);
  result = *(a1 + 32);
  *(v1 + 448) = result;
  *(v1 + 456) = v3;
  v4 = *(a1 + 80);
  *(v1 + 464) = *(a1 + 64);
  *(v1 + 480) = v4;
  *(v1 + 424) = *(a1 + 40);
  *(v1 + 440) = *(a1 + 56);
  return result;
}

long double sub_100497224()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *v2.i64 = sin(v1 * 0.1);
  v3.i64[0] = 1.0;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v15 = vnegq_f64(v4);
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = (fabs(*v2.i64) * *vbslq_s8(v15, v3, v2).i64 + 1.0) * 0.5 * 0.2 + 0.9;
  *v5.i64 = sin(v1 * 0.25);
  v6.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = (fabs(*v5.i64) * *vbslq_s8(v15, v6, v5).i64 + 1.0) * 0.5 * 0.35 + 0.75;
  v7 = *(v0 + 404);
  *v8.i64 = sin(v1 * 0.5);
  v9.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = (fabs(*v8.i64) * *vbslq_s8(v15, v9, v8).i64 + 1.0) * 0.5 * (v7 + -0.1) + 0.1;
  *v10.i64 = sin(v1 * 0.75);
  v11.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = (*vbslq_s8(v15, v11, v10).i64 * fabs(sqrt(fabs(*v10.i64))) + 1.0) * 0.5 + 0.0;
  *v12.i64 = sin(v1);
  v13.i64[0] = 1.0;
  result = (*vbslq_s8(v15, v13, v12).i64 * pow(fabs(*v12.i64), 0.75) + 1.0) * 0.5 * 0.5 + 0.5;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = result;
  return result;
}

float sub_1004973E0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass);
  v2 = *(v0 + 368);
  *v2.f64 = v1;
  *(v0 + 368) = v1;
  v3 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid);
  *(v2.f64 + 1) = v3;
  *(v0 + 368) = v2;
  v4 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi);
  *&v2.f64[1] = v4;
  *(v0 + 368) = v2;
  v5 = *(v0 + 408);
  *(v0 + 356) = v5;
  v2.f64[0] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  v2.f64[1] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v0 + 24) = vmul_f32(vrev64_s32(*(v0 + 412)), vcvt_f32_f64(v2));
  v6 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  v7 = 0.0;
  if (v6 >= 0.0)
  {
    v7 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  }

  if (v6 >= 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 * v8 * (3.0 - (v8 + v8));
  v10 = vcvtq_f64_f32(*(v0 + 384));
  *(v0 + 384) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 424), v10), v9), v10));
  v11 = *(v0 + 448);
  *v10.f64 = v9 * (*(v0 + 440) - *(v0 + 392)) + *(v0 + 392);
  *(v0 + 392) = LODWORD(v10.f64[0]);
  *v10.f64 = v9 * (v11 - *(v0 + 344)) + *(v0 + 344);
  *(v0 + 344) = LODWORD(v10.f64[0]);
  v12 = vcvtq_f64_f32(*(v0 + 360));
  *(v0 + 360) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 480), v12), v9), v12));
  v13 = vcvtq_f64_f32(*(v0 + 400));
  *(v0 + 400) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 456), v13), v9), v13));
  result = v9 * (*(v0 + 472) - v5) + v5;
  *(v0 + 408) = result;
  return result;
}

uint64_t sub_10049757C()
{
  v1 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime;
  v2 = sub_10056CAA8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime, v2);

  return swift_deallocClassInstance();
}

void sub_1004976C4(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 accessibilityContrast];

  v4 = v3 == 1;
  v5 = a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled];
  a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = v4;
  if (v4 != v5)
  {
    sub_10049668C();
  }
}

id sub_100497808(char a1)
{
  if (a1)
  {
    if (qword_1006F6760 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1006F6760 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v1 = qword_1006FE810;
  v2 = sub_100572898();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  return v3;
}

uint64_t type metadata accessor for ShaderFallback.Calculator(uint64_t a1)
{
  result = qword_1006F79B8;
  if (!qword_1006F79B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100497990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CB98;

  return sub_10049491C(a1, v4, v5, v6);
}

uint64_t sub_100497A44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_100495354(a1, v4, v5, v6);
}

uint64_t sub_100497AF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_100495A10(a1, v4, v5, v6);
}

unint64_t sub_100497BB0()
{
  result = qword_1006F78D8;
  if (!qword_1006F78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F78D8);
  }

  return result;
}

__n128 sub_100497C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100497C20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100497C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100497CE8(uint64_t a1)
{
  result = sub_10056CAA8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100497DE4()
{
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer) = 0;
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  *(v0 + v1) = sub_100496D38();
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel) = 0;
  sub_1005740F8();
  __break(1u);
}

unint64_t sub_100497EF8()
{
  result = qword_1006F7EF8;
  if (!qword_1006F7EF8)
  {
    sub_1005736F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F7EF8);
  }

  return result;
}

uint64_t sub_100497F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F7898, &qword_1005A46B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100497FC0()
{

  return swift_deallocObject();
}

uint64_t sub_100497FF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10000C500(a1, v4);
}

uint64_t sub_1004980B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_10000C500(a1, v4);
}

uint64_t Array<A>.joined(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a4;
  v22 = a5;
  v20 = a1;
  v23 = a6;
  v8 = sub_100573C28();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = *(a3 - 8);
  __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = a2;
  sub_100572E38();
  swift_getWitnessTable();
  sub_100573258();
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return (*(v22 + 8))(a3);
  }

  else
  {
    (*(v12 + 32))(v14, v11, a3);
    *&v24 = a2;

    sub_1005732A8();
    v19 = v26;
    v24 = v26;
    v25 = v27;
    __chkstk_darwin();
    v16 = v21;
    v17 = v22;
    *(&v19 - 4) = a3;
    *(&v19 - 3) = v16;
    v18 = v20;
    *(&v19 - 2) = v17;
    *(&v19 - 1) = v18;
    sub_100573D68();
    swift_getWitnessTable();
    sub_100572C38();
    swift_unknownObjectRelease();
    return (*(v12 + 8))(v14, a3);
  }
}

uint64_t sub_100498474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  v13(v9);
  (v13)(v11, a2, a4, a5);
  return (*(v8 + 8))(v11, a4);
}

id variable initialization expression of BrightnessManager.brightnessClient()
{
  v0 = objc_allocWithZone(BrightnessSystemClient);

  return [v0 init];
}

unint64_t sub_10049860C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100498E50(a1);
  sub_100009DCC(&qword_1006F7F80, &qword_1005A4920);
  swift_arrayDestroy();
  return v2;
}

unint64_t variable initialization expression of BrightnessManager.disableCBFeatures()
{
  v0 = sub_100498F54(&off_1006AC7A8);
  sub_100499050(&unk_1006AC7C8);
  return v0;
}

unint64_t variable initialization expression of BrightnessManager.enableCBFeatures()
{
  v0 = sub_100498F54(&off_1006AC7E0);
  sub_100499050(&unk_1006AC800);
  return v0;
}

uint64_t variable initialization expression of Datavault.logger@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056DF88();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of WeakArray.items(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray.WeakBox(0, a1, a1, a4);

  return sub_100572D88();
}

unint64_t variable initialization expression of WeakValuesDictionary.storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004990B8();
  swift_getTupleTypeMetadata2();
  v6 = sub_100572D88();
  v7 = sub_1004B1430(v6, a1, v5, a3);

  return v7;
}

uint64_t sub_100498818(uint64_t a1, uint64_t a2)
{
  result = sub_100573098();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_10049886C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005730A8();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

Swift::Int sub_1004988EC()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(v1);
  return sub_1005746C8();
}

Swift::Int sub_100498960(uint64_t a1)
{
  v2 = *v1;
  sub_100574678();
  sub_100574688(v2);
  return sub_1005746C8();
}

uint64_t sub_1004989CC(uint64_t a1)
{
  sub_1004998F0(&qword_1006F8088, _s3__C4NameVMa_0, &unk_1005A4F80);
  sub_1004998F0(&qword_1006F8090, _s3__C4NameVMa_0, &unk_1005A4F20);

  return sub_100574218();
}

uint64_t sub_100498A88(uint64_t a1)
{
  sub_1004998F0(&qword_1006F8098, _s3__C3KeyVMa_0, &unk_1005A51B0);
  sub_1004998F0(&qword_1006F80A0, _s3__C3KeyVMa_0, &unk_1005A4C4C);

  return sub_100574218();
}

_DWORD *sub_100498B44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_100498B54@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100498B60(uint64_t a1)
{
  sub_1004998F0(&qword_1006F8078, type metadata accessor for UILayoutPriority, &unk_1005A50E4);
  sub_1004998F0(&qword_1006F8080, type metadata accessor for UILayoutPriority, &unk_1005A5084);
  return sub_100574218();
}

uint64_t sub_100498C1C(uint64_t a1)
{
  sub_1004998F0(&qword_1006F8128, type metadata accessor for NSKeyValueChangeKey, &unk_1005A5458);
  sub_1004998F0(&qword_1006F8130, type metadata accessor for NSKeyValueChangeKey, &unk_1005A5300);

  return sub_100574218();
}

void sub_100498CE0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1005746A8(LODWORD(v1));
}

uint64_t sub_100498D1C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t sub_100498D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80E8, &qword_1005A5238);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1004B0CCC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100498E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80E0, &qword_1005A5230);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1004B0CCC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100498F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80D8, &qword_1005A5228);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1004B0CCC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100499050(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F7F88, &qword_1005A4928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004990B8()
{
  result = qword_1006F7F90;
  if (!qword_1006F7F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F7F90);
  }

  return result;
}

void *sub_100499104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100009DCC(&qword_1006F80D0, &qword_1005A5220);
  v3 = sub_1005741C8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1004B0CF8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_1004B0CF8(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100499220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80C8, &qword_1005A5218);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1004B0CCC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10049931C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80C0, &qword_1005A5210);
    v3 = sub_1005741C8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1004B0DB8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1004993F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80B8, &qword_1005A5208);
    v3 = sub_1005741C8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1004B0DFC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1004994D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80B0, &qword_1005A5200);
    v3 = sub_1005741C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1004B0CCC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1004995EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006F80A8, &qword_1005A51F8);
    v3 = sub_1005741C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v8;

      result = sub_1004B0E68(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v9;
      *(v3[7] + 8 * result) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 sub_100499738(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1004997B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1004998F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_10049A378(a1, a2, 0);
  v6 = v5 != 0;

  return v6;
}

uint64_t static ApplicationRecordUtilities.openApplication(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_100499E74, 0, 0);
}

uint64_t sub_100499E74()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_100572898();
    v0[21] = v3;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_100499FD8;
    v4 = swift_continuation_init();
    v0[17] = sub_100009DCC(&qword_1006F8138, qword_1005A54A8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10049A1C8;
    v0[13] = &unk_1006AD388;
    v0[14] = v4;
    [v2 openApplicationWithBundleIdentifier:v3 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100499FD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10049A150;
  }

  else
  {
    v2 = sub_10049A0E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049A0E8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10049A150(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_10049A1C8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000C8CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100009DCC(qword_1006F8140, &unk_1005A54E0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

NSString sub_10049A294()
{
  result = sub_100572898();
  static NSNotificationName.applicationRegistered = result;
  return result;
}

uint64_t *NSNotificationName.applicationRegistered.unsafeMutableAddressor()
{
  if (qword_1006F7F00 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.applicationRegistered;
}

id static NSNotificationName.applicationRegistered.getter()
{
  if (qword_1006F7F00 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.applicationRegistered;

  return v1;
}

id sub_10049A378(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100572898();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10056C728();

    swift_willThrow();
  }

  return v6;
}

uint64_t static ArrayBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2)
{
  sub_100572E38();
  sub_100572E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_100572C58();
}

double sub_10049A530@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t static ArrayBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_100573C28();
  sub_100574418();
  v4 = *(v3 - 8);
  swift_allocObject();
  sub_100572D48();
  (*(v4 + 16))(v5, a1, v3);
  v6.location = sub_100572E38();
  CFRange.init(_:)(v6);
  swift_getWitnessTable();
  v7 = sub_100572BB8();

  return v7;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(a1, v6, a3, a4);
  return v8;
}

uint64_t Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100570B88();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin();
  v33 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100570BC8();
  v32 = *(v34 - 8);
  __chkstk_darwin();
  v31 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 40) = _swiftEmptyArrayStorage;
  v13 = (v5 + 40);
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v43[0] = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v29[0] = v5 + 40;
    v29[1] = a1;
    v30 = a2;
    v15 = a1 + 32;
    v37 = a4;

    v38 = _swiftEmptyArrayStorage;
    do
    {
      sub_10002EA8C(v15, aBlock);
      v17 = v40;
      v16 = v41;
      sub_10000C8CC(aBlock, v40);
      v18 = swift_allocObject();
      v19 = v5;
      swift_weakInit();
      v20 = *(v16 + 1);

      v20(sub_10049C5D8, v18, v17, v16);

      sub_100010474(aBlock);
      sub_100572CE8();
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
      v38 = v43[0];
      v5 = v19;
      v15 += 40;
      --v14;
    }

    while (v14);

    v21 = v38;
    LOBYTE(a2) = v30;
    v13 = v29[0];
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *v13 = v21;

  if (a2)
  {
    v22 = objc_opt_self();

    if (![v22 isMainThread])
    {
      sub_10049AFC8();
      v23 = sub_1005735E8();
      v41 = sub_1000E6D8C;
      v42 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007885C;
      v40 = &unk_1006AD3F8;
      v24 = _Block_copy(aBlock);

      v25 = v31;
      sub_100570BA8();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10049B558();
      sub_100009DCC(&unk_1006F9300, &qword_1005A5520);
      sub_10049B5B0();
      v26 = v33;
      v27 = v36;
      sub_100573DA8();
      sub_100573608();
      _Block_release(v24);

      (*(v35 + 8))(v26, v27);
      (*(v32 + 8))(v25, v34);
      return v5;
    }

    (*(v5 + 16))();
  }

  return v5;
}

Swift::Void __swiftcall Whitetail.Binding.setNeedsUpdate()()
{
  v1 = sub_100570B88();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100570BC8();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 32));
  swift_endAccess();
  if ((*(v0 + 36) & 1) == 0)
  {
    *(v0 + 36) = 1;
    sub_10049AFC8();
    v12 = v5;
    v9 = sub_1005735E8();
    aBlock[4] = sub_10049B614;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_1006AD420;
    v10 = _Block_copy(aBlock);

    sub_100570BA8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10049B558();
    sub_100009DCC(&unk_1006F9300, &qword_1005A5520);
    sub_10049B5B0();
    sub_100573DA8();
    sub_100573608();
    _Block_release(v10);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 32));
  swift_endAccess();
}

uint64_t sub_10049AF90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_10049AFC8()
{
  result = qword_1006F92F0;
  if (!qword_1006F92F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F92F0);
  }

  return result;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_100009DCC(&qword_1006F81D8, &qword_1005A5528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  sub_10002EA8C(a1, inited + 32);
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  sub_100010474(a1);
  return v9;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_100009DCC(&qword_1006F81D8, &qword_1005A5528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = a1;
  *(inited + 40) = 0;
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  return v9;
}

uint64_t Whitetail.Binding.add(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000C8CC(a1, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 8);

  v6(sub_10049B61C, v5, v3, v4);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100572CE8();
    if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100572D68();
    }

    sub_100572DB8();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }
}

double sub_10049B2E4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Whitetail.Binding.setNeedsUpdate()();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Whitetail.Binding.add(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = a1._rawValue + 32;
    do
    {
      sub_10002EA8C(v3, v9);
      v5 = v10;
      v4 = v11;
      sub_10000C8CC(v9, v10);
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = *(v4 + 8);

      v8 = v12;
      v7(sub_10049C5D8, v6, v5, v4);
      if (v8)
      {

        v12 = 0;
      }

      else
      {
        v12 = 0;

        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_100572CE8();
        if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100572D68();
        }

        sub_100572DB8();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      sub_100010474(v9);
      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10049B4DC(uint64_t a1)
{
  swift_beginAccess();
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 36) = 0;
  os_unfair_lock_unlock((a1 + 32));
  v2 = swift_endAccess();
  return (*(a1 + 16))(v2);
}

uint64_t sub_10049B540(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10049B558()
{
  result = qword_1006F81C8;
  if (!qword_1006F81C8)
  {
    sub_100570B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F81C8);
  }

  return result;
}

unint64_t sub_10049B5B0()
{
  result = qword_1006F81D0;
  if (!qword_1006F81D0)
  {
    sub_100010324(&unk_1006F9300, &qword_1005A5520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F81D0);
  }

  return result;
}

uint64_t Whitetail.Binding.description.getter()
{
  sub_100573ED8(21);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  sub_100572A98(v4);
  v5._countAndFlagsBits = sub_100574758();
  sub_100572A98(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_100572A98(v6);
  sub_100574098();
  v7._countAndFlagsBits = 0x6576726573626F20;
  v7._object = 0xEB000000003D7372;
  sub_100572A98(v7);
  swift_beginAccess();

  v0 = sub_100572D38();
  v2 = v1;

  v8._countAndFlagsBits = v0;
  v8._object = v2;
  sub_100572A98(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  sub_100572A98(v9);
  return 0;
}

uint64_t Whitetail.Binding.deinit()
{

  return v0;
}

uint64_t Whitetail.Binding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id DistributedNotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_1000E23F0;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10007885C;
  v11[3] = &unk_1006AD470;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:a3 handler:v8];
  _Block_release(v8);

  return v9;
}

id sub_10049B92C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_1000E6D8C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10007885C;
  v11[3] = &unk_1006AD740;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:v5 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t NotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  type metadata accessor for NotificationObserver();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 16) = a3;
  swift_unknownObjectWeakAssign();
  *(v8 + 32) = 1;
  *(v8 + 48) = sub_1000E23F0;
  *(v8 + 56) = v7;
  v9 = objc_opt_self();

  v10 = a3;

  v11 = [v9 defaultCenter];
  *(v8 + 40) = v11;
  v12 = *(v8 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = v11;

  v15 = v12;
  [v14 addObserver:v8 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_10049BBA4()
{

  return swift_deallocObject();
}

uint64_t KeyValueObservationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a1;
  v11[5] = a2;
  v12 = a3;

  v13 = sub_10056C788();

  return v13;
}

uint64_t UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100572CB8();
  (*(*(a4 - 8) + 8))(a3, a4);
  return a1;
}

uint64_t UserDefaultsKeyValueTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_10049BE54(a5, a6, a3, a4, sub_1000E6D8C, v12);

  return v13;
}

uint64_t sub_10049BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v10 = _s20KeyValueRegistrationC10IdentifierVMa(0) - 8;
  v32 = *v10;
  v11 = *(v32 + 64);
  __chkstk_darwin();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v31 - v13;
  __chkstk_darwin();
  v16 = &v31 - v15;
  v35 = a1;
  v36 = a2;

  v17 = sub_100572B78();
  v19 = v18;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v20 = &v16[*(v10 + 28)];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v16[*(v10 + 32)];
  *v21 = v17;
  v21[1] = v19;
  v22 = qword_1006F7F58;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1006F93B0;
  v24 = *(qword_1006F93B0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v24 + 16));
  v25 = v37;
  sub_1004DD2EC(v23, v16, v33, v34);
  os_unfair_lock_unlock(*(v24 + 16));
  if (v25)
  {
    return sub_10049C338(v16);
  }

  sub_10049C394(v16, v14);
  sub_10049C3F8(v16, v12);
  v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v28 = swift_allocObject();
  sub_10049C3F8(v12, v28 + v27);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v29 = swift_allocObject();
  sub_10049C3F8(v14, v29 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier);
  result = v29;
  v30 = (v29 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v30 = sub_10049C558;
  v30[1] = v28;
  return result;
}

uint64_t sub_10049C0E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_10049BE54(v8, v7, v5, v6, sub_1000E6D8C, v9);

  return v10;
}

uint64_t sub_10049C198()
{

  return swift_deallocObject();
}

uint64_t sub_10049C24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10049C2A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10049C2E8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10049C338(uint64_t a1)
{
  v2 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10049C394(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049C3F8(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049C45C()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_10056CAE8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_10049C558()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1004DD01C(v2);
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = a3;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v11 + 40) = v15;
  v16 = *(v11 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v11 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v6 + 40) = v15;
  v16 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v6 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t NotificationObserver.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_10023FEF8(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_10023FEF8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10049C9F0(uint64_t a1)
{
  v3 = sub_100570B88();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100570BC8();
  v27 = *(v29 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10056C368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v14 = &v24 - v12;
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 48))(a1, v13);
  }

  v25 = v4;
  v26 = v3;
  v15 = *(v9 + 16);
  v15(&v24 - v12, a1, v8, v13);
  (v15)(v11, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v9 + 32))(v17 + v16, v14, v8);
  v18 = objc_opt_self();

  if ([v18 isMainThread])
  {
    (*(v1 + 48))(v11);
  }

  else
  {
    sub_1000D3B98(0, &qword_1006F92F0, OS_dispatch_queue_ptr);
    v24 = sub_1005735E8();
    aBlock[4] = sub_10049D23C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_1006AD7B8;
    v20 = _Block_copy(aBlock);

    sub_100570BA8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10049B558();
    sub_100009DCC(&unk_1006F9300, &qword_1005A5520);
    sub_10049B5B0();
    v21 = v28;
    v22 = v26;
    sub_100573DA8();
    v23 = v24;
    sub_100573608();
    _Block_release(v20);

    (*(v25 + 8))(v21, v22);
    (*(v27 + 8))(v7, v29);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t NotificationObserver.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_100573ED8(65);
  v17._object = 0x80000001005BC8A0;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  sub_100572A98(v17);
  v18._countAndFlagsBits = sub_1005728D8();
  sub_100572A98(v18);

  v19._countAndFlagsBits = 0x3D7463656A626F20;
  v19._object = 0xE800000000000000;
  sub_100572A98(v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"description"])
    {
      v5 = [v4 description];
      swift_unknownObjectRelease();
      v2 = sub_1005728D8();
      v7 = v6;

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0xE300000000000000;
LABEL_6:
  v20._countAndFlagsBits = v2;
  v20._object = v7;
  sub_100572A98(v20);

  v21._countAndFlagsBits = 0x3D7265746E656320;
  v21._object = 0xE800000000000000;
  sub_100572A98(v21);
  sub_1000D3B98(0, &unk_1006F92D0, NSObject_ptr);
  v8 = *(v1 + 40);
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_100573A58();

  if (v10)
  {
    v11 = 0xE700000000000000;
    v12._countAndFlagsBits = 0x746C7561666564;
  }

  else
  {
    v13 = [v8 description];
    v14 = sub_1005728D8();
    v11 = v15;

    v12._countAndFlagsBits = v14;
  }

  v12._object = v11;
  sub_100572A98(v12);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_100572A98(v22);
  return 0;
}

uint64_t sub_10049D178()
{
  v1 = sub_10056C368();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10049D2A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BrightnessManager.__allocating_init(windowScene:)(void *a1)
{
  v2 = swift_allocObject();
  BrightnessManager.init(windowScene:)(a1);
  return v2;
}

void *BrightnessManager.init(windowScene:)(void *a1)
{
  v1[2] = [objc_allocWithZone(BrightnessSystemClient) init];
  v3 = sub_100498E50(&off_1006AC818);
  sub_100009DCC(&qword_1006F7F80, &qword_1005A4920);
  swift_arrayDestroy();
  v1[3] = v3;
  v4 = sub_100498E50(&off_1006AC868);
  swift_arrayDestroy();
  v1[4] = v4;
  v5 = sub_100498F54(&off_1006AC8B8);
  sub_100499050(&unk_1006AC8D8);
  v1[5] = v5;
  v6 = sub_100498F54(&off_1006AC8F0);
  sub_100499050(&unk_1006AC910);
  v1[6] = v6;
  v1[7] = _swiftEmptyArrayStorage;
  sub_100009DCC(&qword_1006F8400, &qword_1005A57D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100582500;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 16) = UISceneWillDeactivateNotification;
  swift_unknownObjectWeakAssign();
  *(v8 + 32) = 1;
  *(v8 + 48) = sub_10049DA38;
  *(v8 + 56) = v7;
  v9 = objc_opt_self();
  v10 = a1;

  swift_retain_n();
  v11 = UISceneWillDeactivateNotification;
  v12 = [v9 defaultCenter];
  *(v8 + 40) = v12;
  v13 = *(v8 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = v12;

  v16 = v13;
  [v15 addObserver:v8 selector:"handleNotification:" name:v16 object:Strong];

  swift_unknownObjectRelease();
  *(v27 + 32) = v8;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v10;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v19 + 16) = UISceneDidActivateNotification;
  swift_unknownObjectWeakAssign();
  *(v19 + 32) = 1;
  *(v19 + 48) = sub_10049DA68;
  *(v19 + 56) = v17;
  swift_retain_n();
  v20 = UISceneDidActivateNotification;
  v21 = [v9 defaultCenter];
  *(v19 + 40) = v21;
  v22 = *(v19 + 16);
  v23 = swift_unknownObjectWeakLoadStrong();
  v24 = v21;

  v25 = v22;
  [v24 addObserver:v19 selector:"handleNotification:" name:v25 object:v23];

  swift_unknownObjectRelease();
  *(v27 + 40) = v19;

  v1[7] = v27;

  return v1;
}

Swift::Void __swiftcall BrightnessManager.resetBrightnessToSystemDefault()()
{
  v1 = *(v0 + 16);
  isa = sub_100572688().super.isa;
  v3 = sub_100572898();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_100572688().super.isa;
  v5 = sub_100572898();
  [v1 setProperty:v4 forKey:v5];
}

double sub_10049D7EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

Swift::Void __swiftcall BrightnessManager.increaseBrightnessIfNeeded()()
{
  v1 = *(v0 + 16);
  isa = sub_100572688().super.isa;
  v3 = sub_100572898();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_100572688().super.isa;
  v5 = sub_100572898();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t BrightnessManager.deinit()
{

  return v0;
}

uint64_t BrightnessManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10049DA00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void Collection<>.compare<A>(with:comparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v159 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v126 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v148 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v166 = &v123 - v16;
  v136 = swift_getAssociatedTypeWitness();
  v125 = *(v136 - 8);
  __chkstk_darwin();
  v135 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v123 - v18;
  v19 = *(a7 + 8);
  v130 = sub_100574168();
  __chkstk_darwin();
  v129 = &v123 - v20;
  v131 = v19;
  v144 = sub_100574158();
  v127 = *(v144 - 1);
  __chkstk_darwin();
  v140 = &v123 - v21;
  v22 = *(a6 + 8);
  v23 = swift_getAssociatedTypeWitness();
  v134 = *(v23 - 8);
  __chkstk_darwin();
  v147 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = &v123 - v25;
  v153 = type metadata accessor for CollectionComparisonOperation(0, v23, a8, v26);
  __chkstk_darwin();
  v142 = (&v123 - v27);
  v163 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v160 = sub_100573C28();
  v138 = *(v160 - 1);
  __chkstk_darwin();
  v139 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v123 - v29;
  __chkstk_darwin();
  v31 = (&v123 - v30);
  v133 = sub_100574168();
  __chkstk_darwin();
  v132 = &v123 - v32;
  v143 = v22;
  v145 = sub_100574158();
  v128 = *(v145 - 1);
  __chkstk_darwin();
  v151 = &v123 - v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v34[6] = a8;
  if (a2)
  {
    v34[7] = a2;
    v34[8] = a3;
    v35 = sub_1004A06C8;
  }

  else
  {
    v35 = sub_10049EFD8;
  }

  v146 = v35;
  sub_1000E672C(a2, a3);
  v149 = v34;

  v155 = a4;
  v141 = a6;
  v36 = sub_1005731C8();
  v158 = a5;
  v37 = sub_1005731C8();
  v170 = sub_100572D88();
  v137 = v37;
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v40 = sub_100572E38();
  v41 = sub_1004A0568(&v170, v39, v40);

  v170 = v41;
  if (__OFADD__(v36, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v150 = v36;
  v156 = a7;
  v124 = a8;
  v165 = v40;
  v164 = sub_100572E38();
  v42 = sub_1004A0568(&v170, v36 + 1, v164);

  v172 = v42;
  v171 = sub_100572D88();
  sub_100572BC8();
  sub_100574138();
  v43 = v138 + 4;
  v44 = TupleTypeMetadata2;
  v143 = (v134 + 32);
  while (1)
  {
    v45 = v154;
    sub_100574148();
    v46 = *v43;
    (*v43)(v31, v45, v160);
    v47 = *(*(v44 - 8) + 48);
    if (v47(v31, 1, v44) == 1)
    {
      break;
    }

    v48 = *v31;
    v49 = *v143;
    v50 = v31 + *(v44 + 48);
    v51 = v162;
    v52 = v163;
    (*v143)(v162, v50, v163);
    v53 = v142;
    *v142 = 0;
    *(v53 + 8) = 1;
    v53[2] = v48;
    (v49)(v53 + *(v153 + 40), v51, v52);
    sub_100572DE8();
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v55 = v171;
    v56 = v164;
    sub_100572E38();

    sub_100572D78();
    v57 = v172;
    sub_1004A0514(v54, v172, v56);
    v58 = v57 + 8 * v54;
    sub_100572D78();
    v59 = *(v58 + 32);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v61 = v59 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v61 = v59;
    }

    if (!*(v61 + 16))
    {
      goto LABEL_51;
    }

    *(*(v58 + 32) + 32) = v55;

    v44 = TupleTypeMetadata2;
  }

  (*(v128 + 8))(v151, v145);

  v171 = sub_100572D88();
  sub_100572BC8();
  sub_100574138();
  v62 = v154;
  v63 = TupleTypeMetadata2;
  sub_100574148();
  v64 = v139;
  v46(v139, v62, v160);
  if (v47(v64, 1, v63) != 1)
  {
    v151 = *v143;
    v138 = v43;
    do
    {
      v65 = *v64;
      v66 = v64 + *(v63 + 48);
      v67 = v162;
      v68 = v163;
      v69 = v151;
      (v151)(v162, v66, v163);
      v70 = v142;
      *v142 = 1;
      *(v70 + 8) = 1;
      v70[2] = v65;
      (v69)(v70 + *(v153 + 40), v67, v68);
      sub_100572DE8();
      v71 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_52;
      }

      v72 = v171;
      sub_100572E38();

      sub_100572D78();
      v73 = v172;
      v74 = _swift_isClassOrObjCExistentialType();
      v75 = v73 & 0xFFFFFFFFFFFFFF8;
      if ((v74 & 1) == 0)
      {
        v75 = v73;
      }

      if (!*(v75 + 16))
      {
        goto LABEL_53;
      }

      sub_100572D78();
      sub_1004A0514(v71, *(v73 + 32), v165);
      *(*(v73 + 32) + 8 * v71 + 32) = v72;

      v76 = v154;
      sub_100574148();
      v64 = v139;
      v46(v139, v76, v160);
      v63 = TupleTypeMetadata2;
    }

    while (v47(v64, 1, TupleTypeMetadata2) != 1);
  }

  (*(v127 + 8))(v140, v144);

  v77 = v150;
  if (!v150 || !v137)
  {
LABEL_48:

    sub_100572E48();
    sub_100572E48();

    return;
  }

  sub_1005731B8();
  if (v77 >= 1 && v137 >= 1)
  {
    v160 = (v134 + 16);
    v145 = (v134 + 8);
    v151 = (v126 + 8);
    v144 = (v126 + 32);
    v140 = (v125 + 8);
    v139 = (v125 + 32);
    v78 = 1;
    while (1)
    {
      sub_1005731B8();
      v154 = (v78 - 1);
      v79 = 1;
      TupleTypeMetadata2 = v78;
      while (1)
      {
        v80 = sub_1005732E8();
        v81 = *v160;
        v82 = v162;
        v83 = v163;
        (*v160)(v162);
        v80(&v170, 0);
        v84 = sub_1005732E8();
        v85 = v147;
        v81(v147);
        v84(&v170, 0);
        v146(&v170, v82, v85);
        v86 = *v145;
        (*v145)(v85, v83);
        v86(v82, v83);
        if (v170 == 1)
        {
          v87 = v164;
          sub_100572E48();
          v88 = v165;
          sub_100572E48();

          v89 = v169;
          sub_100572E38();
          sub_100572D78();
          v90 = v172;
          sub_1004A0514(v79, v172, v87);
          v91 = v90 + 8 * v79;
          sub_100572D78();
          v92 = TupleTypeMetadata2;
          sub_1004A0514(TupleTypeMetadata2, *(v91 + 32), v88);
          *(*(v91 + 32) + 8 * v92 + 32) = v89;
        }

        else
        {
          v93 = (v79 - 1);
          sub_100572E48();
          sub_100572E48();

          sub_100572E48();
          sub_100572E48();

          sub_100572E48();
          sub_100572E48();

          v94 = sub_100572DC8();
          v95 = sub_100572DC8();
          v96 = sub_100572DC8();
          v97 = v95 >= v94 ? v94 : v95;
          v98 = v96 >= v97 ? v97 : v96;
          if (v94 == v98)
          {

            v99 = sub_1005732E8();
            v100 = v162;
            v101 = v163;
            v81(v162);
            v99(&v170, 0);
            v102 = v142;
            *v142 = 0;
            v103 = &v169;
          }

          else
          {

            if (sub_100572DC8() == v98)
            {

              v104 = sub_1005732E8();
              v100 = v162;
              v101 = v163;
              v81(v162);
              v104(&v170, 0);
              v102 = v142;
              *v142 = 1;
              v103 = &v168;
              v93 = v154;
            }

            else
            {

              v105 = sub_1005732E8();
              v100 = v162;
              v101 = v163;
              v81(v162);
              v105(&v170, 0);
              v102 = v142;
              *v142 = 2;
              v103 = &v167;
            }
          }

          v92 = TupleTypeMetadata2;
          *(v102 + 8) = 1;
          v102[2] = v93;
          (*v143)(v102 + *(v153 + 40), v100, v101);
          v106 = v165;
          sub_100572DE8();
          v107 = *v103;
          v108 = v164;
          sub_100572E38();
          sub_100572D78();
          v109 = v172;
          sub_1004A0514(v79, v172, v108);
          v110 = v109 + 8 * v79;
          sub_100572D78();
          sub_1004A0514(v92, *(v110 + 32), v106);
          *(*(v110 + 32) + 8 * v92 + 32) = v107;
        }

        v111 = v148;
        v112 = v166;
        v113 = v155;
        sub_1005731E8();
        v114 = *v151;
        v115 = AssociatedTypeWitness;
        (*v151)(v112, AssociatedTypeWitness);
        (*v144)(v112, v111, v115);
        if (v79 == v150)
        {
          break;
        }

        v38 = __OFADD__(v79++, 1);
        if (v38)
        {
          __break(1u);
          goto LABEL_50;
        }
      }

      v116 = v135;
      v117 = v157;
      sub_1005731E8();
      v114(v166, AssociatedTypeWitness);
      v118 = *v140;
      v119 = v136;
      (*v140)(v117, v136);
      (*v139)(v117, v116, v119);
      if (v92 == v137)
      {
        break;
      }

      v38 = __OFADD__(v92, 1);
      v78 = v92 + 1;
      if (v38)
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    sub_100572E48();
    sub_100572E48();

    v168 = sub_100572658();
    __chkstk_darwin();
    v120 = v158;
    *(&v123 - 6) = v113;
    *(&v123 - 5) = v120;
    v121 = v156;
    *(&v123 - 4) = v122;
    *(&v123 - 3) = v121;
    *(&v123 - 2) = v124;
    swift_getWitnessTable();
    sub_100572C28();

    v118(v157, v136);

    return;
  }

LABEL_56:
  __break(1u);
}

uint64_t sub_10049EFD8@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1005727E8();
  *a3 = result & 1;
  return result;
}

uint64_t sub_10049F058@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  v10 = type metadata accessor for CollectionComparisonOperation(0, a5, a6, a4);
  v11 = *(*(a5 - 8) + 32);
  v12 = a7 + *(v10 + 40);

  return v11(v12, a4, a5);
}

uint64_t sub_10049F0EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v42 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v40 = &v35 - v13;
  v15 = type metadata accessor for CollectionComparisonOperation(0, AssociatedTypeWitness, a7, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v19 = __chkstk_darwin();
  v20 = &v35 - v17;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_5;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v35 = 1;
      v36 = v18;
      goto LABEL_8;
    }

LABEL_5:
    (*(v16 + 16))(&v35 - v17, a2, v15, v19);
    sub_100572E38();
    return sub_100572DE8();
  }

  v35 = 0;
  v36 = v18;
LABEL_8:
  v38 = &v35;
  v39 = a1;
  v47 = *a1;
  __chkstk_darwin();
  v37 = &v35 - 10;
  v23 = v42;
  v22 = v43;
  *(&v35 - 8) = a3;
  *(&v35 - 7) = v23;
  *(&v35 - 6) = a5;
  *(&v35 - 5) = v22;
  *(&v35 - 4) = a7;
  *(&v35 - 3) = v24;
  *(&v35 - 16) = v25;
  *(&v35 - 1) = a2;
  v26 = sub_100572E38();

  swift_getWitnessTable();
  v27 = v44;
  sub_100573228();

  if (v46 == 1)
  {
    (*(v16 + 16))(v20, a2, v15);
    return sub_100572DE8();
  }

  else
  {
    v43 = v45;
    sub_100572E48();
    v37 = *(v20 + 2);
    v38 = v26;
    v42 = *(v16 + 8);
    v42(v20, v15);
    v44 = v27;
    v28 = *(a2 + 16);
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, a2 + *(v15 + 40), AssociatedTypeWitness);
    v31 = v36;
    v32 = v37;
    if (v35)
    {
      v33 = v37;
    }

    else
    {
      v33 = v28;
    }

    if (v35)
    {
      v32 = v28;
    }

    *v36 = v33;
    *(v31 + 8) = 0;
    v31[2] = v32;
    (*(v30 + 32))(v31 + *(v15 + 40), v29, AssociatedTypeWitness);
    sub_100572E08();
    v34 = v42;
    v42(v20, v15);
    (*(v16 + 16))(v20, v31, v15);
    sub_100572DE8();
    return v34(v31, v15);
  }
}

BOOL static CollectionComparisonOperationType.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

uint64_t sub_10049F570(uint64_t *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  if (*(a1 + 8) != 1)
  {
    if ((a3 & 1) != 0 || v9 != a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    if ((a3 & 1) == 0 || a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v9 != 1)
  {
    if ((a3 & 1) == 0 || a2 < 2)
    {
      return 0;
    }

LABEL_15:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for CollectionComparisonOperation(0, AssociatedTypeWitness, a9, v11);
    return sub_1005727E8() & 1;
  }

  if ((a3 & 1) != 0 && a2 == 1)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_10049F6FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CollectionComparisonOperationType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x747265736E69;
    if (a1 != 1)
    {
      v2 = 0x7574697473627573;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 0x6574656C6564;
    }
  }

  else
  {
    v4._countAndFlagsBits = sub_100574408();
    sub_100572A98(v4);

    return 0x6F72662065766F6DLL;
  }
}

void UICollectionView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004A06FC;
  *(v17 + 24) = v16;
  v26 = sub_1000E23F0;
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1001D41F8;
  v25 = &unk_1006AD8A8;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v26 = a5;
    v27 = a6;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10044E8C8;
    v25 = &unk_1006AD8D0;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10049FA54(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v46 = *(sub_10056CE18() - 8);
  __chkstk_darwin();
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v39 - v13;
  v15 = a6;
  v17 = v16;
  v19 = type metadata accessor for CollectionComparisonOperation(0, v15, a7, v18);
  v51 = *(v19 - 8);
  v40 = *(v51 + 64);
  v20 = __chkstk_darwin();
  v22 = &v39 - v21;
  a1(v20);
  v52 = a3;
  result = sub_100572E18();
  if (result)
  {
    v24 = 0;
    v49 = (v51 + 16);
    v47 = (v51 + 8);
    v42 = v46 + 16;
    v41 = xmmword_10057B510;
    v43 = v14;
    v44 = a4;
    v48 = (v46 + 8);
    do
    {
      v31 = sub_100572DA8();
      sub_100572D58();
      if (v31)
      {
        result = (*(v51 + 16))(v22, v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v24, v19);
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_100573F48();
        if (v40 != 8)
        {
          __break(1u);
          return result;
        }

        v53 = result;
        (*v49)(v22, &v53, v19);
        result = swift_unknownObjectRelease();
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v33 = v17;
      sub_10056CDC8();
      v34 = *v22;
      v35 = v22[8];
      (*v47)(v22, v19);
      if (v35 == 1)
      {
        sub_100009DCC(&qword_1006F8550, &qword_1005A5908);
        v36 = v46;
        v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        (*(v36 + 16))(v38 + v37, v14, v33);
        v30.super.isa = sub_100572D08().super.isa;

        if (v34)
        {
          if (v34 == 1)
          {
            [v50 insertItemsAtIndexPaths:v30.super.isa];
          }

          else
          {
            [v50 reloadItemsAtIndexPaths:v30.super.isa];
          }
        }

        else
        {
          [v50 deleteItemsAtIndexPaths:v30.super.isa];
        }

        v14 = v43;
        a4 = v44;
        v17 = v33;
        v29 = v48;
      }

      else
      {
        v25 = v45;
        sub_10056CDC8();
        v26 = v19;
        v27 = a4;
        isa = sub_10056CDA8().super.isa;
        v17 = v33;
        v29 = v48;
        (*v48)(v25, v17);
        v30.super.isa = sub_10056CDA8().super.isa;
        [v50 moveItemAtIndexPath:isa toIndexPath:v30.super.isa];

        a4 = v27;
        v19 = v26;
      }

      (*v29)(v14, v17);
      result = sub_100572E18();
      ++v24;
    }

    while (v32 != result);
  }

  return result;
}

void UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004A0778;
  *(v17 + 24) = v16;
  v26 = sub_1000E6D8C;
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1001D41F8;
  v25 = &unk_1006AD948;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v26 = a5;
    v27 = a6;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10044E8C8;
    v25 = &unk_1006AD970;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1004A00BC(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v46 = *(sub_10056CE18() - 8);
  __chkstk_darwin();
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v39 - v13;
  v15 = a6;
  v17 = v16;
  v19 = type metadata accessor for CollectionComparisonOperation(0, v15, a7, v18);
  v51 = *(v19 - 8);
  v40 = *(v51 + 64);
  v20 = __chkstk_darwin();
  v22 = &v39 - v21;
  a1(v20);
  v52 = a3;
  result = sub_100572E18();
  if (result)
  {
    v24 = 0;
    v49 = (v51 + 16);
    v47 = (v51 + 8);
    v42 = v46 + 16;
    v41 = xmmword_10057B510;
    v43 = v14;
    v44 = a4;
    v48 = (v46 + 8);
    do
    {
      v31 = sub_100572DA8();
      sub_100572D58();
      if (v31)
      {
        result = (*(v51 + 16))(v22, v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v24, v19);
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_100573F48();
        if (v40 != 8)
        {
          __break(1u);
          return result;
        }

        v53 = result;
        (*v49)(v22, &v53, v19);
        result = swift_unknownObjectRelease();
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v33 = v17;
      sub_10056CDC8();
      v34 = *v22;
      v35 = v22[8];
      (*v47)(v22, v19);
      if (v35 == 1)
      {
        sub_100009DCC(&qword_1006F8550, &qword_1005A5908);
        v36 = v46;
        v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        (*(v36 + 16))(v38 + v37, v14, v33);
        v30.super.isa = sub_100572D08().super.isa;

        if (v34)
        {
          if (v34 == 1)
          {
            [v50 insertRowsAtIndexPaths:v30.super.isa withRowAnimation:100];
          }

          else
          {
            [v50 reloadRowsAtIndexPaths:v30.super.isa withRowAnimation:100];
          }
        }

        else
        {
          [v50 deleteRowsAtIndexPaths:v30.super.isa withRowAnimation:100];
        }

        v14 = v43;
        a4 = v44;
        v17 = v33;
        v29 = v48;
      }

      else
      {
        v25 = v45;
        sub_10056CDC8();
        v26 = v19;
        v27 = a4;
        isa = sub_10056CDA8().super.isa;
        v17 = v33;
        v29 = v48;
        (*v48)(v25, v17);
        v30.super.isa = sub_10056CDA8().super.isa;
        [v50 moveRowAtIndexPath:isa toIndexPath:v30.super.isa];

        a4 = v27;
        v19 = v26;
      }

      (*v29)(v14, v17);
      result = sub_100572E18();
      ++v24;
    }

    while (v32 != result);
  }

  return result;
}

uint64_t sub_1004A0514(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1004A0568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100572D88();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_100572E38();
    return v8;
  }

  return result;
}

uint64_t sub_1004A0690()
{

  return swift_deallocObject();
}

uint64_t sub_1004A06C8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1004A0714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A0730()
{

  return swift_deallocObject();
}

uint64_t sub_1004A07BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004A0844(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1004A09A8(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8;

  v18(v19);
}
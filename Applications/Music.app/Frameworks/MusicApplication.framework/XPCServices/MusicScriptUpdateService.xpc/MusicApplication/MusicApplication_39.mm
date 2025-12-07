uint64_t sub_1003D6A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = sub_1004BA8F4();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_1004BA924();
  v11 = *(v34 - 8);
  __chkstk_darwin();
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v33 = v11;
    swift_errorRetain();
    v14 = sub_1004BC984();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v15 = sub_1004BD144();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v31 = v16;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v16 = 136315138;
      swift_getErrorValue();
      v30 = v15;
      v17 = sub_1004BDB04();
      v19 = sub_1003DAAC4(v17, v18, aBlock);
      v29 = v14;
      v20 = v8;
      v21 = v19;

      v23 = v30;
      v22 = v31;
      *(v31 + 1) = v21;
      v8 = v20;
      _os_log_impl(&_mh_execute_header, v23, v29, "Error loading texture: %s", v22, 0xCu);
      sub_100004C6C(v32);
    }

    else
    {
    }

    v11 = v33;
  }

  sub_100009130(0, &qword_1006126F0, OS_dispatch_queue_ptr);
  v24 = sub_1004BCB44();
  v25 = swift_allocObject();
  v25[2] = v35;
  v25[3] = a4;
  v25[4] = a1;
  aBlock[4] = sub_1003BE258;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005CCEC0;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003DB960(&qword_1006126F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_100612700, &qword_1004E71F0);
  sub_1003DB8FC();
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v26);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v34);
}

uint64_t sub_1003D6EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1003D6F20(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  result = [*(v5 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context) newTextureWithDescriptor:v9];
  v11 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  v12 = a3 * 255.0;
  if (COERCE__INT64(fabs(a3 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 >= 256.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[0] = v12;
  v13 = a2 * 255.0;
  if (COERCE__INT64(fabs(a2 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 >= 256.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18[1] = v13;
  v14 = a1 * 255.0;
  if (COERCE__INT64(fabs(a1 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < 256.0)
  {
    v18[2] = v14;
    v18[3] = -1;
    memset(v15, 0, sizeof(v15));
    v16 = vdupq_n_s64(1uLL);
    v17 = 1;
    [result replaceRegion:v15 mipmapLevel:0 withBytes:v18 bytesPerRow:4];
LABEL_12:

    return v11;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_1003D7128(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Backdrop.CompositeRenderer(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

int8x8_t sub_1003D724C(double a1, double a2, double a3)
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
  v21 = LODWORD(v9);
  LODWORD(v11) = 0;
  *(&v11 + 1) = v8;
  v20 = v11;
  v12 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms);
  v13 = swift_beginAccess();
  v12[1] = v21;
  v12[2] = v20;
  v12[3] = xmmword_1004E6830;
  v12[4] = xmmword_1004E6840;
  v14 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
  v15 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v15[6] = a3;
  sub_1003D90BC(a1, a2, v13, v16);
  v17 = v15[5] < v15[4];
  v18 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment;
  *v18 = v17;
  result = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v17), 0x1FuLL)), 0x42F000004019999ALL, 0x42AA000040000000);
  *(v18 + 4) = result;
  *(*(v14 + 16) + 104) = v17;
  return result;
}

void sub_1003D73E4(void *a1)
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
      sub_1003DB574(0.016667);
      v6 = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 8) commandBuffer];
      if (v6)
      {
        v7 = v6;
        v8 = v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
        v9 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
        v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
        swift_beginAccess();
        sub_1003D89E0(v7, v2 + v10);
        swift_endAccess();
        v11 = *(v8 + 8);
        *(v11 + 152) = *(v9 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        swift_beginAccess();
        sub_1003D914C(v7, v2 + v10);
        swift_endAccess();
        *(*(v8 + 16) + 32) = *(v11 + 168);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v12 = [a1 currentRenderPassDescriptor];
        swift_beginAccess();
        sub_1003D7AE4(v7, v2 + v10, v12);
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

void sub_1003D7694(uint64_t a1, char a2)
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
  sub_1003DD95C(1, &v46);
  v7 = v48;
  v8 = v49;
  v9 = kCADepthNormalizationNone;
  v10 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:kCADepthNormalizationNone];
  v11 = [v10 subdividedMesh:2];

  v12 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v7 + 16) vertices:v7 + 32 faceCount:*(v8 + 16) faces:v8 + 32 depthNormalization:v9];

  v13 = [v12 subdividedMesh:2];

  sub_1003D5518(v13);
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
  sub_1003DD95C(0, &v46);
  v25 = v48;
  v26 = v49;
  v27 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:v9];
  v28 = [v27 subdividedMesh:2];

  v29 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v25 + 16) vertices:v25 + 32 faceCount:*(v26 + 16) faces:v26 + 32 depthNormalization:v9];

  v30 = [v29 subdividedMesh:2];

  sub_1003D5518(v30);
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
    v42 = sub_1003D7E60();

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

void sub_1003D7AE4(void *a1, uint64_t a2, void *a3)
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
    v13 = sub_1004BBE24();
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

id sub_1003D7D7C()
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
      v4 = 0x800000010050BE20;
    }

    else
    {
      v4 = 0xEE00746E656D6761;
    }

    v5 = sub_1003DC370(0x65765F68636E6970, 0xEC00000078657472, v3, v4, 0xD000000000000022, 0x800000010050BDF0, *(v0 + 128));

    v6 = *(v0 + 168);
    *(v0 + 168) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_1003D7E60()
{
  v1 = sub_1003D7D7C();
  if (qword_100611848 != -1)
  {
    swift_once();
  }

  [v1 setVertexDescriptor:qword_1006195F0];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3)
  {
    v7 = sub_1004BC984();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v8 = sub_1004BD144();
    sub_1004B7F84(v7, &_mh_execute_header, v8, "Backdrop: could not create pipeline for pinch. Missing color attachments", 72, 2, _swiftEmptyArrayStorage);

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
    v10 = sub_1004B69B4();

    swift_willThrow();
    v23 = v10;
    sub_100003ABC(&qword_1006126C0, &qword_1004E71D0);
    sub_100009130(0, &qword_1006126C8, NSError_ptr);
    swift_dynamicCast();
    v11 = v22;
    sub_100003ABC(&qword_1006126D0, &qword_1004E71D8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1004C50A0;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1004BD404(33);

    v20 = 0xD00000000000001FLL;
    v21 = 0x800000010050BBD0;
    v13 = [v11 description];
    v14 = sub_1004BBE64();
    v16 = v15;

    v24._countAndFlagsBits = v14;
    v24._object = v16;
    sub_1004BC024(v24);

    v17 = v20;
    v18 = v21;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    sub_1004BDB74();

    return 0;
  }

  return v5;
}

uint64_t sub_1003D816C()
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

id sub_1003D8254()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = sub_1003D82AC();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1003D82AC()
{
  v1 = sub_1003DC370(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x800000010050BD80, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 64));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_100611848 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006195F0];

    return v1;
  }

  else
  {
    sub_1004BD404(56);
    v9._countAndFlagsBits = 0xD000000000000036;
    v9._object = 0x800000010050BBF0;
    sub_1004BC024(v9);
    v5 = [v1 description];
    v6 = sub_1004BBE64();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_1004BC024(v10);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

id sub_1003D84A0()
{
  v1 = *(v0 + 48);
  v2 = sub_1003D8254();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004B69B4();

    swift_willThrow();
    v19 = v6;
    sub_100003ABC(&qword_1006126C0, &qword_1004E71D0);
    sub_100009130(0, &qword_1006126C8, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100003ABC(&qword_1006126D0, &qword_1004E71D8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004C50A0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004BD404(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x800000010050BBD0;
    v9 = [v7 description];
    v10 = sub_1004BBE64();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004BC024(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004BDB74();

    return 0;
  }

  return v3;
}

id sub_1003D8698()
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
    sub_1004BD404(52);
    v11._object = 0x800000010050BB90;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004BC024(v11);
    v7 = [v1 description];
    v8 = sub_1004BBE64();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004BC024(v12);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1003D8848(void *a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 <= 0.0)
  {
    return;
  }

  v4 = *(v2 + 32);
  if (v4 <= 0.0)
  {
    return;
  }

  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v3 >> 52 > 0x7FEuLL || *&v4 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v6 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v2 + 16) width:v3 height:v4 mipmapped:0];
  [v6 setStorageMode:0];
  [v6 setUsage:7];
  *(v2 + 40) = [a1 newTextureWithDescriptor:v6];
  swift_unknownObjectRelease();
  *(v2 + 112) = [a1 newTextureWithDescriptor:v6];
  swift_unknownObjectRelease();
  v7 = sub_1003D8698();

  v8 = *(v2 + 168);
  *(v2 + 168) = v7;
}

void sub_1003D89E0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (!v3 || (v4 = *(v2 + 136)) == 0 || (v5 = *(v2 + 144)) == 0 || (v6 = *(v2 + 96)) == 0)
  {
    v13 = sub_1004BC964();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v18 = sub_1004BD144();
    sub_1004B7F84(v13, &_mh_execute_header, v18, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
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
    v17 = sub_1004BC984();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v18 = sub_1004BD144();
    sub_1004B7F84(v17, &_mh_execute_header, v18, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
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
  v16 = sub_1004BBE24();
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

id *sub_1003D8DAC()
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

uint64_t sub_1003D8E48()
{
  sub_1003D8DAC();

  return swift_deallocClassInstance();
}

uint64_t sub_1003D8EA0(uint64_t *a1)
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
  v6 = qword_100611870;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  result = qword_100619700;
  *(v2 + 104) = qword_100619700;
  *(v2 + 112) = &off_1005C7A30;
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
      v12 = swift_unknownObjectRelease();
      type metadata accessor for Backdrop.TexturePan(v12, v13);
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = v7;
      v15 = sub_1003DB374(a1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 176) = v15;
      v16 = sub_1003D96B0();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 136) = v16;
      swift_unknownObjectRelease();
      return v2;
    }
  }

  __break(1u);
  return result;
}

double sub_1003D90BC(double result, double a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *(v4 + 32) = result;
  *(v4 + 40) = a2;
  if (v5 != result || v6 != a2)
  {
    sub_1003D9A44(*(v4 + 56), a4);
    sub_1003D9C20();
    v8 = *(v4 + 176);
    result = *(v4 + 32);
    v9 = *(v4 + 40);
    v10 = *(v8 + 24);
    v11 = *(v8 + 32);
    *(v8 + 24) = result;
    *(v8 + 32) = v9;
    if (result != v10 || v9 != v11)
    {
      v13 = *(v8 + 56);

      sub_1003D9DC0(v13, v14);
    }
  }

  return result;
}

void sub_1003D914C(void *a1, uint64_t a2)
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
        v14 = sub_1004BBE24();
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
        sub_1003DA55C(v11, a2);

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

    v20 = sub_1004BC984();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v21 = sub_1004BD144();
    sub_1004B7F84(v20, &_mh_execute_header, v21, "Backdrop: Could not create command Encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_1004BC964();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v21 = sub_1004BD144();
    sub_1004B7F84(v19, &_mh_execute_header, v21, "Backdrop: could not encode rotating artwork, missing required value", 67, 2, _swiftEmptyArrayStorage);
  }
}

id sub_1003D9520()
{
  v1 = sub_1003DC370(0x6E6F697461746F72, 0xEF7865747265765FLL, 0xD000000000000011, 0x800000010050BC30, 0xD000000000000024, 0x800000010050BC50, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    [v3 setBlendingEnabled:0];
    if (qword_100611848 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006195F0];

    return v1;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

id sub_1003D96B0()
{
  v1 = *(v0 + 56);
  v2 = sub_1003D9520();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004B69B4();

    swift_willThrow();
    v19 = v6;
    sub_100003ABC(&qword_1006126C0, &qword_1004E71D0);
    sub_100009130(0, &qword_1006126C8, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100003ABC(&qword_1006126D0, &qword_1004E71D8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004C50A0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004BD404(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x800000010050BBD0;
    v9 = [v7 description];
    v10 = sub_1004BBE64();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004BC024(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004BDB74();

    return 0;
  }

  return v3;
}

id sub_1003D98A8()
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
    sub_1004BD404(52);
    v11._object = 0x800000010050BB90;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004BC024(v11);
    v7 = [v1 description];
    v8 = sub_1004BBE64();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004BC024(v12);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1003D9A44(void *a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (v3 > 0.0)
  {
    v4 = *(v2 + 40);
    if (v4 > 0.0)
    {
      if (v3 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v3 < 9.22337204e18)
      {
        if (*&v3 >> 52 <= 0x7FEuLL && *&v4 >> 52 <= 0x7FEuLL)
        {
          if (v4 > -9.22337204e18)
          {
            if (v4 < 9.22337204e18)
            {
              v6 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v2 + 16) width:v3 / 4 height:v4 / 4 mipmapped:0];
              [v6 setStorageMode:0];
              [v6 setUsage:7];
              *(v2 + 160) = [a1 newTextureWithDescriptor:v6];
              swift_unknownObjectRelease();
              *(v2 + 168) = [a1 newTextureWithDescriptor:v6];
              swift_unknownObjectRelease();
              v7 = sub_1003D98A8();

              v8 = *(v2 + 144);
              *(v2 + 144) = v7;

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

  *(v2 + 160) = 0;
  swift_unknownObjectRelease();
  *(v2 + 168) = 0;

  swift_unknownObjectRelease();
}

void sub_1003D9C20()
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

id *sub_1003D9CC4()
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

uint64_t sub_1003D9D68()
{
  sub_1003D9CC4();

  return swift_deallocClassInstance();
}

void sub_1003D9DC0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 > 0.0)
  {
    v4 = *(v2 + 32);
    if (v4 > 0.0)
    {
      if (v3 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v3 < 9.22337204e18)
      {
        if (*&v3 >> 52 <= 0x7FEuLL && *&v4 >> 52 <= 0x7FEuLL)
        {
          if (v4 > -9.22337204e18)
          {
            if (v4 < 9.22337204e18)
            {
              v6 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v2 + 16) width:v3 / 4 height:v4 / 4 mipmapped:0];
              [v6 setStorageMode:0];
              [v6 setUsage:7];
              *(v2 + 48) = [a1 newTextureWithDescriptor:v6];
              swift_unknownObjectRelease();
              v7 = sub_1003DA3AC();

              v8 = *(v2 + 152);
              *(v2 + 152) = v7;

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

  *(v2 + 48) = 0;

  swift_unknownObjectRelease();
}

id sub_1003D9F70()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = sub_1003D9FC8();
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1003D9FC8()
{
  v1 = sub_1003DC370(0x797469746E656469, 0xEF7865747265765FLL, 0x676172665F6E6170, 0xEC000000746E656DLL, 0x2065727574786554, 0xEE0072656E6E6150, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_100611848 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006195F0];

    return v1;
  }

  else
  {
    sub_1004BD404(56);
    v9._object = 0x800000010050BBF0;
    v9._countAndFlagsBits = 0xD000000000000036;
    sub_1004BC024(v9);
    v5 = [v1 description];
    v6 = sub_1004BBE64();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_1004BC024(v10);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

id sub_1003DA1B4()
{
  v1 = *(v0 + 56);
  v2 = sub_1003D9F70();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004B69B4();

    swift_willThrow();
    v19 = v6;
    sub_100003ABC(&qword_1006126C0, &qword_1004E71D0);
    sub_100009130(0, &qword_1006126C8, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100003ABC(&qword_1006126D0, &qword_1004E71D8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004C50A0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004BD404(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x800000010050BBD0;
    v9 = [v7 description];
    v10 = sub_1004BBE64();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004BC024(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004BDB74();

    return 0;
  }

  return v3;
}

id sub_1003DA3AC()
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
    sub_1004BD404(52);
    v11._object = 0x800000010050BB90;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004BC024(v11);
    v7 = [v1 description];
    v8 = sub_1004BBE64();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004BC024(v12);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1003DA55C(void *a1, uint64_t a2)
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
        v12 = sub_1004BBE24();
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

    v14 = sub_1004BC984();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v15 = sub_1004BD144();
    sub_1004B7F84(v14, &_mh_execute_header, v15, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_1004BC964();
    sub_100009130(0, &qword_1006126B8, OS_os_log_ptr);
    v15 = sub_1004BD144();
    sub_1004B7F84(v13, &_mh_execute_header, v15, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
  }
}

id *sub_1003DA85C()
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

uint64_t sub_1003DA8F0()
{
  sub_1003DA85C();

  return swift_deallocClassInstance();
}

__n128 sub_1003DA948(_OWORD *a1, uint64_t a2)
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

unint64_t sub_1003DAA70()
{
  result = qword_1006126B0;
  if (!qword_1006126B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006126B0);
  }

  return result;
}

unint64_t sub_1003DAAC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1003DAB90(v11, 0, 0, 1, a1, a2);
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
    sub_100004DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C6C(v11);
  return v7;
}

unint64_t sub_1003DAB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1003DAC9C(a5, a6);
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
    result = sub_1004BD4C4();
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

void *sub_1003DAC9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1003DACE8(a1, a2);
  sub_1003DAE18(&off_1005C79D8);
  return v3;
}

void *sub_1003DACE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1003DAF04(v5, 0);
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

  result = sub_1004BD4C4();
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
        v10 = sub_1004BC044();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1003DAF04(v10, 0);
        result = sub_1004BD3F4();
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

void sub_1003DAE18(uint64_t a1)
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

  v3 = sub_1003DAF78(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

void *sub_1003DAF04(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_100612710, &qword_1004E71F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1003DAF78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100612710, &qword_1004E71F8);
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

unint64_t sub_1003DB06C(uint64_t a1)
{
  sub_1004BBE64();
  sub_1004BDBA4();
  sub_1004BBF84();
  v2 = sub_1004BDBF4();

  return sub_100035374(a1, v2);
}

unint64_t sub_1003DB100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100612720, &qword_1004E7208);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1003DB06C(v6);
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

char *sub_1003DB1F0(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  if (qword_100611870 != -1)
  {
    v13 = result;
    swift_once();
    result = v13;
  }

  v2 = qword_100619700;
  *(v1 + 120) = qword_100619700;
  *(v1 + 128) = &off_1005C7A30;
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
      *(v1 + 160) = sub_1003D84A0();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1003D8848(v11, v12);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

char *sub_1003DB374(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  if (qword_100611870 != -1)
  {
    v13 = result;
    swift_once();
    result = v13;
  }

  v2 = qword_100619700;
  *(v1 + 104) = qword_100619700;
  *(v1 + 112) = &off_1005C7A30;
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
      *(v1 + 144) = sub_1003DA1B4();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1003D9DC0(v11, v12);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

double sub_1003DB4EC()
{
  sub_100003ABC(&unk_100612730, qword_1004E7210);
  v0 = swift_allocObject();
  v0[1] = xmmword_1004C5070;
  v0[2] = xmmword_1004E6870;
  v0[3] = xmmword_1004E6880;
  v0[4] = xmmword_1004E6830;
  result = 0.0;
  v0[5] = xmmword_1004E6840;
  v0[6] = xmmword_1004E6890;
  v0[7] = xmmword_1004E68A0;
  v0[8] = xmmword_1004E6830;
  v0[9] = xmmword_1004E6840;
  v0[10] = xmmword_1004E6890;
  v0[11] = xmmword_1004E68A0;
  v0[12] = xmmword_1004E6830;
  v0[13] = xmmword_1004E6840;
  return result;
}

id sub_1003DB574(float a1)
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
    sub_1003D9C20();
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

uint64_t sub_1003DB784()
{
  sub_1003DB7CC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_1003DB7CC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

id sub_1003DB7F0(id result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1003DB7FC(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_1006126E0, &qword_1004E71E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003DB864()
{

  return swift_deallocObject();
}

uint64_t sub_1003DB8A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003DB8BC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1003DB8FC()
{
  result = qword_100612708;
  if (!qword_100612708)
  {
    sub_100003B68(&qword_100612700, &qword_1004E71F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100612708);
  }

  return result;
}

uint64_t sub_1003DB960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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
  if (qword_100611878 != -1)
  {
    swift_once();
  }

  return &static Uniforms.standard;
}

double sub_1003DBA20()
{
  v0 = MTLCreateSystemDefaultDevice();
  sub_1003DC484(v0, &v2);
  xmmword_1006195C0 = v2;
  unk_1006195D0 = v3[0];
  result = *(v3 + 9);
  *(&qword_1006195D8 + 1) = *(v3 + 9);
  return result;
}

void sub_1003DBA80()
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

double sub_1003DBFB8()
{
  result = -0.00781250557;
  xmmword_100619600 = xmmword_1004E68B0;
  qword_100619610 = 0x3F80000000000000;
  xmmword_100619620 = xmmword_1004E68B0;
  unk_100619630 = xmmword_1004E68B0;
  return result;
}

double sub_1003DBFE0()
{
  result = 0.00781250557;
  xmmword_100619640 = xmmword_1004E68C0;
  qword_100619650 = 0;
  xmmword_100619660 = xmmword_1004E68C0;
  unk_100619670 = xmmword_1004E68C0;
  return result;
}

double sub_1003DC000()
{
  result = 0.00781250185;
  xmmword_100619680 = xmmword_1004E68D0;
  qword_100619690 = 1065353216;
  xmmword_1006196A0 = xmmword_1004E68D0;
  unk_1006196B0 = xmmword_1004E68D0;
  return result;
}

double sub_1003DC028()
{
  result = -0.00781250185;
  xmmword_1006196C0 = xmmword_1004E68E0;
  __asm { FMOV            V1.2S, #1.0 }

  qword_1006196D0 = _D1;
  xmmword_1006196E0 = xmmword_1004E68E0;
  unk_1006196F0 = xmmword_1004E68E0;
  return result;
}

double sub_1003DC04C()
{
  sub_100003ABC(&qword_100612740, &unk_1004E72D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50B0;
  if (qword_100611850 != -1)
  {
    v14 = v0;
    swift_once();
    v0 = v14;
  }

  v1 = qword_100619610;
  v2 = xmmword_100619620;
  v3 = unk_100619630;
  *(v0 + 32) = xmmword_100619600;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  if (qword_100611858 != -1)
  {
    v15 = v0;
    swift_once();
    v0 = v15;
  }

  v4 = qword_100619650;
  v5 = xmmword_100619660;
  v6 = unk_100619670;
  *(v0 + 96) = xmmword_100619640;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  if (qword_100611860 != -1)
  {
    v16 = v0;
    swift_once();
    v0 = v16;
  }

  v7 = qword_100619690;
  v8 = xmmword_1006196A0;
  v9 = unk_1006196B0;
  *(v0 + 160) = xmmword_100619680;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  if (qword_100611868 != -1)
  {
    v17 = v0;
    swift_once();
    v0 = v17;
  }

  result = *&xmmword_1006196C0;
  v11 = qword_1006196D0;
  v12 = xmmword_1006196E0;
  v13 = unk_1006196F0;
  *(v0 + 224) = xmmword_1006196C0;
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v13;
  qword_100619700 = v0;
  return result;
}

double sub_1003DC20C()
{
  if (qword_100611838 != -1)
  {
    swift_once();
  }

  static Uniforms.standard = 0;
  qword_100619718 = 0;
  xmmword_100619720 = xmmword_100619580;
  unk_100619730 = *algn_100619590;
  xmmword_100619740 = xmmword_1006195A0;
  unk_100619750 = unk_1006195B0;
  dword_1006197A4 = 0;
  dword_1006197F4 = 0;
  dword_100619844 = 0;
  xmmword_100619760 = 0u;
  unk_100619770 = 0u;
  xmmword_100619780 = 0u;
  unk_100619790 = 0u;
  word_1006197A0 = 0;
  word_1006197F0 = 0;
  xmmword_1006197D0 = 0u;
  unk_1006197E0 = 0u;
  xmmword_1006197B0 = 0u;
  unk_1006197C0 = 0u;
  xmmword_100619800 = 0u;
  unk_100619810 = 0u;
  xmmword_100619820 = 0u;
  unk_100619830 = 0u;
  word_100619840 = 0;
  result = 0.0;
  xmmword_100619850 = xmmword_1004E6840;
  qword_100619860 = 0x3F80000000000000;
  unk_100619868 = 0;
  qword_100619870 = 0;
  unk_100619878 = 0;
  return result;
}

void *static Uniforms.standard.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_100611878 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &static Uniforms.standard, 0x170uLL);
}

__n128 sub_1003DC34C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_1003DC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1004BBE24();
  v9 = [a7 newFunctionWithName:v8];

  v10 = sub_1004BBE24();
  v11 = [a7 newFunctionWithName:v10];

  v12 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v13 = sub_1004BBE24();
  [v12 setLabel:v13];

  [v12 setVertexFunction:v9];
  [v12 setFragmentFunction:v11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

void sub_1003DC484(void *a1@<X0>, uint64_t a2@<X8>)
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
    v13 = sub_1004BC984();
    sub_1003DC678(0, v14);
    v15 = sub_1004BD144();
    sub_1004B7F84(v13, &_mh_execute_header, v15, "Backdrop: Could not create default device, Metal rendering unavailable", 70, 2, _swiftEmptyArrayStorage);
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
  if (qword_100611830 != -1)
  {
    swift_once();
  }

  v16 = 0;
  v6 = [v2 newDefaultLibraryWithBundle:qword_100619570 error:&v16];
  v7 = v16;
  if (!v6)
  {
    v12 = v7;
    sub_1004B69B4();

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

unint64_t sub_1003DC678(uint64_t a1, uint64_t a2)
{
  result = qword_1006126B8;
  if (!qword_1006126B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006126B8);
  }

  return result;
}

uint64_t sub_1003DC6C4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1045220557;
  *(v0 + 80) = 0u;
  sub_100003ABC(&qword_100612928, &unk_1004E73A0);
  v1 = sub_1004BC314();
  *(v1 + 16) = 4;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v0 + 96) = v1;
  *(v0 + 104) = &off_1005C7A00;
  return v0;
}

uint64_t sub_1003DC74C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1003DC80C();
    [v2 unregisterObserver:v3];

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

id sub_1003DC80C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_1003DC868(v0);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1003DC868(uint64_t a1)
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
  v11[4] = sub_1003DD94C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000C81CC;
  v11[3] = &unk_1005CD078;
  v9 = _Block_copy(v11);

  [v1 setOnUpdate:v9];
  _Block_release(v9);
  return v1;
}

double sub_1003DC9C4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003DCAB0(a1);
  }

  return result;
}

uint64_t sub_1003DCA24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003DD7B4(v3);
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

uint64_t sub_1003DCAB0(void *a1)
{
  v2 = v1;
  v4 = sub_1004BA8F4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BA924();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003DCDBC();
  sub_1003DD7C8(v12);
  v27 = v13;

  [a1 powerLevel];
  v15 = log10f(v14) * 20.0;
  v16.i64[0] = vdivq_f32(vmulq_n_f32(v27, v15), vdupq_n_s32(0x42F00000u)).u64[0];
  v16.f32[2] = vmuls_lane_f32(v15, v27, 2) / 120.0;
  v16.f32[3] = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v27 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q1), *(v2 + 64));
  sub_1003DD814(0, v22);
  v23 = sub_1004BCB44();
  v24 = swift_allocObject();
  v24[1].i64[0] = v2;
  v24[2] = v27;
  aBlock[4] = sub_1003DD898;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005CD028;
  v25 = _Block_copy(aBlock);

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003DD8BC();
  sub_100003ABC(&qword_100612700, &qword_1004E71F0);
  sub_1003DB8FC();
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v25);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1003DCDBC()
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
        v4 = sub_1003DD5AC(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1003DD5AC((v7 > 1), v8 + 1, 1, v4);
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

uint64_t sub_1003DCEC4(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  sub_1003DCA24(0);
  v3 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1003DD6B0(0, *(v3 + 2) + 1, 1, v3);
    *(a1 + 96) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1003DD6B0((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  *&v3[16 * v6 + 32] = a2;
  *(a1 + 96) = v3;
  return swift_endAccess();
}

void *sub_1003DCF9C(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003ABC(&qword_100611A88, &qword_1004E6BE0);
  v10 = *(sub_100003ABC(&qword_100611A80, &unk_1004E73B0) - 8);
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
  v15 = *(sub_100003ABC(&qword_100611A80, &unk_1004E73B0) - 8);
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

char *sub_1003DD18C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_100611C10, &unk_1004E7380);
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

char *sub_1003DD288(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100612740, &unk_1004E72D0);
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

char *sub_1003DD38C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100612918, &qword_1004E7390);
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

char *sub_1003DD490(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100612920, &qword_1004E7398);
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

char *sub_1003DD5AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100612910, &qword_1004E7378);
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

char *sub_1003DD6B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100612908, &qword_1004E7370);
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

uint64_t sub_1003DD7C8(uint64_t result)
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

unint64_t sub_1003DD814(uint64_t a1, uint64_t a2)
{
  result = qword_1006126F0;
  if (!qword_1006126F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006126F0);
  }

  return result;
}

uint64_t sub_1003DD860()
{

  return swift_deallocObject();
}

uint64_t sub_1003DD8A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003DD8BC()
{
  result = qword_1006126F8;
  if (!qword_1006126F8)
  {
    sub_1004BA8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006126F8);
  }

  return result;
}

uint64_t sub_1003DD914()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1003DD95C(char a1@<W0>, char **a2@<X8>)
{
  v3 = 5;
  if (a1)
  {
    v3 = 8;
  }

  v100 = v3;
  if (a1)
  {
    v4 = &off_1005CAE40;
  }

  else
  {
    v4 = &off_1005CC670;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_81;
  }

  v7 = sub_1000DCF8C(v5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (v7 < v4[2])
  {
    v91 = a2;
    if (a1)
    {
      v8 = &off_1005CAE40;
    }

    else
    {
      v8 = &off_1005CC670;
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
          v18 = sub_1003DD490(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        v26 = (v25 + 1);
        v27 = v100;
        v28 = v95;
        v29 = v97;
        if (v25 >= v24 >> 1)
        {
          v40 = sub_1003DD490((v24 > 1), v25 + 1, 1, v18);
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
              v13 = sub_1003DD490(0, *(v13 + 2) + 1, 1, v13);
            }

            v57 = v95;
            v59 = *(v13 + 2);
            v58 = *(v13 + 3);
            v12 = (v59 + 1);
            v27 = v100;
            v60 = v92;
            if (v59 >= v58 >> 1)
            {
              v71 = sub_1003DD490((v58 > 1), v59 + 1, 1, v13);
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
                v70 = sub_1003DD490((v67 > 1), v68 + 2, 1, v13);
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
                      v12 = sub_1003DD38C(0, *(v12 + 2) + 1, 1, v12);
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
                        v89 = sub_1003DD38C((v84 > 1), v85 + 1, 1, v87);
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
            v39 = sub_1003DD490((v36 > 1), v37 + 2, 1, v18);
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
              v26 = sub_1003DD38C(0, *(v26 + 2) + 1, 1, v26);
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
                v52 = sub_1003DD38C((v49 > 1), v50 + 1, 1, v26);
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
  sub_1004BD624();
  __break(1u);
}

void sub_1003DE0C8(double *a1)
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
  sub_1003DE0C8(v10);
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
  return sub_1003DE3D4;
}

void sub_1003DE3D4(uint64_t *a1, char a2)
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
  sub_1003DE0C8(v4);

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
  return sub_1003DE510;
}

void sub_1003DE510(Class *a1, char a2)
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
    isa = sub_1003E1C08(*(v3 + v8));
  }

  v9 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = v7;
    v11 = v9;
    v12 = [isa CGImage];
    sub_1003D5878(v12, v5 & 1);

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
  return sub_1003E0A8C();
}

id (*ShaderFallback.isPaused.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003DE7D8;
}

id sub_1003DE7D8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1003E0A8C();
  }

  return result;
}

char *ShaderFallback.init(configuration:)(_OWORD *a1)
{
  swift_getObjectType();
  sub_100003ABC(&qword_100612968, &qword_1004E73C0);
  __chkstk_darwin();
  v4 = &v33 - v3;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = 0;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  v6 = sub_1003E1138();
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = 0;
  v7 = &v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration];
  v8 = a1[3];
  v7[2] = a1[2];
  v7[3] = v8;
  v9 = a1[5];
  v7[4] = a1[4];
  v7[5] = v9;
  v10 = a1[1];
  *v7 = *a1;
  v7[1] = v10;
  v12 = type metadata accessor for ShaderFallback(v6, v11);
  v33.receiver = v1;
  v33.super_class = v12;
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003E071C();
  v14 = [v13 traitCollection];
  v15 = [v14 accessibilityContrast];

  *(v13 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = v15 == 1;
  sub_100003ABC(&qword_1006129A0, &qword_1004E73C8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004C50A0;
  *(v16 + 32) = sub_1004B83C4();
  *(v16 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004BCF24();
  swift_unknownObjectRelease();

  v17 = objc_opt_self();
  v18 = [v17 processInfo];
  v19 = [v18 isLowPowerModeEnabled];

  *(v13 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = v19;
  v20 = sub_1004BC4B4();
  v21 = *(*(v20 - 8) + 56);
  v21(v4, 1, 1, v20);
  sub_1004BC474();
  v22 = v13;
  v23 = sub_1004BC464();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v22;
  *(v22 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver) = sub_1003DF464(0, 0, v4, &unk_1004E73D8, v24);

  v25 = [v17 processInfo];
  v26 = [v25 thermalState];

  *(v22 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel) = v26;
  v21(v4, 1, 1, v20);
  v27 = v22;
  v28 = sub_1004BC464();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v27;
  *&v27[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = sub_1003DF464(0, 0, v4, &unk_1004E73E8, v29);

  v27[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v21(v4, 1, 1, v20);
  v30 = sub_1004BC464();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v27;
  *&v27[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = sub_1003DF464(0, 0, v4, &unk_1004E73F8, v31);

  return v27;
}

uint64_t sub_1003DED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100003ABC(&qword_100612FC0, &unk_1004E75D0);
  v4[4] = swift_task_alloc();
  v5 = sub_1004BCC44();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1004BC474();
  v4[9] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_1003DEE4C, v7, v6);
}

uint64_t sub_1003DEE4C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  sub_1004BCC64();

  sub_1004BCC34();
  v4 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v2[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v2[13] = v4;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v2[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v2[15] = v5;
  v2[16] = sub_1004BC464();
  v6 = sub_1003E22F8();
  v7 = swift_task_alloc();
  v2[17] = v7;
  *v7 = v2;
  v7[1] = sub_1003DEF80;
  v8 = v2[4];
  v9 = v2[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v6);
}

uint64_t sub_1003DEF80()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003DF3D8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003DF118;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003DF118()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1003DF17C, v1, v2);
}

uint64_t sub_1003DF17C()
{
  v1 = v0[4];
  v2 = sub_1004B65F4();
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

    sub_100007214(v0[4], &qword_100612FC0, &unk_1004E75D0);
    v0[16] = sub_1004BC464();
    v20 = sub_1003E22F8();
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_1003DEF80;
    v22 = v0[4];
    v23 = v0[5];

    return dispatch thunk of AsyncIteratorProtocol.next()(v22, v23, v20);
  }
}

uint64_t sub_1003DF3D8()
{
  *(v0 + 16) = *(v0 + 144);
  sub_100003ABC(&qword_1006126C0, &qword_1004E71D0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1003DF464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_100612968, &qword_1004E73C0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1003E2350(a3, v24 - v9);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_100612968, &qword_1004E73C0);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
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

      sub_100007214(a3, &qword_100612968, &qword_1004E73C0);

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

  sub_100007214(a3, &qword_100612968, &qword_1004E73C0);
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

uint64_t sub_1003DF754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100003ABC(&qword_100612FC0, &unk_1004E75D0);
  v4[4] = swift_task_alloc();
  v5 = sub_1004BCC44();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1004BC474();
  v4[9] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_1003DF884, v7, v6);
}

uint64_t sub_1003DF884(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  sub_1004BCC64();

  sub_1004BCC34();
  v4 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v2[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v2[13] = v4;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v2[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v2[15] = v5;
  v2[16] = sub_1004BC464();
  v6 = sub_1003E22F8();
  v7 = swift_task_alloc();
  v2[17] = v7;
  *v7 = v2;
  v7[1] = sub_1003DF9B8;
  v8 = v2[4];
  v9 = v2[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v6);
}

uint64_t sub_1003DF9B8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003E2574;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003DFB50;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003DFB50()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1003DFBB4, v1, v2);
}

uint64_t sub_1003DFBB4()
{
  v1 = v0[4];
  v2 = sub_1004B65F4();
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

  sub_100007214(v0[4], &qword_100612FC0, &unk_1004E75D0);
  v0[16] = sub_1004BC464();
  v16 = sub_1003E22F8();
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_1003DF9B8;
  v18 = v0[4];
  v19 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v18, v19, v16);
}

uint64_t sub_1003DFE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_100003ABC(&qword_100612FC0, &unk_1004E75D0);
  v4[7] = swift_task_alloc();
  v5 = sub_1004BCC44();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1004BC474();
  v4[12] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1003DFF40, v7, v6);
}

uint64_t sub_1003DFF40(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  sub_1004BCC64();

  sub_1004BCC34();
  v4 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v2[15] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled;
  v2[16] = v4;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  v2[17] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled;
  v2[18] = v5;
  swift_beginAccess();
  v2[19] = sub_1004BC464();
  v6 = sub_1003E22F8();
  v7 = swift_task_alloc();
  v2[20] = v7;
  *v7 = v2;
  v7[1] = sub_1003E008C;
  v8 = v2[7];
  v9 = v2[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v6);
}

uint64_t sub_1003E008C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003E04B0;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003E0224;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003E0224()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1003E0288, v1, v2);
}

uint64_t sub_1003E0288()
{
  v1 = v0[7];
  v2 = sub_1004B65F4();
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

    sub_100007214(v0[7], &qword_100612FC0, &unk_1004E75D0);
    v0[19] = sub_1004BC464();
    v17 = sub_1003E22F8();
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_1003E008C;
    v19 = v0[7];
    v20 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v17);
  }
}

uint64_t sub_1003E04B0()
{
  *(v0 + 40) = *(v0 + 168);
  sub_100003ABC(&qword_1006126C0, &qword_1004E71D0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id ShaderFallback.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver])
  {

    sub_1004BC524();
  }

  if (*&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver])
  {

    sub_1004BC524();
  }

  if (*&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver])
  {

    sub_1004BC524();
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShaderFallback(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1003E071C()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  if (!*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView])
  {
    v2 = v0;
    if (qword_100611840 != -1)
    {
      swift_once();
    }

    v3 = xmmword_1006195C0;
    if (xmmword_1006195C0)
    {
      v4 = byte_1006195E8;
      v5 = qword_1006195D8;
      v27 = xmmword_1006195C0;
      v28 = unk_1006195D0;
      v29 = qword_1006195D8;
      v30 = unk_1006195E0;
      v31 = byte_1006195E8 & 1;
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

      v14 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer(0, v13));
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v15 = v6;
      v16 = sub_1003D5DE0(&v27);
      *(v16 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8) = &off_1005CD118;
      swift_unknownObjectWeakAssign();
      sub_1003D5D24(0, 0.5, 0.5, 0.5, v17);
      sub_1003D5804([v11 colorPixelFormat]);
      [v11 setDelegate:v2];
      v33.value.super.isa = 0;
      v33.is_nil = 0;
      ShaderFallback.setImage(_:animated:)(v33, v18);
      v19 = [v11 delegate];
      if (v19)
      {
        v20 = v19;
        [v2 frame];
        [v20 mtkView:v11 drawableSizeWillChange:{v21, v22}];
        swift_unknownObjectRelease();
      }

      [v11 setPreferredFramesPerSecond:60];
      v23 = *&v2[v1];
      *&v2[v1] = v11;
      v24 = v11;

      v25 = *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer];
      *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = v16;
      v26 = v16;

      [v2 addSubview:v24];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

id sub_1003E0A8C()
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
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
  sub_1004B6CA4();
  sub_1003E12C0(v7);
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

double sub_1003E0EC4()
{
  LOBYTE(static ShaderFallback.Configuration.zero) = 0;
  result = 0.0;
  *(&static ShaderFallback.Configuration.zero + 8) = 0u;
  *&algn_100619890[8] = 0u;
  *(&xmmword_1006198A0 + 8) = 0u;
  unk_1006198B8 = 0u;
  *(&xmmword_1006198C0 + 8) = 0u;
  qword_1006198D8 = 0;
  return result;
}

__int128 *ShaderFallback.Configuration.zero.unsafeMutableAddressor()
{
  if (qword_100611880 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.zero;
}

double static ShaderFallback.Configuration.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100611880 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1006198B0;
  a1[2] = xmmword_1006198A0;
  a1[3] = v1;
  v2 = unk_1006198D0;
  a1[4] = xmmword_1006198C0;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.zero;
  v4 = *algn_100619890;
  *a1 = static ShaderFallback.Configuration.zero;
  a1[1] = v4;
  return result;
}

double sub_1003E0FB8()
{
  LOBYTE(static ShaderFallback.Configuration.default) = 0;
  *(&static ShaderFallback.Configuration.default + 8) = xmmword_1004E68F0;
  *&algn_1006198F0[8] = xmmword_1004E6900;
  *(&xmmword_100619900 + 8) = xmmword_1004E6910;
  unk_100619918 = xmmword_1004E6920;
  result = 2.0;
  *(&xmmword_100619920 + 8) = xmmword_1004E6930;
  qword_100619938 = 0x3FD6666666666666;
  return result;
}

__int128 *ShaderFallback.Configuration.default.unsafeMutableAddressor()
{
  if (qword_100611888 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.default;
}

double static ShaderFallback.Configuration.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100611888 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_100619910;
  a1[2] = xmmword_100619900;
  a1[3] = v1;
  v2 = unk_100619930;
  a1[4] = xmmword_100619920;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.default;
  v4 = *algn_1006198F0;
  *a1 = static ShaderFallback.Configuration.default;
  a1[1] = v4;
  return result;
}

BOOL sub_1003E10DC(_OWORD *a1, _OWORD *a2)
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

uint64_t sub_1003E1138()
{
  if (qword_100611878 != -1)
  {
    swift_once();
  }

  memmove((v0 + 16), &static Uniforms.standard, 0x170uLL);
  *(v0 + 384) = xmmword_1004E6940;
  *(v0 + 400) = xmmword_1004E6950;
  *(v0 + 416) = 1028443341;
  *(v0 + 424) = 0x3F50624DD2F1A9FCLL;
  *(v0 + 432) = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  *(v0 + 448) = xmmword_1004E6960;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 464) = _Q0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  sub_1004B6CA4();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = 0;
  sub_1004B6CA4();
  sub_1004B6CA4();
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

void sub_1003E12C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v25 - v9;
  v26 = *(v5 + 16);
  v26(&v25 - v9, v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime, v4, v8);
  sub_1004B6C04();
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
  sub_1004B6C04();
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
  sub_1003E1624();
  sub_1003E17E0();
}

double sub_1003E15D4(uint64_t a1)
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

long double sub_1003E1624()
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

float sub_1003E17E0()
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

uint64_t sub_1003E197C()
{
  v1 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime;
  v2 = sub_1004B6CD4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime, v2);

  return swift_deallocClassInstance();
}

void sub_1003E1AC4(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 accessibilityContrast];

  v4 = v3 == 1;
  v5 = a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled];
  a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = v4;
  if (v4 != v5)
  {
    sub_1003E0A8C();
  }
}

id sub_1003E1C08(char a1)
{
  if (a1)
  {
    if (qword_100611830 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_100611830 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v1 = qword_100619570;
  v2 = sub_1004BBE24();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  return v3;
}

uint64_t type metadata accessor for ShaderFallback.Calculator(uint64_t a1)
{
  result = qword_100612A88;
  if (!qword_100612A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E1D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000136EC;

  return sub_1003DED1C(a1, v4, v5, v6);
}

uint64_t sub_1003E1E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1003DF754(a1, v4, v5, v6);
}

uint64_t sub_1003E1EF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1003DFE10(a1, v4, v5, v6);
}

unint64_t sub_1003E1FB0()
{
  result = qword_1006129A8;
  if (!qword_1006129A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006129A8);
  }

  return result;
}

__n128 sub_1003E2004(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003E2020(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1003E2064(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1003E20E8(uint64_t a1)
{
  result = sub_1004B6CD4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1003E21E4()
{
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer) = 0;
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  *(v0 + v1) = sub_1003E1138();
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel) = 0;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_1003E22F8()
{
  result = qword_100612FC8;
  if (!qword_100612FC8)
  {
    sub_1004BCC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100612FC8);
  }

  return result;
}

uint64_t sub_1003E2350(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100612968, &qword_1004E73C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E23C0()
{

  return swift_deallocObject();
}

uint64_t sub_1003E23F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_1003E24B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100109480(a1, v4);
}

uint64_t Array<A>.joined(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a4;
  v22 = a5;
  v20 = a1;
  v23 = a6;
  v8 = sub_1004BD174();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = *(a3 - 8);
  __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = a2;
  sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC7B4();
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return (*(v22 + 8))(a3);
  }

  else
  {
    (*(v12 + 32))(v14, v11, a3);
    *&v24 = a2;

    sub_1004BC804();
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
    sub_1004BD294();
    swift_getWitnessTable();
    sub_1004BC1C4();
    swift_unknownObjectRelease();
    return (*(v12 + 8))(v14, a3);
  }
}

uint64_t sub_1003E2874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t sub_1003E2A0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1003E3250(a1);
  sub_100003ABC(&qword_100613050, &qword_1004E7630);
  swift_arrayDestroy();
  return v2;
}

unint64_t variable initialization expression of BrightnessManager.disableCBFeatures()
{
  v0 = sub_1003E3354(&off_1005CD430);
  sub_1003E3450(&unk_1005CD450);
  return v0;
}

unint64_t variable initialization expression of BrightnessManager.enableCBFeatures()
{
  v0 = sub_1003E3354(&off_1005CD468);
  sub_1003E3450(&unk_1005CD488);
  return v0;
}

uint64_t variable initialization expression of Datavault.logger@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1004B80B4();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of WeakArray.items(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray.WeakBox(0, a1, a1, a4);

  return sub_1004BC304();
}

unint64_t variable initialization expression of WeakValuesDictionary.storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1003E34B8(255, a2);
  swift_getTupleTypeMetadata2();
  v6 = sub_1004BC304();
  v7 = sub_1003FB920(v6, a1, v5, a3);

  return v7;
}

uint64_t sub_1003E2C18(uint64_t a1, uint64_t a2)
{
  result = sub_1004BC604();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_1003E2C6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BC614();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

Swift::Int sub_1003E2CEC()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

Swift::Int sub_1003E2D60()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

uint64_t sub_1003E2DCC(uint64_t a1)
{
  sub_1003E3CF0(&qword_100613158, _s3__C4NameVMa_0, &unk_1004E7C90);
  sub_1003E3CF0(&qword_100613160, _s3__C4NameVMa_0, &unk_1004E7C30);

  return sub_1004BD744();
}

uint64_t sub_1003E2E88(uint64_t a1)
{
  sub_1003E3CF0(&qword_100613168, _s3__C3KeyVMa_0, &unk_1004E7EC0);
  sub_1003E3CF0(&qword_100613170, _s3__C3KeyVMa_0, &unk_1004E795C);

  return sub_1004BD744();
}

_DWORD *sub_1003E2F44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_1003E2F54@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1003E2F60(uint64_t a1)
{
  sub_1003E3CF0(&qword_100613148, type metadata accessor for UILayoutPriority, &unk_1004E7DF4);
  sub_1003E3CF0(&qword_100613150, type metadata accessor for UILayoutPriority, &unk_1004E7D94);
  return sub_1004BD744();
}

uint64_t sub_1003E301C(uint64_t a1)
{
  sub_1003E3CF0(&qword_1006131F8, type metadata accessor for NSKeyValueChangeKey, &unk_1004E8168);
  sub_1003E3CF0(&qword_100613200, type metadata accessor for NSKeyValueChangeKey, &unk_1004E8010);

  return sub_1004BD744();
}

void sub_1003E30E0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004BDBD4(LODWORD(v1));
}

uint64_t sub_1003E311C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t sub_1003E314C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006131B8, &qword_1004E7F48);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
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

unint64_t sub_1003E3250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006131B0, &qword_1004E7F40);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
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

unint64_t sub_1003E3354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006131A8, &qword_1004E7F38);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
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

uint64_t sub_1003E3450(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100613058, &qword_1004E7638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003E34B8(uint64_t a1, uint64_t a2)
{
  result = qword_100613060;
  if (!qword_100613060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100613060);
  }

  return result;
}

void *sub_1003E3504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100003ABC(&qword_1006131A0, &qword_1004E7F30);
  v3 = sub_1004BD6F4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1003FB1E8(v4, v5);
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

    v9 = sub_1003FB1E8(v4, v17);
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

unint64_t sub_1003E3620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613198, &qword_1004E7F28);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
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

unint64_t sub_1003E371C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613190, &qword_1004E7F20);
    v3 = sub_1004BD6F4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1003FB2A8(v5);
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

unint64_t sub_1003E37F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613188, &qword_1004E7F18);
    v3 = sub_1004BD6F4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1003FB2EC(v5);
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

unint64_t sub_1003E38D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613180, &qword_1004E7F10);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
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

unint64_t sub_1003E39EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613178, &qword_1004E7F08);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v8;

      result = sub_1003FB358(v5, v6, v9);
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

__n128 sub_1003E3B38(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1003E3BB4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1003E3CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

  v5 = sub_1003E4774(a1, a2, 0);
  v6 = v5 != 0;

  return v6;
}

uint64_t static ApplicationRecordUtilities.openApplication(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1003E4270, 0, 0);
}

uint64_t sub_1003E4270(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultWorkspace];
  v2[20] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = sub_1004BBE24();
    v2[21] = v5;
    v2[2] = v2;
    v2[7] = v2 + 23;
    v2[3] = sub_1003E43D4;
    v6 = swift_continuation_init();
    v2[17] = sub_100003ABC(&qword_100613208, qword_1004E81B8);
    v2[10] = _NSConcreteStackBlock;
    v2[11] = 1107296256;
    v2[12] = sub_1003E45C4;
    v2[13] = &unk_1005CE010;
    v2[14] = v6;
    [v4 openApplicationWithBundleIdentifier:v5 configuration:0 completionHandler:v2 + 10];
    v3 = v2 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_1003E43D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1003E454C;
  }

  else
  {
    v2 = sub_1003E44E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E44E4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003E454C(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1003E45C4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100009178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003ABC(qword_100613210, &unk_1004E81F0);
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

NSString sub_1003E4690()
{
  result = sub_1004BBE24();
  static NSNotificationName.applicationRegistered = result;
  return result;
}

uint64_t *NSNotificationName.applicationRegistered.unsafeMutableAddressor()
{
  if (qword_100612FD0 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.applicationRegistered;
}

id static NSNotificationName.applicationRegistered.getter()
{
  if (qword_100612FD0 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.applicationRegistered;

  return v1;
}

id sub_1003E4774(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1004BBE24();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1004B69B4();

    swift_willThrow();
  }

  return v6;
}

uint64_t static ArrayBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2)
{
  sub_1004BC3B4();
  sub_1004BC3B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1004BC1E4();
}

double sub_1003E492C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t static ArrayBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BD174();
  sub_1004BD944();
  v4 = *(v3 - 8);
  swift_allocObject();
  sub_1004BC2C4();
  (*(v4 + 16))(v5, a1, v3);
  v6.location = sub_1004BC3B4();
  CFRange.init(_:)(v6);
  swift_getWitnessTable();
  v7 = sub_1004BC144();

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
  v10 = sub_1004BA8F4();
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin();
  v34 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1004BA924();
  v33 = *(v35 - 8);
  __chkstk_darwin();
  v32 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 40) = _swiftEmptyArrayStorage;
  v13 = (v5 + 40);
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v44[0] = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v30[0] = v5 + 40;
    v30[1] = a1;
    v31 = a2;
    v15 = a1 + 32;
    v38 = a4;

    v39 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001342C(v15, aBlock);
      v17 = v41;
      v16 = v42;
      sub_100009178(aBlock, v41);
      v18 = swift_allocObject();
      v19 = v5;
      swift_weakInit();
      v20 = *(v16 + 1);

      v20(sub_1003E69D4, v18, v17, v16);

      sub_100004C6C(aBlock);
      sub_1004BC274();
      if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();
      v39 = v44[0];
      v5 = v19;
      v15 += 40;
      --v14;
    }

    while (v14);

    v21 = v39;
    LOBYTE(a2) = v31;
    v13 = v30[0];
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
      sub_1003E53C4(0, v23);
      v24 = sub_1004BCB44();
      v42 = sub_100009350;
      v43 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      v41 = &unk_1005CE080;
      v25 = _Block_copy(aBlock);

      v26 = v32;
      sub_1004BA914();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1003E5954();
      sub_100003ABC(&unk_1006143D0, &qword_1004E8230);
      sub_1003E59AC();
      v27 = v34;
      v28 = v37;
      sub_1004BD2D4();
      sub_1004BCB54();
      _Block_release(v25);

      (*(v36 + 8))(v27, v28);
      (*(v33 + 8))(v26, v35);
      return v5;
    }

    (*(v5 + 16))();
  }

  return v5;
}

Swift::Void __swiftcall Whitetail.Binding.setNeedsUpdate()()
{
  v1 = sub_1004BA8F4();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BA924();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 32));
  swift_endAccess();
  if ((*(v0 + 36) & 1) == 0)
  {
    *(v0 + 36) = 1;
    sub_1003E53C4(0, v9);
    v13 = v5;
    v10 = sub_1004BCB44();
    aBlock[4] = sub_1003E5A10;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005CE0A8;
    v11 = _Block_copy(aBlock);

    sub_1004BA914();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003E5954();
    sub_100003ABC(&unk_1006143D0, &qword_1004E8230);
    sub_1003E59AC();
    sub_1004BD2D4();
    sub_1004BCB54();
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v13);
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 32));
  swift_endAccess();
}

uint64_t sub_1003E538C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1003E53C4(uint64_t a1, uint64_t a2)
{
  result = qword_1006143C0;
  if (!qword_1006143C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006143C0);
  }

  return result;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_100003ABC(&qword_1006132A8, &qword_1004E8238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  sub_10001342C(a1, inited + 32);
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  sub_100004C6C(a1);
  return v9;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_100003ABC(&qword_1006132A8, &qword_1004E8238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
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
  sub_100009178(a1, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 8);

  v6(sub_1003E5A18, v5, v3, v4);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1004BC274();
    if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    sub_1004BC334();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }
}

double sub_1003E56E0(uint64_t a1)
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
      sub_10001342C(v3, v9);
      v5 = v10;
      v4 = v11;
      sub_100009178(v9, v10);
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = *(v4 + 8);

      v8 = v12;
      v7(sub_1003E69D4, v6, v5, v4);
      if (v8)
      {

        v12 = 0;
      }

      else
      {
        v12 = 0;

        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1004BC274();
        if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004BC2E4();
        }

        sub_1004BC334();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      sub_100004C6C(v9);
      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1003E58D8(uint64_t a1)
{
  swift_beginAccess();
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 36) = 0;
  os_unfair_lock_unlock((a1 + 32));
  v2 = swift_endAccess();
  return (*(a1 + 16))(v2);
}

uint64_t sub_1003E593C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003E5954()
{
  result = qword_100613298;
  if (!qword_100613298)
  {
    sub_1004BA8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613298);
  }

  return result;
}

unint64_t sub_1003E59AC()
{
  result = qword_1006132A0;
  if (!qword_1006132A0)
  {
    sub_100003B68(&unk_1006143D0, &qword_1004E8230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006132A0);
  }

  return result;
}

uint64_t Whitetail.Binding.description.getter()
{
  sub_1004BD404(21);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  sub_1004BC024(v4);
  v5._countAndFlagsBits = sub_1004BDC84();
  sub_1004BC024(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_1004BC024(v6);
  sub_1004BD5C4();
  v7._countAndFlagsBits = 0x6576726573626F20;
  v7._object = 0xEB000000003D7372;
  sub_1004BC024(v7);
  swift_beginAccess();

  v0 = sub_1004BC2B4();
  v2 = v1;

  v8._countAndFlagsBits = v0;
  v8._object = v2;
  sub_1004BC024(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  sub_1004BC024(v9);
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
  v11[4] = sub_1000081FC;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000D6C80;
  v11[3] = &unk_1005CE0F8;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:a3 handler:v8];
  _Block_release(v8);

  return v9;
}

id sub_1003E5D28(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_100009350;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000D6C80;
  v11[3] = &unk_1005CE3C8;
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
  type metadata accessor for NotificationObserver(0, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 16) = a3;
  swift_unknownObjectWeakAssign();
  *(v9 + 32) = 1;
  *(v9 + 48) = sub_1000081FC;
  *(v9 + 56) = v7;
  v10 = objc_opt_self();

  v11 = a3;

  v12 = [v10 defaultCenter];
  *(v9 + 40) = v12;
  v13 = *(v9 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = v12;

  v16 = v13;
  [v15 addObserver:v9 selector:"handleNotification:" name:v16 object:Strong];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1003E5FA0()
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

  v13 = sub_1004B69E4();

  return v13;
}

uint64_t UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004BC244();
  (*(*(a4 - 8) + 8))(a3, a4);
  return a1;
}

uint64_t UserDefaultsKeyValueTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_1003E6250(a5, a6, a3, a4, sub_100009350, v12);

  return v13;
}

uint64_t sub_1003E6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v17 = sub_1004BC104();
  v19 = v18;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v20 = &v16[*(v10 + 28)];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v16[*(v10 + 32)];
  *v21 = v17;
  v21[1] = v19;
  v22 = qword_100613028;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_100614480;
  v24 = *(qword_100614480 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v24 + 16));
  v25 = v37;
  sub_1004277D4(v23, v16, v33, v34);
  os_unfair_lock_unlock(*(v24 + 16));
  if (v25)
  {
    return sub_1003E6734(v16);
  }

  sub_1003E6790(v16, v14);
  sub_1003E67F4(v16, v12);
  v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v28 = swift_allocObject();
  sub_1003E67F4(v12, v28 + v27);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v29 = swift_allocObject();
  sub_1003E67F4(v14, v29 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier);
  result = v29;
  v30 = (v29 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v30 = sub_1003E6954;
  v30[1] = v28;
  return result;
}

uint64_t sub_1003E64E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_1003E6250(v8, v7, v5, v6, sub_100009350, v9);

  return v10;
}

uint64_t sub_1003E6594()
{

  return swift_deallocObject();
}

uint64_t sub_1003E6648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003E669C(uint64_t a1, int a2)
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

uint64_t sub_1003E66E4(uint64_t result, int a2, int a3)
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

uint64_t sub_1003E6734(uint64_t a1)
{
  v2 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003E6790(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E67F4(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E6858()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1004B6D14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_1003E6954()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100427504(v2);
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
  sub_1001898C4(v0 + 24);

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
  sub_1001898C4(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1003E6DEC(uint64_t a1)
{
  v3 = sub_1004BA8F4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1004BA924();
  v27 = *(v29 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B65F4();
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
    sub_100009130(0, &qword_1006143C0, OS_dispatch_queue_ptr);
    v24 = sub_1004BCB44();
    aBlock[4] = sub_1003E7638;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005CE440;
    v20 = _Block_copy(aBlock);

    sub_1004BA914();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003E5954();
    sub_100003ABC(&unk_1006143D0, &qword_1004E8230);
    sub_1003E59AC();
    v21 = v28;
    v22 = v26;
    sub_1004BD2D4();
    v23 = v24;
    sub_1004BCB54();
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
  sub_1004BD404(65);
  v17._object = 0x800000010050C550;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1004BC024(v17);
  v18._countAndFlagsBits = sub_1004BBE64();
  sub_1004BC024(v18);

  v19._countAndFlagsBits = 0x3D7463656A626F20;
  v19._object = 0xE800000000000000;
  sub_1004BC024(v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"description"])
    {
      v5 = [v4 description];
      swift_unknownObjectRelease();
      v2 = sub_1004BBE64();
      v7 = v6;

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0xE300000000000000;
LABEL_6:
  v20._countAndFlagsBits = v2;
  v20._object = v7;
  sub_1004BC024(v20);

  v21._countAndFlagsBits = 0x3D7265746E656320;
  v21._object = 0xE800000000000000;
  sub_1004BC024(v21);
  sub_100009130(0, &unk_1006143A0, NSObject_ptr);
  v8 = *(v1 + 40);
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_1004BCFA4();

  if (v10)
  {
    v11 = 0xE700000000000000;
    v12._countAndFlagsBits = 0x746C7561666564;
  }

  else
  {
    v13 = [v8 description];
    v14 = sub_1004BBE64();
    v11 = v15;

    v12._countAndFlagsBits = v14;
  }

  v12._object = v11;
  sub_1004BC024(v12);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_1004BC024(v22);
  return 0;
}

uint64_t sub_1003E7574()
{
  v1 = sub_1004B65F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003E76A4(uint64_t a1, uint64_t a2)
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
  v3 = sub_1003E3250(&off_1005CD4A0);
  sub_100003ABC(&qword_100613050, &qword_1004E7630);
  swift_arrayDestroy();
  v1[3] = v3;
  v4 = sub_1003E3250(&off_1005CD4F0);
  swift_arrayDestroy();
  v1[4] = v4;
  v5 = sub_1003E3354(&off_1005CD540);
  sub_1003E3450(&unk_1005CD560);
  v1[5] = v5;
  v6 = sub_1003E3354(&off_1005CD578);
  sub_1003E3450(&unk_1005CD598);
  v1[6] = v6;
  v1[7] = _swiftEmptyArrayStorage;
  sub_100003ABC(&qword_1006134D0, &qword_1004E84E0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004C51A0;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver(0, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 16) = UISceneWillDeactivateNotification;
  swift_unknownObjectWeakAssign();
  *(v9 + 32) = 1;
  *(v9 + 48) = sub_1003E7E34;
  *(v9 + 56) = v7;
  v10 = objc_opt_self();
  v11 = a1;

  swift_retain_n();
  v12 = UISceneWillDeactivateNotification;
  v13 = [v10 defaultCenter];
  *(v9 + 40) = v13;
  v14 = *(v9 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v13;

  v17 = v14;
  [v16 addObserver:v9 selector:"handleNotification:" name:v17 object:Strong];

  swift_unknownObjectRelease();
  *(v28 + 32) = v9;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v11;

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v20 + 16) = UISceneDidActivateNotification;
  swift_unknownObjectWeakAssign();
  *(v20 + 32) = 1;
  *(v20 + 48) = sub_1003E7E64;
  *(v20 + 56) = v18;
  swift_retain_n();
  v21 = UISceneDidActivateNotification;
  v22 = [v10 defaultCenter];
  *(v20 + 40) = v22;
  v23 = *(v20 + 16);
  v24 = swift_unknownObjectWeakLoadStrong();
  v25 = v22;

  v26 = v23;
  [v25 addObserver:v20 selector:"handleNotification:" name:v26 object:v24];

  swift_unknownObjectRelease();
  *(v28 + 40) = v20;

  v1[7] = v28;

  return v1;
}

Swift::Void __swiftcall BrightnessManager.resetBrightnessToSystemDefault()()
{
  v1 = *(v0 + 16);
  isa = sub_1004BBC24().super.isa;
  v3 = sub_1004BBE24();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_1004BBC24().super.isa;
  v5 = sub_1004BBE24();
  [v1 setProperty:v4 forKey:v5];
}

double sub_1003E7BE8(uint64_t a1, uint64_t a2, void (*a3)(void))
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
  isa = sub_1004BBC24().super.isa;
  v3 = sub_1004BBE24();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_1004BBC24().super.isa;
  v5 = sub_1004BBE24();
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

uint64_t sub_1003E7DFC()
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
  v130 = sub_1004BD694();
  __chkstk_darwin();
  v129 = &v123 - v20;
  v131 = v19;
  v144 = sub_1004BD684();
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
  v160 = sub_1004BD174();
  v138 = *(v160 - 1);
  __chkstk_darwin();
  v139 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v123 - v29;
  __chkstk_darwin();
  v31 = (&v123 - v30);
  v133 = sub_1004BD694();
  __chkstk_darwin();
  v132 = &v123 - v32;
  v143 = v22;
  v145 = sub_1004BD684();
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
    v35 = sub_1003EAAC4;
  }

  else
  {
    v35 = sub_1003E93D4;
  }

  v146 = v35;
  sub_10002F518(a2, a3);
  v149 = v34;

  v155 = a4;
  v141 = a6;
  v36 = sub_1004BC734();
  v158 = a5;
  v37 = sub_1004BC734();
  v170 = sub_1004BC304();
  v137 = v37;
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v40 = sub_1004BC3B4();
  v41 = sub_1003EA964(&v170, v39, v40);

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
  v164 = sub_1004BC3B4();
  v42 = sub_1003EA964(&v170, v36 + 1, v164);

  v172 = v42;
  v171 = sub_1004BC304();
  sub_1004BC154();
  sub_1004BD664();
  v43 = v138 + 4;
  v44 = TupleTypeMetadata2;
  v143 = (v134 + 32);
  while (1)
  {
    v45 = v154;
    sub_1004BD674();
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
    sub_1004BC364();
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
    sub_1004BC3B4();

    sub_1004BC2F4();
    v57 = v172;
    sub_1003EA910(v54, v172, v56);
    v58 = v57 + 8 * v54;
    sub_1004BC2F4();
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

  v171 = sub_1004BC304();
  sub_1004BC154();
  sub_1004BD664();
  v62 = v154;
  v63 = TupleTypeMetadata2;
  sub_1004BD674();
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
      sub_1004BC364();
      v71 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_52;
      }

      v72 = v171;
      sub_1004BC3B4();

      sub_1004BC2F4();
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

      sub_1004BC2F4();
      sub_1003EA910(v71, *(v73 + 32), v165);
      *(*(v73 + 32) + 8 * v71 + 32) = v72;

      v76 = v154;
      sub_1004BD674();
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

    sub_1004BC3C4();
    sub_1004BC3C4();

    return;
  }

  sub_1004BC724();
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
      sub_1004BC724();
      v154 = (v78 - 1);
      v79 = 1;
      TupleTypeMetadata2 = v78;
      while (1)
      {
        v80 = sub_1004BC844();
        v81 = *v160;
        v82 = v162;
        v83 = v163;
        (*v160)(v162);
        v80(&v170, 0);
        v84 = sub_1004BC844();
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
          sub_1004BC3C4();
          v88 = v165;
          sub_1004BC3C4();

          v89 = v169;
          sub_1004BC3B4();
          sub_1004BC2F4();
          v90 = v172;
          sub_1003EA910(v79, v172, v87);
          v91 = v90 + 8 * v79;
          sub_1004BC2F4();
          v92 = TupleTypeMetadata2;
          sub_1003EA910(TupleTypeMetadata2, *(v91 + 32), v88);
          *(*(v91 + 32) + 8 * v92 + 32) = v89;
        }

        else
        {
          v93 = (v79 - 1);
          sub_1004BC3C4();
          sub_1004BC3C4();

          sub_1004BC3C4();
          sub_1004BC3C4();

          sub_1004BC3C4();
          sub_1004BC3C4();

          v94 = sub_1004BC344();
          v95 = sub_1004BC344();
          v96 = sub_1004BC344();
          v97 = v95 >= v94 ? v94 : v95;
          v98 = v96 >= v97 ? v97 : v96;
          if (v94 == v98)
          {

            v99 = sub_1004BC844();
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

            if (sub_1004BC344() == v98)
            {

              v104 = sub_1004BC844();
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

              v105 = sub_1004BC844();
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
          sub_1004BC364();
          v107 = *v103;
          v108 = v164;
          sub_1004BC3B4();
          sub_1004BC2F4();
          v109 = v172;
          sub_1003EA910(v79, v172, v108);
          v110 = v109 + 8 * v79;
          sub_1004BC2F4();
          sub_1003EA910(v92, *(v110 + 32), v106);
          *(*(v110 + 32) + 8 * v92 + 32) = v107;
        }

        v111 = v148;
        v112 = v166;
        v113 = v155;
        sub_1004BC744();
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
      sub_1004BC744();
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

    sub_1004BC3C4();
    sub_1004BC3C4();

    v168 = sub_1004BBBF4();
    __chkstk_darwin();
    v120 = v158;
    *(&v123 - 6) = v113;
    *(&v123 - 5) = v120;
    v121 = v156;
    *(&v123 - 4) = v122;
    *(&v123 - 3) = v121;
    *(&v123 - 2) = v124;
    swift_getWitnessTable();
    sub_1004BC1B4();

    v118(v157, v136);

    return;
  }

LABEL_56:
  __break(1u);
}

uint64_t sub_1003E93D4@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1004BBD84();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1003E9454@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  v10 = type metadata accessor for CollectionComparisonOperation(0, a5, a6, a4);
  v11 = *(*(a5 - 8) + 32);
  v12 = a7 + *(v10 + 40);

  return v11(v12, a4, a5);
}

uint64_t sub_1003E94E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
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
    sub_1004BC3B4();
    return sub_1004BC364();
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
  v26 = sub_1004BC3B4();

  swift_getWitnessTable();
  v27 = v44;
  sub_1004BC784();

  if (v46 == 1)
  {
    (*(v16 + 16))(v20, a2, v15);
    return sub_1004BC364();
  }

  else
  {
    v43 = v45;
    sub_1004BC3C4();
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
    sub_1004BC384();
    v34 = v42;
    v42(v20, v15);
    (*(v16 + 16))(v20, v31, v15);
    sub_1004BC364();
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

uint64_t sub_1003E996C(uint64_t *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    return sub_1004BBD84() & 1;
  }

  if ((a3 & 1) != 0 && a2 == 1)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_1003E9AF8(uint64_t *a1, uint64_t a2)
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
    v4._countAndFlagsBits = sub_1004BD934();
    sub_1004BC024(v4);

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
  *(v17 + 16) = sub_1003EAAF8;
  *(v17 + 24) = v16;
  v26 = sub_1000081FC;
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100008224;
  v25 = &unk_1005CE530;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v26 = a5;
    v27 = a6;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100398C10;
    v25 = &unk_1005CE558;
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

uint64_t sub_1003E9E50(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v46 = *(sub_1004B7044() - 8);
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
  result = sub_1004BC394();
  if (result)
  {
    v24 = 0;
    v49 = (v51 + 16);
    v47 = (v51 + 8);
    v42 = v46 + 16;
    v41 = xmmword_1004C50A0;
    v43 = v14;
    v44 = a4;
    v48 = (v46 + 8);
    do
    {
      v31 = sub_1004BC324();
      sub_1004BC2D4();
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
        result = sub_1004BD474();
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
      sub_1004B6FF4();
      v34 = *v22;
      v35 = v22[8];
      (*v47)(v22, v19);
      if (v35 == 1)
      {
        sub_100003ABC(&qword_100613620, &qword_1004E8618);
        v36 = v46;
        v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        (*(v36 + 16))(v38 + v37, v14, v33);
        v30.super.isa = sub_1004BC284().super.isa;

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
        sub_1004B6FF4();
        v26 = v19;
        v27 = a4;
        isa = sub_1004B6FD4().super.isa;
        v17 = v33;
        v29 = v48;
        (*v48)(v25, v17);
        v30.super.isa = sub_1004B6FD4().super.isa;
        [v50 moveItemAtIndexPath:isa toIndexPath:v30.super.isa];

        a4 = v27;
        v19 = v26;
      }

      (*v29)(v14, v17);
      result = sub_1004BC394();
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
  *(v17 + 16) = sub_1003EAB74;
  *(v17 + 24) = v16;
  v26 = sub_100009350;
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100008224;
  v25 = &unk_1005CE5D0;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v26 = a5;
    v27 = a6;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100398C10;
    v25 = &unk_1005CE5F8;
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

uint64_t sub_1003EA4B8(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v46 = *(sub_1004B7044() - 8);
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
  result = sub_1004BC394();
  if (result)
  {
    v24 = 0;
    v49 = (v51 + 16);
    v47 = (v51 + 8);
    v42 = v46 + 16;
    v41 = xmmword_1004C50A0;
    v43 = v14;
    v44 = a4;
    v48 = (v46 + 8);
    do
    {
      v31 = sub_1004BC324();
      sub_1004BC2D4();
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
        result = sub_1004BD474();
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
      sub_1004B6FF4();
      v34 = *v22;
      v35 = v22[8];
      (*v47)(v22, v19);
      if (v35 == 1)
      {
        sub_100003ABC(&qword_100613620, &qword_1004E8618);
        v36 = v46;
        v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        (*(v36 + 16))(v38 + v37, v14, v33);
        v30.super.isa = sub_1004BC284().super.isa;

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
        sub_1004B6FF4();
        v26 = v19;
        v27 = a4;
        isa = sub_1004B6FD4().super.isa;
        v17 = v33;
        v29 = v48;
        (*v48)(v25, v17);
        v30.super.isa = sub_1004B6FD4().super.isa;
        [v50 moveRowAtIndexPath:isa toIndexPath:v30.super.isa];

        a4 = v27;
        v19 = v26;
      }

      (*v29)(v14, v17);
      result = sub_1004BC394();
      ++v24;
    }

    while (v32 != result);
  }

  return result;
}

uint64_t sub_1003EA910(unint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1003EA964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC304();
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

    sub_1004BC3B4();
    return v8;
  }

  return result;
}

uint64_t sub_1003EAA8C()
{

  return swift_deallocObject();
}

uint64_t sub_1003EAAC4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003EAB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003EAB2C()
{

  return swift_deallocObject();
}

uint64_t sub_1003EABB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003EAC40(unint64_t a1, unsigned int a2, uint64_t a3)
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

void sub_1003EADA4(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t initializeBufferWithCopyOfBuffer for CollectionComparisonOperationType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t ControlEventHandler.__allocating_init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ControlEventHandler.init<A>(control:events:handler:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ControlEventHandler.init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5[3] = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v5[4] = sub_1003EB254;
  v5[5] = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    [v13 addTarget:v5 action:"handleActionFromControl:" forControlEvents:a2];
  }

  return v5;
}

void sub_1003EB198(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    a2(v7);
  }
}

uint64_t sub_1003EB21C()
{

  return swift_deallocObject();
}

uint64_t ControlEventHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t ControlEventHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void ControlEventHandling<>.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100009130(0, &qword_100613628, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;

  v12 = sub_1004BCFD4();
  [v5 addAction:v12 forControlEvents:{a1, 0, 0, 0, sub_1003EB704, v11}];
}

void sub_1003EB4D0(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_1003EB8DC(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  sub_100009130(0, &qword_100613718, UIControl_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

void sub_1003EB5D0(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  if ([a1 sender])
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1003EB8DC(v10);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v7;
LABEL_9:
  a3(Strong);
}

uint64_t sub_1003EB6C4()
{

  return swift_deallocObject();
}

void sub_1003EB710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100009130(0, &qword_100613628, UIAction_ptr);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;

  v10 = sub_1004BCFD4();
  [v7 addAction:v10 forControlEvents:{a1, 0, 0, 0, sub_1003EB8D0, v9}];
}

uint64_t sub_1003EB858()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003EB890()
{

  return swift_deallocObject();
}

uint64_t sub_1003EB8DC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006143E0, &qword_1004E86B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.url.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v5 = sub_1004B6B04();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Datavault.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  return sub_1003EBA18(v1 + v3, a1);
}

uint64_t sub_1003EBA18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100613720, &qword_1004E86B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Datavault.logger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_1003EBAE8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1003EBAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100613720, &qword_1004E86B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *Datavault.__allocating_init(url:storageClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B6B04();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004B6AA4();
  v12 = v11;
  (*(v7 + 16))(v9, a1, v6);
  swift_allocObject();
  v13 = sub_1003EBE8C(v10, v12, v9, a2, a3);
  (*(v7 + 8))(a1, v6);
  return v13;
}

char *Datavault.__allocating_init(path:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v16 - v12;
  sub_1004B6A14();
  (*(v9 + 16))(v11, v13, v8);
  swift_allocObject();
  v14 = sub_1003EBE8C(a1, a2, v11, a3, a4);
  (*(v9 + 8))(v13, v8);
  return v14;
}

char *sub_1003EBE8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v83 = a4;
  v84 = a1;
  v93 = a2;
  v85 = *v5;
  v7 = sub_1004B80B4();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v75[-v11];
  __chkstk_darwin();
  v14 = &v75[-v13];
  v15 = sub_1004B6B04();
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = __chkstk_darwin();
  v18 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  v20 = *(v8 + 56);
  v92 = v5;
  v20(v5 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger, 1, 1, v7, v16);
  v91 = a3;
  sub_1004B6A74();
  v21 = [objc_opt_self() defaultManager];
  v88 = v18;
  v22 = v86;
  NSFileManager.createDirectoryIfNeeded(at:)(v18);
  v86 = v22;
  if (!v22)
  {
    v27 = v10;
    v28 = v14;
    v82 = v19;
    v80 = v12;
    v95[0] = 0;
    v29 = v84;
    v30 = v93;
    v31 = sub_1004BBE24();
    v81 = v21;
    [v21 fileExistsAtPath:v31 isDirectory:v95];

    if (v95[0] == 1)
    {
      sub_1004BBF54();
      sub_1004BBF54();
      v32 = rootless_check_datavault_flag();

      if (v32)
      {
        v33 = v82;
        v34 = v92;
        swift_beginAccess();
        v35 = v34 + v33;
        v23 = v34;
        v36 = v7;
        v79 = *(v8 + 48);
        if (!v79(v35, 1, v7))
        {
          v37 = v28;
          (*(v8 + 16))(v28, v23 + v82, v36);

          v77 = v36;
          v38 = sub_1004B8094();
          v39 = sub_1004BC9A4();

          v76 = v39;
          v78 = v38;
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v94[0] = v41;
            *v40 = 136315138;
            *(v40 + 4) = sub_10040CE44(v84, v93, v94);
            v42 = v78;
            _os_log_impl(&_mh_execute_header, v78, v76, "Found unsecure directory %s attempting to convert to datavault", v40, 0xCu);
            sub_100004C6C(v41);
          }

          else
          {
          }

          v36 = v77;
          (*(v8 + 8))(v37, v77);
        }

        v60 = v36;
        sub_1004BBF54();
        sub_1004BBF54();

        v61 = rootless_convert_to_datavault();

        if (v61)
        {

          v62 = sub_1004B8474();
          sub_1003ECD18();
          swift_allocError();
          *v63 = v62;
          *(v63 + 4) = 1;
          swift_willThrow();
          v21 = v81;
          goto LABEL_4;
        }

        v64 = v23;
        v65 = v82;
        swift_beginAccess();
        if (v79(v64 + v65, 1, v36))
        {
          v55 = v89;
          v56 = v90;
          (*(v89 + 8))(v88, v90);
          swift_endAccess();

          v30 = v93;
          v23 = v64;
        }

        else
        {
          v66 = v8;
          v67 = v80;
          (*(v8 + 16))(v80, v64 + v65, v36);
          swift_endAccess();
          v68 = v93;

          v69 = sub_1004B8094();
          v70 = sub_1004BC9A4();

          v23 = v64;
          if (os_log_type_enabled(v69, v70))
          {
            v71 = v67;
            v72 = v66;
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v94[0] = v74;
            *v73 = 136315138;
            *(v73 + 4) = sub_10040CE44(v84, v68, v94);
            _os_log_impl(&_mh_execute_header, v69, v70, "Datavault directory conversion successful %s", v73, 0xCu);
            sub_100004C6C(v74);

            (*(v72 + 8))(v71, v60);
          }

          else
          {

            (*(v66 + 8))(v67, v60);
          }

          v55 = v89;
          v56 = v90;
          (*(v89 + 8))(v88, v90);
          v30 = v68;
        }

LABEL_20:
        (*(v55 + 32))(v23 + OBJC_IVAR____TtC14MusicUtilities9Datavault_url, v91, v56);
        v23[2] = v84;
        v23[3] = v30;
        return v23;
      }

      v55 = v89;
      v56 = v90;
      (*(v89 + 8))(v88, v90);

      v30 = v93;
    }

    else
    {
      v43 = v82;
      v44 = v92;
      swift_beginAccess();
      v45 = v8;
      v46 = v7;
      if (!(*(v8 + 48))(&v44[v43], 1, v7))
      {
        v47 = v92 + v43;
        v48 = v27;
        (*(v8 + 16))(v27, v47, v7);

        v49 = sub_1004B8094();
        v50 = sub_1004BC9A4();

        v51 = v49;
        if (os_log_type_enabled(v49, v50))
        {
          v52 = v45;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v94[0] = v54;
          *v53 = 136315138;
          *(v53 + 4) = sub_10040CE44(v29, v30, v94);
          _os_log_impl(&_mh_execute_header, v51, v50, "Creating DataVault directory %s", v53, 0xCu);
          sub_100004C6C(v54);

          (*(v52 + 8))(v48, v46);
        }

        else
        {

          (*(v45 + 8))(v27, v46);
        }
      }

      sub_1004B8494();
      sub_1004B84A4();
      sub_1004B84B4();
      sub_1004BBF54();
      sub_1004BBF54();

      v57 = rootless_mkdir_datavault();

      if (v57)
      {

        v58 = sub_1004B8474();
        sub_1003ECD18();
        swift_allocError();
        *v59 = v58;
        *(v59 + 4) = 0;
        swift_willThrow();
        v21 = v81;
        goto LABEL_3;
      }

      v55 = v89;
      v56 = v90;
      (*(v89 + 8))(v88, v90);
    }

    v23 = v92;
    goto LABEL_20;
  }

LABEL_3:
  v23 = v92;
LABEL_4:

  v24 = v90;
  v25 = *(v89 + 8);
  v25(v91, v90);
  v25(v88, v24);
  sub_1003EC998(v23 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  swift_deallocPartialClassInstance();
  return v23;
}
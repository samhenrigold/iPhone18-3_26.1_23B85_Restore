void *sub_100001DE0(uint64_t a1)
{
  v1[7] = 0x4200000042000000;
  v1[8] = 0;
  v1[9] = 0;
  v1[10] = 70;
  v2 = swift_unknownObjectRetain();
  sub_100010E3C(v2);
  v4 = v3;
  v5 = objc_allocWithZone(MTLRenderPipelineDescriptor);
  swift_retain_n();
  v6 = [v5 init];
  v7 = v4[3];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v6;
  swift_unknownObjectRetain();
  v9 = sub_1000269F0();
  v10 = [v7 newFunctionWithName:v9];

  swift_unknownObjectRelease();
  [v8 setVertexFunction:v10];
  swift_unknownObjectRelease();
  v11 = v4[3];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  v12 = sub_1000269F0();
  v13 = [v11 newFunctionWithName:v12];

  swift_unknownObjectRelease();
  [v8 setFragmentFunction:v13];
  swift_unknownObjectRelease();
  v14 = [v8 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];

  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 setPixelFormat:v4[10]];

  v16 = v4[2];
  if (!v16)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = 0;
  v17 = [v16 newRenderPipelineStateWithDescriptor:v8 error:&v35];
  v18 = v35;
  if (!v17)
  {
    v19 = v18;
    sub_1000261D0();

    swift_willThrow();

    v17 = 0;
  }

  v4[8] = v17;
  swift_unknownObjectRelease();
  v20 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v21 = v4[3];
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v20;
  swift_unknownObjectRetain();
  v23 = sub_1000269F0();
  v24 = [v21 newFunctionWithName:v23];

  swift_unknownObjectRelease();
  [v22 setVertexFunction:v24];
  swift_unknownObjectRelease();
  v25 = v4[3];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  v26 = sub_1000269F0();
  v27 = [v25 newFunctionWithName:v26];

  swift_unknownObjectRelease();
  [v22 setFragmentFunction:v27];
  swift_unknownObjectRelease();
  v28 = [v22 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript:0];

  if (!v29)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  [v29 setPixelFormat:v4[10]];

  v30 = v4[2];
  swift_unknownObjectRetain();

  if (!v30)
  {
    goto LABEL_22;
  }

  v35 = 0;
  v31 = [v30 newRenderPipelineStateWithDescriptor:v22 error:&v35];
  swift_unknownObjectRelease();
  v32 = v35;
  if (v31)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = v32;
    sub_1000261D0();

    swift_willThrow();

    swift_unknownObjectRelease();
    v31 = 0;
  }

  v4[9] = v31;

  swift_unknownObjectRelease();
  return v4;
}

void sub_100002258(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    if (!v2)
    {
      __break(1u);
      goto LABEL_37;
    }

    swift_unknownObjectRetain();
    v4 = [v2 commandBuffer];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 80) width:objc_msgSend(a1 height:"width") mipmapped:objc_msgSend(a1, "height"), 0];
      [v6 setUsage:7];
      [v6 setStorageMode:2];
      v7 = *(v1 + 16);
      if (v7)
      {
        v8 = [v7 newTextureWithDescriptor:v6];
        v9 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
        v10 = [v9 colorAttachments];
        v11 = [v10 objectAtIndexedSubscript:0];

        if (v11)
        {
          [v11 setTexture:v8];

          v12 = [v5 renderCommandEncoderWithDescriptor:v9];
          if (v12)
          {
            if (!*(v1 + 64))
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v13 = v12;
            [v12 setRenderPipelineState:?];
            [v13 setVertexBuffer:*(v1 + 40) offset:0 atIndex:0];
            [v13 setVertexBuffer:*(v1 + 48) offset:0 atIndex:1];
            [v13 setFragmentTexture:a1 atIndex:0];
            [v13 drawPrimitives:4 vertexStart:0 vertexCount:4];
            [v13 endEncoding];
            swift_unknownObjectRelease();
          }

          v14 = *(v1 + 16);
          if (v14)
          {
            v15 = [v14 newTextureWithDescriptor:v6];
            v16 = [v5 blitCommandEncoder];
            if (v16)
            {
              if (!v8)
              {
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

              if (!v15)
              {
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
                return;
              }

              v17 = v16;
              [v16 copyFromTexture:v8 toTexture:v15];
              [v17 endEncoding];
              swift_unknownObjectRelease();
            }

            v18 = *(v1 + 16);
            if (v18)
            {
              v38 = [objc_allocWithZone(MPSImageMultiply) initWithDevice:v18];
              v19 = *(v1 + 16);
              if (v19)
              {
                v20 = [v19 newTextureWithDescriptor:v6];
                v21 = *(v1 + 56);
                v39 = v5;
                v37 = v9;
                if (v21 >= 1.0)
                {
                  do
                  {
                    v22 = *(v1 + 16);
                    if (!v22)
                    {
                      goto LABEL_34;
                    }

                    v23 = objc_allocWithZone(MPSImageGaussianBlur);
                    *&v24 = v21;
                    v25 = [v23 initWithDevice:v22 sigma:v24];
                    [v25 setEdgeMode:1];
                    if (!v15)
                    {
                      goto LABEL_35;
                    }

                    if (!v20)
                    {
                      __break(1u);
LABEL_33:
                      __break(1u);
LABEL_34:
                      __break(1u);
LABEL_35:
                      __break(1u);
                    }

                    [v25 encodeToCommandBuffer:v5 sourceTexture:v15 destinationTexture:v20];
                    if (!v8)
                    {
                      goto LABEL_33;
                    }

                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    [v38 encodeToCommandBuffer:v5 primaryTexture:v20 secondaryTexture:v8 destinationTexture:v15];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

                    v21 = v21 * 0.5;
                  }

                  while (v21 >= 1.0);
                  v21 = *(v1 + 56);
                }

                *(v1 + 60) = v21;
                v26 = *(v1 + 16);
                if (v26)
                {
                  v27 = [v26 newTextureWithDescriptor:v6];
                  if (v27)
                  {
                    v28 = v27;
                    v36 = 1.0 / [v27 width];
                    v29 = [v28 height];
                    *&v30 = v36;
                    *(&v30 + 1) = 1.0 / v29;
                    *(&v30 + 1) = *(v1 + 60);
                    v40 = v30;
                    v31 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
                    v32 = [v31 colorAttachments];
                    v33 = [v32 objectAtIndexedSubscript:0];

                    if (v33)
                    {
                      [v33 setTexture:v28];

                      v34 = [v39 renderCommandEncoderWithDescriptor:v31];
                      if (!v34)
                      {
LABEL_29:
                        [v39 commit];
                        [v39 waitUntilCompleted];

                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();

                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        return;
                      }

                      if (*(v1 + 72))
                      {
                        v35 = v34;
                        [v34 setRenderPipelineState:?];
                        [v35 setVertexBuffer:*(v1 + 40) offset:0 atIndex:0];
                        [v35 setVertexBuffer:*(v1 + 48) offset:0 atIndex:1];
                        [v35 setFragmentTexture:v15 atIndex:0];
                        [v35 setFragmentTexture:v8 atIndex:1];
                        [v35 setFragmentBytes:&v40 length:16 atIndex:0];
                        [v35 drawPrimitives:4 vertexStart:0 vertexCount:4];
                        [v35 endEncoding];
                        swift_unknownObjectRelease();
                        goto LABEL_29;
                      }

                      goto LABEL_48;
                    }

                    goto LABEL_44;
                  }

LABEL_43:
                  __break(1u);
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000028FC()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void *sub_10000292C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10000297C()
{
  sub_10000292C();

  return swift_deallocClassInstance();
}

__n128 sub_1000029D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000029E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002A04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_100002A40(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100002A54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002A74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

__n128 sub_100002AD8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002AE4(uint64_t a1, int a2)
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

uint64_t sub_100002B04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100002B60(uint64_t a1, id *a2)
{
  result = sub_100026A00();
  *a2 = 0;
  return result;
}

uint64_t sub_100002BD8(uint64_t a1, id *a2)
{
  v3 = sub_100026A10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002C58@<X0>(uint64_t *a1@<X8>)
{
  sub_100026A20();
  v2 = sub_1000269F0();

  *a1 = v2;
  return result;
}

uint64_t sub_100002C9C()
{
  sub_100026A20();
  v0 = sub_100026AD0();

  return v0;
}

uint64_t sub_100002CD8(uint64_t a1)
{
  sub_100026A20();
  sub_100026A90();
}

Swift::Int sub_100002D2C(uint64_t a1)
{
  sub_100026A20();
  sub_100026DC0();
  sub_100026A90();
  v1 = sub_100026E10();

  return v1;
}

uint64_t sub_100002DA0(void *a1, uint64_t *a2)
{
  v2 = sub_100026A20();
  v4 = v3;
  if (v2 == sub_100026A20() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100026D60();
  }

  return v7 & 1;
}

uint64_t sub_100002E28@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000269F0();

  *a2 = v3;
  return result;
}

uint64_t sub_100002E70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026A20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlassParameters(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_100002EE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002F30(uint64_t a1)
{
  v2 = sub_100003030(&qword_100041F90, &unk_100028E48);
  v3 = sub_100003030(&unk_100040C90, &unk_100028D9C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003030(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000030B0@<X0>(uint64_t *a1@<X8>)
{
  sub_100026970();
  swift_allocObject();
  sub_100026980();
  sub_100026940();
  swift_allocObject();

  sub_100026950();
  sub_100003598(&qword_100040F00, &unk_100028F10);
  sub_100026220();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100028E90;
  sub_1000035E0(&qword_100040F08, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100026210();
  sub_1000035E0(&qword_100040F10, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100026210();

  *a1 = v2;
  return result;
}

id sub_10000330C(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100003350()
{
  [objc_allocWithZone(type metadata accessor for MonogramPosterUpdater()) init];
  sub_100003598(&qword_100040EF0, &unk_100028EA0);
  swift_allocObject();
  sub_100026960();
  sub_10000365C(&qword_100040EF8, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100026670();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000034B4();
  sub_10000365C(&qword_100040EE8, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100026650();
  return 0;
}

unint64_t sub_1000034B4()
{
  result = qword_100040EE0;
  if (!qword_100040EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100040EE0);
  }

  return result;
}

uint64_t sub_100003508(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003598(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000035E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000365C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003508(&qword_100040EF0, &unk_100028EA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000036AC()
{
  v1 = v0;
  v2 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v98 - v3;
  v5 = sub_100026610();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v99 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MonogramPosterBackgroundViewController(0);
  v103.receiver = v0;
  v103.super_class = v8;
  objc_msgSendSuper2(&v103, "viewDidLoad");
  v9 = objc_opt_self();
  v10 = [v9 currentEnvironment];
  v11 = [v10 featureFlags];

  LODWORD(v10) = [v11 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v10 || (v12 = [v9 currentEnvironment], v13 = objc_msgSend(v12, "featureFlags"), v12, LODWORD(v12) = objc_msgSend(v13, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), !v12))
  {
    v18 = [v0 view];
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = [objc_allocWithZone(type metadata accessor for BackgroundSimulationView(0)) initWithFrame:{v21, v23, v25, v27}];
      v29 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView;
      v30 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
      *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView] = v28;
      v31 = v28;

      if (v31)
      {
        [v31 setAutoresizingMask:18];
      }

      v32 = [v1 view];
      if (v32)
      {
        if (*&v1[v29])
        {
          v33 = v32;
          [v32 addSubview:?];
LABEL_32:

          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  swift_beginAccess();
  sub_100004F70(&v1[v14], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004FE0(v4);
    v15 = [v1 traitCollection];
    v16 = [v15 userInterfaceStyle];

    v17 = v99;
    if (v16 == 2)
    {
      sub_1000264B0();
    }

    else
    {
      sub_1000264C0();
    }
  }

  else
  {
    v17 = v99;
    (*(v6 + 32))(v99, v4, v5);
  }

  v34 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  v35 = 1.0;
  if (v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32])
  {
    v36 = 1.0;
    goto LABEL_20;
  }

  v37 = v34[3];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v39 = v38;
  [v38 frame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v104.origin.x = v41;
  v104.origin.y = v43;
  v104.size.width = v45;
  v104.size.height = v47;
  v36 = v37 / CGRectGetHeight(v104);
  if (v34[4])
  {
LABEL_20:
    _s5ModelCMa(0);
    swift_allocObject();
    v59 = sub_1000058A8(v17, v36, v35);
    v60 = objc_allocWithZone(sub_100003598(&qword_100040F90, qword_1000290E0));
    v100 = sub_1000052D0;
    v101 = v59;
    v102 = 0;

    v61 = sub_100026800();
    v62 = [v61 view];
    if (v62)
    {
      v63 = v62;
      [v62 setTranslatesAutoresizingMaskIntoConstraints:0];

      v64 = [v1 view];
      if (v64)
      {
        v65 = v64;
        v66 = [v61 view];
        if (v66)
        {
          v67 = v66;
          [v65 addSubview:v66];

          [v1 addChildViewController:v61];
          sub_100003598(&qword_100040F98, &qword_1000293D0);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_100028F20;
          v69 = [v61 view];
          if (v69)
          {
            v70 = v69;
            v71 = [v69 widthAnchor];

            v72 = [v1 view];
            if (v72)
            {
              v73 = v72;
              v74 = [v72 widthAnchor];

              v75 = [v71 constraintEqualToAnchor:v74 multiplier:1.0];
              *(v68 + 32) = v75;
              v76 = [v61 view];
              if (v76)
              {
                v77 = v76;
                v78 = [v76 heightAnchor];

                v79 = [v1 view];
                if (v79)
                {
                  v80 = v79;
                  v81 = [v79 heightAnchor];

                  v82 = [v78 constraintEqualToAnchor:v81 multiplier:1.0];
                  *(v68 + 40) = v82;
                  v83 = [v61 view];
                  if (v83)
                  {
                    v84 = v83;
                    v85 = [v83 centerXAnchor];

                    v86 = [v1 view];
                    if (v86)
                    {
                      v87 = v86;
                      v88 = [v86 centerXAnchor];

                      v89 = [v85 constraintEqualToAnchor:v88];
                      *(v68 + 48) = v89;
                      v90 = [v61 view];

                      if (v90)
                      {
                        v91 = [v90 centerYAnchor];

                        v92 = [v1 view];
                        if (v92)
                        {
                          v93 = v92;
                          v94 = objc_opt_self();
                          v95 = [v93 centerYAnchor];

                          v96 = [v91 constraintEqualToAnchor:v95];
                          *(v68 + 56) = v96;
                          sub_1000052D8();
                          isa = sub_100026B00().super.isa;

                          [v94 activateConstraints:isa];

                          *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel] = v59;

                          v33 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController];
                          *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController] = v61;
                          goto LABEL_32;
                        }

                        goto LABEL_46;
                      }

LABEL_45:
                      __break(1u);
LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v48 = v34[2];
  v49 = [v1 view];
  if (v49)
  {
    v50 = v49;
    [v49 frame];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v105.origin.x = v52;
    v105.origin.y = v54;
    v105.size.width = v56;
    v105.size.height = v58;
    v35 = v48 / CGRectGetWidth(v105);
    goto LABEL_20;
  }

LABEL_48:
  __break(1u);
}

void sub_10000402C()
{
  v1 = v0;
  v2 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v2 - 8);
  v90 = &v88 - v3;
  v4 = sub_100026610();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v91 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v88 - v8;
  v9 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor];
  v10 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor;
  v11 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor];
  v12 = v9;
  v13 = v11;
  *&v14 = sub_10000F6F4();
  v94 = v15;
  *v95 = v14;

  sub_10000FB8C(&off_1000394E0);
  v94 = v17;
  *v95 = v16;
  pow(*&v16, 10.0);
  pow(1.0 - *v95, 10.0);
  sub_10000FB8C(&off_100039640);
  v19.f64[0] = sub_10000FD24(0, 0.0, v18);
  v20 = v19;
  __asm { FMOV            V0.2D, #1.0 }

  *&v26 = sub_10000FDD8(_Q0, _Q0.f64[0], v20);
  v94 = v26;
  *v95 = v27;
  v28 = *(&v26 + 1);
  v29 = *(&v27 + 1);
  v30 = objc_allocWithZone(UIColor);
  v31 = [v30 initWithRed:*&v94 green:v28 blue:*v95 alpha:v29];
  v32 = *&v1[v10];
  v33 = v12;
  v34 = v32;
  v35 = v31;
  v36 = sub_100026680();
  v37 = sub_100026B90();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412802;
    *(v38 + 4) = v33;
    *(v38 + 12) = 2112;
    *(v38 + 14) = v35;
    *v39 = v33;
    v39[1] = v35;
    *(v38 + 22) = 2112;
    *(v38 + 24) = v34;
    v39[2] = v34;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "Updating background layer with top color: %@, mid color: %@, bottom color: %@", v38, 0x20u);
    sub_100003598(&qword_100040F88, &qword_1000290D8);
    swift_arrayDestroy();
  }

  v43 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
  if (v43 && (v44 = [v43 layer]) != 0)
  {
    v45 = v44;
    type metadata accessor for BackgroundSimulationLayer(0);
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v95[0] = v46;
      v47 = v45;
      sub_10000E7D0(v33, v35, v34);
    }

    else
    {
      v95[0] = 0;
    }
  }

  else
  {
    v95[0] = 0;
  }

  v93 = v4;
  *&v94 = v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008C70(v33, v35, v34);
    swift_unknownObjectRelease();
  }

  v48 = objc_opt_self();
  v49 = [v48 currentEnvironment];
  v50 = [v49 featureFlags];

  LODWORD(v49) = [v50 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v49)
  {
    v51 = [v48 currentEnvironment];
    v52 = [v51 featureFlags];

    LODWORD(v51) = [v52 isFeatureEnabled:7];
    swift_unknownObjectRelease();
    if (v51)
    {
      if ([v1 isViewLoaded])
      {
        v53 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel];
        if (!v53)
        {
          goto LABEL_36;
        }

        v89 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel;
        v54 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
        swift_beginAccess();
        v55 = v90;
        sub_100004F70(&v1[v54], v90);
        v56 = v93;
        v57 = v94;
        v58 = (*(v94 + 48))(v55, 1, v93);
        v88 = v53;
        if (v58 == 1)
        {

          sub_100004FE0(v55);
          v59 = [v1 traitCollection];
          v60 = [v59 userInterfaceStyle];

          v61 = v92;
          if (v60 == 2)
          {
            sub_1000264B0();
          }

          else
          {
            sub_1000264C0();
          }

          v56 = v93;
        }

        else
        {
          v61 = v92;
          (*(v57 + 32))(v92, v55, v56);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        (*(v57 + 16))(v91, v61, v56);
        sub_100026720();
        (*(v57 + 8))(v61, v56);
        v63 = v89;
        if (!*&v1[v89])
        {
          goto LABEL_36;
        }

        if (v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32])
        {

          v64 = 1.0;
        }

        else
        {
          v65 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 24];

          v66 = [v1 view];
          if (!v66)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            return;
          }

          v67 = v66;
          [v66 frame];
          v69 = v68;
          v71 = v70;
          v73 = v72;
          v75 = v74;

          v98.origin.x = v69;
          v98.origin.y = v71;
          v98.size.width = v73;
          v98.size.height = v75;
          v64 = v65 / CGRectGetHeight(v98);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v96 = v64;
        sub_100026720();
        if (!*&v1[v63])
        {
LABEL_36:

          return;
        }

        if (v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32])
        {

          v76 = 1.0;
LABEL_35:
          swift_getKeyPath();
          swift_getKeyPath();
          v96 = v76;
          sub_100026720();
          goto LABEL_36;
        }

        v77 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 16];

        v78 = [v1 view];
        if (v78)
        {
          v79 = v78;
          [v78 frame];
          v81 = v80;
          v83 = v82;
          v85 = v84;
          v87 = v86;

          v99.origin.x = v81;
          v99.origin.y = v83;
          v99.size.width = v85;
          v99.size.height = v87;
          v76 = v77 / CGRectGetWidth(v99);
          goto LABEL_35;
        }

        goto LABEL_38;
      }
    }
  }

  v62 = v95[0];
}

id sub_10000486C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  v7 = sub_100026610();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel] = 0;
  v8 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor;
  v10 = objc_opt_self();
  *&v3[v9] = [v10 grayColor];
  v11 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor;
  *&v3[v11] = [v10 grayColor];
  v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController__backgroundColorLayer] = 0;
  sub_100026690();
  if (a2)
  {
    v12 = sub_1000269F0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for MonogramPosterBackgroundViewController(0);
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_100004AB4(void *a1)
{
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  v4 = sub_100026610();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel] = 0;
  v5 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor;
  v7 = objc_opt_self();
  *&v1[v6] = [v7 grayColor];
  v8 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor;
  *&v1[v8] = [v7 grayColor];
  v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController__backgroundColorLayer] = 0;
  sub_100026690();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MonogramPosterBackgroundViewController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_100004C98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MonogramPosterBackgroundViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MonogramPosterBackgroundViewController(uint64_t a1)
{
  result = qword_100040F70;
  if (!qword_100040F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004E10(uint64_t a1)
{
  sub_100004F18(319);
  if (v1 <= 0x3F)
  {
    sub_1000266A0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100004F18(uint64_t a1)
{
  if (!qword_100040F80)
  {
    sub_100026610();
    v1 = sub_100026C30();
    if (!v2)
    {
      atomic_store(v1, &qword_100040F80);
    }
  }
}

uint64_t sub_100004F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004FE0(uint64_t a1)
{
  v2 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005060()
{
  v1 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_100026610();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  if (*&v0[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel])
  {
    v12 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
    swift_beginAccess();
    sub_100004F70(&v0[v12], v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_100004FE0(v3);
      v13 = [v0 traitCollection];
      v14 = [v13 userInterfaceStyle];

      if (v14 == 2)
      {
        sub_1000264B0();
      }

      else
      {
        sub_1000264C0();
      }
    }

    else
    {
      (*(v5 + 32))(v11, v3, v4);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v5 + 16))(v8, v11, v4);
    sub_100026720();
    return (*(v5 + 8))(v11, v4);
  }

  return result;
}

unint64_t sub_1000052D8()
{
  result = qword_100041A70;
  if (!qword_100041A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041A70);
  }

  return result;
}

uint64_t sub_10000534C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

double sub_1000053E8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v3;
}

uint64_t sub_100005454()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();
}

uint64_t sub_1000054CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

id *sub_100005540()
{
  v0 = type metadata accessor for MeshGradientTransformer(0);
  __chkstk_darwin(v0);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100026610();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  if (*&v11[0] > 2)
  {
    if (*&v11[0] == 3)
    {
      sub_100006D90(v6);
      goto LABEL_9;
    }

    if (*&v11[0] == 4)
    {
      sub_100006734(v6);
      goto LABEL_9;
    }

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100026710();

    goto LABEL_9;
  }

  if (*&v11[0] != 2)
  {
    goto LABEL_7;
  }

  sub_100005F14(v6);
LABEL_9:
  (*(v4 + 16))(v2, v6, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v7 = v11[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v8 = v11[0];
  *&v2[*(v0 + 20)] = v7;
  *&v2[*(v0 + 24)] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v9 = sub_10000BD50(v11[0]);
  sub_100007B88(v2);
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1000058A8(char *a1, double a2, double a3)
{
  v4 = v3;
  v37 = a1;
  v7 = sub_100026610();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = __chkstk_darwin(v7);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v33 = &v30 - v10;
  v32 = sub_100003598(&qword_100041208, &qword_100029300);
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v30 - v12;
  v14 = sub_100003598(&qword_1000411F0, &qword_1000292E8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v31 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__lightAngle;
  type metadata accessor for LightAngleObserver(0);
  v18 = swift_allocObject();
  v19 = &_swiftEmptySetSingleton;
  v18[2] = &_swiftEmptySetSingleton;
  v18[3] = [objc_allocWithZone(type metadata accessor for DisplayLink(0)) init];
  v18[4] = 0;
  v39 = 0xBF91DF46A2529D39;
  v40 = 1;
  v41 = 0;
  sub_100026700();
  v39 = v18;
  sub_100026700();
  (*(v15 + 32))(v3 + v31, v17, v14);
  v20 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__interfaceOrientation;
  v39 = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  sub_100026700();
  (*(v11 + 32))(v3 + v20, v13, v32);
  if (_swiftEmptyArrayStorage >> 62 && sub_100026D20())
  {
    v19 = sub_100007C98(_swiftEmptyArrayStorage);
  }

  *(v3 + OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model_cancellables) = v19;
  v22 = v35;
  v21 = v36;
  v23 = *(v35 + 16);
  v24 = v33;
  v23(v33, v37, v36);
  swift_beginAccess();
  v23(v34, v24, v21);
  sub_100026700();
  v25 = *(v22 + 8);
  v25(v24, v21);
  swift_endAccess();
  swift_beginAccess();
  v38 = a2;
  sub_100026700();
  swift_endAccess();
  swift_beginAccess();
  v38 = a3;
  sub_100026700();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  sub_100007F2C(&qword_100041210, type metadata accessor for LightAngleObserver, &unk_100029F88);
  v26 = sub_1000266D0();

  v39 = v26;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100007C1C;
  *(v28 + 24) = v27;
  sub_1000266F0();
  sub_100026740();

  swift_beginAccess();
  sub_1000266B0();
  swift_endAccess();

  v25(v37, v21);
  return v4;
}

uint64_t sub_100005E60(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s5ModelCMa(0);
    sub_100007F2C(&qword_100041230, _s5ModelCMa, &unk_100029100);
    sub_1000266D0();

    sub_1000266E0();
  }

  return result;
}

uint64_t sub_100005F14@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v42 = sub_1000264A0();
  v38 = *(v42 - 8);
  v4 = __chkstk_darwin(v42);
  v41 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v31 - v6;
  v7 = sub_100026610();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = a1;
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v11 = sub_1000265A0();
  v12 = *(v8 + 8);
  v12(v10, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v13 = sub_1000265C0();
  v45 = v8 + 8;
  result = (v12)(v10, v7);
  v49 = _swiftEmptyArrayStorage;
  if (v13 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v43 = v12;
  v44 = v7;
  if (!v13)
  {
LABEL_21:
    sub_100006560();
    return sub_1000265F0();
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v36 = v38 + 16;
    v35 = (v38 + 8);
    v47 = _swiftEmptyArrayStorage;
    v34 = (v38 + 32);
    v32 = v13;
    v37 = v2;
    v39 = v11;
    while (1)
    {
      v33 = v15;
      if (v11)
      {
        break;
      }

LABEL_5:
      v15 = v33 + 1;
      if (v33 + 1 == v32)
      {
        goto LABEL_21;
      }
    }

    v46 = v15 * v11;
    if ((v15 * v11) >> 64 == (v15 * v11) >> 63)
    {
      v16 = 0;
      while (1)
      {
        v18 = v46 + v16;
        if (__OFADD__(v46, v16))
        {
          break;
        }

        v48 = v16;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100026710();

        v19 = sub_1000265E0();
        v20 = v43;
        v21 = v44;
        v43(v10, v44);
        v22 = *(v19 + 16);

        if (v18 >= v22)
        {
          v17 = v48;
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_100026710();

          v23 = sub_1000265E0();
          result = v20(v10, v21);
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v18 >= *(v23 + 16))
          {
            goto LABEL_24;
          }

          v24 = (*(v38 + 80) + 32) & ~*(v38 + 80);
          v25 = *(v38 + 72);
          (*(v38 + 16))(v40, v23 + v24 + v25 * v18, v42);

          sub_100026450();
          sub_100026450();
          sub_100026460();
          sub_100026480();
          sub_100026470();
          sub_100026490();
          sub_100026430();
          sub_100026410();
          sub_100026400();
          sub_100026440();
          v26 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_100020490(0, v26[2] + 1, 1, v26);
          }

          v17 = v48;
          v28 = v26[2];
          v27 = v26[3];
          if (v28 >= v27 >> 1)
          {
            v47 = sub_100020490((v27 > 1), v28 + 1, 1, v26);
          }

          else
          {
            v47 = v26;
          }

          v29 = v42;
          (*v35)(v40, v42);
          v30 = v47;
          v47[2] = (v28 + 1);
          result = (*v34)(v30 + v24 + v28 * v25, v41, v29);
          v49 = v30;
        }

        v16 = v17 + 1;
        v11 = v39;
        if (v39 == v16)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100006560()
{
  v1 = sub_1000264A0();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return result;
  }

  v7 = v6 - 1;
  if (v6 == 1)
  {
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v15 = v0;
  if ((result & 1) == 0)
  {
LABEL_17:
    result = sub_100007ABC(v5);
    v5 = result;
  }

  v16 = (v2 + 24);
  v17 = v2 + 16;
  v8 = 1;
  while (1)
  {
    v10 = v8 - 1;
    if (v8 - 1 == v7)
    {
      goto LABEL_6;
    }

    v11 = *(v5 + 16);
    if (v10 >= v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v14 = v12 + v13 * v10;
    (*(v2 + 16))(v18, v14, v1);
    if (v7 >= v11)
    {
      goto LABEL_16;
    }

    result = (*v16)(v14, v12 + v13 * v7, v1);
    if (v7 >= *(v5 + 16))
    {
      break;
    }

    result = (*(v2 + 40))(v12 + v13 * v7, v18, v1);
LABEL_6:
    if (v8++ >= --v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v15 = v5;
  return result;
}

uint64_t sub_100006734@<X0>(void *a1@<X8>)
{
  v45 = sub_1000264A0();
  v41 = *(v45 - 8);
  v3 = __chkstk_darwin(v45);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v35 - v5;
  v6 = sub_100026610();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v10 = v9;

  v11 = sub_1000265A0();
  v12 = *(v7 + 8);
  v12(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v48 = sub_1000265C0();
  v49 = v7 + 8;
  v46 = v12;
  result = (v12)(v9, v6);
  if (v11 < 0)
  {
    goto LABEL_26;
  }

  v35 = a1;
  if (v11)
  {
    if (v48 < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v43 = v9;
    v14 = 0;
    v38 = v41 + 16;
    v37 = (v41 + 8);
    v50 = _swiftEmptyArrayStorage;
    v36 = (v41 + 32);
    v15 = &unk_100029138;
    v16 = v1;
    v39 = v6;
    v42 = v11;
    while (!v48)
    {
LABEL_5:
      if (++v14 == v11)
      {
        goto LABEL_21;
      }
    }

    v17 = 0;
    v47 = v14;
    while (1)
    {
      v18 = v17 * v11;
      if ((v17 * v11) >> 64 != (v17 * v11) >> 63)
      {
        break;
      }

      v19 = v18 + v14;
      if (__OFADD__(v18, v14))
      {
        goto LABEL_23;
      }

      v51 = v17;
      v20 = v15;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100026710();

      v21 = sub_1000265E0();
      v22 = v6;
      v23 = v6;
      v24 = v46;
      v46(v10, v22);
      v25 = *(v21 + 16);

      if (v19 >= v25)
      {
        v15 = v20;
        v6 = v23;
        v14 = v47;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v26 = v16;
        sub_100026710();

        v27 = sub_1000265E0();
        result = v24(v10, v23);
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v19 >= *(v27 + 16))
        {
          goto LABEL_25;
        }

        v28 = v40;
        v29 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v30 = *(v41 + 72);
        (*(v41 + 16))(v40, v27 + v29 + v30 * v19, v45);

        sub_100026450();
        sub_100026450();
        sub_100026490();
        sub_100026470();
        sub_100026460();
        sub_100026480();
        sub_100026430();
        sub_100026410();
        sub_100026400();
        sub_100026440();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_100020490(0, v50[2] + 1, 1, v50);
        }

        v14 = v47;
        v32 = v50[2];
        v31 = v50[3];
        if (v32 >= v31 >> 1)
        {
          v50 = sub_100020490((v31 > 1), v32 + 1, 1, v50);
        }

        v33 = v45;
        (*v37)(v28, v45);
        v34 = v50;
        v50[2] = (v32 + 1);
        result = (*v36)(v34 + v29 + v32 * v30, v44, v33);
        v16 = v26;
        v6 = v39;
        v15 = &unk_100029138;
      }

      v17 = v51 + 1;
      v11 = v42;
      if (v48 == v51 + 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_21:
  sub_1000265F0();
  sub_1000265B0();
  return sub_1000265D0();
}

uint64_t sub_100006D90@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v42 = sub_1000264A0();
  v39 = *(v42 - 8);
  v4 = __chkstk_darwin(v42);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = v34 - v6;
  v7 = sub_100026610();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v34[1] = a1;
  v11 = v7;
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v12 = sub_1000265A0();
  v13 = v8 + 8;
  v14 = *(v8 + 8);
  v14(v10, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v48 = sub_1000265C0();
  result = (v14)(v10, v11);
  if (v12 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v12)
  {
LABEL_27:
    sub_1000265F0();
    sub_1000265B0();
    return sub_1000265D0();
  }

  if ((v48 & 0x8000000000000000) == 0)
  {
    v44 = v10;
    v46 = v13;
    v37 = v39 + 16;
    v36 = (v39 + 8);
    v35 = (v39 + 32);
    v16 = _swiftEmptyArrayStorage;
    v17 = v12;
    v38 = v11;
    v45 = v14;
    v43 = v12;
    while (v12 >= v17)
    {
      --v17;
      if (v48)
      {
        v18 = 0;
        v47 = v17;
        while (1)
        {
          v19 = v18 * v12;
          if ((v18 * v12) >> 64 != (v18 * v12) >> 63)
          {
            break;
          }

          v20 = v19 + v17;
          if (__OFADD__(v19, v17))
          {
            goto LABEL_22;
          }

          v49 = v16;
          swift_getKeyPath();
          swift_getKeyPath();
          v21 = v44;
          sub_100026710();

          v22 = sub_1000265E0();
          v23 = v11;
          v24 = v11;
          v25 = v45;
          v45(v21, v23);
          v26 = *(v22 + 16);

          if (v20 >= v26)
          {
            v11 = v24;
            v16 = v49;
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_100026710();

            v27 = sub_1000265E0();
            v25(v21, v24);
            if (v20 < 0)
            {
              goto LABEL_23;
            }

            if (v20 >= *(v27 + 16))
            {
              goto LABEL_24;
            }

            v28 = v2;
            v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
            v30 = *(v39 + 72);
            (*(v39 + 16))(v40, v27 + v29 + v30 * v20, v42);

            sub_100026450();
            sub_100026450();
            sub_100026470();
            sub_100026490();
            sub_100026480();
            sub_100026460();
            sub_100026430();
            sub_100026410();
            sub_100026400();
            sub_100026440();
            v16 = v49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_100020490(0, v16[2] + 1, 1, v16);
            }

            v32 = v16[2];
            v31 = v16[3];
            if (v32 >= v31 >> 1)
            {
              v16 = sub_100020490((v31 > 1), v32 + 1, 1, v16);
            }

            v33 = v42;
            (*v36)(v40, v42);
            v16[2] = (v32 + 1);
            (*v35)(v16 + v29 + v32 * v30, v41, v33);
            v2 = v28;
            v11 = v38;
          }

          ++v18;
          v17 = v47;
          v12 = v43;
          if (v48 == v18)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        break;
      }

LABEL_5:
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000073C4()
{
  v1 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__lightAngle;
  v2 = sub_100003598(&qword_1000411F0, &qword_1000292E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__verticalTranslation;
  v4 = sub_100003598(&qword_1000411F8, &qword_1000292F0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__horizontalTranslation, v4);
  v6 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__gradientDefinition;
  v7 = sub_100003598(&qword_100041200, &qword_1000292F8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__interfaceOrientation;
  v9 = sub_100003598(&qword_100041208, &qword_100029300);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t _s5ModelCMa(uint64_t a1)
{
  result = qword_100040FF0;
  if (!qword_100040FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000075E4(uint64_t a1)
{
  sub_1000077D4(319, &qword_100041000, type metadata accessor for LightAngleObserver);
  if (v1 <= 0x3F)
  {
    sub_100007784();
    if (v2 <= 0x3F)
    {
      sub_1000077D4(319, &qword_100041010, &type metadata accessor for GradientDefinition);
      if (v3 <= 0x3F)
      {
        sub_1000077D4(319, &unk_100041018, type metadata accessor for UIInterfaceOrientation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100007784()
{
  if (!qword_100041008)
  {
    v0 = sub_100026730();
    if (!v1)
    {
      atomic_store(v0, &qword_100041008);
    }
  }
}

void sub_1000077D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100026730();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100007834@<X0>(uint64_t *a2@<X8>)
{
  _s5ModelCMa(0);
  result = sub_1000266D0();
  *a2 = result;
  return result;
}

double sub_1000078B8@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_100007948(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

uint64_t sub_1000079C0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  *a2 = v4;
  return result;
}

uint64_t sub_100007A40(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

uint64_t sub_100007B88(uint64_t a1)
{
  v2 = type metadata accessor for MeshGradientTransformer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007BE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007C24()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100007C98(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_100026D20();
    if (result)
    {
LABEL_3:
      sub_100003598(&qword_100041218, &qword_100029308);
      result = sub_100026C80();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_100026D20();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_100026CA0();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_1000266C0();
    sub_100007F2C(&qword_100041220, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = sub_1000269B0();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100007F2C(&qword_100041228, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = sub_1000269C0();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100007F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100007F74(void *a1)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100028F20;
  v6 = [a1 leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 trailingAnchor];
  v10 = [v2 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 topAnchor];
  v13 = [v2 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_1000052D8();
  isa = sub_100026B00().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_1000081C8(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout;
  v4 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout) = a1;
  if (v4)
  {
    v5 = objc_opt_self();
    sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
    isa = sub_100026B00().super.isa;
    [v5 deactivateConstraints:isa];

    v2 = *(v1 + v3);
  }

  if (v2)
  {
    v7 = objc_opt_self();
    sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);

    v8 = sub_100026B00().super.isa;

    [v7 activateConstraints:v8];
  }
}

void sub_1000082D0()
{
  v1 = v0;
  v2 = sub_100026680();
  v3 = sub_100026B90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = *(&v1->isa + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot);

    _os_log_impl(&_mh_execute_header, v2, v3, "Updating monogram layer with isSnapshot: %{BOOL}d", v4, 8u);
  }

  else
  {

    v2 = v1;
  }

  v5 = *(&v1->isa + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView);
  if (v5)
  {
    v6 = *(&v1->isa + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot);
    *(v5 + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot) = v6;
    v7 = *(v5 + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion);
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot);
      *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = v6;
      if (v6 != v8)
      {
        v9 = *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
        if (v6)
        {
          v10 = &selRef_stopDeviceMotionUpdates;
        }

        else
        {
          v10 = &selRef_startDeviceMotionUpdates;
        }

        v11 = *v10;

        [v9 v11];
      }
    }
  }
}

void sub_10000844C()
{
  v1 = sub_100026240();
  __chkstk_darwin(v1 - 8);
  v66 = v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100026260();
  __chkstk_darwin(v3 - 8);
  v63[1] = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100026280();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = __chkstk_darwin(v5);
  v64 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v65 = v63 - v9;
  __chkstk_darwin(v8);
  v67 = v63 - v10;
  v11 = sub_1000262A0();
  v63[0] = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v63 - v15;
  v17 = type metadata accessor for MonogramPosterViewController(0);
  v70.receiver = v0;
  v70.super_class = v17;
  objc_msgSendSuper2(&v70, "viewDidLoad");
  v18 = objc_opt_self();
  v19 = [v18 currentEnvironment];
  v20 = [v19 featureFlags];

  LODWORD(v19) = [v20 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v19 || (v21 = [v18 currentEnvironment], v22 = objc_msgSend(v21, "featureFlags"), v21, LODWORD(v21) = objc_msgSend(v22, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), !v21))
  {
    v41 = [v0 view];
    if (v41)
    {
      v42 = v41;
      [v41 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v51 = [objc_allocWithZone(type metadata accessor for MonogramSimulationView(0)) initWithFrame:{v44, v46, v48, v50}];
      v52 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView;
      v53 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView];
      *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView] = v51;

      v54 = [v0 view];
      if (v54)
      {
        if (*&v0[v52])
        {
          v38 = v54;
          [v54 addSubview:?];
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] == 1 && ((v23 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8], (v23 & 0x2000000000000000) != 0) ? (v24 = HIBYTE(v23) & 0xF) : (v24 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString] & 0xFFFFFFFFFFFFLL), !v24))
  {
    sub_100026290();
    v55 = objc_allocWithZone(sub_100003598(qword_1000412F0, &unk_1000293E0));
    v56 = v63[0];
    (*(v63[0] + 16))(v14, v16, v11);
    v36 = sub_100026800();
    (*(v56 + 8))(v16, v11);
    v38 = [v36 view];
    [v0 addChildViewController:v36];
    v39 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView;
    v40 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView;
  }

  else
  {
    if (v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] != 1)
    {
LABEL_18:
      sub_10000AC20();
      return;
    }

    v25 = sub_1000269F0();
    v26 = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v26)
    {
      v27 = 180.0;
    }

    else
    {
      v27 = 210.0;
    }

    v28 = [*&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
    v29 = [objc_opt_self() fontWithDescriptor:v28 size:v27];

    sub_100026230();
    sub_100026250();
    v30 = v67;
    sub_100026270();
    v32 = v68;
    v31 = v69;
    v33 = *(v68 + 16);
    v34 = v65;
    v33(v65, v30, v69);
    v35 = objc_allocWithZone(sub_100003598(&qword_1000412E8, &qword_1000293D8));
    v33(v64, v34, v31);
    v36 = sub_100026800();
    v37 = *(v32 + 8);
    v37(v34, v31);
    v38 = [v36 view];
    [v0 addChildViewController:v36];
    v37(v30, v31);
    v39 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView;
    v40 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView;
  }

  v57 = *v40;
  v58 = *&v0[v57];
  *&v0[v57] = v36;

  v59 = *&v0[*v39];
  *&v0[*v39] = 0;

  if (!v38)
  {
    goto LABEL_18;
  }

  v60 = [objc_opt_self() clearColor];
  [v38 setBackgroundColor:v60];

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = [v0 view];
  if (v61)
  {
    v62 = v61;
    [v61 addSubview:v38];

    sub_100008F28();
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
}

void sub_100008C70(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = sub_100026680();
  v11 = sub_100026B90();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315650;
    v31 = v7;
    v13 = [v7 debugDescription];
    v14 = sub_100026A20();
    v16 = v15;

    v17 = sub_100025380(v14, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = [v8 debugDescription];
    v19 = sub_100026A20();
    v21 = v20;

    v22 = sub_100025380(v19, v21, &v33);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2080;
    v23 = [v9 debugDescription];
    v24 = sub_100026A20();
    v26 = v25;

    v27 = v24;
    v7 = v31;
    v28 = sub_100025380(v27, v26, &v33);

    *(v12 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating monogram layer with top color: %s, mid color: %s, bottom color: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  v29 = *(v4 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView);
  if (v29)
  {
    v30 = [v29 layer];
    if (v30)
    {
      v32 = v30;
      type metadata accessor for BackgroundSimulationLayer(0);
      if (swift_dynamicCastClass())
      {
        sub_10000E7D0(v7, v8, v9);
      }
    }
  }
}

void sub_100008F28()
{
  v1 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView];
    if (!v3)
    {
      return;
    }

    v2 = v3;
  }

  v82 = v2;
  v4 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  if ((v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32] & 1) == 0)
  {
    v36 = v4[2];
    v35 = v4[3];
    v38 = *v4;
    v37 = v4[1];
    sub_100003598(&qword_100040F98, &qword_1000293D0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100028F20;
    v40 = v1;
    v41 = [v82 view];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 widthAnchor];

      v44 = [v43 constraintEqualToConstant:v36];
      *(v39 + 32) = v44;
      v45 = [v82 view];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 heightAnchor];

        v48 = [v47 constraintEqualToConstant:v35];
        *(v39 + 40) = v48;
        v49 = [v82 view];
        if (v49)
        {
          v50 = v49;
          v51 = [v49 leadingAnchor];

          v52 = [v0 view];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 leadingAnchor];

            v84.origin.x = v38;
            v84.origin.y = v37;
            v84.size.width = v36;
            v84.size.height = v35;
            v55 = [v51 constraintEqualToAnchor:v54 constant:CGRectGetMinX(v84)];

            *(v39 + 48) = v55;
            v56 = [v82 view];
            if (v56)
            {
              v57 = v56;
              v58 = [v56 topAnchor];

              v59 = [v0 view];
              if (v59)
              {
                v60 = v59;
                v61 = [v59 topAnchor];

                v85.origin.x = v38;
                v85.origin.y = v37;
                v85.size.width = v36;
                v85.size.height = v35;
                v62 = [v58 constraintEqualToAnchor:v61 constant:CGRectGetMinY(v85)];

                *(v39 + 56) = v62;
                sub_1000081C8(v39);
                v63 = [objc_opt_self() standardPreferences];
                v64 = sub_1000269F0();
                LODWORD(v62) = [v63 userHasOptedInToPreference:v64];

                if (!v62)
                {
                  goto LABEL_26;
                }

                v65 = [objc_allocWithZone(UIView) initWithFrame:{v38, v37, v36, v35}];
                v66 = [v65 layer];
                v67 = objc_opt_self();
                v68 = [v67 redColor];
                v69 = [v68 CGColor];

                [v66 setBorderColor:v69];
                v70 = [v65 layer];
                [v70 setBorderWidth:2.0];

                v71 = [v67 clearColor];
                [v65 setBackgroundColor:v71];

                v72 = [v0 view];
                if (v72)
                {
                  v73 = v72;
                  [v72 addSubview:v65];

                  v74 = [v82 view];
                  if (v74)
                  {
                    v75 = v74;
                    v76 = [v74 layer];

                    [v76 setBorderWidth:2.0];
                    v77 = [v82 view];
                    if (v77)
                    {
                      v78 = v77;
                      v79 = [v77 layer];

                      v80 = [v67 purpleColor];
                      v81 = [v80 CGColor];

                      [v79 setBorderColor:v81];
                      goto LABEL_26;
                    }

LABEL_46:
                    __break(1u);
                    return;
                  }

LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

              goto LABEL_41;
            }

            goto LABEL_39;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100028F20;
  v6 = v1;
  v7 = [v82 view];
  if (!v7)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = v7;
  v9 = [v7 widthAnchor];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = v10;
  v12 = [v10 widthAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 multiplier:0.75];
  *(v5 + 32) = v13;
  v14 = [v82 view];
  if (!v14)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = v14;
  v16 = [v14 heightAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = v17;
  v19 = [v17 heightAnchor];

  v20 = [v16 constraintEqualToAnchor:v19 multiplier:0.5];
  *(v5 + 40) = v20;
  v21 = [v82 view];
  if (!v21)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v22 = v21;
  v23 = [v21 centerXAnchor];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v25 = v24;
  v26 = [v24 centerXAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v5 + 48) = v27;
  v28 = [v82 view];
  if (!v28)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v29 = v28;
  v30 = [v28 centerYAnchor];

  v31 = [v0 view];
  if (!v31)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v32 = v31;
  v33 = [v31 centerYAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v5 + 56) = v34;
  sub_1000081C8(v5);
LABEL_26:
}

void sub_1000097A4()
{
  v1 = v0;
  v2 = sub_100026240();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100026260();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100026280();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000262A0();
  __chkstk_darwin(v5 - 8);
  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v32.origin.x = v9;
    v32.origin.y = v11;
    v32.size.width = v13;
    v32.size.height = v15;
    Width = CGRectGetWidth(v32);
    v30 = sub_10001105C(Width);
    v17 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView];
    if (v17)
    {
      v18 = [v17 layer];
      if (v18)
      {
        v19 = v18;
        type metadata accessor for MonogramSimulationLayer(0);
        if (swift_dynamicCastClass())
        {
          sub_100010A04(v30);
        }
      }
    }

    if (v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] == 1 && ((v20 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8], (v20 & 0x2000000000000000) != 0) ? (v21 = HIBYTE(v20) & 0xF) : (v21 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString] & 0xFFFFFFFFFFFFLL), !v21))
    {
      v29 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView];
      if (v29)
      {
        v23 = v29;
        sub_100026290();
LABEL_17:
        sub_100026810();

        return;
      }
    }

    else
    {
      v22 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView];
      if (v22)
      {
        v23 = v22;

        v24 = sub_1000269F0();
        v25 = CNStringContainsChineseJapaneseKoreanCharacters();

        if (v25)
        {
          v26 = 180.0;
        }

        else
        {
          v26 = 210.0;
        }

        v27 = [*&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
        v28 = [objc_opt_self() fontWithDescriptor:v27 size:v26];

        sub_100026230();
        sub_100026250();
        sub_100026270();
        goto LABEL_17;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100009B64(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView];
  if (!v3)
  {
    oslog = sub_100026680();
    v60 = sub_100026BB0();
    if (os_log_type_enabled(oslog, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v60, "Simulation view is nil in updateLayout(for: orientation). Aborting layout update.", v61, 2u);
    }

    goto LABEL_26;
  }

  v5 = objc_opt_self();
  v6 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_portraitSimulationConstraints];
  sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
  v7 = v3;

  isa = sub_100026B00().super.isa;

  [v5 deactivateConstraints:isa];

  v9 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_landscapeSimulationConstraints];

  v10 = sub_100026B00().super.isa;

  [v5 deactivateConstraints:v10];

  v135 = v5;
  if (sub_10000B874(a1))
  {
    v11 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
    v134 = v7;
    if (v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32] & 1) != 0 || (v12 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect], (v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect + 32]) || (v14 = v11[2], v13 = v11[3], v16 = *v11, v15 = v11[1], v18 = v12[2], v17 = v12[3], v20 = *v12, v19 = v12[1], v145.origin.x = 0.0, v145.origin.y = 0.0, v145.size.width = 0.0, v145.size.height = 0.0, v138.origin.x = *v12, v138.origin.y = v19, v138.size.width = v18, v138.size.height = v17, CGRectEqualToRect(v138, v145)))
    {
      v21 = sub_100026680();
      v22 = sub_100026B90();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "No occlusion rect found. Setting default landscape constraints.", v23, 2u);
      }

      sub_100003598(&qword_100040F98, &qword_1000293D0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100028F20;
      v25 = v7;
      v26 = [v25 centerYAnchor];
      v27 = [v2 view];
      if (!v27)
      {
        goto LABEL_43;
      }

      v28 = v27;
      v29 = [v27 centerYAnchor];

      v30 = [v26 constraintEqualToAnchor:v29];
      *(v24 + 32) = v30;
      v31 = [v25 centerXAnchor];
      v32 = [v2 view];
      if (!v32)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v33 = v32;
      v34 = [v32 leadingAnchor];

      v35 = [v2 view];
      if (!v35)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v36 = v35;
      [v35 bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v139.origin.x = v38;
      v139.origin.y = v40;
      v139.size.width = v42;
      v139.size.height = v44;
      v45 = [v31 constraintEqualToAnchor:v34 constant:CGRectGetWidth(v139) * 0.25];

      *(v24 + 40) = v45;
      v46 = [v25 widthAnchor];
      v47 = [v2 view];
      if (!v47)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v48 = v47;
      v49 = [v47 widthAnchor];

      v50 = [v46 constraintEqualToAnchor:v49 multiplier:0.5];
      *(v24 + 48) = v50;
      v51 = [v25 heightAnchor];

      v52 = [v2 view];
      if (!v52)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v53 = v52;
      v54 = (v24 + 56);
      v55 = [v52 heightAnchor];

      v56 = [v51 constraintEqualToAnchor:v55];
    }

    else
    {
      v89 = sub_100026680();
      v90 = sub_100026B90();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&_mh_execute_header, v89, v90, "Found salient and occlusion rects. Setting landscape constraints accordingly.", v91, 2u);
      }

      v132 = v16;
      v133 = v15;
      v130 = v14;
      v131 = v13;

      v140.origin.x = v20;
      v140.origin.y = v19;
      v140.size.width = v18;
      v140.size.height = v17;
      MinX = CGRectGetMinX(v140);
      v92 = [v2 view];
      if (!v92)
      {
        goto LABEL_48;
      }

      v93 = v92;
      [v92 bounds];
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v101 = v100;

      v141.origin.x = v95;
      v141.origin.y = v97;
      v141.size.width = v99;
      v141.size.height = v101;
      Width = CGRectGetWidth(v141);
      v142.origin.x = v20;
      v142.origin.y = v19;
      v142.size.width = v18;
      v142.size.height = v17;
      v103 = CGRectGetMinX(v142);
      sub_100003598(&qword_100040F98, &qword_1000293D0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100029320;
      v104 = v7;
      v105 = [v104 topAnchor];
      v106 = [v2 view];
      if (!v106)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v107 = v106;
      v108 = [v106 topAnchor];

      v109 = [v105 constraintEqualToAnchor:v108];
      *(v24 + 32) = v109;
      v110 = [v104 bottomAnchor];
      v111 = [v2 view];
      if (!v111)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v112 = v111;
      v113 = [v111 bottomAnchor];

      v114 = [v110 constraintEqualToAnchor:v113];
      *(v24 + 40) = v114;
      v115 = [v104 centerXAnchor];
      v116 = [v2 view];
      if (!v116)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v117 = v116;
      v118 = [v116 leadingAnchor];

      v119 = [v115 constraintEqualToAnchor:v118 constant:v103 * 0.5];
      *(v24 + 48) = v119;
      v120 = [v104 widthAnchor];
      v121 = [v2 view];
      if (!v121)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v122 = v121;
      v123 = [v121 widthAnchor];

      v124 = [v120 constraintEqualToAnchor:v123 multiplier:MinX / Width];
      *(v24 + 56) = v124;
      v125 = [v104 heightAnchor];
      v143.origin.x = v132;
      v143.origin.y = v133;
      v143.size.width = v130;
      v143.size.height = v131;
      v126 = [v125 constraintEqualToConstant:CGRectGetHeight(v143)];

      *(v24 + 64) = v126;
      v51 = [v104 trailingAnchor];

      v127 = [v2 view];
      if (!v127)
      {
LABEL_53:
        __break(1u);
        return;
      }

      v128 = v127;
      v54 = (v24 + 72);
      v55 = [v127 leadingAnchor];

      v144.origin.x = v20;
      v144.origin.y = v19;
      v144.size.width = v18;
      v144.size.height = v17;
      v56 = [v51 constraintLessThanOrEqualToAnchor:v55 constant:CGRectGetMinX(v144)];
    }

    v57 = v56;

    *v54 = v57;
    *v9 = v24;
    v58 = v134;
    v59 = &stru_10003E000;
  }

  else
  {
    v62 = sub_100026680();
    v63 = sub_100026B90();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Applying portrait constraints", v64, 2u);
    }

    sub_100003598(&qword_100040F98, &qword_1000293D0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_100028F20;
    v58 = v7;
    v66 = v7;
    v67 = [v66 topAnchor];
    v68 = [v2 view];
    if (!v68)
    {
      goto LABEL_39;
    }

    v69 = v68;
    v70 = [v68 topAnchor];

    v71 = [v67 constraintEqualToAnchor:v70];
    *(v65 + 32) = v71;
    v72 = [v66 bottomAnchor];
    v73 = [v2 view];
    if (!v73)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v74 = v73;
    v75 = [v73 bottomAnchor];

    v76 = [v72 constraintEqualToAnchor:v75];
    *(v65 + 40) = v76;
    v77 = [v66 leadingAnchor];
    v78 = [v2 view];
    if (!v78)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v79 = v78;
    v80 = [v78 leadingAnchor];

    v81 = [v77 constraintEqualToAnchor:v80];
    *(v65 + 48) = v81;
    v82 = [v66 trailingAnchor];

    v83 = [v2 view];
    if (!v83)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v84 = v83;
    v85 = [v83 trailingAnchor];

    v86 = [v82 constraintEqualToAnchor:v85];
    *(v65 + 56) = v86;
    *v6 = v65;
    v59 = &stru_10003E000;
  }

  v87 = sub_100026B00().super.isa;

  [v135 activateConstraints:v87];

  v88 = [v2 *&v59[60].align];
  if (!v88)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  oslog = v88;
  [v88 setNeedsLayout];

LABEL_26:
}

void sub_10000A840()
{
  v1 = v0;
  if (sub_10000B6B0())
  {
    return;
  }

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel];
  [v2 addSubview:v4];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  Height = CGRectGetHeight(v40);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 window];

  if (v18)
  {
    [v18 bounds];
    Height = CGRectGetHeight(v41);
  }

  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100029330;
  v20 = [v4 centerXAnchor];
  v21 = [v1 view];
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 centerXAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v19 + 32) = v24;
  v25 = [v1 view];
  if (v25)
  {
    v26 = sub_10000B82C(0, &qword_1000412E0, UIView_ptr);
  }

  else
  {
    v26 = 0;
    v39[1] = 0;
    v39[2] = 0;
  }

  v39[0] = v25;
  v39[3] = v26;
  sub_1000263F0();
  v28 = v27;
  if (v26)
  {
    v29 = sub_10000B79C(v39, v26);
    v30 = *(v26 - 8);
    __chkstk_darwin(v29);
    v32 = v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v32);
    v33 = v4;
    v34 = sub_100026D50();
    (*(v30 + 8))(v32, v26);
    sub_10000B7E0(v39);
  }

  else
  {
    v35 = v4;
    v34 = 0;
  }

  v36 = objc_opt_self();
  v37 = [v36 constraintWithItem:v4 attribute:10 relatedBy:0 toItem:v34 attribute:4 multiplier:1.0 constant:{-(Height * (1.0 - v28)), v39[0]}];

  swift_unknownObjectRelease();
  *(v19 + 40) = v37;
  sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
  isa = sub_100026B00().super.isa;

  [v36 activateConstraints:isa];
}

void sub_10000AC20()
{
  if ((sub_10000B6B0() & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel);

    v2 = sub_1000269F0();

    v3 = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v3)
    {
      v4 = 180.0;
    }

    else
    {
      v4 = 210.0;
    }

    v5 = [*(v0 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont) fontDescriptor];
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:v4];

    [v1 setFont:v6];
    [v1 setTextAlignment:1];
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_opt_self();
    v8 = [v7 whiteColor];
    [v1 setTintColor:v8];

    v9 = [v7 whiteColor];
    [v1 setTextColor:v9];
  }
}

id sub_10000ADF4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView] = 0;
  v6 = objc_opt_self();
  v7 = [v6 pr_defaultTimeFontForRole:PRPosterRoleIncomingCall];
  if (!v7)
  {
    v7 = [v6 pr_defaultTimeFont];
  }

  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] = v7;
  v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] = 1;
  v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] = 0;
  v8 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = 0;
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isIPad;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v3[v9] = v11 == 1;
  sub_100026690();
  v12 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel;
  *&v3[v12] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_portraitSimulationConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_landscapeSimulationConstraints] = _swiftEmptyArrayStorage;
  v13 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v14 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  if (a2)
  {
    v15 = sub_1000269F0();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for MonogramPosterViewController(0);
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_10000B0B4(void *a1)
{
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView] = 0;
  v3 = objc_opt_self();
  v4 = [v3 pr_defaultTimeFontForRole:PRPosterRoleIncomingCall];
  if (!v4)
  {
    v4 = [v3 pr_defaultTimeFont];
  }

  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] = v4;
  v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] = 1;
  v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] = 0;
  v5 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = 0;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isIPad;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v1[v6] = v8 == 1;
  sub_100026690();
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel;
  *&v1[v9] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_portraitSimulationConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_landscapeSimulationConstraints] = _swiftEmptyArrayStorage;
  v10 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for MonogramPosterViewController(0);
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

id sub_10000B310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MonogramPosterViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MonogramPosterViewController(uint64_t a1)
{
  result = qword_1000412D0;
  if (!qword_1000412D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B49C(uint64_t a1)
{
  result = sub_1000266A0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10000B57C(void *a1)
{
  v2 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont;
  v3 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel);

  v6 = sub_1000269F0();

  v7 = CNStringContainsChineseJapaneseKoreanCharacters();

  if (v7)
  {
    v8 = 180.0;
  }

  else
  {
    v8 = 210.0;
  }

  v9 = [*(v1 + v2) fontDescriptor];
  v10 = [objc_opt_self() fontWithDescriptor:v9 size:v8];

  [v5 setFont:v10];
}

id sub_10000B6B0()
{
  v0 = objc_opt_self();
  v1 = [v0 currentEnvironment];
  v2 = [v1 featureFlags];

  LODWORD(v1) = [v2 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v3 = [v0 currentEnvironment];
  v4 = [v3 featureFlags];

  v5 = [v4 isFeatureEnabled:7];
  swift_unknownObjectRelease();
  return v5;
}

void *sub_10000B79C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B7E0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000B82C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000B8CC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10000BC38(a1);
  (*(*(*(v2 + qword_100042C28) - 8) + 8))(a1);
  return v5;
}

void *sub_10000B998(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100042C28);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_1000267F0();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_10000BAD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_100042C28), *((swift_isaMask & *v4) + qword_100042C28 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10000BBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_100042C28), *((swift_isaMask & *v4) + qword_100042C28 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10000BC38(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_100026800();
}

id *sub_10000BD50(double a1)
{
  v2 = sub_100003598(&qword_100041378, &qword_100029430);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-v3];
  v5 = sub_100026570();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100003598(&qword_100041380, &qword_100029438);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-v10];
  v12 = sub_1000264A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000C0F8(v11, a1);
  v16 = sub_100003598(&qword_100041388, &unk_100029440);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    sub_10000C6E0(v11, &qword_100041380, &qword_100029438);
    return sub_1000265E0();
  }

  else
  {
    v18 = *v11;
    v19 = *(v11 + 1);
    (*(v13 + 32))(v15, v11 + *(v16 + 48), v12);
    sub_1000264D0();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000C6E0(v4, &qword_100041378, &qword_100029430);
      v20 = sub_1000265E0();
      (*(v13 + 8))(v15, v12);
      return v20;
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v21 = sub_1000265E0();
      __chkstk_darwin(v21);
      *&v23[-32] = v18;
      *&v23[-24] = v19;
      *&v23[-16] = v15;
      *&v23[-8] = v8;
      v22 = sub_10000C868(sub_10000C844, &v23[-48], v21);

      (*(v6 + 8))(v8, v5);
      (*(v13 + 8))(v15, v12);
      return v22;
    }
  }
}

void sub_10000C0F8(double *a1@<X8>, double a2@<D0>)
{
  v5 = sub_1000264A0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  *&sinval = &v59 - v11;
  __chkstk_darwin(v10);
  v13 = &v59 - v12;
  v14 = sub_100003598(&qword_100041378, &qword_100029430);
  __chkstk_darwin(v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_100026570();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000264D0();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000C6E0(v16, &qword_100041378, &qword_100029430);
    v21 = sub_100003598(&qword_100041388, &unk_100029440);
    v22 = *(*(v21 - 8) + 56);
    v23 = a1;
LABEL_9:
    v22(v23, 1, 1, v21);
    return;
  }

  v64 = v13;
  v65 = v17;
  v66 = a1;
  v67 = v20;
  (*(v18 + 32))(v20, v16, v17);
  v63 = v2;
  v24 = sub_1000265E0();
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_8:

    (*(v18 + 8))(v67, v65);
    v21 = sub_100003598(&qword_100041388, &unk_100029440);
    v22 = *(*(v21 - 8) + 56);
    v23 = v66;
    goto LABEL_9;
  }

  v26 = 0;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    (*(v6 + 16))(v9, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v5);
    if (sub_100026400())
    {
      break;
    }

    ++v26;
    (*(v6 + 8))(v9, v5);
    if (v25 == v26)
    {
      goto LABEL_8;
    }
  }

  v27 = *(v6 + 32);
  v28 = sinval;
  v27(*&sinval, v9, v5);
  v29 = v64;
  v27(v64, *&v28, v5);
  v30 = __sincos_stret(a2);
  sinval = v30.__sinval;
  v31 = v67;
  sub_100026550();
  v33 = v32;
  sub_100026410();
  v35 = v34;
  sub_100026560();
  v62 = v36;
  sub_100026410();
  v61 = v37;
  sub_100026450();
  v39 = v38;
  v40 = type metadata accessor for MeshGradientTransformer(0);
  v41 = v63;
  v42 = *(v63 + *(v40 + 24));
  sub_100026450();
  v60 = v43;
  v44 = *(v41 + *(v40 + 20));
  sub_100026480();
  v46 = v45;
  sub_100026460();
  if (v46 > v47)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = 1.0 / v35;
  v51 = v65;
  v50 = v66;
  if (v46 >= v30.__cosval * v33 * (1.0 / v35) + v39 * v42)
  {
    if ((~*&v46 & 0x7FF0000000000000) == 0 && (*&v46 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v30.__cosval * v33 * v49 + v39 * v42;
    }
  }

  else
  {
    v46 = v30.__cosval * v33 * v49 + v39 * v42;
  }

  if (v46 <= v47)
  {
    v48 = v46;
  }

  else if ((~*&v47 & 0x7FF0000000000000) == 0 && (*&v47 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v48 = v46;
  }

  sub_100026490();
  v53 = v52;
  sub_100026470();
  v55 = v54;
  (*(v18 + 8))(v31, v51);
  if (v53 > v55)
  {
    goto LABEL_37;
  }

  v56 = v60 * v44;
  if (v53 >= sinval * v62 * (1.0 / v61) + v60 * v44)
  {
    if ((~*&v53 & 0x7FF0000000000000) == 0 && (*&v53 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v53 = sinval * v62 * (1.0 / v61) + v56;
    }
  }

  else
  {
    v53 = sinval * v62 * (1.0 / v61) + v56;
  }

  if (v53 <= v55)
  {
    v55 = v53;
  }

  else if ((~*&v55 & 0x7FF0000000000000) == 0 && (*&v55 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v55 = v53;
  }

  v57 = sub_100003598(&qword_100041388, &unk_100029440);
  v58 = *(v57 + 48);
  *v50 = v48;
  v50[1] = v55;
  v27(v50 + v58, v29, v5);
  (*(*(v57 - 8) + 56))(v50, 0, 1, v57);
}

uint64_t sub_10000C6E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003598(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C740(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (sub_100026400())
  {
    sub_100026430();
    sub_100026410();
    sub_100026480();
    sub_100026460();
    sub_100026490();
    sub_100026470();
    sub_100026400();
    return sub_100026440();
  }

  else
  {
    sub_100026540();
    return sub_100026420();
  }
}

id *sub_10000C868(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1000264A0();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_100015D78(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_100015D78((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = (v14 + 1);
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MeshGradientTransformer(uint64_t a1)
{
  result = qword_1000413E8;
  if (!qword_1000413E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026610();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000CB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026610();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000CB74(uint64_t a1)
{
  result = sub_100026610();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10000CBF0()
{
  v1 = v0;
  v2 = sub_1000266A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_logger, v2);
  v6 = sub_100026680();
  v7 = sub_100026BC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deinit", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for BackgroundSimulationView(0);
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

char *sub_10000CE68(double a1, double a2, double a3, double a4)
{
  sub_100026690();
  *&v4[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion] = 0;
  v4[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for BackgroundSimulationView(0);
  v9 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 layer];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  [v10 setContentsScale:v13];
  v14 = [v9 layer];

  [v14 setAllowsDisplayCompositing:0];
  type metadata accessor for Motion(0);
  swift_allocObject();
  v15 = sub_100012C6C();
  v16 = OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion;
  *&v9[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion] = v15;

  v17 = *&v9[v16];
  if (v17)
  {
    *(v17 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate + 8) = &off_100039DF0;
    swift_unknownObjectWeakAssign();
  }

  return v9;
}

uint64_t sub_10000D12C(uint64_t a1)
{
  result = sub_1000266A0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000D1D0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v13 = [v4 layer];
  type metadata accessor for BackgroundSimulationLayer(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = (v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix);
    v7 = vdupq_n_s32(0x3CF5C28Fu);
    if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 16), a2)), vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix), a1))), vandq_s8(vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 32), a3)), vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 48), a4))))) & 0x80000000) == 0)
    {
      *v6 = a1;
      v6[1] = a2;
      v6[2] = a3;
      v6[3] = a4;
      v8 = [v4 layer];
      [v8 setNeedsDisplay];
    }
  }
}

void sub_10000D2D8()
{
  sub_100026BD0();
  xmmword_100042C40 = v0;
  *algn_100042C50 = v1;
  xmmword_100042C60 = v2;
  unk_100042C70 = v3;
}

void sub_10000D36C()
{
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer] = 0;
  v1 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms];
  sub_10000EB64(v53);
  v2 = v53[7];
  *(v1 + 6) = v53[6];
  *(v1 + 7) = v2;
  *(v1 + 8) = v53[8];
  v1[144] = v54;
  v3 = v53[3];
  *(v1 + 2) = v53[2];
  *(v1 + 3) = v3;
  v4 = v53[5];
  *(v1 + 4) = v53[4];
  *(v1 + 5) = v4;
  v5 = v53[1];
  *v1 = v53[0];
  *(v1 + 1) = v5;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer] = 0;
  v6 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix];
  if (qword_100040930 != -1)
  {
    swift_once();
  }

  v7 = *algn_100042C50;
  v8 = xmmword_100042C60;
  v9 = unk_100042C70;
  v38 = *algn_100042C50;
  v39 = xmmword_100042C40;
  *v6 = xmmword_100042C40;
  v6[1] = v7;
  v36 = v9;
  v37 = v8;
  v6[2] = v8;
  v6[3] = v9;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture] = 0;
  sub_100026690();
  v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused] = 0;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for BackgroundSimulationLayer(0);
  v10 = objc_msgSendSuper2(&v52, "init");
  if (![v10 device])
  {
    [v10 setDevice:MTLCreateSystemDefaultDevice()];
  }

  swift_unknownObjectRelease();
  v11 = [v10 device];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 newCommandQueue];
    *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue] = v13;
    swift_unknownObjectRelease();
    v14 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
    v15 = *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor];
    *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor] = v14;
    v16 = v14;

    if (v16)
    {
      v17 = [v16 depthAttachment];

      if (v17)
      {
        [v17 setStoreAction:0];

        __asm
        {
          FMOV            V0.2S, #-1.0
          FMOV            V8.2S, #1.0
        }

        v41[0] = -_D0;
        v41[1] = _D8;
        v41[2] = _D0;
        v41[3] = -_D8;
        v24 = [v12 newBufferWithBytes:v41 length:32 options:0];
        *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer] = v24;
        swift_unknownObjectRelease();
        v40[0] = 0;
        v40[1] = 1065353216;
        v40[2] = 0x3F80000000000000;
        *&v40[3] = _D8;
        v25 = [v12 newBufferWithBytes:v40 length:32 options:0];
        *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer] = v25;
        swift_unknownObjectRelease();
        v42 = v39;
        v43 = v38;
        v44 = v37;
        v45 = v36;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        sub_10000ED1C(&v42);
        v26 = &v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms];
        swift_beginAccess();
        v27 = v43;
        *v26 = v42;
        *(v26 + 1) = v27;
        v28 = v44;
        v29 = v45;
        v30 = v47;
        *(v26 + 4) = v46;
        *(v26 + 5) = v30;
        *(v26 + 2) = v28;
        *(v26 + 3) = v29;
        v31 = v48;
        v32 = v49;
        v33 = v50;
        v26[144] = v51;
        *(v26 + 7) = v32;
        *(v26 + 8) = v33;
        *(v26 + 6) = v31;
        swift_beginAccess();
        v34 = [v12 newBufferWithBytes:v26 length:144 options:0];
        swift_endAccess();
        *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer] = v34;
        swift_unknownObjectRelease();
        v35 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedDisplayP3);
        [v10 setColorspace:v35];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_10000D7B0()
{
  result = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result setPurgeableState:4];
  result = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [result setPurgeableState:4];
  result = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer];
  if (result)
  {
    [result setPurgeableState:4];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for BackgroundSimulationLayer(0);
    return objc_msgSendSuper2(&v2, "dealloc");
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000D970(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D9D0()
{
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer) = 0;
  v1 = v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms;
  sub_10000EB64(v11);
  v2 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v2;
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v12;
  v3 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v3;
  v4 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer) = 0;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix;
  if (qword_100040930 != -1)
  {
    swift_once();
  }

  v7 = (v0 + v6);
  v8 = *algn_100042C50;
  v9 = xmmword_100042C60;
  v10 = unk_100042C70;
  *v7 = xmmword_100042C40;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture) = 0;
  sub_100026690();
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused) = 0;
  sub_100026D10();
  __break(1u);
}

uint64_t sub_10000DBA0()
{
  sub_100003598(&unk_1000416E0, &unk_1000295A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100029480;
  *(v1 + 32) = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture);
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_10000DC20(void *a1)
{
  v3 = sub_10000D308(v17);
  v5 = v4;
  memmove(__dst, v4, 0x91uLL);
  if (sub_10000EB48(__dst) != 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 16);
    v7 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 32);
    v8 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 48);
    *v5 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix);
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
  }

  (v3)(v17, 0);
  v9 = sub_10000D308(v16);
  v11 = v10;
  memmove(v17, v10, 0x91uLL);
  if (sub_10000EB48(v17) != 1)
  {
    v12 = [objc_msgSend(a1 "texture")];
    swift_unknownObjectRelease();
    v13 = [objc_msgSend(a1 "texture")];
    swift_unknownObjectRelease();
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v11[4] = v14;
  }

  return (v9)(v16, 0);
}

void sub_10000DD88(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused) & 1) == 0)
  {
    v1 = a1;
    v2 = sub_100026680();
    v3 = sub_100026BA0();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v40[0] = v5;
      *v4 = 136315138;
      v41 = v1;
      v6 = [v1 debugDescription];
      v7 = sub_100026A20();
      v9 = v8;

      v10 = sub_100025380(v7, v9, v40);

      *(v4 + 4) = v10;
      v1 = v41;
      _os_log_impl(&_mh_execute_header, v2, v3, "Performing Metal rendering in: %s", v4, 0xCu);
      sub_10000B7E0(v5);
    }

    v11 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue);
    if (v11)
    {
      v12 = [v11 commandBuffer];
      if (v12)
      {
        v13 = v12;
        if ([v1 isDrawableAvailable])
        {
          v14 = [v1 nextDrawable];
          if (v14)
          {
            v15 = v14;
            sub_10000E41C();
            if (v16)
            {
              v17 = v16;
              (*((swift_isaMask & *v1) + 0x188))(v15);
              v18 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer;
              v19 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer);
              if (v19)
              {
                v20 = [swift_unknownObjectRetain() contents];
                v21 = v19;
                v22 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms;
                swift_beginAccess();
                memmove(v20, v1 + v22, 0x90uLL);
              }

              v23 = v1;
              v24 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor;
              v41 = v23;
              v25 = *(v23 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor);
              if (!v25)
              {
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

              v26 = [v25 colorAttachments];
              v27 = [v26 objectAtIndexedSubscript:0];

              if (!v27)
              {
LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

              v39 = v18;
              [v27 setTexture:{objc_msgSend(v15, "texture")}];

              swift_unknownObjectRelease();
              v28 = v41;
              if (!*(v41 + v24))
              {
LABEL_30:
                __break(1u);
                return;
              }

              v29 = [v13 renderCommandEncoderWithDescriptor:?];
              if (v29)
              {
                v30 = v29;
                [v29 setRenderPipelineState:v17];
                [v30 setVertexBuffer:*(v28 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer) offset:0 atIndex:0];
                v31 = [v30 setVertexBuffer:*(v28 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer) offset:0 atIndex:1];
                v32 = (*((swift_isaMask & *v28) + 0x178))(v31);
                v33 = *(v32 + 16);
                if (v33)
                {
                  v34 = 0;
                  while (v34 < *(v32 + 16))
                  {
                    v35 = v34 + 1;
                    [v30 setFragmentTexture:*(v32 + 32 + 8 * v34) atIndex:?];
                    v34 = v35;
                    if (v33 == v35)
                    {
                      goto LABEL_19;
                    }
                  }

                  __break(1u);
                  goto LABEL_28;
                }

LABEL_19:

                [v30 setFragmentBuffer:*(v41 + v39) offset:0 atIndex:0];
                [v30 drawPrimitives:4 vertexStart:0 vertexCount:4];
                [v30 endEncoding];
                swift_unknownObjectRelease();
              }

              [v13 presentDrawable:v15];
              [v13 commit];
              [v13 waitUntilCompleted];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v36 = sub_100026680();
          v37 = sub_100026BC0();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "BackgroundSimulationLayer: skipping render because no drawable available", v38, 2u);
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10000E35C(uint64_t a1)
{
  result = sub_1000266A0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000E41C()
{
  v1 = [v0 device];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 newDefaultLibrary];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
      v6 = sub_1000269F0();
      v7 = [v4 newFunctionWithName:v6];

      [v5 setVertexFunction:v7];
      v8 = swift_unknownObjectRelease();
      (*((swift_isaMask & *v0) + 0x180))(v8);
      v9 = sub_1000269F0();

      v10 = [v4 newFunctionWithName:v9];

      [v5 setFragmentFunction:v10];
      swift_unknownObjectRelease();
      v11 = [v5 colorAttachments];
      v12 = [v11 objectAtIndexedSubscript:0];

      if (!v12)
      {
        __break(1u);
        return;
      }

      [v12 setPixelFormat:objc_msgSend(v0, "pixelFormat")];

      v16 = 0;
      v13 = [v2 newRenderPipelineStateWithDescriptor:v5 error:&v16];
      v14 = v16;
      if (v13)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      v15 = v14;
      sub_1000261D0();

      swift_willThrow();

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_10000E6A8(void *a1)
{
  v2 = v1;
  v4 = [a1 CGColor];
  v5 = [v2 colorspace];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 CGColor];
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v6, kCGRenderingIntentDefault, v7, 0);

    if (CopyByMatchingToColorSpace)
    {

      v4 = CopyByMatchingToColorSpace;
    }
  }

  v9 = sub_100026B70();
  if (!v9)
  {

    return;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    if (v10 != 1)
    {
      if (v10 >= 3)
      {

        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

id sub_10000E7D0(void *a1, void *a2, void *a3)
{
  sub_10000E6A8(a1);
  v39 = v6;
  v7 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms];
  swift_beginAccess();
  v8 = *(v7 + 7);
  v65 = *(v7 + 6);
  v66 = v8;
  v67 = *(v7 + 8);
  v68 = v7[144];
  v9 = *(v7 + 3);
  v64[2] = *(v7 + 2);
  v64[3] = v9;
  v10 = *(v7 + 5);
  v64[4] = *(v7 + 4);
  v64[5] = v10;
  v11 = *(v7 + 1);
  v64[0] = *v7;
  v64[1] = v11;
  result = sub_10000EB48(v64);
  if (result == 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = vmovn_s32(vceqq_f32(v39, v65));
  if (v13.i8[0] & 1) != 0 && (v13.i16[1] & v13.i16[2])
  {
    v14 = 0;
  }

  else
  {
    v15 = *(v7 + 7);
    v60 = *(v7 + 6);
    v61 = v15;
    v62 = *(v7 + 8);
    v63 = v7[144];
    v16 = *(v7 + 3);
    v56 = *(v7 + 2);
    v57 = v16;
    v17 = *(v7 + 5);
    v58 = *(v7 + 4);
    v59 = v17;
    v18 = *(v7 + 1);
    v54 = *v7;
    v55 = v18;
    result = sub_10000EB48(&v54);
    if (result == 1)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    *(v7 + 6) = v39;
    v14 = 1;
  }

  sub_10000E6A8(a2);
  v40 = v19;
  v20 = *(v7 + 7);
  v60 = *(v7 + 6);
  v61 = v20;
  v62 = *(v7 + 8);
  v63 = v7[144];
  v21 = *(v7 + 3);
  v56 = *(v7 + 2);
  v57 = v21;
  v22 = *(v7 + 5);
  v58 = *(v7 + 4);
  v59 = v22;
  v23 = *(v7 + 1);
  v54 = *v7;
  v55 = v23;
  result = sub_10000EB48(&v54);
  if (result == 1)
  {
    goto LABEL_21;
  }

  v24 = vmovn_s32(vceqq_f32(v40, v61));
  if ((v24.i8[0] & 1) == 0 || (v24.i16[1] & v24.i16[2] & 1) == 0)
  {
    v25 = *(v7 + 7);
    v50 = *(v7 + 6);
    v51 = v25;
    v52 = *(v7 + 8);
    v53 = v7[144];
    v26 = *(v7 + 3);
    v46 = *(v7 + 2);
    v47 = v26;
    v27 = *(v7 + 5);
    v48 = *(v7 + 4);
    v49 = v27;
    v28 = *(v7 + 1);
    v44 = *v7;
    v45 = v28;
    result = sub_10000EB48(&v44);
    if (result == 1)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *(v7 + 7) = v40;
    v14 = 1;
  }

  sub_10000E6A8(a3);
  v41 = v29;
  v30 = *(v7 + 7);
  v50 = *(v7 + 6);
  v51 = v30;
  v52 = *(v7 + 8);
  v53 = v7[144];
  v31 = *(v7 + 3);
  v46 = *(v7 + 2);
  v47 = v31;
  v32 = *(v7 + 5);
  v48 = *(v7 + 4);
  v49 = v32;
  v33 = *(v7 + 1);
  v44 = *v7;
  v45 = v33;
  result = sub_10000EB48(&v44);
  if (result == 1)
  {
    goto LABEL_22;
  }

  v34 = vmovn_s32(vceqq_f32(v41, v52));
  if ((v34.i8[0] & 1) == 0 || (v34.i16[1] & v34.i16[2] & 1) == 0)
  {
    v35 = *(v7 + 7);
    v42[6] = *(v7 + 6);
    v42[7] = v35;
    v42[8] = *(v7 + 8);
    v43 = v7[144];
    v36 = *(v7 + 3);
    v42[2] = *(v7 + 2);
    v42[3] = v36;
    v37 = *(v7 + 5);
    v42[4] = *(v7 + 4);
    v42[5] = v37;
    v38 = *(v7 + 1);
    v42[0] = *v7;
    v42[1] = v38;
    result = sub_10000EB48(v42);
    if (result != 1)
    {
      *(v7 + 8) = v41;
      return [v3 setNeedsDisplay];
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (v14)
  {
    return [v3 setNeedsDisplay];
  }

  return result;
}

__n128 sub_10000EA9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10000EAC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EAE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
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

  *(result + 144) = v3;
  return result;
}

uint64_t sub_10000EB48(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_10000EB64(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 1;
  return result;
}

void sub_10000EB88()
{
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer) = 0;
  v1 = v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms;
  sub_10000EB64(v11);
  v2 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v2;
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v12;
  v3 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v3;
  v4 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer) = 0;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix;
  if (qword_100040930 != -1)
  {
    swift_once();
  }

  v7 = (v0 + v6);
  v8 = *algn_100042C50;
  v9 = xmmword_100042C60;
  v10 = unk_100042C70;
  *v7 = xmmword_100042C40;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture) = 0;
  sub_100026690();
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused) = 0;
  sub_100026D10();
  __break(1u);
}

uint64_t sub_10000ED24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

id sub_10000EF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLink(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DisplayLink(uint64_t a1)
{
  result = qword_100041520;
  if (!qword_100041520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F0A0(uint64_t a1)
{
  sub_10000F138(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000F138(uint64_t a1)
{
  if (!qword_100041530)
  {
    sub_100003508(&qword_100041538, &qword_1000295C8);
    v1 = sub_100026730();
    if (!v2)
    {
      atomic_store(v1, &qword_100041530);
    }
  }
}

uint64_t sub_10000F19C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DisplayLink(0);
  result = sub_1000266D0();
  *a2 = result;
  return result;
}

uint64_t sub_10000F1DC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  *a2 = v4;
  return result;
}

uint64_t sub_10000F260(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_100026720();
}

unint64_t sub_10000F2D8()
{
  result = qword_100041548;
  if (!qword_100041548)
  {
    type metadata accessor for DisplayLink(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041548);
  }

  return result;
}

unint64_t sub_10000F330@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003598(&qword_1000415E8, &qword_100029690);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1000263D0();
  v6 = *(v5 + 16);
  if (v6)
  {
    result = sub_10000F600(v6);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = result;
      if (result < *(v5 + 16))
      {
        v9 = sub_1000263C0();
        v10 = *(v9 - 8);
        (*(v10 + 16))(v4, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v9);

        (*(v10 + 56))(v4, 0, 1, v9);
        goto LABEL_6;
      }
    }

    __break(1u);
    return result;
  }

  v9 = sub_1000263C0();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
LABEL_6:
  sub_1000263C0();
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v4, 1, v9) != 1)
  {
    return (*(v11 + 32))(a1, v4, v9);
  }

  sub_10000F68C(v4);
  v12 = objc_opt_self();
  v13 = [v12 grayColor];
  v14 = [v12 grayColor];
  return sub_1000263A0();
}

unint64_t sub_10000F600(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F68C(uint64_t a1)
{
  v2 = sub_100003598(&qword_1000415E8, &qword_100029690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10000F6F4()
{
  v5 = 0.0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  if ([v0 getRed:&v5 green:&v4 blue:&v3 alpha:&v2])
  {
    return v5;
  }

  else
  {
    return 1.0;
  }
}

uint64_t sub_10000F798(id *a1, double a2)
{
  v3 = __sincos_stret(a2 * 3.14159265 + a2 * 3.14159265 + -3.14159265);
  sub_100003598(&qword_100041600, &qword_1000296E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000296B0;
  *(inited + 32) = &off_1000396A8;
  sub_100003598(&qword_100041608, &qword_100029DC0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1000296C0;
  *(v5 + 32) = 0;
  *(v5 + 40) = v3.__cosval + -1.0 + 1.0;
  *(v5 + 48) = -v3.__sinval;
  *(v5 + 56) = 0;
  v6 = (v3.__cosval + -1.0) * 0.5;
  *(v5 + 64) = v3.__sinval * 0.5 - v6;
  *(inited + 40) = v5;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1000296C0;
  *(v7 + 32) = 0;
  *(v7 + 40) = v3.__sinval;
  *(v7 + 48) = v3.__cosval + -1.0 + 1.0;
  *(v7 + 56) = 0;
  *(v7 + 64) = v3.__sinval * -0.5 - v6;
  *(inited + 48) = v7;
  *(inited + 56) = &off_1000396F0;
  v8 = sub_100010064(inited, a1);
  swift_setDeallocating();
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_10000F924(id *a1, double a2)
{
  v3 = a2 + a2;
  v4 = 0.5 - (a2 + a2) * 0.5;
  sub_100003598(&qword_100041600, &qword_1000296E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000296B0;
  *(inited + 32) = &off_100039738;
  sub_100003598(&qword_100041608, &qword_100029DC0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1000296C0;
  *(v6 + 32) = 0;
  *(v6 + 40) = v3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = v4;
  *(inited + 40) = v6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1000296C0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = v3;
  *(v7 + 56) = 0;
  *(v7 + 64) = v4;
  *(inited + 48) = v7;
  *(inited + 56) = &off_100039780;
  v8 = sub_100010064(inited, a1);
  swift_setDeallocating();
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_10000FA64(id *a1, double a2)
{
  v3 = a2 + a2 + -1.0;
  sub_100003598(&qword_100041600, &qword_1000296E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000296B0;
  sub_100003598(&qword_100041608, &qword_100029DC0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1000296C0;
  *(v5 + 32) = 1.0 - fabs(v3);
  v6 = 0.0;
  if (v3 >= 0.0)
  {
    v6 = v3;
  }

  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 64) = v6;
  *(inited + 32) = v5;
  *(inited + 40) = &off_1000397C8;
  *(inited + 48) = &off_100039810;
  *(inited + 56) = &off_100039858;
  v7 = sub_100010064(inited, a1);
  swift_setDeallocating();
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_10000FB8C(void *a1)
{
  result = sub_10000FE98(a1);
  if (*(result + 16) >= 4uLL)
  {
  }

  __break(1u);
  return result;
}

id sub_10000FC6C(uint64_t a1)
{
  sub_10000F6F4();
  v2 = sub_100010460(a1);
  sub_10000FB8C(v2);
  v19 = v3;

  v4.f64[0] = sub_10000FD24(0, 0.0, v19);
  v5 = v4;
  __asm { FMOV            V0.2D, #1.0 }

  v18 = sub_10000FDD8(_Q0, _Q0.f64[0], v5);
  v20 = v11;
  v13 = v12;
  v15 = v14;
  v16 = objc_allocWithZone(UIColor);

  return [v16 initWithRed:v18 green:v13 blue:v20 alpha:v15];
}

float64_t sub_10000FD24(float64x2_t a1, double a2, float64x2_t a3)
{
  v3 = a1.f64[0];
  v4 = vmovn_s64(vcgtq_f64(a1, a3)).u8[0];
  if ((*&a3.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((~*&a3.f64[0] & 0x7FF0000000000000) != 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if (v4)
  {
    a1.f64[0] = v3;
  }

  return a1.f64[0];
}

float64_t sub_10000FDD8(float64x2_t a1, double a2, float64x2_t a3)
{
  v3 = a1.f64[0];
  v4 = vmovn_s64(vmvnq_s8(vcgeq_f64(a3, a1))).u8[0];
  if ((*&a3.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((~*&a3.f64[0] & 0x7FF0000000000000) != 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((v4 & 1) == 0)
  {
    a1.f64[0] = v3;
  }

  return a1.f64[0];
}

uint64_t sub_10000FE98(void *a1)
{
  sub_100003598(&qword_1000415F0, &qword_1000296D8);
  result = sub_100026B20();
  *(result + 16) = 4;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0;
  if (a1[2] < 4uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = a1[4];
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v4 == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 < 3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 == 3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 < 5)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  *(result + 32) = *(v3 + 32);
  *(result + 48) = v5;
  *(result + 64) = v6;
  v7 = a1[5];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v8 < 3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v8 == 3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 < 5)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(v7 + 48);
  v10 = *(v7 + 64);
  *(result + 80) = *(v7 + 32);
  *(result + 96) = v9;
  *(result + 112) = v10;
  v11 = a1[6];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v12 < 3)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v12 == 3)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v12 < 5)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = *(v11 + 48);
  v14 = *(v11 + 64);
  *(result + 128) = *(v11 + 32);
  *(result + 144) = v13;
  *(result + 160) = v14;
  v15 = a1[7];
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v16 == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v16 < 3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v16 == 3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v16 >= 5)
  {
    v17 = *(v15 + 48);
    v18 = *(v15 + 64);
    *(result + 176) = *(v15 + 32);
    *(result + 192) = v17;
    *(result + 208) = v18;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100010064(void *a1, id *a2)
{
  v6 = sub_100026B20();
  *(v6 + 16) = 5;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  v7 = sub_100026B20();
  v7[2] = 4;
  v7[4] = v6;
  v7[5] = v6;
  v7[6] = v6;
  v7[7] = v6;
  if (a1[2] < 4uLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a2[2] < 4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v2 = v7;
  v30 = a1;
  v32 = a2[7];
  v33 = a1 + 4;
  v8 = a2[6];
  v10 = a2[4];
  v9 = a2[5];
  a1 = v9 + 4;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (2)
  {
    v12 = 0;
    v31 = v11 + 1;
    do
    {
      v13 = v33[v12];
      if (*(v13 + 16) < 4uLL)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v11 >= v32[2])
      {
        goto LABEL_35;
      }

      if (v11 >= v8[2])
      {
        goto LABEL_36;
      }

      if (v11 >= v9[2])
      {
        goto LABEL_37;
      }

      if (v11 >= v10[2])
      {
        goto LABEL_38;
      }

      if (v12 >= v2[2])
      {
        goto LABEL_39;
      }

      v3 = *&v32[v11 + 4];
      v15 = *(v13 + 48);
      v14 = *(v13 + 56);
      v16 = *&v8[v11 + 4];
      v17 = *&a1[v11];
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v20 = *&v10[v11 + 4];
      v21 = v2;
      v2 += v12;
      a2 = v2[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a2 = sub_100007C84(a2);
        v2[4] = a2;
      }

      if (v11 >= a2[2])
      {
        goto LABEL_40;
      }

      v2 = v21;
      ++v12;
      *&a2[v11 + 4] = v14 * v3 + v15 * v16 + v19 * v17 + v18 * v20;
    }

    while (v12 != 4);
    ++v11;
    if (v31 != 5)
    {
      continue;
    }

    break;
  }

  if (*(*v33 + 16) < 5uLL)
  {
    goto LABEL_43;
  }

  if (!v21[2])
  {
    goto LABEL_44;
  }

  v3 = *(*v33 + 64);
  a2 = v21[4];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v21[4] = a2;
  if ((v23 & 1) == 0)
  {
LABEL_45:
    a2 = sub_100007C84(a2);
  }

  if (a2[2] < 5)
  {
    __break(1u);
    goto LABEL_47;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[4] = a2;
  v24 = v30[5];
  if (*(v24 + 16) < 5uLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v2[2] >= 2uLL)
  {
    v3 = *(v24 + 64);
    a2 = v2[5];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v2[5] = a2;
    if (v25)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  a2 = sub_100007C84(a2);
LABEL_24:
  if (a2[2] < 5)
  {
    __break(1u);
    goto LABEL_51;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[5] = a2;
  v26 = v30[6];
  if (*(v26 + 16) < 5uLL)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v2[2] >= 3uLL)
  {
    v3 = *(v26 + 64);
    a2 = v2[6];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v2[6] = a2;
    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  a2 = sub_100007C84(a2);
LABEL_28:
  if (a2[2] < 5)
  {
    __break(1u);
    goto LABEL_55;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[6] = a2;
  v28 = v30[7];
  if (*(v28 + 16) < 5uLL)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v2[2] >= 4uLL)
  {
    v3 = *(v28 + 64);
    a1 = v2[7];
    result = swift_isUniquelyReferenced_nonNull_native();
    v2[7] = a1;
    if (result)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_100007C84(a1);
  a1 = result;
LABEL_32:
  if (a1[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v3 + *(a1 + 8);
    v2[7] = a1;
    return v2;
  }

  return result;
}

uint64_t sub_100010460(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = sub_10000F798(&off_1000394E0, *(a1 + 32));
    v3 = sub_10000F924(v2, *(a1 + 40));

    v4 = sub_10000FA64(v3, *(a1 + 48));

    v5 = sub_100010064(&off_100039640, v4);

    return v5;
  }

  else
  {
    result = sub_100026D10();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001086C()
{
  sub_100003598(&unk_1000416E0, &unk_1000295A8);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture);
  *(v1 + 16) = xmmword_100028E90;
  v3 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

void *sub_10001090C(void *a1)
{
  sub_10000DC20(a1);
  v2 = sub_10000D308(v12);
  v4 = v3;
  memmove(__dst, v3, 0x91uLL);
  if (sub_10000EB48(__dst) == 1)
  {
    return (v2)(v12, 0);
  }

  v6 = OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture;
  result = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = [result width];
  result = *(v1 + v6);
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *&v11 = v7;
  *&v10 = [result height];
  sub_1000263F0();
  DWORD2(v8) = 1056964608;
  *&v8 = __PAIR64__(v10, v11);
  HIDWORD(v8) = v9;
  v4[5] = v8;
  return (v2)(v12, 0);
}

void sub_100010A04(void *a1)
{
  v2 = v1;
  v4 = [v2 device];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      v6 = objc_allocWithZone(MTKTextureLoader);
      v7 = a1;
      v8 = [v6 initWithDevice:v5];
      v24 = 0;
      v9 = [v8 newTextureWithCGImage:v7 options:0 error:&v24];
      v10 = v24;
      if (v9)
      {
        *&v2[OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture] = v9;
        v11 = v10;
        swift_unknownObjectRelease();
        if (*&v2[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue])
        {
          type metadata accessor for NormalGenerator();
          swift_initStackObject();
          v12 = swift_unknownObjectRetain();
          sub_100001DE0(v12)[7] = 0x4080000040000000;
          v13 = swift_unknownObjectRetain();
          sub_100002258(v13);
          v15 = v14;
          swift_unknownObjectRelease();
          *&v2[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture] = v15;
          swift_unknownObjectRelease();
          [v2 setNeedsDisplay];

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v16 = v24;
        sub_1000261D0();

        swift_willThrow();
        swift_errorRetain();
        v17 = sub_100026680();
        v18 = sub_100026BB0();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v24 = v20;
          *v19 = 136315138;
          swift_getErrorValue();
          v21 = sub_100026D70();
          v23 = sub_100025380(v21, v22, &v24);

          *(v19 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v17, v18, "Failed to generate monogram texture from string image with error: %s", v19, 0xCu);
          sub_10000B7E0(v20);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_100010D80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100010E3C(uint64_t a1)
{
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = MTLCreateSystemDefaultDevice();
  *(v1 + 16) = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 newDefaultLibrary];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  swift_unknownObjectRelease();
  *(v1 + 24) = v5;
  swift_unknownObjectRelease();
  *(v1 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __asm { FMOV            V1.2S, #1.0 }

  v16[0] = 0x3F80000000000000;
  v16[1] = _D1;
  v16[2] = 0;
  v16[3] = 1065353216;
  v11 = *(v1 + 16);
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v1 + 48) = [v11 newBufferWithBytes:v16 length:32 options:0];
  swift_unknownObjectRelease();
  sub_100003598(&unk_1000419B0, &qword_1000297F8);
  v12 = swift_allocObject();
  v12[2] = xmmword_100029750;
  v13 = v12 + 2;
  v12[3] = xmmword_100029760;
  v12[4] = xmmword_100029770;
  v12[5] = xmmword_100029780;
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = [v14 newBufferWithBytes:v13 length:64 options:0];
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v1 + 40) = v15;
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100010FE0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_10001105C(double a1)
{
  v3 = [v1 font];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [v1 setHidden:0];
  v5 = a1 + -32.0;
  [v1 _tightBoundingRect];
  IsEmpty = CGRectIsEmpty(v39);
  v7 = &selRef__tightBoundingRectOfFirstLine;
  if (!IsEmpty)
  {
    v7 = &selRef__tightBoundingRect;
  }

  [v1 *v7];
  v9 = v8;
  v11 = v10;
  v14 = fabs(v13);
  v15 = v12 + 32.0 + v14 + v14;
  if (v5 < v15)
  {
    [v4 pointSize];
    v17 = [v4 fontWithSize:v5 / v15 * v16];
    [v1 setFont:v17];

    result = [v1 font];
    if (!result)
    {
      goto LABEL_12;
    }

    v19 = result;

    v4 = v19;
  }

  v20 = fabs(v9);
  v21 = v11 + 32.0 + v20 + v20;
  [v1 _tightBoundingRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1000113E8();
  v30 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v30 setPreferredRange:2];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v30 format:{v15, v21}];
  v32 = swift_allocObject();
  *(v32 + 16) = v15;
  *(v32 + 24) = v21;
  *(v32 + 32) = v23;
  *(v32 + 40) = v25;
  *(v32 + 48) = v27;
  *(v32 + 56) = v29;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0;
  *(v32 + 64) = v1;
  *(v32 + 88) = v15;
  *(v32 + 96) = v21;
  *(v32 + 104) = 0;
  *(v32 + 112) = 0;
  *(v32 + 120) = v15;
  *(v32 + 128) = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1000115E8;
  *(v33 + 24) = v32;
  v38[4] = sub_100011640;
  v38[5] = v33;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 1107296256;
  v38[2] = sub_100016EDC;
  v38[3] = &unk_100039E50;
  v34 = _Block_copy(v38);
  v35 = v1;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if ((v34 & 1) == 0)
  {
    v37 = [v36 CGImage];

    [v35 setHidden:1];

    return v37;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1000113E8()
{
  result = qword_1000419C0;
  if (!qword_1000419C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000419C0);
  }

  return result;
}

void sub_100011434(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16)
{
  CGAffineTransformMakeTranslation(&v28, (a3 - a7 - a5) * 0.5, (a4 - a8 - a6) * 0.5);
  tx = v28.tx;
  ty = v28.ty;
  v26 = *&v28.c;
  v27 = *&v28.a;
  v22 = [a2 layer];
  *&v28.a = v27;
  *&v28.c = v26;
  v28.tx = tx;
  v28.ty = ty;
  [v22 setAffineTransform:&v28];

  [a2 drawTextInRect:{a9, a10, a11, a12}];
  v23 = [a1 CGContext];
  CGContextSetBlendMode(v23, kCGBlendModeCopy);

  v24 = [a1 CGContext];
  CGContextSetGrayStrokeColor(v24, 0.0, 0.0);

  v25 = [a1 CGContext];
  v29.origin.y = a14;
  v29.origin.x = a13;
  v29.size.width = a15;
  v29.size.height = a16;
  CGContextStrokeRect(v25, v29);
}

uint64_t sub_1000115B0()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100011648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011660()
{
  result = sub_100011680();
  qword_100042CA8 = result;
  return result;
}

uint64_t sub_100011680()
{
  v0 = objc_opt_self();
  v1 = [v0 currentEnvironment];
  v2 = [v1 featureFlags];

  LODWORD(v1) = [v2 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v1 && (v3 = [v0 currentEnvironment], v4 = objc_msgSend(v3, "featureFlags"), v3, LOBYTE(v3) = objc_msgSend(v4, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), (v3 & 1) != 0))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

id sub_100011770(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField;
  *&v2[v3] = [objc_allocWithZone(UITextField) init];
  *&v2[OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = *&v2[v3];
  v5 = sub_1000269F0();

  [v4 setText:v5];

  v7.receiver = v2;
  v7.super_class = type metadata accessor for MonogramInputViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_1000119F0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_100020A34();
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;

    v5 = sub_1000269F0();

    v6 = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v6)
    {
      v7 = 180.0;
    }

    else
    {
      v7 = 210.0;
    }

    v8 = [*&v4[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
    v9 = [objc_opt_self() fontWithDescriptor:v8 size:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  [v2 setFont:v9];

  [v2 setTextAlignment:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setKeyboardType:13];
  [v2 setAutocorrectionType:1];
  [v2 setReturnKeyType:9];
  [v2 setSpellCheckingType:1];
  [v2 setAutocapitalizationType:3];
  [v2 setDelegate:v0];
  [v2 becomeFirstResponder];
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  [v2 setTintColor:v11];

  [v2 addTarget:v1 action:"textFieldDidChange:" forControlEvents:0x20000];
  v12 = [v10 clearColor];
  [v2 setTextColor:v12];
}

void sub_100011CA4(void *a1)
{
  if ([a1 hasMarkedText])
  {
    goto LABEL_27;
  }

  v2 = [a1 text];
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = [a1 text];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = sub_100026A20();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 text];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    sub_100026A20();

    v11 = sub_100026AA0();
    if (qword_100040938 != -1)
    {
      v20 = v11;
      swift_once();
      v11 = v20;
    }

    if (qword_100042CA8 < v11)
    {
      sub_100026AB0();
      sub_100026AE0();

      sub_100026A80();
    }

    v12 = sub_100026A60();
    v14 = v13;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10001A164(v12, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
LABEL_27:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = [a1 text];
      if (v15)
      {
        v16 = v15;
        v17 = sub_100026A20();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      sub_10001A164(v17, v19);

      swift_unknownObjectRelease();
    }
  }

  sub_1000126BC();
}

void sub_100011FA4()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField];
  [v2 addSubview:v4];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  Height = CGRectGetHeight(v40);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 window];

  if (v18)
  {
    [v18 bounds];
    Height = CGRectGetHeight(v41);
  }

  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100029330;
  v20 = [v4 centerXAnchor];
  v21 = [v1 view];
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v23 = [v21 centerXAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v19 + 32) = v24;
  v25 = [v1 view];
  if (v25)
  {
    v26 = sub_10000B82C(0, &qword_1000412E0, UIView_ptr);
  }

  else
  {
    v26 = 0;
    v39[1] = 0;
    v39[2] = 0;
  }

  v39[0] = v25;
  v39[3] = v26;
  sub_1000263F0();
  v28 = v27;
  if (v26)
  {
    v29 = sub_10000B79C(v39, v26);
    v30 = *(v26 - 8);
    __chkstk_darwin(v29);
    v32 = v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v32);
    v33 = v4;
    v34 = sub_100026D50();
    (*(v30 + 8))(v32, v26);
    sub_10000B7E0(v39);
  }

  else
  {
    v35 = v4;
    v34 = 0;
  }

  v36 = objc_opt_self();
  v37 = [v36 constraintWithItem:v4 attribute:10 relatedBy:0 toItem:v34 attribute:4 multiplier:1.0 constant:{-(Height * (1.0 - v28)), v39[0]}];

  swift_unknownObjectRelease();
  *(v19 + 40) = v37;
  sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
  isa = sub_100026B00().super.isa;

  [v36 activateConstraints:isa];
}

uint64_t sub_10001237C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 text];
  if (v8)
  {
    v9 = v8;
    sub_100026A20();
  }

  v10 = objc_allocWithZone(NSString);
  v11 = sub_1000269F0();

  v12 = [v10 initWithString:v11];

  v13 = sub_1000269F0();
  v14 = [v12 stringByReplacingCharactersInRange:a2 withString:{a3, v13}];

  v15 = v14;
  if (!v14)
  {
    sub_100026A20();
    v15 = sub_1000269F0();
  }

  v16 = sub_100026A20();
  v18 = v17;
  v19 = sub_100026AA0();
  if (qword_100040938 != -1)
  {
    swift_once();
  }

  v20 = qword_100042CA8;
  v21 = CNStringContainsEmojiCharacters();

  if (([a1 hasMarkedText] & 1) == 0)
  {
    if (v20 < v19 || v21)
    {

      return 0;
    }

LABEL_14:
    v23 = [a1 hasMarkedText];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      if (Strong)
      {
        sub_10001A164(v16, v18);
LABEL_19:

        swift_unknownObjectRelease();
LABEL_21:
        sub_1000126BC();

        return 1;
      }
    }

    else if (Strong)
    {
      v25 = sub_100026A60();
      v27 = v26;

      sub_10001A164(v25, v27);
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v20 >= v19 && (v21 & 1) == 0)
  {
    goto LABEL_14;
  }

  return 1;
}

void sub_1000126BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_100020A34();
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;

    v4 = sub_1000269F0();

    v5 = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v5)
    {
      v6 = 180.0;
    }

    else
    {
      v6 = 210.0;
    }

    v7 = [*&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:v6];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  [v1 setFont:v8];
}

id sub_100012858(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MonogramInputViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000128FC()
{
  v1 = v0;
  v2 = sub_1000266A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_logger;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_logger, v2);
  v7 = sub_100026680();
  v8 = sub_100026BA0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Stopping motion updates and invalidating timer", v9, 2u);
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion;
  v12 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
  if (v12)
  {
    [v12 stopDeviceMotionUpdates];
    v13 = *(v1 + v11);
  }

  else
  {
    v13 = 0;
  }

  *(v1 + v11) = 0;

  v14 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer;
  v15 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer);
  if (v15)
  {
    [v15 invalidate];
    v16 = *(v1 + v14);
  }

  else
  {
    v16 = 0;
  }

  *(v1 + v14) = 0;

  v10((v1 + v6), v2);
  sub_100005324(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate);

  return v1;
}

uint64_t sub_100012AF4()
{
  sub_1000128FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Motion(uint64_t a1)
{
  result = qword_100041AB0;
  if (!qword_100041AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012BA0(uint64_t a1)
{
  result = sub_1000266A0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100012C6C()
{
  v1 = v0;
  sub_100026690();
  v2 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion) = 0;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer) = 0;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_restingQuaternion) = xmmword_100029860;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = 0;
  v4 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_startTime;
  *(v1 + v4) = CFAbsoluteTimeGetCurrent();
  v5 = [objc_allocWithZone(CMMotionManager) init];
  v6 = *(v1 + v2);
  *(v1 + v2) = v5;

  v7 = *(v1 + v2);
  if (v7)
  {
    [v7 startDeviceMotionUpdates];
  }

  v8 = sub_100026680();
  v9 = sub_100026BA0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting device motion updates", v10, 2u);
  }

  v11 = sub_100026680();
  v12 = sub_100026BA0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Scheduling timer to listen for motion updates", v13, 2u);
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  swift_weakInit();
  v20[4] = sub_100013214;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100013174;
  v20[3] = &unk_100039EA0;
  v16 = _Block_copy(v20);

  v17 = [v14 scheduledTimerWithTimeInterval:1 repeats:v16 block:0.0166666667];
  _Block_release(v16);
  v18 = *(v1 + v3);
  *(v1 + v3) = v17;

  return v1;
}

void sub_100012F3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot))
    {
      v4 = Strong + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        swift_getObjectType();
        if (qword_100040930 != -1)
        {
          swift_once();
        }

        (*(v5 + 8))(xmmword_100042C40, *algn_100042C50, xmmword_100042C60, unk_100042C70);

        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v6 = *(Strong + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
    if (!v6 || (v7 = [v6 deviceMotion]) == 0)
    {
LABEL_12:

      return;
    }

    v8 = v7;
    v9 = [v7 attitude];
    [v9 quaternion];

    sub_100026BD0();
    v19 = v11;
    v20 = v10;
    v17 = v13;
    v18 = v12;
    v14 = v3 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(ObjectType, v15, v20, v19, v18, v17);

LABEL_11:
      swift_unknownObjectRelease();
      return;
    }
  }
}

void sub_100013174(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000131DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001321C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100013240(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013254(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001329C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100013310(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v13 = a4;
  v14 = a5;
  v15 = sub_100026610();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s5ModelCMa(0);
  sub_100015F18(&qword_100041230, _s5ModelCMa, &unk_100029100);
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v8 = v16 - 3;
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  if (v8 > 1)
  {
    v10 = v14(v9);
  }

  else
  {
    v10 = v13(v9);
  }

  v11 = v10;
  (*(v5 + 8))(v7, v15);
  return v11;
}

uint64_t sub_10001353C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = sub_100026910();
  a5[1] = v10;
  v11 = sub_100003598(&qword_100041C20, &qword_100029A08);
  return sub_1000135B4(a2, a3, a4 & 1, a1, a5 + *(v11 + 44));
}

uint64_t sub_1000135B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v156 = a4;
  v164 = a5;
  v162 = sub_100003598(&qword_100041C28, &qword_100029A10);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v131 = v125 - v8;
  v9 = sub_100003598(&qword_100041C30, &qword_100029A18);
  __chkstk_darwin(v9 - 8);
  v155 = v125 - v10;
  v158 = sub_100026520();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v130 = v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003598(&qword_100041C38, &qword_100029A20);
  v13 = __chkstk_darwin(v12 - 8);
  v163 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v125 - v15;
  v129 = sub_1000267D0();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v126 = v17;
  v127 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003598(&qword_100041C40, &qword_100029A28);
  v19 = __chkstk_darwin(v18 - 8);
  v159 = v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v169 = v125 - v21;
  v167 = sub_100026610();
  v170 = *(v167 - 8);
  v22 = __chkstk_darwin(v167);
  v153 = v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v152 = v125 - v24;
  v150 = sub_100026780();
  v147 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = (v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = sub_100026790();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v143 = (v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = sub_100026900();
  v142 = *(v144 - 8);
  v27 = __chkstk_darwin(v144);
  v137 = v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v136 = v125 - v29;
  v175 = sub_1000264A0();
  v30 = *(v175 - 8);
  __chkstk_darwin(v175);
  v32 = v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1000267A0();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v140 = v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100003598(&qword_100041C48, &qword_100029A30);
  __chkstk_darwin(v135);
  v151 = v125 - v34;
  v141 = sub_100003598(&unk_100041C50, &qword_100029A38);
  v35 = __chkstk_darwin(v141);
  v154 = v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v148 = v125 - v38;
  __chkstk_darwin(v37);
  v168 = v125 - v39;
  v134 = sub_100013310(a1, a2, a3 & 1, &GradientDefinition.height.getter, &GradientDefinition.width.getter);
  v133 = sub_100013310(a1, a2, a3 & 1, &GradientDefinition.width.getter, &GradientDefinition.height.getter);
  v40 = _s5ModelCMa(0);
  v41 = sub_100015F18(&qword_100041230, _s5ModelCMa, &unk_100029100);
  v172 = a3;
  v42 = v41;
  v43 = a2;
  sub_100026750();
  v44 = sub_100005540();

  v45 = v44[2];
  v173 = v40;
  v160 = v16;
  v165 = a2;
  v166 = a1;
  v171 = v42;
  v132 = v30;
  if (v45)
  {
    *&v180 = _swiftEmptyArrayStorage;
    sub_100015D98(0, v45, 0);
    v46 = v44;
    v47 = v180;
    v48 = v30 + 16;
    v174 = *(v30 + 16);
    v49 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v125[1] = v46;
    v50 = v46 + v49;
    v51 = *(v48 + 56);
    v52 = v175;
    do
    {
      (v174)(v32, v50, v52);
      sub_100026450();
      v177 = v53;
      sub_100026450();
      v52 = v175;
      v176 = v54;
      (*(v48 - 8))(v32, v175);
      *&v180 = v47;
      v56 = v47[2];
      v55 = v47[3];
      if (v56 >= v55 >> 1)
      {
        sub_100015D98((v55 > 1), v56 + 1, 1);
        v52 = v175;
        v47 = v180;
      }

      *&v57.f64[0] = v177;
      *&v57.f64[1] = v176;
      v47[2] = (v56 + 1);
      v47[v56 + 4] = vcvt_f32_f64(v57);
      v50 += v51;
      --v45;
    }

    while (v45);

    v43 = v165;
  }

  else
  {

    v47 = _swiftEmptyArrayStorage;
  }

  sub_100026750();
  v58 = sub_100005540();

  v59 = v58[2];
  if (v59)
  {
    *&v180 = _swiftEmptyArrayStorage;
    sub_100026CE0();
    *&v177 = *(v132 + 16);
    v60 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v174 = v58;
    v61 = v58 + v60;
    *&v176 = *(v132 + 72);
    v62 = (v132 + 8);
    v63 = v175;
    do
    {
      (v177)(v32, v61, v63);
      sub_100026430();
      (*v62)(v32, v63);
      sub_100026CC0();
      sub_100026CF0();
      sub_100026D00();
      sub_100026CD0();
      v61 += v176;
      --v59;
    }

    while (v59);

    v64 = v180;
    v43 = v165;
  }

  else
  {

    v64 = _swiftEmptyArrayStorage;
  }

  sub_1000268B0();
  v65 = v136;
  sub_1000268F0();
  v66 = v143;
  *v143 = v47;
  (*(v138 + 104))(v66, enum case for MeshGradient.Locations.points(_:), v139);
  v67 = v149;
  *v149 = v64;
  (*(v147 + 104))(v67, enum case for MeshGradient.Colors.colors(_:), v150);
  v68 = v142;
  v69 = v144;
  (*(v142 + 16))(v137, v65, v144);
  v70 = v140;
  sub_100026770();
  (*(v68 + 8))(v65, v69);
  v71 = v166;
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v152;
  sub_100026710();

  v73 = v151;
  sub_100026590();
  v74 = *(v170 + 8);
  v170 += 8;
  *&v177 = v74;
  v74(v72, v167);
  (*(v145 + 32))(v73, v70, v146);
  v75 = sub_100026920();
  v76 = v71;
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  v77 = v43;
  v78 = v148;
  v79 = &v148[*(v141 + 36)];
  sub_100003598(&qword_100041C60, &qword_100029A88);
  sub_100026710();

  *v79 = v75;
  v80 = v73;
  v81 = 1;
  sub_100016724(v80, v78, &qword_100041C48, &qword_100029A30);
  v82 = v78;
  v83 = v77;
  sub_100016724(v82, v168, &unk_100041C50, &qword_100029A38);
  v84 = [objc_opt_self() standardPreferences];
  v85 = sub_1000269F0();
  LOBYTE(v66) = [v84 userHasOptedInToPreference:v85];

  v86 = v169;
  if (v66)
  {
    v87 = v172;
    sub_100026750();
    v88 = sub_100005540();

    *&v180 = v88;
    swift_getKeyPath();
    v89 = v128;
    v90 = v127;
    v91 = v129;
    (*(v128 + 16))(v127, v156, v129);
    v92 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v93 = (v126 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    (*(v89 + 32))(v94 + v92, v90, v91);
    v95 = v94 + v93;
    *v95 = v76;
    *(v95 + 8) = v83;
    v96 = v87 & 1;
    v86 = v169;
    *(v95 + 16) = v96;
    sub_1000159D8(v76, v83);
    sub_100003598(&qword_100041C80, &qword_100029AC8);
    sub_100003598(&qword_100041C88, &qword_100029AD0);
    sub_1000166DC(&qword_100041C90, &qword_100041C80, &qword_100029AC8, &protocol conformance descriptor for [A]);
    sub_100015F18(&qword_100041C98, &type metadata accessor for MeshGradientPoint, &protocol conformance descriptor for MeshGradientPoint);
    sub_100015F60();
    sub_1000268E0();
    v81 = 0;
  }

  v97 = sub_100003598(&qword_100041C68, &qword_100029A90);
  (*(*(v97 - 8) + 56))(v86, v81, 1, v97);
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v153;
  sub_100026710();

  v99 = v155;
  sub_100026530();
  (v177)(v98, v167);
  v100 = v157;
  v101 = v158;
  if ((*(v157 + 48))(v99, 1, v158) == 1)
  {
    sub_10000C6E0(v99, &qword_100041C30, &qword_100029A18);
    v102 = v160;
    (*(v161 + 56))(v160, 1, 1, v162);
  }

  else
  {
    v103 = v130;
    (*(v100 + 32))(v130, v99, v101);
    v104 = sub_1000264F0();
    sub_100026510();
    sub_100026910();
    sub_1000267B0();
    *&v178[6] = v180;
    *&v178[22] = v181;
    *&v178[38] = v182;
    sub_1000264E0();
    v106 = v105;
    sub_1000267C0();
    v108 = v107 * -0.5;
    v109 = *(sub_100003598(&qword_100041C78, &unk_100029AA0) + 36);
    v110 = enum case for BlendMode.multiply(_:);
    v111 = sub_100026930();
    v112 = v131;
    (*(*(v111 - 8) + 104))(&v131[v109], v110, v111);
    v113 = *&v178[16];
    *(v112 + 10) = *v178;
    *v112 = v104;
    *(v112 + 8) = 256;
    *(v112 + 26) = v113;
    *(v112 + 42) = *&v178[32];
    *(v112 + 56) = *&v178[46];
    *(v112 + 64) = v106;
    *(v112 + 72) = 0;
    *(v112 + 73) = *v179;
    *(v112 + 76) = *&v179[3];
    *(v112 + 80) = 0;
    *(v112 + 88) = v108;
    sub_100026500();
    v115 = v114;
    (*(v100 + 8))(v103, v101);
    v116 = v162;
    *(v112 + *(v162 + 36)) = v115;
    v102 = v160;
    sub_100016724(v112, v160, &qword_100041C28, &qword_100029A10);
    (*(v161 + 56))(v102, 0, 1, v116);
  }

  v117 = v168;
  v118 = v154;
  sub_1000161E8(v168, v154, &unk_100041C50, &qword_100029A38);
  v119 = v159;
  sub_1000161E8(v86, v159, &qword_100041C40, &qword_100029A28);
  v120 = v163;
  sub_1000161E8(v102, v163, &qword_100041C38, &qword_100029A20);
  v121 = v164;
  sub_1000161E8(v118, v164, &unk_100041C50, &qword_100029A38);
  v122 = v102;
  v123 = sub_100003598(&qword_100041C70, &qword_100029A98);
  sub_1000161E8(v119, v121 + *(v123 + 48), &qword_100041C40, &qword_100029A28);
  sub_1000161E8(v120, v121 + *(v123 + 64), &qword_100041C38, &qword_100029A20);
  sub_10000C6E0(v122, &qword_100041C38, &qword_100029A20);
  sub_10000C6E0(v169, &qword_100041C40, &qword_100029A28);
  sub_10000C6E0(v117, &unk_100041C50, &qword_100029A38);
  sub_10000C6E0(v120, &qword_100041C38, &qword_100029A20);
  sub_10000C6E0(v119, &qword_100041C40, &qword_100029A28);
  return sub_10000C6E0(v118, &unk_100041C50, &qword_100029A38);
}

uint64_t sub_100014B94@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, char *, uint64_t)@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  LODWORD(KeyPath) = a4;
  v98 = a3;
  v96 = a2;
  v108 = a5;
  v109 = a1;
  v5 = sub_100003598(&qword_100041CF8, &qword_100029B00);
  __chkstk_darwin(v5);
  v7 = v88 - v6;
  v8 = sub_100003598(&qword_100041CB0, &qword_100029AD8);
  __chkstk_darwin(v8);
  v105 = (v88 - v9);
  v10 = sub_1000267D0();
  v92 = *(v10 - 8);
  v93 = v10;
  __chkstk_darwin(v10);
  v90 = v11;
  v91 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003598(&unk_100041D00, &unk_100029B08);
  v102 = *(v12 - 8);
  v103 = v12;
  __chkstk_darwin(v12);
  v100 = (v88 - v13);
  v14 = sub_100003598(&qword_100041378, &qword_100029430);
  __chkstk_darwin(v14 - 8);
  v16 = v88 - v15;
  v17 = sub_100026610();
  v94 = *(v17 - 8);
  v95 = v17;
  __chkstk_darwin(v17);
  v19 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100026570();
  v106 = *(v20 - 8);
  v107 = v20;
  v21 = *(v106 + 64);
  v22 = __chkstk_darwin(v20);
  v89 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v99 = v88 - v23;
  v24 = sub_100003598(&qword_100041D10, &qword_100029B18);
  v25 = __chkstk_darwin(v24 - 8);
  v101 = v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v104 = v88 - v27;
  if (sub_100026400())
  {
    v88[1] = v5;
    v88[2] = v8;
    v28 = sub_100026430();
    sub_100026910();
    sub_1000267B0();
    *&v119[6] = *(&v123[3] + 6);
    *&v119[22] = *(&v123[4] + 6);
    *&v119[38] = *(&v123[5] + 6);
    sub_1000267C0();
    v30 = v29;
    sub_100026450();
    v32 = v30 * v31;
    sub_1000267C0();
    v34 = v33;
    sub_100026450();
    v36 = v34 * v35;
    v37 = sub_1000268A0();
    *&v120[0] = v28;
    WORD4(v120[0]) = 256;
    *(v120 + 10) = *v119;
    *(&v120[1] + 10) = *&v119[16];
    *(&v120[2] + 10) = *&v119[32];
    *(&v120[3] + 1) = *&v119[46];
    *&v121 = v32;
    *(&v121 + 1) = v36;
    *(v122 + 8) = xmmword_1000298F0;
    *&v122[0] = v37;
    *(&v122[1] + 1) = 0x3FF0000000000000;
    _s5ModelCMa(0);
    sub_100015F18(&qword_100041230, _s5ModelCMa, &unk_100029100);
    sub_100026750();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100026710();

    sub_1000264D0();
    (*(v94 + 8))(v19, v95);
    if ((*(v106 + 48))(v16, 1, v107) == 1)
    {
      sub_10000C6E0(v16, &qword_100041378, &qword_100029430);
      v38 = v104;
      (*(v102 + 56))(v104, 1, 1, v103);
    }

    else
    {
      v50 = v107;
      v51 = v106;
      v52 = *(v106 + 32);
      v95 = v106 + 32;
      v96 = v52;
      v53 = v99;
      v52(v99, v16, v107);
      sub_100026450();
      v55 = v54;
      v56 = v109;
      sub_1000267C0();
      v58 = v55 * v57;
      sub_100026450();
      v60 = v59;
      sub_1000267C0();
      v62 = v60 * v61;
      v63 = sub_100026910();
      v64 = v100;
      *v100 = v63;
      v64[1] = v65;
      v98 = *(sub_100003598(&qword_100041D20, &qword_100029B28) + 44);
      v118[0] = xmmword_100029900;
      KeyPath = swift_getKeyPath();
      v66 = v51;
      v67 = v89;
      (*(v51 + 16))(v89, v53, v50);
      v69 = v91;
      v68 = v92;
      v70 = v93;
      (*(v92 + 16))(v91, v56, v93);
      v71 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v72 = (v21 + *(v68 + 80) + v71) & ~*(v68 + 80);
      v73 = (v90 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      v75 = v67;
      v76 = v107;
      v96(v74 + v71, v75, v107);
      (*(v68 + 32))(v74 + v72, v69, v70);
      v77 = (v74 + v73);
      *v77 = v58;
      v77[1] = v62;
      sub_100003598(&qword_100041D28, &qword_100029B48);
      sub_100003598(&qword_100041D30, &qword_100029B50);
      sub_1000164B8();
      sub_100016598();
      v78 = v100;
      sub_1000268E0();
      v38 = v104;
      sub_100016724(v78, v104, &unk_100041D00, &unk_100029B08);
      (*(v102 + 56))(v38, 0, 1, v103);
      (*(v106 + 8))(v99, v76);
    }

    v114 = v121;
    v115 = v122[0];
    v116 = v122[1];
    v110 = v120[0];
    v111 = v120[1];
    v112 = v120[2];
    v113 = v120[3];
    v79 = v101;
    sub_1000161E8(v38, v101, &qword_100041D10, &qword_100029B18);
    v80 = v114;
    v81 = v115;
    v117[4] = v114;
    v117[5] = v115;
    v82 = v116;
    v117[6] = v116;
    v83 = v111;
    v117[0] = v110;
    v117[1] = v111;
    v85 = v112;
    v84 = v113;
    v117[2] = v112;
    v117[3] = v113;
    v86 = v105;
    *v105 = v110;
    v86[1] = v83;
    v86[5] = v81;
    v86[6] = v82;
    v86[2] = v85;
    v86[3] = v84;
    v86[4] = v80;
    v87 = sub_100003598(&qword_100041D18, &qword_100029B20);
    sub_1000161E8(v79, v86 + *(v87 + 48), &qword_100041D10, &qword_100029B18);
    sub_1000161E8(v120, v118, &qword_100041CC0, &qword_100029AE0);
    sub_1000161E8(v117, v118, &qword_100041CC0, &qword_100029AE0);
    sub_10000C6E0(v79, &qword_100041D10, &qword_100029B18);
    v118[4] = v114;
    v118[5] = v115;
    v118[6] = v116;
    v118[0] = v110;
    v118[1] = v111;
    v118[2] = v112;
    v118[3] = v113;
    sub_10000C6E0(v118, &qword_100041CC0, &qword_100029AE0);
    sub_1000161E8(v86, v7, &qword_100041CB0, &qword_100029AD8);
    swift_storeEnumTagMultiPayload();
    sub_100003598(&qword_100041CC0, &qword_100029AE0);
    sub_1000166DC(&qword_100041CA8, &qword_100041CB0, &qword_100029AD8, &protocol conformance descriptor for TupleView<A>);
    sub_100016018();
    sub_100026820();
    sub_10000C6E0(v120, &qword_100041CC0, &qword_100029AE0);
    sub_10000C6E0(v86, &qword_100041CB0, &qword_100029AD8);
    return sub_10000C6E0(v38, &qword_100041D10, &qword_100029B18);
  }

  else
  {
    v39 = sub_100026430();
    sub_100026910();
    sub_1000267B0();
    *(v123 + 6) = v120[0];
    *(&v123[1] + 6) = v120[1];
    *(&v123[2] + 6) = v120[2];
    sub_1000267C0();
    v41 = v40;
    sub_100026450();
    v43 = v41 * v42;
    sub_1000267C0();
    v45 = v44;
    sub_100026450();
    v47 = v45 * v46;
    v48 = sub_1000268C0();
    *v7 = v39;
    *(v7 + 4) = 256;
    *(v7 + 10) = v123[0];
    *(v7 + 26) = v123[1];
    *(v7 + 42) = v123[2];
    *(v7 + 7) = *(&v123[2] + 14);
    *(v7 + 8) = v43;
    *(v7 + 9) = v47;
    *(v7 + 10) = v48;
    *(v7 + 88) = xmmword_1000298F0;
    *(v7 + 13) = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_100003598(&qword_100041CC0, &qword_100029AE0);
    sub_1000166DC(&qword_100041CA8, &qword_100041CB0, &qword_100029AD8, &protocol conformance descriptor for TupleView<A>);
    sub_100016018();
    return sub_100026820();
  }
}

double sub_100015720@<D0>(uint64_t a2@<X8>, __n128 a3@<Q0>, double a4@<D1>)
{
  v5 = a3.n128_u64[0];
  sub_100026540();
  sub_1000267C0();
  sub_1000267C0();
  sub_1000268A0();
  v7 = sub_1000268D0();

  sub_100026760();
  v8 = sub_100026910();
  v10 = v9;
  sub_100026910();
  sub_1000267B0();
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v7;
  *(a2 + 48) = 256;
  *(a2 + 56) = v8;
  *(a2 + 64) = v10;
  *(a2 + 72) = v17;
  *(a2 + 88) = v18;
  result = *&v19;
  *(a2 + 104) = v19;
  *(a2 + 120) = v5;
  *(a2 + 128) = a4;
  return result;
}

double sub_1000158B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1000159D8(v1, v2);
  sub_1000267E0();
  sub_100026830();
  sub_100003598(&qword_100041C00, &qword_1000299F8);
  sub_1000159E0();
  sub_100026870();

  return result;
}

uint64_t sub_100015988()
{
  sub_1000159C4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_1000159E0()
{
  result = qword_100041C08;
  if (!qword_100041C08)
  {
    sub_100003508(&qword_100041C00, &qword_1000299F8);
    sub_1000166DC(&qword_100041C10, &qword_100041C18, &qword_100029A00, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041C08);
  }

  return result;
}

double sub_100015A98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return result;
}

uint64_t sub_100015B14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100026610();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  sub_100026720();
  return (*(v4 + 8))(v9, v3);
}

void sub_100015C84(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  *a2 = v3;
}

uint64_t sub_100015D04(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

id *sub_100015D78(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000167CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100015D98(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000169A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100015DC0()
{
  v1 = sub_1000267D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_1000159C4(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100015E64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1000267D0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_100014B94(v1 + v4, v6, v7, v8, a1);
}

uint64_t sub_100015F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100015F60()
{
  result = qword_100041CA0;
  if (!qword_100041CA0)
  {
    sub_100003508(&qword_100041C88, &qword_100029AD0);
    sub_1000166DC(&qword_100041CA8, &qword_100041CB0, &qword_100029AD8, &protocol conformance descriptor for TupleView<A>);
    sub_100016018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CA0);
  }

  return result;
}

unint64_t sub_100016018()
{
  result = qword_100041CB8;
  if (!qword_100041CB8)
  {
    sub_100003508(&qword_100041CC0, &qword_100029AE0);
    sub_1000160A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CB8);
  }

  return result;
}

unint64_t sub_1000160A4()
{
  result = qword_100041CC8;
  if (!qword_100041CC8)
  {
    sub_100003508(&qword_100041CD0, &qword_100029AE8);
    sub_100016130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CC8);
  }

  return result;
}

unint64_t sub_100016130()
{
  result = qword_100041CD8;
  if (!qword_100041CD8)
  {
    sub_100003508(&qword_100041CE0, &qword_100029AF0);
    sub_1000166DC(&qword_100041CE8, &qword_100041CF0, &qword_100029AF8, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CD8);
  }

  return result;
}

uint64_t sub_1000161E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003598(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100016250()
{
  v1 = sub_100026570();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000267D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

double sub_1000163A4@<D0>(uint64_t a2@<X8>)
{
  v4 = *(sub_100026570() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1000267D0() - 8);
  v8 = (v2 + ((*(v7 + 64) + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9.n128_f64[0] = *v8;
  v10 = v8[1];

  return sub_100015720(a2, v9, v10);
}

unint64_t sub_1000164B8()
{
  result = qword_100041D38;
  if (!qword_100041D38)
  {
    sub_100003508(&qword_100041D28, &qword_100029B48);
    sub_100016544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D38);
  }

  return result;
}

unint64_t sub_100016544()
{
  result = qword_100041D40;
  if (!qword_100041D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D40);
  }

  return result;
}

unint64_t sub_100016598()
{
  result = qword_100041D48;
  if (!qword_100041D48)
  {
    sub_100003508(&qword_100041D30, &qword_100029B50);
    sub_100016624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D48);
  }

  return result;
}

unint64_t sub_100016624()
{
  result = qword_100041D50;
  if (!qword_100041D50)
  {
    sub_100003508(&qword_100041D58, &qword_100029B58);
    sub_1000166DC(&qword_100041D60, &qword_100041D68, &qword_100029B60, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D50);
  }

  return result;
}

uint64_t sub_1000166DC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003508(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100016724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003598(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id *sub_10001678C(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100016AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000167AC(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100016BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000167CC(id *result, int64_t a2, char a3, id *a4)
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

  sub_100003598(&unk_100041D90, &qword_100029BD8);
  v10 = *(sub_1000264A0() - 8);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_1000264A0() - 8);
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

id *sub_1000169A4(id *result, int64_t a2, char a3, id *a4)
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

  if (v9)
  {
    sub_100003598(&qword_100041D70, &qword_100029B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_100016AB4(id *result, int64_t a2, char a3, id *a4)
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

  if (v9)
  {
    sub_100003598(&qword_100041D88, &qword_100029BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100016BC4(id *result, int64_t a2, char a3, id *a4)
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

  sub_100003598(&qword_100041D78, &unk_100029BC0);
  v10 = *(sub_100003598(&qword_100041D80, &qword_100029D10) - 8);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_100003598(&qword_100041D80, &qword_100029D10) - 8);
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

uint64_t sub_100016DB4()
{
  sub_100003508(&qword_100041C00, &qword_1000299F8);
  sub_1000159E0();
  return swift_getOpaqueTypeConformance2();
}

id sub_100016E58(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100016EDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Int sub_100016F30()
{
  sub_100026DC0();
  sub_100026DD0(0);
  return sub_100026E10();
}

Swift::Int sub_100016F9C(uint64_t a1)
{
  sub_100026DC0();
  sub_100026DD0(0);
  return sub_100026E10();
}

void sub_100016FEC(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v6 = sub_100026680();
  v7 = sub_100026B90();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136315138;
    v10 = [a2 description];
    v11 = sub_100026A20();
    v13 = v12;

    v14 = sub_100025380(v11, v13, &v37);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing editor with poster environment: %s", v8, 0xCu);
    sub_10000B7E0(v9);
  }

  v15 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor);
  *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor) = a1;

  v16 = a1;
  v17 = [a2 sourceTimeFontConfiguration];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100020A34();
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = PRPosterRoleIncomingCall;
    v21 = v19;
    v22 = [v18 effectiveFontForRole:v20];
    sub_10000B57C(v22);
  }

  sub_100017400(a2);
  sub_100017F14();
  if (*(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_isIPad) == 1)
  {
    v23 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView);
    if (v23)
    {
      v24 = v23;
      v25 = [a2 deviceOrientation];
      *&v24[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v25;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = v25;
      v41 = sub_10002261C;
      v42 = v27;
      v37 = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10001F874;
      v40 = &unk_10003A448;
      v28 = _Block_copy(&v37);
      v29 = v24;

      [v26 animateWithDuration:v28 animations:0.2];
      _Block_release(v28);
    }

    v30 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView);
    if (v30)
    {
      v31 = v30;
      v32 = [a2 deviceOrientation];
      *&v31[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v32;
      v33 = objc_opt_self();
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = v32;
      v41 = sub_10002261C;
      v42 = v34;
      v37 = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10001F874;
      v40 = &unk_10003A498;
      v35 = _Block_copy(&v37);
      v36 = v31;

      [v33 animateWithDuration:v35 animations:0.2];
      _Block_release(v35);
    }
  }
}

void sub_100017400(void *a1)
{
  v3 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v3 - 8);
  v80 = &v69 - v4;
  v5 = sub_100026390();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = __chkstk_darwin(v5);
  v77 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v69 - v8;
  v73 = sub_1000266A0();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000262C0();
  v75 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 currentEnvironment];
  v15 = [v14 featureFlags];

  LODWORD(v14) = [v15 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v14)
  {
    v16 = [v13 currentEnvironment];
    v17 = [v16 featureFlags];

    LODWORD(v16) = [v17 isFeatureEnabled:7];
    swift_unknownObjectRelease();
    if (v16)
    {
      v18 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_logger;
      swift_unknownObjectRetain();
      v71 = v1;
      v19 = sub_100026680();
      v20 = sub_100026BC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v70 = v18;
        v22 = v21;
        v23 = swift_slowAlloc();
        v83[0] = v23;
        *v22 = 136315138;
        v24 = [a1 description];
        v25 = sub_100026A20();
        v27 = v26;

        v28 = sub_100025380(v25, v27, v83);

        *(v22 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "Loading poster configuration from poster environment: %s", v22, 0xCu);
        sub_10000B7E0(v23);

        v18 = v70;
      }

      v29 = [a1 sourceContents];
      v83[0] = 0;
      v30 = [v29 loadUserInfoWithError:v83];
      swift_unknownObjectRelease();
      v31 = v83[0];
      if (v30)
      {
        v32 = sub_1000269A0();
        v33 = v31;

        v34 = v75;
        (*(v75 + 104))(v12, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v10);
        v35 = sub_1000262B0();
        v37 = v36;
        (*(v34 + 8))(v12, v10);
        v81 = v35;
        v82 = v37;
        sub_100026C70();
        if (*(v32 + 16) && (v38 = sub_100024EFC(v83), (v39 & 1) != 0))
        {
          sub_1000223C4(*(v32 + 56) + 32 * v38, v84);
          sub_10002231C(v83);

          if (swift_dynamicCast())
          {
            v40 = v81;
            v41 = v82;
            v42 = v71;
            (*(v72 + 16))(v74, v71 + v18, v73);
            sub_100026640();
            swift_allocObject();
            v43 = sub_100026620();
            __chkstk_darwin(v43);
            *(&v69 - 4) = v42;
            *(&v69 - 3) = v40;
            *(&v69 - 2) = v41;
            sub_100026630();
            sub_1000221D4(v40, v41);

            return;
          }
        }

        else
        {

          sub_10002231C(v83);
        }

        v44 = v80;
        v45 = sub_100026680();
        v46 = sub_100026BC0();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "No existing posterData found. Creating a new default definition.", v47, 2u);
        }

        sub_100022370();
        swift_allocError();
        swift_willThrow();
      }

      else
      {
        v48 = v83[0];
        sub_1000261D0();

        swift_willThrow();
        v44 = v80;
      }

      swift_errorRetain();
      v49 = sub_100026680();
      v50 = sub_100026BB0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v83[0] = v52;
        *v51 = 136315138;
        swift_getErrorValue();
        v53 = sub_100026D70();
        v55 = sub_100025380(v53, v54, v83);

        *(v51 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v49, v50, "Failed to load poster configuration: %s, going to a fallback definition!", v51, 0xCu);
        sub_10000B7E0(v52);
      }

      v56 = sub_100026600();
      v57 = *(v56 + 16);
      v58 = v71;
      if (v57)
      {
        v59 = sub_10000F600(v57);
        if ((v59 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v60 = v59;
          if (v59 < *(v56 + 16))
          {
            v61 = sub_100026610();
            v62 = *(v61 - 8);
            (*(v62 + 16))(v44, v56 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v60, v61);

            (*(v62 + 56))(v44, 0, 1, v61);
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      v61 = sub_100026610();
      (*(*(v61 - 8) + 56))(v44, 1, 1, v61);
LABEL_25:
      sub_100026610();
      if ((*(*(v61 - 8) + 48))(v44, 1, v61) == 1)
      {
        __break(1u);
      }

      else
      {
        v63 = v76;
        sub_1000262F0();
        v64 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
        swift_beginAccess();
        v66 = v77;
        v65 = v78;
        v67 = v79;
        (*(v78 + 16))(v77, v58 + v64, v79);
        swift_beginAccess();
        (*(v65 + 24))(v58 + v64, v63, v67);
        swift_endAccess();
        sub_10001A438();

        v68 = *(v65 + 8);
        v68(v66, v67);
        v68(v63, v67);
      }

      return;
    }
  }

  sub_10001AA6C(a1);
}

uint64_t sub_100017F14()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_10002264C;
  v21 = v2;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001F17C;
  v19 = &unk_10003A4C0;
  v3 = _Block_copy(&v16);

  v4 = [v1 addObserverForName:NSExtensionHostDidEnterBackgroundNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1000222DC;
  v21 = v5;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001F17C;
  v19 = &unk_10003A4E8;
  v6 = _Block_copy(&v16);

  v7 = [v1 addObserverForName:NSExtensionHostWillEnterForegroundNotification object:0 queue:0 usingBlock:v6];
  _Block_release(v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1000222FC;
  v21 = v8;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001F17C;
  v19 = &unk_10003A510;
  v9 = _Block_copy(&v16);

  v10 = [v1 addObserverForName:NSExtensionHostWillResignActiveNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_100022650;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001F17C;
  v19 = &unk_10003A538;
  v12 = _Block_copy(&v16);

  v13 = [v1 addObserverForName:NSExtensionHostDidBecomeActiveNotification object:0 queue:0 usingBlock:v12];
  _Block_release(v12);
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100028F20;
  *(v14 + 32) = v4;
  *(v14 + 40) = v7;
  *(v14 + 48) = v10;
  *(v14 + 56) = v13;

  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers) = v14;
}

id sub_1000183E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100026680();
  v5 = sub_100026B90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = [v3 effectiveFont];
    v9 = [v8 debugDescription];

    v10 = sub_100026A20();
    v12 = v11;

    v13 = sub_100025380(v10, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating editor with font from title label: %s", v6, 0xCu);
    sub_10000B7E0(v7);
  }

  result = sub_100020A34();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = PRPosterRoleIncomingCall;
  v16 = result;
  v17 = [v3 effectiveFontForRole:v15];
  sub_10000B57C(v17);

  result = sub_100020A34();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  sub_1000097A4();

  return [a1 updateActions];
}

uint64_t sub_1000186F4(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_1000262C0();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = sub_100026390();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_100018854, 0, 0);
}

uint64_t sub_100018854(uint64_t a1)
{
  v65 = v1;
  v2 = sub_100026680();
  v3 = sub_100026B90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finalizing editing session", v4, 2u);
  }

  v5 = v1[38];

  sub_1000261C0();
  swift_allocObject();
  sub_1000261B0();
  sub_100026190();
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
  swift_beginAccess();
  v7 = sub_100026330();
  swift_endAccess();
  v1[34] = v7;
  sub_100003598(&qword_100042040, &qword_100029D90);
  sub_1000220F4();
  v63 = sub_1000261A0();
  v62 = v8;
  v9 = v1[46];
  v10 = v1[43];
  v11 = v1[44];

  v12 = v5;
  v13 = *(v11 + 16);
  v13(v9, v12 + v6, v10);
  sub_100022440(&qword_100042058, &type metadata accessor for MonogramPosterConfiguration, &protocol conformance descriptor for MonogramPosterConfiguration);
  v14 = sub_1000261A0();
  v54 = v6;
  v55 = v12;
  v56 = v13;
  v15 = v1[42];
  v58 = v1[41];
  v16 = v1[39];
  v17 = v1[40];
  v18 = v1[37];
  v60 = v14;
  v61 = v19;
  v53 = *(v1[44] + 8);
  v53(v1[46], v1[43]);
  v59 = [objc_msgSend(v18 "environment")];
  swift_unknownObjectRelease();
  sub_100003598(&qword_100042060, &qword_100029D98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028E90;
  v21 = *(v17 + 104);
  v21(v15, enum case for MonogramPosterUserInfoKey.backgroundColorDescription(_:), v16);
  v22 = sub_1000262B0();
  v24 = v23;
  v57 = *(v17 + 8);
  v57(v15, v16);
  v1[30] = v22;
  v1[31] = v24;
  sub_100026C70();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = v63;
  *(inited + 80) = v62;
  v21(v58, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v16);
  sub_100022228(v63, v62);
  v25 = sub_1000262B0();
  v27 = v26;
  v57(v58, v16);
  v1[32] = v25;
  v1[33] = v27;
  sub_100026C70();
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v60;
  *(inited + 152) = v61;
  sub_100022228(v60, v61);
  sub_10002123C(inited);
  swift_setDeallocating();
  sub_100003598(&qword_100042068, &qword_100029DA0);
  swift_arrayDestroy();
  isa = sub_100026990().super.isa;

  v1[36] = 0;
  LODWORD(inited) = [v59 storeUserInfo:isa error:v1 + 36];

  v29 = v1[36];
  if (inited)
  {
    v30 = v1[38];
    v31 = v29;
    v32 = v30;
    v33 = sub_100026680();
    v34 = sub_100026B90();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v1[45];
      v36 = v1[43];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64[0] = v38;
      *v37 = 136315138;
      v56(v35, v55 + v54, v36);
      v39 = sub_1000262E0();
      v41 = v40;
      v53(v35, v36);
      v42 = sub_100025380(v39, v41, v64);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Saving poster ocnfiguration: %s", v37, 0xCu);
      sub_10000B7E0(v38);
    }

    sub_1000221D4(v63, v62);
    sub_1000221D4(v60, v61);
  }

  else
  {
    v43 = v29;
    sub_1000261D0();

    swift_willThrow();
    sub_1000221D4(v63, v62);
    sub_1000221D4(v60, v61);

    swift_errorRetain();
    v44 = sub_100026680();
    v45 = sub_100026BB0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64[0] = v47;
      *v46 = 136315138;
      swift_getErrorValue();
      v48 = sub_100026D70();
      v50 = sub_100025380(v48, v49, v64);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error finalizing editing: %s", v46, 0xCu);
      sub_10000B7E0(v47);
    }

    else
    {
    }
  }

  v51 = v1[1];

  return v51();
}

uint64_t sub_1000191A4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100019268;

  return sub_1000186F4(v6);
}

uint64_t sub_100019268()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000193C0()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:NSExtensionHostDidEnterBackgroundNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:NSExtensionHostWillEnterForegroundNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:NSExtensionHostWillResignActiveNotification object:0];

  v5 = [v1 defaultCenter];
  [v5 removeObserver:v0 name:NSExtensionHostDidBecomeActiveNotification object:0];

  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers) = _swiftEmptyArrayStorage;
}

id sub_1000195D0(uint64_t a1)
{
  v1 = sub_1000261F0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000269E0();
  __chkstk_darwin(v2 - 8);
  v3 = objc_opt_self();
  v4 = [v3 currentEnvironment];
  v5 = [v4 featureFlags];

  LODWORD(v4) = [v5 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v4 && (v6 = [v3 currentEnvironment], v7 = objc_msgSend(v6, "featureFlags"), v6, LODWORD(v6) = objc_msgSend(v7, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), v6))
  {
    sub_1000269D0();
    sub_1000261E0();
    sub_100026A30();
    sub_10000B82C(0, &qword_100041F88, UIAction_ptr);

    sub_10001BFD4();
    sub_1000269F0();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_100026C20();
    v12 = sub_1000269F0();

    [v11 setAccessibilityLabel:v12];
  }

  else
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000269D0();
    sub_1000261E0();
    v14 = sub_100026A30();
    v16 = v15;
    sub_10000B82C(0, &qword_100041F88, UIAction_ptr);

    sub_10001BFD4();
    sub_1000269F0();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = v16;

    v11 = sub_100026C20();
    v12 = sub_1000269F0();

    [v11 setAccessibilityLabel:v12];
  }

  return v11;
}

char *sub_100019B4C(uint64_t a1)
{
  v1 = sub_1000261F0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000269E0();
  __chkstk_darwin(v2 - 8);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000269D0();
  sub_1000261E0();
  v26 = sub_100026A30();
  swift_beginAccess();
  sub_100026370();
  swift_endAccess();
  v3 = sub_100026A60();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    sub_1000269D0();
    sub_1000261E0();
    v3 = sub_100026A30();
    v5 = v7;
  }

  sub_100003598(&qword_100041F68, &qword_100029CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028E90;
  *(inited + 32) = NSForegroundColorAttributeName;
  v9 = objc_opt_self();
  v10 = NSForegroundColorAttributeName;
  v11 = [v9 systemBackgroundColor];
  v12 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v13 = [v11 resolvedColorWithTraitCollection:v12];

  v14 = sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
  *(inited + 40) = v13;
  *(inited + 64) = v14;
  *(inited + 72) = NSFontAttributeName;
  v15 = NSFontAttributeName;
  result = sub_100020A34();
  if (result)
  {
    v17 = [*&result[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontWithSize:24.0];
    *(inited + 104) = sub_10000B82C(0, &qword_100041F78, UIFont_ptr);
    *(inited + 80) = v17;
    v18 = sub_100021378(inited);
    swift_setDeallocating();
    sub_100003598(&qword_100041F80, &qword_100029CE8);
    swift_arrayDestroy();
    sub_10001BC20(v18, 0, 0, 1, v3, v5);
    v20 = v19;

    sub_10000B82C(0, &qword_100041F88, UIAction_ptr);
    v21 = v20;

    sub_1000269F0();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v27;

    v24 = sub_100026C20();
    v25 = sub_1000269F0();

    [v24 setAccessibilityLabel:v25];

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10001A164(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = sub_100026390();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;

  v12 = sub_100026680();
  v13 = sub_100026B90();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100025380(v22, a2, v23);
    _os_log_impl(&_mh_execute_header, v12, v13, "Did change monogram text to: %s", v14, 0xCu);
    sub_10000B7E0(v15);
  }

  v16 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v17(v11, v3 + v16, v5);

  sub_100026380();
  v17(v9, v3 + v16, v5);
  swift_beginAccess();
  (*(v6 + 24))(v3 + v16, v11, v5);
  swift_endAccess();
  sub_10001A438();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v11, v5);
  result = sub_100020A34();
  if (result)
  {
    v20 = result;
    sub_1000097A4();

    result = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor);
    if (result)
    {
      return [result updateActions];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001A438()
{
  v0 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v58 - v1;
  v3 = sub_100026680();
  v4 = sub_100026B90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuration changed, updating views", v5, 2u);
  }

  sub_100020A90();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = v7;
    sub_100026300();
    swift_endAccess();
    v9 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
    swift_beginAccess();
    sub_10002167C(v2, v8 + v9);
    swift_endAccess();

    v10 = sub_100026330();
    swift_beginAccess();
    v11 = sub_100026330();
    swift_endAccess();
    LOBYTE(v8) = sub_10001FBA4(v10, v11);

    if ((v8 & 1) == 0)
    {
      v12 = sub_100026680();
      v13 = sub_100026B90();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Background color changed, updating background view", v14, 2u);
      }

      sub_100020A90();
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = v15;
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      swift_beginAccess();
      v17 = v16;
      v18 = sub_100026330();
      swift_endAccess();
      v19._rawValue = v18;
      v20.super.isa = sub_100026BF0(v19).super.isa;
      v21 = *&v17[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor];
      *&v17[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor] = v20;
    }

    v22 = sub_100026350();
    swift_beginAccess();
    v23 = sub_100026350();
    swift_endAccess();
    v24 = sub_10001FBA4(v22, v23);

    if ((v24 & 1) == 0)
    {
      v25 = sub_100026680();
      v26 = sub_100026B90();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Top background color changed, updating background view", v27, 2u);
      }

      sub_100020A90();
      if (!v28)
      {
        goto LABEL_27;
      }

      v29 = v28;
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      swift_beginAccess();
      v30 = v29;
      v31 = sub_100026350();
      swift_endAccess();
      v32._rawValue = v31;
      v33.super.isa = sub_100026BF0(v32).super.isa;
      v34 = *&v30[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor];
      *&v30[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor] = v33;
    }

    v35 = sub_100026370();
    v37 = v36;
    swift_beginAccess();
    v38 = sub_100026370();
    v40 = v39;
    swift_endAccess();
    if (v35 == v38 && v37 == v40)
    {
    }

    else
    {
      v41 = sub_100026D60();

      if ((v41 & 1) == 0)
      {
        v42 = sub_100026680();
        v43 = sub_100026B90();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Initials changed, updating monogram string", v44, 2u);
        }

        v45 = sub_100020A34();
        if (!v45)
        {
          goto LABEL_28;
        }

        v46 = v45;
        swift_beginAccess();
        v47 = v46;
        v48 = sub_100026370();
        v50 = v49;
        swift_endAccess();
        v51 = &v47[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
        *v51 = v48;
        v51[1] = v50;

        v52 = *&v47[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel];

        v53 = sub_1000269F0();

        [v52 setText:v53];
      }
    }

    v54 = sub_100020A34();
    if (v54)
    {
      v55 = v54;
      swift_beginAccess();
      v56 = v55;
      v57 = sub_100026320();
      swift_endAccess();
      v56[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] = v57 & 1;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}
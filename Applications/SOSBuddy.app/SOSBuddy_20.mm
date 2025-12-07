uint64_t sub_1001C78CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100365340, &qword_10028DF58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C7944()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001C7994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003653A8;
  if (!qword_1003653A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653A8);
  }

  return result;
}

unint64_t sub_1001C79E8()
{
  result = qword_1003653B0;
  if (!qword_1003653B0)
  {
    sub_100008CF0(&qword_100365398, &qword_10028E028);
    sub_100008CF0(&qword_1003653B8, &qword_10028E030);
    type metadata accessor for BorderedButtonStyle();
    sub_1001C7AFC();
    sub_1001C7BE0(v1);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653B0);
  }

  return result;
}

unint64_t sub_1001C7AFC()
{
  result = qword_1003653C0;
  if (!qword_1003653C0)
  {
    sub_100008CF0(&qword_1003653B8, &qword_10028E030);
    sub_100009274(&qword_1003653C8, &qword_1003653D0, &qword_10028E038, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653C0);
  }

  return result;
}

unint64_t sub_1001C7BE0(__n128 a1)
{
  result = qword_1003650F8;
  if (!qword_1003650F8)
  {
    type metadata accessor for BorderedButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003650F8);
  }

  return result;
}

uint64_t sub_1001C7C38()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001C7CBC()
{
  result = qword_1003653F8;
  if (!qword_1003653F8)
  {
    sub_100008CF0(&qword_1003653F0, &qword_10028E058);
    sub_1001C7D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653F8);
  }

  return result;
}

unint64_t sub_1001C7D48()
{
  result = qword_100365400;
  if (!qword_100365400)
  {
    sub_100008CF0(&qword_100365408, &qword_10028E060);
    sub_1000503F8();
    sub_100009274(&qword_100355058, &qword_100355060, &unk_100277F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365400);
  }

  return result;
}

unint64_t sub_1001C7E1C()
{
  result = qword_100365410;
  if (!qword_100365410)
  {
    sub_100008CF0(&qword_100365350, &qword_10028DF68);
    sub_1001C7EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365410);
  }

  return result;
}

unint64_t sub_1001C7EA8()
{
  result = qword_100365418;
  if (!qword_100365418)
  {
    sub_100008CF0(&qword_100365340, &qword_10028DF58);
    sub_100009274(&qword_100365420, &qword_100365428, &qword_10028E0F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365418);
  }

  return result;
}

uint64_t ConnectionAssistantConeRenderer.init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C86CC(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

void ConnectionAssistantConeRenderer.render(cone:parameters:camera:destination:renderCommandEncoder:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, float32x4_t a9, float32x4_t a10)
{
  ConnectionAssistantCone.project(from:camera:)(a2, v122, a9);
  if ((v133 & 1) == 0)
  {
    v97 = a3;
    v98 = a5;
    v18 = v124;
    v19 = v125;
    v20 = v126;
    v21 = v128;
    v22 = v130;
    v23 = v131;
    v24 = v127;
    v25 = v132;
    v26 = *(a1 + 16);
    v27 = vmulq_f32(v26, v26);
    *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v28);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
    v29 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    v30 = vsubq_f32(0, *(a2 + 80));
    v31 = 0;
    v30.f32[2] = 0.0 - COERCE_FLOAT(*(a2 + 88));
    v32 = vmulq_f32(v29, v30);
    v32.f32[0] = fminf(fmaxf(((v32.f32[2] + vaddv_f32(*v32.f32)) + 0.1) / 0.2, 0.0), 1.0);
    v107 = (v32.f32[0] * v32.f32[0]) * ((v32.f32[0] * -2.0) + 3.0);
    v33 = *(a2 + 128);
    v34 = *(a2 + 144);
    v35 = *(a2 + 160);
    v36 = *(a2 + 176);
    v114 = vaddq_f32(v36, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v29.f32[0]), v34, *v29.f32, 1), v35, v29, 2));
    v119 = vaddq_f32(v36, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, a10.f32[0]), v34, *a10.f32, 1), v35, a10, 2));
    v112 = *a2;
    v109 = *(a2 + 8);
    v37 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(*a2, v109, *(a2 + 16));
    if (v24)
    {
      v38 = -1;
    }

    else
    {
      v38 = 0;
    }

    v39 = vdup_n_s32(v38);
    v91 = v20;
    v92 = v19;
    v93 = v18;
    v104 = vbic_s8(v18, v39);
    v105 = vbic_s8(v20, v39);
    v103 = vbic_s8(v19, v39);
    v135 = v122[0];
    v136 = v122[1];
    v137 = v123;
    if (v25)
    {
      v40 = -1;
    }

    else
    {
      v40 = 0;
    }

    v94 = v23;
    if (v25)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v23;
    }

    v102 = v41;
    v42 = vdup_n_s32(v40);
    if ((*(a1 + 112) & 1) == 0)
    {
      v31 = *(a1 + 80);
    }

    v95 = v22;
    v96 = v21;
    v101 = vbic_s8(v21, v42);
    v43 = vbic_s8(v22, v42);
    if (*(a1 + 112))
    {
      v44 = -1;
    }

    else
    {
      v44 = 0;
    }

    v45 = v119;
    v45.i32[3] = 0;
    v120 = v45;
    v46 = v114;
    v46.i32[3] = 0;
    v115 = v46;
    v47 = *(a2 + 32);
    v99 = *(a1 + 48);
    v100 = vbicq_s8(*(a1 + 96), vdupq_n_s32(v44));
    v48 = v107 * *(a1 + 64);
    v49 = v135;
    v50 = *(&v136 + 1);
    v51 = v137;
    v52 = [swift_unknownObjectRetain() contents];
    v53 = a7;
    *v52 = v120;
    *(v52 + 1) = v115;
    v121 = v37;
    v52[8] = v37;
    *(v52 + 9) = v47;
    *(v52 + 3) = v99;
    v116 = v48;
    v52[16] = v48;
    *(v52 + 9) = v104;
    *(v52 + 10) = v103;
    *(v52 + 11) = v105;
    *(v52 + 12) = v49;
    *(v52 + 13) = v50;
    *(v52 + 28) = v51;
    *(v52 + 30) = v31;
    *(v52 + 16) = v101;
    *(v52 + 17) = v43;
    v52[36] = v102;
    *(v52 + 10) = v100;
    v54 = sub_100254A80(5);
    if (v54)
    {
      v55 = v54;
      v56 = String._bridgeToObjectiveC()();
      [a4 setLabel:v56];

      [a4 setRenderPipelineState:v55];
      v60 = ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter();
      v61 = *v58.i8;
      if ((v24 & 1) == 0)
      {
        *v58.i8 = v92;
        *v57.f32 = v93;
        *v59.f32 = v91;
        v60 = vminnm_f32(v60, COERCE_FLOAT32X2_T(ConnectionAssistantRendererProjection.Triangle.boundingBox.getter(v57, v58, v59)));
        v61 = vmaxnm_f32(v61, v62);
      }

      if ((v25 & 1) == 0)
      {
        v139 = v129;
        v138 = v96;
        v140 = v95;
        v141 = v94;
        v60 = vminnm_f32(v60, ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter());
        v61 = vmaxnm_f32(v61, v63);
      }

      swift_beginAccess();
      *v64.i32 = (v37 * *(a6 + 188)) * 2.8;
      v65 = vdup_lane_s32(v64, 0);
      v66 = vsub_f32(v60, v65);
      v67 = vadd_f32(v61, v65);
      v68 = [v97 width];
      v69 = [v97 height];
      v70 = 1.0;
      v71.i32[0] = 1.0;
      if (v112)
      {
        v71.i32[0] = 1.0;
        if (v109)
        {
          v72 = v112 / v109;
          v70 = fminf(v72, 1.0);
          v71.f32[0] = fmaxf(v72, 1.0);
        }
      }

      v71.f32[1] = 1.0 / v70;
      v134[0] = sub_1000FFA74(v68, v69, v66, v67, v71);
      v134[1] = v73;
      v134[2] = v74;
      v134[3] = v75;
      [a4 setScissorRect:v134];
      [a4 setVertexBuffer:*(v98 + 24) offset:0 atIndex:0];
      [a4 setVertexBuffer:*(v98 + 32) offset:0 atIndex:1];
      [a4 setFragmentBuffer:a7 offset:0 atIndex:0];
      [a4 drawPrimitives:4 vertexStart:0 vertexCount:4];
      swift_unknownObjectRelease();
    }

    sub_1001C8800(a1, v134);
    v76 = a8[9];
    if (v76)
    {
      v78 = a8[10];
      v77 = a8[11];
      v79 = a8[7];
      sub_1000231A8(a8[8], a8[9], v78, v77);
      v80 = [swift_unknownObjectRetain() contents];
      v81 = v79;
      *v80 = v116;
      v82 = 1.0;
      LODWORD(v83) = 1.0;
      if (v112)
      {
        LODWORD(v83) = 1.0;
        if (v109)
        {
          v84 = v112 / v109;
          v82 = fminf(v84, 1.0);
          *&v83 = fmaxf(v84, 1.0);
        }
      }

      *(&v83 + 1) = 1.0 / v82;
      v113 = *(a2 + 336);
      v117 = *(a2 + 320);
      v110 = *(a2 + 352);
      v106 = v83;
      v108 = *(a2 + 368);
      v85 = a8[6];
      v86 = [swift_unknownObjectRetain() contents];
      v87 = v85;
      *v86 = a9;
      *(v86 + 2) = v106;
      v86[6] = v121;
      *(v86 + 2) = v117;
      *(v86 + 3) = v113;
      *(v86 + 4) = v110;
      *(v86 + 5) = v108;
      v88 = sub_100254A80(0);
      if (v88)
      {
        v89 = v88;
        v90 = String._bridgeToObjectiveC()();
        [a4 setLabel:v90];

        [a4 setRenderPipelineState:v89];
        [a4 setVertexBuffer:v85 offset:0 atIndex:0];
        [a4 setVertexBuffer:v76 offset:0 atIndex:1];
        [a4 setVertexBuffer:v77 offset:0 atIndex:2];
        [a4 setFragmentBuffer:v79 offset:0 atIndex:0];
        [a4 drawPrimitives:3 vertexStart:0 vertexCount:v78];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001C86CC(void *a1, uint64_t a2, uint64_t a3)
{

  v7 = [swift_unknownObjectRetain() newBufferWithLength:176 options:1];
  swift_unknownObjectRelease();
  if (v7)
  {
    type metadata accessor for ConnectionAssistantStarsRenderer();
    swift_allocObject();
    ConnectionAssistantStarsRenderer.init(device:buffers:renderPipelines:)(a1, a2, a3);
    if (v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_100022AD4(v8, v9, v10);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  return a2;
}

double sub_1001C8800@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v18 = *a1;
  v5 = vmulq_f32(v4, v4);
  v5.f32[0] = v5.f32[2] + vaddv_f32(*v5.f32);
  v6 = vrsqrte_f32(v5.u32[0]);
  v7 = vmul_f32(v6, vrsqrts_f32(v5.u32[0], vmul_f32(v6, v6)));
  v17 = vmulq_n_f32(v4, vmul_f32(v7, vrsqrts_f32(v5.u32[0], vmul_f32(v7, v7))).f32[0]);
  v8 = COERCE_UNSIGNED_INT(atan2f(a1[2].f32[0], sqrtf(v5.f32[0])));
  __asm { FMOV            V1.4S, #1.0 }

  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  v15 = vmlaq_f32(a1[3], v14, vsubq_f32(_Q1, a1[3]));
  *a2 = 100;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v8 | 0x3B03126F00000000;
  *(a2 + 56) = xmmword_10028E100;
  *(a2 + 72) = 0;
  *(a2 + 80) = v15;
  *(a2 + 96) = 0;
  result = 2.00000047;
  *(a2 + 100) = xmmword_10028E110;
  return result;
}

uint64_t sub_1001C88E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C8928(uint64_t result, int a2, int a3)
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

id sub_1001C8988(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  sub_1000040A8(&qword_100365430, &qword_10028E1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  *(inited + 64) = sub_1000040A8(&qword_100365438, &qword_10028E1B0);
  *(inited + 40) = a1;
  v5 = UIFontDescriptorTraitsAttribute;

  sub_100256190(inited);
  swift_setDeallocating();
  sub_1001C8AF4(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_1001C8B5C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v3 fontDescriptorByAddingAttributes:isa];

  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v8;
}

uint64_t sub_1001C8AF4(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10036A0A0, &qword_10028E1B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001C8B5C()
{
  result = qword_1003549C0;
  if (!qword_1003549C0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003549C0);
  }

  return result;
}

id sub_1001C8BC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = type metadata accessor for ShadowView();
  v15.receiver = v3;
  v15.super_class = v8;
  v9 = objc_msgSendSuper2(&v15, "actionForLayer:forKey:", a1, v7);

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (a2 == 0x6150776F64616873 && a3 == 0xEA00000000006874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x6F43776F64616873 && a3 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x664F776F64616873 && a3 == 0xEC00000074657366 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x704F776F64616873 && a3 == 0xED00007974696361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x6152776F64616873 && a3 == 0xEC00000073756964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = String._bridgeToObjectiveC()();
        v14.receiver = v3;
        v14.super_class = v8;
        v11 = objc_msgSendSuper2(&v14, "actionForLayer:forKey:", a1, v10);

        v12 = sub_10024DBEC(a2, a3, a1, v11);
        swift_unknownObjectRelease();
        if (v12)
        {
          swift_unknownObjectRelease();
          return v12;
        }
      }
    }
  }

  return v9;
}

id sub_1001C8FA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1001C9010(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_1001C908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  v96 = a2;
  v112 = a1;
  v7 = sub_1000040A8(&qword_100365468, &qword_10028E308);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v109 = &v84 - v9;
  v10 = sub_1000040A8(&qword_100365470, &qword_10028E310);
  v106 = *(v10 - 8);
  v107 = v10;
  __chkstk_darwin(v10);
  v97 = (&v84 - v11);
  v12 = sub_1000040A8(&qword_100365478, &unk_100291D30);
  __chkstk_darwin(v12 - 8);
  v108 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v110 = &v84 - v15;
  v105 = type metadata accessor for OpacityTransition();
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v99 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000040A8(&qword_100357818, &qword_10027B560);
  v103 = *(v17 - 8);
  v104 = v17;
  __chkstk_darwin(v17);
  v100 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v101 = &v84 - v20;
  v21 = type metadata accessor for Font.Leading();
  v98 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000040A8(&qword_100365480, &qword_10028E318);
  __chkstk_darwin(v24 - 8);
  v111 = &v84 - v25;
  if (a3)
  {
    v26 = a3[9];
    v27 = a3[10];
    sub_1000088DC(a3 + 6, v26);
    (*(v27 + 8))(v150, v26, v27);
    if (v112)
    {
      v28 = *(v112 + 48);
      if (v28)
      {
        v29 = *(v28 + 24);
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = *(v28 + 16);
          if ((v30 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_17;
          }

LABEL_9:
          v85._countAndFlagsBits = v30;
          v85._object = v29;
          v90 = v8;
          v91 = v7;
          v92 = a5;
          v31 = v29;

          sub_1001DE260();
          if (v33)
          {
            v35 = v32;
          }

          else
          {
            v35 = 0;
          }

          v84 = v35;
          v36 = 0xE000000000000000;
          if (v33)
          {
            v36 = v33;
          }

          v87 = v36;
          v114[0] = v30;
          v114[1] = v31;
          sub_100031770(v32, v33, v34);

          v37 = Text.init<A>(_:)();
          v39 = v38;
          v41 = v40;
          static Font.body.getter();
          static Font.Weight.medium.getter();
          Font.weight(_:)();

          v42 = v98;
          (*(v98 + 104))(v23, enum case for Font.Leading.tight(_:), v21);
          Font.leading(_:)();

          (*(v42 + 8))(v23, v21);
          v43 = Text.font(_:)();
          v45 = v44;
          v47 = v46;

          sub_1000317C4(v37, v39, v41 & 1);

          static Color.white.getter();
          v48 = Text.foregroundColor(_:)();
          v95 = v49;
          v96 = v48;
          LOBYTE(v39) = v50;
          v98 = v51;

          sub_1000317C4(v43, v45, v47 & 1);

          KeyPath = swift_getKeyPath();
          v94 = swift_getKeyPath();
          v93 = v39 & 1;
          LOBYTE(v114[0]) = v39 & 1;
          LOBYTE(v113[0]) = 0;
          v89 = swift_getKeyPath();
          v88 = static Edge.Set.top.getter();
          EdgeInsets.init(_all:)();
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v147 = 0;
          static Alignment.leading.getter();
          _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
          *&v149[55] = v151[3];
          *&v149[71] = v151[4];
          *&v149[87] = v151[5];
          *&v149[103] = v151[6];
          *&v149[7] = v151[0];
          *&v149[23] = v151[1];
          *&v149[39] = v151[2];
          v60 = v99;
          OpacityTransition.init()();
          static Animation.easeInOut.getter();
          v61 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
          v62 = v101;
          v63 = v105;
          Transition.animation(_:)();

          (*(v102 + 8))(v60, v63);
          v65 = v103;
          v64 = v104;
          (*(v103 + 16))(v100, v62, v104);
          v114[0] = v63;
          v114[1] = v61;
          swift_getOpaqueTypeConformance2();
          v66 = AnyTransition.init<A>(_:)();
          (*(v65 + 8))(v62, v64);
          strcpy(v114, "GuidanceText-");
          HIWORD(v114[1]) = -4864;
          String.append(_:)(v85);

          v67 = v114[0];
          v105 = v114[1];
          v68 = *(v112 + 48);

          if (v68)
          {
            v69 = *(v68 + 72);
            if (v69)
            {

LABEL_19:
              v71 = static Alignment.top.getter();
              v72 = v97;
              *v97 = v71;
              *(v72 + 8) = v73;
              v74 = sub_1000040A8(&qword_100365498, &unk_10028E3C0);
              sub_1001C9D64(v69, v150, v84, v87, v72 + *(v74 + 44));

              v75 = v110;
              sub_10000CF4C(v72, v110, &qword_100365470, &qword_10028E310);
              v76 = 0;
LABEL_21:
              (*(v106 + 56))(v75, v76, 1, v107);
              v77 = v108;
              sub_100006C20(v75, v108, &qword_100365478, &unk_100291D30);
              v113[0] = v96;
              v113[1] = v95;
              LOBYTE(v113[2]) = v93;
              *(&v113[2] + 1) = *v145;
              HIDWORD(v113[2]) = *&v145[3];
              v78 = KeyPath;
              v113[3] = v98;
              v113[4] = KeyPath;
              v113[5] = 3;
              LOBYTE(v113[6]) = 0;
              *(&v113[6] + 1) = *v144;
              HIDWORD(v113[6]) = *&v144[3];
              v113[7] = v94;
              LOBYTE(v113[8]) = 0;
              HIDWORD(v113[8]) = *&v146[3];
              *(&v113[8] + 1) = *v146;
              v79 = v89;
              v113[9] = v89;
              v113[10] = 0x3FE0000000000000;
              v80 = v88;
              LOBYTE(v113[11]) = v88;
              *(&v113[11] + 1) = *v148;
              HIDWORD(v113[11]) = *&v148[3];
              v113[12] = v53;
              v113[13] = v55;
              v113[14] = v57;
              v113[15] = v59;
              LOBYTE(v113[16]) = 0;
              *(&v113[22] + 1) = *&v149[48];
              *(&v113[20] + 1) = *&v149[32];
              *(&v113[18] + 1) = *&v149[16];
              *(&v113[16] + 1) = *v149;
              v113[30] = *&v149[111];
              v113[31] = v66;
              *(&v113[28] + 1) = *&v149[96];
              *(&v113[26] + 1) = *&v149[80];
              *(&v113[24] + 1) = *&v149[64];
              v104 = v67;
              v113[32] = v67;
              v113[33] = v105;
              v81 = v109;
              memcpy(v109, v113, 0x110uLL);
              v82 = sub_1000040A8(&qword_100365488, &qword_10028E3B0);
              sub_100006C20(v77, v81 + *(v82 + 48), &qword_100365478, &unk_100291D30);
              sub_100006C20(v113, v114, &qword_100365490, &qword_10028E3B8);
              sub_100008FA0(v110, &qword_100365478, &unk_100291D30);
              sub_100008FA0(v77, &qword_100365478, &unk_100291D30);
              v114[0] = v96;
              v114[1] = v95;
              v115 = v93;
              *v116 = *v145;
              *&v116[3] = *&v145[3];
              v117 = v98;
              v118 = v78;
              v119 = 3;
              v120 = 0;
              *v121 = *v144;
              *&v121[3] = *&v144[3];
              v122 = v94;
              v123 = 0;
              *&v124[3] = *&v146[3];
              *v124 = *v146;
              v125 = v79;
              v126 = 0x3FE0000000000000;
              v127 = v80;
              *v128 = *v148;
              *&v128[3] = *&v148[3];
              v129 = v53;
              v130 = v55;
              v131 = v57;
              v132 = v59;
              v133 = 0;
              v137 = *&v149[48];
              v136 = *&v149[32];
              v135 = *&v149[16];
              v134 = *v149;
              *&v140[15] = *&v149[111];
              *v140 = *&v149[96];
              v139 = *&v149[80];
              v138 = *&v149[64];
              v141 = v66;
              v142 = v104;
              v143 = v105;
              sub_100008FA0(v114, &qword_100365490, &qword_10028E3B8);
              v70 = v111;
              sub_10000CF4C(v81, v111, &qword_100365468, &qword_10028E308);
              (*(v90 + 56))(v70, 0, 1, v91);
              a5 = v92;
              goto LABEL_22;
            }

            v69 = sub_10020327C();

            if (v69)
            {
              goto LABEL_19;
            }
          }

          v76 = 1;
          v75 = v110;
          goto LABEL_21;
        }

        if ((v29 & 0xF00000000000000) != 0)
        {
          v30 = *(v28 + 16);
          goto LABEL_9;
        }
      }

LABEL_17:
      v70 = v111;
      (*(v8 + 56))(v111, 1, 1, v7);
LABEL_22:
      sub_10000CF4C(v70, a5, &qword_100365480, &qword_10028E318);
      return sub_100008964(v150);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001CADA4(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for GuidanceMessagesModel();
  sub_1001CADA4(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001C9D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v83._countAndFlagsBits = a3;
  v83._object = a4;
  v80 = a5;
  v79 = type metadata accessor for OpacityTransition();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000040A8(&qword_100357818, &qword_10027B560);
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v73 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v74 = &v66[-v11];
  v82 = type metadata accessor for Font.Leading();
  v12 = *(v82 - 8);
  __chkstk_darwin(v82);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000040A8(&qword_1003654A0, &unk_100291DF0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v66[-v17];
  v19 = sub_1000040A8(&qword_1003654A8, qword_10028E3D0);
  __chkstk_darwin(v19 - 8);
  v84 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v85 = &v66[-v22];
  if (*(a1 + 16) < 2uLL)
  {
    v25 = (*(v16 + 56))(v85, 1, 1, v15);
  }

  else
  {
    v86[0] = a1;
    KeyPath = swift_getKeyPath();
    sub_1000089B0(a2, &v87);
    v23 = swift_allocObject();
    sub_100008A18(&v87._countAndFlagsBits, v23 + 16);

    v72 = sub_1000040A8(&qword_100355E30, &unk_10027A120);
    sub_1000040A8(&qword_1003654B8, &qword_10028E408);
    sub_100009274(&qword_100357870, &qword_100355E30, &unk_10027A120, &protocol conformance descriptor for [A]);
    sub_1001CABD0();
    ForEach<>.init(_:id:content:)();
    v24 = v85;
    (*(v16 + 32))(v85, v18, v15);
    v25 = (*(v16 + 56))(v24, 0, 1, v15);
  }

  v87 = v83;
  sub_100031770(v25, v26, v27);

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v33 = v82;
  (*(v12 + 104))(v14, enum case for Font.Leading.tight(_:), v82);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v33);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v33) = v37;

  sub_1000317C4(v28, v30, v32 & 1);

  v38 = [objc_opt_self() secondaryLabelColor];
  Color.init(_:)();
  KeyPath = Text.foregroundColor(_:)();
  v82 = v39;
  v72 = v40;
  LOBYTE(v28) = v41;

  sub_1000317C4(v34, v36, v33 & 1);

  v42 = swift_getKeyPath();
  v68 = v42;
  v71 = swift_getKeyPath();
  LOBYTE(v87._countAndFlagsBits) = v28 & 1;
  LOBYTE(v36) = v28 & 1;
  v67 = v28 & 1;
  LOBYTE(v86[0]) = 0;
  v70 = swift_getKeyPath();
  v69 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v120 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v122[3] + 7) = *(&v122[10] + 8);
  *(&v122[4] + 7) = *(&v122[11] + 8);
  *(&v122[5] + 7) = *(&v122[12] + 8);
  *(&v122[6] + 7) = *(&v122[13] + 8);
  *(v122 + 7) = *(&v122[7] + 8);
  *(&v122[1] + 7) = *(&v122[8] + 8);
  *(&v122[2] + 7) = *(&v122[9] + 8);
  v51 = v75;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v52 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v53 = v74;
  v54 = v79;
  Transition.animation(_:)();

  (*(v76 + 8))(v51, v54);
  v56 = v77;
  v55 = v78;
  (*(v77 + 16))(v73, v53, v78);
  v87._countAndFlagsBits = v54;
  v87._object = v52;
  swift_getOpaqueTypeConformance2();
  v79 = AnyTransition.init<A>(_:)();
  (*(v56 + 8))(v53, v55);
  v87._countAndFlagsBits = 0xD000000000000010;
  v87._object = 0x8000000100298BF0;
  String.append(_:)(v83);
  v83._countAndFlagsBits = v87._object;
  v83._object = v87._countAndFlagsBits;
  v57 = v84;
  sub_100006C20(v85, v84, &qword_1003654A8, qword_10028E3D0);
  v58 = v80;
  sub_100006C20(v57, v80, &qword_1003654A8, qword_10028E3D0);
  v59 = *(sub_1000040A8(&qword_1003654B0, qword_100291E00) + 48);
  v60 = v72;
  v86[0] = KeyPath;
  v86[1] = v72;
  LOBYTE(v86[2]) = v36;
  *(&v86[2] + 1) = *v118;
  HIDWORD(v86[2]) = *&v118[3];
  v86[3] = v82;
  v86[4] = v42;
  v86[5] = 3;
  LOBYTE(v86[6]) = 0;
  *(&v86[6] + 1) = *v117;
  HIDWORD(v86[6]) = *&v117[3];
  v62 = v70;
  v61 = v71;
  v86[7] = v71;
  LOBYTE(v86[8]) = 0;
  HIDWORD(v86[8]) = *&v119[3];
  *(&v86[8] + 1) = *v119;
  v86[9] = v70;
  v86[10] = 0x3FE0000000000000;
  LOBYTE(v55) = v69;
  LOBYTE(v86[11]) = v69;
  HIDWORD(v86[11]) = *&v121[3];
  *(&v86[11] + 1) = *v121;
  v86[12] = v44;
  v86[13] = v46;
  v86[14] = v48;
  v86[15] = v50;
  LOBYTE(v86[16]) = 0;
  *(&v86[22] + 1) = v122[3];
  *(&v86[20] + 1) = v122[2];
  *(&v86[18] + 1) = v122[1];
  *(&v86[16] + 1) = v122[0];
  v86[30] = *(&v122[6] + 15);
  *(&v86[28] + 1) = v122[6];
  *(&v86[26] + 1) = v122[5];
  *(&v86[24] + 1) = v122[4];
  v63 = v79;
  v64 = v83;
  v86[31] = v79;
  v86[32] = v83._object;
  v86[33] = v83._countAndFlagsBits;
  memcpy((v58 + v59), v86, 0x110uLL);
  sub_100006C20(v86, &v87, &qword_100365490, &qword_10028E3B8);
  sub_100008FA0(v85, &qword_1003654A8, qword_10028E3D0);
  v87._countAndFlagsBits = KeyPath;
  v87._object = v60;
  v88 = v67;
  *v89 = *v118;
  *&v89[3] = *&v118[3];
  v90 = v82;
  v91 = v68;
  v92 = 3;
  v93 = 0;
  *v94 = *v117;
  *&v94[3] = *&v117[3];
  v95 = v61;
  v96 = 0;
  *&v97[3] = *&v119[3];
  *v97 = *v119;
  v98 = v62;
  v99 = 0x3FE0000000000000;
  v100 = v55;
  *&v101[3] = *&v121[3];
  *v101 = *v121;
  v102 = v44;
  v103 = v46;
  v104 = v48;
  v105 = v50;
  v106 = 0;
  v110 = v122[3];
  v109 = v122[2];
  v108 = v122[1];
  v107 = v122[0];
  *&v113[15] = *(&v122[6] + 15);
  *v113 = v122[6];
  v112 = v122[5];
  v111 = v122[4];
  v114 = v63;
  object = v64._object;
  countAndFlagsBits = v64._countAndFlagsBits;
  sub_100008FA0(&v87, &qword_100365490, &qword_10028E3B8);
  return sub_100008FA0(v84, &qword_1003654A8, qword_10028E3D0);
}

uint64_t sub_1001CA7D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v40[0] = v7;
  v40[1] = v8;
  sub_100031770(v9, v10, v11);

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v38[0] = v17;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1000317C4(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  LOBYTE(v40[0]) = v22 & 1;
  LOBYTE(v39[0]) = 0;
  v27 = swift_getKeyPath();
  v28 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v41 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v42[6] + 7) = *&v42[21];
  *(&v42[8] + 7) = *&v42[23];
  *(&v42[10] + 7) = *&v42[25];
  *(&v42[12] + 7) = v43;
  *(v42 + 7) = *&v42[15];
  *(&v42[2] + 7) = *&v42[17];
  *(&v42[4] + 7) = *&v42[19];
  v39[0] = v18;
  v39[1] = v20;
  LOBYTE(v39[2]) = v22 & 1;
  v39[3] = v24;
  v39[4] = KeyPath;
  v39[5] = 3;
  LOBYTE(v39[6]) = 0;
  v39[7] = v26;
  LOBYTE(v39[8]) = 0;
  v39[9] = v27;
  v39[10] = 0x3FE0000000000000;
  LOBYTE(v39[11]) = v28;
  v39[12] = v30;
  v39[13] = v32;
  v39[14] = v34;
  v39[15] = v36;
  LOBYTE(v39[16]) = 0;
  *(&v39[24] + 1) = *&v42[8];
  *(&v39[26] + 1) = *&v42[10];
  *(&v39[28] + 1) = *&v42[12];
  *(&v39[16] + 1) = *v42;
  *(&v39[18] + 1) = *&v42[2];
  *(&v39[20] + 1) = *&v42[4];
  *(&v39[22] + 1) = *&v42[6];
  v39[30] = *(&v43 + 1);
  v39[31] = 0;
  LOBYTE(v39[32]) = 0;
  sub_1000040A8(&qword_1003654D0, &qword_10028E410);
  sub_1001CAC8C();
  View.accessibilityHidden(_:)();
  memcpy(v40, v39, 0x101uLL);
  return sub_100008FA0(v40, &qword_1003654D0, &qword_10028E410);
}

uint64_t sub_1001CAB90()
{
  sub_100008964((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1001CABD0()
{
  result = qword_1003654C0;
  if (!qword_1003654C0)
  {
    sub_100008CF0(&qword_1003654B8, &qword_10028E408);
    sub_1001CAC8C();
    sub_1001CADA4(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654C0);
  }

  return result;
}

unint64_t sub_1001CAC8C()
{
  result = qword_1003654C8;
  if (!qword_1003654C8)
  {
    sub_100008CF0(&qword_1003654D0, &qword_10028E410);
    sub_1001CAD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654C8);
  }

  return result;
}

unint64_t sub_1001CAD18()
{
  result = qword_1003654D8;
  if (!qword_1003654D8)
  {
    sub_100008CF0(&qword_1003654E0, &qword_10028E418);
    sub_10015A3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654D8);
  }

  return result;
}

uint64_t sub_1001CADA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001CADF0()
{
  result = qword_1003654E8;
  if (!qword_1003654E8)
  {
    sub_100008CF0(&qword_100365480, &qword_10028E318);
    sub_100009274(&unk_1003654F0, &qword_100365468, &qword_10028E308, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654E8);
  }

  return result;
}

unint64_t sub_1001CAEA0()
{
  v1 = *v0;
  v2 = 0x697261657070612ELL;
  v3 = 0x657070617369642ELL;
  if (v1 != 4)
  {
    v3 = 0x657070617369642ELL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 1)
  {
    v2 = 0x657261657070612ELL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001CAF7C(void *a1, unsigned int a2)
{
  _StringGuts.grow(_:)(55);
  v3._countAndFlagsBits = 0x746E657365727028;
  v3._object = 0xEE00203A656C6261;
  String.append(_:)(v3);
  v4 = a1;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3A6567617473202CLL;
  v10._object = 0xE900000000000020;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001002A3140;
  v11._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v11);
  sub_1000040A8(&unk_1003655D0, &qword_100278BF0);
  v12._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

void sub_1001CB10C(void *a1, __int16 a2)
{
  v3 = v2 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable;
  v4 = *(v2 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable);
  *v3 = a1;
  *(v3 + 8) = a2;
  if (v4)
  {
    if (a1)
    {

      _objc_release_x2();
    }

    else
    {
      v6 = v4;
      PassthroughSubject.send(_:)();
    }
  }

  else if (a1)
  {
    v5 = a1;
    PassthroughSubject.send(_:)();
  }
}

void (*sub_1001CB1C4(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = v1 + v2;
  v4 = *v3;
  LOWORD(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  v5 = v4;
  return sub_1001CB228;
}

void sub_1001CB228(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = v2;
    sub_1001CB10C(v2, v3);
LABEL_12:

    return;
  }

  v4 = *(a1 + 16) + *(a1 + 24);
  v5 = *v4;
  *v4 = v2;
  *(v4 + 8) = v3;
  if (!v5)
  {
    if (!v2)
    {
      return;
    }

    *(a1 + 10) = 1;
    v6 = v2;
    goto LABEL_11;
  }

  if (!v2)
  {
    *(a1 + 10) = 0;
    v6 = v5;
LABEL_11:
    PassthroughSubject.send(_:)();
    goto LABEL_12;
  }

  _objc_release_x1();
}

char *sub_1001CB32C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_bannerTapped;
  sub_1000040A8(&unk_100365630, &unk_1002837F0);
  swift_allocObject();
  *&v2[v6] = PassthroughSubject.init()();
  v7 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_bannerDismissedByUser;
  swift_allocObject();
  *&v2[v7] = PassthroughSubject.init()();
  v8 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_anyBannerPresentedChanged;
  sub_1000040A8(&unk_100359B30, &unk_10027DCF0);
  swift_allocObject();
  *&v2[v8] = PassthroughSubject.init()();
  v9 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_preferredBannerSizeWillChange;
  sub_1000040A8(&qword_100365640, &qword_100283800);
  swift_allocObject();
  *&v2[v9] = PassthroughSubject.init()();
  v10 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_preferredBannerSizeDidChange;
  swift_allocObject();
  *&v2[v10] = PassthroughSubject.init()();
  v11 = &unk_100365000;
  v12 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource;
  *&v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource] = 0;
  *&v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__contentProducer + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  *v13 = 0;
  *(v13 + 4) = 0;
  v14 = &v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
  *v14 = a1;
  *(v14 + 1) = a2;

  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v15];

  v17 = *&v3[v12];
  *&v3[v12] = v16;

  v37.receiver = v3;
  v37.super_class = type metadata accessor for BannerAgent();
  v18 = objc_msgSendSuper2(&v37, "init");
  v19 = qword_100353A10;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381C80);

  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v35 = a1;
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v25 = 136446466;
    v26 = v22;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10017C9E8(v28, v30, &v36);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = sub_10017C9E8(v35, a2, &v36);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] init for '%s'", v25, 0x16u);
    swift_arrayDestroy();
    v11 = &unk_100365000;
  }

  else
  {
  }

  v33 = *&v22[v11[166]];
  if (v33)
  {
    [v33 setDelegate:v22];
  }

  return v22;
}

id sub_1001CB6F8()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = v2;
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10017C9E8(v8, v10, &v18);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2080;
    v12 = &v6[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
    v13 = *&v6[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
    v14 = *(v12 + 1);

    v15 = sub_10017C9E8(v13, v14, &v18);

    *(v5 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit for '%s'", v5, 0x16u);
    swift_arrayDestroy();
  }

  v16 = type metadata accessor for BannerAgent();
  v19.receiver = v2;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, "dealloc");
}

void sub_1001CB9D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable);
    if (v7)
    {
      if (*(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8) >= 3u)
      {
        v8 = v7;
        v10 = sub_1001CB1C4(v13);
        if (*v9)
        {
          *(v9 + 9) = 1;
        }

        v10(v13, 0);
      }
    }

    else
    {
      v11 = sub_1001CBB74();
      sub_1001CB10C(v11, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_1001CBB74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v2 = "Banner.ConnectionAssistant";
    if (qword_100353A28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = v2 - 32;
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v55 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10017C9E8(0xD00000000000001ALL, v7 | 0x8000000000000000, &v55);
    _os_log_impl(&_mh_execute_header, v9, v10, "_presentBanner for '%{public}s'", v11, 0xCu);
    sub_100008964(v12);
  }

  v13 = *&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource];
  if (!v13)
  {
    v36 = v1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_10017C9E8(*&v36[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId], *&v36[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId + 8], &v55);
      _os_log_impl(&_mh_execute_header, v37, v38, "_presentBanner: _bannerSource for '%{public}s' has expired", v39, 0xCu);
      sub_100008964(v40);
    }

    goto LABEL_16;
  }

  v14 = &v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__contentProducer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v37 = v13;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_10017C9E8(0xD00000000000001ALL, v7 | 0x8000000000000000, &v55);
      _os_log_impl(&_mh_execute_header, v41, v42, "contentProducer for '%{public}s' has expired", v43, 0xCu);
      sub_100008964(v44);
    }

LABEL_16:
    return 0;
  }

  v16 = Strong;
  v17 = *(v14 + 1);
  v18 = *&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
  v19 = *&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId + 8];
  v20 = objc_allocWithZone(type metadata accessor for BannerViewController());
  v21 = v13;

  swift_unknownObjectRetain();
  v22 = sub_1001CEEBC(v18, v19, 0xD00000000000001ALL, v7 | 0x8000000000000000, v16, v17, v1, v20);
  sub_1000040A8(&unk_1003655F0, &unk_10028E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v24;
  sub_10001D630(0, &qword_10035CF30, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  sub_1002557F0(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &unk_100365600, &unk_100282FB0);
  v25 = v22;
  v26 = v22;
  sub_1000040A8(&unk_10035CF40, &qword_10028E4E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v55 = 0;
  LODWORD(v19) = [v21 postPresentable:v26 options:1 userInfo:isa error:&v55];

  v28 = v55;
  if (!v19)
  {
    v45 = v55;
    v46 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v49 = 136446210;
      v54[1] = v46;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
      v51 = String.init<A>(describing:)();
      v53 = sub_10017C9E8(v51, v52, &v55);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "_presentBanner failed: %{public}s", v49, 0xCu);
      sub_100008964(v50);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v29 = v26;
  v30 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543362;
    *(v33 + 4) = v29;
    *v34 = v25;
    _os_log_impl(&_mh_execute_header, v31, v32, "_presentBanner: presenting '%{public}@'", v33, 0xCu);
    sub_100008FA0(v34, &qword_100359B00, &unk_100278D70);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v25;
}

void sub_1001CC394(void *a1, int a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_14:
    v34 = type metadata accessor for Logger();
    sub_10000F53C(v34, qword_100381CC8);
    v35 = v4;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v94[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_10017C9E8(*&v35[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId], *&v35[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId + 8], v94);
      _os_log_impl(&_mh_execute_header, v36, v37, "_revokeBanner: _bannerSource for '%{public}s' has expired", v38, 0xCu);
      sub_100008964(v39);
    }

    goto LABEL_21;
  }

  v13 = *&v4[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource];
  if (!v13)
  {
    if (qword_100353A28 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

  v14 = &v4[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  v15 = *&v4[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  if (!v15)
  {
    v40 = qword_100353A28;
    v36 = v13;
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000F53C(v41, qword_100381CC8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "_revokeBanner when no presentable is active, ignoring", v44, 2u);
    }

LABEL_21:
    return;
  }

  LODWORD(v90) = a2;
  v91 = a3;
  v92 = v4;
  v16 = *(v14 + 4);
  v17 = v13;
  v18 = v15;
  v19 = [v18 requestIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = [a1 requestIdentifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v20 == v24 && v22 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000F53C(v29, qword_100381CC8);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_41;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "_revokeBanner for non-active presentable, ignoring";
LABEL_40:
      _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_41:

LABEL_53:
      return;
    }
  }

  v46 = sub_1001CB1C4(v94);
  if (*v45)
  {
    *(v45 + 9) = 2;
  }

  v46(v94, 0);
  if (v16 >= 3u)
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000F53C(v67, qword_100381CC8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_41;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "_revokeBanner for presentable for which revoke is already in progress, ignoring";
    goto LABEL_40;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = sub_10000F53C(v47, qword_100381CC8);
  v49 = a1;
  v89 = v48;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v94[0] = v87;
    *v52 = 136446210;
    v53 = v49;
    v88 = v17;
    v54 = v53;
    v55 = v49;
    v56 = [v53 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v18;
    v60 = v59;

    v17 = v88;
    v49 = v55;
    v61 = sub_10017C9E8(v57, v60, v94);
    v18 = v58;

    *(v52 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v50, v51, "_revokeBanner: revoking %{public}s", v52, 0xCu);
    sub_100008964(v87);
  }

  v62 = [v49 requestIdentifier];
  v94[0] = 0;
  v63 = [v17 revokePresentableWithRequestIdentifier:v62 reason:v91 animated:v90 & 1 userInfo:0 error:v94];

  if (v63)
  {
    v64 = v94[0];

    if (*v14 && !v14[8])
    {
      if (qword_1003539A0 != -1)
      {
        swift_once();
      }

      sub_1001CCDE0(v49, qword_100381C50);
    }

    else
    {
      v66 = sub_1001CB1C4(v94);
      if (*v65)
      {
        *(v65 + 8) = 3;
      }

      v66(v94, 0);
    }

    goto LABEL_53;
  }

  v91 = v18;
  v68 = v94[0];
  v69 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v70 = v49;
  swift_errorRetain();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v73 = 136446466;
    v74 = v70;
    v75 = v17;
    v76 = [v74 description];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v70;
    v79 = v78;

    v17 = v75;
    v80 = sub_10017C9E8(v77, v79, v94);

    *(v73 + 4) = v80;
    *(v73 + 12) = 2082;
    v93 = v69;
    swift_errorRetain();
    sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
    v81 = String.init<A>(describing:)();
    v83 = sub_10017C9E8(v81, v82, v94);

    *(v73 + 14) = v83;
    v70 = v90;
    _os_log_impl(&_mh_execute_header, v71, v72, "_revokeBanner(%{public}s) failed: %{public}s", v73, 0x16u);
    swift_arrayDestroy();
  }

  v84 = _convertErrorToNSError(_:)();
  v85 = [v84 code];

  if (v85 == 3)
  {
    if (qword_100353998 != -1)
    {
      swift_once();
    }

    sub_1001CCDE0(v70, qword_100381C48);
  }
}

void sub_1001CCDE0(void *a1, void *a2)
{
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchPredicate();
  v8 = *(v71 - 8);
  __chkstk_darwin(v71);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  v13 = a1;
  v14 = a2;
  v15 = v2;
  v70 = v12;
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v69 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v20 = 136446722;
    v21 = [v16 requestIdentifier];
    v63 = v15;
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v16;
    v24 = v23;
    v26 = v25;

    v27 = sub_10017C9E8(v24, v26, &v72);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2082;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = sub_10017C9E8(v28, v29, &v72);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2082;
    v15 = v63;
    v31 = *&v63[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    aBlock = *&v63[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    LOWORD(v74) = v31;
    v32 = aBlock;
    sub_1000040A8(&unk_1003655E0, &qword_10028E4C8);
    v33 = String.init<A>(describing:)();
    v35 = sub_10017C9E8(v33, v34, &v72);

    *(v20 + 24) = v35;
    v16 = v62;
    _os_log_impl(&_mh_execute_header, v17, v18, "didDisappear: for %{public}s, for reason '%{public}s', active presentable == %{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  v36 = v71;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v71);
  v37 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v36);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v38 = &v15[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  if (*v38)
  {
    v39 = *v38;
    v40 = [v39 requestIdentifier];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = [v16 requestIdentifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  if (!v43)
  {

    goto LABEL_18;
  }

  if (v41 == v45 && v43 == v47)
  {

    goto LABEL_15;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v48 & 1) == 0)
  {
LABEL_18:
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Received didDisappear for non-active presentable", v51, 2u);
    }

    goto LABEL_20;
  }

LABEL_15:
  v49 = *v38;
  if (*v38)
  {
    if (v38[9] << 8 == 512)
    {
      *v38 = 0;
      *(v38 + 4) = 0;
      LOBYTE(aBlock) = 0;
      PassthroughSubject.send(_:)();
LABEL_20:

      return;
    }

    v53 = sub_1001CB1C4(&aBlock);
    if (*v52)
    {
      *(v52 + 8) = 5;
    }

    v53(&aBlock, 0);
    v54 = v69;
    v55 = static OS_dispatch_queue.main.getter();
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = sub_1001CEE9C;
    v78 = v56;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1001D2438;
    v76 = &unk_100336D38;
    v57 = _Block_copy(&aBlock);

    v58 = v65;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100071864();
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
    v59 = v67;
    v60 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);

    (*(v54 + 8))(v59, v60);
    (*(v66 + 8))(v58, v68);
  }

  else
  {
    *(v38 + 4) = 0;
  }
}

void sub_1001CD628(void *a1, const char *a2, int a3, const char *a4, ...)
{
  v55 = a3;
  v56 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  v13 = a1;
  v14 = v4;
  v57 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v51 = v15;
    v18 = v17;
    v52 = swift_slowAlloc();
    v58 = v52;
    *v18 = 136446466;
    v19 = [v13 requestIdentifier];
    v50 = v16;
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v13;
    v54 = a4;
    v22 = v21;
    v24 = v23;

    v25 = sub_10017C9E8(v22, v24, &v58);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2082;
    v26 = *&v14[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    v59 = *&v14[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    v60 = v26;
    v27 = v59;
    sub_1000040A8(&unk_1003655E0, &qword_10028E4C8);
    v28 = String.init<A>(describing:)();
    v30 = sub_10017C9E8(v28, v29, &v58);
    v13 = v53;

    *(v18 + 14) = v30;
    a4 = v54;
    v31 = v51;
    _os_log_impl(&_mh_execute_header, v51, v50, v56, v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v33 = *&v14[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  if (v33)
  {
    v34 = v33;
    v35 = [v34 requestIdentifier];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = [v13 requestIdentifier];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v38)
  {
    if (v36 == v40 && v38 == v42)
    {

LABEL_16:
      v45 = sub_1001CB1C4(&v59);
      if (*v44)
      {
        *(v44 + 8) = v55;
      }

      v45(&v59, 0);
      return;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, a4, v48, 2u);
  }
}

double sub_1001CDAE8(void *a1, void *a2)
{
  v60 = type metadata accessor for DispatchPredicate();
  v5 = *(v60 - 8);
  __chkstk_darwin(v60);
  v7 = (v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000F53C(v8, qword_100381CC8);
  v10 = a1;
  v11 = a2;
  v12 = v2;
  v59[2] = v9;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v61 = v10;
  v15 = &unk_100365000;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v59[1] = v11;
    v17 = v16;
    v59[0] = swift_slowAlloc();
    v62 = v59[0];
    *v17 = 136446722;
    v18 = [v61 requestIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10017C9E8(v19, v21, &v62);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = sub_10017C9E8(v23, v24, &v62);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2082;
    v15 = &unk_100365000;
    v26 = *&v12[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    v63 = *&v12[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    LOWORD(v64) = v26;
    v27 = v63;
    sub_1000040A8(&unk_1003655E0, &qword_10028E4C8);
    v28 = String.init<A>(describing:)();
    v30 = sub_10017C9E8(v28, v29, &v62);

    *(v17 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v13, v14, "willDisappear: for %{public}s, for reason '%{public}s', active presentable == %{public}s", v17, 0x20u);
    swift_arrayDestroy();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  v31 = v60;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v60);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v31);
  if (v32)
  {
    v33 = *&v12[v15[168]];
    if (v33)
    {
      v34 = v33;
      v35 = [v34 requestIdentifier];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = [v61 requestIdentifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v38)
    {
      if (v36 == v40 && v38 == v42)
      {

        goto LABEL_15;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v43)
      {
LABEL_15:
        v45 = sub_1001CB1C4(&v63);
        if (*v44)
        {
          *(v44 + 8) = 4;
        }

        v45(&v63, 0);
        if (qword_1003539B0 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Received willDisappear for non-active presentable", v52, 2u);
    }

    return result;
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_18:
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
      return result;
    }
  }

  v55 = [v61 requestIdentifier];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v63 = v56;
  v64 = v58;
  PassthroughSubject.send(_:)();

  return result;
}

void sub_1001CE0B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001CE104();
  }
}

void sub_1001CE104()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "executePendingStateUpdate", v9, 2u);
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v11 = &v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    if (*&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable] && *(v11 + 4) == 5)
    {
      if ((*(v11 + 4) & 0xFF00) == 0x200)
      {
        v12 = v1;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v38 = v16;
          *v15 = 136446210;
          v17 = *(v11 + 4);
          v36 = *v11;
          v37 = v17;
          v18 = v36;
          sub_1000040A8(&unk_1003655E0, &qword_10028E4C8);
          v19 = String.init<A>(describing:)();
          v21 = sub_10017C9E8(v19, v20, &v38);

          *(v15 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "executePendingStateUpdate request expired, current presentable == %{public}s", v15, 0xCu);
          sub_100008964(v16);
        }

        v22 = *v11;
        *v11 = 0;
        *(v11 + 4) = 0;
        if (v22)
        {
          LOBYTE(v36) = 0;
          PassthroughSubject.send(_:)();
        }
      }

      else
      {
        v33 = sub_1001CBB74();
        sub_1001CB10C(v33, v34);
      }
    }

    else
    {
      v23 = v1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v38 = v27;
        *v26 = 136446210;
        v28 = *(v11 + 4);
        v36 = *v11;
        v37 = v28;
        v29 = v36;
        sub_1000040A8(&unk_1003655E0, &qword_10028E4C8);
        v30 = String.init<A>(describing:)();
        v32 = sub_10017C9E8(v30, v31, &v38);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v24, v25, "executePendingStateUpdate request overridden, current presentable == %{public}s", v26, 0xCu);
        sub_100008964(v27);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001CE55C(void *a1, void *a2)
{
  v56 = type metadata accessor for DispatchPredicate();
  v5 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000F53C(v8, qword_100381CC8);
  v10 = a1;
  v11 = a2;
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v54 = v9;
    v17 = v16;
    v53 = swift_slowAlloc();
    v59 = v53;
    *v17 = 136446722;
    v18 = [v10 requestIdentifier];
    v55 = v12;
    v19 = v10;
    v20 = v18;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, &v59);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2082;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = sub_10017C9E8(v25, v26, &v59);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2082;
    v10 = v19;
    v12 = v55;
    v28 = *&v55[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    v57 = *&v55[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    v58 = v28;
    v29 = v57;
    sub_1000040A8(&unk_1003655E0, &qword_10028E4C8);
    v30 = String.init<A>(describing:)();
    v32 = sub_10017C9E8(v30, v31, &v59);

    *(v17 + 24) = v32;
    v15 = &selRef_setShouldIgnoreDoNotDisturb_;
    _os_log_impl(&_mh_execute_header, v13, v14, "willNotAppear: for %{public}s, for reason '%{public}s', active presentable == %{public}s", v17, 0x20u);
    swift_arrayDestroy();

    v33 = &unk_100365000;
  }

  else
  {

    v33 = &unk_100365000;
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  v34 = v56;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v56);
  v35 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v34);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v36 = *&v12[v33[168]];
  if (v36)
  {
    v37 = v36;
    v38 = v15;
    v39 = [v37 v15[57]];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v15 = v38;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = [v10 v15[57]];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  if (v42)
  {
    if (v40 == v44 && v42 == v46)
    {

      goto LABEL_16;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
LABEL_16:
      if (qword_1003539B0 == -1)
      {
LABEL_17:
        v48 = qword_100381C60;
        sub_1001CDAE8(v10, qword_100381C60);
        sub_1001CCDE0(v10, v48);
        return;
      }

LABEL_22:
      swift_once();
      goto LABEL_17;
    }
  }

  else
  {
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Received willNotAppear for non-active presentable", v51, 2u);
  }
}

void sub_1001CEA70(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleTap: %{public}@", v10, 0xCu);
    sub_100008FA0(v11, &qword_100359B00, &unk_100278D70);
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    v14 = [v7 requestIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18[0] = v15;
    v18[1] = v17;
    PassthroughSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001CEDB8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1001CEDCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001CEE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001CEE64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1001CEEA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_1001CEEBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v66 = a7;
  v15 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v15 - 8);
  v62 = &v57 - v16;
  v17 = sub_1000040A8(&qword_1003560A0, &unk_10027A950);
  v64 = *(v17 - 8);
  v65 = v17;
  __chkstk_darwin(v17);
  v63 = &v57 - v18;
  v19 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_contentProducer];
  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_contentProducer + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_delegate];
  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC8SOSBuddy20BannerViewController_tapGesture;
  *&a8[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_unknownObjectWeakInit();
  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v22 = &_swiftEmptySetSingleton;
  }

  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_subscriptions] = v22;
  v23 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_requesterId];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_requestId];
  *v24 = a3;
  *(v24 + 1) = a4;
  *(v19 + 1) = a6;
  swift_unknownObjectWeakAssign();
  *(v20 + 1) = &off_100336CB8;
  swift_unknownObjectWeakAssign();
  v25 = type metadata accessor for BannerViewController();
  v68.receiver = a8;
  v68.super_class = v25;

  v26 = objc_msgSendSuper2(&v68, "initWithNibName:bundle:", 0, 0);
  v27 = qword_100353A28;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000F53C(v29, qword_100381CC8);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67[0] = v60;
    *v32 = 136446722;
    v33 = v28;
    v61 = v28;
    v34 = v33;
    v35 = [v33 description];
    v58 = a3;
    v36 = v35;
    v37 = a5;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v31;
    v40 = v39;

    v41 = v38;
    a5 = v37;
    v42 = sub_10017C9E8(v41, v40, v67);

    *(v32 + 4) = v42;
    *(v32 + 12) = 2080;
    v43 = sub_10017C9E8(a1, a2, v67);

    *(v32 + 14) = v43;
    *(v32 + 22) = 2080;
    v28 = v61;
    v44 = sub_10017C9E8(v58, a4, v67);

    *(v32 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v30, v59, "[%{public}s] init for '%s' and %s", v32, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v45 = *(a5 + 48);
  v46 = *(v45 + 32);
  v47 = *(v45 + 40);
  v48 = v28;
  [v48 setPreferredContentSize:{v46, v47}];
  v67[0] = *(a5 + 360);
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);

  v49 = static OS_dispatch_queue.main.getter();
  v67[3] = v49;
  v50 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v51 = v62;
  (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
  sub_1000040A8(&unk_100365610, &unk_100279630);
  sub_100009274(&qword_10035CF60, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10002683C();
  v52 = v63;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v51, &unk_10035CF50, &unk_10027C800);

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v54 = swift_allocObject();
  *(v54 + 16) = sub_1001CF6A0;
  *(v54 + 24) = v53;
  sub_100009274(&qword_10035CF70, &qword_1003560A0, &unk_10027A950, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v55 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v52, v55);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();

  return v48;
}

void sub_1001CF5A4()
{
  v1 = v0;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "bannerSourceDidInvalidate", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource) = 0;
}

uint64_t sub_1001CF6A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001CF6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365648;
  if (!qword_100365648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365648);
  }

  return result;
}

id sub_1001CF74C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_contentSizeCategoryDidChange;
  sub_1000040A8(&qword_100359008, &unk_10027D420);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_observers] = _swiftEmptyArrayStorage;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AccessibilitySettingsSource();
  v2 = objc_msgSendSuper2(&v18, "init");
  v3 = qword_100353A10;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = v4;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "init: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  else
  {
  }

  return v4;
}

id sub_1001CF978()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for AccessibilitySettingsSource();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1001CFBB8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353AD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AccessibilitySettingsSource::start", v10, 2u);
  }

  v11 = [objc_opt_self() defaultCenter];
  v12 = [objc_opt_self() mainQueue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001D0554;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100223018;
  aBlock[3] = &unk_100336E68;
  v14 = _Block_copy(aBlock);

  v15 = [v11 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:v12 usingBlock:v14];
  _Block_release(v14);

  v16 = OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_observers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 1;
}

void *sub_1001CFF1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136446210;
    sub_1001D0574();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = sub_10017C9E8(v12, v14, v22);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "AccessibilitySettingsSource::UIContentSizeCategory changed to %{public}s", v10, 0xCu);
    sub_100008964(v11);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v19 = [objc_opt_self() currentTraitCollection];
      v20 = [v19 preferredContentSizeCategory];
    }

    else
    {
      v20 = UIContentSizeCategoryUnspecified;
    }

    v21[1] = v20;
    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_1001D0230()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353AD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AccessibilitySettingsSource::stop", v10, 2u);
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_observers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_14:
    *(v1 + v11) = _swiftEmptyArrayStorage;

    return;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_7:
  v14 = objc_opt_self();
  if (v13 >= 1)
  {
    v15 = v14;
    v19 = v1;

    v16 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      ++v16;
      v18 = [v15 defaultCenter];
      [v18 removeObserver:v17];
      swift_unknownObjectRelease();
    }

    while (v13 != v16);

    v1 = v19;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1001D051C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1001D055C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1001D0574()
{
  result = qword_100365688;
  if (!qword_100365688)
  {
    type metadata accessor for Notification();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365688);
  }

  return result;
}

void ConnectionAssistantCone.init(baseOffset:height:tilt:towards:radius:color:)(void *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float a4@<S1>, float a5@<S3>, float a6@<S4>, float a7@<S2>)
{
  v11 = vmulq_f32(a3, a3);
  *&v13 = *&v11.i32[2] + vaddv_f32(*v11.i8);
  v14 = vrsqrte_f32(v13);
  v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
  *v11.i8 = vmul_f32(v15, v15);
  v33 = vmulq_n_f32(a3, vmul_f32(v15, vrsqrts_f32(v13, *v11.i8)).f32[0]);
  *v16.i64 = sub_1001D0E24(v33, a5, v11);
  *v17.i64 = sub_100016564(v33, v16);
  sub_100016890(v17, a7);
  v19 = vmulq_f32(v18, xmmword_100278430);
  v20 = vnegq_f32(v19);
  v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
  v22 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v19, v20, 8uLL), *v33.f32, 1), vextq_s8(v21, v21, 8uLL), v33.f32[0]);
  v23 = vrev64q_s32(v19);
  v23.i32[0] = v20.i32[1];
  v23.i32[3] = v20.i32[2];
  v24 = vmlaq_laneq_f32(v22, v23, v33, 2);
  v25 = vnegq_f32(v24);
  v26 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
  v27 = vrev64q_s32(v24);
  v27.i32[0] = v25.i32[1];
  v27.i32[3] = v25.i32[2];
  v34 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v18, 3), v27, v18, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v18.f32, 1), vextq_s8(v26, v26, 8uLL), v18.f32[0]));
  v38 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v35 = 0.0;
  [a1 getRed:&v38 green:&v37 blue:&v36 alpha:&v35];

  v28.f64[0] = v38;
  v29.f64[0] = v36;
  v28.f64[1] = v37;
  v29.f64[1] = v35;
  v30 = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v29);
  *&v29.f64[0] = vmulq_n_f32(v34, a4).u64[0];
  *&v29.f64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(a4, v34, 2));
  *a2 = a3;
  *(a2 + 16) = v29;
  *(a2 + 32) = a6;
  *(a2 + 48) = v30;
  *(a2 + 64) = 1065353216;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 1;
}

float ConnectionAssistantCone.Pulse.init(progress:color:)(void *a1, float a2)
{
  v3 = sub_1001D0EFC(a1, a2);

  return v3;
}

double ConnectionAssistantCone.init(baseOffset:topOffset:radius:color:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, float a4@<S2>, __n128 a5@<Q3>)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = a5;
  *(a1 + 64) = 1065353216;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  return result;
}

void ConnectionAssistantCone.project(from:camera:)(int32x4_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v6 = v3[1];
  v7 = vaddq_f32(*v3, a3);
  v8 = v7.f32[2];
  v9 = vmulq_f32(v6, v6);
  v37 = v7;
  v38 = 0;
  *&v10 = v9.n128_f32[2] + vaddv_f32(v9.n128_u64[0]);
  v9.n128_u64[0] = vrsqrte_f32(v10);
  v9.n128_u64[0] = vmul_f32(v9.n128_u64[0], vrsqrts_f32(v10, vmul_f32(v9.n128_u64[0], v9.n128_u64[0])));
  v11 = vmulq_n_f32(v6, vmul_f32(v9.n128_u64[0], vrsqrts_f32(v10, vmul_f32(v9.n128_u64[0], v9.n128_u64[0]))).f32[0]);
  v9.n128_u64[0] = vadd_f32(*v7.f32, *v6.f32);
  v35 = v11;
  v36 = *v6.f32;
  LODWORD(v12) = v3[1].i64[1];
  v9.n128_f32[2] = v7.f32[2] + v6.f32[2];
  v9.n128_u32[3] = 0;
  v13 = v3[2].f32[0];
  sub_10025D404(&v39, v9, v11, v13, a1);
  if (v44)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 0uLL;
  }

  else
  {
    v22 = v40;
    v23 = v41;
    v25 = v42;
    v27 = v37;
    v27.i32[3] = 0;
    v28 = v43;
    v38 = v39;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v15 = sub_1001D0B74(a1->i64, v27);
    v16 = v29;
    v17 = v30;
    v32 = v31;
    if (v3[7].i8[0])
    {
      v18 = 0;
      v21 = 0uLL;
      v19 = 1;
      v26 = 0uLL;
    }

    else
    {
      v33 = v3[5].f32[0];
      v34.n128_u64[0] = vadd_f32(*v37.f32, vmul_n_f32(v36, v33));
      v34.n128_f32[2] = v8 + (v12 * v33);
      v34.n128_u32[3] = 0;
      sub_10025D404(v45, v34, v35, v13 * v33, a1);
      v21 = v45[0];
      v26 = v45[1];
      v18 = v46;
      v19 = v47;
    }

    v24 = 0;
    v20 = v32 & 1;
    v14 = v28;
  }

  *a2 = v38;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = v14;
  *(a2 + 36) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v20;
  *(a2 + 72) = v21;
  *(a2 + 88) = v26;
  *(a2 + 108) = v19;
  *(a2 + 104) = v18;
  *(a2 + 109) = v24;
}

double ConnectionAssistantCone.Projection.boundingBox.getter(uint64_t a1)
{
  v5 = ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter();
  if ((*(v1 + 64) & 1) == 0)
  {
    v3.i64[0] = *(v1 + 48);
    v4.i64[0] = *(v1 + 56);
    v2.i64[0] = *(v1 + 40);
    v5 = vminnm_f32(v5, COERCE_FLOAT32X2_T(ConnectionAssistantRendererProjection.Triangle.boundingBox.getter(v2, v3, v4)));
  }

  if ((*(v1 + 108) & 1) == 0)
  {
    v5 = vminnm_f32(v5, ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter());
  }

  return *&v5;
}

__n128 ConnectionAssistantCone.pulse.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  result = *(v1 + 80);
  v4 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ConnectionAssistantCone.pulse.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  *(v1 + 112) = *(a1 + 32);
  return result;
}

__n128 ConnectionAssistantCone.Projection.ellipse.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[0];
  v4 = v1[1].n128_u64[1];
  v5 = v1[2].n128_u32[0];
  *a1 = *v1;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v4;
  a1[2].n128_u32[0] = v5;
  return result;
}

__n128 ConnectionAssistantCone.Projection.pulse.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 108);
  result = *(v1 + 72);
  v5 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 36) = v3;
  return result;
}

uint64_t sub_1001D0B74(uint64_t *a1, float32x4_t a2)
{
  v3 = ConnectionAssistantCamera.projectNormalized(point:)(a2);
  if (v4)
  {
    return 0;
  }

  v5.i32[0] = v3;
  if (*a1 && (v6 = a1[1]) != 0)
  {
    v7 = *a1 / v6;
    if (v7 >= 1.0)
    {
      v5.f32[0] = v7 * *&v3;
    }

    v8 = *(&v3 + 1);
    v9 = fminf(v7, 1.0);
  }

  else
  {
    v8 = *(&v3 + 1);
    v9 = 1.0;
  }

  v5.f32[1] = v8 / v9;
  v12 = v5;
  ConnectionAssistantRendererProjection.Ellipse.tangents(from:)(v5);
  if (v10)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_1001D0C40(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v12[6] = a1[6];
  v13 = a1[7].i8[0];
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = a2[7].i8[0];
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s8SOSBuddy23ConnectionAssistantConeV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14) & 1;
}

uint64_t _s8SOSBuddy23ConnectionAssistantConeV5PulseV23__derived_struct_equalsySbAE_AEtFZ_0(float32_t a1, float32x4_t a2, float32_t a3, float32x4_t a4)
{
  v4 = a2;
  v4.f32[3] = a1;
  v5 = vceqq_f32(a2, a4);
  a4.f32[3] = a3;
  return vminv_u16(vmovn_s32(vceqq_f32(v4, a4))) & vmovn_s32(v5).u16[3] & 1;
}

uint64_t _s8SOSBuddy23ConnectionAssistantConeV23__derived_struct_equalsySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vmovn_s32(vceqq_f32(*a1, *a2));
  if ((v2.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v2.i16[1] & v2.i16[2] & 1) == 0)
  {
    return 0;
  }

  v3 = vmovn_s32(vceqq_f32(a1[1], a2[1]));
  if ((v3.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v3.i16[1] & v3.i16[2] & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f32[0] != a2[2].f32[0])
  {
    return 0;
  }

  v4 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
  if ((v4.i16[0] & v4.i16[1] & 1) == 0 || (v4.i16[2] & v4.i16[3] & 1) == 0 || a1[4].f32[0] != a2[4].f32[0])
  {
    return 0;
  }

  v5 = a1[7].i8[0] & a2[7].i8[0];
  if ((a1[7].i8[0] & 1) == 0 && (a2[7].i8[0] & 1) == 0)
  {
    v6 = a1[6];
    v7 = a2[6];
    v8 = vextq_s8(v6, v6, 0xCuLL);
    v8.i32[0] = a1[5].i32[0];
    v8.i32[1] = v6.i32[0];
    v9 = vextq_s8(v6, v7, 0xCuLL);
    v9.i32[0] = a2[5].i32[0];
    v9.i32[1] = v7.i32[0];
    if ((vminv_u16(vmovn_s32(vceqq_f32(v8, v9))) & 1) == 0)
    {
      return 0;
    }

    v5 = vmovn_s32(vceqq_f32(v6, v7)).i8[6];
  }

  return v5 & 1;
}

double sub_1001D0E24(int32x4_t a1, float a2, int32x4_t a3)
{
  *a3.i32 = -*&a1.i32[2];
  *(a3.i64 + 4) = a1.i64[0];
  v3 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
  v4 = vnegq_f32(a1);
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), v4), a3, v3);
  v5 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), v4), v5, v3);
  v6 = __sincosf_stret(a2);
  v7.i32[0] = vextq_s8(v14, v14, 8uLL).u32[0];
  v7.i32[1] = v14.i32[0];
  v8 = vmul_n_f32(v7, v6.__sinval);
  v7.i32[0] = vextq_s8(v13, v13, 8uLL).u32[0];
  v7.i32[1] = v13.i32[0];
  *v9.f32 = vadd_f32(v8, vmul_n_f32(v7, v6.__cosval));
  v9.f32[2] = vmuls_lane_f32(v6.__sinval, *v14.i8, 1) + vmuls_lane_f32(v6.__cosval, *v13.i8, 1);
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  *&result = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]).u64[0];
  return result;
}

float sub_1001D0EFC(void *a1, float a2)
{
  v6 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  [a1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return a2;
}

__n128 sub_1001D0FA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001D0FCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 113))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D0FEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
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

  *(result + 113) = v3;
  return result;
}

__n128 sub_1001D1058(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001D1084(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 109))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D10A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
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

  *(result + 109) = v3;
  return result;
}

__n128 sub_1001D1100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1001D112C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D1174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1001D1208@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static HorizontalAlignment.center.getter();
  v38 = 1;
  sub_1001D140C(v2, &v26);
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v39 = v26;
  v40 = v27;
  v45[2] = v28;
  v45[3] = v29;
  v45[4] = v30;
  v45[5] = v31;
  v45[0] = v26;
  v45[1] = v27;
  sub_100006C20(&v39, v36, &qword_100365690, &qword_10028E788);
  sub_100008FA0(v45, &qword_100365690, &qword_10028E788);
  *&v37[39] = v41;
  *&v37[55] = v42;
  *&v37[71] = v43;
  *&v37[87] = v44;
  *&v37[7] = v39;
  *&v37[23] = v40;
  v6 = v38;
  v7 = *(v2 + 104);
  *&v26 = *(v2 + 96);
  *(&v26 + 1) = v7;
  sub_1000040A8(&qword_10035D788, &unk_10028E790);
  State.wrappedValue.getter();
  v8 = v36[0];
  sub_1000382E4(v2, &v26);
  v9 = swift_allocObject();
  v10 = v33;
  v9[7] = v32;
  v9[8] = v10;
  v11 = v35;
  v9[9] = v34;
  v9[10] = v11;
  v12 = v29;
  v9[3] = v28;
  v9[4] = v12;
  v13 = v31;
  v9[5] = v30;
  v9[6] = v13;
  v14 = v27;
  v9[1] = v26;
  v9[2] = v14;
  sub_1000382E4(v3, &v26);
  v15 = swift_allocObject();
  v16 = v33;
  v15[7] = v32;
  v15[8] = v16;
  v17 = v35;
  v15[9] = v34;
  v15[10] = v17;
  v18 = v29;
  v15[3] = v28;
  v15[4] = v18;
  v19 = v31;
  v15[5] = v30;
  v15[6] = v19;
  v20 = v27;
  v15[1] = v26;
  v15[2] = v20;
  v21 = *&v37[32];
  *(a2 + 65) = *&v37[48];
  v22 = *&v37[80];
  *(a2 + 81) = *&v37[64];
  *(a2 + 97) = v22;
  result = *v37;
  v24 = *&v37[16];
  *(a2 + 17) = *v37;
  *(a2 + 33) = v24;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  v25 = *&v37[95];
  *(a2 + 49) = v21;
  *(a2 + 112) = v25;
  *(a2 + 120) = v8;
  *(a2 + 128) = sub_1001D21AC;
  *(a2 + 136) = v9;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = sub_1001D21B4;
  *(a2 + 168) = v15;
  return result;
}

uint64_t sub_1001D140C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v27._object = 0x80000001002A3210;
  v5._countAndFlagsBits = 0x6961674120797254;
  v6.value._object = 0x80000001002962C0;
  v27._countAndFlagsBits = 0xD00000000000005CLL;
  v5._object = 0xE90000000000006ELL;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v27);

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  LOBYTE(v25[0]) = v9;
  *(&v25[0] + 1) = v10;
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.getter();
  if (v26)
  {
    v11 = 1;
  }

  else
  {
    v12 = *(a1 + 88);
    LOBYTE(v25[0]) = *(a1 + 80);
    *(&v25[0] + 1) = v12;
    State.wrappedValue.getter();
    v11 = v26;
  }

  sub_1000382E4(a1, v25);
  v13 = swift_allocObject();
  v14 = v25[7];
  v13[7] = v25[6];
  v13[8] = v14;
  v15 = v25[9];
  v13[9] = v25[8];
  v13[10] = v15;
  v16 = v25[3];
  v13[3] = v25[2];
  v13[4] = v16;
  v17 = v25[5];
  v13[5] = v25[4];
  v13[6] = v17;
  v18 = v25[1];
  v13[1] = v25[0];
  v13[2] = v18;
  type metadata accessor for UIMetrics();
  sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v19 = EnvironmentObject.init()();
  v21 = v20;
  LOBYTE(v25[0]) = v9;
  *(&v25[0] + 1) = v10;
  State.wrappedValue.getter();
  v22 = v26;
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v22;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = v11;
  *(a2 + 56) = sub_1001D21D8;
  *(a2 + 64) = v13;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = sub_100073CA8;
  *(a2 + 88) = result;
  return result;
}

void *sub_1001D1678()
{
  if (*v0)
  {
    *&v10[0] = *(v0 + 32);

    PassthroughSubject.send(_:)();

    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    LOBYTE(v10[0]) = v1;
    *(&v10[0] + 1) = v2;
    sub_1000040A8(&qword_100354AA8, &qword_10027D640);
    result = State.wrappedValue.getter();
    if ((v11 & 1) == 0)
    {
      State.wrappedValue.getter();
      LOBYTE(v10[0]) = v1;
      *(&v10[0] + 1) = v2;
      LOBYTE(v11) = 1;
      State.wrappedValue.setter();
      sub_1000382E4(v0, v10);
      v4 = swift_allocObject();
      v5 = v10[7];
      v4[7] = v10[6];
      v4[8] = v5;
      v6 = v10[9];
      v4[9] = v10[8];
      v4[10] = v6;
      v7 = v10[3];
      v4[3] = v10[2];
      v4[4] = v7;
      v8 = v10[5];
      v4[5] = v10[4];
      v4[6] = v8;
      v9 = v10[1];
      v4[1] = v10[0];
      v4[2] = v9;
      v11 = sub_1001D22A4;
      v12 = v4;

      PassthroughSubject.send(_:)();

      return sub_1001D1D44();
    }
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000518A8(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D1858(uint64_t a1, uint64_t a2)
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E48);
  sub_1000382E4(a2, v18);
  sub_1000382E4(a2, v16);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446467;
    v7 = sub_1000B9A7C();
    v9 = v8;
    sub_100038340(v18);
    v10 = sub_10017C9E8(v7, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    v11 = *(v17 + 16);
    v12 = *(v17 + 24);

    sub_100038340(v16);
    v13 = sub_10017C9E8(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] Throttle timer fired for %{private}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100038340(v18);
    sub_100038340(v16);
  }

  return sub_1001D1A40();
}

uint64_t sub_1001D1A40()
{
  v1 = v0;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E48);
  sub_1000382E4(v0, v18);
  sub_1000382E4(v0, v16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446467;
    v6 = sub_1000B9A7C();
    v8 = v7;
    sub_100038340(v18);
    v9 = sub_10017C9E8(v6, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2081;
    v10 = *(v17 + 16);
    v11 = *(v17 + 24);

    sub_100038340(v16);
    v12 = sub_10017C9E8(v10, v11, &v15);

    *(v5 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] _cancelThrottleTimer for %{private}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100038340(v18);
    sub_100038340(v16);
  }

  sub_1000040A8(&qword_10035D790, &unk_1002835D0);
  State.wrappedValue.getter();
  if (v20)
  {
    sub_1000089B0(v18, v16);
    sub_100008FA0(v18, &qword_100356B58, &qword_10027A110);
    sub_1000088DC(v16, v16[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100008964(v16);
  }

  else
  {
    sub_100008FA0(v18, &qword_100356B58, &qword_10027A110);
  }

  v13 = *(v1 + 88);
  v18[0] = *(v1 + 80);
  v19 = v13;
  LOBYTE(v16[0]) = 0;
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  return State.wrappedValue.setter();
}

uint64_t sub_1001D1D44()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356A90, &unk_10027D800);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381E48);
  sub_1000382E4(v0, &v27);
  sub_1000382E4(v0, v25);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136446467;
    v9 = sub_1000B9A7C();
    v11 = v10;
    sub_100038340(&v27);
    v12 = sub_10017C9E8(v9, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2081;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    sub_100038340(v25);
    v15 = sub_10017C9E8(v13, v14, &v24);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] _resetThrottleTimer for %{private}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100038340(&v27);
    sub_100038340(v25);
  }

  sub_1000040A8(&qword_10035D790, &unk_1002835D0);
  State.wrappedValue.getter();
  if (v29)
  {
    sub_1000089B0(&v27, v25);
    sub_100008FA0(&v27, &qword_100356B58, &qword_10027A110);
    sub_1000088DC(v25, v25[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100008964(v25);
  }

  else
  {
    sub_100008FA0(&v27, &qword_100356B58, &qword_10027A110);
  }

  sub_100038298();
  v16 = [objc_opt_self() mainRunLoop];
  v17 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100008FA0(v4, &qword_100356A90, &unk_10027D800);
  v20 = *(v1 + 104);
  v27 = *(v1 + 96);
  v19 = v27;
  v28 = v20;
  v25[0] = v18;
  sub_1000040A8(&qword_10035D788, &unk_10028E790);
  State.wrappedValue.setter();
  v27 = v19;
  v28 = v20;
  State.wrappedValue.getter();
  NSTimer.TimerPublisher.connect()();

  sub_100006C20(&v27, v25, &qword_100356B58, &qword_10027A110);
  State.wrappedValue.setter();
  sub_100008FA0(&v27, &qword_100356B58, &qword_10027A110);
  v21 = *(v1 + 88);
  LOBYTE(v27) = *(v1 + 80);
  v28 = v21;
  LOBYTE(v25[0]) = 1;
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  return State.wrappedValue.setter();
}

uint64_t sub_1001D2214()
{

  if (*(v0 + 152))
  {
    sub_100008964((v0 + 128));
  }

  return _swift_deallocObject(v0, 176, 7);
}

unint64_t sub_1001D22B0()
{
  result = qword_100365698;
  if (!qword_100365698)
  {
    sub_100008CF0(&qword_1003656A0, &qword_10028E7D8);
    sub_1001D233C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365698);
  }

  return result;
}

unint64_t sub_1001D233C()
{
  result = qword_1003656A8;
  if (!qword_1003656A8)
  {
    sub_100008CF0(&unk_1003656B0, &qword_10028E7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003656A8);
  }

  return result;
}

uint64_t sub_1001D2438(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1001D24A0(unsigned __int8 a1)
{
  v1 = 0x697261657070612ELL;
  v2 = 0x657070617369642ELL;
  if (a1 != 4)
  {
    v2 = 0x657070617369642ELL;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000010;
  }

  if (a1 != 1)
  {
    v1 = 0x657261657070612ELL;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1001D25A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  ConnectionAssistantRendererEarthOutline.Error.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1001D25FC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(52);
  v7._countAndFlagsBits = 0x746E657365727028;
  v7._object = 0xEE00203A656C6261;
  String.append(_:)(v7);
  swift_unknownObjectRetain();
  sub_1000040A8(&qword_10035CF78, &qword_10028EA60);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3A6567617473202CLL;
  v9._object = 0xE900000000000020;
  String.append(_:)(v9);
  type metadata accessor for SessionBannerAgent.Stage(0, a4, a5, v10);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11._object = 0x80000001002A33F0;
  v11._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v11);
  type metadata accessor for SessionBannerAgent.State(255, a4, a5, v12);
  type metadata accessor for Optional();
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

uint64_t sub_1001D27A0()
{
  v1 = swift_isaMask & *v0;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CC8);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136446466;
    swift_beginAccess();
    v8 = *(v1 + 80);
    v7 = *(v1 + 88);
    type metadata accessor for SessionBannerAgent.Stage(255, v8, v7, v9);
    type metadata accessor for Optional();
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v20);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2082;
    type metadata accessor for SessionBannerAgent.State(255, v8, v7, v13);
    type metadata accessor for Optional();
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v20);

    *(v6 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "_activePresentable changed: stage = %{public}s: pendingStateUpdate = %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v17 = sub_1001D300C() & 1;
  v18 = *(v3 + qword_100365788);
  *(v3 + qword_100365788) = v17;
  return sub_1001D2AD0(v18);
}

void (*sub_1001D2A28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001D2A8C;
}

void sub_1001D2A8C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1001D27A0();
  }
}

uint64_t sub_1001D2AD0(uint64_t result)
{
  v2 = *(v1 + qword_100365788);
  if (result == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 == 2)
  {
    LOBYTE(v2) = 0;
  }

  else if (((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CC8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "isAnyBannerPresented changed to %{BOOL,public}d", v6, 8u);
  }

  return PassthroughSubject.send(_:)();
}

uint64_t sub_1001D2C24(char a1)
{
  v2 = *(v1 + qword_100365788);
  *(v1 + qword_100365788) = a1;
  return sub_1001D2AD0(v2);
}

id sub_1001D2C3C()
{
  v1 = swift_isaMask & *v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v17 = v3;
    v18 = swift_slowAlloc();
    *v6 = 136446466;
    v8 = type metadata accessor for SessionBannerAgent(0, *(v1 + 80), *(v1 + 88), v7);
    swift_getWitnessTable();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_10017C9E8(v9, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = *(v3 + qword_100365760);
    v13 = *(v3 + qword_100365760 + 8);

    v14 = sub_10017C9E8(v12, v13, &v18);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] deinit for '%s'", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v8 = type metadata accessor for SessionBannerAgent(0, *(v1 + 80), *(v1 + 88), v15);
  }

  v19.receiver = v3;
  v19.super_class = v8;
  return objc_msgSendSuper2(&v19, "dealloc", v17, v18);
}

double sub_1001D2EA4(uint64_t a1)
{

  sub_10002B558(a1 + qword_100365770);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1001D2F94()
{
  v1 = sub_1001D300C() & 1;
  v2 = *(v0 + qword_100365788);
  *(v0 + qword_100365788) = v1;

  return sub_1001D2AD0(v2);
}

uint64_t sub_1001D300C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + qword_100365780);
    if ((v8 == 2 || (v8 & 1) == 0) && (v9 = v1 + qword_100365778, swift_beginAccess(), *v9))
    {
      if (*(*v9 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode) == 4)
      {
        return 1;
      }

      else
      {
        return HIBYTE(*(v9 + 16)) & 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1001D3198(int a1)
{
  v2 = swift_isaMask & *v1;
  v3 = *(v1 + qword_100365798);
  if (a1 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }
  }

  else if (v3 != 2 && ((v3 ^ a1) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CC8);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    type metadata accessor for SessionBannerAgent.State(255, *(v2 + 80), *(v2 + 88), v9);
    type metadata accessor for Optional();
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "_activeBannerLayout changed from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610, &unk_100279630);
  sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Subject<>.send()();
  return result;
}

double sub_1001D3434(char a1)
{
  v2 = *(v1 + qword_100365798);
  *(v1 + qword_100365798) = a1;
  return sub_1001D3198(v2);
}

void sub_1001D344C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1001D5768();
  swift_unknownObjectRelease();
}

void sub_1001D34AC(int a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    LODWORD(v64) = a1;
    v9 = "Banner.ConnectionAssistant";
    if (qword_100353A28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = v9 - 32;
  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v66 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10017C9E8(0xD00000000000001ALL, v10 | 0x8000000000000000, &v66);
    _os_log_impl(&_mh_execute_header, v13, v14, "presentBanner for '%{public}s'", v15, 0xCu);
    sub_100008964(v16);
  }

  v17 = *&v2[qword_100365768];
  if (!v17)
  {
    v44 = v2;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v66 = v48;
      *v47 = 136446210;
      *(v47 + 4) = sub_10017C9E8(*&v44[qword_100365760], *&v44[qword_100365760 + 8], &v66);
      _os_log_impl(&_mh_execute_header, v45, v46, "_bannerSource for '%{public}s' has expired", v47, 0xCu);
      sub_100008964(v48);
    }

    goto LABEL_16;
  }

  v63 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v45 = v17;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_10017C9E8(0xD00000000000001ALL, v10 | 0x8000000000000000, &v66);
      _os_log_impl(&_mh_execute_header, v49, v50, "contentProducer for '%{public}s' has expired", v51, 0xCu);
      sub_100008964(v52);
    }

LABEL_16:
    return;
  }

  v19 = Strong;
  v21 = *&v2[qword_100365760];
  v20 = *&v2[qword_100365760 + 8];
  v22 = *(v4 + 80);
  v23 = *(v4 + 88);
  v24 = *(v23 + 16);
  v25 = v17;
  v26 = v24(v21, v20, 0xD00000000000001ALL, v10 | 0x8000000000000000, v19, v64 & 1, v2, &off_100337350, v22, v23);
  v64 = v27;
  sub_1000040A8(&unk_1003655F0, &unk_10028E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v29;
  sub_10001D630(0, &qword_10035CF30, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v30;
  *(inited + 72) = NSNumber.init(integerLiteral:)(1);
  sub_1002557F0(inited);
  swift_setDeallocating();
  sub_1000040A8(&unk_100365600, &unk_100282FB0);
  swift_arrayDestroy();
  sub_1000040A8(&unk_10035CF40, &qword_10028E4E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v66 = 0;
  LODWORD(inited) = [v25 postPresentable:v26 options:1 userInfo:isa error:&v66];

  v32 = v66;
  if (inited)
  {
    swift_unknownObjectRetain_n();
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v34, v35))
    {
      swift_unknownObjectRelease_n();

      goto LABEL_20;
    }

    v36 = v25;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v66 = v38;
    *v37 = 136446210;
    v39 = [v26 requestIdentifier];
    swift_unknownObjectRelease();
    if (v39)
    {
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_10017C9E8(v40, v42, &v66);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "presentBanner: presenting '%{public}s'", v37, 0xCu);
      sub_100008964(v38);

      swift_unknownObjectRelease();

LABEL_20:
      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
  }

  else
  {
    v53 = v66;
    v54 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v66 = v58;
      *v57 = 136446210;
      v65 = v54;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
      v59 = String.init<A>(describing:)();
      v61 = v25;
      v62 = sub_10017C9E8(v59, v60, &v66);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "presentBanner failed: %{public}s", v57, 0xCu);
      sub_100008964(v58);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001D3DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001D3E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1001D3E6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001D3E80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D3EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D3F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001D3F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D3FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001D3FFC(void *a1, uint64_t a2, const char *a3, int a4, const char *a5)
{
  v51 = a5;
  v50 = a4;
  v53 = a3;
  v52 = swift_isaMask & *v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  swift_unknownObjectRetain();
  v13 = v5;
  v54 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57[0] = v48;
    *v16 = 136446466;
    v17 = a1;
    v18 = [a1 requestIdentifier];

    v49 = v17;
    swift_unknownObjectRelease();
    if (!v18)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10017C9E8(v19, v21, v57);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13 + qword_100365778;
    swift_beginAccess();
    v24 = *(v23 + 8);
    v55 = *v23;
    v56 = v24;
    type metadata accessor for SessionBannerAgent.ActivePresentable(255, *(v52 + 80), *(v52 + 88), v25);
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    v26 = String.init<A>(describing:)();
    v28 = sub_10017C9E8(v26, v27, v57);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, v53, v16, 0x16u);
    swift_arrayDestroy();

    a1 = v49;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v29 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v30 = qword_100365778;
  swift_beginAccess();
  v31 = *(v13 + v30);
  if (v31)
  {
    v32 = &selRef_setShouldIgnoreDoNotDisturb_;
    v33 = [swift_unknownObjectRetain() requestIdentifier];
    swift_unknownObjectRelease();
    if (v33)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v35;
    }

    else
    {
      v34 = 0;
      v31 = 0;
    }
  }

  else
  {
    v34 = 0;
    v32 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  v36 = [a1 v32[57]];
  if (!v36)
  {
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v37 = v36;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (!v31)
  {
    if (!v40)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (!v40)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v34 == v38 && v31 == v40)
  {

LABEL_27:
    v46 = sub_1001D2A28(&v55);
    if (*v45)
    {
      *(v45 + 16) = v50;
    }

    v46(&v55, 0);
    return;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    goto LABEL_27;
  }

LABEL_23:
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, v51, v43, 2u);
  }
}

void sub_1001D455C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001D45B0();
  }
}

void sub_1001D45B0()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CC8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "executePendingStateUpdate", v10, 2u);
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v11)
  {
    v12 = &v1[qword_100365778];
    swift_beginAccess();
    if (*v12 && v12[16] == 5)
    {
      v13 = *(v2 + 80);
      v14 = *(v2 + 88);
      v15 = &v1[qword_100365778];
      swift_beginAccess();
      if (*v15 && (v16 = *(v15 + 8), v16 >> 8 != 2))
      {
        sub_1001D34AC((v16 >> 8) & 1);
        sub_1001D56D0(v39, v40, v41);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = v1;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v44 = v21;
          *v20 = 136446210;
          v22 = &v17[qword_100365778];
          swift_beginAccess();
          v23 = *(v22 + 8);
          v42 = *v22;
          v43 = v23;
          type metadata accessor for SessionBannerAgent.ActivePresentable(255, v13, v14, v24);
          type metadata accessor for Optional();
          swift_unknownObjectRetain();
          v25 = String.init<A>(describing:)();
          v27 = sub_10017C9E8(v25, v26, &v44);

          *(v20 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v18, v19, "executePendingStateUpdate request expired, current presentable == %{public}s", v20, 0xCu);
          sub_100008964(v21);
        }

        sub_1001D56D0(0, 0, 0);
      }
    }

    else
    {
      v28 = v1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v42 = v32;
        *v31 = 136446210;
        v33 = &v28[qword_100365778];
        swift_beginAccess();
        v34 = *(v33 + 8);
        v45 = *v33;
        v46 = v34;
        type metadata accessor for SessionBannerAgent.ActivePresentable(255, *(v2 + 80), *(v2 + 88), v35);
        type metadata accessor for Optional();
        swift_unknownObjectRetain();
        v36 = String.init<A>(describing:)();
        v38 = sub_10017C9E8(v36, v37, &v42);

        *(v31 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v29, v30, "executePendingStateUpdate request overridden, current presentable == %{public}s", v31, 0xCu);
        sub_100008964(v32);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001D4AD8(char a1, char a2)
{
  v3 = v2;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240448;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 1026;
    *(v9 + 10) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "didChangeLayout: present - %{BOOL,public}d, expanded - %{BOOL,public}d", v9, 0xEu);
  }

  if (a1)
  {
    v10 = a2 & 1;
    if (*(v3 + qword_100365790) != 2)
    {
      *(v3 + qword_100365790) = v10;
    }
  }

  else
  {
    v10 = 2;
  }

  v11 = *(v3 + qword_100365798);
  *(v3 + qword_100365798) = v10;
  sub_1001D3198(v11);
  v12 = sub_1001D300C() & 1;
  v13 = *(v3 + qword_100365788);
  *(v3 + qword_100365788) = v12;

  return sub_1001D2AD0(v13);
}

void sub_1001D4C4C(void *a1, uint64_t a2, int a3, const char *a4, uint64_t a5)
{
  v36 = a4;
  v7 = v5;
  LODWORD(v8) = a3;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381CC8);
  swift_unknownObjectRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v32 = v10;
    v33 = v7;
    v34 = a5;
    v35 = v8;
    v17 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v17 = 136446466;
    v18 = [a1 requestIdentifier];
    swift_unknownObjectRelease();
    if (!v18)
    {
      goto LABEL_12;
    }

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10017C9E8(v8, v20, v38);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    LOBYTE(v8) = v35;
    v37 = v35;
    sub_1000040A8(&unk_1003655D0, &qword_100278BF0);
    v22 = String.init<A>(describing:)();
    v24 = sub_10017C9E8(v22, v23, v38);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, v36, v17, 0x16u);
    swift_arrayDestroy();

    v10 = v32;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v25 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v25)
  {
    v26 = [a1 requestIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v38[0] = v28;
      v38[1] = v30;
      v39 = v8;
      PassthroughSubject.send(_:)();

      return;
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

void sub_1001D4FB4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v9, v10))
  {
    v25 = v4;
    v26 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136446210;
    v14 = [a1 requestIdentifier];
    swift_unknownObjectRelease();
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10017C9E8(v15, v17, v27);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "wasRemoved: %{public}s", v12, 0xCu);
    sub_100008964(v13);

    v4 = v25;
    v2 = v26;
    v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v19 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v19)
  {
    *(v2 + qword_100365790) = 2;
    sub_1001D56D0(0, 0, 0);
    v20 = [a1 v11[57]];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v27[0] = v22;
      v27[1] = v24;
      PassthroughSubject.send(_:)();

      return;
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

void sub_1001D52D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v9, v10))
  {
    v25[0] = v4;
    v25[1] = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136446210;
    v14 = [a1 requestIdentifier];
    swift_unknownObjectRelease();
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10017C9E8(v15, v17, v26);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "handleTap: %{public}s", v12, 0xCu);
    sub_100008964(v13);

    v4 = v25[0];
    v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v19 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v19)
  {
    v20 = [a1 v11[57]];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v26[0] = v22;
      v26[1] = v24;
      PassthroughSubject.send(_:)();

      return;
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

uint64_t sub_1001D56D0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = v3 + qword_100365778;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_1001D27A0();
}

void sub_1001D5768()
{
  v1 = v0;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "bannerSourceDidInvalidate", v5, 2u);
  }

  v6 = *(v1 + qword_100365768);
  *(v1 + qword_100365768) = 0;
}

void sub_1001D5864(void *a1)
{
  v74 = swift_isaMask & *v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v69 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchTime();
  v66 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v61 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000F53C(v13, qword_100381CC8);
  swift_unknownObjectRetain();
  v15 = v1;
  v73 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v63 = v3;
    v18 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v80[0] = v61;
    *v18 = 136446466;
    v19 = [a1 requestIdentifier];

    v62 = a1;
    swift_unknownObjectRelease();
    if (!v19)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v20 = v15;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, v80);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v25 = v20;
    v26 = v20 + qword_100365778;
    swift_beginAccess();
    v27 = *(v26 + 8);
    aBlock = *v26;
    LOWORD(v76) = v27;
    type metadata accessor for SessionBannerAgent.ActivePresentable(255, *(v74 + 80), *(v74 + 88), v28);
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    v29 = String.init<A>(describing:)();
    v31 = sub_10017C9E8(v29, v30, v80);

    *(v18 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v16, v17, "didDisappear: for %{public}s, active presentable == %{public}s", v18, 0x16u);
    swift_arrayDestroy();

    v3 = v63;
    v15 = v25;
    a1 = v62;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v33 = qword_100365778;
  swift_beginAccess();
  v34 = *(v15 + v33);
  if (v34)
  {
    v35 = &selRef_setShouldIgnoreDoNotDisturb_;
    v36 = [swift_unknownObjectRetain() requestIdentifier];
    swift_unknownObjectRelease();
    if (v36)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v38;
    }

    else
    {
      v37 = 0;
      v34 = 0;
    }
  }

  else
  {
    v37 = 0;
    v35 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  v39 = [a1 v35[57]];
  if (!v39)
  {
    if (!v34)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v40 = v15;
  v41 = v39;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if (!v34)
  {
    v15 = v40;
    if (!v44)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (!v44)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = v40;
  if (v37 == v42 && v34 == v44)
  {

LABEL_27:
    v49 = v15 + qword_100365778;
    swift_beginAccess();
    if (*v49 && v49[17] << 8 != 512)
    {
      v51 = sub_1001D2A28(&aBlock);
      if (*v50)
      {
        *(v50 + 16) = 5;
      }

      v51(&aBlock, 0);
      v52 = static OS_dispatch_queue.main.getter();
      v53 = v64;
      static DispatchTime.now()();
      v54 = v65;
      + infix(_:_:)();
      v73 = *(v66 + 8);
      v73(v53, v72);
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      v57 = v74;
      v56[2] = *(v74 + 80);
      v56[3] = *(v57 + 88);
      v56[4] = v55;
      v78 = sub_1001D627C;
      v79 = v56;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v76 = sub_1001D2438;
      v77 = &unk_100337418;
      v58 = _Block_copy(&aBlock);

      v59 = v67;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_100071864();
      sub_1000040A8(&unk_100355D70, &qword_100279D60);
      sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
      v60 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v58);

      (*(v71 + 8))(v60, v3);
      (*(v68 + 8))(v59, v70);
      v73(v54, v72);
    }

    else
    {
      sub_1001D56D0(0, 0, 0);
    }

    return;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    goto LABEL_27;
  }

LABEL_23:
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Received didDisappear for non-active presentable", v47, 2u);
  }
}

uint64_t sub_1001D620C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D6244()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1001D6288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1001D62D0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000F53C(v8, qword_100381CC8);
  swift_unknownObjectRetain();
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v11, v12))
  {
    v46 = v3;
    v48 = v9;
    v14 = v10;
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51[0] = v45;
    *v15 = 136446466;
    v16 = [a1 requestIdentifier];
    v17 = v14;

    v47 = a1;
    swift_unknownObjectRelease();
    if (!v16)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10017C9E8(v18, v20, v51);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v22 = v17 + qword_100365778;
    swift_beginAccess();
    v23 = *(v22 + 8);
    v49 = *v22;
    v50 = v23;
    type metadata accessor for SessionBannerAgent.ActivePresentable(255, *(v46 + 80), *(v46 + 88), v24);
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    v25 = String.init<A>(describing:)();
    v27 = sub_10017C9E8(v25, v26, v51);

    *(v15 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v11, v12, "willDisappear: for %{public}s, active presentable == %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    a1 = v47;
    v10 = v17;
    v13 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v28 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v29 = qword_100365778;
  swift_beginAccess();
  if (*(v10 + v29) && (v30 = [swift_unknownObjectRetain() v13[57]], swift_unknownObjectRelease(), v30))
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [a1 v13[57]];
  if (!v34)
  {
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v35 = v34;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (!v33)
  {
    if (!v38)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (!v38)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v31 == v36 && v33 == v38)
  {

LABEL_26:
    v44 = sub_1001D2A28(&v49);
    if (*v43)
    {
      *(v43 + 16) = 4;
    }

    v44(&v49, 0);
    return;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_26;
  }

LABEL_22:
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Received willDisappear for non-active presentable", v41, 2u);
  }
}

uint64_t sub_1001D6874@<X0>(void *a1@<X8>)
{
  v61 = type metadata accessor for SOSConnectionEndedView(0);
  __chkstk_darwin(v61);
  v4 = (v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000040A8(&qword_100356510, &qword_10027D810);
  __chkstk_darwin(v5 - 8);
  v7 = v57 - v6;
  v8 = type metadata accessor for ConnectionClosed(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000040A8(&qword_100365AF0, &qword_10028EBC0);
  __chkstk_darwin(v62);
  v12 = v57 - v11;
  v60 = sub_1000040A8(&qword_100365AF8, &qword_10028EBC8);
  __chkstk_darwin(v60);
  v14 = (v57 - v13);
  v15 = sub_1000040A8(&qword_100365B00, &qword_10028EBD0);
  __chkstk_darwin(v15);
  v17 = v57 - v16;
  v18 = v1[4];
  if (v18)
  {
    if (*(v18 + 56) < -512)
    {
      type metadata accessor for AppEvents();
      sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
      v19 = EnvironmentObject.init()();
      v21 = v20;
      type metadata accessor for UIMetrics();
      sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v22 = EnvironmentObject.init()();
      *v14 = v19;
      v14[1] = v21;
      v14[2] = v22;
      v14[3] = v23;
      v24 = swift_storeEnumTagMultiPayload();
      sub_1001D7288(v24, v25, v26);
      sub_1001D7330(&qword_100365B20, type metadata accessor for SOSConnectionEndedView, &unk_10028ECD8);

      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v17, v12, &qword_100365B00, &qword_10028EBD0);
      swift_storeEnumTagMultiPayload();
      v27 = sub_1001D71CC();
      sub_1001D72DC(v27, v28, v29);
      _ConditionalContent<>.init(storage:)();

      sub_100008FA0(v17, &qword_100365B00, &qword_10028EBD0);
      goto LABEL_11;
    }

    v57[1] = v15;
    v58 = a1;
    v30 = *v1;
    if (*v1)
    {
      v31 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
      swift_beginAccess();
      sub_100006C20(v30 + v31, v7, &qword_100356510, &qword_10027D810);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        v43 = v59;
        sub_1001DCEA0(v7, v59, type metadata accessor for ConnectionClosed);
        sub_1001D7378(v43, v4 + *(v61 + 28), type metadata accessor for ConnectionClosed);
        type metadata accessor for AppEvents();
        sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
        *v4 = EnvironmentObject.init()();
        v4[1] = v44;
        type metadata accessor for RoadsideAssistanceModel();
        sub_1001D7330(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
        v4[2] = EnvironmentObject.init()();
        v4[3] = v45;
        type metadata accessor for UIMetrics();
        sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
        v4[4] = EnvironmentObject.init()();
        v4[5] = v46;
        sub_1001D7378(v4, v14, type metadata accessor for SOSConnectionEndedView);
        v47 = swift_storeEnumTagMultiPayload();
        sub_1001D7288(v47, v48, v49);
        sub_1001D7330(&qword_100365B20, type metadata accessor for SOSConnectionEndedView, &unk_10028ECD8);
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(v17, v12, &qword_100365B00, &qword_10028EBD0);
        swift_storeEnumTagMultiPayload();
        v50 = sub_1001D71CC();
        sub_1001D72DC(v50, v51, v52);
        a1 = v58;
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(v17, &qword_100365B00, &qword_10028EBD0);
        sub_1001D73E0(v4, type metadata accessor for SOSConnectionEndedView);
        sub_1001D73E0(v43, type metadata accessor for ConnectionClosed);
        goto LABEL_11;
      }

      sub_100008FA0(v7, &qword_100356510, &qword_10027D810);
      v32 = v1[2];
      a1 = v58;
      if (v32)
      {
        v33 = 1;
        if (!*(v32 + 64))
        {
          goto LABEL_12;
        }

        v34 = *(v32 + 56);
        if (v34 == 5)
        {
          goto LABEL_12;
        }

        type metadata accessor for AppEvents();
        sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
        v35 = EnvironmentObject.init()();
        v37 = v36;
        type metadata accessor for UIMetrics();
        sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
        v38 = EnvironmentObject.init()();
        *v12 = v35;
        *(v12 + 1) = v37;
        *(v12 + 2) = v38;
        *(v12 + 3) = v39;
        v12[32] = v34;
        swift_storeEnumTagMultiPayload();
        v40 = sub_1001D71CC();
        sub_1001D72DC(v40, v41, v42);
        _ConditionalContent<>.init(storage:)();
LABEL_11:
        v33 = 0;
LABEL_12:
        v53 = sub_1000040A8(&qword_100365B08, &qword_10028EBD8);
        return (*(*(v53 - 8) + 56))(a1, v33, 1, v53);
      }

      type metadata accessor for StewieModel(0);
      v55 = &qword_1003561B8;
      v56 = type metadata accessor for StewieModel;
    }

    else
    {
      type metadata accessor for ConnectionClosedModel(0);
      v55 = &qword_10035B1A8;
      v56 = type metadata accessor for ConnectionClosedModel;
    }
  }

  else
  {
    type metadata accessor for TryOutModel(0);
    v55 = &qword_100357990;
    v56 = type metadata accessor for TryOutModel;
  }

  sub_1001D7330(v55, v56, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SOSConnectionEndedView(uint64_t a1)
{
  result = qword_100365B88;
  if (!qword_100365B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001D71CC()
{
  result = qword_100365B10;
  if (!qword_100365B10)
  {
    v1 = sub_100008CF0(&qword_100365B00, &qword_10028EBD0);
    sub_1001D7288(v1, v2, v3);
    sub_1001D7330(&qword_100365B20, type metadata accessor for SOSConnectionEndedView, &unk_10028ECD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365B10);
  }

  return result;
}

unint64_t sub_1001D7288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365B18;
  if (!qword_100365B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365B18);
  }

  return result;
}

unint64_t sub_1001D72DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365B28;
  if (!qword_100365B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365B28);
  }

  return result;
}

uint64_t sub_1001D7330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001D7378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D73E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D7440(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001D749C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001D7518(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ConnectionClosed(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1001D75E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for ConnectionClosed(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001D7688(uint64_t a1)
{
  sub_10007B2FC(319);
  if (v1 <= 0x3F)
  {
    sub_1001D77AC(319, &unk_100365B98, type metadata accessor for RoadsideAssistanceModel, &qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    if (v2 <= 0x3F)
    {
      sub_1001D77AC(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ConnectionClosed(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001D77AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1001D7330(a4, a5, "\ts\n");
    v8 = type metadata accessor for EnvironmentObject();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1001D7854()
{
  result = qword_100365BD0;
  if (!qword_100365BD0)
  {
    sub_100008CF0(&qword_100365BD8, &qword_10028EC80);
    sub_1001D78D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365BD0);
  }

  return result;
}

unint64_t sub_1001D78D8()
{
  result = qword_100365BE0;
  if (!qword_100365BE0)
  {
    sub_100008CF0(&qword_100365B08, &qword_10028EBD8);
    v3 = sub_1001D71CC();
    sub_1001D72DC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365BE0);
  }

  return result;
}

uint64_t sub_1001D7980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = type metadata accessor for SOSConnectionEndedView(0);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  sub_1000089B0(a1, &v44);
  sub_1001D7378(a2, v11, type metadata accessor for SOSConnectionEndedView);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  sub_100008A18(&v44, v13 + 16);
  sub_1001DCEA0(v11, v13 + ((v12 + 56) & ~v12), type metadata accessor for SOSConnectionEndedView);
  sub_1001D7378(a2, v8, type metadata accessor for SOSConnectionEndedView);
  sub_1000089B0(a1, &v42);
  v14 = (v12 + 16) & ~v12;
  v15 = swift_allocObject();
  sub_1001DCEA0(v8, v15 + v14, type metadata accessor for SOSConnectionEndedView);
  sub_100008A18(&v42, v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for UIMetrics();
  sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v16 = EnvironmentObject.init()();
  v37 = v17;
  v38 = v16;
  type metadata accessor for CGSize(0);
  v40 = 0;
  v41 = 0;
  State.init(wrappedValue:)();
  v18 = *(a2 + 32);
  if (v18)
  {
    v19 = v42;
    v20 = v43;
    sub_1000089B0(v18 + 48, &v44);
    v21 = v45;
    v22 = v46;
    sub_1000088DC(&v44, v45);
    v23 = a2 + *(v39 + 28);
    v24 = type metadata accessor for ConnectionClosed(0);
    v25 = (*(v22 + 184))(*(v23 + *(v24 + 24)), v21, v22);
    v27 = v26;
    v28 = (a3 + *(sub_1000040A8(&qword_100365C40, &qword_10028EE68) + 36));
    v29 = v28 + *(sub_1000040A8(&qword_100365C68, &qword_10028EE78) + 36);
    v30 = sub_1000040A8(&qword_100365C70, &qword_10028EE80);
    v31 = *(v30 + 36);
    v32 = type metadata accessor for ToolbarItemPlacement();
    (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
    *v29 = 0;
    v33 = &v29[*(v30 + 40)];
    *v33 = sub_1001DDAA8;
    v33[1] = 0;
    *v28 = v25;
    v28[1] = v27;
    v34 = v37;
    *a3 = v38;
    *(a3 + 8) = v34;
    *(a3 + 16) = sub_1001DCF08;
    *(a3 + 24) = v13;
    *(a3 + 32) = sub_1001DD0F0;
    *(a3 + 40) = v15;
    *(a3 + 48) = v19;
    *(a3 + 64) = v20;
    return sub_100008964(&v44);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1001D7D38(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = static HorizontalAlignment.center.getter();
  v11 = 0;
  sub_1001D7E50(v2);
  memcpy(__dst, __src, 0x3C2uLL);
  memcpy(v13, __src, 0x3C2uLL);
  sub_100006C20(__dst, &v8, &qword_100365CD8, &qword_10028EEC0);
  sub_100008FA0(v13, &qword_100365CD8, &qword_10028EEC0);
  memcpy(&v10[7], __dst, 0x3C2uLL);
  LOBYTE(v2) = v11;
  v6 = static Edge.Set.all.getter();
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = v2;
  memcpy((v4 + 17), v10, 0x3C9uLL);
  *(v4 + 992) = v6;
  result = 0.0;
  *(v4 + 1000) = 0u;
  *(v4 + 1016) = 0u;
  *(v4 + 1032) = 0;
  return result;
}

uint64_t sub_1001D7E50(uint64_t a1)
{
  __chkstk_darwin(a1);
  *&v131 = v1;
  v3 = v2;
  v121 = v4;
  *&v132 = type metadata accessor for Font.Leading();
  v5 = *(v132 - 8);
  __chkstk_darwin(v132);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v210._object = 0x80000001002A0100;
  v9._object = 0x80000001002A00E0;
  v210._countAndFlagsBits = 0xD00000000000003DLL;
  v9._countAndFlagsBits = 0xD000000000000010;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v210);

  v141[0] = v11;
  v122 = sub_100031770(v12, v13, v14);
  v15 = Text.init<A>(_:)();
  v17 = v16;
  *&v150 = v15;
  *(&v150 + 1) = v16;
  v19 = v18 & 1;
  LOBYTE(v151) = v18 & 1;
  *(&v151 + 1) = v20;
  v123 = v3;
  v21 = v3;
  v22 = v131;
  sub_1001D8FE4(&v150, v21, v131, v141);
  sub_1000317C4(v15, v17, v19);

  v194 = v141[6];
  v195 = v141[7];
  v196 = v141[8];
  v197 = v141[9];
  v190 = v141[2];
  v191 = v141[3];
  v192 = v141[4];
  v193 = v141[5];
  v188 = v141[0];
  v189 = v141[1];
  v198[6] = v141[6];
  v198[7] = v141[7];
  v198[8] = v141[8];
  v199 = v141[9];
  v198[2] = v141[2];
  v198[3] = v141[3];
  v198[4] = v141[4];
  v198[5] = v141[5];
  v198[0] = v141[0];
  v198[1] = v141[1];
  sub_100006C20(&v188, v136, &qword_100365CE0, &qword_10028EEC8);
  sub_100008FA0(v198, &qword_100365CE0, &qword_10028EEC8);
  static Font.title3.getter();
  Font.bold()();

  v23 = v132;
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v132);
  v24 = Font.leading(_:)();

  (*(v5 + 8))(v7, v23);
  KeyPath = swift_getKeyPath();
  v206 = v194;
  v207 = v195;
  v208 = v196;
  LOBYTE(v209) = v197;
  v202 = v190;
  v203 = v191;
  v204 = v192;
  v205 = v193;
  v200 = v188;
  v201 = v189;
  v25 = *(v22 + 32);
  if (v25)
  {
    sub_1000089B0(v25 + 48, v141);
    v26 = *(&v141[1] + 1);
    v27 = *&v141[2];
    sub_1000088DC(v141, *(&v141[1] + 1));
    v128 = (*(v27 + 80))(v26, v27);
    v127 = swift_getKeyPath();
    sub_100008964(v141);
    v28 = *(v25 + 112);
    v120 = static UIContentSizeCategory.>= infix(_:_:)();

    v126 = swift_getKeyPath();
    v29 = *(v25 + 112);
    static Alignment.center.getter();
    v30 = static UIContentSizeCategory.>= infix(_:_:)();
    v130 = v24;
    if (v30)
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v183 = v206;
    v184 = v207;
    v185 = v208;
    v186 = v209;
    v179 = v202;
    v180 = v203;
    v181 = v204;
    v182 = v205;
    v177 = v200;
    v178 = v201;
    *(&v187[6] + 7) = *&v187[21];
    *(&v187[8] + 7) = *&v187[23];
    *(&v187[10] + 7) = *&v187[25];
    *(&v187[12] + 7) = *&v187[27];
    *(v187 + 7) = *&v187[15];
    *(&v187[2] + 7) = *&v187[17];
    *(&v187[4] + 7) = *&v187[19];
    v31 = *(v25 + 112);
    v119 = static UIContentSizeCategory.>= infix(_:_:)();

    v125 = swift_getKeyPath();
    sub_1000089B0(v25 + 48, v141);
    v32 = *&v141[2];
    sub_1000088DC(v141, *(&v141[1] + 1));
    v33 = type metadata accessor for SOSConnectionEndedView(0);
    v34 = *(v32 + 152);
    v124 = v22 + *(v33 + 28);
    *&v136[0] = v34();
    *(&v136[0] + 1) = v35;
    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    sub_100008964(v141);
    static Font.largeTitle.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v41 = Text.font(_:)();
    *&v131 = UIContentSizeCategoryAccessibilityExtraLarge;
    v43 = v42;
    v45 = v44;
    v116 = v46;

    sub_1000317C4(v36, v38, v40 & 1);

    sub_1000089B0(v25 + 48, v141);
    v47 = *(&v141[1] + 1);
    v48 = *&v141[2];
    sub_1000088DC(v141, *(&v141[1] + 1));
    (*(v48 + 80))(v47, v48);
    v49 = Text.foregroundColor(_:)();
    v117 = v50;
    v118 = v49;
    v52 = v51;
    v54 = v53;
    sub_1000317C4(v41, v43, v45 & 1);

    sub_100008964(v141);
    v55 = *(v25 + 112);
    v56 = static UIContentSizeCategory.>= infix(_:_:)();

    v57 = (v56 & 1) == 0;
    v58 = swift_getKeyPath();
    *&v132 = v25;
    v59 = *(v25 + 112);
    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v175[55] = *&v187[35];
    *&v175[71] = *&v187[37];
    *&v175[87] = *&v187[39];
    *&v175[103] = *&v187[41];
    *&v175[7] = *&v187[29];
    *&v175[23] = *&v187[31];
    v176 = v52 & 1;
    *&v175[39] = *&v187[33];
    v60 = *(v132 + 112);
    v61 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v61)
    {
      v62 = 1.0;
    }

    else
    {
      v62 = 0.5;
    }

    v63 = swift_getKeyPath();
    *(&v147[4] + 9) = *&v175[64];
    *(&v147[5] + 9) = *&v175[80];
    *(&v147[6] + 9) = *&v175[96];
    *(v147 + 9) = *v175;
    *(&v147[1] + 9) = *&v175[16];
    *(&v147[2] + 9) = *&v175[32];
    *&v145 = v118;
    *(&v145 + 1) = v117;
    LOBYTE(v146) = v52 & 1;
    *(&v146 + 1) = v54;
    *&v147[0] = v58;
    BYTE8(v147[0]) = v57;
    *(&v147[3] + 9) = *&v175[48];
    *(&v147[7] + 1) = *&v175[111];
    *&v148 = v63;
    *(&v148 + 1) = v62;
    v64 = sub_1000088DC(v123, v123[3]);
    v65 = *v64;
    v66 = *(*v64 + 184);
    v117 = *(*v64 + 192);
    v118 = v66;
    v67 = *(v65 + 200);
    v116 = *(v65 + 208);
    v68 = static Edge.Set.all.getter();
    v136[8] = v147[6];
    v136[9] = v147[7];
    v136[10] = v148;
    v136[4] = v147[2];
    v136[5] = v147[3];
    v136[6] = v147[4];
    v136[7] = v147[5];
    v136[0] = v145;
    v136[1] = v146;
    v136[2] = v147[0];
    v136[3] = v147[1];
    LOBYTE(v150) = 0;
    sub_100006C20(&v145, v141, &qword_100356C48, &unk_10027A5D0);
    v69 = static Edge.Set.top.getter();
    LOBYTE(v141[0]) = 1;
    v70 = static Edge.Set.bottom.getter();
    sub_100008FA0(&v145, &qword_100356C48, &unk_10027A5D0);
    v149[8] = v136[8];
    v149[9] = v136[9];
    v149[10] = v136[10];
    v149[4] = v136[4];
    v149[5] = v136[5];
    v149[6] = v136[6];
    v149[7] = v136[7];
    v149[0] = v136[0];
    v149[1] = v136[1];
    v149[2] = v136[2];
    v149[3] = v136[3];
    v150 = v136[0];
    v151 = v136[1];
    v154 = v136[4];
    v155 = v136[5];
    LOBYTE(v144[0]) = 1;
    LOBYTE(v149[11]) = v68;
    *(&v149[11] + 1) = v118;
    *&v149[12] = v117;
    *(&v149[12] + 1) = v67;
    *&v149[13] = v116;
    BYTE8(v149[13]) = 0;
    LOBYTE(v149[14]) = v69;
    v152 = v136[2];
    v153 = v136[3];
    v71 = v132;
    v159 = v136[9];
    v160 = v136[10];
    *(&v149[14] + 8) = 0u;
    *(&v149[15] + 8) = 0u;
    BYTE8(v149[16]) = 1;
    LOBYTE(v149[17]) = v70;
    *(&v149[17] + 8) = 0u;
    *(&v149[18] + 8) = 0u;
    BYTE8(v149[19]) = 1;
    v157 = v136[7];
    v158 = v136[8];
    v156 = v136[6];
    v161 = v68;
    v162 = v118;
    v163 = v117;
    v164 = v67;
    v165 = v116;
    v166 = 0;
    v167 = v69;
    v168 = 0u;
    v169 = 0u;
    v170 = 1;
    v171 = v70;
    v172 = 0u;
    v173 = 0u;
    v174 = 1;
    sub_100006C20(v149, v141, &qword_100365C30, &qword_10028EE58);
    sub_100008FA0(&v150, &qword_100365C30, &qword_10028EE58);
    sub_1000089B0(v71 + 48, v141);
    v72 = *(&v141[1] + 1);
    v73 = *&v141[2];
    sub_1000088DC(v141, *(&v141[1] + 1));
    v74 = (*(v73 + 160))(v124, v72, v73);
    v76 = v75;
    sub_100008964(v141);
    v77 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v77 = v74 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      *&v141[0] = v74;
      *(&v141[0] + 1) = v76;
      v78 = Text.init<A>(_:)();
      v80 = v79;
      v82 = v81;
      sub_1000089B0(v71 + 48, v141);
      v83 = *(&v141[1] + 1);
      v84 = *&v141[2];
      sub_1000088DC(v141, *(&v141[1] + 1));
      (*(v84 + 64))(v83, v84);
      v85 = Text.font(_:)();
      v87 = v86;
      LOBYTE(v83) = v88;
      sub_1000317C4(v78, v80, v82 & 1);

      sub_100008964(v141);
      v89 = v132;
      sub_1000089B0(v132 + 48, v141);
      v90 = *(&v141[1] + 1);
      v91 = *&v141[2];
      sub_1000088DC(v141, *(&v141[1] + 1));
      (*(v91 + 80))(v90, v91);
      v122 = Text.foregroundColor(_:)();
      v117 = v93;
      v118 = v92;
      v95 = v94;
      sub_1000317C4(v85, v87, v83 & 1);

      sub_100008964(v141);
      v96 = *(v89 + 112);
      LOBYTE(v83) = static UIContentSizeCategory.>= infix(_:_:)();

      v97 = (v83 & 1) == 0;
      v98 = swift_getKeyPath();
      v99 = *(v89 + 112);
      static Alignment.center.getter();
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        static Alignment.center.getter();
        if (static Alignment.== infix(_:_:)())
        {
          static Alignment.leading.getter();
        }
      }

      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v143[55] = *&v187[49];
      *&v143[71] = *&v187[51];
      *&v143[87] = *&v187[53];
      *&v143[103] = *&v187[55];
      *&v143[7] = *&v187[43];
      *&v143[23] = *&v187[45];
      v100 = v95 & 1;
      v138[0] = v95 & 1;
      *&v143[39] = *&v187[47];
      v101 = *(v132 + 112);
      v102 = static UIContentSizeCategory.>= infix(_:_:)();

      if (v102)
      {
        v103 = 1.0;
      }

      else
      {
        v103 = 0.5;
      }

      v104 = swift_getKeyPath();
      v105 = sub_1000088DC(v123, v123[3]);
      v106 = *(*v105 + 184);
      v131 = *(*v105 + 200);
      v132 = v106;
      v107 = static Edge.Set.all.getter();
      v139[0] = 0;
      v108 = static Edge.Set.top.getter();
      v140[0] = 1;
      v109 = static Edge.Set.bottom.getter();
      *(&v141[6] + 9) = *&v143[64];
      *(&v141[7] + 9) = *&v143[80];
      *(&v141[8] + 9) = *&v143[96];
      *(&v141[2] + 9) = *v143;
      *(&v141[3] + 9) = *&v143[16];
      *(&v141[4] + 9) = *&v143[32];
      LOBYTE(v136[0]) = 1;
      *&v141[0] = v122;
      *(&v141[0] + 1) = v118;
      LOBYTE(v141[1]) = v100;
      *(&v141[1] + 1) = v117;
      *&v141[2] = v98;
      BYTE8(v141[2]) = v97;
      *(&v141[5] + 9) = *&v143[48];
      *(&v141[9] + 1) = *&v143[111];
      *&v141[10] = v104;
      *(&v141[10] + 1) = v103;
      LOBYTE(v141[11]) = v107;
      *(&v141[12] + 8) = v131;
      *(&v141[11] + 8) = v132;
      BYTE8(v141[13]) = 0;
      LOBYTE(v141[14]) = v108;
      *(&v141[14] + 8) = 0u;
      *(&v141[15] + 8) = 0u;
      BYTE8(v141[16]) = 1;
      LOBYTE(v141[17]) = v109;
      *(&v141[17] + 8) = 0u;
      *(&v141[18] + 8) = 0u;
      BYTE8(v141[19]) = 1;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
      memcpy(v144, v141, 0x139uLL);
    }

    else
    {

      sub_1001A152C(v144);
    }

    if (v119)
    {
      v110 = 1.0;
    }

    else
    {
      v110 = 0.5;
    }

    v111 = (v120 & 1) == 0;
    LODWORD(v132) = v111;
    type metadata accessor for ConnectionClosed(0);
    v112 = sub_100071A54();
    memcpy(v135, v149, sizeof(v135));
    memcpy(v139, v144, 0x139uLL);
    v136[6] = v183;
    v136[7] = v184;
    v136[8] = v185;
    v136[2] = v179;
    v136[3] = v180;
    v136[4] = v181;
    v136[5] = v182;
    v136[0] = v177;
    v136[1] = v178;
    *(&v136[16] + 1) = *&v187[8];
    *(&v136[17] + 1) = *&v187[10];
    *(&v136[18] + 1) = *&v187[12];
    *(&v136[12] + 1) = *v187;
    *(&v136[13] + 1) = *&v187[2];
    *(&v136[14] + 1) = *&v187[4];
    *&v136[9] = v186;
    *(&v136[9] + 1) = KeyPath;
    *&v136[10] = v130;
    *(&v136[10] + 1) = v127;
    *&v136[11] = v128;
    *(&v136[11] + 1) = v126;
    LOBYTE(v136[12]) = v111;
    *(&v136[15] + 1) = *&v187[6];
    *&v136[19] = *(&v187[13] + 7);
    *(&v136[19] + 1) = v125;
    *&v136[20] = v110;
    memcpy(v134, v136, 0x148uLL);
    memcpy(v137, v149, 0x139uLL);
    memcpy(&v134[328], v149, 0x139uLL);
    memcpy(v138, v144, 0x139uLL);
    memcpy(&v134[648], v144, 0x139uLL);
    v113 = (v112 & 1) == 0;
    v133 = v113;
    v114 = v121;
    memcpy(v121, v134, 0x3C1uLL);
    v114[961] = v113;
    sub_100006C20(v136, v141, &qword_100365CE8, &qword_10028EF30);
    sub_100006C20(v137, v141, &qword_100365C30, &qword_10028EE58);
    sub_100006C20(v138, v141, &qword_100365CF0, &qword_10028EF38);
    sub_100008FA0(v139, &qword_100365CF0, &qword_10028EF38);
    memcpy(v140, v135, 0x139uLL);
    sub_100008FA0(v140, &qword_100365C30, &qword_10028EE58);
    v141[6] = v183;
    v141[7] = v184;
    v141[8] = v185;
    v141[2] = v179;
    v141[3] = v180;
    v141[4] = v181;
    v141[5] = v182;
    v141[0] = v177;
    v141[1] = v178;
    *(&v141[16] + 1) = *&v187[8];
    *(&v141[17] + 1) = *&v187[10];
    *(&v141[18] + 1) = *&v187[12];
    *(&v141[12] + 1) = *v187;
    *(&v141[13] + 1) = *&v187[2];
    *(&v141[14] + 1) = *&v187[4];
    *&v141[9] = v186;
    *(&v141[9] + 1) = KeyPath;
    *&v141[10] = v130;
    *(&v141[10] + 1) = v127;
    *&v141[11] = v128;
    *(&v141[11] + 1) = v126;
    LOBYTE(v141[12]) = v132;
    *(&v141[15] + 1) = *&v187[6];
    *&v141[19] = *(&v187[13] + 7);
    *(&v141[19] + 1) = v125;
    v142 = v110;
    return sub_100008FA0(v141, &qword_100365CE8, &qword_10028EF30);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D8FE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sub_1000088DC(a2, a2[3]);
  v26 = *(*v11 + 200);
  v27 = *(*v11 + 184);
  v12 = static Edge.Set.all.getter();

  sub_1001B3BD8(v7, v8, v9);
  v13 = static Edge.Set.bottom.getter();
  sub_1000088DC(a2, a2[3]);
  EdgeInsets.init(_all:)();
  v18 = *(a3 + 32);
  if (v18)
  {
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = *(v18 + 112);
    v24 = static UIContentSizeCategory.>= infix(_:_:)();

    result = swift_getKeyPath();
    *a4 = v7;
    *(a4 + 8) = v8;
    *(a4 + 16) = v9;
    *(a4 + 24) = v10;
    *(a4 + 32) = v12;
    *(a4 + 56) = v26;
    *(a4 + 40) = v27;
    *(a4 + 72) = 0;
    *(a4 + 80) = v13;
    *(a4 + 88) = v19;
    *(a4 + 96) = v20;
    *(a4 + 104) = v21;
    *(a4 + 112) = v22;
    *(a4 + 120) = 0;
    *(a4 + 128) = result;
    *(a4 + 136) = (v24 & 1) == 0;
    *(a4 + 144) = v24 & 1;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1001D91A8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = static HorizontalAlignment.center.getter();
  v19 = 0;
  sub_1001D92E4(a1, &v12);
  v24 = v16;
  v25[0] = v17[0];
  *(v25 + 11) = *(v17 + 11);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v26[0] = v12;
  v26[1] = v13;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27[0] = v17[0];
  *(v27 + 11) = *(v17 + 11);
  sub_100006C20(&v20, &v11, &qword_100365C78, &qword_10028EE88);
  sub_100008FA0(v26, &qword_100365C78, &qword_10028EE88);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25[0];
  *&v18[98] = *(v25 + 11);
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v6 = *&v18[80];
  *(a3 + 81) = *&v18[64];
  *(a3 + 97) = v6;
  *(a3 + 113) = *&v18[96];
  v7 = *&v18[16];
  *(a3 + 17) = *v18;
  *(a3 + 33) = v7;
  result = *&v18[32];
  v9 = *&v18[48];
  *(a3 + 49) = *&v18[32];
  v10 = v19;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 129) = *&v18[112];
  *(a3 + 65) = v9;
  return result;
}

uint64_t sub_1001D92E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SOSConnectionEndedView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ConnectionClosed(0);
  if (sub_100071A54())
  {
    sub_1001D7378(a1, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SOSConnectionEndedView);
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    sub_1001DCEA0(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SOSConnectionEndedView);
    v9 = static Edge.Set.top.getter();
    v35 = 1;
    v10 = static Edge.Set.all.getter();
    LOBYTE(v41) = 0;
    *&v36 = sub_1001DD6CC;
    *(&v36 + 1) = v8;
    LOBYTE(v37[0]) = v9;
    *(v37 + 8) = 0u;
    *(&v37[1] + 8) = 0u;
    BYTE8(v37[2]) = v35;
    v38[0] = v10;
    memset(&v38[8], 0, 33);
    *&v55 = sub_1001DD6CC;
    *(&v55 + 1) = v8;
    v56[0] = v9;
    memset(&v56[8], 0, 32);
    v56[40] = v35;
    LOBYTE(v57[0]) = v10;
    memset(v57 + 8, 0, 33);
    sub_100006C20(&v36, &v48, &qword_100365CA0, &qword_10028EEA0);
    sub_100008FA0(&v55, &qword_100365CA0, &qword_10028EEA0);
    v51 = v37[2];
    v52 = *v38;
    *v53 = *&v38[16];
    *&v53[9] = *&v38[25];
    v48 = v36;
    v49 = v37[0];
    v50 = v37[1];
    v39 = 0;
    v53[25] = 0;
LABEL_3:
    sub_100006C20(&v36, &v41, &qword_100365CA0, &qword_10028EEA0);
    sub_1000040A8(&qword_100365CA0, &qword_10028EEA0);
    sub_1001DD29C(&qword_100365C98, &qword_100365CA0, &qword_10028EEA0, sub_1001DD23C);
    _ConditionalContent<>.init(storage:)();
    v45 = v34[0];
    *v46 = v34[1];
    *&v46[10] = *(&v34[1] + 10);
    v41 = v32;
    v42 = v33[0];
    v43 = v33[1];
    v44 = v33[2];
    v40 = 0;
    v47 = 0;
    sub_1000040A8(&qword_100365C88, &qword_10028EE98);
    sub_1000040A8(&qword_100365C80, &qword_10028EE90);
    sub_1001DD18C();
    sub_1001DD29C(&qword_100365CB8, &qword_100365C80, &qword_10028EE90, sub_1001DD26C);
    _ConditionalContent<>.init(storage:)();
    result = sub_100008FA0(&v36, &qword_100365CA0, &qword_10028EEA0);
    goto LABEL_9;
  }

  if ((sub_100071A54() & 1) == 0)
  {
LABEL_7:
    result = sub_100071A54();
    if ((result & 1) == 0)
    {
      v24 = 0;
      v18 = 0uLL;
      v25 = 16711680;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      goto LABEL_10;
    }

    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    v13 = EnvironmentObject.init()();
    v15 = v14;
    v16 = static Edge.Set.top.getter();
    LOBYTE(v48) = 1;
    v17 = static Edge.Set.all.getter();
    LOBYTE(v41) = 0;
    *&v55 = v13;
    *(&v55 + 1) = v15;
    v56[0] = v16;
    memset(&v56[8], 0, 32);
    v56[40] = 1;
    LOBYTE(v57[0]) = v17;
    memset(v57 + 8, 0, 33);
    *&v32 = v13;
    *(&v32 + 1) = v15;
    LOBYTE(v33[0]) = v16;
    *(v33 + 8) = 0u;
    *(&v33[1] + 8) = 0u;
    BYTE8(v33[2]) = 1;
    LOBYTE(v34[0]) = v17;
    *(v34 + 8) = 0u;
    *(&v34[1] + 8) = 0u;
    BYTE8(v34[2]) = 0;
    sub_100006C20(&v55, &v48, &qword_100365C80, &qword_10028EE90);
    sub_100008FA0(&v32, &qword_100365C80, &qword_10028EE90);
    v45 = v57[0];
    *v46 = v57[1];
    *&v46[9] = *(&v57[1] + 9);
    v41 = v55;
    v42 = *v56;
    v43 = *&v56[16];
    v44 = *&v56[32];
    LOBYTE(v36) = 1;
    v47 = 1;
    sub_1000040A8(&qword_100365C88, &qword_10028EE98);
    sub_1000040A8(&qword_100365C80, &qword_10028EE90);
    sub_1001DD18C();
    sub_1001DD29C(&qword_100365CB8, &qword_100365C80, &qword_10028EE90, sub_1001DD26C);
    result = _ConditionalContent<>.init(storage:)();
LABEL_9:
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v21 = v51;
    v22 = v52;
    v23 = *v53;
    v24 = *&v53[16];
    v25 = *&v53[24] | (v54 << 16);
LABEL_10:
    *a2 = v18;
    *(a2 + 16) = v19;
    *(a2 + 32) = v20;
    *(a2 + 48) = v21;
    *(a2 + 64) = v22;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    *(a2 + 104) = v25;
    *(a2 + 106) = BYTE2(v25);
    return result;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    if ((*(v12 + 184) & 1) == 0)
    {
      v26 = *(v12 + 176);
      sub_1001D7378(a1, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SOSConnectionEndedView);
      v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v28 = swift_allocObject();
      sub_1001DCEA0(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for SOSConnectionEndedView);
      *(v28 + ((v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
      v29 = static Edge.Set.top.getter();
      v35 = 1;
      v30 = static Edge.Set.all.getter();
      LOBYTE(v41) = 0;
      *&v36 = sub_1001DD4E0;
      *(&v36 + 1) = v28;
      LOBYTE(v37[0]) = v29;
      *(v37 + 8) = 0u;
      *(&v37[1] + 8) = 0u;
      BYTE8(v37[2]) = v35;
      v38[0] = v30;
      memset(&v38[8], 0, 33);
      *&v55 = sub_1001DD4E0;
      *(&v55 + 1) = v28;
      v56[0] = v29;
      memset(&v56[8], 0, 32);
      v56[40] = v35;
      LOBYTE(v57[0]) = v30;
      memset(v57 + 8, 0, 33);
      sub_100006C20(&v36, &v48, &qword_100365CA0, &qword_10028EEA0);
      sub_100008FA0(&v55, &qword_100365CA0, &qword_10028EEA0);
      v52 = *v38;
      *v53 = *&v38[16];
      *&v53[9] = *&v38[25];
      v48 = v36;
      v49 = v37[0];
      v50 = v37[1];
      v51 = v37[2];
      v39 = 1;
      v53[25] = 1;
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  type metadata accessor for RoadsideAssistanceModel();
  sub_1001D7330(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001D99EC(uint64_t *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D9B04(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D9BDC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    sub_1000089B0(v1 + 48, v6);
    v2 = v7;
    v3 = v8;
    sub_1000088DC(v6, v7);
    (*(v3 + 32))(v9, v2, v3);
    v4 = sub_100008964(v6);
    __chkstk_darwin(v4);
    sub_1000040A8(&qword_100365C40, &qword_10028EE68);
    sub_1001DCC54();
    NavigationStack.init<>(root:)();
    return sub_100008964(v9);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D9D40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3[9];
    v6 = a3[10];
    sub_1000088DC(a3 + 6, v5);
    v7 = *(v6 + 32);

    v7(v13, v5, v6);

    v8 = a3[9];
    v9 = a3[10];
    sub_1000088DC(a3 + 6, v8);
    v10 = (*(v9 + 24))(v12, v8, v9);
    __chkstk_darwin(v10);
    sub_1000040A8(&qword_100365BE8, &qword_10028ED78);
    sub_1001DC838();
    NavigationStack.init<>(root:)();
    sub_100008964(v12);
    return sub_100008964(v13);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1001D9EFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1000089B0(a5, v25);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  sub_100008A18(v25, (v13 + 6));
  sub_1000089B0(a6, v25);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  sub_100008A18(v25, (v14 + 6));
  type metadata accessor for UIMetrics();
  sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  swift_retain_n();
  swift_retain_n();
  v15 = EnvironmentObject.init()();
  v17 = v16;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v18 = [objc_opt_self() mainBundle];
  v26._object = 0x800000010029FB70;
  v19._object = 0x800000010029C8E0;
  v26._countAndFlagsBits = 0xD00000000000004ELL;
  v19._countAndFlagsBits = 0xD000000000000012;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v26);

  *a7 = v15;
  *(a7 + 8) = v17;
  *(a7 + 16) = sub_1001DC948;
  *(a7 + 24) = v13;
  *(a7 + 32) = sub_1001DC9A0;
  *(a7 + 40) = v14;
  *(a7 + 48) = v22;
  *(a7 + 56) = v23;
  *(a7 + 64) = v24;
  *(a7 + 72) = v21;
}

uint64_t sub_1001DA11C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = static HorizontalAlignment.center.getter();
  v9[0] = 0;
  sub_1001DA308(v4, v2, __src);
  memcpy(__dst, __src, 0x221uLL);
  memcpy(v13, __src, 0x221uLL);
  sub_100006C20(__dst, v14, &qword_100365C20, &qword_10028EDE0);
  sub_100008FA0(v13, &qword_100365C20, &qword_10028EDE0);
  memcpy(&v11[7], __dst, 0x221uLL);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v10[624] = 1;
  v14[0] = v7;
  v14[1] = 0;
  LOBYTE(v14[2]) = 0;
  memcpy(&v14[2] + 1, v11, 0x228uLL);
  LOBYTE(v14[72]) = v2;
  memset(&v14[73], 0, 33);
  memcpy(&v10[7], v14, 0x269uLL);
  *v6 = 0;
  *(v6 + 8) = 1;
  memcpy((v6 + 9), v10, 0x270uLL);
  __src[0] = v7;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v11, 0x228uLL);
  v16 = v2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  sub_100006C20(v14, v9, &qword_100365C28, &qword_10028EDE8);
  return sub_100008FA0(__src, &qword_100365C28, &qword_10028EDE8);
}

uint64_t sub_1001DA308@<X0>(uint64_t a1@<X2>, void *a3@<X4>, void *a4@<X8>)
{
  v57 = a3;
  v61 = a4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v60 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  if (a1)
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);

    sub_1000088DC((a1 + 48), v10);
    v12 = *(v11 + 24);
    swift_retain_n();
    v12(v114, v10, v11);
    sub_100008964(v114);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v115[54] = v125;
    *&v115[70] = v126;
    *&v115[86] = v127;
    *&v115[102] = v128;
    *&v115[6] = v122;
    *&v115[22] = v123;
    v116 = 1;
    *&v115[38] = v124;
    v58 = static Edge.Set.top.getter();
    v117 = 1;
    v59 = static Edge.Set.bottom.getter();
    v119 = 1;
    LocalizedStringKey.init(stringLiteral:)();
    v13 = Text.init(_:tableName:bundle:comment:)();
    v15 = v14;
    v17 = v16;

    v18 = *(a1 + 72);
    v19 = *(a1 + 80);
    sub_1000088DC((a1 + 48), v18);
    (*(v19 + 72))(v18, v19);
    v20 = Text.font(_:)();
    v22 = v21;
    v24 = v23;
    v54[1] = v25;
    sub_1000317C4(v13, v15, v17 & 1);

    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    sub_1000088DC((a1 + 48), v26);
    (*(v27 + 80))(v26, v27);
    v28 = Text.foregroundColor(_:)();
    v55 = v29;
    v56 = v28;
    v31 = v30;
    v33 = v32;
    sub_1000317C4(v20, v22, v24 & 1);

    v34 = *(a1 + 112);

    v35 = static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    v37 = *(a1 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    v38 = (v35 & 1) == 0;
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v112[55] = v132;
    *&v112[71] = v133;
    *&v112[87] = v134;
    *&v112[103] = v135;
    *&v112[7] = v129;
    *&v112[23] = v130;
    v39 = v31 & 1;
    v113 = v31 & 1;
    *&v112[39] = v131;
    v40 = *(a1 + 112);

    v41 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v41)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.5;
    }

    v43 = swift_getKeyPath();
    *(&v86[4] + 9) = *&v112[64];
    *(&v86[5] + 9) = *&v112[80];
    *(&v86[6] + 9) = *&v112[96];
    *(v86 + 9) = *v112;
    *(&v86[1] + 9) = *&v112[16];
    *(&v86[2] + 9) = *&v112[32];
    *&v84 = v56;
    *(&v84 + 1) = v55;
    LOBYTE(v85) = v39;
    *(&v85 + 1) = v33;
    *&v86[0] = KeyPath;
    BYTE8(v86[0]) = v38;
    *(&v86[3] + 9) = *&v112[48];
    *(&v86[7] + 1) = *&v112[111];
    *&v87 = v43;
    *(&v87 + 1) = v42;
    v44 = sub_1000088DC(v57, v57[3]);
    v45 = *(*v44 + 184);
    v46 = *(*v44 + 192);
    v48 = *(*v44 + 200);
    v47 = *(*v44 + 208);
    v49 = static Edge.Set.all.getter();
    v110[8] = v86[6];
    v110[9] = v86[7];
    v110[10] = v87;
    v110[4] = v86[2];
    v110[5] = v86[3];
    v110[7] = v86[5];
    v110[6] = v86[4];
    v110[0] = v84;
    v110[1] = v85;
    v110[3] = v86[1];
    v110[2] = v86[0];
    LOBYTE(v89[0]) = 0;
    sub_100006C20(&v84, v111, &qword_100356C48, &unk_10027A5D0);
    v50 = static Edge.Set.top.getter();
    v111[0] = 1;
    v51 = static Edge.Set.bottom.getter();
    sub_100008FA0(&v84, &qword_100356C48, &unk_10027A5D0);
    v88[8] = v110[8];
    v88[9] = v110[9];
    v88[10] = v110[10];
    v88[4] = v110[4];
    v88[5] = v110[5];
    v88[7] = v110[7];
    v88[6] = v110[6];
    v88[0] = v110[0];
    v88[1] = v110[1];
    v88[3] = v110[3];
    v88[2] = v110[2];
    v89[1] = v110[1];
    v89[0] = v110[0];
    v89[5] = v110[5];
    v89[4] = v110[4];
    v89[2] = v110[2];
    v89[3] = v110[3];
    LOBYTE(v62[0]) = 1;
    LOBYTE(v88[11]) = v49;
    *(&v88[11] + 1) = v45;
    *&v88[12] = v46;
    *(&v88[12] + 1) = v48;
    *&v88[13] = v47;
    BYTE8(v88[13]) = 0;
    LOBYTE(v88[14]) = v50;
    v89[10] = v110[10];
    *(&v88[14] + 8) = 0u;
    *(&v88[15] + 8) = 0u;
    BYTE8(v88[16]) = 1;
    LOBYTE(v88[17]) = v51;
    *(&v88[17] + 8) = 0u;
    *(&v88[18] + 8) = 0u;
    BYTE8(v88[19]) = 1;
    v89[9] = v110[9];
    v89[8] = v110[8];
    v89[6] = v110[6];
    v89[7] = v110[7];
    v90 = v49;
    v91 = v45;
    v92 = v46;
    v93 = v48;
    v94 = v47;
    v95 = 0;
    v96 = v50;
    v97 = 0u;
    v98 = 0u;
    v99 = 1;
    v100 = v51;
    v101 = 0u;
    v102 = 0u;
    v103 = 1;
    sub_100006C20(v88, v111, &qword_100365C30, &qword_10028EE58);
    sub_100008FA0(v89, &qword_100365C30, &qword_10028EE58);
    memcpy(v111, v88, 0x139uLL);
    v52 = v60;
    v104[0] = v60;
    v104[1] = 0;
    LOWORD(v105[0]) = 1;
    *(&v105[4] + 2) = *&v115[64];
    *(&v105[5] + 2) = *&v115[80];
    *(&v105[6] + 2) = *&v115[96];
    *&v105[7] = *&v115[110];
    *(v105 + 2) = *v115;
    *(&v105[1] + 2) = *&v115[16];
    *(&v105[2] + 2) = *&v115[32];
    *(&v105[3] + 2) = *&v115[48];
    LOBYTE(v48) = v58;
    LOBYTE(v47) = v59;
    BYTE8(v105[7]) = v58;
    *(&v105[7] + 9) = *v118;
    HIDWORD(v105[7]) = *&v118[3];
    memset(&v105[8], 0, 32);
    LOBYTE(v106) = 1;
    *(&v106 + 1) = *v121;
    DWORD1(v106) = *&v121[3];
    BYTE8(v106) = v59;
    HIDWORD(v106) = *&v120[3];
    *(&v106 + 9) = *v120;
    v107 = 0u;
    v108 = 0u;
    v109 = 1;
    LOBYTE(v83[14]) = 1;
    v83[0] = v60;
    v83[1] = v105[0];
    v83[4] = v105[3];
    v83[5] = v105[4];
    v83[2] = v105[1];
    v83[3] = v105[2];
    v83[8] = v105[7];
    memset(&v83[9], 0, 32);
    v83[6] = v105[5];
    v83[7] = v105[6];
    v83[11] = v106;
    memset(&v83[12], 0, 32);
    memcpy(v110, v88, 0x139uLL);
    memcpy(&v83[14] + 8, v88, 0x139uLL);
    memcpy(v61, v83, 0x221uLL);
    sub_100006C20(v104, v62, &qword_100365C38, &qword_10028EE60);
    sub_100006C20(v110, v62, &qword_100365C30, &qword_10028EE58);
    sub_100008FA0(v111, &qword_100365C30, &qword_10028EE58);
    v69 = *&v115[64];
    v70 = *&v115[80];
    *v71 = *&v115[96];
    v65 = *v115;
    v66 = *&v115[16];
    v67 = *&v115[32];
    v62[0] = v52;
    v62[1] = 0;
    v63 = 1;
    v64 = 0;
    *&v71[14] = *&v115[110];
    v68 = *&v115[48];
    v72 = v48;
    *v73 = *v118;
    *&v73[3] = *&v118[3];
    v74 = 0u;
    v75 = 0u;
    v76 = 1;
    *v77 = *v121;
    *&v77[3] = *&v121[3];
    v78 = v47;
    *&v79[3] = *&v120[3];
    *v79 = *v120;
    v80 = 0u;
    v81 = 0u;
    v82 = 1;
    return sub_100008FA0(v62, &qword_100365C38, &qword_10028EE60);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

__n128 sub_1001DAD3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = [objc_opt_self() mainBundle];
  v79._object = 0x80000001002A3430;
  v11._countAndFlagsBits = 0x6553206F74206F47;
  v11._object = 0xEE0073676E697474;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v79._countAndFlagsBits = 0xD000000000000064;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v79);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();

  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *&v36 = KeyPath;
  BYTE8(v36) = 0;
  *&v37 = v16;
  BYTE8(v37) = 0;
  v38 = v13;
  v39.n128_u64[0] = sub_1001DC9F0;
  v39.n128_u64[1] = v14;
  LOBYTE(v40) = v61[0];
  *(&v40 + 1) = *(&v61[0] + 1);
  LOBYTE(v41) = v61[0];
  *(&v41 + 1) = *(&v61[0] + 1);
  v17 = static Edge.Set.top.getter();
  v47 = v13;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v45 = v36;
  v46 = v37;
  LOBYTE(v51) = 1;
  sub_1000775A0(&v36, v61);
  v18 = static Edge.Set.all.getter();
  LOBYTE(v61[0]) = 0;
  v19 = static Edge.Set.bottom.getter();
  if (qword_100353988 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1001DCB3C(&v36);
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v51 = v45;
  v52 = v46;
  v35[240] = 0;
  v57[0] = v17;
  *&v57[1] = *v44;
  *&v57[4] = *&v44[3];
  v61[2] = v47;
  v61[3] = v48;
  memset(&v57[8], 0, 32);
  v57[40] = 1;
  *&v57[44] = *&v43[3];
  *&v57[41] = *v43;
  v58[0] = v18;
  *&v58[4] = *&v42[3];
  *&v58[1] = *v42;
  v61[4] = v49;
  v61[5] = v50;
  *&v58[8] = xmmword_100277A70;
  *&v58[24] = xmmword_100277A70;
  v58[40] = 0;
  LOBYTE(v59) = v19;
  *(&v59 + 1) = v21;
  *v60 = v23;
  *&v60[8] = v25;
  *&v60[16] = v27;
  v60[24] = 0;
  v61[0] = v45;
  v61[1] = v46;
  v62 = v17;
  *&v63[3] = *&v44[3];
  *v63 = *v44;
  v65 = 0u;
  v64 = 0u;
  v66 = 1;
  *&v67[3] = *&v43[3];
  *v67 = *v43;
  v68 = v18;
  *&v69[3] = *&v42[3];
  *v69 = *v42;
  v70 = xmmword_100277A70;
  v71 = xmmword_100277A70;
  v72 = 0;
  v73 = v19;
  v74 = v21;
  v75 = v23;
  v76 = v25;
  v77 = v27;
  v78 = 0;
  sub_100006C20(&v51, v35, &qword_100365C10, &qword_10028EDD8);
  sub_100008FA0(v61, &qword_100365C10, &qword_10028EDD8);
  v28 = *v60;
  *(a5 + 192) = v59;
  *(a5 + 208) = v28;
  *(a5 + 217) = *&v60[9];
  v29 = *v58;
  *(a5 + 128) = *&v57[32];
  *(a5 + 144) = v29;
  v30 = *&v58[32];
  *(a5 + 160) = *&v58[16];
  *(a5 + 176) = v30;
  v31 = v56;
  *(a5 + 64) = v55;
  *(a5 + 80) = v31;
  v32 = *&v57[16];
  *(a5 + 96) = *v57;
  *(a5 + 112) = v32;
  v33 = v52;
  *a5 = v51;
  *(a5 + 16) = v33;
  result = v54;
  *(a5 + 32) = v53;
  *(a5 + 48) = result;
  return result;
}

uint64_t sub_1001DB130(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DB1DC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1[9];
    v3 = v1[10];
    sub_1000088DC(v1 + 6, v2);
    v4 = *(v3 + 32);

    v4(v10, v2, v3);

    v5 = [objc_opt_self() mainBundle];
    v11._object = 0x8000000100296930;
    v6._object = 0x8000000100296910;
    v11._countAndFlagsBits = 0xD00000000000008ALL;
    v6._countAndFlagsBits = 0xD000000000000014;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v11);

    __chkstk_darwin(v8);
    sub_1000040A8(&qword_100365CF8, &qword_10028EF70);
    sub_1001DD860();
    NavigationStack.init<>(root:)();

    return sub_100008964(v10);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DB3DC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v36 = a1[1];
  v37 = v14;
  sub_1000089B0(a2, v38);
  v15 = swift_allocObject();
  v16 = a1[1];
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  sub_100008A18(v38, v15 + 56);
  sub_100006C20(&v37, &v29, &qword_100357580, &unk_10027AEE0);
  sub_100006C20(&v36, &v29, &qword_100360020, &qword_100287400);
  type metadata accessor for UIMetrics();
  sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v17 = EnvironmentObject.init()();
  v19 = v18;
  type metadata accessor for CGSize(0);
  v34 = 0;
  v35 = 0;
  State.init(wrappedValue:)();
  v20 = v30;
  v21 = v29;
  *&v29 = v17;
  *(&v29 + 1) = v19;
  *&v30 = sub_1001DD9D0;
  *(&v30 + 1) = v15;
  *&v31 = sub_1001DC718;
  *(&v31 + 1) = 0;
  v32 = v21;
  v33 = v20;
  (*(v11 + 104))(v13, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v10);
  sub_1000040A8(&qword_100365D08, &qword_10028EF78);
  sub_100009274(&qword_100365D10, &qword_100365D08, &qword_10028EF78, &unk_10027FA10);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v11 + 8))(v13, v10);
  v38[2] = v31;
  v38[3] = v32;
  v39 = v33;
  v38[0] = v29;
  v38[1] = v30;
  sub_100008FA0(v38, &qword_100365D08, &qword_10028EF78);
  v22 = (a5 + *(sub_1000040A8(&qword_100365CF8, &qword_10028EF70) + 36));
  v23 = v22 + *(sub_1000040A8(&qword_100365C68, &qword_10028EE78) + 36);
  v24 = sub_1000040A8(&qword_100365C70, &qword_10028EE80);
  v25 = *(v24 + 36);
  v26 = type metadata accessor for ToolbarItemPlacement();
  (*(*(v26 - 8) + 56))(&v23[v25], 1, 1, v26);
  *v23 = 0;
  v27 = &v23[*(v24 + 40)];
  *v27 = sub_1001DDAA8;
  v27[1] = 0;
  *v22 = a3;
  v22[1] = a4;
}

double sub_1001DB788@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000040A8(&qword_100365D18, &qword_10028EF80);
  sub_1001DB824(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_100365D20, &qword_10028EF88) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_1001DB824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v144 = a2;
  v145 = a3;
  v4 = sub_1000040A8(&qword_100357C48, &qword_10028EF90);
  __chkstk_darwin(v4 - 8);
  v130 = &v117 - v5;
  v129 = sub_1000040A8(&qword_100365D28, &qword_10028EF98);
  __chkstk_darwin(v129);
  v132 = &v117 - v6;
  v131 = sub_1000040A8(&qword_100365D30, &qword_10028EFA0);
  __chkstk_darwin(v131);
  v134 = &v117 - v7;
  v133 = sub_1000040A8(&qword_100365D38, &qword_10028EFA8);
  __chkstk_darwin(v133);
  v136 = &v117 - v8;
  v135 = sub_1000040A8(&qword_100365D40, &qword_10028EFB0);
  __chkstk_darwin(v135);
  *&v138 = &v117 - v9;
  v137 = sub_1000040A8(&qword_100365D48, &qword_10028EFB8);
  __chkstk_darwin(v137);
  v141 = &v117 - v10;
  v140 = sub_1000040A8(&qword_100365D50, &unk_10028EFC0);
  __chkstk_darwin(v140);
  v143 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = &v117 - v13;
  *&v124 = type metadata accessor for AccessibilityTraits();
  *&v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100356C40, &qword_10027A390);
  __chkstk_darwin(v15 - 8);
  v128 = &v117 - v16;
  v127 = sub_1000040A8(&qword_100365D58, &qword_10028EFD0);
  __chkstk_darwin(v127);
  v139 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v146 = &v117 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v20 + 72);
    v22 = *(v20 + 80);
    swift_retain_n();
    sub_1000088DC((v20 + 48), v21);
    v23 = *(v22 + 176);
    v24 = *(a1 + 32);
    swift_retain_n();
    v25 = v23(v24, v21, v22);
    v125 = v26;
    v126 = v25;
    v27 = *(v20 + 72);
    v28 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v27);
    *&v151[0] = (*(v28 + 168))(v24, v27, v28);
    *(&v151[0] + 1) = v29;
    v121 = sub_100031770(*&v151[0], v29, v30);
    v31 = Text.init<A>(_:)();
    v33 = v32;
    LOBYTE(v22) = v34;
    v35 = *(v20 + 72);
    v36 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v35);
    (*(v36 + 72))(v35, v36);
    v37 = Text.font(_:)();
    v39 = v38;
    LOBYTE(v36) = v40;
    v117 = v41;
    sub_1000317C4(v31, v33, v22 & 1);

    v42 = *(v20 + 72);
    v43 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v42);
    (*(v43 + 80))(v42, v43);
    v44 = Text.foregroundColor(_:)();
    v119 = v45;
    v120 = v44;
    v47 = v46;
    v118 = v48;
    sub_1000317C4(v37, v39, v36 & 1);

    v49 = *(v20 + 112);

    LOBYTE(v43) = static UIContentSizeCategory.>= infix(_:_:)();

    v50 = (v43 & 1) == 0;
    KeyPath = swift_getKeyPath();
    v52 = *(v20 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v152[55] = v157;
    *&v152[71] = v158;
    *&v152[87] = v159;
    *&v152[103] = v160;
    *&v152[7] = v154;
    *&v152[23] = v155;
    v53 = v47 & 1;
    v153 = v47 & 1;
    *&v152[39] = v156;
    v54 = *(v20 + 112);

    v55 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v55)
    {
      v56 = 1.0;
    }

    else
    {
      v56 = 0.5;
    }

    v57 = swift_getKeyPath();
    *(&v149[4] + 9) = *&v152[64];
    *(&v149[5] + 9) = *&v152[80];
    *(&v149[6] + 9) = *&v152[96];
    *(v149 + 9) = *v152;
    *(&v149[1] + 9) = *&v152[16];
    *(&v149[2] + 9) = *&v152[32];
    *&v147 = v120;
    *(&v147 + 1) = v119;
    LOBYTE(v148) = v53;
    *(&v148 + 1) = v118;
    *&v149[0] = KeyPath;
    BYTE8(v149[0]) = v50;
    *(&v149[3] + 9) = *&v152[48];
    *(&v149[7] + 1) = *&v152[111];
    *&v150 = v57;
    *(&v150 + 1) = v56;
    v58 = v122;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48, &unk_10027A5D0);
    sub_10003BE30();
    v59 = v128;
    View.accessibility(addTraits:)();
    (*(v123 + 8))(v58, v124);
    v151[8] = v149[6];
    v151[9] = v149[7];
    v151[10] = v150;
    v151[4] = v149[2];
    v151[5] = v149[3];
    v151[6] = v149[4];
    v151[7] = v149[5];
    v151[0] = v147;
    v151[1] = v148;
    v151[2] = v149[0];
    v151[3] = v149[1];
    sub_100008FA0(v151, &qword_100356C48, &unk_10027A5D0);
    v60 = v144;
    v61 = sub_1000088DC(v144, *(v144 + 24));
    v62 = *(*v61 + 184);
    v123 = *(*v61 + 200);
    v124 = v62;
    v63 = static Edge.Set.all.getter();
    v64 = v146;
    sub_100006C20(v59, v146, &qword_100356C40, &qword_10027A390);
    v65 = v64 + *(sub_1000040A8(&qword_100365D60, &qword_10028EFD8) + 36);
    *v65 = v63;
    v66 = v124;
    *(v65 + 24) = v123;
    *(v65 + 8) = v66;
    *(v65 + 40) = 0;
    v67 = static Edge.Set.top.getter();
    v68 = v64 + *(sub_1000040A8(&qword_100365D68, &qword_10028EFE0) + 36);
    *v68 = v67;
    *(v68 + 8) = 0u;
    *(v68 + 24) = 0u;
    *(v68 + 40) = 1;
    v69 = static Edge.Set.bottom.getter();
    sub_100008FA0(v59, &qword_100356C40, &qword_10027A390);
    v70 = v64 + *(v127 + 36);
    *v70 = v69;
    *(v70 + 8) = 0u;
    *(v70 + 24) = 0u;
    *(v70 + 40) = 1;
    *&v147 = v126;
    *(&v147 + 1) = v125;

    v71 = Text.init<A>(_:)();
    v73 = v72;
    *&v147 = v71;
    *(&v147 + 1) = v72;
    LOBYTE(v59) = v74 & 1;
    LOBYTE(v148) = v74 & 1;
    *(&v148 + 1) = v75;

    v76 = v130;
    View.accessibility(hidden:)();
    sub_1000317C4(v71, v73, v59);

    v77 = *(v20 + 72);
    v78 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v77);
    v79 = (*(v78 + 64))(v77, v78);
    v80 = swift_getKeyPath();
    v81 = v132;
    sub_10000CF4C(v76, v132, &qword_100357C48, &qword_10028EF90);

    v82 = (v81 + *(v129 + 36));
    *v82 = v80;
    v82[1] = v79;
    v83 = *(v20 + 72);
    v84 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v83);
    v85 = (*(v84 + 80))(v83, v84);
    v86 = swift_getKeyPath();
    v87 = v134;
    sub_10000CF4C(v81, v134, &qword_100365D28, &qword_10028EF98);
    v88 = (v87 + *(v131 + 36));
    *v88 = v86;
    v88[1] = v85;
    v89 = *(v20 + 112);

    LOBYTE(v86) = static UIContentSizeCategory.>= infix(_:_:)();

    v90 = swift_getKeyPath();
    v91 = v136;
    sub_10000CF4C(v87, v136, &qword_100365D30, &qword_10028EFA0);
    v92 = v91 + *(v133 + 36);
    *v92 = v90;
    *(v92 + 8) = (v86 & 1) == 0;
    v93 = *(v20 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v94 = v138;
    sub_10000CF4C(v91, v138, &qword_100365D38, &qword_10028EFA8);
    v95 = (v94 + *(v135 + 36));
    v96 = v149[3];
    v95[4] = v149[2];
    v95[5] = v96;
    v95[6] = v149[4];
    v97 = v148;
    *v95 = v147;
    v95[1] = v97;
    v98 = v149[1];
    v95[2] = v149[0];
    v95[3] = v98;
    v99 = *(v20 + 112);

    v100 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v100)
    {
      v101 = 1.0;
    }

    else
    {
      v101 = 0.5;
    }

    v102 = swift_getKeyPath();
    v103 = v141;
    sub_10000CF4C(v94, v141, &qword_100365D40, &qword_10028EFB0);
    v104 = v103 + *(v137 + 36);
    *v104 = v102;
    *(v104 + 8) = v101;
    v105 = sub_1000088DC(v60, v60[3]);
    v106 = *v105;
    v144 = *(*v105 + 184);
    v138 = *(v106 + 200);
    LOBYTE(v102) = static Edge.Set.all.getter();
    v107 = v142;
    sub_100006C20(v103, v142, &qword_100365D48, &qword_10028EFB8);
    v108 = v107 + *(sub_1000040A8(&qword_100365D70, &qword_10028EFE8) + 36);
    *v108 = v102;
    *(v108 + 24) = v138;
    *(v108 + 8) = v144;
    *(v108 + 40) = 0;
    LOBYTE(v102) = static Edge.Set.top.getter();
    v109 = v107 + *(sub_1000040A8(&qword_100365D78, &qword_10028EFF0) + 36);
    *v109 = v102;
    *(v109 + 8) = 0u;
    *(v109 + 24) = 0u;
    *(v109 + 40) = 1;
    LOBYTE(v102) = static Edge.Set.bottom.getter();
    sub_100008FA0(v103, &qword_100365D48, &qword_10028EFB8);
    v110 = v139;
    v111 = v107 + *(v140 + 36);
    *v111 = v102;
    *(v111 + 8) = 0u;
    *(v111 + 24) = 0u;
    *(v111 + 40) = 1;
    v112 = v146;
    sub_100006C20(v146, v110, &qword_100365D58, &qword_10028EFD0);
    v113 = v143;
    sub_100006C20(v107, v143, &qword_100365D50, &unk_10028EFC0);
    v114 = v145;
    sub_100006C20(v110, v145, &qword_100365D58, &qword_10028EFD0);
    v115 = sub_1000040A8(&qword_100365D80, &qword_10028EFF8);
    sub_100006C20(v113, v114 + *(v115 + 64), &qword_100365D50, &unk_10028EFC0);
    sub_100008FA0(v107, &qword_100365D50, &unk_10028EFC0);
    sub_100008FA0(v112, &qword_100365D58, &qword_10028EFD0);
    sub_100008FA0(v113, &qword_100365D50, &unk_10028EFC0);
    return sub_100008FA0(v110, &qword_100365D58, &qword_10028EFD0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DC718@<X0>(uint64_t a2@<X8>)
{
  result = static HorizontalAlignment.center.getter();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1001DC744@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001DC838()
{
  result = qword_100365BF0;
  if (!qword_100365BF0)
  {
    sub_100008CF0(&qword_100365BE8, &qword_10028ED78);
    v3 = sub_100009274(&qword_100365BF8, &qword_100365C00, &qword_10028ED80, &unk_10027FA10);
    sub_1001DC8F0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365BF0);
  }

  return result;
}

unint64_t sub_1001DC8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365C08;
  if (!qword_100365C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C08);
  }

  return result;
}

uint64_t sub_1001DC958()
{

  sub_100008964((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001DC9B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_1001DCA04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1001DCB90(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

void *sub_1001DCA54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1001DCB90(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

unint64_t sub_1001DCB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365C18;
  if (!qword_100365C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C18);
  }

  return result;
}

uint64_t sub_1001DCBE4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1001DCC54()
{
  result = qword_100365C48;
  if (!qword_100365C48)
  {
    sub_100008CF0(&qword_100365C40, &qword_10028EE68);
    sub_100009274(&qword_100365C50, &qword_100365C58, &qword_10028EE70, &unk_10027FA10);
    sub_100009274(&qword_100365C60, &qword_100365C68, &qword_10028EE78, &unk_100284C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C48);
  }

  return result;
}

uint64_t sub_1001DCD38()
{
  v1 = (type metadata accessor for SOSConnectionEndedView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  sub_100008964((v0 + 16));

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001DCEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1001DCF08()
{
  type metadata accessor for SOSConnectionEndedView(0);

  return sub_1001D7D38(v0 + 16);
}

uint64_t sub_1001DCF7C()
{
  v1 = (type metadata accessor for SOSConnectionEndedView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100008964((v0 + v9));

  return _swift_deallocObject(v0, v9 + 40, v2 | 7);
}

double sub_1001DD0F0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SOSConnectionEndedView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001D91A8(v4, a1);
}

unint64_t sub_1001DD18C()
{
  result = qword_100365C90;
  if (!qword_100365C90)
  {
    sub_100008CF0(&qword_100365C88, &qword_10028EE98);
    sub_1001DD29C(&qword_100365C98, &qword_100365CA0, &qword_10028EEA0, sub_1001DD23C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C90);
  }

  return result;
}

uint64_t sub_1001DD29C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DD320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365CD0;
  if (!qword_100365CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365CD0);
  }

  return result;
}

uint64_t sub_1001DD374()
{
  v1 = (type metadata accessor for SOSConnectionEndedView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1001DD4E0()
{
  v1 = *(type metadata accessor for SOSConnectionEndedView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D9B04((v0 + v2), v3);
}

uint64_t sub_1001DD56C()
{
  v1 = (type metadata accessor for SOSConnectionEndedView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001DD6CC()
{
  v1 = *(type metadata accessor for SOSConnectionEndedView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1001D99EC(v2);
}

uint64_t sub_1001DD734@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001DD78C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1001DD7C0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1001DD860()
{
  result = qword_100365D00;
  if (!qword_100365D00)
  {
    sub_100008CF0(&qword_100365CF8, &qword_10028EF70);
    sub_100008CF0(&qword_100365D08, &qword_10028EF78);
    sub_100009274(&qword_100365D10, &qword_100365D08, &qword_10028EF78, &unk_10027FA10);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100365C60, &qword_100365C68, &qword_10028EE78, &unk_100284C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365D00);
  }

  return result;
}

uint64_t sub_1001DD988()
{

  sub_100008964((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001DDADC@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for TransmissionProgress(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100354FD8, &qword_100277EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = v1 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v11 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = *(v4 + 56);
    v12(v9, 1, 1, v3);
    v13 = v1 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
    swift_beginAccess();
    v14 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
    if ((*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      v15 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress;
      swift_beginAccess();
      sub_100006C20(v1 + v15, a1, &qword_100354FD8, &qword_100277EF0);
    }

    else
    {
      sub_1002031B4(v13 + *(v14 + 20), v6, type metadata accessor for TransmissionProgress);
      sub_100204258(v6, a1, type metadata accessor for TransmissionProgress);
      v12(a1, 0, 1, v3);
    }

    result = (*(v4 + 48))(v9, 1, v3);
    if (result != 1)
    {
      return sub_100008FA0(v9, &qword_100354FD8, &qword_100277EF0);
    }
  }

  else
  {
    sub_1002031B4(v10 + *(v11 + 20), v9, type metadata accessor for TransmissionProgress);
    v16 = *(v4 + 56);
    v16(v9, 0, 1, v3);
    sub_100204258(v9, a1, type metadata accessor for TransmissionProgress);
    return (v16)(a1, 0, 1, v3);
  }

  return result;
}

Swift::Int sub_1001DDE34(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DDFD0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1001DE0C0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1001DE1DC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1001DE260()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    if (*(v1 + 72))
    {
      v2 = *(v1 + 72);
    }

    else
    {

      v2 = sub_10020327C();

      if (!v2)
      {
        return;
      }
    }

    v3 = *(v2 + 16);
    if ((*(v0 + 64) & 1) != 0 || (v4 = *(v0 + 56), v4 >= v3))
    {
      if (v3)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
    }
  }
}

void sub_1001DE340()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v7 = *(v1 + 104);
  if (v7)
  {
    *(v1 + 104) = v7 - 1;
    sub_1001F4988();
    return;
  }

  if (qword_100353A20 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CB0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "onConnectionGuidanceDisappear called when _connectionGuidancePresent == 0", v11, 2u);
  }
}

uint64_t sub_1001DE534()
{
  v1 = *(*(v0 + 48) + 136);
  if (v1 > 4)
  {
    if (*(*(v0 + 48) + 136) <= 6u)
    {
      if (v1 == 5)
      {
        return 3;
      }

      return 1;
    }

    if (v1 - 7 >= 2)
    {
      return 0;
    }

    else if (*(v0 + 56))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (*(*(v0 + 48) + 136) > 2u)
    {
      return 2;
    }

    if (*(*(v0 + 48) + 136))
    {
      if (v1 == 1)
      {
        return 4;
      }

      return 1;
    }

    return 5;
  }
}

uint64_t sub_1001DE5B8()
{
  v1 = *(*(v0 + 48) + 136);
  if (v1 <= 4)
  {
    if (*(*(v0 + 48) + 136) <= 1u)
    {
      if (!*(*(v0 + 48) + 136))
      {
        v13 = objc_opt_self();
        v14 = [v13 mainBundle];
        v36._object = 0x80000001002A4A70;
        v15._countAndFlagsBits = 0x455443454E4E4F43;
        v15._object = 0xE900000000000044;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        v36._countAndFlagsBits = 0xD000000000000035;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36)._countAndFlagsBits;

        v8 = [v13 mainBundle];
        v34 = 0x80000001002A4A70;
        v9 = 0x657463656E6E6F43;
        v10 = 0xE900000000000064;
        v17.super.isa = v8;
        v18 = 0;
        v19 = 0xE000000000000000;
        v11 = 0xD000000000000035;
LABEL_22:
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, 0, v17, *&v18, *&v11);

        return countAndFlagsBits;
      }

      v24 = objc_opt_self();
      v25 = [v24 mainBundle];
      v38._object = 0x80000001002A49F0;
      v26._countAndFlagsBits = 0x4E4F4320524F4F50;
      v26._object = 0xEF4E4F495443454ELL;
      v38._countAndFlagsBits = 0xD000000000000079;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v38)._countAndFlagsBits;

      v8 = [v24 mainBundle];
      v34 = 0x80000001002A49F0;
      v9 = 0x6E6F4320726F6F50;
      v10 = 0xEF6E6F697463656ELL;
      v11 = 0xD000000000000079;
    }

    else
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          v2 = *(v0 + 57);
          v3 = objc_opt_self();
          v4 = [v3 mainBundle];
          if (v2 == 1)
          {
            v35._object = 0x80000001002A4960;
            v5._countAndFlagsBits = 0x495443454E4E4F43;
            v5._object = 0xAD0000A680E2474ELL;
            v35._countAndFlagsBits = 0xD00000000000004DLL;
            v6._countAndFlagsBits = 0;
            v6._object = 0xE000000000000000;
            countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v35)._countAndFlagsBits;

            v8 = [v3 mainBundle];
            v34 = 0x80000001002A4960;
            v9 = 0x697463656E6E6F43;
            v10 = 0xAD0000A680E2676ELL;
            v11 = 0xD00000000000004DLL;
          }

          else
          {
            v40._object = 0x80000001002A48F0;
            v32._countAndFlagsBits = 0x43454E4E4F434552;
            v32._object = 0xAFA680E2474E4954;
            v40._countAndFlagsBits = 0xD000000000000064;
            v33._countAndFlagsBits = 0;
            v33._object = 0xE000000000000000;
            countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v4, v33, v40)._countAndFlagsBits;

            v8 = [v3 mainBundle];
            v34 = 0x80000001002A48F0;
            v9 = 0x63656E6E6F636552;
            v10 = 0xAFA680E2676E6974;
            v11 = 0xD000000000000064;
          }

          goto LABEL_21;
        }

        return sub_100020564();
      }

      v20 = objc_opt_self();
      v21 = [v20 mainBundle];
      v37._object = 0x80000001002A49B0;
      v22._countAndFlagsBits = 0x4E4E4F4320544F4ELL;
      v22._object = 0xED00004445544345;
      v37._countAndFlagsBits = 0xD000000000000039;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v37)._countAndFlagsBits;

      v8 = [v20 mainBundle];
      v34 = 0x80000001002A49B0;
      v9 = 0x6E6E6F4320746F4ELL;
      v10 = 0xED00006465746365;
      v11 = 0xD000000000000039;
    }

LABEL_21:
    v17.super.isa = v8;
    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_22;
  }

  if (*(*(v0 + 48) + 136) <= 6u)
  {
    if (v1 == 5)
    {
      return sub_100020688();
    }

    v28 = objc_opt_self();
    v29 = [v28 mainBundle];
    v39._object = 0x80000001002A4890;
    v30._countAndFlagsBits = 0x4E4E4F4320544F4ELL;
    v30._object = 0xED00004445544345;
    v39._countAndFlagsBits = 0xD000000000000051;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v39)._countAndFlagsBits;

    v8 = [v28 mainBundle];
    v34 = 0x80000001002A4890;
    v9 = 0x6E6E6F4320746F4ELL;
    v10 = 0xED00006465746365;
    v11 = 0xD000000000000051;
    goto LABEL_21;
  }

  if (v1 == 7)
  {
    return sub_100020564();
  }

  if (v1 == 8)
  {
    return sub_1000207B4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DEB60(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100361B80, &unk_100289F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v18[-v6];
  v8 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-v9];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    static DispatchTime.now()();
    v13 = type metadata accessor for DispatchTime();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_responseReceivedAt;
    swift_beginAccess();
    sub_1000C6F74(v10, v12 + v14, &qword_100356518, &qword_1002797E0);
    swift_endAccess();
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_model);

    sub_100006C20(a1, v7, &qword_100361B80, &unk_100289F50);
    v17 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
    swift_beginAccess();
    sub_100006C20(v16 + v17, v4, &qword_100361B80, &unk_100289F50);
    sub_1001FD1B0(v7);
    swift_beginAccess();
    sub_10017E5D8(v7, v16 + v17, &qword_100361B80, &unk_100289F50);
    swift_endAccess();
    sub_1001FD588(v4);

    sub_100008FA0(v4, &qword_100361B80, &unk_100289F50);
    return sub_100008FA0(v7, &qword_100361B80, &unk_100289F50);
  }

  return result;
}

uint64_t sub_1001DEDEC()
{
  result = 13;
  v2 = 1 << *(*(v0 + 48) + 136);
  if ((v2 & 0x367) == 0)
  {
    if ((v2 & 0x88) != 0)
    {
      if (*(v0 + 56))
      {
        return 13;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      return 8;
    }
  }

  return result;
}

void *sub_1001DEE3C()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100367C28, &qword_10028FB40);
  v134 = *(v2 - 8);
  v135 = v2;
  __chkstk_darwin(v2);
  v133 = &v102 - v3;
  v129 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040A8(&qword_100367C30, &qword_10028FB48);
  v131 = *(v5 - 8);
  v132 = v5;
  __chkstk_darwin(v5);
  v130 = &v102 - v6;
  v118 = sub_1000040A8(&qword_100367C38, &qword_10028FB50);
  v126 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v116 = &v102 - v9;
  __chkstk_darwin(v10);
  v117 = &v102 - v11;
  __chkstk_darwin(v12);
  v119 = &v102 - v13;
  __chkstk_darwin(v14);
  v120 = &v102 - v15;
  __chkstk_darwin(v16);
  v121 = &v102 - v17;
  __chkstk_darwin(v18);
  v122 = &v102 - v19;
  v125 = sub_1000040A8(&qword_100367C40, &qword_10028FB58);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v102 - v20;
  v111 = sub_1000040A8(&qword_100367C48, &qword_10028FB60);
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v114 = &v102 - v21;
  v113 = sub_1000040A8(&qword_100367C50, &qword_10028FB68);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v102 - v22;
  v102 = sub_1000040A8(&qword_100367C58, &unk_10028FB70);
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v106 = &v102 - v23;
  v24 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v24 - 8);
  v136 = &v102 - v25;
  v105 = sub_1000040A8(&qword_100367C60, &unk_10028FB80);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v102 - v26;
  type metadata accessor for SystemSettingsModel();
  v27 = swift_allocObject();
  *(v27 + 32) = 0;
  *(v27 + 40) = 33685504;
  sub_1000040A8(&unk_100365610, &unk_100279630);
  swift_allocObject();
  *(v27 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v27 + 24) = PassthroughSubject.init()();
  *(v0 + 16) = v27;
  type metadata accessor for OrientationModel();
  v28 = swift_allocObject();
  v148 = 1;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 96) = 0;
  *(v28 + 104) = 1;
  swift_allocObject();
  *(v28 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v28 + 24) = PassthroughSubject.init()();
  *(v0 + 24) = v28;
  type metadata accessor for StewieModel(0);
  v29 = swift_allocObject();
  sub_1001FB4A4();
  *(v1 + 32) = v29;
  type metadata accessor for TargetModel(0);
  v30 = swift_allocObject();
  *(v30 + 48) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 80) = 0;
  *(v30 + 88) = 1;
  v31 = OBJC_IVAR____TtC8SOSBuddy11TargetModel_link;
  v32 = type metadata accessor for LinkState(0);
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  swift_allocObject();
  *(v30 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v30 + 24) = PassthroughSubject.init()();
  *(v1 + 40) = v30;
  type metadata accessor for LocationModel();
  v33 = swift_allocObject();
  *(v33 + 32) = 0;
  *(v33 + 40) = 0x1000000;
  swift_allocObject();
  *(v33 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v33 + 24) = PassthroughSubject.init()();
  *(v1 + 48) = v33;
  type metadata accessor for GuidanceModel(0);
  swift_allocObject();
  *(v1 + 56) = sub_1001F3904();
  type metadata accessor for GuidanceMessagesModel();
  v34 = swift_allocObject();
  sub_1001F6EB0();
  *(v1 + 64) = v34;
  type metadata accessor for ConnectionModel(0);
  swift_allocObject();
  *(v1 + 72) = sub_1001EC638();
  type metadata accessor for ConversationModel();
  v35 = swift_allocObject();
  *(v35 + 48) = 0;
  *(v35 + 56) = 0;
  *(v35 + 64) = xmmword_10028F0B0;
  *(v35 + 80) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  swift_allocObject();
  *(v35 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v35 + 24) = PassthroughSubject.init()();
  *(v1 + 80) = v35;
  type metadata accessor for RoadsideAssistanceConversationModel();
  v36 = swift_allocObject();
  *(v36 + 48) = xmmword_10027C560;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 72) = 0;
  *(v36 + 80) = 0;
  *(v36 + 64) = 0;
  *(v36 + 88) = 0;
  swift_allocObject();
  *(v36 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v36 + 24) = PassthroughSubject.init()();
  *(v1 + 88) = v36;
  type metadata accessor for ConnectivityModel();
  swift_allocObject();
  *(v1 + 96) = sub_1001F73AC();
  type metadata accessor for CountryModel();
  v37 = swift_allocObject();
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  *(v37 + 48) = 0;
  *(v37 + 56) = 0;
  *(v37 + 64) = 0;
  swift_allocObject();
  *(v37 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v37 + 24) = PassthroughSubject.init()();
  *(v1 + 104) = v37;
  type metadata accessor for ConnectionClosedModel(0);
  v38 = swift_allocObject();
  sub_1001F9CD8();
  *(v1 + 112) = v38;
  type metadata accessor for PartnerModel();
  v39 = swift_allocObject();
  sub_1001F8D58();
  *(v1 + 120) = v39;
  type metadata accessor for ServiceOutageModel(0);
  v40 = swift_allocObject();
  sub_1001EC244();
  *(v1 + 128) = v40;
  type metadata accessor for ServicePredictionsModel(0);
  v41 = swift_allocObject();
  sub_1001FF068();
  *(v1 + 136) = v41;
  type metadata accessor for DeviceOrientationSource(0);
  swift_allocObject();
  *(v1 + 144) = sub_100194500();
  *(v1 + 152) = [objc_allocWithZone(type metadata accessor for TargetConnectionSource(0)) init];
  type metadata accessor for DeviceUIOrientationSource();
  swift_allocObject();
  *(v1 + 160) = sub_1001138E8();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v42 = &_swiftEmptySetSingleton;
  }

  *(v1 + 168) = v42;
  swift_allocObject();
  *(v1 + 176) = PassthroughSubject.init()();
  *(v1 + 184) = 0;
  v43 = sub_1000040A8(&unk_100365630, &unk_1002837F0);
  swift_allocObject();
  *(v1 + 192) = PassthroughSubject.init()();
  v108 = v43;
  swift_allocObject();
  v44 = PassthroughSubject.init()();
  v145 = v1 + 168;
  *(v1 + 200) = v44;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000F53C(v45, qword_100381C80);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v146 = v49;
    *v48 = 136446210;
    v147 = v1;
    type metadata accessor for ConnectionAssistantModels();

    v50 = String.init<A>(describing:)();
    v52 = v1;
    v53 = sub_10017C9E8(v50, v51, &v146);

    *(v48 + 4) = v53;
    v1 = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "[%{public}s] init", v48, 0xCu);
    sub_100008964(v49);
  }

  v146 = *(*(v1 + 144) + 16);
  v54 = sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);

  v138 = v54;
  v55 = static OS_dispatch_queue.main.getter();
  v147 = v55;
  v140 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v56 = *(v140 - 8);
  v144 = *(v56 + 56);
  v141 = v56 + 56;
  v57 = v136;
  v144(v136, 1, 1, v140);
  sub_1000040A8(&qword_100363990, &unk_10028FB90);
  v142 = &protocol conformance descriptor for PassthroughSubject<A, B>;
  sub_100009274(&qword_100367C68, &qword_100363990, &unk_10028FB90, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v143 = sub_10002683C();
  v58 = v103;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v57, &unk_10035CF50, &unk_10027C800);

  swift_allocObject();
  swift_weakInit();
  v139 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100009274(&qword_100367C70, &qword_100367C60, &unk_10028FB80, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v137 = v1;

  v59 = v105;
  Publisher<>.sink(receiveValue:)();

  (*(v104 + 8))(v58, v59);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v146 = *(*(v1 + 144) + 24);

  v60 = static OS_dispatch_queue.main.getter();
  v147 = v60;
  v61 = v57;
  v144(v57, 1, 1, v140);
  sub_1000040A8(&unk_100363998, &unk_10028B230);
  sub_100009274(&qword_100367C78, &unk_100363998, &unk_10028B230, v142);
  v62 = v106;
  Publisher.receive<A>(on:options:)();
  v63 = v61;
  sub_100008FA0(v61, &unk_10035CF50, &unk_10027C800);

  swift_allocObject();
  v64 = v137;
  swift_weakInit();
  sub_100009274(&qword_100367C80, &qword_100367C58, &unk_10028FB70, v139);
  v65 = v102;
  Publisher<>.sink(receiveValue:)();

  (*(v107 + 8))(v62, v65);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v146 = *(v64[19] + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource_connectionDidChange);

  v66 = static OS_dispatch_queue.main.getter();
  v147 = v66;
  v144(v61, 1, 1, v140);
  sub_1000040A8(&qword_10035E430, &unk_10028FBA0);
  sub_100009274(&qword_100367C88, &qword_10035E430, &unk_10028FBA0, v142);
  v67 = v110;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v63, &unk_10035CF50, &unk_10027C800);

  swift_allocObject();
  v68 = v137;
  swift_weakInit();
  sub_100009274(&qword_100367C90, &qword_100367C50, &qword_10028FB68, v139);
  v69 = v113;
  Publisher<>.sink(receiveValue:)();

  (*(v112 + 8))(v67, v69);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v146 = *(v68[19] + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource_carrierNamesDidChange);

  v70 = static OS_dispatch_queue.main.getter();
  v147 = v70;
  v144(v63, 1, 1, v140);
  sub_1000040A8(&qword_10035E438, &unk_100284670);
  v71 = v142;
  sub_100009274(&qword_100367C98, &qword_10035E438, &unk_100284670, v142);
  v72 = v114;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v63, &unk_10035CF50, &unk_10027C800);

  swift_allocObject();
  v73 = v137;
  swift_weakInit();
  sub_100009274(&qword_100367CA0, &qword_100367C48, &qword_10028FB60, v139);
  v74 = v111;
  Publisher<>.sink(receiveValue:)();

  (*(v109 + 8))(v72, v74);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v75 = v73[4];
  v76 = v73;
  v146 = *(v73[3] + 24);
  v147 = *(v75 + 24);
  v114 = sub_100009274(&qword_10035CF60, &unk_100365610, &unk_100279630, v71);
  v77 = v115;
  Publisher.merge(with:)();
  v146 = *(v73[5] + 24);
  v78 = v116;
  v79 = v118;
  Publishers.MergeMany.merge(with:)();
  v80 = *(v126 + 8);
  v80(v77, v79);
  v146 = *(v73[9] + 24);
  v81 = v117;
  Publishers.MergeMany.merge(with:)();
  v80(v78, v79);
  v146 = *(v73[6] + 24);
  v82 = v119;
  Publishers.MergeMany.merge(with:)();
  v80(v81, v79);
  v146 = *(v73[16] + 24);
  v83 = v120;
  Publishers.MergeMany.merge(with:)();
  v80(v82, v79);
  v146 = *(v73[17] + 24);
  v84 = v121;
  Publishers.MergeMany.merge(with:)();
  v80(v83, v79);
  v146 = v73[22];
  v85 = v122;
  Publishers.MergeMany.merge(with:)();
  v80(v84, v79);
  v86 = static OS_dispatch_queue.main.getter();
  v146 = v86;
  v87 = v136;
  v144(v136, 1, 1, v140);
  v144 = sub_100009274(&qword_100367CA8, &qword_100367C38, &qword_10028FB50, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v88 = v123;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v87, &unk_10035CF50, &unk_10027C800);

  v80(v85, v79);
  v89 = swift_allocObject();
  swift_weakInit();
  v90 = swift_allocObject();
  *(v90 + 16) = sub_100204428;
  *(v90 + 24) = v89;
  sub_100009274(&qword_100367CB0, &qword_100367C40, &qword_10028FB58, v139);
  v91 = v125;
  Publisher<>.sink(receiveValue:)();

  (*(v124 + 8))(v88, v91);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v146 = *(v76[3] + 24);
  v147 = *(v76[7] + 24);
  Publisher.merge(with:)();
  v92 = v127;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
  v93 = static OS_dispatch_queue.main.getter();
  v146 = v93;
  v94 = v130;
  Publisher.throttle<A>(for:scheduler:latest:)();

  (*(v128 + 8))(v92, v129);
  v80(v85, v79);
  v95 = swift_allocObject();
  swift_weakInit();

  v96 = swift_allocObject();
  *(v96 + 16) = sub_100204468;
  *(v96 + 24) = v95;
  sub_100009274(&qword_100367CB8, &qword_100367C30, &qword_10028FB48, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v97 = v132;
  Publisher<>.sink(receiveValue:)();

  (*(v131 + 8))(v94, v97);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v146 = v76[24];
  sub_100009274(&qword_100361AA0, &unk_100365630, &unk_1002837F0, v142);
  v98 = v133;
  Publisher<>.removeDuplicates()();
  sub_100009274(&qword_100367CC0, &qword_100367C28, &qword_10028FB40, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v99 = v135;
  Publisher<>.sink(receiveValue:)();
  v100 = *(v134 + 8);
  v100(v98, v99);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v146 = v76[25];
  Publisher<>.removeDuplicates()();
  Publisher<>.sink(receiveValue:)();
  v100(v98, v99);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v76;
}
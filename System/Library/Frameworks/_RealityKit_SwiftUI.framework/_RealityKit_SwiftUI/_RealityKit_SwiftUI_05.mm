void CoveragePointRenderer.clearView()()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v2)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = [v2 currentRenderPassDescriptor];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript_];

  if (!v6)
  {
    goto LABEL_15;
  }

  [v6 setLoadAction_];

  v7 = [v4 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v8 setClearColor_];

  if (!*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = [swift_unknownObjectRetain() commandBuffer];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  swift_unknownObjectRelease();
  v11 = [v10 renderCommandEncoderWithDescriptor_];
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v11 endEncoding];
  v12 = *(v0 + v1);
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = [v12 currentDrawable];
  if (!v13)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v10 presentDrawable_];
  swift_unknownObjectRelease();
  [v10 commit];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall CoveragePointRenderer.draw(in:)(MTKView in)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v7 = type metadata accessor for CoveragePointCloud(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) || (v8 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud(), v9 = *(v8 - 8), v10 = (*(v9 + 48))(v5, 1, v8), v10))
  {
    outlined destroy of PerspectiveCameraComponent?(v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  }

  else
  {
    v11 = v1;
    MEMORY[0x28223BE20](v10);
    v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v13, v5, v8);
    outlined destroy of PerspectiveCameraComponent?(v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    ObjectCaptureSession.Frame.PointCloud.points.getter();
    (*(v9 + 8))(v13, v8);
    v14 = dispatch thunk of OCDataBuffer.count.getter();

    if (v14 > 1)
    {
      if (*(v11 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderStyle) == 1)
      {
        CoveragePointRenderer.drawCubes(in:)(in.super.super.super.isa);
      }

      else
      {
        CoveragePointRenderer.drawPoints(in:)(in.super.super.super.isa);
      }
    }
  }
}

void CoveragePointRenderer.drawPoints(in:)(void *a1)
{
  v2 = v1;
  v167 = a1;
  v164 = type metadata accessor for CoveragePointRenderer.ResourceEntry(0);
  MEMORY[0x28223BE20](v164);
  v166.i64[0] = v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  *&v163 = v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  *&v162 = v140 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v165 = v140 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v140 - v11;
  v168 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightLock];
  os_unfair_lock_lock(v168 + 4);
  v169.i64[0] = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v13 = *(v169.i64[0] - 8);
  MEMORY[0x28223BE20](v169.i64[0]);
  v15 = v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v140 - v17;
  v19 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v19], v12, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v20 = type metadata accessor for CoveragePointCloud(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v21 + 48;
  if (v22(v12, 1, v20))
  {
    outlined destroy of PerspectiveCameraComponent?(v12, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    (*(v13 + 56))(v18, 1, 1, v169.i64[0]);
LABEL_4:
    outlined destroy of PerspectiveCameraComponent?(v18, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
LABEL_5:
    os_unfair_lock_unlock(v168 + 4);
    return;
  }

  v157.i64[0] = v23;
  v158.i64[0] = v22;
  v159.i64[0] = v19;
  v160.i64[0] = v20;
  v161 = v15;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v12, v18, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined destroy of PerspectiveCameraComponent?(v12, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v24 = v169.i64[0];
  if ((*(v13 + 48))(v18, 1, v169.i64[0]) == 1)
  {
    goto LABEL_4;
  }

  v25 = v161;
  (*(v13 + 32))(v161, v18, v24);
  v26 = v2;
  v27 = v165;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v159.i64[0]], v165, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if ((v158.i64[0])(v27, 1, v160.i64[0]) == 1)
  {
    goto LABEL_70;
  }

  v28 = CoveragePointRenderer.createUniforms(coveragePointCloud:)(v27);
  outlined destroy of CoveragePointCloud(v27, type metadata accessor for CoveragePointCloud);
  v29 = v164;
  v30 = *(v164 + 20);
  v31 = v166.i64[0];
  (*(v13 + 16))(v166.i64[0] + v30, v25, v24);
  (*(v13 + 56))(&v31[v30], 0, 1, v24);
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v32 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

  *v31 = v28;
  v33 = *(v29 + 24);
  v165 = v32;
  *&v31[v33] = v32;
  v34 = specialized InFlightQueue.retain(_:)(v31);
  v35 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue];
  v36 = v167;
  if (!v35)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v37 = [v35 commandBuffer];
  if (!v37)
  {
    (*(v13 + 8))(v25, v24);
LABEL_63:
    outlined destroy of CoveragePointCloud(v31, type metadata accessor for CoveragePointRenderer.ResourceEntry);
    goto LABEL_5;
  }

  v38 = v37;
  v156 = v28;
  v39 = [v36 currentRenderPassDescriptor];
  if (!v39)
  {
    (*(v13 + 8))(v25, v24);
    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  v40 = v39;
  v153 = v34;
  v154 = v13;
  v41 = [v39 colorAttachments];
  v42 = [v41 objectAtIndexedSubscript_];

  if (!v42)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v42 setLoadAction_];

  v43 = [v40 colorAttachments];
  v44 = [v43 objectAtIndexedSubscript_];

  if (!v44)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  [v44 setClearColor_];

  v164 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer;
  if (!*&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer])
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v45 = &v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  v46 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v47 = v45[1];
  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v155 = v38;
  if (v47 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v48 = v40;
  v49 = v46;
  v50 = v47;

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v49, v50);

  v51 = [v40 depthAttachment];
  if (!v51)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v52 = *&v26[v164];
  v53 = v155;
  if (!v52)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (!*(v52 + 32))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v54 = v51;
  [v51 setTexture_];

  v55 = [v40 depthAttachment];
  if (!v55)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v56 = v55;
  [v55 setLoadAction_];

  v57 = [v40 depthAttachment];
  if (!v57)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v58 = v57;
  [v57 setStoreAction_];

  v59 = [v53 renderCommandEncoderWithDescriptor_];
  if (!v59)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v60 = v59;
  v171[0] = 0uLL;
  v171[1] = *v45;
  v171[2] = xmmword_23B91C510;
  [v59 setViewport_];
  v61 = *&v26[v164];
  if (!v61)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v60 setDepthStencilState_];
  if (!*&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderPipelineState])
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v60 setRenderPipelineState_];
  [v60 setVertexBuffer:v156 offset:0 atIndex:0];
  [v60 setVertexBuffer:v165 offset:0 atIndex:1];
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v62 = dispatch thunk of OCDataBuffer.count.getter();

  [v60 drawPrimitives:0 vertexStart:0 vertexCount:v62];
  [v60 endEncoding];
  v63 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle];
  if (!v63)
  {
    goto LABEL_61;
  }

  v156 = CoveragePointRenderer.captureCircleRenderer.getter();
  if (!v156)
  {

    goto LABEL_61;
  }

  v165 = v63;
  v64 = v159.i64[0];
  v65 = v162;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v26[v159.i64[0]], v162, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v66 = v160.i64[0];
  v67 = v158.i64[0];
  if ((v158.i64[0])(v65, 1, v160.i64[0]) == 1)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v140[1] = v60;
  *&v147 = v45;
  *&v148 = v48;
  v68.n128_f64[0] = CoveragePointCloud.bboxWorld.getter();
  v151 = v69;
  v152 = v68;
  v149 = v71;
  v150 = v70;
  outlined destroy of CoveragePointCloud(v65, type metadata accessor for CoveragePointCloud);
  *&v72 = specialized static BoundingBoxHelpers.unpaddedBoundingBox(boxWorld:)(v152, v151, v150, v149);
  v162 = v72;
  v151 = v74;
  v152 = v73;
  v150 = v75;
  v76 = &v26[v64];
  v77 = v163;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v76, v163, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v67(v77, 1, v66) == 1)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v149.n128_u64[0] = v140;
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78 - 8);
  v81 = v140 - v80;
  *&v146 = *(v66 + 20);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v77 + v146, v140 - v80, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v82 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v83 = *(v82 - 8);
  v84 = *(v83 + 48);
  v85 = v84(v81, 1, v82);

  v86 = MEMORY[0x277D860B8];
  if (v85 == 1)
  {
    v87 = outlined destroy of PerspectiveCameraComponent?(v81, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v88 = *v86;
    v159 = v86[1];
    v160 = v88;
    v89 = v86[2];
    v157 = v86[3];
    v158 = v89;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v159 = v91;
    v160 = v90;
    v157 = v93;
    v158 = v92;
    v87 = (*(v83 + 8))(v81, v82);
  }

  MEMORY[0x28223BE20](v87);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v163 + v146, v140 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v84(v140 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v82) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v140 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v149 = v94;
    v145 = v96;
    v146 = v95;
    v144 = v97;
    (*(v83 + 8))(v140 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), v82);
  }

  v31 = v166.i64[0];
  v24 = v169.i64[0];
  v48 = v148;
  v98 = v147;
  Transform.init(matrix:)();
  v169 = v99;
  v166 = v100;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v102.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v166, v169, v101);
  v141 = v102;
  v142 = v103;
  v143 = v104;
  v144 = v105;
  outlined destroy of CoveragePointCloud(v163, type metadata accessor for CoveragePointCloud);
  v106 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld + 16];
  v169 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld];
  v166 = v106;
  v107 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld + 48];
  v163 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld + 32];
  v108 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 16];
  v148 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection];
  v149 = v107;
  v109 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 48];
  v146 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 32];
  v147 = v108;
  v145 = v109;
  v110 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_localTime];
  v111 = sqrtf(vaddv_f32(vmul_f32(*&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector], *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector])));
  if (v111 <= 1.0)
  {
    v112 = v111;
  }

  else
  {
    v112 = 1.0;
  }

  v113 = 1.0 - v112;
  if (v111 <= 0.0)
  {
    v113 = 1.0;
  }

  v114 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness] * v113;
  v141 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v160, v141.f32[0]), v159, *v141.f32, 1), v158, v141, 2), v157, v141, 3);
  v142 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v160, v142.f32[0]), v159, *v142.f32, 1), v158, v142, 2), v157, v142, 3);
  v143 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v160, v143.f32[0]), v159, *v143.f32, 1), v158, v143, 2), v157, v143, 3);
  v160 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v160, v144.f32[0]), v159, *v144.f32, 1), v158, v144, 2), v157, v144, 3);
  if (v114 > 0.1)
  {
    v115 = v114;
  }

  else
  {
    v115 = 0.1;
  }

  v116 = v156;
  v117 = v165;
  *(v156 + 64) = v165;

  v118 = *(v117 + 64);
  if (v115 <= 1.0)
  {
    v119 = v115;
  }

  else
  {
    v119 = 1.0;
  }

  v170[0] = v162;
  v170[1] = v152;
  v170[2] = v151;
  v170[3] = v150;
  v170[4] = v141;
  v170[5] = v142;
  v170[6] = v143;
  v170[7] = v160;
  v170[8] = v169;
  v170[9] = v166;
  v170[10] = v163;
  v170[11] = v149;
  v170[12] = v148;
  v170[13] = v147;
  v170[14] = v146;
  v170[15] = v145;
  LODWORD(v170[16]) = 1056964608;
  *(&v170[16] + 1) = v118;
  *&v170[17] = v119;
  *(&v170[17] + 1) = v110;
  _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOi_(v170);
  memcpy(v116 + 10, v170, 0x121uLL);
  if (!v116[53])
  {
    v120 = CaptureCircleRenderer.makeSingleBinVerticesCapsule(width:)(0.5);
    CaptureCircleRenderer.makeClonedBinVertices(binVerts:modelScale:)(v120, 1.0);
  }

  v121 = v116[50];
  if (!v121)
  {
    goto LABEL_86;
  }

  v122 = [swift_unknownObjectRetain() contents];
  v123 = v121;
  CaptureCircleRenderer.makeUniforms()(v171);
  memcpy(v122, v171, 0x1B0uLL);
  CaptureCircleRenderer.updateCaptureBins()();

  v124 = v48;
  v125 = [v124 colorAttachments];
  v126 = [v125 objectAtIndexedSubscript_];

  if (!v126)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v126 setLoadAction_];

  v127 = [v124 depthAttachment];
  if (!v127)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v128 = *&v26[v164];
  if (!v128)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (!*(v128 + 32))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v129 = v127;
  [v127 setTexture_];

  v130 = [v124 depthAttachment];
  if (!v130)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v131 = v130;
  [v130 setLoadAction_];

  v132 = [v124 depthAttachment];
  if (v132)
  {
    v133 = v132;
    [v132 setStoreAction_];

    v134 = v155;
    CaptureCircleRenderer.render(into:viewportSize:desc:)(v155, v124, *v98, v98[1]);

    v53 = v134;
LABEL_61:
    v135 = [v167 currentDrawable];
    if (v135)
    {
      [v53 presentDrawable_];
      swift_unknownObjectRelease();
      v136 = swift_allocObject();
      v137 = v153;
      *(v136 + 16) = v26;
      *(v136 + 24) = v137;
      *&v170[2] = partial apply for closure #1 in CoveragePointRenderer.drawPoints(in:);
      *(&v170[2] + 1) = v136;
      *&v170[0] = MEMORY[0x277D85DD0];
      *(&v170[0] + 1) = 1107296256;
      *&v170[1] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
      *(&v170[1] + 1) = &block_descriptor_69;
      v138 = _Block_copy(v170);
      v139 = v26;

      [v53 addCompletedHandler_];
      _Block_release(v138);
      [v53 commit];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v154 + 8))(v161, v24);
      goto LABEL_63;
    }

    goto LABEL_83;
  }

LABEL_92:
  __break(1u);
}

void closure #1 in CoveragePointRenderer.drawPoints(in:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v85 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v82 = (&v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v83 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v78 - v12);
  v14 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue);
  os_unfair_lock_lock((*(v14 + 16) + 16));
  swift_beginAccess();
  v84 = v14;
  v15 = *(v14 + 32);
  v17 = (v15 + 2);
  v16 = v15[2];
  if (!v16)
  {
LABEL_5:
    v21 = v16;
    goto LABEL_10;
  }

  v18 = 0;
  v19 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v20 = *(v7 + 72);
  v81 = v19;
  while (*&v19[v15] != v85)
  {
    ++v18;
    v19 += v20;
    if (v16 == v18)
    {
      goto LABEL_5;
    }
  }

  v21 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v80 = a1;
  if (v21 != v16)
  {
    v70 = &v19[v20];
    v71 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd;
    v3 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR;
    while (v21 < v16)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v70[v15], v13, v71, v3);
      v72 = v71;
      v73 = *v13;
      a1 = v72;
      outlined destroy of PerspectiveCameraComponent?(v13, v72, v3);
      if (v73 == v85)
      {
        v71 = a1;
      }

      else
      {
        if (v21 == v18)
        {
          v71 = a1;
        }

        else
        {
          if (v18 < 0)
          {
            goto LABEL_52;
          }

          v74 = v3;
          v3 = *v17;
          if (v18 >= *v17)
          {
            goto LABEL_53;
          }

          v71 = a1;
          v75 = a1;
          a1 = v74;
          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v81 + v15 + v18 * v20, v83, v75, v74);
          if (v21 >= v3)
          {
            goto LABEL_54;
          }

          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v70[v15], v82, v71, a1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v84 + 4) = v15;
          v3 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
            *(v84 + 4) = v15;
          }

          outlined assign with take of Cancellable?(v82, v81 + v15 + v18 * v20, v71, a1);
          v77 = v84;
          *(v84 + 4) = v15;
          if (v21 >= v15[2])
          {
            goto LABEL_55;
          }

          outlined assign with take of Cancellable?(v83, &v70[v15], v71, a1);
          *(v77 + 4) = v15;
        }

        ++v18;
      }

      ++v21;
      v17 = (v15 + 2);
      v16 = v15[2];
      v70 += v20;
      if (v21 == v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v21 = v16;
LABEL_9:
  v16 = v18;
  a1 = v80;
  if (v21 < v18)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
    goto LABEL_12;
  }

LABEL_10:
  v22 = v84;
  specialized Array.replaceSubrange<A>(_:with:)(v16, v21);
  swift_endAccess();
  os_unfair_lock_unlock((*(v22 + 2) + 16));
  v18 = &unk_278B8A000;
  v23 = [a1 error];
  if (!v23)
  {
    goto LABEL_15;
  }

  v3 = v23;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_57;
  }

LABEL_12:
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);
  v25 = v3;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v87 = v29;
    *v28 = 136446210;
    v30 = v25;
    v31 = [v30 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = a1;
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, &v87);
    a1 = v33;

    *(v28 + 4) = v36;
    _os_log_impl(&dword_23B824000, v26, v27, "Got error rendering PIP CommandBuffer: error=%{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x23EEB0B70](v29, -1, -1);
    MEMORY[0x23EEB0B70](v28, -1, -1);
  }

  else
  {
  }

LABEL_15:
  v37 = [a1 *(v18 + 1776)];
  if (!v37)
  {
    return;
  }

  v81 = v37;
  v38 = [v37 userInfo];
  v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v39 + 16))
  {

    goto LABEL_33;
  }

  v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_33:

    goto LABEL_34;
  }

  outlined init with copy of Any(*(v39 + 56) + 32 * v42, &v87);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo27MTLCommandBufferEncoderInfo_pGMd, &_sSaySo27MTLCommandBufferEncoderInfo_pGMR);
  if (swift_dynamicCast())
  {
    v18 = v86;
    if (!(v86 >> 62))
    {
      v46 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_21:
        if (v46 < 1)
        {
          __break(1u);
          return;
        }

        v47 = 0;
        v48 = v18 & 0xC000000000000001;
        v49 = 0x27E189000uLL;
        *&v45 = 136446210;
        v78 = v45;
        v79 = v18 & 0xC000000000000001;
        v80 = v18;
        do
        {
          if (v48)
          {
            v66 = MEMORY[0x23EEAFC40](v47, v18);
          }

          else
          {
            v66 = *(v18 + 8 * v47 + 32);
            swift_unknownObjectRetain();
          }

          if (*(v49 + 1928) != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          __swift_project_value_buffer(v67, logger);
          swift_unknownObjectRetain();
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v68, v69))
          {
            v50 = swift_slowAlloc();
            v84 = v50;
            v85 = swift_slowAlloc();
            v86 = v85;
            *v50 = v78;
            v51 = [v66 label];
            LODWORD(v83) = v69;
            v52 = v51;
            v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;

            v55 = [v66 debugSignposts];
            v56 = v49;
            v57 = v46;
            v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v87 = v58;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
            v59 = BidirectionalCollection<>.joined(separator:)();
            v61 = v60;
            v46 = v57;
            v49 = v56;

            v87 = v82;
            v88 = v54;

            MEMORY[0x23EEAF590](v59, v61);
            v48 = v79;

            v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v86);
            v18 = v80;

            v63 = v84;
            *(v84 + 1) = v62;
            v64 = v63;
            _os_log_impl(&dword_23B824000, v68, v83, "%{public}s", v63, 0xCu);
            v65 = v85;
            __swift_destroy_boxed_opaque_existential_0Tm(v85);
            MEMORY[0x23EEB0B70](v65, -1, -1);
            MEMORY[0x23EEB0B70](v64, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v47;
        }

        while (v46 != v47);
        goto LABEL_33;
      }

      goto LABEL_33;
    }

LABEL_59:
    v46 = __CocoaSet.count.getter();
    if (v46)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_34:
}

void CoveragePointRenderer.drawCubes(in:)(void *a1)
{
  v93 = a1;
  v91 = type metadata accessor for CoveragePointRenderer.ResourceEntry(0);
  MEMORY[0x28223BE20](v91);
  v94 = (&v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v90 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v92 = &v76 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v76 - v8;
  v95 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightLock];
  os_unfair_lock_lock(v95 + 4);
  v97 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v10 = *(v97 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v97);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v76 - v14;
  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  v96 = v1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v1[v16], v9, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v17 = type metadata accessor for CoveragePointCloud(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v18 + 48;
  if (v19(v9, 1, v17))
  {
    outlined destroy of PerspectiveCameraComponent?(v9, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    (*(v10 + 56))(v15, 1, 1, v97);
LABEL_4:
    outlined destroy of PerspectiveCameraComponent?(v15, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
LABEL_5:
    os_unfair_lock_unlock(v95 + 4);
    return;
  }

  v87 = v19;
  v88 = v17;
  v89 = v16;
  v85 = v13;
  v86 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v9, v15, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined destroy of PerspectiveCameraComponent?(v9, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v21 = *(v10 + 48);
  v22 = v97;
  if (v21(v15, 1, v97) == 1)
  {
    goto LABEL_4;
  }

  v81 = v21;
  v23 = *(v10 + 32);
  v24 = v86;
  v80 = v10 + 32;
  v79 = v23;
  v23(v86, v15, v22);
  v25 = v92;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v89 + v96, v92, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v84 = v20;
  if (v87(v25, 1, v88) == 1)
  {
    __break(1u);
    goto LABEL_46;
  }

  v26 = CoveragePointRenderer.createUniforms(coveragePointCloud:)(v25);
  outlined destroy of CoveragePointCloud(v25, type metadata accessor for CoveragePointCloud);
  v27 = v91;
  v28 = v91[5];
  v29 = v94;
  (*(v10 + 16))(v94 + v28, v24, v22);
  v30 = *(v10 + 56);
  v83 = v10 + 56;
  v82 = v30;
  v30(v29 + v28, 0, 1, v22);
  swift_unknownObjectRetain();
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v31 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

  v92 = v26;
  *v29 = v26;
  *(v29 + v27[6]) = v31;
  v32 = specialized InFlightQueue.retain(_:)(v29);
  v33 = v96;
  v34 = v32;
  v35 = *&v96[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue];
  if (!v35)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v36 = [v35 commandBuffer];
  if (!v36)
  {
LABEL_26:
    swift_unknownObjectRelease();
LABEL_35:
    outlined destroy of CoveragePointCloud(v29, type metadata accessor for CoveragePointRenderer.ResourceEntry);
    (*(v10 + 8))(v24, v22);
    goto LABEL_5;
  }

  v37 = v36;
  v76 = v10 + 48;
  v38 = [v93 currentRenderPassDescriptor];
  if (!v38)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v39 = v38;
  v78 = v34;
  v91 = v37;
  v40 = [v38 colorAttachments];
  v41 = [v40 objectAtIndexedSubscript_];

  if (!v41)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v41 setLoadAction_];

  v42 = [v39 colorAttachments];
  v43 = [v42 objectAtIndexedSubscript_];

  if (!v43)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  [v43 setClearColor_];

  v29 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer;
  if (!*&v33[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v44 = &v33[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  v45 = *&v33[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v46 = v44[1];
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = v45;
  v48 = v46;

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v47, v48);

  v49 = [v39 depthAttachment];
  if (!v49)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v50 = v96;
  v51 = *(v29 + v96);
  if (!v51)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v52 = v11;
  v29 = v94;
  v53 = v85;
  if (!*(v51 + 32))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v54 = v49;
  [v49 setTexture_];

  v77 = v39;
  v55 = [v91 renderCommandEncoderWithDescriptor_];
  if (!v55)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  aBlock = 0;
  v99 = 0;
  v100 = *v44;
  v101 = xmmword_23B91C510;
  v56 = v55;
  v57 = [v55 setViewport_];
  v58 = MEMORY[0x28223BE20](v57);
  v59 = &v76 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v76 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v90;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v89 + v50, v90, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v87(v61, 1, v88))
  {
    swift_unknownObjectRelease();
    outlined destroy of PerspectiveCameraComponent?(v61, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    v82(&v76 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v97);
    v44 = v56;
    goto LABEL_29;
  }

  v89 = &v76;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v61, &v76 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined destroy of PerspectiveCameraComponent?(v61, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v62 = v97;
  if (v81(&v76 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v97) == 1)
  {
    swift_unknownObjectRelease();
    v44 = v56;
LABEL_29:
    outlined destroy of PerspectiveCameraComponent?(&v76 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v11 = v77;
    if (one-time initialization token for logger == -1)
    {
LABEL_30:
      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, logger);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      v66 = os_log_type_enabled(v64, v65);
      v22 = v97;
      if (v66)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_23B824000, v64, v65, "coveragePoints is nil!  Not rendering voxels!", v67, 2u);
        MEMORY[0x23EEB0B70](v67, -1, -1);
      }

      v68 = v96;
LABEL_33:
      v69 = v93;
      v70 = v78;
      [v44 endEncoding];
      v71 = [v69 currentDrawable];
      if (v71)
      {
        v72 = v91;
        [v91 presentDrawable_];
        swift_unknownObjectRelease();
        v73 = swift_allocObject();
        *(v73 + 16) = v68;
        *(v73 + 24) = v70;
        *&v101 = partial apply for closure #1 in CoveragePointRenderer.drawCubes(in:);
        *(&v101 + 1) = v73;
        aBlock = MEMORY[0x277D85DD0];
        v99 = 1107296256;
        *&v100 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
        *(&v100 + 1) = &block_descriptor_5;
        v74 = _Block_copy(&aBlock);
        v75 = v68;

        [v72 addCompletedHandler_];
        _Block_release(v74);
        [v72 commit];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v24 = v86;
        goto LABEL_35;
      }

      goto LABEL_54;
    }

LABEL_44:
    swift_once();
    goto LABEL_30;
  }

  v11 = v77;
  v79(v59, v60, v62);
  if (CoveragePointRenderer.voxelRenderer.getter())
  {
    v44 = v56;
    VoxelRenderer.render(encoder:uniforms:pointCloud:)(v56, v92);

    swift_unknownObjectRelease();
    (*(v10 + 8))(v59, v62);
    v68 = v96;
    v22 = v62;
    goto LABEL_33;
  }

LABEL_55:
  __break(1u);
}

void closure #1 in CoveragePointRenderer.drawCubes(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - v11);
  v13 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue);
  os_unfair_lock_lock((*(v13 + 16) + 16));
  swift_beginAccess();
  v42 = v13;
  v14 = *(v13 + 32);
  v16 = v14 + 2;
  v15 = v14[2];
  if (!v15)
  {
LABEL_5:
    v20 = v15;
LABEL_10:
    v21 = v42;
    specialized Array.replaceSubrange<A>(_:with:)(v15, v20);
    swift_endAccess();
    os_unfair_lock_unlock((*(v21 + 16) + 16));
    return;
  }

  v17 = 0;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = *(v6 + 72);
  v39 = v18;
  while (*(v14 + v18) != a3)
  {
    ++v17;
    v18 += v19;
    if (v15 == v17)
    {
      goto LABEL_5;
    }
  }

  v20 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    if (v20 == v15)
    {
      v20 = v15;
LABEL_9:
      v15 = v17;
      if (v20 >= v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v22 = v19 + v18;
      v23 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd;
      v24 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR;
      v38 = v12;
      v43 = v19;
      while (v20 < v15)
      {
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14 + v22, v12, v23, v24);
        v26 = v23;
        v27 = *v12;
        v28 = v24;
        v29 = v26;
        v30 = v28;
        outlined destroy of PerspectiveCameraComponent?(v12, v26, v28);
        if (v27 == a3)
        {
          v23 = v29;
          v24 = v30;
          v25 = v43;
        }

        else
        {
          if (v20 == v17)
          {
            v23 = v29;
            v24 = v30;
            v25 = v43;
          }

          else
          {
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v31 = a3;
            v32 = *v16;
            if (v17 >= *v16)
            {
              goto LABEL_28;
            }

            v33 = v17 * v43;
            v23 = v29;
            v34 = v29;
            v24 = v30;
            outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14 + v39 + v17 * v43, v41, v34, v30);
            if (v20 >= v32)
            {
              goto LABEL_29;
            }

            outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14 + v22, v40, v23, v30);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v42 + 32) = v14;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
              *(v42 + 32) = v14;
            }

            a3 = v31;
            v25 = v43;
            outlined assign with take of Cancellable?(v40, v14 + v39 + v33, v23, v24);
            v36 = v42;
            *(v42 + 32) = v14;
            v12 = v38;
            if (v20 >= v14[2])
            {
              goto LABEL_30;
            }

            outlined assign with take of Cancellable?(v41, v14 + v22, v23, v24);
            *(v36 + 32) = v14;
          }

          ++v17;
        }

        ++v20;
        v16 = v14 + 2;
        v15 = v14[2];
        v22 += v25;
        if (v20 == v15)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

void CoveragePointRenderer.initRenderPipeline()()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device);
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v44[0] = 0;
  v2 = [v1 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v44];
  if (!v2)
  {
    v34 = v44[0];
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error(v36, v37, v38);
    swift_allocError();
    swift_willThrow();
    return;
  }

  v3 = v2;
  v4 = v44[0];
  v5 = MEMORY[0x23EEAF480](0xD00000000000002BLL, 0x800000023B926BB0);
  v6 = [v3 newFunctionWithName_];

  v7 = MEMORY[0x23EEAF480](0xD00000000000002ELL, 0x800000023B9254D0);
  v8 = [v3 newFunctionWithName_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v9 setAlphaToCoverageEnabled_];
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_21;
  }

  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v11 setPixelFormat_];

  v13 = [v9 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v14 setBlendingEnabled_];

  v15 = [v9 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v16 setRgbBlendOperation_];

  v17 = [v9 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v18 setAlphaBlendOperation_];

  v19 = [v9 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v20 setSourceRGBBlendFactor_];

  v21 = [v9 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v22 setSourceAlphaBlendFactor_];

  v23 = [v9 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v24 setDestinationRGBBlendFactor_];

  v25 = [v9 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
LABEL_28:
    __break(1u);
    return;
  }

  [v26 setDestinationAlphaBlendFactor_];

  [v9 setDepthAttachmentPixelFormat_];
  v44[0] = 0;
  v27 = [v1 newRenderPipelineStateWithDescriptor:v9 error:v44];
  v28 = v44[0];
  if (v27)
  {
    *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderPipelineState) = v27;
    v29 = v28;
    swift_unknownObjectRelease();
    v30 = [v1 newCommandQueue];
    if (v30)
    {
      v33 = v30;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue) = v33;
      swift_unknownObjectRelease();
      return;
    }

    lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error(0, v31, v32);
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v39 = v44[0];
    v40 = _convertNSErrorToError(_:)();

    v41 = swift_willThrow();
    lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error(v41, v42, v43);
    swift_allocError();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id CoveragePointRenderer.createUniforms(coveragePointCloud:)(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device) newBufferWithLength:880 options:0];
  if (!result)
  {
    goto LABEL_20;
  }

  v4 = result;
  v5 = [swift_unknownObjectRetain() contents];
  v6 = v4;
  v7 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v100.i64[0] = v90;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v90 - v12;
  v99.i64[0] = a1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v90 - v12, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  result = (*(v8 + 48))(v13, 1, v7);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  (*(v8 + 32))(v10, v13, v7);
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v14 = dispatch thunk of OCDataBuffer.count.getter();

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v14))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v96.i64[0] = v8;
  v97.i64[0] = v7;
  v98.i64[0] = v4;
  *(v5 + 135) = v14;
  v15 = *(v101.i64[0] + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize);
  *(v5 + 137) = v15 * 0.01;
  v95.i64[0] = v10;
  ObjectCaptureSession.Frame.PointCloud.transform.getter();
  *v5 = v16;
  *(v5 + 1) = v17;
  *(v5 + 2) = v18;
  *(v5 + 3) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v90 - v22;
  v24 = *(type metadata accessor for CoveragePointCloud(0) + 20);
  v25 = v99.i64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v99.i64[0] + v24, v23, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v26 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v23, 1, v26) == 1)
  {
    v29 = outlined destroy of PerspectiveCameraComponent?(v23, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v30 = *(MEMORY[0x277D860B8] + 16);
    v94 = *MEMORY[0x277D860B8];
    v93 = v30;
    v31 = *(MEMORY[0x277D860B8] + 48);
    v92 = *(MEMORY[0x277D860B8] + 32);
    v91 = v31;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v94 = v32;
    v93 = v33;
    v92 = v34;
    v91 = v35;
    v29 = (*(v27 + 8))(v23, v26);
  }

  MEMORY[0x28223BE20](v29);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v25 + v24, v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v28(v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v26) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v90[3] = v36;
    v90[2] = v37;
    v90[1] = v38;
    v90[0] = v39;
    (*(v27 + 8))(v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  }

  v40 = v98.i64[0];
  v41 = v97.i64[0];
  v42 = v96.i64[0];
  v43 = v95.i64[0];
  Transform.init(matrix:)();
  v100 = v44;
  v98 = v45;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v47.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v98, v100, v46);
  v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v47.f32[0]), v93, *v47.f32, 1), v92, v47, 2), v91, v47, 3);
  v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v49.f32[0]), v93, *v49.f32, 1), v92, v49, 2), v91, v49, 3);
  v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v51.f32[0]), v93, *v51.f32, 1), v92, v51, 2), v91, v51, 3);
  v54 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v53.f32[0]), v93, *v53.f32, 1), v92, v53, 2), v91, v53, 3);
  *(v5 + 8) = v48;
  *(v5 + 9) = v50;
  *(v5 + 10) = v52;
  *(v5 + 11) = v54;
  v55 = v101.i64[0];
  v56 = (v101.i64[0] + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld);
  *(v5 + 3) = __invert_f4(*(v101.i64[0] + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld));
  v57 = v56[1];
  v58 = v56[2];
  v59 = v56[3];
  *(v5 + 16) = *v56;
  *(v5 + 17) = v57;
  *(v5 + 18) = v58;
  *(v5 + 19) = v59;
  v60 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 16);
  v61 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 32);
  v62 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 48);
  *(v5 + 20) = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection);
  *(v5 + 21) = v60;
  *(v5 + 22) = v61;
  *(v5 + 23) = v62;
  CoveragePointRenderer.computeOffsetDeltaViewTransform()();
  *(v5 + 24) = v63;
  *(v5 + 25) = v64;
  *(v5 + 26) = v65;
  *(v5 + 27) = v66;
  *(v5 + 56) = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector);
  *(v5 + 114) = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness);
  v5[552] = 0;
  if (CoveragePointCloud.isValid()())
  {
    *v67.i64 = CoveragePointCloud.bboxWorld.getter();
    v71 = 0;
    v104[0].i8[0] = 0;
  }

  else
  {
    v71 = 1;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
  }

  v100 = v68;
  v101 = v67;
  v104[0] = v67;
  v104[1] = v68;
  v98 = v70;
  v99 = v69;
  v104[2] = v69;
  v104[3] = v70;
  v105 = v71;
  v72 = specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(v104);
  v72.n128_u32[2] = v73;
  *(v5 + 35) = v72;
  *(v5 + 144) = v74;
  if (v71)
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
  }

  else
  {
    *v83.i64 = Transform.init(matrix:)();
    v96 = v84;
    v95 = v85;
    v84.f32[0] = vmuls_lane_f32(0.5, v83, 2);
    v85.i64[0] = 0x3F0000003F000000;
    v85.i64[1] = 0x3F0000003F000000;
    v83.i64[0] = vmulq_f32(v83, v85).u64[0];
    v83.i64[1] = v84.u32[0];
    v86 = vrecpeq_f32(v83);
    v87 = vmulq_f32(v86, vrecpsq_f32(v83, v86));
    v97 = vmulq_f32(v87, vrecpsq_f32(v83, v87));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointRenderer.createUniforms(coveragePointCloud:));
    *v106.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v95, v96, v88);
    v107 = __invert_f4(v106);
    v96 = v107.columns[0];
    v95 = v107.columns[1];
    v94 = v107.columns[2];
    v93 = v107.columns[3];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CoveragePointRenderer.createUniforms(coveragePointCloud:));
    v81 = v93;
    v80 = v94;
    v79 = v95;
    v82 = v97;
    v78 = v96;
    v77 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, *&v89), v100, *&v89, 1), v99, v89, 2), v98, v89, 3).i32[1];
    v76 = 0x400000003FC00000;
    v75 = 1;
  }

  v103 = 0;
  v102 = 0;
  *(v5 + 37) = v78;
  *(v5 + 38) = v79;
  *(v5 + 39) = v80;
  *(v5 + 40) = v81;
  *(v5 + 41) = v82;
  *(v5 + 84) = v76;
  v5[680] = v75;
  v5[683] = 0;
  *(v5 + 681) = 0;
  *(v5 + 171) = v77;
  *(v5 + 344) = 1;
  (*(v42 + 8))(v43, v41);
  return v40;
}

uint64_t CoveragePointRenderer.computeOffsetDeltaViewTransform()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for CoveragePointCloud(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v9, v4, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of PerspectiveCameraComponent?(v4, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  }

  outlined init with take of CoveragePointCloud(v4, v8);
  CoveragePointCloud.bboxWorld.getter();
  *v11.i64 = Transform.init(matrix:)();
  v12 = vmulq_f32(v11, v11);
  v13 = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  Transform.init()();
  v26 = v15;
  v27 = v14;
  v14.n128_f32[0] = v13 * -0.5;
  v25 = v14;
  v16 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  v18.i32[0] = v25.i32[0];
  v18.f32[1] = -(v13 * -0.5);
  *(inited + 32) = vmul_f32(v16, v18);
  *(inited + 40) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v25 = v19;
  swift_setDeallocating();
  v20.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v25, v26, v27);
  v26 = v21;
  v27 = v20;
  v24 = v23;
  v25 = v22;
  return outlined destroy of CoveragePointCloud(v8, type metadata accessor for CoveragePointCloud);
}

id CoveragePointRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoveragePointRenderer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for CoveragePointRenderer(uint64_t a1)
{
  type metadata accessor for Published<UIInterfaceOrientation>(319, &lazy cache variable for type metadata for Published<UIInterfaceOrientation>, type metadata accessor for UIInterfaceOrientation, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<UIInterfaceOrientation>(319, &lazy cache variable for type metadata for CoveragePointCloud?, type metadata accessor for CoveragePointCloud, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CoveragePointRenderer.ResourceEntry(uint64_t a1)
{
  type metadata accessor for MTLBuffer?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<UIInterfaceOrientation>(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217610], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for MTLBuffer?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MTLBuffer?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo9MTLBuffer_pMd, &_sSo9MTLBuffer_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MTLBuffer?);
    }
  }
}

void type metadata accessor for Published<UIInterfaceOrientation>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CoveragePointRenderer@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CoveragePointRenderer(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t outlined init with take of CoveragePointCloud(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoveragePointCloud(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for CoveragePointRenderer.interfaceOrientation : CoveragePointRenderer@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for CoveragePointRenderer.interfaceOrientation : CoveragePointRenderer(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error;
  if (!lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error;
  if (!lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error);
  }

  return result;
}

uint64_t outlined destroy of CoveragePointCloud(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized CoveragePointCloudMiniView.init(model:renderer:)(void *a1@<X1>, void *a2@<X8>)
{
  v27 = a1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 orientation];

  v28 = v12;
  type metadata accessor for UIDeviceOrientation(0);
  State.init(wrappedValue:)();
  v25 = v30;
  v26 = v29;
  v13 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  Publisher<>.makeConnectable()();
  (*(v4 + 8))(v6, v3);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.MakeConnectable<NSNotificationCenter.Publisher> and conformance Publishers.MakeConnectable<A>, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR, MEMORY[0x277CBCBB8]);
  v14 = ConnectablePublisher.autoconnect()();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);

  v15 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  type metadata accessor for CoveragePointRenderer(0);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type CoveragePointRenderer and conformance CoveragePointRenderer, type metadata accessor for CoveragePointRenderer, &protocol conformance descriptor for CoveragePointRenderer);
  v18 = v27;
  v19 = ObservedObject.init(wrappedValue:)();
  v21 = v20;
  v22 = *&v18[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_id];

  *a2 = v22;
  a2[1] = v23;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v21;
  v24 = v25;
  a2[6] = v26;
  a2[7] = v24;
  a2[8] = v14;
}

uint64_t outlined init with copy of CoveragePointCloud(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoveragePointCloud(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for MTKView()
{
  result = lazy cache variable for type metadata for MTKView;
  if (!lazy cache variable for type metadata for MTKView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MTKView);
  }

  return result;
}

double _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOi0_(uint64_t a1)
{
  result = 0.0;
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
  *(a1 + 288) = 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMR, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper);
  }

  return result;
}

Swift::Void __swiftcall BaseRenderer.updateDepthAttachmentTexture(width:height:)(Swift::Int width, Swift::Int height)
{
  v3 = v2;
  v6 = *(v2 + 32);
  if (v6 && [v6 width] == width)
  {
    v7 = *(v2 + 32);
    if (!v7)
    {
      __break(1u);
      return;
    }

    if ([v7 height] == height)
    {
      return;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349312;
    *(v11 + 4) = width;
    *(v11 + 12) = 2050;
    *(v11 + 14) = height;
    _os_log_impl(&dword_23B824000, v9, v10, "Creating depth attachment texture w=%{public}ld h=%{public}ld", v11, 0x16u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  *(v3 + 32) = BaseRenderer.makeDepthAttachmentTexture(width:height:)(width, height);

  swift_unknownObjectRelease();
}

id BaseRenderer.makeDepthAttachmentTexture(width:height:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v5 setTextureType_];
  [v5 setPixelFormat_];
  [v5 setWidth_];
  [v5 setHeight_];
  [v5 setUsage_];
  [v5 setStorageMode_];
  v6 = [*(v2 + 16) newTextureWithDescriptor_];
  if (v6)
  {
    v7 = MEMORY[0x23EEAF480](0xD00000000000002BLL, 0x800000023B926C70);
    [v6 setLabel_];
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "can't make depthAttachment texture", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    lazy protocol witness table accessor for type BaseRenderer.Error and conformance BaseRenderer.Error(v12, v13, v14);
    swift_allocError();
    swift_willThrow();
  }

  return v6;
}

uint64_t BaseRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void specialized BaseRenderer.init(device:width:height:)(void *a1, Swift::Int a2, Swift::Int a3)
{
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CD6D60]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  [v8 setDepthCompareFunction_];
  [v8 setDepthWriteEnabled_];
  v9 = [a1 newDepthStencilStateWithDescriptor_];

  if (v9)
  {
    v3[3] = v9;
    swift_unknownObjectRelease();
    BaseRenderer.updateDepthAttachmentTexture(width:height:)(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type BaseRenderer.Error and conformance BaseRenderer.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error;
  if (!lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error;
  if (!lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error);
  }

  return result;
}

BOOL _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudV_s5NeverOytTg5033_s19_RealityKit_SwiftUI18Coverageij26V7updated05pointG04poseAC6c4OC20efg2C5H27V0fG0VSg_AK0M0VSgtFyAMXEfU_01_mn1_O2UI0qiJ0VTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v16 - v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v7 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v9;
  if (v9 != 1)
  {
    MEMORY[0x28223BE20](v9);
    v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v12, v6, v7);
    ObjectCaptureSession.Frame.PointCloud.points.getter();
    v13 = dispatch thunk of OCDataBuffer.count.getter();

    if (v13 >= 1)
    {
      ObjectCaptureSession.Frame.PointCloud.points.getter();
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v14 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

      if (v14)
      {
        swift_unknownObjectRelease();
        outlined destroy of PerspectiveCameraComponent?(a2, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
        (*(v8 + 16))(a2, v12, v7);
        (*(v8 + 56))(a2, 0, 1, v7);
      }
    }

    (*(v8 + 8))(v12, v7);
  }

  return v10 == 1;
}

BOOL _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV0E0V_s5NeverOytTg5069_s19_RealityKit_SwiftUI18CoveragePointCloudV7updated05pointG04poseAC6c4OC20efg2C5H28V0fG0VSg_AK0M0VSgtFyAPXEfU0_01_kl1_M2UI0opQ0VTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v26 - v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v7 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v9;
  if (v9 != 1)
  {
    MEMORY[0x28223BE20](v9);
    v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v12, v6, v7);
    ObjectCaptureSession.Frame.Object.transform.getter();
    v14 = vextq_s8(v13, v13, 8uLL);
    v16 = vextq_s8(v15, v15, 0xCuLL);
    v17 = vextq_s8(v13, v13, 0xCuLL);
    v18 = vextq_s8(v15, v15, 8uLL);
    v20 = vextq_s8(v15, v15, 4uLL);
    v21 = vextq_s8(v13, v13, 4uLL);
    v23 = vmulq_f32(v22, vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(v19, v19, 8uLL), vmlaq_f32(vmulq_f32(v16, vnegq_f32(v21)), v20, v17)), vmlaq_f32(vmulq_f32(v18, vnegq_f32(v17)), v16, v14), vextq_s8(v19, v19, 4uLL)), vmlaq_f32(vmulq_f32(v20, vnegq_f32(v14)), v18, v21), vextq_s8(v19, v19, 0xCuLL)));
    v19.i64[0] = vextq_s8(v23, v23, 8uLL).u64[0];
    if (fabsf(vaddv_f32(vsub_f32(vzip1_s32(*v23.i8, *v19.i8), vzip2_s32(*v23.i8, *v19.i8)))) > 0.001)
    {
      v24 = *(type metadata accessor for CoveragePointCloud(0) + 20);
      outlined destroy of PerspectiveCameraComponent?(a2 + v24, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      (*(v8 + 16))(a2 + v24, v12, v7);
      (*(v8 + 56))(a2 + v24, 0, 1, v7);
    }

    (*(v8 + 8))(v12, v7);
  }

  return v10 == 1;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

unint64_t DataModel.Error.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.Error(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DataModel.Error(v1, v4, type metadata accessor for DataModel.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v17 = *v4;
      v18 = v4[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v26 = 0xD000000000000017;
      v27 = 0x800000023B927860;
      MEMORY[0x23EEAF590](v17, v18);

      v12 = 34;
      v13 = 0xE100000000000000;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v4;
      v15 = v4[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v26 = 0xD000000000000011;
      v27 = 0x800000023B927800;
      MEMORY[0x23EEAF590](v14, v15);

      v12 = 32032;
      v13 = 0xE200000000000000;
      goto LABEL_11;
    }

    v19 = type metadata accessor for ObjectCaptureSession.Error();
    v20 = *(v19 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v20 + 32))(&v26 - v22, v4, v19);
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v26 = 0xD00000000000001BLL;
    v27 = 0x800000023B927840;
    MEMORY[0x28223BE20](v23);
    (*(v20 + 16))(&v26 - v22, &v26 - v22, v19);
    v24 = String.init<A>(describing:)();
    MEMORY[0x23EEAF590](v24);

    v25 = v26;
    (*(v20 + 8))(&v26 - v22, v19);
    return v25;
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD00000000000003ELL;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v6 = *v4;
      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x23EEAF590](0xD00000000000002BLL, 0x800000023B927790);
      v7 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v8 = [v7 stringFromByteCount_];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      MEMORY[0x23EEAF590](v9, v11);

      v12 = 0x7473206565726620;
      v13 = 0xEE002E656761726FLL;
LABEL_11:
      MEMORY[0x23EEAF590](v12, v13);
      return v26;
    }

    return 0x64696C61766E692ELL;
  }
}

uint64_t DataModel.State.init(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ObjectCaptureSession.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  (v8)(v7, a1, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (MEMORY[0x277D00478] && v9 == *MEMORY[0x277D00478])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v10 = type metadata accessor for ObjectCaptureSession.Error();
    (*(*(v10 - 8) + 32))(a2, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v11 = type metadata accessor for DataModel.Error(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a2, 0, 8, v11);
  }

  if (MEMORY[0x277D00468] && v9 == *MEMORY[0x277D00468])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 1;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00488] && v9 == *MEMORY[0x277D00488])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 2;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00470] && v9 == *MEMORY[0x277D00470])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 4;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00480] && v9 == *MEMORY[0x277D00480])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 3;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D004A0] && v9 == *MEMORY[0x277D004A0])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 5;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00490] && v9 == *MEMORY[0x277D00490])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 6;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D004A8] && v9 == *MEMORY[0x277D004A8] || MEMORY[0x277D00498] && v9 == *MEMORY[0x277D00498])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 7;
    return v14(v15, v16, 8, v13);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v17, logger);
  v40 = &v31;
  MEMORY[0x28223BE20](v38);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v20;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v20 = 136315138;
    v21 = v39;
    v22 = descriptionString(for:)(v39);
    v32 = v23;
    v33 = v22;
    v35 = v19;
    v24 = *(v5 + 8);
    v34 = v18;
    v38 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v21, v4);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v41);

    v26 = v37;
    *(v37 + 1) = v25;
    v27 = v34;
    _os_log_impl(&dword_23B824000, v34, v35, "Unknown state: %s", v26, 0xCu);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x23EEB0B70](v28, -1, -1);
    MEMORY[0x23EEB0B70](v37, -1, -1);

    v29 = a1;
  }

  else
  {

    v24 = *(v5 + 8);
    v38 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(a1, v4);
    v29 = v39;
  }

  v24(v29, v4);
  v30 = type metadata accessor for DataModel.Error(0);
  (*(*(v30 - 8) + 56))(a2, 6, 8, v30);
  return (v24)(v7, v4);
}

uint64_t DataModel.state.getter@<X0>(void *a3@<X8>)
{
  return DataModel.state.getter(a3);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);
}

void DataModel.captureMode.didset()
{
  v1 = v0;
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for UUID();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v3;
    v34 = v6;
    v32 = v2;
    v18 = v17;
    v19 = v8;
    v20 = swift_slowAlloc();
    v41 = v20;
    *v18 = 136315138;
    v40 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_23B824000, v15, v16, "Switching capture mode into: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v24 = v20;
    v8 = v19;
    MEMORY[0x23EEB0B70](v24, -1, -1);
    v25 = v18;
    v2 = v32;
    v3 = v33;
    v6 = v34;
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  v26 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode;
  v28 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  v29 = v26;
  if (v28 == 2)
  {
    if ((dispatch thunk of ObjectCaptureSession.isFreeformModeEnabled.getter() & 1) == 0)
    {
LABEL_15:

      __break(1u);
      return;
    }

    if (*(v1 + v27) == 2)
    {

      goto LABEL_11;
    }
  }

  v30 = dispatch thunk of ObjectCaptureSession.isFreeformModeEnabled.getter();

  if (v30)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    type metadata accessor for AnalyticsManager();
    static AnalyticsManager.shared.getter();
    (*(v35 + 16))(v37, v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v36);
    (*(v3 + 104))(v6, **(&unk_278B8A048 + *(v1 + v31)), v2);
    (*(v3 + 32))(v8, v6, v2);
    AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.init(sessionID:captureMode:)();
    dispatch thunk of AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:)();

    (*(v38 + 8))(v13, v39);
  }
}

double DataModel.miniViewScreenRotationAngle.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

float DataModel.cameraIso.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return *&v1;
}

uint64_t DataModel.coveragePointRenderer.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

void DataModel.shouldPlayHaptics.didset()
{
  v1 = v0;
  v2 = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  if ((v2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((&v13 + 2));

    if (BYTE2(v13) == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, logger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, v4, v5, "shouldPlayHaptics cannot be set to true on a device not supporting haptics.  Haptics will not be played.", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
      DataModel.shouldPlayHaptics.didset();
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v13);

    *(v10 + 4) = v13;

    _os_log_impl(&dword_23B824000, v8, v9, "Set shouldPlayHaptics to %{BOOL}d.", v10, 8u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_hapticManager);
  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((&v13 + 1));

    v12 = *(v11 + 16);
    *(v11 + 16) = BYTE1(v13);
    HapticManager.enabled.didset(v12);
  }
}

uint64_t protocol witness for DetectBoxDelegate.isManualMode(_:) in conformance DataModel.LocalDetectBoxDelegate(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for DetectBoxDelegate.didRaycastManualBox() in conformance DataModel.LocalDetectBoxDelegate()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

void *DataModel.init()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.CameraMode();
  v199 = *(v2 - 8);
  v200 = v2;
  MEMORY[0x28223BE20](v2);
  v201 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v196 = *(v4 - 8);
  v197 = v4;
  MEMORY[0x28223BE20](v4);
  v195 = &v161 - v5;
  v194 = type metadata accessor for CoveragePointCloud(0);
  v6 = MEMORY[0x28223BE20](v194);
  v193 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v192 = &v161 - v8;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys5SIMD2VySfGGMd, &_s7Combine9PublishedVys5SIMD2VySfGGMR);
  v190 = *(v191 - 1);
  MEMORY[0x28223BE20](v191);
  v189 = &v161 - v9;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v161 - v10;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v161 - v11;
  v182 = type metadata accessor for UUID();
  v181 = *(v182 - 8);
  v12 = MEMORY[0x28223BE20](v182);
  v180 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v179 = &v161 - v14;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMR);
  v172 = *(v178 - 1);
  MEMORY[0x28223BE20](v178);
  v171 = &v161 - v15;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMR);
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v161 - v16;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v161 - v17;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI5AngleVGMd, &_s7Combine9PublishedVy7SwiftUI5AngleVGMR);
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = &v161 - v18;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v19 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v21 = &v161 - v20;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  v22 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v24 = &v161 - v23;
  v25 = type metadata accessor for DataModel.State(0);
  v176 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v161 - v29;
  v1[2] = 0;
  v198 = (v1 + 2);
  v1[3] = 0;
  v1[4] = 0;
  v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__state;
  v32 = type metadata accessor for DataModel.Error(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v175 = v32;
  v174 = v34;
  v173 = v33 + 56;
  (v34)(v30, 1, 8);
  outlined init with copy of DataModel.Error(v30, v28, type metadata accessor for DataModel.State);
  v177 = v25;
  Published.init(initialValue:)();
  outlined destroy of DataModel.Error(v30, type metadata accessor for DataModel.State);
  (*(v22 + 32))(v1 + v31, v24, v161);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 0;
  v35 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showMiniView;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v36 = *(v19 + 32);
  v37 = v202;
  v36(v1 + v35, v21, v202);
  v38 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__miniViewScreenRotationAngle;
  v205 = 0;
  v39 = v162;
  Published.init(initialValue:)();
  (*(v163 + 32))(v1 + v38, v39, v164);
  v40 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showCenterReticle;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v36(v1 + v40, v21, v37);
  v41 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userSelectedToHideObjectReticle;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v36(v1 + v41, v21, v37);
  v42 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__cameraIso;
  LODWORD(v205) = 0;
  v43 = v165;
  Published.init(initialValue:)();
  (*(v166 + 32))(v1 + v42, v43, v167);
  v44 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  *v44 = 0;
  v44[1] = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldDebugDraw) = 0;
  v45 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__debuggingMode;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v36(v1 + v45, v21, v37);
  v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__manualBoxMode;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v36(v1 + v46, v21, v37);
  v47 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__raycastManualBox;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v36(v1 + v47, v21, v37);
  v48 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_depthHazeStartPercent;
  *(v1 + v48) = specialized static ExperimentSettings.loadDepthHazeStartPercent(default:)(0.25);
  v49 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__coveragePointRenderer;
  v205 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMd, &_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMR);
  v50 = v168;
  Published.init(initialValue:)();
  (*(v169 + 32))(v1 + v49, v50, v170);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer) = 0;
  v51 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__freeformCloudRenderer;
  v205 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMd, &_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMR);
  v52 = v171;
  Published.init(initialValue:)();
  (*(v172 + 32))(v1 + v51, v52, v178);
  v53 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager;
  *(v1 + v53) = [objc_allocWithZone(type metadata accessor for CameraPathManager()) init];
  v54 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldPlayHaptics;
  LOBYTE(v52) = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  LOBYTE(v205) = v52;
  Published.init(initialValue:)();
  v36(v1 + v54, v21, v37);
  v55 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__isBoundingBoxAnimationPlaying;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v178 = v36;
  v36(v1 + v55, v21, v37);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localDetectBoxCallbacks) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_startDetectingReticleDelay) = 0x3FC999999999999ALL;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel) = 0;
  v56 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform;
  v206 = 1;
  *v56 = 0u;
  *(v56 + 1) = 0u;
  *(v56 + 2) = 0u;
  *(v56 + 3) = 0u;
  v56[64] = 1;
  v57 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice;
  *(v1 + v57) = MTLCreateSystemDefaultDevice();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor) = 0;
  v58 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription;
  *v58 = 0u;
  *(v58 + 1) = 0u;
  *(v58 + 4) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSessionSubscriptions) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession) = 0;
  v59 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  *(v1 + v59) = static SoundManager.instance;
  v60 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_hapticManager;
  v61 = one-time initialization token for instance;

  if (v61 != -1)
  {
    swift_once();
  }

  *(v1 + v60) = static HapticManager.instance;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator) = 0;
  v62 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
  v63 = type metadata accessor for URL();
  (*(*(v63 - 8) + 56))(v1 + v62, 1, 1, v63);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isInternalSessionCompleted) = 0;
  v174(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState, 1, 8, v175);
  (*(v176 + 56))(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause, 1, 1, v177);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable) = 2;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastShotTime) = 0xFFF0000000000000;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_binFillAnimationDurationSecs) = 1048576000;
  v64 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__id;

  v65 = v179;
  UUID.init()();
  v66 = v181;
  v67 = v182;
  (*(v181 + 16))(v180, v65, v182);
  v68 = v183;
  Published.init(initialValue:)();
  (*(v66 + 8))(v65, v67);
  (*(v184 + 32))(v1 + v64, v68, v185);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tornDown) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isRunning) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_currentSegmentID) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle) = 0;
  v69 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_manualShotRefractoryTimer;
  type metadata accessor for ManualTimer();
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23B91F760;
  *(v1 + v69) = v70;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) = 1;
  UUID.init()();
  v71 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__canTakeManualShot;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v72 = v178;
  v178(v1 + v71, v21, v37);
  v73 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTaken;
  v205 = 0;
  v74 = v186;
  Published.init(initialValue:)();
  v75 = *(v187 + 32);
  v76 = v188;
  v75(v1 + v73, v74, v188);
  v77 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTakenThisSegment;
  v205 = 0;
  Published.init(initialValue:)();
  v75(v1 + v77, v74, v76);
  v78 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userCompletedOrbit;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v79 = v202;
  v72(v1 + v78, v21, v202);
  v80 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__triggerShakeReticle;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v81 = v79;
  v72(v1 + v80, v21, v79);
  v82 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__reticleAimVector;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.init());
  v205 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  v84 = v189;
  Published.init(initialValue:)();
  (v190[4])(v1 + v82, v84, v191);
  v85 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldShowARKitCoachingView;
  LOBYTE(v205) = 0;
  Published.init(initialValue:)();
  v72(v1 + v85, v21, v81);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_maxUnsuccessfulDetects) = 2;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_enableOverCaptureWhenInternalSessionCreated) = 0;
  v86 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_userFeedbackSystem;
  type metadata accessor for UserFeedbackSystem();
  v87 = swift_allocObject();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of UserFeedbackSystem.init());
  *(v87 + 16) = v88;
  *(v87 + 24) = 953267991;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of UserFeedbackSystem.init());
  *(v87 + 32) = v89;
  *(v87 + 48) = 0;
  *(v87 + 56) = 0;
  *(v87 + 40) = 0;
  *(v87 + 64) = xmmword_23B91F770;
  *(v1 + v86) = v87;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_minSpeedGoodness) = 1050253722;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID) = -1;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator) = 0;
  v90 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume;
  *(v1 + v90) = specialized static ExperimentSettings.loadFreeformDynamicScanVolumeEnabled(default:)(1u) & 1;
  v91 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_freeformPointDensityThreshold;
  *(v1 + v91) = specialized static ExperimentSettings.loadFreeformPointDensityThreshold(default:)(80);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sphereSplatRange) = 0x400000003E800000;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateDynamicVolumePeriod) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastDynamicVolumeUpdateTime) = 0;
  v202 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v191 = &v161;
  MEMORY[0x28223BE20](v92 - 8);
  v94 = &v161 - v93;
  v95 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v96 = *(*(v95 - 8) + 56);
  v96(v94, 1, 1, v95);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v190 = &v161;
  MEMORY[0x28223BE20](v97 - 8);
  v99 = &v161 - v98;
  v100 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v101 = *(*(v100 - 8) + 56);
  v101(v99, 1, 1, v100);
  v102 = v192;
  v96(v192, 1, 1, v95);
  v103 = *(v194 + 20);
  v101((v102 + v103), 1, 1, v100);
  outlined assign with take of Cancellable?(v94, v102, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined assign with take of Cancellable?(v99, v102 + v103, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  outlined init with copy of DataModel.Error(v102, v193, type metadata accessor for CoveragePointCloud);
  v104 = v195;
  Atomic.init(wrappedValue:)();
  outlined destroy of DataModel.Error(v102, type metadata accessor for CoveragePointCloud);
  (*(v196 + 32))(v1 + v202, v104, v197);
  v105 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sphericalPulseDuration;
  *(v1 + v105) = specialized static PlatterRenderer.shotPulseDuration.getter();
  v106 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback;
  v107 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v107 - 8) + 56))(v1 + v106, 1, 1, v107);
  v108 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastFeedback;
  v109 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  (*(*(v109 - 8) + 56))(v1 + v108, 1, 1, v109);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_showMiniViewTransitionDurationSecs) = 0x3FE0000000000000;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture) = 0;
  v110 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription;
  *v110 = 0u;
  *(v110 + 1) = 0u;
  *(v110 + 4) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel____lazy_storage___arViewResolution) = 5;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, logger);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_23B824000, v112, v113, "DataModel.init()...", v114, 2u);
    MEMORY[0x23EEB0B70](v114, -1, -1);
  }

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&dword_23B824000, v115, v116, "Making PostProcessRenderManager...", v117, 2u);
    MEMORY[0x23EEB0B70](v117, -1, -1);
  }

  v118 = v198;
  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice))
  {
    goto LABEL_32;
  }

  type metadata accessor for PostProcessRenderManager(0);
  swift_allocObject();
  v119 = swift_unknownObjectRetain();
  v120 = PostProcessRenderManager.init(device:)(v119);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer) = v120;

  if (!v120)
  {
    goto LABEL_32;
  }

  v121 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
  type metadata accessor for CameraFrustumRendererForShots();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots) = specialized CameraFrustumRendererForShots.init(cameraPathManager:)(v121);
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&dword_23B824000, v122, v123, "DataModel.init(): Making the arView...", v124, 2u);
    MEMORY[0x23EEB0B70](v124, -1, -1);
  }

  (*(v199 + 104))(v201, *MEMORY[0x277CDB590], v200);
  v125 = objc_allocWithZone(type metadata accessor for ARView());
  v126 = ARView.init(frame:cameraMode:automaticallyConfigureSession:)();
  v127 = *v118;
  *v118 = v126;

  if (*v118)
  {
    v128 = *v118;
    specialized DataModel.setCustomRenderOptions(on:)();

    if (*v118)
    {
      v129 = *v118;
      dispatch thunk of ARView.__disableCounterRotation.setter();

      v130 = type metadata accessor for DataModel.LocalARCoachingViewDelegate();
      v131 = objc_allocWithZone(v130);
      swift_weakInit();
      v204.receiver = v131;
      v204.super_class = v130;

      v132 = objc_msgSendSuper2(&v204, sel_init);
      swift_weakAssign();
      v133 = v1[4];
      v1[4] = v132;

      v134 = [objc_allocWithZone(MEMORY[0x277CE53D0]) initWithFrame_];
      v135 = v1[3];
      v1[3] = v134;

      v136 = v1[3];
      if (v136)
      {
        v137 = *v118;
        if (*v118)
        {
          v138 = v136;
          v137 = [v137 session];
        }

        else
        {
          v138 = v136;
        }

        [v138 setSession_];

        v139 = v1[3];
        if (v139)
        {
          [v139 setActivatesAutomatically_];
          v140 = v1[3];
          if (v140)
          {
            [v140 setActive:1 animated:1];
            v141 = v1[3];
            if (v141)
            {
              [v141 setDelegate_];
            }
          }
        }
      }

      v142 = [objc_opt_self() currentDevice];
      v143 = [v142 userInterfaceIdiom];

      if (v143)
      {
        goto LABEL_28;
      }

      DataModel.setMTLPixelFormat(to:)(81);
      v144 = v1[2];
      if (v144)
      {
        v145 = v144;
        DataModel.arViewResolution.getter();
        specialized DataModel.computeFactorScale(arViewResolution:)();
        v147 = v146;
        v148 = [objc_opt_self() mainScreen];
        [v148 scale];
        v150 = v149;

        [v145 setContentScaleFactor_];
LABEL_28:
        v151 = type metadata accessor for DataModel.LocalDetectBoxDelegate();
        v152 = objc_allocWithZone(v151);
        swift_weakInit();
        swift_weakAssign();
        v203.receiver = v152;
        v203.super_class = v151;
        v153 = objc_msgSendSuper2(&v203, sel_init);

        v154 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localDetectBoxCallbacks);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localDetectBoxCallbacks) = v153;
        v155 = v153;

        type metadata accessor for DetectModeBoxModel();
        swift_allocObject();

        v157 = specialized DetectModeBoxModel.init(model:delegate:)(v156, v153, &protocol witness table for DataModel.LocalDetectBoxDelegate);

        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel) = v157;

        type metadata accessor for CaptureModeBoxModel();
        swift_allocObject();

        v159 = specialized CaptureModeBoxModel.init(model:)(v158);

        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel) = v159;

        swift_getKeyPath();
        swift_getKeyPath();
        v205 = 0;

        static Published.subscript.setter();
        return v1;
      }

      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id *DataModel.deinit()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "~~~ DataModel deinit was called!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showMiniView;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v10 = *(*(v9 - 8) + 8);
  v10(v1 + v8, v9);
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__miniViewScreenRotationAngle;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI5AngleVGMd, &_s7Combine9PublishedVy7SwiftUI5AngleVGMR);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showCenterReticle, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userSelectedToHideObjectReticle, v9);
  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__cameraIso;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback), *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback + 8));
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__debuggingMode, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__manualBoxMode, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__raycastManualBox, v9);
  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__coveragePointRenderer;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMR);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);

  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__freeformCloudRenderer;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMR);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);

  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldPlayHaptics, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__isBoundingBoxAnimationPlaying, v9);

  swift_unknownObjectRelease();

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  outlined destroy of DataModel.Error(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState, type metadata accessor for DataModel.State);
  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v19 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__id;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);

  v21 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID;
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__canTakeManualShot, v9);
  v23 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTaken;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v25 = *(*(v24 - 8) + 8);
  v25(v1 + v23, v24);
  v25(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTakenThisSegment, v24);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userCompletedOrbit, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__triggerShakeReticle, v9);
  v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__reticleAimVector;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys5SIMD2VySfGGMd, &_s7Combine9PublishedVys5SIMD2VySfGGMR);
  (*(*(v27 - 8) + 8))(v1 + v26, v27);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldShowARKitCoachingView, v9);

  v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  (*(*(v29 - 8) + 8))(v1 + v28, v29);
  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastFeedback, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v1;
}

uint64_t DataModel.__deallocating_deinit()
{
  DataModel.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for DataModel(uint64_t a1)
{
  type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for Published<DataModel.State>, type metadata accessor for DataModel.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Angle>, MEMORY[0x277CE0EC8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Float>, MEMORY[0x277D83A90]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<CoveragePointRenderer?>(319, &lazy cache variable for type metadata for Published<CoveragePointRenderer?>, &_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMd, &_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<CoveragePointRenderer?>(319, &lazy cache variable for type metadata for Published<FreeformCloudRenderer?>, &_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMd, &_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for DataModel.State(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for DataModel.State?, type metadata accessor for DataModel.State, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for Published<UUID>, MEMORY[0x277CC95F0], MEMORY[0x277CBCED0]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for UUID();
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Int>, MEMORY[0x277D83B88]);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for Published<CoveragePointRenderer?>(319, &lazy cache variable for type metadata for Published<SIMD2<Float>>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for Atomic<CoveragePointCloud>, type metadata accessor for CoveragePointCloud, MEMORY[0x277CDB568]);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for ARCamera.TrackingState?, MEMORY[0x277D82DB0], MEMORY[0x277D83D88]);
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.Feedback?, MEMORY[0x282217630], MEMORY[0x277D83D88]);
                                if (v16 <= 0x3F)
                                {
                                  swift_updateClassMetadata2();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t specialized OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMR);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for ARView.RenderOptions();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CDB620];
  v25 = lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v16;
  v18 = v28;
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, v17, MEMORY[0x277CDB628]);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v7, v29, &_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMR);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMR);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for ARView.Environment.SceneUnderstanding.Options();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CDB5C8];
  v25 = lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options, MEMORY[0x277CDB5C8], MEMORY[0x277CDB5D8]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v16;
  v18 = v28;
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options, v17, MEMORY[0x277CDB5D0]);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v7, v29, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMR);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

{
  v32 = a1;
  v4 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = v5;
  v9 = *(v5 + 16);
  v31 = v2;
  v28 = v9;
  v29 = v10;
  v9(v27 - v10, v2, v4);
  v11 = MEMORY[0x282217640];
  v27[1] = lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640], MEMORY[0x282217658]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, v11, MEMORY[0x282217650]);
  v30 = a2;
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMd, &_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = *(v15 + 48);
  *(v27 - v16) = (v12 & 1) == 0;
  if (v12)
  {
    v19 = (*(v33 + 32))(&v17[v18], v8, v4);
  }

  else
  {
    (*(v33 + 8))(v8, v4);
    v20 = &v17[v18];
    v21 = v30;
    v22 = v28;
    v23 = (v28)(v20, v30, v4);
    MEMORY[0x28223BE20](v23);
    v22(v27 - v29, v21, v4);
    v19 = dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  MEMORY[0x28223BE20](v19);
  v24 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v17, v24, &_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMd, &_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMR);
  v25 = *v24;
  (*(v33 + 32))(v32, &v24[*(v13 + 48)], v4);
  return v25;
}

void DataModel.setupInitialSession(imagesDirectory:configuration:)(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v55 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  MEMORY[0x28223BE20](v55);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v56 = v52 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v52 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v54 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)();
  if (v3)
  {
    return;
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v57, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)();
    (*(v16 + 8))(v18, v15);
  }

  v19 = v56;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v57, v56, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  specialized DataModel.throwIfInsufficientStorage(imagesDirectory:checkpointDirectory:)(a1, v19);
  v53 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23B824000, v22, v23, "Creating a new internal ObjectCaptureSession...", v24, 2u);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  v52[1] = v21;

  v25 = *(v53 + 16);
  if (!v25)
  {
    goto LABEL_30;
  }

  v26 = [v25 session];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v19, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v27 = type metadata accessor for ObjectCaptureSession.Configuration();
  MEMORY[0x28223BE20](v27 - 8);
  outlined init with copy of DataModel.Error(v57, v6, type metadata accessor for ObjectCaptureSession.Configuration);
  swift_unknownObjectRetain();
  ObjectCaptureSession.Configuration.init()();
  ObjectCaptureSession.Configuration.enableOverCapture.setter();
  outlined destroy of DataModel.Error(v6, type metadata accessor for ObjectCaptureSession.Configuration);
  v28 = objc_allocWithZone(type metadata accessor for ObjectCaptureSession());
  v29 = ObjectCaptureSession.init(arSession:mtlDevice:motionManager:snapshotURL:configuration:)();
  v57 = 0;
  v30 = v29;
  v31 = v53;
  specialized DataModel.captureSession.setter(v29);

  v32 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v59 = v36;
    *v35 = 141558274;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2080;
    v58 = *(v31 + v54);
    v37 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionCSgMd, &_s6CoreOC20ObjectCaptureSessionCSgMR);
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v59);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_23B824000, v33, v34, "... successfully made the internal ObjectCaptureSession: %{mask.hash}s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x23EEB0B70](v36, -1, -1);
    MEMORY[0x23EEB0B70](v35, -1, -1);
  }

  v41 = v56;
  if ((*(v31 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) & 1) == 0)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_23B824000, v42, v43, "Disabling auto-capture after creating the internal session!", v44, 2u);
      MEMORY[0x23EEB0B70](v44, -1, -1);
    }

    v32 = v53;
    DataModel.pauseAutoCapture()();
  }

  if (!*(v32 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer))
  {
    goto LABEL_26;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_23B824000, v45, v46, "Attaching PostProcessRenderManager to ARView...", v47, 2u);
    MEMORY[0x23EEB0B70](v47, -1, -1);
  }

  v48 = v57;
  DataModel.startFrameProcessor()();
  if (v48)
  {
    outlined destroy of PerspectiveCameraComponent?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    return;
  }

  v49 = *(v53 + 16);
  if (!v49)
  {
    goto LABEL_31;
  }

  v57 = 0;
  v50 = *(v53 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor);
  if (!v50)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v51 = v49;

  PostProcessRenderManager.attach(to:frameProcessor:)(v51, v50);

LABEL_26:
  DataModel.subscribeToUpdateEvents()();
  outlined destroy of PerspectiveCameraComponent?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t DataModel.invalidateSession(error:)(uint64_t a1)
{
  v2 = type metadata accessor for DataModel.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "Invalidate session was called...", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  outlined init with copy of DataModel.Error(a1, v7, type metadata accessor for DataModel.Error);
  v12 = type metadata accessor for DataModel.Error(0);
  (*(*(v12 - 8) + 56))(v7, 0, 8, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  DataModel.performStateTransition(from:to:)(v5, v7);
  outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
  return outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
}

Swift::Void __swiftcall DataModel.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Tearing down data model...", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tornDown;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tornDown))
  {
    v22 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23B824000, v22, v11, "Already torn down...  nothing to do.", v12, 2u);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }

    v13 = v22;

    return;
  }

  v14 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v14)
  {
    v15 = v14;
    dispatch thunk of ObjectCaptureSession.cancel()();
  }

  specialized DataModel.captureSession.setter(0);
  DataModel.stopFrameProcessor()();
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer))
  {

    PostProcessRenderManager.detach()();
  }

  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel))
  {
    goto LABEL_24;
  }

  CaptureModeBoxModel.disable()();

  v16 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
  if (!v16)
  {
LABEL_25:
    __break(1u);
    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v16 + 24), 0);
  *(v16 + 24) = 0;

  DataModel.unsubscribeFromUpdateEvents()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  v18 = v23;
  if (v23)
  {
    CoveragePointRenderer.teardown()();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  v19 = v23;
  if (v23)
  {
    FreeformCloudRenderer.teardown()();
  }

  DataModel.removeGestureRecognizer()();
  v20 = *(v1 + 16);
  *(v1 + 16) = 0;

  v21 = *(v1 + 24);
  *(v1 + 24) = 0;

  *(v1 + v10) = 1;
}

void DataModel.startSession(imagesURL:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession;
  if (*(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
  {
    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    *v13 = 0xD000000000000036;
    v13[1] = 0x800000023B927BE0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  DataModel.setupInitialSession(imagesDirectory:configuration:)(a1, a2);
  if (v3)
  {
    return;
  }

  if (!*(v4 + v12))
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_12:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_15:

        return;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "startSession: no session!";
LABEL_14:
      _os_log_impl(&dword_23B824000, v16, v17, v19, v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
      goto LABEL_15;
    }

LABEL_23:
    swift_once();
    goto LABEL_12;
  }

  v14 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isRunning;
  if (*(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isRunning))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "startSession: session already running!";
    goto LABEL_14;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23B824000, v22, v23, "Starting object capture session...", v24, 2u);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  DataModel.startSessionInternal(imagesURL:)(a1);
  *(v4 + v14) = 1;
}

void DataModel.resumeCaptureSession()()
{
  v1 = type metadata accessor for DataModel.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v4)
  {
    v5 = v4;
    dispatch thunk of ObjectCaptureSession.resume()();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);

  v14 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v3);

    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_23B824000, v14, v7, "Capture session resume() called with current state=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  else
  {
    v13 = v14;
  }
}

void DataModel.pauseCaptureSession()()
{
  v1 = type metadata accessor for DataModel.State(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v20[-1] - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  (*(v2 + 56))(v7, 0, 1, v1);
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v7, v0 + v8, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  swift_endAccess();
  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of ObjectCaptureSession.pause(fastResuming:)();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v4);

    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23B824000, v12, v13, "Capture session pause() called with stateBeforePause=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x23EEB0B70](v15, -1, -1);
    MEMORY[0x23EEB0B70](v14, -1, -1);
  }
}

Swift::Void __swiftcall DataModel.prepareForBackground()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v26 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23B824000, v26, v9, "prepareForBackground() called when already isBackgrounded = true.  Ignoring...", v10, 2u);
      MEMORY[0x23EEB0B70](v10, -1, -1);
    }

    v11 = v26;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) = 1;
    v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v12, v7, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v13 = type metadata accessor for DataModel.State(0);
    v26 = *(*(v13 - 8) + 48);
    v14 = (v26)(v7, 1, v13) == 1;
    outlined destroy of PerspectiveCameraComponent?(v7, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground;
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = v14;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = *(v1 + v15);

      _os_log_impl(&dword_23B824000, v17, v18, "Ensuring paused capture session since moving to background.  Resume when returning = %{BOOL}d...", v19, 8u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    else
    {
    }

    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v12, v5, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v20 = (v26)(v5, 1, v13);
    outlined destroy of PerspectiveCameraComponent?(v5, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    if (v20 == 1)
    {
      if (v23)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23B824000, v21, v22, "Session was running when moving to background, so pausing it...", v24, 2u);
        MEMORY[0x23EEB0B70](v24, -1, -1);
      }

      DataModel.pauseCaptureSession()();
    }

    else
    {
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23B824000, v21, v22, "Session was already paused when moving to background, so not pausing again.", v25, 2u);
        MEMORY[0x23EEB0B70](v25, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall DataModel.resumeFromBackground()()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_19;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "resumeFromBackground() called when !isBackgrounded!  Ignoring...";
    goto LABEL_18;
  }

  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) = 0;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v2, v3, "Resuming from background after suspending while running, so resuming the session in progress...", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    DataModel.resumeCaptureSession()();
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Resuming from background after suspending while paused, so remaining paused...";
LABEL_18:
    _os_log_impl(&dword_23B824000, oslog, v6, v8, v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

LABEL_19:
}

Swift::Void __swiftcall DataModel.requestResume()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v4, v3, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v5 = type metadata accessor for DataModel.State(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  outlined destroy of PerspectiveCameraComponent?(v3, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  if (v4 == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23B824000, v7, v8, "Resume requested when no pause active...  Ignoring resume request...", v9, 2u);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded))
  {
    v10 = v0;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v12, v13, "Resume requested when in the background...  Staying suspended but will resume when app becomes active again.", v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = 1;
  }

  else
  {
    DataModel.resumeCaptureSession()();
  }
}

Swift::Void __swiftcall DataModel.requestPause()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v4, v3, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v5 = type metadata accessor for DataModel.State(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  outlined destroy of PerspectiveCameraComponent?(v3, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  if (v4 == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded))
    {
      v6 = v0;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23B824000, v8, v9, "Pause requested when in the background...  Staying suspended but will remain paused when app becomes active again.", v10, 2u);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      *(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = 0;
    }

    else
    {
      DataModel.pauseCaptureSession()();
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v12, v13, "Pause requested when another request was already made.  Ignoring new pause request...", v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }
  }
}

Swift::Void __swiftcall DataModel.beginNextSegment()()
{
  v1 = type metadata accessor for DataModel.State(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  v4 = type metadata accessor for DataModel.Error(0);
  if ((*(*(v4 - 8) + 48))(v3, 8, v4) != 3)
  {
    outlined destroy of DataModel.Error(v3, type metadata accessor for DataModel.State);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Can't begin next segment, ignoring...";
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
  {
    DataModel.startNewSegment()();
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "No valid session!";
LABEL_12:
    _os_log_impl(&dword_23B824000, v6, v7, v9, v8, 2u);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

LABEL_13:
}

void DataModel.isAutoCaptureEnabled.didset()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v2, v3, "Enabling auto-capture!", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    DataModel.resumeAutoCapture()();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Disabling auto-capture!", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    DataModel.pauseAutoCapture()();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.beginNewOrbit()()
{
  v2 = v0;
  v3 = type metadata accessor for DataModel.State(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (v52 - v7);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "Beginning a new orbit...", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  if ((DataModel.inCapturingMetaState.getter() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v8);

    v13 = type metadata accessor for DataModel.Error(0);
    (*(*(v13 - 8) + 56))(v6, 1, 8, v13);
    v14 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
    outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
    if ((v14 & 1) == 0)
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
      swift_allocError();
      *v51 = 0xD000000000000033;
      v51[1] = 0x800000023B927B30;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID;
  v16 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_34;
  }

  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID) = v18;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = *(v2 + v15);

    _os_log_impl(&dword_23B824000, v19, v20, "Scan pass ID is now: %ld", v21, 0xCu);
    MEMORY[0x23EEB0B70](v21, -1, -1);
  }

  else
  {
  }

  v22 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v22 || *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 1)
  {
    goto LABEL_30;
  }

  v52[2] = v1;
  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_23B824000, v24, v25, "Resetting the auto-capture pose graph...", v26, 2u);
    MEMORY[0x23EEB0B70](v26, -1, -1);
  }

  v27 = type metadata accessor for ObjectCaptureSession.State();
  v52[1] = v52;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v53 = v23;
  v30 = dispatch thunk of ObjectCaptureSession.state.getter();
  MEMORY[0x28223BE20](v30);
  v31 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v31, *MEMORY[0x277D00480], v27);
  v32 = MEMORY[0x23EEAE410](v31, v31);
  v33 = *(v28 + 8);
  v33(v31, v27);
  v33(v31, v27);
  if (v32)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_23B824000, v34, v35, "Internal session is paused.  Resuming temporarily to reset the graph...", v36, 2u);
      MEMORY[0x23EEB0B70](v36, -1, -1);
    }

    dispatch thunk of ObjectCaptureSession.resume()();
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_23B824000, v37, v38, "Resetting pose graph...", v39, 2u);
    MEMORY[0x23EEB0B70](v39, -1, -1);
  }

  v40 = v53;
  dispatch thunk of ObjectCaptureSession.resetCapturePoseGraph()();
  if (v32)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23B824000, v41, v42, "... re-pausing internal session after reset pose graph.", v43, 2u);
      MEMORY[0x23EEB0B70](v43, -1, -1);
    }

    dispatch thunk of ObjectCaptureSession.pause(fastResuming:)();
  }

  type metadata accessor for CaptureCircle();
  swift_allocObject();
  v44 = CaptureCircle.init(numBins:binFillAnimDurationSecs:)(96, 0.25);
  v45 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle;
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle) = v44;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v46, v47))
  {

    goto LABEL_30;
  }

  v48 = swift_slowAlloc();
  *v48 = 134349056;
  v49 = *(v2 + v45);
  if (!v49)
  {
LABEL_34:

    __break(1u);
    return;
  }

  *(v48 + 4) = *(v49 + 16);
  v50 = v48;

  _os_log_impl(&dword_23B824000, v46, v47, "... new orbit made a new CaptureCircle with id= %{public}ld", v50, 0xCu);
  MEMORY[0x23EEB0B70](v50, -1, -1);

LABEL_30:
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator))
  {
    DeviceMotionEstimator.reset()();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v54 = 0;

  static Published.subscript.setter();
}

Swift::Bool __swiftcall DataModel.takeManualShot()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v1)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter(&v20);

  if (v20 != 1)
  {

LABEL_16:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v2 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v2, v18, "Manual shot requested when we in inhibition period!  Ignoring request...", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    goto LABEL_20;
  }

  v3 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Taking manual shot!", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  if ((dispatch thunk of ObjectCaptureSession.takeManualShot()() & 1) == 0)
  {
LABEL_20:

    return 0;
  }

  v8 = COERCE_DOUBLE(dispatch thunk of ObjectCaptureSession.captureCoolDownTime.getter());
  if (v9)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_23B824000, v11, v12, "Setting manual shot inhibition period to %f seconds.", v13, 0xCu);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  if (v10 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
    v16 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_manualShotRefractoryTimer);
    *(v16 + 16) = v10 + v15;
    *(v16 + 24) = v15;
    return 1;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.startDetecting()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v88 - v6);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "startDetecting() called...", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v12 = type metadata accessor for DataModel.Error(0);
  v13 = *(*(v12 - 8) + 56);
  v95 = v12;
  v13(v5, 4, 8);
  v14 = specialized static DataModel.State.== infix(_:_:)(v7, v5);
  outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
  if ((v14 & 1) == 0)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&t1.a = v30;
      *v29 = 136446210;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v7);

      v31 = String.init<A>(describing:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &t1);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_23B824000, v27, v28, "startDetecting() called in wrong state=%{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x23EEB0B70](v30, -1, -1);
      MEMORY[0x23EEB0B70](v29, -1, -1);
    }

    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    v35 = v34;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v7);

    *v35 = String.init<A>(describing:)();
    v35[1] = v36;
    goto LABEL_25;
  }

  v15 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v16 || (v17 = *(v15 + 16)) == 0)
  {
LABEL_24:
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    *v74 = 0xD000000000000033;
    v74[1] = 0x800000023B927BA0;
LABEL_25:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v91 = v15;
  v18 = v17;
  v19 = v16;
  v20 = [v18 session];
  v21 = [v20 currentFrame];

  if (!v21)
  {

    goto LABEL_24;
  }

  v22 = [v21 camera];

  [v22 imageResolution];
  v23 = v18;
  v24 = [v23 window];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 windowScene];

    if (v26)
    {
      [v26 interfaceOrientation];
    }
  }

  [v23 center];
  v38 = v37;
  v40 = v39;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v43 = os_log_type_enabled(v41, v42);
  v90 = v19;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *&v89 = v23;
    v45 = v44;
    v46 = swift_slowAlloc();
    *&t2.a = v46;
    *v45 = 136446210;
    t1.a = v38;
    t1.b = v40;
    type metadata accessor for CGPoint(0);
    v47 = String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &t2);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_23B824000, v41, v42, "Target point screen: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x23EEB0B70](v46, -1, -1);
    v50 = v45;
    v23 = v89;
    MEMORY[0x23EEB0B70](v50, -1, -1);
  }

  [v23 frame];
  v52 = v51;
  [v23 frame];
  CGAffineTransformMakeScale(&t1, 1.0 / v52, 1.0 / v53);
  tx = t1.tx;
  ty = t1.ty;
  v89 = *&t1.a;
  v88 = *&t1.c;
  ARViewToCameraImageTransform();
  v56 = *&t1.a;
  v57 = *&t1.c;
  v58 = *&t1.tx;
  *&t1.a = v89;
  *&t1.c = v88;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v56;
  *&t2.c = v57;
  *&t2.tx = v58;
  CGAffineTransformConcat(&v92, &t1, &t2);
  t1 = v92;
  v96.x = v38;
  v96.y = v40;
  v59 = CGPointApplyAffineTransform(v96, &t1);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&t2.a = v63;
    *v62 = 136446210;
    t1.a = v59.x;
    t1.b = v59.y;
    type metadata accessor for CGPoint(0);
    v64 = String.init<A>(describing:)();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &t2);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_23B824000, v60, v61, "Calling detectObject on normalized point: %{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    MEMORY[0x23EEB0B70](v63, -1, -1);
    MEMORY[0x23EEB0B70](v62, -1, -1);
  }

  v67 = v91;
  v68 = v90;
  v69 = dispatch thunk of ObjectCaptureSession.detectObject(at:)();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  v72 = os_log_type_enabled(v70, v71);
  if (v69)
  {
    if (v72)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_23B824000, v70, v71, "Requested object detection at center of screen... started detection successfully.", v73, 2u);
      MEMORY[0x23EEB0B70](v73, -1, -1);
    }

LABEL_37:
    *(v67 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 1;
    DataModel.captureMode.didset();
    return;
  }

  if (v72)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_23B824000, v70, v71, "No object found!  Sending a shakeReticle message...", v75, 2u);
    MEMORY[0x23EEB0B70](v75, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(t1.a) = 1;

  static Published.subscript.setter();
  v76 = v67;
  v77 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects;
  v78 = *(v76 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects);
  v79 = __OFADD__(v78, 1);
  v80 = v78 + 1;
  if (!v79)
  {
    *(v76 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects) = v80;

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = *(v76 + v77);
      *v83 = 134218240;
      *(v83 + 4) = v84;
      *(v83 + 12) = 2048;
      *(v83 + 14) = 2;

      _os_log_impl(&dword_23B824000, v81, v82, "Unsuccessful object detection %ld out of %ld", v83, 0x16u);
      MEMORY[0x23EEB0B70](v83, -1, -1);
    }

    else
    {
    }

    if (*(v76 + v77) <= 1)
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }

    v67 = v76;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_23B824000, v85, v86, "Too many unsuccessful auto detections... using manual box flow!", v87, 2u);
      MEMORY[0x23EEB0B70](v87, -1, -1);
    }

    DataModel.startManualBoxMode()();
    goto LABEL_37;
  }

  __break(1u);
}

uint64_t DataModel.startManualBoxMode()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for DataModel.State(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23B824000, v18, v19, "Using manual box flow!", v20, 2u);
    MEMORY[0x23EEB0B70](v20, -1, -1);
  }

  v21 = type metadata accessor for DataModel.Error(0);
  (*(*(v21 - 8) + 56))(v16, 5, 8, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  DataModel.performStateTransition(from:to:)(v14, v16);
  outlined destroy of DataModel.Error(v14, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v16, type metadata accessor for DataModel.State);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v5 + 8);
  v30 = v4;
  v31 = v23;
  v23(v8, v4);
  v24 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DataModel.startManualBoxMode();
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_509;
  v25 = _Block_copy(aBlock);

  v26 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v27 = v33;
  v28 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF910](v10, v26, v27, v25);
  _Block_release(v25);

  (*(v36 + 8))(v27, v28);
  (*(v34 + 8))(v26, v35);
  return v31(v10, v30);
}

uint64_t closure #1 in DataModel.startManualBoxMode()(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "Async wait for 2D anim complete... starting manual box flow.", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

    if (v6)
    {
      DetectModeBoxModel.startRaycastManualBoxFlow()();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.resetDetection()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v20 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v8 = type metadata accessor for DataModel.Error(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 5, 8, v8);
  v10 = specialized static DataModel.State.== infix(_:_:)(v7, v5);
  outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
  if (v10 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(v7), , , v9(v5, 4, 8, v8), v11 = specialized static DataModel.State.== infix(_:_:)(v7, v5), outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State), outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State), (v11))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "resetDetection() called... switching back to .ready to reselect object!", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v20) = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v20) = 0;

    static Published.subscript.setter();
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 0;
    DataModel.captureMode.didset();
    v9(v7, 4, 8, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    DataModel.performStateTransition(from:to:)(v5, v7);
    outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
  }

  else
  {
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    v17 = v16;
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v20 = 0xD000000000000020;
    v21 = 0x800000023B927B70;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v7);

    v18 = String.init<A>(describing:)();
    MEMORY[0x23EEAF590](v18);

    v19 = v21;
    *v17 = v20;
    v17[1] = v19;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void DataModel.addToScene(entity:)(uint64_t a1)
{
  v2 = type metadata accessor for Scene.AnchorCollection();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v6;
    dispatch thunk of ARView.scene.getter();

    dispatch thunk of Scene.anchors.getter();

    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0], MEMORY[0x277CDB0D0]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v14[4] == v14[0])
    {
      (*(v3 + 8))(v5, v2);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, logger);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_23B824000, v9, v10, "Expected anchor in addToScene but wasn't found!", v11, 2u);
        MEMORY[0x23EEB0B70](v11, -1, -1);
      }
    }

    else
    {
      v12 = dispatch thunk of Collection.subscript.read();

      v12(v14, 0);
      (*(v3 + 8))(v5, v2);
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.startCapturing()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
    {
      DataModel.startObjectCapturing()();
      if (!v1)
      {
        goto LABEL_7;
      }

      return;
    }

    if (one-time initialization token for logger == -1)
    {
LABEL_9:
      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, logger);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_23B824000, v10, v11, "startCapturing() should not be called more than once in area mode... ignoring subsequent calls.", v12, 2u);
        MEMORY[0x23EEB0B70](v12, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  DataModel.startFreeformCapturing()();
  if (!v1)
  {
LABEL_7:
    specialized static DataModel.makeDeviceMotionEstimatorDesc(captureMode:)(*(v2 + v8), v13);
    type metadata accessor for DeviceMotionEstimator();
    swift_allocObject();
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator) = DeviceMotionEstimator.init(desc:)(v13);

    DataModel.createCloudViewRenderer()();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.stopCapturing()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = _dispatchPreconditionTest(_:)();
  v14 = *(v9 + 8);
  v13 = (v9 + 8);
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = 0xD000000000000013;
  if ((DataModel.inCapturingMetaState.getter() & 1) == 0)
  {
    v22 = "gment with nil captureSession!";
    v15 = 0xD000000000000098;
LABEL_10:
    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    *v23 = v15;
    v23[1] = v22 | 0x8000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v16 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v16)
  {
    v22 = "tUI.LocalARCoachingViewDelegate";
    goto LABEL_10;
  }

  v17 = one-time initialization token for logger;
  v13 = v16;
  if (v17 != -1)
  {
LABEL_12:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_23B824000, v19, v20, "Stop capturing...", v21, 2u);
    MEMORY[0x23EEB0B70](v21, -1, -1);
  }

  dispatch thunk of ObjectCaptureSession.finish()();
  type metadata accessor for AnalyticsManager();
  static AnalyticsManager.shared.getter();
  (*(v25 + 16))(v4, v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v28);

  AnalyticsManager.ObjectCaptureSessionImageStatsEvent.init(sessionID:numImages:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:)();

  (*(v26 + 8))(v7, v27);
}

Swift::Void __swiftcall DataModel.cancelCapturing()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for logger == -1)
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
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Cancelling capture...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v11)
  {
    v12 = v11;
    dispatch thunk of ObjectCaptureSession.cancel()();
  }
}

void DataModel.currentMiniViewCameraWorldTransform.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  if (v1 != 1)
  {
    if (v1 != 2)
    {
      __break(1u);
      goto LABEL_12;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v5);

    if (!v5)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v5);

    v2 = v5;
    if (!v5)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v3 = *&v5[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider];
    if (v3)
    {
LABEL_10:
      v4 = v3;
      InteractiveCameraTransformManager.computeCurrentTransform()();

      return;
    }

    __break(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v2 = v5;
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = *&v5[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider];
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
}

double DataModel.reticleAimVector.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void DataModel.shouldShowARKitCoachingView.didset()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    *(v3 + 4) = v4;

    _os_log_impl(&dword_23B824000, v1, v2, "shouldShowARKitCoachingView = %{BOOL}d", v3, 8u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t DataModel.showMiniView.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

float DataModel.userControlScore.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
  v2 = 1.0;
  v3 = 1.0;
  if (v1)
  {
    v4 = *(v1 + 136);
    v5 = 1.0;
    if (v4 <= 1.0)
    {
      v5 = *(v1 + 136);
    }

    if (v4 > 0.3)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0.3;
    }
  }

  v6 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = 1.0 - v7;
  if (v6 > 0.0)
  {
    v2 = v8;
  }

  return v2 * v3;
}

uint64_t DataModel.inCapturingMetaState.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v20 - v6);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v7);

    v14 = type metadata accessor for DataModel.Error(0);
    v15 = *(*(v14 - 8) + 56);
    v15(v5, 6, 8, v14);
    v16 = specialized static DataModel.State.== infix(_:_:)(v7, v5);
    outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v7);

      v15(v5, 3, 8, v14);
      v18 = specialized static DataModel.State.== infix(_:_:)(v7, v5);
      outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
      outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
      if (v18)
      {
        v19 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState;
        swift_beginAccess();
        outlined init with copy of DataModel.Error(v1 + v19, v7, type metadata accessor for DataModel.State);
        v15(v5, 6, 8, v14);
        v17 = specialized static DataModel.State.== infix(_:_:)(v7, v5);
        outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
        outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
      }

      else
      {
        v17 = 0;
      }
    }

    return v17 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataModel.startNewSegment()()
{
  v2 = v0;
  v3 = type metadata accessor for CoveragePointCloud(0);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23B824000, v13, v14, "Starting new capture segment...", v15, 2u);
    MEMORY[0x23EEB0B70](v15, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v16)
  {
    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    *v47 = 0xD00000000000002ELL;
    v47[1] = 0x800000023B927A60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v54 = v7;
  v55 = v1;
  v17 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  v19 = MEMORY[0x277D84F90];
  *&v17[v18] = MEMORY[0x277D84F90];
  v20 = v17;
  v21 = v16;

  *&v17[v18] = v19;
  v22 = &v20[OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_cameraPosesBoundingBox];
  swift_beginAccess();
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v58);

  v23 = v58[0];
  if (v58[0])
  {
    (*(v57 + 56))(v11, 1, 1, v56);
    v24 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v11, &v23[v24], &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    swift_endAccess();
    *&v23[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle] = 0;

    if (!CoveragePointRenderer.captureCircleRenderer.getter())
    {
      __break(1u);
      return;
    }

    CoveragePointRenderer.clearView()();
  }

  v53 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v58);

  v25 = v58[0];
  if (v58[0])
  {
    FreeformCloudRenderer.clearView()();
  }

  v26 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);
  *(v26 + 48) = 0;

  swift_unknownObjectRelease();
  *(v26 + 56) = 0;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v52 = &v49;
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v49 - v28;
  v30 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v50 = *(*(v30 - 8) + 56);
  v50(v29, 1, 1, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v51 = &v49;
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v49 - v32;
  v34 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v35 = *(*(v34 - 8) + 56);
  v35(v33, 1, 1, v34);
  v36 = v2;
  v37 = v59;
  v50(v59, 1, 1, v30);
  v38 = *(v56 + 20);
  v35((v37 + v38), 1, 1, v34);
  outlined assign with take of Cancellable?(v29, v37, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined assign with take of Cancellable?(v33, v37 + v38, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v39 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  v40 = *(v36 + v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + v39) = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
    *(v36 + v39) = v40;
  }

  v42 = v54;
  v44 = v40[2];
  v43 = v40[3];
  if (v44 >= v43 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v40);
  }

  v40[2] = v44 + 1;
  v45 = v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44;
  outlined init with take of DataModel.State(v59, v45, type metadata accessor for CoveragePointCloud);
  *(v36 + v39) = v40;
  swift_endAccess();
  outlined init with copy of DataModel.Error(v45, v42, type metadata accessor for CoveragePointCloud);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  Atomic.wrappedValue.setter();
  swift_endAccess();
  *(v36 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_currentSegmentID) = *(*(v36 + v39) + 16) - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v58[0] = 0;

  static Published.subscript.setter();
  DataModel.beginNewOrbit()();
  if (v46)
  {
  }

  else
  {
    v48 = v53;
    dispatch thunk of ObjectCaptureSession.run()();
  }
}

void DataModel.createCloudViewRenderer()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v44 - v3;
  v5 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  if (v5 == 1)
  {
    v14 = [objc_allocWithZone(type metadata accessor for CoveragePointRenderer(0)) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v47[0] = v14;

    static Published.subscript.setter();
    v15 = type metadata accessor for CoveragePointCloud(0);
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = objc_allocWithZone(type metadata accessor for FullscreenCoveragePointsRenderer(0));
    v17 = FullscreenCoveragePointsRenderer.init(pointCloud:)(v4);
    v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer;
    v19 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer) = v17;
    v20 = v17;

    FullscreenCoveragePointsRenderer.setCameraFrustumRendererForShots(to:)(v21);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      v26 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
      v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
      swift_beginAccess();
      *(v25 + 4) = *(*(v26 + v27) + 16);

      _os_log_impl(&dword_23B824000, v23, v24, "Creating camera path renderer with %ld shots...", v25, 0xCu);
      MEMORY[0x23EEB0B70](v25, -1, -1);

      v28 = *(v1 + v18);
      if (!v28)
      {
        return;
      }
    }

    else
    {

      v28 = *(v1 + v18);
      if (!v28)
      {
        return;
      }
    }

    v48 = v28;
    v43 = v28;
    closure #1 in DataModel.createCloudViewRenderer()(&v48, v1);
  }

  else
  {
    if (v5 != 2)
    {
      __break(1u);
      goto LABEL_21;
    }

    v6 = [objc_allocWithZone(type metadata accessor for FreeformCloudRenderer(0)) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v47[0] = v6;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v47);

    v7 = v47[0];
    if (v47[0])
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, logger);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        v12 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
        v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
        swift_beginAccess();
        *(v11 + 4) = *(*(v12 + v13) + 16);

        _os_log_impl(&dword_23B824000, v9, v10, "Creating camera path renderer with %ld shots...", v11, 0xCu);
        MEMORY[0x23EEB0B70](v11, -1, -1);
      }

      else
      {
      }

      v29 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
      if (v29)
      {
        v30 = *&v7[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view];
        if (v30)
        {
          swift_unknownObjectRetain();
          v46 = [v30 colorPixelFormat];
          v31 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.createCloudViewRenderer());
          v45 = v32;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DataModel.createCloudViewRenderer());
          v44 = v33;
          type metadata accessor for CameraPathRenderer(0);
          v34 = swift_allocObject();
          v35 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
          v36 = *MEMORY[0x277CDF3D0];
          v37 = type metadata accessor for ColorScheme();
          (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode) = 1;
          swift_unknownObjectWeakInit();
          v38 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_baseRenderer) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms) = MEMORY[0x277D84F90];
          v48 = 0;
          v39 = v31;
          Atomic.init(wrappedValue:)();
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) = 1;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer) = 0;
          *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numSplineSamplesPerShot) = 10;
          *(v34 + v38) = v29;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          swift_unknownObjectWeakAssign();
          v40 = v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc;
          *v40 = 990057071;
          v41 = v44;
          *(v40 + 16) = v45;
          *(v40 + 32) = v41;
          *(v40 + 48) = 0x3F0000003E4CCCCDLL;
          CameraPathRenderer.initRenderPipeline(pixelFormat:)(v46);
          CameraPathRenderer.initUniformsTripleBuffer()();
          swift_unknownObjectRelease();

          *&v7[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer] = v34;

          FreeformCloudRenderer.setCameraFrustumRendererForShots(to:)(v42);

          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }
}

uint64_t *closure #1 in DataModel.createCloudViewRenderer()(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
  if (v2)
  {
    v4 = *result;
    v5 = *(*result + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view);
    swift_unknownObjectRetain();
    v18 = [v5 colorPixelFormat];
    v6 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #1 in DataModel.createCloudViewRenderer());
    v17 = v7;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of closure #1 in DataModel.createCloudViewRenderer());
    v16 = v8;
    type metadata accessor for CameraPathRenderer(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
    v11 = *MEMORY[0x277CDF3D0];
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode) = 1;
    swift_unknownObjectWeakInit();
    v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_baseRenderer) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms) = MEMORY[0x277D84F90];
    v14 = v6;
    Atomic.init(wrappedValue:)();
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) = 1;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer) = 0;
    *(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numSplineSamplesPerShot) = 10;
    *(v9 + v13) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
    v15 = v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc;
    *v15 = 990057071;
    *(v15 + 16) = v17;
    *(v15 + 32) = v16;
    *(v15 + 48) = 0x3F0000003E4CCCCDLL;
    CameraPathRenderer.initRenderPipeline(pixelFormat:)(v18);
    if (v19)
    {

      swift_unknownObjectRelease();

      v9 = 0;
    }

    else
    {
      CameraPathRenderer.initUniformsTripleBuffer()();
      swift_unknownObjectRelease();
    }

    *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataModel.startSessionInternal(imagesURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = type metadata accessor for DataModel.State(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v31 - v11);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = 0xD000000000000013;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v12);

    v19 = type metadata accessor for DataModel.Error(0);
    (*(*(v19 - 8) + 56))(v10, 1, 8, v19);
    v20 = specialized static DataModel.State.== infix(_:_:)(v12, v10);
    outlined destroy of DataModel.Error(v10, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v12, type metadata accessor for DataModel.State);
    if (v20)
    {
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
      {
        v21 = type metadata accessor for URL();
        v22 = *(v21 - 8);
        (*(v22 + 16))(v6, a1, v21);
        (*(v22 + 56))(v6, 0, 1, v21);
        v23 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
        swift_beginAccess();
        outlined assign with take of Cancellable?(v6, v2 + v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_endAccess();
        v24 = v31[5];
        DataModel.connectImageWriter()();
        if (v24)
        {
          return;
        }

        if (one-time initialization token for logger == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }

      v29 = "tUI.LocalARCoachingViewDelegate";
    }

    else
    {
      v29 = "Cannot init from internal state";
      v18 = 0xD000000000000036;
    }

    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    *v30 = v18;
    v30[1] = v29 | 0x8000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  __break(1u);
LABEL_14:
  swift_once();
LABEL_6:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_23B824000, v26, v27, "Starting the initial segment and running the internal session...", v28, 2u);
    MEMORY[0x23EEB0B70](v28, -1, -1);
  }

  DataModel.startNewSegment()();
}

void DataModel.startFrameProcessor()()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B824000, v4, v5, "Starting the ARFrameProcessor!", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  DataModel.stopFrameProcessor()();
  if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice))
  {
    __break(1u);
    goto LABEL_13;
  }

  type metadata accessor for ARFrameProcessor();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = specialized ARFrameProcessor.init(device:)(v7);
  swift_unknownObjectRelease();
  if (v1)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor) = v8;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "Subscribing to update events...", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  v12 = *(v2 + 16);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v12;
  dispatch thunk of ARView.scene.getter();

  type metadata accessor for SceneEvents.Update();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  swift_allocObject();
  swift_weakInit();
  Scene.subscribe<A>(to:on:_:)();

  outlined destroy of PerspectiveCameraComponent?(v15, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  v14 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v17, v2 + v14, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
}

void closure #1 in DataModel.startFrameProcessor()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) && (v3 = Strong, v4 = [*(Strong + 16) session], v5 = objc_msgSend(v4, sel_currentFrame), v4, v5))
    {
      if (*(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor))
      {

        v6 = [v5 capturedImage];
        v7 = ARFrameProcessor.computeYCbCrTexture(from:)(v6);

        v8 = ARFrame.depthMap.getter();
        if (v8)
        {
          v9 = v8;
          v10 = ARFrameProcessor.computeTexture(from:planeIndex:format:)(v8, 0, MTLPixelFormatR32Float);

          swift_unknownObjectRetain();
        }

        else
        {
          v10 = 0;
        }

        FrameCache.push(arFrame:textureYCbCr:textureDepth:)(v5, v7, v10);

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t DataModel.stopFrameProcessor()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Stopping the ARFrameProcessor!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, &v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  if (*(&v10 + 1))
  {
    outlined init with copy of Cancellable(&v9, v8);
    outlined destroy of PerspectiveCameraComponent?(&v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v9, v1 + v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor) = 0;
}

void DataModel.performStateTransition(from:to:)(uint64_t a1, uint64_t (*a2)(void, void, void))
{
  v146 = type metadata accessor for DispatchWorkItemFlags();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for DispatchQoS();
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DispatchTime();
  v140 = *(v149 - 8);
  v6 = MEMORY[0x28223BE20](v149);
  v138 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v139 = &v133 - v8;
  v137 = type metadata accessor for DispatchPredicate();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = (&v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v147 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v133 - v13;
  v160 = type metadata accessor for DataModel.State(0);
  v151 = *(v160 - 8);
  v14 = MEMORY[0x28223BE20](v160);
  v16 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v155 = (&v133 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v133 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v133 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v154 = &v133 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v153 = &v133 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v156 = &v133 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v162 = (&v133 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v133 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v133 - v36;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v38, logger);
  outlined init with copy of DataModel.Error(a1, v37, type metadata accessor for DataModel.State);
  outlined init with copy of DataModel.Error(a2, v35, type metadata accessor for DataModel.State);
  v159 = v39;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v157 = a1;
  v148 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    aBlock[0] = v133;
    *v43 = 136446466;
    v152 = a2;
    v158 = v24;
    v44 = v162;
    outlined init with copy of DataModel.Error(v37, v162, type metadata accessor for DataModel.State);
    v134 = v16;
    v45 = String.init<A>(describing:)();
    v47 = v46;
    outlined destroy of DataModel.Error(v37, type metadata accessor for DataModel.State);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, aBlock);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    outlined init with copy of DataModel.Error(v35, v44, type metadata accessor for DataModel.State);
    v24 = v158;
    v16 = v134;
    v49 = String.init<A>(describing:)();
    v51 = v50;
    a2 = v152;
    outlined destroy of DataModel.Error(v35, type metadata accessor for DataModel.State);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, aBlock);

    *(v43 + 14) = v52;
    a1 = v157;
    _os_log_impl(&dword_23B824000, v40, v41, "Switch State: %{public}s -> %{public}s", v43, 0x16u);
    v53 = v133;
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v53, -1, -1);
    MEMORY[0x23EEB0B70](v43, -1, -1);
  }

  else
  {

    outlined destroy of DataModel.Error(v35, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v37, type metadata accessor for DataModel.State);
  }

  v54 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState;
  v55 = v161;
  swift_beginAccess();
  outlined assign with copy of CoveragePointCloud(a1, v55 + v54, type metadata accessor for DataModel.State);
  swift_endAccess();
  if (specialized static DataModel.State.== infix(_:_:)(a1, a2))
  {
    outlined init with copy of DataModel.Error(a1, v16, type metadata accessor for DataModel.State);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136446210;
      outlined init with copy of DataModel.Error(v16, v162, type metadata accessor for DataModel.State);
      v60 = String.init<A>(describing:)();
      v61 = v16;
      v63 = v62;
      outlined destroy of DataModel.Error(v61, type metadata accessor for DataModel.State);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v63, aBlock);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_23B824000, v56, v57, "switchState has same from and to states: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x23EEB0B70](v59, -1, -1);
      MEMORY[0x23EEB0B70](v58, -1, -1);
    }

    else
    {

      outlined destroy of DataModel.Error(v16, type metadata accessor for DataModel.State);
    }

    return;
  }

  v65 = v156;
  outlined init with copy of DataModel.Error(a1, v156, type metadata accessor for DataModel.State);
  v66 = type metadata accessor for DataModel.Error(0);
  v67 = *(v66 - 8);
  v152 = *(v67 + 6);
  v68 = v152(v65, 8, v66);
  if (v68 != 5)
  {
    if (v68 == 6)
    {
      if (!*(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      CaptureModeBoxModel.disable()();

      if (*(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
      {
        SoundManager.stopLoop(playEndSound:)(0);
        SoundManager.requestStandby(after:)(2.0);
      }

      v69 = v162;
      (*(v67 + 7))(v162, 3, 8, v66);
      v70 = specialized static DataModel.State.== infix(_:_:)(a2, v69);
      outlined destroy of DataModel.Error(v69, type metadata accessor for DataModel.State);
      if (v70)
      {
        if (*(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
        {

          RangefinderManager.detach()();
        }
      }

      else
      {
        DataModel.stopRangefinderIfNeeded()();
      }
    }

    else
    {
      outlined destroy of DataModel.Error(v65, type metadata accessor for DataModel.State);
    }
  }

  v71 = v153;
  outlined init with copy of DataModel.Error(a2, v153, type metadata accessor for DataModel.State);
  v72 = v152(v71, 8, v66);
  outlined destroy of DataModel.Error(v71, type metadata accessor for DataModel.State);
  v134 = v67;
  if (v72)
  {
    v158 = v24;
    outlined init with copy of DataModel.Error(a2, v24, type metadata accessor for DataModel.State);
    v73 = *(v67 + 7);
    v74 = v162;
    v73(v162, 3, 8, v66);
    v75 = specialized static DataModel.State.== infix(_:_:)(a1, v74);
    outlined destroy of DataModel.Error(v74, type metadata accessor for DataModel.State);
    if (v75)
    {
      v76 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
      v77 = v161;
      swift_beginAccess();
      v78 = v77 + v76;
      v79 = v150;
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v78, v150, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
      if ((*(v151 + 48))(v79, 1, v160) == 1)
      {
        outlined destroy of PerspectiveCameraComponent?(v79, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
      }

      else
      {
        v82 = v148;
        outlined init with take of DataModel.State(v79, v148, type metadata accessor for DataModel.State);
        v83 = v162;
        v73(v162, 4, 8, v66);
        v84 = specialized static DataModel.State.== infix(_:_:)(v82, v83);
        outlined destroy of DataModel.Error(v83, type metadata accessor for DataModel.State);
        if (v84)
        {
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_23B824000, v85, v86, "Going to ready state after pause...", v87, 2u);
            MEMORY[0x23EEB0B70](v87, -1, -1);
          }

          outlined destroy of DataModel.Error(v148, type metadata accessor for DataModel.State);
          v88 = v158;
          outlined destroy of DataModel.Error(v158, type metadata accessor for DataModel.State);
          v73(v88, 4, 8, v66);
        }

        else
        {
          outlined destroy of DataModel.Error(v82, type metadata accessor for DataModel.State);
        }

        v89 = v147;
        (*(v151 + 56))(v147, 1, 1, v160);
        v90 = v161;
        swift_beginAccess();
        outlined assign with take of Cancellable?(v89, v90 + v76, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
        swift_endAccess();
      }
    }

    v81 = v158;
    v91 = v162;
    outlined init with copy of DataModel.Error(v158, v162, type metadata accessor for DataModel.State);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of DataModel.Error(v91, v154, type metadata accessor for DataModel.State);
    v55 = v161;

    static Published.subscript.setter();
    outlined destroy of DataModel.Error(v91, type metadata accessor for DataModel.State);
  }

  else
  {
    v80 = a2;
    v81 = v162;
    outlined init with copy of DataModel.Error(v80, v162, type metadata accessor for DataModel.State);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of DataModel.Error(v81, v154, type metadata accessor for DataModel.State);

    static Published.subscript.setter();
  }

  outlined destroy of DataModel.Error(v81, type metadata accessor for DataModel.State);
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v155;
  static Published.subscript.getter(v155);

  v93 = v152(v92, 8, v66);
  v94 = &unk_27E18B000;
  if (v93 > 4)
  {
    if (v93 == 5)
    {
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_23B824000, v103, v104, "Attaching detect box model to the scene...", v105, 2u);
        MEMORY[0x23EEB0B70](v105, -1, -1);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v161 = static OS_dispatch_queue.main.getter();
      v106 = v138;
      static DispatchTime.now()();
      v107 = v139;
      + infix(_:_:)();
      v162 = *(v140 + 8);
      (v162)(v106, v149);
      v108 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in DataModel.performStateTransition(from:to:);
      aBlock[5] = v108;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_494;
      v109 = _Block_copy(aBlock);

      v110 = v141;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v111 = v143;
      v112 = v146;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v113 = v161;
      MEMORY[0x23EEAF910](v107, v110, v111, v109);
      _Block_release(v109);

      (*(v145 + 8))(v111, v112);
      (*(v142 + 8))(v110, v144);
      (v162)(v107, v149);
      v94 = &unk_27E18B000;
      goto LABEL_63;
    }

    if (v93 == 6)
    {
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_23B824000, v114, v115, "Entering capturing mode...", v116, 2u);
        MEMORY[0x23EEB0B70](v116, -1, -1);
      }

      DataModel.addGestureRecognizerIfNeeded()();
      v117 = v134;
      if (*(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
      {
        SoundManager.start()();
        SoundManager.startLoop(playStartSound:)(1);
      }

      v118 = v162;
      v117[7](v162, 3, 8, v66);
      v119 = specialized static DataModel.State.== infix(_:_:)(v157, v118);
      outlined destroy of DataModel.Error(v118, type metadata accessor for DataModel.State);
      if (v119)
      {
        if (*(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
        {

          specialized RangefinderManager.attach(attacher:)(v120);
        }
      }

      else
      {
        DataModel.startRangefinderIfNeeded()();
      }

      v121 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_manualShotRefractoryTimer);
      v122 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
      v123 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
      v124 = 1.0;
      if (!v123 || (v125 = v123, v126 = COERCE_DOUBLE(dispatch thunk of ObjectCaptureSession.captureCoolDownTime.getter()), v128 = v127, v125, (v128 & 1) != 0) || (v124 = v126, v126 >= 0.0))
      {
        *(v121 + 16) = v122 + v124;
        *(v121 + 24) = v122;
        v101 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
        if (v101)
        {
          v102 = 1;
          goto LABEL_62;
        }

        goto LABEL_72;
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v93 != 8)
    {
LABEL_43:
      outlined destroy of DataModel.Error(v92, type metadata accessor for DataModel.State);
      goto LABEL_63;
    }

    goto LABEL_45;
  }

  if (!v93)
  {
    outlined destroy of DataModel.Error(v92, type metadata accessor for DataModel.State);
    goto LABEL_45;
  }

  if (v93 == 3)
  {
LABEL_45:
    DataModel.removeGestureRecognizer()();
    goto LABEL_63;
  }

  if (v93 != 4)
  {
    goto LABEL_43;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects) = 0;
  v95 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
  if (!v95)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  v96 = static OS_dispatch_queue.main.getter();
  v97 = v135;
  *v135 = v96;
  v98 = v136;
  v99 = v137;
  (*(v136 + 104))(v97, *MEMORY[0x277D85200], v137);
  v100 = _dispatchPreconditionTest(_:)();
  (*(v98 + 8))(v97, v99);
  if ((v100 & 1) == 0)
  {
    goto LABEL_69;
  }

  DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v95 + 24), 0);
  *(v95 + 24) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  DataModel.addGestureRecognizerIfNeeded()();
  v101 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
  if (!v101)
  {
LABEL_73:
    __break(1u);
    return;
  }

  v102 = 2;
LABEL_62:
  *(v101 + 132) = v102;
LABEL_63:
  v129 = *(v55 + v94[366]);
  if (v129)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v130 = v129;
    static Published.subscript.getter(aBlock);

    v131 = LOBYTE(aBlock[0]);
    if (v131 != (dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter() & 1))
    {
      v132 = dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = v132 & 1;

      static Published.subscript.setter();
    }
  }
}

uint64_t closure #1 in DataModel.performStateTransition(from:to:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23B824000, v6, v7, "Switching to detectBoxModel.state == .detecting...", v8, 2u);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

    if (v10)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      *v4 = static OS_dispatch_queue.main.getter();
      (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
      v12 = _dispatchPreconditionTest(_:)();
      result = (*(v2 + 8))(v4, v1);
      if (v12)
      {
        DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v10 + 24), 1u);
        *(v10 + 24) = 1;

        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DataModel.addGestureRecognizerIfNeeded()();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);

    if (v13)
    {
      *(v13 + 132) = 2;
    }

LABEL_17:
    __break(1u);
  }

  return result;
}

void DataModel.startRangefinderIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.Environment.SceneUnderstanding.Options();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager;
    if (!*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      v11 = __swift_project_value_buffer(v10, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23B824000, v12, v13, "Starting rangefinder...", v14, 2u);
        MEMORY[0x23EEB0B70](v14, -1, -1);
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.startRangefinderIfNeeded());
      v56 = v15;
      v57 = xmmword_23B91F780;
      v58 = 1036831949;
      v16 = *(v1 + 16);
      type metadata accessor for RangefinderManager();
      swift_allocObject();
      v17 = v16;
      v18 = RangefinderManager.init(from:using:)(&v56, v16);
      *(v1 + v9) = v18;

      specialized RangefinderManager.attach(attacher:)(v18);

      v19 = type metadata accessor for RangefinderObserver();
      v20 = objc_allocWithZone(v19);
      swift_weakInit();
      swift_weakAssign();
      v55.receiver = v20;
      v55.super_class = v19;
      v21 = objc_msgSendSuper2(&v55, sel_init);
      v22 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver;
      v23 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver);
      *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver) = v21;

      v24 = *(v1 + v9);
      if (v24)
      {
        v25 = &protocol witness table for RangefinderObserver;
        if (!*(v1 + v22))
        {
          v25 = 0;
        }

        *(v24 + 56) = v25;
        swift_unknownObjectWeakAssign();
      }

      v26 = *(v1 + 16);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMR);
      v28 = v27;
      if (v26)
      {
        v49 = *(v27 + 48);
        v29 = v26;
        static ARView.Environment.SceneUnderstanding.Options.collision.getter();
        v50 = dispatch thunk of ARView.environment.modify();
        v30 = ARView.Environment.sceneUnderstanding.modify();
        *&v51 = v11;
        v31 = v30;
        v32 = ARView.Environment.SceneUnderstanding.options.modify();
        v33 = specialized OptionSet<>.insert(_:)(&v8[v49], v5);
        (*(v3 + 8))(v5, v2);
        v32(v52, 0);
        v31(v53, 0);
        v50(v54, 0);

        v34 = 0;
        *v8 = v33 & 1;
      }

      else
      {
        v34 = 1;
      }

      (*(*(v28 - 8) + 56))(v8, v34, 1, v28);
      outlined destroy of PerspectiveCameraComponent?(v8, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMR);
      v35 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      v38 = os_log_type_enabled(v36, v37);
      if (v35 == 1)
      {
        if (v38)
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_23B824000, v36, v37, "Enabling dynamic scan volume estimator...", v39, 2u);
          MEMORY[0x23EEB0B70](v39, -1, -1);
        }

        v40 = specialized static ExperimentSettings.loadFreeformDynamicScanVolumeDebugDraw(default:)(0);
        v41 = specialized static ExperimentSettings.loadFreeformDynamicScanVolumeBoxViz(default:)(0);
        type metadata accessor for DynamicScanVolumeEstimator();
        swift_allocObject();
        if (v40)
        {
          v42 = 256;
        }

        else
        {
          v42 = 0;
        }

        v43 = DynamicScanVolumeEstimator.init(using:)(v42 & 0xFFFFFFFE | v41 & 1, 0.5, 0.1, 0.75);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator) = v43;

        if (*(v43 + 17) == 1)
        {
          v44 = DynamicScanVolumeEstimator.debugRootEntity.getter();
          DataModel.addToScene(entity:)(v44);
        }

        if (*(v43 + 16) == 1)
        {
          v45 = DynamicScanVolumeEstimator.boxEntity.getter();
          DataModel.addToScene(entity:)(v45);

          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DataModel.startRangefinderIfNeeded());
          v51 = v46;
          type metadata accessor for Entity();

          HasTransform.setPosition(_:relativeTo:)();

          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of DataModel.startRangefinderIfNeeded());
          v51 = v47;

          HasTransform.setScale(_:relativeTo:)();
        }
      }

      else
      {
        if (v38)
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_23B824000, v36, v37, "Not enabling dynamic scan volume estimator!", v48, 2u);
          MEMORY[0x23EEB0B70](v48, -1, -1);
        }
      }
    }
  }
}

uint64_t DataModel.stopRangefinderIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.Environment.SceneUnderstanding.Options();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMd, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMR);
  result = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v3;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23B824000, v17, v18, "Stopping rangefinder...", v20, 2u);
      v21 = v20;
      v3 = v19;
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    v22 = *(v1 + 16);
    if (v22)
    {
      v23 = v22;
      static ARView.Environment.SceneUnderstanding.Options.collision.getter();
      v35 = v23;
      v34 = dispatch thunk of ARView.environment.modify();
      v33 = ARView.Environment.sceneUnderstanding.modify();
      v32 = ARView.Environment.SceneUnderstanding.options.modify();
      (*(v3 + 16))(v6);
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options, MEMORY[0x277CDB5C8], MEMORY[0x277CDB5D8]);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v24 = *(v3 + 8);
        v24(v9, v2);
        v24(v11, v2);
        v25 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        (*(v3 + 8))(v11, v2);
        (*(v3 + 32))(v15, v9, v2);
        v25 = 0;
      }

      (*(v3 + 56))(v15, v25, 1, v2);
      outlined destroy of PerspectiveCameraComponent?(v15, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMd, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMR);
      v32(v36, 0);
      v33(v37, 0);
      v34(v38, 0);
    }

    else
    {
      (*(v3 + 56))(v15, 1, 1, v2);
      outlined destroy of PerspectiveCameraComponent?(v15, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMd, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMR);
    }

    v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager;
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
    {

      RangefinderManager.detach()();

      v27 = *(v1 + v26);
      if (v27)
      {
        *(v27 + 56) = 0;
        swift_unknownObjectWeakAssign();
      }
    }

    v28 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver);
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver) = 0;

    *(v1 + v26) = 0;

    v29 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator;
    v30 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);
    if (v30)
    {
      v31 = *(v30 + 17);

      if (v31 == 1)
      {
        DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
        type metadata accessor for Entity();
        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

        DynamicScanVolumeEstimator.debugRootEntity.getter();
        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
      }

      DynamicScanVolumeEstimator.boxEntity.getter();
      type metadata accessor for Entity();
      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    *(v1 + v29) = 0;
  }

  return result;
}

void DataModel.update(deltaTime:)(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime) = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime) + a1;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
    {
      DataModel.onSceneEventUpdateInObjectMode()();
    }

    else
    {
      DataModel.onSceneEventUpdateInFreeformMode()();
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer))
  {
    __break(1u);
    return;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {

LABEL_11:
    v8 = 1;
    goto LABEL_12;
  }

  v5 = [v4 window];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 windowScene];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v7 interfaceOrientation];

LABEL_12:
  v13[3] = v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
  Atomic.wrappedValue.setter();
  swift_endAccess();

  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
  {
    SoundManager.update(t:)(*(v2 + v3));
  }

  v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    static Published.subscript.getter(v13);

    v11 = LOBYTE(v13[0]);
    if (v11 != (dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter() & 1))
    {
      v12 = dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v13[0]) = v12 & 1;

      static Published.subscript.setter();
    }
  }
}

void DataModel.onSceneEventUpdateInObjectMode()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - v4;
  v6 = type metadata accessor for CoveragePointCloud(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataModel.State(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (v34.i64 - v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  v15 = type metadata accessor for DataModel.Error(0);
  (*(*(v15 - 8) + 56))(v12, 6, 8, v15);
  v16 = specialized static DataModel.State.== infix(_:_:)(v14, v12);
  outlined destroy of DataModel.Error(v12, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v14, type metadata accessor for DataModel.State);
  if (v16)
  {
    specialized DataModel.updateReticleAimSystem(at:)();
    v17 = *(v1 + 16);
    if (v17)
    {
      v18 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
      if (v18)
      {
        v19 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);

        v20 = v17;
        dispatch thunk of ARView.cameraTransform.getter();
        v38 = v22;
        v39 = v21;
        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
        {
          v23 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
          swift_beginAccess();
          (*(v3 + 16))(v5, v1 + v23, v2);
          Atomic.wrappedValue.getter();
          (*(v3 + 8))(v5, v2);
          *v24.i64 = CoveragePointCloud.bboxWorld.getter();
          v34 = v24;
          v35 = v25;
          v36 = v26;
          v37 = v27;
          outlined destroy of DataModel.Error(v8, type metadata accessor for CoveragePointCloud);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.getBoxCenterWorld());
          if (*(v18 + 80))
          {
            v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, v28.f32[0]), v35, *v28.f32, 1), v36, v28, 2), v37, v28, 3);
            v30 = v29.u32[2];
            v31 = v29.i64[0];

            specialized CircularBuffer.pushNew(_:)(v40, v19, v38, v39);

            DeviceMotionEstimator.updateMotionEstimate(time:orbit:)(v31, v30, 0, v19);

            v32 = 0.45;
            if (*(v18 + 140))
            {
              v32 = 0.55;
            }

            *(v18 + 140) = *(v18 + 136) < v32;
            *(v18 + 72) = v19;

            goto LABEL_9;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

LABEL_9:
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
    {
      v33 = DataModel.userControlScore.getter();
      SoundManager.updateGoodnessScore(_:)(v33);
    }
  }
}

void DataModel.onSceneEventUpdateInFreeformMode()()
{
  v1 = type metadata accessor for DataModel.State(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = (v20.n128_u64 - v5);
  v7 = *(v0 + 16);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    static Published.subscript.getter(v6);

    v9 = type metadata accessor for DataModel.Error(0);
    (*(*(v9 - 8) + 56))(v4, 6, 8, v9);
    v10 = specialized static DataModel.State.== infix(_:_:)(v6, v4);
    outlined destroy of DataModel.Error(v4, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
    if (v10)
    {
      v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator;
      v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
      if (v12)
      {
        v13 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);

        dispatch thunk of ARView.cameraTransform.getter();
        v20 = v15;
        v21 = v14;
        if (!*(v12 + 80))
        {
          __break(1u);
          return;
        }

        specialized CircularBuffer.pushNew(_:)(v22, v13, v20, v21);

        DeviceMotionEstimator.updateMotionEstimate(time:orbit:)(0, 0, 1, v13);
        v16 = 0.45;
        if (*(v12 + 140))
        {
          v16 = 0.55;
        }

        *(v12 + 140) = *(v12 + 136) < v16;
        *(v12 + 72) = v13;
      }

      if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
      {
        v17 = *(v0 + v11);
        v18 = 1.0;
        v19 = 1.0;
        if (v17)
        {
          v19 = *(v17 + 136);
        }

        if (v19 <= 0.3)
        {
          v19 = 0.3;
        }

        if (v19 <= 1.0)
        {
          v18 = v19;
        }

        SoundManager.updateGoodnessScore(_:)(v18);
      }

      DataModel.updateDynamicScanVolume(in:at:)(v8, *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime));
    }
  }
}

uint64_t DataModel.updateDynamicScanVolume(in:at:)(uint64_t a1, double a2)
{
  v41.i64[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for CollisionCastHit();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ARCamera.TrackingState();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1)
  {
    v40 = v8;
    v22 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback;
    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + v22, v13, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      return outlined destroy of PerspectiveCameraComponent?(v13, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
    }

    outlined init with take of DataModel.State(v13, v21, MEMORY[0x277D82DB0]);
    v23 = MEMORY[0x277D82DB0];
    outlined init with copy of DataModel.Error(v21, v18, MEMORY[0x277D82DB0]);
    v24 = type metadata accessor for ARCamera.TrackingState.Reason();
    v25 = (*(*(v24 - 8) + 48))(v18, 2, v24);
    outlined destroy of DataModel.Error(v18, v23);
    if (v25 != 2)
    {
      return outlined destroy of DataModel.Error(v21, MEMORY[0x277D82DB0]);
    }

    v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastDynamicVolumeUpdateTime;
    if (a2 - *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastDynamicVolumeUpdateTime) <= 0.1)
    {
      return outlined destroy of DataModel.Error(v21, MEMORY[0x277D82DB0]);
    }

    v39 = v2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.updateDynamicScanVolume(in:at:));
    v28 = v27;
    type metadata accessor for RangefinderManager();
    dispatch thunk of ARView.scene.getter();
    static RangefinderManager.raycastOntoScene(clipSpacePoint:scene:maxDistance:)(v6, v28);

    v29 = v40;
    if ((*(v40 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v6, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
      return outlined destroy of DataModel.Error(v21, MEMORY[0x277D82DB0]);
    }

    (*(v29 + 32))(v10, v6, v7);
    CollisionCastHit.distance.getter();
    if (v30 < 0.25 || v30 >= 2.0 || (dispatch thunk of ARView.scene.getter(), specialized static RangefinderManager.worldRayThrough(clipSpacePoint:scene:)(v42, v28), , (v43 & 1) != 0))
    {
      (*(v29 + 8))(v10, v7);
      return outlined destroy of DataModel.Error(v21, MEMORY[0x277D82DB0]);
    }

    CollisionCastHit.distance.getter();
    v32 = v31;
    CollisionCastHit.position.getter();
    v41 = v33;
    CollisionCastHit.normal.getter();
    v38 = v34;
    (*(v29 + 8))(v10, v7);
    v35 = v39;
    if (*(v39 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator))
    {
      v36 = v32 * 0.125;
      v37.i64[0] = vaddq_f32(v41, vmulq_n_f32(v38, v36 + -0.005)).u64[0];
      v37.i64[1] = COERCE_UNSIGNED_INT(v41.f32[2] + vmuls_lane_f32(v36 + -0.005, v38, 2));
      v41 = v37;

      DynamicScanVolumeEstimator.addSphere(sphere:mass:time:)(v41, v36, 0.1, a2);
      v35 = v39;
    }

    result = outlined destroy of DataModel.Error(v21, MEMORY[0x277D82DB0]);
    *(v35 + v26) = a2;
  }

  return result;
}

uint64_t DataModel.updateLatestCoveragePointCloud(pointCloud:pose:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a1;
  v46 = a2;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = type metadata accessor for CoveragePointCloud(0);
  v9 = v8 - 8;
  v40 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v42 = v3;
  v43 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  swift_beginAccess();
  v48 = *(v5 + 16);
  v41 = v4;
  v48(v7, v3 + v15, v4);
  Atomic.wrappedValue.getter();
  v47 = *(v5 + 8);
  v49 = v5 + 8;
  v47(v7, v4);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v12, &v39 - v17, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v19 = *(v9 + 28);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v39 - v21;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v12[v19], &v39 - v21, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v23 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = *(v9 + 28);
  v25 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  (*(*(v25 - 8) + 56))(&v14[v24], 1, 1, v25);
  v26 = v18;
  v27 = v42;
  outlined assign with take of Cancellable?(v26, v14, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v28 = v22;
  v29 = v47;
  v30 = v41;
  outlined assign with take of Cancellable?(v28, &v14[v24], &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudV_s5NeverOytTg5033_s19_RealityKit_SwiftUI18Coverageij26V7updated05pointG04poseAC6c4OC20efg2C5H27V0fG0VSg_AK0M0VSgtFyAMXEfU_01_mn1_O2UI0qiJ0VTf1cn_n(v45, v14);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV0E0V_s5NeverOytTg5069_s19_RealityKit_SwiftUI18CoveragePointCloudV7updated05pointG04poseAC6c4OC20efg2C5H28V0fG0VSg_AK0M0VSgtFyAPXEfU0_01_kl1_M2UI0opQ0VTf1cn_n(v46, v14);
  outlined destroy of DataModel.Error(v12, type metadata accessor for CoveragePointCloud);
  v31 = CoveragePointCloud.isValid()();
  v32 = v48;
  v33 = v43;
  if (!v31)
  {
    goto LABEL_6;
  }

  v46 = v5 + 16;
  outlined init with copy of DataModel.Error(v14, v12, type metadata accessor for CoveragePointCloud);
  swift_beginAccess();
  v34 = v33;
  Atomic.wrappedValue.setter();
  swift_endAccess();
  v35 = *(v27 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_currentSegmentID);
  v36 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  v37 = *(v27 + v36);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + v36) = v37;
  if (result)
  {
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
  v37 = result;
  *(v27 + v36) = result;
  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v35 < v37[2])
  {
    outlined assign with copy of CoveragePointCloud(v14, v37 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35, type metadata accessor for CoveragePointCloud);
    *(v27 + v36) = v37;
    swift_endAccess();
    v32 = v48;
    v33 = v34;
    v29 = v47;
LABEL_6:
    v32(v7, v27 + v33, v30);
    Atomic.wrappedValue.getter();
    v29(v7, v30);
    return outlined destroy of DataModel.Error(v14, type metadata accessor for CoveragePointCloud);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t DataModel.onFrameUpdate(frame:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ARCamera.TrackingState();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
    {
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
      {
        DataModel.onFrameUpdateInObjectMode(frame:)(a1);
      }

      else
      {
        DataModel.onFrameUpdateInFreeformMode(frame:)();
      }
    }

    v13 = type metadata accessor for ObjectCaptureSession.Frame.Camera();
    v14 = *(v13 - 8);
    MEMORY[0x28223BE20](v13);
    v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
    ObjectCaptureSession.Frame.camera.getter();
    v17 = type metadata accessor for CameraTrackingState();
    MEMORY[0x28223BE20](v17 - 8);
    v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
    ObjectCaptureSession.Frame.Camera.trackingState.getter();
    (*(v14 + 8))(v16, v13);
    ARCamera.TrackingState.init(fromInternal:)(v19, v6);
    v20 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
    v21 = *(v20 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = &v28[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    MEMORY[0x28223BE20](v22);
    v26 = &v28[-v25];
    ObjectCaptureSession.Frame.feedback.getter();
    DataModel.filterFrameFeedback(feedback:)(v26, v24);
    v27 = *(v21 + 8);
    v27(v26, v20);
    DataModel.updateFeedback(frameFeedback:arCameraFeedback:)(v24, v6);
    v27(v24, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v29);

    if (v29 == 1)
    {
      DataModel.updateDebugState(frame:)();
    }

    return outlined destroy of DataModel.Error(v6, MEMORY[0x277D82DB0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARCamera.TrackingState.init(fromInternal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ARCamera.TrackingState.Reason();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CameraTrackingState();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (MEMORY[0x277D00428] && v12 == *MEMORY[0x277D00428])
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v11, v8);
    v13 = type metadata accessor for CameraTrackingState.Reason();
    v14 = *(v13 - 8);
    MEMORY[0x28223BE20](v13);
    v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 32))(v16, v11, v13);
    v17 = (*(v14 + 88))(v16, v13);
    if (MEMORY[0x277D00400] && v17 == *MEMORY[0x277D00400])
    {
      v18 = MEMORY[0x277D82D90];
    }

    else if (MEMORY[0x277D00410] && v17 == *MEMORY[0x277D00410])
    {
      v18 = MEMORY[0x277D82DA0];
    }

    else if (MEMORY[0x277D00418] && v17 == *MEMORY[0x277D00418])
    {
      v18 = MEMORY[0x277D82DA8];
    }

    else
    {
      if (!MEMORY[0x277D00408] || v17 != *MEMORY[0x277D00408])
      {
        (*(v5 + 104))(v7, *MEMORY[0x277D82DA8], v4);
        (*(v14 + 8))(v16, v13);
        goto LABEL_23;
      }

      v18 = MEMORY[0x277D82D98];
    }

    (*(v5 + 104))(v7, *v18, v4);
LABEL_23:
    (*(v5 + 32))(a2, v7, v4);
    v19 = 0;
    return (*(v5 + 56))(a2, v19, 2, v4);
  }

  if (MEMORY[0x277D003F8] && v12 == *MEMORY[0x277D003F8])
  {
    (*(v9 + 8))(a1, v8);
    v19 = 1;
    return (*(v5 + 56))(a2, v19, 2, v4);
  }

  if (MEMORY[0x277D00420] && v12 == *MEMORY[0x277D00420])
  {
    (*(v9 + 8))(a1, v8);
    v19 = 2;
    return (*(v5 + 56))(a2, v19, 2, v4);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void DataModel.onFrameUpdateInObjectMode(frame:)(unint64_t a1)
{
  v152.n128_u64[0] = a1;
  v1 = type metadata accessor for DataModel.State(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v151.n128_u64[0] = &v136 - v6;
  MEMORY[0x28223BE20](v5);
  v150.n128_u64[0] = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v136 - v10;
  v12 = type metadata accessor for CoveragePointCloud(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v140.i64[0] = &v136 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v20 = static OS_dispatch_queue.main.getter();
  v21 = *(v18 + 104);
  v143 = *MEMORY[0x277D85200];
  v144 = v18 + 104;
  v142 = v21;
  v21(v20);
  v22 = _dispatchPreconditionTest(_:)();
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v146 = v20;
  v148.i64[0] = v17;
  v147 = v23;
  v141 = v24;
  v24(v20, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_92;
  }

  v149.n128_u64[0] = v4;
  v25 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  v153 = v15;
  if (v25)
  {
    v26 = type metadata accessor for ObjectCaptureSession.State();
    v138.n128_u64[0] = &v136;
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x28223BE20](v26);
    v139.i64[0] = v25;
    v29 = dispatch thunk of ObjectCaptureSession.state.getter();
    MEMORY[0x28223BE20](v29);
    v30 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 104))(v30, *MEMORY[0x277D00480], v26);
    lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.State and conformance ObjectCaptureSession.State, MEMORY[0x282217668], MEMORY[0x282217678]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *(v27 + 8);
    v32(v30, v26);
    v32(v30, v26);
    if (v31)
    {
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
      MEMORY[0x28223BE20](v33 - 8);
      v35 = &v136 - v34;
      ObjectCaptureSession.Frame.pointCloud.getter();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      MEMORY[0x28223BE20](v36 - 8);
      v38 = &v136 - v37;
      ObjectCaptureSession.Frame.object.getter();
      v39 = v140.i64[0];
      DataModel.updateLatestCoveragePointCloud(pointCloud:pose:)(v35, v38, v140.i64[0]);

      outlined destroy of PerspectiveCameraComponent?(v38, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      outlined destroy of PerspectiveCameraComponent?(v35, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
      outlined destroy of DataModel.Error(v39, type metadata accessor for CoveragePointCloud);
    }
  }

  v40 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v41 = v154;
  swift_beginAccess();
  (*(v9 + 16))(v11, v41 + v40, v8);
  Atomic.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v150.n128_u64[0];
  static Published.subscript.getter(v150.n128_u64[0]);

  v8 = type metadata accessor for DataModel.Error(0);
  v17 = *(v8 - 8);
  v43 = *(v17 + 56);
  v44 = v151.n128_u64[0];
  v43(v151.n128_u64[0], 5, 8, v8);
  LOBYTE(v40) = specialized static DataModel.State.== infix(_:_:)(v42, v44);
  outlined destroy of DataModel.Error(v44, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v42, type metadata accessor for DataModel.State);
  if (v40)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    MEMORY[0x28223BE20](v45 - 8);
    v47 = &v136 - v46;
    ObjectCaptureSession.Frame.object.getter();
    v48 = type metadata accessor for ObjectCaptureSession.Frame.Object();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v47, 1, v48) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v47, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    }

    else
    {
      ObjectCaptureSession.Frame.Object.boundingBox.getter();
      v151 = v62;
      v150 = v63;
      v140 = v64;
      v139 = v65;
      (*(v49 + 8))(v47, v48);
      if (!*(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
      {
        goto LABEL_107;
      }

      DetectModeBoxModel.onDetectedBoundingBox(box:)(v66);
    }

    v23 = v153;
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v42);

  v43(v44, 6, 8, v8);
  v50 = specialized static DataModel.State.== infix(_:_:)(v42, v44);
  outlined destroy of DataModel.Error(v44, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v42, type metadata accessor for DataModel.State);
  v23 = v153;
  if ((v50 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!CoveragePointCloud.isValid()())
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  v51 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);
  if (!v51)
  {
    goto LABEL_109;
  }

  v52.n128_f64[0] = CoveragePointCloud.bboxWorld.getter();
  v151 = v52;
  v150 = v53;
  v140 = v54;
  v139 = v55;
  v56 = static OS_dispatch_queue.main.getter();
  v57 = v146;
  *v146 = v56;
  v58 = v148.i64[0];
  v142(v57, v143, v148.i64[0]);
  v59 = _dispatchPreconditionTest(_:)();
  v141(v57, v58);
  if (v59)
  {
    LOBYTE(v157[0]) = 0;
    v60 = v150;
    *(v51 + 144) = v151;
    *(v51 + 160) = v60;
    v61 = v139;
    *(v51 + 176) = v140;
    *(v51 + 192) = v61;
    *(v51 + 208) = 0;
    CaptureModeBoxModel.updateCurrentEntityTransform()();

    goto LABEL_21;
  }

  __break(1u);
LABEL_96:
  for (i = __CocoaSet.count.getter(); ; i = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = v59 & 0xC000000000000001;

    v119 = 0;
    while (1)
    {
      if (i == v119)
      {

        if (*(v17 + 88))
        {
          goto LABEL_110;
        }

        v128 = *(v17 + 72);
        v129 = *(v17 + 80);
        v127 = v153;
        if ((v128 & 0xC000000000000001) == 0)
        {
          if ((v129 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v129 < *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v130 = *(v128 + 8 * v129 + 32);

LABEL_78:
            v131 = *(v130 + 48);

            if (v131 <= 1)
            {
              goto LABEL_88;
            }

LABEL_79:
            if (CaptureCircle.isAnimationFinished.getter())
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter(&v155);

              if (v155)
              {
                outlined destroy of DataModel.Error(v127, type metadata accessor for CoveragePointCloud);

                return;
              }

              if (*(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
              {
                SoundManager.playCompletionSound(volume:)(1.0);
              }

              if (one-time initialization token for logger != -1)
              {
LABEL_101:
                swift_once();
              }

              v132 = type metadata accessor for Logger();
              __swift_project_value_buffer(v132, logger);
              v133 = Logger.logObject.getter();
              v134 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v133, v134))
              {
                v135 = swift_slowAlloc();
                *v135 = 0;
                _os_log_impl(&dword_23B824000, v133, v134, ">> Capture Dial is fully closed, setting userCompletedSegmentCaptureCircle to true!", v135, 2u);
                MEMORY[0x23EEB0B70](v135, -1, -1);
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v155 = 1;

              static Published.subscript.setter();
            }

LABEL_88:

            v109 = type metadata accessor for CoveragePointCloud;
            v110 = v127;
LABEL_89:
            outlined destroy of DataModel.Error(v110, v109);
            return;
          }

          __break(1u);
          goto LABEL_101;
        }

        v130 = MEMORY[0x23EEAFC40](v129, v128);

        goto LABEL_78;
      }

      if (v23)
      {
        v120 = MEMORY[0x23EEAFC40](v119, v59);
        if (__OFADD__(v119, 1))
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      if (v119 >= *(v57 + 16))
      {
        break;
      }

      if (__OFADD__(v119, 1))
      {
        goto LABEL_58;
      }

LABEL_54:
      v121 = *(v120 + 36);

      ++v119;
      if ((v121 & 1) == 0)
      {
LABEL_71:

        v127 = v153;
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_94:
      swift_once();
LABEL_18:
      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, logger);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_23B824000, v68, v69, "Invalid capturePointCloud!  Not updating box...", v70, 2u);
        MEMORY[0x23EEB0B70](v70, -1, -1);
      }

LABEL_21:
      DataModel.getCurrentlySelectedBoundingBox()(v157);
      if ((v158 & 1) == 0)
      {
        v71 = *(v154 + 16);
        if (v71)
        {
          v151 = v157[0];
          v150 = v157[1];
          v140 = v157[2];
          v139 = v157[3];
          v72 = v71;
          dispatch thunk of ARView.cameraTransform.getter();
          v138 = v73;
          v137 = v74;
          v136 = v75;

          *v159.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v136, v137, v138);
          v160 = __invert_f4(v159);
          v76 = specialized static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:)(1, v151, v150, v140, v139, v160.columns[0], v160.columns[1], v160.columns[2], v160.columns[3]);
          v78 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
          if (v78)
          {
            v79 = v76;
            v80 = v77;
            v81 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_depthHazeStartPercent);

            v82 = static OS_dispatch_queue.main.getter();
            v83 = v146;
            *v146 = v82;
            v84 = v148.i64[0];
            v142(v83, v143, v148.i64[0]);
            v85 = _dispatchPreconditionTest(_:)();
            v141(v83, v84);
            if ((v85 & 1) == 0)
            {
              continue;
            }

            *(v78 + 120) = v79 + (v81 * (v80 - v79));
            *(v78 + 124) = v80;

            break;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      break;
    }

    if (CoveragePointCloud.isValid()())
    {
      break;
    }

LABEL_39:
    swift_getKeyPath();
    swift_getKeyPath();
    v103 = v149.n128_u64[0];
    static Published.subscript.getter(v149.n128_u64[0]);

    if ((*(v17 + 48))(v103, 8, v8) != 6)
    {
      outlined destroy of DataModel.Error(v23, type metadata accessor for CoveragePointCloud);
      v109 = type metadata accessor for DataModel.State;
      v110 = v103;
      goto LABEL_89;
    }

    outlined destroy of DataModel.Error(v103, type metadata accessor for DataModel.State);
    v17 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
    if (!v17)
    {
      v109 = type metadata accessor for CoveragePointCloud;
      v110 = v23;
      goto LABEL_89;
    }

    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    MEMORY[0x28223BE20](v104 - 8);
    v106 = &v136 - v105;

    ObjectCaptureSession.Frame.object.getter();
    v107 = type metadata accessor for ObjectCaptureSession.Frame.Object();
    v108 = *(v107 - 8);
    if ((*(v108 + 48))(v106, 1, v107) == 1)
    {
      outlined destroy of DataModel.Error(v153, type metadata accessor for CoveragePointCloud);

      outlined destroy of PerspectiveCameraComponent?(v106, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      return;
    }

    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v152 = v111;
    v151 = v112;
    v150 = v113;
    v149 = v114;
    (*(v108 + 8))(v106, v107);
    v115 = *(v154 + 16);
    if (!v115)
    {
      goto LABEL_108;
    }

    v116 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
    v117 = v115;
    CaptureCircle.update(arView:boundingBoxWorld:time:)(v117, v152, v151, v150, v149, v116);

    if (*(v17 + 24) != 1)
    {
LABEL_59:
      swift_beginAccess();
      v122 = *(v17 + 72);
      if (v122 >> 62)
      {
        v123 = __CocoaSet.count.getter();
      }

      else
      {
        v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v122 & 0xC000000000000001;

      v124 = 0;
      while (v123 != v124)
      {
        if (v23)
        {
          v125 = MEMORY[0x23EEAFC40](v124, v122);
          if (__OFADD__(v124, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v124 >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

          if (__OFADD__(v124, 1))
          {
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        v126 = *(v125 + 36);

        ++v124;
        if ((v126 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      v127 = v153;
      goto LABEL_79;
    }

    swift_beginAccess();
    v59 = *(v17 + 72);
    v57 = v59 & 0xFFFFFFFFFFFFFF8;
    if (v59 >> 62)
    {
      goto LABEL_96;
    }
  }

  DataModel.getDeviceOrientationCorrectedReticleAimVector()();
  v87 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v156);

  if (!v156[0])
  {
    goto LABEL_104;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v156);

  v88 = v156[0];
  if (v156[0])
  {
    v89 = *(v154 + 16);
    if (v89)
    {
      v90 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime;
      v91 = v154;
      v92 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
      v93 = v89;
      dispatch thunk of ARView.cameraTransform.getter();
      v151 = v94;
      v150 = v95;
      v148 = v96;

      v97 = *(v91 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
      v98 = *(v91 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
      v99 = 1.0;
      if (v98)
      {
        v99 = *(v98 + 136);
      }

      if (v99 <= 0.3)
      {
        v99 = 0.3;
      }

      if (v99 <= 1.0)
      {
        v100 = v99;
      }

      else
      {
        v100 = 1.0;
      }

      CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:)(v23, v97, v92, v151, v150, v148, v87, v100);

      v101 = *(v154 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
      if (v101)
      {
        *&v101[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime] = *(v154 + v90);
        v102 = v101;
        FullscreenCoveragePointsRenderer.updateInternal()();
      }

      goto LABEL_39;
    }
  }

  else
  {
LABEL_105:
    __break(1u);
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
}

void DataModel.startFreeformPulseIfNeeded(at:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2)
  {
    return;
  }

  v2 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  if (v2)
  {
    v9 = one-time initialization token for logger;

    if (v9 == -1)
    {
LABEL_5:
      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, logger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = a1;
        _os_log_impl(&dword_23B824000, v11, v12, "Starting a new area cloud pulse animation at %f ... advancing the mesh manager state.", v13, 0xCu);
        MEMORY[0x23EEB0B70](v13, -1, -1);
      }

      os_unfair_lock_lock((*(v2 + 72) + 16));
      FreeformMeshManager.advanceWithRemoval()();
      os_unfair_lock_unlock((*(v2 + 72) + 16));

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23B824000, v15, v16, "Expected to start a new area cloud pulse animation, but mesh manager wasn't found!", v17, 2u);
    MEMORY[0x23EEB0B70](v17, -1, -1);
  }
}

void DataModel.computeFreeformBoundingBoxWorld()(__n128 *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  if (v3 && (v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator)) != 0)
  {
    v5 = *(v4 + 18);

    if (v5 == 1)
    {
      DataModel.computeGravityAlignedBoxWorld()(&v54);
    }

    else
    {
      DataModel.computeAxisAlignedBoxWorld()(&v54);
    }

    v7 = v56.i64[1];
    v6 = v56.i64[0];
    if (v57)
    {
      v46 = v55;
      v50 = v54;

      v10 = v46;
      v8 = v50;
      v9 = 1;
    }

    else
    {
      v47 = v55;
      v51 = v54;
      if (*(v3 + 64))
      {

        v10 = v47;
        v8 = v51;
        v9 = 0;
      }

      else
      {
        v11 = *(v3 + 36);
        v35 = v56;
        *v12.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v56, v55, v54);
        v38 = v12;
        v39 = v13;
        v41 = v14;
        v43 = v15;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.computeFreeformBoundingBoxWorld());
        v36 = v16;
        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23B91A6E0;
        *(inited + 32) = vcvt_f32_f64(v36);
        *(inited + 40) = v18;
        *(inited + 44) = 1065353216;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
        v37 = v20;
        swift_setDeallocating();
        v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v37.f32[0]), v39, *v37.f32, 1), v41, v37, 2), v43, v37, 3);
        if (v21.f32[1] >= v11)
        {

          v9 = 0;
          v10 = v47;
          v8 = v51;
        }

        else
        {
          v22 = v11 - v21.f32[1];
          v23.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v35, v47, v51);
          v48 = v24;
          v52 = v23;
          v42 = v26;
          v44 = v25;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DataModel.computeFreeformBoundingBoxWorld());
          specialized static BoundingBoxHelpers.stretchedBoundingBox(box:axis:delta:)(v52, v48, v44, v42, v27, -v22);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(&outlined read-only object #2 of DataModel.computeFreeformBoundingBoxWorld());
          v40 = v28;
          v30 = v29;
          v31 = swift_initStackObject();
          *(v31 + 16) = xmmword_23B91A6E0;
          *(v31 + 32) = vcvt_f32_f64(v40);
          *(v31 + 40) = v30;
          *(v31 + 44) = 1065353216;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v31);
          swift_setDeallocating();
          v32.n128_f64[0] = Transform.init(matrix:)();
          v49 = v33;
          v53 = v32;
          v45 = v34;

          v10 = v49;
          v8 = v53;
          v9 = 0;
          v7 = *(&v45 + 1);
          v6 = v45;
        }
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = 1;
    v10 = 0uLL;
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2].n128_u64[0] = v6;
  a1[2].n128_u64[1] = v7;
  a1[3].n128_u8[0] = v9;
}

void DataModel.computeAxisAlignedBoxWorld()(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  v3 = 0uLL;
  if (v2)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);
      if (v4 && (*(v4 + 160) & 1) == 0)
      {
        v5 = a1;

        *v7.i64 = Ellipsoid.computeAABB()();
LABEL_9:
        specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v6, v7, v8);
        *&v12 = Transform.init(matrix:)();
        v17 = v13;
        v19 = v12;
        v15 = v14;

        v11 = v15;
        v10 = v17;
        v3 = v19;
        v9 = 0;
        a1 = v5;
        goto LABEL_10;
      }
    }

    else if ((v2[4].i8[0] & 1) == 0)
    {
      v5 = a1;
      v18 = v2[2];
      v16 = v2[3];

      v8 = v16;
      v7 = v18;
      goto LABEL_9;
    }
  }

  v9 = 1;
  v10 = 0uLL;
  v11 = 0uLL;
LABEL_10:
  *a1 = v3;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
}

void DataModel.computeGravityAlignedBoxWorld()(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  v3 = 0uLL;
  if (v2)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);
      if (v4 && (*(v4 + 160) & 1) == 0)
      {
        v5 = a1;
        v3 = Ellipsoid.gravityAlignedBox.getter();
        a1 = v5;
LABEL_9:
        v8 = 0;
        goto LABEL_10;
      }
    }

    else if ((v2[4].i8[0] & 1) == 0)
    {
      v17 = v2[2];
      v15 = v2[3];
      v9 = a1;

      specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v10, v17, v15);
      v11.n128_f64[0] = Transform.init(matrix:)();
      v16 = v12;
      v18 = v11;
      v14 = v13;

      v7 = v14;
      v6 = v16;
      v3 = v18;
      a1 = v9;
      goto LABEL_9;
    }
  }

  v8 = 1;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_10:
  *a1 = v3;
  a1[1] = v6;
  a1[2] = v7;
  a1[3].n128_u8[0] = v8;
}

void DataModel.onFrameUpdateInFreeformMode(frame:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v5 = static OS_dispatch_queue.main.getter();
  v7 = *MEMORY[0x277D85200];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  v9 = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v65.n128_u64[0] = v8;
  v11 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  if (!v11)
  {
    return;
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  DataModel.computeFreeformBoundingBoxWorld()(v67);
  if ((v68 & 1) == 0)
  {
    *v12.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v67[2], v67[1], v67[0]);
    v61 = v12;
    v60 = v13;
    v59 = v14;
    v58 = v15;
    specialized static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:)(0, v12, v13, v14, v15, 1.25);
    v16.n128_f64[0] = Transform.init(matrix:)();
    v64 = v16;
    v63 = v17;
    v62 = v18;
    swift_beginAccess();
    v19 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1;
    v53 = *(v11 + 16);
    if (v19 && (v20 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession)) != 0)
    {

      v21 = v20;
      dispatch thunk of ObjectCaptureSession.updateFreeformScanVolume(boundingBox:)();
    }

    else
    {
    }

    v57 = v6;
    *v22.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v62, v63, v64);
    v61 = v22;
    v60 = v23;
    v59 = v24;
    v58 = v25;
    v26 = *(v1 + 16);
    if (!v26)
    {
      goto LABEL_29;
    }

    v27 = v26;
    dispatch thunk of ARView.cameraTransform.getter();
    v56 = v28;
    v55 = v29;
    v54 = v30;

    *v71.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v54, v55, v56);
    v72 = __invert_f4(v71);
    v31 = specialized static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:)(1, v61, v60, v59, v58, v72.columns[0], v72.columns[1], v72.columns[2], v72.columns[3]);
    v33 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
    if (!v33)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v34 = v31;
    v35 = v32;
    v36 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_depthHazeStartPercent);

    *v5 = static OS_dispatch_queue.main.getter();
    (v65.n128_u64[0])(v5, v7, v2);
    v37 = _dispatchPreconditionTest(_:)();
    v10(v5, v2);
    if (v37)
    {
      *(v33 + 120) = v34 + (v36 * (v35 - v34));
      *(v33 + 124) = v35;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v69);

      if (v69[0].n128_u64[0])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v69);

        v38 = v69[0].n128_u64[0];
        if (v69[0].n128_u64[0])
        {
          v39 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
          v40.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v62, v63, v64);
          v65 = v40;
          v64 = v41;
          v63 = v42;
          v62 = v43;
          v44 = *(v1 + 16);
          if (v44)
          {
            v45 = v44;
            dispatch thunk of ARView.cameraTransform.getter();
            v61 = v46;
            v60 = v47;
            v59 = v48;

            v49 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
            v50 = 1.0;
            if (v49)
            {
              v50 = *(v49 + 136);
            }

            if (v50 <= 0.3)
            {
              v50 = 0.3;
            }

            if (v50 <= 1.0)
            {
              v51 = v50;
            }

            else
            {
              v51 = 1.0;
            }

            v66 = 0;
            v69[0] = v65;
            v69[1] = v64;
            v69[2] = v63;
            v69[3] = v62;
            v70 = 0;
            FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:)(v69, v53, v39, v61, v60, v59, v51, *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastShotTime), *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sphericalPulseDuration));

            goto LABEL_24;
          }

LABEL_33:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
}

uint64_t DataModel.updateFeedback(frameFeedback:arCameraFeedback:)(uint64_t a1, uint64_t a2)
{
  v129 = type metadata accessor for ARCamera.TrackingState();
  v123 = *(v129 - 8);
  v5 = MEMORY[0x28223BE20](v129);
  v111 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v126 = &v110 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v112 = &v110 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v110 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v110 - v14;
  MEMORY[0x28223BE20](v13);
  v114 = &v110 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v115 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v113 = &v110 - v20;
  MEMORY[0x28223BE20](v19);
  v122 = &v110 - v21;
  v22 = type metadata accessor for DataModel.State(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v120 = (&v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v110 - v26;
  MEMORY[0x28223BE20](v25);
  v130 = &v110 - v28;
  v128 = v2;
  v29 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  if (v29)
  {
    v30 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback + 8);

    v29(a1, a2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v29, v30);
  }

  v131 = a2;
  v132 = a1;
  v31 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v127 = &v110;
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
  v124 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v110 - v36;
  v38 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastFeedback;
  v39 = v128;
  swift_beginAccess();
  v125 = v38;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v39 + v38, v37, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
  if ((*(v32 + 48))(v37, 1, v31) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v37, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
  }

  else
  {
    (*(v32 + 32))(v34, v37, v31);
    DataModel.updateAutoCaptureState(oldFeedback:newFeedback:)(v34, v132);
    (*(v32 + 8))(v34, v31);
  }

  v40 = v130;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v40);

  v41 = type metadata accessor for DataModel.Error(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v127 = v41;
  v119 = v43;
  v118 = v42 + 56;
  (v43)(v27, 3, 8);
  v44 = specialized static DataModel.State.== infix(_:_:)(v40, v27);
  outlined destroy of DataModel.Error(v27, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v40, type metadata accessor for DataModel.State);
  v45 = v131;
  if (v44)
  {
LABEL_22:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v133);

    v69 = v126;
    if (LOBYTE(v133[0]) != 1 || (v70 = MEMORY[0x277D82DB0], v71 = v121, outlined init with copy of DataModel.Error(v45, v121, MEMORY[0x277D82DB0]), v72 = type metadata accessor for ARCamera.TrackingState.Reason(), v73 = (*(*(v72 - 8) + 48))(v71, 2, v72), outlined destroy of DataModel.Error(v71, v70), v73 == 2))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v133);

      if ((v133[0] & 1) != 0 || (v75 = MEMORY[0x277D82DB0], v76 = v116, outlined init with copy of DataModel.Error(v45, v116, MEMORY[0x277D82DB0]), v77 = type metadata accessor for ARCamera.TrackingState.Reason(), v78 = (*(*(v77 - 8) + 48))(v76, 2, v77), v74 = outlined destroy of DataModel.Error(v76, v75), v78 != 2))
      {
LABEL_41:
        MEMORY[0x28223BE20](v74);
        v108 = &v110 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v108, v132, v31);
        (*(v32 + 56))(v108, 0, 1, v31);
        v109 = v125;
        swift_beginAccess();
        outlined assign with take of Cancellable?(v108, v39 + v109, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
        return swift_endAccess();
      }
    }

    v79 = v69;
    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v120;
    static Published.subscript.getter(v120);

    v81 = v130;
    v82 = v127;
    v83 = v119;
    v119(v130, 6, 8, v127);
    v84 = specialized static DataModel.State.== infix(_:_:)(v80, v81);
    outlined destroy of DataModel.Error(v81, type metadata accessor for DataModel.State);
    if (v84)
    {
      outlined destroy of DataModel.Error(v80, type metadata accessor for DataModel.State);
    }

    else
    {
      v83(v81, 4, 8, v82);
      v85 = specialized static DataModel.State.== infix(_:_:)(v80, v81);
      outlined destroy of DataModel.Error(v81, type metadata accessor for DataModel.State);
      outlined destroy of DataModel.Error(v80, type metadata accessor for DataModel.State);
      if ((v85 & 1) == 0)
      {
        v87 = 0;
        v86 = v79;
        goto LABEL_33;
      }
    }

    v86 = v79;
    if (*(v39 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2)
    {
      v88 = MEMORY[0x277D82DB0];
      v89 = v131;
      v90 = v112;
      outlined init with copy of DataModel.Error(v131, v112, MEMORY[0x277D82DB0]);
      v91 = type metadata accessor for ARCamera.TrackingState.Reason();
      v87 = (*(*(v91 - 8) + 48))(v90, 2, v91) == 2;
      outlined destroy of DataModel.Error(v90, v88);
      goto LABEL_34;
    }

    v87 = 0;
LABEL_33:
    v89 = v131;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v133);

    if (v87 != LOBYTE(v133[0]))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, logger);
      outlined init with copy of DataModel.Error(v89, v86, MEMORY[0x277D82DB0]);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v133[0] = v96;
        *v95 = 67240450;
        *(v95 + 4) = v87;
        *(v95 + 8) = 2082;
        v97 = v31;
        v98 = MEMORY[0x277D82DB0];
        v99 = v32;
        outlined init with copy of DataModel.Error(v86, v111, MEMORY[0x277D82DB0]);
        v100 = String.init<A>(describing:)();
        v101 = v86;
        v103 = v102;
        outlined destroy of DataModel.Error(v101, v98);
        v104 = v100;
        v32 = v99;
        v39 = v128;
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, v133);

        *(v95 + 10) = v105;
        v31 = v97;
        _os_log_impl(&dword_23B824000, v93, v94, "Changing showCenterReticle to %{BOOL,public}d based on the ARCamera tracking state: %{public}s", v95, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v96);
        MEMORY[0x23EEB0B70](v96, -1, -1);
        MEMORY[0x23EEB0B70](v95, -1, -1);
      }

      else
      {

        v106 = outlined destroy of DataModel.Error(v86, MEMORY[0x277D82DB0]);
      }

      MEMORY[0x28223BE20](v106);
      *(&v110 - 2) = v39;
      *(&v110 - 8) = v87;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    goto LABEL_41;
  }

  v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback;
  swift_beginAccess();
  v47 = v122;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v39 + v46, v122, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  v48 = *(v123 + 48);
  v49 = v48(v47, 1, v129);
  v117 = v31;
  v50 = v49;
  outlined destroy of PerspectiveCameraComponent?(v47, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  v51 = v50 == 1;
  v31 = v117;
  if (v51)
  {
LABEL_10:
    v55 = v32;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, logger);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_23B824000, v57, v58, "ARCamera feedback changed! Poking the overlay...", v59, 2u);
      MEMORY[0x23EEB0B70](v59, -1, -1);
    }

    v60 = MEMORY[0x277D82DB0];
    v61 = v114;
    outlined init with copy of DataModel.Error(v45, v114, MEMORY[0x277D82DB0]);
    v62 = type metadata accessor for ARCamera.TrackingState.Reason();
    v63 = (*(*(v62 - 8) + 48))(v61, 2, v62);
    outlined destroy of DataModel.Error(v61, v60);
    v64 = *(v39 + 24);
    if (v64)
    {
      [v64 setActive:v63 != 2 animated:1];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v133[0]) = v63 != 2;

    static Published.subscript.setter();

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 67109120;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v133);

      *(v67 + 4) = LOBYTE(v133[0]);

      _os_log_impl(&dword_23B824000, v65, v66, "shouldShowARKitCoachingView = %{BOOL}d", v67, 8u);
      MEMORY[0x23EEB0B70](v67, -1, -1);
    }

    else
    {
    }

    v31 = v117;
    if (*(v39 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
    {

      DetectModeBoxModel.setVisible(_:)(v63 == 2);
    }

    v68 = v115;
    outlined init with copy of DataModel.Error(v45, v115, MEMORY[0x277D82DB0]);
    (*(v123 + 56))(v68, 0, 1, v129);
    swift_beginAccess();
    outlined assign with take of Cancellable?(v68, v39 + v46, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
    swift_endAccess();
    v32 = v55;
    goto LABEL_22;
  }

  v52 = v113;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v39 + v46, v113, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  result = v48(v52, 1, v129);
  if (result != 1)
  {
    v54 = static ARCamera.TrackingState.== infix(_:_:)();
    outlined destroy of DataModel.Error(v52, MEMORY[0x277D82DB0]);
    if (v54)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}
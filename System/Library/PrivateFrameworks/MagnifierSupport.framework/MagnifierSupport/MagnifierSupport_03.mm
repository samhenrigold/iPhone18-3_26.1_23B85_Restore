unint64_t sub_257BFB35C()
{
  result = qword_27F8F58F8;
  if (!qword_27F8F58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F58F8);
  }

  return result;
}

unint64_t sub_257BFB3B4()
{
  result = qword_281545AB0;
  if (!qword_281545AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545AB0);
  }

  return result;
}

unint64_t sub_257BFB40C()
{
  result = qword_281545AB8;
  if (!qword_281545AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545AB8);
  }

  return result;
}

uint64_t SpatialPersonDetection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SpatialPersonDetection.id.setter(uint64_t a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for SpatialPersonDetection(uint64_t a1)
{
  result = qword_27F8F5918;
  if (!qword_27F8F5918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 SpatialPersonDetection.dimensions.setter(__n128 a1)
{
  v2 = type metadata accessor for SpatialPersonDetection(0);
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

__n128 SpatialPersonDetection.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = (v4 + *(type metadata accessor for SpatialPersonDetection(0) + 24));
  *v5 = a1;
  v5[1] = a2;
  result = a4;
  v5[2] = a3;
  v5[3] = a4;
  return result;
}

uint64_t sub_257BFB7A4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728, &qword_257EDA690);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v133 = &v129 - v12;
  v135 = sub_257ECCCF0();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v13, v14, v15, v16);
  v130 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v132 = &v129 - v23;
  v24 = type metadata accessor for SpatialPersonDetection(0);
  v139 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v131 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsLandscape = UIInterfaceOrientationIsLandscape(a3);
  v31 = [a2 capturedImage];
  v32 = v31;
  if (IsLandscape)
  {
    Width = CVPixelBufferGetWidth(v31);

    v34 = [a2 capturedImage];
    Height = CVPixelBufferGetHeight(v34);
  }

  else
  {
    Width = CVPixelBufferGetHeight(v31);

    v34 = [a2 capturedImage];
    Height = CVPixelBufferGetWidth(v34);
  }

  v36 = Height;

  v37 = Width;
  v38 = v36;
  [a1 screenRect];
  switch(a3)
  {
    case 1:
      c = -v37;
      a = 0.0;
      b = v36;
      d = 0.0;
      tx = Width;
      ty = 0.0;
      break;
    case 2:
      b = -v38;
      a = 0.0;
      c = Width;
      d = 0.0;
      ty = v36;
      tx = 0.0;
      break;
    case 4:
      a = -v37;
      d = -v38;
      b = 0.0;
      tx = Width;
      ty = v36;
      c = 0.0;
      break;
    default:
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v52 = v42;
      CGAffineTransformMakeScale(&v146, Width, v36);
      v42 = v52;
      v41 = v51;
      v40 = v50;
      v39 = v49;
      a = v146.a;
      b = v146.b;
      c = v146.c;
      d = v146.d;
      tx = v146.tx;
      ty = v146.ty;
      break;
  }

  v146.a = a;
  v146.b = b;
  v146.c = c;
  v146.d = d;
  v146.tx = tx;
  v146.ty = ty;
  v149 = CGRectApplyAffineTransform(*&v39, &v146);
  x = v149.origin.x;
  y = v149.origin.y;
  v55 = v149.size.width;
  v56 = v149.size.height;
  CGRectGetMinX(v149);
  v150.origin.x = x;
  v150.origin.y = y;
  v150.size.width = v55;
  v150.size.height = v56;
  CGRectGetMinY(v150);
  v151.origin.x = x;
  v151.origin.y = y;
  v151.size.width = v55;
  v151.size.height = v56;
  v136.i64[0] = CGRectGetMaxX(v151);
  v152.origin.x = x;
  v152.origin.y = y;
  v152.size.width = v55;
  v152.size.height = v56;
  CGRectGetMaxY(v152);
  v140 = a1;
  [a1 position];
  v57.f32[0] = v57.i32[2] / -1000.0;
  v142 = v57;
  v58 = [a2 camera];
  [v58 transform];
  v144 = v60;
  v145 = v59;
  v137 = v61;
  v138 = v62;

  v63 = vmulq_f32(v145, 0);
  v145 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v145, 0, v144), 0, v137), 0, v138);
  v64 = vmlaq_f32(v63, 0, v144);
  v143 = vmlaq_f32(vaddq_f32(v137, v64), 0, v138);
  __asm { FMOV            V2.4S, #-1.0 }

  v144 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v63, _Q2, v144), 0, v137), 0, v138);
  v142 = vaddq_f32(v138, vmlaq_n_f32(v64, v137, v142.f32[0]));
  v70 = [a2 camera];
  v71 = sub_257ECFF00();
  v73 = v72;
  v75 = v74;

  if (v75 & 1) != 0 || (v76 = [a2 camera], v77 = sub_257ECFF00(), v79 = v78, v81 = v80, v76, (v81))
  {

    v82 = 1;
    v83 = v141;
    v84 = v24;
  }

  else
  {
    v85.i64[0] = v71;
    v85.i64[1] = v73;
    v86.i64[0] = v77;
    v86.i64[1] = v79;
    v87 = *&v77;
    *v88.f32 = vabd_f32(v71, v77);
    v89 = v88.f32[1];
    if (v88.f32[1] >= v88.f32[0])
    {
      v89 = v88.f32[0];
    }

    v88.i64[1] = LODWORD(v89);
    v84 = v24;
    v90 = v131;
    *&v131[*(v24 + 20)] = v88;
    v91 = vaddq_f32(v85, v86);
    v88.f32[0] = (*&v71 + v87) * 0.5;
    v143 = v88;
    v88.f32[0] = vmuls_lane_f32(0.5, *v91.f32, 1);
    v144 = v88;
    v88.f32[0] = vmuls_lane_f32(0.5, v91, 2);
    v145 = v88;
    v92 = [a2 camera];
    [v92 transform];
    v142 = v93;
    v138 = v94;
    v137 = v95;
    v136 = v96;

    v147.columns[0] = v142;
    v147.columns[1] = v138;
    v147.columns[2] = v137;
    v147.columns[3] = v136;
    v148 = __invert_f4(v147);
    v145 = vaddq_f32(v148.columns[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v148.columns[0], v143.f32[0]), v148.columns[1], v144.f32[0]), v148.columns[2], v145.f32[0]));
    v97 = ARCameraToDisplayRotation();
    v98 = __sincosf_stret(((v97 * 3.1416) / 180.0) * 0.5);
    v99 = vmulq_n_f32(xmmword_257ED6C00, v98.__sinval);
    v99.n128_u32[3] = LODWORD(v98.__cosval);
    *v100.i64 = MEMORY[0x259C72730](v99);
    v142 = v100;
    v143 = v101;
    v144 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A48, &qword_257EDB2C0);
    v103 = swift_allocObject();
    v104 = v143;
    v105 = v144;
    *(v103 + 32) = v142;
    *(v103 + 48) = v104;
    v106 = v145;
    *(v103 + 64) = v105;
    *(v103 + 80) = v106;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v107 = [a2 camera];
    [v107 transform];
    v129 = v108;
    v136 = v109;
    v137 = v110;
    v138 = v111;

    v112 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v143.f32[0]), v136, *v143.f32, 1), v137, v143, 2), v138, v143, 3);
    v113 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v144.f32[0]), v136, *v144.f32, 1), v137, v144, 2), v138, v144, 3);
    v114 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v145.f32[0]), v136, *v145.f32, 1), v137, v145, 2), v138, v145, 3);
    v115 = (v90 + *(v24 + 24));
    *v115 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v142.f32[0]), v136, *v142.f32, 1), v137, v142, 2), v138, v142, 3);
    v115[1] = v112;
    v115[2] = v113;
    v115[3] = v114;
    v116 = v140;
    v117 = [v140 uuid];
    if (v117)
    {
      v118 = v130;
      v119 = v117;
      sub_257ECCCD0();

      v120 = v134;
      v121 = *(v134 + 32);
      v122 = v133;
      v123 = v118;
      v124 = v135;
      v121(v133, v123, v135);
      (*(v120 + 56))(v122, 0, 1, v124);
      v125 = v132;
      v121(v132, v122, v124);
    }

    else
    {
      v120 = v134;
      v126 = v133;
      v124 = v135;
      (*(v134 + 56))(v133, 1, 1, v135);
      v125 = v132;
      sub_257ECCCE0();

      if ((*(v120 + 48))(v126, 1, v124) != 1)
      {
        sub_257BE4084(v126, &qword_27F8F5728, &qword_257EDA690);
      }
    }

    (*(v120 + 32))(v90, v125, v124);
    *(v90 + *(v84 + 28)) = v116;
    v127 = v141;
    sub_257BFE904(v90, v141);
    v83 = v127;
    v82 = 0;
  }

  return (*(v139 + 56))(v83, v82, 1, v84);
}

uint64_t SpatialPersonDetection.hash(into:)(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_257ECF400();
}

id sub_257BFC1BC(double a1)
{
  v3 = type metadata accessor for SpatialPersonDetection(0);
  sub_257ECFB60();
  v7 = [objc_opt_self() boxWithWidth:v4 height:v5 length:v6 chamferRadius:0.0];
  v8 = [objc_opt_self() nodeWithGeometry_];

  [v8 setOpacity_];
  v9 = [v8 geometry];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 firstMaterial];

    if (v11)
    {
      v12 = [v11 diffuse];

      v13 = [objc_opt_self() whiteColor];
      [v12 setContents_];
    }
  }

  [v8 setSimdWorldTransform_];
  sub_257ECCCA0();
  v14 = sub_257ECF4C0();

  [v8 setName_];

  v15 = [objc_opt_self() shapeWithNode:v8 options:0];
  v16 = [objc_opt_self() bodyWithType:2 shape:v15];

  [v8 setPhysicsBody_];
  v17 = [v8 physicsBody];
  if (v17)
  {
    v18 = v17;
    [v17 setCategoryBitMask_];
  }

  [v8 setCategoryBitMask_];
  return v8;
}

void *static SpatialPersonDetection.spatialize(_:frame:orientation:)(unint64_t a1, void *a2, uint64_t a3)
{
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5900, &qword_257EDAFF0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v29 - v10;
  v33 = type metadata accessor for SpatialPersonDetection(0);
  v30 = *(v33 - 8);
  v16 = MEMORY[0x28223BE20](v33, v12, v13, v14, v15);
  v32 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v19 = 0;
    v31 = a1 & 0xC000000000000001;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = (v30 + 48);
    v22 = MEMORY[0x277D84F90];
    v29 = a3;
    while (1)
    {
      if (v31)
      {
        v23 = a1;
        v24 = MEMORY[0x259C72E20](v19, a1, v16);
      }

      else
      {
        if (v19 >= *(v20 + 16))
        {
          goto LABEL_18;
        }

        v23 = a1;
        v24 = *(a1 + 8 * v19 + 32);
      }

      a1 = v24;
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_257BFB7A4(v24, v34, a3, v11);
      if ((*v21)(v11, 1, v33) == 1)
      {
        sub_257BE4084(v11, &qword_27F8F5900, &qword_257EDAFF0);
      }

      else
      {
        sub_257BFE904(v11, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_257BFDFAC(0, v22[2] + 1, 1, v22, &qword_27F8F5A40, &unk_257EDB2B0, type metadata accessor for SpatialPersonDetection);
        }

        v27 = v22[2];
        v26 = v22[3];
        if (v27 >= v26 >> 1)
        {
          v22 = sub_257BFDFAC((v26 > 1), v27 + 1, 1, v22, &qword_27F8F5A40, &unk_257EDB2B0, type metadata accessor for SpatialPersonDetection);
        }

        v22[2] = v27 + 1;
        sub_257BFE904(v32, v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27);
        a3 = v29;
      }

      a1 = v23;
      ++v19;
      if (v25 == i)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t SpatialPersonDetection.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257BFC7D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_257BFC860()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257BFC8E8(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_257ECF400();
}

uint64_t sub_257BFC96C(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

char *sub_257BFC9F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A20, &qword_257EDB288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFCB3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFCC70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A28, &unk_257EDD510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_257BFCDB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AA0, &qword_257EDB2C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFCF1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6960, &unk_257EDD3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_257BFD06C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69E0, &unk_257EDD470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_257BFD1BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_257BFD2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A70, &unk_257EDB190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFD468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5258, &qword_257ED9A98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFD574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_257BFD6B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A38, &unk_257EDD4F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFD7D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60, &unk_257EDB290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257BFD91C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6920, &unk_257EDD3B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0, &unk_257EDB120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257BFDA9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_257BFDBE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A10, &qword_257EDB270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A18, &qword_257EDB278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFDD2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6940, &qword_257EDD3D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_257BFDE70(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_257BFDFAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_257BFE188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69F0, &qword_257EDB1E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_257BFE28C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6980, &unk_257EDD400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FA6A0, &qword_257EDB150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFE3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E0, &qword_257EEF900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_257BFE4C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5960, &qword_257EDB158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_257BFE610(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_257BFE744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59C0, &qword_257EDB1E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s16MagnifierSupport22SpatialPersonDetectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SpatialPersonDetection(0);
  result = 0;
  v6 = vmovn_s32(vceqq_f32(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))));
  if (v6.i8[0] & 1) != 0 && (v6.i8[2] & 1) != 0 && (v6.i8[4])
  {
    v7 = *(v4 + 24);
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + v7 + 16), *(a2 + v7 + 16)), vceqq_f32(*(a1 + v7), *(a2 + v7))), vandq_s8(vceqq_f32(*(a1 + v7 + 32), *(a2 + v7 + 32)), vceqq_f32(*(a1 + v7 + 48), *(a2 + v7 + 48))))) >> 31;
  }

  return result;
}

uint64_t sub_257BFE904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialPersonDetection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BFE9B0(uint64_t a1)
{
  result = sub_257BFEA50(&qword_27F8F5908, type metadata accessor for SpatialPersonDetection, &protocol conformance descriptor for SpatialPersonDetection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_257BFEA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257BFEAC0(uint64_t a1)
{
  sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    sub_257BFEB74(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v3 <= 0x3F)
      {
        sub_257BFEC24();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257BFEB74(uint64_t a1)
{
  if (!qword_27F8F5928)
  {
    sub_257BFEBD0();
    v1 = sub_257ED0770();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F5928);
    }
  }
}

unint64_t sub_257BFEBD0()
{
  result = qword_27F8F5930;
  if (!qword_27F8F5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5930);
  }

  return result;
}

unint64_t sub_257BFEC24()
{
  result = qword_27F8F5938;
  if (!qword_27F8F5938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5938);
  }

  return result;
}

uint64_t sub_257BFEC80(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

unint64_t sub_257BFEE54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257C0234C(*a1);
  *a2 = result;
  return result;
}

void sub_257BFEF40()
{
  v1 = v0;
  v66.receiver = v0;
  v66.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v66, sel_viewDidLoad);
  v2 = [objc_opt_self() shared];
  v3 = [v2 doorAttributesClassifierProperties];

  if (v3)
  {
    *&v64 = 0xD000000000000017;
    *(&v64 + 1) = 0x8000000257EF93E0;
    v4 = [v3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v61 = v64;
    v62 = v65;
    if (!*(&v65 + 1))
    {

      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      return;
    }

    sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v60 = v1;
    v5 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAED0, &qword_257EDB558);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_257EDB2E0;
    *(v6 + 32) = 4;
    *&v61 = 0x746174536E65704FLL;
    *(&v61 + 1) = 0xE900000000000065;
    v7 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x746174536E65704FLL;
      *(&v61 + 1) = 0xE900000000000065;
      v8 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v8)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v9 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v9 = sub_257ECFF10();
    }

    v6[5] = v9;
    *(v6 + 48) = 5;
    *&v61 = 0x6570616853;
    *(&v61 + 1) = 0xE500000000000000;
    v10 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v10)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6570616853;
      *(&v61 + 1) = 0xE500000000000000;
      v11 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v11)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v12 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v12 = sub_257ECFF10();
    }

    v6[7] = v12;
    *(v6 + 64) = 0;
    *&v61 = 0x6863616F72707041;
    *(&v61 + 1) = 0xE800000000000000;
    v13 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v13)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6863616F72707041;
      *(&v61 + 1) = 0xE800000000000000;
      v14 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v14)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v15 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v15 = sub_257ECFF10();
    }

    v6[9] = v15;
    *(v6 + 80) = 3;
    *&v61 = 0x6874654D6E65704FLL;
    *(&v61 + 1) = 0xEA0000000000646FLL;
    v16 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    v59 = v5;
    if (v16)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6874654D6E65704FLL;
      *(&v61 + 1) = 0xEA0000000000646FLL;
      v17 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v17)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v18 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v18 = sub_257ECFF10();
    }

    v6[11] = v18;
    *(v6 + 96) = 6;
    *&v61 = 1702521171;
    *(&v61 + 1) = 0xE400000000000000;
    v19 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v19)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 1702521171;
      *(&v61 + 1) = 0xE400000000000000;
      v20 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v20)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v21 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v21 = sub_257ECFF10();
    }

    v6[13] = v21;
    *(v6 + 112) = 2;
    *&v61 = 0x646E6148726F6F44;
    *(&v61 + 1) = 0xEA0000000000656CLL;
    v22 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v22)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x646E6148726F6F44;
      *(&v61 + 1) = 0xEA0000000000656CLL;
      v23 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v23)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v24 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v24 = sub_257ECFF10();
    }

    v6[15] = v24;
    *(v6 + 128) = 7;
    *&v61 = 0x776F646E6957;
    *(&v61 + 1) = 0xE600000000000000;
    v25 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v25)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x776F646E6957;
      *(&v61 + 1) = 0xE600000000000000;
      v26 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v26)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v27 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v27 = sub_257ECFF10();
    }

    v6[17] = v27;
    *(v6 + 144) = 1;
    *&v61 = 0x726F6C6F43;
    *(&v61 + 1) = 0xE500000000000000;
    v28 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v28)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x726F6C6F43;
      *(&v61 + 1) = 0xE500000000000000;
      v29 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v29)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v30 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v30 = sub_257ECFF10();
    }

    v6[19] = v30;
    *(v6 + 160) = 8;
    *&v61 = 0x6C6169726574614DLL;
    *(&v61 + 1) = 0xE800000000000000;
    v31 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v31)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      *&v61 = 0x6C6169726574614DLL;
      *(&v61 + 1) = 0xE800000000000000;
      v32 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v32)
      {
LABEL_73:
        __break(1u);

        __break(1u);
        return;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v64, &v61);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v33 = v63;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      sub_257BE4084(&v61, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v33 = sub_257ECFF10();
    }

    v34 = v1;
    v57 = v3;
    v6[21] = v33;
    v35 = sub_257BE82F8(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAEE0, &qword_257EDB560);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = *(v35 + 16);
    if (v37)
    {
      v6 = sub_257C63E00(*(v35 + 16), 0, v36);
      v38 = sub_257C6764C(&v61, (v6 + 4), v37, v35);
      v39 = v61;

      sub_257C02520(v39);
      if (v38 != v37)
      {
        __break(1u);
        goto LABEL_63;
      }

      v34 = v1;
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
    }

    *&v61 = v6;
    v6 = 0;
    sub_257C01A64(&v61);
    v58 = v61;
    v40 = *(v61 + 16);
    if (v40)
    {
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v41 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes;
      v6 = (v58 + 40);
      do
      {
        v42 = *(v6 - 8);
        v43 = *v6;
        v44 = sub_257ECFF10();
        v45 = sub_257ECFF50();

        if ((v45 & 1) == 0)
        {
          swift_beginAccess();
          v46 = *&v34[v41];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v34[v41] = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = sub_257BFCEF4(0, *(v46 + 2) + 1, 1, v46);
            *&v34[v41] = v46;
          }

          v49 = *(v46 + 2);
          v48 = *(v46 + 3);
          if (v49 >= v48 >> 1)
          {
            v46 = sub_257BFCEF4((v48 > 1), v49 + 1, 1, v46);
          }

          *(v46 + 2) = v49 + 1;
          v46[v49 + 32] = v42;
          v34 = v60;
          *&v60[v41] = v46;
          swift_endAccess();
        }

        v6 += 2;
        --v40;
      }

      while (v40);
    }

    v50 = *&v34[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_tableView];
    [v50 setDataSource_];
    [v50 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v52 = sub_257ECF4C0();
    [v50 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v52];

    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    v53 = [v34 view];
    if (v53)
    {
      v54 = v53;
      [v53 addSubview_];

      v55 = [v34 view];
      v6 = v57;
      if (v55)
      {
        v56 = v55;

        sub_257EB6FD8(v56, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

        return;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }
}

void sub_257C001B4(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257C00454(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v12 = &v3[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_delegate];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  if (a2)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_257C00624(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v9 = &v1[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_delegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_257C00874(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  v7 = 0;
  if (!sub_257ECCEA0())
  {
    v7 = sub_257ECCE60();
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes;
  swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v2 + v8);
  if (v7 >= *(v9 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  LOBYTE(v7) = *(v9 + v7 + 32);
  v10 = [v6 textLabel];
  if (v10)
  {
    v11 = v10;
    sub_257BFEC80(v7);
    v12 = sub_257ECF4C0();

    [v11 setText_];
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_16;
  }

LABEL_8:
  swift_beginAccess();
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90, qword_257EDB420);
  sub_257ECFD50();

  v19 = sub_257C592D0(v7, v22);

  if (v19)
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v6 setAccessoryType_];
  return v6;
}

void sub_257C00CB4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v111 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF120();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECCE30();
  v20 = [a1 cellForRowAtIndexPath_];

  if (!v20)
  {
    return;
  }

  v21 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v21 animated:1];

  if (sub_257ECCEA0())
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_257ECCE60();
  }

  v23 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v24 = *(v2 + v23);
  if (v22 >= *(v24 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v105 = v12;
  v106 = v18;
  v108 = v5;
  v109 = v4;
  LODWORD(v2) = *(v24 + v22 + 32);
  if (qword_281544FE0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v107 = v11;
  v25 = qword_281548348;
  v26 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v104 = v26;
  v29 = v26[2];
  v116 = v27;
  v117 = v28;
  v118 = v29;
  v30 = qword_2815447E0;

  if (v30 != -1)
  {
    v31 = swift_once();
  }

  v36 = qword_2815447E8;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  *(&v100 - 2) = &v116;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90, qword_257EDB420);
  v37 = 0;
  sub_257ECFD50();

  v38 = v120;
  v39 = sub_257C592D0(v2, v120);
  v110 = v36;
  if (v39)
  {
    v101 = 0;
    v102 = v25;
    v40 = v20;
    v41 = *(v38 + 16);
    if (v41)
    {
      v42 = (v38 + 32);
      v43 = MEMORY[0x277D84F90];
      do
      {
        v47 = *v42++;
        v46 = v47;
        if (v47 != v2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_257BF2764(0, *(v43 + 16) + 1, 1);
            v43 = v116;
          }

          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_257BF2764((v44 > 1), v45 + 1, 1);
            v43 = v116;
          }

          *(v43 + 16) = v45 + 1;
          *(v43 + v45 + 32) = v46;
        }

        --v41;
      }

      while (v41);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

    sub_257ECC3F0();
    v20 = v40;
    [v40 setAccessoryType_];
    v25 = v102;
    v37 = v101;
  }

  else
  {
    [v20 setAccessoryType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5AA0, &unk_257EDB100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = v2;
    v116 = v38;
    sub_257EB0628(inited);
    v43 = v116;
  }

  v50 = v25 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
  v51 = (v105 + 8);
  if (*(v43 + 16))
  {
    swift_beginAccess();
    LOBYTE(v120) = 1;
  }

  else
  {
    swift_beginAccess();
    LOBYTE(v120) = 0;
  }

  v52 = v106;
  v53 = sub_257ECF110();
  MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
  *(&v100 - 2) = &v120;
  *(&v100 - 1) = v50;
  sub_257ECFD40();
  (*v51)(v52, v107);
  swift_endAccess();
  v58 = v111;
  sub_257ECD420();

  v59 = sub_257ECDA20();
  v60 = sub_257ECFBD0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v116 = v62;
    *v61 = 136315138;
    v63 = MEMORY[0x259C72340](v43, &type metadata for DoorAttribute);
    v107 = v37;
    v64 = v20;
    v65 = v58;
    v66 = v25;
    v68 = v67;

    v69 = sub_257BF1FC8(v63, v68, &v116);
    v25 = v66;

    *(v61 + 4) = v69;
    _os_log_impl(&dword_257BAC000, v59, v60, "New attributes: %s", v61, 0xCu);
    v70 = __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x259C74820](v62, -1, -1, v70);
    MEMORY[0x259C74820](v61, -1, -1);

    v71 = v65;
    v20 = v64;
    (*(v108 + 8))(v71, v109);
  }

  else
  {

    (*(v108 + 8))(v58, v109);
  }

  sub_257D52CC8(v43);

  v72 = swift_beginAccess();
  v73 = v25[16];
  v74 = v25[17];
  v75 = v25[18];
  v116 = v25[15];
  v117 = v73;
  v118 = v74;
  v119 = v75;
  MEMORY[0x28223BE20](v72, v76, v77, v78, v79);
  *(&v100 - 2) = &v116;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v80 = v113;
  if (v113)
  {
    v111 = v20;
    v81 = v112;
    v82 = swift_beginAccess();
    v83 = v25[12];
    v84 = v25[13];
    v112 = v25[11];
    v113 = v83;
    v114 = v84;
    MEMORY[0x28223BE20](v82, v85, v86, v87, v88);
    *(&v100 - 2) = &v112;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    if (*(v115 + 16))
    {
      sub_257C03F6C(v81, v80);
      v90 = v89;

      v91 = v111;
      if (v90)
      {

        v93 = v104[1];
        v94 = v104[2];
        v112 = *v104;
        v113 = v93;
        v114 = v94;
        MEMORY[0x28223BE20](v92, v95, v96, v97, v98);
        *(&v100 - 2) = &v112;

        sub_257ECFD50();

        v99 = sub_257D7430C();

        if ((v99 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v112) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for DoorAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DoorAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257C019A8()
{
  result = qword_27F8F5A80;
  if (!qword_27F8F5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5A80);
  }

  return result;
}

unint64_t sub_257C01A00()
{
  result = qword_27F8F5A88;
  if (!qword_27F8F5A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5A90, qword_257EDB420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5A88);
  }

  return result;
}

void sub_257C01A64(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C670CC(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = sub_257ED05F0();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 4);
      do
      {
        v11 = LOBYTE(v2[2 * v9 + 4]);
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAEF0, &qword_257EDB568);
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_257C01BC0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_257C01BC0(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_257C66E20(v9);
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_257C02148((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v16 = *v13;
      v15 = v13 + 32;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 16;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 16 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = *(v24 + 1);
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCB00(0, *(v9 + 2) + 1, 1, v9);
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v9 = sub_257BFCB00((v37 > 1), v38 + 1, 1, v9);
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v42 + 40];
        sub_257C02148((*a3 + 16 * v81), (*a3 + 16 * *&v9[16 * v42 + 32]), (*a3 + 16 * v82), v41);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_257C66E20(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        sub_257C66D94(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v8 - 16;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 16 * v8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v8;
      v30 += 16;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 3);
    *(v34 + 1) = *v34;
    *v34 = v32;
    *(v34 + 1) = v35;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_257C02148(char *__dst, char *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 16);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

unint64_t sub_257C0234C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_257C0235C()
{
  result = qword_2815458D8;
  if (!qword_2815458D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458D8);
  }

  return result;
}

uint64_t sub_257C023CC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C024BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257C02558(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_257C025A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_257C02618(uint64_t a1@<X8>)
{
  v2 = sub_257ECEA70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECC8C0();
  MEMORY[0x28223BE20](v10 - 8, v11, v12, v13, v14);
  sub_257C02858(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_257ECEAE0();
  v18 = v17;
  v20 = v19;
  v31 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v32 = v33;
  v22 = MFReaderFont.rawValue.getter();
  v24 = v23;
  (*(v3 + 104))(v9, *MEMORY[0x277CE0AC0], v2);
  MEMORY[0x259C71520](v22, v24, v9, 17.0);

  (*(v3 + 8))(v9, v2);
  v25 = sub_257ECEAC0();
  v27 = v26;
  LOBYTE(v24) = v28;
  v30 = v29;

  sub_257C0300C(v16, v18, v20 & 1);

  *a1 = v25;
  *(a1 + 8) = v27;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v30;
}

void sub_257C02858(uint64_t a1@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC0, &qword_257EDB660);
  MEMORY[0x28223BE20](v84, v3, v4, v5, v6);
  v83 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v81 = &v75 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC8, &qword_257EDB668);
  MEMORY[0x28223BE20](v82, v14, v15, v16, v17);
  v85 = &v75 - v18;
  v19 = sub_257ECC8C0();
  v87 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AD0, &qword_257EDB670);
  MEMORY[0x28223BE20](v26 - 8, v27, v28, v29, v30);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v39 = &v75 - v38;
  v88 = sub_257ECC8A0();
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v40, v41, v42, v43);
  v86 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46, v47, v48, v49);
  v89 = &v75 - v50;
  v51 = sub_257ECC950();
  MEMORY[0x28223BE20](v51 - 8, v52, v53, v54, v55);
  v56 = *v1;

  sub_257ECC940();
  sub_257ECC8D0();
  v57 = *(v1 + 40);
  v58 = sub_257D428AC();
  if (v57)
  {
    v59 = sub_257ECEDA0();

    v92[0] = v59;
    v80 = sub_257C0301C();
    sub_257ECC8E0();
    if (*(v1 + 8))
    {
      swift_getKeyPath();
      v92[0] = v56;
      sub_257C03070(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock, &unk_257EE9D38);
      sub_257ECCEE0();

      if ((*(v56 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) & 1) == 0 && (*(v56 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange) ^ *(v56 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 8)) >= 0x4000)
      {
        v87 = *(v87 + 16);
        (v87)(v25, a1, v19);
        v79 = sub_257C03070(&qword_27F8F5AE8, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
        sub_257ECC8B0();
        v60 = v88;
        v78 = *(v90 + 48);
        if (v78(v39, 1, v88) == 1)
        {
          sub_257BE4084(v39, &qword_27F8F5AD0, &qword_257EDB670);
        }

        else
        {
          v76 = *(v90 + 32);
          v77 = v90 + 32;
          (v76)(v89, v39, v60);
          (v87)(v25, a1, v19);
          sub_257ECC8B0();
          v61 = v60;
          if (v78(v32, 1, v60) == 1)
          {
            (*(v90 + 8))(v89, v60);
            sub_257BE4084(v32, &qword_27F8F5AD0, &qword_257EDB670);
          }

          else
          {
            v62 = v86;
            v76();
            sub_257C03070(&qword_27F8F5AF0, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
            v63 = v89;
            if (sub_257ECF440())
            {
              v64 = v63;
              v65 = v90;
              v66 = *(v90 + 16);
              v67 = v81;
              v66(v81, v64, v61);
              v68 = v84;
              v66((v67 + *(v84 + 48)), v62, v61);
              v69 = v83;
              sub_257C030B8(v67, v83);
              v87 = *(v68 + 48);
              v70 = v76;
              (v76)(v85, v69, v61);
              v71 = *(v65 + 8);
              v71(v69 + v87, v61);
              sub_257C03128(v67, v69);
              v72 = v85;
              (v70)(&v85[*(v82 + 36)], v69 + *(v68 + 48), v61);
              v71(v69, v61);
              v73 = sub_257D428AC();
              sub_257C03198();
              v74 = sub_257ECC8F0();
              v91 = v73;
              sub_257ECC960();
              v74(v92, 0);
              sub_257BE4084(v72, &qword_27F8F5AC8, &qword_257EDB668);
              v71(v86, v61);
              v71(v89, v61);
            }

            else
            {
              __break(1u);
            }
          }
        }
      }
    }
  }

  else
  {
    v92[0] = v58;
    sub_257C0301C();
    sub_257ECC8E0();
  }
}

double sub_257C0300C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_257C0301C()
{
  result = qword_27F8F5AD8;
  if (!qword_27F8F5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5AD8);
  }

  return result;
}

uint64_t sub_257C03070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257C030B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC0, &qword_257EDB660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C03128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC0, &qword_257EDB660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257C03198()
{
  result = qword_27F8F5AF8;
  if (!qword_27F8F5AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5AC8, &qword_257EDB668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5AF8);
  }

  return result;
}

uint64_t MAGCaptureEventHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC6E08(&unk_257EDB6B8, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t MAGCaptureEventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE8790(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_257C0334C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_257BE3DE0;

  return v7(a2);
}

uint64_t sub_257C03440(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return sub_257C0334C(a1, a2, v6);
}

Swift::Void __swiftcall MAGCaptureEventHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  v5 = sub_257C03F6C(countAndFlagsBits, object);
  v7 = v6;

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C093FC(&qword_27F8F5720, &qword_257EDA688);
    }

    sub_257C0746C(v5, v9);
    *(v2 + 16) = v9;
  }

  swift_endAccess();
}

uint64_t MAGCaptureEventHandler.send(_:)(_OWORD *a1)
{
  *(v2 + 88) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = *a1;

  return MEMORY[0x2822009F8](sub_257C036BC, 0, 0);
}

uint64_t sub_257C036BC()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 136) = v2;
  v3 = *(v2 + 32);
  *(v0 + 200) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 144) = v6;
    *(v0 + 152) = v8;
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = (*(v7 + 48) + v10);
    *(v0 + 160) = *v11;
    *(v0 + 168) = v11[1];
    v12 = (*(v7 + 56) + v10);
    v13 = *v12;
    *(v0 + 176) = v12[1];
    *(v0 + 64) = *(v0 + 120);

    sub_257ECC3F0();
    v17 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_257C038D8;

    return v17();
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_257C038D8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_257C03BEC;
  }

  else
  {

    v2 = sub_257C03A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_257C03A04(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 152);
  v4 = (*(v2 + 144) - 1) & *(v2 + 144);
  if (v4)
  {
    v5 = *(v2 + 136);
LABEL_7:
    *(v2 + 144) = v4;
    *(v2 + 152) = v3;
    v7 = (v3 << 10) | (16 * __clz(__rbit64(v4)));
    v8 = (*(v5 + 48) + v7);
    *(v2 + 160) = *v8;
    *(v2 + 168) = v8[1];
    v9 = (*(v5 + 56) + v7);
    v10 = *v9;
    *(v2 + 176) = v9[1];
    *(v2 + 64) = *(v2 + 120);

    sub_257ECC3F0();
    v13 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v2 + 184) = v11;
    *v11 = v2;
    v11[1] = sub_257C038D8;

    v13();
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 136);
      if (v6 >= (((1 << *(v2 + 200)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v12 = *(v2 + 8);

    v12();
  }
}

uint64_t sub_257C03BEC()
{
  v32 = v0;
  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];
  sub_257ECD4F0();

  sub_257BEE3F8(v3, v2);
  v4 = v1;
  v5 = sub_257ECDA20();
  v6 = sub_257ECFBE0();

  sub_257BEE3D0(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[13];
    v26 = v0[14];
    v25 = v0[12];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315650;
    v14 = sub_257BF1FC8(v8, v7, &v27);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_257ED02D0();

    v28 = 0x2065727574706143;
    v29 = 0xEF203A746E657645;
    v30 = v10;
    v31 = v9;
    v15 = MAGCaptureEvent.CaptureEventType.description.getter();
    MEMORY[0x259C72150](v15);

    v16 = sub_257BF1FC8(v28, v29, &v27);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v17 = sub_257ED0720();
    v19 = sub_257BF1FC8(v17, v18, &v27);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_257BAC000, v5, v6, "Handler=%s error handling event=%s. Error=%s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v13, -1, -1);
    MEMORY[0x259C74820](v12, -1, -1);

    (*(v11 + 8))(v26, v25);
  }

  else
  {
    v21 = v0[13];
    v20 = v0[14];
    v22 = v0[12];

    (*(v21 + 8))(v20, v22);
  }

  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t MAGCaptureEventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257C03F28(uint64_t a1)
{
  v2 = sub_257ED0260();

  return sub_257C046B4(a1, v2);
}

unint64_t sub_257C03F6C(uint64_t a1, uint64_t a2)
{
  sub_257ED07B0();
  sub_257ECF5D0();
  v4 = sub_257ED0800();

  return sub_257C0477C(a1, a2, v4);
}

unint64_t sub_257C04010(uint64_t a1)
{
  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v2 = sub_257ED0800();

  return sub_257C06578(a1, v2);
}

unint64_t sub_257C040A0(uint64_t a1)
{
  v2 = sub_257ED07A0();

  return sub_257C04DB0(a1, v2);
}

unint64_t sub_257C04110(uint64_t a1)
{
  sub_257ED07B0();
  type metadata accessor for CFString(0);
  sub_257C09E2C(&qword_27F8F5B00, type metadata accessor for CFString, &unk_257ED7C80);
  sub_257ECD1F0();
  v2 = sub_257ED0800();

  return sub_257C05348(a1, v2);
}

unint64_t sub_257C041C4(uint64_t a1)
{
  v1 = a1;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  v2 = sub_257ED0800();
  return sub_257C05454(v1, v2);
}

unint64_t sub_257C04244(uint64_t a1)
{
  sub_257ECF500();
  v2 = sub_257ECF4C0();

  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v3 = sub_257ED0800();

  return sub_257C057F4(a1, v3);
}

unint64_t sub_257C042F8(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257C09E2C(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_257ECF3F0();

  return sub_257C05978(a1, v2);
}

unint64_t sub_257C04390(uint64_t a1)
{
  v1 = a1;
  sub_257ED07B0();
  sub_257ECF5D0();

  v2 = sub_257ED0800();

  return sub_257C05B38(v1, v2);
}

uint64_t sub_257C0449C(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_257ED07B0();
  a2(v5);
  sub_257ECF5D0();

  v6 = sub_257ED0800();

  return a3(a1, v6);
}

uint64_t sub_257C045A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C09E2C(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  v3 = sub_257ED0800();

  return a2(a1, v3);
}

unint64_t sub_257C046B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_257C09CB4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C72D90](v9, a1);
      sub_257C09D10(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_257C0477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_257ED0640())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_257C04834(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x746C7561666564;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6544656C706F6570;
          v7 = 0xEF6E6F6974636574;
          break;
        case 2:
          v10 = 1919905636;
          goto LABEL_19;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x8000000257EF74D0;
          break;
        case 4:
          v8 = 0x7061436567616D69;
          v7 = 0xEC0000006E6F6974;
          break;
        case 5:
          v8 = 0x646E41746E696F70;
          v7 = 0xED00006B61657053;
          break;
        case 6:
          v10 = 1954047348;
LABEL_19:
          v8 = v10 | 0x6574654400000000;
          v7 = 0xED00006E6F697463;
          break;
        case 7:
          v8 = 0x746E656D75636F64;
          v9 = 1835102790;
          goto LABEL_15;
        case 8:
          v8 = 0xD000000000000012;
          v7 = 0x8000000257EF7520;
          break;
        case 9:
          v8 = 0x7061546B636162;
          break;
        case 0xA:
          v8 = 0x65636E756F6E6E61;
          v7 = 0xEC000000746E656DLL;
          break;
        case 0xB:
          v8 = 0x6F72506C65646F6DLL;
          v9 = 1936942435;
LABEL_15:
          v7 = v9 | 0xEF676E6900000000;
          break;
        case 0xC:
          v8 = 0x6E616353706F6F6CLL;
          v7 = 0xEC000000676E696ELL;
          break;
        case 0xD:
          v8 = 0x65636E6164697567;
          v7 = 0xEF73736563637553;
          break;
        case 0xE:
          v8 = 0x65636E6164697567;
          v7 = 0xEF6572756C696146;
          break;
        case 0xF:
          v8 = 0x75476E4F6B636F6CLL;
          v7 = 0xEE0065636E616469;
          break;
        case 0x10:
          v8 = 0x4766664F6B636F6CLL;
          v7 = 0xEF65636E61646975;
          break;
        default:
          break;
      }

      v11 = 0xE700000000000000;
      v12 = 0x746C7561666564;
      switch(a1)
      {
        case 1:
          v11 = 0xEF6E6F6974636574;
          if (v8 == 0x6544656C706F6570)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        case 2:
          v19 = 1919905636;
          goto LABEL_48;
        case 3:
          v11 = 0x8000000257EF74D0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 4:
          v17 = 0x7061436567616D69;
          v18 = 1852795252;
          goto LABEL_32;
        case 5:
          v20 = 0x646E41746E696F70;
          v21 = 0x6B61657053;
          goto LABEL_49;
        case 6:
          v19 = 1954047348;
LABEL_48:
          v20 = v19 | 0x6574654400000000;
          v21 = 0x6E6F697463;
LABEL_49:
          v11 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v20)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 7:
          v15 = 0x746E656D75636F64;
          v16 = 1835102790;
          goto LABEL_42;
        case 8:
          v11 = 0x8000000257EF7520;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 9:
          if (v8 != 0x7061546B636162)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 10:
          v12 = 0x65636E756F6E6E61;
          v11 = 0xEC000000746E656DLL;
          goto LABEL_52;
        case 11:
          v15 = 0x6F72506C65646F6DLL;
          v16 = 1936942435;
LABEL_42:
          v11 = v16 | 0xEF676E6900000000;
          if (v8 != v15)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 12:
          v17 = 0x6E616353706F6F6CLL;
          v18 = 1735289198;
LABEL_32:
          v11 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v17)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 13:
          v11 = 0xEF73736563637553;
          if (v8 != 0x65636E6164697567)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 14:
          v13 = 0x65636E6164697567;
          v14 = 0x72756C696146;
          goto LABEL_27;
        case 15:
          v11 = 0xEE0065636E616469;
          if (v8 != 0x75476E4F6B636F6CLL)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 16:
          v13 = 0x4766664F6B636F6CLL;
          v14 = 0x636E61646975;
LABEL_27:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
          if (v8 != v13)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v8 != v12)
          {
            goto LABEL_54;
          }

LABEL_53:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_54:
          v22 = sub_257ED0640();

          if (v22)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_257C04DB0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_257C04E1C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA0000000000726FLL;
      v8 = 0x746361466D6F6F7ALL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000257EF7780;
          break;
        case 2:
          v8 = 0x4379616C70736964;
          v7 = 0xEF74736172746E6FLL;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x737265746C6966;
          break;
        case 4:
          v7 = 0xEA00000000007468;
          v8 = 0x67696C6873616C66;
          break;
        case 5:
          v8 = 0x6544656C706F6570;
          v7 = 0xEF6E6F6974636574;
          break;
        case 6:
          v8 = 0x636F4C7375636F66;
          v7 = 0xE90000000000006BLL;
          break;
        case 7:
          v8 = 0x79546172656D6163;
          v7 = 0xEA00000000006570;
          break;
        case 8:
          v8 = 0x4D65727574706163;
          v7 = 0xEB0000000065646FLL;
          break;
        case 9:
          v8 = 0x6F69746365746564;
          v7 = 0xED000065646F4D6ELL;
          break;
        case 0xA:
          v9 = 1919905636;
          goto LABEL_18;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x8000000257EF74D0;
          break;
        case 0xC:
          v8 = 0x7061436567616D69;
          v7 = 0xEC0000006E6F6974;
          break;
        case 0xD:
          v7 = 0xEA00000000006B61;
          v8 = 0x657053746E696F70;
          break;
        case 0xE:
          v9 = 1954047348;
LABEL_18:
          v8 = v9 | 0x6574654400000000;
          v7 = 0xED00006E6F697463;
          break;
        case 0xF:
          v7 = 0xEA00000000007365;
          v8 = 0x6974697669746361;
          break;
        default:
          break;
      }

      v10 = 0xEA0000000000726FLL;
      v11 = 0x746361466D6F6F7ALL;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000257EF7780;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        case 2:
          v10 = 0xEF74736172746E6FLL;
          if (v8 != 0x4379616C70736964)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 3:
          v10 = 0xE700000000000000;
          if (v8 != 0x737265746C6966)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 4:
          v10 = 0xEA00000000007468;
          if (v8 != 0x67696C6873616C66)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 5:
          v10 = 0xEF6E6F6974636574;
          if (v8 != 0x6544656C706F6570)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 6:
          v10 = 0xE90000000000006BLL;
          if (v8 != 0x636F4C7375636F66)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 7:
          v10 = 0xEA00000000006570;
          if (v8 != 0x79546172656D6163)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 8:
          v10 = 0xEB0000000065646FLL;
          if (v8 != 0x4D65727574706163)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 9:
          v12 = 0x6F69746365746564;
          v13 = 0x65646F4D6ELL;
          goto LABEL_31;
        case 10:
          v11 = 0x65746544726F6F64;
          v10 = 0xED00006E6F697463;
          goto LABEL_48;
        case 11:
          v10 = 0x8000000257EF74D0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 12:
          v10 = 0xEC0000006E6F6974;
          if (v8 != 0x7061436567616D69)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 13:
          v10 = 0xEA00000000006B61;
          if (v8 != 0x657053746E696F70)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 14:
          v12 = 0x6574654474786574;
          v13 = 0x6E6F697463;
LABEL_31:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v12)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 15:
          v10 = 0xEA00000000007365;
          if (v8 != 0x6974697669746361)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        default:
LABEL_48:
          if (v8 != v11)
          {
            goto LABEL_50;
          }

LABEL_49:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_50:
          v14 = sub_257ED0640();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_257C05348(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_257C09E2C(&qword_27F8F5B00, type metadata accessor for CFString, &unk_257ED7C80);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_257ECD1E0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_257C05454(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_257C054C4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v35 = type metadata accessor for DetectedTextBlock(0);
  MEMORY[0x28223BE20](v35, v4, v5, v6, v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  v38 = v2 + 64;
  if (((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return v12;
  }

  v13 = *(v8 + 72);
  v36 = ~v11;
  v37 = v13;
  while (1)
  {
    sub_257C09D64(*(v2 + 48) + v37 * v12, v10, type metadata accessor for DetectedTextBlock);
    result = sub_257ECCCC0();
    if ((result & 1) == 0)
    {
      goto LABEL_4;
    }

    v15 = v35[5];
    v16 = *&v10[v15];
    v17 = *(v39 + v15);
    if (!v16)
    {
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

    if (!v17)
    {
      goto LABEL_4;
    }

    v18 = *(v16 + 16);
    if (v18 != *(v17 + 16))
    {
      goto LABEL_4;
    }

    if (v18 && v16 != v17)
    {
      break;
    }

LABEL_14:
    if (CGRectEqualToRect(*&v10[v35[6]], *(v39 + v35[6])) && *&v10[v35[7]] == *(v39 + v35[7]) && v10[v35[8]] == *(v39 + v35[8]))
    {
      v20 = v35[9];
      v21 = *&v10[v20];
      v22 = *(v39 + v20);
      if (v21)
      {
        if (v22)
        {
          sub_257BD2C2C(0, &qword_27F8F5B20, 0x277D70098);
          v23 = v22;
          v24 = v21;
          v25 = sub_257ECFF50();

          if (v25)
          {
LABEL_35:
            sub_257C09DCC(v10, type metadata accessor for DetectedTextBlock);
            return v12;
          }
        }
      }

      else if (!v22)
      {
        goto LABEL_35;
      }
    }

LABEL_4:
    sub_257C09DCC(v10, type metadata accessor for DetectedTextBlock);
    v12 = (v12 + 1) & v36;
    if (((*(v38 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return v12;
    }
  }

  v26 = (v16 + 56);
  v27 = (v17 + 56);
  while (v18)
  {
    result = *(v26 - 3);
    v28 = *(v26 - 1);
    v29 = *v26;
    v31 = *(v27 - 1);
    v30 = *v27;
    if (result != *(v27 - 3) || *(v26 - 2) != *(v27 - 2))
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v28 != v31 || v29 != v30)
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v26 += 4;
    v27 += 4;
    if (!--v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257C057F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + 8 * v4);
      sub_257ECF500();
      v6 = v5;
      v7 = sub_257ECF4C0();

      sub_257ECF500();
      v8 = sub_257ECF4C0();

      v9 = sub_257ECF500();
      v11 = v10;
      if (v9 == sub_257ECF500() && v11 == v12)
      {
        break;
      }

      v14 = sub_257ED0640();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_257C05978(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  v10 = MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v13 = -1 << *(v2 + 32);
  v14 = a2 & ~v13;
  v23 = v2 + 64;
  if ((*(v2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v25 + 48) + v19 * v14, v4, v10);
      sub_257C09E2C(&qword_27F8F57B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_257ECF450();
      (*(v17 - 8))(v12, v4);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v23 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_257C05B38(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 1954047348 : 0x727574696E727566;
      v8 = v6 == 2 ? 0xE400000000000000 : 0xE900000000000065;
      v9 = *(*(v2 + 48) + v4) ? 0x73726F6F64 : 0x656C706F6570;
      v10 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE600000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 1954047348 : 0x727574696E727566;
      v14 = v5 == 2 ? 0xE400000000000000 : 0xE900000000000065;
      v15 = v5 ? 0x73726F6F64 : 0x656C706F6570;
      v16 = v5 ? 0xE500000000000000 : 0xE600000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_257ED0640();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_257C05CE0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00686769486563;
      v8 = 0x6E61747369447861;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6E61747369447861;
          v7 = 0xED0000776F4C6563;
          break;
        case 2:
          v8 = 0xD000000000000011;
          v7 = 0x8000000257EF78F0;
          break;
        case 3:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7910;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7930;
          break;
        case 5:
          v8 = 0x74736944726F6F64;
          v7 = 0xEF776F4C65636E61;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7960;
          break;
        case 7:
          v8 = 0x6F69746365746564;
          v7 = 0xEF6465737561506ELL;
          break;
        case 8:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7990;
          break;
        case 9:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000257EF79B0;
          break;
        case 0xA:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000257EF79D0;
          break;
        case 0xB:
          v8 = 0xD000000000000014;
          v7 = 0x8000000257EF7760;
          break;
        case 0xC:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000257EF79F0;
          break;
        case 0xD:
          v8 = 0xD000000000000017;
          v7 = 0x8000000257EF7A10;
          break;
        case 0xE:
          v8 = 0x6F72506C65646F6DLL;
          v7 = 0xEF676E6973736563;
          break;
        case 0xF:
          v8 = 0x6E616353706F6F6CLL;
          v7 = 0xEC000000676E696ELL;
          break;
        case 0x10:
          v8 = 0x65636E6164697567;
          v7 = 0xEF73736563637553;
          break;
        case 0x11:
          v8 = 0x65636E6164697567;
          v9 = 0x72756C696146;
          goto LABEL_23;
        case 0x12:
          v8 = 0x75476E4F6B636F6CLL;
          v7 = 0xEE0065636E616469;
          break;
        case 0x13:
          v8 = 0x4766664F6B636F6CLL;
          v9 = 0x636E61646975;
LABEL_23:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
          break;
        default:
          break;
      }

      v10 = 0x6E61747369447861;
      v11 = 0xEE00686769486563;
      switch(a1)
      {
        case 1:
          v11 = 0xED0000776F4C6563;
          if (v8 == 0x6E61747369447861)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          v11 = 0x8000000257EF78F0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 3:
          v11 = 0x8000000257EF7910;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v11 = 0x8000000257EF7930;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v11 = 0xEF776F4C65636E61;
          if (v8 != 0x74736944726F6F64)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v11 = 0x8000000257EF7960;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v11 = 0xEF6465737561506ELL;
          if (v8 != 0x6F69746365746564)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v10 = 0xD000000000000010;
          v11 = 0x8000000257EF7990;
          goto LABEL_59;
        case 9:
          v11 = 0x8000000257EF79B0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v11 = 0x8000000257EF79D0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v11 = 0x8000000257EF7760;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v11 = 0x8000000257EF79F0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v11 = 0x8000000257EF7A10;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v11 = 0xEF676E6973736563;
          if (v8 != 0x6F72506C65646F6DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v11 = 0xEC000000676E696ELL;
          if (v8 != 0x6E616353706F6F6CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v11 = 0xEF73736563637553;
          if (v8 != 0x65636E6164697567)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v12 = 0x65636E6164697567;
          v13 = 0x72756C696146;
          goto LABEL_65;
        case 18:
          v11 = 0xEE0065636E616469;
          if (v8 != 0x75476E4F6B636F6CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v12 = 0x4766664F6B636F6CLL;
          v13 = 0x636E61646975;
LABEL_65:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
          if (v8 != v12)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
LABEL_59:
          if (v8 != v10)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_61:
          v14 = sub_257ED0640();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_257C06350(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SpatialTextBlock(0) - 8;
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = -1 << *(v2 + 32);
  v14 = a2 & ~v13;
  if ((*(v2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v10 + 72);
    do
    {
      sub_257C09D64(*(v2 + 48) + v16 * v14, v12, type metadata accessor for SpatialTextBlock);
      v17 = _s16MagnifierSupport16SpatialTextBlockV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_257C09DCC(v12, type metadata accessor for SpatialTextBlock);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_257C064AC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_257BD2C2C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_257ECFF50();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_257C06578(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_257ECF500();
      v8 = v7;
      if (v6 == sub_257ECF500() && v8 == v9)
      {
        break;
      }

      v11 = sub_257ED0640();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_257C0667C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_257C06A58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      result = sub_257ED07A0();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v12 + 8 * v3);
          if (v3 != v6 || v17 >= v13 + 1)
          {
            *v17 = *v13;
          }

          v18 = *(a2 + 56);
          v19 = v18 + 56 * v3;
          v20 = (v18 + 56 * v6);
          if (v3 != v6 || v19 >= v20 + 56)
          {
            v9 = *v20;
            v10 = v20[1];
            v11 = v20[2];
            *(v19 + 48) = *(v20 + 6);
            *(v19 + 16) = v10;
            *(v19 + 32) = v11;
            *v19 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_257C06BDC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_257ED07A0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_257ECCCF0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_257C06D88(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();

      sub_257ECF5D0();
      v9 = sub_257ED0800();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 296 * v3);
        v16 = (v14 + 296 * v6);
        if (v3 != v6 || v15 >= v16 + 296)
        {
          memmove(v15, v16, 0x128uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

uint64_t sub_257C06F3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_257ED07B0();
      MEMORY[0x259C732E0](v9);
      result = sub_257ED0800();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_257C070D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_257C0746C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();

      sub_257ECF5D0();
      v9 = sub_257ED0800();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

uint64_t sub_257C0761C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_257C079B8(int64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for SpatialTextBlock(0);
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v5, v6, v7, v8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = (sub_257ED01A0() + 1) & ~v11;
    v15 = *(v4 + 72);
    v32 = v15;
    v33 = a2 + 64;
    do
    {
      v16 = v15 * v12;
      v17 = v34;
      sub_257C09D64(*(a2 + 48) + v15 * v12, v34, type metadata accessor for SpatialTextBlock);
      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257C09E2C(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_257ECF400();
      v18 = sub_257ED0800();
      sub_257C09DCC(v17, type metadata accessor for SpatialTextBlock);
      v19 = v18 & v13;
      if (a1 >= v14)
      {
        if (v19 < v14)
        {
          v10 = v33;
          goto LABEL_4;
        }

        if (a1 < v19)
        {
          goto LABEL_3;
        }
      }

      else if (v19 < v14 && a1 < v19)
      {
LABEL_3:
        v10 = v33;
LABEL_4:
        v15 = v32;
        goto LABEL_5;
      }

      v15 = v32;
      if (v32 * a1 < v16 || *(a2 + 48) + v32 * a1 >= (*(a2 + 48) + v16 + v32))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v32 * a1 != v16)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for DetectedTextBlock(0) - 8) + 72);
      v22 = v21 * a1;
      v23 = v20 + v21 * a1;
      v24 = v21 * v12;
      v25 = v20 + v21 * v12 + v21;
      v26 = v22 < v24 || v23 >= v25;
      v10 = v33;
      if (v26)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_25:
        a1 = v12;
        goto LABEL_5;
      }

      a1 = v12;
      if (v22 != v24)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_25;
      }

LABEL_5:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void sub_257C07D0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D0, &unk_257EDA630);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C07E70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B38, &unk_257EDB730);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C07FD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5758, &qword_257EDA698);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v17 *= 56;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 8);
        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        *(*(v4 + 48) + v18) = v19;
        v27 = *(v4 + 56) + v17;
        *v27 = v21;
        *(v27 + 8) = v22;
        *(v27 + 16) = v24;
        *(v27 + 24) = v23;
        *(v27 + 32) = v25;
        *(v27 + 40) = v26;
        v28 = v23;

        v29 = v22;
        v30 = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C08174()
{
  v1 = v0;
  v33 = sub_257ECCCF0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v2, v3, v4, v5);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5768, &unk_257EDB750);
  v7 = *v0;
  v8 = sub_257ED0460();
  v9 = v8;
  if (*(v7 + 16))
  {
    v28 = v1;
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, (v7 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v7 + 16);
    v34 = v9;
    *(v9 + 16) = v13;
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v35 + 16;
    v29 = v7 + 64;
    v30 = v35 + 32;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = v18 | (v12 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = v35;
      v24 = *(v35 + 72) * v21;
      v26 = v32;
      v25 = v33;
      (*(v35 + 16))(v32, *(v7 + 56) + v24, v33);
      v27 = v34;
      *(*(v34 + 48) + 8 * v21) = v22;
      (*(v23 + 32))(*(v27 + 56) + v24, v26, v25);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v28;
        v9 = v34;
        goto LABEL_18;
      }

      v20 = *(v29 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_257C083F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55A0, &qword_257EDA4E0);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 296 * v16;
      memcpy(__dst, (*(v2 + 56) + 296 * v16), 0x128uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x128uLL);

      sub_257C09C58(__dst, v24);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_257C085AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5688, &qword_257EDA5E0);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C086F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5610, &qword_257EDB700);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C08870()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B08, &unk_257EF2920);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C089E0()
{
  v1 = v0;
  v2 = type metadata accessor for SpatialTextBlock(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetectedTextBlock(0);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B30, &unk_257EDB720);
  v14 = *v0;
  v15 = sub_257ED0460();
  v16 = v15;
  if (*(v14 + 16))
  {
    v17 = (v15 + 64);
    v18 = (v14 + 64);
    v19 = ((1 << *(v16 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v14 + 64;
    if (v16 != v14 || v17 >= &v18[8 * v19])
    {
      memmove(v17, v18, 8 * v19);
    }

    v20 = 0;
    v21 = *(v14 + 16);
    v41 = v16;
    *(v16 + 16) = v21;
    v22 = 1 << *(v14 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v14 + 64);
    v25 = (v22 + 63) >> 6;
    if (v24)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
LABEL_14:
        v29 = v26 | (v20 << 6);
        v30 = v37;
        v31 = *(v38 + 72) * v29;
        sub_257C09D64(*(v14 + 48) + v31, v37, type metadata accessor for DetectedTextBlock);
        v32 = v39;
        v33 = *(v40 + 72) * v29;
        sub_257C09D64(*(v14 + 56) + v33, v39, type metadata accessor for SpatialTextBlock);
        v34 = v41;
        sub_257BD584C(v30, *(v41 + 48) + v31, type metadata accessor for DetectedTextBlock);
        sub_257BD584C(v32, *(v34 + 56) + v33, type metadata accessor for SpatialTextBlock);
        v24 = v42;
      }

      while (v42);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v1 = v35;
        v16 = v41;
        goto LABEL_18;
      }

      v28 = *(v36 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v42 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v16;
  }
}

void sub_257C08D10(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v39 = sub_257ECCCF0();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v6, v7, v8, v9);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *v2;
  v12 = sub_257ED0460();
  v13 = v12;
  if (*(v11 + 16))
  {
    v14 = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    v34 = v5;
    v35 = (v11 + 64);
    if (v13 != v11 || v14 >= v11 + 64 + 8 * v15)
    {
      memmove(v14, v35, 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v40 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = v41;
        v28 = *(v41 + 72) * v26;
        v30 = v38;
        v29 = v39;
        (*(v41 + 16))(v38, *(v11 + 48) + v28, v39);
        v31 = *(*(v11 + 56) + 8 * v26);
        v32 = v40;
        (*(v27 + 32))(*(v40 + 48) + v28, v30, v29);
        *(*(v32 + 56) + 8 * v26) = v31;

        v21 = v42;
      }

      while (v42);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v5 = v34;
        v13 = v40;
        goto LABEL_21;
      }

      v25 = *(v35 + v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v42 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v13;
  }
}

void sub_257C08F9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5658, &qword_257EDA5B0);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C09100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D8, &unk_257EF2930);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C0925C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5648, &qword_257EDA5A0);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C093FC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_257ED0460();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;

        sub_257ECC3F0();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_257C0956C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5618, &qword_257EDA570);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_257C096C8()
{
  v1 = v0;
  v2 = type metadata accessor for DetectedTextBlock(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SpatialTextBlock(0);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B10, &qword_257EDB708);
  v14 = *v0;
  v15 = sub_257ED0460();
  v16 = v15;
  if (*(v14 + 16))
  {
    v17 = (v15 + 64);
    v18 = (v14 + 64);
    v19 = ((1 << *(v16 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v14 + 64;
    if (v16 != v14 || v17 >= &v18[8 * v19])
    {
      memmove(v17, v18, 8 * v19);
    }

    v20 = 0;
    v21 = *(v14 + 16);
    v41 = v16;
    *(v16 + 16) = v21;
    v22 = 1 << *(v14 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v14 + 64);
    v25 = (v22 + 63) >> 6;
    if (v24)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
LABEL_14:
        v29 = v26 | (v20 << 6);
        v30 = v37;
        v31 = *(v38 + 72) * v29;
        sub_257C09D64(*(v14 + 48) + v31, v37, type metadata accessor for SpatialTextBlock);
        v32 = v39;
        v33 = *(v40 + 72) * v29;
        sub_257C09D64(*(v14 + 56) + v33, v39, type metadata accessor for DetectedTextBlock);
        v34 = v41;
        sub_257BD584C(v30, *(v41 + 48) + v31, type metadata accessor for SpatialTextBlock);
        sub_257BD584C(v32, *(v34 + 56) + v33, type metadata accessor for DetectedTextBlock);
        v24 = v42;
      }

      while (v42);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v1 = v35;
        v16 = v41;
        goto LABEL_18;
      }

      v28 = *(v36 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v42 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v16;
  }
}

void sub_257C099BC()
{
  v1 = v0;
  v2 = type metadata accessor for DetectedTextBlock(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B18, &unk_257EDB710);
  v8 = *v0;
  v9 = sub_257ED0460();
  v10 = v9;
  if (*(v8 + 16))
  {
    v29 = v1;
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, (v8 + 64), 8 * v12);
    }

    v30 = v8 + 64;
    v13 = 0;
    v14 = *(v8 + 16);
    v33 = v10;
    *(v10 + 16) = v14;
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v31;
        v25 = *(v32 + 72) * v23;
        sub_257C09D64(*(v8 + 48) + v25, v31, type metadata accessor for DetectedTextBlock);
        v26 = *(*(v8 + 56) + 8 * v23);
        v27 = v33;
        sub_257BD584C(v24, *(v33 + 48) + v25, type metadata accessor for DetectedTextBlock);
        *(*(v27 + 56) + 8 * v23) = v26;
      }

      while (v18);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v19)
      {

        v1 = v29;
        v10 = v33;
        goto LABEL_18;
      }

      v22 = *(v30 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }
}

uint64_t sub_257C09D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C09DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C09E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257C09EC8(uint64_t a1)
{
  sub_257C09F4C(319);
  if (v1 <= 0x3F)
  {
    sub_257C09FE0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257C09F4C(uint64_t a1)
{
  if (!qword_27F8F5B58)
  {
    type metadata accessor for MFReaderTextFormatterModel(255);
    sub_257C0DF1C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
    v1 = sub_257ECE180();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F5B58);
    }
  }
}

void sub_257C09FE0(uint64_t a1)
{
  if (!qword_27F8F5B68)
  {
    sub_257ECE1D0();
    v1 = sub_257ECDFE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F5B68);
    }
  }
}

uint64_t sub_257C0A080(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257C0A0B8(uint64_t a1)
{
  sub_257C09FE0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_257C0A140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_257ECE4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v23 - v17;
  sub_257BE401C(v2, &v23 - v17, &qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECE1D0();
    return (*(*(v19 - 8) + 32))(a1, v18, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v11, v4);
  }
}

double sub_257C0A340@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECE1D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() whiteColor];
  v27 = sub_257ECED30();
  sub_257C0A140(v9);
  sub_257ECE1C0();
  v11 = *(v3 + 8);
  v11(v9, v2);
  sub_257ECE010();
  v12 = v31;
  v13 = v32;
  v14 = v33;
  v26 = v34;
  v15 = v35;
  v25 = sub_257ECF060();
  v24 = v16;
  v17 = objc_opt_self();
  v18 = [v17 mainScreen];
  [v18 bounds];

  sub_257C0A140(v9);
  sub_257ECE1C0();
  v11(v9, v2);
  v19 = [v17 mainScreen];
  [v19 bounds];

  sub_257C0A140(v9);
  sub_257ECE1C0();
  v11(v9, v2);
  sub_257ECF060();
  sub_257ECE080();
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  v20 = v27;
  *(a1 + 24) = v26;
  *(a1 + 32) = v15;
  *(a1 + 40) = v20;
  *(a1 + 48) = 256;
  v21 = v24;
  *(a1 + 56) = v25;
  *(a1 + 64) = v21;
  v22 = v29;
  *(a1 + 72) = v28;
  *(a1 + 88) = v22;
  result = *&v30;
  *(a1 + 104) = v30;
  return result;
}

uint64_t sub_257C0A634@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for MFReaderCustomThemeSelectionMenu(0);
  sub_257BE401C(v1 + *(v18 + 20), v17, &qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECE1D0();
    return (*(*(v19 - 8) + 32))(a1, v17, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v10, v3);
  }
}

uint64_t sub_257C0A85C@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B80, &qword_257EDB8A0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B88, &qword_257EDB8A8);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = &v42 - v14;
  v52 = v1;
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257C0DF1C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v50 = v58;
  v51 = v57;
  v49 = v59;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  swift_storeEnumTagMultiPayload();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B98, &qword_257EDB910);
  v17 = v16[13];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  v18 = (a1 + v16[14]);
  *v18 = xmmword_257EDB760;
  v18[1] = xmmword_257EDB770;
  v19 = (a1 + v16[15]);
  v54 = 0;
  sub_257ECEE50();
  v20 = v56;
  *v19 = v55;
  v19[1] = v20;
  v21 = a1 + v16[16];
  LOBYTE(v54) = 0;
  sub_257ECEE50();
  v22 = v56;
  *v21 = v55;
  *(v21 + 1) = v22;
  v23 = (a1 + v16[17]);
  v54 = 0;
  sub_257ECEE50();
  v24 = v56;
  *v23 = v55;
  v23[1] = v24;
  v25 = (a1 + v16[18]);
  v54 = 0;
  sub_257ECEE50();
  v26 = v56;
  *v25 = v55;
  v25[1] = v26;
  v27 = v16[20];
  *(a1 + v27) = 2;
  v28 = v16[22];
  v44 = v16[21];
  v48 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA8, &qword_257EDB950);
  v30 = *(v29 - 8);
  v46 = *(v30 + 56);
  v47 = v30 + 56;
  v46(a1 + v28, 1, 1, v29);
  v31 = v16[23];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BB0, &qword_257EDB958);
  v33 = *(*(v32 - 8) + 56);
  v33(a1 + v31, 1, 1, v32);
  v34 = v16[24];
  v45 = v16[25];
  v35 = a1 + v34;
  v43 = (a1 + v16[26]);
  *(a1 + v27) = 1;
  *(a1 + v44) = 1;
  v36 = v52;
  sub_257C0ACF4(v52, v15);
  v33(v15, 0, 1, v32);
  sub_257C0DA64(v15, a1 + v31, &qword_27F8F5B88, &qword_257EDB8A8);
  v37 = v53;
  sub_257C0C034(v36, v53);
  v46(v37, 0, 1, v29);
  result = sub_257C0DA64(v37, a1 + v48, &qword_27F8F5B80, &qword_257EDB8A0);
  v39 = a1 + v16[19];
  v40 = v50;
  *v39 = v51;
  *(v39 + 1) = v40;
  v39[16] = v49;
  *v35 = 0x4074000000000000;
  v35[8] = 0;
  *(a1 + v45) = 0;
  v41 = v43;
  *v43 = 0;
  v41[1] = 0;
  return result;
}

uint64_t sub_257C0ACF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C58, &qword_257EE1E00) - 8;
  MEMORY[0x28223BE20](v224, v3, v4, v5, v6);
  v231 = &v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v242 = &v203 - v13;
  v241 = sub_257ECE5A0();
  v222 = *(v241 - 8);
  v223 = v241 - 8;
  v247 = v222;
  MEMORY[0x28223BE20](v241 - 8, v14, v15, v16, v17);
  v240 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_257ECE1D0();
  v246 = *(v243 - 8);
  MEMORY[0x28223BE20](v243, v19, v20, v21, v22);
  v238 = &v203 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for MFColorPicker(0);
  MEMORY[0x28223BE20](v237, v24, v25, v26, v27);
  v29 = &v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C60, &qword_257EDBA80) - 8;
  v216 = v30;
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v225 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v42 = &v203 - v41;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C68, &qword_257EDBA88);
  MEMORY[0x28223BE20](v233, v43, v44, v45, v46);
  v227 = &v203 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49, v50, v51, v52);
  v54 = &v203 - v53;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C70, &qword_257EDBA90);
  MEMORY[0x28223BE20](v239, v55, v56, v57, v58);
  v230 = &v203 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61, v62, v63, v64);
  v229 = &v203 - v65;
  MEMORY[0x28223BE20](v66, v67, v68, v69, v70);
  v226 = &v203 - v71;
  MEMORY[0x28223BE20](v72, v73, v74, v75, v76);
  v228 = &v203 - v77;
  MEMORY[0x28223BE20](v78, v79, v80, v81, v82);
  v245 = &v203 - v83;
  MEMORY[0x28223BE20](v84, v85, v86, v87, v88);
  *&v236 = &v203 - v89;
  MEMORY[0x28223BE20](v90, v91, v92, v93, v94);
  v208 = &v203 - v95;
  MEMORY[0x28223BE20](v96, v97, v98, v99, v100);
  v244 = &v203 - v101;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v235 = ObjCClassFromMetadata;
  v234 = objc_opt_self();
  v103 = [v234 bundleForClass_];
  v104 = sub_257ECF4C0();
  v105 = sub_257ECF4C0();
  v106 = [v103 localizedStringForKey:v104 value:0 table:v105];

  v107 = sub_257ECF500();
  v109 = v108;

  v110 = a1[1];
  v221 = *a1;
  v220 = v110;
  v219 = type metadata accessor for MFReaderTextFormatterModel(0);
  v217 = sub_257C0DF1C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v215 = v251;
  v111 = v252;
  *&v29[*(v237 + 28)] = swift_getKeyPath();
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  *v29 = v107;
  *(v29 + 1) = v109;
  v248 = 0;
  sub_257ECEE50();
  v112 = v250;
  v29[16] = v249;
  *(v29 + 3) = v112;
  *(v29 + 2) = v215;
  *(v29 + 6) = v111;
  *&v215 = sub_257C0DF1C(&qword_27F8F5C78, type metadata accessor for MFColorPicker, &unk_257EDD128);
  sub_257ECEC90();
  sub_257C0DCB8(v29);
  v113 = sub_257ECE920();
  v114 = &v42[*(v30 + 44)];
  *v114 = v113;
  *(v114 + 8) = 0u;
  *(v114 + 24) = 0u;
  v114[40] = 1;
  LOBYTE(v111) = sub_257ECE940();
  v115 = v238;
  v210 = a1;
  sub_257C0A634(v238);
  sub_257ECE1C0();
  v116 = *(v246 + 8);
  v246 += 8;
  v214 = v116;
  v116(v115, v243);
  sub_257ECDF40();
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;
  sub_257C0DD14(v42, v54, &qword_27F8F5C60, &qword_257EDBA80);
  v125 = &v54[*(v233 + 36)];
  *v125 = v111;
  *(v125 + 1) = v118;
  *(v125 + 2) = v120;
  *(v125 + 3) = v122;
  *(v125 + 4) = v124;
  v125[40] = 0;
  sub_257C0BF40(&unk_257EDB9E8, &unk_257EDBA10);
  *&v251 = v126;
  *(&v251 + 1) = v127;
  v203 = sub_257BDAB08();
  v128 = sub_257ECEAF0();
  v130 = v129;
  v132 = v131;
  v213 = sub_257C0DDAC(&qword_27F8F5C80, &qword_27F8F5C68, &qword_257EDBA88, sub_257C0DD7C);
  sub_257ECEC00();
  sub_257C0300C(v128, v130, v132 & 1);

  sub_257BE4084(v54, &qword_27F8F5C68, &qword_257EDBA88);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8, &unk_257EDB990);
  v223 = *(v222 + 72);
  v133 = v247;
  v222 = *(v247 + 80);
  v209 = (v222 + 32) & ~v222;
  v134 = swift_allocObject();
  v211 = xmmword_257ED6D30;
  *(v134 + 16) = xmmword_257ED6D30;
  sub_257ECE590();
  *&v251 = v134;
  v206 = sub_257C0DF1C(&qword_27F8F5BD0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8, &unk_257EE2D50);
  v207 = sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8, &unk_257EE2D50, MEMORY[0x277D83970]);
  v136 = v240;
  v135 = v241;
  sub_257ED0180();
  v137 = v208;
  v138 = v236;
  sub_257ECE220();
  v139 = *(v133 + 8);
  v247 = v133 + 8;
  v204 = v139;
  v139(v136, v135);
  sub_257BE4084(v138, &qword_27F8F5C70, &qword_257EDBA90);
  v140 = v234;
  v141 = v235;
  v142 = [v234 bundleForClass_];
  v143 = sub_257ECF4C0();
  v144 = sub_257ECF4C0();
  v145 = [v142 localizedStringForKey:v143 value:0 table:v144];

  v146 = sub_257ECF500();
  v148 = v147;

  *&v251 = v146;
  *(&v251 + 1) = v148;
  sub_257ECE1F0();

  sub_257BE4084(v137, &qword_27F8F5C70, &qword_257EDBA90);
  v149 = v242;
  sub_257ECEF70();
  v150 = sub_257ECED60();
  v151 = sub_257ECE930();
  v152 = v149 + *(v224 + 44);
  *v152 = v150;
  *(v152 + 8) = v151;
  v153 = [v140 bundleForClass_];
  v154 = sub_257ECF4C0();
  v155 = sub_257ECF4C0();
  v156 = [v153 localizedStringForKey:v154 value:0 table:v155];

  v157 = sub_257ECF500();
  v159 = v158;

  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v236 = v251;
  v160 = v252;
  *&v29[*(v237 + 28)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v29 = v157;
  *(v29 + 1) = v159;
  v248 = 0;
  sub_257ECEE50();
  v161 = v250;
  v29[16] = v249;
  *(v29 + 3) = v161;
  *(v29 + 2) = v236;
  *(v29 + 6) = v160;
  v162 = v225;
  sub_257ECEC90();
  sub_257C0DCB8(v29);
  v163 = sub_257ECE920();
  v164 = v162 + *(v216 + 44);
  *v164 = v163;
  *(v164 + 8) = 0u;
  *(v164 + 24) = 0u;
  *(v164 + 40) = 1;
  LOBYTE(v159) = sub_257ECE950();
  v165 = v238;
  sub_257C0A634(v238);
  sub_257ECE1C0();
  v214(v165, v243);
  sub_257ECDF40();
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v173 = v172;
  v174 = v227;
  sub_257C0DD14(v162, v227, &qword_27F8F5C60, &qword_257EDBA80);
  v175 = v174 + *(v233 + 36);
  *v175 = v159;
  *(v175 + 8) = v167;
  *(v175 + 16) = v169;
  *(v175 + 24) = v171;
  *(v175 + 32) = v173;
  *(v175 + 40) = 0;
  sub_257C0BF40(&unk_257EDB9A0, &unk_257EDB9C8);
  *&v251 = v176;
  *(&v251 + 1) = v177;
  v178 = sub_257ECEAF0();
  v180 = v179;
  LOBYTE(v162) = v181;
  v182 = v226;
  sub_257ECEC00();
  sub_257C0300C(v178, v180, v162 & 1);

  sub_257BE4084(v174, &qword_27F8F5C68, &qword_257EDBA88);
  v183 = swift_allocObject();
  *(v183 + 16) = v211;
  sub_257ECE590();
  *&v251 = v183;
  v185 = v240;
  v184 = v241;
  sub_257ED0180();
  v186 = v228;
  sub_257ECE220();
  v204(v185, v184);
  sub_257BE4084(v182, &qword_27F8F5C70, &qword_257EDBA90);
  v187 = [v234 bundleForClass_];
  v188 = sub_257ECF4C0();
  v189 = sub_257ECF4C0();
  v190 = [v187 localizedStringForKey:v188 value:0 table:v189];

  v191 = sub_257ECF500();
  v193 = v192;

  *&v251 = v191;
  *(&v251 + 1) = v193;
  v194 = v245;
  sub_257ECE1F0();

  sub_257BE4084(v186, &qword_27F8F5C70, &qword_257EDBA90);
  v195 = v244;
  v196 = v229;
  sub_257BE401C(v244, v229, &qword_27F8F5C70, &qword_257EDBA90);
  v197 = v242;
  v198 = v231;
  sub_257BE401C(v242, v231, &qword_27F8F5C58, &qword_257EE1E00);
  v199 = v230;
  sub_257BE401C(v194, v230, &qword_27F8F5C70, &qword_257EDBA90);
  v200 = v232;
  sub_257BE401C(v196, v232, &qword_27F8F5C70, &qword_257EDBA90);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5CA8, &qword_257EDBAA0);
  sub_257BE401C(v198, v200 + *(v201 + 48), &qword_27F8F5C58, &qword_257EE1E00);
  sub_257BE401C(v199, v200 + *(v201 + 64), &qword_27F8F5C70, &qword_257EDBA90);
  sub_257BE4084(v245, &qword_27F8F5C70, &qword_257EDBA90);
  sub_257BE4084(v197, &qword_27F8F5C58, &qword_257EE1E00);
  sub_257BE4084(v195, &qword_27F8F5C70, &qword_257EDBA90);
  sub_257BE4084(v199, &qword_27F8F5C70, &qword_257EDBA90);
  sub_257BE4084(v198, &qword_27F8F5C58, &qword_257EE1E00);
  return sub_257BE4084(v196, &qword_27F8F5C70, &qword_257EDBA90);
}

void sub_257C0BF40(uint64_t a1, uint64_t a2)
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v4)
    {
      sub_257C0DACC();
      sub_257ECC3F0();
      v2 = sub_257ECFEF0();
      v3 = [v2 _accessibilityColorDescription];

      if (v3)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_257C0C034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_257ECE5A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BB8, &qword_257EDB960);
  MEMORY[0x28223BE20](v92, v11, v12, v13, v14);
  v16 = (v91 - v15);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA8, &qword_257EDB950);
  MEMORY[0x28223BE20](v98, v17, v18, v19, v20);
  v22 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = v91 - v28;
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v94 = v91 - v35;
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v96 = v91 - v41;
  *v16 = sub_257ECF060();
  v16[1] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC0, &qword_257EDB968);
  sub_257C0CA24(a1, v16 + *(v43 + 44));
  v44 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v44;
  sub_257ECDD60();

  v97 = a1;
  if (v99 >= 4u)
  {

    goto LABEL_5;
  }

  v45 = sub_257ED0640();

  if (v45)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8, &unk_257EDB990);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_257ED9BD0;
    sub_257ECE580();
    sub_257ECE590();
    v99 = v47;
    sub_257C0DF1C(&qword_27F8F5BD0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8, &unk_257EE2D50);
    sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8, &unk_257EE2D50, MEMORY[0x277D83970]);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8, &unk_257EDB990);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_257ED6D30;
  sub_257ECE590();
  v99 = v46;
  sub_257C0DF1C(&qword_27F8F5BD0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8, &unk_257EE2D50);
  sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8, &unk_257EE2D50, MEMORY[0x277D83970]);
LABEL_6:
  sub_257ED0180();
  sub_257BD2D4C(&qword_27F8F5BE8, &qword_27F8F5BB8, &qword_257EDB960, MEMORY[0x277CE11A8]);
  sub_257ECEC80();
  (*(v4 + 8))(v10, v3);
  sub_257BE4084(v16, &qword_27F8F5BB8, &qword_257EDB960);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v101 = v102;
  v99 = sub_257BE6C10();
  v100 = v48;
  v49 = sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v22, &qword_27F8F5BA8, &qword_257EDB950);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v101 = v102;
  v99 = sub_257BE6D7C();
  v100 = v50;
  v51 = v94;
  v52 = v49;
  sub_257ECE1F0();

  sub_257BE4084(v29, &qword_27F8F5BA8, &qword_257EDB950);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v93 = ObjCClassFromMetadata;
  v92 = objc_opt_self();
  v54 = [v92 bundleForClass_];
  v55 = sub_257ECF4C0();
  v56 = sub_257ECF4C0();
  v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

  v58 = sub_257ECF500();
  v60 = v59;

  v99 = v58;
  v100 = v60;
  v91[1] = v52;
  v61 = sub_257ECEAF0();
  v63 = v62;
  LOBYTE(v57) = v64;
  sub_257C0BF40(&unk_257EDB9E8, &unk_257EDBA10);
  v99 = v65;
  v100 = v66;
  v67 = sub_257ECEAF0();
  v69 = v68;
  LOBYTE(ObjCClassFromMetadata) = v70;
  sub_257ECE1E0();
  sub_257C0300C(v67, v69, ObjCClassFromMetadata & 1);

  sub_257C0300C(v61, v63, v57 & 1);

  sub_257BE4084(v51, &qword_27F8F5BA8, &qword_257EDB950);
  v71 = [v92 bundleForClass_];
  v72 = sub_257ECF4C0();
  v73 = sub_257ECF4C0();
  v74 = [v71 localizedStringForKey:v72 value:0 table:v73];

  v75 = sub_257ECF500();
  v77 = v76;

  v99 = v75;
  v100 = v77;
  v78 = sub_257ECEAF0();
  v80 = v79;
  v82 = v81;
  sub_257C0BF40(&unk_257EDB9A0, &unk_257EDB9C8);
  v99 = v83;
  v100 = v84;
  v85 = sub_257ECEAF0();
  v87 = v86;
  LOBYTE(v57) = v88;
  v89 = v96;
  sub_257ECE1E0();
  sub_257C0300C(v85, v87, v57 & 1);

  sub_257C0300C(v78, v80, v82 & 1);

  return sub_257BE4084(v89, &qword_27F8F5BA8, &qword_257EDB950);
}

void sub_257C0CA24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v3 = sub_257ECEE20();
  v157 = *(v3 - 8);
  v158 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BF8, &qword_257EDBA30);
  MEMORY[0x28223BE20](v166, v10, v11, v12, v13);
  v15 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v160 = &v150 - v21;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C00, &qword_257EDBA38);
  MEMORY[0x28223BE20](v163, v22, v23, v24, v25);
  v165 = &v150 - v26;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C08, &qword_257EDBA40);
  MEMORY[0x28223BE20](v164, v27, v28, v29, v30);
  v155 = (&v150 - v31);
  v32 = type metadata accessor for MFReaderThemeSelectionOverlay(0);
  MEMORY[0x28223BE20](v32 - 8, v33, v34, v35, v36);
  v161 = (&v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
  v152 = (&v150 - v43);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C10, &qword_257EDBA48);
  MEMORY[0x28223BE20](v162, v44, v45, v46, v47);
  v159 = &v150 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v151 = &v150 - v54;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C18, &unk_257EDBA50);
  MEMORY[0x28223BE20](v150, v55, v56, v57, v58);
  v153 = &v150 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61, v62, v63, v64);
  v66 = &v150 - v65;
  MEMORY[0x28223BE20](v67, v68, v69, v70, v71);
  v154 = &v150 - v72;
  v73 = sub_257ECE1D0();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v75, v76, v77, v78);
  v80 = &v150 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = a1;
  v81 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v168 = v81;
  sub_257ECDD60();

  v82 = v182;
  if (v182)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v156 = v182;
    if (v182)
    {
      v161 = v82;
      sub_257ECC3F0();
      sub_257C0A634(v80);
      v83 = sub_257ECE1C0();
      v84 = *(v74 + 8);
      v84(v80, v73);
      if (v83)
      {
        v85 = [objc_opt_self() mainScreen];
        [v85 bounds];
      }

      sub_257C0A634(v80);
      v102 = sub_257ECE1C0();
      v84(v80, v73);
      if (v102)
      {
        v103 = [objc_opt_self() mainScreen];
        [v103 &selRef__accessibilitySupplementaryFooterViews];
      }

      sub_257ECF060();
      sub_257ECE080();
      *(v186 + 6) = *(&v186[3] + 6);
      *(&v186[1] + 6) = *(&v186[4] + 6);
      *(&v186[2] + 6) = *(&v186[5] + 6);
      sub_257ECF0F0();
      v182 = xmmword_257EDB780;
      *&v183[0] = v161;
      WORD4(v183[0]) = 256;
      *(v183 + 10) = v186[0];
      *(&v183[1] + 10) = v186[1];
      *(&v183[2] + 10) = v186[2];
      *(&v183[3] + 1) = *(&v186[2] + 14);
      *&v184 = 0xBFE921FB54442D18;
      *(&v184 + 1) = v104;
      v185 = v105;
      sub_257ECC3F0();
      sub_257C0A634(v80);
      v106 = sub_257ECE1C0();
      v84(v80, v73);
      if (v106)
      {
        v107 = [objc_opt_self() mainScreen];
        [v107 &selRef__accessibilitySupplementaryFooterViews];
      }

      sub_257C0A634(v80);
      v108 = sub_257ECE1C0();
      v84(v80, v73);
      if (v108)
      {
        v109 = [objc_opt_self() mainScreen];
        [v109 &selRef__accessibilitySupplementaryFooterViews];
      }

      v110 = v152;
      sub_257ECF060();
      sub_257ECE080();
      *&v181[6] = *(&v186[6] + 6);
      *&v181[22] = *(&v186[7] + 6);
      *&v181[38] = *(&v186[8] + 6);
      sub_257ECF0F0();
      v112 = v111;
      v114 = v113;
      *v110 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (LOBYTE(v179[0]) >= 4u)
      {

        v130 = 1.0;
      }

      else
      {
        v129 = sub_257ED0640();

        if (v129)
        {
          v130 = 1.0;
        }

        else
        {
          v130 = 0.0;
        }
      }

      v131 = v162;
      v132 = v151;
      sub_257C0DB18(v110, v151);
      *(v132 + *(v131 + 36)) = v130;
      v133 = sub_257ECF060();
      v135 = v134;
      v136 = &v66[*(v150 + 36)];
      sub_257C0DD14(v132, v136, &qword_27F8F5C10, &qword_257EDBA48);
      v137 = (v136 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C20, &qword_257EE2D20) + 36));
      *v137 = v133;
      v137[1] = v135;
      *v66 = xmmword_257EDB790;
      *(v66 + 9) = *&v181[46];
      v138 = *&v181[16];
      *(v66 + 58) = *&v181[32];
      v139 = *v181;
      *(v66 + 42) = v138;
      *(v66 + 2) = v156;
      *(v66 + 12) = 256;
      *(v66 + 26) = v139;
      *(v66 + 10) = 0xBFE921FB54442D18;
      *(v66 + 11) = v112;
      *(v66 + 12) = v114;
      v140 = v154;
      sub_257C0DD14(v66, v154, &qword_27F8F5C18, &unk_257EDBA50);
      v174 = v183[3];
      v175 = v184;
      v176 = v185;
      v170 = v182;
      v171 = v183[0];
      v172 = v183[1];
      v173 = v183[2];
      v141 = v153;
      sub_257BE401C(v140, v153, &qword_27F8F5C18, &unk_257EDBA50);
      v142 = v174;
      v143 = v175;
      v177[4] = v174;
      v177[5] = v175;
      v144 = v176;
      v178 = v176;
      v145 = v171;
      v177[0] = v170;
      v177[1] = v171;
      v147 = v172;
      v146 = v173;
      v177[2] = v172;
      v177[3] = v173;
      v148 = v155;
      *v155 = v170;
      *(v148 + 16) = v145;
      *(v148 + 96) = v144;
      *(v148 + 32) = v147;
      *(v148 + 48) = v146;
      *(v148 + 64) = v142;
      *(v148 + 80) = v143;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C48, &qword_257EDBA68);
      sub_257BE401C(v141, v148 + *(v149 + 48), &qword_27F8F5C18, &unk_257EDBA50);
      sub_257BE401C(&v182, v179, &qword_27F8F5C50, &unk_257EDBA70);
      sub_257BE401C(v177, v179, &qword_27F8F5C50, &unk_257EDBA70);
      sub_257BE4084(v141, &qword_27F8F5C18, &unk_257EDBA50);
      v179[4] = v174;
      v179[5] = v175;
      v180 = v176;
      v179[0] = v170;
      v179[1] = v171;
      v179[2] = v172;
      v179[3] = v173;
      sub_257BE4084(v179, &qword_27F8F5C50, &unk_257EDBA70);
      sub_257BE401C(v148, v165, &qword_27F8F5C08, &qword_257EDBA40);
      swift_storeEnumTagMultiPayload();
      sub_257BD2D4C(&qword_27F8F5C28, &qword_27F8F5C08, &qword_257EDBA40, MEMORY[0x277CE14C0]);
      sub_257C0DB7C();
      sub_257ECE6F0();
      sub_257BE4084(&v182, &qword_27F8F5C50, &unk_257EDBA70);

      sub_257BE4084(v148, &qword_27F8F5C08, &qword_257EDBA40);
      v126 = v140;
      v127 = &qword_27F8F5C18;
      v128 = &unk_257EDBA50;
      goto LABEL_29;
    }
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v87 = [objc_opt_self() bundleForClass_];
  v88 = sub_257ECF4C0();
  v89 = [objc_opt_self() imageNamed:v88 inBundle:v87];

  if (v89)
  {
    sub_257ECEE00();
    v91 = v157;
    v90 = v158;
    (*(v157 + 104))(v9, *MEMORY[0x277CE0FE0], v158);
    v156 = sub_257ECEE40();

    (*(v91 + 8))(v9, v90);
    sub_257C0A634(v80);
    LOBYTE(v90) = sub_257ECE1C0();
    v92 = *(v74 + 8);
    v92(v80, v73);
    if (v90)
    {
      v93 = [objc_opt_self() mainScreen];
      [v93 bounds];
    }

    sub_257C0A634(v80);
    v94 = sub_257ECE1C0();
    v92(v80, v73);
    if (v94)
    {
      v95 = [objc_opt_self() mainScreen];
      [v95 bounds];
    }

    v96 = v161;
    sub_257ECF060();
    sub_257ECE080();
    v97 = v182;
    v98 = BYTE8(v182);
    v99 = *&v183[0];
    v100 = BYTE8(v183[0]);
    v158 = *(&v183[1] + 1);
    v101 = *&v183[1];
    *v96 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    LODWORD(v169) = v100;
    v161 = v101;
    if (LOBYTE(v179[0]) >= 4u)
    {
      v115 = v97;
    }

    else
    {
      v115 = v97;
      v116 = sub_257ED0640();

      v117 = 0.0;
      if ((v116 & 1) == 0)
      {
LABEL_24:
        v118 = v159;
        sub_257C0DB18(v96, v159);
        *(v118 + *(v162 + 36)) = v117;
        v119 = sub_257ECF060();
        v121 = v120;
        v122 = &v15[*(v166 + 36)];
        sub_257C0DD14(v118, v122, &qword_27F8F5C10, &qword_257EDBA48);
        v123 = (v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C20, &qword_257EE2D20) + 36));
        *v123 = v119;
        v123[1] = v121;
        *v15 = v156;
        *(v15 + 1) = v115;
        v15[16] = v98;
        *(v15 + 3) = v99;
        v15[32] = v169;
        v124 = v160;
        v125 = v158;
        *(v15 + 5) = v161;
        *(v15 + 6) = v125;
        sub_257C0DD14(v15, v124, &qword_27F8F5BF8, &qword_257EDBA30);
        sub_257BE401C(v124, v165, &qword_27F8F5BF8, &qword_257EDBA30);
        swift_storeEnumTagMultiPayload();
        sub_257BD2D4C(&qword_27F8F5C28, &qword_27F8F5C08, &qword_257EDBA40, MEMORY[0x277CE14C0]);
        sub_257C0DB7C();
        sub_257ECE6F0();
        v126 = v124;
        v127 = &qword_27F8F5BF8;
        v128 = &qword_257EDBA30;
LABEL_29:
        sub_257BE4084(v126, v127, v128);
        return;
      }
    }

    v117 = 1.0;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_257C0DA64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_257C0DACC()
{
  result = qword_27F8F5BF0;
  if (!qword_27F8F5BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5BF0);
  }

  return result;
}

uint64_t sub_257C0DB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderThemeSelectionOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257C0DB7C()
{
  result = qword_27F8F5C30;
  if (!qword_27F8F5C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5BF8, &qword_257EDBA30);
    sub_257C0DC34();
    sub_257BD2D4C(&qword_27F8F5C40, &qword_27F8F5C20, &qword_257EE2D20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5C30);
  }

  return result;
}

unint64_t sub_257C0DC34()
{
  result = qword_27F8F6850;
  if (!qword_27F8F6850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5C38, &qword_257EDBA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6850);
  }

  return result;
}

uint64_t sub_257C0DCB8(uint64_t a1)
{
  v2 = type metadata accessor for MFColorPicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257C0DD14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_257C0DDAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257C0DE30()
{
  result = qword_27F8F5C90;
  if (!qword_27F8F5C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5C98, &qword_257EDBA98);
    sub_257C0DF1C(&qword_27F8F5C78, type metadata accessor for MFColorPicker, &unk_257EDD128);
    sub_257C0DF1C(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5C90);
  }

  return result;
}

uint64_t sub_257C0DF1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257C0DF64()
{
  result = qword_27F8F5CB8;
  if (!qword_27F8F5CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5CC0, &qword_257EDBAA8);
    sub_257BD2D4C(&qword_27F8F5CC8, &unk_27F8F5CD0, qword_257EDBAB0, MEMORY[0x277CDFB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5CB8);
  }

  return result;
}
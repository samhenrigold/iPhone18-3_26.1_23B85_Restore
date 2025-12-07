void sub_2583C7400(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2583C5644(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_2583C4520(&qword_27F928278, &qword_25842D230);
      goto LABEL_12;
    }

    sub_2583C4CF0(v7 + 1);
  }

  v9 = *v3;
  sub_2584293C0();
  sub_2584283F0();
  sub_258398064();
  sub_258428590();
  v10 = sub_2584293F0();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for WorldAnchor(0);
    do
    {

      v13 = sub_2584283C0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_258429380();
  __break(1u);
}

uint64_t sub_2583C75BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258428F10();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258428F10();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_258398260(&qword_27F928A80, &qword_27F928A78, &unk_25842EBE8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A78, &unk_25842EBE8);
            v9 = sub_2583C775C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PatchTracker.Patch();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2583C775C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C7E900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2583C77DC;
  }

  __break(1u);
  return result;
}

uint64_t sub_2583C77E4(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
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

unint64_t sub_2583C780C()
{
  result = qword_27F928A50;
  if (!qword_27F928A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A50);
  }

  return result;
}

unint64_t sub_2583C7864()
{
  result = qword_27F928A58;
  if (!qword_27F928A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A58);
  }

  return result;
}

unint64_t sub_2583C78BC()
{
  result = qword_27F928A60;
  if (!qword_27F928A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A60);
  }

  return result;
}

unint64_t sub_2583C7914()
{
  result = qword_27F928A68;
  if (!qword_27F928A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A68);
  }

  return result;
}

__n128 sub_2583C7994(__n128 *a1, __n128 **a2)
{
  v2 = *a2;
  result = *a1;
  v2[2] = *a1;
  v2[3].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2583C7A24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double sub_2583C7A8C(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
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
  return result;
}

uint64_t sub_2583C7AB0()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

CGImageRef static CGImageRef.fromByteArrayGray(_:width:height:)(uint64_t a1, size_t a2, size_t a3)
{
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v7 = __CGBitmapContextCreate_2((a1 + 32), a2, a3, 8uLL, a2, DeviceGray, 0);
  if (v7)
  {
    v8 = v7;
    Image = CGBitmapContextCreateImage(v8);
  }

  else
  {

    return 0;
  }

  return Image;
}

CGImageRef static CGImageRef.fromByteArrayRGBA(_:width:height:)(CGImageRef result, size_t a2, size_t a3)
{
  if ((a2 - 0x2000000000000000) >> 62 == 3)
  {
    v4 = result;
    v5 = 4 * a2;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v8 = __CGBitmapContextCreate_2(v4 + 32, a2, a3, 8uLL, v5, DeviceRGB, 1u);
    if (v8)
    {
      v9 = v8;
      Image = CGBitmapContextCreateImage(v9);
    }

    else
    {

      return 0;
    }

    return Image;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t CGImageRef.toByteArrayRGBA()()
{
  Width = CGImageGetWidth(v0);
  result = CGImageGetHeight(v0);
  v3 = Width * result;
  if ((Width * result) >> 64 != (Width * result) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = 4 * v3;
  if (4 * v3 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v5 = sub_2584288E0();
    *(v5 + 16) = v4;
    bzero((v5 + 32), v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = CGImageGetColorSpace(v0);
  if (v6)
  {
    v7 = v6;
    v8 = CGImageGetWidth(v0);
    Height = CGImageGetHeight(v0);
    BitsPerComponent = CGImageGetBitsPerComponent(v0);
    BytesPerRow = CGImageGetBytesPerRow(v0);
    v12 = __CGBitmapContextCreate_2((v5 + 32), v8, Height, BitsPerComponent, BytesPerRow, v7, 1u);
    if (v12)
    {
      v13 = v12;
      CGImageGetWidth(v0);
      CGImageGetHeight(v0);
      sub_258428C40();

      v7 = v13;
    }
  }

  return v5;
}

int *PlaneSelector.firstPointMaxDistanceSquared.unsafeMutableAddressor()
{
  if (qword_27F927A80 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.firstPointMaxDistanceSquared;
}

void static PlaneSelector.DebuggerClass.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  static PlaneSelector.DebuggerClass = a1;
  qword_27F92F268 = a2;
}

void sub_2583C7EE0()
{
  if ([objc_opt_self() jasperAvailable])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_258428630();
    [v0 floatForKey_];
    v3 = v2;

    v4 = v3 * v3;
  }

  else
  {
    if (qword_27F927AC0 != -1)
    {
      swift_once();
    }

    v4 = 1.0;
    if (static MeasureCore.isTrackingVGAEnabled)
    {
      v4 = 4.0;
    }
  }

  static PlaneSelector.firstPointMaxDistanceSquared = LODWORD(v4);
}

float static PlaneSelector.firstPointMaxDistanceSquared.getter()
{
  if (qword_27F927A80 != -1)
  {
    swift_once();
  }

  return *&static PlaneSelector.firstPointMaxDistanceSquared;
}

uint64_t sub_2583C8054(uint64_t a1, uint64_t a2)
{
  v3 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v3);

  return a2;
}

uint64_t sub_2583C80D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v4);

  return a3;
}

char *sub_2583C8148()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_2583D1D30();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t PlaneSelector.debugOptions.getter()
{
  if (*(v0 + 176) != 1)
  {
    return *(v0 + 168);
  }

  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static PlaneSelector.DebugOptions.default;
  *(v0 + 168) = static PlaneSelector.DebugOptions.default;
  *(v0 + 176) = 0;
  return result;
}

uint64_t *PlaneSelector.DebugOptions.default.unsafeMutableAddressor()
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.DebugOptions.default;
}

uint64_t PlaneSelector.debugOptions.setter(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 176) = 0;
  return result;
}

uint64_t (*PlaneSelector.debugOptions.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = PlaneSelector.debugOptions.getter();
  return sub_2583C82D8;
}

void *sub_2583C82D8(void *result)
{
  v1 = result[1];
  *(v1 + 168) = *result;
  *(v1 + 176) = 0;
  return result;
}

uint64_t property wrapper backing initializer of PlaneSelector.planeSelectionStats(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AD0, &qword_25842ECD0);
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 80) = v3;
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v5;
  return v2;
}

double PlaneSelector.planeSelectionStats.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 64);
  os_unfair_lock_unlock(v4);

  *a1 = v6;
  a1[1] = v7;
  result = *&v8;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

double sub_2583C83E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 64);
  os_unfair_lock_unlock(v4);

  *a2 = v6;
  a2[1] = v7;
  result = *&v8;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t sub_2583C8470(_OWORD *a1, uint64_t a2)
{
  v3 = *(*a2 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  v6 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v6;
  os_unfair_lock_unlock(v4);
}

void __swiftcall PlaneSelector.PlaneSelectionStats.init()(MeasureFoundation::PlaneSelector::PlaneSelectionStats *__return_ptr retstr)
{
  *&retstr->inferredCount = 0u;
  *&retstr->prevCount = 0u;
  *&retstr->adCount = 0u;
  *&retstr->localPlaneCount = 0u;
}

__n128 sub_2583C8500@<Q0>(void *a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v6 = a1;
  v7 = *&a4;
  v8 = *(&a4 + 1);
  v9 = *(v4 + 96);
  v10 = [a1 camera];
  ObjectType = swift_getObjectType();
  v78 = v9[3];
  v12 = v78(ObjectType, v9, v7, v8);
  v14 = v13;
  v75 = v9[1];
  v75(ObjectType, v9);
  [v10 imageResolution];
  ARViewToCameraImageTransform();
  v104.x = v12;
  v104.y = v14;
  v15 = CGPointApplyAffineTransform(v104, &v96);
  x_low = LODWORD(v15.x);

  sub_2583C8E94(v6, v90, v7, v8);
  v17 = [v6 hitTest:32 types:{v15.x, v15.y}];
  sub_258385DB0(0, &qword_27F928B10, 0x277CE52C0);
  v18 = sub_258428860();

  if (v18 >> 62)
  {
    if (sub_258428F10())
    {
      goto LABEL_3;
    }

LABEL_8:

    v89 = 0;
    v21.n128_u64[1] = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    memset(&v84, 0, sizeof(v84));
    goto LABEL_9;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x259C7E900](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

  sub_258411D3C(v20, 0, &v96);

  v86 = v98;
  v87 = v99;
  v88 = v100;
  v89 = v101;
  v84 = v96;
  v21.n128_u64[1] = *&v96.ty;
  v22.n128_u64[1] = *(&v97 + 1);
  v85 = v97;
LABEL_9:
  v21.n128_f64[0] = v7;
  v22.n128_f64[0] = v8;
  sub_2583C96B8(v6, v91, v21, v22);
  v23 = v92;
  *v83 = *v93;
  *&v83[3] = *&v93[3];
  v5 = v94;
  x_low = v95;
  v71 = v91[2];
  v72 = v91[1];
  v69 = v91[0];
  v70 = v91[3];
  v74 = v91[4];
  v68 = v91[5];
  if (!v94)
  {
    v50 = v92;
    sub_258385E40(&v84, &qword_27F928B18, &qword_25842FB00);
    v23 = v50;
    sub_258385E40(v90, &qword_27F928B18, &qword_25842FB00);
    v5 = 0;
    *v82 = *v83;
    v51 = *&v83[3];
LABEL_29:
    *&v82[3] = v51;
    goto LABEL_36;
  }

  *v81 = *v93;
  *&v81[3] = *&v93[3];
  if (!*(&v88 + 1))
  {
    sub_258385E40(v90, &qword_27F928B18, &qword_25842FB00);
    *v82 = *v81;
    v51 = *&v81[3];
    goto LABEL_29;
  }

  v66 = v92;
  v24 = [v6 camera];
  v25 = v78(ObjectType, v9, v7, v8);
  v27 = v26;
  v75(ObjectType, v9);
  [v24 imageResolution];
  ARViewToCameraImageTransform();
  v105.x = v25;
  v105.y = v27;
  CGPointApplyAffineTransform(v105, &v96);

  v28 = [v6 camera];
  memset(v102, 0, sizeof(v102));
  v103 = 1;
  v29 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v28, v102).n128_u64[0];
  v76 = v30;
  v79 = *&v29;

  v6 = [objc_allocWithZone(MEMORY[0x277CE5330]) initWithOrigin:0 direction:2 allowingTarget:v79 alignment:v76];
  v31 = (v9[2])(ObjectType, v9);
  v9 = [v31 raycast_];

  sub_258385DB0(0, &qword_27F928B20, 0x277CE5338);
  v32 = sub_258428860();

  v73 = v32;
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_13;
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_33:
  v33 = sub_258428F10();
  if (!v33)
  {
    goto LABEL_34;
  }

LABEL_13:
  v65 = v6;
  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  swift_beginAccess();
  v34 = 0;
  v9 = 0;
  v35 = INFINITY;
  v36 = INFINITY;
  do
  {
    if ((v73 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x259C7E900](v34, v73);
    }

    else
    {
      v37 = *(v73 + 8 * v34 + 32);
    }

    v38 = v37;
    [v37 worldTransform];
    v80 = v39;
    v41 = vsubq_f32(v74, v40);
    v42 = vmulq_f32(v41, v41);
    v43 = v42.f32[2] + vaddv_f32(*v42.f32);
    v44 = v5;
    v45 = *(v5 + 16);
    v46 = *(v45 + 24);
    sub_258389808(v91, &v96, &qword_27F928B18, &qword_25842FB00);

    os_unfair_lock_lock(v46);
    swift_beginAccess();
    v47 = *(v45 + 16);
    os_unfair_lock_unlock(v46);

    sub_258385E40(v91, &qword_27F928B18, &qword_25842FB00);
    [v47 transform];
    v77 = v48;

    if (v43 >= v35)
    {
    }

    else
    {
      v49 = vmulq_f32(v80, v77);
      v36 = fabsf(v49.f32[2] + vaddv_f32(*v49.f32));

      v35 = v43;
      v9 = v38;
    }

    ++v34;
    v5 = v44;
  }

  while (v33 != v34);

  v6 = v65;
  if (!v9)
  {
LABEL_35:
    sub_258385E40(&v84, &qword_27F928B18, &qword_25842FB00);

    sub_258385E40(v90, &qword_27F928B18, &qword_25842FB00);
    *v82 = *v81;
    *&v82[3] = *&v81[3];
    v23 = v66;
    goto LABEL_36;
  }

  [v9 worldTransform];
  if (v36 <= 0.76604 || v35 >= 72.25)
  {

    goto LABEL_35;
  }

  v52.i32[3] = 0;
  _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(v53, v52);
  sceneKitToARKit(_:)(v55, v54);
  v71 = v57;
  v72 = v56;
  v70 = v58;
  v74 = v59;
  v60 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  type metadata accessor for WorldPlane();
  v5 = swift_allocObject();
  *(v5 + 24) = xmmword_25842EC50;
  *(v5 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28, &unk_25842F1D0);
  v61 = swift_allocObject();
  v33 = v60;
  v62 = swift_slowAlloc();
  *v62 = 0;
  *(v61 + 16) = v33;
  *(v61 + 24) = v62;
  *(v5 + 16) = v61;
  swift_endAccess();
  *(v5 + 48) = 3;
  *(v5 + 52) = 0x3F80000000000000;
  if (qword_27F9279F0 != -1)
  {
LABEL_38:
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v33, v102, static SIMD3<>.zero);

  v82[0] = 1;
  v69 = xmmword_25842EC60;
  *&v96.a = xmmword_25842EC60;
  *&v96.c = v72;
  *&v96.tx = v71;
  v97 = v70;
  v98 = v74;
  v99 = 0u;
  v68 = 0u;
  LOBYTE(v100) = 1;
  *(&v100 + 1) = v5;
  v101 = 0;
  sub_258411874();
  x_low = v63;

  sub_258385E40(v90, &qword_27F928B18, &qword_25842FB00);
  sub_258385E40(v91, &qword_27F928B18, &qword_25842FB00);
  v23 = 1;
  sub_258385E40(&v84, &qword_27F928B18, &qword_25842FB00);

LABEL_36:
  *a3 = v69;
  *(a3 + 16) = v72;
  *(a3 + 32) = v71;
  *(a3 + 48) = v70;
  result = v68;
  *(a3 + 64) = v74;
  *(a3 + 80) = v68;
  *(a3 + 96) = v23;
  *(a3 + 97) = *v82;
  *(a3 + 100) = *&v82[3];
  *(a3 + 104) = v5;
  *(a3 + 112) = x_low;
  return result;
}

void sub_2583C8E94(void *a1@<X0>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v11 = *(sub_2583C8148() + 2);

  if (!v11)
  {
    v46 = 0;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    goto LABEL_31;
  }

  v56 = a3;
  v12 = *(v5 + 96);
  ObjectType = swift_getObjectType();
  v57 = *(v12 + 24);
  v60 = *(v12 + 8);
  memset(&v87, 0, sizeof(v87));
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  memset(&v93, 0, sizeof(v93));
  v14 = *(v5 + 160);
  if (!*(v14 + 16))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v15 = ObjectType;
  v16 = 0;
  v17 = 0;
  v18 = v11 - 1;
  v19 = INFINITY;
  while (1)
  {
    v20 = v14 + v16;
    v21 = *(v20 + 32) + a4;
    v22 = *(v20 + 40) + a5;
    v23 = [a1 camera];
    v24 = v57(v15, v12, v21, v22);
    v26 = v25;
    v60(v15, v12);
    [v23 imageResolution];
    ARViewToCameraImageTransform();
    v111.x = v24;
    v111.y = v26;
    v27 = CGPointApplyAffineTransform(v111, &v105);

    v28 = [a1 hitTest:32 types:{v27.x, v27.y}];
    sub_258385DB0(0, &qword_27F928B10, 0x277CE52C0);
    v29 = sub_258428860();

    if (v29 >> 62)
    {
      break;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_18:

    v77 = v89;
    v78 = v90;
    v79 = v91;
    v80 = v92;
    v75 = v87;
    v76 = v88;
    v81 = v93;
    v82 = v94;
    v86 = v98;
    v84 = v96;
    v85 = v97;
    v83 = v95;
    if (v18 == v17)
    {
      goto LABEL_22;
    }

LABEL_19:
    v89 = v77;
    v90 = v78;
    v91 = v79;
    v92 = v80;
    v87 = v75;
    v88 = v76;
    v93 = v81;
    v94 = v82;
    v98 = v86;
    v96 = v84;
    v97 = v85;
    v95 = v83;
    v14 = *(v6 + 160);
    ++v17;
    v16 += 16;
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_32;
    }
  }

  if (!sub_258428F10())
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x259C7E900](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    v30 = *(v29 + 32);
  }

  v31 = v30;

  sub_258411D3C(v31, 0, &v99);
  v107 = v101;
  v108 = v102;
  v109 = v103;
  v110 = v104;
  v105 = v99;
  v106 = v100;

  if (v17)
  {
    v71 = v95;
    v72 = v96;
    v73 = v97;
    v74 = v98;
    v69 = v93;
    v70 = v94;
  }

  else
  {
    sub_258385E40(&v93, &qword_27F928B18, &qword_25842FB00);
    v71 = v107;
    v72 = v108;
    v73 = v109;
    v74 = v110;
    v69 = v105;
    v70 = v106;
    sub_2583D25EC(&v99, v66);
  }

  v32 = WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(a1);
  if (v32 >= v19)
  {
    sub_2583D2648(&v99);
    v77 = v89;
    v78 = v90;
    v79 = v91;
    v80 = v92;
    v75 = v87;
    v76 = v88;
    v81 = v69;
    v82 = v70;
    v86 = v74;
    v34 = v72;
    v85 = v73;
    v35 = v71;
  }

  else
  {
    v33 = v32;
    sub_258385E40(&v87, &qword_27F928B18, &qword_25842FB00);
    v77 = v107;
    v78 = v108;
    v79 = v109;
    v80 = v110;
    v75 = v105;
    v76 = v106;
    v81 = v69;
    v82 = v70;
    v86 = v74;
    v34 = v72;
    v85 = v73;
    v35 = v71;
    v19 = v33;
  }

  v83 = v35;
  v84 = v34;
  if (v18 != v17)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (*(&v79 + 1))
  {
    if (*(&v85 + 1) && (v36 = vsubq_f32(v83, v77), v37 = vmulq_f32(v36, v36), (v37.f32[2] + vaddv_f32(*v37.f32)) <= 0.000625))
    {
      v59 = *&v81.c;
      v61 = *&v81.a;
      v58 = *&v81.tx;
      v54 = v84;
      v55 = v82;
      v46 = v86;
      v63 = v85;
      v65 = v83;
    }

    else
    {
      v38 = [a1 camera];
      v39 = v57(v15, v12, a4, a5);
      v41 = v40;
      v60(v15, v12);
      [v38 imageResolution];
      ARViewToCameraImageTransform();
      v112.x = v39;
      v112.y = v41;
      CGPointApplyAffineTransform(v112, &v105);

      v71 = v77;
      v72 = v78;
      v73 = v79;
      v74 = v80;
      v69 = v75;
      v70 = v76;
      sub_2583D25EC(&v69, &v105);
      v42 = WorldPlane.baseType.getter();
      v43 = [a1 camera];
      v68 = 1;
      memset(v66, 0, sizeof(v66));
      v67 = 1;
      v44 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v43, v66);
      v62 = v45;
      v64 = v44;

      WorldPlane.hitTest(hitRay:withPlaneType:)(v42, &v105, v64, v62);
      v59 = *&v105.c;
      v61 = *&v105.a;
      v58 = *&v105.tx;
      v54 = v108;
      v55 = v106;
      v63 = v109;
      v65 = v107;
      v46 = v110;
      sub_258385E40(&v81, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v75, &qword_27F928B18, &qword_25842FB00);
    }

    sub_258385E40(&v75, &qword_27F928B18, &qword_25842FB00);
    v52 = v54;
    v51 = v55;
    v50 = v58;
    v49 = v59;
    v47 = v61;
    v53 = v63;
    v48 = v65;
  }

  else
  {
    sub_258385E40(&v81, &qword_27F928B18, &qword_25842FB00);
    v46 = 0;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
  }

  a3 = v56;
LABEL_31:
  *a3 = v47;
  *(a3 + 16) = v49;
  *(a3 + 32) = v50;
  *(a3 + 48) = v51;
  *(a3 + 64) = v48;
  *(a3 + 80) = v52;
  *(a3 + 96) = v53;
  *(a3 + 112) = v46;
}

void sub_2583C96B8(objc_class *a1@<X0>, uint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_46;
  }

  v83 = v5;
  v7 = sub_2583C8148();
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = a1;
    *&v169[0] = MEMORY[0x277D84F90];
    v10 = v7;
    sub_258392214(0, v8, 0);
    v11 = v10;
    v12 = *&v169[0];
    v13 = *(*&v169[0] + 16);
    *&v14.f64[0] = a4.n128_u64[0];
    *&v14.f64[1] = a5.n128_u64[0];
    v15 = 32;
    do
    {
      v16 = *&v11[v15];
      *&v169[0] = v12;
      v17 = v12[3];
      if (v13 >= v17 >> 1)
      {
        v104 = v16;
        v109 = v14;
        sub_258392214((v17 > 1), v13 + 1, 1);
        v16 = v104;
        v14 = v109;
        v11 = v10;
        v12 = *&v169[0];
      }

      v12[2] = v13 + 1;
      *&v12[2 * v13 + 4] = vaddq_f64(v16, v14);
      v15 += 16;
      ++v13;
      --v8;
    }

    while (v8);

    a1 = v9;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  v18 = static MeasureCore.shared;
  swift_beginAccess();
  if (!*(v18 + 112))
  {
    goto LABEL_45;
  }

  v19._rawValue = v12;
  v20.super.isa = a1;
  sub_2583B7438(v19, v20);
  v22 = v21;

  if (!v22)
  {
    v57 = 0;
    v71 = 0;
LABEL_48:
    v58 = 0;
    v72 = 0.0;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    goto LABEL_49;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_45:

LABEL_46:
    v57 = 0;
LABEL_47:
    v71 = 0;
    v22 = 0;
    goto LABEL_48;
  }

  v24 = 0;
  v150 = 0.0;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v25 = v23 - 1;
  v143 = 0u;
  v26 = INFINITY;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0.0;
  while (1)
  {
    v27 = v22 + v24;
    if ((*(v22 + v24 + 104) & 1) == 0)
    {
      break;
    }

    v131 = v147;
    v132 = v148;
    v133 = v149;
    v134 = v150;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v130 = v146;
    v137 = v153;
    v138 = v154;
    v135 = v151;
    v136 = v152;
    v142 = v158;
    v140 = v156;
    v141 = v157;
    v139 = v155;
    if (!v25)
    {
      goto LABEL_38;
    }

LABEL_16:
    v147 = v131;
    v148 = v132;
    v149 = v133;
    v150 = v134;
    v143 = v127;
    v144 = v128;
    v145 = v129;
    v146 = v130;
    v154 = v138;
    v153 = v137;
    v152 = v136;
    v151 = v135;
    v158 = v142;
    v157 = v141;
    --v25;
    v24 += 80;
    v156 = v140;
    v155 = v139;
  }

  v28 = *(v27 + 80);
  v30 = *(v27 + 64);
  v29.i64[1] = DWORD2(v30);
  v29.i64[0] = v30;
  v31 = *(v27 + 96) * -0.5;
  *&v32 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(v28, v29);
  v101 = v33;
  v105 = v32;
  v110 = v34;
  v98 = vsubq_f32(0, v35);
  v36 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  type metadata accessor for WorldPlane();
  v37 = swift_allocObject();
  *(v37 + 24) = xmmword_25842EC50;
  *(v37 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28, &unk_25842F1D0);
  v38 = swift_allocObject();
  v39 = v36;
  v40 = swift_slowAlloc();
  *v40 = 0;
  *(v38 + 16) = v39;
  *(v38 + 24) = v40;
  *(v37 + 16) = v38;
  swift_endAccess();
  *(v37 + 48) = 6;
  *(v37 + 52) = v31 + 1.0;
  *(v37 + 56) = 1065353216;
  LOBYTE(v115[0]) = 1;
  memset(v175, 0, sizeof(v175));
  v176 = 1;
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v39, v175, static SIMD3<>.zero);

  v114[0] = 1;
  v41 = *(v37 + 48);
  if (v41 > 6)
  {
    goto LABEL_27;
  }

  if (((1 << v41) & 0x68) != 0)
  {
    v42 = WorldPlane.confidence.getter();
    goto LABEL_29;
  }

  if (((1 << v41) & 0x14) != 0)
  {
    v42 = WorldPlane.confidence.getter() * 0.5;
    goto LABEL_29;
  }

  if (v41 == 1)
  {
    v42 = WorldPlane.confidence.getter() * 0.75;
  }

  else
  {
LABEL_27:
    v43 = v110;
    v43.i32[3] = 0;
    v44 = WorldPlane.distanceToEdge(point:)(v43);
    v42 = 0.0;
    if ((v44 & 0x100000000) == 0)
    {
      v42 = fmaxf(1.0 - (fminf(COERCE_FLOAT(v44 & 0x7FFFFFFF), 0.06) / 0.06), 0.2) * WorldPlane.confidence.getter();
    }
  }

LABEL_29:
  v45 = v22;
  v169[0] = xmmword_25842EC60;
  v169[1] = v105;
  v169[2] = v101;
  v169[3] = v98;
  v169[4] = v110;
  v170 = 0;
  v171 = 0;
  v172 = v114[0];
  v173 = v37;
  v174 = v42;
  if (v24)
  {
    v47 = *(&v151 + 1);
    LODWORD(v46) = v151;
    v49 = HIDWORD(v151);
    v48 = DWORD2(v151);
    v92 = v153;
    v95 = v152;
    v88 = v155;
    v90 = v154;
    v51 = *(&v156 + 1);
    v50 = v156;
    v52 = v157;
    LODWORD(v122[0]) = *(&v157 + 1);
    *(v122 + 3) = DWORD1(v157);
    v53 = *(&v157 + 1);
    v54 = v158;
  }

  else
  {
    sub_258385E40(&v151, &qword_27F928B18, &qword_25842FB00);
    sub_2583D25EC(v169, &v159);
    v50 = 0;
    v51 = 0;
    v47 = 0.75;
    v49 = 1045220557;
    v46 = 0.5;
    v48 = 1031127695;
    v92 = v101;
    v95 = v105;
    v88 = v110;
    v90 = v98;
    v52 = v114[0];
    v53 = v37;
    v54 = v42;
  }

  v55 = WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(a1);
  if (v55 >= v26)
  {
    sub_2583D2648(v169);
    v131 = v147;
    v132 = v148;
    v133 = v149;
    v134 = v150;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v130 = v146;
    *&v135 = __PAIR64__(LODWORD(v47), LODWORD(v46));
    *(&v135 + 1) = __PAIR64__(v49, v48);
    v136 = v95;
    v137 = v92;
    v138 = v90;
    v139 = v88;
    *&v140 = v50;
    *(&v140 + 1) = v51;
    LOBYTE(v141) = v52;
    DWORD1(v141) = *(v122 + 3);
    *(&v141 + 1) = v122[0];
    *(&v141 + 1) = v53;
  }

  else
  {
    v56 = v55;
    sub_258385E40(&v143, &qword_27F928B18, &qword_25842FB00);
    v127 = xmmword_25842EC60;
    v128 = v105;
    v129 = v101;
    v130 = v98;
    v131 = v110;
    v132 = 0uLL;
    LOBYTE(v133) = v114[0];
    *(&v133 + 1) = v37;
    v134 = v42;
    *&v135 = __PAIR64__(LODWORD(v47), LODWORD(v46));
    *(&v135 + 1) = __PAIR64__(v49, v48);
    v136 = v95;
    v137 = v92;
    v138 = v90;
    v139 = v88;
    *&v140 = v50;
    *(&v140 + 1) = v51;
    LOBYTE(v141) = v52;
    DWORD1(v141) = *(v122 + 3);
    *(&v141 + 1) = v122[0];
    *(&v141 + 1) = v53;
    v26 = v56;
  }

  v142 = v54;
  v22 = v45;
  if (v25)
  {
    goto LABEL_16;
  }

LABEL_38:

  v124 = v132;
  v125 = v133;
  v126 = v134;
  v122[0] = v127;
  v122[1] = v128;
  v122[2] = v129;
  v122[3] = v130;
  v123 = v131;
  v57 = *(&v133 + 1);
  if (!*(&v133 + 1))
  {
    sub_258385E40(&v135, &qword_27F928B18, &qword_25842FB00);
    goto LABEL_47;
  }

  v58 = *(&v141 + 1);
  if (*(&v141 + 1) && (v59 = vsubq_f32(v139, v123), v60 = vmulq_f32(v59, v59), (v60.f32[2] + vaddv_f32(*v60.f32)) <= 0.000625))
  {
    v103 = v136;
    v108 = v135;
    v97 = v138;
    v100 = v137;
    v71 = *(&v140 + 1);
    v57 = v140;
    v22 = v141;
    v72 = v142;
    v113 = v139;
    sub_258385E40(&v127, &qword_27F928B18, &qword_25842FB00);
    v82 = v97;
    v81 = v100;
    v80 = v103;
    v79 = v108;
    v78 = v113;
  }

  else
  {
    v61 = *(v83 + 96);
    v62 = [(objc_class *)a1 camera];
    ObjectType = swift_getObjectType();
    v64 = (*(v61 + 24))(ObjectType, v61, a4, a5);
    v66 = v65;
    (*(v61 + 8))(ObjectType, v61);
    [v62 imageResolution];
    ARViewToCameraImageTransform();
    v179.x = v64;
    v179.y = v66;
    CGPointApplyAffineTransform(v179, &v159);

    sub_2583D25EC(v122, &v159);
    v67 = WorldPlane.baseType.getter();
    v68 = [(objc_class *)a1 camera];
    v121 = 1;
    memset(v167, 0, sizeof(v167));
    v168 = 1;
    v69 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v68, v167);
    v106 = v70;
    v111 = v69;

    WorldPlane.hitTest(hitRay:withPlaneType:)(v67, &v159, v111, v106);
    v102 = *&v159.c;
    v107 = *&v159.a;
    v96 = v160;
    v99 = *&v159.tx;
    v112 = v161;
    v57 = v162;
    v71 = v163;
    v22 = v164;
    v58 = v165;
    v72 = v166;
    sub_258385E40(&v127, &qword_27F928B18, &qword_25842FB00);
    if (v58)
    {
      v115[0] = v107;
      v115[1] = v102;
      v115[2] = v99;
      v115[3] = v96;
      v115[4] = v112;
      v116 = v57;
      v117 = v71;
      v118 = v22;
      v119 = v58;
      v120 = v72;
      sub_2583D25EC(v115, v114);
      v73 = [(objc_class *)a1 camera];
      [v73 transform];
      v91 = v75;
      v93 = v74;
      v87 = v77;
      v89 = v76;

      v177.columns[1] = v91;
      v177.columns[0] = v93;
      v177.columns[3] = v87;
      v177.columns[2] = v89;
      v178 = __invert_f4(v177);
      v94 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v178.columns[0], v112.f32[0]), v178.columns[1], *v112.f32, 1), v178.columns[2], v112, 2), v178.columns[3], v112, 3);
      sub_258385E40(&v135, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v159, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v127, &qword_27F928B18, &qword_25842FB00);
      if (v94.f32[2] > 0.0)
      {
        sub_258385E40(&v159, &qword_27F928B18, &qword_25842FB00);
        goto LABEL_46;
      }
    }

    else
    {
      sub_258385E40(&v135, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v127, &qword_27F928B18, &qword_25842FB00);
    }

    v79 = v107;
    v78 = v112;
    v81 = v99;
    v80 = v102;
    v82 = v96;
  }

LABEL_49:
  *a3 = v79;
  *(a3 + 16) = v80;
  *(a3 + 32) = v81;
  *(a3 + 48) = v82;
  *(a3 + 64) = v78;
  *(a3 + 80) = v57;
  *(a3 + 88) = v71;
  *(a3 + 96) = v22;
  *(a3 + 104) = v58;
  *(a3 + 112) = v72;
}

void sub_2583CA29C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v427 = v8;
  v411 = v9;
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v14 = &v670;
  v15 = &v471;
  *&v710.tx = v10[2];
  v711 = v13;
  *&v710.a = v11;
  *&v710.c = v12;
  v16 = v10[4];
  v17 = v10[5];
  v18 = v10[8];
  v715 = v10[7];
  v716 = v18;
  v19 = v10[6];
  v425.i64[0] = v10;
  v713 = v17;
  v714 = v19;
  v712 = v16;
  v20 = sub_258428470();
  v399 = *(v20 - 8);
  v400 = v20;
  MEMORY[0x28223BE20](v20);
  v397 = &v394 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_258428490();
  v401 = *(v22 - 8);
  v402 = v22;
  MEMORY[0x28223BE20](v22);
  v398 = &v394 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = *&v427;
  *&v25 = *(&v427 + 1);
  v426.i64[0] = v1;
  v26 = *(v1 + 96);
  *&v427 = v7;
  v27 = [v7 camera];
  ObjectType = swift_getObjectType();
  v29 = (*(v26 + 24))(ObjectType, v26, *&v24, *&v25);
  v31 = v30;
  (*(v26 + 8))(ObjectType, v26);
  [v27 imageResolution];
  v408 = v6;
  ARViewToCameraImageTransform();
  v717.x = v29;
  v717.y = v31;
  v34 = CGPointApplyAffineTransform(v717, &v568);
  *&v33 = v34.y;
  *&v32 = v34.x;
  v409 = v33;
  v410 = v32;

  v607 = 0u;
  v608 = 0u;
  v609 = 0u;
  v610 = 0u;
  v611 = 0u;
  v612 = 0u;
  v613 = 0u;
  v614 = 0;
  memset(&v479, 0, sizeof(v479));
  v480 = 0u;
  v481 = 0u;
  v482 = 0u;
  v483 = 0u;
  v484 = 0.0;
  if (v4)
  {
    v35 = 0;
    v36 = *(v4 + 16);
    while (v36 != v35)
    {
      v37 = v4 + v35++;
      if (!*(v37 + 32))
      {
        goto LABEL_5;
      }
    }

    v421.i32[0] = 0;
    v419 = 0;
    v38 = 0;
    v39 = 0;
    *&v420 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v414 = 0u;
    v415 = 0u;
    v412 = 0u;
    v413 = 0u;
  }

  else
  {
LABEL_5:
    sub_2583C8E94(v427, v485, *&v24, *&v25);
    v38 = v486;
    v39 = v487;
    v414 = v489;
    v415 = v488;
    v412 = v491;
    v413 = v490;
    v40 = v493;
    v41 = v494;
    v42 = v495;
    v43 = v496;
    v421.i32[0] = v485[0];
    *&v420 = v492;
    v419 = v485[1];
    if (!v4)
    {
      v416 = v496;
      v417 = v495;
      v418 = v487;
      *&v422 = v494;
      v423.i32[0] = v486;
      v424.i64[0] = v493;
LABEL_14:
      v59 = *(sub_2583C8148() + 2);

      v60 = 0;
      v61 = 0;
      v15 = 0x27F927000;
      v45 = &static MeasureCore.shared;
      while (1)
      {
        if (v59 == v61)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0uLL;
          v55 = 0uLL;
          v56 = 0uLL;
          v57 = 0uLL;
          v58 = 0uLL;
          goto LABEL_26;
        }

        v62 = *(v426.i64[0] + 160);
        if (v61 >= *(v62 + 16))
        {
          break;
        }

        v63 = (&v60->a + v62);
        v64 = v63[4];
        v65 = v63[5];
        if (qword_27F927AC8 != -1)
        {
          swift_once();
        }

        sub_2583DED0C(v427, &v497, COERCE_UNSIGNED_INT64(v64 + *&v24), COERCE_UNSIGNED_INT64(v65 + *&v25));
        v47 = v507;
        v60 = (v60 + 16);
        ++v61;
        if (v507)
        {
          if (v61 == 1)
          {
            v48 = v508;
            v53 = v506;
            v52 = v505;
            v51 = v504;
            v15 = &v471;
            v56 = v502;
            v57 = v503;
            v54 = v500;
            v55 = v501;
            *&v58 = v498;
            v50 = v499;
            v49 = v497;
            v45 = v425.i64[0];
            if (v4)
            {
              goto LABEL_27;
            }

            goto LABEL_30;
          }

          v66 = [v427 camera];
          LOBYTE(v568.a) = 1;
          memset(v663, 0, 64);
          v663[64] = 1;
          v67 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v66, v663);
          v406 = v68;
          v407 = v67;

          sub_2583DEFAC(&v509, v407, v406);
          *&v69 = v510;
          v403 = v69;
          v70 = v509;
          v71 = v511;
          v406 = v513;
          v407 = v512;
          v404 = v515;
          v405 = v514;
          v51 = v516;
          v52 = v517;
          v53 = v518;
          v47 = v519;
          v72 = v520;
          sub_258385E40(&v497, &qword_27F928B18, &qword_25842FB00);
          v48 = v72;
          v58 = v403;
          v57 = v404;
          v56 = v405;
          v55 = v406;
          v54 = v407;
          v49 = v70;
          v50 = v71;
LABEL_26:
          v15 = &v471;
          v45 = v425.i64[0];
          if (v4)
          {
            goto LABEL_27;
          }

LABEL_30:
          v394 = v53;
          v76 = v48;
          v403 = v58;
          v404 = v57;
          v405 = v56;
          v406 = v55;
          v407 = v54;
          v395 = v49;
          v396 = v50;
          sub_2583CE3B4(v427, v45, v521, *&v24, *&v25);
          v77 = v521[0];
          v78 = v521[1];
          v79 = v521[2];
          v80 = v521[3];
          v81 = v522;
          v82 = v523;
          v83 = v524;
          v84 = v525;
          v73 = v526;
          v85 = v527;
          v86 = v528;
          v87 = v529;
          v88 = v530;
          if (v4)
          {
            v53 = v394;
            v49 = v395;
            v50 = v396;
            v55 = v406;
            v54 = v407;
            v57 = v404;
            v56 = v405;
            *&v58 = v403;
            v48 = v76;
            goto LABEL_33;
          }

          v92 = v76;
          LODWORD(v664.a) = v521[0];
          v93 = v424.i64[0];
          v94 = v423.i32[0];
          v95 = v422;
          v53 = v394;
          v49 = v395;
          v50 = v396;
          v55 = v406;
          v54 = v407;
          v57 = v404;
          v56 = v405;
          *&v58 = v403;
LABEL_39:
          *(&v664.a + 4) = __PAIR64__(v79, v78);
          HIDWORD(v664.b) = v80;
          *&v664.c = v81;
          *&v664.tx = v82;
          v665 = v83;
          v666 = v84;
          *&v667 = v73;
          *(&v667 + 1) = v85;
          *&v668 = v86;
          *(&v668 + 1) = v87;
          v669 = v88;
          *(v670.i64 + 4) = v58;
          v670.i32[0] = v49;
          v670.i32[3] = v50;
          v671 = v54;
          v672 = v55;
          v673 = v56;
          v674 = v57;
          *&v675 = v51;
          *(&v675 + 1) = v52;
          *&v676 = v53;
          *(&v676 + 1) = v47;
          v677 = v92;
          *&v678.a = __PAIR64__(v419, v421.u32[0]);
          *&v678.b = __PAIR64__(v418, v94);
          *&v678.c = v415;
          *&v678.tx = v414;
          v679 = v413;
          v680 = v412;
          *&v681 = v420;
          *(&v681 + 1) = v93;
          *&v682 = v95;
          *(&v682 + 1) = v417;
          v683 = v416;
          if (![objc_opt_self() jasperAvailable])
          {
            v689 = 0.0;
            v687 = 0u;
            v688 = 0u;
            v685 = 0u;
            v686 = 0u;
            memset(&v684, 0, sizeof(v684));
            v692 = v666;
            v693 = v667;
            v694 = v668;
            v695 = v669;
            v690 = v664;
            v691 = v665;
            v698 = v672;
            v699 = v673;
            v696 = v670;
            v697 = v671;
            v703 = v677;
            v701 = v675;
            v702 = v676;
            v700 = v674;
            v704 = v678;
            v705 = v679;
            v709 = v683;
            v707 = v681;
            v708 = v682;
            v706 = v680;
            v96 = v426.i64[0];
            goto LABEL_54;
          }

          v96 = v426.i64[0];
          if (*(v426.i64[0] + 85))
          {
            v97.n128_u64[0] = v24;
            v98.n128_u64[0] = v25;
            sub_2583C96B8(v427, &v531, v97, v98);
            v570 = v533;
            v571 = v534;
            v572 = v535;
            v568 = v531;
            *&v573 = v536;
            v569 = v532;
            if (*(&v535 + 1))
            {
              v423.i64[0] = *(&v535 + 1);
              v424 = v533;
              v99 = v536;
              v539 = v533;
              v540 = v534;
              v541 = v535;
              *&v542 = v536;
              v537 = v531;
              v538 = v532;
              sub_2583D25EC(&v537, v562);
              if (qword_27F927AC8 != -1)
              {
                swift_once();
              }

              v100 = v424;
              v100.i32[3] = 0;
              v424 = v100;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B38, &unk_25842F1E8);
              v101 = swift_allocObject();
              v102 = v674;
              v103 = v676;
              *(v101 + 112) = v675;
              *(v101 + 128) = v103;
              *(v101 + 144) = v677;
              v104 = v670;
              v105 = v671;
              *(v101 + 16) = xmmword_25842BFB0;
              *(v101 + 32) = v104;
              v106 = v672;
              v107 = v673;
              *(v101 + 48) = v105;
              *(v101 + 64) = v106;
              *(v101 + 80) = v107;
              *(v101 + 96) = v102;
              v108 = v681;
              *(v101 + 224) = v680;
              *(v101 + 240) = v108;
              *(v101 + 256) = v682;
              *(v101 + 272) = v683;
              v109 = *&v678.c;
              *(v101 + 160) = *&v678.a;
              *(v101 + 176) = v109;
              v110 = v679;
              *(v101 + 192) = *&v678.tx;
              *(v101 + 208) = v110;
              v111 = *&v664.a;
              v112 = *&v664.c;
              v113 = v665;
              *(v101 + 320) = *&v664.tx;
              *(v101 + 336) = v113;
              *(v101 + 288) = v111;
              *(v101 + 304) = v112;
              v114 = v666;
              v115 = v667;
              v116 = v668;
              *(v101 + 400) = v669;
              *(v101 + 368) = v115;
              *(v101 + 384) = v116;
              *(v101 + 352) = v114;
              v421.i64[0] = sub_2583E3A68(v101, v424);
              *&v422 = v117;
              v119 = v118;
              swift_setDeallocating();
              sub_258389808(&v670, v562, &qword_27F928B18, &qword_25842FB00);
              sub_258389808(&v678, v562, &qword_27F928B18, &qword_25842FB00);
              sub_258389808(&v664, v562, &qword_27F928B18, &qword_25842FB00);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B18, &qword_25842FB00);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              sub_258385E40(&v531, &qword_27F928B18, &qword_25842FB00);
              if (v119)
              {
                v686 = v570;
                v687 = v571;
                v688 = v572;
                v689 = *&v573;
                v684 = v568;
                v685 = v569;
                v690 = v664;
                v691 = v665;
                v695 = v669;
                v693 = v667;
                v694 = v668;
                v692 = v666;
                v698 = v672;
                v699 = v673;
                v696 = v670;
                v697 = v671;
                v703 = v677;
                v701 = v675;
                v702 = v676;
                v700 = v674;
              }

              else
              {
                v124.i64[0] = v421.i64[0];
                v124.i64[1] = v422;
                LODWORD(v420) = *(v423.i64[0] + 48);
                _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*v424.i64, v124);
                sceneKitToARKit(_:)(v126, v125);
                v423 = v128;
                v424 = v127;
                v421 = v130;
                v422 = v129;
                v131 = objc_allocWithZone(MEMORY[0x277CE5218]);
                v132 = [v131 initWithTransform_];
                type metadata accessor for WorldPlane();
                v133 = swift_allocObject();
                *(v133 + 24) = xmmword_25842EC50;
                *(v133 + 40) = 0x3F5DB22D40000000;
                swift_beginAccess();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28, &unk_25842F1D0);
                v134 = swift_allocObject();
                v135 = v132;
                v136 = swift_slowAlloc();
                *v136 = 0;
                *(v134 + 16) = v135;
                *(v134 + 24) = v136;
                *(v133 + 16) = v134;
                swift_endAccess();
                *(v133 + 48) = v420;
                *(v133 + 52) = 1.0 - v99;
                *(v133 + 56) = 1065353216;
                v562[0] = 1;
                memset(v662, 0, 64);
                v662[64] = 1;
                if (qword_27F9279F0 != -1)
                {
                  swift_once();
                }

                WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v135, v662, static SIMD3<>.zero);

                LOBYTE(v555.a) = 1;
                v420 = xmmword_25842EC60;
                v652 = xmmword_25842EC60;
                v653 = v424;
                v654 = v423;
                v655 = v422;
                v656 = v421;
                v658 = 0;
                v657 = 0;
                v659 = 1;
                v660 = v133;
                v661 = 0;
                sub_258411874();
                v138 = v137;
                sub_258385E40(&v531, &qword_27F928B18, &qword_25842FB00);
                *&v684.a = v420;
                *&v684.c = v424;
                *&v684.tx = v423;
                v685 = v422;
                v686 = v421;
                v687 = 0uLL;
                LOBYTE(v688) = 1;
                *(&v688 + 1) = v133;
                v689 = v138;
                v692 = v666;
                v693 = v667;
                v694 = v668;
                v695 = v669;
                v690 = v664;
                v691 = v665;
                v700 = v674;
                v701 = v675;
                v702 = v676;
                v703 = v677;
                v696 = v670;
                v697 = v671;
                v698 = v672;
                v699 = v673;
              }

              v704 = v678;
              v705 = v679;
              v709 = v683;
              v707 = v681;
              v708 = v682;
              v706 = v680;
              v96 = v426.i64[0];
              goto LABEL_54;
            }

            v686 = v533;
            v687 = v534;
            v688 = v535;
            v689 = v536;
            v684 = v531;
            v685 = v532;
            v690 = v664;
            v691 = v665;
            v695 = v669;
            v693 = v667;
            v694 = v668;
            v692 = v666;
            v698 = v672;
            v699 = v673;
            v696 = v670;
            v697 = v671;
            v703 = v677;
            v701 = v675;
            v702 = v676;
            v700 = v674;
            v120 = *&v678.a;
            v121 = *&v678.c;
            v122 = *&v678.tx;
            v123 = v679;
          }

          else
          {
            v689 = 0.0;
            v687 = 0u;
            v688 = 0u;
            v685 = 0u;
            v686 = 0u;
            memset(&v684, 0, sizeof(v684));
            v692 = v666;
            v693 = v667;
            v694 = v668;
            v695 = v669;
            v690 = v664;
            v691 = v665;
            v698 = v672;
            v699 = v673;
            v696 = v670;
            v697 = v671;
            v703 = v677;
            v701 = v675;
            v702 = v676;
            v700 = v674;
            v120 = *&v678.a;
            v121 = *&v678.c;
            v122 = *&v678.tx;
            v123 = v679;
          }

          *&v704.tx = v122;
          v705 = v123;
          *&v704.a = v120;
          *&v704.c = v121;
          v709 = v683;
          v707 = v681;
          v708 = v682;
          v706 = v680;
          goto LABEL_54;
        }
      }

      __break(1u);
      goto LABEL_209;
    }

    v36 = *(v4 + 16);
  }

  v44 = (v4 + 32);
  v45 = v425.i64[0];
  v424.i64[0] = v40;
  v423.i32[0] = v38;
  *&v422 = v41;
  v418 = v39;
  v417 = v42;
  v416 = v43;
  while (v36)
  {
    v46 = *v44++;
    --v36;
    if (v46 == 3)
    {
      goto LABEL_14;
    }
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
  v57 = 0uLL;
  v58 = 0uLL;
LABEL_27:
  v73 = *(v4 + 16);
  v74 = (v4 + 32);
  while (v73)
  {
    v75 = *v74++;
    --v73;
    if (v75 == 1)
    {
      goto LABEL_30;
    }
  }

  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v81 = 0uLL;
  v82 = 0uLL;
  v83 = 0uLL;
  v84 = 0uLL;
LABEL_33:
  v89 = *(v4 + 16);
  v90 = (v4 + 32);
  while (v89)
  {
    v91 = *v90++;
    --v89;
    if (v91 == 6)
    {
      v92 = v48;
      LODWORD(v664.a) = v77;
      v93 = v424.i64[0];
      v94 = v423.i32[0];
      v95 = v422;
      goto LABEL_39;
    }
  }

  v689 = 0.0;
  v687 = 0u;
  v688 = 0u;
  v685 = 0u;
  v686 = 0u;
  memset(&v684, 0, sizeof(v684));
  *&v690.a = __PAIR64__(v78, v77);
  *&v690.b = __PAIR64__(v80, v79);
  *&v690.c = v81;
  *&v690.tx = v82;
  v691 = v83;
  v692 = v84;
  *&v693 = v73;
  *(&v693 + 1) = v85;
  *&v694 = v86;
  *(&v694 + 1) = v87;
  v695 = v88;
  *(v696.i64 + 4) = v58;
  v696.i32[0] = v49;
  v696.i32[3] = v50;
  v697 = v54;
  v698 = v55;
  v699 = v56;
  v700 = v57;
  *&v701 = v51;
  *(&v701 + 1) = v52;
  *&v702 = v53;
  *(&v702 + 1) = v47;
  v703 = v48;
  *&v704.a = __PAIR64__(v419, v421.u32[0]);
  *&v704.b = __PAIR64__(v418, v423.u32[0]);
  *&v704.c = v415;
  *&v704.tx = v414;
  v705 = v413;
  v706 = v412;
  *&v707 = v420;
  *(&v707 + 1) = v424.i64[0];
  *&v708 = v422;
  *(&v708 + 1) = v417;
  v709 = v416;
  v96 = v426.i64[0];
LABEL_54:
  v619 = v686;
  v620 = v687;
  v621 = v688;
  v622 = v689;
  v615 = *&v684.a;
  v616 = *&v684.c;
  v617 = *&v684.tx;
  v618 = v685;
  v602 = v691;
  v601 = *&v690.tx;
  v600 = *&v690.c;
  v599 = *&v690.a;
  v606 = v695;
  v605 = v694;
  v604 = v693;
  v603 = v692;
  v594 = v705;
  v593 = *&v704.tx;
  v592 = *&v704.c;
  v591 = *&v704.a;
  v598 = v709;
  v597 = v708;
  v596 = v707;
  v595 = v706;
  v586 = v699;
  v585 = v698;
  v584 = v697;
  v583 = v696;
  v590 = v703;
  v589 = v702;
  v588 = v701;
  v587 = v700;
  if ([objc_opt_self() jasperAvailable])
  {
    v139 = *(v96 + 85);
    if (v139 == 3)
    {
      v557 = v481;
      v558 = v482;
      v559 = v483;
      *&v560 = v484;
      v555 = v479;
      v556 = v480;
      *&v479.tx = v617;
      v480 = v618;
      *&v479.a = v615;
      *&v479.c = v616;
      v484 = v622;
      v482 = v620;
      v483 = v621;
      v481 = v619;
      sub_258389808(&v684, &v568, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v555, &qword_27F928B18, &qword_25842FB00);
      v563 = v481;
      v564 = v482;
      v565 = v483;
      *v562 = v479;
      *&v562[48] = v480;
      v140 = v45[1];
      *&v568.a = *v45;
      v141 = v45[5];
      v570 = v45[4];
      v142 = v45[2];
      v569 = v45[3];
      *&v568.tx = v142;
      *&v568.c = v140;
      v143 = v45[7];
      v574 = v45[8];
      v144 = v45[6];
      v573 = v143;
      v572 = v144;
      *&v566 = v484;
      v571 = v141;
      if (sub_2583C77E4(&v568) == 1)
      {
        sub_258389808(v562, &v537, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
        goto LABEL_96;
      }

      if (LOBYTE(v568.a))
      {
        sub_258389808(v562, &v537, &qword_27F928B18, &qword_25842FB00);
        v148 = &v684;
        v149 = &qword_27F928B18;
        v150 = &qword_25842FB00;
      }

      else
      {
        sub_258389808(v562, &v537, &qword_27F928B18, &qword_25842FB00);
        sub_258389808(v45, &v537, &qword_27F928B30, &qword_25842F1E0);
        if ((PlaneSelector.debugOptions.getter() & 1) != 0 && (swift_beginAccess(), *(v96 + 208)))
        {
          sub_2583ACFA4(v96 + 184, &v537);
          d = v537.d;
          tx = v537.tx;
          __swift_project_boxed_opaque_existential_0(&v537, *&v537.d);
          (*(*&tx + 16))(&v583, &v591, &v599, &v607, &v615, COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
          __swift_destroy_boxed_opaque_existential_0(&v537);
        }

        else
        {
          sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
        }

        if (*(v96 + 168))
        {
          swift_beginAccess();
          if (*(v96 + 208))
          {
            sub_2583ACFA4(v96 + 184, &v548);
            v165 = v548.d;
            v166 = v548.tx;
            __swift_project_boxed_opaque_existential_0(&v548, *&v548.d);
            v539 = v481;
            v540 = v482;
            v541 = v483;
            *&v542 = v484;
            v537 = v479;
            v538 = v480;
            (*(*&v166 + 24))(&v537, COERCE_CGFLOAT(*&v165), COERCE_CGFLOAT(*&v166));
            __swift_destroy_boxed_opaque_existential_0(&v548);
          }
        }

        if ((*(v96 + 168) & 2) != 0)
        {
          swift_beginAccess();
          if (*(v96 + 208))
          {
            sub_2583ACFA4(v96 + 184, &v548);
            v167 = v548.d;
            v168 = v548.tx;
            __swift_project_boxed_opaque_existential_0(&v548, *&v548.d);
            *&v169.f64[0] = v410;
            *&v169.f64[1] = v409;
            (*(*&v168 + 32))(v427, COERCE_CGFLOAT(*&v167), COERCE_CGFLOAT(*&v168), COERCE_DOUBLE(vcvt_f32_f64(v169)));
            sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
            __swift_destroy_boxed_opaque_existential_0(&v548);
            goto LABEL_96;
          }
        }

        v149 = &qword_27F928B30;
        v150 = &qword_25842F1E0;
        v148 = v45;
      }

      sub_258385E40(v148, v149, v150);
LABEL_96:
      v170 = [objc_opt_self() standardUserDefaults];
      v171 = [v170 kPEShowStats];

      if (v171)
      {
        v552 = v483;
        v550 = v481;
        v551 = v482;
        *&v553 = v484;
        v548 = v479;
        v549 = v480;
        v172 = *(&v483 + 1);
        if (*(&v483 + 1))
        {
          v639 = v480;
          v640 = v481;
          v641 = v482;
          v638 = v479;
          v173 = v553;
          *&v642 = v483;
          sub_258385DB0(0, &qword_27F928550, 0x277D85C78);
          v430 = v481;
          v431 = v482;
          v432 = v483;
          v433 = v484;
          v428 = v479;
          v429 = v480;
          sub_2583D25EC(&v428, &v440);
          v174 = sub_258428CC0();
          v175 = swift_allocObject();
          swift_weakInit();
          v176 = swift_allocObject();
          *(v176 + 16) = v175;
          v177 = v639;
          v178 = v641;
          *(v176 + 96) = v640;
          *(v176 + 112) = v178;
          v179 = v642;
          v180 = *&v638.c;
          *(v176 + 32) = *&v638.a;
          *(v176 + 48) = v180;
          *(v176 + 64) = *&v638.tx;
          *(v176 + 80) = v177;
          *(v176 + 128) = v179;
          *(v176 + 136) = v172;
          *(v176 + 144) = v173;
          v625.i64[0] = sub_2583D2804;
          v625.i64[1] = v176;
          v623.i64[0] = MEMORY[0x277D85DD0];
          v623.i64[1] = 1107296256;
          v624.i64[0] = sub_258383428;
          v624.i64[1] = &block_descriptor_57;
          v181 = _Block_copy(&v623);
          v442 = v550;
          v443 = v551;
          v444 = v552;
          v445.i32[0] = v553;
          v440 = v548;
          v441 = v549;
          sub_2583D25EC(&v440, &v645);

          v182 = v398;
          sub_258428480();
          *&v645.a = MEMORY[0x277D84F90];
          sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608, &qword_25842D750);
          sub_2583A3F30();
          v183 = v397;
          v184 = v400;
          sub_258428E70();
          MEMORY[0x259C7E5E0](0, v182, v183, v181);
          _Block_release(v181);

          sub_258385E40(&v548, &qword_27F928B18, &qword_25842FB00);
          sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
          sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
          sub_258385E40(&v696, &qword_27F928B18, &qword_25842FB00);
          (*(v399 + 8))(v183, v184);
          v185 = (*(v401 + 8))(v182, v402);
          v185.i64[0] = *v562;
          v425 = v185;
          v185.i64[0] = *&v562[8];
          v423 = v185;
          v426 = *&v562[32];
          v427 = *&v562[16];
          v424 = *&v562[48];
          v421 = v565;
          v422 = v563;
          v186 = v564;
LABEL_101:
          v420 = v186;
          v189 = *&v566;
LABEL_215:
          v386 = v15[13];
          v15[4] = v15[12];
          v15[5] = v386;
          v15[6] = v15[14];
          v478 = v484;
          v387 = v15[9];
          *v15 = v15[8];
          v15[1] = v387;
          v388 = v15[11];
          v15[2] = v15[10];
          v15[3] = v388;
          sub_258385E40(&v471, &qword_27F928B18, &qword_25842FB00);
          v389 = v411;
          v390 = v423.i64[0];
          *v411 = v425.i64[0];
          v389[1] = v390;
          v391 = v426;
          *(v389 + 1) = v427;
          *(v389 + 2) = v391;
          v393 = v421;
          v392 = v422;
          *(v389 + 3) = v424;
          *(v389 + 4) = v392;
          *(v389 + 5) = v420;
          *(v389 + 6) = v393;
          *(v389 + 28) = v189;
          return;
        }
      }

      sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
      v187 = &v696;
LABEL_100:
      sub_258385E40(v187, &qword_27F928B18, &qword_25842FB00);
      v188.i64[0] = *v562;
      v425 = v188;
      v188.i64[0] = *&v562[8];
      v423 = v188;
      v426 = *&v562[32];
      v427 = *&v562[16];
      v424 = *&v562[48];
      v421 = v565;
      v422 = v563;
      v186 = v564;
      goto LABEL_101;
    }

    v145 = *(&v688 + 1);
    if (*(&v688 + 1))
    {
      v146 = v689;
      if (v139 == 1)
      {
        v147 = *(v96 + 48);
      }

      else
      {
        if (v139 != 2)
        {
          goto LABEL_69;
        }

        v147 = *(v96 + 56);
      }

      if (vcvts_n_f32_s64(v147, 1uLL) <= v689)
      {
        v578 = v685;
        v579 = v686;
        v580 = v687;
        v577 = v684;
        v548 = v479;
        v549 = v480;
        v552 = v483;
        v550 = v481;
        v551 = v482;
        v556 = v685;
        *&v581 = v688;
        *&v553 = v484;
        v555 = v684;
        *&v560 = v689;
        v559 = v688;
        v558 = v687;
        v557 = v686;
        sub_2583D25EC(&v555, &v568);
        sub_258385E40(&v548, &qword_27F928B18, &qword_25842FB00);
        v479 = v577;
        v481 = v579;
        v482 = v580;
        v480 = v578;
        *&v483 = v581;
        *(&v483 + 1) = v145;
        v484 = v146;
        *&v562[48] = v578;
        *v562 = v577;
        *&v566 = v146;
        v565 = v483;
        v564 = v580;
        v563 = v579;
        v159 = v45[1];
        *&v568.a = *v45;
        v160 = v45[2];
        v161 = v45[3];
        v162 = v45[5];
        v570 = v45[4];
        v569 = v161;
        *&v568.tx = v160;
        *&v568.c = v159;
        v163 = v45[6];
        v164 = v45[7];
        v574 = v45[8];
        v573 = v164;
        v572 = v163;
        v571 = v162;
        if (sub_2583C77E4(&v568) == 1 || (LOBYTE(v568.a) & 1) != 0)
        {
          sub_258389808(v562, &v537, &qword_27F928B18, &qword_25842FB00);
        }

        else
        {
          sub_258389808(v45, &v537, &qword_27F928B30, &qword_25842F1E0);
          sub_258389808(v562, &v537, &qword_27F928B18, &qword_25842FB00);
          if (PlaneSelector.debugOptions.getter())
          {
            swift_beginAccess();
            if (*(v96 + 208))
            {
              sub_2583ACFA4(v96 + 184, &v537);
              v338 = v537.d;
              v339 = v537.tx;
              __swift_project_boxed_opaque_existential_0(&v537, *&v537.d);
              (*(*&v339 + 16))(&v583, &v591, &v599, &v607, &v615, COERCE_CGFLOAT(*&v338), COERCE_CGFLOAT(*&v339));
              __swift_destroy_boxed_opaque_existential_0(&v537);
            }
          }

          if (*(v96 + 168))
          {
            swift_beginAccess();
            if (*(v96 + 208))
            {
              sub_2583ACFA4(v96 + 184, &v440);
              v340 = v440.d;
              v341 = v440.tx;
              __swift_project_boxed_opaque_existential_0(&v440, *&v440.d);
              v539 = v481;
              v540 = v482;
              v541 = v483;
              *&v542 = v484;
              v537 = v479;
              v538 = v480;
              (*(*&v341 + 24))(&v537, COERCE_CGFLOAT(*&v340), COERCE_CGFLOAT(*&v341));
              __swift_destroy_boxed_opaque_existential_0(&v440);
            }
          }

          if ((*(v96 + 168) & 2) != 0 && (swift_beginAccess(), *(v96 + 208)))
          {
            sub_2583ACFA4(v96 + 184, &v440);
            v342 = v440.d;
            v343 = v440.tx;
            __swift_project_boxed_opaque_existential_0(&v440, *&v440.d);
            *&v344.f64[0] = v410;
            *&v344.f64[1] = v409;
            (*(*&v343 + 32))(v427, COERCE_CGFLOAT(*&v342), COERCE_CGFLOAT(*&v343), COERCE_DOUBLE(vcvt_f32_f64(v344)));
            sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
            __swift_destroy_boxed_opaque_existential_0(&v440);
          }

          else
          {
            sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
          }
        }

        v345 = [objc_opt_self() standardUserDefaults];
        v346 = [v345 kPEShowStats];

        if (v346)
        {
          v443 = v482;
          v444 = v483;
          v445.f32[0] = v484;
          v440 = v479;
          v441 = v480;
          v442 = v481;
          v347 = *(&v483 + 1);
          if (*(&v483 + 1))
          {
            v626 = v480;
            v627 = v481;
            v628 = v482;
            v623 = *&v479.a;
            v624 = *&v479.c;
            v348 = v445.i32[0];
            v629.i64[0] = v483;
            v625 = *&v479.tx;
            sub_258385DB0(0, &qword_27F928550, 0x277D85C78);
            v647 = v481;
            v648 = v482;
            v649 = v483;
            v645 = v479;
            v650 = v484;
            v646 = v480;
            sub_2583D25EC(&v645, &v428);
            v349 = sub_258428CC0();
            v350 = swift_allocObject();
            swift_weakInit();
            v351 = swift_allocObject();
            *(v351 + 16) = v350;
            v352 = v626;
            v353 = v628;
            *(v351 + 96) = v627;
            *(v351 + 112) = v353;
            v354 = v629.i64[0];
            v355 = v624;
            *(v351 + 32) = v623;
            *(v351 + 48) = v355;
            *(v351 + 64) = v625;
            *(v351 + 80) = v352;
            *(v351 + 128) = v354;
            *(v351 + 136) = v347;
            *(v351 + 144) = v348;
            v547[4] = sub_2583D2804;
            v547[5] = v351;
            v547[0] = MEMORY[0x277D85DD0];
            v547[1] = 1107296256;
            v547[2] = sub_258383428;
            v547[3] = &block_descriptor_49;
            v356 = _Block_copy(v547);
            v430 = v442;
            v431 = v443;
            v432 = v444;
            v433 = v445.f32[0];
            v428 = v440;
            v429 = v441;
            sub_2583D25EC(&v428, &v638);

            v357 = v398;
            sub_258428480();
            *&v638.a = MEMORY[0x277D84F90];
            sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608, &qword_25842D750);
            sub_2583A3F30();
            v358 = v397;
            v359 = v400;
            sub_258428E70();
            MEMORY[0x259C7E5E0](0, v357, v358, v356);
            _Block_release(v356);

            sub_258385E40(&v440, &qword_27F928B18, &qword_25842FB00);
            sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
            sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
            sub_258385E40(&v696, &qword_27F928B18, &qword_25842FB00);
            sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
            (*(v399 + 8))(v358, v359);
            v360 = (*(v401 + 8))(v357, v402);
            v360.i64[0] = *v562;
            v425 = v360;
            v360.i64[0] = *&v562[8];
            v423 = v360;
            v426 = *&v562[32];
            v427 = *&v562[16];
            v424 = *&v562[48];
            v421 = v565;
            v422 = v563;
            v186 = v564;
            goto LABEL_101;
          }
        }

        sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v696, &qword_27F928B18, &qword_25842FB00);
        v187 = &v684;
        goto LABEL_100;
      }
    }
  }

LABEL_69:
  v153 = *(v96 + 84);
  if (!*(v96 + 84))
  {
    v478 = 0.0;
    v157 = 0uLL;
    v60 = &v434;
LABEL_82:
    v477 = v157;
    v476 = v157;
    v475 = v157;
    v473 = v157;
    v474 = v157;
    v471 = v157;
    v472 = v157;
    v627 = v157;
    v628 = v157;
    v629 = v157;
    v623 = v157;
    v624 = v157;
    v625 = v157;
    v630 = v478;
    v626 = v157;
    goto LABEL_83;
  }

  v60 = &v434;
  if (v4)
  {
    v154 = *(v4 + 16);
    v155 = (v4 + 32);
    while (v154)
    {
      v156 = *v155++;
      --v154;
      if (v156 == 5)
      {
        goto LABEL_74;
      }
    }

    v478 = 0.0;
    v476 = 0u;
    v477 = 0u;
    v474 = 0u;
    v475 = 0u;
    v472 = 0u;
    v473 = 0u;
    v158 = 1;
    v471 = 0u;
    goto LABEL_122;
  }

LABEL_74:
  if (*(&v708 + 1))
  {
    v557 = v706;
    v558 = v707;
    v559 = v708;
    v555 = v704;
    LODWORD(v560) = v709;
    v556 = v705;
LABEL_76:
    sub_258389808(&v704, &v568, &qword_27F928B18, &qword_25842FB00);
    sub_258385E40(&v555, &qword_27F928B18, &qword_25842FB00);
    goto LABEL_80;
  }

  if (!*(&v702 + 1))
  {
    if (!*(&v694 + 1))
    {
      goto LABEL_104;
    }

    v570 = v692;
    v571 = v693;
    v572 = v694;
    v568 = v690;
    LODWORD(v573) = v695;
    v569 = v691;
    sub_2583D25EC(&v568, &v537);
    v557 = v692;
    v558 = v693;
    v559 = v694;
    v555 = v690;
    LODWORD(v560) = v695;
    v556 = v691;
    goto LABEL_76;
  }

LABEL_80:
  if (v153 == 1)
  {
    v478 = 0.0;
    v157 = 0uLL;
    goto LABEL_82;
  }

LABEL_104:
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  if (!*(static MeasureCore.shared + 96))
  {
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
    __break(1u);
    goto LABEL_220;
  }

  PatchTracker.hitTest(frame:screenPoint:context:)(v427, v45, &v537, v24, v25);

  v573 = v542;
  v574 = v543;
  v575 = v544;
  v569 = v538;
  v570 = v539;
  v571 = v540;
  v572 = v541;
  v568 = v537;
  v576 = v545;
  if (sub_2583B26C4(&v568) == 1)
  {
    v190 = 0;
    v191 = 0;
    v192 = 0.0;
    v193 = 0uLL;
    v194 = 0uLL;
    v195 = 0uLL;
    v196 = 0uLL;
    v197 = 0uLL;
  }

  else
  {
    v424 = *&v568.a;
    v198 = v576;
    if (LOBYTE(v568.tx))
    {
      v199 = [v427 camera];
      [v199 transform];
      v423 = v200;

      v201 = v423;
      v201.i32[3] = 0;
    }

    else
    {
      v201 = *&v568.c;
    }

    v423 = v201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B38, &unk_25842F1E8);
    v202 = swift_allocObject();
    v203 = v595;
    v204 = v597;
    *(v202 + 112) = v596;
    *(v202 + 128) = v204;
    *(v202 + 144) = v598;
    v205 = v591;
    *(v202 + 16) = xmmword_25842D9A0;
    *(v202 + 32) = v205;
    v206 = v593;
    *(v202 + 48) = v592;
    *(v202 + 64) = v206;
    *(v202 + 80) = v594;
    *(v202 + 96) = v203;
    *(v202 + 272) = v606;
    v207 = v605;
    v208 = v603;
    *(v202 + 240) = v604;
    *(v202 + 256) = v207;
    v209 = v601;
    *(v202 + 208) = v602;
    *(v202 + 224) = v208;
    v210 = v599;
    *(v202 + 176) = v600;
    *(v202 + 192) = v209;
    *(v202 + 160) = v210;
    v211 = v583;
    v212 = v584;
    v213 = v586;
    *(v202 + 320) = v585;
    *(v202 + 336) = v213;
    *(v202 + 288) = v211;
    *(v202 + 304) = v212;
    v214 = v587;
    v215 = v588;
    v216 = v589;
    *(v202 + 400) = v590;
    *(v202 + 368) = v215;
    *(v202 + 384) = v216;
    *(v202 + 352) = v214;
    v217 = (v202 + 416);
    v218 = v45[1];
    *v562 = *v45;
    v219 = v45[5];
    v563 = v45[4];
    v220 = v45[2];
    *&v562[48] = v45[3];
    *&v562[32] = v220;
    *&v562[16] = v218;
    v221 = v45[6];
    v222 = v45[7];
    v567 = v45[8];
    v566 = v222;
    v565 = v221;
    v564 = v219;
    if (sub_2583C77E4(v562) == 1)
    {
      v223 = v612;
      *(v202 + 480) = v611;
      *(v202 + 496) = v223;
      *(v202 + 512) = v613;
      *(v202 + 528) = v614;
      v224 = v608;
      *v217 = v607;
      *(v202 + 432) = v224;
      v225 = v610;
      *(v202 + 448) = v609;
      *(v202 + 464) = v225;
    }

    else
    {
      v226 = v564;
      v579 = v564;
      v227 = v565;
      v580 = v565;
      v228 = v566;
      v581 = v566;
      v229 = v567;
      v582 = v567;
      v577 = *&v562[16];
      v230 = *&v562[32];
      v231 = *&v562[48];
      v232 = v563;
      v578 = v563;
      *v217 = *&v562[16];
      *(v202 + 432) = v230;
      *(v202 + 448) = v231;
      *(v202 + 464) = v232;
      *(v202 + 480) = v226;
      *(v202 + 496) = v227;
      *(v202 + 512) = v228;
      *(v202 + 528) = v229;
      sub_258389808(&v577, &v548, &qword_27F928B18, &qword_25842FB00);
    }

    v233 = sub_2583E3A68(v202, v424);
    *&v422 = v234;
    v236 = v235;
    swift_setDeallocating();
    sub_258389808(&v690, &v548, &qword_27F928B18, &qword_25842FB00);
    sub_258389808(&v704, &v548, &qword_27F928B18, &qword_25842FB00);
    sub_258389808(&v696, &v548, &qword_27F928B18, &qword_25842FB00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B18, &qword_25842FB00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v237.i64[0] = v233;
    if (v236)
    {
      v238 = -1;
    }

    else
    {
      v238 = 0;
    }

    v237.i64[1] = v422;
    _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*v424.i64, vbslq_s8(vdupq_n_s32(v238), v423, v237));
    sceneKitToARKit(_:)(v240, v239);
    v423 = v242;
    v424 = v241;
    v421 = v244;
    v422 = v243;
    v245 = objc_allocWithZone(MEMORY[0x277CE5218]);
    v246 = [v245 initWithTransform_];
    type metadata accessor for WorldPlane();
    v191 = swift_allocObject();
    *(v191 + 24) = xmmword_25842EC50;
    *(v191 + 40) = 0x3F5DB22D40000000;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28, &unk_25842F1D0);
    v247 = swift_allocObject();
    v248 = v246;
    v249 = swift_slowAlloc();
    *v249 = 0;
    *(v247 + 16) = v248;
    *(v247 + 24) = v249;
    *(v191 + 16) = v247;
    swift_endAccess();
    *(v191 + 48) = 5;
    *(v191 + 52) = 1.0 - v198;
    *(v191 + 56) = 1065353216;
    v190 = 1;
    LOBYTE(v548.a) = 1;
    memset(v651, 0, 64);
    v651[64] = 1;
    if (qword_27F9279F0 != -1)
    {
      swift_once();
    }

    WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v248, v651, static SIMD3<>.zero);

    LOBYTE(v440.a) = 1;
    v420 = xmmword_25842EC60;
    *&v645.a = xmmword_25842EC60;
    *&v645.c = v424;
    *&v645.tx = v423;
    v646 = v422;
    v647 = v421;
    v648 = 0uLL;
    LOBYTE(v649) = 1;
    *(&v649 + 1) = v191;
    v650 = 0.0;
    sub_258411874();
    v192 = v250;
    sub_258385E40(&v537, &qword_27F928890, &unk_25842DFA0);
    v197 = v420;
    v196 = v421;
    v96 = v426.i64[0];
    v45 = v425.i64[0];
    v194 = v423;
    v193 = v424;
    v195 = v422;
  }

  v471 = v197;
  v472 = v193;
  v473 = v194;
  v474 = v195;
  v475 = v196;
  v476 = 0uLL;
  v477.i8[0] = v190;
  v477.i8[7] = 0;
  *(&v477.i16[2] + 1) = 0;
  *(v477.i32 + 1) = 0;
  v477.i64[1] = v191;
  v158 = v191 == 0;
  v478 = v192;
LABEL_122:
  v627 = v475;
  v628 = v476;
  v629 = v477;
  v623 = v471;
  v624 = v472;
  v625 = v473;
  v630 = v478;
  v626 = v474;
  if (v153 != 4 && (v153 != 3 || v158))
  {
LABEL_83:
    sub_2583CEC74(v427, &v583, &v591, &v599, &v623, &v615, v45, v546);
    sub_2583C7A24(v546, &v479, &qword_27F928B18, &qword_25842FB00);
    if (*(&v483 + 1))
    {
      goto LABEL_130;
    }

    goto LABEL_126;
  }

  v557 = v481;
  v558 = v482;
  v559 = v483;
  v555 = v479;
  *&v560 = v484;
  v556 = v480;
  sub_258389808(&v471, &v548, &qword_27F928B18, &qword_25842FB00);
  sub_258385E40(&v555, &qword_27F928B18, &qword_25842FB00);
  v481 = v627;
  v482 = v628;
  v483 = v629;
  v484 = v630;
  *&v479.a = v623;
  *&v479.c = v624;
  *&v479.tx = v625;
  v480 = v626;
  if (v629.i64[1])
  {
    goto LABEL_130;
  }

LABEL_126:
  v251 = v45[4];
  v558 = v45[5];
  v252 = v45[7];
  v559 = v45[6];
  v560 = v252;
  v561 = v45[8];
  v253 = *v45;
  *&v555.c = v45[1];
  v254 = v45[3];
  *&v555.tx = v45[2];
  v556 = v254;
  v557 = v251;
  *&v555.a = v253;
  if (sub_2583C77E4(&v555) != 1 && *(&v561 + 1))
  {
    v255 = [v427 camera];
    LOBYTE(v638.a) = 1;
    memset(v644, 0, 64);
    v644[64] = 1;
    v256 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v255, v644);
    v425 = v257;
    v426 = v256;

    WorldPlane.hitTest(hitRay:withPlaneType:)(2, v547, v426, v425);
    sub_2583C7A24(v547, &v479, &qword_27F928B18, &qword_25842FB00);
    v442 = v481;
    v443 = v482;
    v444 = v483;
    v445.f32[0] = v484;
    v440 = v479;
    v441 = v480;
    *&v553 = v484;
    v552 = v483;
    v550 = v481;
    v551 = v482;
    v548 = v479;
    v549 = v480;
    goto LABEL_131;
  }

  sub_2583C7A24(&v607, &v479, &qword_27F928B18, &qword_25842FB00);
LABEL_130:
  v442 = v481;
  v443 = v482;
  v444 = v483;
  v440 = v479;
  v441 = v480;
  v548 = v479;
  v549 = v480;
  v445.f32[0] = v484;
  *&v553 = v484;
  v552 = v483;
  v550 = v481;
  v551 = v482;
LABEL_131:
  sub_258389808(&v440, &v428, &qword_27F928B18, &qword_25842FB00);
  sub_258385E40(&v548, &qword_27F928B18, &qword_25842FB00);
  if (!*(&v483 + 1))
  {
    goto LABEL_169;
  }

  v258 = *(*(&v483 + 1) + 48);
  if (v258 != 4 && v258 != 2)
  {
    goto LABEL_169;
  }

  v639 = v480;
  v640 = v481;
  v641 = v482;
  v638 = v479;
  v642 = v483;
  v643 = v484;
  if (WorldPlaneHitTestResult.distanceToCamera(in:)(v427) > 30.0)
  {
    v259 = v45[7];
    v552 = v45[6];
    v553 = v259;
    v554 = v45[8];
    v260 = v45[3];
    *&v548.tx = v45[2];
    v549 = v260;
    v261 = v45[5];
    v550 = v45[4];
    v551 = v261;
    v262 = v45[1];
    *&v548.a = *v45;
    *&v548.c = v262;
    if (sub_2583C77E4(&v548) != 1 && (LOBYTE(v548.a) & 1) == 0)
    {
      v444 = v714;
      v445 = v715;
      v446 = v716;
      v440 = v710;
      v441 = v711;
      v442 = v712;
      v443 = v713;
      sub_2583D26FC(&v440, &v428);
      if (PlaneSelector.debugOptions.getter())
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v428);
          v263 = v428.d;
          v264 = v428.tx;
          __swift_project_boxed_opaque_existential_0(&v428, *&v428.d);
          (*(*&v264 + 16))(&v583, &v591, &v599, &v623, &v615, COERCE_CGFLOAT(*&v263), COERCE_CGFLOAT(*&v264));
          __swift_destroy_boxed_opaque_existential_0(&v428);
        }
      }

      if (*(v96 + 168))
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v465);
          v265 = v465.d;
          v266 = v465.tx;
          __swift_project_boxed_opaque_existential_0(&v465, *&v465.d);
          v430 = v481;
          v431 = v482;
          v432 = v483;
          v433 = v484;
          v428 = v479;
          v429 = v480;
          (*(*&v266 + 24))(&v428, COERCE_CGFLOAT(*&v265), COERCE_CGFLOAT(*&v266));
          __swift_destroy_boxed_opaque_existential_0(&v465);
        }
      }

      if ((*(v96 + 168) & 2) != 0 && (swift_beginAccess(), *(v96 + 208)))
      {
        sub_2583ACFA4(v96 + 184, &v465);
        v267 = v465.d;
        v268 = v465.tx;
        __swift_project_boxed_opaque_existential_0(&v465, *&v465.d);
        *&v269.f64[0] = v410;
        *&v269.f64[1] = v409;
        (*(*&v268 + 32))(v427, COERCE_CGFLOAT(*&v267), COERCE_CGFLOAT(*&v268), COERCE_DOUBLE(vcvt_f32_f64(v269)));
        sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
        __swift_destroy_boxed_opaque_existential_0(&v465);
      }

      else
      {
        sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
      }
    }

    v323 = [objc_opt_self() standardUserDefaults];
    v324 = [v323 kPEShowStats];

    if (v324)
    {
      v443 = v482;
      v444 = v483;
      v445.f32[0] = v484;
      v440 = v479;
      v441 = v480;
      v442 = v481;
      v325 = *(&v483 + 1);
      if (*(&v483 + 1))
      {
        v326 = v445.i32[0];
        v449 = v481;
        v450 = v482;
        v451 = v483;
        v447 = v479;
        v448 = v480;
        sub_258385DB0(0, &qword_27F928550, 0x277D85C78);
        v461 = v481;
        v462 = v482;
        v463 = v483;
        v464 = v484;
        v459 = v479;
        v460 = v480;
        sub_2583D25EC(&v459, &v465);
        v327 = sub_258428CC0();
        v328 = swift_allocObject();
        swift_weakInit();
        v329 = swift_allocObject();
        *(v329 + 16) = v328;
        v330 = v450;
        *(v329 + 96) = v449;
        *(v329 + 112) = v330;
        v331 = v451;
        v332 = *&v447.c;
        *(v329 + 32) = *&v447.a;
        *(v329 + 48) = v332;
        v333 = v448;
        *(v329 + 64) = *&v447.tx;
        *(v329 + 80) = v333;
        *(v329 + 128) = v331;
        *(v329 + 136) = v325;
        *(v329 + 144) = v326;
        *&v434.tx = sub_2583D2804;
        *&v434.ty = v329;
        *&v434.a = MEMORY[0x277D85DD0];
        *&v434.b = 1107296256;
        *&v434.c = sub_258383428;
        *&v434.d = &block_descriptor_41;
        v334 = _Block_copy(&v434);
        v467 = v442;
        v468 = v443;
        v469 = v444;
        v470 = v445.f32[0];
        v465 = v440;
        v466 = v441;
        sub_2583D25EC(&v465, &v453);

        v335 = v398;
        sub_258428480();
        *&v453.a = MEMORY[0x277D84F90];
        sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608, &qword_25842D750);
        sub_2583A3F30();
        v336 = v397;
        v337 = v400;
        sub_258428E70();
        MEMORY[0x259C7E5E0](0, v335, v336, v334);
        _Block_release(v334);

LABEL_193:
        sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v696, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v440, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v471, &qword_27F928B18, &qword_25842FB00);
        (*(v399 + 8))(v336, v337);
        (*(v401 + 8))(v335, v402);
LABEL_214:
        v189 = 0.0;
        v426 = 0u;
        v427 = 0u;
        v424 = 0u;
        v425 = 0u;
        v421 = 0u;
        v422 = 0u;
        v420 = 0u;
        v423 = 0u;
        goto LABEL_215;
      }
    }

    goto LABEL_213;
  }

  if (!*(v96 + 140) || *(v96 + 140) == 33)
  {
    goto LABEL_169;
  }

  v270 = *(&v483 + 1);
  if (!*(&v483 + 1))
  {
    goto LABEL_217;
  }

  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v271 = *(v270 + 16);
  v272 = *(v271 + 24);

  os_unfair_lock_lock(v272);
  swift_beginAccess();
  v273 = *(v271 + 16);
  os_unfair_lock_unlock(v272);

  LODWORD(v271) = sub_2583E2618(v273);

  if (!v271)
  {
    goto LABEL_169;
  }

  v274 = *(&v483 + 1);
  if (!*(&v483 + 1))
  {
    goto LABEL_218;
  }

  swift_beginAccess();
  v275 = *(v274 + 16);
  v276 = *(v275 + 24);

  os_unfair_lock_lock(v276);
  swift_beginAccess();
  v277 = *(v275 + 16);
  os_unfair_lock_unlock(v276);

  v278 = sub_2583E2618(v277);

  v279 = *(v96 + 140);
  v14 = &v497;
  if (v279 != 33 && v279 == v278)
  {
    goto LABEL_169;
  }

  v468 = v482;
  v469 = v483;
  v470 = v484;
  v465 = v479;
  v466 = v480;
  v467 = v481;
  if (!*(&v483 + 1))
  {
    goto LABEL_219;
  }

  v280 = v481;
  v280.i32[3] = 0;
  v426 = v280;
  v461 = v481;
  v462 = v482;
  v463 = v483;
  v464 = v484;
  v459 = v479;
  v460 = v480;
  sub_2583D25EC(&v459, &v548);
  v281 = WorldPlane.distanceToEdge(point:)(v426);
  sub_258385E40(&v465, &qword_27F928B18, &qword_25842FB00);
  if ((v281 & 0x100000000) == 0)
  {
    if (*&v281 > 0.25)
    {
      v282 = v45[7];
      v552 = v45[6];
      v553 = v282;
      v554 = v45[8];
      v283 = v45[3];
      *&v548.tx = v45[2];
      v549 = v283;
      v284 = v45[5];
      v550 = v45[4];
      v551 = v284;
      v285 = v45[1];
      *&v548.a = *v45;
      *&v548.c = v285;
      if (sub_2583C77E4(&v548) == 1 || (LOBYTE(v548.a) & 1) != 0)
      {
LABEL_210:
        v361 = [objc_opt_self() standardUserDefaults];
        v362 = [v361 kPEShowStats];

        if (v362)
        {
          v363 = v15[14];
          *&v60[8].c = v15[13];
          *&v60[8].tx = v363;
          v364 = v15[12];
          v445.f32[0] = v484;
          v365 = v15[9];
          *&v60[6].tx = v15[8];
          *&v60[7].a = v365;
          v366 = v15[11];
          *&v60[7].c = v15[10];
          *&v60[7].tx = v366;
          *&v60[8].a = v364;
          v367 = *(&v444 + 1);
          if (*(&v444 + 1))
          {
            v368 = v15[10];
            v14[156] = v15[11];
            v369 = v15[13];
            v14[157] = v15[12];
            v14[158] = v369;
            v370 = v15[9];
            v14[153] = v15[8];
            v14[154] = v370;
            v371 = v445.i32[0];
            v637 = v483;
            v633 = v368;
            sub_258385DB0(0, &qword_27F928550, 0x277D85C78);
            v372 = v15[13];
            *&v60[11].a = v15[12];
            *&v60[11].c = v372;
            *&v60[11].tx = v15[14];
            v452 = v484;
            v373 = v15[9];
            *&v60[9].tx = v15[8];
            *&v60[10].a = v373;
            v374 = v15[11];
            *&v60[10].c = v15[10];
            *&v60[10].tx = v374;
            sub_2583D25EC(&v447, &v453);
            v375 = sub_258428CC0();
            v376 = swift_allocObject();
            swift_weakInit();
            v377 = swift_allocObject();
            *(v377 + 16) = v376;
            v378 = v634;
            v379 = v636;
            *(v377 + 96) = v635;
            *(v377 + 112) = v379;
            v380 = v637;
            v381 = v632;
            *(v377 + 32) = v631;
            *(v377 + 48) = v381;
            *(v377 + 64) = v633;
            *(v377 + 80) = v378;
            *(v377 + 128) = v380;
            *(v377 + 136) = v367;
            *(v377 + 144) = v371;
            v439[4] = sub_2583D2804;
            v439[5] = v377;
            v439[0] = MEMORY[0x277D85DD0];
            v439[1] = 1107296256;
            v439[2] = sub_258383428;
            v439[3] = &block_descriptor_33;
            v382 = _Block_copy(v439);
            v383 = *&v60[8].c;
            *&v60[13].tx = *&v60[8].a;
            *&v60[14].a = v383;
            *&v60[14].c = *&v60[8].tx;
            v458 = v445.f32[0];
            v384 = *&v60[7].a;
            *&v60[12].c = *&v60[6].tx;
            *&v60[12].tx = v384;
            v385 = *&v60[7].tx;
            *&v60[13].a = *&v60[7].c;
            *&v60[13].c = v385;
            sub_2583D25EC(&v453, &v434);

            v335 = v398;
            sub_258428480();
            *&v434.a = MEMORY[0x277D84F90];
            sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608, &qword_25842D750);
            sub_2583A3F30();
            v336 = v397;
            v337 = v400;
            sub_258428E70();
            MEMORY[0x259C7E5E0](0, v335, v336, v382);
            _Block_release(v382);

            goto LABEL_193;
          }
        }

LABEL_213:
        sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v696, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
        sub_258385E40(&v471, &qword_27F928B18, &qword_25842FB00);
        goto LABEL_214;
      }

      v444 = v714;
      v445 = v715;
      v446 = v716;
      v440 = v710;
      v441 = v711;
      v442 = v712;
      v443 = v713;
      sub_2583D26FC(&v440, &v428);
      if (PlaneSelector.debugOptions.getter())
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v428);
          v286 = v428.d;
          v287 = v428.tx;
          __swift_project_boxed_opaque_existential_0(&v428, *&v428.d);
          (*(*&v287 + 16))(&v583, &v591, &v599, &v623, &v615, COERCE_CGFLOAT(*&v286), COERCE_CGFLOAT(*&v287));
          __swift_destroy_boxed_opaque_existential_0(&v428);
        }
      }

      if (*(v96 + 168))
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v453);
          v288 = v453.d;
          v289 = v453.tx;
          __swift_project_boxed_opaque_existential_0(&v453, *&v453.d);
          v430 = v481;
          v431 = v482;
          v432 = v483;
          v433 = v484;
          v428 = v479;
          v429 = v480;
          (*(*&v289 + 24))(&v428, COERCE_CGFLOAT(*&v288), COERCE_CGFLOAT(*&v289));
          __swift_destroy_boxed_opaque_existential_0(&v453);
        }
      }

      if ((*(v96 + 168) & 2) != 0)
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v453);
          v290 = v453.d;
          v291 = v453.tx;
          __swift_project_boxed_opaque_existential_0(&v453, *&v453.d);
          *&v292.f64[0] = v410;
          *&v292.f64[1] = v409;
          (*(*&v291 + 32))(v427, COERCE_CGFLOAT(*&v290), COERCE_CGFLOAT(*&v291), COERCE_DOUBLE(vcvt_f32_f64(v292)));
          sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
          __swift_destroy_boxed_opaque_existential_0(&v453);
          goto LABEL_210;
        }
      }

LABEL_209:
      sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
      goto LABEL_210;
    }

LABEL_169:
    v430 = v481;
    v431 = v482;
    v432 = v483;
    v433 = v484;
    v428 = v479;
    v429 = v480;
    v293 = *v45;
    v294 = v45[1];
    v295 = v45[3];
    *&v548.tx = v45[2];
    v549 = v295;
    *&v548.a = v293;
    *&v548.c = v294;
    v296 = v45[4];
    v297 = v45[5];
    v298 = v45[7];
    v554 = v45[8];
    v299 = v45[6];
    v553 = v298;
    v552 = v299;
    v550 = v296;
    v551 = v297;
    if (sub_2583C77E4(&v548) == 1 || (LOBYTE(v548.a) & 1) != 0)
    {
      sub_258389808(&v428, &v440, &qword_27F928B18, &qword_25842FB00);
    }

    else
    {
      sub_258389808(v45, &v440, &qword_27F928B30, &qword_25842F1E0);
      sub_258389808(&v428, &v440, &qword_27F928B18, &qword_25842FB00);
      if (PlaneSelector.debugOptions.getter())
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v440);
          v316 = v440.d;
          v317 = v440.tx;
          __swift_project_boxed_opaque_existential_0(&v440, *&v440.d);
          (*(*&v317 + 16))(&v583, &v591, &v599, &v623, &v615, COERCE_CGFLOAT(*&v316), COERCE_CGFLOAT(*&v317));
          __swift_destroy_boxed_opaque_existential_0(&v440);
        }
      }

      if (*(v96 + 168))
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v465);
          v318 = v465.d;
          v319 = v465.tx;
          __swift_project_boxed_opaque_existential_0(&v465, *&v465.d);
          v442 = v481;
          v443 = v482;
          v444 = v483;
          v445.f32[0] = v484;
          v440 = v479;
          v441 = v480;
          (*(*&v319 + 24))(&v440, COERCE_CGFLOAT(*&v318), COERCE_CGFLOAT(*&v319));
          __swift_destroy_boxed_opaque_existential_0(&v465);
        }
      }

      if ((*(v96 + 168) & 2) != 0 && (swift_beginAccess(), *(v96 + 208)))
      {
        sub_2583ACFA4(v96 + 184, &v465);
        v320 = v465.d;
        v321 = v465.tx;
        __swift_project_boxed_opaque_existential_0(&v465, *&v465.d);
        *&v322.f64[0] = v410;
        *&v322.f64[1] = v409;
        (*(*&v321 + 32))(v427, COERCE_CGFLOAT(*&v320), COERCE_CGFLOAT(*&v321), COERCE_DOUBLE(vcvt_f32_f64(v322)));
        sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
        __swift_destroy_boxed_opaque_existential_0(&v465);
      }

      else
      {
        sub_258385E40(v45, &qword_27F928B30, &qword_25842F1E0);
      }
    }

    v300 = [objc_opt_self() standardUserDefaults];
    v301 = [v300 kPEShowStats];

    if (v301 && (v468 = v482, v469 = v483, v470 = v484, v465 = v479, v466 = v480, v467 = v481, (v302 = *(&v483 + 1)) != 0))
    {
      v303 = v470;
      v436 = v481;
      v437 = v482;
      v438 = v483;
      v434 = v479;
      v435 = v480;
      sub_258385DB0(0, &qword_27F928550, 0x277D85C78);
      v455 = v481;
      v456 = v482;
      v457 = v483;
      v458 = v484;
      v453 = v479;
      v454 = v480;
      sub_2583D25EC(&v453, &v459);
      v304 = sub_258428CC0();
      v305 = swift_allocObject();
      swift_weakInit();
      v306 = swift_allocObject();
      *(v306 + 16) = v305;
      v307 = v437;
      *(v306 + 96) = v436;
      *(v306 + 112) = v307;
      v308 = v438;
      v309 = *&v434.c;
      *(v306 + 32) = *&v434.a;
      *(v306 + 48) = v309;
      v310 = v435;
      *(v306 + 64) = *&v434.tx;
      *(v306 + 80) = v310;
      *(v306 + 128) = v308;
      *(v306 + 136) = v302;
      *(v306 + 144) = v303;
      v633.i64[0] = sub_2583D26D8;
      v633.i64[1] = v306;
      *&v631 = MEMORY[0x277D85DD0];
      *(&v631 + 1) = 1107296256;
      *&v632 = sub_258383428;
      *(&v632 + 1) = &block_descriptor_2;
      v311 = _Block_copy(&v631);
      v461 = v467;
      v462 = v468;
      v463 = v469;
      v464 = v470;
      v459 = v465;
      v460 = v466;
      sub_2583D25EC(&v459, &v447);

      v312 = v398;
      sub_258428480();
      *&v447.a = MEMORY[0x277D84F90];
      sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608, &qword_25842D750);
      sub_2583A3F30();
      v313 = v397;
      v314 = v400;
      sub_258428E70();
      MEMORY[0x259C7E5E0](0, v312, v313, v311);
      _Block_release(v311);

      sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v696, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v465, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v471, &qword_27F928B18, &qword_25842FB00);
      (*(v399 + 8))(v313, v314);
      (*(v401 + 8))(v312, v402);
    }

    else
    {
      sub_258385E40(&v690, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v696, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v704, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v684, &qword_27F928B18, &qword_25842FB00);
      sub_258385E40(&v471, &qword_27F928B18, &qword_25842FB00);
    }

    v315.i64[0] = *&v428.a;
    v425 = v315;
    v315.i64[0] = *&v428.b;
    v423 = v315;
    v426 = *&v428.tx;
    v427 = *&v428.c;
    v424 = v429;
    v421 = v432;
    v422 = v430;
    v420 = v431;
    v189 = v433;
    goto LABEL_215;
  }

LABEL_220:
  __break(1u);
}

uint64_t sub_2583CE3B4@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v12 = a2[4];
  v147 = a2[5];
  v13 = a2[7];
  v148 = a2[6];
  v149 = v13;
  v150 = a2[8];
  v14 = *a2;
  v143 = a2[1];
  v15 = a2[3];
  v144 = a2[2];
  v145 = v15;
  v146 = v12;
  v142 = v14;
  result = sub_2583C77E4(&v142);
  v17 = 0uLL;
  if (result == 1 || (v122 = v148, v123 = v149, v124 = v150, v120[0] = v143, v120[1] = v144, v120[2] = v145, v120[3] = v146, v121 = v147, (v18 = *(&v149 + 1)) == 0))
  {
    v23 = 0;
LABEL_31:
    v70 = 0uLL;
    v71 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    goto LABEL_32;
  }

  v101 = v7;
  v103 = v121;
  swift_retain_n();
  v19 = [a1 camera];
  memset(v151, 0, 64);
  v151[64] = 1;
  v20 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v19, v151);
  v107 = v21;
  v113 = v20;

  WorldPlane.hitTest(hitRay:withPlaneType:)(7, v125, v113, v107);
  sub_258385E40(v120, &qword_27F928B18, &qword_25842FB00);
  if (v127)
  {
    v114 = v126;
    sub_258385E40(v125, &qword_27F928B18, &qword_25842FB00);
    v22 = v114;
    v22.i32[3] = 0;
  }

  else
  {
    v24 = v103;
    v24.i32[3] = 0;
    v104 = v24;
    sub_2583EF3B4(a1, v128);
    v108 = v130;
    v115 = v129;
    *v93 = v132;
    v97 = v131;
    sub_2583EF3B4(a1, v133);
    _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v104, v115, v108, v97, *v93, v133[0]);
    if (v25 < 0.0 || v25 > 1.0)
    {
      goto LABEL_30;
    }

    *&v26 = a4;
    *&v27 = a5;
    v28.n128_u64[0] = __PAIR64__(v27, v26);
    v28.n128_u64[1] = LODWORD(v25);
    v116 = v28;
    sub_2583EF3B4(a1, v134);
    v105 = v136;
    v109 = v135;
    *v94 = v138;
    v98 = v137;
    sub_2583EF3B4(a1, v139);
    *v22.i64 = _s17MeasureFoundation0A6CameraC14unprojectPoint_17viewProjectionInv12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v116, v109, v105, v98, *v94, v139[0]);
  }

  v117 = v22;
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  v29 = static MeasureCore.shared;
  v30 = *(static MeasureCore.shared + 80);
  if (!v30)
  {
    goto LABEL_30;
  }

  v31 = *(v30 + 272);

  [v31 lock];
  *&v32 = COERCE_DOUBLE(SegmentationProcessor.projectPoint(_:)(v117));
  if (v34)
  {
    [v31 unlock];

LABEL_30:
    result = sub_258385E40(v120, &qword_27F928B18, &qword_25842FB00);
    v23 = 0;
    v17 = 0uLL;
    goto LABEL_31;
  }

  v35 = *&v32;
  v36 = v33;
  [v31 lock];
  sub_2583E685C(v35, v36);
  LODWORD(v39) = sub_2583E6944(v37, v38);
  [v31 unlock];
  [v31 unlock];

  if (!v39 || v39 == 33)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v40 = *(v18 + 16);
  v41 = *(v40 + 24);
  v110 = v39;
  sub_258389808(v120, v140, &qword_27F928B18, &qword_25842FB00);

  os_unfair_lock_lock(v41);
  swift_beginAccess();
  v42 = *(v40 + 16);
  os_unfair_lock_unlock(v41);

  LOBYTE(v40) = sub_2583E2618(v42);

  v39 = v39;
  sub_258385E40(v120, &qword_27F928B18, &qword_25842FB00);
  if (v39 == v40)
  {
    v43 = &property descriptor for Transformer.viewToClip;
    goto LABEL_22;
  }

  v44 = *(v29 + 80);
  v43 = &property descriptor for Transformer.viewToClip;
  if (!v44)
  {
    goto LABEL_21;
  }

  v45 = *(v44 + 272);

  [v45 lock];
  *&v46 = COERCE_DOUBLE(SegmentationProcessor.projectPoint(_:)(v117));
  if (v48)
  {
    [v45 unlock];

    goto LABEL_21;
  }

  v72 = *&v46;
  v73 = v47;
  [v45 lock];
  sub_2583E685C(v72, v73);
  v75 = v74;
  v100 = v76;
  result = sub_2583E6944(v74, v76);
  v77 = result;
  v96 = v45;
  if (!result || result == 33)
  {
LABEL_65:
    [v96 unlock];
    [v96 unlock];

    v39 = v110;
    if (v77 != 33 && v110 == v77)
    {
LABEL_22:
      *(v101 + 140) = v39;
      v53 = *(v29 + 80);
      if (v53)
      {
        v54 = *(v53 + 272);

        [v54 v43[384]];
        v55 = SegmentationProcessor.projectPoint(_:)(v117);
        if (v57)
        {
          v58 = 0;
          v59 = 0;
          v60 = 1;
        }

        else
        {
          v58 = SegmentationProcessor.normal(at:)(*&v55, v56);
          v59 = v61;
          v60 = v62;
        }

        [*(v53 + 272) unlock];
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = 1;
      }

      if (sub_2583D0C70(a1, 0, v39, v58, v59, v60 & 1))
      {

        v63 = [a1 camera];
        v64 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v63, v151);
        v111 = v65;
        v118 = v64;

        WorldPlane.hitTest(hitRay:withPlaneType:)(1, v140, v118, v111);
        v112 = v140[1];
        v119 = v140[0];
        v102 = v140[3];
        v106 = v140[2];
        *v95 = v140[5];
        v99 = v140[4];
        v91 = v140[6];
        v23 = v141;

        sub_258385E40(v120, &qword_27F928B18, &qword_25842FB00);

        v67 = v91;
        v66 = *v95;
        v69 = v99;
        v68 = v102;
        v71 = v106;
        v70 = v112;
        v17 = v119;
LABEL_32:
        *a3 = v17;
        *(a3 + 16) = v70;
        *(a3 + 32) = v71;
        *(a3 + 48) = v68;
        *(a3 + 64) = v69;
        *(a3 + 80) = v66;
        *(a3 + 96) = v67;
        *(a3 + 112) = v23;
        return result;
      }

      goto LABEL_30;
    }

LABEL_21:
    v49 = *(v18 + 16);
    v50 = *(v49 + 24);
    sub_258389808(v120, v140, &qword_27F928B18, &qword_25842FB00);

    os_unfair_lock_lock(v50);
    swift_beginAccess();
    v51 = *(v49 + 16);
    os_unfair_lock_unlock(v50);

    v52 = sub_2583E2618(v51);

    v39 = v52;
    sub_258385E40(v120, &qword_27F928B18, &qword_25842FB00);
    goto LABEL_22;
  }

  v78 = v100 - 5;
  if (__OFSUB__(v100, 5))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    v77 = 0;
    goto LABEL_65;
  }

  v79 = __OFSUB__(v75, 5);
  v80 = -5;
  v89 = v79;
  while (1)
  {
    v90 = v80;
    if (v79)
    {
      break;
    }

    v81 = -4;
    v82 = v75 - 5;
    v92 = v78;
    while (1)
    {
      v83 = *(v44 + 280);
      if (!v83)
      {
LABEL_52:
        result = 0;
        goto LABEL_53;
      }

      result = 0;
      if ((v82 & 0x8000000000000000) == 0)
      {
        v84 = v83[9];
        if (v82 < v84 && (v78 & 0x8000000000000000) == 0)
        {
          if (v78 >= v83[10])
          {
            goto LABEL_52;
          }

          v85 = v78 * v84;
          if ((v78 * v84) >> 64 != (v78 * v84) >> 63)
          {
            goto LABEL_70;
          }

          v86 = __OFADD__(v85, v82);
          v87 = v85 + v82;
          if (v86)
          {
            goto LABEL_71;
          }

          v88 = *(v83[6] + v87);
          if ([objc_opt_self() jasperAvailable])
          {
            result = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v88);
            v43 = &property descriptor for Transformer.viewToClip;
            v78 = v92;
            if (result == 33)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v88 >= 0xD)
            {
              v77 = 0;
              v43 = &property descriptor for Transformer.viewToClip;
              goto LABEL_65;
            }

            result = byte_25842F21A[v88];
            v43 = &property descriptor for Transformer.viewToClip;
            v78 = v92;
          }
        }
      }

LABEL_53:
      if (v77 != result)
      {
        goto LABEL_64;
      }

      if (v81 == 6)
      {
        break;
      }

      v86 = __OFADD__(v75, v81);
      v82 = v75 + v81++;
      if (v86)
      {
        goto LABEL_69;
      }
    }

    if (v90 == 5)
    {
      goto LABEL_65;
    }

    v80 = v90 + 1;
    v78 = v100 + v90 + 1;
    v79 = v89;
    if (__OFADD__(v100, v90 + 1))
    {
      goto LABEL_63;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

__n128 sub_2583CEC74@<Q0>(objc_class *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X3>, float32x4_t *a5@<X4>, float32x4_t *a6@<X5>, float32x4_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v249 = a8;
  v16 = a4[1];
  v382 = *a4;
  v383 = v16;
  v17 = a4[3];
  v384 = a4[2];
  v385 = v17;
  v18 = a4[5];
  v244 = a4[4];
  v19 = a4[6].i64[0];
  v20 = a4[6].i64[1];
  v246.super.isa = a1;
  v247 = v20;
  v381 = v19;
  v380 = v18;
  v245 = a4[7].i32[0];
  v21 = *a2;
  v387 = a2[1];
  v386 = v21;
  v22 = a2[2];
  v23 = a2[3];
  v24 = a2[4];
  v25 = a2[5];
  v26 = a2[6].i64[0];
  v248.i64[0] = a2[6].i64[1];
  v392 = v26;
  v391 = v25;
  v390 = v24;
  v388 = v22;
  v389 = v23;
  v27 = a2[7].f32[0];
  v28 = *a5;
  v394 = a5[1];
  v393 = v28;
  v29 = a5[2];
  v30 = a5[3];
  v31 = a5[4];
  v32 = a5[5];
  v33 = a5[6].i64[1];
  v399 = a5[6].i64[0];
  v398 = v32;
  v397 = v31;
  v395 = v29;
  v396 = v30;
  v34 = a5[7].f32[0];
  v35 = *a6;
  v36 = a6[1];
  v37 = a6[3];
  v402 = a6[2];
  v403 = v37;
  v400 = v35;
  v401 = v36;
  v38 = a6[4];
  v39 = a6[5];
  v40 = a6[6];
  v407 = a6[7].i32[0];
  v405 = v39;
  v406 = v40;
  v404 = v38;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B40, &qword_25842F1F8);
  v41 = MEMORY[0x28223BE20](v242);
  v233 = v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v234 = v217 - v44;
  MEMORY[0x28223BE20](v43);
  v237 = v217 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B48, &unk_25842F200);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v231 = v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v235 = v217 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v238 = v217 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v230 = v217 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v236 = v217 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v239 = v217 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v232 = v217 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v240 = v217 - v62;
  MEMORY[0x28223BE20](v61);
  v241 = v217 - v63;
  v243 = sub_2584283F0();
  v64 = MEMORY[0x28223BE20](v243);
  v65 = MEMORY[0x28223BE20](v64);
  MEMORY[0x28223BE20](v65);
  v70 = a6[6].i64[1];
  if (v70 && (v71 = a6[7].f32[0], vcvts_n_f32_s64(*(v9 + 48), 1uLL) <= v71))
  {
    v92 = a6[5];
    v255 = a6[4];
    v256 = v92;
    v257 = a6[6].i64[0];
    v93 = a6[1];
    v251 = *a6;
    v252 = v93;
    v94 = a6[3];
    v253 = a6[2];
    v254 = v94;
    v341 = v255;
    v342 = v92;
    v343 = a6[6];
    v344.i32[0] = a6[7].i32[0];
    v338 = v93;
    v337 = v251;
    v339 = v253;
    v340 = v94;
    sub_2583D25EC(&v337, &v372);
    v95 = v249;
  }

  else
  {
    v227 = v69;
    v228 = v217 - v66;
    v225 = v68;
    v229 = v67;
    v72 = a7[7];
    v343 = a7[6];
    v344 = v72;
    v345 = a7[8];
    v73 = a7[3];
    v339 = a7[2];
    v340 = v73;
    v74 = a7[4];
    v342 = a7[5];
    v341 = v74;
    v75 = *a7;
    v338 = a7[1];
    v337 = v75;
    if (sub_2583C77E4(&v337) == 1)
    {
      v313 = 0;
      v312 = 0u;
      v311 = 0u;
      v310 = 0u;
      v309 = 0u;
      v308 = 0u;
      v307 = 0u;
      v306 = 0u;
    }

    else
    {
      v376 = v342;
      v377 = v343;
      v378 = v344;
      v379 = v345.i32[0];
      v372 = v338;
      v373 = v339;
      v374 = v340;
      v375 = v341;
      sub_258389808(&v372, &v364, &qword_27F928B18, &qword_25842FB00);
      v310 = v376;
      v311 = v377;
      v312 = v378;
      v313 = v379;
      v306 = v372;
      v307 = v373;
      v308 = v374;
      v309 = v375;
    }

    v76 = a3[1];
    v283 = *a3;
    v284 = v76;
    v77 = a3[3];
    v285 = a3[2];
    v286 = v77;
    v78 = a3[5];
    v250 = a3[4];
    v281 = v78;
    v79 = a3[6].i64[1];
    v282 = a3[6].i64[0];
    v80 = a3[7].i32[0];
    if (!a2[6].i64[1])
    {
      if (!a5[6].i64[1])
      {
        sub_258389808(a6, &v372, &qword_27F928B18, &qword_25842FB00);
        sub_258389808(a3, &v372, &qword_27F928B18, &qword_25842FB00);
        v298 = v404;
        v299 = v405;
        v300 = v406;
        v301 = v407;
        v294 = v400;
        v295 = v401;
        v96 = &v393;
        v296 = v402;
        v297 = v403;
        isa = v246.super.isa;
        v91 = v247;
        goto LABEL_20;
      }

      sub_258389808(a5, &v372, &qword_27F928B18, &qword_25842FB00);
      sub_258389808(a3, &v372, &qword_27F928B18, &qword_25842FB00);
      sub_258389808(a5, &v372, &qword_27F928B18, &qword_25842FB00);
      v291 = v397;
      v292 = v398;
      v293 = v399;
      v287 = v393;
      v288 = v394;
      v27 = v34;
      v290 = v396;
      v289 = v395;
      isa = v246.super.isa;
      v91 = v247;
LABEL_19:
      v298 = v291;
      v299 = v292;
      v294 = v287;
      v295 = v288;
      v297 = v290;
      v296 = v289;
      v300.i64[0] = v293;
      v300.i64[1] = v33;
      v96 = &v287;
      v34 = v27;
      *&v301 = v27;
LABEL_20:
      v97 = v245;
      v98 = v96[5];
      v302[4] = v96[4];
      v302[5] = v98;
      v99 = v96[6].i64[0];
      v100 = v96[1];
      v302[0] = *v96;
      v302[1] = v100;
      v101 = v96[2];
      v102 = v96[3];
      v302[3] = v102;
      v302[2] = v101;
      v305 = v34;
      v102.i32[0] = v80;
      v90.i64[0] = 0;
      if (!v79)
      {
        v102.f32[0] = 0.0;
      }

      v226 = v102;
      v303 = v99;
      v304 = v33;
      v103 = v250;
      if (!v91)
      {
        if (!v79)
        {
          v152 = a4[5];
          v318 = a4[4];
          v319 = v152;
          v153 = a4[6].i64[0];
          v154 = a4[1];
          v314 = *a4;
          v315 = v154;
          v156 = a4[2];
          v317 = a4[3];
          v155.i64[1] = v317.i64[1];
          v316 = v156;
          v155.i64[0] = 0;
          v248 = v155;
          v130 = INFINITY;
          v320 = v153;
          goto LABEL_44;
        }

LABEL_30:
        v248 = v90;
        v364 = v283;
        v365 = v284;
        v366 = v285;
        v367 = v286;
        v369 = v281;
        v368 = v103;
        v370.i64[0] = v282;
        v370.i64[1] = v79;
        v371 = v80;
        v130 = WorldPlaneHitTestResult.distanceToCamera(in:)(isa);
        v131 = a4[5];
        v318 = a4[4];
        v319 = v131;
        v132 = a4[6].i64[1];
        v320 = a4[6].i64[0];
        v133 = a4[1];
        v314 = *a4;
        v315 = v133;
        v134 = a4[2];
        v317 = a4[3];
        v316 = v134;
        if (v132)
        {
          v135 = a4[7].i32[0];
LABEL_33:
          v325 = v318;
          v326 = v319;
          v321 = v314;
          v322 = v315;
          v324 = v317;
          v323 = v316;
          v327 = v320;
          v328 = v132;
          v329 = v135;
          if ((v130 - WorldPlaneHitTestResult.distanceToCamera(in:)(isa)) <= 0.03)
          {
            v95 = v249;
            goto LABEL_40;
          }

          v140 = v300.i64[1];
          v103 = v250;
          if (v300.i64[1] && v79)
          {
            v141 = v80;
            v258 = v294;
            v259 = v295;
            v260 = v296;
            v261 = v297;
            v142 = v298;
            v251 = v299;
            v252.i64[0] = v300.i64[0];
            v80 = v301;
            v143 = vsub_f32(*v250.i8, *v298.f32);
            v144 = vmul_f32(v143, v143);
            v145 = vsub_f32(*v244.i8, *v298.f32);
            v146 = vmul_f32(v145, v145);
            v147 = vsub_f32(vzip1_s32(*&vextq_s8(v244, v244, 8uLL), *&vextq_s8(v250, v250, 8uLL)), vdup_laneq_s32(v298, 2));
            v148 = vadd_f32(vmul_f32(v147, v147), vadd_f32(vzip1_s32(v146, v144), vzip2_s32(v146, v144)));
            if ((vcgt_f32(vdup_lane_s32(v148, 1), v148).u8[0] & 1) != 0 && v148.f32[0] < 0.0009)
            {
              v346 = v283;
              v347 = v284;
              v348 = v285;
              v349 = v286;
              v350 = v250;
              v351 = v281;
              v352 = v282;
              v353 = v79;
              v354 = v141;
              v358 = v385;
              v357 = v384;
              v356 = v383;
              v355 = v382;
              v359 = v244;
              v360 = v380;
              v361 = v381;
              v362 = v91;
              v363 = v245;
              v248 = v298;
              sub_2583D25EC(&v355, &v267);
              sub_258385E40(&v346, &qword_27F928B18, &qword_25842FB00);
              v142 = v248;
              v149 = a4[1];
              v283 = *a4;
              v284 = v149;
              v150 = a4[3];
              v285 = a4[2];
              v286 = v150;
              v103 = a4[4];
              v151 = a4[5];
              v282 = a4[6].i64[0];
              v141 = a4[7].i32[0];
              v280 = v261;
              v281 = v151;
              v278 = v259;
              v279 = v260;
              v277 = v258;
              v276 = v252.i64[0];
              v79 = v132;
              v275 = v251;
            }

            else
            {
              v277 = v294;
              v278 = v295;
              v279 = v296;
              v280 = v297;
              v275 = v299;
              v276 = v300.i64[0];
            }

            v95 = v249;
LABEL_58:
            v346 = v277;
            v347 = v278;
            v348 = v279;
            v349 = v280;
            v248 = v142;
            v350 = v142;
            v351 = v275;
            v352 = v276;
            v353 = v140;
            v354 = v80;
            v250 = v103;
            if (v79)
            {
              v355 = v283;
              v356 = v284;
              v357 = v285;
              v358 = v286;
              v360 = v281;
              v359 = v103;
              v361 = v282;
              v362 = v79;
              v363 = v141;
              v166 = WorldPlaneHitTestResult.distanceToCamera(in:)(isa);
            }

            else
            {
              v166 = INFINITY;
            }

            v167 = WorldPlaneHitTestResult.distanceToCamera(in:)(isa);
            v271 = v298;
            v272 = v299;
            v273 = v300;
            v274 = v301;
            v267 = v294;
            v268 = v295;
            v269 = v296;
            v270 = v297;
            sub_2583D25EC(&v267, &v258);
            v168 = WorldPlane.confidence.getter();
            sub_258385E40(v302, &qword_27F928B18, &qword_25842FB00);
            sub_258385E40(&v294, &qword_27F928B18, &qword_25842FB00);
            v169 = (1.0 - v168) * ((1.0 - v168) * 0.015);
            if (v169 < (v166 - v167))
            {
              sub_258385E40(&v306, &qword_27F928B18, &qword_25842FB00);
              v258 = v283;
              v259 = v284;
              v260 = v285;
              v261 = v286;
              v262 = v250;
              v263 = v281;
              v264 = v282;
              v265 = v79;
              v266 = *&v141;
LABEL_63:
              sub_258385E40(&v258, &qword_27F928B18, &qword_25842FB00);
              v283 = v277;
              v284 = v278;
              v285 = v279;
              v286 = v280;
              v281 = v275;
              v170 = v248;
              v79 = v140;
              v282 = v276;
LABEL_93:
              v258 = v283;
              v259 = v284;
              v262 = v170;
              v263 = v281;
              v260 = v285;
              v261 = v286;
              v264 = v282;
              v265 = v79;
              v266 = *&v80;
              v267 = v283;
              v268 = v284;
              v269 = v285;
              v270 = v286;
              v271 = v170;
              v272 = v281;
              v273.i64[0] = v282;
              v273.i64[1] = v79;
              v274 = v80;
              sub_258389808(&v258, &v251, &qword_27F928B18, &qword_25842FB00);
              sub_258385E40(&v267, &qword_27F928B18, &qword_25842FB00);
              v70 = v265;
              v257 = v264;
              v255 = v262;
              v256 = v263;
              v251 = v258;
              v252 = v259;
              v253 = v260;
              v254 = v261;
              v71 = v266;
              goto LABEL_94;
            }

            if ((v167 + -0.0005) >= (v166 - v169))
            {
              sub_258385E40(&v306, &qword_27F928B18, &qword_25842FB00);
            }

            else if (v312.i64[1])
            {
              v171 = *(v312.i64[1] + 48);
              sub_258385E40(&v306, &qword_27F928B18, &qword_25842FB00);
              if (v171 == 3)
              {
                v258 = v283;
                v259 = v284;
                v260 = v285;
                v261 = v286;
                v262 = v250;
                v263 = v281;
                v264 = v282;
                v265 = v79;
                v266 = *&v141;
                goto LABEL_63;
              }
            }

            sub_258385E40(&v294, &qword_27F928B18, &qword_25842FB00);
            v80 = v141;
LABEL_92:
            v170 = v250;
            goto LABEL_93;
          }

LABEL_45:
          v157 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v226, v248)), 0);
          v158 = &v283;
          if (v248.f32[0] > v226.f32[0])
          {
            v158 = &v382;
          }

          v159 = v158[1];
          v160 = vbslq_s8(v157, v244, v103);
          v161 = &v281;
          v355 = *v158;
          v356 = v159;
          if (v248.f32[0] <= v226.f32[0])
          {
            v162 = v79;
          }

          else
          {
            v161 = &v380;
            v162 = v91;
          }

          if (v248.f32[0] <= v226.f32[0])
          {
            v163 = v80;
          }

          else
          {
            v163 = v97;
          }

          v164 = v158[3];
          v357 = v158[2];
          v358 = v164;
          v165 = v161[1].i64[0];
          v360 = *v161;
          v359 = v160;
          v361 = v165;
          v362 = v162;
          v363 = v163;
          v346 = v283;
          v347 = v284;
          v348 = v285;
          v349 = v286;
          v350 = v103;
          v351 = v281;
          v352 = v282;
          v353 = v79;
          v354 = v80;
          sub_258389808(&v355, &v267, &qword_27F928B18, &qword_25842FB00);
          sub_258385E40(&v346, &qword_27F928B18, &qword_25842FB00);
          v283 = v355;
          v284 = v356;
          v285 = v357;
          v286 = v358;
          v103 = v359;
          v281 = v360;
          v79 = v362;
          v282 = v361;
          v80 = v363;
LABEL_54:
          v95 = v249;
          v140 = v300.i64[1];
          if (!v300.i64[1])
          {
LABEL_91:
            v250 = v103;
            sub_258385E40(v302, &qword_27F928B18, &qword_25842FB00);
            sub_258385E40(&v306, &qword_27F928B18, &qword_25842FB00);
            goto LABEL_92;
          }

          goto LABEL_55;
        }

        v103 = v250;
LABEL_44:
        if ((v130 + -INFINITY) <= 0.03)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      v90.i32[0] = v245;
      if (!v79)
      {
        v248 = v90;
        v136 = a4[5];
        v318 = a4[4];
        v319 = v136;
        v137 = a4[6].i64[0];
        v138 = a4[1];
        v314 = *a4;
        v315 = v138;
        v139 = a4[2];
        v317 = a4[3];
        v316 = v139;
        v130 = INFINITY;
        v135 = v245;
        v320 = v137;
        v132 = v91;
        goto LABEL_33;
      }

      v104 = vsubq_f32(v244, v250);
      v105 = vmulq_f32(v104, v104);
      if ((v105.f32[2] + vaddv_f32(*v105.f32)) >= 0.000001)
      {
        goto LABEL_30;
      }

      v106 = v312.i64[1];
      if (!v312.i64[1])
      {
        goto LABEL_30;
      }

      v219 = v80;
      v248 = v90;
      swift_beginAccess();
      v107 = *(v106 + 16);
      v108 = *(v107 + 24);

      sub_258389808(&v306, &v364, &qword_27F928B18, &qword_25842FB00);
      os_unfair_lock_lock(v108);
      swift_beginAccess();
      v109 = *(v107 + 16);
      os_unfair_lock_unlock(v108);

      sub_258385E40(&v306, &qword_27F928B18, &qword_25842FB00);
      v110 = [v109 identifier];

      v111 = v227;
      sub_2584283D0();

      v112 = v228;
      v113 = v229;
      v114 = v243;
      v217[0] = v229[4];
      v217[1] = v229 + 4;
      (v217[0])(v228, v111, v243);
      v115 = v79;
      v116 = v241;
      v220 = v113[2];
      v221 = v113 + 2;
      v220(v241, v112, v114);
      v117 = v113[7];
      v117(v116, 0, 1, v114);
      swift_beginAccess();
      v218 = v115;
      v118 = *(v115 + 16);
      v119 = *(v118 + 24);

      os_unfair_lock_lock(v119);
      swift_beginAccess();
      v120 = *(v118 + 16);
      os_unfair_lock_unlock(v119);

      v121 = [v120 identifier];

      v122 = v240;
      sub_2584283D0();

      v223 = v117;
      v224 = v113 + 7;
      v117(v122, 0, 1, v114);
      v123 = *(v242 + 48);
      v124 = v237;
      sub_258389808(v116, v237, &qword_27F928B48, &unk_25842F200);
      sub_258389808(v122, v124 + v123, &qword_27F928B48, &unk_25842F200);
      v125 = v229 + 6;
      v126 = v229[6];
      v127 = v126(v124, 1, v114);
      v222 = v125;
      v227 = v126;
      if (v127 == 1)
      {
        sub_258385E40(v122, &qword_27F928B48, &unk_25842F200);
        sub_258385E40(v241, &qword_27F928B48, &unk_25842F200);
        v128 = v126(v124 + v123, 1, v114);
        v129 = v114;
        v79 = v218;
        if (v128 == 1)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v172 = v232;
        sub_258389808(v124, v232, &qword_27F928B48, &unk_25842F200);
        v129 = v114;
        if (v126(v124 + v123, 1, v114) != 1)
        {
          v186 = v225;
          (v217[0])(v225, v124 + v123, v114);
          sub_2583D2798(&qword_27F927FD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v187 = sub_258428600();
          v188 = v229[1];
          v188(v186, v243);
          sub_258385E40(v240, &qword_27F928B48, &unk_25842F200);
          sub_258385E40(v241, &qword_27F928B48, &unk_25842F200);
          v188(v172, v243);
          v129 = v243;
          sub_258385E40(v124, &qword_27F928B48, &unk_25842F200);
          v79 = v218;
          if (v187)
          {
            goto LABEL_83;
          }

          goto LABEL_73;
        }

        sub_258385E40(v240, &qword_27F928B48, &unk_25842F200);
        sub_258385E40(v241, &qword_27F928B48, &unk_25842F200);
        (v229[1])(v172, v114);
        v79 = v218;
      }

      sub_258385E40(v124, &qword_27F928B40, &qword_25842F1F8);
LABEL_73:
      v173 = v239;
      v220(v239, v228, v129);
      v174 = v223;
      v223(v173, 0, 1, v129);
      v175 = v247;
      swift_beginAccess();
      v176 = *(v175 + 16);
      v177 = *(v176 + 24);

      os_unfair_lock_lock(v177);
      swift_beginAccess();
      v178 = *(v176 + 16);
      os_unfair_lock_unlock(v177);

      v179 = [v178 identifier];

      v180 = v236;
      sub_2584283D0();

      v174(v180, 0, 1, v243);
      v129 = v243;
      v181 = *(v242 + 48);
      v182 = v173;
      v124 = v234;
      sub_258389808(v182, v234, &qword_27F928B48, &unk_25842F200);
      sub_258389808(v180, v124 + v181, &qword_27F928B48, &unk_25842F200);
      v183 = v227;
      if (v227(v124, 1, v129) == 1)
      {
        sub_258385E40(v180, &qword_27F928B48, &unk_25842F200);
        sub_258385E40(v239, &qword_27F928B48, &unk_25842F200);
        if (v227(v124 + v181, 1, v129) == 1)
        {
LABEL_75:
          sub_258385E40(v124, &qword_27F928B48, &unk_25842F200);
          goto LABEL_83;
        }

        goto LABEL_78;
      }

      v184 = v230;
      sub_258389808(v124, v230, &qword_27F928B48, &unk_25842F200);
      if (v183(v124 + v181, 1, v129) == 1)
      {
        sub_258385E40(v236, &qword_27F928B48, &unk_25842F200);
        sub_258385E40(v239, &qword_27F928B48, &unk_25842F200);
        (v229[1])(v184, v129);
LABEL_78:
        sub_258385E40(v124, &qword_27F928B40, &qword_25842F1F8);
        v185 = v229[1];
LABEL_79:
        v185(v228, v129);
        isa = v246.super.isa;
        v91 = v247;
        v103 = v250;
        v97 = v245;
        v90 = v248;
        v80 = v219;
        goto LABEL_30;
      }

      v189 = v124 + v181;
      v190 = v225;
      (v217[0])(v225, v189, v129);
      sub_2583D2798(&qword_27F927FD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      LODWORD(v241) = sub_258428600();
      v185 = v229[1];
      v185(v190, v129);
      sub_258385E40(v236, &qword_27F928B48, &unk_25842F200);
      sub_258385E40(v239, &qword_27F928B48, &unk_25842F200);
      v185(v184, v129);
      sub_258385E40(v124, &qword_27F928B48, &unk_25842F200);
      if ((v241 & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_83:
      v191 = v238;
      v220(v238, v228, v129);
      v192 = v223;
      v223(v191, 0, 1, v129);
      v193 = v247;
      swift_beginAccess();
      v194 = *(v193 + 16);
      v195 = *(v194 + 24);

      os_unfair_lock_lock(v195);
      swift_beginAccess();
      v196 = *(v194 + 16);
      os_unfair_lock_unlock(v195);

      v197 = [v196 identifier];

      v198 = v235;
      sub_2584283D0();

      v192(v198, 0, 1, v243);
      v199 = v243;
      v200 = *(v242 + 48);
      v201 = v191;
      v202 = v233;
      sub_258389808(v201, v233, &qword_27F928B48, &unk_25842F200);
      sub_258389808(v198, v202 + v200, &qword_27F928B48, &unk_25842F200);
      v203 = v227;
      if (v227(v202, 1, v199) == 1)
      {
        sub_258385E40(v198, &qword_27F928B48, &unk_25842F200);
        sub_258385E40(v238, &qword_27F928B48, &unk_25842F200);
        (v229[1])(v228, v199);
        v204 = v227(v202 + v200, 1, v199);
        v95 = v249;
        isa = v246.super.isa;
        v80 = v219;
        if (v204 == 1)
        {
          sub_258385E40(v202, &qword_27F928B48, &unk_25842F200);
          goto LABEL_90;
        }
      }

      else
      {
        v205 = v231;
        sub_258389808(v202, v231, &qword_27F928B48, &unk_25842F200);
        if (v203(v202 + v200, 1, v199) != 1)
        {
          v208 = v225;
          (v217[0])(v225, v202 + v200, v199);
          sub_2583D2798(&qword_27F927FD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v209 = sub_258428600();
          v210 = v229[1];
          v210(v208, v199);
          sub_258385E40(v235, &qword_27F928B48, &unk_25842F200);
          sub_258385E40(v238, &qword_27F928B48, &unk_25842F200);
          v210(v228, v199);
          v210(v231, v199);
          v80 = v219;
          sub_258385E40(v202, &qword_27F928B48, &unk_25842F200);
          v95 = v249;
          isa = v246.super.isa;
          if (v209)
          {
LABEL_90:
            v355 = v283;
            v356 = v284;
            v357 = v285;
            v358 = v286;
            v359 = v250;
            v360 = v281;
            v361 = v282;
            v362 = v79;
            v363 = v80;
            v367 = v385;
            v366 = v384;
            v365 = v383;
            v364 = v382;
            v368 = v244;
            v369 = v380;
            v370.i64[0] = v381;
            v370.i64[1] = v247;
            v371 = v245;
            sub_2583D25EC(&v364, &v346);
            sub_258385E40(&v355, &qword_27F928B18, &qword_25842FB00);
            v79 = a4[6].i64[1];
            v282 = a4[6].i64[0];
            v211 = a4[1];
            v283 = *a4;
            v284 = v211;
            v212 = a4[3];
            v285 = a4[2];
            v286 = v212;
            v103 = a4[4];
            v281 = a4[5];
            v80 = a4[7].i32[0];
            v140 = v300.i64[1];
            if (!v300.i64[1])
            {
              goto LABEL_91;
            }

            goto LABEL_55;
          }

LABEL_40:
          v103 = v250;
          v140 = v300.i64[1];
          if (!v300.i64[1])
          {
            goto LABEL_91;
          }

LABEL_55:
          v141 = v80;
          v80 = v301;
          v277 = v294;
          v278 = v295;
          v279 = v296;
          v280 = v297;
          v142 = v298;
          v275 = v299;
          v276 = v300.i64[0];
          goto LABEL_58;
        }

        v206 = v205;
        sub_258385E40(v235, &qword_27F928B48, &unk_25842F200);
        sub_258385E40(v238, &qword_27F928B48, &unk_25842F200);
        v207 = v229[1];
        v207(v228, v199);
        v207(v206, v199);
        v95 = v249;
        isa = v246.super.isa;
        v80 = v219;
      }

      sub_258385E40(v202, &qword_27F928B40, &qword_25842F1F8);
      goto LABEL_40;
    }

    v368 = v390;
    v369 = v391;
    v364 = v386;
    v365 = v387;
    v367 = v389;
    v366 = v388;
    v370.i64[0] = v392;
    v370.i64[1] = v248.i64[0];
    v371 = LODWORD(v27);
    v372 = v386;
    v373 = v387;
    v374 = v388;
    v375 = v389;
    v379 = LODWORD(v27);
    v378 = v370;
    v377 = v391;
    v376 = v390;
    v33 = a5[6].i64[1];
    if (!v33)
    {
      sub_258389808(a2, &v355, &qword_27F928B18, &qword_25842FB00);
      sub_258389808(a2, &v355, &qword_27F928B18, &qword_25842FB00);
      sub_258389808(a3, &v355, &qword_27F928B18, &qword_25842FB00);
      v291 = v390;
      v292 = v391;
      v293 = v392;
      v287 = v386;
      v288 = v387;
      v290 = v389;
      v289 = v388;
      isa = v246.super.isa;
      goto LABEL_18;
    }

    v81 = a5[7].f32[0];
    v82 = a5[5];
    v332 = a5[4];
    v333 = v82;
    v83 = a5[6].i64[0];
    v84 = a5[1];
    v330[0] = *a5;
    v330[1] = v84;
    v85 = a5[2];
    v331 = a5[3];
    v330[2] = v85;
    v334 = v83;
    v335 = v33;
    v336 = v81;
    v346 = v330[0];
    v347 = v84;
    v348 = v85;
    v349 = v331;
    v350 = v332;
    v351 = v82;
    v352 = v83;
    v86 = vsubq_f32(v368, v332);
    v87 = vmulq_f32(v86, v86);
    if ((v87.f32[2] + vaddv_f32(*v87.f32)) > 0.0009)
    {
      sub_258389808(a2, &v355, &qword_27F928B18, &qword_25842FB00);
      sub_258389808(a3, &v355, &qword_27F928B18, &qword_25842FB00);
      sub_258389808(a5, &v355, &qword_27F928B18, &qword_25842FB00);
      isa = v246.super.isa;
      v89 = WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(v246);
      if (v89 < WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(isa))
      {
        sub_258385E40(a2, &qword_27F928B18, &qword_25842FB00);
        v291 = v350;
        v292 = v351;
        v293 = v352;
        v287 = v346;
        v288 = v347;
        v290 = v349;
        v289 = v348;
        sub_2583D25EC(v330, &v355);
        v27 = v81;
        v91 = v247;
        goto LABEL_19;
      }

      sub_258385E40(a5, &qword_27F928B18, &qword_25842FB00);
      sub_2583D25EC(&v364, &v355);
      v291 = v390;
      v292 = v391;
      v293 = v392;
      v287 = v386;
      v288 = v387;
      v290 = v389;
      v289 = v388;
LABEL_18:
      v91 = v247;
      v33 = v248.i64[0];
      goto LABEL_19;
    }

    sub_258389808(a2, &v355, &qword_27F928B18, &qword_25842FB00);
    sub_258389808(a3, &v355, &qword_27F928B18, &qword_25842FB00);
    sub_258385E40(&v306, &qword_27F928B18, &qword_25842FB00);
    v355 = v283;
    v356 = v284;
    v357 = v285;
    v358 = v286;
    v359 = v250;
    v360 = v281;
    v361 = v282;
    v362 = v79;
    v363 = v80;
    sub_258385E40(&v355, &qword_27F928B18, &qword_25842FB00);
    v255 = v390;
    v256 = v391;
    v257 = v392;
    v251 = v386;
    v252 = v387;
    v71 = v27;
    v253 = v388;
    v254 = v389;
    v95 = v249;
    v70 = v248.i64[0];
  }

LABEL_94:
  v213 = v256;
  *(v95 + 64) = v255;
  *(v95 + 80) = v213;
  v214 = v257;
  v215 = v252;
  *v95 = v251;
  *(v95 + 16) = v215;
  result = v254;
  *(v95 + 32) = v253;
  *(v95 + 48) = result;
  *(v95 + 96) = v214;
  *(v95 + 104) = v70;
  *(v95 + 112) = v71;
  return result;
}

unint64_t sub_2583D0C70(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  HIDWORD(v30) = a2;
  if (a3 == 33)
  {
    result = (*(v6 + 120))();
  }

  else
  {
    result = (*(v6 + 104))(a3);
    if (!result)
    {
      return result;
    }
  }

  v11 = result;
  if (result >> 62)
  {
    result = sub_258428F10();
    v12 = result;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_27:

    return 0;
  }

  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v12 >= 1)
  {
    v31 = 0;
    LODWORD(v30) = 0;
    v13 = 0;
    v14.i64[0] = a4;
    v14.i64[1] = a5;
    v32 = v14;
    v15 = *&a4;
    v16 = 3.4028e38;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x259C7E900](v13, v11);
        if (a6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = *(v11 + 8 * v13 + 32);
        if (a6)
        {
          goto LABEL_17;
        }
      }

      [v17 transform];
      v19 = v15 * v18.f32[0];
      v20 = vmulq_f32(v18, v32);
      if (fabsf(v20.f32[2] + (v19 + v20.f32[1])) < 0.866)
      {

        goto LABEL_10;
      }

LABEL_17:
      type metadata accessor for WorldPlane();
      v21 = swift_allocObject();
      *(v21 + 24) = xmmword_25842EC50;
      *(v21 + 40) = 0x3F5DB22D40000000;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28, &unk_25842F1D0);
      v22 = swift_allocObject();
      v23 = v17;
      v24 = swift_slowAlloc();
      *v24 = 0;
      *(v22 + 16) = v23;
      *(v22 + 24) = v24;
      *(v21 + 16) = v22;
      swift_endAccess();
      *(v21 + 48) = 0;
      *(v21 + 52) = 0x3F80000000000000;
      memset(v39, 0, 64);
      v39[64] = 1;
      if (qword_27F9279F0 != -1)
      {
        swift_once();
      }

      WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v23, v39, static SIMD3<>.zero);
      v25 = [a1 camera];
      v26 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v25, v39);
      v34 = v27;
      v35 = v26;

      WorldPlane.hitTest(hitRay:withPlaneType:)(7, v36, v35, v34);
      if (v38)
      {
        v28 = v37;
        v28.i32[3] = 0;
        v29 = WorldPlane.distanceToEdge(point:)(v28);
        sub_258385E40(v36, &qword_27F928B18, &qword_25842FB00);

        if ((v29 & 0x100000000) == 0 && v16 > *&v29 && (*&v29 >= 0.0 || (v30 & 0x100000000) == 0))
        {

          v16 = *&v29;
          v31 = v21;
          LODWORD(v30) = v29;
          goto LABEL_10;
        }
      }

      else
      {
      }

LABEL_10:
      if (v12 == ++v13)
      {

        return v31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t PlaneSelector.deinit()
{

  sub_258385E40(v0 + 184, &qword_27F928AD8, &qword_25842ECD8);

  return v0;
}

uint64_t PlaneSelector.__deallocating_deinit()
{

  sub_258385E40(v0 + 184, &qword_27F928AD8, &qword_25842ECD8);

  return swift_deallocClassInstance();
}

uint64_t sub_2583D10E4()
{
  v0 = sub_2583895B4(&unk_28697E668);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F928B50, &qword_25842F210);
  result = swift_arrayDestroy();
  static PlaneSelector.DebugOptions.keyForFeature = v0;
  return result;
}

uint64_t *PlaneSelector.DebugOptions.keyForFeature.unsafeMutableAddressor()
{
  if (qword_27F927A88 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.DebugOptions.keyForFeature;
}

void sub_2583D11B4()
{
  if (qword_27F927A88 != -1)
  {
    swift_once();
  }

  v0 = static PlaneSelector.DebugOptions.keyForFeature;
  v1 = *(static PlaneSelector.DebugOptions.keyForFeature + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_25838C55C(*(static PlaneSelector.DebugOptions.keyForFeature + 16), 0);
  v3 = sub_2583E9038(&v5, (v2 + 4), v1, v0);
  v4 = v5;

  sub_2583980BC(v4);
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x277D84F90];
  }

  static PlaneSelector.DebugOptions.keys = v2;
}

uint64_t *PlaneSelector.DebugOptions.keys.unsafeMutableAddressor()
{
  if (qword_27F927A90 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.DebugOptions.keys;
}

void sub_2583D131C()
{
  if (qword_27F927A88 != -1)
  {
    swift_once();
  }

  v0 = sub_2583E903C();

  static PlaneSelector.DebugOptions.default = v0;
}

uint64_t static PlaneSelector.DebugOptions.default.getter()
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static PlaneSelector.DebugOptions.default;
}

void static PlaneSelector.DebugOptions.default.setter(uint64_t a1)
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PlaneSelector.DebugOptions.default = a1;
}

uint64_t (*static PlaneSelector.DebugOptions.default.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_2583D1684(uint64_t a1)
{
  v3 = *(v1 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v56 = *(v3 + 16);
  v57 = *(v3 + 32);
  v58 = *(v3 + 48);
  v5 = *(v3 + 72);
  v59 = *(v3 + 64);
  os_unfair_lock_unlock(v4);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = *(v3 + 80);
  os_unfair_lock_lock(v8);
  *(v3 + 16) = v56;
  *(v3 + 32) = v57;
  *(v3 + 48) = v58;
  *(v3 + 64) = v59;
  *(v3 + 72) = v7;
  os_unfair_lock_unlock(v8);

  v9 = *(*(a1 + 104) + 48);
  v10 = *(v1 + 224);
  v11 = *(v10 + 80);

  os_unfair_lock_lock(v11);
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        swift_beginAccess();
        v38 = *(v10 + 16);
        v39 = *(v10 + 32);
        v23 = *(v10 + 56);
        v40 = *(v10 + 48);
        v37 = *(v10 + 64);
        os_unfair_lock_unlock(v11);
        v6 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (!v6)
        {
          v14 = *(v10 + 80);
          os_unfair_lock_lock(v14);
          *(v10 + 16) = v38;
          *(v10 + 32) = v39;
          *(v10 + 48) = v40;
          *(v10 + 56) = v24;
          *(v10 + 64) = v37;
          goto LABEL_23;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      swift_beginAccess();
      v43 = *(v10 + 16);
      v44 = *(v10 + 32);
      v16 = *(v10 + 48);
      v41 = *(v10 + 56);
      v42 = *(v10 + 72);
      os_unfair_lock_unlock(v11);
      v6 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (!v6)
      {
        v14 = *(v10 + 80);
        os_unfair_lock_lock(v14);
        *(v10 + 16) = v43;
        *(v10 + 32) = v44;
        *(v10 + 48) = v17;
        *(v10 + 56) = v41;
        v15 = v42;
        goto LABEL_22;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    swift_beginAccess();
    v20 = *(v10 + 16);
    v21 = *(v10 + 24);
    v34 = *(v10 + 32);
    v35 = *(v10 + 48);
    v36 = *(v10 + 64);
    os_unfair_lock_unlock(v11);
    v6 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v6)
    {
      v14 = *(v10 + 80);
      os_unfair_lock_lock(v14);
      *(v10 + 16) = v20;
      *(v10 + 24) = v22;
      *(v10 + 32) = v34;
      *(v10 + 48) = v35;
      *(v10 + 64) = v36;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 <= 4)
  {
    if (v9 == 3)
    {
      swift_beginAccess();
      v48 = *(v10 + 16);
      v12 = *(v10 + 32);
      v45 = *(v10 + 40);
      v46 = *(v10 + 56);
      v47 = *(v10 + 72);
      os_unfair_lock_unlock(v11);
      v6 = __OFADD__(v12, 1);
      v13 = v12 + 1;
      if (!v6)
      {
        v14 = *(v10 + 80);
        os_unfair_lock_lock(v14);
        *(v10 + 16) = v48;
        *(v10 + 32) = v13;
        *(v10 + 40) = v45;
        *(v10 + 56) = v46;
        v15 = v47;
LABEL_22:
        *(v10 + 72) = v15;
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    swift_beginAccess();
    v53 = *(v10 + 16);
    v54 = *(v10 + 32);
    v55 = *(v10 + 48);
    v26 = *(v10 + 64);
    v25 = *(v10 + 72);
    os_unfair_lock_unlock(v11);
    v6 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v6)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v14 = *(v10 + 80);
    os_unfair_lock_lock(v14);
    *(v10 + 16) = v53;
    *(v10 + 32) = v54;
    *(v10 + 48) = v55;
    *(v10 + 64) = v27;
    *(v10 + 72) = v25;
LABEL_23:
    os_unfair_lock_unlock(v14);

    return;
  }

  if (v9 == 5)
  {
    swift_beginAccess();
    v51 = *(v10 + 16);
    v18 = *(v10 + 40);
    v52 = *(v10 + 32);
    v49 = *(v10 + 48);
    v50 = *(v10 + 64);
    os_unfair_lock_unlock(v11);
    v6 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v6)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v14 = *(v10 + 80);
    os_unfair_lock_lock(v14);
    *(v10 + 16) = v51;
    *(v10 + 32) = v52;
    *(v10 + 40) = v19;
    *(v10 + 48) = v49;
    *(v10 + 64) = v50;
    goto LABEL_23;
  }

  swift_beginAccess();
  v28 = *(v10 + 16);
  v30 = *(v10 + 24);
  v31 = *(v10 + 40);
  v32 = *(v10 + 56);
  v33 = *(v10 + 72);
  os_unfair_lock_unlock(v11);
  v6 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v6)
  {
    v14 = *(v10 + 80);
    os_unfair_lock_lock(v14);
    *(v10 + 16) = v29;
    *(v10 + 24) = v30;
    *(v10 + 40) = v31;
    *(v10 + 56) = v32;
    v15 = v33;
    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_2583D1A40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2583D1684(a2);
  }

  return result;
}

unint64_t sub_2583D1AA4()
{
  result = qword_27F928AE0;
  if (!qword_27F928AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AE0);
  }

  return result;
}

unint64_t sub_2583D1AFC()
{
  result = qword_27F928AE8;
  if (!qword_27F928AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AE8);
  }

  return result;
}

unint64_t sub_2583D1B54()
{
  result = qword_27F928AF0;
  if (!qword_27F928AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AF0);
  }

  return result;
}

unint64_t sub_2583D1BAC()
{
  result = qword_27F928AF8;
  if (!qword_27F928AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AF8);
  }

  return result;
}

unint64_t sub_2583D1C04()
{
  result = qword_27F928B00;
  if (!qword_27F928B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928B00);
  }

  return result;
}

unint64_t sub_2583D1C5C()
{
  result = qword_27F928B08;
  if (!qword_27F928B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928B08);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

char *sub_2583D1D30()
{
  v0 = sub_25839D0E8(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_25839D0E8((v1 > 1), v2 + 1, 1, v0);
  }

  v3 = 0;
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  __asm
  {
    FMOV            V9.2S, #20.0
    FMOV            V0.2D, #0.5
  }

  v24 = _Q0;
  do
  {
    v13 = __sincosf_stret(v3 * 0.7854);
    v12.f32[0] = v13.__cosval;
    sinval = v13.__sinval;
    v15 = *(v0 + 2);
    v14 = *(v0 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v21 = sub_25839D0E8((v14 > 1), v15 + 1, 1, v0);
      sinval = v13.__sinval;
      v12.i32[0] = LODWORD(v13.__cosval);
      v0 = v21;
    }

    v12.f32[1] = sinval;
    v17 = vcvtq_f64_f32(vmul_f32(v12, _D9));
    *(v0 + 2) = v16;
    *&v0[16 * v15 + 32] = v17;
    if ((v3 & 1) == 0)
    {
      v18 = *(v0 + 3);
      v19 = v15 + 2;
      if (v19 > (v18 >> 1))
      {
        v23 = v17;
        v20 = sub_25839D0E8((v18 > 1), v19, 1, v0);
        v17 = v23;
        v0 = v20;
      }

      *(v0 + 2) = v19;
      *&v0[16 * v16 + 32] = vmulq_f64(v17, v24);
    }

    ++v3;
  }

  while (v3 != 8);
  return v0;
}

void sub_2583D1E98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v53 = a4;
  v54 = a6;
  v52 = a5;
  *(v7 + 16) = xmmword_25842EC70;
  *(v7 + 32) = 1063105069;
  *(v7 + 40) = xmmword_25842EC80;
  *(v7 + 56) = 1;
  *(v7 + 64) = xmmword_25842EC90;
  *(v7 + 80) = 1106247680;
  v11 = objc_opt_self();
  v12 = [v11 standardUserDefaults];
  v13 = sub_258428630();
  v14 = [v12 integerForKey_];

  if (v14 > 4)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v7 + 84) = v14;
  v15 = [v11 standardUserDefaults];
  v16 = sub_258428630();
  v17 = [v15 integerForKey_];

  if (v17 > 3)
  {
LABEL_22:
    __break(1u);
    return;
  }

  *(v7 + 184) = 0u;
  *(v7 + 85) = v17;
  *(v7 + 136) = 953267991;
  *(v7 + 140) = 33;
  *(v7 + 144) = 0x3F490FDB41A00000;
  *(v7 + 152) = 975427339;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AD0, &qword_25842ECD0);
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 80) = v19;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v7 + 224) = v18;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  v20 = a1;
  v21 = a2;
  v22 = v52;
  v23 = v53;
  *(v7 + 104) = a3;
  *(v7 + 112) = v23;
  v24 = v54;
  *(v7 + 120) = v22;
  *(v7 + 128) = v24;
  swift_beginAccess();
  v25 = static PlaneSelector.DebuggerClass;
  if (static PlaneSelector.DebuggerClass)
  {
    v26 = qword_27F92F268;
    v51 = *(qword_27F92F268 + 8);
    v27 = sub_258428DA0();
    v52 = &v49;
    v49 = *(v27 - 8);
    v50 = v27;
    MEMORY[0x28223BE20](v27);
    v29 = &v49 - v28;
    v30 = v20;

    v51(v30, v21, v7, v25, v26);
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v29, 1, v25) == 1)
    {
      (*(v49 + 8))(v29, v50);
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
    }

    else
    {
      *(&v57 + 1) = v25;
      v58 = v26;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
      (*(v31 + 32))(boxed_opaque_existential_1, v29, v25);
    }
  }

  else
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v32 = v20;
  }

  swift_beginAccess();
  sub_2583C7A24(&v56, v7 + 184, &qword_27F928AD8, &qword_25842ECD8);
  swift_endAccess();
  if (qword_27F927B28 != -1)
  {
    swift_once();
  }

  v35 = qword_27F92F388;
  v34 = unk_27F92F390;
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_258428FC0();
  MEMORY[0x259C7DFF0](0xD000000000000015, 0x8000000258437030);
  LOBYTE(v55) = *(v7 + 84);
  sub_2584290D0();
  v36 = *(&v56 + 1);
  v37 = v56;
  v38 = sub_258428C50();
  v39 = qword_27F927A30;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = off_27F928850;
  if (*(off_27F928850 + 2) && (v42 = sub_258384364(v35, v34), (v43 & 1) != 0))
  {
    v44 = *(v41[7] + 8 * v42);
    swift_endAccess();
    v45 = v44;
  }

  else
  {
    v54 = v37;
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98, 0x277D86200);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v46 = sub_258428D90();
    swift_beginAccess();
    v45 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v45, v35, v34, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v55;
    swift_endAccess();
    v37 = v54;
  }

  os_unfair_lock_unlock(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90, &qword_25842DDD0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_25842CCB0;
  *(v48 + 56) = MEMORY[0x277D837D0];
  *(v48 + 64) = sub_258385D08();
  *(v48 + 32) = v37;
  *(v48 + 40) = v36;

  sub_258428440("%{public}@", 10, 2, &dword_258376000, v45, v38, v48);
}

uint64_t sub_2583D269C(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v2, 24, 7);
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 148, 15);
}

uint64_t sub_2583D2798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static Extremities.empty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258428DA0();
  sub_2584292C0();
  v5 = *(*(v4 - 8) + 72);
  swift_allocObject();
  sub_258428880();
  v7 = v6;
  v8 = *(*(a1 - 8) + 56);
  v8(v6, 1, 1, a1);
  v8(v7 + v5, 1, 1, a1);
  v8(v7 + 2 * v5, 1, 1, a1);
  v8(v7 + 3 * v5, 1, 1, a1);
  sub_258428980();
  nullsub_1();

  return Extremities.init(sortedPoints:)(a1, a2);
}

uint64_t Extremities.init(sortedPoints:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_258428DA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = *(*(a2 - 8) + 56);
  v9(a3, 1, 1, a2);
  v12 = type metadata accessor for Extremities(0, a2, v10, v11);
  v13 = v12[7];
  v9(a3 + v13, 1, 1, a2);
  v18 = v12[8];
  v9(a3 + v18, 1, 1, a2);
  v14 = v12[9];
  v9(a3 + v14, 1, 1, a2);
  sub_2584289B0();
  v15 = *(v6 + 40);
  v15(a3, v8, v5);
  sub_2584289B0();
  v15(a3 + v13, v8, v5);
  sub_2584289B0();
  v15(a3 + v18, v8, v5);
  sub_2584289B0();

  return (v15)(a3 + v14, v8, v5);
}

uint64_t Extremities.top.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_258428DA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t Extremities.top.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_258428DA0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t Extremities.left.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Extremities.left.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Extremities.bottom.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Extremities.bottom.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Extremities.right.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Extremities.right.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

BOOL Extremities.hasAllExtremities.getter(int *a1)
{
  Extremities.allPoints.getter(a1);
  v1 = sub_258428910();

  return v1 == 4;
}

uint64_t Extremities.allPoints.getter(int *a1)
{
  v3 = sub_258428DA0();
  sub_2584292C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  swift_allocObject();
  sub_258428880();
  v7 = v6;
  v8 = *(v4 + 16);
  v8(v6, v1, v3);
  v8(v7 + v5, v1 + a1[7], v3);
  v8(v7 + 2 * v5, v1 + a1[8], v3);
  v8(v7 + 3 * v5, v1 + a1[9], v3);
  sub_258428980();
  nullsub_1();
  swift_getWitnessTable();
  v9 = sub_2584287A0();

  return v9;
}

uint64_t sub_2583D32C8(uint64_t a1)
{
  result = sub_258428DA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2583D333C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2583D34D4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

float sub_2583D3744()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 84);
  }

  *(v0 + 84) = 1048871919;
  *(v0 + 88) = 0;
  return 0.25882;
}

double sub_2583D376C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 200) = v2;

  return result;
}

void *sub_2583D3804()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928BD8, &unk_25842F370);
    v1 = swift_allocObject();
    swift_weakInit();
    v2 = MEMORY[0x277D84F90];
    v1[3] = MEMORY[0x277D84F90];
    v1[4] = v2;
    v1[5] = v2;
    swift_weakAssign();
    *(v0 + 208) = v1;
  }

  return v1;
}

double PlaneSolver.solve(data:iteration:)@<D0>(uint64_t a1@<X8>, float32x4_t *a2@<X0>, double a3@<D0>, double a4@<D1>)
{
  sub_2583D48CC(a2, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

void PlaneSolver.getError(model:samples:)(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  if (v3[10].i8[0])
  {
    __break(1u);
  }

  else
  {
    v5 = v3[9];
    v6 = v5.f32[0] * a3.f32[0];
    v7 = vmulq_f32(v5, a3);
    if (fabsf(v7.f32[2] + (v6 + v7.f32[1])) >= sub_2583D3744())
    {
      sub_2583D4B40(a1, a2, a3);
    }
  }
}

void PlaneSolver.detectPlane(data:vergenceAngleCosines:pointOfView:camera:bestData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, float32x4_t **a4@<X3>, float32x4_t *a5@<X8>, float32x4_t a6@<Q1>, float32x4_t a7@<Q2>, __n128 a8@<Q3>)
{
  v11 = *(a1 + 16);
  *(v8 + 96) = v11;
  v12 = 0uLL;
  v13 = 0.0;
  if (v11 < 4)
  {
    v14 = 1;
    v15 = 0uLL;
    goto LABEL_92;
  }

  v119 = sub_2583D4648(a1, a2, a3, 3.0);
  v17 = a8;
  v17.n128_u32[3] = 0;
  *(v8 + 112) = v17;
  *(v8 + 128) = 0;
  v18 = vmulq_f32(a7, a7);
  v19 = vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19));
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(*v18.f32, *v18.f32)));
  *(v8 + 144) = vmulq_n_f32(a7, vmul_f32(*v18.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  *(v8 + 160) = 0;
  v20 = vmulq_f32(a6, a6);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  *(v8 + 176) = vmulq_n_f32(a6, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  *(v8 + 192) = 0;
  v22 = *(v8 + 96);
  v23 = v22 * 0.8;
  if (COERCE_INT(fabs(v23)) > 2139095039)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v24 = v23;
  if (v23 >= 15)
  {
    v24 = 15;
  }

  if (v24 <= 3)
  {
    v24 = 3;
  }

  v118 = v24;
  v25 = sub_2583D441C(v22);

  v26 = sub_2583D3804();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_91:
    v14 = 1;
    v15 = 0uLL;
    v12 = 0uLL;
    goto LABEL_92;
  }

  if (v25 < 0)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    return;
  }

  if (!v25)
  {

    goto LABEL_91;
  }

  v120 = v25;
  v117 = a4;
  v113 = a5;
  v114 = 0;
  v28 = 0;
  v115 = 0;
  v29 = v119;
  v30 = *(v119 + 16);
  v31 = v119 + 32;
  v116 = 1;
  v32 = INFINITY;
  v122 = Strong;
  do
  {
    v124 = v28;
    swift_beginAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v26[4];
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_25838716C(0, *(v34 + 16));
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
      if (*(v34 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F0, &unk_25842F2B0);
        v35 = swift_allocObject();
        v36 = _swift_stdlib_malloc_size(v35);
        v37 = v36 - 32;
        if (v36 < 32)
        {
          v37 = v36 - 25;
        }

        v35[2] = 0;
        v35[3] = 2 * (v37 >> 3);
      }

      v26[4] = v35;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v26[3];
    if (v38)
    {
      sub_258386FC4(0, *(v39 + 16));
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
      if (*(v39 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8, &unk_25842CF40);
        v40 = swift_allocObject();
        v41 = _swift_stdlib_malloc_size(v40);
        v42 = v41 - 32;
        if (v41 < 32)
        {
          v42 = v41 - 17;
        }

        v40[2] = 0;
        v40[3] = 2 * (v42 >> 4);
      }

      v26[3] = v40;
    }

    v43 = v26[4];
    if (*(v43 + 2) <= 3uLL)
    {
      while (1)
      {
        v54 = round(drand48() * (v30 - 1));
        if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v54 <= -9.22337204e18)
        {
          goto LABEL_98;
        }

        if (v54 >= 9.22337204e18)
        {
          goto LABEL_99;
        }

        v55 = 0;
        v56 = v54;
        v53 = *(v43 + 2);
        while (v53 != v55)
        {
          v57 = &v43[8 * v55++];
          if (*(v57 + 4) == v56)
          {
            goto LABEL_33;
          }
        }

        v58 = swift_isUniquelyReferenced_nonNull_native();
        v26[4] = v43;
        if ((v58 & 1) == 0)
        {
          v43 = sub_25839CFE4(0, v53 + 1, 1, v43);
          v26[4] = v43;
        }

        v60 = *(v43 + 2);
        v59 = *(v43 + 3);
        if (v60 >= v59 >> 1)
        {
          v43 = sub_25839CFE4((v59 > 1), v60 + 1, 1, v43);
        }

        *(v43 + 2) = v60 + 1;
        *&v43[8 * v60 + 32] = v56;
        v26[4] = v43;
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (*(v29 + 16) <= v56)
        {
          goto LABEL_101;
        }

        v127 = *(v31 + 16 * v56);
        v61 = v26[3];
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v26[3] = v61;
        if ((v62 & 1) == 0)
        {
          v61 = sub_25839D2FC(0, *(v61 + 2) + 1, 1, v61);
          v26[3] = v61;
        }

        v64 = *(v61 + 2);
        v63 = *(v61 + 3);
        if (v64 >= v63 >> 1)
        {
          v61 = sub_25839D2FC((v63 > 1), v64 + 1, 1, v61);
        }

        *(v61 + 2) = v64 + 1;
        *&v61[16 * v64 + 32] = v127;
        v26[3] = v61;
        v53 = *(v43 + 2);
LABEL_33:
        if (v53 >= 4)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:

      v32 = v9;
      a5 = v113;
      goto LABEL_94;
    }

LABEL_29:
    swift_endAccess();
    swift_endAccess();

    sub_2583D48CC(v44, v130, v45, v46);
    v47 = v130[0];
    v48 = v130[1];
    v49 = v130[2];
    v50 = v130[3];

    if (v131)
    {
      goto LABEL_71;
    }

    swift_beginAccess();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v26[5];
    if (v51)
    {
      sub_258386FC4(0, *(v52 + 16));
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
      if (*(v52 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8, &unk_25842CF40);
        v65 = swift_allocObject();
        v66 = _swift_stdlib_malloc_size(v65);
        v67 = v66 - 32;
        if (v66 < 32)
        {
          v67 = v66 - 17;
        }

        v65[2] = 0;
        v65[3] = 2 * (v67 >> 4);
      }

      v26[5] = v65;

      v29 = v119;
    }

    v68.i64[0] = v47;
    v68.i64[1] = v48;
    v121 = v68;
    v68.i64[0] = v49;
    v68.i64[1] = v50;
    a7 = v68;
    swift_endAccess();
    v69 = a7;
    if (v30)
    {
      v70 = 0;
      v9 = *&v49;
      v71 = vmulq_f32(v121, a7);
      v72 = v71.f32[2] + ((*&v47 * *&v49) + v71.f32[1]);
      do
      {
        v73 = v70++;
        v74 = v26[4];
        v75 = *(v74 + 16);
        v76 = (v74 + 32);
        while (v75)
        {
          v77 = *v76++;
          --v75;
          if (v77 == v73)
          {
            goto LABEL_59;
          }
        }

        v78 = *(v31 + 16 * v73);
        v79 = vmulq_f32(v78, v69);
        if ((((v79.f32[2] + ((*&v49 * v78.f32[0]) + v79.f32[1])) - v72) * ((v79.f32[2] + ((*&v49 * v78.f32[0]) + v79.f32[1])) - v72)) <= 0.000025)
        {
          v128 = *(v31 + 16 * v73);
          swift_beginAccess();
          v80 = v26[5];
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v26[5] = v80;
          if ((v81 & 1) == 0)
          {
            v80 = sub_25839D2FC(0, *(v80 + 2) + 1, 1, v80);
            v26[5] = v80;
          }

          v83 = *(v80 + 2);
          v82 = *(v80 + 3);
          v84 = v128;
          if (v83 >= v82 >> 1)
          {
            v85 = sub_25839D2FC((v82 > 1), v83 + 1, 1, v80);
            v84 = v128;
            v80 = v85;
          }

          *(v80 + 2) = v83 + 1;
          *&v80[16 * v83 + 32] = v84;
          v26[5] = v80;
          swift_endAccess();
          v69 = a7;
        }

LABEL_59:
        ;
      }

      while (v70 != v30);
    }

    v86 = *(v26[5] + 16);
    v87 = *(v26[3] + 16);
    v88 = __OFADD__(v86, v87);
    v89 = v86 + v87;
    if (v88)
    {
      __break(1u);
      goto LABEL_104;
    }

    if (v89 < v118)
    {
      goto LABEL_71;
    }

    swift_beginAccess();

    sub_2583C2328(v91);
    swift_endAccess();

    sub_2583D48CC(v92, v132, v93, v94);
    v95 = v132[0];
    v96 = v132[1];
    v98 = v132[2];
    v97 = v132[3];

    v99 = a7;
    if ((v133 & 1) == 0)
    {
      v100.i64[0] = v95;
      v100.i64[1] = v96;
      v121 = v100;
      v99.i64[0] = v98;
      v99.i64[1] = v97;
    }

    if (v122[10].i8[0])
    {
      goto LABEL_108;
    }

    v101 = v26[5];
    v102 = vmulq_f32(v99, v122[9]);
    v9 = fabsf(v102.f32[2] + ((COERCE_FLOAT(v122[9].i64[0]) * v99.f32[0]) + v102.f32[1]));
    a7 = v99;
    v29 = v119;
    if (v9 < sub_2583D3744())
    {
      goto LABEL_71;
    }

    v103 = v101[1].u64[0];
    v9 = sub_2583D4B40(v101, v121, a7) * (50.0 / v103);
    v90 = v124;
    if (v9 < v32)
    {
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v105 = *v117;
      if (v104)
      {
        sub_258386FC4(0, v105[1].i64[0]);
      }

      else
      {
        v106 = MEMORY[0x277D84F90];
        if (v105[1].i64[1] >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8, &unk_25842CF40);
          v106 = swift_allocObject();
          v107 = _swift_stdlib_malloc_size(v106);
          v108 = v107 - 32;
          if (v107 < 32)
          {
            v108 = v107 - 17;
          }

          v106[1].i64[0] = 0;
          v106[1].i64[1] = 2 * (v108 >> 4);
        }

        *v117 = v106;
        v29 = v119;
      }

      sub_2583C2328(v109);
      if (v9 == 0.0)
      {
        goto LABEL_102;
      }

      v116 = 0;
      v114 = a7.i64[1];
      v115 = a7.i64[0];
      v32 = v9;
LABEL_71:
      v90 = v124;
    }

    v28 = v90 + 1;
  }

  while (v28 != v120);

  a5 = v113;
  if (v116)
  {
    goto LABEL_91;
  }

  v111.i64[0] = v115;
  v111.i64[1] = v114;
  a7 = v111;
LABEL_94:
  v112 = *v117;
  *v12.i64 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(*v117, *v111.i64, v110);
  v13 = 0.0;
  if (v32 != INFINITY)
  {
    v129 = v12;
    v13 = (v32 / (sub_2583D4B40(v112, v12, a7) * -50.0)) + 1.0;
    v12 = v129;
  }

  v14 = 0;
  v15 = a7;
LABEL_92:
  *a5 = v12;
  a5[1] = v15;
  a5[2].f32[0] = v13;
  a5[2].i8[4] = v14;
}

uint64_t sub_2583D441C(uint64_t result)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = (result / 50.0) * (result / 50.0);
  if (COERCE_INT(fabs(v6)) > 2139095039)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v5 * v6;
  if ((v5 * v6) >> 64 != v7 >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v2 + v7;
  if (__OFADD__(v2, v7))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

void *PlaneSolver.deinit()
{

  return v0;
}

uint64_t PlaneSolver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2583D4520()
{
  *(v0 + 16) = xmmword_25842F270;
  *(v0 + 32) = 1;
  *(v0 + 40) = xmmword_25842F280;
  *(v0 + 56) = 0x3FA78D3637D1B717;
  *(v0 + 64) = xmmword_25842F290;
  *(v0 + 80) = 1077936128;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  v1 = sub_2584288E0();
  v1[2] = 3;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = MEMORY[0x277D84F90];
  *(v0 + 208) = 0;
  return v0;
}

double sub_2583D45D8@<D0>(uint64_t a1@<X8>, float32x4_t *a2@<X0>, double a3@<D0>, double a4@<D1>)
{
  sub_2583D48CC(a2, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_2583D4648(uint64_t a1, uint64_t a2, id a3, float a4)
{
  v5 = v4;
  [a3 intrinsics];
  v38 = v10;
  [a3 intrinsics];
  if (v11 >= v38)
  {
    v12 = v38;
  }

  else
  {
    v12 = v11;
  }

  [a3 viewMatrixForOrientation_];
  v36 = v14;
  v37 = v13;
  v34 = v16;
  v35 = v15;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 200);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_258386FC4(0, *(v18 + 16));
  }

  else
  {
    *(v5 + 200) = sub_25838C5F8(0, *(v18 + 24) >> 1);
  }

  result = swift_endAccess();
  v20 = *(a1 + 16);
  if (!v20)
  {
    return *(v5 + 200);
  }

  v21 = 0;
  v22 = a4 / v12;
  while (1)
  {
    v39 = *(a1 + 32 + 16 * v21);
    v23 = 1.0;
    if (a2)
    {
      break;
    }

LABEL_12:
    swift_beginAccess();
    v24 = *(v5 + 200);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 200) = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_25839D2FC(0, *(v24 + 2) + 1, 1, v24);
      *(v5 + 200) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_25839D2FC((v26 > 1), v27 + 1, 1, v24);
    }

    ++v21;
    v28.i32[1] = v34.i32[1];
    v29 = vaddq_f32(v34, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v39.f32[0]), v36, *v39.f32, 1), v35, v39, 2));
    *v28.i32 = vmuls_lane_f32(v22, v29, 2) / v23;
    v30 = vmulq_f32(v29, v29);
    *v30.f32 = vadd_f32(*v30.f32, *&vextq_s8(v30, v30, 8uLL));
    v30.i32[0] = vadd_f32(*v30.f32, vdup_lane_s32(*v30.f32, 1)).u32[0];
    v31 = vrsqrte_f32(v30.u32[0]);
    v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
    v33 = vmulq_n_f32(v29, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
    *v30.f32 = vdup_lane_s32(v28, 0);
    *v28.i32 = vmuls_lane_f32(*v28.i32, v33, 2);
    v33.i64[0] = vaddq_f32(v39, vmulq_f32(v30, v33)).u64[0];
    v33.f32[2] = v39.f32[2] + *v28.i32;
    v33.i32[3] = 0;
    *(v24 + 2) = v27 + 1;
    *&v24[16 * v27 + 32] = v33;
    *(v5 + 200) = v24;
    result = swift_endAccess();
    if (v20 == v21)
    {
      return *(v5 + 200);
    }
  }

  if (v21 < *(a2 + 16))
  {
    v23 = sqrtf(1.0 - (*(a2 + 32 + 4 * v21) * *(a2 + 32 + 4 * v21))) / *(a2 + 32 + 4 * v21);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_2583D48CC(float32x4_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *&v7 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(a1, a3, a4);
  v31 = v7;
  v8 = (v4 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v8;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_25838716C(0, *(v10 + 2));
  }

  else
  {
    *v8 = sub_25838C574(0, *(v10 + 3) >> 1);
  }

  v11 = *v8;
  if (*(*v8 + 2) <= 2uLL)
  {
    while (1)
    {
      v13 = round(drand48() * (a1[1].i64[0] - 1));
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_25;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_26;
      }

      v14 = 0;
      v15 = v13;
      v11 = *v8;
      v12 = *(*v8 + 2);
      while (v12 != v14)
      {
        v16 = &v11[8 * v14++];
        if (*(v16 + 4) == v15)
        {
          goto LABEL_7;
        }
      }

      v17 = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v11;
      if ((v17 & 1) == 0)
      {
        v11 = sub_25839CFE4(0, v12 + 1, 1, v11);
        *v8 = v11;
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        v11 = sub_25839CFE4((v18 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v19 + 1;
      *&v11[8 * v19 + 32] = v15;
      *v8 = v11;
      v12 = *(v11 + 2);
LABEL_7:
      if (v12 >= 3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_19:
  v20 = *(v11 + 4);
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = a1[1].u64[0];
  if (v20 >= v21)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = *(v11 + 5);
  if (v22 >= v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = *(v11 + 6);
  if (v23 < v21)
  {
    v24 = a1[v20 + 2];
    v25 = vsubq_f32(a1[v22 + 2], v24);
    v26 = vsubq_f32(a1[v23 + 2], v24);
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
    v28 = vmulq_f32(v27, v27);
    *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
    v30 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
    *v27.f32 = vrsqrte_f32(v29);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v29, vmul_f32(*v27.f32, *v27.f32)));
    *a2 = v31;
    *(a2 + 16) = vmulq_n_f32(v30, vmul_f32(*v27.f32, vrsqrts_f32(v29, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    *(a2 + 32) = 0;
    return;
  }

LABEL_30:
  __break(1u);
}

float sub_2583D4B40(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1].u64[0];
  if (v3)
  {
    v4 = vmulq_f32(a2, a3);
    v5 = v4.f32[2] + vaddv_f32(*v4.f32);
    v6 = a1 + 2;
    v7 = 0.0;
    v8 = a1[1].i64[0];
    do
    {
      v9 = *v6++;
      v10 = vmulq_f32(v9, a3);
      v11 = vaddv_f32(*v10.f32);
      v7 = v7 + (((v10.f32[2] + v11) - v5) * ((v10.f32[2] + v11) - v5));
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7 / v3;
}

uint64_t sub_2583D4BA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 200);
}

double static PlaneUtil.getIntersection(ray:plane:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmulq_f32(a2, a2);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(a2, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vmulq_f32(v6, a4);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  if (v8 != 0.0)
  {
    v9 = vmulq_f32(vsubq_f32(a3, a1), a4);
    *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v6.f32, (v9.f32[2] + vaddv_f32(*v9.f32)) / v8));
  }

  return *a1.i64;
}

double static PlaneUtil.getIntersection(sourceRay:destRay:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmulq_f32(a2, a4);
  if (fabsf(v4.f32[2] + vaddv_f32(*v4.f32)) < 1.0)
  {
    v5 = vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL);
    v6 = vmlaq_f32(vmulq_f32(v5, vnegq_f32(a2)), a4, vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL));
    v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
    v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vnegq_f32(a4)), v7, v5);
    v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
    v10 = vmulq_f32(a2, a2);
    v5.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
    *v10.f32 = vrsqrte_f32(v5.u32[0]);
    *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v10.f32, *v10.f32)));
    v11 = vmulq_n_f32(a2, vmul_f32(*v10.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    v12 = vmulq_f32(v9, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 != 0.0)
    {
      v14 = vmulq_f32(vsubq_f32(a3, a1), v9);
      *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v11.f32, (v14.f32[2] + vaddv_f32(*v14.f32)) / v13));
    }
  }

  return *a1.i64;
}

void static PlaneUtil.findBestPlane(points:facing:)(float32x4_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v31 = a1[1].u64[0];
  if (v31 < 3)
  {
    v32 = 0u;
    v33 = 0u;
    v6 = 1;
LABEL_6:
    *a2 = v32;
    *(a2 + 16) = v33;
    *(a2 + 32) = v6 & 1;
    return;
  }

  if (v31 == 3)
  {
    v7 = a1[2];
    v40 = vsubq_f32(a1[3], v7);
    v41 = vsubq_f32(a1[4], v7);
    *&v8 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(a1, *v41.i64, *v7.i64);
    v32 = v8;
    v6 = 0;
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v40)), v41, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
    v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
    v11 = vmulq_f32(v9, v9);
    *&v12 = v11.f32[1] + (v11.f32[2] + v11.f32[0]);
    *v11.f32 = vrsqrte_f32(v12);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
    v33 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    goto LABEL_6;
  }

  v13 = 0;
  v14 = v31 - 2;
  v29 = a1 + 2;
  v15 = a1 + 4;
  v32 = 0u;
  v6 = 1;
  v16 = v31 - 2;
  v33 = 0u;
  v30 = v31 - 2;
  while (v13 != v14)
  {
    if (v13 == v31)
    {
      goto LABEL_21;
    }

    v17 = v13 + 1;
    v37 = v29[v13];
    v27 = v16;
    v28 = v15;
    v26 = v13 + 1;
    do
    {
      if (v17 + 1 != v31)
      {
        v38 = v29[v17];
        v19 = v15;
        v20 = v16;
        do
        {
          v42 = *v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8, &unk_25842CF40);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_25842BFB0;
          *(v21 + 32) = v37;
          *(v21 + 48) = v38;
          *(v21 + 64) = v42;
          static PlaneUtil.findBestPlane(points:facing:)(v21, &v43, a3, a4, a5, a6);
          swift_setDeallocating();
          swift_deallocClassInstance();
          if ((v45 & 1) == 0)
          {
            if (v6 & 1) != 0 || (v22 = vmulq_f32(v44, a5), v22.i64[0] = vextq_s8(v22, v22, 4uLL).u64[0], v23 = vmulq_f32(v33, a5), v23.i64[0] = vextq_s8(v23, v23, 4uLL).u64[0], v24 = vdup_lane_s32(*v44.f32, 0), v24.i32[0] = v33.i32[0], *v22.i8 = vabs_f32(vadd_f32(vzip2_s32(*v23.i8, *v22.i8), vadd_f32(vmul_n_f32(v24, a5.n128_f32[0]), vzip1_s32(*v23.i8, *v22.i8)))), (vcgt_f32(vdup_lane_s32(*v22.i8, 1), *v22.i8).u8[0]))
            {
              v6 = 0;
              v32 = v43;
              v33 = v44;
            }

            else
            {
              v6 = 0;
            }
          }

          ++v19;
          --v20;
        }

        while (v20);
      }

      --v16;
      ++v15;
      v14 = v31 - 2;
    }

    while (v17++ != v30);
    v16 = v27 - 1;
    v15 = v28 + 1;
    v13 = v26;
    if (v26 == v30)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

char *static PlaneUtil.findPossiblePlanes(points:)(char *result, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v8 = *(result + 2);
  if (v8 >= 3)
  {
    v10 = 0;
    v11 = v8 - 2;
    v42 = result + 32;
    v12 = result + 64;
    v9 = MEMORY[0x277D84F90];
    __asm { FMOV            V0.4S, #3.0 }

    v44 = _Q0;
    v18 = v8 - 2;
    v43 = v8 - 2;
    while (v10 != v11)
    {
      if (v10 == v8)
      {
        goto LABEL_19;
      }

      v19 = v10 + 1;
      v48 = *&v42[16 * v10];
      LODWORD(v20) = *&v42[16 * v10 + 8];
      v40 = v18;
      v41 = v12;
      v39 = v10 + 1;
      do
      {
        v21 = v8;
        if (v19 + 1 != v8)
        {
          v22 = *&v42[16 * v19];
          v23 = vsubq_f32(v22, v48);
          v24 = COERCE_FLOAT(*&v42[16 * v19 + 8]);
          a8.f32[0] = v24 - v20;
          v25 = v23;
          v25.f32[2] = v24 - v20;
          *(a8.i64 + 4) = v23.i64[0];
          v26 = v20 + v24;
          v46 = vnegq_f32(v25);
          v47 = a8;
          v45 = vaddq_f32(v48, v22);
          v27 = v12;
          v28 = v18;
          v29 = _Q0.i32[3];
          do
          {
            v49 = *v27;
            v50 = v29;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_25839D874(0, *(v9 + 2) + 1, 1, v9);
              v9 = result;
            }

            v31 = *(v9 + 2);
            v30 = *(v9 + 3);
            if (v31 >= v30 >> 1)
            {
              result = sub_25839D874((v30 > 1), v31 + 1, 1, v9);
              v9 = result;
            }

            v32 = vsubq_f32(v49, v48);
            v32.f32[2] = v49.f32[2] - v20;
            *&v33 = vdivq_f32(vaddq_f32(v45, v49), v44).u64[0];
            *(&v33 + 2) = (v26 + v49.f32[2]) / 3.0;
            HIDWORD(v33) = 0;
            v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v46), v32, v47);
            v35 = vmulq_f32(v34, v34);
            *&v36 = v35.f32[1] + (v35.f32[2] + v35.f32[0]);
            v37 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
            *v34.f32 = vrsqrte_f32(v36);
            *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v36, vmul_f32(*v34.f32, *v34.f32)));
            _Q0 = vmulq_n_f32(v37, vmul_f32(*v34.f32, vrsqrts_f32(v36, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
            _Q0.i32[3] = v50;
            *(v9 + 2) = v31 + 1;
            v38 = &v9[32 * v31];
            *(v38 + 2) = v33;
            *(v38 + 3) = _Q0;
            ++v27;
            v29 = v50;
            --v28;
          }

          while (v28);
        }

        --v18;
        v12 += 16;
        v11 = v43;
        _ZF = v19++ == v43;
        v8 = v21;
      }

      while (!_ZF);
      v18 = v40 - 1;
      v12 = v41 + 16;
      v10 = v39;
      if (v39 == v43)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

float _s17MeasureFoundation9PlaneUtilC8distance5point5planeSfs5SIMD3VySfG_AI6center_AI6normalttFZ_0(int8x16_t a1, int8x16_t a2, float32x4_t a3)
{
  v3 = vext_s8(*a1.i8, *a2.i8, 4uLL);
  v4 = vextq_s8(a1, a1, 8uLL).u64[0];
  a1.i32[1] = a2.i32[1];
  *a1.i8 = vadd_f32(vmul_laneq_f32(vzip1_s32(v4, *&vextq_s8(a2, a2, 8uLL)), a3, 2), vadd_f32(vmul_f32(v3, vrev64_s32(*a3.f32)), vmul_f32(*a1.i8, *a3.f32)));
  *a1.i32 = fabsf(vsub_f32(*a1.i8, vdup_lane_s32(*a1.i8, 1)).f32[0]);
  return *a1.i32;
}

uint64_t sub_2583D5394(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_258428AD0();
  if (!v19)
  {
    return sub_2584288D0();
  }

  v41 = v19;
  v45 = sub_2584290A0();
  v32 = sub_2584290B0();
  sub_258429050();
  result = sub_258428AC0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_258428B80();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_258429090();
      result = sub_258428B00();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2584288D0();
  swift_getTupleTypeMetadata2();
  v7 = sub_2584288D0();
  sub_2583B5FEC(v7, a1, a2, a3);

  v8 = sub_2584283A0();
  swift_getTupleTypeMetadata2();
  v9 = sub_2584288D0();
  sub_2583B5FEC(v9, a1, v8, a3);

  return v6;
}

uint64_t OrderedDictionary.subscript.setter(char *a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = sub_258428DA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v8 + 16);
  v23 = a1;
  v18(v14, a1, v7);
  if ((*(v15 + 48))(v14, 1, v6) == 1)
  {
    v19 = *(v8 + 8);
    v19(v14, v7);
    OrderedDictionary.removeValue(forKey:)(a2, a3, v11);
    (*(*(a3[2] - 8) + 8))(a2);
    v19(v23, v7);
    return (v19)(v11, v7);
  }

  else
  {
    (*(v15 + 32))(v17, v14, v6);
    OrderedDictionary.updateValue(_:forKey:)(v17, a2, a3, v11);
    (*(*(a3[2] - 8) + 8))(a2);
    v21 = *(v8 + 8);
    v21(v23, v7);
    v21(v11, v7);
    return (*(v15 + 8))(v17, v6);
  }
}

uint64_t OrderedDictionary.updateValue(_:forKey:)@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2584283A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17MeasureFoundation16MeasurementEventV4time0B04DateVvpfi_0();
  sub_2583D6964(a1, a2, v11, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

void *OrderedDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240, &qword_25842D620);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v31 = &v29 - v8;
  v9 = a2[2];
  v35 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v29 - v12;
  v13 = a2[3];
  v14 = sub_258428DA0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v29 - v20;
  v22 = *(v13 - 8);
  MEMORY[0x28223BE20](v19);
  v34 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v3;
  v37 = a1;
  sub_258428560();
  if ((*(v22 + 48))(v21, 1, v13) == 1)
  {
    (*(v15 + 8))(v21, v14);
    return (*(v22 + 56))(v33, 1, 1, v13);
  }

  else
  {
    v29 = *(v22 + 32);
    v29(v34, v21, v13);
    (*(v35 + 16))(v32, v37, v9);
    v25 = *(v22 + 56);
    v25(v18, 1, 1, v13);
    sub_258428540();
    sub_258428570();
    v38 = *v36;
    sub_258428980();
    swift_getWitnessTable();
    result = sub_258428B60();
    if (v39)
    {
      __break(1u);
    }

    else
    {
      v26 = v30;
      sub_258428940();
      (*(v35 + 8))(v26, v9);
      sub_2584283A0();
      sub_258428540();
      v27 = v31;
      sub_258428520();
      sub_2583A07B4(v27);
      v28 = v33;
      v29(v33, v34, v13);
      return (v25)(v28, 0, 1, v13);
    }
  }

  return result;
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(void **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_258428DA0();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  v12 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v11);
  }

  v8[5] = v13;
  v14 = a3[2];
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  v17 = *(v15 + 64);
  if (v12)
  {
    v8[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v8[9] = v18;
  (*(v16 + 16))();
  sub_258428560();
  return sub_2583D62F4;
}

void sub_2583D62F4(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 9);
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (v9[2])(v7, v6, v8);
    (v5[4])(v3, v4, v11);
    OrderedDictionary.subscript.setter(v7, v3, v10);
    (v9[1])(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    OrderedDictionary.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t OrderedDictionary.subscript.getter@<X0>(void (*a2)(void)@<X1>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v17 = a2;
  v9 = sub_258428DA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  sub_258428560();
  v13 = *(a5 - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, a5) != 1)
  {
    return (*(v13 + 32))(a6, v12, a5);
  }

  v17();
  result = (v14)(v12, 1, a5);
  if (result != 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_2583D8DCC(a1, a2, a5);
  (*(*(a5[2] - 8) + 8))(a2);
  v8 = *(*(a5[3] - 8) + 8);

  return v8(a1);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a5;
  v9[1] = v5;
  v11 = a5[3];
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[5] = v14;
  v16 = a5[2];
  v10[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v10[7] = v17;
  if (v8)
  {
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(v17 + 64));
  }

  v10[8] = v19;
  (*(v18 + 16))();
  OrderedDictionary.subscript.getter(a3, v11, v15, a5[4]);
  return sub_2583D6828;
}

void sub_2583D6828(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_2583D8DCC(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_2583D8DCC((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_2583D6964@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v40 = a3;
  v41 = a5;
  v35 = a1;
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = sub_258428DA0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v38 = v5;
  v39 = a2;
  v36 = *(a4 + 32);
  sub_258428560();
  v20 = *(v12 - 8);
  v21 = (*(v20 + 48))(v19, 1, v12);
  v22 = (v9 + 16);
  v23 = (v20 + 16);
  v34 = (v20 + 56);
  if (v21 == 1)
  {
    (*(v14 + 8))(v19, v13);
    v24 = *v22;
    v25 = v37;
    v26 = v39;
    (*v22)(v37, v39, v8);
    (*v23)(v17, v35, v12);
    v35 = *v34;
    v35(v17, 0, 1, v12);
    v27 = v36;
    sub_258428540();
    sub_258428570();
    v24(v25, v26, v8);
    sub_258428980();
    v28 = v38;
    sub_258428930();
    v35(v41, 1, 1, v12);
    v29 = v28;
  }

  else
  {
    v31 = *(v20 + 32);
    v30 = v20 + 32;
    v31(v41, v19, v12);
    v26 = v39;
    (*v22)(v37, v39, v8);
    (*(v30 - 16))(v17, v35, v12);
    v32 = *(v30 + 24);
    v32(v17, 0, 1, v12);
    v27 = v36;
    sub_258428540();
    sub_258428570();
    v32(v41, 0, 1, v12);
    v29 = v38;
  }

  return sub_2583D6D34(v29, v26, v40, v8, v12, v27);
}

uint64_t sub_2583D6D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240, &qword_25842D620);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v10);
  (*(v14 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
  v15 = sub_2584283A0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12, a3, v15);
  (*(v16 + 56))(v12, 0, 1, v15);
  sub_258428540();
  return sub_258428570();
}

uint64_t OrderedDictionary.values.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[9] = a1;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v7 = sub_258428980();

  WitnessTable = swift_getWitnessTable();
  v10 = sub_2583D5394(sub_2583D8F74, v12, v7, a5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  return v10;
}

uint64_t sub_2583D6FB8@<X0>(uint64_t a4@<X5>, uint64_t a6@<X8>)
{
  v8 = sub_258428DA0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_258428560();
  v11 = *(a4 - 8);
  result = (*(v11 + 48))(v10, 1, a4);
  if (result != 1)
  {
    return (*(v11 + 32))(a6, v10, a4);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeAll()()
{
  sub_258428980();
  sub_258428970();
  sub_258428540();
  sub_258428530();
}

uint64_t OrderedDictionary.merge(with:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getWitnessTable();
  sub_258428810();
  return sub_2583D740C(a4);
}

uint64_t sub_2583D720C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a2;
  v26 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240, &qword_25842D620);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v24 = a8;
  v15 = sub_258428DA0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  v19 = sub_2584283A0();
  sub_258428560();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v14, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = type metadata accessor for OrderedDictionary(0, a7, v24, a9);
    sub_2583D6964(v25, a1, v14, v22, v18);
    (*(v16 + 8))(v18, v15);
    return (*(v20 + 8))(v14, v19);
  }

  return result;
}

uint64_t sub_2583D740C(uint64_t a1)
{
  sub_258428980();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2584285F0();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static OrderedDictionary.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = type metadata accessor for OrderedDictionary(0, a7, a8, a9);

  OrderedDictionary.merge(with:)(a4, a5, a6, v12);
}

uint64_t OrderedDictionary.filter(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *v3;
  v5 = a3[3];
  v16 = a3[2];
  v4 = v16;
  v17 = v5;
  v6 = a3[4];
  v7 = sub_258428980();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_2583D5394(sub_2583D9048, v15, v7, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v22 = v11;
  sub_258428980();
  swift_getWitnessTable();
  v21 = sub_258429020();
  v18 = OrderedDictionary.init()(v4, v5, v6);
  v19 = v12;
  v20 = v13;
  swift_getWitnessTable();
  sub_2584287F0();

  return v22;
}

uint64_t sub_2583D7764@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v10 = sub_258428DA0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  (*(*(a3 - 8) + 16))(a6, a1, a3);
  sub_258428560();
  v13 = *(a4 - 8);
  result = (*(v13 + 48))(v12, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(v13 + 32))(a6 + *(TupleTypeMetadata2 + 48), v12, a4);
  }

  return result;
}

uint64_t sub_2583D78DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240, &qword_25842D620);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v28 - v14;
  v32 = a5;
  v16 = sub_258428DA0();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = *(v13 + 16);
  v30 = a2;
  v19(v15, a2, TupleTypeMetadata2);
  v20 = sub_2584283A0();
  v21 = v33;
  v22 = a4;
  sub_258428560();
  v23 = *(v20 - 8);
  result = (*(v23 + 48))(v11, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = v32;
    v27 = type metadata accessor for OrderedDictionary(0, v22, v32, v21);
    sub_2583D6964((v30 + v25), v30, v11, v27, v18);
    (*(v28 + 8))(v18, v29);
    (*(v23 + 8))(v11, v20);
    (*(*(v26 - 8) + 8))(&v15[v25], v26);
    return (*(*(v22 - 8) + 8))(v15, v22);
  }

  return result;
}

uint64_t sub_2583D7BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240, &qword_25842D620);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = sub_2584283A0();
  sub_258428560();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  result = v14(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_258428560();
    result = v14(v9, 1, v12);
    if (result != 1)
    {
      v16 = sub_258428370();
      v17 = *(v13 + 8);
      v17(v9, v12);
      v17(v11, v12);
      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2583D90EC(a1, a2, a3, a4);

  return v4;
}

void sub_2583D7E10(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_2583D90EC(a1, a2[2], a2[3], a2[4]);
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  a3[1] = v6;
  a3[2] = v8;
}

uint64_t OrderedDictionary.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v31 = a6;
  v9 = sub_258428DA0();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  v28[0] = *(a4 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = sub_258428DA0();
  v33 = *(v36 - 8);
  v16 = MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v28 - v18;
  v41 = 91;
  v42 = 0xE100000000000000;
  v28[1] = a1;
  v40[0] = a1;
  v20 = sub_258428980();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x259C7E0C0](&v37, v20, WitnessTable);
  v39 = v37;
  sub_258429180();
  sub_258429150();
  v22 = sub_258429170();
  v33 += 4;
  v34 = v22;
  v32 = TupleTypeMetadata2 - 8;
  v28[2] = a5 - 8;
  v29 = (v28[0] + 32);
  for (i = (v28[0] + 8); ; (*i)(v14, a4))
  {
    v24 = v35;
    sub_258429160();
    (*v33)(v19, v24, v36);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {

      MEMORY[0x259C7DFF0](93, 0xE100000000000000);
      return v41;
    }

    v25 = *v19;
    (*v29)(v14, &v19[*(TupleTypeMetadata2 + 48)], a4);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_2584292F0();
    MEMORY[0x259C7DFF0](8250, 0xE200000000000000);
    sub_258428560();
    v26 = *(a5 - 8);
    result = (*(v26 + 48))(v12, 1, a5);
    if (result == 1)
    {
      break;
    }

    sub_2584292F0();
    (*(v26 + 8))(v12, a5);
    MEMORY[0x259C7DFF0](v37, v38);

    result = sub_258428910();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      break;
    }

    if (v25 != result - 1)
    {
      MEMORY[0x259C7DFF0](8236, 0xE200000000000000);
    }
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_258428DA0();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - v12;
  sub_2584289B0();
  sub_258428560();
  v14 = *(a8 - 8);
  result = (*(v14 + 48))(v13, 1, a8);
  if (result != 1)
  {
    return (*(v14 + 32))(a2, v13, a8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2583D8438(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_258428A80();
}

uint64_t sub_2583D84C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2583D8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_258428A60();
}

uint64_t sub_2583D85C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2583D863C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = OrderedDictionary.endIndex.getter(*v4, a2, a3, *(a1 + 16));
  *a4 = result;
  return result;
}

void (*sub_2583D8670(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v11 = a3[2];
  v10 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[4] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v9[5] = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  v9[6] = v14;
  v16 = sub_2583D888C(v9, *a2, *v3, v3[1], v3[2], v11, v10, a3[4]);
  v18 = v17;
  v9[7] = v16;
  (*(*(v11 - 8) + 16))(v15);
  (*(*(v10 - 8) + 16))(v15 + *(TupleTypeMetadata2 + 48), v18, v10);
  return sub_2583D8814;
}

void sub_2583D8814(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_2583D888C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v16 = *(TupleTypeMetadata2 - 8);
  a1[1] = v16;
  if (MEMORY[0x277D84FD8])
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v16 + 64));
  }

  a1[2] = v17;
  OrderedDictionary.subscript.getter(v17, v17 + *(TupleTypeMetadata2 + 48), a2, a3, a4, v18, a6, a7, a8);
  return sub_2583D89BC;
}

void sub_2583D89BC(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_2583D8A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_2583D8A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2583D8B24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

__n128 sub_2583D8B9C@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

uint64_t sub_2583D8BB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2583D8C0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_2583DBC6C(v1, a1, WitnessTable);

  return v4;
}

uint64_t static OrderedDictionary<>.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((sub_258428990() & 1) == 0 || (sub_258428550() & 1) == 0)
  {
    return 0;
  }

  sub_2584283A0();
  sub_2583D949C();

  return sub_258428550();
}

uint64_t sub_2583D8DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = sub_258428DA0();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = a3[2];
  MEMORY[0x28223BE20](v8);
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = *(v6 - 8);
  (*(v14 + 16))(v10, a1, v6);
  (*(v14 + 56))(v10, 0, 1, v6);
  sub_258428540();
  return sub_258428570();
}

uint64_t sub_2583D8FD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_2583D906C(uint64_t a1)
{
  v3 = *(v1 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_2583D90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_258428DA0();
  v30 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v27 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v38 = a4;
  v16 = OrderedDictionary.init()(a2, a3, a4);
  v40 = v16;
  v41 = v17;
  v42 = v18;
  if (!sub_258428910())
  {
    return v16;
  }

  v19 = 0;
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = (v10 + 16);
  v35 = a2;
  v31 = a3 - 8;
  v32 = a2 - 8;
  v29 = (v10 + 8);
  ++v30;
  while (1)
  {
    v20 = sub_2584288F0();
    sub_258428890();
    if (v20)
    {
      result = (*(v10 + 16))(v15, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, TupleTypeMetadata2);
    }

    else
    {
      result = sub_258428FE0();
      if (v28 != 8)
      {
        goto LABEL_13;
      }

      v39 = result;
      (*v34)(v15, &v39, TupleTypeMetadata2);
      result = swift_unknownObjectRelease();
    }

    v22 = v19 + 1;
    v23 = v35;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v24 = *(TupleTypeMetadata2 + 48);
    (*(*(v35 - 8) + 32))(v13, v15, v35);
    (*(*(a3 - 8) + 32))(&v13[v24], &v15[v33], a3);
    v25 = type metadata accessor for OrderedDictionary(0, v23, a3, v38);
    v26 = v36;
    OrderedDictionary.updateValue(_:forKey:)(&v13[v24], v13, v25, v36);
    (*v30)(v26, v37);
    (*v29)(v13, TupleTypeMetadata2);
    ++v19;
    if (v22 == sub_258428910())
    {
      return v40;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_2583D949C()
{
  result = qword_27F928BE0;
  if (!qword_27F928BE0)
  {
    sub_2584283A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928BE0);
  }

  return result;
}

unint64_t sub_2583D9544()
{
  result = qword_27F928BF8;
  if (!qword_27F928BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928BF8);
  }

  return result;
}

uint64_t sub_2583D970C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928BF0, &qword_25842F780);
    sub_2583D9544();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2583D97BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2583D9804(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2583D984C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double static Quadrilateral.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id VNRectangleObservation.quad.getter@<X0>(void *a1@<X8>)
{
  [v1 topLeft];
  v4 = v3;
  v6 = v5;
  [v1 topRight];
  v8 = v7;
  v10 = v9;
  [v1 bottomRight];
  v12 = v11;
  v14 = v13;
  result = [v1 bottomLeft];
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v17;
  return result;
}

void *Ransac.__allocating_init(solver:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_2583DA628(a1);
  swift_unknownObjectRelease();
  return v2;
}

void *Ransac.init(solver:)(uint64_t a1)
{
  v1 = sub_2583DA628(a1);
  swift_unknownObjectRelease();
  return v1;
}

void Ransac.fit(data:minInliners:iterations:errorThreshold:qualifiedInliners:bestData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v8 = v7;
  v71 = a6;
  v79 = a5;
  v86 = a3;
  v67 = a1;
  v12 = *(*v7 + 88);
  v13 = *(*v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v95 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - v17;
  v99 = v13;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v98 = &v66 - v23;
  v83 = sub_258428DA0();
  v70 = *(v83 - 8);
  v24 = MEMORY[0x28223BE20](v83);
  v74 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v85 = &v66 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - v28;
  Strong = swift_unknownObjectWeakLoadStrong();
  v31 = *(v20 + 56);
  v100 = Strong;
  if (!Strong)
  {
    v31(v67, 1, 1, v19);
    return;
  }

  v75 = v29;
  v69 = v20 + 56;
  v68 = v31;
  v31(v29, 1, 1, v19);
  v91 = a2;
  v32 = sub_258428910();
  if (a4 < 0)
  {
    goto LABEL_36;
  }

  if (!a4)
  {
LABEL_32:
    swift_unknownObjectRelease();
    (*(v70 + 32))(v67, v75, v83);
    return;
  }

  v33 = v32;
  v92 = v19;
  v34 = 0;
  v89 = *(v12 + 24);
  v88 = (v20 + 48);
  v81 = (v20 + 32);
  v97 = v12 + 32;
  v94 = (v96 + 16);
  v35 = (v96 + 8);
  v73 = (v20 + 16);
  v82 = (v70 + 8);
  v90 = v12 + 24;
  v72 = v12 + 40;
  v77 = (v20 + 8);
  v36 = INFINITY;
  v78 = a4;
  while (1)
  {
    swift_beginAccess();
    swift_beginAccess();
    v37 = v99;
    sub_2583DA6DC(v91, v86, (v8 + 32), v8 + 24);
    swift_endAccess();
    swift_endAccess();

    v93 = v34;
    v39 = v37;
    v40 = v85;
    v89(v38, v34, v39, v12);

    v41 = v92;
    v87 = *v88;
    if (v87(v40, 1, v92) == 1)
    {
      (*v82)(v40, v83);
      goto LABEL_6;
    }

    v80 = *v81;
    v80(v98, v40, v41);
    swift_beginAccess();
    v96 = sub_258428980();
    sub_258428970();
    swift_endAccess();
    if (v33 < 0)
    {
      break;
    }

    if (v33)
    {
      v42 = 0;
      do
      {
        v43 = v42++;
        v44 = *(v8 + 32);
        v45 = *(v44 + 16);
        v46 = (v44 + 32);
        while (v45)
        {
          v47 = *v46++;
          --v45;
          if (v47 == v43)
          {
            goto LABEL_12;
          }
        }

        sub_2584289B0();
        if ((*(v12 + 32))(v98, v18, v99, v12) <= a7)
        {
          (*v94)(v95, v18, AssociatedTypeWitness);
          swift_beginAccess();
          sub_258428930();
          swift_endAccess();
        }

        (*v35)(v18, AssociatedTypeWitness);
LABEL_12:
        ;
      }

      while (v42 != v33);
    }

    v48 = sub_258428910();

    v49 = sub_258428910();

    if (__OFADD__(v48, v49))
    {
      goto LABEL_35;
    }

    if (v48 + v49 < v79)
    {
      (*v77)(v98, v92);
LABEL_30:
      a4 = v78;
      goto LABEL_6;
    }

    v101 = *(v8 + 24);
    swift_beginAccess();

    WitnessTable = swift_getWitnessTable();
    sub_258428920();
    swift_endAccess();

    v51 = v74;
    v89(v50, v93, v99, v12);

    v52 = v92;
    v53 = v87;
    if (v87(v51, 1, v92) == 1)
    {
      (*v73)(v84, v98, v52);
      v54 = v53(v51, 1, v52);
      v55 = v75;
      if (v54 != 1)
      {
        (*v82)(v51, v83);
      }
    }

    else
    {
      v80(v84, v51, v52);
      v55 = v75;
    }

    v56 = *(v8 + 40);
    v57 = *(v12 + 40);

    v58 = v57(v84, v56, v99, v12);

    if (v58 >= v36)
    {
      v64 = *v77;
      v65 = v92;
      (*v77)(v84, v92);
      v64(v98, v65);
      goto LABEL_30;
    }

    (*v82)(v55, v83);
    v59 = v55;
    v60 = v84;
    v61 = v55;
    v62 = v92;
    (*v73)(v59, v84, v92);
    v68(v61, 0, 1, v62);
    sub_258428970();
    v102 = *(v8 + 40);

    sub_258428920();
    v63 = *v77;
    (*v77)(v60, v62);
    v63(v98, v62);
    a4 = v78;
    if (v58 == 0.0)
    {
      goto LABEL_32;
    }

    v36 = v58;
LABEL_6:
    v34 = v93 + 1;
    if (v93 + 1 == a4)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void *Ransac.deinit()
{
  MEMORY[0x259C7FC20](v0 + 16);

  return v0;
}

uint64_t Ransac.__deallocating_deinit()
{
  Ransac.deinit();

  return swift_deallocClassInstance();
}

void *sub_2583DA628(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_getAssociatedTypeWitness();
  v2 = sub_2584288D0();
  v3 = MEMORY[0x277D84F90];
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = sub_2584288D0();
  swift_unknownObjectWeakAssign();
  return v1;
}

void sub_2583DA6DC(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a3;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_25838716C(0, *(v7 + 2));
  }

  else
  {
    v8 = sub_25838C574(0, *(v7 + 3) >> 1);

    *a3 = v8;
  }

  sub_258428980();
  sub_258428970();
  v9 = *a3;
  if (*(*a3 + 2) < a2)
  {
    v10 = sub_258428910();
    if (!__OFSUB__(v10, 1))
    {
      v11 = (v10 - 1);
      while (1)
      {
        v13 = round(drand48() * v11);
        if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v13 <= -9.22337204e18)
        {
          goto LABEL_22;
        }

        if (v13 >= 9.22337204e18)
        {
          goto LABEL_23;
        }

        v14 = 0;
        v15 = v13;
        v12 = *(v9 + 2);
        while (v12 != v14)
        {
          v16 = &v9[8 * v14++];
          if (*(v16 + 4) == v15)
          {
            goto LABEL_8;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25839CFE4(0, v12 + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_25839CFE4((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v15;
        *a3 = v9;
        sub_2584289B0();
        sub_258428930();
        v12 = *(v9 + 2);
LABEL_8:
        if (v12 >= a2)
        {
          return;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t RingBuffer.init(capacity:)(uint64_t a1, uint64_t a2)
{
  sub_2584284D0();
  sub_258428980();
  sub_2584288A0();
  return a1;
}

uint64_t RingBuffer.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFADD__(a3, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3 + result != 0x8000000000000000 || a2 != -1)
  {
    return sub_2584289B0();
  }

LABEL_8:
  __break(1u);
  return result;
}
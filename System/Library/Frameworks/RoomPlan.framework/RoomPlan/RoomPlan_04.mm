void sub_23A8FB114()
{
  type metadata accessor for Constants();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_23AA0D134();
    v5 = v4;
  }

  else
  {
    v5 = 0x800000023AA1DEC0;
    v3 = 0xD000000000000012;
  }

  qword_27DFC0600 = v3;
  *algn_27DFC0608 = v5;
}

uint64_t sub_23A8FB660(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23AA0CD84();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_23A8FB6B8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_23AA0CE14();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0CCF4();
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CCD4();
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CD54();
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = &v31 - v10;
  v11 = sub_23AA0CC74();
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_23AA0CC34();
  v14 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v31 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = sub_23AA0CC14();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v31 - v25;
  (*(v20 + 104))(&v31 - v25, *MEMORY[0x277CDB2A8], v19, v24);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  sub_23AA0CC24();
  sub_23A93C058();
  sub_23AA0CC64();
  v34 = v18;
  v35 = v14;
  v27 = v14;
  v28 = v32;
  (*(v27 + 16))(v31, v18, v43);
  v29 = v33;
  (*(v28 + 16))(v33, v13, v11);
  (*(v28 + 56))(v29, 0, 1, v11);
  (*(v20 + 16))(v22, v26, v19);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v41 + 104))(v40, *MEMORY[0x277CDB490], v42);
  sub_23AA0CBD4();
  (*(v28 + 8))(v13, v11);
  (*(v35 + 8))(v34, v43);
  return (*(v20 + 8))(v26, v19);
}

uint64_t sub_23A8FBD38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __n128 **a5@<X8>, __n128 a6@<Q0>)
{
  v42 = a5;
  v45 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = &v38 - v10;
  v11 = sub_23AA0CBB4();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CD84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, a3);
  v47 = v14;
  v18 = *(v14 + 16);
  v18(v16, v17, v13);
  updated = type metadata accessor for MeshUpdateScanMaterial(0);
  v19 = swift_allocObject();
  *(v19 + 16) = v45;
  v44 = v16;
  v18((v19 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v16, v13);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v45.n128_f32[0] green:v45.n128_f32[1] blue:v45.n128_f32[2] alpha:v45.n128_f32[3]];
  swift_beginAccess();
  v20 = sub_23AA0CD64();
  sub_23AA0CD34();
  v20(v46, 0);
  v21 = sub_23AA0CC84();
  sub_23AA0CB94();
  v21(v46, 0);
  swift_endAccess();
  type metadata accessor for MeshParamTexture(0);
  result = swift_allocObject();
  if ((a1 - 0x2000000000000000) >> 62 == 3)
  {
    v23 = result;
    v24 = a1;
    v25 = 4 * a1;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v26 = sub_23A93BFA4();
    v27 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v27 setPixelFormat_];
    [v27 setWidth_];
    [v27 setHeight_];
    [v27 setUsage_];
    v28 = [v26 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v28)
    {
      *(v23 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v28;
      *(v23 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = v24;
      *(v23 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 0;
      *(v23 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = v25;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v29 = v38;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v30 = v39;
      v31 = v29;
      v32 = v40;
      (*(v39 + 32))(v23 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v31, v40);
      *(v19 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture) = v23;
      v33 = v41;
      (*(v30 + 16))(v41, v23 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v32);
      (*(v30 + 56))(v33, 0, 1, v32);
      swift_beginAccess();
      v34 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v34(v46, 0);
      swift_endAccess();
      result = (*(v47 + 8))(v44, v13);
      v35 = v42;
      v42[3] = updated;
      v35[4] = &off_284D84550;
      *v35 = v19;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v36 = xmmword_23AA12320;
      *(v36 + 16) = 2;
      swift_willThrow();
      swift_deallocPartialClassInstance();
      v37 = *(v47 + 8);
      v37(v44, v13);
      v37((v19 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v13);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8FC39C@<X0>(uint64_t a1@<X0>, __n128 **a2@<X8>, __n128 a3@<Q0>)
{
  v41 = a2;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v35 - v5;
  v6 = sub_23AA0CBB4();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CD84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  if (qword_27DFAE3B8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27DFAED90);
  v42 = v9;
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v36 = type metadata accessor for SimpleScanMaterial(0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) = 1065353216;
  *(v17 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = 1065353216;
  v46 = v14;
  v16(v11, v14, v8);
  *(v17 + 16) = v44;
  v43 = v11;
  v16((v17 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v11, v8);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v44.n128_f32[0] green:v44.n128_f32[1] blue:v44.n128_f32[2] alpha:v44.n128_f32[3]];
  swift_beginAccess();
  v18 = sub_23AA0CD64();
  sub_23AA0CD34();
  v18(v45, 0);
  v19 = sub_23AA0CC84();
  sub_23AA0CB94();
  v19(v45, 0);
  swift_endAccess();
  type metadata accessor for MeshParamTexture(0);
  result = swift_allocObject();
  if ((a1 - 0x2000000000000000) >> 62 == 3)
  {
    v21 = result;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v22 = sub_23A93BFA4();
    v23 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v23 setPixelFormat_];
    [v23 setWidth_];
    [v23 setHeight_];
    [v23 setUsage_];
    v24 = [v22 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v24)
    {
      *(v21 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v24;
      *(v21 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = a1;
      *(v21 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 0;
      *(v21 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = 4 * a1;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v25 = v37;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v26 = v38;
      v27 = v25;
      v28 = v39;
      (*(v38 + 32))(v21 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v27, v39);
      *(v17 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture) = v21;
      v29 = v40;
      (*(v26 + 16))(v40, v21 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v28);
      (*(v26 + 56))(v29, 0, 1, v28);
      swift_beginAccess();
      v30 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v30(v45, 0);
      swift_endAccess();
      v31 = *(v42 + 8);
      v31(v43, v8);
      result = (v31)(v46, v8);
      v32 = v41;
      v41[3] = v36;
      v32[4] = &off_284D84550;
      *v32 = v17;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v33 = xmmword_23AA12320;
      *(v33 + 16) = 2;
      swift_willThrow();
      swift_deallocPartialClassInstance();
      v34 = *(v42 + 8);
      v34(v43, v8);
      v34(v46, v8);
      v34((v17 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v8);
      type metadata accessor for MeshUpdateScanMaterial(0);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8FCB64@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_23AA0CE14();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v47 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0CCF4();
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CCD4();
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CD54();
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v36 - v10;
  v37 = sub_23AA0CC74();
  v52 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CC34();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v18 = sub_23AA0CC14();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v36 - v27;
  v29 = *(v19 + 104);
  v29(&v36 - v27, *MEMORY[0x277CDB2A8], v18, v26);
  (v29)(v24, *MEMORY[0x277CDB2A0], v18);
  sub_23AA0CC04();
  v40 = *(v19 + 8);
  v38 = v19 + 8;
  v40(v24, v18);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v30 = v37;
  sub_23AA0CC24();
  sub_23A93C058();
  sub_23AA0CC64();
  v31 = *(v50 + 16);
  v41 = v17;
  v31(v36, v17, v51);
  v32 = v52;
  v33 = *(v52 + 16);
  v34 = v39;
  v42 = v12;
  v33(v39, v12, v30);
  (*(v32 + 56))(v34, 0, 1, v30);
  (*(v19 + 16))(v21, v28, v18);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v48 + 104))(v47, *MEMORY[0x277CDB490], v49);
  sub_23AA0CBD4();
  (*(v52 + 8))(v42, v30);
  (*(v50 + 8))(v41, v51);
  return (v40)(v28, v18);
}

uint64_t sub_23A8FD1D8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_23AA0CCF4();
  MEMORY[0x28223BE20](v1 - 8);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0CCD4();
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CD54();
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v33 - v8;
  v9 = sub_23AA0CC74();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CC34();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_23AA0CC14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v33 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v33 - v25;
  v27 = *(v18 + 104);
  v27(&v33 - v25, *MEMORY[0x277CDB2A8], v17, v24);
  (v27)(v22, *MEMORY[0x277CDB2A0], v17);
  sub_23AA0CC04();
  v36 = *(v18 + 8);
  v36(v22, v17);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v28 = v35;
  sub_23AA0CC24();
  sub_23A93C058();
  sub_23AA0CC64();
  v29 = *(v44 + 16);
  v38 = v16;
  v29(v34, v16, v45);
  v30 = *(v28 + 16);
  v31 = v37;
  v39 = v11;
  v30(v37, v11, v9);
  (*(v28 + 56))(v31, 0, 1, v9);
  (*(v18 + 16))(v33, v26, v17);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v28 + 8))(v39, v9);
  (*(v44 + 8))(v38, v45);
  return (v36)(v26, v17);
}

void sub_23A8FDA00(uint64_t a1@<X0>, char **a2@<X8>, __n128 a3@<Q0>)
{
  v46 = a2;
  v50 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v41 - v5;
  v6 = sub_23AA0CBB4();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CD84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  if (qword_27DFAE3D8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27DFAEDF0);
  v47 = v9;
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v42 = type metadata accessor for SimpleScanMaterial(0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) = 1065353216;
  *(v17 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = 1065353216;
  v49 = v14;
  v16(v11, v14, v8);
  *(v17 + 16) = v50;
  v48 = v11;
  v16((v17 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v11, v8);
  v18 = v50.n128_u32[3];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v50.n128_f32[0] green:v50.n128_f32[1] blue:v50.n128_f32[2] alpha:v50.n128_f32[3]];
  swift_beginAccess();
  v19 = sub_23AA0CD64();
  sub_23AA0CD34();
  v19(v51, 0);
  v20 = sub_23AA0CC84();
  __asm { FMOV            V0.4S, #1.0 }

  sub_23AA0CB94();
  v20(v51, 0);
  swift_endAccess();
  type metadata accessor for MeshParamTexture(0);
  v26 = swift_allocObject();
  if ((a1 - 0x2000000000000000) >> 62 == 3)
  {
    v27 = v26;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v28 = sub_23A93BFA4();
    v29 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v29 setPixelFormat_];
    [v29 setWidth_];
    [v29 setHeight_];
    [v29 setUsage_];
    v30 = [v28 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v30)
    {
      *(v27 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v30;
      *(v27 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = a1;
      *(v27 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 1;
      *(v27 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = 4 * a1;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v31 = v41;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v32 = v43;
      v33 = v31;
      v34 = v44;
      (*(v43 + 32))(v27 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v33, v44);
      *(v17 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture) = v27;
      v35 = v45;
      (*(v32 + 16))(v45, v27 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v34);
      (*(v32 + 56))(v35, 0, 1, v34);
      swift_beginAccess();
      v36 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v36(v51, 0);
      swift_endAccess();
      v37 = *(v47 + 8);
      v37(v48, v8);
      v37(v49, v8);
      *(v17 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = v18;
      sub_23A9026C0();
      v38 = v46;
      v46[3] = v42;
      v38[4] = &off_284D84550;
      *v38 = v17;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v39 = xmmword_23AA12320;
      *(v39 + 16) = 2;
      swift_willThrow();
      swift_deallocPartialClassInstance();
      v40 = *(v47 + 8);
      v40(v48, v8);
      v40(v49, v8);
      v40((v17 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v8);
      type metadata accessor for MeshUpdateScanMaterial(0);
      swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A8FE200(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23AA0CD84();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_23A8FE258@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_23AA0CCF4();
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0CCD4();
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CD54();
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v35 - v8;
  v9 = sub_23AA0CC74();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CC34();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = sub_23AA0CC14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v35 - v25;
  v27 = *(v18 + 104);
  v27(&v35 - v25, *MEMORY[0x277CDB2A8], v17, v24);
  (v27)(v22, *MEMORY[0x277CDB2A0], v17);
  sub_23AA0CC04();
  v28 = *(v18 + 8);
  v39 = v18 + 8;
  v40 = v28;
  v28(v22, v17);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v29 = v37;
  sub_23AA0CC24();
  sub_23A93C058();
  v30 = v38;
  sub_23AA0CC64();
  v31 = *(v48 + 16);
  v42 = v16;
  v31(v36, v16, v49);
  v32 = *(v29 + 16);
  v33 = v41;
  v43 = v11;
  v32(v41, v11, v30);
  (*(v29 + 56))(v33, 0, 1, v30);
  (*(v18 + 16))(v35, v26, v17);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v29 + 8))(v43, v30);
  (*(v48 + 8))(v42, v49);
  return v40(v26, v17);
}

uint64_t sub_23A8FE878@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_23AA0CCF4();
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0CCD4();
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CD54();
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v33 - v8;
  v9 = sub_23AA0CC74();
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CC34();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = sub_23AA0CC14();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v33 - v25;
  (*(v20 + 104))(&v33 - v25, *MEMORY[0x277CDB2A8], v19, v24);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  sub_23AA0CC24();
  sub_23A93C058();
  v27 = v34;
  sub_23AA0CC64();
  v28 = *(v43 + 16);
  v37 = v18;
  v38 = v13;
  v29 = v13;
  v30 = v35;
  v28(v15, v18, v29);
  v31 = v36;
  (*(v30 + 16))(v36, v12, v27);
  (*(v30 + 56))(v31, 0, 1, v27);
  (*(v20 + 16))(v22, v26, v19);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v30 + 8))(v12, v27);
  (*(v43 + 8))(v37, v38);
  return (*(v20 + 8))(v26, v19);
}

uint64_t sub_23A8FEDC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, char **a7@<X8>, __n128 a8@<Q0>)
{
  v49 = a5;
  v54 = a4;
  v58 = a8;
  v60 = a1;
  v53 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v47 - v11;
  v51 = sub_23AA0CBB4();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CD84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  if (*a2 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, a3);
  v57 = v14;
  v21 = *(v14 + 16);
  v21(v19, v20, v13);
  v48 = type metadata accessor for SimpleScanMaterial(0);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) = 1065353216;
  *(v22 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = 1065353216;
  v56 = v19;
  v21(v16, v19, v13);
  *(v22 + 16) = v58;
  v55 = v16;
  v21((v22 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v16, v13);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v58.n128_f32[0] green:v58.n128_f32[1] blue:v58.n128_f32[2] alpha:v58.n128_f32[3]];
  swift_beginAccess();
  v23 = sub_23AA0CD64();
  sub_23AA0CD34();
  v23(v59, 0);
  v24 = sub_23AA0CC84();
  __asm { FMOV            V0.4S, #1.0 }

  sub_23AA0CB94();
  v24(v59, 0);
  swift_endAccess();
  type metadata accessor for MeshParamTexture(0);
  result = swift_allocObject();
  v31 = v60;
  if ((v60 - 0x2000000000000000) >> 62 == 3)
  {
    v32 = result;
    v33 = 4 * v60;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v34 = sub_23A93BFA4();
    v35 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v35 setPixelFormat_];
    [v35 setWidth_];
    [v35 setHeight_];
    [v35 setUsage_];
    v36 = [v34 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v36)
    {
      *(v32 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v36;
      *(v32 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = v31;
      *(v32 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = v49;
      *(v32 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = v33;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v37 = v47;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v38 = v50;
      v39 = v37;
      v40 = v51;
      (*(v50 + 32))(v32 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v39, v51);
      *(v22 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture) = v32;
      v41 = v52;
      (*(v38 + 16))(v52, v32 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v40);
      (*(v38 + 56))(v41, 0, 1, v40);
      swift_beginAccess();
      v42 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v42(v59, 0);
      swift_endAccess();
      v43 = *(v57 + 8);
      v43(v55, v13);
      result = (v43)(v56, v13);
      v44 = v53;
      v53[3] = v48;
      v44[4] = &off_284D84550;
      *v44 = v22;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v45 = xmmword_23AA12320;
      *(v45 + 16) = 2;
      swift_willThrow();
      swift_deallocPartialClassInstance();
      v46 = *(v57 + 8);
      v46(v55, v13);
      v46(v56, v13);
      v46((v22 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v13);
      type metadata accessor for MeshUpdateScanMaterial(0);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8FF548@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_23AA0CCF4();
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0CCD4();
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CD54();
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v33 - v8;
  v9 = sub_23AA0CC74();
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CC34();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = sub_23AA0CC14();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v33 - v25;
  (*(v20 + 104))(&v33 - v25, *MEMORY[0x277CDB2A0], v19, v24);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  sub_23AA0CC24();
  sub_23A93C058();
  v27 = v34;
  sub_23AA0CC64();
  v28 = *(v43 + 16);
  v37 = v18;
  v38 = v13;
  v29 = v13;
  v30 = v35;
  v28(v15, v18, v29);
  v31 = v36;
  (*(v30 + 16))(v36, v12, v27);
  (*(v30 + 56))(v31, 0, 1, v27);
  (*(v20 + 16))(v22, v26, v19);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v30 + 8))(v12, v27);
  (*(v43 + 8))(v37, v38);
  return (*(v20 + 8))(v26, v19);
}

uint64_t sub_23A8FFA74@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_23AA0CCF4();
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0CCD4();
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CD54();
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEEA0, &qword_23AA125B8);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v36 - v8;
  v9 = sub_23AA0CC74();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CC34();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_23AA0CC14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v36 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v36 - v25;
  v27 = *MEMORY[0x277CDB2A0];
  v28 = *(v18 + 104);
  v28(&v36 - v25, v27, v17, v24);
  (v28)(v22, v27, v17);
  sub_23AA0CC04();
  v29 = *(v18 + 8);
  v40 = v18 + 8;
  v41 = v29;
  v29(v22, v17);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  sub_23A93C058();
  v30 = v38;
  sub_23AA0CC24();
  sub_23A93C058();
  v31 = v39;
  sub_23AA0CC64();
  v32 = *(v49 + 16);
  v43 = v16;
  v32(v37, v16, v50);
  v33 = *(v30 + 16);
  v34 = v42;
  v44 = v11;
  v33(v42, v11, v31);
  (*(v30 + 56))(v34, 0, 1, v31);
  (*(v18 + 16))(v36, v26, v17);
  sub_23AA0CC54();
  sub_23AA0CCC4();
  sub_23AA0CD74();
  sub_23AA0CCC4();
  sub_23AA0CD14();
  sub_23AA0CCC4();
  sub_23AA0CD24();
  (*(v30 + 8))(v44, v31);
  (*(v49 + 8))(v43, v50);
  return v41(v26, v17);
}

uint64_t sub_23A90007C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a5@<X8>, __n128 a6@<Q0>)
{
  v55 = a5;
  v60 = a6;
  v58 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v50 - v10;
  v53 = sub_23AA0CBB4();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CD84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v50 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v60;
  if (Strong)
  {
    v19 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 16))(ObjectType, v19);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    v18 = v60;
    if ((v25 & 1) == 0)
    {
      v18.n128_u64[0] = v21;
      v18.n128_u64[1] = v23;
    }
  }

  v57 = v18;
  if (*a2 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v12, a3);
  v56 = v13;
  v27 = *(v13 + 16);
  v28 = v62;
  v27(v62, v26, v12);
  v50 = type metadata accessor for SimpleScanMaterial(0);
  v29 = swift_allocObject();
  *(v29 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) = 1065353216;
  *(v29 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = 1065353216;
  v30 = v59;
  v27(v59, v28, v12);
  *(v29 + 16) = v60;
  v27((v29 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v30, v12);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v60.n128_f32[0] green:v60.n128_f32[1] blue:v60.n128_f32[2] alpha:v60.n128_f32[3]];
  swift_beginAccess();
  v31 = sub_23AA0CD64();
  sub_23AA0CD34();
  v31(v61, 0);
  v32 = sub_23AA0CC84();
  sub_23AA0CB94();
  v32(v61, 0);
  swift_endAccess();
  type metadata accessor for MeshParamTexture(0);
  result = swift_allocObject();
  v34 = v58;
  if ((v58 - 0x2000000000000000) >> 62 == 3)
  {
    v35 = result;
    v36 = 4 * v58;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v37 = sub_23A93BFA4();
    v38 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v38 setPixelFormat_];
    [v38 setWidth_];
    [v38 setHeight_];
    [v38 setUsage_];
    v39 = [v37 newTextureWithDescriptor_];
    swift_unknownObjectRelease();

    if (v39)
    {
      *(v35 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture) = v39;
      *(v35 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount) = v34;
      *(v35 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) = 1;
      *(v35 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow) = v36;
      sub_23AA0C4E4();
      swift_unknownObjectRetain();
      sub_23AA0C4D4();
      v40 = v51;
      sub_23AA0CBC4();
      swift_unknownObjectRelease();
      v41 = v52;
      v42 = v40;
      v43 = v53;
      (*(v52 + 32))(v35 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v42, v53);
      *(v29 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture) = v35;
      v44 = v54;
      (*(v41 + 16))(v54, v35 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture, v43);
      (*(v41 + 56))(v44, 0, 1, v43);
      swift_beginAccess();
      v45 = sub_23AA0CC84();
      sub_23AA0CBA4();
      v45(v61, 0);
      swift_endAccess();
      v46 = *(v56 + 8);
      v46(v59, v12);
      result = (v46)(v62, v12);
      v47 = v55;
      v55[3] = v50;
      v47[4] = &off_284D84550;
      *v47 = v29;
    }

    else
    {
      sub_23A901114();
      swift_allocError();
      *v48 = xmmword_23AA12320;
      *(v48 + 16) = 2;
      swift_willThrow();
      swift_deallocPartialClassInstance();
      v49 = *(v56 + 8);
      v49(v59, v12);
      v49(v62, v12);
      v49((v29 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial), v12);
      type metadata accessor for MeshUpdateScanMaterial(0);
      return swift_deallocPartialClassInstance();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A900804()
{
  sub_23A8E9694(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23A9008EC(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.4S, #1.0 }

  *(v2 + 32) = _Q0;
  *(v2 + 48) = _Q0;
  *(v2 + 64) = _Q0;
  *(v2 + 80) = _Q0;
  *(v2 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA10FC0;
  if (qword_27DFAE3D8 != -1)
  {
    swift_once();
  }

  v10 = sub_23AA0CD84();
  v11 = __swift_project_value_buffer(v10, qword_27DFAEDF0);
  v12 = MEMORY[0x277CDB298];
  *(v9 + 56) = v10;
  *(v9 + 64) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
  sub_23AA0C164();
  swift_allocObject();
  sub_23AA0C154();

  return v2;
}

uint64_t sub_23A900A58(uint64_t a1)
{
  __asm { FMOV            V0.4S, #1.0 }

  return sub_23A900A80(a1, &qword_27DFAE3F8, qword_27DFAEE50, sub_23A8FE858, _Q0);
}

uint64_t sub_23A900A80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v8 = v5;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.4S, #1.0 }

  *(v8 + 32) = _Q0;
  *(v8 + 48) = _Q0;
  *(v8 + 64) = xmmword_23AA12340;
  *(v8 + 80) = a5;
  *(v8 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23AA10FC0;
  if (*a2 != -1)
  {
    swift_once();
  }

  v16 = sub_23AA0CD84();
  v17 = __swift_project_value_buffer(v16, a3);
  v18 = MEMORY[0x277CDB298];
  *(v15 + 56) = v16;
  *(v15 + 64) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
  sub_23AA0C164();
  swift_allocObject();
  sub_23AA0C154();

  return v8;
}

uint64_t sub_23A900BF8(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AA10FC0;
  v5 = qword_27DFAE3B8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_23AA0CD84();
  v7 = __swift_project_value_buffer(v6, qword_27DFAED90);
  v8 = MEMORY[0x277CDB298];
  *(v4 + 56) = v6;
  *(v4 + 64) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  v10 = *(*(v6 - 8) + 16);
  v10(boxed_opaque_existential_1, v7, v6);
  sub_23AA0C164();
  swift_allocObject();
  sub_23AA0C154();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23AA10FC0;
  if (qword_27DFAE3A8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_27DFAED60);
  *(v11 + 56) = v6;
  *(v11 + 64) = v8;
  v13 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  v10(v13, v12, v6);
  swift_allocObject();
  sub_23AA0C154();

  return v2;
}

uint64_t sub_23A900E38(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.4S, #1.0 }

  *(v2 + 32) = _Q0;
  *(v2 + 48) = _Q0;
  *(v2 + 64) = _Q0;
  *(v2 + 80) = _Q0;
  *(v2 + 96) = a1;
  sub_23AA0C3F4();
  swift_unknownObjectRetain();
  sub_23AA0C394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA10FC0;
  v10 = qword_27DFAE3D0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_23AA0CD84();
  v12 = __swift_project_value_buffer(v11, qword_27DFAEDD8);
  v13 = MEMORY[0x277CDB298];
  *(v9 + 56) = v11;
  *(v9 + 64) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  v15 = *(*(v11 - 8) + 16);
  v15(boxed_opaque_existential_1, v12, v11);
  sub_23AA0C164();
  swift_allocObject();
  sub_23AA0C154();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA10FC0;
  if (qword_27DFAE3C0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_27DFAEDA8);
  *(v16 + 56) = v11;
  *(v16 + 64) = v13;
  v18 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  v15(v18, v17, v11);
  swift_allocObject();
  sub_23AA0C154();

  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_23A901114()
{
  result = qword_27DFAEEB0;
  if (!qword_27DFAEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEEB0);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Corner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
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

uint64_t storeEnumTagSinglePayload for Corner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_23A901288(_BYTE *a1, _BYTE *a2)
{
  v2 = -1.0;
  if (*a1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  if (*a2)
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

float *sub_23A901300@<X0>(float *result@<X0>, char *a2@<X8>)
{
  if (*result == 1.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == -1.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_23A901328(float *a1@<X8>)
{
  v2 = -1.0;
  if (*v1)
  {
    v2 = 1.0;
  }

  *a1 = v2;
}

uint64_t sub_23A901344(uint64_t a1, unint64_t a2)
{
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD34();
  return sub_23AA0DD34();
}

uint64_t sub_23A9013AC(unint64_t a1)
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD34();
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t sub_23A901440()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return sub_23A9013AC(v4 | *v0 | v3 | v2 | v1);
}

uint64_t sub_23A901498(uint64_t a1)
{
  v2 = 0x100000000;
  if (!v1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  return sub_23A901344(a1, v5 | *v1 | v4 | v3 | v2);
}

uint64_t sub_23A9014F0()
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD44();
  sub_23AA0DD34();
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t sub_23A9015A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = 0x100000000;
  if (a1[4])
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  v13 = v3 == 0;
  v18 = 256;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = 256;
  }

  v20 = v19 | v2 | v17 | v15;
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  if (!v7)
  {
    v18 = 0;
  }

  return sub_23A901694(v20 | v12, v18 | v6 | v16 | v14 | v11);
}

unint64_t sub_23A901640()
{
  result = qword_27DFAEEC0;
  if (!qword_27DFAEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEEC0);
  }

  return result;
}

uint64_t sub_23A901694(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a1)
  {
    return 0;
  }

  if ((a2 & 0x100) != 0)
  {
    if ((a1 & 0x100) == 0)
    {
      return 0;
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    return 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    if (((a1 & 0x10000) == 0) | (a1 >> 24) & 1 ^ (a2 >> 24) & 1)
    {
      return 0;
    }
  }

  else if ((a1 >> 16) & 1 | (a1 >> 24) & 1 ^ (a2 >> 24) & 1)
  {
    return 0;
  }

  return BYTE4(a1) & 1 ^ ((a2 & 0x100000000) == 0);
}

unint64_t sub_23A901730()
{
  result = qword_27DFAEEC8;
  if (!qword_27DFAEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEEC8);
  }

  return result;
}

char *sub_23A901794(char *a1, __n128 a2, __n128 a3)
{
  v4 = sub_23A938D78(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = (v6 + 1);
  if (v6 >= v5 >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    *(v4 + 2) = v7;
    v8 = &v4[32 * v6];
    v8[2] = a2;
    v8[3] = a3;
    v69 = v4;
    v9 = *(a1 + 2);
    if (!v9)
    {
      return v4;
    }

    v10 = 0;
    v11 = a1 + 32;
    v44 = a1 + 32;
    v45 = *(a1 + 2);
    while (1)
    {
      a1 = v69;
      v12 = *(v69 + 2);
      if (v12)
      {
        break;
      }

LABEL_34:
      if (++v10 == v9)
      {
        return v69;
      }
    }

    v46 = v10;
    v13 = &v11[4 * v10];
    v52 = v13[1];
    v53 = *v13;

    v6 = 0;
    v14 = v12;
    v47 = v12;
    while (1)
    {
      if (v14 == v12)
      {
        v6 = *(a1 + 2);
      }

      if (__OFSUB__(v6--, 1))
      {
        break;
      }

      v5 = *(a1 + 2);
      if (v14 > v5)
      {
        goto LABEL_39;
      }

      v16 = &a1[32 * v14];
      a3 = *v16;
      v54 = v16[1];
      if (sub_23A902530(*v16, v54, v53, v52))
      {
        v17 = 0;
        v7 = v69;
        v18 = v54;
        v19 = a3;
        do
        {
          v5 = &unk_284D7FAE8 + v17;
          v20 = *(&unk_284D7FAE8 + v17 + 32);
          if (v20 > 2)
          {
            __break(1u);
            goto LABEL_38;
          }

          v65 = v53;
          v21 = *(&v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v66 = v52;
          v22 = *(&v66 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v67 = v19;
          v23 = *(&v67 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v68 = v18;
          v24 = *(&v68 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
          v25 = v24 * 0.5;
          v26 = v23 + (v24 * 0.5);
          v27 = v22 * 0.5;
          v28 = v21 + (v22 * 0.5);
          if ((v28 + 0.0001) < v26)
          {
            a3 = v19;
            v64 = v19;
            *(&v64 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = (v28 + v26) * 0.5;
            v50 = v64;
            a2 = v18;
            v63 = v18;
            *(&v63 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v26 - v28;
            v48 = v63;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_23A938D78(0, *(v7 + 2) + 1, 1, v7);
            }

            v30 = *(v7 + 2);
            v29 = *(v7 + 3);
            v18 = a2;
            v19 = a3;
            if (v30 >= v29 >> 1)
            {
              v40 = sub_23A938D78((v29 > 1), v30 + 1, 1, v7);
              v18 = a2;
              v19 = a3;
              v7 = v40;
            }

            *(v7 + 2) = v30 + 1;
            v31 = &v7[32 * v30];
            *(v31 + 2) = v50;
            *(v31 + 3) = v48;
            v32 = v23 - v25;
            if (((v23 - v25) + 0.0001) < v28)
            {
              v23 = (v32 + v28) * 0.5;
              v62 = v19;
              *(&v62 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v23;
              v19 = v62;
              v24 = v28 - v32;
              v61 = v18;
              *(&v61 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v28 - v32;
              v18 = v61;
            }
          }

          v33 = v24 * -0.5;
          v34 = v23 + v33;
          v35 = v21 - v27;
          if (((v23 + v33) + 0.0001) < v35)
          {
            a3 = v19;
            v60 = v19;
            *(&v60 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = (v35 + v34) * 0.5;
            v51 = v60;
            a2 = v18;
            v59 = v18;
            *(&v59 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v35 - v34;
            v49 = v59;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_23A938D78(0, *(v7 + 2) + 1, 1, v7);
            }

            v37 = *(v7 + 2);
            v36 = *(v7 + 3);
            v18 = a2;
            v19 = a3;
            if (v37 >= v36 >> 1)
            {
              v41 = sub_23A938D78((v36 > 1), v37 + 1, 1, v7);
              v18 = a2;
              v19 = a3;
              v7 = v41;
            }

            *(v7 + 2) = v37 + 1;
            v38 = &v7[32 * v37];
            *(v38 + 2) = v51;
            *(v38 + 3) = v49;
            v39 = v23 - v33;
            if ((v35 + 0.0001) < (v23 - v33))
            {
              v58 = v19;
              *(&v58 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = (v35 + v39) * 0.5;
              v19 = v58;
              v57 = v18;
              *(&v57 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3))) = v39 - v35;
              v18 = v57;
            }
          }

          v17 += 8;
        }

        while (v17 != 24);
        v69 = v7;
        v42 = vmovn_s32(vceqq_f32(v18, v54));
        v12 = v47;
        if ((v42.i8[0] & 1) == 0 || (v5 = (v42.i16[1] & v42.i16[2]), (v42.i8[2] & v42.i8[4] & 1) == 0))
        {
          v7 = &v69;
          sub_23A9851B8(v6);
        }
      }

      if (!--v14)
      {

        v9 = v45;
        v10 = v46;
        v11 = v44;
        goto LABEL_34;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v4 = sub_23A938D78((v5 > 1), v7, 1, v4);
  }
}

uint64_t sub_23A901C30(uint64_t a1)
{
  v1 = a1;
  if (qword_27DFAE378 != -1)
  {
    swift_once();
  }

  v2 = sub_23A9AD42C(v1, qword_27DFC05B0);
  if (qword_27DFAE380 != -1)
  {
    swift_once();
  }

  v3 = sub_23A9AD42C(v1, qword_27DFC05B8);
  if (qword_27DFAE388 != -1)
  {
    swift_once();
  }

  v4 = sub_23A9AD42C(v1, qword_27DFC05C0);
  v5 = sub_23A9AD42C(v1, qword_27DFAECA8);
  if (qword_27DFAE390 != -1)
  {
    v9 = v5;
    swift_once();
    v5 = v9;
  }

  v6 = v2;
  if (v3)
  {
    v6 = v2 | 2;
  }

  if (v4)
  {
    v6 |= 4u;
  }

  if (v5)
  {
    v7 = v6 | 8;
  }

  else
  {
    v7 = v6;
  }

  if (sub_23A9AD42C(v1, qword_27DFC05C8))
  {
    v7 |= 0x20u;
  }

  if (sub_23A9AD42C(v1, qword_27DFAECB0))
  {
    return v7 | 0x10;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_23A901DDC(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v4 = swift_allocObject();
  v5 = a2;
  v6 = a2.f32[2];
  v7.i32[3] = 0;
  v8.i64[0] = vsubq_f32(0, a2).u64[0];
  v5.i32[3] = 0;
  v45 = v5;
  *&v8.i32[2] = 0.0 - v6;
  v8.i32[3] = 0;
  v9 = v8;
  v40 = v8;
  v10 = a3;
  v11 = a3.f32[2];
  v7.i64[0] = vsubq_f32(0, a3).u64[0];
  v10.i32[3] = 0;
  v47 = v10;
  *&v7.i32[2] = 0.0 - v11;
  v4[2] = v9;
  v4[3] = v5;
  v41 = v7;
  v4[4] = v7;
  v4[5] = v10;
  v12 = a4;
  v13 = vnegq_f32(a4);
  v13.i32[3] = 0;
  v43 = v13;
  v12.i32[3] = 0;
  v49 = v12;
  v4[6] = v13;
  v4[7] = v12;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v14 = vmulq_f32(v40, a1);
  v15 = vmulq_f32(v45, a1);
  *v14.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8)));
  v16 = vcgt_f32(vdup_lane_s32(*v14.i8, 1), *v14.i8).u8[0];
  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vbslq_s8(vdupq_n_s32(v17), v45, v40);
  v19 = vmulq_f32(v18, a1);
  v20 = vmulq_f32(v41, a1);
  *v19.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)), vadd_f32(vzip1_s32(*v19.i8, *v20.i8), vzip2_s32(*v19.i8, *v20.i8)));
  v19.i8[0] = vcgt_f32(vdup_lane_s32(*v19.i8, 1), *v19.i8).u8[0];
  v21 = (v19.i8[0] & 1) == 0;
  if (v19.i8[0])
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23 = vbslq_s8(vdupq_n_s32(v22), v41, v18);
  v24 = vmulq_f32(v23, a1);
  v25 = vmulq_f32(v47, a1);
  *v24.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v26 = vcgt_f32(vdup_lane_s32(*v24.i8, 1), *v24.i8).u8[0];
  v27 = v16 & 1;
  if (!v21)
  {
    v27 = 2;
  }

  v28 = (v26 & 1) == 0;
  if (v26)
  {
    v29 = -1;
  }

  else
  {
    v29 = 0;
  }

  v30 = vbslq_s8(vdupq_n_s32(v29), v47, v23);
  v31 = vmulq_f32(v30, a1);
  v32 = vmulq_f32(v43, a1);
  *v31.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v33 = vcgt_f32(vdup_lane_s32(*v31.i8, 1), *v31.i8).u8[0];
  if (!v28)
  {
    v27 = 3;
  }

  v34 = (v33 & 1) == 0;
  if (v33)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  v36 = vmulq_f32(vbslq_s8(vdupq_n_s32(v35), v43, v30), a1);
  v37 = vmulq_f32(v49, a1);
  *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)), vadd_f32(vzip1_s32(*v36.i8, *v37.i8), vzip2_s32(*v36.i8, *v37.i8)));
  v38 = vcgt_f32(vdup_lane_s32(*v36.i8, 1), *v36.i8).u8[0];
  if (!v34)
  {
    v27 = 4;
  }

  if (v38)
  {
    v27 = 5;
  }

  return dword_284D7FA40[v27 + 8];
}

void sub_23A902044(int a1@<W0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>, float32x4_t a7@<Q4>, float32x4_t a8@<Q5>, float32x4_t a9@<Q6>, float32x4_t a10@<Q7>, __int128 a11, __int128 a12)
{
  v13 = 0uLL;
  if (!a1)
  {
    v29 = 1;
    v30 = 0uLL;
    goto LABEL_10;
  }

  v14 = a1;
  v95.columns[2] = a11;
  v95.columns[3] = a12;
  v95.columns[0] = a9;
  v95.columns[1] = a10;
  v96 = __invert_f4(v95);
  if (qword_284D7FA98 <= 2)
  {
    v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v96.columns[0], a7.f32[0]), v96.columns[1], *a7.f32, 1), v96.columns[2], a7, 2), v96.columns[3], a7, 3);
    v18 = vmuls_lane_f32(0.5, a3, 2);
    v19 = vmul_f32(*a3.f32, 0x3F0000003F000000);
    *v20.f32 = vsub_f32(*v17.f32, v19);
    v20.f32[2] = v17.f32[2] - v18;
    v20.i32[3] = 0;
    *v21.f32 = vadd_f32(v19, *v17.f32);
    v21.f32[2] = v18 + v17.f32[2];
    v21.i32[3] = 0;
    *v15.i8 = vmul_f32(*a8.f32, 0xBF000000BF000000);
    v22 = vmuls_lane_f32(-0.5, a8, 2);
    v23.i64[0] = v15.i64[0];
    v23.i64[1] = LODWORD(v22);
    *v16.i8 = vmul_f32(*a8.f32, 0x3F0000003F000000);
    v24 = vmuls_lane_f32(0.5, a8, 2);
    v25.i64[0] = v16.i64[0];
    v25.i64[1] = LODWORD(v24);
    v91 = v20;
    v17.i32[0] = *(&v91 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    v92 = v25;
    v26 = *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    v93 = v21;
    v27 = *(&v93 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    v94 = v23;
    v28 = v26 > v17.f32[0] && v27 > *(&v94 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FA98 & 3)));
    if (!v28)
    {
      v29 = 1;
LABEL_8:
      v30 = 0uLL;
      v13 = 0uLL;
LABEL_10:
      *a2 = v13;
      *(a2 + 16) = v30;
      *(a2 + 32) = v29;
      return;
    }

    if (qword_284D7FAA0 <= 2)
    {
      v87 = v20;
      v31 = *(&v87 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3)));
      v88 = v25;
      v32 = *(&v88 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3)));
      v89 = v21;
      v33 = *(&v89 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3)));
      v90 = v23;
      v29 = 1;
      if (v32 <= v31 || v33 <= *(&v90 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA0 & 3))))
      {
        goto LABEL_8;
      }

      if (qword_284D7FAA8 <= 2)
      {
        v83 = v20;
        v34 = *(&v83 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v84 = v25;
        v35 = *(&v84 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v85 = v21;
        v36 = *(&v85 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v86 = v23;
        v29 = 1;
        if (v35 <= v34)
        {
          goto LABEL_8;
        }

        v28 = v36 > *(&v86 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAA8 & 3)));
        v30 = 0uLL;
        v13 = 0uLL;
        if (!v28)
        {
          goto LABEL_10;
        }

        v20.i32[3] = 0;
        v23.i32[3] = 0;
        v37 = vmaxnmq_f32(v20, v23);
        v21.i32[3] = 0;
        v25.i32[3] = 0;
        v38 = vminnmq_f32(v21, v25);
        v78 = v22;
        v80 = v38;
        v70 = v15;
        v71 = v24;
        v69 = v16;
        v82 = v37;
        if (v14)
        {
          v42.i32[3] = 0;
          v42.i64[0] = vsubq_f32(0, a4).u64[0];
          v42.f32[2] = 0.0 - a4.f32[2];
          v43 = sub_23A901DDC(v42, a9, a10, a11);
          if (v43)
          {
            v45 = v43;
            v39 = a9;
            v40 = a10;
            if ((v14 & 2) == 0)
            {
              if ((v14 & 4) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_46;
            }
          }

          else
          {
            v41 = a6;
            if ((v14 & 2) == 0)
            {
              if ((v14 & 4) == 0)
              {
                v39 = a9;
                v40 = a10;
                if ((v14 & 8) == 0)
                {
                  if ((v14 & 0x20) == 0)
                  {
                    if ((v14 & 0x10) != 0)
                    {
LABEL_69:
                      v45 = 0;
                      goto LABEL_63;
                    }

                    v38 = v80;
                    v37 = v82;
LABEL_68:
                    v29 = 0;
                    v68.i64[0] = 0x3F0000003F000000;
                    v68.i64[1] = 0x3F0000003F000000;
                    *&v13 = vmulq_f32(vaddq_f32(v38, v37), v68).u64[0];
                    *(&v13 + 2) = (v38.f32[2] + v37.f32[2]) * 0.5;
                    HIDWORD(v13) = 0;
                    *&v30 = vsubq_f32(v38, v37).u64[0];
                    *(&v30 + 2) = v38.f32[2] - v37.f32[2];
                    HIDWORD(v30) = 0;
                    goto LABEL_10;
                  }

                  goto LABEL_58;
                }

                goto LABEL_44;
              }

              v45 = 0;
              v39 = a9;
              v40 = a10;
              goto LABEL_46;
            }

            v45 = 0;
            v39 = a9;
            v40 = a10;
          }
        }

        else
        {
          v39 = a9;
          v40 = a10;
          v41 = a6;
          if ((v14 & 2) == 0)
          {
            if ((v14 & 4) == 0)
            {
              if ((v14 & 8) == 0)
              {
                if ((v14 & 0x20) == 0)
                {
                  if ((v14 & 0x10) != 0)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_68;
                }

LABEL_58:
                v45 = 0;
                goto LABEL_59;
              }

LABEL_44:
              v45 = 0;
              goto LABEL_52;
            }

            v45 = 0;
            goto LABEL_46;
          }

          v45 = 0;
        }

        v46 = a4;
        v46.i32[3] = 0;
        v47 = sub_23A901DDC(v46, v39, v40, a11);
        v39 = a9;
        v40 = a10;
        if ((v47 & ~v45) != 0)
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        v45 |= v48;
        if ((v14 & 4) == 0)
        {
LABEL_42:
          if ((v14 & 8) != 0)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

LABEL_46:
        v49.i32[3] = 0;
        v49.i64[0] = vsubq_f32(0, a5).u64[0];
        v49.f32[2] = 0.0 - a5.f32[2];
        v50 = sub_23A901DDC(v49, v39, v40, a11);
        v39 = a9;
        v40 = a10;
        if ((v50 & ~v45) != 0)
        {
          v51 = v50;
        }

        else
        {
          v51 = 0;
        }

        v45 |= v51;
        if ((v14 & 8) != 0)
        {
LABEL_52:
          v52 = a5;
          v52.i32[3] = 0;
          v53 = sub_23A901DDC(v52, v39, v40, a11);
          v39 = a9;
          v40 = a10;
          if ((v53 & ~v45) != 0)
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          v45 |= v54;
          v41 = a6;
          if ((v14 & 0x20) != 0)
          {
LABEL_59:
            v55 = vnegq_f32(v41);
            v55.i32[3] = 0;
            v56 = sub_23A901DDC(v55, v39, v40, a11);
            v41 = a6;
            v39 = a9;
            v40 = a10;
            if ((v56 & ~v45) != 0)
            {
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }

            v45 |= v57;
            if ((v14 & 0x10) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_63;
          }

LABEL_56:
          if ((v14 & 0x10) == 0)
          {
LABEL_67:
            v41.i32[0] = 0;
            v39.i32[0] = v45 & 1;
            v60.i64[1] = v82.i64[1];
            v61 = vbslq_s8(vceqq_s32(v39, v41), v82, v70);
            v40.i32[0] = v45 & 2;
            v62 = vbslq_s8(vceqq_s32(v40, v41), v80, v69);
            v44.i32[0] = v45 & 8;
            v63.i64[1] = v80.i64[1];
            v63.i32[0] = v62.i32[0];
            v62.i32[0] = v45 & 4;
            v60.i32[0] = v61.i32[0];
            v60.i32[1] = vbslq_s8(vdupq_lane_s32(vceqq_s32(v62, *&v41), 0), v82, v70).i32[1];
            v63.i32[1] = vbslq_s8(vdupq_lane_s32(vceqq_s32(v44, *&v41), 0), v80, v69).i32[1];
            v61.i32[0] = v45 & 0x20;
            v64 = vdupq_lane_s32(*&vceqq_s32(v61, v41), 0);
            v65 = v60;
            *&v65.i32[2] = v78;
            v37 = vbslq_s8(v64, v60, v65);
            v64.i32[0] = v45 & 0x10;
            v66 = vdupq_lane_s32(*&vceqq_s32(v64, v41), 0);
            v67 = v63;
            *&v67.i32[2] = v71;
            v38 = vbslq_s8(v66, v63, v67);
            goto LABEL_68;
          }

LABEL_63:
          v41.i32[3] = 0;
          v58 = sub_23A901DDC(v41, v39, v40, a11);
          if ((v58 & ~v45) != 0)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0;
          }

          LOBYTE(v45) = v59 | v45;
          goto LABEL_67;
        }

LABEL_50:
        v41 = a6;
        if ((v14 & 0x20) != 0)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }
    }
  }

  __break(1u);
}

BOOL sub_23A902530(__n128 a1, float32x4_t a2, __n128 a3, float32x4_t a4)
{
  if (qword_284D7FAD0 <= 2)
  {
    v4 = vmuls_lane_f32(0.5, a4, 2);
    v5 = vmul_f32(*a4.f32, 0x3F0000003F000000);
    *&v6 = vsub_f32(a3.n128_u64[0], v5);
    *(&v6 + 2) = a3.n128_f32[2] - v4;
    HIDWORD(v6) = 0;
    a3.n128_u64[0] = vadd_f32(a3.n128_u64[0], v5);
    a3.n128_f32[2] = a3.n128_f32[2] + v4;
    a3.n128_u32[3] = 0;
    v8 = vmuls_lane_f32(0.5, a2, 2);
    v9 = vmul_f32(*a2.f32, 0x3F0000003F000000);
    *&v10 = vsub_f32(a1.n128_u64[0], v9);
    *(&v10 + 2) = a1.n128_f32[2] - v8;
    HIDWORD(v10) = 0;
    a1.n128_u64[0] = vadd_f32(a1.n128_u64[0], v9);
    a1.n128_f32[2] = a1.n128_f32[2] + v8;
    a1.n128_u32[3] = 0;
    v34 = v6;
    v12 = *(&v34 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3)));
    v35 = a1;
    v13 = *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3)));
    v36 = a3;
    v14 = *(&v36 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3)));
    v37 = v10;
    if (v13 <= v12 || v14 <= *(&v37 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD0 & 3))))
    {
      return 0;
    }

    if (qword_284D7FAD8 <= 2)
    {
      v30 = v6;
      v16 = *(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3)));
      v31 = a1;
      v17 = *(&v31 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3)));
      v32 = a3;
      v18 = *(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3)));
      v33 = v10;
      if (v17 <= v16 || v18 <= *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAD8 & 3))))
      {
        return 0;
      }

      if (qword_284D7FAE0 <= 2)
      {
        v26 = v6;
        v21 = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3)));
        v27 = a1;
        v22 = *(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3)));
        v28 = a3;
        v23 = *(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3)));
        v29 = v10;
        return v23 > *(&v29 & 0xFFFFFFFFFFFFFFF3 | (4 * (qword_284D7FAE0 & 3))) && v22 > v21;
      }
    }
  }

  __break(1u);
  return result;
}

float sub_23A9026C0()
{
  v1 = v0;
  v2 = sub_23AA0CE24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0CCB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity;
  v12 = *(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity);
  v13 = 1.0;
  if (v12 == 1.0)
  {
    if (*(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) != 1.0)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CDB518], v2);
      sub_23AA0CCA4();
LABEL_7:
      swift_beginAccess();
      sub_23AA0CD04();
      swift_endAccess();
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity);
  }

  if (v12 != v13)
  {
    v14 = v8;
    sub_23AA0CC94();
    (*(v7 + 104))(v10, *MEMORY[0x277CDB2B0], v14);
    goto LABEL_7;
  }

LABEL_8:
  result = *(v1 + v11);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial__opacity) = result;
  return result;
}

uint64_t sub_23A9028C8()
{
  v1 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
  v2 = sub_23AA0CD84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SimpleScanMaterial(uint64_t a1)
{
  result = qword_27DFAEED0;
  if (!qword_27DFAEED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ScanEntity(uint64_t a1)
{
  result = qword_27DFAEF10;
  if (!qword_27DFAEF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A902A60(uint64_t a1)
{
  result = sub_23AA0C0E4();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_23A902B54(uint64_t a1, int a2, double a3)
{
  v5 = v4;
  v6 = v3;
  v232 = a2;
  v233 = a1;
  v8 = sub_23AA0CA04();
  v237 = v8[-1].i64[1];
  v238 = v8;
  MEMORY[0x28223BE20](v8);
  v236 = (&v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_23AA0C4C4();
  MEMORY[0x28223BE20](v10 - 8);
  v229.i64[0] = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227.i64[0] = sub_23AA0C5C4();
  v225 = *(v227.i64[0] - 8);
  MEMORY[0x28223BE20](v227.i64[0]);
  v224 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235.i64[0] = sub_23AA0C5F4();
  v228.i64[0] = *(v235.i64[0] - 8);
  MEMORY[0x28223BE20](v235.i64[0]);
  v226 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v14 - 8);
  v243 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v242 = &v204 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v18 - 8);
  v241 = (&v204 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  MEMORY[0x28223BE20](v20 - 8);
  v244 = (&v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v245 = (&v204 - v23);
  MEMORY[0x28223BE20](v24);
  v239.i64[0] = &v204 - v25;
  MEMORY[0x28223BE20](v26);
  v240.i64[0] = &v204 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = (&v204 - v29);
  v31 = sub_23AA0C0E4();
  MEMORY[0x28223BE20](v31);
  v234 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v204 - v35;
  if (qword_27DFAE368 != -1)
  {
    v184 = v34;
    swift_once();
    v34 = v184;
  }

  v37 = qword_27DFC04B0;
  v38 = v34;
  v39 = *(v34 + 16);
  v248 = v31;
  v230 = v39;
  v231 = v34 + 16;
  v39(v36, (v6 + qword_27DFC0620), v31);
  swift_beginAccess();
  v40 = *(v37 + 24);
  if (!*(v40 + 16))
  {
    goto LABEL_9;
  }

  v41 = sub_23A9EDD28(v36);
  if ((v42 & 1) == 0)
  {

LABEL_9:
    (*(v38 + 8))(v36, v248);
    return;
  }

  v44 = *(v38 + 8);
  v43 = v38 + 8;
  v246 = *(*(v40 + 56) + 8 * v41);

  v220 = v44;
  v221 = v43;
  v44(v36, v248);

  if (sub_23AA0CA84())
  {
    v45 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
    v36 = v246;
    swift_beginAccess();
    sub_23A8D5194(&v36[v45], v30, &unk_27DFAF030, &qword_23AA11B48);
    v46 = type metadata accessor for AnimationGraph(0);
    if ((*(*(v46 - 8) + 48))(v30, 1, v46) == 1)
    {
      sub_23A8D50D0(v30, &unk_27DFAF030, &qword_23AA11B48);
    }

    else
    {
      v47 = v30[4];
      sub_23A910618(v30);
      if (v47 == 0.0)
      {
LABEL_12:
        sub_23AA0CA94();
        goto LABEL_13;
      }
    }
  }

  if ((sub_23AA0CA84() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (qword_27DFAE518 != -1)
  {
    goto LABEL_159;
  }

  while (1)
  {
    v48 = off_27DFB17B0;
    swift_beginAccess();
    v49 = *(v48 + 181);
    v247 = v6;
    if (v49)
    {
      break;
    }

    swift_beginAccess();
    if (*(v48 + 41) != 1 || v246[OBJC_IVAR____TtC8RoomPlan8ScanItem_category] != 10)
    {
      break;
    }

    v217 = v48;
    v223.i64[0] = v5;
    v50 = *(v37 + 24);
    v251[0] = MEMORY[0x277D84F90];
    v6 = v50 + 64;
    v51 = 1 << *(v50 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v5 = v52 & *(v50 + 64);
    v43 = (v51 + 63) >> 6;

    v53 = 0;
    v222.i64[0] = v50;
    while (v5)
    {
LABEL_25:
      v55 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v36 = *(*(v50 + 56) + ((v53 << 9) | (8 * v55)));
      if (v36[OBJC_IVAR____TtC8RoomPlan8ScanItem_type] == 3 && v36[OBJC_IVAR____TtC8RoomPlan8ScanItem_category] != 10)
      {

        sub_23AA0D944();
        v37 = *(v251[0] + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        v50 = v222.i64[0];
      }
    }

    while (1)
    {
      v54 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v54 >= v43)
      {

        v56 = v251[0];
        v48 = v217;
        swift_beginAccess();
        sub_23A8D9F98(v56, v48[11]);

        v6 = v247;
        sub_23AA0CA94();
        v5 = v223.i64[0];
        goto LABEL_29;
      }

      v5 = *(v6 + 8 * v54);
      ++v53;
      if (v5)
      {
        v53 = v54;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_159:
    swift_once();
  }

LABEL_29:
  if ((sub_23AA0CA84() & 1) == 0)
  {

    return;
  }

  v217 = v48;
  v57 = qword_27DFC0630;
  if (*(v6 + qword_27DFC0630))
  {
    v58 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
  }

  else
  {
    v58 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  }

  v59 = *&v246[*v58];
  v60 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
  if (!*(v6 + qword_27DFC0630))
  {
    v60 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  }

  v61 = *&v246[*v60];
  v215 = v59;
  v216 = v61;
  v206 = xmmword_23AA11AF0;
  *v62.i64 = MEMORY[0x23EE8FF80]();
  v222 = v63;
  v223 = v62;
  v218 = v65;
  v219 = v64;
  v208 = v57;
  v66 = *(v6 + v57);

  sub_23A980C74(v67, v66, v223, v222, v219, v218);
  v69 = v68;

  v207 = qword_27DFAEF08;
  if (*(v6 + qword_27DFAEF08))
  {

    v70 = sub_23A980560(v69, 0.001);

    if (v70)
    {
      goto LABEL_69;
    }
  }

  v71 = OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects;
  v72 = *(v69 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects);
  if (v72 >> 62)
  {
    goto LABEL_167;
  }

  for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v222.i64[0] = v69;
    if (i < 1)
    {
      v69 = MEMORY[0x277D84F90];
    }

    else
    {
      v71 = *(v69 + v71);
      if (v71 >> 62)
      {
LABEL_169:
        v6 = sub_23AA0D7F4();
      }

      else
      {
        v6 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = MEMORY[0x277D84F90];
      if (v6)
      {
        v219.n128_u64[0] = v71;
        v223.i64[0] = v5;
        v251[0] = MEMORY[0x277D84F90];
        sub_23A975F04(0, v6 & ~(v6 >> 63), 0);
        if (v6 < 0)
        {
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        v74 = 0;
        v69 = v251[0];
        v75 = v219.n128_u64[0];
        v76 = v219.n128_u64[0] & 0xC000000000000001;
        do
        {
          if (v76)
          {
            v77 = MEMORY[0x23EE90360](v74, v75);
          }

          else
          {
          }

          v78 = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);

          v251[0] = v69;
          v80 = *(v69 + 16);
          v79 = *(v69 + 24);
          if (v80 >= v79 >> 1)
          {
            sub_23A975F04((v79 > 1), v80 + 1, 1);
            v75 = v219.n128_u64[0];
            v69 = v251[0];
          }

          ++v74;
          *(v69 + 16) = v80 + 1;
          *(v69 + v80 + 32) = v78;
        }

        while (v6 != v74);
        v5 = v223.i64[0];
      }

      v6 = v247;
    }

    v223.i64[0] = v5;
    if (qword_27DFAE490 != -1)
    {
      swift_once();
    }

    v219.n128_u64[0] = qword_27DFC07E0;
    v81 = v222.i64[0];
    v218 = *(v222.i64[0] + 16);
    v82 = v246;
    v83 = v246[OBJC_IVAR____TtC8RoomPlan8ScanItem_category];
    v213 = *(v6 + qword_27DFAEEE0);
    v214 = v83;
    v84 = v241;
    sub_23A8D5194(v222.i64[0] + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, v241, &qword_27DFAEB38, &unk_23AA11B60);
    v212 = *(v81 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners);
    v211 = *(v81 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements);
    v210 = *(v81 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements);
    v209 = *(v81 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements);
    v205 = OBJC_IVAR____TtC8RoomPlan8ScanItem_type;
    v85 = *(v82 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
    v86 = v242;
    sub_23A8D5194(v81 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, v242, &unk_27DFAF020, &unk_23AA12300);
    v87 = v243;
    sub_23A8D5194(v81 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, v243, &unk_27DFAF020, &unk_23AA12300);
    if (*(v247 + qword_27DFC0638 + 4))
    {
      v88 = 0.0;
    }

    else
    {
      v88 = *(v247 + qword_27DFC0638);
    }

    type metadata accessor for RoomCaptureMeshDimensionsRestriction();
    inited = swift_initStaticObject();
    v90 = sub_23A996EFC(v213, v214, v84, v212, v211, v210, v209, v69, v218, v88, v85 != 6, v85 != 6, v86, v87, inited);

    sub_23A8D50D0(v87, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v86, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v84, &qword_27DFAEB38, &unk_23AA11B60);
    v219.n128_u64[0] = v90;
    v91 = qword_27DFAEF00;
    LODWORD(v243) = sub_23A946C70(v90[4], *(v247 + qword_27DFAEF00));
    v92 = (v247 + qword_27DFC0628);
    swift_beginAccess();
    sub_23A8CA9D8(v92, v251);
    v93 = v252;
    v94 = v253;
    __swift_project_boxed_opaque_existential_1(v251, v252);
    LODWORD(v242) = (*(v94 + 40))(*(v90[2] + 16), v93, v94);
    __swift_destroy_boxed_opaque_existential_1(v251);
    *(v247 + v91) = v90[4];

    v241 = *(v247 + qword_27DFAEEF0);
    v95 = v92[3];
    v96 = v92[4];
    v97 = __swift_project_boxed_opaque_existential_1(v92, v95);
    v98 = *(v95 - 8);
    v99 = MEMORY[0x28223BE20](v97);
    v101 = &v204 - v100;
    (*(v98 + 16))(&v204 - v100, v99);
    v102.n128_f64[0] = (*(v96 + 16))(v95, v96);
    v218 = v102;
    v103 = (*(v98 + 8))(v101, v95);
    v104 = v219.n128_u64[0];
    v105 = v241(v103, v218);
    v106 = v223.i64[0];
    sub_23A904B7C(v104, v105 & 1 | ((v243 & 1) == 0) | v242 & 1);
    if (v106)
    {

      return;
    }

    sub_23A8CA9D8(v92, v251);
    v107 = v252;
    v108 = v253;
    __swift_project_boxed_opaque_existential_1(v251, v252);
    v110 = v104[2];
    v109 = v104[3];
    v111 = *(v108 + 48);

    v111(v246, v110, v109, v107, v108, a3);

    __swift_destroy_boxed_opaque_existential_1(v251);
    v6 = v247;
    v69 = v222.i64[0];
    *(v247 + v207) = v222.i64[0];

    if ((UIAccessibilityIsVoiceOverRunning() || (v112 = v217, swift_beginAccess(), *(v112 + 144) == 1)) && v246[v205] == 2 && *(v6 + v208) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_23AA11BB0;
      sub_23AA0C414();
      *(v113 + 32) = MEMORY[0x23EE8EEA0](*&v246[OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions]);
      (*(v225 + 104))(v224, *MEMORY[0x277CDADC8], v227.i64[0]);
      sub_23AA0C4B4();
      v114 = v226;
      sub_23AA0C5D4();
      v115 = v236;
      sub_23AA0C9C4();
      v116 = v235.i64[0];
      sub_23AA0C9E4();

      (*(v237 + 8))(v115, v238);
      (*(v228.i64[0] + 8))(v114, v116);
    }

    else
    {
      v117 = v236;
      sub_23AA0C9C4();
      sub_23AA0C9F4();

      (*(v237 + 8))(v117, v238);
    }

    v5 = 0;
LABEL_69:
    type metadata accessor for ScanEntity(0);
    sub_23AA0C254();
    sub_23AA0C294();
    v43 = *(v6 + qword_27DFC0640);
    if (v43)
    {
      sub_23AA0CA94();
    }

    v36 = &unk_27DFC0000;
    if (dword_27DFC06F8)
    {
      if (qword_27DFAE458 == -1)
      {
LABEL_73:
        v118 = qword_27DFC0700;
        if (qword_27DFC0700)
        {
          if (*(qword_27DFC0700 + 24) == 1)
          {
            swift_beginAccess();
            v119 = *(v118 + 16);

            sub_23A94ED3C(v6, v119);
            v121 = v120;

            if (v121)
            {
              if ((sub_23AA0CA84() & 1) == 0)
              {
                sub_23AA0CA94();
              }
            }
          }
        }

        goto LABEL_79;
      }

LABEL_172:
      swift_once();
      goto LABEL_73;
    }

LABEL_79:
    if ((!v43 || (sub_23AA0CA84() & 1) == 0) && ((v36[1784] & 1) == 0 || *(v6 + v208) != 1))
    {
      goto LABEL_88;
    }

    v222.i64[0] = v69;
    v122 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
    v123 = v246;
    swift_beginAccess();
    v124 = v123 + v122;
    v125 = v240.i64[0];
    sub_23A8D5194(v124, v240.i64[0], &unk_27DFAF030, &qword_23AA11B48);
    v126 = type metadata accessor for AnimationGraph(0);
    v127 = *(v126 - 8);
    v128 = *(v127 + 48);
    v129 = (v127 + 48);
    if (v128(v125, 1, v126) == 1)
    {
      v130 = v125;
LABEL_87:
      sub_23A8D50D0(v130, &unk_27DFAF030, &qword_23AA11B48);
      goto LABEL_88;
    }

    v237 = *(v125 + 16);
    sub_23A910618(v125);
    v131 = &v246[v122];
    v132 = v239.i64[0];
    sub_23A8D5194(v131, v239.i64[0], &unk_27DFAF030, &qword_23AA11B48);
    v243 = v128;
    if (v128(v132, 1, v126) == 1)
    {
      v130 = v132;
      goto LABEL_87;
    }

    v241 = v129;
    v242 = v126;
    sub_23A93DDA4();
    v225 = v133;
    v134 = sub_23A910618(v132);
    v135 = v246;
    *v255.columns[0].i64 = MEMORY[0x23EE8FF80](v134, *&v246[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition], *&v246[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation], v206);
    v256 = __invert_f4(v255);
    v235 = v256.columns[0];
    v228 = v256.columns[2];
    v229 = v256.columns[1];
    v227 = v256.columns[3];
    v36 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;

    v137 = sub_23A8DC460(v136);

    v138 = *(v137 + 16);

    v226 = v43;
    if (v138)
    {

      v140 = sub_23A8DC460(v139);

      v141 = *(v140 + 16);
      if (v141)
      {
        v250[0] = MEMORY[0x277D84F90];
        sub_23A975DC0(0, v141, 0);
        v143 = v250[0];
        v144 = *(v250[0] + 16);
        v145 = 32;
        v146 = v235;
        v148 = v228;
        v147 = v229;
        v149 = v227;
        do
        {
          v150 = *(v140 + v145);
          v250[0] = v143;
          v151 = v143[1].u64[1];
          v36 = (v144 + 1);
          if (v144 >= v151 >> 1)
          {
            v239 = v150;
            v240 = v142;
            sub_23A975DC0((v151 > 1), v144 + 1, 1);
            v150 = v239;
            v142.i32[3] = v240.i32[3];
            v149 = v227;
            v148 = v228;
            v147 = v229;
            v146 = v235;
            v143 = v250[0];
          }

          v152 = vaddq_f32(v149, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v146, v150.f32[0]), v147, *v150.f32, 1), v148, v150, 2));
          v152.i32[3] = v142.i32[3];
          v143[1].i64[0] = v36;
          v143[v144 + 2] = v152;
          v145 += 16;
          ++v144;
          v142 = v152;
          --v141;
        }

        while (v141);
      }

      else
      {

        v143 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      sub_23A9BAE80(*(v135 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
      v143 = v153;
    }

    v6 = *(v222.i64[0] + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childOpenings);
    v240.i64[0] = v6 & 0xFFFFFFFFFFFFFF8;
    v43 = v6 >> 62 ? sub_23AA0D7F4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v238 = v143;
    v223.i64[0] = v5;
    if (v43)
    {
      v69 = 0;
      v239.i64[0] = v6 & 0xC000000000000001;
      v71 = MEMORY[0x277D84F90];
      v5 = &unk_27DFAF030;
      do
      {
        v236 = v71;
        v71 = v69;
        while (1)
        {
          if (v239.i64[0])
          {
            v36 = MEMORY[0x23EE90360](v71, v6);
            v69 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_160;
            }
          }

          else
          {
            if (v71 >= *(v240.i64[0] + 16))
            {
              goto LABEL_161;
            }

            v36 = *(v6 + 8 * v71 + 32);

            v69 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }
          }

          v154 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
          swift_beginAccess();
          v155 = &v36[v154];
          v156 = v245;
          sub_23A8D5194(v155, v245, &unk_27DFAF030, &qword_23AA11B48);
          if ((v243)(v156, 1, v242) != 1)
          {
            break;
          }

          sub_23A8D50D0(v156, &unk_27DFAF030, &qword_23AA11B48);
          ++v71;
          if (v69 == v43)
          {
            v71 = v236;
            goto LABEL_121;
          }
        }

        *v157.i64 = MEMORY[0x23EE8FF80](*&v36[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition], *&v36[OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation], v206);
        sub_23A93DF80(v238, v157, v158, v159, v160, v235, v229, v228, v227);
        v224 = v161;

        sub_23A910618(v156);
        v162 = v236;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_23A9391BC(0, v162[2] + 1, 1, v162);
        }

        v163 = v162;
        v164 = v162[2];
        v165 = v163;
        v166 = v163[3];
        v36 = (v164 + 1);
        if (v164 >= v166 >> 1)
        {
          v165 = sub_23A9391BC((v166 > 1), v164 + 1, 1, v165);
        }

        v165[2] = v36;
        v167 = &v165[v164];
        v71 = v165;
        v167[4] = v224;
      }

      while (v69 != v43);
    }

    else
    {
      v71 = MEMORY[0x277D84F90];
    }

LABEL_121:

    v36 = *(v71 + 16);
    if (!v36)
    {
      break;
    }

    v69 = 0;
    v245 = (v71 + 32);
    v168 = MEMORY[0x277D84F90];
    while (v69 < *(v71 + 16))
    {
      v43 = v71;
      v169 = v245[v69];
      v71 = *(v169 + 16);
      v6 = v168[2];
      v5 = v6 + v71;
      if (__OFADD__(v6, v71))
      {
        goto LABEL_163;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v5 > v168[3] >> 1)
      {
        if (v6 <= v5)
        {
          v171 = v6 + v71;
        }

        else
        {
          v171 = v6;
        }

        v168 = sub_23A939084(isUniquelyReferenced_nonNull_native, v171, 1, v168);
      }

      v6 = v247;
      if (*(v169 + 16))
      {
        v5 = (v168[3] >> 1) - v168[2];
        type metadata accessor for LineAnimation(0);
        if (v5 < v71)
        {
          __break(1u);
          goto LABEL_169;
        }

        swift_arrayInitWithCopy();

        v6 = v247;
        if (v71)
        {
          v172 = v168[2];
          v173 = __OFADD__(v172, v71);
          v174 = v172 + v71;
          if (v173)
          {
            __break(1u);
            goto LABEL_171;
          }

          v168[2] = v174;
        }
      }

      else
      {

        if (v71)
        {
          goto LABEL_164;
        }
      }

      ++v69;
      v71 = v43;
      if (v36 == v69)
      {
        goto LABEL_139;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    ;
  }

  v168 = MEMORY[0x277D84F90];
  v6 = v247;
LABEL_139:

  v43 = *(v222.i64[0] + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects);
  if (v43 >> 62)
  {
    v240.i64[0] = v43 & 0xFFFFFFFFFFFFFF8;
    v175 = sub_23AA0D7F4();
    v236 = v168;
    if (v175)
    {
      goto LABEL_141;
    }

    goto LABEL_175;
  }

  v240.i64[0] = v43 & 0xFFFFFFFFFFFFFF8;
  v175 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v236 = v168;
  if (!v175)
  {
LABEL_175:
    v245 = MEMORY[0x277D84F90];
    goto LABEL_176;
  }

LABEL_141:
  v69 = 0;
  v239.i64[0] = v43 & 0xC000000000000001;
  v245 = MEMORY[0x277D84F90];
  v5 = &qword_23AA11B48;
  v238 = v175;
  do
  {
    v71 = v69;
    while (1)
    {
      if (v239.i64[0])
      {
        v36 = MEMORY[0x23EE90360](v71, v43);
        v69 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_165;
        }
      }

      else
      {
        if (v71 >= *(v240.i64[0] + 16))
        {
          goto LABEL_166;
        }

        v36 = *(v43 + 8 * v71 + 32);

        v69 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_165;
        }
      }

      v176 = sub_23A901C30(v36[OBJC_IVAR____TtC8RoomPlan8ScanItem_category]);
      v177 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      swift_beginAccess();
      v178 = &v36[v177];
      v179 = v244;
      sub_23A8D5194(v178, v244, &unk_27DFAF030, &qword_23AA11B48);
      if ((v243)(v179, 1, v242) != 1)
      {
        break;
      }

      sub_23A8D50D0(v179, &unk_27DFAF030, &qword_23AA11B48);
      ++v71;
      v6 = v247;
      if (v69 == v238)
      {
        goto LABEL_176;
      }
    }

    v180 = sub_23A93E81C(v36, v246, v176);

    sub_23A910618(v179);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_23A9391BC(0, v245[2] + 1, 1, v245);
    }

    v182 = v245[2];
    v181 = v245[3];
    v36 = (v182 + 1);
    if (v182 >= v181 >> 1)
    {
      v245 = sub_23A9391BC((v181 > 1), v182 + 1, 1, v245);
    }

    v183 = v245;
    v245[2] = v36;
    v183[v182 + 4] = v180;
    v6 = v247;
  }

  while (v69 != v238);
LABEL_176:
  v185 = v245;
  if (v245[2])
  {
    v186 = v245[2];
    v187 = 0;
    v244 = v245 + 4;
    v188 = MEMORY[0x277D84F90];
    v189 = v223.i64[0];
    while (v187 < v185[2])
    {
      v190 = v189;
      v191 = v244[v187];
      v192 = *(v191 + 16);
      v189 = v188[2];
      v6 = v189 + v192;
      if (__OFADD__(v189, v192))
      {
        goto LABEL_204;
      }

      v193 = swift_isUniquelyReferenced_nonNull_native();
      if (!v193 || v6 > v188[3] >> 1)
      {
        if (v189 <= v6)
        {
          v194 = v189 + v192;
        }

        else
        {
          v194 = v189;
        }

        v188 = sub_23A939084(v193, v194, 1, v188);
      }

      v189 = v190;
      v6 = v247;
      if (*(v191 + 16))
      {
        v189 = v188[2];
        v6 = (v188[3] >> 1) - v189;
        type metadata accessor for LineAnimation(0);
        if (v6 < v192)
        {
          goto LABEL_206;
        }

        swift_arrayInitWithCopy();

        v189 = v190;
        v6 = v247;
        if (v192)
        {
          v195 = v188[2];
          v173 = __OFADD__(v195, v192);
          v196 = v195 + v192;
          if (v173)
          {
            goto LABEL_207;
          }

          v188[2] = v196;
        }
      }

      else
      {

        if (v192)
        {
          goto LABEL_205;
        }
      }

      ++v187;
      v185 = v245;
      if (v186 == v187)
      {
        goto LABEL_194;
      }
    }

    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    swift_once();
  }

  else
  {
    v188 = MEMORY[0x277D84F90];
    v189 = v223.i64[0];
LABEL_194:

    v254 = v225;
    sub_23A912360(v236);
    sub_23A912360(v188);
    v188 = v254;
    if (qword_27DFAE458 != -1)
    {
      goto LABEL_208;
    }
  }

  v197 = qword_27DFC0700;
  v198 = v234;
  v199 = v226;
  v200 = v237;
  if (qword_27DFC0700)
  {
    v230(v234, &v246[OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid], v248);
    swift_beginAccess();
    v201 = *(v197 + 16);

    sub_23A94ED3C(v6, v201);
    v203 = v202;

    if (v203)
    {
      sub_23A94FC90(v188);
    }

    v220(v198, v248);
  }

  if (v199)
  {
    v249 = 0;
    sub_23A941308(v188, v200, v233, v232 & 1);
    if (v189)
    {

      return;
    }
  }

LABEL_88:
  if (*(v6 + qword_27DFAEEF8))
  {
    REMeshComponentSetBoundsMargin();
  }
}

uint64_t sub_23A904938(__n128 a1)
{
  if (*(v1 + qword_27DFC0640))
  {
    type metadata accessor for ScanEntity(0);

    sub_23AA0C1F4();
  }

  if (qword_27DFAE458 != -1)
  {
    swift_once();
  }

  if (qword_27DFC0700)
  {
    swift_beginAccess();
    sub_23A9058E4(v1, sub_23A9EDC7C, sub_23A90B8A4, sub_23A90CE28, sub_23A905BDC);
    swift_endAccess();
  }

  v2 = sub_23AA0CAC4();
  v3 = qword_27DFC0620;
  v4 = sub_23AA0C0E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v2 + qword_27DFC0628));

  return v2;
}

uint64_t sub_23A904B7C(void *a1, char a2)
{
  v4 = v3;
  v5 = v2;
  v65 = a1;
  v58 = sub_23AA0C184();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = sub_23AA0C2E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF008, &qword_23AA128F8);
  MEMORY[0x28223BE20](v15 - 8);
  v61 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v54 - v18;
  MEMORY[0x28223BE20](v19);
  v60 = &v54 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v64 = *(v5 + qword_27DFAEEE0);
  v23 = *(v12 + 56);
  v71 = &v54 - v24;
  v67 = v11;
  v62 = v23;
  v23(v22);
  if ((a2 & 1) == 0)
  {
    v31 = v67;
LABEL_9:
    v32 = v71;
    goto LABEL_10;
  }

  v63 = v3;
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  sub_23A996AE0(v65, v64);
  v25 = qword_27DFC0628;
  swift_beginAccess();
  sub_23A8CA9D8(v5 + v25, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
  type metadata accessor for MeshUpdateScanMaterial(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = v67;
    (*(v12 + 8))(v14, v67);
    v4 = v63;
    goto LABEL_9;
  }

  v55 = v12;

  v54 = v5;
  v26 = *(v5 + qword_27DFAEEE8);
  v27 = v67;
  sub_23AA0CDC4();
  v28 = sub_23AA0CB64();
  (*(v59 + 8))(v10, v8);
  v29 = v63;
  v26(&v68, v28);
  v4 = v29;
  if (v29)
  {
    (*(v55 + 8))(v14, v27);
    v30 = v71;
    return sub_23A8D50D0(v30, &qword_27DFAF008, &qword_23AA128F8);
  }

  v5 = v54;
  v32 = v71;
  if (v69)
  {
    sub_23A8D50D0(v71, &qword_27DFAF008, &qword_23AA128F8);
    sub_23A8CAA3C(&v68, v70);
    v12 = v55;
    v31 = v67;
    (*(v55 + 32))(v32, v14, v67);
    (v62)(v32, 0, 1, v31);
    swift_beginAccess();
    __swift_assign_boxed_opaque_existential_1((v5 + v25), v70, v53);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v70);
    *(v5 + qword_27DFAEEF8) = 0;
  }

  else
  {
    v12 = v55;
    v31 = v67;
    (*(v55 + 8))(v14, v67);
    sub_23A8D50D0(&v68, &qword_27DFAF018, &qword_23AA12900);
  }

LABEL_10:
  v33 = v66;
  if (*(v5 + qword_27DFAEEF8))
  {
    v30 = v32;
    return sub_23A8D50D0(v30, &qword_27DFAF008, &qword_23AA128F8);
  }

  v59 = qword_27DFAEEF8;
  v63 = v4;
  sub_23A8D5194(v32, v66, &qword_27DFAF008, &qword_23AA128F8);
  v35 = *(v12 + 48);
  if (v35(v33, 1, v31) == 1)
  {
    if (qword_27DFAE490 != -1)
    {
      swift_once();
    }

    v36 = v60;
    sub_23A996AE0(v65, v64);
    v32 = v71;
    sub_23A8D50D0(v71, &qword_27DFAF008, &qword_23AA128F8);
    v37 = v66;
    if (v35(v66, 1, v31) != 1)
    {
      sub_23A8D50D0(v37, &qword_27DFAF008, &qword_23AA128F8);
    }
  }

  else
  {
    sub_23A8D50D0(v32, &qword_27DFAF008, &qword_23AA128F8);
    v38 = v33;
    v36 = v60;
    (*(v12 + 32))(v60, v38, v31);
  }

  (v62)(v36, 0, 1, v31);
  sub_23A9101F0(v36, v32);
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  v39 = v61;
  sub_23A8D5194(v32, v61, &qword_27DFAF008, &qword_23AA128F8);
  result = (v35)(v39, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = sub_23A910260(&qword_27DFAE8B0, type metadata accessor for ScanEntity, &unk_23AA12800);
    v41 = (v5 + qword_27DFC0628);
    swift_beginAccess();
    v42 = v41[3];
    v43 = v41[4];
    v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v45 = v5;
    v46 = *(v42 - 8);
    v47 = MEMORY[0x28223BE20](v44);
    v49 = &v54 - v48;
    (*(v46 + 16))(&v54 - v48, v47);
    (*(v43 + 8))(v70, v42, v43);
    (*(v46 + 8))(v49, v42);
    v50 = v63;
    sub_23A998954(v45, v40, v39, v70);
    sub_23A8D50D0(v70, &qword_27DFAF780, &qword_23AA14670);
    if (v50)
    {
      sub_23A8D50D0(v71, &qword_27DFAF008, &qword_23AA128F8);
      return (*(v12 + 8))(v39, v67);
    }

    else
    {
      (*(v12 + 8))(v39, v67);
      v51 = v56;
      sub_23AA0C9A4();
      sub_23AA0C114();
      (*(v57 + 8))(v51, v58);
      REMeshComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      result = sub_23A8D50D0(v71, &qword_27DFAF008, &qword_23AA128F8);
      *(v45 + v59) = ComponentByClass;
    }
  }

  return result;
}

double sub_23A905558()
{
  v1 = qword_27DFC0620;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_27DFC0628));

  return result;
}

uint64_t sub_23A905630@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DFC0620;
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A9056A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23A9EDD28(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A90F618(type metadata accessor for ScanItemStrut, &qword_27DFAEFD8, &qword_23AA128C8, type metadata accessor for ScanItemStrut);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_23AA0C0E4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ScanItemStrut(0);
    v20 = *(v13 - 8);
    sub_23A910188(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ScanItemStrut);
    sub_23A90C644(v7, v9, type metadata accessor for ScanItemStrut);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ScanItemStrut(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_23A9058E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t (*)(uint64_t), void (*)(uint64_t, uint64_t, __n128), uint64_t, uint64_t (*)(uint64_t, uint64_t)), void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v10 = *v8;
  if ((*v8 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    v20 = a2(a1, a2, a3, a4, a5);
    if (v21)
    {
      v10 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v8;
      v25 = *v8;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v19 = *(*(v23 + 56) + 8 * v10);
        a3(v10, v23);
        *v8 = v23;
        return v19;
      }

LABEL_14:
      (v15)();
      v23 = v25;
      goto LABEL_10;
    }

    return 0;
  }

  if (v10 < 0)
  {
    v12 = *v8;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = sub_23AA0D9C4();

  if (!v13)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v14 = sub_23AA0D7F4();
  v15 = a5(v12, v14);

  v16 = (a2)(a1);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(*(v15 + 56) + 8 * v16);
  a3(v16, v15);

  *v8 = v15;
  return v19;
}

uint64_t sub_23A905A70@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_23A9EE264(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A90FBEC();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_23AA0BFB4();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a1, v10 + *(v18 + 72) * v7, v11);
    sub_23A90C9AC(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a1;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_23AA0BFB4();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a1;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_23A905BDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF20, &qword_23AA12838);
    v2 = sub_23AA0DA34();
    v19 = v2;
    sub_23AA0D9A4();
    v3 = sub_23AA0D9D4();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for ScanEntity(0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ScanEntityDebugUtility();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_23A905F94(v12 + 1, 1);
        }

        v2 = v19;
        sub_23A910260(&qword_27DFAEF28, type metadata accessor for ScanEntity, MEMORY[0x277CDB1D0]);
        result = sub_23AA0D054();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_23AA0D9D4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_23A905E4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA8, &qword_23AA128A8);
    v2 = sub_23AA0DA34();
    v10 = v2;
    sub_23AA0D9A4();
    v3 = sub_23AA0D9D4();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PixelBufferFormat();
      v5 = v4;
      do
      {
        v8 = v5;
        swift_dynamicCast();
        type metadata accessor for CVPixelBufferPool(0);
        swift_dynamicCast();
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_23A909D40(v6 + 1, 1);
        }

        v2 = v10;
        sub_23A90CD54(v9, v8, v10);
        v5 = sub_23AA0D9D4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_23A905F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF20, &qword_23AA12838);
  v32 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
      }

      type metadata accessor for ScanEntity(0);
      sub_23A910260(&qword_27DFAEF28, type metadata accessor for ScanEntity, MEMORY[0x277CDB1D0]);
      v22 = sub_23AA0D054();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v31;
      v12 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A9062B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  v14 = sub_23AA0DA24();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_23AA0D054();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_23A9066CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF60, &qword_23AA12868);
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {

        v21 = v32;
        v22 = *(&v32 + 1);
      }

      sub_23AA0DD14();
      sub_23AA0C0B4();
      v23 = sub_23AA0DD54();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A90697C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF58, &qword_23AA12860);
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_23AA0DD14();
      sub_23AA0C0B4();
      v22 = sub_23AA0DD54();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A906C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF090, &unk_23AA1B300);
  v6 = sub_23AA0DA24();
  v8 = v6;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v6 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      *&v7 = *(*(v5 + 48) + 8 * v20);
      v31 = v7;
      v21 = *(*(v5 + 56) + 8 * v20);
      if ((v4 & 1) == 0)
      {
      }

      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      v22 = sub_23AA0DD54();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(&v7 + 1) = *(&v31 + 1);
      *(*(v8 + 48) + 8 * v16) = v31;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
}

void sub_23A906EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF80, &qword_23AA12888);
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *(v22 + 8);
      v24 = *v22;
      v25 = sub_23AA0DD04();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_23A907164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEFB0, &qword_23AA128B0);
  v37 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v37 & 1) == 0)
      {
      }

      sub_23AA0DD14();
      v22 = *(v20 + 48);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + 32;
        do
        {
          v24 += 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v25 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v25);
          --v23;
        }

        while (v23);
      }

      v26 = sub_23AA0DD54();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v5 = v36;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v5 = v36;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v12 = v38;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

void sub_23A907454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC0, &qword_23AA128B8);
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_23AA0DD04();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A9076C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF040, &qword_23AA12908);
  v6 = sub_23AA0DA24();
  v8 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v6 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      *&v7 = *(*(v5 + 48) + 8 * v20);
      v32 = v7;
      v21 = *(*(v5 + 56) + 4 * v20);
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      v22 = sub_23AA0DD54();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(&v7 + 1) = *(&v32 + 1);
      *(*(v8 + 48) + 8 * v16) = v32;
      *(*(v8 + 56) + 4 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v8;
}

void sub_23A907978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA0, &qword_23AA128A0);
  v40 = v4;
  v10 = sub_23AA0DA24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_23AA0D054();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_23A907D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF70, &qword_23AA12878);
  v43 = v4;
  v10 = sub_23AA0DA24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = v10 + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v22 = (v16 - 1) & v16;
LABEL_15:
      v25 = v21 | (v12 << 6);
      v46 = v22;
      v26 = *(v6 + 72);
      v27 = *(v9 + 48) + v26 * v25;
      if (v43)
      {
        (*v44)(v47, v27, v5);
      }

      else
      {
        (*v40)(v47, v27, v5);
      }

      v28 = *(v9 + 56) + 32 * v25;
      v29 = *(v28 + 16);
      v45 = *v28;
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_23AA0D054();
      v31 = -1 << *(v11 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v44)((*(v11 + 48) + v26 * v19), v47, v5);
      v20 = *(v11 + 56) + 32 * v19;
      *v20 = v45;
      *(v20 + 16) = v29;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
      v16 = v46;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_23A908144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_23AA0DA24();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = sub_23AA0DD04();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_23A9083AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF078, &qword_23AA1B2A0);
  v37 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v39 = *(*(v5 + 48) + v20);
      v21 = *(v5 + 56) + 40 * v20;
      v22 = *v21;
      v38 = *(v21 + 8);
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      v25 = *(v21 + 32);
      if ((v37 & 1) == 0)
      {
      }

      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v39);
      v26 = sub_23AA0DD54();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v39;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v22;
      *(v16 + 8) = v38;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(v16 + 32) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A908698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF088, &qword_23AA12938);
  v31 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v20);
      v22 = sub_23AA0DD54();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A90893C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1490, &qword_23AA12870);
  v34 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_23A8EF9F0(v24, v35);
      }

      else
      {
        sub_23A9100C4(v24, v35);
      }

      sub_23AA0DD14();
      sub_23AA0D1D4();
      v25 = sub_23AA0DD54();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_23A8EF9F0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_23A908C30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF8, &qword_23AA128E8);
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v20);
      v22 = sub_23AA0DD54();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_23A908EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF0, &qword_23AA128E0);
  v45 = v4;
  v10 = sub_23AA0DA24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v50 = v8;
    v41 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v9;
    v44 = v6;
    v46 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v49 = *(v44 + 72);
      v27 = v26 + v49 * v25;
      if (v45)
      {
        (*v46)(v50, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v47 = v28[1];
        v48 = v29;
      }

      else
      {
        (*v42)(v50, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v47 = v30[1];
        v48 = v31;
      }

      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v32 = sub_23AA0D054();
      v33 = -1 << *(v11 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v46)((*(v11 + 48) + v49 * v19), v50, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v47;
      *v20 = v48;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_23A909298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE0, &qword_23AA128D0);
  v31 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_23AA0DD14();
      sub_23AA0D1D4();

      v22 = sub_23AA0DD54();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A9095E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23AA0BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC8, &qword_23AA128C0);
  v47 = v4;
  v10 = sub_23AA0DA24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v5;
    v17 = v15 & *(v9 + 64);
    v18 = (v14 + 63) >> 6;
    v45 = (v6 + 16);
    v46 = v6;
    v48 = (v6 + 32);
    v19 = v10 + 64;
    v52 = v16;
    v53 = v8;
    v20 = v6;
    while (v17)
    {
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v29 = v26 | (v12 << 6);
      v30 = *(v9 + 48);
      v51 = *(v20 + 72);
      v31 = v30 + v51 * v29;
      if (v47)
      {
        (*v48)(v53, v31, v52);
      }

      else
      {
        (*v45)(v53, v31, v52);
      }

      v32 = (*(v9 + 56) + 32 * v29);
      v33 = v32[1];
      v49 = *v32;
      v50 = v33;
      sub_23A910260(&qword_27DFAEFD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v34 = sub_23AA0D054();
      v35 = -1 << *(v11 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v22 = v46;
        v23 = v53;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v22 = v46;
      v23 = v53;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      (*v48)((*(v11 + 48) + v51 * v21), v23, v52);
      v24 = (*(v11 + 56) + 32 * v21);
      v25 = v50;
      *v24 = v49;
      v24[1] = v25;
      ++*(v11 + 16);
      v20 = v22;
    }

    v27 = v12;
    while (1)
    {
      v12 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v28 = v13[v12];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v17 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_23A9099C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_23AA0C0E4();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE8, &qword_23AA128D8);
  v43 = v4;
  v8 = sub_23AA0DA24();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_23AA0DD14();
      sub_23AA0D1D4();
      v29 = sub_23AA0DD54();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_23A909D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA8, &qword_23AA128A8);
  v35 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v35 & 1) == 0)
      {

        v22 = v21;
      }

      sub_23AA0DD14();
      v23 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v23);
      v24 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v24);
      v25 = sub_23AA0DD64();
      MEMORY[0x23EE907C0](v25);
      v26 = sub_23AA0DD54();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A909FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF90, &qword_23AA12898);
  v36 = v4;
  v6 = sub_23AA0DA24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_23AA0DD14();
      sub_23AA0D1D4();
      v26 = sub_23AA0DD54();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_23A90A2B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_23AA0DA24();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_23AA0DD14();
      sub_23AA0D1D4();
      v27 = sub_23AA0DD54();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_23A90A548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF50, &qword_23AA12858);
  v41 = v4;
  v10 = sub_23AA0DA24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v28 = sub_23AA0D054();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_23A90A944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v58 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v47 - v12;
  v13 = sub_23AA0C0E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v53 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = v10;
  v17 = v16;
  v18 = sub_23AA0DA24();
  v19 = v18;
  if (*(v16 + 16))
  {
    v56 = v13;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v47 = v6;
    v48 = (v14 + 16);
    v49 = v16;
    v50 = v14;
    v54 = (v14 + 32);
    v26 = v18 + 64;
    v27 = v53;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v55 = *(v50 + 72);
      v34 = v33 + v55 * v32;
      if (v52)
      {
        (*v54)(v27, v34, v56);
        v35 = *(v17 + 56);
        v36 = *(v51 + 72);
        sub_23A910188(v35 + v36 * v32, v57, v58);
      }

      else
      {
        (*v48)(v27, v34, v56);
        v37 = *(v17 + 56);
        v36 = *(v51 + 72);
        sub_23A910120(v37 + v36 * v32, v57, v58);
      }

      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v38 = sub_23AA0D054();
      v39 = -1 << *(v19 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v26 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v27 = v53;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v26 + 8 * v41);
          if (v45 != -1)
          {
            v28 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v28 = __clz(__rbit64((-1 << v40) & ~*(v26 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v27 = v53;
LABEL_7:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v54)((*(v19 + 48) + v55 * v28), v27, v56);
      sub_23A910188(v57, *(v19 + 56) + v36 * v28, v58);
      ++*(v19 + 16);
      v17 = v49;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_34;
    }

    v46 = 1 << *(v17 + 32);
    v9 = v47;
    if (v46 >= 64)
    {
      bzero(v21, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v46;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v9 = v19;
}

void sub_23A90ADF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1510, &qword_23AA12850);
  v40 = v4;
  v10 = sub_23AA0DA24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_23AA0D054();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_23A90B1D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_23AA0BFB4();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0A0, &qword_23AA12948);
  v40 = v4;
  v8 = sub_23AA0DA24();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v7;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v39 + 72);
      v26 = v23 + v25 * v22;
      if (v40)
      {
        (*v16)(v41, v26, v42);
      }

      else
      {
        (*v37)(v41, v26, v42);
      }

      sub_23AA0DD14();
      sub_23A9102A8(v43, v24);
      v27 = sub_23AA0DD54();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      (*v16)((*(v9 + 56) + v25 * v18), v41, v42);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_23A90B540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_23AA0BFB4();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF098, &qword_23AA12940);
  v40 = v4;
  v8 = sub_23AA0DA24();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v7;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v39 + 72);
      v26 = v23 + v25 * v22;
      if (v40)
      {
        (*v16)(v41, v26, v42);
      }

      else
      {
        (*v37)(v41, v26, v42);
      }

      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v24);
      v27 = sub_23AA0DD54();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      (*v16)((*(v9 + 56) + v25 * v18), v41, v42);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

uint64_t sub_23A90B8A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    type metadata accessor for ScanEntity(0);
    sub_23A910260(&qword_27DFAEF28, type metadata accessor for ScanEntity, MEMORY[0x277CDB1D0]);
    do
    {
      result = sub_23AA0D054();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 >= v8 && v3 >= v9)
        {
LABEL_15:
          v12 = *(a2 + 48);
          v13 = (v12 + 8 * v3);
          v14 = (v12 + 8 * v6);
          if (v3 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v9 >= v8 || v3 >= v9)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23A90BA78(int64_t a1, uint64_t a2)
{
  v38 = sub_23AA0C0E4();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_23AA0D784();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_23AA0D054();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_23A90BD98(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    v26 = v2;
    v27 = v4;
    do
    {
      v9 = v7;
      v10 = *(*(v2 + 48) + 8 * v6);
      sub_23AA0DD14();
      v11 = *(v10 + 48);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v11 + 32;

        do
        {
          v13 += 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v14 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v14);
          --v12;
        }

        while (v12);
      }

      else
      {
      }

      v15 = sub_23AA0DD54();

      v7 = v9;
      v16 = v15 & v9;
      if (v3 >= v8)
      {
        v2 = v26;
        v4 = v27;
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = v26;
        v4 = v27;
        if (v16 >= v8)
        {
          goto LABEL_15;
        }
      }

      if (v3 >= v16)
      {
LABEL_15:
        v17 = *(v2 + 48);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(v2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(v2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v25;
    ++*(v2 + 36);
  }
}

uint64_t sub_23A90BFA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_23AA0DD04();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23A90C114(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v9);
      result = sub_23AA0DD54();
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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

void sub_23A90C2A8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      sub_23AA0DD14();

      v9 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v9);
      v10 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v10);
      v11 = sub_23AA0DD64();
      MEMORY[0x23EE907C0](v11);
      v12 = sub_23AA0DD54();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_23A90C47C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      sub_23AA0DD14();

      sub_23AA0D1D4();
      v9 = sub_23AA0DD54();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

void sub_23A90C644(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = sub_23AA0D784();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v5);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_23AA0D054();
      (*v38)(v8, v5);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(v37(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

unint64_t sub_23A90C9AC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_23AA0DD14();

      sub_23A9102A8(v23, v9);

      result = sub_23AA0DD54();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_23AA0BFB4() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23A90CB84(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v9);
      result = sub_23AA0DD54();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_23AA0BFB4() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23A90CD54(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23AA0DD14();
  v6 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v6);
  v7 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v7);
  v8 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v8);
  sub_23AA0DD54();
  result = sub_23AA0D794();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + 8 * result) = a1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

void sub_23A90CE28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF20, &qword_23AA12838);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_23A90D004()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF60, &qword_23AA12868);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v20;

        v18 = v20;
        v19 = *(&v20 + 1);
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

void sub_23A90D19C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF090, &unk_23AA1B300);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_23A90D30C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF80, &qword_23AA12888);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 16 * v14;
      *v20 = v18;
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

void sub_23A90D480(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void sub_23A90D5CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC0, &qword_23AA128B8);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_23A90D728()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF040, &qword_23AA12908);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void sub_23A90D874()
{
  v1 = v0;
  v33 = sub_23AA0C0E4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA0, &qword_23AA128A0);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_23A90DAF4()
{
  v1 = v0;
  v32 = sub_23AA0C0E4();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF70, &qword_23AA12878);
  v3 = *v0;
  v4 = sub_23AA0DA14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v18 *= 32;
        v23 = *(v3 + 56) + v18;
        v35 = *v23;
        v24 = *(v23 + 16);
        v25 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        v26 = *(v25 + 56) + v18;
        *v26 = v35;
        *(v26 + 16) = v24;
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}
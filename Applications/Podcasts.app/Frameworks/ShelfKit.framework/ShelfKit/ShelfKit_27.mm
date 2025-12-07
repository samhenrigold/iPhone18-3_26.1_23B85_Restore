uint64_t sub_2DDF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10, qword_3FA7E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2DDFD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10, qword_3FA7E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2DE088(uint64_t a1)
{
  sub_178DA4();
  if (v1 <= 0x3F)
  {
    sub_94C68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2DE128()
{
  result = qword_500030;
  if (!qword_500030)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF90, &qword_416BC0);
    v4[0] = sub_2DE1E0();
    v4[1] = sub_886BC(&qword_500040, &qword_4FFF88, &qword_416BB8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500030);
  }

  return result;
}

unint64_t sub_2DE1E0()
{
  result = qword_500038;
  if (!qword_500038)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF80, &qword_416BB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFEE8, &qword_416B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFEE0, &qword_416B58);
    sub_3EA5E4();
    v5[4] = sub_886BC(&qword_4FFF78, &qword_4FFEE0, &qword_416B58, &protocol conformance descriptor for List<A, B>);
    v5[5] = &protocol witness table for PlainListStyle;
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_886BC(&qword_500040, &qword_4FFF88, &qword_416BB8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_500038);
  }

  return result;
}

uint64_t sub_2DE364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500048, &qword_416C48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2DE3D4()
{
  result = qword_500058;
  if (!qword_500058)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500050, &unk_416C50);
    v4[0] = sub_2DE48C();
    v4[1] = sub_886BC(&qword_500070, &qword_500078, qword_416C60, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500058);
  }

  return result;
}

unint64_t sub_2DE48C()
{
  result = qword_500060;
  if (!qword_500060)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500048, &qword_416C48);
    v4[0] = sub_2DE518();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500060);
  }

  return result;
}

unint64_t sub_2DE518()
{
  result = qword_500068;
  if (!qword_500068)
  {
    v3 = sub_3E6BA4();
    result = swift_getWitnessTable(&protocol conformance descriptor for BackdropLayerView, v3, v0, v1);
    atomic_store(result, &qword_500068);
  }

  return result;
}

uint64_t sub_2DE578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEF8, &qword_416B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2DE5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkClearSwipeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DE644()
{
  v1 = (type metadata accessor for LinkClearSwipeAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08, &qword_3FA780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_3EA6F4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2DE768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkClearSwipeAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DE844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PodcastsReferenceLink(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2DE914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PodcastsReferenceLink(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for PodcastsReferenceLinkView(uint64_t a1)
{
  result = qword_5000D8;
  if (!qword_5000D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2DEA1C(uint64_t a1)
{
  type metadata accessor for PodcastsReferenceLink(319);
  if (v1 <= 0x3F)
  {
    sub_23FD50(319);
    if (v2 <= 0x3F)
    {
      sub_2DC100();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2DEAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PodcastsReferenceLink(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E015C(v1, v6, type metadata accessor for PodcastsReferenceLink);
  sub_2EB56C(v6, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500118, &qword_416CF0);
  sub_2DEC7C(a1 + v7[17]);
  sub_2DF258(a1 + v7[18]);
  v8 = v7[19];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0, &qword_4179A0);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v7[20];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  sub_FBD0(v1 + *(v4 + 68), v14, &qword_4F00B0, &qword_3FB1A8);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500120, &qword_416D60) + 36);
  v11 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v11;
  *(v10 + 32) = v15;
  *(v10 + 40) = swift_getKeyPath();
  *(v10 + 48) = 0;
  result = swift_getKeyPath();
  *(v10 + 56) = result;
  *(v10 + 64) = 0;
  return result;
}

uint64_t sub_2DEC7C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = sub_3EA7F4();
  __chkstk_darwin(v46);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_3E7784();
  __chkstk_darwin(v4 - 8);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EAAF4();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEB0, &qword_416B00);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEB8, &qword_416B08);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEC0, &unk_416B10);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  if (*(v1 + 16) == 1)
  {
    v21 = type metadata accessor for PodcastsReferenceLink(0);
    sub_2E015C(v1 + *(v21 + 24), v20, &type metadata accessor for ArtworkModel);
    v22 = &v20[*(v18 + 40)];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    v23 = &qword_4FFEC0;
    v24 = &unk_416B10;
    sub_FBD0(v20, v17, &qword_4FFEC0, &unk_416B10);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FFEC8, &qword_4FFEC0, &unk_416B10, byte_4170A0);
    sub_886BC(&qword_4FFED0, &qword_4FFEB0, &qword_416B00, byte_4170A0);
    sub_3EADE4();
    v25 = v20;
  }

  else
  {
    v41 = v15;
    v42 = v18;
    v26 = v1 + *(type metadata accessor for PodcastsReferenceLinkView(0) + 24);
    v27 = *v26;
    if (*(v26 + 8) == 1)
    {
      v28 = *v26;
      v48 = *v26;
    }

    else
    {

      sub_3ED9E4();
      v29 = sub_3EB034();
      v40 = v9;
      v30 = v29;
      sub_3E9754();

      v9 = v40;
      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_23968C(v27, 0);
      (*(v43 + 8))(v8, v44);
      v28 = v48;
    }

    v31 = type metadata accessor for PodcastsReferenceLink(0);
    v32 = v45;
    sub_2E015C(v1 + *(v31 + 24), v45, &type metadata accessor for ArtworkModel);
    v33 = *(v46 + 20);
    v34 = enum case for RoundedCornerStyle.continuous(_:);
    v35 = sub_3EABE4();
    (*(*(v35 - 8) + 104))(v3 + v33, v34, v35);
    v36 = 5.0;
    if (v28 < 2)
    {
      v36 = 6.0;
    }

    *v3 = v36;
    v3[1] = v36;
    sub_2DCB48(v32, v11, &type metadata accessor for ArtworkModel);
    sub_2DCB48(v3, &v11[*(v9 + 36)], &type metadata accessor for RoundedRectangle);
    v37 = &v11[*(v9 + 40)];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    sub_2DCBB0(v11, v14);
    v23 = &qword_4FFEB0;
    v24 = &qword_416B00;
    sub_FBD0(v14, v17, &qword_4FFEB0, &qword_416B00);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FFEC8, &qword_4FFEC0, &unk_416B10, byte_4170A0);
    sub_886BC(&qword_4FFED0, &qword_4FFEB0, &qword_416B00, byte_4170A0);
    sub_3EADE4();
    v25 = v14;
  }

  return sub_FCF8(v25, v23, v24);
}

uint64_t sub_2DF258@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7 == 3)
  {
    v12 = *(v1 + *(type metadata accessor for PodcastsReferenceLinkView(0) + 20) + 8);

    if ((v12 & 1) == 0)
    {
      sub_3ED9E4();
      v13 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v3);
    }

    v15 = *(v1 + 24);
    v14 = *(v1 + 32);
    v16 = *(v1 + 40);
    if (*(v1 + *(type metadata accessor for PodcastsReferenceLink(0) + 44)) == 2)
    {
      v17 = 0;
    }

    else
    {
      v30 = sub_3E79D4();
      v32 = v31;
      v17 = 1;
      if (v30 != sub_3E79D4() || v32 != v33)
      {
        v17 = sub_3EE804();
      }
    }

    KeyPath = swift_getKeyPath();
    v56 = 0;
    v40 = swift_getKeyPath();
    v54 = 0;
    sub_3E8DC4();
    sub_3DE90(v15, v14, v16);
    sub_3EC394();
    v70 = 0;
    v71 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 2;
    if (sub_3E8DB4())
    {
      v41 = a1;
      v35 = v17 & 1;
      sub_3E8A44();
      sub_2E0064(&qword_4F1850, &type metadata accessor for PodcastStateMachine, &protocol conformance descriptor for PodcastStateMachine);
      v36 = sub_3EA5B4();
      v38 = v37;

      *&v42 = v15;
      *(&v42 + 1) = v14;
      LOBYTE(v43) = v16;
      *(&v43 + 1) = *v57;
      DWORD1(v43) = *&v57[3];
      *(&v43 + 1) = KeyPath;
      LOBYTE(v44) = v56;
      *(&v44 + 1) = *v55;
      DWORD1(v44) = *&v55[3];
      *(&v44 + 1) = v40;
      LOBYTE(v45) = v54;
      BYTE1(v45) = v35;
      WORD3(v45) = v53;
      *(&v45 + 2) = v52;
      *(&v45 + 1) = v36;
      v46 = v38;
      v51 = v38;
      v49 = v44;
      v50 = v45;
      v47 = v42;
      v48 = v43;
      *&v63 = v15;
      *(&v63 + 1) = v14;
      LOBYTE(v64) = v16;
      DWORD1(v64) = *&v57[3];
      *(&v64 + 1) = *v57;
      *(&v64 + 1) = KeyPath;
      LOBYTE(v65) = v56;
      DWORD1(v65) = *&v55[3];
      *(&v65 + 1) = *v55;
      *(&v65 + 1) = v40;
      LOBYTE(v66) = v54;
      BYTE1(v66) = v35;
      WORD3(v66) = v53;
      *(&v66 + 2) = v52;
      *(&v66 + 1) = v36;
      v67 = v38;
      sub_2DFFB4(&v42, &v58);
      sub_2E0010(&v63);
      v59 = v48;
      v60 = v49;
      v61 = v50;
      v62 = v51;
      v58 = v47;
    }

    else
    {

      sub_3DEF8(v15, v14, v16);
      sub_23968C(KeyPath, v56);

      v62 = 0;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
    }

    v64 = v59;
    v65 = v60;
    v66 = v61;
    v67 = v62;
    v63 = v58;
    v68 = 1;
    sub_FBD0(&v58, &v47, &qword_500170, &qword_416DA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500140, &qword_416D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500170, &qword_416DA8);
    sub_2DFD84();
    sub_2DFEE4(&qword_500168, &qword_500170, &qword_416DA8, sub_2DFF60);
    sub_3EADE4();
    sub_FBD0(&v47, &v63, &qword_500128, &qword_416D90);
    v69 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500128, &qword_416D90);
    sub_2DFCCC();
    sub_3EADE4();
    sub_FCF8(&v58, &qword_500170, &qword_416DA8);
    v27 = &v47;
    v28 = &qword_500128;
    v29 = &qword_416D90;
    return sub_FCF8(v27, v28, v29);
  }

  if (v7 != 2)
  {
    v69 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500128, &qword_416D90);
    sub_2DFCCC();
    return sub_3EADE4();
  }

  v8 = type metadata accessor for PodcastsReferenceLinkView(0);
  v9 = v1 + *(v8 + 24);
  v10 = *v9;
  LODWORD(v9) = *(v9 + 8);
  v41 = a1;
  if (v9 != 1)
  {

    sub_3ED9E4();
    v19 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v10, 0);
    (*(v4 + 8))(v6, v3);
    if (v42 > 1u)
    {
      goto LABEL_5;
    }

LABEL_12:
    v20 = v1 + *(v8 + 20);
    v21 = *v20;
    v22 = *(v20 + 8);

    if ((v22 & 1) == 0)
    {
      sub_3ED9E4();
      v23 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v3);
      v21 = v63;
    }

    v24 = *(v1 + 24);
    v25 = *(v1 + 32);
    v26 = *(v1 + 40);
    sub_3DE90(v24, v25, v26);
    sub_2E87A4(v21, v24, v25, v26, &v63);
    BYTE1(v67) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500150, &qword_416DA0);
    sub_2DFEE4(&qword_500148, &qword_500150, &qword_416DA0, sub_2DFE3C);
    sub_2DFE90();
    sub_3EADE4();
    goto LABEL_15;
  }

  LOBYTE(v42) = v10;
  if (v10 <= 1u)
  {
    goto LABEL_12;
  }

LABEL_5:
  *(&v48 + 1) = type metadata accessor for PodcastsReferenceLink(0);
  *&v49 = sub_2E0064(&qword_500180, type metadata accessor for PodcastsReferenceLink, protocol conformance descriptor for PodcastsReferenceLink);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v47);
  sub_2E015C(v1, boxed_opaque_existential_0Tm, type metadata accessor for PodcastsReferenceLink);
  LOBYTE(v58) = 0;
  sub_3EB8B4();
  BYTE8(v49) = v63;
  *&v50 = *(&v63 + 1);
  *(&v50 + 1) = swift_getKeyPath();
  LOBYTE(v51) = 0;
  sub_2E00AC(&v47, &v63);
  BYTE1(v67) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500150, &qword_416DA0);
  sub_2DFEE4(&qword_500148, &qword_500150, &qword_416DA0, sub_2DFE3C);
  sub_2DFE90();
  sub_3EADE4();
  sub_2E0108(&v47);
LABEL_15:
  sub_FBD0(&v58, &v63, &qword_500140, &qword_416D98);
  v68 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500140, &qword_416D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500170, &qword_416DA8);
  sub_2DFD84();
  sub_2DFEE4(&qword_500168, &qword_500170, &qword_416DA8, sub_2DFF60);
  sub_3EADE4();
  sub_FBD0(&v47, &v63, &qword_500128, &qword_416D90);
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500128, &qword_416D90);
  sub_2DFCCC();
  sub_3EADE4();
  sub_FCF8(&v47, &qword_500128, &qword_416D90);
  v27 = &v58;
  v28 = &qword_500140;
  v29 = &qword_416D98;
  return sub_FCF8(v27, v28, v29);
}

unint64_t sub_2DFCCC()
{
  result = qword_500130;
  if (!qword_500130)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500128, &qword_416D90);
    v4[0] = sub_2DFD84();
    v4[1] = sub_2DFEE4(&qword_500168, &qword_500170, &qword_416DA8, sub_2DFF60);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500130);
  }

  return result;
}

unint64_t sub_2DFD84()
{
  result = qword_500138;
  if (!qword_500138)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500140, &qword_416D98);
    v4[0] = sub_2DFEE4(&qword_500148, &qword_500150, &qword_416DA0, sub_2DFE3C);
    v4[1] = sub_2DFE90();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500138);
  }

  return result;
}

unint64_t sub_2DFE3C()
{
  result = qword_500158;
  if (!qword_500158)
  {
    result = swift_getWitnessTable("YK\t", &type metadata for ReferenceLinkSaveButton, v0, v1);
    atomic_store(result, &qword_500158);
  }

  return result;
}

unint64_t sub_2DFE90()
{
  result = qword_500160;
  if (!qword_500160)
  {
    result = swift_getWitnessTable(byte_4174B0, &type metadata for ReferenceLinkContextMenuButton, v0, v1);
    atomic_store(result, &qword_500160);
  }

  return result;
}

uint64_t sub_2DFEE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2DFF60()
{
  result = qword_500178;
  if (!qword_500178)
  {
    result = swift_getWitnessTable(byte_4177EC, &type metadata for ReferenceLinkFollowButton, v0, v1);
    atomic_store(result, &qword_500178);
  }

  return result;
}

uint64_t sub_2E0064(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2E015C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2E01C8()
{
  result = qword_500188;
  if (!qword_500188)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500120, &qword_416D60);
    v4[0] = sub_886BC(&qword_500190, &qword_500118, &qword_416CF0, byte_418398);
    v4[1] = sub_2E0280();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500188);
  }

  return result;
}

unint64_t sub_2E0280()
{
  result = qword_500198;
  if (!qword_500198)
  {
    result = swift_getWitnessTable("%M\t", &type metadata for ReferenceLinkTapModifier, v0, v1);
    atomic_store(result, &qword_500198);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2E0318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_2E0360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2E03E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EAAF4();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001A0, &qword_416F70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v38 = &v33 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001A8, &qword_416F78);
  __chkstk_darwin(v37);
  v11 = &v33 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = objc_allocWithZone(LSApplicationRecord);

  v15 = sub_15BB64(v13, v12, 0);
  if (v15)
  {
  }

  v16 = objc_allocWithZone(ISIcon);
  v17 = sub_3ED204();

  [v16 initWithBundleIdentifier:v17];

  v18 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v19 = v2[9];
  if (*(v2 + 80) == 1)
  {
    v20 = *(v2 + 9);
  }

  else
  {

    sub_3ED9E4();
    v21 = sub_3EB034();
    v34 = v2;
    v22 = v8;
    v23 = v7;
    v24 = a1;
    v25 = v21;
    sub_3E9754();

    a1 = v24;
    v7 = v23;
    v8 = v22;
    v2 = v34;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v19, 0);
    (*(v35 + 8))(v6, v36);
    v20 = v39;
  }

  [v18 setScale:v20];
  [v18 setDrawBorder:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001B0, &qword_416F80);
  sub_2E0F4C();
  v26 = v38;
  sub_3E96F4();
  v27 = &v11[*(v37 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FEBE0, &qword_416FB0) + 28);
  v29 = enum case for ColorScheme.light(_:);
  v30 = sub_3EA304();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  (*(v8 + 32))(v11, v26, v7);
  v31 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500200, &unk_416FE8) + 36);
  sub_FBD0((v2 + 2), v31, &qword_4EDE00, &qword_3F9910);
  *(v31 + 40) = swift_getKeyPath();
  *(v31 + 48) = 0;
  *(v31 + 56) = swift_getKeyPath();
  *(v31 + 64) = 0;
  return sub_2E1334(v11, a1);
}

uint64_t sub_2E08AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500208, &qword_417048);
  __chkstk_darwin(v45);
  v44 = &v42 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500210, qword_417050);
  __chkstk_darwin(v43);
  v4 = &v42 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001C8, &qword_416F88);
  __chkstk_darwin(v47);
  v6 = &v42 - v5;
  v7 = sub_3EB844();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001D8, &qword_416F90);
  __chkstk_darwin(v11);
  v13 = (&v42 - v12);
  v14 = sub_3E96E4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v42, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for AsyncIconImagePhase.success(_:))
  {
    (*(v15 + 96))(v18, v14);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v20 = sub_3EB894();
    (*(v8 + 8))(v10, v7);
    v21 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001F8, &unk_416FA0) + 36);
    v22 = *(sub_3EA7F4() + 20);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = sub_3EABE4();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    __asm { FMOV            V0.2D, #5.0 }

    *v21 = _Q0;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8, &qword_4187B0) + 36)] = 256;
    *v13 = v20;
    sub_3EBA74();
    sub_3EA434();
    v30 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001E8, &qword_416F98) + 36));
    v31 = v49;
    *v30 = v48;
    v30[1] = v31;
    v30[2] = v50;
    LOBYTE(v23) = sub_3EB084();
    sub_3EA264();
    v32 = v13 + *(v11 + 36);
    *v32 = v23;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_FBD0(v13, v4, &qword_5001D8, &qword_416F90);
    swift_storeEnumTagMultiPayload();
    sub_2E1064();
    sub_3EADE4();
    sub_FBD0(v6, v44, &qword_5001C8, &qword_416F88);
    swift_storeEnumTagMultiPayload();
    sub_2E0FD8();
    sub_3EADE4();

    sub_FCF8(v6, &qword_5001C8, &qword_416F88);
    v37 = v13;
    v38 = &qword_5001D8;
    v39 = &qword_416F90;
  }

  else
  {
    v40 = v44;
    if (v19 == enum case for AsyncIconImagePhase.failure(_:))
    {
      (*(v15 + 8))(v18, v14);
    }

    else if (v19 != enum case for AsyncIconImagePhase.unfetched(_:))
    {
      swift_storeEnumTagMultiPayload();
      sub_2E0FD8();
      sub_3EADE4();
      return (*(v15 + 8))(v18, v14);
    }

    swift_storeEnumTagMultiPayload();
    sub_2E1064();
    sub_3EADE4();
    sub_FBD0(v6, v40, &qword_5001C8, &qword_416F88);
    swift_storeEnumTagMultiPayload();
    sub_2E0FD8();
    sub_3EADE4();
    v37 = v6;
    v38 = &qword_5001C8;
    v39 = &qword_416F88;
  }

  return sub_FCF8(v37, v38, v39);
}

unint64_t sub_2E0F4C()
{
  result = qword_5001B8;
  if (!qword_5001B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001B0, &qword_416F80);
    v4[0] = sub_2E0FD8();
    v4[1] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_5001B8);
  }

  return result;
}

unint64_t sub_2E0FD8()
{
  result = qword_5001C0;
  if (!qword_5001C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001C8, &qword_416F88);
    v4[0] = sub_2E1064();
    v4[1] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_5001C0);
  }

  return result;
}

unint64_t sub_2E1064()
{
  result = qword_5001D0;
  if (!qword_5001D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001D8, &qword_416F90);
    v4[0] = sub_2E10F0();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5001D0);
  }

  return result;
}

unint64_t sub_2E10F0()
{
  result = qword_5001E0;
  if (!qword_5001E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001E8, &qword_416F98);
    v4[0] = sub_2E117C();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5001E0);
  }

  return result;
}

unint64_t sub_2E117C()
{
  result = qword_5001F0;
  if (!qword_5001F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001F8, &unk_416FA0);
    v4[0] = &protocol witness table for Image;
    v4[1] = sub_886BC(&qword_4FBD20, &qword_4FBCD8, &qword_4187B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5001F0);
  }

  return result;
}

uint64_t sub_2E1258(uint64_t a1)
{
  v2 = sub_3EA304();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA8E4();
}

uint64_t sub_2E1334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5001A8, &qword_416F78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2E13A8()
{
  result = qword_500218;
  if (!qword_500218)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500200, &unk_416FE8);
    v4[0] = sub_2E1434();
    v4[1] = sub_2E0280();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500218);
  }

  return result;
}

unint64_t sub_2E1434()
{
  result = qword_500220;
  if (!qword_500220)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5001A8, &qword_416F78);
    v4[0] = sub_886BC(qword_500228, &qword_5001A0, &qword_416F70, &protocol conformance descriptor for AsyncIconImage<A>);
    v4[1] = sub_886BC(&qword_4FEC00, &qword_4FEBE0, &qword_416FB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500220);
  }

  return result;
}

void sub_2E1518(uint64_t a1, double a2)
{
  sub_3E7784();
  if (v2 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      sub_2DC100();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2E15B8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_3E7624() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((((v13 + ((v12 + 130) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + v14 + 16;
  if (v15 >= a2)
  {
    goto LABEL_31;
  }

  v17 = ((*(v10 + 64) + (v16 & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v15 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v23 = (v21 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v24 = *a1;
    }

    else
    {
      v23 = 0;
      v24 = *a1;
    }

    return v15 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v9 >= v11)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v27 = *(v7 + 48);

      return v27((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v12 + 58) & ~v12);
    }

    else
    {
      v26 = *(a1 + 1);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  else
  {
    v25 = *(v10 + 48);

    return v25(&a1[v16] & ~v14, v11);
  }
}

void sub_2E1838(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_3E7624() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((((v15 + ((v14 + 130) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = ((*(v12 + 64) + ((v18 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 >= a3)
  {
    v22 = 0;
    if (v17 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v17 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v17 >= a2)
    {
LABEL_20:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(a1 + v19) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v19) = 0;
      }

      else if (v22)
      {
        *(a1 + v19) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v11 >= v13)
      {
        if (v11 >= a2)
        {
          if ((v10 & 0x80000000) != 0)
          {
            v27 = *(v9 + 56);

            v27((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v14 + 58) & ~v14, a2);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        else if (v18)
        {
          v26 = ~v11 + a2;
          bzero(a1, v18);
          *a1 = v26;
        }
      }

      else
      {
        v25 = *(v12 + 56);

        v25((a1 + v18 + v16) & ~v16, a2, v13);
      }

      return;
    }
  }

  v23 = ~v17 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_30:
      if (v22 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v22)
  {
    *(a1 + v19) = v24;
  }
}

uint64_t sub_2E1B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC020, &qword_4170F0);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v67 = sub_3EA384();
  v6 = sub_3EA744();
  v80 = v4;
  v81 = &type metadata for ForegroundStyle;
  v82 = &type metadata for EmptyView;
  v83 = v5;
  v84 = &protocol witness table for ForegroundStyle;
  v85 = &protocol witness table for EmptyView;
  v7 = sub_3EAE64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0, &qword_410410);
  v8 = sub_3EA744();
  v79[0] = swift_getWitnessTable(&protocol conformance descriptor for StrokeBorderShapeView<A, B, C>, v7);
  v79[1] = sub_2E2FEC();
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v79);
  v9 = sub_3EA814();
  v68 = v6;
  v10 = sub_3EA744();
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v57 = &v56 - v11;
  v66 = v12;
  v13 = sub_3EA744();
  v60 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v59 = &v56 - v17;
  v18 = sub_3EAAF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_3EADF4();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v56 - v22;
  v23 = v2 + *(a1 + 40);
  v24 = *v23;
  v25 = *(v23 + 8) == 1;
  v64 = v9;
  if (v25)
  {
    v27 = v24;
    LOBYTE(v80) = v24;
  }

  else
  {

    sub_3ED9E4();
    v26 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v24, 0);
    (*(v19 + 8))(v21, v18);
    v27 = v80;
  }

  v28 = v68;
  v29 = v67;
  v30 = v57;
  if (v27 > 1)
  {
    sub_2E249C(a1, v57);
    sub_3EBA74();
    v43 = sub_250100();
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ClipEffect<A>, v29);
    v78[0] = v43;
    v78[1] = WitnessTable;
    v45 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v28, v78);
    v34 = v64;
    v46 = swift_getWitnessTable(&protocol conformance descriptor for _OverlayModifier<A>, v64);
    v77[0] = v45;
    v77[1] = v46;
    v47 = v66;
    v48 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v66, v77);
    v36 = v47;
    sub_3EB634();
    (*(v58 + 8))(v30, v47);
    v76[0] = v48;
    v76[1] = &protocol witness table for _FrameLayout;
    v49 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v76);
    v39 = v59;
    sub_E63BC();
    v40 = v29;
    v41 = *(v60 + 8);
    v41(v15, v13);
    sub_E63BC();
    v42 = v61;
    sub_E51C0(v15, v13, v13, v49, v49);
  }

  else
  {
    sub_2E249C(a1, v57);
    sub_3EBA74();
    v31 = sub_250100();
    v32 = swift_getWitnessTable(&protocol conformance descriptor for _ClipEffect<A>, v29);
    v71[0] = v31;
    v71[1] = v32;
    v33 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v28, v71);
    v34 = v64;
    v35 = swift_getWitnessTable(&protocol conformance descriptor for _OverlayModifier<A>, v64);
    v70[0] = v33;
    v70[1] = v35;
    v36 = v66;
    v37 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v66, v70);
    sub_3EB634();
    (*(v58 + 8))(v30, v36);
    v69[0] = v37;
    v69[1] = &protocol witness table for _FrameLayout;
    v38 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v69);
    v39 = v59;
    sub_E63BC();
    v40 = v29;
    v41 = *(v60 + 8);
    v41(v15, v13);
    sub_E63BC();
    v42 = v61;
    sub_E50C8(v15, v13, v13, v38, v38);
  }

  v41(v15, v13);
  v41(v39, v13);
  v50 = sub_250100();
  v51 = swift_getWitnessTable(&protocol conformance descriptor for _ClipEffect<A>, v40);
  v75[0] = v50;
  v75[1] = v51;
  v52 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v68, v75);
  v53 = swift_getWitnessTable(&protocol conformance descriptor for _OverlayModifier<A>, v34);
  v74[0] = v52;
  v74[1] = v53;
  v73[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v36, v74);
  v73[1] = &protocol witness table for _FrameLayout;
  v72[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v73);
  v72[1] = v72[0];
  v54 = v63;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v63, v72);
  sub_E63BC();
  return (*(v62 + 8))(v42, v54);
}

uint64_t sub_2E249C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68, &unk_410AE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC020, &qword_4170F0);
  __chkstk_darwin(v61);
  v12 = &v50 - v11;
  v63 = a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v64 = *(v14 + 8);
  v15 = v14;
  v60 = v14;
  v16 = v13;
  v57 = v13;
  v65 = sub_3EA384();
  v52 = sub_3EA744();
  v66 = *(v52 - 8);
  __chkstk_darwin(v52);
  v58 = &v50 - v17;
  *&v76 = v16;
  *(&v76 + 1) = &type metadata for ForegroundStyle;
  *&v77 = &type metadata for EmptyView;
  *(&v77 + 1) = v15;
  v78 = &protocol witness table for ForegroundStyle;
  v79 = &protocol witness table for EmptyView;
  v18 = sub_3EAE64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0, &qword_410410);
  v19 = sub_3EA744();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for StrokeBorderShapeView<A, B, C>, v18);
  v21 = sub_2E2FEC();
  v75[0] = WitnessTable;
  v75[1] = v21;
  v53 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v55 = v19;
  v56 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v19, v75);
  v59 = sub_3EA814();
  v22 = sub_3EA744();
  v62 = *(v22 - 8);
  __chkstk_darwin(v22);
  v51 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v54 = &v50 - v26;
  sub_A18FC(v3, v10, v25);
  v27 = sub_3E7784();
  (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
  v28 = sub_3E94E4();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v29 = sub_3EBA54();
  v31 = v30;
  sub_FBD0(v10, v12, &qword_4F1D50, &unk_3F7520);
  v32 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(v7, &v12[v32[7]], &qword_4FAE68, &unk_410AE0);
  sub_FBD0(&v76, v74, &qword_4EE870, &qword_3FA510);
  v33 = &v12[v32[5]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 2;
  v34 = &v12[v32[6]];
  *v34 = v29;
  v34[1] = v31;
  v12[v32[8]] = 1;
  *&v12[v32[9]] = 0;
  sub_FBD0(v74, v73, &qword_4EE870, &qword_3FA510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870, &qword_3FA510);
  sub_3E8314();
  sub_FCF8(v74, &qword_4EE870, &qword_3FA510);
  sub_FCF8(&v76, &qword_4EE870, &qword_3FA510);
  sub_FCF8(v7, &qword_4FAE68, &unk_410AE0);
  sub_FCF8(v10, &qword_4F1D50, &unk_3F7520);
  v35 = &v12[*(type metadata accessor for Artwork(0) + 20)];
  *v35 = sub_231DEC;
  *(v35 + 1) = 0;
  v35[16] = 0;
  v36 = &v12[*(v61 + 36)];
  *v36 = 0;
  *(v36 + 4) = 1;
  v37 = sub_250100();
  v38 = v50;
  v39 = v58;
  v40 = v57;
  sub_3EB714();
  sub_FCF8(v12, &qword_4FC020, &qword_4170F0);
  v68 = v40;
  v69 = v60;
  v70 = v38;
  sub_3EBA74();
  v41 = swift_getWitnessTable(&protocol conformance descriptor for _ClipEffect<A>, v65);
  v72[0] = v37;
  v72[1] = v41;
  v42 = v53;
  v43 = v52;
  v44 = swift_getWitnessTable(v53, v52, v72);
  v45 = v51;
  sub_3EB684();
  (*(v66 + 8))(v39, v43);
  v46 = swift_getWitnessTable(&protocol conformance descriptor for _OverlayModifier<A>, v59);
  v71[0] = v44;
  v71[1] = v46;
  swift_getWitnessTable(v42, v22, v71);
  v47 = v54;
  sub_E63BC();
  v48 = *(v62 + 8);
  v48(v45, v22);
  sub_E63BC();
  return (v48)(v47, v22);
}

uint64_t sub_2E2C4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v24 = a1;
  v25 = &type metadata for ForegroundStyle;
  v26 = &type metadata for EmptyView;
  v27 = a2;
  v28 = &protocol witness table for ForegroundStyle;
  v29 = &protocol witness table for EmptyView;
  v5 = sub_3EAE64();
  v22[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0, &qword_410410);
  v8 = sub_3EA744();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  v16 = type metadata accessor for ReferenceLinkArtworkView(0, a1, a2, v15);
  sub_2E2F44(v16, 1, a1, &type metadata for ForegroundStyle, a2, &protocol witness table for ForegroundStyle, v7);
  sub_3EB764();
  v17 = sub_3EB794();

  v24 = v17;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for StrokeBorderShapeView<A, B, C>, v5);
  sub_3EB574();

  (*(v22[0] + 8))(v7, v5);
  v19 = sub_2E2FEC();
  v23[0] = WitnessTable;
  v23[1] = v19;
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v23);
  sub_E63BC();
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_E63BC();
  return (v20)(v14, v8);
}

uint64_t sub_2E2F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = a2;
  sub_3EA354();
  sub_2E30B4(a1, v12, a3, a4, a5, a6, x8_0);
  return sub_23D2F0(v16);
}

unint64_t sub_2E2FEC()
{
  result = qword_4FC0E8;
  if (!qword_4FC0E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0, &qword_410410);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ForegroundStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &qword_4FC0E8);
  }

  return result;
}

unint64_t sub_2E3050()
{
  result = qword_4FC190;
  if (!qword_4FC190)
  {
    v3 = type metadata accessor for Artwork(255);
    result = swift_getWitnessTable(protocol conformance descriptor for Artwork, v3, v0, v1);
    atomic_store(result, &qword_4FC190);
  }

  return result;
}

uint64_t sub_2E30B4@<X0>(uint64_t a1@<X0>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x5_0@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v27 = a3;
  v14 = *(a5 - 8);
  __chkstk_darwin(a1);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v17);
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v23, v22, v18);
  (*(v14 + 16))(v16, a1, a5);

  return sub_2E3274(v20, v16, v27, v24, a4, a5, &type metadata for EmptyView, a7, x5_0, a6, &protocol witness table for EmptyView);
}

uint64_t sub_2E3274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v55 = a5;
  LODWORD(v53) = a4;
  v51 = a2;
  v45 = a9;
  v58 = a11;
  v59 = a1;
  v49 = a8;
  v52 = *(a8 - 8);
  v56 = a12;
  __chkstk_darwin(a1);
  v50 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3EADC4();
  __chkstk_darwin(v57);
  v54 = &v39 - v16;
  v39 = a7;
  v48 = *(a7 - 8);
  __chkstk_darwin(v17);
  v46 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v44 = a10;
  v42 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = sub_3EA514();
  v21 = __chkstk_darwin(v20);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _StrokedShape<A>, v20, v21);
  v60 = v20;
  v61 = a7;
  v62 = WitnessTable;
  v63 = v58;
  v47 = sub_3EA2D4();
  v22.n128_f64[0] = __chkstk_darwin(v47);
  v41 = &v39 - v23;
  v24 = a6;
  v25 = *(a6 - 8);
  v26 = *(v25 + 16);
  v40 = v24;
  v26(a9, v59, v24, v22);
  sub_3EA6D4();
  sub_3EA504();
  v27 = v48;
  v28 = v51;
  v29 = v39;
  (*(v48 + 16))(v46, v51, v39);
  v30 = v29;
  v31 = v58;
  sub_3EA2C4();
  v32 = v52;
  v33 = v49;
  v34 = v55;
  (*(v52 + 16))(v50, v55, v49);
  sub_3EBA74();
  v53 = v35;
  (*(v32 + 8))(v34, v33);
  (*(v27 + 8))(v28, v29);
  v36 = v40;
  (*(v25 + 8))(v59, v40);
  v37 = v56;
  sub_3EADB4();
  v60 = v36;
  v61 = v30;
  v62 = v33;
  v63 = v44;
  v64 = v31;
  v65 = v37;
  sub_3EAE64();
  return sub_3EA704();
}

uint64_t sub_2E3774(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC020, &qword_4170F0);
  v3 = sub_3EA384();
  v4 = sub_3EA744();
  v16[2] = v1;
  v16[3] = &type metadata for ForegroundStyle;
  v16[4] = &type metadata for EmptyView;
  v16[5] = v2;
  v16[6] = &protocol witness table for ForegroundStyle;
  v16[7] = &protocol witness table for EmptyView;
  v5 = sub_3EAE64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F0, &qword_410410);
  v6 = sub_3EA744();
  v16[0] = swift_getWitnessTable(&protocol conformance descriptor for StrokeBorderShapeView<A, B, C>, v5);
  v16[1] = sub_2E2FEC();
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v16);
  v7 = sub_3EA814();
  v8 = sub_3EA744();
  v9 = sub_3EA744();
  v10 = sub_3EADF4();
  v15[0] = sub_250100();
  v15[1] = swift_getWitnessTable(&protocol conformance descriptor for _ClipEffect<A>, v3);
  v14[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v15);
  v14[1] = swift_getWitnessTable(&protocol conformance descriptor for _OverlayModifier<A>, v7);
  v13[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v14);
  v13[1] = &protocol witness table for _FrameLayout;
  v12[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v13);
  v12[1] = v12[0];
  return swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v10, v12);
}

uint64_t sub_2E39B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0, qword_417100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2E3A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0, qword_417100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ReferenceLinkButtonStyle(uint64_t a1)
{
  result = qword_500310;
  if (!qword_500310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2E3B78(uint64_t a1)
{
  sub_27800C(319, &qword_4FD498, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_2E3C34(319);
    if (v2 <= 0x3F)
    {
      sub_27800C(319, &qword_4FFE70, &type metadata for ReferenceLinkViewStyle);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2E3C34(uint64_t a1)
{
  if (!qword_500320)
  {
    sub_3EAC64();
    v1 = sub_3EA324();
    if (!v2)
    {
      atomic_store(v1, &qword_500320);
    }
  }
}

uint64_t sub_2E3CA8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500358, &qword_417178);
  __chkstk_darwin(v62);
  v56 = &v48 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500360, &qword_417180);
  __chkstk_darwin(v60);
  v61 = &v48 - v4;
  v5 = sub_3EA7A4();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3EB014();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v57);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500368, &qword_417188);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v48 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500370, &qword_417190);
  __chkstk_darwin(v59);
  v52 = &v48 - v10;
  v11 = sub_3EAAF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for ReferenceLinkButtonStyle(0) + 24);
  v55 = v2;
  v16 = v2 + v15;
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v64 = *v16;
    if (v17 != 1)
    {
LABEL_3:
      v18 = v57;
      v19 = v58;
      (*(v7 + 16))(&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v57);
      v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v21 = swift_allocObject();
      v22 = (*(v7 + 32))(v21 + v20, &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      __chkstk_darwin(v22);
      *(&v48 - 2) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500378, &qword_417198);
      sub_2E4D60();
      v23 = v56;
      sub_3EB904();
      KeyPath = swift_getKeyPath();
      v25 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003C0, &qword_4171E8) + 36);
      *v25 = KeyPath;
      *(v25 + 8) = 0;
      v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003C8, &qword_4171F0) + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003D0, &qword_4171F8);
      sub_3EA824();
      *v26 = swift_getKeyPath();
      sub_3EBA74();
      sub_3EA434();
      v27 = v61;
      v28 = (v23 + *(v62 + 36));
      v29 = v65[1];
      *v28 = v65[0];
      v28[1] = v29;
      v28[2] = v65[2];
      sub_2E57FC(v23, v27);
      swift_storeEnumTagMultiPayload();
      sub_2E586C();
      sub_2E5DB4(&qword_500418, &qword_500358, &qword_417178, sub_2E5A9C);
      sub_3EADE4();
      return sub_2E5C60(v23);
    }
  }

  else
  {

    sub_3ED9E4();
    v31 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v17, 0);
    (*(v12 + 8))(v14, v11);
    if (v64 != 1)
    {
      goto LABEL_3;
    }
  }

  v32 = v57;
  v33 = v58;
  (*(v7 + 16))(&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v57);
  v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v35 = swift_allocObject();
  v36 = (*(v7 + 32))(v35 + v34, &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  __chkstk_darwin(v36);
  v37 = v55;
  *(&v48 - 2) = v33;
  *(&v48 - 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500450, &qword_417250);
  sub_2E5DB4(&qword_500458, &qword_500450, &qword_417250, sub_2E5E38);
  v38 = v48;
  sub_3EB904();
  v39 = v51;
  sub_3EA794();
  sub_886BC(&qword_5003F0, &qword_500368, &qword_417188, &protocol conformance descriptor for Button<A>);
  sub_2E60CC(&qword_4FED68, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v40 = v52;
  v41 = v50;
  v42 = v54;
  sub_3EB4A4();
  (*(v53 + 8))(v39, v42);
  (*(v49 + 8))(v38, v41);
  v43 = sub_3EBA74();
  v45 = v44;
  sub_2E4928(v37, v65);
  v46 = *&v65[0];
  v47 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003E8, &qword_417230) + 36));
  *v47 = v46;
  v47[1] = v43;
  v47[2] = v45;
  *(v40 + *(v59 + 36)) = 256;
  sub_2E5EF0(v40, v61);
  swift_storeEnumTagMultiPayload();
  sub_2E586C();
  sub_2E5DB4(&qword_500418, &qword_500358, &qword_417178, sub_2E5A9C);
  sub_3EADE4();
  return sub_2E5F60(v40);
}

double sub_2E45AC@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500390, &qword_4171A0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500468, &unk_417258);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_3EAFF4();
  sub_3EB0F4();
  v14 = sub_3EB114();

  KeyPath = swift_getKeyPath();
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003A0, &qword_4171A8) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = &v10[*(v8 + 44)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828, &qword_40F7C0) + 28);
  v19 = enum case for Image.Scale.small(_:);
  v20 = sub_3EB874();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v21 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_3ED9E4();
    v23 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v21, 0);
    (*(v4 + 8))(v6, v3);
    if (v31 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = sub_3EB784();
    goto LABEL_6;
  }

  if (v21)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = sub_3EB7A4();
LABEL_6:
  v24 = v22;
  sub_FACC(v10, v13, &qword_500390, &qword_4171A0);
  *&v13[*(v11 + 36)] = v24;
  sub_3EBA74();
  sub_3EA434();
  v25 = v30;
  sub_FACC(v13, v30, &qword_500468, &unk_417258);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500450, &qword_417250) + 36));
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;
  result = *&v33;
  v26[2] = v33;
  return result;
}

uint64_t sub_2E4928@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_3EAC64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_3EAAF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(a1 + 8) == 1)
  {
    if ((v16 & 1) == 0)
    {
LABEL_3:
      result = sub_3EB774();
      goto LABEL_8;
    }
  }

  else
  {
    v26 = v13;

    sub_3ED9E4();
    v18 = sub_3EB034();
    v27 = v7;
    v19 = v5;
    v20 = v18;
    sub_3E9754();

    v5 = v19;
    v7 = v27;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v16, 0);
    (*(v12 + 8))(v15, v26);
    if (v28 != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for ReferenceLinkButtonStyle(0);
  sub_2830E8(v10);
  (*(v5 + 104))(v7, enum case for ColorSchemeContrast.increased(_:), v4);
  v21 = sub_3EAC54();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  if (v21)
  {
    v23 = [objc_opt_self() tertiaryLabelColor];
    result = sub_3EB7D4();
  }

  else
  {
    sub_3EB784();
    v24 = sub_3EB794();

    result = v24;
  }

LABEL_8:
  *a2 = result;
  return result;
}

uint64_t sub_2E4C28@<X0>(uint64_t a1@<X8>)
{
  sub_3EAFF4();
  sub_3EB0F4();
  v3 = sub_3EB114();

  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5003A0, &qword_4171A8) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500390, &qword_4171A0) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828, &qword_40F7C0) + 28);
  v8 = enum case for Image.Scale.small(_:);
  v9 = sub_3EB874();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500378, &qword_417198);
  return sub_3EA634();
}

unint64_t sub_2E4D60()
{
  result = qword_500380;
  if (!qword_500380)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500378, &qword_417198);
    v4[0] = sub_2E4E18();
    v4[1] = sub_886BC(&qword_5003B0, &qword_5003B8, &qword_4171B0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500380);
  }

  return result;
}

unint64_t sub_2E4E18()
{
  result = qword_500388;
  if (!qword_500388)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500390, &qword_4171A0);
    v4[0] = sub_2E4ED0();
    v4[1] = sub_886BC(&qword_4FB920, &qword_4FB828, &qword_40F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500388);
  }

  return result;
}

unint64_t sub_2E4ED0()
{
  result = qword_500398;
  if (!qword_500398)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003A0, &qword_4171A8);
    v4[0] = sub_2E60CC(&qword_5003A8, &type metadata accessor for PrimitiveButtonStyleConfiguration.Label, &protocol conformance descriptor for PrimitiveButtonStyleConfiguration.Label);
    v4[1] = sub_886BC(&qword_4FC0D8, &qword_4FC0E0, &qword_4141F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500398);
  }

  return result;
}

uint64_t sub_2E4FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v52 = a4;
  v50 = sub_3EAE54();
  v6 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500480, &qword_4173A8);
  v44 = *(v51 - 8);
  __chkstk_darwin(v51);
  v43 = &v41 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500488, &qword_4173B0);
  __chkstk_darwin(v47);
  v46 = &v41 - v9;
  v45 = sub_3EAC44();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500490, &qword_4173B8);
  v42 = *(v49 - 8);
  __chkstk_darwin(v49);
  v14 = &v41 - v13;
  v15 = sub_3EAAF4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v19 = v41;
      sub_3EAE44();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500498, &qword_4173C0);
      v21 = sub_886BC(&qword_5004A0, &qword_500498, &qword_4173C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
      v22 = sub_2E60CC(&qword_5004A8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
      v23 = v43;
      v24 = v50;
      sub_3EB4A4();
      (*(v6 + 8))(v19, v24);
      v25 = v44;
      v26 = v51;
      (*(v44 + 16))(v46, v23, v51);
      swift_storeEnumTagMultiPayload();
      v27 = sub_2E60CC(&qword_5004B0, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
      v53 = v20;
      v54 = v45;
      v55 = v21;
      v56 = v27;
      swift_getOpaqueTypeConformance2();
      v53 = v20;
      v54 = v24;
      v55 = v21;
      v56 = v22;
      swift_getOpaqueTypeConformance2();
      sub_3EADE4();
      return (*(v25 + 8))(v23, v26);
    }
  }

  else
  {

    sub_3ED9E4();
    v29 = v6;
    v30 = v10;
    v31 = a2;
    v32 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    v33 = v31;
    v10 = v30;
    v6 = v29;
    sub_23968C(v33, 0);
    (*(v16 + 8))(v18, v15);
    if (v53 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_3EAC34();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500498, &qword_4173C0);
  v35 = sub_886BC(&qword_5004A0, &qword_500498, &qword_4173C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v36 = sub_2E60CC(&qword_5004B0, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
  v37 = v45;
  sub_3EB4A4();
  (*(v10 + 8))(v12, v37);
  v38 = v42;
  v39 = v49;
  (*(v42 + 16))(v46, v14, v49);
  swift_storeEnumTagMultiPayload();
  v53 = v34;
  v54 = v37;
  v55 = v35;
  v56 = v36;
  swift_getOpaqueTypeConformance2();
  v40 = sub_2E60CC(&qword_5004A8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v53 = v34;
  v54 = v50;
  v55 = v35;
  v56 = v40;
  swift_getOpaqueTypeConformance2();
  sub_3EADE4();
  return (*(v38 + 8))(v14, v39);
}

uint64_t sub_2E5730(uint64_t a1)
{
  v2 = sub_3EA834();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA9B4();
}

uint64_t sub_2E57FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500358, &qword_417178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2E586C()
{
  result = qword_5003D8;
  if (!qword_5003D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500370, &qword_417190);
    v4[0] = sub_2E5924();
    v4[1] = sub_886BC(&qword_500408, &qword_500410, &qword_417240, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5003D8);
  }

  return result;
}

unint64_t sub_2E5924()
{
  result = qword_5003E0;
  if (!qword_5003E0)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003E8, &qword_417230);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500368, &qword_417188);
    v4[3] = sub_3EA7A4();
    v4[4] = sub_886BC(&qword_5003F0, &qword_500368, &qword_417188, &protocol conformance descriptor for Button<A>);
    v4[5] = sub_2E60CC(&qword_4FED68, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_886BC(&qword_5003F8, &qword_500400, &qword_417238, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5003E0);
  }

  return result;
}

unint64_t sub_2E5A9C()
{
  result = qword_500420;
  if (!qword_500420)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003C8, &qword_4171F0);
    v4[0] = sub_2E5B54();
    v4[1] = sub_886BC(&qword_500448, &qword_5003D0, &qword_4171F8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500420);
  }

  return result;
}

unint64_t sub_2E5B54()
{
  result = qword_500428;
  if (!qword_500428)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5003C0, &qword_4171E8);
    v4[0] = sub_886BC(&qword_500430, &qword_500438, &qword_417248, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_2E5C0C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500428);
  }

  return result;
}

unint64_t sub_2E5C0C()
{
  result = qword_500440;
  if (!qword_500440)
  {
    result = swift_getWitnessTable("iX\t", &type metadata for ReferenceLinkButtonBorderStyle, v0, v1);
    atomic_store(result, &qword_500440);
  }

  return result;
}

uint64_t sub_2E5C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500358, &qword_417178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_10(double a1)
{
  v2 = sub_3EB014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_2E5DB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2E5E38()
{
  result = qword_500460;
  if (!qword_500460)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500468, &unk_417258);
    v4[0] = sub_2E4E18();
    v4[1] = sub_886BC(&qword_4FC0E8, &qword_4FC0F0, &qword_410410, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500460);
  }

  return result;
}

uint64_t sub_2E5EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500370, &qword_417190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E5F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500370, &qword_417190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2E5FF8()
{
  result = qword_500470;
  if (!qword_500470)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500478, &qword_417350);
    v4[0] = sub_2E586C();
    v4[1] = sub_2E5DB4(&qword_500418, &qword_500358, &qword_417178, sub_2E5A9C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500470);
  }

  return result;
}

uint64_t sub_2E60CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2E6118()
{
  result = qword_5004B8;
  if (!qword_5004B8)
  {
    v7[12] = v0;
    v7[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5004C0, qword_4173C8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500498, &qword_4173C0);
    sub_3EAC44();
    v5 = sub_886BC(&qword_5004A0, &qword_500498, &qword_4173C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_2E60CC(&qword_5004B0, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7[2] = v4;
    v7[3] = sub_3EAE54();
    v7[4] = v5;
    v7[5] = sub_2E60CC(&qword_5004A8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v7[0] = OpaqueTypeConformance2;
    v7[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v7);
    atomic_store(result, &qword_5004B8);
  }

  return result;
}

uint64_t static ReferenceLinkContainer.contextMenuPreviewEdgeInsets(with:)(uint64_t a1)
{
  if (a1 <= 3)
  {
    v1 = -12.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  v4.n128_u64[0] = 0;
  v5.n128_u64[0] = -12.0;
  v6.n128_u64[0] = 0;
  v7.n128_f64[0] = v1;

  return UIEdgeInsets.init(top:leading:bottom:trailing:layoutDirection:)(v3, v4, v5, v6, v7);
}

uint64_t sub_2E63CC@<X0>(void *a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  if ((v8 & 1) == 0)
  {
    sub_3ED9E4();
    v9 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v7 = v12[1];
  }

  a1[4] = &type metadata for AnyReferenceLink;
  a1[5] = sub_112C60();
  v10 = swift_allocObject();
  a1[1] = v10;
  result = sub_BD054(v1, v10 + 16);
  *a1 = v7;
  return result;
}

double sub_2E6550@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v2 = sub_3EA644();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5004C8, &unk_417508);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0B0, &unk_4103C0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5004D0, &qword_417518);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v30 = sub_3EB834();
  sub_3EB0F4();
  v16 = sub_3EB114();

  KeyPath = swift_getKeyPath();
  v18 = (v11 + *(v9 + 44));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828, &qword_40F7C0) + 28);
  v20 = enum case for Image.Scale.small(_:);
  v21 = sub_3EB874();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = v31;
  *v11 = v30;
  v11[1] = KeyPath;
  v11[2] = v16;
  sub_3EA634();
  v23 = *(v32 + 48);
  LOBYTE(v37) = *(v32 + 40);
  *(&v37 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB960, &qword_40FAD0);
  sub_3EB8C4();
  if (v36)
  {
    v24 = 0.75;
  }

  else
  {
    v24 = 1.0;
  }

  (*(v33 + 32))(v7, v22, v34);
  *&v7[*(v5 + 44)] = v24;
  sub_FACC(v7, &v15[*(v13 + 44)], &qword_5004C8, &unk_417508);
  sub_FACC(v11, v15, &qword_4FC0B0, &unk_4103C0);
  sub_3EBA74();
  sub_3EA434();
  v25 = v35;
  sub_FACC(v15, v35, &qword_5004D0, &qword_417518);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5004D8, &qword_417588) + 36));
  v27 = v38;
  *v26 = v37;
  v26[1] = v27;
  result = *&v39;
  v26[2] = v39;
  return result;
}

uint64_t sub_2E68F4(uint64_t a1)
{
  sub_3EBAE4();
  sub_3EA554();
}

__n128 sub_2E6964@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for PodcastsContextMenuProvider;
  *(a1 + 32) = sub_2DBBC4();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_2E63CC((v3 + 16));
  sub_2E00AC(v1, &v10);
  v4 = swift_allocObject();
  v5 = v13;
  *(v4 + 48) = v12;
  *(v4 + 64) = v5;
  *(v4 + 80) = v14;
  v6 = v11;
  *(v4 + 16) = v10;
  *(v4 + 32) = v6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = sub_2E6ABC;
  *(a1 + 88) = v4;
  sub_2E00AC(v1, &v10);
  v7 = swift_allocObject();
  v8 = v13;
  *(v7 + 48) = v12;
  *(v7 + 64) = v8;
  *(v7 + 80) = v14;
  result = v11;
  *(v7 + 16) = v10;
  *(v7 + 32) = result;
  *(a1 + 96) = sub_2E6B0C;
  *(a1 + 104) = v7;
  return result;
}

uint64_t sub_2E6A78()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_2E6B90()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_2E6BCC()
{
  result = qword_5004E0;
  if (!qword_5004E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5004E8, &qword_417590);
    v4[0] = sub_2E6C58();
    v4[1] = sub_2E6CBC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5004E0);
  }

  return result;
}

unint64_t sub_2E6C58()
{
  result = qword_5004F0;
  if (!qword_5004F0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5004F8, qword_417598);
    result = swift_getWitnessTable(protocol conformance descriptor for ContextMenuTapView<A>, v3, v0, v1);
    atomic_store(result, &qword_5004F0);
  }

  return result;
}

unint64_t sub_2E6CBC()
{
  result = qword_500500;
  if (!qword_500500)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _HoverRegionModifier, &type metadata for _HoverRegionModifier, v0, v1);
    atomic_store(result, &qword_500500);
  }

  return result;
}

void sub_2E6D14(id a1)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_style) == 1)
  {
    v3 = [objc_opt_self() mt_rootViewController];
    if (v3)
    {
      v8 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4 && [v4 selectedViewController])
      {
        v5 = [a1 view];
        v6 = [a1 view];
        [a1 locationInView:v6];

        sub_3E6484();

        return;
      }
    }
  }

  v7 = [a1 view];

  sub_3E64B4();
}

uint64_t sub_2E702C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0, &unk_3F7970);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_3E6434();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3E64E4();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_objectGraph);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B8, qword_4175E8);
  v22 = v14;
  sub_3EC394();
  v15 = v26;
  v21 = v27;
  v20 = __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1F958(v2 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_model, v24);
  sub_2E6D14(a1);
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    sub_3EDE34();

    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_3E63F4();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_2E74C0(v6);
    }
  }

  v18 = EpisodeControllerProtocol.contextMenuConfiguration(asPartOf:for:selectedModels:presentationSource:interactionContext:)(v22, v24, _swiftEmptyArrayStorage, v13, v10, v15, v21);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v18;
}

id sub_2E735C(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(UIPreviewParameters) init];
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate_style) == 1)
  {
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];
  }

  [v3 bounds];
  v10 = [objc_opt_self() bezierPathWithRoundedRect:v6 cornerRadius:{v7, v8, v9, 16.0}];
  [v4 setVisiblePath:v10];

  v11 = [objc_allocWithZone(UITargetedPreview) initWithView:v3 parameters:v4];
  return v11;
}

uint64_t sub_2E74C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0, &unk_3F7970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2E753C()
{
  result = qword_5005C0;
  if (!qword_5005C0)
  {
    result = swift_getWitnessTable(byte_417664, &type metadata for ReferenceLinkExplicitBadgeTreatment, v0, v1);
    atomic_store(result, &qword_5005C0);
  }

  return result;
}

uint64_t sub_2E7590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2E75D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2E7654@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v75 = type metadata accessor for ReferenceLinkButtonStyle(0);
  __chkstk_darwin(v75);
  v74 = (&v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_3EAAF4();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005C8, &qword_417840);
  __chkstk_darwin(v73);
  v68 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005D0, &qword_417848);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v72 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005D8, &qword_417850);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for FollowButtonPresenter.Data(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v64 - v15;
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v20 = *v1;
  v19 = *(v1 + 8);
  v79 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = *(v1 + 49);
  v71 = *(v1 + 64);
  v23 = *(v1 + 16);
  sub_3DE90(v20, v19, v23);
  v24 = v20;
  v25 = v12;
  FollowButtonPresenter.Data.init(_:isExplicit:)(v24, v19, v23, v22, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_FCF8(v10, &qword_5005D8, &qword_417850);
    v26 = 1;
    v28 = v77;
    v27 = v78;
    v29 = v76;
  }

  else
  {
    sub_2E7E90(v10, v18);

    if ((v21 & 1) == 0)
    {
      sub_3ED9E4();
      v30 = sub_3EB034();
      sub_3E9754();

      v31 = v65;
      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v66 + 8))(v31, v67);
      v79 = v80[0];
    }

    v32 = v70;
    sub_2E7EF4(v18, v70);
    v33 = type metadata accessor for FollowShowButton(0);
    v34 = v68;
    v35 = &v68[v33[5]];
    *v35 = swift_getKeyPath();
    *(v35 + 1) = 0;
    *(v35 + 8) = 0;
    v36 = v34 + v33[6];
    *v36 = swift_getKeyPath();
    *(v36 + 8) = 0;
    v37 = v33[7];
    *(v34 + v37) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1848, &qword_4178D0);
    swift_storeEnumTagMultiPayload();
    v38 = v33[8];
    *(v34 + v38) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v39 = (v34 + v33[9]);
    sub_3E8A44();
    sub_2E85E8(&qword_4F1850, &type metadata accessor for PodcastStateMachine, &protocol conformance descriptor for PodcastStateMachine);
    *v39 = sub_3EA894();
    v39[1] = v40;
    sub_2E7EF4(v32, v34);
    v67 = v18;
    v41 = v69;
    sub_2E7EF4(v32, v69);
    v42 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v43 = swift_allocObject();
    sub_2E7E90(v41, v43 + v42);
    *(v43 + ((v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v79;
    type metadata accessor for FollowButtonPresenter(0);
    sub_3EA274();
    sub_2E8630(v32, type metadata accessor for FollowButtonPresenter.Data);
    v44 = v71;

    v45 = sub_3E9CD4();
    v46 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005E0, &qword_417900) + 36));
    *v46 = v45;
    v46[1] = v44;
    sub_3E8A34();
    LOBYTE(v45) = sub_3E7984();
    sub_F3B84(v80);
    KeyPath = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v45 & 1;
    v49 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005E8, &qword_417938) + 36));
    *v49 = KeyPath;
    v49[1] = sub_2E8364;
    v49[2] = v48;
    v50 = swift_getKeyPath();
    v51 = v34 + *(v73 + 36);
    *v51 = v50;
    __asm { FMOV            V0.2D, #28.0 }

    *(v51 + 8) = _Q0;
    *(v51 + 24) = 0;
    v57 = swift_getKeyPath();
    v59 = v74;
    v58 = v75;
    *v74 = v57;
    *(v59 + 8) = 0;
    v60 = *(v58 + 20);
    *(v59 + v60) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0, &qword_4179A0);
    swift_storeEnumTagMultiPayload();
    v61 = v59 + *(v58 + 24);
    *v61 = swift_getKeyPath();
    *(v61 + 8) = 0;
    sub_2E8390();
    sub_2E85E8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle, byte_41713C);
    v62 = v72;
    sub_3EB4A4();
    sub_2E8630(v59, type metadata accessor for ReferenceLinkButtonStyle);
    sub_FCF8(v34, &qword_5005C8, &qword_417840);
    sub_2E8630(v67, type metadata accessor for FollowButtonPresenter.Data);
    v29 = v76;
    v28 = v77;
    v27 = v78;
    (*(v76 + 32))(v78, v62, v77);
    v26 = 0;
  }

  return (*(v29 + 56))(v27, v26, 1, v28);
}

uint64_t sub_2E7E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowButtonPresenter.Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E7EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowButtonPresenter.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E7F78()
{
  v1 = *(type metadata accessor for FollowButtonPresenter.Data(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v4;

    v7 = type metadata accessor for ShowOffer(0);
    v8 = v5 + v7[7];
    v9 = sub_3E7784();
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v8 + 32);
      if (v10 != 255)
      {
        sub_F2248(*(v8 + 16), *(v8 + 24), v10);
      }

      v11 = *(v8 + 64);
      if (v11 != 255)
      {
        sub_F2260(*(v8 + 56), v11);
      }

      v12 = *(v8 + 80);
      if (v12 != 255)
      {
        sub_F2260(*(v8 + 72), v12);
      }

      v13 = *(v8 + 96);
      if (v13 != 255)
      {
        sub_F2260(*(v8 + 88), v13);
      }

      v14 = *(v8 + 112);
      if (v14 != 255)
      {
        sub_F2260(*(v8 + 104), v14);
      }

      v15 = *(v8 + 128);
      if (v15 != 255)
      {
        sub_F2260(*(v8 + 120), v15);
      }

      v16 = *(v9 + 44);
      v17 = sub_3E7624();
      (*(*(v17 - 8) + 8))(v8 + v16, v17);
    }

    v18 = v7[13];
    v19 = sub_3E5DC4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }

    v22 = v7[16];
    if (!v21(v5 + v22, 1, v19))
    {
      (*(v20 + 8))(v5 + v22, v19);
    }

    v23 = v7[17];
    v4 = v25;
    if (!v21(v5 + v23, 1, v19))
    {
      (*(v20 + 8))(v5 + v23, v19);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2E82FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EAAA4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2E8390()
{
  result = qword_5005F0;
  if (!qword_5005F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005C8, &qword_417840);
    v4[0] = sub_2E8448();
    v4[1] = sub_886BC(&qword_4F1708, &qword_4F1700, &unk_3FE0B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5005F0);
  }

  return result;
}

unint64_t sub_2E8448()
{
  result = qword_5005F8;
  if (!qword_5005F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005E8, &qword_417938);
    v4[0] = sub_2E8500();
    v4[1] = sub_886BC(&qword_500620, &qword_500628, &unk_4179D8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5005F8);
  }

  return result;
}

unint64_t sub_2E8500()
{
  result = qword_500600;
  if (!qword_500600)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005E0, &qword_417900);
    v4[0] = sub_2E85E8(&qword_500608, type metadata accessor for FollowShowButton, protocol conformance descriptor for FollowShowButton);
    v4[1] = sub_886BC(&qword_500610, &qword_500618, &qword_4179D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500600);
  }

  return result;
}

uint64_t sub_2E85E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2E8630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2E8694()
{
  result = qword_500638;
  if (!qword_500638)
  {
    v4[9] = v0;
    v4[10] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500640, &qword_4179E8);
    v4[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5005C8, &qword_417840);
    v4[2] = type metadata accessor for ReferenceLinkButtonStyle(255);
    v4[3] = sub_2E8390();
    v4[4] = sub_2E85E8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle, byte_41713C);
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_500638);
  }

  return result;
}

uint64_t sub_2E87A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500648, &qword_4179F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  KeyPath = swift_getKeyPath();
  v31 = 0;
  sub_3DE90(a2, a3, a4);
  sub_1634B4(a2, a3, a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_2E8A90(v12);
    sub_3DEF8(a2, a3, a4);
    result = sub_23968C(KeyPath, 0);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    sub_2E8AF8(v12, v19);
    sub_165950(v19, v16);
    type metadata accessor for BookmarkButtonPresenter(0);
    swift_allocObject();

    v25 = sub_165000(v16, a1);

    v28 = v25;
    sub_3EB8B4();

    sub_2E9590(v19, type metadata accessor for BookmarkButtonPresenter.Data);
    v23 = v29;
    v24 = v30;
    v22 = v31;
    *a5 = a2;
    a5[1] = a3;
    a5[2] = a4;
    sub_3DE90(a2, a3, a4);
    v21 = KeyPath;
    sub_27FA88(KeyPath, v22);

    sub_3DEF8(a2, a3, a4);
    sub_23968C(v21, v22);
  }

  a5[3] = v21;
  a5[4] = v22;
  a5[5] = v23;
  a5[6] = v24;
  return result;
}

uint64_t sub_2E8A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500648, &qword_4179F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2E8AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E8B5C()
{
  v1 = type metadata accessor for ReferenceLinkButtonStyle(0);
  __chkstk_darwin(v1);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500650, &qword_417B78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v8;
  v17[2] = *(v0 + 32);
  v18 = *(v0 + 48);
  v9 = swift_allocObject();
  v10 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 32);
  *(v9 + 64) = *(v0 + 48);
  v15 = v17;
  sub_2E9444(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500658, &unk_417B80);
  sub_2E947C();
  sub_3EB904();
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v11 = *(v1 + 20);
  *&v3[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0, &qword_4179A0);
  swift_storeEnumTagMultiPayload();
  v12 = &v3[*(v1 + 24)];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  sub_886BC(&qword_500668, &qword_500650, &qword_417B78, &protocol conformance descriptor for Button<A>);
  sub_2E95F8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle, byte_41713C);
  sub_3EB4A4();
  sub_2E9590(v3, type metadata accessor for ReferenceLinkButtonStyle);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2E8E4C()
{
  v0 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  [v0 impactOccurred];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500670, &qword_417BF8);
  sub_3EB8C4();
  sub_1646F0();
}

uint64_t sub_2E8EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_3EBBB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBB94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500670, &qword_417BF8);
  sub_3EB8C4();
  v12 = v16[1];
  swift_getKeyPath();
  *&v17 = v12;
  sub_2E95F8(&qword_4F48C0, type metadata accessor for BookmarkButtonPresenter, "!/\n");
  sub_3E6BC4();

  sub_3E8A94();
  v13 = sub_3EB834();
  sub_3EBB84();
  sub_3EBBA4();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500658, &unk_417B80) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD380, &qword_411E30);
  sub_2E95F8(&qword_500678, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  sub_3EA854();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  result = swift_getKeyPath();
  *v14 = result;
  *a2 = v13;
  return result;
}

uint64_t sub_2E91D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EAAA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2E9254(uint64_t a1, double a2)
{
  v3 = sub_3EA874();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_3EA994();
}

uint64_t sub_2E931C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2E9364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2E93DC()
{
  sub_3DEF8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_23968C(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_2E947C()
{
  result = qword_500660;
  if (!qword_500660)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500658, &unk_417B80);
    v4[0] = &protocol witness table for Image;
    v4[1] = sub_886BC(&qword_4FD418, &qword_4FD380, &qword_411E30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500660);
  }

  return result;
}

uint64_t sub_2E9534@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EAAA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2E9590(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2E95F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2E9668()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500650, &qword_417B78);
  type metadata accessor for ReferenceLinkButtonStyle(255);
  sub_886BC(&qword_500668, &qword_500650, &qword_417B78, &protocol conformance descriptor for Button<A>);
  sub_2E95F8(&qword_500630, type metadata accessor for ReferenceLinkButtonStyle, byte_41713C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2E975C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0, qword_417100);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2E9838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0, qword_417100);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for ReferenceLinkSubtitleViewModifier(uint64_t a1)
{
  result = qword_5006D8;
  if (!qword_5006D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2E994C(uint64_t a1)
{
  sub_2E3C34(319);
  if (v1 <= 0x3F)
  {
    sub_2DC100();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2E99EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v70 = a2;
  v56[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500710, &qword_417CE8);
  __chkstk_darwin(v56[0]);
  v56[1] = v56 - v3;
  v4 = sub_3EAC64();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v59 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500718, &qword_417CF0);
  __chkstk_darwin(v8);
  v67 = v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500720, &qword_417CF8);
  __chkstk_darwin(v10);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = v56 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500728, &qword_417D00);
  __chkstk_darwin(v72);
  v16 = v56 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500730, &qword_417D08);
  __chkstk_darwin(v65);
  v68 = v56 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500738, &qword_417D10);
  __chkstk_darwin(v71);
  v19 = v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500740, &qword_417D18);
  __chkstk_darwin(v20);
  v66 = v56 - v21;
  v64 = sub_3EAAF4();
  v22 = *(v64 - 8);
  __chkstk_darwin(v64);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for ReferenceLinkSubtitleViewModifier(0) + 20);
  v62 = v2;
  v26 = v2 + v25;
  v27 = *v26;
  LODWORD(v26) = *(v26 + 8);
  v57 = v12;
  if (v26 == 1)
  {
    v74 = v27;
  }

  else
  {

    sub_3ED9E4();
    v28 = v19;
    v29 = v10;
    v30 = v16;
    v31 = v20;
    v32 = sub_3EB034();
    sub_3E9754();

    v20 = v31;
    v16 = v30;
    v10 = v29;
    v19 = v28;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v27, 0);
    (*(v22 + 8))(v24, v64);
    LOBYTE(v27) = v74;
  }

  v33 = sub_3EB0F4();
  KeyPath = swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500748, &unk_417D50);
  v36 = *(*(v35 - 8) + 16);
  if (v27)
  {
    if (v27 == 1)
    {
      v37 = v67;
      v36(v67, v69, v35);
      v38 = (v37 + *(v8 + 36));
      *v38 = KeyPath;
      v38[1] = v33;
      v39 = v58;
      sub_2830E8(v58);
      v41 = v59;
      v40 = v60;
      v42 = v61;
      (*(v60 + 104))(v59, enum case for ColorSchemeContrast.standard(_:), v61);
      LOBYTE(v37) = sub_3EAC54();
      v43 = *(v40 + 8);
      v43(v41, v42);
      v43(v39, v42);
      if (v37)
      {
        sub_3EA2A4();
        swift_getOpaqueTypeConformance2();
      }

      else
      {
        v73 = sub_3EAEE4();
      }

      v52 = sub_3EA444();
      v53 = v57;
      sub_FACC(v67, v57, &qword_500718, &qword_417CF0);
      *(v53 + *(v10 + 36)) = v52;
      v51 = &qword_500720;
      v46 = &qword_417CF8;
      v54 = v63;
      sub_FACC(v53, v63, &qword_500720, &qword_417CF8);
      sub_FBD0(v54, v68, &qword_500720, &qword_417CF8);
      swift_storeEnumTagMultiPayload();
      sub_2EA34C();
      sub_2EA4E8();
      sub_3EADE4();
      sub_FBD0(v19, v16, &qword_500738, &qword_417D10);
      swift_storeEnumTagMultiPayload();
      sub_2EA2C0();
      sub_3EADE4();
      sub_FCF8(v19, &qword_500738, &qword_417D10);
      v47 = v54;
    }

    else
    {
      v49 = v66;
      v36(v66, v69, v35);
      v50 = (v49 + *(v8 + 36));
      *v50 = KeyPath;
      v50[1] = v33;
      *(v49 + *(v20 + 36)) = sub_3EAEE4();
      v51 = &qword_500740;
      v46 = &qword_417D18;
      sub_FBD0(v49, v16, &qword_500740, &qword_417D18);
      swift_storeEnumTagMultiPayload();
      sub_2EA2C0();
      sub_2EA34C();
      sub_3EADE4();
      v47 = v49;
    }

    v48 = v51;
  }

  else
  {
    v44 = v66;
    v36(v66, v69, v35);
    v45 = (v44 + *(v8 + 36));
    *v45 = KeyPath;
    v45[1] = v33;
    *(v44 + *(v20 + 36)) = sub_3EAEE4();
    v46 = &qword_417D18;
    sub_FBD0(v44, v68, &qword_500740, &qword_417D18);
    swift_storeEnumTagMultiPayload();
    sub_2EA34C();
    sub_2EA4E8();
    sub_3EADE4();
    sub_FBD0(v19, v16, &qword_500738, &qword_417D10);
    swift_storeEnumTagMultiPayload();
    sub_2EA2C0();
    sub_3EADE4();
    sub_FCF8(v19, &qword_500738, &qword_417D10);
    v47 = v44;
    v48 = &qword_500740;
  }

  return sub_FCF8(v47, v48, v46);
}

unint64_t sub_2EA2C0()
{
  result = qword_500750;
  if (!qword_500750)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500738, &qword_417D10);
    v4[0] = sub_2EA34C();
    v4[1] = sub_2EA4E8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500750);
  }

  return result;
}

unint64_t sub_2EA34C()
{
  result = qword_500758;
  if (!qword_500758)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500740, &qword_417D18);
    v4[0] = sub_2EA404();
    v4[1] = sub_886BC(&qword_4FEE50, &qword_4FEE58, &unk_417D60, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500758);
  }

  return result;
}

unint64_t sub_2EA404()
{
  result = qword_500760;
  if (!qword_500760)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500718, &qword_417CF0);
    v4[0] = sub_886BC(&qword_500768, &qword_500748, &unk_417D50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_886BC(&qword_4FC0D8, &qword_4FC0E0, &qword_4141F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500760);
  }

  return result;
}

unint64_t sub_2EA4E8()
{
  result = qword_500770;
  if (!qword_500770)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500720, &qword_417CF8);
    v4[0] = sub_2EA404();
    v4[1] = sub_886BC(&qword_4FB158, &qword_4FB160, &qword_413D90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500770);
  }

  return result;
}

unint64_t sub_2EA5A4()
{
  result = qword_500778;
  if (!qword_500778)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500780, &unk_417D70);
    v4[0] = sub_2EA2C0();
    v4[1] = sub_2EA34C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500778);
  }

  return result;
}

uint64_t sub_2EA630(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2EA68C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2EA720@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_7A45C(v2, &v40);
  if (v41)
  {
    v37 = v13;
    sub_1D4F0(&v40, v42);
    sub_1F958(v42, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
    v17 = type metadata accessor for FlowAction(0);
    if (swift_dynamicCast())
    {
      v18 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28, &unk_3F9A40);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3F5630;
      *(v19 + 56) = v17;
      *(v19 + 64) = sub_2EB448(&qword_4F8A40, type metadata accessor for FlowAction);
      v36 = v18;
      *(v19 + 32) = v18;
      v34 = v4;
      v35 = a1;
      v20 = *(v11 + 16);
      v20(v16, v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10);
      v21 = type metadata accessor for TabChangeAction(0);
      v22 = v38;
      v33 = v9;
      v23 = v21;
      v24 = swift_allocObject();
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = 10;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = v19;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
      *(v24 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 1;
      v20(v37, v16, v10);
      v25 = sub_3EC634();
      v26 = v33;
      (*(*(v25 - 8) + 56))(v33, 1, 1, v25);

      sub_3E5FB4();
      v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v29 = v28;
      (*(v22 + 8))(v6, v34);
      (*(v11 + 8))(v16, v10);
      *(v24 + 16) = v27;
      *(v24 + 24) = v29;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      (*(v11 + 32))(v24 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v37, v10);
      sub_14A10(v26, v24 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      v30 = v35;
      *(v35 + 24) = v23;
      v30[4] = sub_2EB448(&unk_501110, type metadata accessor for TabChangeAction);

      *v30 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else
    {
      sub_1D4F0(v42, a1);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  }

  else
  {
    result = sub_EF85C(&v40);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2EABB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500788, &qword_417EF0);
  __chkstk_darwin(v26);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500790, &qword_417EF8);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_3EAAF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 56);
  if (*(v2 + 64) == 1)
  {
    v30 = *(v2 + 56);
    if (v12 > 1u)
    {
LABEL_3:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500798, &qword_417F00);
      (*(*(v13 - 8) + 16))(v4, v25, v13);
      swift_storeEnumTagMultiPayload();
      v14 = sub_2EB2C8();
      *&v28[0] = v13;
      *(&v28[0] + 1) = v14;
      swift_getOpaqueTypeConformance2();
      return sub_3EADE4();
    }
  }

  else
  {

    sub_3ED9E4();
    v16 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v30 > 1u)
    {
      goto LABEL_3;
    }
  }

  sub_2EB32C(v2, v28);
  v17 = swift_allocObject();
  v18 = v28[3];
  *(v17 + 48) = v28[2];
  *(v17 + 64) = v18;
  *(v17 + 80) = v29;
  v19 = v28[1];
  *(v17 + 16) = v28[0];
  *(v17 + 32) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500798, &qword_417F00);
  v21 = sub_2EB2C8();
  sub_3EB4F4();

  v22 = v24;
  (*(v24 + 16))(v4, v7, v5);
  swift_storeEnumTagMultiPayload();
  *&v28[0] = v20;
  *(&v28[0] + 1) = v21;
  swift_getOpaqueTypeConformance2();
  sub_3EADE4();
  return (*(v22 + 8))(v7, v5);
}

uint64_t sub_2EAFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0, &qword_3FD580);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_3EAAF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2EA720(&v20);
  if (!v21)
  {
    return sub_EF85C(&v20);
  }

  sub_1D4F0(&v20, v23);
  sub_1F958(v23, &v20);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);

  if ((v10 & 1) == 0)
  {
    sub_3ED9E4();
    v11 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = *&v19[0];
  }

  v22 = v9;
  sub_E69A0(&v20, v19);
  v12 = swift_allocObject();
  v13 = v19[1];
  v12[1] = v19[0];
  v12[2] = v13;
  v12[3] = v19[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00, &unk_3F5EF0);
  v14 = sub_3ECE04();
  v15 = sub_3ED6F4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_4072F0;
  v16[5] = v12;
  v16[6] = v14;

  sub_E8ECC(0, 0, v4, &unk_407300, v16);

  sub_E91B8(&v20);
  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

unint64_t sub_2EB2C8()
{
  result = qword_5007A0;
  if (!qword_5007A0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500798, &qword_417F00);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v3, v0, v1);
    atomic_store(result, &qword_5007A0);
  }

  return result;
}

uint64_t sub_2EB364()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  sub_23968C(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_2EB3C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2EB400()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2EB448(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable("iJ\v", v4);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2EB4A0()
{
  result = qword_5007A8;
  if (!qword_5007A8)
  {
    v6 = v0;
    v7 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5007B0, &qword_417F08);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500798, &qword_417F00);
    v5 = sub_2EB2C8();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_5007A8);
  }

  return result;
}

uint64_t sub_2EB56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PodcastsReferenceLink(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8, &qword_3FBA90);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_3E7D54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[10];
  v16 = (a1 + v5[9]);
  v17 = v16[1];
  v52 = *v16;
  v18 = *(a1 + v15 + 8);
  v49 = *(a1 + v15);
  v44 = v18;
  v19 = v5[12];
  v20 = (a1 + v5[11]);
  v21 = v20[1];
  v47 = *v20;
  sub_FBD0(a1 + v19, v53, &qword_4F00B0, &qword_3FB1A8);
  v22 = v5[14];
  v45 = v12;
  v46 = v14;
  v23 = v12;
  v24 = v7;
  v25 = *(v23 + 16);
  v48 = v11;
  v25(v14, a1 + v22, v11);
  v26 = a1 + v5[15];
  v50 = v10;
  sub_FBD0(v26, v10, &qword_4F00B8, &qword_3FBA90);
  sub_2EDE38(a1, v7, type metadata accessor for PodcastsReferenceLink);
  LODWORD(v10) = v7[v5[13]];
  v51 = v17;
  if (v10 == 2)
  {

    v27 = v44;

    sub_2EE254(a1, type metadata accessor for PodcastsReferenceLink);
LABEL_3:
    sub_2EE254(v24, type metadata accessor for PodcastsReferenceLink);
    v28 = 0;
    goto LABEL_14;
  }

  v27 = v44;

  v29 = sub_3E79D4();
  v31 = v30;
  if (v29 == sub_3E79D4() && v31 == v32)
  {

    sub_2EE254(a1, type metadata accessor for PodcastsReferenceLink);
  }

  else
  {
    v34 = sub_3EE804();

    sub_2EE254(a1, type metadata accessor for PodcastsReferenceLink);
    if ((v34 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v35 = *(v24 + 16);
  sub_2EE254(v24, type metadata accessor for PodcastsReferenceLink);
  if (v35 == 3)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2 * (v35 == 2);
  }

LABEL_14:
  v36 = type metadata accessor for ReferenceLinkTextStackView(0);
  v37 = a2 + v36[11];
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  v38 = v36[12];
  *(a2 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08, &qword_3FA780);
  swift_storeEnumTagMultiPayload();
  v39 = v51;
  *a2 = v52;
  *(a2 + 8) = v39;
  v40 = v48;
  *(a2 + 16) = v49;
  *(a2 + 24) = v27;
  v41 = v46;
  *(a2 + 32) = v47;
  *(a2 + 40) = v21;
  v42 = v53[1];
  *(a2 + 48) = v53[0];
  *(a2 + 64) = v42;
  *(a2 + 80) = v54;
  (*(v45 + 32))(a2 + v36[8], v41, v40);
  result = sub_FACC(v50, a2 + v36[9], &qword_4F00B8, &qword_3FBA90);
  *(a2 + v36[10]) = v28;
  return result;
}

uint64_t type metadata accessor for ReferenceLinkTextStackView(uint64_t a1)
{
  result = qword_500810;
  if (!qword_500810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2EBA24(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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

  v9 = sub_3E7D54();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[8];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8, &qword_3FBA90);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10, qword_3FA7E0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_2EBBC8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = sub_3E7D54();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8, &qword_3FBA90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10, qword_3FA7E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_2EBD4C(uint64_t a1)
{
  sub_23CED4(319, &qword_4E9978, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_C30B0(319);
    if (v2 <= 0x3F)
    {
      sub_3E7D54();
      if (v3 <= 0x3F)
      {
        sub_2EBEE8(319, &qword_4F0220, type metadata accessor for ReferenceLinkTimeframe, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_23CED4(319, &qword_4FFE70, &type metadata for ReferenceLinkViewStyle, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_2EBEE8(319, &qword_4EEC80, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2EBEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2EBF68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500870, &qword_418000);
  v143 = *(v3 - 8);
  v144 = v3;
  __chkstk_darwin(v3);
  v122 = &v117 - v4;
  v5 = sub_3E7D54();
  v139 = *(v5 - 8);
  v140 = v5;
  __chkstk_darwin(v5);
  v137 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_3EAAF4();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500878, &qword_418008);
  __chkstk_darwin(v8 - 8);
  v142 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v141 = &v117 - v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500880, &qword_418010);
  __chkstk_darwin(v129);
  v132 = &v117 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500888, &qword_418018);
  v133 = *(v13 - 8);
  v134 = v13;
  __chkstk_darwin(v13);
  v131 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v130 = &v117 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500890, &unk_418020);
  __chkstk_darwin(v17 - 8);
  v138 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v136 = &v117 - v20;
  v21 = sub_3E6044();
  __chkstk_darwin(v21 - 8);
  v127 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3ED1F4();
  __chkstk_darwin(v23 - 8);
  v126 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ExplicitAppendingView(0);
  v146 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v117 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB800, &qword_40F710);
  __chkstk_darwin(v31 - 8);
  v128 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v117 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500898, &qword_418030);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v117 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008A0, &qword_418038);
  __chkstk_darwin(v40 - 8);
  v135 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v45 = &v117 - v43;
  v46 = a1[1];
  v147 = &v117 - v43;
  v148 = v25;
  if (v46)
  {
    v120 = v36;
    v47 = a1;
    v48 = *a1;
    v49 = *(type metadata accessor for ReferenceLinkTextStackView(0) + 40);
    v121 = v47;
    LODWORD(v47) = *(v47 + v49);
    v151 = v48;
    v152 = v46;
    sub_68DC4();

    v50 = sub_3EB394();
    v119 = v51;
    v53 = v52;
    v118 = v54;
    *(v30 + 8) = swift_getKeyPath();
    v30[72] = 0;
    v55 = *(v25 + 28);
    *&v30[v55] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08, &qword_3FA780);
    swift_storeEnumTagMultiPayload();
    if (v47 == 1)
    {
      sub_3ED184();
      sub_3E6034();
      v56 = sub_3ED2A4();
      v58 = v53 & 1 | 0x4000000000000000;
    }

    else
    {
      v56 = 0;
      v58 = v53 & 1;
      v57 = 0xE000000000000000;
    }

    *(v30 + 6) = v56;
    *(v30 + 7) = v57;
    v60 = v119;
    *v30 = v50;
    *(v30 + 1) = v60;
    *(v30 + 2) = v58;
    *(v30 + 3) = v118;
    *(v30 + 4) = 0;
    *(v30 + 5) = 0;
    sub_2EDE38(v30, v35, type metadata accessor for ExplicitAppendingView);
    v61 = v146;
    v62 = *(v146 + 56);
    v63 = v148;
    v62(v35, 0, 1, v148);
    sub_2EE254(v30, type metadata accessor for ExplicitAppendingView);
    v64 = (*(v61 + 48))(v35, 1, v63);
    v45 = v147;
    if (v64)
    {
      sub_FCF8(v35, &qword_4FB800, &qword_40F710);
      v66 = 1;
    }

    else
    {
      sub_2EE1F0(v35, v39, v65);
      v66 = 0;
    }

    v59 = v144;
    v62(v39, v66, 1, v63);
    v67 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008B0, &qword_4180D8) + 36)];
    *v67 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0, &qword_4179A0);
    swift_storeEnumTagMultiPayload();
    v68 = v67 + *(type metadata accessor for ReferenceLinkTitleViewModifier(0) + 20);
    *v68 = swift_getKeyPath();
    v68[8] = 0;
    KeyPath = swift_getKeyPath();
    v70 = v120;
    v71 = &v39[*(v120 + 36)];
    *v71 = KeyPath;
    *(v71 + 1) = 2;
    v71[16] = 0;
    sub_FACC(v39, v45, &qword_500898, &qword_418030);
    (*(v37 + 56))(v45, 0, 1, v70);
    a1 = v121;
  }

  else
  {
    (*(v37 + 56))(&v117 - v43, 1, 1, v36, v44);
    v59 = v144;
  }

  v72 = sub_2ECF88();
  if (v75)
  {
    v76 = v72;
    v77 = v73;
    v78 = v74;
    v79 = v75;
    v80 = a1;
    v81 = *(a1 + *(type metadata accessor for ReferenceLinkTextStackView(0) + 40));
    *(v27 + 8) = swift_getKeyPath();
    v27[72] = 0;
    v82 = *(v148 + 28);
    *&v27[v82] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08, &qword_3FA780);
    swift_storeEnumTagMultiPayload();
    if (v81 == 2)
    {
      sub_243E88(v76, v77, v78 & 1);

      sub_3ED184();
      sub_3E6034();
      v83 = sub_3ED2A4();
      v85 = v84;
      sub_94D30(v76, v77, v78 & 1);

      v86 = v78 & 1 | 0x4000000000000000;
      v87 = 1;
    }

    else
    {
      v83 = 0;
      v87 = 0;
      v86 = v78 & 1;
      v85 = 0xE000000000000000;
    }

    *(v27 + 6) = v83;
    *(v27 + 7) = v85;
    *v27 = v76;
    *(v27 + 1) = v77;
    *(v27 + 2) = v86;
    *(v27 + 3) = v79;
    *(v27 + 4) = 0;
    *(v27 + 5) = v87;
    v92 = v128;
    sub_2EDE38(v27, v128, type metadata accessor for ExplicitAppendingView);
    (*(v146 + 56))(v92, 0, 1, v148);
    sub_2EE254(v27, type metadata accessor for ExplicitAppendingView);
    v93 = v132;
    v94 = &v132[*(v129 + 36)];
    *v94 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0, &qword_4179A0);
    swift_storeEnumTagMultiPayload();
    v95 = v94 + *(type metadata accessor for ReferenceLinkSubtitleViewModifier(0) + 20);
    *v95 = swift_getKeyPath();
    v95[8] = 0;
    sub_FACC(v92, v93, &qword_4FB800, &qword_40F710);
    v96 = swift_getKeyPath();
    v97 = v131;
    sub_FACC(v93, v131, &qword_500880, &qword_418010);
    v91 = v134;
    v98 = v97 + *(v134 + 36);
    *v98 = v96;
    *(v98 + 8) = 1;
    *(v98 + 16) = 0;
    v99 = v97;
    v100 = v130;
    sub_FACC(v99, v130, &qword_500888, &qword_418018);
    v90 = v136;
    sub_FACC(v100, v136, &qword_500888, &qword_418018);
    v88 = 0;
    a1 = v80;
    v89 = v141;
  }

  else
  {
    v88 = 1;
    v89 = v141;
    v90 = v136;
    v91 = v134;
  }

  (*(v133 + 56))(v90, v88, 1, v91);
  v101 = a1 + *(type metadata accessor for ReferenceLinkTextStackView(0) + 44);
  v102 = *v101;
  if (v101[8] == 1)
  {
    if (*v101 != 2)
    {
      goto LABEL_25;
    }
  }

  else
  {

    sub_3ED9E4();
    v103 = sub_3EB034();
    sub_3E9754();

    v104 = v123;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v102, 0);
    (*(v124 + 8))(v104, v125);
    if (v151 != 2)
    {
      goto LABEL_25;
    }
  }

  (*(v139 + 104))(v137, enum case for MetadataSource.apple(_:), v140);
  sub_2EE2B4(&qword_4F4588, &type metadata accessor for MetadataSource, &protocol conformance descriptor for MetadataSource);
  sub_3ED514();
  sub_3ED514();
  if (v151 != v149 || v152 != v150)
  {
    v105 = sub_3EE804();
    (*(v139 + 8))(v137, v140);

    if (v105)
    {
      goto LABEL_24;
    }

LABEL_25:
    v107 = 1;
    goto LABEL_26;
  }

  (*(v139 + 8))(v137, v140);

LABEL_24:
  v106 = v122;
  sub_2ED5B8(v122);
  sub_2EDDC0(v106, v89);
  v107 = 0;
LABEL_26:
  (*(v143 + 56))(v89, v107, 1, v59);
  v108 = v45;
  v109 = v135;
  sub_FBD0(v108, v135, &qword_5008A0, &qword_418038);
  v110 = v138;
  sub_FBD0(v90, v138, &qword_500890, &unk_418020);
  v111 = v90;
  v112 = v142;
  sub_2EDCE8(v89, v142);
  v113 = v89;
  v114 = v145;
  sub_FBD0(v109, v145, &qword_5008A0, &qword_418038);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008A8, &qword_418040);
  sub_FBD0(v110, v114 + *(v115 + 48), &qword_500890, &unk_418020);
  sub_2EDCE8(v112, v114 + *(v115 + 64));
  sub_2EDD58(v113);
  sub_FCF8(v111, &qword_500890, &unk_418020);
  sub_FCF8(v147, &qword_5008A0, &qword_418038);
  sub_2EDD58(v112);
  sub_FCF8(v110, &qword_500890, &unk_418020);
  return sub_FCF8(v109, &qword_5008A0, &qword_418038);
}

uint64_t sub_2ECF88()
{
  v1 = v0;
  v2 = sub_3EA6F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v67 - v7;
  v9 = v0[3];
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = v3;
    v12 = v2;
    v13 = v1[2];

    v14 = sub_E0CD0(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v10 = v14;
    if (v16 >= v15 >> 1)
    {
      v10 = sub_E0CD0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v10 + 2) = v16 + 1;
    v17 = &v10[32 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v9;
    v17[48] = 0;
    *(v17 + 7) = _swiftEmptyArrayStorage;
    v2 = v12;
    v3 = v11;
  }

  v18 = v1[5];
  if (v18)
  {
    v19 = v1[4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_E0CD0(0, *(v10 + 2) + 1, 1, v10);
    }

    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    if (v21 >= v20 >> 1)
    {
      v10 = sub_E0CD0((v20 > 1), v21 + 1, 1, v10);
    }

    *(v10 + 2) = v21 + 1;
    v22 = &v10[32 * v21];
    *(v22 + 4) = v19;
    *(v22 + 5) = v18;
    v22[48] = 0;
    *(v22 + 7) = _swiftEmptyArrayStorage;
  }

  v78 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500908, &unk_418170);
  sub_886BC(&qword_500910, &qword_500908, &unk_418170, &protocol conformance descriptor for [A]);
  if (sub_3ED894())
  {
    type metadata accessor for ReferenceLinkTextStackView(0);
    sub_282B94(v8);
    (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
    v23 = sub_3EA6E4();
    v24 = *(v3 + 8);
    v24(v5, v2);
    v24(v8, v2);
    v67[1] = sub_3ED304();
    v67[2] = v25;
    v26 = *(v10 + 2);
    v67[0] = v10;
    if (v23)
    {
      if (v26)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = (v67[0] + 32 * v26 + 16);
        do
        {
          v33 = *(v31 - 2);
          v34 = *(v31 - 1);
          v35 = *v31;
          v36 = *(v31 + 1);
          sub_243E88(v33, v34, *v31);

          if (v27)
          {
            v68 = v36;
            v76 = v34;

            v37 = sub_3EB284();
            v69 = v28;
            v74 = v29;
            v75 = v38;
            v77 = v26;
            v40 = v39;

            v41 = v76;
            v42 = sub_3EB284();
            v72 = v43;
            v73 = v42;
            v70 = v44;
            v71 = v45;
            sub_94D30(v33, v41, v35);

            sub_94D30(v30, v74, v69 & 1);

            v26 = v77;
            sub_94D30(v37, v75, v40 & 1);

            v34 = v72;
            v33 = v73;
            v32 = v70;
            v36 = v71;
          }

          else
          {
            v32 = v35;
          }

          v31 -= 32;
          v27 = v36;
          v28 = v32;
          v29 = v34;
          v30 = v33;
          --v26;
        }

        while (v26);
        goto LABEL_27;
      }
    }

    else if (v26)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = (v67[0] + 56);
      do
      {
        v33 = *(v50 - 3);
        v62 = *(v50 - 2);
        v65 = *(v50 - 8);
        v64 = *v50;
        if (v46)
        {
          v51 = *(v50 - 8);
          v68 = v51;
          sub_243E88(v33, v62, v51);

          v76 = v62;

          v52 = sub_3EB284();
          v77 = v26;
          v69 = v47;
          v74 = v48;
          v75 = v53;
          v55 = v54;

          v56 = v76;
          v57 = v68;
          v58 = sub_3EB284();
          v72 = v59;
          v73 = v58;
          v70 = v60;
          v71 = v61;
          sub_94D30(v33, v56, v57);

          sub_94D30(v49, v74, v69 & 1);

          v26 = v77;
          sub_94D30(v52, v75, v55 & 1);

          v62 = v72;
          v33 = v73;
          v63 = v70;
          v64 = v71;
        }

        else
        {
          sub_243E88(v33, v62, *(v50 - 8));

          v63 = v65;
        }

        v50 += 4;
        v46 = v64;
        v47 = v63;
        v48 = v62;
        v49 = v33;
        --v26;
      }

      while (v26);
      goto LABEL_27;
    }

    v33 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v33 = 0;
LABEL_28:

  return v33;
}

uint64_t sub_2ED5B8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008B8, &qword_4180E0);
  __chkstk_darwin(v31);
  v3 = &v29 - v2;
  v4 = sub_3EEA54();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EEA44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8, &qword_3FBA90);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for ReferenceLinkTextStackView(0);
  sub_FBD0(v1 + *(v14 + 36), v13, &qword_4F00B8, &qword_3FBA90);
  v15 = type metadata accessor for ReferenceLinkTimeframe(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    sub_FCF8(v13, &qword_4F00B8, &qword_3FBA90);
LABEL_4:
    v19 = 1;
    v20 = v32;
    goto LABEL_9;
  }

  v16 = &v13[*(v15 + 20)];
  v17 = *v16;
  v18 = v16[8];
  sub_2EE254(v13, type metadata accessor for ReferenceLinkTimeframe);
  if (v18)
  {
    goto LABEL_4;
  }

  sub_3EEB04();
  if (v17 >= 3600.0)
  {
    sub_3EEA34();
  }

  else
  {
    sub_3EEA24();
  }

  sub_3E5824();
  sub_2EE2B4(&qword_4FE478, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  sub_3EEAE4();
  (*(v30 + 8))(v6, v4);
  v21 = (*(v8 + 8))(v10, v7);
  v22 = v33;
  __chkstk_darwin(v21);
  *(&v29 - 2) = v23;
  *(&v29 - 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008C8, &unk_4180F0);
  sub_2EE304();
  sub_3EB8A4();

  v24 = sub_3EB1B4();
  KeyPath = swift_getKeyPath();
  v26 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008D8, &qword_418130) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  *&v3[*(v31 + 36)] = sub_3EAEE4();
  sub_2EE3C4();
  sub_2EE560();
  v20 = v32;
  sub_3EB464();
  sub_FCF8(v3, &qword_5008B8, &qword_4180E0);
  v19 = 0;
LABEL_9:
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008C0, &qword_4180E8);
  return (*(*(v27 - 8) + 56))(v20, v19, 1, v27);
}

uint64_t sub_2EDAA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3EABB4();
  __chkstk_darwin(v6 - 8);
  sub_3EABA4();
  v11._object = 0x800000000042D080;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_3EAB94(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  sub_3EAB84(v12);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_3EAB94(v13);
  sub_3EABD4();
  result = sub_3EB374();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_2EDBB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_3EB854();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5008C8, &unk_4180F0) + 36);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828, &qword_40F7C0) + 28);
  v6 = enum case for Image.Scale.small(_:);
  v7 = sub_3EB874();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  result = swift_getKeyPath();
  *v4 = result;
  *a1 = v3;
  return result;
}

uint64_t sub_2EDC94@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_3EAC84();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500868, &qword_417FF8);
  return sub_2EBF68(v2, a2 + *(v4 + 44));
}

uint64_t sub_2EDCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500878, &qword_418008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EDD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500878, &qword_418008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2EDDC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500870, &qword_418000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EDE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2EDEA0@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500930, &qword_4181E8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_3EAF14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  sub_3EAF24();
  sub_3EAF34();
  KeyPath = swift_getKeyPath();
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500938, &qword_4181F0) + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  v18 = &v8[*(v3 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500940, &qword_4181F8) + 28);
  v20 = enum case for Text.TruncationMode.middle(_:);
  v21 = sub_3EB234();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = *(v10 + 16);
  v22(v12, v15, v9);
  sub_FBD0(v8, v5, &qword_500930, &qword_4181E8);
  v22(a1, v12, v9);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500948, &qword_418230);
  sub_FBD0(v5, &a1[*(v23 + 48)], &qword_500930, &qword_4181E8);
  sub_FCF8(v8, &qword_500930, &qword_4181E8);
  v24 = *(v10 + 8);
  v24(v15, v9);
  sub_FCF8(v5, &qword_500930, &qword_4181E8);
  return (v24)(v12, v9);
}

uint64_t sub_2EE18C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_3EAB44();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500928, &qword_4181E0);
  return sub_2EDEA0((a1 + *(v2 + 44)));
}

uint64_t sub_2EE1F0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for ExplicitAppendingView(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2EE254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2EE2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2EE304()
{
  result = qword_5008D0;
  if (!qword_5008D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5008C8, &unk_4180F0);
    v4[0] = &protocol witness table for Image;
    v4[1] = sub_886BC(&qword_4FB920, &qword_4FB828, &qword_40F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5008D0);
  }

  return result;
}

unint64_t sub_2EE3C4()
{
  result = qword_5008E0;
  if (!qword_5008E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5008B8, &qword_4180E0);
    v4[0] = sub_2EE47C();
    v4[1] = sub_886BC(&qword_4FEE50, &qword_4FEE58, &unk_417D60, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5008E0);
  }

  return result;
}

unint64_t sub_2EE47C()
{
  result = qword_5008E8;
  if (!qword_5008E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5008D8, &qword_418130);
    v4[0] = sub_886BC(&qword_5008F0, &qword_5008F8, &qword_418138, &protocol conformance descriptor for Label<A, B>);
    v4[1] = sub_886BC(&qword_4FC0D8, &qword_4FC0E0, &qword_4141F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_5008E8);
  }

  return result;
}

unint64_t sub_2EE560()
{
  result = qword_500900;
  if (!qword_500900)
  {
    result = swift_getWitnessTable("9g\t", &type metadata for MentionedAroundLabelStyle, v0, v1);
    atomic_store(result, &qword_500900);
  }

  return result;
}

uint64_t sub_2EE650(uint64_t a1)
{
  v2 = sub_3EB234();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA934();
}

uint64_t sub_2EE774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0, qword_417100);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2EE850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5002B0, qword_417100);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for ReferenceLinkTitleViewModifier(uint64_t a1)
{
  result = qword_5009B8;
  if (!qword_5009B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2EE980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v83 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5009F0, &qword_4182D0);
  __chkstk_darwin(v81);
  v71 = &v61 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5009F8, &qword_4182D8);
  __chkstk_darwin(v62);
  v63 = &v61 - v4;
  v5 = sub_3EAC64();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A00, &qword_4182E0);
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v72 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A08, &qword_4182E8);
  __chkstk_darwin(v11);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v74 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A10, &qword_4182F0);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A18, &qword_4182F8);
  __chkstk_darwin(v18);
  v78 = &v61 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A20, &qword_418300);
  __chkstk_darwin(v84);
  v79 = &v61 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A28, &qword_418308);
  __chkstk_darwin(v80);
  v76 = &v61 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A30, &qword_418310);
  __chkstk_darwin(v77);
  v23 = &v61 - v22;
  v24 = sub_3EAAF4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(type metadata accessor for ReferenceLinkTitleViewModifier(0) + 20);
  v73 = v2;
  v29 = v2 + v28;
  v30 = *v29;
  LODWORD(v29) = *(v29 + 8);
  v75 = v18;
  if (v29 == 1)
  {
    v86 = v30;
  }

  else
  {

    sub_3ED9E4();
    v31 = v11;
    v32 = sub_3EB034();
    sub_3E9754();

    v11 = v31;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v30, 0);
    (*(v25 + 8))(v27, v24);
    LOBYTE(v30) = v86;
  }

  v33 = sub_3EB0F4();
  KeyPath = swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A38, &unk_418348);
  v36 = *(*(v35 - 8) + 16);
  if (v30)
  {
    if (v30 != 1)
    {
      v54 = v71;
      v36(v71, v82, v35);
      v55 = (v54 + *(v80 + 36));
      *v55 = KeyPath;
      v55[1] = v33;
      *(v54 + *(v81 + 36)) = sub_3EAEC4();
      sub_2EF3D0(v54, v17);
      swift_storeEnumTagMultiPayload();
      sub_2EF440();
      sub_2EF798();
      sub_3EADE4();
      return sub_FCF8(v54, &qword_5009F0, &qword_4182D0);
    }

    v37 = v76;
    v36(v76, v82, v35);
    v38 = (v37 + *(v80 + 36));
    *v38 = KeyPath;
    v38[1] = v33;
    sub_3EB144();
    sub_2EF5C0();
    v39 = v72;
    sub_3EB454();
    sub_FCF8(v37, &qword_500A28, &qword_418308);
    v40 = v67;
    sub_2830E8(v67);
    v41 = v68;
    v42 = v69;
    v43 = v70;
    (*(v69 + 104))(v68, enum case for ColorSchemeContrast.standard(_:), v70);
    v44 = sub_3EAC54();
    v45 = *(v42 + 8);
    v45(v41, v43);
    v45(v40, v43);
    if (v44)
    {
      sub_3EA294();
      swift_getOpaqueTypeConformance2();
    }

    else
    {
      v85 = sub_3EAEC4();
    }

    v57 = sub_3EA444();
    v58 = v64;
    (*(v65 + 32))(v64, v39, v66);
    *(v58 + *(v11 + 36)) = v57;
    v59 = v74;
    sub_2EF850(v58, v74);
    v50 = &qword_500A08;
    v51 = &qword_4182E8;
    sub_FBD0(v59, v78, &qword_500A08, &qword_4182E8);
    swift_storeEnumTagMultiPayload();
    sub_2EF4CC();
    sub_2EF6A4();
    v60 = v79;
    sub_3EADE4();
    sub_FBD0(v60, v17, &qword_500A20, &qword_418300);
    swift_storeEnumTagMultiPayload();
    sub_2EF440();
    sub_2EF798();
    sub_3EADE4();
    sub_FCF8(v60, &qword_500A20, &qword_418300);
    v53 = v59;
  }

  else
  {
    v46 = v76;
    v36(v76, v82, v35);
    v47 = (v46 + *(v80 + 36));
    *v47 = KeyPath;
    v47[1] = v33;
    sub_3EB144();
    sub_2EF5C0();
    sub_3EB454();
    sub_FCF8(v46, &qword_500A28, &qword_418308);
    v48 = sub_3EAEC4();
    v49 = v78;
    *&v23[*(v77 + 36)] = v48;
    v50 = &qword_500A30;
    v51 = &qword_418310;
    sub_FBD0(v23, v49, &qword_500A30, &qword_418310);
    swift_storeEnumTagMultiPayload();
    sub_2EF4CC();
    sub_2EF6A4();
    v52 = v79;
    sub_3EADE4();
    sub_FBD0(v52, v17, &qword_500A20, &qword_418300);
    swift_storeEnumTagMultiPayload();
    sub_2EF440();
    sub_2EF798();
    sub_3EADE4();
    sub_FCF8(v52, &qword_500A20, &qword_418300);
    v53 = v23;
  }

  return sub_FCF8(v53, v50, v51);
}

uint64_t sub_2EF3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5009F0, &qword_4182D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2EF440()
{
  result = qword_500A40;
  if (!qword_500A40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A20, &qword_418300);
    v4[0] = sub_2EF4CC();
    v4[1] = sub_2EF6A4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500A40);
  }

  return result;
}

unint64_t sub_2EF4CC()
{
  result = qword_500A48;
  if (!qword_500A48)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A30, &qword_418310);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A28, &qword_418308);
    v4[3] = sub_2EF5C0();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_886BC(&qword_4FEE50, &qword_4FEE58, &unk_417D60, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500A48);
  }

  return result;
}

unint64_t sub_2EF5C0()
{
  result = qword_500A50;
  if (!qword_500A50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A28, &qword_418308);
    v4[0] = sub_886BC(&qword_500A58, &qword_500A38, &unk_418348, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_886BC(&qword_4FC0D8, &qword_4FC0E0, &qword_4141F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500A50);
  }

  return result;
}

unint64_t sub_2EF6A4()
{
  result = qword_500A60;
  if (!qword_500A60)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A08, &qword_4182E8);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500A28, &qword_418308);
    v4[3] = sub_2EF5C0();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_886BC(&qword_4FB158, &qword_4FB160, &qword_413D90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500A60);
  }

  return result;
}

unint64_t sub_2EF798()
{
  result = qword_500A68;
  if (!qword_500A68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5009F0, &qword_4182D0);
    v4[0] = sub_2EF5C0();
    v4[1] = sub_886BC(&qword_4FEE50, &qword_4FEE58, &unk_417D60, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500A68);
  }

  return result;
}

uint64_t sub_2EF850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500A08, &qword_4182E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2EF8C4()
{
  result = qword_500A70;
  if (!qword_500A70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_500A78, qword_418358);
    v4[0] = sub_2EF440();
    v4[1] = sub_2EF798();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500A70);
  }

  return result;
}

uint64_t sub_2EF968(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v37 = a3[2];
  v4 = *(v37 - 8);
  v36 = a3[3];
  v5 = *(v4 + 84);
  v6 = *(v36 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a3[4] - 8);
  v35 = *(v9 + 84);
  if (v35 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(sub_3EAC64() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v10 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + v13;
  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = a1;
  if (v17 >= a2)
  {
    goto LABEL_36;
  }

  v21 = ((v12 + ((v16 + v19 + ((v14 + v15 + (v18 & ~v13)) & ~v15)) & ~v19) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v21 <= 3)
  {
    v22 = ((a2 - v17 + 255) >> 8) + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_36;
    }

    v25 = a1[v21];
    if (!a1[v21])
    {
      goto LABEL_36;
    }

LABEL_32:
    v27 = (v25 - 1) << (8 * v21);
    if (v21 <= 3)
    {
      v28 = *a1;
    }

    else
    {
      v27 = 0;
      v28 = *a1;
    }

    return v17 + (v28 | v27) + 1;
  }

  if (v24 == 2)
  {
    v25 = *&a1[v21];
    if (*&a1[v21])
    {
      goto LABEL_32;
    }
  }

  else
  {
    v25 = *&a1[v21];
    if (v25)
    {
      goto LABEL_32;
    }
  }

LABEL_36:
  if (v5 == v17)
  {
    v29 = v37;
    v30 = *(v4 + 48);
    v31 = v5;
LABEL_40:

    return v30(v20, v31, v29);
  }

  v20 = (&a1[v18] & ~v13);
  if (v7 == v17)
  {
    v30 = *(v6 + 48);
    v31 = v7;
    v29 = v36;
    goto LABEL_40;
  }

  v32 = &v20[v14 + v15] & ~v15;
  if (v35 == v17)
  {
    v33 = *(v9 + 48);

    return v33(v32);
  }

  else
  {
    v34 = *(((v32 + v16 + v19) & ~v19) + v12);
    if (v34 >= 2)
    {
      return (v34 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2EFCE4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v43 = a4[2];
  v5 = *(v43 - 8);
  v41 = a4[3];
  v42 = v5;
  v6 = *(v5 + 84);
  v7 = *(v41 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a4[4] - 8);
  v44 = v10;
  v40 = *(v10 + 84);
  if (v40 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = *(sub_3EAC64() - 8);
  v13 = *(v12 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v7 + 80);
  v16 = *(v5 + 64) + v15;
  v17 = *(v7 + 64);
  v18 = *(v10 + 80);
  v19 = *(v10 + 64);
  v20 = *(v12 + 80) & 0xF8 | 7;
  v21 = ((v13 + ((v19 + v20 + ((v17 + v18 + (v16 & ~v15)) & ~v18)) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (v14 >= a2)
  {
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

LABEL_43:
        if (v6 == v14)
        {
          v27 = v43;
          v28 = *(v42 + 56);
          v29 = a1;
          v30 = a2;
          v31 = v6;
        }

        else
        {
          v29 = (&a1[v16] & ~v15);
          if (v8 != v14)
          {
            v32 = &v29[v17 + v18] & ~v18;
            if (v40 == v14)
            {
              v33 = *(v44 + 56);

              v33(v32, a2);
            }

            else
            {
              v34 = ((v32 + v19 + v20) & ~v20);
              if (a2 > 0xFE)
              {
                v35 = (v13 + 1);
                v36 = -1 << (8 * (v13 + 1));
                if (v35 <= 3)
                {
                  v37 = ~v36;
                }

                else
                {
                  v37 = -1;
                }

                if (v35)
                {
                  v38 = v37 & (a2 - 255);
                  if (v35 <= 3)
                  {
                    v39 = v35;
                  }

                  else
                  {
                    v39 = 4;
                  }

                  bzero(v34, v35);
                  if (v39 > 2)
                  {
                    if (v39 == 3)
                    {
                      *v34 = v38;
                      v34[2] = BYTE2(v38);
                    }

                    else
                    {
                      *v34 = v38;
                    }
                  }

                  else if (v39 == 1)
                  {
                    *v34 = v38;
                  }

                  else
                  {
                    *v34 = v38;
                  }
                }
              }

              else
              {
                v34[v13] = -a2;
              }
            }

            return;
          }

          v28 = *(v7 + 56);
          v30 = a2;
          v31 = v8;
          v27 = v41;
        }

        v28(v29, v30, v31, v27);
        return;
      }

      *&a1[v21] = 0;
    }

    else if (v24)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  v25 = ~v14 + a2;
  bzero(a1, v21);
  if (v21 <= 3)
  {
    v26 = (v25 >> 8) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v25;
    if (v24 > 1)
    {
LABEL_31:
      if (v24 == 2)
      {
        *&a1[v21] = v26;
      }

      else
      {
        *&a1[v21] = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v24 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v24)
  {
    a1[v21] = v26;
  }
}

uint64_t sub_2F0158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  v3 = a1[3];
  v194 = a1[2];
  v195 = a1;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v197 = a1[6];
  v198 = v5;
  v196 = v6;
  v242[0] = v194;
  v242[1] = v3;
  v242[2] = v4;
  v242[3] = v5;
  v7 = v4;
  v193 = v4;
  v242[4] = v197;
  v242[5] = v6;
  v8 = type metadata accessor for ReferenceLinkView.StackView(255, v242);
  v9 = sub_3EA744();
  v170 = *(v9 - 8);
  __chkstk_darwin(v9);
  v167 = &v162 - v10;
  v212 = v11;
  v12 = sub_3EA744();
  v176 = *(v12 - 8);
  __chkstk_darwin(v12);
  v175 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v188 = &v162 - v15;
  v16 = sub_3EAC64();
  v171 = *(v16 - 8);
  v172 = v16;
  __chkstk_darwin(v16);
  v169 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v168 = &v162 - v19;
  v186 = sub_3EA7F4();
  __chkstk_darwin(v186);
  v173 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3EA744();
  v22 = sub_3EA744();
  v163 = *(v22 - 8);
  __chkstk_darwin(v22);
  v187 = &v162 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500B00, &qword_418900);
  v210 = v22;
  v24 = sub_3EA744();
  v178 = *(v24 - 8);
  __chkstk_darwin(v24);
  v177 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v174 = &v162 - v27;
  __chkstk_darwin(v28);
  v189 = &v162 - v29;
  v30 = sub_3EA744();
  v209 = v24;
  v31 = sub_3EADF4();
  v191 = *(v31 - 8);
  __chkstk_darwin(v31);
  v190 = &v162 - v32;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC460, &qword_4183F0);
  __chkstk_darwin(v182);
  v162 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v164 = &v162 - v35;
  v206 = v21;
  v184 = *(v21 - 8);
  __chkstk_darwin(v36);
  v183 = &v162 - v37;
  v203 = v30;
  v166 = *(v30 - 8);
  __chkstk_darwin(v38);
  v165 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v185 = &v162 - v41;
  v42 = sub_3EAAF4();
  v180 = *(v42 - 8);
  v181 = v42;
  __chkstk_darwin(v42);
  v179 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v31;
  v211 = v12;
  v44 = sub_3EADF4();
  v201 = *(v44 - 8);
  v202 = v44;
  __chkstk_darwin(v44);
  v200 = &v162 - v45;
  v192 = *(v7 - 8);
  __chkstk_darwin(v46);
  v48 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v3 - 8);
  __chkstk_darwin(v50);
  v52 = &v162 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v194;
  __chkstk_darwin(v54);
  v56 = &v162 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = v8;
  v199 = *(v8 - 8);
  v58 = __chkstk_darwin(v57);
  v60 = &v162 - v59;
  (*(v61 + 16))(v56, v2, v53, v58);
  v62 = v195;
  (*(v49 + 16))(v52, &v2[*(v195 + 17)], v3);
  v63 = v193;
  (*(v192 + 16))(v48, &v2[*(v62 + 18)], v193);
  v207 = v60;
  sub_2F17F4(v56, v52, v48, v53, v3, v63, v198, v197, v60, v196);
  v64 = *(v62 + 20);
  v198 = v2;
  v65 = &v2[v64];
  v66 = *v65;
  if (v65[8] == 1)
  {
    LOBYTE(v242[0]) = *v65;
  }

  else
  {

    sub_3ED9E4();
    v67 = sub_3EB034();
    sub_3E9754();

    v68 = v179;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v66, 0);
    (*(v180 + 8))(v68, v181);
    LOBYTE(v66) = v242[0];
  }

  v69 = v212;
  v70 = v208;
  v71 = v206;
  if (v66)
  {
    if (v66 == 1)
    {
      WitnessTable = swift_getWitnessTable(byte_418470, v208);
      v73 = v183;
      sub_3EB6B4();
      sub_3EBA74();
      v226[0] = WitnessTable;
      v226[1] = &protocol witness table for _PaddingLayout;
      v197 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v71, v226);
      sub_3EB634();
      (*(v184 + 8))(v73, v71);
      v74 = *(v186 + 20);
      v75 = enum case for RoundedCornerStyle.continuous(_:);
      v76 = sub_3EABE4();
      v77 = v173;
      (*(*(v76 - 8) + 104))(&v173[v74], v75, v76);
      __asm { FMOV            V0.2D, #16.0 }

      *v77 = _Q0;
      v83 = v168;
      sub_2830E8(v168);
      v85 = v171;
      v84 = v172;
      v86 = v169;
      (*(v171 + 104))(v169, enum case for ColorSchemeContrast.increased(_:), v172);
      LOBYTE(v75) = sub_3EAC54();
      v87 = *(v85 + 8);
      v87(v86, v84);
      v87(v83, v84);
      v196 = WitnessTable;
      if (v75)
      {
        v88 = [objc_opt_self() quaternarySystemFillColor];
        v89 = sub_3EB7D4();
      }

      else
      {
        sub_3EB784();
        v89 = sub_3EB794();
      }

      v135 = v210;
      v136 = v182;
      v137 = v162;
      v138 = v163;
      sub_2F1970(v77, v162);
      *(v137 + *(v136 + 52)) = v89;
      *(v137 + *(v136 + 56)) = 256;
      sub_3EBA74();
      v225[0] = v197;
      v225[1] = &protocol witness table for _FrameLayout;
      v139 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v135, v225);
      sub_886BC(qword_500B10, &qword_4FC460, &qword_4183F0, &protocol conformance descriptor for _ShapeView<A, B>);
      v140 = v174;
      v141 = v187;
      sub_3EB444();
      sub_2F19D4(v137);
      (*(v138 + 8))(v141, v135);
      v142 = sub_886BC(&qword_500B08, &qword_500B00, &qword_418900, &protocol conformance descriptor for _BackgroundModifier<A>);
      v224[0] = v139;
      v224[1] = v142;
      v143 = v209;
      v144 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v209, v224);
      sub_E63BC();
      v198 = *(v178 + 8);
      (v198)(v140, v143);
      v145 = v177;
      sub_E63BC();
      v223[0] = v197;
      v223[1] = v142;
      v146 = v203;
      v147 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v203, v223);
      v148 = v190;
      sub_E51C0(v145, v146, v143, v147, v144);
      v222[0] = v147;
      v222[1] = v144;
      v120 = v146;
      v111 = v204;
      v149 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v204, v222);
      v221[0] = v196;
      v221[1] = &protocol witness table for _FrameLayout;
      v220[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v212, v221);
      v220[1] = &protocol witness table for _PaddingLayout;
      v150 = v211;
      v151 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v211, v220);
      v115 = v200;
      sub_E50C8(v148, v111, v150, v149, v151);
      (*(v191 + 8))(v148, v111);
      v152 = v198;
      (v198)(v145, v143);
      (v152)(v189, v143);
      v117 = v206;
    }

    else
    {
      sub_3EBA74();
      v121 = swift_getWitnessTable(byte_418470, v70);
      v122 = v167;
      sub_3EB634();
      v241[0] = v121;
      v241[1] = &protocol witness table for _FrameLayout;
      v123 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v69, v241);
      v124 = v175;
      sub_3EB6B4();
      (*(v170 + 8))(v122, v69);
      v240[0] = v123;
      v240[1] = &protocol witness table for _PaddingLayout;
      v125 = v211;
      v197 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v211, v240);
      sub_E63BC();
      v198 = *(v176 + 8);
      (v198)(v124, v125);
      sub_E63BC();
      v239[0] = v121;
      v239[1] = &protocol witness table for _PaddingLayout;
      v126 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v71, v239);
      v127 = sub_886BC(&qword_500B08, &qword_500B00, &qword_418900, &protocol conformance descriptor for _BackgroundModifier<A>);
      v238[0] = v126;
      v238[1] = v127;
      v128 = v203;
      v129 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v203, v238);
      v237[0] = v126;
      v237[1] = &protocol witness table for _FrameLayout;
      v236[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v210, v237);
      v236[1] = v127;
      v117 = v71;
      v130 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v209, v236);
      v235[0] = v129;
      v235[1] = v130;
      v131 = v128;
      v111 = v204;
      v132 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v204, v235);
      v115 = v200;
      sub_E51C0(v124, v111, v125, v132, v197);
      v133 = v124;
      v120 = v131;
      v134 = v198;
      (v198)(v133, v125);
      (v134)(v188, v125);
    }

    v119 = v207;
    v109 = v208;
  }

  else
  {
    v90 = swift_getWitnessTable(byte_418470, v208);
    v91 = v183;
    v92 = v90;
    v198 = v90;
    sub_3EB6B4();
    v93 = *(v186 + 20);
    v94 = enum case for RoundedCornerStyle.continuous(_:);
    v95 = sub_3EABE4();
    v96 = v164;
    (*(*(v95 - 8) + 104))(&v164[v93], v94, v95);
    __asm { FMOV            V0.2D, #16.0 }

    *v96 = _Q0;
    v98 = [objc_opt_self() quaternarySystemFillColor];
    v99 = sub_3EB7D4();
    v100 = v182;
    *(v96 + *(v182 + 52)) = v99;
    *(v96 + *(v100 + 56)) = 256;
    sub_3EBA74();
    v219[0] = v92;
    v219[1] = &protocol witness table for _PaddingLayout;
    v101 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v71, v219);
    sub_886BC(qword_500B10, &qword_4FC460, &qword_4183F0, &protocol conformance descriptor for _ShapeView<A, B>);
    v102 = v165;
    sub_3EB444();
    sub_2F19D4(v96);
    (*(v184 + 8))(v91, v71);
    v103 = sub_886BC(&qword_500B08, &qword_500B00, &qword_418900, &protocol conformance descriptor for _BackgroundModifier<A>);
    v218[0] = v101;
    v218[1] = v103;
    v104 = v203;
    v105 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v203, v218);
    sub_E63BC();
    v197 = *(v166 + 8);
    v197(v102, v104);
    sub_E63BC();
    v217[0] = v101;
    v217[1] = &protocol witness table for _FrameLayout;
    v216[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v210, v217);
    v216[1] = v103;
    v106 = v209;
    v107 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v209, v216);
    v108 = v190;
    sub_E50C8(v102, v104, v106, v105, v107);
    v215[0] = v105;
    v215[1] = v107;
    v109 = v208;
    v110 = v104;
    v111 = v204;
    v112 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v204, v215);
    v214[0] = v198;
    v214[1] = &protocol witness table for _FrameLayout;
    v213[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v212, v214);
    v213[1] = &protocol witness table for _PaddingLayout;
    v113 = v211;
    v114 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v211, v213);
    v115 = v200;
    sub_E50C8(v108, v111, v113, v112, v114);
    (*(v191 + 8))(v108, v111);
    v116 = v102;
    v117 = v206;
    v118 = v197;
    v197(v116, v110);
    v118(v185, v110);
    v119 = v207;
    v120 = v110;
  }

  (*(v199 + 8))(v119, v109);
  v153 = swift_getWitnessTable(byte_418470, v109);
  v234[0] = v153;
  v234[1] = &protocol witness table for _PaddingLayout;
  v154 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v117, v234);
  v155 = sub_886BC(&qword_500B08, &qword_500B00, &qword_418900, &protocol conformance descriptor for _BackgroundModifier<A>);
  v233[0] = v154;
  v233[1] = v155;
  v156 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v120, v233);
  v232[0] = v154;
  v232[1] = &protocol witness table for _FrameLayout;
  v231[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v210, v232);
  v231[1] = v155;
  v157 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v209, v231);
  v230[0] = v156;
  v230[1] = v157;
  v158 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v111, v230);
  v229[0] = v153;
  v229[1] = &protocol witness table for _FrameLayout;
  v228[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v212, v229);
  v228[1] = &protocol witness table for _PaddingLayout;
  v159 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v211, v228);
  v227[0] = v158;
  v227[1] = v159;
  v160 = v202;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v202, v227);
  sub_E63BC();
  return (*(v201 + 8))(v115, v160);
}

uint64_t sub_2F17F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  v22[5] = a10;
  v18 = type metadata accessor for ReferenceLinkView.StackView(0, v22);
  (*(*(a5 - 8) + 32))(a9 + v18[17], a2, a5);
  (*(*(a6 - 8) + 32))(a9 + v18[18], a3, a6);
  v19 = a9 + v18[19];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a9 + v18[20];
  result = swift_getKeyPath();
  *v20 = result;
  *(v20 + 8) = 0;
  return result;
}

uint64_t sub_2F1970(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EA7F4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2F19D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC460, &qword_4183F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2F1A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        a4(319);
        if (v8 <= 0x3F)
        {
          sub_2DC100();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2F1B4C(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v6 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v19 = ((((v18 + ((v14 + v15 + (v17 & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  v20 = (a2 - v16 + 255) >> 8;
  if (v19 <= 3)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *&a1[v19];
      if (!v24)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v26 = (v24 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v27 = *a1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
    }

    return v16 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = a1[v19];
    if (a1[v19])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  if (v7 == v16)
  {
    v28 = *(v5 + 48);

    return v28(a1, v7);
  }

  else
  {
    v29 = &a1[v17] & ~v13;
    if (v9 == v16)
    {
      v30 = *(v8 + 48);

      return v30(v29);
    }

    else
    {
      v31 = (v29 + v14 + v15) & ~v15;
      if (v12 == v16)
      {
        v32 = *(v11 + 48);

        return v32(v31, v12, v6);
      }

      else
      {
        v33 = *(((v18 + v31) & 0xFFFFFFFFFFFFFFF8) + 9);
        if (v33 > 1)
        {
          return (v33 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

void sub_2F1E0C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = a4[3];
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(a4[4] - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v13 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = *(v12 + 84);
  }

  if (v19 <= 0xFE)
  {
    v19 = 254;
  }

  v20 = v18 + 7;
  v21 = ((((v18 + 7 + ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 >= a3)
  {
    v25 = 0;
    if (v19 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v19 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v21] = v27;
        }

        else
        {
          *&a1[v21] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v21] = v27;
    }

    return;
  }

  v22 = (a3 - v19 + 255) >> 8;
  if (v21 <= 3)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v25)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 != v19)
  {
    v29 = &a1[v14 + v15] & ~v15;
    if (v10 == v19)
    {
      v30 = *(v9 + 56);
    }

    else
    {
      v29 = (v29 + v16 + v17) & ~v17;
      if (v13 != v19)
      {
        v31 = (v20 + v29) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v31 + 8) = 0;
          *v31 = a2 - 255;
        }

        else
        {
          *(v31 + 9) = -a2;
        }

        return;
      }

      v30 = *(v12 + 56);
    }

    v30(v29);
    return;
  }

  v28 = *(v6 + 56);

  v28(a1);
}

void sub_2F215C(uint64_t a1)
{
  if (!qword_500B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1720, qword_3FE2C8);
    v1 = sub_3EA324();
    if (!v2)
    {
      atomic_store(v1, &qword_500B98);
    }
  }
}

uint64_t sub_2F21C0(_OWORD *a1)
{
  v1 = a1[1];
  v25[0] = *a1;
  v25[1] = v1;
  v25[2] = a1[2];
  v2 = type metadata accessor for ReferenceLinkView.StackView(255, v25);
  v3 = sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500B00, &qword_418900);
  v4 = sub_3EA744();
  v5 = sub_3EA744();
  v6 = sub_3EA744();
  v7 = sub_3EADF4();
  v8 = sub_3EA744();
  v15 = sub_3EA744();
  v16 = sub_3EADF4();
  WitnessTable = swift_getWitnessTable(byte_418470, v2);
  v24[0] = WitnessTable;
  v24[1] = &protocol witness table for _PaddingLayout;
  v10 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v24);
  v11 = sub_886BC(&qword_500B08, &qword_500B00, &qword_418900, &protocol conformance descriptor for _BackgroundModifier<A>);
  v23[0] = v10;
  v23[1] = v11;
  v12 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v23);
  v22[0] = v10;
  v22[1] = &protocol witness table for _FrameLayout;
  v21[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v22);
  v21[1] = v11;
  v20[0] = v12;
  v20[1] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v21);
  v13 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v7, v20);
  v19[0] = WitnessTable;
  v19[1] = &protocol witness table for _FrameLayout;
  v18[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v19);
  v18[1] = &protocol witness table for _PaddingLayout;
  v17[0] = v13;
  v17[1] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v18);
  return swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v16, v17);
}

uint64_t sub_2F2484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = *(a1 + 24);
  v5 = sub_3EA744();
  v6 = *(a1 + 16);
  v22 = v5;
  v23 = v6;
  v24 = &type metadata for Spacer;
  v7 = *(a1 + 32);
  v25 = sub_3EA744();
  swift_getTupleTypeMetadata();
  v8 = sub_3EBB04();
  swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v8);
  v9 = sub_3EB934();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v18 - v14;
  sub_3EAB64();
  v18[4] = v6;
  v18[5] = v4;
  v18[6] = v7;
  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  v21 = v18[0];
  sub_3EB924();
  swift_getWitnessTable(&protocol conformance descriptor for HStack<A>, v9);
  sub_E63BC();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_E63BC();
  return (v16)(v15, v9);
}

uint64_t sub_2F26C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v95 = a6;
  v97 = a5;
  v74 = a1;
  v90 = a8;
  v78 = sub_3EAAF4();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a4 - 8);
  __chkstk_darwin(v14);
  v91 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16;
  v73 = v16;
  v86 = sub_3EA744();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v72 - v20;
  __chkstk_darwin(v21);
  v83 = &v72 - v22;
  v23 = a2;
  v98 = a2;
  v88 = *(a2 - 8);
  __chkstk_darwin(v24);
  v96 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  v29 = sub_3EA744();
  v92 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v72 - v33;
  v108 = v23;
  v109 = a3;
  v110 = v17;
  v111 = a5;
  v35 = v95;
  v112 = v95;
  v113 = a7;
  v87 = a7;
  v36 = type metadata accessor for ReferenceLinkView.StackView(0, &v108);
  v37 = v74;
  sub_2F2FE8(v36);
  sub_3EB6B4();
  v107[0] = v35;
  v107[1] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v29, v107);
  v93 = v34;
  v79 = WitnessTable;
  sub_E63BC();
  v39 = *(v92 + 8);
  v94 = v31;
  v40 = v31;
  v41 = v37;
  v84 = v29;
  v42 = v29;
  v43 = v75;
  v81 = v92 + 8;
  v80 = v39;
  v39(v40, v42);
  v95 = v28;
  v44 = v73;
  sub_E63BC();
  (*(v43 + 16))(v91, v41 + v36[18], v44);
  v45 = v41 + v36[20];
  v46 = *v45;
  if (*(v45 + 8) == 1)
  {
    LOBYTE(v103[0]) = *v45;
    v47 = v78;
    v48 = v77;
    v49 = v76;
  }

  else
  {

    sub_3ED9E4();
    v50 = sub_3EB034();
    sub_3E9754();

    v49 = v76;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v46, 0);
    v48 = v77;
    v47 = v78;
    (*(v77 + 8))(v49, v78);
  }

  v51 = v41 + v36[19];
  v52 = *v51;
  v53 = *(v51 + 8);
  if (*(v51 + 9) != 1)
  {

    sub_3ED9E4();
    v54 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_2F3178(v52, v53, 0);
    (*(v48 + 8))(v49, v47);
  }

  v55 = v82;
  v56 = v87;
  v57 = v91;
  sub_3EB6B4();
  (*(v43 + 8))(v57, v44);
  v106[0] = v56;
  v106[1] = &protocol witness table for _PaddingLayout;
  v58 = v86;
  v59 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v86, v106);
  v60 = v83;
  sub_E63BC();
  v61 = v85;
  v91 = *(v85 + 8);
  (v91)(v55, v58);
  v62 = v94;
  v63 = v84;
  (*(v92 + 16))(v94, v93, v84);
  v108 = v62;
  v64 = v88;
  v65 = v96;
  v66 = v98;
  (*(v88 + 16))();
  v104 = 0;
  v105 = 1;
  v109 = v65;
  v110 = &v104;
  v67 = v89;
  (*(v61 + 16))(v89, v60, v58);
  v111 = v67;
  v103[0] = v63;
  v103[1] = v66;
  v103[2] = &type metadata for Spacer;
  v103[3] = v58;
  v99 = v79;
  v100 = v97;
  v101 = &protocol witness table for Spacer;
  v102 = v59;
  sub_25192C(&v108, 4uLL, v103);
  v68 = v91;
  (v91)(v60, v58);
  v69 = *(v64 + 8);
  v69(v95, v66);
  v70 = v80;
  v80(v93, v63);
  (v68)(v67, v58);
  v69(v96, v66);
  return v70(v94, v63);
}

double sub_2F2FE8(uint64_t a1)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_3ED9E4();
    v9 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v8, 0);
    (*(v4 + 8))(v6, v3);
  }

  return 0.0;
}

uint64_t sub_2F3178(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2F3184(uint64_t *a1, double a2)
{
  v2 = *a1;
  v6 = sub_3EA744();
  v7 = sub_3EA744();
  swift_getTupleTypeMetadata();
  v3 = sub_3EBB04();
  swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v3, v6, v2, &type metadata for Spacer, v7);
  v4 = sub_3EB934();
  return swift_getWitnessTable(&protocol conformance descriptor for HStack<A>, v4);
}

uint64_t sub_2F3298(uint64_t a1)
{
  result = type metadata accessor for ReferenceLinkMetadata(319);
  if (v2 <= 0x3F)
  {
    result = sub_2F330C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2F330C()
{
  result = qword_4E9C48;
  if (!qword_4E9C48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_4E9C48);
  }

  return result;
}

uint64_t sub_2F3384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLReferenceLink(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2F34C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLReferenceLink(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2F3614(uint64_t a1)
{
  type metadata accessor for URLReferenceLink(319);
  if (v1 <= 0x3F)
  {
    sub_2DC100();
    if (v2 <= 0x3F)
    {
      sub_2F3728(319, &qword_4FB3B0, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_2F3728(319, &unk_500CB8, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2F3728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2F37CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URLReferenceLinkView(0);
  v37 = *(v4 - 8);
  v36 = *(v37 + 64);
  __chkstk_darwin(v4);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2F3B94();
  v34 = v7;
  v8 = sub_2F3D70();
  v10 = v9;
  v11 = type metadata accessor for URLReferenceLink(0);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v12 = v11[7];
  v13 = type metadata accessor for ReferenceLinkTextStackView(0);
  v14 = v13[8];
  v15 = sub_3E7D54();
  (*(*(v15 - 8) + 16))(a1 + v14, v2 + v12, v15);
  sub_FBD0(v2 + v11[9], a1 + v13[9], &qword_4F00B8, &qword_3FBA90);
  v16 = a1 + v13[11];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v13[12];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08, &qword_3FA780);
  swift_storeEnumTagMultiPayload();
  v18 = v34;
  *a1 = v6;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + v13[10]) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500CF0, &unk_418680);
  v20 = a1 + v19[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
  sub_3EB8E4();
  v21 = v20 + *(type metadata accessor for URLReferenceLinkView.IconView(0) + 20);
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a1 + v19[18];
  v24 = *(v2 + 16);
  v23 = *(v2 + 24);
  sub_FBD0(v2 + v11[10], v38, &qword_4F00B0, &qword_3FB1A8);
  v25 = v38[1];
  *(v22 + 16) = v38[0];
  *(v22 + 32) = v25;
  *(v22 + 48) = v39;
  *v22 = v24;
  *(v22 + 8) = v23;
  *(v22 + 56) = swift_getKeyPath();
  *(v22 + 64) = 0;
  *(v22 + 72) = swift_getKeyPath();
  *(v22 + 80) = 0;
  *(v22 + 88) = swift_getKeyPath();
  *(v22 + 96) = 0;
  v26 = v19[19];
  *(a1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0, &qword_4179A0);
  swift_storeEnumTagMultiPayload();
  v27 = a1 + v19[20];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = v35;
  sub_2F5A00(v2, v35, type metadata accessor for URLReferenceLinkView);
  v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v30 = swift_allocObject();
  sub_2F6E08(v28, v30 + v29, type metadata accessor for URLReferenceLinkView);
  v31 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500CF8, &qword_418730) + 36));
  sub_3EA524();

  result = sub_3ED6C4();
  *v31 = &unk_418728;
  v31[1] = v30;
  return result;
}

uint64_t sub_2F3B94()
{
  v0 = type metadata accessor for ReferenceLinkMetadata(0);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URLReferenceLinkView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
  sub_3EB8C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2F5A68(v5, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    }

    type metadata accessor for URLReferenceLink(0);
    v7 = sub_3E5D54(1);
    if (v8)
    {
      v11._countAndFlagsBits = 779581303;
      v11._object = 0xE400000000000000;
      v7 = sub_3ED2F4(v11);
    }
  }

  else
  {
    sub_2F6E08(v5, v2, type metadata accessor for ReferenceLinkMetadata);
    v7 = *&v2[*(v0 + 20)];

    sub_2F5A68(v2, type metadata accessor for ReferenceLinkMetadata);
  }

  return v7;
}

uint64_t sub_2F3D70()
{
  v0 = type metadata accessor for ReferenceLinkMetadata(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URLReferenceLinkView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
  sub_3EB8C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2F5A68(v5, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    }

    type metadata accessor for URLReferenceLink(0);
    return sub_3E5CD4();
  }

  else
  {
    sub_2F6E08(v5, v2, type metadata accessor for ReferenceLinkMetadata);
    v8 = sub_3E5D54(1);
    if (v9)
    {
      v11._countAndFlagsBits = 779581303;
      v11._object = 0xE400000000000000;
      v8 = sub_3ED2F4(v11);
    }

    sub_2F5A68(v2, type metadata accessor for ReferenceLinkMetadata);
    return v8;
  }
}

uint64_t sub_2F3F38(uint64_t a1)
{
  v1[2] = a1;
  sub_3ED6B4();
  v1[3] = sub_3ED6A4();
  v3 = sub_3ED684();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_2F3FD0, v3, v2);
}

uint64_t sub_2F3FD0()
{
  v1 = v0[2];
  if (*(v1 + *(type metadata accessor for URLReferenceLink(0) + 32)))
  {
    v2 = sub_3EE804();

    if ((v2 & 1) == 0)
    {

      v3 = v0[1];

      return v3();
    }
  }

  else
  {
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2F40F0;

  return sub_2F4270();
}

uint64_t sub_2F40F0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_2F4210, v3, v2);
}

uint64_t sub_2F4210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2F4270()
{
  v1[9] = v0;
  v1[10] = type metadata accessor for URLReferenceLinkView(0);
  v1[11] = swift_task_alloc();
  v2 = sub_3E9A04();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  type metadata accessor for ReferenceLinkMetadata(0);
  v1[18] = swift_task_alloc();
  v3 = sub_3EC6C4();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_3EC7C4();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for ReferenceLinkMetadataIntent(0);
  v1[26] = swift_task_alloc();
  v5 = sub_3EAAF4();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  sub_3ED6B4();
  v1[30] = sub_3ED6A4();
  v7 = sub_3ED684();
  v1[31] = v7;
  v1[32] = v6;

  return _swift_task_switch(sub_2F4540, v7, v6);
}

uint64_t sub_2F4540()
{
  v1 = (*(v0 + 72) + *(*(v0 + 80) + 24));
  v2 = *v1;
  *(v0 + 264) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 320) = v3;

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 216);
    sub_3ED9E4();
    v7 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = *(v0 + 56);
  }

  *(v0 + 272) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0, &unk_3FD560);
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = sub_2F46B8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16);
}

uint64_t sub_2F46B8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_2F4D5C;
  }

  else
  {

    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_2F47D4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_2F47D4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 208);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 72);
  v8 = *(type metadata accessor for URLReferenceLink(0) + 24);
  v9 = sub_3E5DC4();
  (*(*(v9 - 8) + 16))(v3, v7 + v8, v9);
  (*(v5 + 104))(v4, enum case for IntentCacheUsePolicy.useCachedResultPreferringOngoingDispatch(_:), v6);
  sub_3EC7B4();
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v10);

  if ((v1 & 1) == 0)
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);
    sub_3ED9E4();
    v15 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v13 + 8))(v12, v14);
    v2 = *(v0 + 64);
  }

  *(v0 + 296) = v2;
  v16 = swift_task_alloc();
  *(v0 + 304) = v16;
  v17 = sub_2F71C8(&qword_4F1DC8, type metadata accessor for ReferenceLinkMetadataIntent, protocol conformance descriptor for ReferenceLinkMetadataIntent);
  *v16 = v0;
  v16[1] = sub_2F4A18;
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 192);
  v21 = *(v0 + 144);

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(v21, v18, v2, v20, v19, v17, v10, v11);
}

uint64_t sub_2F4A18()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_2F5118;
  }

  else
  {
    v5 = sub_2F4B70;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2F4B70()
{
  v9 = v0[26];
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];

  sub_2F5A00(v4, v5, type metadata accessor for ReferenceLinkMetadata);
  swift_storeEnumTagMultiPayload();
  sub_2F5A00(v5, v6, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
  sub_3EB8D4();
  sub_2F5A68(v5, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  sub_2F5A68(v4, type metadata accessor for ReferenceLinkMetadata);
  (*(v2 + 8))(v1, v3);
  sub_2F5A68(v9, type metadata accessor for ReferenceLinkMetadataIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2F4D5C()
{
  v26 = v0;

  v1 = v0[36];
  v2 = v0[11];
  v3 = v0[9];
  sub_3E9964();
  sub_2F5A00(v3, v2, type metadata accessor for URLReferenceLinkView);
  swift_errorRetain();
  v4 = sub_3E99F4();
  v5 = sub_3ED9D4();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    type metadata accessor for URLReferenceLink(0);
    v24 = v7;
    sub_3E5DC4();
    v23 = v10;
    sub_2F71C8(&qword_500D00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = sub_3EE7A4();
    v15 = v14;
    sub_2F5A68(v9, type metadata accessor for URLReferenceLinkView);
    v16 = sub_2EDD0(v13, v15, &v25);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&dword_0, v4, v5, "Unable to fetch metadata for URL %{private,mask.hash}s with error %{public}@.", v11, 0x20u);
    sub_FCF8(v12, &unk_502160, &qword_3FD240);

    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    (*(v8 + 8))(v24, v23);
  }

  else
  {

    sub_2F5A68(v9, type metadata accessor for URLReferenceLinkView);
    (*(v8 + 8))(v7, v10);
  }

  v19 = v0[16];
  v18 = v0[17];
  *v18 = v1;
  swift_storeEnumTagMultiPayload();
  sub_2F5A00(v18, v19, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
  sub_3EB8D4();
  sub_2F5A68(v18, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2F5118()
{
  v30 = v0;
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  (*(v3 + 8))(v2, v4);
  sub_2F5A68(v1, type metadata accessor for ReferenceLinkMetadataIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[39];
  v6 = v0[11];
  v7 = v0[9];
  sub_3E9964();
  sub_2F5A00(v7, v6, type metadata accessor for URLReferenceLinkView);
  swift_errorRetain();
  v8 = sub_3E99F4();
  v9 = sub_3ED9D4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    type metadata accessor for URLReferenceLink(0);
    v28 = v11;
    sub_3E5DC4();
    v27 = v14;
    sub_2F71C8(&qword_500D00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_3EE7A4();
    v19 = v18;
    sub_2F5A68(v13, type metadata accessor for URLReferenceLinkView);
    v20 = sub_2EDD0(v17, v19, &v29);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v21;
    *v16 = v21;
    _os_log_impl(&dword_0, v8, v9, "Unable to fetch metadata for URL %{private,mask.hash}s with error %{public}@.", v15, 0x20u);
    sub_FCF8(v16, &unk_502160, &qword_3FD240);

    __swift_destroy_boxed_opaque_existential_1Tm(v26);

    (*(v12 + 8))(v28, v27);
  }

  else
  {

    sub_2F5A68(v13, type metadata accessor for URLReferenceLinkView);
    (*(v12 + 8))(v11, v14);
  }

  v23 = v0[16];
  v22 = v0[17];
  *v22 = v5;
  swift_storeEnumTagMultiPayload();
  sub_2F5A00(v22, v23, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);
  sub_3EB8D4();
  sub_2F5A68(v22, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2F5578()
{
  v1 = type metadata accessor for URLReferenceLinkView(0);
  v2 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  v25 = (v2 + 16) & ~v2;
  v26 = v0;
  v3 = v0 + v25;

  v4 = type metadata accessor for URLReferenceLink(0);
  v5 = v4[6];
  v6 = sub_3E5DC4();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v8 = v4[7];
  v9 = sub_3E7D54();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v4[9];
  v11 = type metadata accessor for ReferenceLinkTimeframe(0);
  if (!(*(*(v11 - 8) + 48))(v3 + v10, 1, v11))
  {
    v12 = sub_3E9604();
    (*(*(v12 - 8) + 8))(v3 + v10, v12);
  }

  v13 = (v3 + v4[10]);
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = v4[11];
  v15 = sub_3ECC84();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v3 + v14, v15);
  }

  v17 = v4[12];
  v18 = sub_3EC634();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v3 + v17, v18);
  }

  sub_23968C(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));

  v20 = v3 + *(v1 + 28);
  type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7(v20, v6);
    v22 = type metadata accessor for ReferenceLinkMetadata(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500C48, qword_418598);

  return _swift_deallocObject(v26, v25 + v24, v2 | 7);
}

uint64_t sub_2F5934()
{
  v2 = *(type metadata accessor for URLReferenceLinkView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2368C;

  return sub_2F3F38(v0 + v3);
}

uint64_t sub_2F5A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2F5A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2F5AC8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EA7F4();
  __chkstk_darwin(v4);
  v6 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_3EAAF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for URLReferenceLinkView.IconView(0) + 20);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
    v43 = v12;
  }

  else
  {
    v40[0] = v4;
    v40[1] = v2;

    sub_3ED9E4();
    v14 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v12, 0);
    v15 = *(v8 + 8);
    v15(v10, v7);
    v16 = *v11;
    if (*(v11 + 8) == 1)
    {
      v13 = *v11;
      v43 = v16;
    }

    else
    {

      sub_3ED9E4();
      v17 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_23968C(v16, 0);
      v15(v10, v7);
      v13 = v43;
    }

    v4 = v40[0];
  }

  v18 = *(v4 + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_3EABE4();
  (*(*(v20 - 8) + 104))(v6 + v18, v19, v20);
  v21 = 5.0;
  if (v13 < 2)
  {
    v21 = 6.0;
  }

  *v6 = v21;
  v6[1] = v21;
  sub_2F5FE4(v41);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DC0, &qword_4187A8) + 36);
  sub_2F5A00(v6, v22, &type metadata accessor for RoundedRectangle);
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8, &qword_4187B0) + 36)] = 256;
  v23 = *v42;
  a1[2] = v41[2];
  a1[3] = v23;
  *(a1 + 57) = *&v42[9];
  v24 = v41[1];
  *a1 = v41[0];
  a1[1] = v24;
  v25 = sub_3EBA74();
  v27 = v26;
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DC8, &qword_4187B8) + 36);
  sub_3EA354();
  sub_2F5A00(v6, v28, &type metadata accessor for RoundedRectangle);
  v29 = *&v44 * 0.5;
  v30 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DD0, &qword_4187C0) + 68)];
  sub_2F5A00(v6, v30, &type metadata accessor for RoundedRectangle);
  *(v30 + *(sub_3EA7E4() + 20)) = v29;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DD8, &qword_4187C8) + 36);
  v32 = v45;
  *v31 = v44;
  *(v31 + 16) = v32;
  *(v31 + 32) = v46;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DE0, &qword_4187D0) + 56)) = 256;
  v33 = sub_3EBA74();
  v35 = v34;
  v36 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DE8, &qword_4187D8) + 36));
  *v36 = v33;
  v36[1] = v35;
  sub_3EB764();
  v37 = sub_3EB794();

  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DF0, &qword_4187E0) + 36)] = v37;
  v38 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DF8, &qword_4187E8) + 36)];
  *v38 = v25;
  v38[1] = v27;
  return sub_2F5A68(v6, &type metadata accessor for RoundedRectangle);
}

__n128 sub_2F5FE4@<Q0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_3EB844();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReferenceLinkMetadata(0);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500D08, &qword_418740);
  sub_3EB9B4();
  sub_2F6E08(v13, v10, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2F5A68(v10, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    }

    goto LABEL_6;
  }

  v15 = v25;
  sub_2F6E08(v10, v7, type metadata accessor for ReferenceLinkMetadata);
  v16 = *&v7[*(v5 + 24)];
  v17 = v16;
  sub_2F5A68(v7, type metadata accessor for ReferenceLinkMetadata);
  if (!v16)
  {
LABEL_6:
    KeyPath = swift_getKeyPath();
    sub_3EBA74();
    sub_3EA434();
    *&v27[39] = *&v30[16];
    *&v27[23] = *v30;
    *&v27[7] = v29;
    *(v28 + 9) = *v27;
    v35[0] = 0;
    LOBYTE(v32) = 0;
    *&v28[0] = KeyPath;
    BYTE8(v28[0]) = 0;
    *(&v28[1] + 9) = *&v27[16];
    *(&v28[2] + 9) = *&v27[32];
    *(&v28[3] + 1) = *&v30[24];
    BYTE8(v28[4]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E08, &qword_4187F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E00, &qword_4187F0);
    sub_2F7280(&qword_500E10, &qword_500E08, &qword_4187F8, sub_2F722C);
    sub_2F7280(&qword_500E20, &qword_500E00, &qword_4187F0, sub_234B04);
    sub_3EADE4();
    goto LABEL_7;
  }

  v18 = v17;
  sub_3EB814();
  (*(v15 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v2);
  v19 = sub_3EB894();

  (*(v15 + 8))(v4, v2);
  sub_2F6584(v18);
  sub_3EBA74();
  sub_3EA434();
  LOBYTE(v28[0]) = 1;
  *&v35[6] = v32;
  *&v35[22] = v33;
  *&v35[38] = v34;
  v29 = v19;
  *v30 = 257;
  *&v30[2] = *v35;
  *&v30[18] = *&v35[16];
  *&v30[34] = *&v35[32];
  *&v30[48] = *(&v34 + 1);
  *v35 = v19;
  *&v35[16] = *v30;
  *&v35[32] = *&v30[16];
  *&v35[48] = *&v30[32];
  *&v35[64] = *(&v34 + 1);
  v31 = 1;
  v35[72] = 1;
  sub_FBD0(&v29, v28, &qword_500E00, &qword_4187F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E08, &qword_4187F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E00, &qword_4187F0);
  sub_2F7280(&qword_500E10, &qword_500E08, &qword_4187F8, sub_2F722C);
  sub_2F7280(&qword_500E20, &qword_500E00, &qword_4187F0, sub_234B04);
  sub_3EADE4();

  sub_FCF8(&v29, &qword_500E00, &qword_4187F0);
  *&v35[32] = v28[2];
  *&v35[48] = v28[3];
  *&v35[57] = *(&v28[3] + 9);
  *v35 = v28[0];
  *&v35[16] = v28[1];
LABEL_7:
  v21 = *&v35[48];
  v22 = v26;
  *(v26 + 32) = *&v35[32];
  *(v22 + 48) = v21;
  *(v22 + 57) = *&v35[57];
  result = *&v35[16];
  *v22 = *v35;
  *(v22 + 16) = result;
  return result;
}

id sub_2F6584(void *a1)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(type metadata accessor for URLReferenceLinkView.IconView(0) + 20);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_3ED9E4();
    v10 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v15[15];
  }

  if (v9 >= 2)
  {
    v11 = 68.0;
  }

  else
  {
    v11 = 40.0;
  }

  result = [a1 size];
  if (vabdd_f64(v13, v14) >= 2.22044605e-16 && v13 > 0.0 && v14 > 0.0 && v11 * 0.75 > v11 * 1.77777778)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2F6784@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC098, &qword_410378);
  __chkstk_darwin(v2 - 8);
  v58 = &v53 - v3;
  v4 = sub_3EAAF4();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EA7F4();
  __chkstk_darwin(v7);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC460, &qword_4183F0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E60, &qword_4188E8);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E68, &qword_4188F0);
  __chkstk_darwin(v56);
  v57 = &v53 - v16;
  v17 = *v1;
  if (*(v1 + 8) == 1)
  {
    v18 = *v1;
    LOBYTE(v60) = v17;
  }

  else
  {

    sub_3ED9E4();
    v19 = sub_3EB034();
    v54 = v4;
    v20 = v13;
    v21 = v19;
    sub_3E9754();

    v13 = v20;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v17, 0);
    (*(v55 + 8))(v6, v54);
    v18 = v60;
  }

  v22 = *(v7 + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_3EABE4();
  (*(*(v24 - 8) + 104))(v9 + v22, v23, v24);
  v25 = 5.0;
  if (v18 < 2)
  {
    v25 = 6.0;
  }

  *v9 = v25;
  v9[1] = v25;
  v26 = objc_opt_self();
  v27 = [v26 quaternarySystemFillColor];
  v28 = sub_3EB7D4();
  sub_2F6E08(v9, v12, &type metadata accessor for RoundedRectangle);
  *&v12[*(v10 + 52)] = v28;
  *&v12[*(v10 + 56)] = 256;
  sub_3EA354();
  sub_2F5A00(v12, v15, &type metadata accessor for RoundedRectangle);
  v29 = *&v60 * 0.5;
  v30 = &v15[*(v13 + 68)];
  sub_2F5A00(v12, v30, &type metadata accessor for RoundedRectangle);
  *(v30 + *(sub_3EA7E4() + 20)) = v29;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DD8, &qword_4187C8) + 36);
  v32 = v61;
  *v31 = v60;
  *(v31 + 16) = v32;
  *(v31 + 32) = v62;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500DE0, &qword_4187D0) + 56)) = 256;
  v33 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E70, &qword_4188F8) + 36);
  sub_FBD0(v12, v33, &qword_4FC460, &qword_4183F0);
  v34 = sub_3EBA74();
  v36 = v35;
  sub_FCF8(v12, &qword_4FC460, &qword_4183F0);
  v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500B00, &qword_418900) + 36));
  *v37 = v34;
  v37[1] = v36;
  sub_3EB764();
  v38 = sub_3EB794();

  v39 = v57;
  sub_FACC(v15, v57, &qword_500E60, &qword_4188E8);
  *(v39 + *(v56 + 36)) = v38;
  v40 = sub_3EBA74();
  v42 = v41;
  v43 = sub_3EB834();
  sub_3EB134();
  v44 = sub_3EB124();
  v45 = v58;
  (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
  v46 = sub_3EB154();
  sub_FCF8(v45, &qword_4FC098, &qword_410378);
  KeyPath = swift_getKeyPath();
  v48 = [v26 tertiaryLabelColor];
  v49 = sub_3EB7D4();
  v50 = v59;
  sub_FACC(v39, v59, &qword_500E68, &qword_4188F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500E78, &unk_418938);
  v52 = (v50 + *(result + 36));
  *v52 = v43;
  v52[1] = KeyPath;
  v52[2] = v46;
  v52[3] = v49;
  v52[4] = v40;
  v52[5] = v42;
  return result;
}

uint64_t sub_2F6E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2F6E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500D08, &qword_418740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2F6F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500D08, &qword_418740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_2F7028(uint64_t a1)
{
  sub_2F3728(319, &unk_500D78, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_2DC100();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2F70E0()
{
  result = qword_500DA8;
  if (!qword_500DA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500CF8, &qword_418730);
    v4[0] = sub_886BC(&qword_500DB0, &qword_500CF0, &unk_418680, byte_418398);
    v4[1] = sub_2F71C8(&qword_500DB8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500DA8);
  }

  return result;
}

uint64_t sub_2F71C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2F722C()
{
  result = qword_500E18;
  if (!qword_500E18)
  {
    result = swift_getWitnessTable(byte_418898, &type metadata for URLReferenceLinkView.PlaceholderIconView, v0, v1);
    atomic_store(result, &qword_500E18);
  }

  return result;
}

uint64_t sub_2F7280(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2F7318()
{
  result = qword_500E28;
  if (!qword_500E28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500DC8, &qword_4187B8);
    v4[0] = sub_2F73D0();
    v4[1] = sub_886BC(&qword_500E58, &qword_500DF8, &qword_4187E8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500E28);
  }

  return result;
}

unint64_t sub_2F73D0()
{
  result = qword_500E30;
  if (!qword_500E30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500DC0, &qword_4187A8);
    v4[0] = sub_2F7488();
    v4[1] = sub_886BC(&qword_4FBD20, &qword_4FBCD8, &qword_4187B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500E30);
  }

  return result;
}

unint64_t sub_2F7488()
{
  result = qword_500E38;
  if (!qword_500E38)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E40, &qword_418888);
    v4[0] = sub_2F750C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v3, v4);
    atomic_store(result, &qword_500E38);
  }

  return result;
}

unint64_t sub_2F750C()
{
  result = qword_500E48;
  if (!qword_500E48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E50, &qword_418890);
    v4[0] = sub_2F7280(&qword_500E10, &qword_500E08, &qword_4187F8, sub_2F722C);
    v4[1] = sub_2F7280(&qword_500E20, &qword_500E00, &qword_4187F0, sub_234B04);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_500E48);
  }

  return result;
}

unint64_t sub_2F7618()
{
  result = qword_500E80;
  if (!qword_500E80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E78, &unk_418938);
    v4[0] = sub_2F76D0();
    v4[1] = sub_886BC(&qword_500E98, &unk_500EA0, &qword_418948, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500E80);
  }

  return result;
}

unint64_t sub_2F76D0()
{
  result = qword_500E88;
  if (!qword_500E88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500E68, &qword_4188F0);
    v4[0] = sub_886BC(&qword_500E90, &qword_500E60, &qword_4188E8, &protocol conformance descriptor for StrokeBorderShapeView<A, B, C>);
    v4[1] = sub_886BC(&qword_4FC0E8, &qword_4FC0F0, &qword_410410, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_500E88);
  }

  return result;
}

void sub_2F77D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2F7830()
{
  v1 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2F7884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id LibraryTabGroupManager.__allocating_init(asPartOf:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2FCD88(a1);

  return v4;
}

id LibraryTabGroupManager.init(asPartOf:)(uint64_t a1)
{
  v1 = sub_2FCD88(a1);

  return v1;
}

id LibraryTabGroupManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EB0, &qword_418950);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, v1 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabsContinuation, v2, v4);
  sub_3ED724();
  (*(v3 + 8))(v6, v2);
  v7 = type metadata accessor for LibraryTabGroupManager(0);
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_2F7D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EC0, &unk_418958);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = (v3 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider);
  v11 = *(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider);
  v12 = *(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider + 8);
  *v10 = a1;
  v10[1] = a2;

  sub_16AC0(v11, v12);
  sub_2F86EC();
  v13 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_subscription;
  if (*(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_subscription))
  {

    sub_3E9CA4();
  }

  v16[1] = sub_30B588();
  v16[0] = sub_30CE0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_500EE0, &qword_40D3B0);
  sub_886BC(&qword_4F9A28, &unk_500EE0, &qword_40D3B0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_3E9FE4();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_886BC(&qword_500EF0, &qword_500EC0, &unk_418958, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v14 = sub_3EA1A4();

  (*(v7 + 8))(v9, v6);
  *(v3 + v13) = v14;
}

void sub_2F7FD0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = *(a1 + 3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v10[0] = v2;
    v11 = v3;
    v8[0] = v4;
    v9 = v5;
    sub_2F8E0C(v10, v8);
  }
}

uint64_t sub_2F805C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EF8, &qword_418970);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_3ED6B4();
  v3[13] = sub_3ED6A4();
  v6 = sub_3ED684();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_2F8164, v6, v5);
}

uint64_t sub_2F8164()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_3ED204();
  v5 = [v3 tabForIdentifier:v4];

  if (v5)
  {

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500F08, &qword_418978);
    sub_3ED734();
    v0[16] = 0;
    v8 = sub_3ED6A4();
    v0[17] = v8;
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_2F8318;
    v10 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 5, v8, &protocol witness table for MainActor, v10);
  }
}

uint64_t sub_2F8318()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_2F845C, v3, v2);
}

uint64_t sub_2F845C()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    sub_2FD398();
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = [*(v0 + 40) identifier];
  v5 = sub_3ED244();
  v7 = v6;

  if (v5 == v3 && v7 == v2)
  {

    goto LABEL_14;
  }

  v9 = sub_3EE804();

  if (v9)
  {
LABEL_14:
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v13 = *(v0 + 8);

    return v13(v1);
  }

  v10 = *(v0 + 128);
  sub_3ED774();
  if (v10)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

LABEL_10:

    v11 = *(v0 + 8);

    return v11();
  }

  *(v0 + 128) = 0;
  v14 = sub_3ED6A4();
  *(v0 + 136) = v14;
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  v15[1] = sub_2F8318;
  v16 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 40, v14, &protocol witness table for MainActor, v16);
}

void sub_2F86EC()
{
  v1 = v0;
  v2 = sub_3E6AE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider];
  if (v9)
  {
    v30 = v3;
    v31 = v2;
    v10 = *&v1[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider + 8];
    sub_36174(0, &unk_501080, UITabGroup_ptr);
    v11 = qword_4E8AD8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v6, qword_5398C8);
    sub_301180(v12, v8, type metadata accessor for TabMenu.Item);
    sub_7A6C8(v9, v10);
    v13 = sub_30A674(v8, v9, v10);
    sub_16AC0(v9, v10);
    v14 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
    swift_beginAccess();
    v15 = *&v1[v14];
    *&v1[v14] = v13;
    v16 = v13;

    [v16 setSidebarAppearance:2];
    [*&v1[v14] setPreferredPlacement:6];
    [*&v1[v14] setAllowsReordering:1];
    v17 = *&v1[v14];
    v18 = (v9)(18);
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
    }

    [v17 setManagingNavigationController:v19];

    v20 = *&v1[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsTabGroup];
    [v20 setSidebarAppearance:2];
    [v20 setPreferredPlacement:6];
    [v20 setAllowsReordering:1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E18, &unk_3F5FE0);
    v32[3] = type metadata accessor for LibraryTabGroupManager(0);
    v32[4] = &protocol witness table for LibraryTabGroupManager;
    v32[0] = v1;
    v21 = v1;
    sub_3EC3A4();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_36174(0, &qword_4EA880, UIAction_ptr);
    v22 = [objc_opt_self() mainBundle];
    v29._countAndFlagsBits = 0xE000000000000000;
    v33._countAndFlagsBits = 0x544154535F57454ELL;
    v33._object = 0xEB000000004E4F49;
    v34.value._countAndFlagsBits = 0;
    v34.value._object = 0;
    v23.super.isa = v22;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_3E5A74(v33, v34, v23, v35, 0, v29);

    sub_3E6A04();
    sub_3E69A4();
    (*(v30 + 8))(v5, v31);

    v24 = sub_3EDEF4();
    v25 = sub_3ED204();
    [v24 setAccessibilityIdentifier:v25];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80, &qword_3F7EA0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_3F7950;
    *(v26 + 32) = v24;
    v27 = v24;
    isa = sub_3ED574().super.isa;

    [v20 setSidebarActions:isa];

    sub_16AC0(v9, v10);
  }
}

uint64_t sub_2F8C00(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0, &qword_3FD580);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v14[3] = type metadata accessor for TextFieldAlertAction(0);
  v14[4] = sub_301280(&qword_501120, type metadata accessor for TextFieldAlertAction, protocol conformance descriptor for TextFieldAlertAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v14);
  static TextFieldAlertAction.newStation(then:)(0, 0, boxed_opaque_existential_0Tm);
  v14[5] = a2;
  sub_E69A0(v14, v13);
  v7 = swift_allocObject();
  v8 = v13[1];
  v7[1] = v13[0];
  v7[2] = v8;
  v7[3] = v13[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00, &unk_3F5EF0);

  v9 = sub_3ECE04();
  v10 = sub_3ED6F4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_418B98;
  v11[5] = v7;
  v11[6] = v9;

  sub_E8ECC(0, 0, v5, &unk_418BA0, v11);

  return sub_E91B8(v14);
}

double sub_2F8E0C(char *a1, char *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection;
  v8 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection);
  v9 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection + 8);
  v10 = v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection;
  v11 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection);
  v12 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection + 8);
  *v7 = *a1;
  *(v7 + 8) = v4;
  *v10 = v5;
  *(v10 + 8) = v6;

  v20[0] = v8;
  v21 = v9;
  v18[0] = v3;
  v19 = v4;
  v16[0] = v11;
  v17 = v12;
  v14[0] = v5;
  v15 = v6;
  sub_2F8F0C(v20, v18, v16, v14);

  return result;
}

void sub_2F8F0C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070, &qword_40D3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v157 - v10;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501078, &unk_418B48);
  v166 = *(v180 - 8);
  __chkstk_darwin(v180);
  v179 = &v157 - v12;
  v178 = type metadata accessor for TabMenu.Item(0);
  v171 = *(v178 - 8);
  __chkstk_darwin(v178);
  v160 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v177 = &v157 - v15;
  __chkstk_darwin(v16);
  v18 = &v157 - v17;
  __chkstk_darwin(v19);
  v182 = &v157 - v20;
  __chkstk_darwin(v21);
  v23 = &v157 - v22;
  v170 = sub_3EC6A4();
  v184 = *(v170 - 8);
  __chkstk_darwin(v170);
  __chkstk_darwin(v24);
  v27 = &v157 - v26;
  v28 = *(v4 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider);
  if (!v28)
  {
    return;
  }

  v163 = v25;
  v174 = v18;
  v157 = v11;
  v159 = *(a1 + 8);
  v162 = *a2;
  v164 = *(a2 + 1);
  v173 = *(a3 + 8);
  v29 = *(a4 + 1);
  v30 = *(v4 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider + 8);
  v31 = *a4;
  v32 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v172 = v32;
  v33 = *(v4 + v32);
  v168 = v30;
  sub_7A6C8(v28, v30);
  v34 = [v33 children];
  v176 = sub_36174(0, &qword_4EA748, UITab_ptr);
  v35 = sub_3ED584();

  v181 = sub_3083C8(v35);
  v165 = 0;

  v36 = *(v4 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsTabGroup);
  TabMenu.Group.title.getter(v31);
  v37 = sub_3ED204();

  v175 = v36;
  [v36 setTitle:v37];

  v38 = v4;
  v167 = v28;
  if (v31 > 1)
  {
    v39 = v184;
    if (v31 == 2)
    {
      v41 = 0x74732E70756F7267;
      v40 = 0xEE00736E6F697461;
    }

    else
    {
      v41 = 0x65732E70756F7267;
      v40 = 0xEC00000068637261;
    }
  }

  else
  {
    v39 = v184;
    if (v31)
    {
      v41 = 0x696C2E70756F7267;
      v40 = 0xED00007972617262;
    }

    else
    {
      v40 = 0x800000000042D280;
      v41 = 0xD000000000000013;
    }
  }

  v42 = v170;
  *(&v192 + 1) = &type metadata for String;
  *&v191 = v41;
  *(&v191 + 1) = v40;
  sub_3EC684();
  __swift_destroy_boxed_opaque_existential_1Tm(&v191);
  v161 = sub_36174(0, &unk_501080, UITabGroup_ptr);
  sub_3EDDD4();
  v45 = v39[1];
  v44 = v39 + 1;
  v43 = v45;
  v45(v27, v42);
  v46 = sub_2FA598(v29, v173);
  v47 = &selRef_setDefaultTabInterval_;
  v183 = v4;
  v169 = v29;
  if ((v46 & 1) == 0 || ((v48 = [v175 children], v49 = sub_3ED584(), v48, v49 >> 62) ? (v50 = sub_3EE5A4()) : (v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8))), , !v50))
  {
    v158 = v43;
    v51 = *(v29 + 16);
    if (v51)
    {
      v184 = v44;
      *&v191 = _swiftEmptyArrayStorage;
      sub_3EE4C4();
      v52 = *(v38 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_objectGraph);
      v53 = v29 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v54 = *(v171 + 72);
      v55 = v167;
      v56 = v168;
      do
      {
        sub_301180(v53, v23, type metadata accessor for TabMenu.Item);
        v57 = swift_allocObject();
        *(v57 + 16) = v55;
        *(v57 + 24) = v56;
        sub_7A6C8(v55, v56);
        TabMenu.Item.tab(asPartOf:viewControllerProvider:)(v52, sub_3012EC, v57);

        sub_3011F8(v23, type metadata accessor for TabMenu.Item);
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        v53 += v54;
        --v51;
      }

      while (v51);
      v38 = v183;
      v29 = v169;
      v42 = v170;
      v47 = &selRef_setDefaultTabInterval_;
    }

    isa = sub_3ED574().super.isa;

    [v175 v47[265]];

    v43 = v158;
  }

  v59 = *(v38 + v172);
  if (v162 > 1)
  {
    if (v162 == 2)
    {
      v61 = 0x74732E70756F7267;
      v60 = 0xEE00736E6F697461;
    }

    else
    {
      v61 = 0x65732E70756F7267;
      v60 = 0xEC00000068637261;
    }
  }

  else if (v162)
  {
    v61 = 0x696C2E70756F7267;
    v60 = 0xED00007972617262;
  }

  else
  {
    v60 = 0x800000000042D280;
    v61 = 0xD000000000000013;
  }

  *(&v192 + 1) = &type metadata for String;
  *&v191 = v61;
  *(&v191 + 1) = v60;
  v62 = v59;
  v63 = v163;
  sub_3EC684();
  __swift_destroy_boxed_opaque_existential_1Tm(&v191);
  sub_3EDDD4();

  v43(v63, v42);
  v64 = sub_2FA598(v29, v173);
  v65 = v164;
  if ((v64 & 1) == 0 || (sub_2FA598(v164, v159) & 1) == 0)
  {
    v66 = *(v38 + v172);
    v67 = *(v65 + 16);
    if (v67)
    {
      *&v191 = _swiftEmptyArrayStorage;
      v184 = v66;
      v68 = v66;
      sub_3EE4C4();
      v69 = *(v38 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_objectGraph);
      v70 = v65 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v71 = *(v171 + 72);
      v72 = v167;
      v73 = v168;
      do
      {
        sub_301180(v70, v23, type metadata accessor for TabMenu.Item);
        v74 = swift_allocObject();
        *(v74 + 16) = v72;
        *(v74 + 24) = v73;
        sub_7A6C8(v72, v73);
        v75 = TabMenu.Item.tab(asPartOf:viewControllerProvider:)(v69, sub_300EF0, v74);

        [v75 setAllowsHiding:1];
        sub_3011F8(v23, type metadata accessor for TabMenu.Item);
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        v70 += v71;
        --v67;
      }

      while (v67);
      v76 = v191;
      v38 = v183;
      v47 = &selRef_setDefaultTabInterval_;
      v66 = v184;
    }

    else
    {
      v77 = v66;
      v76 = _swiftEmptyArrayStorage;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80, &qword_3F7EA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3F7950;
    v79 = v175;
    *(inited + 32) = v175;
    *&v191 = v76;
    v80 = v79;
    sub_41620(inited);
    v81 = sub_3ED574().super.isa;

    [v66 v47[265]];
  }

  v82 = *(v38 + v172);
  v83 = [v82 children];
  v84 = sub_3ED584();

  v85 = v165;
  v86 = sub_3083C8(v84);
  v184 = v85;

  *&v191 = _swiftEmptyArrayStorage;
  if (v86 >> 62)
  {
    goto LABEL_63;
  }

  v87 = *(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8));
LABEL_35:
  if (v87)
  {
    v88 = 0;
    do
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        v89 = sub_3EE3F4();
      }

      else
      {
        if (v88 >= *(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_61;
        }

        v89 = *(v86 + 8 * v88 + 32);
      }

      v90 = v89;
      v91 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_60;
      }

      *&v187 = v89;
      __chkstk_darwin(v89);
      *(&v157 - 2) = &v187;
      v92 = v184;
      v93 = sub_9102C(sub_300F18, (&v157 - 4), v181);
      v184 = v92;
      if (v93)
      {
      }

      else
      {
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
      }

      ++v88;
    }

    while (v91 != v87);
    v94 = v191;
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  if ((v94 & 0x8000000000000000) != 0 || (v94 & 0x4000000000000000) != 0)
  {
    v86 = sub_3EE5A4();
    if (v86)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v86 = *(v94 + 16);
    if (v86)
    {
LABEL_51:
      v95 = 0;
      v96 = (v166 + 8);
      v97 = v179;
      do
      {
        if ((v94 & 0xC000000000000001) != 0)
        {
          v98 = sub_3EE3F4();
          v99 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v95 >= *(v94 + 16))
          {
            goto LABEL_62;
          }

          v98 = *(v94 + 8 * v95 + 32);
          v99 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            v87 = sub_3EE5A4();
            goto LABEL_35;
          }
        }

        *&v191 = v98;
        v100 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EB0, &qword_418950);
        sub_3ED714();

        (*v96)(v97, v180);
        ++v95;
      }

      while (v99 != v86);
    }
  }

  v101 = v169;
  v102 = *(v169 + 16);
  if (v102 == *(v173 + 16))
  {
    if (v102)
    {
      v190 = _swiftEmptyArrayStorage;
      sub_41BA8(0, v102, 0);
      v103 = v190;
      v180 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v104 = v173 + v180;
      v105 = *(v171 + 72);
      v106 = v182;
      v181 = v105;
      do
      {
        sub_301180(v104, v106, type metadata accessor for TabMenu.Item);
        v107 = sub_304A84();
        v106 = v182;
        v108 = v107;
        v110 = v109;
        v188 = v107;
        v189 = v109;
        v111 = *(v182 + *(v178 + 28));
        if ((v111 - 1) >= 0x12)
        {
          if (v111)
          {
            v112 = *(v111 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
            *(&v192 + 1) = &type metadata for Int;
            *&v191 = v112;
          }

          else
          {
            v191 = 0u;
            v192 = 0u;
          }

          sub_FBD0(&v191, &v185, &unk_501090, &unk_3F48A0);
          if (v186)
          {
            sub_1FB90(&v185, &v187);
            sub_2F4AC(&v187, &v185);

            v193._countAndFlagsBits = sub_3ED2B4();
            sub_3ED3D4(v193);
            v106 = v182;

            sub_29EB8(v111);
            __swift_destroy_boxed_opaque_existential_1Tm(&v187);
            sub_3011F8(v106, type metadata accessor for TabMenu.Item);
            v108 = v188;
            v110 = v189;
          }

          else
          {
            sub_3011F8(v106, type metadata accessor for TabMenu.Item);
            sub_FCF8(&v185, &unk_501090, &unk_3F48A0);
          }

          sub_FCF8(&v191, &unk_501090, &unk_3F48A0);
          v105 = v181;
        }

        else
        {
          sub_3011F8(v182, type metadata accessor for TabMenu.Item);
        }

        v190 = v103;
        v114 = v103[2];
        v113 = v103[3];
        if (v114 >= v113 >> 1)
        {
          sub_41BA8((v113 > 1), v114 + 1, 1);
          v106 = v182;
          v103 = v190;
        }

        v103[2] = v114 + 1;
        v115 = &v103[2 * v114];
        v115[4] = v108;
        v115[5] = v110;
        v104 += v105;
        --v102;
      }

      while (v102);
      v101 = v169;
      v182 = *(v169 + 16);
      if (v182)
      {
        v116 = 0;
        v117 = v169 + v180;
        v118 = _swiftEmptyArrayStorage;
        v119 = v160;
        v120 = v174;
        while (v116 < *(v101 + 16))
        {
          v121 = sub_301180(v117, v120, type metadata accessor for TabMenu.Item);
          __chkstk_darwin(v121);
          *(&v157 - 2) = v120;
          v114 = v184;
          v122 = sub_90F80(sub_300F90, (&v157 - 4), v103);
          v184 = v114;
          if (v122)
          {
            sub_3011F8(v120, type metadata accessor for TabMenu.Item);
          }

          else
          {
            sub_300FB0(v120, v119);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v191 = v118;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_41D74(0, v118[2] + 1, 1);
              v118 = v191;
            }

            v114 = v118[2];
            v124 = v118[3];
            if (v114 >= v124 >> 1)
            {
              sub_41D74((v124 > 1), v114 + 1, 1);
              v118 = v191;
            }

            v118[2] = v114 + 1;
            sub_300FB0(v119, v118 + v180 + v114 * v105);
          }

          ++v116;
          v117 += v105;
          if (v182 == v116)
          {
            goto LABEL_93;
          }
        }

        __break(1u);
LABEL_127:
        sub_16AC0(v167, v168);

        sub_300F80(v117);
        sub_300F80(v117);

        sub_FCF8(v118, &qword_501070, &qword_40D3E0);
        return;
      }

      v118 = _swiftEmptyArrayStorage;
    }

    else
    {
      v118 = _swiftEmptyArrayStorage;
    }

LABEL_93:

    v125 = v118[2];
    v126 = v177;
    if (v125)
    {
      v127 = *(v178 + 28);
      v128 = v118 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v129 = *(v171 + 72);
      do
      {
        sub_301180(v128, v126, type metadata accessor for TabMenu.Item);
        v130 = *(v126 + v127);
        if (v130 >= 0x13)
        {
          v131 = *(v130 + 16);
          v132 = *(v130 + 24);

          v133 = [v175 children];
          v134 = sub_3ED584();

          v135 = sub_2FAEA4(v131, v132, v134);

          v126 = v177;

          if (v135)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v137 = Strong;
              v138 = [Strong sidebar];

              v126 = v177;
              [v138 reconfigureItemForTab:v135];
            }
          }
        }

        sub_3011F8(v126, type metadata accessor for TabMenu.Item);
        v128 += v129;
        --v125;
      }

      while (v125);

      v101 = v169;
    }

    else
    {
    }
  }

  v139 = v183;
  v140 = swift_unknownObjectWeakLoadStrong();
  if (!v140 || (v141 = v140, v103 = [v140 selectedViewController], v141, !v103))
  {
LABEL_117:
    sub_16AC0(v167, v168);
    return;
  }

  objc_opt_self();
  v142 = swift_dynamicCastObjCClass();
  if (!v142)
  {

    goto LABEL_117;
  }

  v143 = [v142 viewControllers];
  sub_36174(0, &qword_502180, UIViewController_ptr);
  v144 = sub_3ED584();

  if (v144 >> 62)
  {
    if (sub_3EE5A4())
    {
      goto LABEL_108;
    }

LABEL_130:

LABEL_131:
    sub_16AC0(v167, v168);

    return;
  }

  if (!*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_130;
  }

LABEL_108:
  if ((v144 & 0xC000000000000001) != 0)
  {
    v145 = sub_3EE3F4();
LABEL_111:
    v114 = v145;

    swift_getObjectType();
    v146 = swift_conformsToProtocol2();
    if (v146 && v114)
    {
      v147 = v146;
      ObjectType = swift_getObjectType();
      v149 = (*(v147 + 8))(ObjectType, v147);
      v117 = v149;
      if ((v149 - 1) >= 0x12)
      {
        if (v149)
        {
          if (v149 == 19)
          {
            sub_16AC0(v167, v168);

            return;
          }

          v151 = *(v149 + 16);
          v152 = *(v149 + 24);
          sub_29EA4(v149);
          v153 = v151;
          v118 = v157;
          sub_2FB258(v153, v152, v101, v157);
          if ((*(v171 + 48))(v118, 1, v178) == 1)
          {
            sub_FCF8(v118, &qword_501070, &qword_40D3E0);
            v154 = *(v139 + v172);
            v156 = UITab.tab(matching:)(8uLL, v155);
            [v154 setSelectedChild:v156];
            sub_16AC0(v167, v168);

            sub_300F80(v117);
            sub_300F80(v117);
            return;
          }

          goto LABEL_127;
        }

        sub_16AC0(v167, v168);

        v150 = 0;
      }

      else
      {
        sub_16AC0(v167, v168);

        v150 = v117;
      }

      sub_300F80(v150);

      return;
    }

    goto LABEL_131;
  }

  if (*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)))
  {
    v145 = *(v144 + 32);
    goto LABEL_111;
  }

  __break(1u);
}
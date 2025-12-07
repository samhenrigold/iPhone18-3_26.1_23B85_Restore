unint64_t sub_1DB3E86F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  qword_1ECC45198 = sub_1DB315520();
  result = sub_1DB3EB7B4();
  qword_1ECC451A0 = result;
  qword_1ECC45180 = v0;
  return result;
}

uint64_t static MediaArtwork._nullCachedImagesKey.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1ECC42100 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_1DB30BE90(&qword_1ECC45180, v1);
}

uint64_t MediaArtwork.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30BE90(a1, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v21;
  v8 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v9 = (*(v8 + 32))(v7, v8);
  LOBYTE(v8) = v10;
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v13 = (*(v12 + 40))(v11, v12);
  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v16 = (*(v15 + 48))(v14, v15);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_0(v20);
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  return sub_1DB2FEA0C(a1, a2 + 48);
}

uint64_t MediaArtwork.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = &_s20_AppleServicesSourceVN;
  v5 = &off_1EECE7FF8;
  *&v3 = a1;
  return MediaArtwork.init(_:)(&v3, a2);
}

uint64_t MediaArtwork.init(urlTemplate:sourceImageSize:colors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v9 = &_s20_AppleServicesSourceVN;
  v10 = &off_1EECE7FF8;
  *&v8 = sub_1DB34CAE4(a1, a2, a3, a5, a6);
  return MediaArtwork.init(_:)(&v8, a4);
}

uint64_t MediaArtwork.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = _s10_URLSourceVMa(0);
  v10 = &off_1EECE7FA8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v8);
  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  (*(v6 + 16))(boxed_opaque_existential_0, a1, v5);
  MediaArtwork.init(_:)(&v8, a2);
  return (*(v6 + 8))(a1, v5);
}

uint64_t MediaArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = sub_1DB50B3D0();
  v44[3] = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44[2] = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451A8, &qword_1DB5199F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A40, &unk_1DB516260);
  MEMORY[0x1EEE9AC00](v46);
  v44[1] = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43508, &qword_1DB5118D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v44 - v8;
  v10 = _s10_URLSourceVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30BE90(a1, &v48);
  sub_1DB34BD48(&v48);
  if (v2)
  {

    sub_1DB30BE90(a1, &v48);
    sub_1DB34AAC4(&v48, v9);
    v56 = a1;
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1DB34CA28(v9, v13);
    *(&v54 + 1) = v10;
    v55 = &off_1EECE7FA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v53);
    sub_1DB3EB58C(v13, boxed_opaque_existential_0);
    sub_1DB30BE90(&v53, &v48);
    v27 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v28 = (*(*(&v27 + 1) + 24))(v27, *(&v27 + 1));
    v29 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v30 = (*(*(&v29 + 1) + 32))(v29, *(&v29 + 1));
    v32 = v31;
    v33 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v34 = (*(*(&v33 + 1) + 40))(v33, *(&v33 + 1));
    v35 = *(&v49 + 1);
    v36 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v37 = (*(v35 + 48))(v36, v35);
    v39 = v38;
    sub_1DB3EB5F0(v13);
    __swift_destroy_boxed_opaque_existential_0(&v48);
    *&v50 = v28;
    *(&v50 + 1) = v30;
    LOBYTE(v51) = v32 & 1;
    *(&v51 + 1) = v34;
    *&v52 = v37;
    *(&v52 + 1) = v39;
    a1 = v56;
  }

  else
  {
    *(&v54 + 1) = &_s12_EmptySourceVN;
    v55 = &off_1EECE8048;
    sub_1DB30BE90(&v53, &v48);
    v14 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v15 = (*(*(&v14 + 1) + 24))(v14, *(&v14 + 1));
    v16 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v17 = (*(*(&v16 + 1) + 32))(v16, *(&v16 + 1));
    v19 = v18;
    v20 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v21 = (*(*(&v20 + 1) + 40))(v20, *(&v20 + 1));
    v22 = v49;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v23 = (*(*(&v22 + 1) + 48))(v22, *(&v22 + 1));
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(&v48);
    *&v50 = v15;
    *(&v50 + 1) = v17;
    LOBYTE(v51) = v19 & 1;
    *(&v51 + 1) = v21;
    *&v52 = v23;
    *(&v52 + 1) = v25;
  }

  v40 = v53;
  v41 = v47;
  *(v47 + 32) = v52;
  *(v41 + 48) = v40;
  *(v41 + 64) = v54;
  *(v41 + 80) = v55;
  v42 = v51;
  *v41 = v50;
  *(v41 + 16) = v42;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MediaArtwork.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DB50B400();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = _s10_URLSourceVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30BE90(v1 + 48, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A68, &qword_1DB50F518);
  if (swift_dynamicCast())
  {
    v14 = v44;
    sub_1DB2FEA0C(&v45, v49);
    sub_1DB30BE90(v49, v48);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {

          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_1DB50BE20();
          __swift_project_boxed_opaque_existential_1(v49, v50);
          __swift_mutable_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
          sub_1DB50BB00();
          __swift_destroy_boxed_opaque_existential_0(&v45);
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v25 = sub_1DB50BE30();
          v26 = sub_1DB31FE80(0xD000000000000027, 0x80000001DB52A4A0, v25);

          if (v26 && (MEMORY[0x1EEE9AC00](v27), *(&v41 - 2) = v49, v28 = v42, sub_1DB305C84(sub_1DB3EB64C, (&v41 - 4), v26), v30 = v29, v42 = v28, , v30))
          {
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            sub_1DB3053A8();
            sub_1DB50BE40();
            v45 = xmmword_1DB50F500;
            LOBYTE(v46) = 1;
            v31 = v42;
            sub_1DB50B860();

            if (!v31)
            {
              __swift_project_boxed_opaque_existential_1(v49, v50);
              sub_1DB50A5B0();
            }

            (*(v41 + 8))(v10, v8);
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            sub_1DB50BE00();
            *&v45 = 0;
            *(&v45 + 1) = 0xE000000000000000;
            sub_1DB50B320();

            *&v45 = 0xD000000000000017;
            *(&v45 + 1) = 0x80000001DB529550;
            __swift_project_boxed_opaque_existential_1(v49, v50);
            swift_getDynamicType();
            v32 = sub_1DB50BEE0();
            MEMORY[0x1E1285C70](v32);

            MEMORY[0x1E1285C70](62, 0xE100000000000000);
            v33 = v7;
            sub_1DB50B3C0();
            v34 = sub_1DB50B410();
            swift_allocError();
            v36 = v35;
            v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
            __swift_project_boxed_opaque_existential_1(v49, v50);
            DynamicType = swift_getDynamicType();
            v36[3] = swift_getMetatypeMetadata();
            *v36 = DynamicType;
            v39 = v7;
            v40 = v43;
            (*(v14 + 16))(v36 + v37, v39, v43);
            (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6B30], v34);
            swift_willThrow();
            (*(v14 + 8))(v33, v40);
          }
        }

        goto LABEL_6;
      }

      sub_1DB3EB5F0(v13);
    }

    __swift_destroy_boxed_opaque_existential_0(v48);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_project_boxed_opaque_existential_1(v49, v50);
    __swift_mutable_project_boxed_opaque_existential_1(v48, v48[3]);
    sub_1DB50BB00();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v48);
    return __swift_destroy_boxed_opaque_existential_0(v49);
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1DB30623C(&v45, qword_1ECC42A70, &qword_1DB50F520);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE00();
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52D170);
  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52D190);
  sub_1DB50B3C0();
  v16 = sub_1DB50B410();
  swift_allocError();
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
  v20 = *(v2 + 72);
  v21 = __swift_project_boxed_opaque_existential_1((v2 + 48), v20);
  v18[3] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v21, v20);
  v23 = v43;
  v24 = v44;
  (*(v44 + 16))(v18 + v19, v7, v43);
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
  swift_willThrow();
  return (*(v24 + 8))(v7, v23);
}

uint64_t MediaArtwork.isEmpty.getter()
{
  sub_1DB30BE90(v0 + 48, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
  return swift_dynamicCast();
}

uint64_t MediaArtwork.subscript.getter(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

void MediaArtwork.resize(_:croppedTo:)(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1DB3EB6A4(v4, a2);
  v9 = v4[9];
  v10 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v9);
  if ((*(v10 + 48))(v9, v10) > 0.0)
  {
    v11 = v4[9];
    v12 = v4[10];
    __swift_project_boxed_opaque_existential_1(v4 + 6, v11);
    (*(v12 + 48))(v11, v12);
    if (v13 > 0.0)
    {
      v14 = v4[9];
      v15 = v4[10];
      __swift_project_boxed_opaque_existential_1(v4 + 6, v14);
      v16 = (*(v15 + 48))(v14, v15);
      a3 = sub_1DB3A09EC(a1, a3, a4, v16, v17);
      a4 = v18;
    }
  }

  *(a2 + 32) = a3;
  *(a2 + 40) = a4;

  objc_storeStrong((a2 + 24), a1);
}

void MediaArtwork.format(_:withQuality:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1DB3EB6A4(v4, a4);
  objc_storeStrong(a4, a1);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
}

uint64_t MediaArtwork.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30BE90(a1, &v12);
  MediaArtwork.init(from:)(&v12, v7);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v12 = v7[0];
  v13 = v7[1];
  v4 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  v5 = v13;
  *a2 = v12;
  *(a2 + 16) = v5;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void MediaArtwork._cachedImagesKey(withScale:)(CGFloat a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v1 + 48), v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  if (a1 <= 0.0)
  {
    sub_1DB3D66F0("JetCore/MediaArtworkSourceConfiguration.swift", 45, 2, 58, sub_1DB3EB6DC);
  }

  CGAffineTransformMakeScale(&v16, a1, a1);
  v17.width = v9;
  v17.height = v10;
  v11 = CGSizeApplyAffineTransform(v17, &v16);
  *&v16.a = v5;
  v16.b = v6;
  LOBYTE(v16.c) = v7;
  *&v16.d = v8;
  *&v16.tx = v11;
  v12 = *(v4 + 64);
  v13 = v5;
  v14 = v8;
  v12(&v16, v3, v4);
  a = v16.a;
}

uint64_t MediaArtwork._resource(withScale:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  v28 = a1;
  v5 = *(v2 + 72);
  v4 = *(v2 + 80);
  v27[2] = __swift_project_boxed_opaque_existential_1((v2 + 48), v5);
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v29 = a2;
  if (a2 <= 0.0)
  {
    sub_1DB3D66F0("JetCore/MediaArtworkSourceConfiguration.swift", 45, 2, 58, sub_1DB3EB80C);
  }

  CGAffineTransformMakeScale(&v30, a2, a2);
  v31.width = v10;
  v31.height = v11;
  v12 = CGSizeApplyAffineTransform(v31, &v30);
  *&v30.a = v7;
  v30.b = v6;
  LOBYTE(v30.c) = v8;
  *&v30.d = v9;
  *&v30.tx = v12;
  v13 = *(v4 + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1DB50B120();
  v27[1] = v27;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - v17;
  v19 = v7;
  v20 = v9;
  v13(&v30, v5, v4);
  a = v30.a;

  v22 = *(AssociatedTypeWitness - 8);
  if ((*(v22 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v16 + 8))(v18, v15);
    v24 = v28;
    *(v28 + 32) = 0;
    *v24 = 0u;
    v24[1] = 0u;
  }

  else
  {
    v25 = v28;
    *(v28 + 24) = AssociatedTypeWitness;
    v25[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
    return (*(v22 + 32))(boxed_opaque_existential_0, v18, AssociatedTypeWitness);
  }

  return result;
}

uint64_t MediaArtwork.init(urlTemplate:sourceImageSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1DB314218(MEMORY[0x1E69E7CC0]);
  v13 = &_s20_AppleServicesSourceVN;
  v14 = &off_1EECE7FF8;
  *&v12 = sub_1DB34CAE4(a1, a2, v10, a4, a5);
  return MediaArtwork.init(_:)(&v12, a3);
}

uint64_t MediaArtwork.url(withScale:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  MediaArtwork._resource(withScale:)(v7, a2);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451B8, &qword_1DB519A08);
    v3 = sub_1DB509CA0();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_1DB30623C(v7, &qword_1ECC451B0, &qword_1DB519A00);
    v6 = sub_1DB509CA0();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t _s7JetCore12MediaArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v40[0] = *a1;
  v40[1] = v4;
  v41 = v5;
  v42 = v6;
  v43 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v36[0] = *a2;
  v36[1] = v7;
  v37 = v8;
  v38 = v9;
  v39 = *(a2 + 32);
  v10 = v40[0];
  v11 = v6;
  v12 = v36[0];
  v13 = v9;
  LOBYTE(v6) = _s7JetCore31MediaArtworkSourceConfigurationV2eeoiySbAC_ACtFZ_0(v40, v36);
  v14 = v36[0];

  v15 = v40[0];
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1DB30BE90(a1 + 48, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43500, &qword_1DB5118C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F00, &qword_1DB518680);
  if (!swift_dynamicCast())
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_1DB30623C(v34, &qword_1ECC451C0, &qword_1DB519E10);
LABEL_6:
    v31 = 0;
    return v31 & 1;
  }

  sub_1DB2FEA0C(v34, v40);
  v16 = v42;
  v33[2] = v43;
  v33[1] = __swift_project_boxed_opaque_existential_1(v40, v42);
  v17 = __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
  v33[3] = v33;
  v18 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v25 = sub_1DB50B120();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v33 - v27;
  v29 = swift_dynamicCast();
  v30 = *(v18 + 56);
  if (v29)
  {
    v30(v28, 0, 1, v16);
    (*(v18 + 32))(v20, v28, v16);
    v31 = sub_1DB50A610();
    (*(v18 + 8))(v20, v16);
  }

  else
  {
    v30(v28, 1, 1, v16);
    (*(v26 + 8))(v28, v25);
    v31 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v31 & 1;
}

uint64_t sub_1DB3EB58C(uint64_t a1, uint64_t a2)
{
  v4 = _s10_URLSourceVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3EB5F0(uint64_t a1)
{
  v2 = _s10_URLSourceVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1DB3EB64C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(*(v1 + 16), *(*(v1 + 16) + 24));
  return v2 == swift_getDynamicType();
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB3EB708(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DB3EB750(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB3EB7B4()
{
  result = qword_1ECC451C8;
  if (!qword_1ECC451C8)
  {
    sub_1DB315520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451C8);
  }

  return result;
}

uint64_t XPCJetAsset.fileAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return sub_1DB301E24(v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for XPCJetAsset(uint64_t a1)
{
  result = qword_1EE30DA00;
  if (!qword_1EE30DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCJetAsset.cacheKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for XPCJetAsset(0) + 28));

  return v1;
}

uint64_t XPCJetAsset.init(_:auditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB30BE90(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  if (swift_dynamicCast())
  {
    v32 = v29;
    v27 = a4;
    v28 = a5;
    v12 = type metadata accessor for JetPackAsset(0);
    v13 = v12[5];
    v14 = type metadata accessor for XPCJetAsset(0);
    sub_1DB3EC864(a1 + v13, a6 + v14[5], type metadata accessor for JetPackAsset.Metadata);
    v15 = (a1 + v12[6]);
    v25 = *(v15 + 4);
    v26 = *v15;
    v16 = (a1 + v12[7]);
    v17 = v16[1];
    v22 = *v16;
    v23 = *(a1 + v12[9]);
    v24 = *(a1 + v12[8]);
    LOBYTE(v12) = *(a1 + v12[10]);

    sub_1DB3EC8CC(a1, type metadata accessor for JetPackAsset);

    *a6 = v32;
    *(a6 + 8) = v30;
    *(a6 + 16) = a2;
    *(a6 + 24) = a3;
    *(a6 + 32) = v27;
    *(a6 + 40) = v28;
    *(a6 + 48) = 0;
    v19 = a6 + v14[6];
    *v19 = v26;
    *(v19 + 4) = v25;
    v20 = (a6 + v14[7]);
    *v20 = v22;
    v20[1] = v17;
    *(a6 + v14[8]) = v24;
    *(a6 + v14[9]) = v23;
    *(a6 + v14[10]) = v12;
  }

  else
  {
    sub_1DB37C8CC();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return sub_1DB3EC8CC(a1, type metadata accessor for JetPackAsset);
  }

  return result;
}

uint64_t XPCJetAsset.init(filePath:metadata:cacheID:cacheKey:wasReadFromCache:wasRevalidated:willBeRevalidated:auditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a11;
  *(a9 + 32) = a12;
  *(a9 + 40) = a13;
  *(a9 + 48) = 0;
  v20 = type metadata accessor for XPCJetAsset(0);
  result = sub_1DB3EBCDC(a3, a9 + v20[5]);
  v22 = a9 + v20[6];
  *v22 = a4;
  *(v22 + 4) = BYTE4(a4) & 1;
  v23 = (a9 + v20[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + v20[8]) = a7;
  *(a9 + v20[9]) = a8;
  *(a9 + v20[10]) = a10;
  return result;
}

uint64_t sub_1DB3EBCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB3EBD40()
{
  v1 = *v0;
  v2 = 0x65737341656C6966;
  v3 = 0x6C61766552736177;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x79654B6568636163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x617461646174656DLL;
  if (v1 != 1)
  {
    v5 = 0x44496568636163;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1DB3EBE38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB3ECE8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB3EBE6C(uint64_t a1)
{
  v2 = sub_1DB3EC270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3EBEA8(uint64_t a1)
{
  v2 = sub_1DB3EC270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCJetAsset.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451D0, &qword_1DB519B00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3EC270();
  sub_1DB50BE40();
  v10 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v14 = v4[5];
  v15 = *(v4 + 48);
  v31 = *v4;
  v32 = v10;
  v33 = v12;
  v34 = v11;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38[0] = 0;

  sub_1DB301E24(v12, v11, v13, v14, v15);
  sub_1DB3EC2C4();
  sub_1DB50B8A0();
  if (v3)
  {
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v19 = v36;
    v20 = v37;

    sub_1DB3013E0(v16, v17, v18, v19, v20);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v30 = v7;
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;

    sub_1DB3013E0(v22, v23, v24, v25, v26);
    v27 = type metadata accessor for XPCJetAsset(0);
    LOBYTE(v31) = 1;
    type metadata accessor for JetPackAsset.Metadata(0);
    sub_1DB32E68C(&qword_1EE30DBC8, &protocol conformance descriptor for JetPackAsset.Metadata);
    sub_1DB50B8A0();
    v28 = *(v4 + *(v27 + 24) + 4);
    LOBYTE(v31) = 2;
    v38[0] = v28;
    sub_1DB50B840();
    v29 = v30;
    LOBYTE(v31) = 3;
    sub_1DB50B860();
    LOBYTE(v31) = 4;
    sub_1DB50B870();
    LOBYTE(v31) = 5;
    sub_1DB50B870();
    LOBYTE(v31) = 6;
    sub_1DB50B870();
    return (*(v29 + 8))(v9, v6);
  }
}

unint64_t sub_1DB3EC270()
{
  result = qword_1EE30DA28[0];
  if (!qword_1EE30DA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DA28);
  }

  return result;
}

unint64_t sub_1DB3EC2C4()
{
  result = qword_1EE30CB28;
  if (!qword_1EE30CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CB28);
  }

  return result;
}

uint64_t XPCJetAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451D8, &qword_1DB519B08);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for XPCJetAsset(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DB3EC270();
  v30 = v9;
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  v14 = v28;
  v37 = 0;
  sub_1DB3EC810();
  sub_1DB50B780();
  v15 = v33;
  v16 = v36;
  v17 = v12;
  *v12 = v32;
  *(v12 + 1) = v15;
  v18 = v35;
  *(v12 + 1) = v34;
  *(v12 + 2) = v18;
  v12[48] = v16;
  LOBYTE(v32) = 1;
  sub_1DB32E68C(&qword_1EE30DBC0, &protocol conformance descriptor for JetPackAsset.Metadata);
  sub_1DB50B780();
  sub_1DB3EBCDC(v6, &v12[v10[5]]);
  LOBYTE(v32) = 2;
  v19 = v30;
  v20 = sub_1DB50B720();
  v21 = &v12[v10[6]];
  *v21 = v20;
  v21[4] = BYTE4(v20) & 1;
  LOBYTE(v32) = 3;
  v22 = sub_1DB50B740();
  v23 = &v12[v10[7]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v32) = 4;
  v12[v10[8]] = sub_1DB50B750() & 1;
  LOBYTE(v32) = 5;
  v12[v10[9]] = sub_1DB50B750() & 1;
  LOBYTE(v32) = 6;
  v25 = sub_1DB50B750();
  (*(v14 + 8))(v19, v29);
  *(v17 + v10[10]) = v25 & 1;
  sub_1DB3EC864(v17, v27, type metadata accessor for XPCJetAsset);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_1DB3EC8CC(v17, type metadata accessor for XPCJetAsset);
}

unint64_t sub_1DB3EC810()
{
  result = qword_1ECC451E0;
  if (!qword_1ECC451E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451E0);
  }

  return result;
}

uint64_t sub_1DB3EC864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB3EC8CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t XPCJetAsset.makeJetPackAsset()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v27 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v28 = v5;
  v26 = v1[5];
  v7 = *(v1 + 48);
  v8 = type metadata accessor for XPCJetAsset(0);
  v9 = (v1 + v8[7]);
  v10 = *v9;
  v11 = v9[1];
  a1[3] = &type metadata for JetPackSandboxExtensionFileStreamSource;
  a1[4] = &protocol witness table for JetPackSandboxExtensionFileStreamSource;
  v12 = swift_allocObject();
  *a1 = v12;
  *(v12 + 40) = &type metadata for JetPackAssetDaemonClient;
  *(v12 + 48) = &off_1F56FDE60;
  *(v12 + 56) = v27;
  *(v12 + 64) = v3;
  *(v12 + 72) = v4;
  *(v12 + 80) = v5;
  v13 = v4;
  *(v12 + 88) = v6;
  *(v12 + 96) = v26;
  v14 = v7;
  *(v12 + 104) = v7;
  *(v12 + 112) = v10;
  *(v12 + 120) = v11;
  v15 = v8[5];
  v16 = type metadata accessor for JetPackAsset(0);
  sub_1DB3EC864(v1 + v15, a1 + v16[5], type metadata accessor for JetPackAsset.Metadata);
  v17 = (v1 + v8[6]);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 4);
  v19 = *(v1 + v8[8]);
  v20 = *(v1 + v8[9]);
  v21 = *(v1 + v8[10]);
  v22 = a1 + v16[6];
  *v22 = v18;
  v22[4] = v17;
  v23 = (a1 + v16[7]);
  *v23 = v10;
  v23[1] = v11;
  *(a1 + v16[8]) = v19;
  *(a1 + v16[9]) = v20;
  *(a1 + v16[10]) = v21;
  v24 = (a1 + v16[11]);
  *v24 = 0;
  v24[1] = 0;
  swift_bridgeObjectRetain_n();

  return sub_1DB301E24(v13, v28, v6, v26, v14);
}

void sub_1DB3ECB34(uint64_t a1)
{
  type metadata accessor for JetPackAsset.Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_1DB3ECBE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB3ECBE4()
{
  if (!qword_1EE30C770)
  {
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE30C770);
    }
  }
}

uint64_t getEnumTagSinglePayload for XPCJetAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCJetAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB3ECD88()
{
  result = qword_1ECC451E8;
  if (!qword_1ECC451E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451E8);
  }

  return result;
}

unint64_t sub_1DB3ECDE0()
{
  result = qword_1EE30DA18;
  if (!qword_1EE30DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DA18);
  }

  return result;
}

unint64_t sub_1DB3ECE38()
{
  result = qword_1EE30DA20;
  if (!qword_1EE30DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DA20);
  }

  return result;
}

uint64_t sub_1DB3ECE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65737341656C6966 && a2 == 0xE900000000000074;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496568636163 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB52D1E0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61766552736177 && a2 == 0xEE00646574616469 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB52D200 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t MetricsFieldExclusionRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{

  sub_1DB330D60(a1, v12);
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v5, v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      result = sub_1DB3151CC(a1);
      *a3 = v9;
      a3[1] = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_1DB330DD0(v12);
  }

  sub_1DB315178();
  swift_allocError();
  v7 = MEMORY[0x1E69E7CC0];
  *v8 = &type metadata for MetricsFieldExclusionRequest;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t MetricsFieldExclusionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1DB50BA40();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MetricsFieldExclusionRequest.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t MetricsFieldExclusionRequest.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void static MetricsFieldExclusionRequest.amsMetricsID.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "amsMetricsID");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsFieldExclusionRequest.eventVersion.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "eventVersion");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsFieldExclusionRequest.xpSendMethod.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "xpSendMethod");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1DB3ED6E0()
{
  result = qword_1ECC451F0;
  if (!qword_1ECC451F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC451F0);
  }

  return result;
}

uint64_t _isStructurallyEqual(_:to:with:at:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v87 = a4;
  v86 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451F8, &unk_1DB519E00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v77 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v77 - v13;
  v15 = sub_1DB50BD90();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v77 - v20;
  sub_1DB300B14(a1, &v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F00, &qword_1DB518680);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(&v91, &v94);
    v22 = *(&v95 + 1);
    v23 = v96;
    v24 = __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
    v25 = a2[3];
    v26 = __swift_project_boxed_opaque_existential_1(a2, v25);
    v27 = sub_1DB3EE4DC(v24, v26, v22, v25, v23);
LABEL_5:
    v33 = v27;
    __swift_destroy_boxed_opaque_existential_0(&v94);
    return v33;
  }

  *&v93 = 0;
  v91 = 0u;
  v92 = 0u;
  sub_1DB30623C(&v91, &qword_1ECC451C0, &qword_1DB519E10);
  sub_1DB300B14(a1, &v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45200, &qword_1DB519E18);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(&v91, &v94);
    v28 = *(&v95 + 1);
    v29 = v96;
    v30 = __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
    v31 = a2[3];
    v32 = __swift_project_boxed_opaque_existential_1(a2, v31);
    v27 = sub_1DB3EE770(v30, v32, v28, v31, v29);
    goto LABEL_5;
  }

  *&v93 = 0;
  v91 = 0u;
  v92 = 0u;
  sub_1DB30623C(&v91, &qword_1ECC45208, &qword_1DB519E20);
  if (v87 >= v86)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    return DynamicType == swift_getDynamicType();
  }

  v83 = v11;
  v84 = v16;
  v85 = v15;
  sub_1DB300B14(a1, &v94);
  sub_1DB50BD40();
  sub_1DB300B14(a2, &v94);
  sub_1DB50BD40();
  v35 = sub_1DB50BD50();
  if (v35 != sub_1DB50BD50() || (sub_1DB50BD80(), v36 = sub_1DB50B570(), , sub_1DB50BD80(), v37 = sub_1DB50B570(), , v36 != v37))
  {
LABEL_17:
    v53 = *(v84 + 8);
    v54 = v85;
    v53(v18, v85);
    v53(v21, v54);
    return 0;
  }

  v38 = sub_1DB50BD80();
  v39 = v38[2];
  v82 = v38[3];
  v78 = v38;
  v40 = v38[4];
  v81 = v38[5];
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v79 = v39;
  v77[1] = ObjectType;
  v42 = sub_1DB50B360();
  swift_getObjectType();
  v80 = v40;
  result = sub_1DB50B360();
  if (v42 == result)
  {
    v43 = sub_1DB50B370();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v43 & 1) == 0)
    {
      goto LABEL_14;
    }

    v44 = sub_1DB50BD80();
    v45 = v44[2];
    v82 = v44[3];
    v79 = v44;
    v81 = v44[5];
    v46 = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v80 = v45;
    v78 = v46;
    v47 = sub_1DB50B360();
    swift_getObjectType();
    result = sub_1DB50B360();
    if (v47 == result)
    {
      v48 = sub_1DB50B370();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v48)
      {
        goto LABEL_19;
      }

LABEL_14:
      sub_1DB50BD70();
      v49 = sub_1DB50BD60();
      v81 = *(v49 - 8);
      v82 = *(v81 + 48);
      v50 = v82(v14, 1, v49);
      sub_1DB30623C(v14, &qword_1ECC451F8, &unk_1DB519E00);
      if (v50 == 1)
      {
        v51 = a1[3];
        v52 = __swift_project_boxed_opaque_existential_1(a1, v51);
        if (*(*(v51 - 8) + 64))
        {
          MEMORY[0x1EEE9AC00](v52);
          v77[-2] = v21;
          requirementFailure(_:file:line:)(sub_1DB3EF34C, &v77[-4], "JetCore/StructuralEquality.swift", 32, 2, 67);
          goto LABEL_17;
        }

LABEL_19:
        v56 = *(v84 + 8);
        v57 = v85;
        v56(v18, v85);
        v56(v21, v57);
        return 1;
      }

      v58 = v83;
      sub_1DB50BD70();
      if (v82(v58, 1, v49) != 1)
      {
        v59 = v83;
        sub_1DB3EF354(v83, v8);
        v60 = v81;
        if ((*(v81 + 88))(v8, v49) == *MEMORY[0x1E69E7598])
        {
          sub_1DB300B14(a1, &v94);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F8, &qword_1DB5118C0);
          if (swift_dynamicCast())
          {
            sub_1DB300B14(a2, &v94);
            if (swift_dynamicCast())
            {
              v61 = objc_allocWithZone(MEMORY[0x1E695DF20]);
              v62 = sub_1DB50A490();

              v63 = [v61 initWithDictionary_];

              v59 = v83;
              v64 = sub_1DB50A490();

              v65 = [v63 isEqualToDictionary_];

              v66 = *(v84 + 8);
              v67 = v85;
              v66(v18, v85);
              if ((v65 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_42:
              sub_1DB30623C(v59, &qword_1ECC451F8, &unk_1DB519E00);
              v66(v21, v67);
              return 1;
            }

            v66 = *(v84 + 8);
            v76 = v85;
            v66(v18, v85);
            v67 = v76;
          }

          else
          {
            v66 = *(v84 + 8);
            v67 = v85;
            v66(v18, v85);
          }

LABEL_45:
          sub_1DB30623C(v59, &qword_1ECC451F8, &unk_1DB519E00);
          v66(v21, v67);
          return 0;
        }

        (*(v60 + 8))(v8, v49);
      }

      sub_1DB50BD80();
      sub_1DB50BD80();
      sub_1DB50B520();

      v82 = sub_1DB50B520();

      sub_1DB50B630();
      if (*(&v90 + 1))
      {
        while (1)
        {
          v91 = v88;
          v92 = v89;
          v93 = v90;
          sub_1DB50B630();
          if (!*(&v90 + 1))
          {

            sub_1DB30623C(&v91, qword_1ECC45218, &unk_1DB519E30);
            goto LABEL_41;
          }

          v97 = v88;
          v98[0] = v89;
          v98[1] = v90;
          v94 = v91;
          v95 = v92;
          v96 = v93;
          v68 = v91;
          v69 = v88;
          sub_1DB30C200(&v95, &v92);
          v88 = v69;
          sub_1DB30C200(v98, &v89);
          if (*(&v68 + 1))
          {
            if (!*(&v69 + 1) || v68 != v69 && (sub_1DB50BA30() & 1) == 0)
            {
LABEL_38:

              v70 = *(v84 + 8);
              v71 = v18;
              v72 = v85;
              v70(v71, v85);
              sub_1DB30623C(&v88, qword_1ECC45218, &unk_1DB519E30);
              sub_1DB30623C(&v91, qword_1ECC45218, &unk_1DB519E30);
              sub_1DB30623C(v83, &qword_1ECC451F8, &unk_1DB519E00);
              v70(v21, v72);
              return 0;
            }
          }

          else if (*(&v69 + 1))
          {
            goto LABEL_38;
          }

          if ((_isStructurallyEqual(_:to:with:at:)(&v92, &v89, v86, v87 + 1) & 1) == 0)
          {
            break;
          }

          sub_1DB30623C(&v88, qword_1ECC45218, &unk_1DB519E30);
          sub_1DB30623C(&v91, qword_1ECC45218, &unk_1DB519E30);
          sub_1DB50B630();
          if (!*(&v90 + 1))
          {
            goto LABEL_37;
          }
        }

        v73 = *(v84 + 8);
        v74 = v18;
        v75 = v85;
        v73(v74, v85);

        sub_1DB30623C(&v88, qword_1ECC45218, &unk_1DB519E30);
        sub_1DB30623C(&v91, qword_1ECC45218, &unk_1DB519E30);
        sub_1DB30623C(v83, &qword_1ECC451F8, &unk_1DB519E00);
        v73(v21, v75);
        return 0;
      }

LABEL_37:

LABEL_41:
      sub_1DB30623C(&v88, &qword_1ECC45210, &qword_1DB519E28);
      v66 = *(v84 + 8);
      v67 = v85;
      v66(v18, v85);
      v59 = v83;
      goto LABEL_42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3EE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a5;
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v23 = sub_1DB50A610();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    v22(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1DB3EE770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a1;
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v15, a2, a4, v18);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v12, 0, 1, a3);
    (*(v16 + 32))(v20, v12, a3);
    v24 = (*(a5 + 8))(v20, a3, a5);
    (*(v16 + 8))(v20, a3);
  }

  else
  {
    v23(v12, 1, 1, a3);
    (*(v10 + 8))(v12, v9);
    v24 = 0;
  }

  return v24 & 1;
}

unint64_t sub_1DB3EEA14()
{
  sub_1DB50B320();

  sub_1DB50BD50();
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](62, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t Array<A>._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = sub_1DB50B120();
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = sub_1DB50AA00();
  v34 = a1;
  if (v19 != sub_1DB50AA00())
  {
    return 0;
  }

  v37 = a2;
  v20 = sub_1DB50AA60();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E1285D90](&v38, v20, WitnessTable);
  v37 = v38;
  sub_1DB50B5C0();
  sub_1DB50B590();
  v22 = sub_1DB50B5B0();
  v23 = (v32 + 32);
  v32 = TupleTypeMetadata2 - 8;
  v33 = v22;
  v24 = (v8 + 32);
  v30 = a4 + 8;
  v31 = a4;
  v25 = (v8 + 8);
  while (1)
  {
    v26 = v35;
    sub_1DB50B5A0();
    (*v23)(v18, v26, v36);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    (*v24)(v13, &v18[*(TupleTypeMetadata2 + 48)], a3);
    sub_1DB50AAB0();
    v27 = (*(v31 + 8))(v10, a3);
    v28 = *v25;
    (*v25)(v10, a3);
    v28(v13, a3);
    if ((v27 & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t Optional<A>._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v3 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v30 - v9;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v11;
  v21 = *(v11 + 16);
  v21(&v30 - v17, v34, v3, v16);
  (v21)(&v18[v20], a1, v3);
  v34 = v6;
  v22 = *(v6 + 48);
  if (v22(v18, 1, v5) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v5) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v35, v18, v3);
    if (v22(&v18[v20], 1, v5) != 1)
    {
      v24 = v34;
      v25 = *(v34 + 32);
      v26 = v30;
      v25(v30, v35, v5);
      v27 = v31;
      v25(v31, &v18[v20], v5);
      v23 = (*(v32 + 8))(v27, v5);
      v28 = *(v24 + 8);
      v28(v27, v5);
      v28(v26, v5);
LABEL_8:
      v15 = v33;
      goto LABEL_9;
    }

    (*(v34 + 8))(v35, v5);
  }

  v23 = 0;
  v3 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, v3);
  return v23 & 1;
}

uint64_t _EquatableForJetOnly._equatable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_1DB3EF354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC451F8, &unk_1DB519E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3EF404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1DB3EF454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = -a2 << 9;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 392) = 0;
      *(result + 56) = 0u;
      result += 56;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB3EF564(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 1;
  v4 = *(result + 128) & 0xFF01;
  v5 = *(result + 144) & 1;
  v6 = *(result + 160) & 1;
  v7 = *(result + 176) & 1;
  v8 = *(result + 192) & 1;
  v9 = *(result + 208) & 1;
  v10 = *(result + 224) & 1;
  v11 = *(result + 240) & 1;
  v12 = *(result + 256) & 1;
  v13 = *(result + 272) & 1;
  v14 = *(result + 288) & 0xFF01;
  v15 = *(result + 304) & 1;
  v16 = *(result + 320) & 1;
  v17 = *(result + 376) | (a2 << 61);
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  *(result + 304) = v15;
  *(result + 320) = v16;
  *(result + 376) = v17;
  return result;
}

uint64_t sub_1DB3EF668@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  result = sub_1DB3EF8EC(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NSURLRequestCachePolicy.encode(to:)(void *a1, unint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
  sub_1DB3EFBD0();
  sub_1DB50BB00();

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

void *sub_1DB3EF79C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB3EF9C8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DB3EF7E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x61632D6563726F66 && a2 == 0xEB00000000656863 || (sub_1DB50BA30() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x65686361632D6F6ELL && a2 == 0xE800000000000000)
  {
    return 1;
  }

  return sub_1DB50BA30() & 1;
}

uint64_t sub_1DB3EF8EC(uint64_t a1, void *a2)
{

  v3 = JSONObject.string.getter();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_1DB3EF7E4(v3, v4);
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      sub_1DB3151CC(a1);

      return v9;
    }

    type metadata accessor for CachePolicy(0);
    v9 = 0;
    v11 = v10 | 0x8000000000000000;
  }

  else
  {
    v5 = 0;
    v11 = 0x40000001F56F25D8uLL;
    v9 = MEMORY[0x1E69E7CC0];
    v6 = 0xE000000000000000;
  }

  sub_1DB315178();
  swift_allocError();
  *v12 = v5;
  v12[1] = v6;
  v12[2] = v11;
  v12[3] = v9;
  swift_willThrow();
  sub_1DB3151CC(a1);
  return v9;
}

void *sub_1DB3EF9C8(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v4 = sub_1DB50BA40();
    v6 = v5;
    v7 = v4;
    v8 = sub_1DB3EF7E4(v4, v5);
    if ((v9 & 1) == 0)
    {
      v3 = v8;

      __swift_destroy_boxed_opaque_existential_0(v15);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v3;
    }

    v10 = sub_1DB50B3E0();
    swift_allocError();
    v12 = v11;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B320();

    strcpy(v14, "Unknown case ");
    v14[7] = -4864;
    MEMORY[0x1E1285C70](v7, v6);

    v3 = v14;
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52D2F0);
    sub_1DB50B3C0();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_1DB3EFBD0()
{
  result = qword_1ECC42FF0;
  if (!qword_1ECC42FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC46C00, &qword_1DB516350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FF0);
  }

  return result;
}

uint64_t JSONTypeCluster.tryToMakeInstance(ofKind:byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  sub_1DB30C4B8(a2, v19, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v20)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_1DB300B14(v12, v18);
    sub_1DB315520();
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v19);
      v19[0] = v11;
      (*(a5 + 24))(a1, a2, v19, a4, a5);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v14 = *(*(AssociatedTypeWitness - 8) + 56);
      v15 = a6;
      v16 = 0;
      return v14(v15, v16, 1, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    sub_1DB30623C(v19, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 56);
  v15 = a6;
  v16 = 1;
  return v14(v15, v16, 1, AssociatedTypeWitness);
}

uint64_t JSONTypeCluster.makeInstances(ofKind:byDeserializing:using:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a1;
  v8[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return JSONArray.map<A>(_:)(sub_1DB3EFFE8, v8, AssociatedTypeWitness);
}

uint64_t sub_1DB3EFFE8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v7 = v1[6];
  return (*(v4 + 24))(v5, a1, &v7, v3);
}

uint64_t JSONTypeCluster.tryToMakeInstances(ofKind:byDeserializing:using:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a1;
  v8[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return JSONArray.compactMap<A>(_:)(sub_1DB3F03F8, v8, AssociatedTypeWitness);
}

uint64_t sub_1DB3F00C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_1DB30C4B8(a1, v24, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v25)
  {
    sub_1DB30623C(v24, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v13 = __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1DB300B14(v13, v20);
  sub_1DB315520();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_5:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a6, 1, 1, AssociatedTypeWitness);
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  v24[0] = a3;
  (*(a5 + 24))(a2, a1, v24, a4, a5);
  if (v6)
  {
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a3, v24);
    sub_1DB30C4B8(v24, v20, &qword_1ECC42E48, &qword_1DB50FB90);
    v16 = v21;
    if (v21)
    {
      v17 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v18 = swift_getAssociatedTypeWitness();
      (*(v17 + 8))(v18, v6, v16, v17);

      sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);

      sub_1DB30623C(v20, &qword_1ECC42E48, &qword_1DB50FB90);
      v18 = swift_getAssociatedTypeWitness();
    }

    return (*(*(v18 - 8) + 56))(a6, 1, 1, v18);
  }

  else
  {
    v19 = swift_getAssociatedTypeWitness();
    return (*(*(v19 - 8) + 56))(a6, 0, 1, v19);
  }
}

uint64_t sub_1DB3F0454(uint64_t a1)
{
  v2 = sub_1DB3F0B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3F0490(uint64_t a1)
{
  v2 = sub_1DB3F0B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB3F04E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452A0, &qword_1DB51A1D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3F0B34();
  sub_1DB50BE40();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DB3F05F8(unint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  if (!*(v4 + 16))
  {
  }

  v5 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v6 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v4 + 56) + 32 * v5, &v36);

  v7 = MEMORY[0x1E69E6158];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v39 == 0x6973736572706D69 && v40 == 0xEB00000000736E6FLL)
  {
  }

  else
  {
    v9 = sub_1DB50BA30();

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (!*(v12 + 16) || (v13 = sub_1DB306160(0x6973736572706D69, 0xEB00000000736E6FLL), (v14 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_1DB300B14(*(v12 + 56) + 32 * v13, &v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433A8, &unk_1DB511088);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v42 = sub_1DB301BC0(0, 39, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001DB52D310;
    v19._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v41 = v7;
    v39 = 0x6973736572706D69;
    v40 = 0xEB00000000736E6FLL;
    sub_1DB301CDC(&v39, v35);
    v36 = 0u;
    v37 = 0u;
    sub_1DB301D4C(v35, &v36);
    v38 = 0;
    v20 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v24 = v36;
    v25 = v37;
    v23[64] = v38;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v42 = v20;
    sub_1DB301DBC(&v39);
    v26._countAndFlagsBits = 0x73646C6569662022;
    v26._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v18 + 32) = v42;
    v27 = sub_1DB50AF40();
    if (os_log_type_enabled(v17, v27))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v28 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v36 = v18;
      *(&v36 + 1) = sub_1DB31485C;
      *&v37 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v31 = sub_1DB50A5E0();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1DB50EE90;
      *(v34 + 56) = v7;
      *(v34 + 64) = sub_1DB31494C();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v17, v27, v34);
    }
  }

  v15 = *(v39 + 16);

  if (!v15)
  {
    v16 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    a1[3] = &type metadata for StandardMetricsFieldsBuilder;
    a1[4] = &protocol witness table for StandardMetricsFieldsBuilder;
    *a1 = v16;
  }

  return result;
}

unint64_t sub_1DB3F0B34()
{
  result = qword_1ECC452A8;
  if (!qword_1ECC452A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452A8);
  }

  return result;
}

unint64_t sub_1DB3F0B9C()
{
  result = qword_1ECC452B0;
  if (!qword_1ECC452B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452B0);
  }

  return result;
}

unint64_t sub_1DB3F0BF4()
{
  result = qword_1ECC452B8;
  if (!qword_1ECC452B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452B8);
  }

  return result;
}

uint64_t sub_1DB3F0EF4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DB50B3D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  if (v11 == *(*a1 + 16))
  {
    sub_1DB324840(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1DB50B3C0();
    v12 = sub_1DB50B3E0();
    swift_allocError();
    v14 = v13;
    (*(v7 + 16))(v13, v9, v6);
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B00], v12);
    swift_willThrow();
    return (*(v7 + 8))(v9, v6);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v10 + 16))
  {
    v16 = (v10 + 32 * v11);
    v18 = v16[6];
    v17 = v16[7];
    v20 = v16[4];
    v19 = v16[5];
    a1[1] = v11 + 1;

    v21 = MEMORY[0x1E1285BF0](v20, v19, v18, v17);
    v23 = v22;

    *a3 = v21;
    a3[1] = v23;
    return result;
  }

  __break(1u);
  return result;
}

void static PageID.random.getter(uint64_t *a1@<X8>)
{
  v2 = sub_1DB509E00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509DF0();
  v6 = sub_1DB509DE0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[4] = v6;
  v13[5] = v8;
  v13[2] = 45;
  v13[3] = 0xE100000000000000;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1DB301E30();
  v9 = sub_1DB50B1A0();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    sub_1DB3D3C0C("JetCore/PageID.swift", 0x14uLL, 2, 0x39uLL);
  }

  *a1 = v9;
  a1[1] = v11;
}

JetCore::PageID __swiftcall PageID.init(with:)(Swift::String with)
{
  v2 = v1;
  sub_1DB301E30();
  v3 = sub_1DB50B1A0();
  v5 = v4;

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    sub_1DB3D3C0C("JetCore/PageID.swift", 0x14uLL, 2, 0x39uLL);
  }

  *v2 = v3;
  v2[1] = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t PageID.init<A>(id:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  sub_1DB50A910();
  MEMORY[0x1E1285C70](a1, a2);

  sub_1DB301E30();
  v11 = sub_1DB50B1A0();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    sub_1DB3D3C0C("JetCore/PageID.swift", 0x14uLL, 2, 0x39uLL);
  }

  result = (*(*(a4 - 8) + 8))(a3, a4);
  *a6 = v11;
  a6[1] = v13;
  return result;
}

uint64_t PageID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DB50B3D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v9 = sub_1DB50BA40();
  v27 = v6;
  v24 = 45;
  v25 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  *(&v22 - 2) = &v24;
  v12 = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB3F1A78, (&v22 - 4), v10, v11, &v22);
  v24 = v12;
  v25 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1DB50BDB0();
  sub_1DB3F0EF4(&v24, v13, v23);
  v15 = v23[0];
  v16 = v23[1];
  v17 = *(v12 + 16);

  if (v25 == v17)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
    *a2 = v15;
    a2[1] = v16;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v25 >= v17)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v18 = sub_1DB50B3E0();
    swift_allocError();
    v20 = v19;
    v21 = v27;
    (*(v27 + 16))(v19, v8, v5);
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B00], v18);
    swift_willThrow();
    (*(v21 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(v26);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t PageID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);

  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t PageID.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Bool __swiftcall PageID.isParent(of:)(JetCore::ShelfID of)
{
  if (*of.parent.value._countAndFlagsBits == *v1 && *(of.parent.value._countAndFlagsBits + 8) == v1[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

Swift::Bool __swiftcall PageID.isParent(of:)(JetCore::ComponentID *of)
{
  if (of->parent.parent.value._countAndFlagsBits == *v1 && of->parent.parent.value._object == *(v1 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t static PageID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t PageID.hashValue.getter()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3F19A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);

  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_1DB3F1A48()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1DB3F1A9C()
{
  result = qword_1ECC452C0;
  if (!qword_1ECC452C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452C0);
  }

  return result;
}

uint64_t MediaArtworkSourceConfiguration.quality.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_1DB3F1C14()
{
  sub_1DB50B320();

  v0 = sub_1DB50AD90();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52D3A0);
  return 0x2079616C70736944;
}

BOOL _s7JetCore31MediaArtworkSourceConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 1);
  v7 = *(a2 + 16);
  v9 = a2[4];
  v8 = a2[5];
  v10 = sub_1DB50A650();
  v12 = v11;
  if (v10 != sub_1DB50A650() || v12 != v13)
  {
    v15 = sub_1DB50BA30();

    if ((v15 & 1) == 0)
    {
      return 0;
    }

    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    if (v2 == v6)
    {
      v16 = v7;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v7)
  {
    return 0;
  }

LABEL_14:
  v17 = sub_1DB50A650();
  v19 = v18;
  if (v17 == sub_1DB50A650() && v19 == v20)
  {

    return v4 == v8 && v5 == v9;
  }

  v21 = sub_1DB50BA30();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  return v4 == v8 && v5 == v9;
}

uint64_t MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F1E80, 0, 0);
}

uint64_t sub_1DB3F1E80()
{
  v7 = v0;
  (*(v0[4] + 24))(v6, v0[3]);
  if (v6[0] == 2)
  {
    v1 = v0[3];
    v2 = v0[4];
    v3 = v0[2];
    *v6 = v0[6];
    (*(v2 + 32))(v3, v6, v1);
  }

  v4 = v0[1];

  return v4();
}

void *MetricsFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  result = (*(a4 + 24))(&v10, a3, a4);
  if (v10 == 1)
  {
    v9 = v7;
    return (*(a4 + 32))(a1, &v9, a3, a4);
  }

  return result;
}

uint64_t sub_1DB3F2048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

uint64_t MetricsFieldsProviderCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB3F21A8()
{
  result = qword_1ECC452C8;
  if (!qword_1ECC452C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC452C8);
  }

  return result;
}

uint64_t dispatch thunk of MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1DB3F23A0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F23C4, 0, 0);
}

uint64_t sub_1DB3F23C4()
{
  SystemInfoMetricsFieldsProvider.addMetricsFields(into:using:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3F2484(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[3] = a1;
  v3[4] = v4;
  v3[2] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F24B0, 0, 0);
}

uint64_t sub_1DB3F24B0()
{
  AppMetricsFieldProvider.addMetricsFields(into:using:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v7 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50F8D0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = countAndFlagsBits;
  *(v8 + 56) = object;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v9 = sub_1DB50A5E0();
  v11 = v10;

  *v5 = v9;
  v5[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

uint64_t PreferenceNamespace.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DB3F2668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  result = sub_1DB50A5E0();
  qword_1EE30D150 = result;
  unk_1EE30D158 = v1;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:)(Swift::String subsystem)
{
  object = subsystem._object;
  countAndFlagsBits = subsystem._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v6 = sub_1DB50A5E0();
  v8 = v7;

  *v4 = v6;
  v4[1] = v8;
  result.rawValue._object = v10;
  result.rawValue._countAndFlagsBits = v9;
  return result;
}

uint64_t static PreferenceNamespace.jetEngine.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE30D148 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1EE30D158;
  *a1 = qword_1EE30D150;
  a1[1] = v2;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v2 = sub_1DB50A5E0();
  *v1 = v2;
  v1[1] = v3;
  result.rawValue._object = v3;
  result.rawValue._countAndFlagsBits = v2;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(components:)(Swift::OpaquePointer components)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  result.rawValue._object = v7;
  result.rawValue._countAndFlagsBits = v6;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:category:)(Swift::String subsystem, Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v5 = subsystem._object;
  v6 = subsystem._countAndFlagsBits;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50F8D0;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = countAndFlagsBits;
  *(v8 + 56) = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v9 = sub_1DB50A5E0();
  v11 = v10;

  *v7 = v9;
  v7[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.init(subsystem:category:version:)(Swift::String subsystem, Swift::String category, Swift::Int version)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v6 = subsystem._object;
  v7 = subsystem._countAndFlagsBits;
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB511620;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = countAndFlagsBits;
  *(v9 + 56) = object;
  *(v9 + 64) = sub_1DB50B8F0();
  *(v9 + 72) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v11 = sub_1DB50A5E0();
  v13 = v12;

  *v8 = v11;
  v8[1] = v13;
  result.rawValue._object = v15;
  result.rawValue._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1DB3F2B34@<X0>(uint64_t *a2@<X8>)
{
  sub_1DB301E30();
  result = sub_1DB50B1A0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50F8D0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;

  *(v6 + 48) = sub_1DB50B8F0();
  *(v6 + 56) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v8 = sub_1DB50A5E0();
  v10 = v9;

  *v3 = v8;
  v3[1] = v10;
  result.rawValue._object = v12;
  result.rawValue._countAndFlagsBits = v11;
  return result;
}

JetCore::PreferenceNamespace __swiftcall PreferenceNamespace.appending(_:)(JetCore::PreferenceNamespace a1)
{
  v3 = v1;
  v5 = *a1.rawValue._countAndFlagsBits;
  v4 = *(a1.rawValue._countAndFlagsBits + 8);
  v7 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50F8D0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v9 = sub_1DB50A5E0();
  v11 = v10;

  *v3 = v9;
  v3[1] = v11;
  result.rawValue._object = v13;
  result.rawValue._countAndFlagsBits = v12;
  return result;
}

uint64_t static PreferenceNamespace.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t sub_1DB3F2DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F2DF8, 0, 0);
}

uint64_t sub_1DB3F2DF8()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB3F2E88(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DB306AF4;

  return v7(a1);
}

uint64_t sub_1DB3F2FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3F2DD8(a1, v6, a3);
}

uint64_t sub_1DB3F3044(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3F2E88(a1, v6, a3);
}

unint64_t MetricsFieldsAggregator.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1DB313940(MEMORY[0x1E69E7CC0]);
  result = sub_1DB313964(v2);
  a1[1] = result;
  return result;
}

double MetricsFieldsAggregator.init(bag:bundle:)@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  sub_1DB3F541C(&v5, a2, &v6);
  result = *&v6;
  *a3 = v6;
  return result;
}

uint64_t sub_1DB3F3178(unint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v94 = a2;
  v5 = a1;
  v80 = *a4;
  v6 = *v4;
  v82 = v4[1];
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v77 = v6;
  v78 = v11;
  v76 = result;
  if (v10)
  {
    while (1)
    {
LABEL_8:
      while (1)
      {
        v15 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v16 = (*(v5 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 16);

        if (v19)
        {
          v20 = sub_1DB314CBC();
          if (v21)
          {
            break;
          }
        }

        if (qword_1ECC42228 != -1)
        {
          swift_once();
        }

        oslog = qword_1ECC466F0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1DB50EE90;
        v26 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
        {
          *(&v92[0] + 1) = MEMORY[0x1E69E6158];
          *&v91 = 0xD000000000000032;
          *(&v91 + 1) = 0x80000001DB52D460;
          v84 = 0u;
          v85 = 0u;
          sub_1DB301D4C(&v91, &v84);
          LOBYTE(v86) = 0;
          v28 = *(v26 + 2);
          v27 = *(v26 + 3);
          if (v28 >= v27 >> 1)
          {
            v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
          }

          *(v26 + 2) = v28 + 1;
          v29 = &v26[40 * v28];
          v30 = v84;
          v31 = v85;
          v29[64] = v86;
          *(v29 + 2) = v30;
          *(v29 + 3) = v31;
        }

        *(&v92[0] + 1) = &type metadata for MetricsFieldInclusionRequest;
        *&v91 = v17;
        *(&v91 + 1) = v18;
        sub_1DB301CDC(&v91, &v88);
        v84 = 0u;
        v85 = 0u;
        sub_1DB301D4C(&v88, &v84);
        LOBYTE(v86) = 1;
        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        if (v33 >= v32 >> 1)
        {
          v26 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v26);
        }

        *(v26 + 2) = v33 + 1;
        v34 = &v26[40 * v33];
        v35 = v84;
        v36 = v85;
        v34[64] = v86;
        *(v34 + 2) = v35;
        *(v34 + 3) = v36;
        sub_1DB30623C(&v91, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(&v92[0] + 1) = MEMORY[0x1E69E6158];
        *&v91 = 96;
        *(&v91 + 1) = 0xE100000000000000;
        v84 = 0u;
        v85 = 0u;
        sub_1DB301D4C(&v91, &v84);
        LOBYTE(v86) = 0;
        v38 = *(v26 + 2);
        v37 = *(v26 + 3);
        if (v38 >= v37 >> 1)
        {
          v26 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v26);
        }

        *(v26 + 2) = v38 + 1;
        v39 = &v26[40 * v38];
        v40 = v84;
        v41 = v85;
        v39[64] = v86;
        *(v39 + 2) = v40;
        *(v39 + 3) = v41;
        *(v25 + 32) = v26;
        v42 = sub_1DB50AF20();
        if (os_log_type_enabled(oslog, v42))
        {
          if (qword_1EE30EDD8 != -1)
          {
            swift_once();
          }

          v43 = off_1EE30EDE0;
          os_unfair_lock_lock(off_1EE30EDE0 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v43[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v43 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v5 = v76;
          v45 = swift_allocObject();
          *(v45 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v84 = v25;
          *(&v84 + 1) = sub_1DB314CB0;
          *&v85 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
          sub_1DB314864();
          v46 = sub_1DB50A5E0();
          v48 = v47;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1DB50EE90;
          *(v49 + 56) = MEMORY[0x1E69E6158];
          *(v49 + 64) = sub_1DB31494C();
          *(v49 + 32) = v46;
          *(v49 + 40) = v48;
          sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, oslog, v42, v49);

          v6 = v77;
          v11 = v78;
          if (!v10)
          {
            goto LABEL_4;
          }
        }

        else
        {

          v5 = v76;
          v6 = v77;
          v11 = v78;
          if (!v10)
          {
            goto LABEL_4;
          }
        }
      }

      v22 = v20;

      sub_1DB30BE90(*(v6 + 56) + 40 * v22, &v91);
      sub_1DB30C7A8(&v91, &v84);
      v23 = *(&v85 + 1);
      v24 = v86;
      __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
      *&v91 = v80;
      (*(v24 + 8))(a3, &v91, v23, v24);
      if (v83)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_0(&v84);
      v11 = v78;
      if (!v10)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_8;
      }
    }

    v50 = 1 << *(v82 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & *(v82 + 64);
    v53 = (v50 + 63) >> 6;
    v54 = v94 + 7;

    v55 = 0;
    while (v52)
    {
      v58 = v55;
LABEL_48:
      v61 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v62 = v61 | (v58 << 6);
      v63 = (*(v82 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      sub_1DB30BE90(*(v82 + 56) + 40 * v62, &v88);
      *&v84 = v65;
      *(&v84 + 1) = v64;
      sub_1DB30C7A8(&v88, &v85);

LABEL_49:
      v91 = v84;
      v92[0] = v85;
      v92[1] = v86;
      v93 = v87;
      v66 = *(&v84 + 1);
      if (!*(&v84 + 1))
      {
      }

      v67 = v91;
      sub_1DB30C7A8(v92, &v88);
      if (v94[2] && (v68 = v94, sub_1DB50BCF0(), sub_1DB50A740(), v69 = sub_1DB50BD30(), v70 = -1 << *(v68 + 32), v71 = v69 & ~v70, ((*(v54 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) != 0))
      {
        v72 = ~v70;
        while (1)
        {
          v73 = (v94[6] + 16 * v71);
          v74 = *v73 == v67 && v73[1] == v66;
          if (v74 || (sub_1DB50BA30() & 1) != 0)
          {
            break;
          }

          v71 = (v71 + 1) & v72;
          if (((*(v54 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_36:

        v56 = v89;
        v57 = v90;
        __swift_project_boxed_opaque_existential_1(&v88, v89);
        *&v84 = v80;
        (*(v57 + 8))(a3, &v84, v56, v57);
        if (v83)
        {

          v75 = &v88;
          return __swift_destroy_boxed_opaque_existential_0(v75);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v88);
    }

    if (v53 <= v55 + 1)
    {
      v59 = v55 + 1;
    }

    else
    {
      v59 = v53;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v58 >= v53)
      {
        v52 = 0;
        v87 = 0;
        v85 = 0u;
        v86 = 0u;
        v55 = v60;
        v84 = 0u;
        goto LABEL_49;
      }

      v52 = *(v82 + 64 + 8 * v58);
      ++v55;
      if (v52)
      {
        v55 = v58;
        goto LABEL_48;
      }
    }

    __break(1u);
  }

  v75 = &v84;
  return __swift_destroy_boxed_opaque_existential_0(v75);
}

uint64_t sub_1DB3F3988(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 592) = a3;
  *(v5 + 584) = a2;
  *(v5 + 576) = a1;
  *(v5 + 600) = *a4;
  *(v5 + 608) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1DB3F39C0, 0, 0);
}

uint64_t sub_1DB3F39C0()
{
  v1 = v0 + 328;
  v2 = *(v0 + 576);
  v3 = *(v2 + 32);
  *(v0 + 321) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 56);

  v8 = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      return result;
    }

    if (v10 >= (((1 << *(v0 + 321)) + 63) >> 6))
    {
      v43 = *(v0 + 616);

      v44 = *(v43 + 32);
      *(v0 + 322) = v44;
      v45 = 1 << v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v47 = v46 & *(v43 + 64);

      v48 = 0;
      while (v47)
      {
        v49 = *(v0 + 616);
LABEL_46:
        v54 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v55 = v54 | (v48 << 6);
        v56 = (*(v49 + 48) + 16 * v55);
        v57 = *v56;
        v58 = v56[1];
        sub_1DB30BE90(*(v49 + 56) + 40 * v55, v0 + 208);
        *(v0 + 72) = v57;
        *(v0 + 80) = v58;
        sub_1DB30C7A8((v0 + 208), v0 + 88);

LABEL_47:
        *(v0 + 664) = v48;
        *(v0 + 656) = v47;
        v59 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v59;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        v60 = *(v0 + 24);
        if (!v60)
        {

          v81 = *(v0 + 8);

          return v81();
        }

        v61 = *(v0 + 584);
        v62 = *(v0 + 16);
        sub_1DB30C7A8((v0 + 32), v0 + 248);
        if (!*(v61 + 16) || (v63 = *(v0 + 584), sub_1DB50BCF0(), sub_1DB50A740(), v64 = sub_1DB50BD30(), v65 = -1 << *(v63 + 32), v66 = v64 & ~v65, ((*(v63 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0))
        {
LABEL_59:
          v71 = *(v0 + 600);

          v72 = *(v0 + 272);
          v73 = *(v0 + 280);
          __swift_project_boxed_opaque_existential_1((v0 + 248), v72);
          *(v0 + 568) = v71;
          v83 = (*(v73 + 16) + **(v73 + 16));
          v74 = swift_task_alloc();
          *(v0 + 672) = v74;
          *v74 = v0;
          v74[1] = sub_1DB3F4DAC;
          v75 = *(v0 + 592);
          v76 = v0 + 568;
          goto LABEL_60;
        }

        v67 = ~v65;
        v68 = *(v0 + 584);
        while (1)
        {
          v69 = (*(v68 + 48) + 16 * v66);
          v70 = *v69 == v62 && v69[1] == v60;
          if (v70 || (sub_1DB50BA30() & 1) != 0)
          {
            break;
          }

          v68 = *(v0 + 584);
          v66 = (v66 + 1) & v67;
          if (((*(v68 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      }

      v50 = ((1 << *(v0 + 322)) + 63) >> 6;
      if (v50 <= (v48 + 1))
      {
        v51 = v48 + 1;
      }

      else
      {
        v51 = ((1 << *(v0 + 322)) + 63) >> 6;
      }

      v52 = v51 - 1;
      while (1)
      {
        v53 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_68;
        }

        if (v53 >= v50)
        {
          v47 = 0;
          *(v0 + 120) = 0;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          v48 = v52;
          *(v0 + 72) = 0u;
          goto LABEL_47;
        }

        v49 = *(v0 + 616);
        v47 = *(v49 + 8 * v53 + 64);
        ++v48;
        if (v47)
        {
          v48 = v53;
          goto LABEL_46;
        }
      }
    }

    v9 = *(v0 + 576);
    v6 = *(v9 + 8 * v10 + 56);
    ++v8;
  }

  while (!v6);
  v8 = v10;
  while (1)
  {
    *(v0 + 632) = v8;
    *(v0 + 624) = v6;
    v11 = (*(v9 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(v0 + 608) + 16);

    if (v14)
    {
      v15 = sub_1DB314CBC();
      if (v16)
      {
        break;
      }
    }

    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v19 = sub_1DB301BC0(0, 47, 0, MEMORY[0x1E69E7CC0]);
    if (("Replacing provider for request " & 0x2F00000000000000) != 0x2000000000000000)
    {
      *(v0 + 432) = MEMORY[0x1E69E6158];
      *(v0 + 408) = 0xD00000000000002DLL;
      *(v0 + 416) = 0x80000001DB52D430;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      sub_1DB301D4C(v0 + 408, v0 + 288);
      *(v0 + 320) = 0;
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = *(v0 + 288);
      v24 = *(v0 + 304);
      v22[64] = *(v0 + 320);
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v1 = v0 + 328;
    }

    *(v0 + 464) = &type metadata for MetricsFieldInclusionRequest;
    *(v0 + 440) = v13;
    *(v0 + 448) = v12;
    sub_1DB301CDC(v0 + 440, v0 + 472);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    sub_1DB301D4C(v0 + 472, v1);
    *(v0 + 360) = 1;
    v26 = *(v19 + 2);
    v25 = *(v19 + 3);
    if (v26 >= v25 >> 1)
    {
      v19 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v19);
    }

    *(v19 + 2) = v26 + 1;
    v27 = &v19[40 * v26];
    v28 = *v1;
    v29 = *(v1 + 16);
    v27[64] = *(v1 + 32);
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    sub_1DB30623C(v0 + 440, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 528) = MEMORY[0x1E69E6158];
    *(v0 + 504) = 96;
    *(v0 + 512) = 0xE100000000000000;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    sub_1DB301D4C(v0 + 504, v0 + 368);
    *(v0 + 400) = 0;
    v31 = *(v19 + 2);
    v30 = *(v19 + 3);
    if (v31 >= v30 >> 1)
    {
      v19 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v19);
    }

    v6 &= v6 - 1;
    *(v19 + 2) = v31 + 1;
    v32 = &v19[40 * v31];
    v33 = *(v0 + 368);
    v34 = *(v0 + 384);
    v32[64] = *(v0 + 400);
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    *(v18 + 32) = v19;
    v35 = sub_1DB50AF20();
    if (os_log_type_enabled(v17, v35))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v36 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v36[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v36 + 5);
      v82 = v17;
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v38 = swift_allocObject();
      *(v38 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *(v0 + 536) = v18;
      *(v0 + 544) = sub_1DB314CB0;
      *(v0 + 552) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v39 = sub_1DB50A5E0();
      v41 = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1DB50EE90;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1DB31494C();
      *(v42 + 32) = v39;
      *(v42 + 40) = v41;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v82, v35, v42);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v9 = *(v0 + 576);
  }

  v77 = *(v0 + 608);
  v78 = *(v0 + 600);
  v79 = v15;

  sub_1DB30BE90(*(v77 + 56) + 40 * v79, v0 + 168);
  sub_1DB30C7A8((v0 + 168), v0 + 128);
  v72 = *(v0 + 152);
  v73 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v72);
  *(v0 + 560) = v78;
  v83 = (*(v73 + 16) + **(v73 + 16));
  v80 = swift_task_alloc();
  *(v0 + 640) = v80;
  *v80 = v0;
  v80[1] = sub_1DB3F4338;
  v75 = *(v0 + 592);
  v76 = v0 + 560;
LABEL_60:

  return v83(v75, v76, v72, v73);
}

uint64_t sub_1DB3F4338()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_1DB3F5240;
  }

  else
  {
    v2 = sub_1DB3F444C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3F444C()
{
  v1 = v0 + 328;
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v3 = (*(v0 + 624) - 1) & *(v0 + 624);
  v4 = *(v0 + 632);
  v5 = "Replacing provider for request " & 0x2F00000000000000;
  if (v3)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_5:
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    if (v7 >= (((1 << *(v0 + 321)) + 63) >> 6))
    {
      v40 = *(v0 + 616);

      v41 = *(v40 + 32);
      *(v0 + 322) = v41;
      v42 = 1 << v41;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & *(v40 + 64);

      v45 = 0;
      while (v44)
      {
        v46 = *(v0 + 616);
LABEL_43:
        v51 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v52 = v51 | (v45 << 6);
        v53 = (*(v46 + 48) + 16 * v52);
        v54 = *v53;
        v55 = v53[1];
        sub_1DB30BE90(*(v46 + 56) + 40 * v52, v0 + 208);
        *(v0 + 72) = v54;
        *(v0 + 80) = v55;
        sub_1DB30C7A8((v0 + 208), v0 + 88);

LABEL_44:
        *(v0 + 664) = v45;
        *(v0 + 656) = v44;
        v56 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v56;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        v57 = *(v0 + 24);
        if (!v57)
        {

          v78 = *(v0 + 8);

          return v78();
        }

        v58 = *(v0 + 584);
        v59 = *(v0 + 16);
        sub_1DB30C7A8((v0 + 32), v0 + 248);
        if (!*(v58 + 16) || (v60 = *(v0 + 584), sub_1DB50BCF0(), sub_1DB50A740(), v61 = sub_1DB50BD30(), v62 = -1 << *(v60 + 32), v63 = v61 & ~v62, ((*(v60 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0))
        {
LABEL_56:
          v68 = *(v0 + 600);

          v69 = *(v0 + 272);
          v70 = *(v0 + 280);
          __swift_project_boxed_opaque_existential_1((v0 + 248), v69);
          *(v0 + 568) = v68;
          osloga = (*(v70 + 16) + **(v70 + 16));
          v71 = swift_task_alloc();
          *(v0 + 672) = v71;
          *v71 = v0;
          v71[1] = sub_1DB3F4DAC;
          v72 = *(v0 + 592);
          v73 = v0 + 568;
          goto LABEL_57;
        }

        v64 = ~v62;
        v65 = *(v0 + 584);
        while (1)
        {
          v66 = (*(v65 + 48) + 16 * v63);
          v67 = *v66 == v59 && v66[1] == v57;
          if (v67 || (sub_1DB50BA30() & 1) != 0)
          {
            break;
          }

          v65 = *(v0 + 584);
          v63 = (v63 + 1) & v64;
          if (((*(v65 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      }

      v47 = ((1 << *(v0 + 322)) + 63) >> 6;
      if (v47 <= (v45 + 1))
      {
        v48 = v45 + 1;
      }

      else
      {
        v48 = ((1 << *(v0 + 322)) + 63) >> 6;
      }

      v49 = v48 - 1;
      while (1)
      {
        v50 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_65;
        }

        if (v50 >= v47)
        {
          v44 = 0;
          *(v0 + 120) = 0;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          v45 = v49;
          *(v0 + 72) = 0u;
          goto LABEL_44;
        }

        v46 = *(v0 + 616);
        v44 = *(v46 + 8 * v50 + 64);
        ++v45;
        if (v44)
        {
          v45 = v50;
          goto LABEL_43;
        }
      }
    }

    v6 = *(v0 + 576);
    v3 = *(v6 + 8 * v7 + 56);
    ++v4;
  }

  while (!v3);
  v4 = v7;
  while (1)
  {
    *(v0 + 632) = v4;
    *(v0 + 624) = v3;
    v8 = (*(v6 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v3)))));
    v10 = *v8;
    v9 = v8[1];
    v11 = *(*(v0 + 608) + 16);

    if (v11)
    {
      v12 = sub_1DB314CBC();
      if (v13)
      {
        break;
      }
    }

    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    oslog = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50EE90;
    v15 = sub_1DB301BC0(0, 47, 0, MEMORY[0x1E69E7CC0]);
    if (v5 != 0x2000000000000000)
    {
      v16 = v5;
      *(v0 + 432) = MEMORY[0x1E69E6158];
      *(v0 + 408) = 0xD00000000000002DLL;
      *(v0 + 416) = 0x80000001DB52D430;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      sub_1DB301D4C(v0 + 408, v0 + 288);
      *(v0 + 320) = 0;
      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      v19 = &v15[40 * v18];
      v20 = *(v0 + 288);
      v21 = *(v0 + 304);
      v19[64] = *(v0 + 320);
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      v5 = v16;
      v1 = v0 + 328;
    }

    *(v0 + 464) = &type metadata for MetricsFieldInclusionRequest;
    *(v0 + 440) = v10;
    *(v0 + 448) = v9;
    sub_1DB301CDC(v0 + 440, v0 + 472);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    sub_1DB301D4C(v0 + 472, v1);
    *(v0 + 360) = 1;
    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v24 = &v15[40 * v23];
    v25 = *v1;
    v26 = *(v1 + 16);
    v24[64] = *(v1 + 32);
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    sub_1DB30623C(v0 + 440, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 528) = MEMORY[0x1E69E6158];
    *(v0 + 504) = 96;
    *(v0 + 512) = 0xE100000000000000;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    sub_1DB301D4C(v0 + 504, v0 + 368);
    *(v0 + 400) = 0;
    v28 = *(v15 + 2);
    v27 = *(v15 + 3);
    if (v28 >= v27 >> 1)
    {
      v15 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v15);
    }

    v3 &= v3 - 1;
    *(v15 + 2) = v28 + 1;
    v29 = &v15[40 * v28];
    v30 = *(v0 + 368);
    v31 = *(v0 + 384);
    v29[64] = *(v0 + 400);
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    *(v14 + 32) = v15;
    v32 = sub_1DB50AF20();
    if (os_log_type_enabled(oslog, v32))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v33 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v33[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v33 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v35 = swift_allocObject();
      *(v35 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *(v0 + 536) = v14;
      *(v0 + 544) = sub_1DB314CB0;
      *(v0 + 552) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v36 = sub_1DB50A5E0();
      v38 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1DB50EE90;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = sub_1DB31494C();
      *(v39 + 32) = v36;
      *(v39 + 40) = v38;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, oslog, v32, v39);

      if (!v3)
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!v3)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v6 = *(v0 + 576);
  }

  v74 = *(v0 + 608);
  v75 = *(v0 + 600);
  v76 = v12;

  sub_1DB30BE90(*(v74 + 56) + 40 * v76, v0 + 168);
  sub_1DB30C7A8((v0 + 168), v0 + 128);
  v69 = *(v0 + 152);
  v70 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v69);
  *(v0 + 560) = v75;
  osloga = (*(v70 + 16) + **(v70 + 16));
  v77 = swift_task_alloc();
  *(v0 + 640) = v77;
  *v77 = v0;
  v77[1] = sub_1DB3F4338;
  v72 = *(v0 + 592);
  v73 = v0 + 560;
LABEL_57:

  return (osloga)(v72, v73, v69, v70);
}

uint64_t sub_1DB3F4DAC()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1DB3F52AC;
  }

  else
  {
    v2 = sub_1DB3F4EC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3F4EC0()
{
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  while (v3)
  {
    v4 = *(v0 + 616);
LABEL_13:
    v9 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v10 = v9 | (v2 << 6);
    v11 = (*(v4 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1DB30BE90(*(v4 + 56) + 40 * v10, v0 + 208);
    *(v0 + 72) = v12;
    *(v0 + 80) = v13;
    sub_1DB30C7A8((v0 + 208), v0 + 88);

LABEL_14:
    *(v0 + 664) = v2;
    *(v0 + 656) = v3;
    v14 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v14;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v15 = *(v0 + 24);
    if (!v15)
    {

      v31 = *(v0 + 8);

      return v31();
    }

    v16 = *(v0 + 584);
    v17 = *(v0 + 16);
    sub_1DB30C7A8((v0 + 32), v0 + 248);
    if (!*(v16 + 16) || (v18 = *(v0 + 584), sub_1DB50BCF0(), sub_1DB50A740(), v19 = sub_1DB50BD30(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0))
    {
LABEL_26:
      v26 = *(v0 + 600);

      v27 = *(v0 + 272);
      v28 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), v27);
      *(v0 + 568) = v26;
      v32 = (*(v28 + 16) + **(v28 + 16));
      v29 = swift_task_alloc();
      *(v0 + 672) = v29;
      *v29 = v0;
      v29[1] = sub_1DB3F4DAC;
      v30 = *(v0 + 592);

      return v32(v30, v0 + 568, v27, v28);
    }

    v22 = ~v20;
    v23 = *(v0 + 584);
    while (1)
    {
      v24 = (*(v23 + 48) + 16 * v21);
      v25 = *v24 == v17 && v24[1] == v15;
      if (v25 || (sub_1DB50BA30() & 1) != 0)
      {
        break;
      }

      v23 = *(v0 + 584);
      v21 = (v21 + 1) & v22;
      if (((*(v23 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  }

  v5 = ((1 << *(v0 + 322)) + 63) >> 6;
  if (v5 <= (v2 + 1))
  {
    v6 = v2 + 1;
  }

  else
  {
    v6 = ((1 << *(v0 + 322)) + 63) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v3 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      v2 = v7;
      *(v0 + 72) = 0u;
      goto LABEL_14;
    }

    v4 = *(v0 + 616);
    v3 = *(v4 + 8 * v8 + 64);
    ++v2;
    if (v3)
    {
      v2 = v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3F5240()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3F52AC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3F5318(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1DB4B765C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DB3F541C(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E7CC0];
  *a3 = sub_1DB313940(MEMORY[0x1E69E7CC0]);
  a3[1] = sub_1DB313964(v6);
  if (qword_1ECC420E0 != -1)
  {
    swift_once();
  }

  v7 = qword_1ECC67958;
  swift_bridgeObjectRetain_n();
  sub_1DB3F6608(v7, v5, 0x6769666E6F63, 0xE600000000000000);
  swift_unknownObjectRelease();

  v8 = a2;
  sub_1DB3F69F4(v8, 7368801, 0xE300000000000000, a3, &type metadata for AppMetricsFieldProvider, &protocol witness table for AppMetricsFieldProvider, &unk_1F56FA5E8, sub_1DB314CB0);

  v15 = v8;
  sub_1DB3F69F4(v15, 0x6973726556707061, 0xEA00000000006E6FLL, a3, &type metadata for AppVersionFieldProvider, &protocol witness table for AppVersionFieldProvider, &unk_1F56FA5C0, sub_1DB314CB0);

  if (qword_1ECC420D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECC67950;

  sub_1DB3F6DB8(v10, 0x7372655665736162, 0xEB000000006E6F69, a3, &type metadata for BaseVersionFieldProvider, &protocol witness table for BaseVersionFieldProvider, &unk_1F56FA598, sub_1DB314CB0);
  sub_1DB3F6DB8(v7, 0x7645746E65696C63, 0xED00006449746E65, a3, &type metadata for ClientEventIdFieldProvider, &off_1F56F0DF0, &unk_1F56FA570, sub_1DB314CB0);

  sub_1DB3F7180(0x6D6954746E657665, 0xE900000000000065, a3, &type metadata for EventTimeMetricsFieldProvider, &protocol witness table for EventTimeMetricsFieldProvider, &unk_1F56FA548, sub_1DB314CB0);
  sub_1DB3F7180(0x6E496D6574737973, 0xEA00000000006F66, a3, &type metadata for SystemInfoMetricsFieldsProvider, &protocol witness table for SystemInfoMetricsFieldsProvider, &unk_1F56FA520, sub_1DB314CB0);
  if (qword_1ECC420C8 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECC67940;

  v12 = sub_1DB3F7D20(&unk_1F56F0298, v11);
  sub_1DB3C7208(&unk_1F56F02B8);
  sub_1DB3F6DB8(v12, 0x6175676E614C736FLL, 0xEB00000000736567, a3, &type metadata for LanguagesMetricFieldProvider, &protocol witness table for LanguagesMetricFieldProvider, &unk_1F56FA4F8, sub_1DB314CB0);

  sub_1DB3F6DB8(v7, 0x656E6F7A656D6974, 0xEE0074657366664FLL, a3, &type metadata for TimezoneOffsetFieldProvider, &off_1F5700510, &unk_1F56FA4D0, sub_1DB314CB0);

  v13 = sub_1DB3AD72C(&unk_1F56F02C8);
  sub_1DB3C7208(&unk_1F56F02E8);
  sub_1DB3F6DB8(v13, 0x676E696C706D6173, 0xE800000000000000, a3, &type metadata for XPSamplingFieldsProvider, &protocol witness table for XPSamplingFieldsProvider, &unk_1F56FA4A8, sub_1DB314CB0);

  sub_1DB3F6DB8(v9, 0x654D646E65537078, 0xEC000000646F6874, a3, &type metadata for XpSendMethodFieldProvider, &off_1F57023F8, &unk_1F56FA480, sub_1DB314CB0);

  v14 = sub_1DB313AA8(&unk_1F56F02F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452D8, &qword_1DB51A6A0);
  swift_arrayDestroy();
  sub_1DB3F7538(v14, 0x726556746E657665, 0xEC0000006E6F6973);
}

uint64_t MetricsFieldsAggregator.addOptOutProvider(_:forRequest:)(void *a1, uint64_t *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DB3F7914(v6, a2, v2, v4, v5);
}

uint64_t MetricsFieldsAggregator.addOptInProvider(_:forRequest:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  sub_1DB30BE90(a1, &v26);
  sub_1DB381D18(&v26, &v28);
  v4 = *(&v29 + 1);
  result = sub_1DB30623C(&v28, &qword_1ECC452D0, &unk_1DB51A640);
  if (v4)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v25 = sub_1DB301BC0(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52D3E0;
    v8._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v27 = &type metadata for MetricsFieldInclusionRequest;
    *&v26 = v3;
    *(&v26 + 1) = v2;
    sub_1DB301CDC(&v26, v24);
    v28 = 0u;
    v29 = 0u;

    sub_1DB301D4C(v24, &v28);
    v30 = 1;
    v9 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
      v25 = v9;
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v28;
    v14 = v29;
    v12[64] = v30;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v25 = v9;
    sub_1DB30623C(&v26, &qword_1ECC426B0, &qword_1DB50EEB0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v25;
    v16 = sub_1DB50AF40();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v17 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v28 = v7;
      *(&v28 + 1) = sub_1DB31485C;
      *&v29 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v20 = sub_1DB50A5E0();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DB50EE90;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1DB31494C();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v6, v16, v23);
    }
  }

  return result;
}

uint64_t MetricsFieldsAggregator.addingOptInProvider(_:forRequest:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *v3;
  v9 = v3[1];
  *a3 = v8;
  a3[1] = v9;
  v11[0] = v6;
  v11[1] = v7;

  return MetricsFieldsAggregator.addOptInProvider(_:forRequest:)(a1, v11);
}

Swift::Void __swiftcall MetricsFieldsAggregator.removeOptInProvider(forRequest:)(JetCore::MetricsFieldInclusionRequest forRequest)
{
  v2 = v1;
  v3 = sub_1DB314CBC();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB3120D0();
      v7 = v8;
    }

    sub_1DB30C7A8((*(v7 + 56) + 40 * v5), v9);
    sub_1DB314CB8();
    *v2 = v7;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_1DB30623C(v9, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t MetricsFieldsAggregator.removingOptInProvider(forRequest:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  *a2 = v5;
  a2[1] = v6;

  sub_1DB30FA70(v3, v4, v8);
  return sub_1DB30623C(v8, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = *v3;
  v7 = v3[1];
  *a3 = v8;
  a3[1] = v7;
  v13[0] = v5;
  v13[1] = v6;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);

  return sub_1DB3F7914(v11, v13, a3, v9, v10);
}

Swift::Void __swiftcall MetricsFieldsAggregator.removeOptOutProvider(forRequest:)(JetCore::MetricsFieldExclusionRequest forRequest)
{
  v2 = v1;
  v3 = sub_1DB314CBC();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 8);
    v8 = *(v2 + 8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB3120BC();
      v7 = v8;
    }

    sub_1DB30C7A8((*(v7 + 56) + 40 * v5), v9);
    sub_1DB314CB8();
    *(v2 + 8) = v7;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_1DB30623C(v9, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t MetricsFieldsAggregator.removingOptOutProvider(forRequest:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  *a2 = v5;
  a2[1] = v6;

  sub_1DB30FA5C(v3, v4, v8);
  return sub_1DB30623C(v8, &qword_1ECC452D0, &unk_1DB51A640);
}

uint64_t sub_1DB3F60D8(void *a1)
{
  v2 = v1;
  v70 = a1[1];
  v71 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; ; i = v14)
  {
    if (v6)
    {
      v12 = i;
LABEL_15:
      v15 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v71 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1DB30BE90(*(v71 + 56) + 40 * v16, v72);
      *&v73 = v19;
      *(&v73 + 1) = v18;
      sub_1DB30C7A8(v72, &v74);

      v14 = v12;
    }

    else
    {
      v13 = v7 <= i + 1 ? i + 1 : v7;
      v14 = v13 - 1;
      while (1)
      {
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
          goto LABEL_57;
        }

        if (v12 >= v7)
        {
          break;
        }

        v6 = *(v3 + 8 * v12);
        ++i;
        if (v6)
        {
          goto LABEL_15;
        }
      }

      v6 = 0;
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
    }

    v77 = v73;
    v78 = v74;
    v79 = v75;
    v80 = v76;
    v20 = *(&v73 + 1);
    if (!*(&v73 + 1))
    {
      break;
    }

    v21 = v77;
    sub_1DB30C7A8(&v78, &v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = *v2;
    v23 = *&v72[0];
    v24 = sub_1DB314CBC();
    v26 = *(v23 + 16);
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_58;
    }

    v30 = v25;
    if (*(v23 + 24) < v29)
    {
      sub_1DB31AC90(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1DB314CBC();
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_62;
      }

LABEL_22:
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v36 = v24;
    sub_1DB3120D0();
    v24 = v36;
    if (v30)
    {
LABEL_4:
      v9 = v24;

      v10 = *&v72[0];
      v11 = (*(*&v72[0] + 56) + 40 * v9);
      __swift_destroy_boxed_opaque_existential_0(v11);
      sub_1DB30C7A8(&v73, v11);
      *v2 = v10;
      continue;
    }

LABEL_23:
    v32 = *&v72[0];
    *(*&v72[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v33 = (v32[6] + 16 * v24);
    *v33 = v21;
    v33[1] = v20;
    sub_1DB30C7A8(&v73, v32[7] + 40 * v24);
    v34 = v32[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_60;
    }

    v32[2] = v35;
    *v2 = v32;
  }

  v37 = 1 << *(v70 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v70 + 64);
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  if (!v39)
  {
    goto LABEL_34;
  }

  do
  {
    while (1)
    {
      v45 = v41;
LABEL_41:
      v48 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v49 = v48 | (v45 << 6);
      v50 = (*(v70 + 48) + 16 * v49);
      v52 = *v50;
      v51 = v50[1];
      sub_1DB30BE90(*(v70 + 56) + 40 * v49, v72);
      *&v73 = v52;
      *(&v73 + 1) = v51;
      sub_1DB30C7A8(v72, &v74);

      v47 = v45;
LABEL_42:
      v77 = v73;
      v78 = v74;
      v79 = v75;
      v80 = v76;
      v53 = *(&v73 + 1);
      if (!*(&v73 + 1))
      {
      }

      v54 = v77;
      sub_1DB30C7A8(&v78, &v73);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *&v72[0] = v2[1];
      v56 = *&v72[0];
      v57 = sub_1DB314CBC();
      v59 = *(v56 + 16);
      v60 = (v58 & 1) == 0;
      v28 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v28)
      {
        goto LABEL_59;
      }

      v62 = v58;
      if (*(v56 + 24) >= v61)
      {
        break;
      }

      sub_1DB31AC7C(v61, v55);
      v57 = sub_1DB314CBC();
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_63;
      }

LABEL_48:
      if ((v62 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_32:
      v42 = v57;

      v43 = *&v72[0];
      v44 = (*(*&v72[0] + 56) + 40 * v42);
      __swift_destroy_boxed_opaque_existential_0(v44);
      sub_1DB30C7A8(&v73, v44);
      v2[1] = v43;
      v41 = v47;
      if (!v39)
      {
        goto LABEL_34;
      }
    }

    if (v55)
    {
      goto LABEL_48;
    }

    v68 = v57;
    sub_1DB3120BC();
    v57 = v68;
    if (v62)
    {
      goto LABEL_32;
    }

LABEL_49:
    v64 = *&v72[0];
    *(*&v72[0] + 8 * (v57 >> 6) + 64) |= 1 << v57;
    v65 = (v64[6] + 16 * v57);
    *v65 = v54;
    v65[1] = v53;
    sub_1DB30C7A8(&v73, v64[7] + 40 * v57);
    v66 = v64[2];
    v28 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v28)
    {
      goto LABEL_61;
    }

    v64[2] = v67;
    v2[1] = v64;
    v41 = v47;
  }

  while (v39);
LABEL_34:
  if (v40 <= v41 + 1)
  {
    v46 = v41 + 1;
  }

  else
  {
    v46 = v40;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v45 >= v40)
    {
      v39 = 0;
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      goto LABEL_42;
    }

    v39 = *(v70 + 64 + 8 * v45);
    ++v41;
    if (v39)
    {
      goto LABEL_41;
    }
  }

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
  sub_1DB50BC20();
  __break(1u);
LABEL_63:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB3F6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[0] = a1;
  v33[3] = &type metadata for ConfigBaseFieldsProvider;
  v33[4] = &off_1F56F4EA8;
  v33[1] = a2;
  sub_1DB30BE90(v33, &v28);

  swift_unknownObjectRetain();
  sub_1DB381BC4(&v28, &v30);
  v6 = *(&v31 + 1);
  sub_1DB30623C(&v30, &qword_1ECC452D0, &unk_1DB51A640);
  if (v6)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v7 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB50EE90;
    v27 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001DB52D410;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v29 = &type metadata for MetricsFieldExclusionRequest;
    *&v28 = a3;
    *(&v28 + 1) = a4;
    sub_1DB301CDC(&v28, v26);
    v30 = 0u;
    v31 = 0u;

    sub_1DB301D4C(v26, &v30);
    v32 = 1;
    v10 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DB301BC0(0, *(v10 + 2) + 1, 1, v10);
      v27 = v10;
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v27 = v10;
    sub_1DB30623C(&v28, &qword_1ECC426B0, &qword_1DB50EEB0);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v8 + 32) = v27;
    v17 = sub_1DB50AF40();
    if (os_log_type_enabled(v7, v17))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v18 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v20 = swift_allocObject();
      *(v20 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v8;
      *(&v30 + 1) = sub_1DB314CB0;
      *&v31 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v21 = sub_1DB50A5E0();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DB50EE90;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1DB31494C();
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v7, v17, v24);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_1DB3F69F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40[3] = a5;
  v40[4] = a6;
  v40[0] = a1;
  sub_1DB30BE90(v40, &v35);
  v12 = a1;
  sub_1DB381BC4(&v35, &v37);
  v13 = *(&v38 + 1);
  sub_1DB30623C(&v37, &qword_1ECC452D0, &unk_1DB51A640);
  if (v13)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v14 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50EE90;
    v34 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001DB52D410;
    v16._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v36 = &type metadata for MetricsFieldExclusionRequest;
    *&v35 = a2;
    *(&v35 + 1) = a3;
    sub_1DB301CDC(&v35, v33);
    v37 = 0u;
    v38 = 0u;

    sub_1DB301D4C(v33, &v37);
    v39 = 1;
    v17 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
      v34 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v37;
    v22 = v38;
    v20[64] = v39;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v34 = v17;
    sub_1DB30623C(&v35, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v34;
    v24 = sub_1DB50AF40();
    if (os_log_type_enabled(v14, v24))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v25 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v25 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v27 = swift_allocObject();
      *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v37 = v15;
      *(&v37 + 1) = a8;
      *&v38 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v28 = sub_1DB50A5E0();
      v30 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DB50EE90;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1DB31494C();
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v14, v24, v31);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t sub_1DB3F6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[3] = a5;
  v38[4] = a6;
  v38[0] = a1;
  sub_1DB30BE90(v38, &v33);

  sub_1DB381BC4(&v33, &v35);
  v11 = *(&v36 + 1);
  sub_1DB30623C(&v35, &qword_1ECC452D0, &unk_1DB51A640);
  if (v11)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50EE90;
    v32 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001DB52D410;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldExclusionRequest;
    *&v33 = a2;
    *(&v33 + 1) = a3;
    sub_1DB301CDC(&v33, v31);
    v35 = 0u;
    v36 = 0u;

    sub_1DB301D4C(v31, &v35);
    v37 = 1;
    v15 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
      v32 = v15;
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v35;
    v20 = v36;
    v18[64] = v37;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v32 = v15;
    sub_1DB30623C(&v33, &qword_1ECC426B0, &qword_1DB50EEB0);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v32;
    v22 = sub_1DB50AF40();
    if (os_log_type_enabled(v12, v22))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v23 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v23 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v13;
      *(&v35 + 1) = a8;
      *&v36 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v26 = sub_1DB50A5E0();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1DB50EE90;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1DB31494C();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v12, v22, v29);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t sub_1DB3F7180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37[3] = a4;
  v37[4] = a5;
  sub_1DB30BE90(v37, &v32);
  sub_1DB381BC4(&v32, &v34);
  v10 = *(&v35 + 1);
  sub_1DB30623C(&v34, &qword_1ECC452D0, &unk_1DB51A640);
  if (v10)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    v31 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v13._object = 0x80000001DB52D410;
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v33 = &type metadata for MetricsFieldExclusionRequest;
    *&v32 = a1;
    *(&v32 + 1) = a2;
    sub_1DB301CDC(&v32, v30);
    v34 = 0u;
    v35 = 0u;

    sub_1DB301D4C(v30, &v34);
    v36 = 1;
    v14 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
      v31 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v34;
    v19 = v35;
    v17[64] = v36;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v31 = v14;
    sub_1DB30623C(&v32, &qword_1ECC426B0, &qword_1DB50EEB0);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v12 + 32) = v31;
    v21 = sub_1DB50AF40();
    if (os_log_type_enabled(v11, v21))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v22 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v22 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v24 = swift_allocObject();
      *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v34 = v12;
      *(&v34 + 1) = a7;
      *&v35 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v25 = sub_1DB50A5E0();
      v27 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1DB50EE90;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1DB31494C();
      *(v28 + 32) = v25;
      *(v28 + 40) = v27;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v11, v21, v28);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1DB3F7538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[3] = &type metadata for EventVersionFieldProvider;
  v32[4] = &off_1F56F47A8;
  v32[0] = a1;
  sub_1DB30BE90(v32, &v27);

  sub_1DB381BC4(&v27, &v29);
  v5 = *(&v30 + 1);
  sub_1DB30623C(&v29, &qword_1ECC452D0, &unk_1DB51A640);
  if (v5)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v26 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52D410;
    v8._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v28 = &type metadata for MetricsFieldExclusionRequest;
    *&v27 = a2;
    *(&v27 + 1) = a3;
    sub_1DB301CDC(&v27, v25);
    v29 = 0u;
    v30 = 0u;

    sub_1DB301D4C(v25, &v29);
    v31 = 1;
    v9 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
      v26 = v9;
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v29;
    v14 = v30;
    v12[64] = v31;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v26 = v9;
    sub_1DB30623C(&v27, &qword_1ECC426B0, &qword_1DB50EEB0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v26;
    v16 = sub_1DB50AF40();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v17 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v7;
      *(&v29 + 1) = sub_1DB314CB0;
      *&v30 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v20 = sub_1DB50A5E0();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DB50EE90;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1DB31494C();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v6, v16, v23);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_1DB3F7914(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[3] = a4;
  v38[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v10 = *a2;
  v9 = a2[1];
  sub_1DB30BE90(v38, &v33);
  sub_1DB381BC4(&v33, &v35);
  v11 = *(&v36 + 1);
  sub_1DB30623C(&v35, &qword_1ECC452D0, &unk_1DB51A640);
  if (v11)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50EE90;
    v32 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001DB52D410;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldExclusionRequest;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    sub_1DB301CDC(&v33, v31);
    v35 = 0u;
    v36 = 0u;

    sub_1DB301D4C(v31, &v35);
    v37 = 1;
    v15 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
      v32 = v15;
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v35;
    v20 = v36;
    v18[64] = v37;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v32 = v15;
    sub_1DB30623C(&v33, &qword_1ECC426B0, &qword_1DB50EEB0);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v32;
    v22 = sub_1DB50AF40();
    if (os_log_type_enabled(v12, v22))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v23 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v23 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v13;
      *(&v35 + 1) = sub_1DB314CB0;
      *&v36 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v26 = sub_1DB50A5E0();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1DB50EE90;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1DB31494C();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v12, v22, v29);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t sub_1DB3F7D20(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1DB4B765C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t OS_dispatch_queue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50A400();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1DB3F831C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_11;
  v13 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB357CA0();
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NSOperationQueue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1DB3F81B4;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DB3330B0;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);
  v7 = objc_opt_self();

  v8 = [v7 blockOperationWithBlock_];
  _Block_release(v6);

  [v2 addOperation_];
}

void sub_1DB3F81DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_1DB3F831C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DB3330B0;
  v10[3] = &block_descriptor_17;
  v7 = _Block_copy(v10);
  v8 = objc_opt_self();

  v9 = [v8 blockOperationWithBlock_];
  _Block_release(v7);

  [v5 addOperation_];
}

void sub_1DB3F8328(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;

    os_unfair_lock_unlock(v2 + 4);
    v4 = v3[2];
    if (v4)
    {
      v16 = v3;
      v5 = (v3 + 4);
      v6 = &unk_1ECC44FC0;
      do
      {
        sub_1DB30C4B8(v5, v24, v6, &unk_1DB50F4E0);
        sub_1DB30C4B8(v24, v21, v6, &unk_1DB50F4E0);
        v7 = v21[0];
        if (v23)
        {
          **(*(v21[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1DB30623C(v24, v6, &unk_1DB50F4E0);
        }

        else
        {
          v8 = v21[1];

          sub_1DB2FEA0C(&v22, v18);
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);

          v13(sub_1DB401294, v11, v10, v9);
          v6 = v12;

          sub_1DB30623C(v24, v12, &unk_1DB50F4E0);
          __swift_destroy_boxed_opaque_existential_0(v18);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
      v14 = MEMORY[0x1E69E7D48];
      v15 = v16;
    }

    else
    {
      v14 = MEMORY[0x1E69E7D48];
      v15 = v3;
    }

    sub_1DB400E3C(v15, 0, v14);
  }
}

void sub_1DB3F85C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1DB3E30E8(v4, v5, 0);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;

    sub_1DB30C340(v4, v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v6 = v4[2];
    if (v6)
    {
      v17 = v5;
      v18 = v4;
      v7 = (v4 + 4);
      do
      {
        sub_1DB30C4B8(v7, v27, &qword_1ECC429C0, &qword_1DB518FD0);
        sub_1DB30C4B8(v27, v24, &qword_1ECC429C0, &qword_1DB518FD0);
        v9 = v24[0];
        if (v26)
        {
          v8 = *(*(v24[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;

          swift_continuation_throwingResume();
          sub_1DB30623C(v27, &qword_1ECC429C0, &qword_1DB518FD0);
        }

        else
        {
          v10 = v24[1];

          sub_1DB2FEA0C(&v25, v21);
          v12 = v22;
          v11 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v11 + 8);

          v14(sub_1DB4011C4, v13, v12, v11);

          sub_1DB30623C(v27, &qword_1ECC429C0, &qword_1DB518FD0);
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
      v16 = v17;
      v15 = v18;
    }

    else
    {
      v15 = v4;
      v16 = v5;
    }

    sub_1DB30C340(v15, v16, 0);
  }
}

void sub_1DB3F8874(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v24, &unk_1ECC42BC0, &unk_1DB51A950);
  if (v25 == 3)
  {
    sub_1DB30623C(v24, &unk_1ECC42BC0, &unk_1DB51A950);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1DB300B14(a1, v23);
    v23[32] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC42BC0, &unk_1DB51A950);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC45020;
      do
      {
        sub_1DB30C4B8(v6, v23, v7, &unk_1DB50F700);
        sub_1DB30C4B8(v23, v20, v7, &unk_1DB50F700);
        v8 = v20[0];
        if (v22)
        {
          sub_1DB300B14(a1, &v17);
          sub_1DB30C200(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1DB30623C(v23, v7, &unk_1DB50F700);
        }

        else
        {
          v9 = v20[1];

          sub_1DB2FEA0C(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1(&v17, v18);
          sub_1DB300B14(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1DB30C200(v16, (v11 + 32));
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1DB400A84, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1DB30623C(v23, v12, &unk_1DB50F700);
          __swift_destroy_boxed_opaque_existential_0(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3F8B6C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1 & 1;
    *(v1 + 32) = 1;

    sub_1DB30C3C4(v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1DB30C4B8(v7, v22, &unk_1ECC44FD0, &qword_1DB50F1D0);
        sub_1DB30C4B8(v22, v19, &unk_1ECC44FD0, &qword_1DB50F1D0);
        v8 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1 & 1;
          swift_continuation_throwingResume();
          sub_1DB30623C(v22, &unk_1ECC44FD0, &qword_1DB50F1D0);
        }

        else
        {
          v9 = v19[1];

          sub_1DB2FEA0C(&v20, v16);
          v11 = v17;
          v10 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v12 = swift_allocObject();
          *(v12 + 16) = v8;
          *(v12 + 24) = v9;
          *(v12 + 32) = a1 & 1;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1DB40129C, v12, v11, v10);
          a1 = v13;

          sub_1DB30623C(v22, &unk_1ECC44FD0, &qword_1DB50F1D0);
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1DB30C3C4(v15, 0);
  }
}

void sub_1DB3F8DEC(uint64_t a1)
{
  v3 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v12, v10, &unk_1ECC42BE0, &unk_1DB518FC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v10, &unk_1ECC42BE0, &unk_1DB518FC0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1DB400F8C(a1, v7, type metadata accessor for InMemoryJetPackResourceBundle);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v7, v1 + v12, &unk_1ECC42BE0, &unk_1DB518FC0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = qword_1ECC453B0;
      v30 = a1;
      do
      {
        sub_1DB30C4B8(v16, v42, v17, &qword_1DB50F720);
        sub_1DB30C4B8(v42, v39, v17, &qword_1DB50F720);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1DB400F8C(a1, v35, type metadata accessor for InMemoryJetPackResourceBundle);
          sub_1DB30C210(v18, *(*(v19 + 64) + 40), type metadata accessor for InMemoryJetPackResourceBundle);
          swift_continuation_throwingResume();
          sub_1DB30623C(v42, v17, &qword_1DB50F720);
        }

        else
        {
          v20 = v39[1];

          sub_1DB2FEA0C(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1DB400F8C(a1, v35, type metadata accessor for InMemoryJetPackResourceBundle);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1DB30C210(v26, v25 + v24, type metadata accessor for InMemoryJetPackResourceBundle);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1DB4012B0, v25, v21, v27);

          a1 = v30;

          sub_1DB30623C(v42, v17, &qword_1DB50F720);
          __swift_destroy_boxed_opaque_existential_0(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3F92C0(uint64_t a1)
{
  v3 = type metadata accessor for DiskJetPackResourceBundle(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v12, v10, &unk_1ECC42BD0, &unk_1DB518FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v10, &unk_1ECC42BD0, &unk_1DB518FB0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1DB400F8C(a1, v7, type metadata accessor for DiskJetPackResourceBundle);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v7, v1 + v12, &unk_1ECC42BD0, &unk_1DB518FB0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1ECC453A0;
      v30 = a1;
      do
      {
        sub_1DB30C4B8(v16, v42, v17, &unk_1DB50F710);
        sub_1DB30C4B8(v42, v39, v17, &unk_1DB50F710);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1DB400F8C(a1, v35, type metadata accessor for DiskJetPackResourceBundle);
          sub_1DB30C210(v18, *(*(v19 + 64) + 40), type metadata accessor for DiskJetPackResourceBundle);
          swift_continuation_throwingResume();
          sub_1DB30623C(v42, v17, &unk_1DB50F710);
        }

        else
        {
          v20 = v39[1];

          sub_1DB2FEA0C(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1DB400F8C(a1, v35, type metadata accessor for DiskJetPackResourceBundle);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1DB30C210(v26, v25 + v24, type metadata accessor for DiskJetPackResourceBundle);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1DB4012AC, v25, v21, v27);

          a1 = v30;

          sub_1DB30623C(v42, v17, &unk_1DB50F710);
          __swift_destroy_boxed_opaque_existential_0(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3F9794(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1DB3E2FF0(v3, 0);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;
    swift_unknownObjectRetain();
    sub_1DB400E3C(v3, 0, MEMORY[0x1E69E7D60]);
    os_unfair_lock_unlock(v2 + 4);
    v14 = v3;
    v4 = v3[2];
    if (v4)
    {
      v5 = (v3 + 4);
      v6 = &qword_1ECC428C0;
      do
      {
        sub_1DB30C4B8(v5, v22, v6, &unk_1DB50F6F0);
        sub_1DB30C4B8(v22, v19, v6, &unk_1DB50F6F0);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1DB30623C(v22, v6, &unk_1DB50F6F0);
        }

        else
        {
          v8 = v19[1];

          sub_1DB2FEA0C(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);
          swift_unknownObjectRetain();

          v13(sub_1DB400AB4, v11, v10, v9);
          v6 = v12;

          sub_1DB30623C(v22, v12, &unk_1DB50F6F0);
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
    }

    sub_1DB400E3C(v14, 0, MEMORY[0x1E69E7D60]);
  }
}

void sub_1DB3F9A78(uint64_t a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v26 = *(v2 - 8);
  v25[2] = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v25 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v11, v9, &unk_1ECC42BB0, &unk_1DB50F6C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v9, &unk_1ECC42BB0, &unk_1DB50F6C0);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    sub_1DB30C4B8(v29, v6, &unk_1ECC45380, &qword_1DB51BBA0);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v6, v1 + v11, &unk_1ECC42BB0, &unk_1DB50F6C0);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v25[1] = v13;
      v15 = v13 + 32;
      do
      {
        sub_1DB30C4B8(v15, v36, &qword_1ECC42870, &unk_1DB518F90);
        sub_1DB30C4B8(v36, v33, &qword_1ECC42870, &unk_1DB518F90);
        v17 = v33[0];
        if (v35)
        {
          v16 = v28;
          sub_1DB30C4B8(v29, v28, &unk_1ECC45380, &qword_1DB51BBA0);
          sub_1DB30C06C(v16, *(*(v17 + 64) + 40), &unk_1ECC45380, &qword_1DB51BBA0);
          swift_continuation_throwingResume();
          sub_1DB30623C(v36, &qword_1ECC42870, &unk_1DB518F90);
        }

        else
        {
          v18 = v33[1];

          sub_1DB2FEA0C(&v34, v30);
          v19 = v31;
          v20 = v32;
          v27 = __swift_project_boxed_opaque_existential_1(v30, v31);
          v21 = v28;
          sub_1DB30C4B8(v29, v28, &unk_1ECC45380, &qword_1DB51BBA0);
          v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v17;
          *(v23 + 24) = v18;
          sub_1DB30C06C(v21, v23 + v22, &unk_1ECC45380, &qword_1DB51BBA0);
          v24 = *(v20 + 8);

          v24(sub_1DB4012A4, v23, v19, v20);

          sub_1DB30623C(v36, &qword_1ECC42870, &unk_1DB518F90);
          __swift_destroy_boxed_opaque_existential_0(v30);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1DB3F9F48(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(v3 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    sub_1DB3E3028(v6, v7, v8, 0);
    sub_1DB30C1AC(a1, a2);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;
    v23 = a3;
    v20 = v8;
    v21 = v7;
    sub_1DB30C0D4(v6, v7, v8, 0);
    os_unfair_lock_unlock(v5 + 4);
    v22 = v6;
    v9 = v6[2];
    if (v9)
    {
      v10 = (v6 + 4);
      do
      {
        sub_1DB30C4B8(v10, v32, &qword_1ECC428A0, &unk_1DB50F6E0);
        sub_1DB30C4B8(v32, v29, &qword_1ECC428A0, &unk_1DB50F6E0);
        v13 = v29[0];
        if (v31)
        {
          sub_1DB30C1AC(a1, a2);
          v11 = *(*(v13 + 64) + 40);
          *v11 = a1;
          v11[1] = a2;
          v11[2] = v23;
          v12 = v23;
          swift_continuation_throwingResume();
          sub_1DB30623C(v32, &qword_1ECC428A0, &unk_1DB50F6E0);
        }

        else
        {
          v14 = v29[1];

          sub_1DB2FEA0C(&v30, v26);
          v16 = v27;
          v15 = v28;
          __swift_project_boxed_opaque_existential_1(v26, v27);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = a1;
          v17[5] = a2;
          v17[6] = v23;
          v18 = *(v15 + 8);
          sub_1DB30C1AC(a1, a2);
          v19 = v23;

          v18(sub_1DB4012A8, v17, v16, v15);

          sub_1DB30623C(v32, &qword_1ECC428A0, &unk_1DB50F6E0);
          __swift_destroy_boxed_opaque_existential_0(v26);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1DB30C0D4(v22, v21, v20, 0);
  }
}

void sub_1DB3FA280(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v10 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;
    v26 = a1;
    os_unfair_lock_unlock(v9 + 4);
    v22 = v10;
    v11 = v10[2];
    if (v11)
    {
      v12 = (v10 + 4);
      v23 = a2;
      v24 = a3;
      do
      {
        sub_1DB30C4B8(v12, v33, a2, a3);
        sub_1DB30C4B8(v33, v30, a2, a3);
        v14 = v30[0];
        if (v32)
        {
          **(*(v30[0] + 64) + 40) = v26;
          v13 = v26;
          swift_continuation_throwingResume();
          sub_1DB30623C(v33, a2, a3);
        }

        else
        {
          v15 = v30[1];

          sub_1DB2FEA0C(&v31, v27);
          v17 = v28;
          v16 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v18 = swift_allocObject();
          v18[2] = v14;
          v18[3] = v15;
          v18[4] = v26;
          v19 = *(v16 + 8);
          v20 = v26;

          v21 = v16;
          a2 = v23;
          v19(a5, v18, v17, v21);

          a3 = v24;

          sub_1DB30623C(v33, v23, v24);
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1DB30C3E8(v22, 0);
  }
}

void sub_1DB3FA4D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v35, &unk_1ECC45000, &unk_1DB51A930);
  if (v36 == 3)
  {
    sub_1DB30623C(v35, &unk_1ECC45000, &unk_1DB51A930);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v36)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v35[0];
    sub_1DB400AF8(a1, &v29);
    v34 = 1;
    swift_beginAccess();
    sub_1DB30C2D8(&v29, v1 + 24, &unk_1ECC45000, &unk_1DB51A930);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42B90;
      do
      {
        sub_1DB30C4B8(v6, v28, v7, &qword_1DB50F290);
        sub_1DB30C4B8(v28, v25, v7, &qword_1DB50F290);
        v12 = v25[0];
        if (v27)
        {
          sub_1DB400AF8(a1, &v29);
          v8 = *(*(v12 + 64) + 40);
          *v8 = v29;
          v10 = v32;
          v9 = v33;
          v11 = v31;
          v8[1] = v30;
          v8[2] = v11;
          v8[3] = v10;
          v8[4] = v9;
          swift_continuation_throwingResume();
          sub_1DB30623C(v28, v7, &qword_1DB50F290);
        }

        else
        {
          v13 = v25[1];

          sub_1DB2FEA0C(&v26, v22);
          v14 = v24;
          v21 = v23;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          sub_1DB400AF8(a1, &v29);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v32;
          *(v15 + 64) = v31;
          *(v15 + 80) = v16;
          *(v15 + 96) = v33;
          v17 = v30;
          *(v15 + 32) = v29;
          *(v15 + 48) = v17;
          v18 = v7;
          v19 = a1;
          v20 = *(v14 + 8);

          v20(sub_1DB401290, v15, v21, v14);
          a1 = v19;
          v7 = v18;

          sub_1DB30623C(v28, v18, &qword_1DB50F290);
          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3FA7F4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v24, &unk_1ECC45010, &unk_1DB51A940);
  if (v25 == 3)
  {
    sub_1DB30623C(v24, &unk_1ECC45010, &unk_1DB51A940);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1DB30BE90(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45010, &unk_1DB51A940);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42BA0;
      do
      {
        sub_1DB30C4B8(v6, v23, v7, &qword_1DB50F2A0);
        sub_1DB30C4B8(v23, v20, v7, &qword_1DB50F2A0);
        v8 = v20[0];
        if (v22)
        {
          sub_1DB30BE90(a1, &v17);
          sub_1DB2FEA0C(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1DB30623C(v23, v7, &qword_1DB50F2A0);
        }

        else
        {
          v9 = v20[1];

          sub_1DB2FEA0C(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1(&v17, v18);
          sub_1DB30BE90(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1DB2FEA0C(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1DB401290, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1DB30623C(v23, v12, &qword_1DB50F2A0);
          __swift_destroy_boxed_opaque_existential_0(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3FAB4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;

    os_unfair_lock_unlock(v8 + 4);
    v19 = v9;
    v10 = v9[2];
    if (v10)
    {
      v11 = (v9 + 4);
      v20 = a2;
      v21 = a3;
      do
      {
        sub_1DB30C4B8(v11, v30, a2, a3);
        sub_1DB30C4B8(v30, v27, a2, a3);
        v12 = v27[0];
        if (v29)
        {
          **(*(v27[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1DB30623C(v30, a2, a3);
        }

        else
        {
          v13 = v27[1];

          sub_1DB2FEA0C(&v28, v24);
          v15 = v25;
          v14 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v16 = swift_allocObject();
          v16[2] = v12;
          v16[3] = v13;
          v16[4] = a1;
          v17 = *(v14 + 8);

          v18 = v14;
          a2 = v20;
          v17(a5, v16, v15, v18);

          a3 = v21;

          sub_1DB30623C(v30, v20, v21);
          __swift_destroy_boxed_opaque_existential_0(v24);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
    }

    sub_1DB400E3C(v19, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1DB3FADB8(uint64_t a1)
{
  v3 = type metadata accessor for JetPackAsset(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v12, v10, &unk_1ECC45350, &unk_1DB518F60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v10, &unk_1ECC45350, &unk_1DB518F60);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1DB400F8C(a1, v7, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v7, v1 + v12, &unk_1ECC45350, &unk_1DB518F60);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1ECC42B50;
      v30 = a1;
      do
      {
        sub_1DB30C4B8(v16, v42, v17, &qword_1DB50F240);
        sub_1DB30C4B8(v42, v39, v17, &qword_1DB50F240);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1DB400F8C(a1, v35, type metadata accessor for JetPackAsset);
          sub_1DB30C210(v18, *(*(v19 + 64) + 40), type metadata accessor for JetPackAsset);
          swift_continuation_throwingResume();
          sub_1DB30623C(v42, v17, &qword_1DB50F240);
        }

        else
        {
          v20 = v39[1];

          sub_1DB2FEA0C(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1DB400F8C(a1, v35, type metadata accessor for JetPackAsset);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1DB30C210(v26, v25 + v24, type metadata accessor for JetPackAsset);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1DB4012A0, v25, v21, v27);

          a1 = v30;

          sub_1DB30623C(v42, v17, &qword_1DB50F240);
          __swift_destroy_boxed_opaque_existential_0(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3FB28C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v32, &unk_1ECC45370, &unk_1DB518F80);
  if (v33 == 3)
  {
    sub_1DB30623C(v32, &unk_1ECC45370, &unk_1DB518F80);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1DB3C17BC(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v31, v1 + 24, &unk_1ECC45370, &unk_1DB518F80);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42B70;
      do
      {
        sub_1DB30C4B8(v6, v31, v7, &qword_1DB50F260);
        sub_1DB30C4B8(v31, v28, v7, &qword_1DB50F260);
        v12 = v28[0];
        if (v30)
        {
          sub_1DB3C17BC(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1DB30623C(v31, v7, &qword_1DB50F260);
        }

        else
        {
          v13 = v28[1];

          sub_1DB2FEA0C(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          sub_1DB3C17BC(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1DB401290, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1DB30623C(v31, v17, &qword_1DB50F260);
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3FB5A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v32, &unk_1ECC45360, &unk_1DB518F70);
  if (v33 == 3)
  {
    sub_1DB30623C(v32, &unk_1ECC45360, &unk_1DB518F70);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1DB3BEB60(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v31, v1 + 24, &unk_1ECC45360, &unk_1DB518F70);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42B60;
      do
      {
        sub_1DB30C4B8(v6, v31, v7, &qword_1DB50F250);
        sub_1DB30C4B8(v31, v28, v7, &qword_1DB50F250);
        v12 = v28[0];
        if (v30)
        {
          sub_1DB3BEB60(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1DB30623C(v31, v7, &qword_1DB50F250);
        }

        else
        {
          v13 = v28[1];

          sub_1DB2FEA0C(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          sub_1DB3BEB60(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1DB401290, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1DB30623C(v31, v17, &qword_1DB50F250);
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3FB8C4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  if (*(v0 + 32) == 3)
  {
    os_unfair_lock_unlock(v1 + 4);
  }

  else if (*(v0 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    os_unfair_lock_unlock(v1 + 4);
    v11 = v2;
    v3 = v2[2];
    if (v3)
    {
      v4 = (v2 + 4);
      do
      {
        sub_1DB30C4B8(v4, v18, &qword_1ECC429E0, &qword_1DB50F498);
        sub_1DB30C4B8(v18, v15, &qword_1ECC429E0, &qword_1DB50F498);
        v5 = v15[0];
        if (v17)
        {
          swift_continuation_throwingResume();
          sub_1DB30623C(v18, &qword_1ECC429E0, &qword_1DB50F498);
        }

        else
        {
          v6 = v15[1];

          sub_1DB2FEA0C(&v16, v12);
          v8 = v13;
          v7 = v14;
          __swift_project_boxed_opaque_existential_1(v12, v13);
          v9 = swift_allocObject();
          *(v9 + 16) = v5;
          *(v9 + 24) = v6;
          v10 = *(v7 + 8);

          v10(sub_1DB400890, v9, v8, v7);

          sub_1DB30623C(v18, &qword_1ECC429E0, &qword_1DB50F498);
          __swift_destroy_boxed_opaque_existential_0(v12);
        }

        v4 += 80;
        --v3;
      }

      while (v3);
    }

    sub_1DB30C3C4(v11, 0);
  }
}

void sub_1DB3FBB2C(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  if (*(v1 + 32))
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  *(v1 + 32) = 1;

  os_unfair_lock_unlock(v2 + 4);
  v4 = v3[2];
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 4);
    while (v5 < v4)
    {
      sub_1DB30C4B8(v6, v20, &qword_1ECC42840, &qword_1DB5142D0);
      sub_1DB30C4B8(v20, v17, &qword_1ECC42840, &qword_1DB5142D0);
      v7 = v17[0];
      if (v19)
      {
        **(*(v17[0] + 64) + 40) = a1;

        swift_continuation_throwingResume();
      }

      else
      {
        v8 = v17[1];

        sub_1DB2FEA0C(&v18, v14);
        v10 = v15;
        v9 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v11 = swift_allocObject();
        v11[2] = v7;
        v11[3] = v8;
        v11[4] = a1;
        v12 = *(v9 + 8);

        v12(sub_1DB401294, v11, v10, v9);

        __swift_destroy_boxed_opaque_existential_0(v14);
      }

      ++v5;
      sub_1DB30623C(v20, &qword_1ECC42840, &qword_1DB5142D0);
      v4 = v3[2];
      v6 += 80;
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1DB400E3C(v3, 0, MEMORY[0x1E69E7CF8]);
}

void sub_1DB3FBDE4(uint64_t a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v28 = *(v2 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v11, v9, &unk_1ECC45340, &unk_1DB518F50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v9, &unk_1ECC45340, &unk_1DB518F50);
    os_unfair_lock_unlock(v10 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  v13 = *v9;
  sub_1DB30C4B8(v32, v6, &unk_1ECC42B20, &unk_1DB50F6A0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1DB30C2D8(v6, v1 + v11, &unk_1ECC45340, &unk_1DB518F50);
  swift_endAccess();
  os_unfair_lock_unlock(v10 + 4);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v13 + 32;
    v26 = v13;
    while (v15 < v14)
    {
      sub_1DB30C4B8(v16, v40, &unk_1ECC42B30, &qword_1DB50F1E0);
      sub_1DB30C4B8(v40, v37, &unk_1ECC42B30, &qword_1DB50F1E0);
      v18 = v37[0];
      if (v39)
      {
        v17 = v31;
        sub_1DB30C4B8(v32, v31, &unk_1ECC42B20, &unk_1DB50F6A0);
        sub_1DB30C06C(v17, *(*(v18 + 64) + 40), &unk_1ECC42B20, &unk_1DB50F6A0);
        swift_continuation_throwingResume();
      }

      else
      {
        v33 = v37[1];

        sub_1DB2FEA0C(&v38, v34);
        v30 = v35;
        v19 = v36;
        v29 = __swift_project_boxed_opaque_existential_1(v34, v35);
        v20 = v31;
        sub_1DB30C4B8(v32, v31, &unk_1ECC42B20, &unk_1DB50F6A0);
        v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        *(v22 + 24) = v33;
        sub_1DB30C06C(v20, v22 + v21, &unk_1ECC42B20, &unk_1DB50F6A0);
        v23 = v19;
        v24 = *(v19 + 8);

        v24(sub_1DB401298, v22, v30, v23);

        v13 = v26;

        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      ++v15;
      sub_1DB30623C(v40, &unk_1ECC42B30, &qword_1DB50F1E0);
      v14 = *(v13 + 16);
      v16 += 80;
      if (v15 == v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
}

void sub_1DB3FC300(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
    return;
  }

  if (*(v5 + 32))
  {
    goto LABEL_14;
  }

  v9 = *(v5 + 24);
  *(v5 + 24) = a1;
  *(v5 + 32) = 1;
  v24 = a1;
  os_unfair_lock_unlock(v8 + 4);
  v10 = v9[2];
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 4);
    v22 = a2;
    while (v11 < v10)
    {
      sub_1DB30C4B8(v12, v32, a2, a3);
      sub_1DB30C4B8(v32, v29, a2, a3);
      v14 = v29[0];
      if (v31)
      {
        **(*(v29[0] + 64) + 40) = v24;
        v13 = v24;
        swift_continuation_throwingResume();
      }

      else
      {
        v15 = v29[1];

        sub_1DB2FEA0C(&v30, v26);
        v17 = v27;
        v16 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v18 = swift_allocObject();
        v18[2] = v14;
        v18[3] = v15;
        v18[4] = v24;
        v19 = *(v16 + 8);
        v20 = v24;

        v21 = v16;
        a2 = v22;
        v19(a5, v18, v17, v21);

        __swift_destroy_boxed_opaque_existential_0(v26);
      }

      ++v11;
      sub_1DB30623C(v32, a2, a3);
      v10 = v9[2];
      v12 += 80;
      if (v11 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1DB30C3E8(v9, 0);
}

uint64_t sub_1DB3FC55C()
{
  sub_1DB50BCF0();
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3FC5A0(uint64_t a1)
{
  sub_1DB50BCF0();
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB50BD30();
}

uint64_t LRUIntentCache.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LRUIntentCache.init(configuration:)(a1);
  return v2;
}

void LRUIntentCache.init(configuration:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DB50B010();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452E0, qword_1DB51A750);
    v9 = sub_1DB3370CC(&qword_1ECC452E8, &qword_1ECC452E0, qword_1DB51A750, &unk_1DB519980);
    *&v15 = v8;
    *(&v15 + 1) = MEMORY[0x1E69E7CC8];
    v18 = v9;
    v16 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452F0, &qword_1DB51A798);
    v10 = swift_allocObject();
    *(v10 + 56) = 0;
    sub_1DB2FEA0C(&v15, v10 + 16);
    *(v2 + 16) = v10;
    sub_1DB3FC8F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45300, &qword_1DB51A7A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB50F8D0;
    sub_1DB50AFF0();
    sub_1DB50B000();
    *&v15 = v11;
    sub_1DB400F2C(&qword_1ECC45308, MEMORY[0x1E69E80E0], MEMORY[0x1E69E80F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45310, &qword_1DB51A7A8);
    sub_1DB3370CC(&unk_1ECC45318, &qword_1ECC45310, &qword_1DB51A7A8, MEMORY[0x1E69E6328]);
    sub_1DB50B240();
    v12 = sub_1DB50B020();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for DispatchSourceMemoryPressureWrapper();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v2 + 24) = v13;
    swift_unknownObjectRetain();
    sub_1DB3FC964();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1DB3FC8F4()
{
  result = qword_1ECC452F8;
  if (!qword_1ECC452F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC452F8);
  }

  return result;
}

uint64_t sub_1DB3FC964()
{
  v11 = sub_1DB50A400();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DB50A440();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DB400F0C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_12;
  v8 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  sub_1DB3FDFE4();
  sub_1DB50B030();
  _Block_release(v8);
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v11);
  (*(v4 + 8))(v6, v3);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DB50B050();
  return swift_unknownObjectRelease();
}

uint64_t LRUIntentCache.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DB50B040();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LRUIntentCache.__deallocating_deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DB50B040();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t LRUIntentCache.retrieve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v5 = sub_1DB50B120();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3FCDA8, 0, 0);
}

uint64_t sub_1DB3FCDA8()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  sub_1DB50B670();
  (*(v5 + 8))(v6, v3);

  v7 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v0 + 20;
  os_unfair_lock_lock(v7 + 14);
  sub_1DB3FD4B8(&v7[4]);
  os_unfair_lock_unlock(v7 + 14);
  v0[41] = v10;

  if (v10)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB3FCFDC, 0, 0);
  }

  else
  {
    (*(*(v0[35] - 8) + 56))(v0[33], 1, 1);
    sub_1DB3FD52C((v0 + 20));

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1DB3FCFDC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1DB3FD0A8;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB308D20(v2);
  sub_1DB30623C(v2, &unk_1ECC45020, &unk_1DB50F700);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3FD0A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB3FD438;
  }

  else
  {
    sub_1DB30C200((v2 + 232), (v2 + 200));
    v4 = sub_1DB3FD1D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB3FD1D0()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[35];
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  v20 = *(v7 + 56);
  v20(v2, v6 ^ 1u, 1, v5);
  (*(v4 + 16))(v1, v2, v3);
  v8 = (*(v7 + 48))(v1, 1, v5);
  v9 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[33];
  if (v8 == 1)
  {
    v16 = *(v12 + 8);
    v16(v0[39], v0[37]);
    v17 = swift_task_alloc();
    *(v17 + 16) = v14;
    *(v17 + 24) = v10;
    requirementFailure(_:file:line:)(sub_1DB40062C, v17, "JetCore/LRUIntentCache.swift", 28, 2, 121);

    v20(v15, 1, 1, v14);
    v16(v9, v13);
  }

  else
  {

    (*(v7 + 32))(v15, v11, v14);
    v20(v15, 0, 1, v14);
    (*(v12 + 8))(v9, v13);
  }

  sub_1DB3FD52C((v0 + 20));

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DB3FD438()
{

  sub_1DB3FD52C(v0 + 160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3FD4B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(v2, v3, v4);
}

uint64_t sub_1DB3FD55C(void *a1, uint64_t a2)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000004ELL, 0x80000001DB52D570);
  v2 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v2);

  MEMORY[0x1E1285C70](0x6C6175746361202CLL, 0xEF203A6570797420);
  v3 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v3);

  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  return 0;
}

uint64_t LRUIntentCache.store<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v6[17] = *(a5 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3FD728, 0, 0);
}

uint64_t sub_1DB3FD728()
{
  v1 = v0[16];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45328, &unk_1DB51A7C8);
  v3 = swift_allocObject();
  v0[19] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 56) = 0;
  v6 = v2[3];
  v7 = __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  sub_1DB50B670();
  (*(v8 + 8))(v9, v6);

  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 2;
  *(v11 + 24) = v3;
  os_unfair_lock_lock(v10 + 14);
  sub_1DB400634(&v10[4]);
  v12 = v0[13];
  os_unfair_lock_unlock(v10 + 14);

  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_1DB3FD9D0;
  v14 = v0[18];

  return v16(v14);
}

uint64_t sub_1DB3FD9D0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DB3FDBCC;
  }

  else
  {
    v2 = sub_1DB3FDAE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3FDAE4()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v0[10] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  sub_1DB3F8874((v0 + 7));

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v2 + 32))(v4, v1, v3);
  sub_1DB3FD52C((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB3FDBCC()
{

  sub_1DB3FD52C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3FDC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB400ED4(a2, v10);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v9 = a3;
  v7 = *(v6 + 48);

  return v7(&v9, v10, v5, v6);
}

uint64_t sub_1DB3FDCDC(uint64_t a1)
{
  v1 = sub_1DB50B010();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1DB50B090();
    swift_unknownObjectRelease();
    sub_1DB3FDE0C();
    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_1DB3FDE0C()
{
  v1 = v0;
  v2 = sub_1DB50B010();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50B000();
  sub_1DB400F2C(&qword_1ECC45308, MEMORY[0x1E69E80E0], MEMORY[0x1E69E80F8]);
  v6 = sub_1DB50B230();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6 & 1) != 0 || (sub_1DB50AFF0(), v8 = sub_1DB50B230(), v7(v5, v2), (v8))
  {
    sub_1DB50AFF0();
    v9 = sub_1DB50B230();
    v7(v5, v2);
    v10 = *(v1 + 16);
    os_unfair_lock_lock((v10 + 56));
    v11 = *(v10 + 40);
    v12 = *(v10 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v10 + 16, v11);
    (*(v12 + 32))(v9 & 1, v11, v12);
    os_unfair_lock_unlock((v10 + 56));
  }
}

uint64_t sub_1DB3FDFE4()
{
  sub_1DB50A400();
  sub_1DB400F2C(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0, MEMORY[0x1E69E6328]);
  return sub_1DB50B240();
}

uint64_t sub_1DB3FE0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return LRUIntentCache.retrieve<A>(_:)(a1, a2, a3);
}

uint64_t sub_1DB3FE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB306AF4;

  return LRUIntentCache.store<A>(_:operation:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB3FE250()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB3FE288(uint64_t a1)
{
  sub_1DB30C4B8(v1, v19, &qword_1ECC42700, &unk_1DB50F690);
  v3 = v19[0];
  if (v21)
  {
    sub_1DB30C420(a1, &v16);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v17;
    *v4 = v16;
    *(v4 + 16) = v6;
    *(v4 + 32) = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v8 = v19[1];

    sub_1DB2FEA0C(&v20, &v16);
    v9 = *(&v17 + 1);
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    sub_1DB30C420(a1, v14);
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v8;
    v12 = v14[1];
    *(v11 + 32) = v14[0];
    *(v11 + 48) = v12;
    *(v11 + 64) = v15;
    v13 = *(v10 + 8);

    v13(sub_1DB401290, v11, v9, v10);

    return __swift_destroy_boxed_opaque_existential_0(&v16);
  }
}

uint64_t sub_1DB3FE454(uint64_t a1)
{
  sub_1DB30C4B8(v1, v13, &qword_1ECC42840, &qword_1DB5142D0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1DB2FEA0C(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1DB400AB4, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }
}

uint64_t sub_1DB3FE5A4(uint64_t a1)
{
  sub_1DB30C4B8(v1, v14, &qword_1ECC42950, &unk_1DB50F730);
  v3 = v14[0];
  if (v16)
  {
    sub_1DB30BE90(a1, &v11);
    sub_1DB2FEA0C(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1DB2FEA0C(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    sub_1DB30BE90(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1DB2FEA0C(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1DB401290, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(&v11);
  }
}

uint64_t sub_1DB3FE700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1DB30C4B8(v3, v17, &qword_1ECC429C0, &qword_1DB518FD0);
  v6 = v17[0];
  if (v19)
  {
    v7 = *(*(v17[0] + 64) + 40);
    *v7 = a1;
    v7[1] = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1DB2FEA0C(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    v13(sub_1DB4012B4, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v14);
  }
}

uint64_t sub_1DB3FE868(uint64_t a1)
{
  sub_1DB30C4B8(v1, v13, &qword_1ECC429D0, &unk_1DB50F740);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1DB2FEA0C(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1DB400AB8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }
}

uint64_t sub_1DB3FE9A0()
{
  sub_1DB30C4B8(v0, v11, &qword_1ECC429E0, &qword_1DB50F498);
  v1 = v11[0];
  if (v13)
  {
    return swift_continuation_throwingResume();
  }

  v3 = v11[1];

  sub_1DB2FEA0C(&v12, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = *(v5 + 8);

  v7(sub_1DB4012B8, v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1DB3FEAB0(uint64_t a1)
{
  sub_1DB30C4B8(v1, v14, &unk_1ECC45020, &unk_1DB50F700);
  v3 = v14[0];
  if (v16)
  {
    sub_1DB300B14(a1, &v11);
    sub_1DB30C200(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1DB2FEA0C(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    sub_1DB300B14(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1DB30C200(v10, (v8 + 32));
    v9 = *(v7 + 8);

    v9(sub_1DB401290, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(&v11);
  }
}

uint64_t sub_1DB3FEC0C(char a1)
{
  sub_1DB30C4B8(v1, v13, &unk_1ECC44FD0, &qword_1DB50F1D0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1DB2FEA0C(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1 & 1;
    v9 = *(v7 + 8);

    v9(sub_1DB400718, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }
}

uint64_t sub_1DB3FED4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(v2, v20, qword_1ECC453B0, &qword_1DB50F720);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InMemoryJetPackResourceBundle);
    sub_1DB30C210(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for InMemoryJetPackResourceBundle);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InMemoryJetPackResourceBundle);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C210(v7, v14 + v13, type metadata accessor for InMemoryJetPackResourceBundle);
    v15 = *(v12 + 8);

    v15(sub_1DB400FF4, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FEF68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DiskJetPackResourceBundle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(v2, v20, &unk_1ECC453A0, &unk_1DB50F710);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    sub_1DB30C210(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for DiskJetPackResourceBundle);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C210(v7, v14 + v13, type metadata accessor for DiskJetPackResourceBundle);
    v15 = *(v12 + 8);

    v15(sub_1DB400F74, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FF1E4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1DB30C4B8(v7, v19, a2, a3);
  v9 = v19[0];
  if (v21)
  {
    **(*(v19[0] + 64) + 40) = a1;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1DB2FEA0C(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    swift_unknownObjectRetain();
    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_1DB3FF324(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_1DB30C4B8(v4, v21, &qword_1ECC428A0, &unk_1DB50F6E0);
  v8 = v21[0];
  if (v23)
  {
    sub_1DB30C1AC(a1, a2);
    v9 = *(*(v8 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v10 = a3;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v8;
    v15[3] = v12;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    v16 = *(v14 + 8);

    sub_1DB30C1AC(a1, a2);
    v17 = a3;
    v16(sub_1DB400DA8, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_1DB3FF498(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1DB30C4B8(v2, v20, &qword_1ECC42870, &unk_1DB518F90);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB30C4B8(a1, v7, &unk_1ECC45380, &qword_1DB51BBA0);
    sub_1DB30C06C(v7, *(*(v8 + 64) + 40), &unk_1ECC45380, &qword_1DB51BBA0);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB30C4B8(a1, v7, &unk_1ECC45380, &qword_1DB51BBA0);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C06C(v7, v14 + v13, &unk_1ECC45380, &qword_1DB51BBA0);
    v15 = *(v12 + 8);

    v15(sub_1DB400BF0, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FF6F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1DB30C4B8(v7, v19, a2, a3);
  v9 = v19[0];
  if (v21)
  {
    **(*(v19[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1DB2FEA0C(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_1DB3FF868(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1DB30C4B8(v5, v20, a2, a3);
  v8 = v20[0];
  if (v22)
  {
    **(*(v20[0] + 64) + 40) = a1;
    v9 = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v16 = a1;
    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FF9CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1DB30C4B8(v2, v20, &unk_1ECC42B30, &qword_1DB50F1E0);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB30C4B8(a1, v7, &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB30C06C(v7, *(*(v8 + 64) + 40), &unk_1ECC42B20, &unk_1DB50F6A0);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB30C4B8(a1, v7, &unk_1ECC42B20, &unk_1DB50F6A0);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C06C(v7, v14 + v13, &unk_1ECC42B20, &unk_1DB50F6A0);
    v15 = *(v12 + 8);

    v15(sub_1DB40071C, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FFBFC(uint64_t a1)
{
  sub_1DB30C4B8(v1, v24, &unk_1ECC42B90, &qword_1DB50F290);
  v3 = v24[0];
  if (v26)
  {
    sub_1DB400AF8(a1, &v19);
    v4 = *(*(v3 + 64) + 40);
    *v4 = v19;
    v6 = v22;
    v5 = v23;
    v7 = v21;
    v4[1] = v20;
    v4[2] = v7;
    v4[3] = v6;
    v4[4] = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v24[1];

    sub_1DB2FEA0C(&v25, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_1DB400AF8(a1, &v19);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v22;
    *(v12 + 64) = v21;
    *(v12 + 80) = v13;
    *(v12 + 96) = v23;
    v14 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v14;
    v15 = *(v11 + 8);

    v15(sub_1DB400A84, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_1DB3FFD7C(uint64_t a1)
{
  sub_1DB30C4B8(v1, v14, &unk_1ECC42BA0, &qword_1DB50F2A0);
  v3 = v14[0];
  if (v16)
  {
    sub_1DB30BE90(a1, &v11);
    sub_1DB2FEA0C(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1DB2FEA0C(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    sub_1DB30BE90(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1DB2FEA0C(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1DB400A84, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(&v11);
  }
}

uint64_t sub_1DB3FFF38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JetPackAsset(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(v2, v20, &unk_1ECC42B50, &qword_1DB50F240);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    sub_1DB30C210(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JetPackAsset);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C210(v7, v14 + v13, type metadata accessor for JetPackAsset);
    v15 = *(v12 + 8);

    v15(sub_1DB4008B8, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB400154(uint64_t a1)
{
  sub_1DB30C4B8(v1, v22, &unk_1ECC42B70, &qword_1DB50F260);
  v3 = v22[0];
  if (v24)
  {
    sub_1DB3C17BC(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1DB2FEA0C(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1DB3C17BC(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1DB400A84, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_1DB4002DC(uint64_t a1)
{
  sub_1DB30C4B8(v1, v22, &unk_1ECC42B60, &qword_1DB50F250);
  v3 = v22[0];
  if (v24)
  {
    sub_1DB3BEB60(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1DB2FEA0C(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1DB3BEB60(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1DB401290, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_1DB4004F4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1DB30C4B8(v7, v21, a2, a3);
  v9 = v21[0];
  if (v23)
  {
    **(*(v21[0] + 64) + 40) = a1;
    v10 = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v12;
    v15[4] = a1;
    v16 = *(v14 + 8);
    v17 = a1;

    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

unint64_t sub_1DB4006C4()
{
  result = qword_1ECC45338;
  if (!qword_1ECC45338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45338);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB400850()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t objectdestroy_62Tm()
{
  v1 = (type metadata accessor for JetPackAsset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3));
  v5 = v0 + v3 + v1[7];

  v6 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v7 = sub_1DB509DD0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_69Tm()
{

  sub_1DB3BEB98(v0[4], v0[5]);
  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB400AB8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t objectdestroy_104Tm()
{

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroy_111Tm(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_0((v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_132Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_153Tm()
{

  sub_1DB30C158(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB400DF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

void sub_1DB400E3C(void *a1, unsigned __int8 a2, void (*a3)(void *))
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      a3(a1);
    }
  }

  else
  {
  }
}

uint64_t objectdestroyTm_1(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB400F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB400F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_180Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);

  a2(*(v2 + v6 + 8));
  v8 = v4[8];
  v9 = sub_1DB509CA0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v6 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_197Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB401210()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t _CodeByKind_KeyedBy.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _CodeByKind_KeyedBy.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_1DB50A540();
  swift_getWitnessTable();
  sub_1DB50BA10();
  return 0;
}

uint64_t _CodeByKind_KeyedBy.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DB30BE90(a1, v19);
  type metadata accessor for CodeByKind(0, a3, a7, v13);
  swift_getWitnessTable();
  v14 = sub_1DB50A580();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v18[1] = a5;
    MEMORY[0x1EEE9AC00](v14);
    v18[2] = v15;
    KeyPath = swift_getKeyPath();
    v20 = v18;
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getAssociatedTypeWitness();
    a6 = sub_1DB50A520();

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a6;
}

uint64_t _CodeByKind_KeyedBy.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for CodeByKind(0, a4, a8, v10);
  sub_1DB50A520();
  swift_getWitnessTable();
  sub_1DB50A550();
}

uint64_t sub_1DB4016F0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return CodeByKind.init(wrappedValue:)(v9, a4);
}

uint64_t sub_1DB401824@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_KeyedBy.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1DB30BE90(a1, v11);
  v7 = type metadata accessor for CodeByKind(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  Dictionary<>.init(_partiallyFrom:)(v11, v7, WitnessTable);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  v9 = sub_1DB50A520();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1DB4019D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(a1, *(a2 + 24), *(a2 + 56));
  *a3 = result;
  return result;
}

uint64_t _CodeByKind_KeyedBy<>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for CodeByKind(0, a3, a4, v7);
  v9 = sub_1DB50A520();
  WitnessTable = swift_getWitnessTable();
  Dictionary<>._partiallyEncode(to:)(a1, v9, v8, WitnessTable);
}

uint64_t sub_1DB401B00@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return CodeByKind.init(wrappedValue:)(v9, a4);
}

uint64_t static _CodeByKind_KeyedBy<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE68930](a1, a2, a3, AssociatedTypeWitness, a7, a9);
}

uint64_t _CodeByKind_KeyedBy<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedTypeWitness();

  return sub_1DB50A560();
}

uint64_t _CodeByKind_KeyedBy<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DB50BCF0();
  swift_getAssociatedTypeWitness();
  sub_1DB50A560();
  return sub_1DB50BD30();
}

uint64_t sub_1DB401E74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1DB50BCF0();
  _CodeByKind_KeyedBy<>.hash(into:)(v9, *v3, a2[2], a2[3], v6, v7, a2[6], a2[7], v5);
  return sub_1DB50BD30();
}

uint64_t sub_1DB401F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static StaticIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for StaticIntent(255, a1, a2, a3);
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(v7 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  (*(a3 + 40))(v27, a2, a3, v14);
  v26 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, v7);
    (*(v12 + 32))(v16, v11, v7);
    v19 = *(a1 - 8);
    v20 = v25;
    (*(v19 + 32))(v25, v16, a1);
    v21 = 0;
    v22 = v20;
  }

  else
  {
    v21 = 1;
    v18(v11, 1, 1, v7);
    (*(v9 + 8))(v11, v8);
    v19 = *(a1 - 8);
    v22 = v25;
  }

  return (*(v19 + 56))(v22, v21, 1, a1);
}

uint64_t sub_1DB402290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB402304(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB402370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB4023E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1DB402450@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB2FA5E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_1DB4024B8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB2FA5E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4024E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB34AABC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DB402518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB40256C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static StaticIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a2;
  v33 = a5;
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1DB50B120();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v28 - v9;
  v12 = type metadata accessor for StaticIntent(255, a1, v10, v11);
  v13 = sub_1DB50B120();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = *(v12 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  (*(a4 + 40))(v35, v32, a4, v19);
  v34 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v22 = swift_dynamicCast();
  v23 = *(v17 + 56);
  if (v22)
  {
    v24 = v33;
    v23(v16, 0, 1, v12);
    (*(v17 + 32))(v21, v16, v12);
    v25 = v31;
    static Continuous._unwrapOnlyElement<A>(of:)(v21, AssociatedTypeWitness, a1, v31, v30);
    (*(v17 + 8))(v21, v12);
    v26 = *(AssociatedTypeWitness - 8);
    if ((*(v26 + 48))(v25, 1, AssociatedTypeWitness) == 1)
    {
      (*(v28 + 8))(v25, v29);
      return (*(v26 + 56))(v24, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      (*(v26 + 32))(v24, v25, AssociatedTypeWitness);
      return (*(v26 + 56))(v24, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    v23(v16, 1, 1, v12);
    (*(v14 + 8))(v16, v13);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v33, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t StaticIntent<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v52 = a4;
  v51 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v9;
  type metadata accessor for StaticIntent.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v13 = sub_1DB50B7C0();
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v47 - v14;
  v17 = type metadata accessor for Result(0, v13, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v50 = type metadata accessor for StaticIntent(0, a2, v27, v28);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - v29;
  v56 = a3;
  v57 = a2;
  v61 = a2;
  v62 = a3;
  v63 = v6;
  Result.init(trying:)(sub_1DB40307C, v13, v26, v30);
  v31 = *(v18 + 16);
  v31(v23, v26, v17);
  v60 = v23;
  v65 = v17;
  v32 = v58;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

  v47 = v6;
  v31(v20, v60, v65);
  v33 = v55;
  (*(v55 + 32))(v59, v20, v13);
  if ((sub_1DB50B7B0() & 1) == 0)
  {
    (*(v33 + 8))(v59, v13);
    v6 = v47;
LABEL_6:
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1DB50BDD0();
    if (v32)
    {
      v38 = *(v18 + 8);
      v39 = v65;
      v38(v26, v65);
      v38(v60, v39);
      return __swift_destroy_boxed_opaque_existential_0(v6);
    }

    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v40 = v54;
    v41 = v57;
    sub_1DB50BA80();
    v43 = *(v18 + 8);
    v44 = v65;
    v43(v26, v65);
    v45 = v48;
    (*(v51 + 32))(v48, v40, v41);
    __swift_destroy_boxed_opaque_existential_0(v64);
LABEL_11:
    v43(v60, v44);
    (*(v49 + 32))(v52, v45, v50);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v34 = v53;
  v35 = v57;
  sub_1DB50B780();
  if (!v32)
  {
    (*(v33 + 8))(v59, v13);
    v43 = *(v18 + 8);
    v46 = v34;
    v44 = v65;
    v43(v26, v65);
    v45 = v48;
    (*(v51 + 32))(v48, v46, v35);
    v6 = v47;
    goto LABEL_11;
  }

  (*(v33 + 8))(v59, v13);
  v36 = *(v18 + 8);
  v37 = v65;
  v36(v26, v65);
  v6 = v47;
  v36(v60, v37);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1DB402FE4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StaticIntent.CodingKeys(0, a2, v3, v4);
  swift_getWitnessTable();
  return sub_1DB50BDF0();
}

uint64_t StaticIntent<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a3;
  type metadata accessor for StaticIntent.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_1DB50B8C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE40();
  sub_1DB50B8A0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticIntent<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a4;
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v14 = *v13;
  sub_1DB330D60(v15, v22);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v16 = sub_1DB40879C(0x6174616424, 0xE500000000000000);
    __swift_destroy_boxed_opaque_existential_0(v22);
    if (v16)
    {
      v17 = JSONObject.subscript.getter(0x6174616424, 0xE500000000000000, v22);
      v24 = v14;
      (*(a3 + 8))(v22, &v24, a2, a3, v17);
      result = sub_1DB3151CC(a1);
      if (v4)
      {
        return result;
      }

      return (*(v20 + 32))(v21, v12, a2);
    }
  }

  else
  {
    sub_1DB330DD0(v22);
  }

  sub_1DB3171C0(a1, v22);
  v24 = v14;
  (*(a3 + 8))(v22, &v24, a2, a3);
  result = sub_1DB3151CC(a1);
  if (v4)
  {
    return result;
  }

  v12 = v9;
  return (*(v20 + 32))(v21, v12, a2);
}
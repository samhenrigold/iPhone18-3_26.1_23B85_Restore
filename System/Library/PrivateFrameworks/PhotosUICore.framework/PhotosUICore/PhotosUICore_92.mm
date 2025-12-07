void sub_1A47F65A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = MEMORY[0x1E69E7CC0];
}

BOOL sub_1A47F678C(void *a1)
{
  v1 = a1;
  PXPhotosViewModel.otherCurationKind.getter(&v3);

  return v3 != 6;
}

void PXPhotosViewModel.otherCurationKind.getter(char *a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
}

id PXPhotosViewModel.curationModel.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

void PXPhotosViewModel.candidateOtherCurationKind.getter(char *a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
}

double PXPhotosViewModel.bannerModel.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A47F6CF8@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1A47F6DE0(uint64_t a1, id *a2)
{
  sub_1A3F1B4DC(a1, v4, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
  if ([*a2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return sub_1A3EA8D18(v4, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
}

double PXPhotosViewModel.bannerProvider.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A47F7008@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1A47F70F0(uint64_t a1, id *a2)
{
  sub_1A3F1B4DC(a1, v4, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider);
  if ([*a2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return sub_1A3EA8D18(v4, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider);
}

void PXPhotosViewModel.setBanner<A>(model:provider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v11 = *(a2 + 3);
  v8 = a2[3];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);
  v13 = v11;
  v10 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_1A47F734C(v14, v12);
}

void sub_1A47F734C(uint64_t a1, uint64_t a2)
{
  sub_1A3F1B4DC(a1, &v6, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
  if (*(&v7 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    v5[3] = swift_getAssociatedTypeWitness();
    v5[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1A52462D4();
  }

  sub_1A3EA8D18(&v6, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_1A3EA8D18(v3, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  sub_1A5246794();
}

Swift::Void __swiftcall PXPhotosViewModel.removeBanner()()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  sub_1A47F734C(v2, v0);
}

uint64_t PXPhotosViewModel.storyConfigurationProvider.getter()
{
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

id sub_1A47F7D84@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1A47F7E8C(uint64_t *a1, id *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A47F9E7C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if ([*a2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  sub_1A3C33378(v6, v5);
}

void PXPhotosViewModel.storyConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  sub_1A3C33378(a1, a2);
}

void (*PXPhotosViewModel.storyConfigurationProvider.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 0;
  a1[1] = 0;
  return sub_1A47F8200;
}

void sub_1A47F8200(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    if ([*(a1 + 16) appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    sub_1A3C33378(v2, v3);
  }

  else if ([*(a1 + 16) appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  sub_1A3C33378(v2, v3);
}

void sub_1A47F83E4(id *a1@<X0>, void *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
}

double sub_1A47F84A8(uint64_t *a1, id *a2)
{
  v2 = *a2;

  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

double PXPhotosViewModel.curationModel.setter(uint64_t a1)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

double (*PXPhotosViewModel.curationModel.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 0;
  return sub_1A47F87A8;
}

double sub_1A47F87A8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }

  else if ([a1[1] appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id PXPhotosViewModel.sortOrderPersistenceController.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id sub_1A47F8A20()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F8AFC(uint64_t a1)
{
  v2 = sub_1A47F8A20();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

id sub_1A47F8C8C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F8D7C(uint64_t a1)
{
  v2 = sub_1A47F8C8C();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

id sub_1A47F8F20()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F9010(uint64_t a1)
{
  v2 = sub_1A47F8F20();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

id sub_1A47F91B4()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F92A4(uint64_t a1)
{
  v2 = sub_1A47F91B4();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

double sub_1A47F9448(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

void sub_1A47F9580(unsigned __int8 *a1)
{
  v1 = *a1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  if (v1 != 6)
  {
    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }
}

void sub_1A47F9800(unsigned __int8 *a1)
{
  v1 = *a1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  if (v1 != 6)
  {
    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }
}

void sub_1A47F9A80(uint64_t a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  v2 = sub_1A3F61A0C(a1, MEMORY[0x1E69E7CC0]);

  if (v2)
  {
  }

  else
  {
    if ([v3 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    if ([v3 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }
}

uint64_t sub_1A47F9CF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    sub_1A42E6274(v31, v16);
    sub_1A42E6274(v37, v16);
    sub_1A47F9EB4();
    v14 = sub_1A524C594();
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_1A42E62D0(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_1A42E62D0(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

unint64_t sub_1A47F9EB4()
{
  result = qword_1EB125F90;
  if (!qword_1EB125F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125F90);
  }

  return result;
}

id sub_1A47F9F08()
{
  v1 = *(v0 + 16);
  sub_1A3F1B4DC(v0 + 24, v3, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  sub_1A3EA8D18(v3, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
  sub_1A3F1B4DC(v0 + 64, v3, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider);
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  sub_1A3EA8D18(v3, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider);
  return [v1 signalChange_];
}

uint64_t ParallaxAssetDebugView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A47FC8A8(0, &qword_1EB1202A0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A533E260;
  *(v4 + 32) = sub_1A524B3C4();
  *(v4 + 40) = sub_1A524B404();
  *(v4 + 48) = sub_1A524B424();
  *(v4 + 56) = sub_1A524B434();
  *(v4 + 64) = sub_1A524B3F4();
  *(v4 + 72) = sub_1A524B3B4();
  *(v4 + 80) = sub_1A524B454();
  result = sub_1A524B3D4();
  *(v4 + 88) = result;
  *a2 = a1;
  a2[1] = v4;
  return result;
}

uint64_t ParallaxAssetDebugView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A47FA4D4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v1;
  v9 = v1[1];
  (*(**v1 + 544))(v16, v6);
  memcpy(v22, v16, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v22) == 1)
  {
    memcpy(v15, v16, 0x123uLL);
    sub_1A47FB818(v15, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
  }

  else
  {
    *&v14[32] = *&v16[9];
    *&v14[48] = *&v16[11];
    *&v14[64] = *&v16[13];
    v14[80] = v16[15];
    *v14 = *&v16[5];
    *&v14[16] = *&v16[7];
    memcpy(v15, v16, 0x123uLL);
    sub_1A43DDA74(v14, &v17);
    sub_1A47FB818(v15, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
    if (*v14)
    {
      v17 = *v14;
      v19 = *&v14[24];
      v20 = *&v14[40];
      v21[0] = *&v14[56];
      *(v21 + 9) = *&v14[65];
      v18 = *&v14[8];
      *v8 = sub_1A524BC04();
      v8[1] = v11;
      sub_1A47FC718(0, &qword_1EB142C10, sub_1A47FA510, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
      sub_1A47FAD34(&v17, v10, v9, v8 + *(v12 + 44));
      sub_1A47FB818(v14, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo);
      sub_1A47FC78C(v8, a1, sub_1A47FA4D4);
      return (*(v5 + 56))(a1, 0, 1, v4);
    }
  }

  return (*(v5 + 56))(a1, 1, 1, v4);
}

void sub_1A47FA544(uint64_t a1)
{
  if (!qword_1EB142B70)
  {
    sub_1A47FA5D8(255);
    sub_1A47FA664(255);
    sub_1A47FA98C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB142B70);
    }
  }
}

void sub_1A47FA60C()
{
  if (!qword_1EB142B80)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142B80);
    }
  }
}

void sub_1A47FA664(uint64_t a1)
{
  if (!qword_1EB142B88)
  {
    sub_1A47FC8A8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A47FA9DC(255, &qword_1EB142B90, sub_1A47FA740, MEMORY[0x1E697E5E0]);
    sub_1A4035564();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142B88);
    }
  }
}

void sub_1A47FA7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A47FC670(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1A524B8B4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A47FA86C(uint64_t a1)
{
  if (!qword_1EB142BB0)
  {
    sub_1A47FA8D4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB142BB0);
    }
  }
}

void sub_1A47FA8FC(uint64_t a1)
{
  if (!qword_1EB142BC0)
  {
    sub_1A3D6F4A4();
    v1 = sub_1A52488F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142BC0);
    }
  }
}

void sub_1A47FA9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A47FAA40(uint64_t a1)
{
  if (!qword_1EB142BE0)
  {
    sub_1A47FAAC0(255);
    sub_1A47FACC8(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142BE0);
    }
  }
}

void sub_1A47FAAC0(uint64_t a1)
{
  if (!qword_1EB142BE8)
  {
    sub_1A47FAB40(255);
    sub_1A47FACC8(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142BE8);
    }
  }
}

void sub_1A47FAB40(uint64_t a1)
{
  if (!qword_1EB142BF0)
  {
    sub_1A47FABA4(255);
    sub_1A47FAC58();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142BF0);
    }
  }
}

void sub_1A47FABA4(uint64_t a1)
{
  if (!qword_1EB142BF8)
  {
    sub_1A47FC8A8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A4035564();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142BF8);
    }
  }
}

unint64_t sub_1A47FAC58()
{
  result = qword_1EB142C00;
  if (!qword_1EB142C00)
  {
    sub_1A47FABA4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C00);
  }

  return result;
}

void sub_1A47FACC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A47FC8A8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A47FAD34(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v56 = a2;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47FAA40(0);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47FA9B4(0);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47FA98C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v41 - v21;
  sub_1A47FA664(0);
  v52 = *(v22 - 8);
  v53 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v41 - v25;
  v51 = sub_1A524B404();
  if ((*(a1 + 56) & 1) != 0 || (v26 = *(a1 + 16)) == 0)
  {
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v63 = 1uLL;
  }

  else
  {
    v27 = *(a1 + 24);
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v31 = v26;
    v32 = sub_1A3C6E9EC();
    sub_1A41CE0F4(v26, v32, &v73);
    v63 = v73;
    v75.origin.x = v27;
    v75.origin.y = v28;
    v75.size.width = v29;
    v75.size.height = v30;
    CGRectGetWidth(v75);
    v76.origin.x = v27;
    v76.origin.y = v28;
    v76.size.width = v29;
    v76.size.height = v30;
    CGRectGetHeight(v76);
    sub_1A524BC74();
    sub_1A52481F4();

    v61 = v68;
    v62 = v67;
    v59 = v70;
    v60 = v69;
    v57 = v72;
    v58 = v71;
  }

  v47 = v14;
  v48 = v12;
  v49 = v19;
  v54 = v16;
  v74 = *a1;
  v33 = v74;
  v34 = *(v74 + 16);
  if (!v34)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *&v66 = v35;
    swift_getKeyPath();
    v38 = swift_allocObject();
    v39 = *(a1 + 48);
    *(v38 + 72) = *(a1 + 32);
    *(v38 + 88) = v39;
    *(v38 + 104) = *(a1 + 64);
    v40 = *(a1 + 16);
    *(v38 + 40) = *a1;
    *(v38 + 16) = v56;
    *(v38 + 24) = a3;
    *(v38 + 32) = v35;
    *(v38 + 120) = *(a1 + 80);
    *(v38 + 56) = v40;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v42 = a3;
  v35 = sub_1A3C51BF0(v34, 0);
  v36 = sub_1A47FBFB0(&v73, v35 + 4, v34, v33);
  v37 = v73;
  sub_1A47FC108(&v74, &v66, sub_1A47FC170);
  sub_1A3C42540(v37);
  if (v36 == v34)
  {
    a3 = v42;
    goto LABEL_9;
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1A47FB818(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A47FC8A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A47FB8A4()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47FBCF4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (*(*(a2 + 8) + 16))
  {
    sub_1A3C5DCA4(*a1, a1[1]);
    if (v7)
    {
      sub_1A5249414();
      sub_1A5249404();
      sub_1A52493F4();
      sub_1A5249404();
      sub_1A47FC7F4();
      sub_1A52493B4();
      sub_1A5249404();
      sub_1A5249444();
      *a3 = sub_1A524A444();
      *(a3 + 8) = v8;
      *(a3 + 16) = v9 & 1;
      *(a3 + 24) = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1A47FBE74()
{
  result = qword_1EB142C18;
  if (!qword_1EB142C18)
  {
    sub_1A47FBF4C(255, &qword_1EB142C20, sub_1A47FA4D4, MEMORY[0x1E69E6720]);
    sub_1A47FC670(&qword_1EB142C28, sub_1A47FA4D4, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C18);
  }

  return result;
}

void sub_1A47FBF4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1A47FBFB0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
    v15 = 0;
    v9 = 0;
LABEL_21:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v15;
    v4[4] = v8;
    return v9;
  }

  v9 = a3;
  if (!a3)
  {
    v15 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v10 = 0;
    if (v8)
    {
      goto LABEL_13;
    }

    v11 = 0;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v12 >= ((63 - v6) >> 6))
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v10 = v12;
LABEL_13:
        v13 = (*(a4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
        v14 = v13[1];
        *a2 = *v13;
        a2[1] = v14;
        if (a3 != 1)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v8 = 0;
    if ((63 - v6) >> 6 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v15 = v16 - 1;
    v9 = 0;
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A47FC108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A47FC170(uint64_t a1)
{
  if (!qword_1EB130D80)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1A524C454();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130D80);
    }
  }
}

void sub_1A47FC1D8(uint64_t *a1)
{
  v3 = v2[4];
  v4 = v3[2];
  if (!v4)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = v2[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = v3[4] == *a1 && v3[5] == v7;
  if (!v8 && (sub_1A524EAB4() & 1) == 0)
  {
    v11 = v3 + 7;
    v12 = 1;
    while (v4 != v12)
    {
      v9 = v12;
      if (*(v11 - 1) != v6 || *v11 != v7)
      {
        v14 = sub_1A524EAB4();
        v12 = v9 + 1;
        v11 += 2;
        if ((v14 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  v9 = 0;
LABEL_8:
  if (v9 >= *(v5 + 16))
  {
    goto LABEL_22;
  }

  if (!*(v2[5] + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1A3C5DCA4(v6, v7);
  if (v10)
  {
    sub_1A524BC04();
    sub_1A47FB8A4();
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_1A47FC51C()
{
  result = qword_1EB142C30;
  if (!qword_1EB142C30)
  {
    sub_1A47FA9DC(255, &qword_1EB142B90, sub_1A47FA740, MEMORY[0x1E697E5E0]);
    sub_1A47FC5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C30);
  }

  return result;
}

unint64_t sub_1A47FC5C0()
{
  result = qword_1EB142C38;
  if (!qword_1EB142C38)
  {
    sub_1A47FA740(255);
    sub_1A47FC670(&qword_1EB142C40, sub_1A47FA768, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C38);
  }

  return result;
}

uint64_t sub_1A47FC670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A47FC6B8()
{
  if (!qword_1EB130D98)
  {
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130D98);
    }
  }
}

void sub_1A47FC718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A47FC78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47FC7F4()
{
  result = qword_1EB142C50;
  if (!qword_1EB142C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C50);
  }

  return result;
}

uint64_t sub_1A47FC848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A47FC8A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t PhotosPreviewableCollectionKeyAssetModel.__allocating_init(collection:initialKeyAsset:)(uint64_t *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A47FD740(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PhotosPreviewableCollectionKeyAssetModel.init(collection:initialKeyAsset:)(uint64_t *a1, uint64_t a2)
{
  v2 = sub_1A47FD740(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A47FC988()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3E5387C;

  return sub_1A47FCF54();
}

void sub_1A47FCA34()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 232))(KeyPath, v2);

  if (v0[5] >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A47FCCB0()
{
  swift_getKeyPath();
  (*(*v0 + 232))();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A47FCD1C@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 232))();

  *a2 = v3[4];

  swift_unknownObjectRetain();
  return result;
}

void sub_1A47FCDBC()
{
  swift_getKeyPath();
  (*(*v0 + 232))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47FCE28(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 232))();

  *a2 = v3[5];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A47FCEC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  swift_getKeyPath();
  (*(*v5 + 240))();

  return result;
}

uint64_t sub_1A47FCF74()
{
  v17 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1A3C52C70(0, &qword_1EB1269B0, off_1E771FD48);
  v15 = v2;
  v16 = v3;
  swift_unknownObjectRetain();
  v5 = PXStoryConfiguration.init(previewFor:)(&v15, v4);
  v6 = [v5 assetCollection];
  v0[9] = v6;

  if (!v6)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_14:
    v13 = v0[1];

    return v13();
  }

  v0[6] = sub_1A4A15A74();
  v7 = 0;
  v0[7] = sub_1A4A15C94();
  v8 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v0[10] = v8;
  while (v7 != 2)
  {
    v9 = v0[v7++ + 6];
    if (v9)
    {
      v10 = v9;
      MEMORY[0x1A5907D70]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v8 = v15;
      goto LABEL_4;
    }
  }

  sub_1A3F56EDC(0);
  swift_arrayDestroy();
  sub_1A524CC54();
  v0[11] = sub_1A524CC44();
  v12 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47FD19C, v12, v11);
}

uint64_t sub_1A47FD19C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  KeyPath = swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  v5 = *(*v2 + 240);
  v6 = MEMORY[0x1E69E7CA8];
  v5(KeyPath, sub_1A47FDA64, v4, MEMORY[0x1E69E7CA8] + 8);

  if (v1 >> 62)
  {
    v7 = sub_1A524E2B4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v19 = MEMORY[0x1E69E7CC0];
  v8 = sub_1A524E554();
  if (v7 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  v11 = *(v0 + 80);
  type metadata accessor for PhotoKitFetchResultFirstAssetModel(0);
  v12 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1A59097F0](v12, *(v0 + 80));
    }

    else
    {
      v13 = *(v11 + 32 + 8 * v12);
    }

    ++v12;
    PhotoKitFetchResultFirstAssetModel.__allocating_init(fetchResult:)(v13);
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
  }

  while (v7 != v12);

  v14 = v19;
  v6 = MEMORY[0x1E69E7CA8];
LABEL_12:
  v15 = *(v0 + 64);
  v16 = swift_getKeyPath();
  v17 = swift_task_alloc();
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  v5(v16, sub_1A47FDA7C, v17, v6 + 8);

  v8 = sub_1A47FD420;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1A47FD420()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47FD480()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A3C52C70(0, &qword_1EB1269B0, off_1E771FD48);
  v7 = v1;
  LOBYTE(v8) = v2;
  swift_unknownObjectRetain();
  v4 = PXStoryConfiguration.init(previewFor:)(&v7, v3);
  v5 = [v4 assetCollection];

  if (v5)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t PhotosPreviewableCollectionKeyAssetModel.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosPreviewableCollectionKeyAssetModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosPreviewableCollectionKeyAssetModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosPreviewableCollectionKeyAssetModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47FD740(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  *(v3 + 32) = 0;
  sub_1A5241604();
  *(v3 + 16) = v9;
  *(v3 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = a2;
  *(v3 + 40) = v10;
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1A524CC54();

  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v3;
  sub_1A3D4D930(0, 0, v8, &unk_1A53641B0, v13);

  return v3;
}

unint64_t sub_1A47FD8B4()
{
  result = qword_1EB142C58;
  if (!qword_1EB142C58)
  {
    type metadata accessor for PhotosPreviewableCollectionKeyAssetModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C58);
  }

  return result;
}

uint64_t type metadata accessor for PhotosPreviewableCollectionKeyAssetModel(uint64_t a1)
{
  result = qword_1EB1D4F60;
  if (!qword_1EB1D4F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47FD960(uint64_t a1)
{
  result = sub_1A5241614();
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

uint64_t sub_1A47FDA94()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A47FDB0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A47FC988();
}

void sub_1A47FDBD0()
{
  if (!qword_1EB127320)
  {
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127320);
    }
  }
}

uint64_t sub_1A47FDC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v38 = a2;
  v37 = a1;
  v36 = a3;
  sub_1A47FE0A0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v33 - v8;
  v9 = sub_1A524A3A4();
  v11 = v10;
  v13 = v12;
  v47[0] = sub_1A524B404();
  v39 = sub_1A524A374();
  v43 = v14;
  v16 = v15;
  v40 = v17;
  sub_1A3E04DF4(v9, v11, v13 & 1);

  LOBYTE(v11) = sub_1A524A074();
  v18 = sub_1A524A0A4();
  sub_1A524A0A4();
  v19 = sub_1A524A0A4();
  if (v19 != v11)
  {
    v19 = sub_1A524A0A4();
    v18 = v19;
  }

  v34 = v18;
  v59 = v16 & 1;
  v20 = v16 & 1;
  v35 = v16 & 1;
  v56 = 1;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38;
  *(&v33 - 2) = v37;
  *(&v33 - 1) = v21;
  sub_1A524A044();
  sub_1A47FE104(0);
  sub_1A47FE338();
  v22 = v41;
  sub_1A5247D14();
  v23 = *(v5 + 16);
  v24 = v42;
  v23(v42, v22, v4);
  v25 = v39;
  *&v44 = v39;
  *(&v44 + 1) = v43;
  LOBYTE(v45) = v20;
  *(&v45 + 1) = *v58;
  DWORD1(v45) = *&v58[3];
  v26 = v40;
  *(&v45 + 1) = v40;
  v46[0] = v18;
  *&v46[1] = *v57;
  *&v46[4] = *&v57[3];
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v27 = *&v46[16];
  v28 = v36;
  v36[2] = *v46;
  v28[3] = v27;
  *(v28 + 57) = *&v46[25];
  v29 = v45;
  *v28 = v44;
  v28[1] = v29;
  sub_1A47FE4E0(0, &qword_1EB142CB8, sub_1A4268678, sub_1A47FE0A0);
  v23(v28 + *(v30 + 48), v24, v4);
  sub_1A47FF840(&v44, v47, sub_1A4268678);
  v31 = *(v5 + 8);
  v31(v22, v4);
  v31(v24, v4);
  v47[0] = v25;
  v47[1] = v43;
  v48 = v35;
  *v49 = *v58;
  *&v49[3] = *&v58[3];
  v50 = v26;
  v51 = v34;
  *v52 = *v57;
  *&v52[3] = *&v57[3];
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  return sub_1A47FF8A8(v47, sub_1A4268678);
}

void sub_1A47FE0A0(uint64_t a1)
{
  if (!qword_1EB142C60)
  {
    sub_1A47FE104(255);
    sub_1A47FE338();
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142C60);
    }
  }
}

void sub_1A47FE104(uint64_t a1)
{
  if (!qword_1EB142C68)
  {
    sub_1A47FE1CC(255);
    sub_1A47FE200(255);
    sub_1A47FE2F0(&qword_1EB142C90, sub_1A47FE1CC, MEMORY[0x1E69E6338]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142C68);
    }
  }
}

void sub_1A47FE23C(uint64_t a1)
{
  if (!qword_1EB142C80)
  {
    sub_1A40745F4(255);
    sub_1A47FE2F0(&qword_1EB142C88, sub_1A40745F4, MEMORY[0x1E6981870]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB142C80);
    }
  }
}

uint64_t sub_1A47FE2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A47FE338()
{
  result = qword_1EB142C98;
  if (!qword_1EB142C98)
  {
    sub_1A47FE104(255);
    sub_1A47FE2F0(&qword_1EB142CA0, sub_1A47FE200, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C98);
  }

  return result;
}

void sub_1A47FE3E0(uint64_t a1)
{
  if (!qword_1EB142CA8)
  {
    sub_1A47FE448(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142CA8);
    }
  }
}

void sub_1A47FE484(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A47FE4E0(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A47FE4E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_1A47FE55C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a1 + 136))();
  v5 = *(a1 + 8);
  v10 = v4;
  v11 = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = *(a1 + 16);
  *(v6 + 24) = *a1;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a1 + 32);

  sub_1A3DB8180(&v11, v9);
  sub_1A47FE1CC(0);
  sub_1A47FE200(0);
  sub_1A47FE2F0(&qword_1EB142C90, sub_1A47FE1CC, MEMORY[0x1E69E6338]);
  sub_1A47FE2F0(&qword_1EB142CA0, sub_1A47FE200, MEMORY[0x1E6981F48]);
  sub_1A47FE2F0(&qword_1EB142CE8, MEMORY[0x1E69C10C8], MEMORY[0x1E69C10D8]);

  sub_1A524B9C4();
  return result;
}

void sub_1A47FE748(uint64_t a2@<X1>, char *a4@<X8>)
{
  v12[2] = a2;
  v14 = a4;
  v13 = sub_1A524B9A4();
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v12[5] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v16 = v12 - v6;
  v7 = sub_1A5244A54();
  MEMORY[0x1EEE9AC00](v7);
  sub_1A47FE23C(0);
  v12[4] = v8;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12[3] = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v12 - v11;
  sub_1A5249574();
  v19 = 1;
  sub_1A47FEC74(&v20);
}

void sub_1A47FEC74(uint64_t a1@<X8>)
{
  v2 = sub_1A5244A24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A5244914();
  v44 = v6;
  sub_1A3D5F9DC();
  v7 = sub_1A524A464();
  v9 = v8;
  v11 = v10;
  if (sub_1A5244A44())
  {
    v12 = sub_1A524B424();
  }

  else
  {
    v12 = sub_1A524B3B4();
  }

  v43 = v12;
  v13 = sub_1A524A374();
  v38 = v14;
  v39 = v13;
  v37 = v15;
  v40 = v16;
  sub_1A3E04DF4(v7, v9, v11 & 1);

  v43 = 0x203A656372756F53;
  v44 = 0xE800000000000000;
  sub_1A5244A34();
  v17 = sub_1A52449F4();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1A5907B60](v17, v19);

  sub_1A524B404();
  v20 = sub_1A524B474();

  v43 = v20;
  v21 = sub_1A524A374();
  v23 = v22;
  v25 = v24;

  sub_1A524A224();
  v26 = sub_1A524A3C4();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_1A3E04DF4(v21, v23, v25 & 1);

  v33 = v37 & 1;
  v41 = v37 & 1;
  LOBYTE(v43) = v37 & 1;
  LOBYTE(v21) = v30 & 1;
  v42 = v30 & 1;
  v35 = v38;
  v34 = v39;
  *a1 = v39;
  *(a1 + 8) = v35;
  *(a1 + 16) = v33;
  *(a1 + 24) = v40;
  *(a1 + 32) = v26;
  *(a1 + 40) = v28;
  *(a1 + 48) = v21;
  *(a1 + 56) = v32;
  sub_1A3E75E68(v34, v35, v33);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A47FEF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5244984();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A47FF9FC(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26[-v8];
  v10 = sub_1A5244A24();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = swift_projectBox();
  sub_1A5244914();
  sub_1A5244A34();
  v17 = sub_1A5244A54();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_1A5244954();
  v18 = sub_1A417F5DC();
  sub_1A417DCE4(v18, v19, v12, v9, v6, 0, v15, 0);
  v20 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  swift_beginAccess();
  sub_1A47FFA60(v15, v16);
  v22 = *(a3 + 8);
  v21 = *(a3 + 16);
  LOBYTE(v15) = *(a3 + 24);
  v33 = v22;
  v29 = v22;
  v30 = v21;
  v31 = v15;
  sub_1A3DB8180(&v33, v27);
  sub_1A47FDBD0();
  v24 = v23;

  MEMORY[0x1A5906C60](&v32, v24);
  v27[0] = v22;
  v27[1] = v21;
  v28 = v15;
  v26[15] = (v32 & 1) == 0;
  sub_1A524B904();
  sub_1A3DB81DC(&v33);

  return result;
}

uint64_t sub_1A47FF288(uint64_t a1, uint64_t a2)
{
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for GenerativeStorySuggestion(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  swift_beginAccess();
  sub_1A47FF840(v13, v8, sub_1A4499C00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v14 = sub_1A4499C00;
    v15 = v8;
  }

  else
  {
    sub_1A417F008(v8, v12);
    v16 = *(a2 + 32);
    sub_1A47FF840(v12, v5, type metadata accessor for GenerativeStorySuggestion);
    (*(v10 + 56))(v5, 0, 1, v9);
    v16(v5);
    sub_1A47FF8A8(v5, sub_1A4499C00);
    v14 = type metadata accessor for GenerativeStorySuggestion;
    v15 = v12;
  }

  return sub_1A47FF8A8(v15, v14);
}

void sub_1A47FF4C8(uint64_t a1)
{
  if (!qword_1EB142CC0)
  {
    sub_1A47FF528(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142CC0);
    }
  }
}

void sub_1A47FF564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A47FE2F0(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1A524B894();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A47FF5F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

double sub_1A47FF62C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v17 = v1[2];
  sub_1A4499C00(0);
  v4 = swift_allocBox();
  v6 = v5;
  v7 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A47FE3E0(0);
  sub_1A47FDC20(&v15, v4, (a1 + *(v8 + 44)));
  v18 = *(&v15 + 1);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = v16;
  *(v9 + 24) = v15;
  *(v9 + 40) = v10;
  *(v9 + 56) = v17;
  sub_1A47FF4C8(0);
  v12 = (a1 + *(v11 + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_1A47FFAC4;
  v12[3] = v9;

  sub_1A3DB8180(&v18, v14);

  return result;
}

unint64_t sub_1A47FF790()
{
  result = qword_1EB142CD8;
  if (!qword_1EB142CD8)
  {
    sub_1A47FF4C8(255);
    sub_1A47FE2F0(&qword_1EB142CE0, sub_1A47FF528, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142CD8);
  }

  return result;
}

uint64_t sub_1A47FF840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47FF8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_78()
{

  return swift_deallocObject();
}

double sub_1A47FF96C()
{
  v1 = *(sub_1A5244A54() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1A47FEF8C(v3, v0 + v2, v4);
}

void sub_1A47FF9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A47FFA60(uint64_t a1, uint64_t a2)
{
  sub_1A4499C00(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static UIApplication.navigate(to:options:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A48003E4(a1, a2);
}

uint64_t sub_1A47FFC10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v8 = sub_1A524C674();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(*(v7 + 64) + 40);
  *v10 = a2;
  v10[1] = v8;
  v10[2] = v9;
  v10[3] = a4;
  v11 = a4;

  return MEMORY[0x1EEE6DED8](v7);
}

uint64_t static UIApplication.navigate(to:options:ignoreNavigationFailure:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 112) = a3;
  *(v3 + 16) = a1;
  v6 = sub_1A5240E64();
  *(v3 + 24) = v6;
  *(v3 + 32) = *(v6 - 8);
  *(v3 + 40) = swift_task_alloc();
  v7 = sub_1A5246F24();
  *(v3 + 48) = v7;
  *(v3 + 56) = *(v7 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = sub_1A524CC54();
  *(v3 + 80) = sub_1A524CC44();
  v8 = swift_task_alloc();
  *(v3 + 88) = v8;
  *v8 = v3;
  v8[1] = sub_1A47FFE30;

  return sub_1A48003E4(a1, a2);
}

uint64_t sub_1A47FFE30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A4800030;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_1A524CBC4();
    v7 = v9;
    v8 = sub_1A47FFFB0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1A47FFFB0()
{

  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A4800030()
{
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    sub_1A5246EF4();
  }

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void UIViewController.descendant<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  UIViewController.firstDescendant<A>(ofType:)(a2, a2);
  if (!v4)
  {
    sub_1A4800DEC();
    swift_allocError();
    *v5 = v2;
    v5[1] = a2;
    swift_willThrow();
    v6 = v2;
  }
}

uint64_t sub_1A48003E4(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_1A5240E64();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = sub_1A5246F24();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_1A524CC54();
  v2[33] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v2[34] = v6;
  v2[35] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4800558, v6, v5);
}

uint64_t sub_1A480087C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1A4800984, v2, v1);
}

uint64_t sub_1A4800984()
{
  v1 = v0[40];

  v2 = v0[18];
  v3 = v0[21];

  if (v2 != 1)
  {
    sub_1A5246EF4();
  }

  if (!v3)
  {
    sub_1A5246EF4();
  }

  v4 = v0[1];

  return v4(v3);
}

unint64_t sub_1A4800DEC()
{
  result = qword_1EB1D4FF0[0];
  if (!qword_1EB1D4FF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D4FF0);
  }

  return result;
}

void sub_1A4800E50(uint64_t a1)
{
  if (!qword_1EB142CF0)
  {
    sub_1A4800EB8(255);
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142CF0);
    }
  }
}

void sub_1A4800EB8(uint64_t a1)
{
  if (!qword_1EB142CF8)
  {
    type metadata accessor for PXProgrammaticNavigationResult(255);
    sub_1A3C4EF08(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1A3C4B7E8(255, &qword_1EB120A40, &qword_1EB126B10, 0x1E69DD258);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB142CF8);
    }
  }
}

unint64_t sub_1A4800F7C()
{
  result = qword_1EB1D5080[0];
  if (!qword_1EB1D5080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D5080);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13UIApplicationC12PhotosUICoreE5Error33_17874B6F6717EDD42A710C8F0C3FCFA2LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1A4800FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1A4801050(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

_OWORD *sub_1A4801090(_OWORD *a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  v3 = a1[9];
  v2[9] = a1[8];
  v2[10] = v3;
  v2[11] = a1[10];
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[7];
  v2[7] = a1[6];
  v2[8] = v5;
  v6 = a1[1];
  v2[1] = *a1;
  v2[2] = v6;
  v7 = a1[3];
  v2[3] = a1[2];
  v2[4] = v7;
  return v2;
}

double sub_1A4801108(_OWORD *a1)
{
  v2 = a1[9];
  v8[8] = a1[8];
  v8[9] = v2;
  v8[10] = a1[10];
  v3 = a1[5];
  v8[4] = a1[4];
  v8[5] = v3;
  v4 = a1[7];
  v8[6] = a1[6];
  v8[7] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  swift_getKeyPath();
  (*(*v1 + 176))();
  sub_1A440594C(v8);

  return result;
}

uint64_t sub_1A48011D8@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 168))();

  swift_beginAccess();
  v3 = v1[8];
  v4 = v1[10];
  v26 = v1[9];
  v27 = v4;
  v5 = v1[10];
  v28 = v1[11];
  v6 = v1[4];
  v7 = v1[6];
  v22 = v1[5];
  v8 = v22;
  v23 = v7;
  v9 = v1[6];
  v10 = v1[8];
  v24 = v1[7];
  v11 = v24;
  v25 = v10;
  v12 = v1[2];
  v19[0] = v1[1];
  v19[1] = v12;
  v13 = v1[4];
  v15 = v1[1];
  v14 = v1[2];
  v20 = v1[3];
  v16 = v20;
  v21 = v13;
  a1[8] = v26;
  a1[9] = v5;
  a1[10] = v1[11];
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v3;
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v6;
  return sub_1A41855E8(v19, v18);
}

__n128 sub_1A48012C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 128))(v8);
  v3 = v8[9];
  *(a2 + 128) = v8[8];
  *(a2 + 144) = v3;
  *(a2 + 160) = v8[10];
  v4 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v4;
  v5 = v8[7];
  *(a2 + 96) = v8[6];
  *(a2 + 112) = v5;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1A480134C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v25 = a1[8];
  v26 = v3;
  v4 = a1[9];
  v27 = a1[10];
  v5 = a1[3];
  v6 = a1[5];
  v21 = a1[4];
  v22 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v23 = a1[6];
  v24 = v8;
  v9 = a1[1];
  v18[0] = *a1;
  v18[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v19 = a1[2];
  v20 = v10;
  v17[8] = v25;
  v17[9] = v4;
  v17[10] = a1[10];
  v17[4] = v21;
  v17[5] = v7;
  v17[6] = v23;
  v17[7] = v2;
  v17[0] = v12;
  v17[1] = v11;
  v13 = *a2;
  v17[2] = v19;
  v17[3] = v5;
  v14 = *(*v13 + 136);
  sub_1A41855E8(v18, &v16);
  return v14(v17);
}

uint64_t sub_1A4801410()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = v2[9];
  v18[7] = v2[8];
  v18[8] = v3;
  v4 = v2[11];
  v18[9] = v2[10];
  v18[10] = v4;
  v5 = v2[5];
  v18[3] = v2[4];
  v18[4] = v5;
  v6 = v2[7];
  v18[5] = v2[6];
  v18[6] = v6;
  v7 = v2[2];
  v18[0] = v2[1];
  v18[1] = v7;
  v18[2] = v2[3];
  v9 = v1[9];
  v8 = v1[10];
  v10 = v1[8];
  v2[8] = v1[7];
  v2[9] = v10;
  v2[10] = v9;
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[6];
  v2[4] = v1[3];
  v2[5] = v11;
  v2[6] = v12;
  v2[7] = v13;
  v15 = v1[1];
  v14 = v1[2];
  v2[1] = *v1;
  v2[2] = v15;
  v2[3] = v14;
  v2[11] = v8;
  sub_1A41855E8(v1, v17);
  return sub_1A440594C(v18);
}

uint64_t (*sub_1A48014E0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23LemonadeiCloudLinkModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4801B7C(&qword_1EB12A030, &unk_1A53644E0);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84(v4);
  return sub_1A4801608;
}

void sub_1A4801608(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeiCloudLinkModel(uint64_t a1)
{
  result = qword_1EB185840;
  if (!qword_1EB185840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4801718(uint64_t (*a1)(void *))
{
  v3 = (*(*v1 + 128))(&v6);
  v4 = a1(v3);
  sub_1A440594C(&v6);
  return v4;
}

uint64_t sub_1A48018DC()
{
  v1 = *(v0 + 10);
  v9[8] = *(v0 + 9);
  v9[9] = v1;
  v9[10] = *(v0 + 11);
  v2 = *(v0 + 6);
  v9[4] = *(v0 + 5);
  v9[5] = v2;
  v3 = *(v0 + 8);
  v9[6] = *(v0 + 7);
  v9[7] = v3;
  v4 = *(v0 + 2);
  v9[0] = *(v0 + 1);
  v9[1] = v4;
  v5 = *(v0 + 4);
  v9[2] = *(v0 + 3);
  v9[3] = v5;
  sub_1A440594C(v9);
  v6 = OBJC_IVAR____TtC12PhotosUICore23LemonadeiCloudLinkModel___observationRegistrar;
  v7 = sub_1A5241614();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return swift_deallocClassInstance();
}

void (*sub_1A4801A40(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A3D3D728;
}

uint64_t sub_1A4801B7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeiCloudLinkModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4801BC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4801C18(uint64_t a1)
{
  result = sub_1A5241614();
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

void sub_1A4801CCC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

double sub_1A4801CE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = sub_1A524BC74();
  v9 = v8;
  sub_1A48028C4(0, &qword_1EB142D00, sub_1A4801E90, &type metadata for PXAvailableSizeReadingModifier, MEMORY[0x1E697FDE8]);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_1A4802210(0);
  v12 = (a2 + *(v11 + 36));
  *v12 = sub_1A4801CC8;
  v12[1] = 0;
  v12[2] = v7;
  v12[3] = v9;
  v18 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v5;
  *(v13 + 32) = *(v2 + 1);
  *(v13 + 48) = *(v2 + 32);
  sub_1A4802568(0);
  v15 = (a2 + *(v14 + 36));
  *v15 = sub_1A4802564;
  v15[1] = v13;
  sub_1A3DB8180(&v18, &v17);

  return result;
}

uint64_t sub_1A4801E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 16);
  v9 = v5 & 1;
  return MEMORY[0x1A5906490](v7, a2, a4, a3);
}

unint64_t sub_1A4801E90()
{
  result = qword_1EB1D51A0[0];
  if (!qword_1EB1D51A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D51A0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx12PhotosUICore30PXAvailableSizeReadingModifier33_3D7EADE60CC0AB39AFB17DCCF43BFE61LLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1A5248804();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1A4801F54()
{
  result = qword_1EB179038[0];
  if (!qword_1EB179038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179038);
  }

  return result;
}

void sub_1A4801FEC(uint64_t a2@<X8>)
{
  v3 = sub_1A524B414();
  sub_1A52482B4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
}

void *sub_1A4802030(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  if (*(result + 16) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 16) = v4;
  return result;
}

double sub_1A4802090@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = sub_1A524A064();
  v9 = sub_1A524BC74();
  v11 = v10;
  sub_1A48028C4(0, &qword_1EB127BF8, sub_1A4801F54, &type metadata for PXAvailableSizeReadingModifierInfoHack, MEMORY[0x1E697FDE8]);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  sub_1A4802658(0);
  v14 = a2 + *(v13 + 36);
  *v14 = sub_1A480329C;
  *(v14 + 8) = 0;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v11;
  v20 = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v6;
  *(v15 + 32) = *(v3 + 1);
  *(v15 + 48) = *(v3 + 32);
  sub_1A4802CEC(0);
  v17 = (a2 + *(v16 + 36));
  *v17 = sub_1A48032A0;
  v17[1] = v15;
  sub_1A3DB8180(&v20, &v19);

  return result;
}

void sub_1A4802210(uint64_t a1)
{
  if (!qword_1EB142D08)
  {
    sub_1A48028C4(255, &qword_1EB142D00, sub_1A4801E90, &type metadata for PXAvailableSizeReadingModifier, MEMORY[0x1E697FDE8]);
    sub_1A48022B0(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142D08);
    }
  }
}

void sub_1A48022B0(uint64_t a1)
{
  if (!qword_1EB142D10)
  {
    sub_1A4802344(255);
    sub_1A4802FB8(&qword_1EB142D40, sub_1A4802344, MEMORY[0x1E697E378]);
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142D10);
    }
  }
}

void sub_1A4802344(uint64_t a1)
{
  if (!qword_1EB142D18)
  {
    sub_1A480284C(255, &qword_1EB142D20, &qword_1EB142D28, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey);
    sub_1A4802428();
    v1 = sub_1A5248414();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142D18);
    }
  }
}

unint64_t sub_1A48023D4()
{
  result = qword_1EB1D5230[0];
  if (!qword_1EB1D5230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D5230);
  }

  return result;
}

unint64_t sub_1A4802428()
{
  result = qword_1EB142D30;
  if (!qword_1EB142D30)
  {
    sub_1A480284C(255, &qword_1EB142D20, &qword_1EB142D28, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey);
    sub_1A48024D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D30);
  }

  return result;
}

unint64_t sub_1A48024D4()
{
  result = qword_1EB142D38;
  if (!qword_1EB142D38)
  {
    sub_1A48028C4(255, &qword_1EB142D28, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D38);
  }

  return result;
}

void sub_1A4802568(uint64_t a1)
{
  if (!qword_1EB142D48)
  {
    sub_1A4802210(255);
    sub_1A4802D78(255, &qword_1EB142D50, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142D48);
    }
  }
}

void sub_1A48025F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4802658(uint64_t a1)
{
  if (!qword_1EB1287C0)
  {
    sub_1A48028C4(255, &qword_1EB127BF8, sub_1A4801F54, &type metadata for PXAvailableSizeReadingModifierInfoHack, MEMORY[0x1E697FDE8]);
    sub_1A48026F8(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1287C0);
    }
  }
}

void sub_1A48026F8(uint64_t a1)
{
  if (!qword_1EB127FD0)
  {
    sub_1A480275C(255);
    sub_1A4802ABC();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127FD0);
    }
  }
}

void sub_1A480275C(uint64_t a1)
{
  if (!qword_1EB128748)
  {
    sub_1A48027BC(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128748);
    }
  }
}

void sub_1A48027BC(uint64_t a1)
{
  if (!qword_1EB1288F8)
  {
    sub_1A480284C(255, &qword_1EB1285F8, &qword_1EB127A58, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey);
    sub_1A4802980();
    v1 = sub_1A5248414();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1288F8);
    }
  }
}

void sub_1A480284C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A48028C4(255, a3, a4, a5, MEMORY[0x1E6980750]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A48028C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A480292C()
{
  result = qword_1EB1790C8[0];
  if (!qword_1EB1790C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1790C8);
  }

  return result;
}

unint64_t sub_1A4802980()
{
  result = qword_1EB128600;
  if (!qword_1EB128600)
  {
    sub_1A480284C(255, &qword_1EB1285F8, &qword_1EB127A58, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey);
    sub_1A4802A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128600);
  }

  return result;
}

unint64_t sub_1A4802A2C()
{
  result = qword_1EB127A60;
  if (!qword_1EB127A60)
  {
    sub_1A48028C4(255, &qword_1EB127A58, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127A60);
  }

  return result;
}

unint64_t sub_1A4802ABC()
{
  result = qword_1EB128750;
  if (!qword_1EB128750)
  {
    sub_1A480275C(255);
    sub_1A4802FB8(&qword_1EB128900, sub_1A48027BC, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128750);
  }

  return result;
}

uint64_t objectdestroyTm_79()
{

  return swift_deallocObject();
}

double sub_1A4802BAC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  v17 = v6;
  v11 = v6;
  v12 = v5;
  v13 = *(v1 + 32);
  v14 = *(v1 + 48);

  sub_1A3DB8180(&v17, &v8);
  sub_1A48025F4(0, &qword_1EB127318, sub_1A3E316EC, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v8);
  if (v10)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v4 & 1) != 0 || v8 != v2 || v9 != v3)
  {
LABEL_5:
    v11 = v6;
    v12 = v5;
    v13 = v15;
    v14 = v16;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    sub_1A524B904();
  }

LABEL_6:
  sub_1A3DB81DC(&v17);

  return result;
}

void sub_1A4802CEC(uint64_t a1)
{
  if (!qword_1EB128448)
  {
    sub_1A4802658(255);
    sub_1A4802D78(255, &qword_1EB127A90, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128448);
    }
  }
}

void sub_1A4802D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    sub_1A3EBA740();
    v5 = sub_1A5249D24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4802E04()
{
  result = qword_1EB142D58;
  if (!qword_1EB142D58)
  {
    sub_1A4802568(255);
    sub_1A4803140(&qword_1EB142D60, sub_1A4802210, sub_1A4802EF4, sub_1A4802F84);
    sub_1A4803000(&qword_1EB142D78, &qword_1EB142D50, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D58);
  }

  return result;
}

unint64_t sub_1A4802EF4()
{
  result = qword_1EB142D68;
  if (!qword_1EB142D68)
  {
    sub_1A48028C4(255, &qword_1EB142D00, sub_1A4801E90, &type metadata for PXAvailableSizeReadingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D68);
  }

  return result;
}

uint64_t sub_1A4802FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4803000(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4802D78(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4803050()
{
  result = qword_1EB128450;
  if (!qword_1EB128450)
  {
    sub_1A4802CEC(255);
    sub_1A4803140(&qword_1EB1287C8, sub_1A4802658, sub_1A48031CC, sub_1A480325C);
    sub_1A4803000(&qword_1EB127A98, &qword_1EB127A90, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128450);
  }

  return result;
}

uint64_t sub_1A4803140(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A48031CC()
{
  result = qword_1EB127C00;
  if (!qword_1EB127C00)
  {
    sub_1A48028C4(255, &qword_1EB127BF8, sub_1A4801F54, &type metadata for PXAvailableSizeReadingModifierInfoHack, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127C00);
  }

  return result;
}

id StoryDefaultAutoCurationProducer.init(curationContext:)(uint64_t a1)
{
  v2 = v1;
  sub_1A3EBECA4(a1, &v22);
  if (!v23)
  {
    sub_1A3C35B00(a1);
    sub_1A3C35B00(&v22);
    goto LABEL_15;
  }

  sub_1A3C57128(&v22, v20);
  sub_1A3C2F0BC(v20, &v22);
  sub_1A4803628();
  if (!swift_dynamicCast())
  {
    if (qword_1EB1D52C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A5246F24();
    __swift_project_value_buffer(v8, qword_1EB1D52C8);
    sub_1A3C2F0BC(v20, &v22);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315138;
      sub_1A3C2F0BC(&v22, v21);
      v12 = sub_1A524C714();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(&v22);
      sub_1A3C2EF94(v12, v14, &v19);
    }

    sub_1A3C35B00(a1);
    __swift_destroy_boxed_opaque_existential_0(&v22);
    __swift_destroy_boxed_opaque_existential_0(v20);
    goto LABEL_15;
  }

  v17 = v21[0];
  v4 = *&v21[0];
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5 || !v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    goto LABEL_13;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v21, ObjectType, v6);
  sub_1A3C57128(v21, &v22);
  sub_1A3C2F0BC(&v22, v21);
  LOBYTE(v6) = sub_1A480531C(v21);
  sub_1A3C35B00(v21);
  __swift_destroy_boxed_opaque_existential_0(&v22);
  __swift_destroy_boxed_opaque_existential_0(v20);
  if ((v6 & 1) == 0)
  {
LABEL_13:
    *&v2[OBJC_IVAR___PXStoryDefaultAutoCurationProducer_curationContext] = v17;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for StoryDefaultAutoCurationProducer();
    v15 = objc_msgSendSuper2(&v18, sel_init);
    sub_1A3C35B00(a1);
    return v15;
  }

  sub_1A3C35B00(a1);
  swift_unknownObjectRelease();
LABEL_15:
  type metadata accessor for StoryDefaultAutoCurationProducer();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1A4803628()
{
  result = qword_1EB12A0D8;
  if (!qword_1EB12A0D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12A0D8);
  }

  return result;
}

uint64_t sub_1A48036F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A480372C, 0, 0);
}

uint64_t sub_1A480372C()
{
  v35 = v0;
  if ([*(v0 + 64) isCancelled])
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (qword_1EB1D52C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5246F24();
  *(v0 + 120) = __swift_project_value_buffer(v3, qword_1EB1D52C8);
  swift_unknownObjectRetain();
  v4 = sub_1A5246F04();
  v5 = sub_1A524D234();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = [v7 count];
    swift_unknownObjectRelease();
    *(v8 + 12) = 2080;
    *(v0 + 56) = v7;
    sub_1A40091D8();
    swift_unknownObjectRetain();
    v9 = sub_1A524C714();
    sub_1A3C2EF94(v9, v10, &v34);
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  v11 = sub_1A5246F04();
  v12 = sub_1A524D234();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 80);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 134218242;
    *(v15 + 4) = [v14 count];
    swift_unknownObjectRelease();
    *(v15 + 12) = 2080;
    *(v0 + 48) = v14;
    sub_1A40091D8();
    swift_unknownObjectRetain();
    v16 = sub_1A524C714();
    sub_1A3C2EF94(v16, v17, &v34);
  }

  swift_unknownObjectRelease();

  v18 = *(v0 + 88);
  swift_getObjectType();
  v19 = swift_conformsToProtocol2();
  *(v0 + 128) = v19;
  if (v19 && v18)
  {
    v20 = v19;
    *(v0 + 136) = swift_getObjectType();
    *(v0 + 194) = 5;
    *(v0 + 144) = *(v20 + 32);
    *(v0 + 152) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x3F65000000000000;
    swift_unknownObjectRetain();
    v22 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A4803D24, v22, v21);
  }

  else
  {
    swift_unknownObjectRetain();
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v32 = *(v0 + 88);
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136315138;
      *(v0 + 32) = v32;
      sub_1A4803628();
      swift_unknownObjectRetain();
      v26 = sub_1A524C714();
      sub_1A3C2EF94(v26, v27, &v34);
    }

    if ([*(v0 + 64) isCancelled])
    {
      goto LABEL_2;
    }

    v33 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 160) = ObjectType;
    v31 = (*(v33 + 16) + **(v33 + 16));
    v29 = swift_task_alloc();
    *(v0 + 168) = v29;
    *v29 = v0;
    v29[1] = sub_1A4803F54;
    v30 = *(v0 + 96);

    return v31(v0 + 192, ObjectType, v30);
  }
}

uint64_t sub_1A4803D24()
{
  v7 = v0;
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[10];
  v1(v0[9], v0 + 194, v2, v3);
  v6 = 6;
  v1(v4, &v6, v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A4803DD8, 0, 0);
}

uint64_t sub_1A4803DD8()
{
  swift_unknownObjectRelease();
  if ([*(v0 + 64) isCancelled])
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v7 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 160) = ObjectType;
    v6 = (*(v7 + 16) + **(v7 + 16));
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_1A4803F54;
    v5 = *(v0 + 96);

    return v6(v0 + 192, ObjectType, v5);
  }
}

uint64_t sub_1A4803F54()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4804050, 0, 0);
}

uint64_t sub_1A4804050()
{
  v18 = v0;
  v1 = *(v0 + 192);
  *(v0 + 195) = v1;
  swift_unknownObjectRetain();
  v2 = sub_1A5246F04();
  v3 = sub_1A524D234();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v4 = 136315394;
    *(v0 + 193) = v1;
    sub_1A4805A94();
    v5 = sub_1A524EA44();
    sub_1A3C2EF94(v5, v6, &v17);
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  v16 = v1;
  sub_1A3C374C0(0, &qword_1EB138880, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52F8E10;
  *(v9 + 32) = v1;
  sub_1A4804520(&v16, v9, v7, 0.5);

  if ([v8 isCancelled])
  {
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v15 = (*(*(v0 + 96) + 24) + **(*(v0 + 96) + 24));
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_1A48043A0;
    v13 = *(v0 + 160);
    v14 = *(v0 + 96);

    return v15(v13, v14);
  }
}

uint64_t sub_1A48043A0(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A48044A0, 0, 0);
}

uint64_t sub_1A48044A0()
{
  v6 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v5 = *(v0 + 195);
  sub_1A4804520(&v5, v1, v2, 1.0);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1A4804520(char *a1, uint64_t a2, void (*a3)(void), float a4)
{
  v25 = *a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    sub_1A3F5F320();
    do
    {
      v11 = *v6++;
      v10 = v11;
      if ((sub_1A524C594() & 1) == 0)
      {
        *&v28 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A4805490(0, *(v7 + 16) + 1, 1);
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1A4805490((v8 > 1), v9 + 1, 1);
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + v9 + 32) = v10;
      }

      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v12 = Array<A>.memoryCurationLengths.getter(v7);
  v14 = v13;

  if (v14)
  {
    sub_1A4805970();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = v28;
    *(v15 + 72) = *&v31[16];
    *(v15 + 56) = *v31;
    *(v15 + 40) = v30;
    *(v15 + 24) = v29;
    *(v15 + 80) = 1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v16 = LemonadeCurationKind.memoryCurationLength.getter();
  if (v17)
  {
    sub_1A4805970();
    v18 = swift_allocError();
    *v19 = v25;
    *(v19 + 1) = v28;
    *(v19 + 17) = v29;
    *(v19 + 64) = *&v31[15];
    *(v19 + 49) = *v31;
    *(v19 + 33) = v30;
    *(v19 + 80) = 2;
    swift_willThrow();
    v20 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
    v21 = sub_1A5240B74();
    v22 = [v20 error_];
  }

  else
  {
    v21 = [objc_allocWithZone(PXStoryCurationLengthInfo) initWithAvailableLengths:v12 defaultLength:v16];
    v22 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
  }

  *&v23 = a4;
  v24 = [v22 fractionCompleted_];
  a3();
}

id sub_1A48048E4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v14 = *a2;
  *(v13 + 56) = a2[1];
  v15 = a2[3];
  *(v13 + 72) = a2[2];
  *(v13 + 88) = v15;
  *(v13 + 104) = a2[4];
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v4;
  *(v13 + 40) = v14;
  *(v13 + 120) = v11;
  *(v13 + 128) = a3;
  *(v13 + 136) = a4;
  v16 = v4;
  v17 = v11;

  sub_1A3D4D930(0, 0, v10, &unk_1A5364720, v13);

  return v17;
}

uint64_t sub_1A4804A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A4804A88, 0, 0);
}

uint64_t sub_1A4804A88()
{
  v22 = v0;
  v1 = *(*(v0 + 16) + OBJC_IVAR___PXStoryDefaultAutoCurationProducer_curationContext);
  *(v0 + 56) = v1;
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_1A4805970();
    v4 = swift_allocError();
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 3;
    swift_willThrow();
LABEL_9:
    v12 = *(v0 + 40);
    v13 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
    v14 = sub_1A5240B74();
    v15 = [v13 error_];

    v12(v15);
LABEL_10:
    v16 = *(v0 + 8);

    return v16();
  }

  v6 = v2;
  v7 = **(v0 + 24);
  swift_unknownObjectRetain();
  PFStoryOverallDurationKind.lemonadeCurationKind.getter(v7, v21);
  v8 = v21[0];
  if (v21[0] == 6)
  {
    v9 = *(v0 + 24);
    sub_1A4805970();
    v4 = swift_allocError();
    v11 = v10;
    memmove(v10, v9, 0x50uLL);
    v11[80] = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if ([*(v0 + 32) isCancelled])
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  *(v0 + 88) = v8;
  v20 = (*(v6 + 24) + **(v6 + 24));
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  *v19 = v0;
  v19[1] = sub_1A4804D88;

  return v20(v0 + 88, ObjectType, v6);
}

uint64_t sub_1A4804D88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1A4804F60;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1A4804EB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4804EB0()
{
  v1 = v0[5];
  v2 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
  v1();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4804F60()
{
  swift_unknownObjectRelease();
  v1 = v0[9];
  v2 = v0[5];
  v3 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
  v4 = sub_1A5240B74();
  v5 = [v3 error_];

  v2(v5);
  v6 = v0[1];

  return v6();
}

id StoryDefaultAutoCurationProducer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoryDefaultAutoCurationProducer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryDefaultAutoCurationProducer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A480531C(uint64_t a1)
{
  sub_1A3EBECA4(a1, v6);
  if (!v7)
  {
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  sub_1A3EBECA4(v6, v5);
  sub_1A4805AE8();
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (!v4)
      {
        v3[3] = swift_getObjectType();
        v3[0] = v3[4];
        v1 = sub_1A480531C(v3);
        sub_1A3C35B00(v3);
        __swift_destroy_boxed_opaque_existential_0(v5);
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v5);
    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_0(v5);
  v1 = 1;
LABEL_9:
  sub_1A3C35B00(v6);
  return v1 & 1;
}

uint64_t sub_1A4805418()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1D52C8);
  __swift_project_value_buffer(v0, qword_1EB1D52C8);
  sub_1A524C814();
  return sub_1A5246F14();
}

char *sub_1A4805490(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A48054B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A48054B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C374C0(0, &qword_1EB138880, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

id sub_1A48055BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v13 = OBJC_IVAR___PXStoryDefaultAutoCurationProducer_curationContext;
  v14 = sub_1A524CCB4();
  v15 = *(*(v14 - 8) + 56);
  v19 = *(v4 + v13);
  v15(v11, 1, 1, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v12;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 56) = v19;
  *(v16 + 72) = a3;
  *(v16 + 80) = a4;
  v17 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1A3D4D930(0, 0, v11, &unk_1A53647B8, v16);

  return v17;
}

uint64_t sub_1A4805750()
{
  v2 = v0[4];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4804A60(v6, v7, v8, v2, (v0 + 5), v3, v4, v5);
}

uint64_t dispatch thunk of StoryDefaultAutoCurationProducer.requestCuratedAssets(options:targetOverallDurationInfo:resultHandler:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 9);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  v9 = *(a2 + 5);
  v10 = a2[3];
  v11 = *(a2 + 8);
  v12 = v3;
  return v4(a1, &v6);
}

uint64_t objectdestroyTm_80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1A4805970()
{
  result = qword_1EB1D52E0[0];
  if (!qword_1EB1D52E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D52E0);
  }

  return result;
}

uint64_t sub_1A48059C4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A48036F8(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_1A4805A94()
{
  result = qword_1EB142DF8;
  if (!qword_1EB142DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142DF8);
  }

  return result;
}

unint64_t sub_1A4805AE8()
{
  result = qword_1EB1265E0;
  if (!qword_1EB1265E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1265E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore32StoryDefaultAutoCurationProducerC5Error33_E31FC85312AFA8AE77F8543AB71C7967LLO(uint64_t a1)
{
  if ((*(a1 + 80) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

uint64_t sub_1A4805B50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A4805B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A4805BF4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

__n128 __swift_memcpy72_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4805C58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4805C78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t PhotosItemListSelectionChangeDetails.changedIndexes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotosItemListSelectionChangeDetails(0) + 24);
  v4 = sub_1A52414C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PhotosItemListSelectionChangeDetails(uint64_t a1)
{
  result = qword_1EB1D5370;
  if (!qword_1EB1D5370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4805DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PhotosItemListSelectionChangeDetails(0) + 24);
  v7 = sub_1A52414C4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1A4805E60(uint64_t a1)
{
  result = type metadata accessor for PhotosItemListSelectionSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A52414C4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PhotoStyleViewMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void sub_1A4805FFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245724();
}

void sub_1A48060B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245714();
}

void PhotoStyleViewModel.viewMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A48062C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A48063A0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245724();
}

void sub_1A4806468(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A4806538()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A4806620(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245724();
}

unint64_t sub_1A48066CC()
{
  result = qword_1EB142E10;
  if (!qword_1EB142E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E10);
  }

  return result;
}

void PhotoStyleViewModel.selectedCollection.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245714();
}

void PhotoStyleViewModel.selectedCollection.setter(void *a1)
{
  swift_beginAccess();
  v2 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48069A4(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245724();
}

void PhotoStyleViewModel.selectedCollection.modify(unint64_t **a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[5] = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5[4] = v2;
  v5[6] = sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245714();
}

void PhotoStyleViewModel.init(selectedCollectionIndex:styleCollections:)(uint64_t a1, uint64_t a2)
{
  v5[4] = a2;
  v5[5] = a1;
  sub_1A480927C(0, &qword_1EB142E18, &type metadata for PhotoStyleViewMode);
  v5[2] = *(v2 - 8);
  v5[3] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5[1] = v5 - v3;
  sub_1A480927C(0, &qword_1EB142E20, MEMORY[0x1E69E6530]);
  MEMORY[0x1EEE9AC00](v4);
  v5[6] = 1;
  v5[7] = 0;
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);
  sub_1A5245754();
}

uint64_t sub_1A4807284(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    goto LABEL_9;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(a1 + 32);
        goto LABEL_6;
      }

      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_9:
      if (!sub_1A524E2B4())
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    MEMORY[0x1A59097F0](0, a1, a2);
LABEL_6:
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

void PhotoStyleViewModel.createMutator()()
{
  type metadata accessor for PhotoStyleViewModel.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator, &protocol conformance descriptor for PhotoStyleViewModel.Mutator);
  sub_1A52456D4();
}

void sub_1A4807720(uint64_t a1)
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator, &protocol conformance descriptor for PhotoStyleViewModel.Mutator);
  sub_1A52456D4();
}

void PhotoStyleViewModel.Mutator.mostFocusedPageIndex.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.mostFocusedPageIndex.modify(void *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void PhotoStyleViewModel.Mutator.targetFocusedPageIndex.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void PhotoStyleViewModel.Mutator.viewMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4807BBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4807C3C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.viewMode.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.viewMode.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4807E00(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4807E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.selectedCollectionIndex.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t PhotoStyleViewModel.Mutator.deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__mostFocusedPageIndex;
  sub_1A4809380(0, &qword_1EB142E30, MEMORY[0x1E69E6530]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__targetFocusedPageIndex, v3);
  v5 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__viewMode;
  sub_1A4809380(0, &qword_1EB142E38, &type metadata for PhotoStyleViewMode);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v4(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__selectedCollectionIndex, v3);
  return v0;
}

uint64_t PhotoStyleViewModel.Mutator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__mostFocusedPageIndex;
  sub_1A4809380(0, &qword_1EB142E30, MEMORY[0x1E69E6530]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__targetFocusedPageIndex, v3);
  v5 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__viewMode;
  sub_1A4809380(0, &qword_1EB142E38, &type metadata for PhotoStyleViewMode);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v4(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__selectedCollectionIndex, v3);

  return swift_deallocClassInstance();
}

void sub_1A4808210(void *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A48082CC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4808370()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A48083E8(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4808458(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4808510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4808594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4808600(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t PhotoStyleViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__mostFocusedPageIndex;
  sub_1A480927C(0, &qword_1EB142E20, MEMORY[0x1E69E6530]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__targetFocusedPageIndex, v3);
  v5 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__viewMode;
  sub_1A480927C(0, &qword_1EB142E18, &type metadata for PhotoStyleViewMode);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__selectedCollectionIndex, v3);

  return v0;
}

uint64_t PhotoStyleViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__mostFocusedPageIndex;
  sub_1A480927C(0, &qword_1EB142E20, MEMORY[0x1E69E6530]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__targetFocusedPageIndex, v3);
  v5 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__viewMode;
  sub_1A480927C(0, &qword_1EB142E18, &type metadata for PhotoStyleViewMode);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__selectedCollectionIndex, v3);

  return swift_deallocClassInstance();
}

void sub_1A4808938()
{
  type metadata accessor for PhotoStyleViewModel.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator, &protocol conformance descriptor for PhotoStyleViewModel.Mutator);
  sub_1A52456D4();
}

void sub_1A4808A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4809338(&qword_1EB142E88, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245F44();
}

id sub_1A4808B08@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4808B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);

  sub_1A5245C54();
}

uint64_t PhotoStyleViewModel.pagesInfo(in:)(uint64_t a1, uint64_t a2)
{
  v8 = (a1 + a2);
  if (__OFADD__(a1, a2))
  {
    goto LABEL_38;
  }

  v4 = a1;
  if (v8 < a1)
  {
    goto LABEL_39;
  }

  v6 = a2;
  swift_beginAccess();
  i = v5[2];
  v5 = (i >> 62);
  if (i >> 62)
  {
    goto LABEL_40;
  }

  if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10) < v4)
  {
    goto LABEL_41;
  }

LABEL_5:
  if (v4 < 0)
  {
    while (1)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v6 = sub_1A524E2B4();
      if (!v6)
      {
        break;
      }

LABEL_18:
      v16 = MEMORY[0x1E69E7CC0];
      v5 = &v16;
      sub_1A524E554();
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      for (i = 0; ; ++i)
      {
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1A59097F0](i, v4);
        }

        else
        {
          if (i >= *(v4 + 16))
          {
            goto LABEL_37;
          }

          v12 = *(v4 + 8 * i + 32);
        }

        v5 = v12;
        v13 = OBJC_IVAR___PXPhotoStyleCollection_elements;
        swift_beginAccess();
        v14 = *(v5 + v13);
        if (v14 >> 62)
        {
          if (!sub_1A524E2B4())
          {
            goto LABEL_35;
          }
        }

        else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v8 = *(v14 + 32);

        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        v5 = &v16;
        sub_1A524E524();
        if (v11 == v6)
        {

          return v16;
        }
      }

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
      if (sub_1A524E2B4() >= v4)
      {
        goto LABEL_5;
      }

LABEL_41:
      __break(1u);
    }
  }

  else
  {
    if (v5)
    {
      v9 = sub_1A524E2B4();
    }

    else
    {
      v9 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 < v8)
    {
      goto LABEL_43;
    }

    if ((i & 0xC000000000000001) == 0 || v8 == v4)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v8 > v4)
    {
      type metadata accessor for PhotoStyleCollection(0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_47:
    __break(1u);
    __break(1u);
    swift_unknownObjectRelease();
    sub_1A48094E0(v6, i, v4, v5);
    v4 = v10;
    swift_unknownObjectRelease();
    if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
    {
      goto LABEL_44;
    }

    v6 = *(v4 + 16);
    if (v6)
    {
      goto LABEL_18;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void PhotoStyleViewModel.collection(for:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

unint64_t sub_1A480918C(uint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v5 = sub_1A524E2B4();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v6, a2, a3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a2 + 8 * v6 + 32);
    }

    v8 = v7;
    type metadata accessor for PhotoStyleCollection(0);
    v9 = sub_1A524DBF4();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1A480927C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for PhotoStyleViewModel(255);
    sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel, &protocol conformance descriptor for PhotoStyleViewModel);
    sub_1A5245764();
  }
}

uint64_t sub_1A4809338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4809380(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for PhotoStyleViewModel.Mutator(255);
    sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator, &protocol conformance descriptor for PhotoStyleViewModel.Mutator);
    sub_1A52456C4();
  }
}

uint64_t PhotoStyleViewModel.numberOfPages.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    return sub_1A524E2B4();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1A480947C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    return sub_1A524E2B4();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1A48094E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for PhotoStyleCollection(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3CB8F68();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1A48095BC()
{
  result = qword_1EB142E40;
  if (!qword_1EB142E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E40);
  }

  return result;
}

unint64_t sub_1A4809614()
{
  result = qword_1EB142E48;
  if (!qword_1EB142E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E48);
  }

  return result;
}

unint64_t sub_1A480966C()
{
  result = qword_1EB142E50;
  if (!qword_1EB142E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E50);
  }

  return result;
}

unint64_t sub_1A48096C4()
{
  result = qword_1EB142E58;
  if (!qword_1EB142E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E58);
  }

  return result;
}

unint64_t sub_1A480971C()
{
  result = qword_1EB142E60;
  if (!qword_1EB142E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E60);
  }

  return result;
}

unint64_t sub_1A4809850()
{
  result = qword_1EB142E78;
  if (!qword_1EB142E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E78);
  }

  return result;
}

void sub_1A4809914(uint64_t a1)
{
  sub_1A480927C(319, &qword_1EB142E20, MEMORY[0x1E69E6530]);
  if (v1 <= 0x3F)
  {
    sub_1A480927C(319, &qword_1EB142E18, &type metadata for PhotoStyleViewMode);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4809A50(uint64_t a1)
{
  sub_1A4809380(319, &qword_1EB142E30, MEMORY[0x1E69E6530]);
  if (v1 <= 0x3F)
  {
    sub_1A4809380(319, &qword_1EB142E38, &type metadata for PhotoStyleViewMode);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4809C50(uint64_t a1)
{
  if (!qword_1EB1400D8)
  {
    type metadata accessor for PhotoStyleElement(255);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1400D8);
    }
  }
}

id sub_1A4809CAC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager] = 0;
  v4 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_logger;
  v5 = sub_1A3C4A780();
  v6 = sub_1A5246F24();
  (*(*(v6 - 8) + 16))(&v3[v4], v5, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
  *&v3[v7] = sub_1A480CB3C(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_photoLibrary] = a1;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1A4809E50()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager);
  }

  else
  {
    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager(0);
    v2 = sub_1A3C3A660(*(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_photoLibrary));
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1A4809ED0()
{
  v1 = v0;
  oslog = sub_1A5246F04();
  v2 = sub_1A524D264();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    swift_slowAlloc();
    *v3 = 136315138;
    swift_beginAccess();
    sub_1A52411C4();
    sub_1A480D0C0();
    sub_1A480D1B4(&unk_1EB12AFC0, MEMORY[0x1E69695B8]);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A480A09C()
{
  v1[2] = v0;
  v2 = sub_1A52453A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A480A15C, 0, 0);
}

uint64_t sub_1A480A15C()
{
  v2 = [objc_opt_self() isMemoryCreationEnabled];
  if (v2 && (sub_1A3C56110(0, v1), v3 = [swift_getObjCClassFromMetadata() sharedInstance], v4 = objc_msgSend(v3, sel_shouldUseAvailabilityMonitor), v3, v4))
  {
    v5 = *(v0[2] + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_photoLibrary);
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1A480A2AC;
    v7 = v0[5];

    return static LemonadeMemoriesCreationAvailabilityUtils.requestMemoryCreationAvailability(photoLibrary:)(v7, v5);
  }

  else
  {

    v9 = v0[1];

    return v9(v2);
  }
}

uint64_t sub_1A480A2AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A480A3A8, 0, 0);
}

uint64_t sub_1A480A3A8()
{
  v1 = static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)(v0[5]);
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1 & 1;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "fetchMemoryCreationButtonAvailability -> %{BOOL}d", v4, 8u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(v1 & 1);
}

uint64_t sub_1A480A640(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A480A6E8;

  return sub_1A480A09C();
}

uint64_t sub_1A480A6E8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

void sub_1A480A830(uint64_t a1@<X0>, void (**a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52411C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  _Block_copy(a2);
  sub_1A52411B4();
  v15 = [objc_opt_self() isMemoryCreationEnabled];
  if (v15 && (sub_1A3C56110(0, v14), v16 = [swift_getObjCClassFromMetadata() sharedInstance], v28 = a3, v17 = v16, v18 = objc_msgSend(v16, sel_shouldUseAvailabilityMonitor), v17, a3 = v28, v18))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1A3DB5554;
    *(v19 + 24) = v13;
    v20 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a1 + v20);
    *(a1 + v20) = 0x8000000000000000;
    sub_1A480C62C(sub_1A480D2D8, v19, v12, isUniquelyReferenced_nonNull_native);
    *(a1 + v20) = v29;
    swift_endAccess();
    sub_1A4809ED0();
    v22 = sub_1A524CCB4();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A524CC54();

    v24 = sub_1A524CC44();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;
    a3 = v28;

    sub_1A3D4D930(0, 0, v8, &unk_1A5365068, v25);
  }

  else
  {
    (a2)[2](a2, v15);
  }

  (*(v10 + 32))(a3, v12, v9);

  _Block_release(a2);
}

uint64_t sub_1A480AB98@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52411C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v13 = [objc_opt_self() isMemoryCreationEnabled];
  if (v13 && (v15 = a3, v16 = v13, sub_1A3C56110(0, v14), v17 = [swift_getObjCClassFromMetadata() sharedInstance], v18 = objc_msgSend(v17, sel_shouldUseAvailabilityMonitor), v17, v13 = v16, a3 = v15, (v18 & 1) != 0))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    v20 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v3 + v20);
    *(v3 + v20) = 0x8000000000000000;
    sub_1A480C62C(sub_1A3EE12E0, v19, v12, isUniquelyReferenced_nonNull_native);
    *(v3 + v20) = v31;
    a3 = v15;
    swift_endAccess();
    sub_1A4809ED0();
    v22 = sub_1A524CCB4();
    v23 = v30;
    (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A524CC54();

    v25 = sub_1A524CC44();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v24;

    sub_1A3D4D930(0, 0, v23, &unk_1A5365010, v26);
  }

  else
  {
    a1(v13);
  }

  return (*(v10 + 32))(a3, v12, v9);
}

uint64_t sub_1A480AEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1A480C62C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_1A52411C4();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_1A480BD3C(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_1A480C8C8();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_1A52411C4();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_1A480C324(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_1A52411C4();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_1A480B090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A52453A4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A480B184, v7, v6);
}

uint64_t sub_1A480B184()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = *sub_1A4809E50();
    (*(v6 + 632))();

    sub_1A480BA2C();
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    sub_1A52415B4();

    (*(v4 + 8))(v3, v5);
  }

  v7 = v0[1];

  return v7();
}

void sub_1A480B420(uint64_t a1)
{
  v2 = sub_1A52411C4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  swift_beginAccess();
  sub_1A480AEC4(0, 0, v5);
  swift_endAccess();
  sub_1A4809ED0();
}

double sub_1A480B690(uint64_t a1)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;

  sub_1A3D4D930(0, 0, v3, &unk_1A53650A8, v8);

  return result;
}

uint64_t sub_1A480B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A52453A4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A480B8F8, v7, v6);
}

uint64_t sub_1A480B8F8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    sub_1A480BA2C();
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    sub_1A52415B4();

    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[1];

  return v6();
}

void sub_1A480BA2C()
{
  v1 = v0;
  v18 = sub_1A52453A4();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A4809E50();
  (*(*v5 + 192))(v5);

  v6 = static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)(v4);
  v7 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 56) + ((v14 << 10) | (16 * v15)));
    v19 = v6 & 1;

    v16(&v19);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      (*(v2 + 8))(v4, v18);

      return;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_1A480BC68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeMemoriesCreationButtonValidation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A480BD3C(uint64_t a1)
{
  sub_1A52411C4();
  sub_1A480D1B4(&unk_1EB12AFC0, MEMORY[0x1E69695B8]);
  v2 = sub_1A524C4A4();

  return sub_1A480BDC0(a1, v2);
}

unint64_t sub_1A480BDC0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A480D1B4(&unk_1EB12AFB0, MEMORY[0x1E69695C8]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1A480BF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A52411C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A480D11C(0);
  v39 = v4;
  v10 = sub_1A524E774();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
      }

      sub_1A480D1B4(&unk_1EB12AFC0, MEMORY[0x1E69695B8]);
      v26 = sub_1A524C4A4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
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
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v42 * v19), v43, v44);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
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

void sub_1A480C324(int64_t a1, uint64_t a2)
{
  v38 = sub_1A52411C4();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1A524E244();
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
      sub_1A480D1B4(&unk_1EB12AFC0, MEMORY[0x1E69695B8]);
      v22 = sub_1A524C4A4();
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
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
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

void sub_1A480C62C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v27 = a1;
  v9 = sub_1A52411C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1A480BD3C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1A480C8C8();
      goto LABEL_9;
    }

    sub_1A480BF6C(v18, a4 & 1);
    v21 = sub_1A480BD3C(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v27;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v27;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_1A480C808(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1A480C808(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1A52411C4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void sub_1A480C8C8()
{
  v1 = v0;
  v31 = sub_1A52411C4();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A480D11C(0);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v21 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v18 *= 16;
        v23 = v32;
        v24 = *(v32 + 48);
        v25 = *(v19 + 32);
        v34 = *(*(v3 + 56) + v18);
        v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v34;

        v13 = v35;
      }

      while (v35);
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
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }
}

unint64_t sub_1A480CB3C(uint64_t a1)
{
  sub_1A480D1F8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A480D11C(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A480D268(v10, v6, sub_1A480D1F8);
      result = sub_1A480BD3C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A52411C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for LemonadeMemoriesCreationButtonValidation(uint64_t a1)
{
  result = qword_1EB15DD60;
  if (!qword_1EB15DD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A480CD5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A480B090(v3, v4, v5, v2);
}

uint64_t sub_1A480CDF8(uint64_t a1)
{
  result = sub_1A5246F24();
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

uint64_t sub_1A480CEAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A480A640(v2, v3);
}

uint64_t sub_1A480CF68()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A480B804(v3, v4, v5, v2);
}

double sub_1A480CFFC()
{
  v0 = sub_1A4809E50();
  (*(*v0 + 192))(v0);

  return result;
}

double (*sub_1A480D064())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A480CF60;
}

unint64_t sub_1A480D0C0()
{
  result = qword_1EB142EA0;
  if (!qword_1EB142EA0)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB142EA0);
  }

  return result;
}

void sub_1A480D11C(uint64_t a1)
{
  if (!qword_1EB142EA8)
  {
    sub_1A52411C4();
    sub_1A480D0C0();
    sub_1A480D1B4(&unk_1EB12AFC0, MEMORY[0x1E69695B8]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142EA8);
    }
  }
}

uint64_t sub_1A480D1B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A52411C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A480D1F8(uint64_t a1)
{
  if (!qword_1EB12AF90)
  {
    sub_1A52411C4();
    sub_1A3C3637C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12AF90);
    }
  }
}

uint64_t sub_1A480D268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void PhotosFullscreenPlaybackOverlayController.init()()
{
  v1 = v0;
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  MEMORY[0x1EEE9AC00](v3);
  swift_unknownObjectWeakInit();
  type metadata accessor for FullscreenPlaybackOverlayModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  sub_1A5241604();
  *(v4 + 24) = 0;
  *(v4 + 26) = 0;
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 8);
  v7 = *(MEMORY[0x1E6960CC0] + 12);
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  *(v4 + 28) = *MEMORY[0x1E6960CC0];
  *(v4 + 36) = v6;
  *(v4 + 40) = v7;
  *(v4 + 44) = v8;
  *(v4 + 52) = v5;
  *(v4 + 60) = v6;
  *(v4 + 64) = v7;
  *(v4 + 68) = v8;
  sub_1A480FE04();
  *(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_model) = v4;
  swift_getKeyPath();
  sub_1A4810398();

  sub_1A52467D4();
}

void sub_1A480D5E4(uint64_t a1)
{
  if (!qword_1EB126B28)
  {
    sub_1A3C52C70(255, &qword_1EB126B30, off_1E77204B0);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126B28);
    }
  }
}

id sub_1A480D66C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1A480D710(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A480EDEC(v1);
}

void sub_1A480D740(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  *a2 = *(v3 + 24);
}

uint64_t sub_1A480D7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1A480D848(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void sub_1A480D8A0(double a1)
{
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__storyViewModel;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_1A52467B4();
}

void sub_1A480D9E0(void *a1)
{
  swift_beginAccess();
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  v2 = a1;
  sub_1A52467C4();
}

void sub_1A480DA90(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  sub_1A52467A4();
}

uint64_t sub_1A480DB60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

void sub_1A480DBF8()
{
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  v6 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__canBeVisible;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A52467B4();
}

void sub_1A480DD2C(char a1)
{
  swift_beginAccess();
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467C4();
}

void sub_1A480DDB4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467A4();
}

uint64_t sub_1A480DE78(double a1)
{
  sub_1A4810478(0, &qword_1EB129050, MEMORY[0x1E69C26A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  sub_1A4810B34(&unk_1EB17D638, &unk_1A5365274);
  v4 = qword_1EB176830;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_1A52438A4();
  v6 = __swift_project_value_buffer(v5, qword_1EB1EAD70);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v3, v6, v5);
  (*(v7 + 56))(v3, 0, 1, v5);
  return sub_1A52427B4();
}

void sub_1A480E118(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1A480E174@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1A480E1C0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A480E218(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_containerViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

uint64_t PhotosFullscreenPlaybackOverlayController.deinit(double a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__storyViewModel;
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__canBeVisible;
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  MEMORY[0x1A590F020](v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_containerViewController);
  return v1;
}

uint64_t PhotosFullscreenPlaybackOverlayController.__deallocating_deinit(double a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__storyViewModel;
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__canBeVisible;
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  MEMORY[0x1A590F020](v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_containerViewController);

  return swift_deallocClassInstance();
}

uint64_t sub_1A480E544()
{
  v0 = sub_1A52438A4();
  __swift_allocate_value_buffer(v0, qword_1EB1EAD70);
  __swift_project_value_buffer(v0, qword_1EB1EAD70);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v1 scrubberKind];

  return sub_1A5243894();
}

void sub_1A480E5EC(uint64_t a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;

    sub_1A480FE04();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
    sub_1A52415C4();
  }
}

void sub_1A480E70C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 25) == v2)
  {
    *(v1 + 25) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
    sub_1A52415C4();
  }
}

void sub_1A480E81C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 26) == v2)
  {
    sub_1A480F3C0(v2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
    sub_1A52415C4();
  }
}

double sub_1A480E930(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  swift_beginAccess();
  if (sub_1A524DAB4())
  {
    *(v3 + 28) = a1;
    *(v3 + 36) = v5;
    *(v3 + 40) = v7;
    *(v3 + 44) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
    sub_1A52415C4();
  }

  return result;
}

double sub_1A480EA74(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  if (sub_1A524DAB4())
  {
    *(v3 + 52) = a1;
    *(v3 + 60) = v5;
    *(v3 + 64) = v7;
    *(v3 + 68) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A480EBA4(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  v4 = v1[2];
  if (v4)
  {
    if (a1)
    {
      sub_1A3C52C70(0, &qword_1EB126B30, off_1E77204B0);
      v5 = v4;
      v6 = a1;
      v7 = sub_1A524DBF4();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v8 = v2[2];
  if (v8)
  {
    swift_allocObject();
    swift_weakInit();
    v8;

    sub_1A524D1A4();
  }

  v2[10] = 0;
  v2[11] = 0;
  swift_unknownObjectRelease();
  sub_1A480FE04();
}

void *sub_1A480ED58()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A480EDEC(void *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126B30, off_1E77204B0);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 16);
LABEL_8:
  *(v1 + 16) = a1;
  v8 = v5;
  sub_1A480EBA4(v9);
}

uint64_t sub_1A480EF90()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  return *(v0 + 24);
}

uint64_t sub_1A480F06C()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 25);
}

void sub_1A480F10C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 25);
}

uint64_t (*sub_1A480F1DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A480F01C(v4);
  return sub_1A480F300;
}

id sub_1A480F30C(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  swift_beginAccess();
  return [a1 setDesiredPlayState_];
}

void sub_1A480F3C0(char a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 26) = a1;
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  v4 = *(v2 + 16);
  if (v4)
  {
    aBlock[4] = sub_1A4810DC4;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D59380;
    aBlock[3] = &block_descriptor_57_3;
    v5 = _Block_copy(aBlock);
    v6 = v4;

    [v6 performChanges_];
    _Block_release(v5);
  }
}

uint64_t (*sub_1A480F514(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1A480F58C;
}

void sub_1A480F58C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    swift_getKeyPath();
    *v3 = v4;
    sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
    sub_1A52415D4();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v3[6];
      v3[4] = sub_1A4810C2C;
      v3[5] = v6;
      *v3 = MEMORY[0x1E69E9820];
      v3[1] = 1107296256;
      v3[2] = sub_1A3D59380;
      v3[3] = &block_descriptor_278;
      v7 = _Block_copy(v3);
      v8 = v5;

      [v8 performChanges_];
      _Block_release(v7);
    }
  }

  free(v3);
}

uint64_t sub_1A480F6E4()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 26);
}

void sub_1A480F784(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 26);
}

uint64_t (*sub_1A480F854(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A480F514(v4);
  return sub_1A480F978;
}

uint64_t sub_1A480F9D4()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 28);
}

double sub_1A480FA7C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 44);
  *a2 = *(v3 + 28);
  result = *(v3 + 36);
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t (*sub_1A480FB68(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A480F984(v4);
  return sub_1A480FC8C;
}

uint64_t sub_1A480FC98()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  return *(v0 + 52);
}

double sub_1A480FD2C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  v4 = *(v3 + 68);
  *a2 = *(v3 + 52);
  result = *(v3 + 60);
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

void sub_1A480FE04()
{
  swift_getKeyPath();
  v11 = v0;
  sub_1A4810B34(&unk_1EB17D628, &unk_1A5365258);
  sub_1A52415D4();

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 viewMode];
    v4 = v3 == 2 || v3 == 4;
    if (!v4 && (swift_getKeyPath(), v11 = v0, sub_1A52415D4(), , *(v0 + 24) == 1 && [v2 wantsChromeVisible]))
    {
      v5 = [v2 wantsRelatedOverlayVisible] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 desiredPlayState];
    [v2 currentPlaybackTime];
    [v2 playbackDuration];
    swift_getKeyPath();
    sub_1A52415D4();

    swift_beginAccess();
    if (v5 != *(v0 + 25))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }

    swift_getKeyPath();
    sub_1A52415D4();

    swift_beginAccess();
    if ((v6 == 1) != *(v0 + 26))
    {
      v8 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v8);
      sub_1A52415C4();
    }

    swift_getKeyPath();
    sub_1A52415D4();

    swift_beginAccess();
    sub_1A524DAC4();
    swift_getKeyPath();
    sub_1A52415D4();

    if (sub_1A524DAC4())
    {
      if (sub_1A524DAB4())
      {

        *(v0 + 52) = v11;
        *(v0 + 60) = v12;
        *(v0 + 64) = v13;
        *(v0 + 68) = v14;
      }

      else
      {
        v10 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v10);
        sub_1A52415C4();
      }
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    if (*(v0 + 25))
    {
      v9 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v9);
      sub_1A52415C4();
    }

    else
    {
      *(v0 + 25) = 0;
    }
  }
}

unint64_t sub_1A4810398()
{
  result = qword_1EB126B20;
  if (!qword_1EB126B20)
  {
    sub_1A480D5E4(255);
    sub_1A4810410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126B20);
  }

  return result;
}

unint64_t sub_1A4810410()
{
  result = qword_1EB126B18;
  if (!qword_1EB126B18)
  {
    sub_1A3C52C70(255, &qword_1EB126B30, off_1E77204B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126B18);
  }

  return result;
}

void sub_1A4810478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4810520(uint64_t a1)
{
  sub_1A4810478(319, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  if (v1 <= 0x3F)
  {
    sub_1A4810D54(319, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A481080C()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48108C0(uint64_t a1)
{
  result = sub_1A5241614();
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

unint64_t sub_1A4810980()
{
  result = qword_1EB1291E0;
  if (!qword_1EB1291E0)
  {
    sub_1A52427C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1291E0);
  }

  return result;
}

void (*sub_1A48109DC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A480F1DC(v2);
  return sub_1A3E62A10;
}

void (*sub_1A4810A50(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A480F854(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4810AC4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A480FB68(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A4810B34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FullscreenPlaybackOverlayModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4810B90()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  swift_beginAccess();
  *(v1 + 28) = v2;
  *(v1 + 36) = v4;
  *(v1 + 44) = v3;
}

void sub_1A4810C84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
  sub_1A480EBA4(v3);
}

double sub_1A4810CD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a2 & 0x20000000A00ELL) != 0)
    {
      sub_1A480FE04();
    }
  }

  return result;
}

double sub_1A4810D38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 32);
  *(v1 + 52) = *(v0 + 24);
  *(v1 + 60) = result;
  *(v1 + 68) = v2;
  return result;
}

void sub_1A4810D54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double PHAsset.pixelSize.getter()
{
  v1 = [v0 pixelWidth];
  [v0 pixelHeight];
  return v1;
}

uint64_t sub_1A4810E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

double sub_1A4810F10()
{
  v1 = *v0;
  v2 = [*v0 pixelWidth];
  [v1 pixelHeight];
  return v2;
}

double PhotoKitItem<>.pixelSize.getter()
{
  v1 = *(v0 + 16);
  v2 = [v1 pixelWidth];
  [v1 pixelHeight];
  return v2;
}

uint64_t PhotoKitItem<>.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id PhotoKitItem.keyAsset.getter()
{
  v0 = PhotoKitItem.keyAssets.getter();
  v1 = [v0 firstObject];

  return v1;
}

id PhotoKitItem<>.count.getter()
{
  if ([*(v0 + 16) px_isMapVirtualCollection])
  {
    return 0;
  }

  result = PhotoKitItem.subcontents.getter();
  if (result)
  {
    v2 = result;
    v3 = [result count];

    return v3;
  }

  return result;
}

{
  v0 = PhotoKitItem.subcontents.getter();
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v2 = [v0 count];

  return v2;
}

id sub_1A48111EC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 count];

  return v3;
}

uint64_t PhotoKitItem<>.keyAssets.getter()
{
  v0 = PhotoKitItem.keyAssets.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = [v0 fetchedObjects];

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v3 = sub_1A524CA34();

  return v3;
}

uint64_t PhotoKitItem<>.title.getter()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v9 = [v1 localizedTitle];
    if (v9)
    {
      v4 = v9;
      v8 = sub_1A524C674();
      goto LABEL_7;
    }

    return 0;
  }

  v3 = v2;
  sub_1A5244D04();
  v11[3] = sub_1A3C52C70(0, &qword_1EB126AA0, 0x1E69789F0);
  v11[0] = v3;
  v4 = v1;
  v5 = sub_1A5244E84();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v5 & 1) == 0)
  {
    v6 = [v3 dateDescription];
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v6 = [v3 localizedSmartDescription];
  if (!v6)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  v7 = v6;
  v8 = sub_1A524C674();

LABEL_7:
  return v8;
}

{
  v1 = [*(v0 + 16) localizedTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

{
  v1 = *(v0 + 16);
  v2 = PhotoKitItem.people.getter();
  v3 = [v1 px:v2 titleFor:?];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t PhotoKitItem<>.subtitle.getter()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
LABEL_6:
    v9 = [v1 localizedSubtitle];
    if (v9)
    {
      v4 = v9;
      v8 = sub_1A524C674();
      goto LABEL_8;
    }

    return 0;
  }

  v3 = v2;
  sub_1A5244D04();
  v11[3] = sub_1A3C52C70(0, &qword_1EB126AA0, 0x1E69789F0);
  v11[0] = v3;
  v4 = v1;
  v5 = sub_1A5244E84();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [v3 localizedDateDescription];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_1A524C674();

LABEL_8:
  return v8;
}

{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v0 + 16) localizedSubtitle];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1A524C674();
  }

  else
  {
    v15 = PhotoKitItem.keyAsset.getter();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 creationDate];

      if (v17)
      {
        sub_1A52410F4();

        (*(v8 + 56))(v3, 0, 1, v7);
      }

      else
      {
        (*(v8 + 56))(v3, 1, 1, v7);
      }

      sub_1A3E98DA0(v3, v6);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        v18 = objc_opt_self();
        v19 = sub_1A5241074();
        v20 = [v18 localizedStringFromDate:v19 dateStyle:2 timeStyle:0];

        v14 = sub_1A524C674();
        (*(v8 + 8))(v11, v7);
        return v14;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_1A3F637D4(v6);
    return 0;
  }

  return v14;
}

void *PhotoKitItem<>.shortSubtitle.getter()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    sub_1A5244D04();
    v9[3] = sub_1A3C52C70(0, &qword_1EB126AA0, 0x1E69789F0);
    v9[0] = v3;
    v4 = v1;
    v5 = sub_1A5244E84();
    __swift_destroy_boxed_opaque_existential_0(v9);
    if ((v5 & 1) != 0 && (v6 = [v3 localizedShortDateDescription]) != 0)
    {
      v7 = v6;
      v8 = sub_1A524C674();

      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t PhotoKitItem<>.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = *(v1 + 16);
  if ([v23 willFetchDatesIfNeeded])
  {
    v24 = sub_1A5240524();
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }

  else
  {
    v27 = [v23 startDate];
    if (v27)
    {
      v39 = a1;
      v28 = v27;
      sub_1A52410F4();

      v29 = v18;
      v30 = v4[4];
      v30(v22, v29, v3);
      v31 = [v23 endDate];
      if (v31)
      {
        v32 = v31;
        sub_1A52410F4();

        v30(v15, v12, v3);
        v33 = v4[2];
        v33(v9, v22, v3);
        v33(v6, v15, v3);
        v34 = v39;
        sub_1A5240504();
        v35 = v4[1];
        v35(v15, v3);
        v35(v22, v3);
        v36 = sub_1A5240524();
        return (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
      }

      (v4[1])(v22, v3);
      a1 = v39;
    }

    v37 = sub_1A5240524();
    return (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
  }
}

uint64_t PHCollection.collectionSymbolName.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    sub_1A52445A4();
    v13 = sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
    v12[0] = v2;
    v3 = v0;
    LOBYTE(v2) = sub_1A5244E84();
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v2)
    {
      return 0x7361636665697262;
    }

    else
    {
      return 0x736569726F6D656DLL;
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      sub_1A5244D04();
      v13 = sub_1A3C52C70(0, &qword_1EB126AA0, 0x1E69789F0);
      v12[0] = v6;
      v7 = v0;
      v8 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v12);
      if (v8)
      {
        return 0x7361636665697262;
      }

      else if ([v6 kind])
      {
        return 0x736569726F6D656DLL;
      }

      else
      {
        return 0x7261646E656C6163;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 0xD000000000000020;
      }

      else
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = [v9 px_symbolImageName];
          v11 = sub_1A524C674();

          return v11;
        }

        else if ([v0 canContainCollections])
        {
          return 0x7265646C6F66;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

id sub_1A4811E5C@<X0>(void *a1@<X8>)
{
  result = PhotoKitItem.keyAsset.getter();
  *a1 = result;
  return result;
}

void PhotoKitItem<>.fetchHighlight(completion:)(void (*a1)(void), uint64_t a2)
{
  v4 = PhotoKitItem.keyAsset.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() sharedInstance];
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v10[4] = sub_1A3D78DD0;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3F287DC;
    v10[3] = &block_descriptor_279;
    v8 = _Block_copy(v10);
    v9 = v5;

    [v6 fetchSocialLayerHighlightForAsset:v9 completion:v8];
    _Block_release(v8);
  }

  else
  {
    a1();
  }
}

double sub_1A481238C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  PhotoKitItem<>.fetchHighlight(completion:)(sub_1A4813AB4, v4);

  return result;
}

uint64_t sub_1A4812450@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t PhotoKitItem<>.accessoryType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if ([v3 px_containsPrivateContent])
  {
    v4 = MEMORY[0x1E69C2330];
    goto LABEL_16;
  }

  v5 = [v3 transientIdentifier];
  if (!v5)
  {
    sub_1A524C674();
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_1A524C674();
  v9 = v8;

  v10 = sub_1A524C674();
  if (!v9)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v7 != v10 || v9 != v11)
  {
    v13 = sub_1A524EAB4();

    if (v13)
    {
      goto LABEL_15;
    }

LABEL_13:
    v4 = MEMORY[0x1E69C2340];
    goto LABEL_16;
  }

LABEL_15:
  v4 = MEMORY[0x1E69C2338];
LABEL_16:
  v14 = *v4;
  v15 = sub_1A5242FD4();
  v18 = *(v15 - 8);
  (*(v18 + 104))(a1, v14, v15);
  v16 = *(v18 + 56);

  return v16(a1, 0, 1, v15);
}

uint64_t PhotoKitItem<>.shortTitle.getter()
{
  v1 = 0xD000000000000024;
  v2 = *(v0 + 16);
  if ([v2 px_isRecentlySavedCollection])
  {
    v1 = 0xD000000000000023;
    return sub_1A3C38BD4(v1);
  }

  if ([v2 px_isRecentlyEditedCollection] & 1) != 0 || (objc_msgSend(v2, sel_px_isRecentlySharedCollection) & 1) != 0 || (objc_msgSend(v2, sel_px_isRecentlyViewedCollection))
  {
    return sub_1A3C38BD4(v1);
  }

  if ([v2 px_isRecentlyDeletedSmartAlbum])
  {
    v1 = 0xD000000000000025;
    return sub_1A3C38BD4(v1);
  }

  return 0;
}

id PHCollection.px_isFavorite.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 isFavorite];
  }

  else
  {
    return [v0 px_isFavoritesSmartAlbum];
  }
}

Swift::Void __swiftcall PHCollection.px_setIsFavorite(_:undoManager:)(Swift::Bool _, NSUndoManager_optional undoManager)
{
  v3 = v2;
  isa = undoManager.value.super.isa;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    sub_1A3C52C70(0, &qword_1EB126690, 0x1E695DEC8);
    sub_1A3C4D548(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 56) = sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
    *(v8 + 32) = v7;
    v16 = v3;
    v9 = MEMORY[0x1A5908EF0](v8);
    v10 = [objc_allocWithZone(PXFavoriteMemoriesAction) initWithMemories:v9 favorite:_];

    if (v10)
    {
      aBlock[4] = PXDisplayCollectionDetailedCountsMake;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_3_9;
      v11 = _Block_copy(aBlock);
      [v10 executeWithUndoManager:isa completionHandler:v11];

      _Block_release(v11);
    }

    else
    {
    }
  }

  else
  {
    sub_1A524E404();

    v12 = [v2 description];
    v13 = sub_1A524C674();
    v15 = v14;

    MEMORY[0x1A5907B60](v13, v15);

    sub_1A524E6E4();
    __break(1u);
  }
}

id sub_1A4812D2C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 isFavorite];
  }

  else
  {
    return [v0 px_isFavoritesSmartAlbum];
  }
}

void sub_1A4812DEC(uint64_t a1)
{
  swift_getWitnessTable();

    ;
  }
}

void sub_1A4812E40(uint64_t a1)
{
  swift_getWitnessTable();

    ;
  }
}

uint64_t PhotoKitItem.selectionIdentifier.getter()
{
  v1 = [*(v0 + 16) localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

id PHCollection.isContentPrivacyEnabled.getter()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result px_containsPrivateContent];
  }

  return result;
}

id sub_1A4813218()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result px_containsPrivateContent];
  }

  return result;
}

uint64_t PHPerson.title.getter()
{
  v1 = [v0 px_localizedName];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A48132F4()
{
  v1 = [*v0 px_localizedName];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A4813378(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1A524C674();

  return v4;
}

uint64_t sub_1A4813424(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1A524C674();

  return v6;
}

void sub_1A4813488(uint64_t a1)
{
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  *(v3 + 32) = v1;
  sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v4 = v1;
  v5 = sub_1A524CA14();
  v6 = [v4 photoLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();

    v10 = [v8 peopleFetchResultFromFastEnumeration:v5 photoLibrary:v7];

    type metadata accessor for PeopleChangeTypeActionPerformer();
    sub_1A4918C38(v10, a1, 0, 0, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4813AB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1A4813B0C()
{
  v1 = 0x6E696D6165727473;
  if (*v0 != 1)
  {
    v1 = 0x746F68506576696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1A4813B74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A48173B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A4813B9C(uint64_t a1)
{
  v2 = sub_1A48142E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813BD8(uint64_t a1)
{
  v2 = sub_1A48142E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813C14(uint64_t a1)
{
  v2 = sub_1A4814294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813C50(uint64_t a1)
{
  v2 = sub_1A4814294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813C8C(uint64_t a1)
{
  v2 = sub_1A48141EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813CC8(uint64_t a1)
{
  v2 = sub_1A48141EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813D04(uint64_t a1)
{
  v2 = sub_1A4814240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813D40(uint64_t a1)
{
  v2 = sub_1A4814240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813D7C(void *a1, int a2)
{
  v29 = a2;
  v3 = MEMORY[0x1E69E6F58];
  sub_1A481AD3C(0, &qword_1EB142F08, sub_1A48141EC, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.LivePhotoCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v21 - v5;
  sub_1A481AD3C(0, &qword_1EB142F10, sub_1A4814240, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.StreamingVideoCodingKeys, v3);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  sub_1A481AD3C(0, &qword_1EB142F18, sub_1A4814294, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.ImageCodingKeys, v3);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_1A481AD3C(0, &qword_1EB142F20, sub_1A48142E8, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A48142E8();
  v17 = v29;
  sub_1A524ED34();
  if (v17 == 2)
  {
    v33 = 1;
    sub_1A4814240();
    sub_1A524E944();
    (*(v22 + 8))(v8, v23);
    return (*(v14 + 8))(v16, v13);
  }

  if (v17 == 3)
  {
    v34 = 2;
    sub_1A48141EC();
    v18 = v26;
    sub_1A524E944();
    (*(v27 + 8))(v18, v28);
    return (*(v14 + 8))(v16, v13);
  }

  v32 = 0;
  sub_1A4814294();
  sub_1A524E944();
  v30 = v17 & 0x101;
  v31 = BYTE2(v17) & 1;
  sub_1A481433C();
  v20 = v25;
  sub_1A524E9D4();
  (*(v24 + 8))(v11, v20);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1A48141EC()
{
  result = qword_1EB1D6210;
  if (!qword_1EB1D6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6210);
  }

  return result;
}

unint64_t sub_1A4814240()
{
  result = qword_1EB1D6218;
  if (!qword_1EB1D6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6218);
  }

  return result;
}

unint64_t sub_1A4814294()
{
  result = qword_1EB1D6220;
  if (!qword_1EB1D6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6220);
  }

  return result;
}

unint64_t sub_1A48142E8()
{
  result = qword_1EB1D6228;
  if (!qword_1EB1D6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6228);
  }

  return result;
}

unint64_t sub_1A481433C()
{
  result = qword_1EB142F28;
  if (!qword_1EB142F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142F28);
  }

  return result;
}

uint64_t sub_1A4814390@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1A48174DC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_1A48143E8(char a1, char a2, char a3)
{
  if (a2)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v3 & 0xFFFFFFFE | a1 & 1 | v4;
}

unint64_t sub_1A481440C()
{
  v1 = 0x6169746170537369;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A481447C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A4817EB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A48144A4(uint64_t a1)
{
  v2 = sub_1A4817DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A48144E0(uint64_t a1)
{
  v2 = sub_1A4817DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A481451C(void *a1, unsigned int a2)
{
  sub_1A481AD3C(0, &qword_1EB142F30, sub_1A4817DB4, &type metadata for OneUpSharePlayAttachmentAssetMetadata.ImageContentMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817DB4();
  sub_1A524ED34();
  v13 = 0;
  sub_1A524E9A4();
  if (!v2)
  {
    v12 = 1;
    sub_1A524E9A4();
    v11 = 2;
    sub_1A524E9A4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A48146C8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A4817B90(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
    a1[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_1A4814708(void *a1)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1A481451C(a1, v3 | *v1 | v2);
}

unint64_t sub_1A481474C()
{
  v1 = 0x54746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44497465737361;
  }
}

uint64_t sub_1A48147B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A4817FE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A48147DC(uint64_t a1)
{
  v2 = sub_1A4817E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4814818(uint64_t a1)
{
  v2 = sub_1A4817E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4814854(void *a1)
{
  v3 = v1;
  sub_1A481AD3C(0, &qword_1EB142F38, sub_1A4817E08, &type metadata for OneUpSharePlayAttachmentAssetMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817E08();
  sub_1A524ED34();
  v16 = 0;
  sub_1A524E994();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v15 = *(v3 + 18);
    v13 = 1;
    sub_1A4817E5C();
    sub_1A524E9D4();
    v12 = 2;
    sub_1A524E954();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A4814A30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 18) = BYTE2(a3);
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

double sub_1A4814A48@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A4818108(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1A4814AA8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4.n128_f64[0] = sub_1A3D602A8(*a1, v2);
  v5 = *(v1 + 8);

  return v5(v3, v2, v4);
}

uint64_t sub_1A4814B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A4814B40, 0, 0);
}

uint64_t sub_1A4814B40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = v1;
  v3[1] = v2;
  v4.n128_f64[0] = sub_1A3D602A8(v1, v2);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1A4814BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246C74();
  return MEMORY[0x1A58FCFE0](v6, &unk_1A5365C70, 0, &unk_1A5365C78, 0, a1, a2);
}

unint64_t sub_1A4814C70()
{
  v1 = 0x72507265676E6966;
  v2 = 0x745373776F6C6C61;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A4814D04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A48184FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A4814D2C(uint64_t a1)
{
  v2 = sub_1A481844C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4814D68(uint64_t a1)
{
  v2 = sub_1A481844C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4814DA4(void *a1)
{
  v3 = v1;
  sub_1A481AD3C(0, &qword_1EB142F48, sub_1A481844C, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemParameters.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A481844C();
  sub_1A524ED34();
  v12 = *v3;
  v13 = v12;
  v14 = 0;
  sub_1A48184A0(&v13, v11);
  sub_1A3DC4204();
  sub_1A524E9D4();
  if (v2)
  {
    sub_1A3C59280(v12, *(&v12 + 1));
  }

  else
  {
    sub_1A3C59280(v12, *(&v12 + 1));
    LOBYTE(v12) = 1;
    sub_1A524E954();
    LOBYTE(v12) = 2;
    sub_1A524E954();
    LOBYTE(v12) = 3;
    sub_1A524E9A4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A4814FC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double sub_1A4814FDC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A481867C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1A4815044()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657449616964656DLL;
  }
}

uint64_t sub_1A48150A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A4818ECC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A48150CC(uint64_t a1)
{
  v2 = sub_1A4818ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4815108(uint64_t a1)
{
  v2 = sub_1A4818ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4815144(uint64_t a1)
{
  v2 = sub_1A4818A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4815180(uint64_t a1)
{
  v2 = sub_1A4818A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A48151BC(uint64_t a1)
{
  v2 = sub_1A48189C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A48151F8(uint64_t a1)
{
  v2 = sub_1A48189C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4815234(uint64_t a1)
{
  v2 = sub_1A4818A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4815270(uint64_t a1)
{
  v2 = sub_1A4818A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1A48152AC(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1A481AD3C(0, &qword_1EB142F50, sub_1A48189C0, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UnavailableCodingKeys, MEMORY[0x1E69E6F58]);
  v39 = v3;
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - v4;
  sub_1A481AD3C(0, &qword_1EB142F58, sub_1A4818A14, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UrlCodingKeys, v2);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v32 - v6;
  v7 = sub_1A5240E64();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A481AD3C(0, &qword_1EB142F60, sub_1A4818A68, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemCodingKeys, v2);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A481AD3C(0, &qword_1EB142F68, sub_1A4818ABC, &type metadata for OneUpSharePlayStreamingVideoItem.Format.CodingKeys, v2);
  v16 = v15;
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818ABC();
  sub_1A524ED34();
  sub_1A48183C8(v44, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v40;
      v20 = v41;
      v22 = v36;
      (*(v40 + 32))(v36, v14, v41);
      LOBYTE(v46) = 1;
      sub_1A4818A14();
      v23 = v38;
      sub_1A524E944();
      sub_1A4818B64(&qword_1EB142F70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      v24 = v43;
      sub_1A524E9D4();
      (*(v42 + 8))(v23, v24);
      (*(v21 + 8))(v22, v20);
    }

    else
    {
      LOBYTE(v46) = 2;
      sub_1A48189C0();
      v31 = v35;
      sub_1A524E944();
      (*(v37 + 8))(v31, v39);
    }

    (*(v45 + 8))(v18, v16);
  }

  else
  {
    v26 = *v14;
    v25 = *(v14 + 1);
    v27 = *(v14 + 3);
    v44 = *(v14 + 2);
    v28 = *(v14 + 5);
    v41 = *(v14 + 4);
    v29 = v14[48];
    LOBYTE(v46) = 0;
    sub_1A4818A68();
    sub_1A524E944();
    v42 = v25;
    v43 = v26;
    v46 = v26;
    v47 = v25;
    v48 = v44;
    v49 = v27;
    v44 = v27;
    v50 = v41;
    v51 = v28;
    v52 = v29;
    sub_1A4818B10();
    v30 = v34;
    sub_1A524E9D4();
    (*(v33 + 8))(v11, v30);
    (*(v45 + 8))(v18, v16);
    sub_1A3C59280(v43, v42);
  }
}

uint64_t sub_1A4815900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1A481AD3C(0, &qword_1EB142F80, sub_1A48189C0, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UnavailableCodingKeys, MEMORY[0x1E69E6F48]);
  v55 = v4;
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v49 - v5;
  sub_1A481AD3C(0, &qword_1EB142F88, sub_1A4818A14, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UrlCodingKeys, v3);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v49 - v8;
  sub_1A481AD3C(0, &qword_1EB142F90, sub_1A4818A68, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemCodingKeys, v3);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v49 - v10;
  sub_1A481AD3C(0, &qword_1EB142F98, sub_1A4818ABC, &type metadata for OneUpSharePlayStreamingVideoItem.Format.CodingKeys, v3);
  v58 = v11;
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v23 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A4818ABC();
  v24 = v64;
  sub_1A524ED14();
  if (!v24)
  {
    v49 = v19;
    v50 = v16;
    v26 = v59;
    v25 = v60;
    v64 = v22;
    v51 = v14;
    v27 = v61;
    v28 = v62;
    v29 = v58;
    v30 = sub_1A524E924();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = *(v30 + 32);
      if (v31 == 1 && v32 != 3)
      {
        if (*(v30 + 32))
        {
          v37 = v29;
          if (v32 != 1)
          {
            LOBYTE(v65) = 2;
            sub_1A48189C0();
            sub_1A524E844();
            (*(v52 + 8))(v27, v55);
            (*(v63 + 8))(v13, v29);
            swift_unknownObjectRelease();
            v39 = v64;
            swift_storeEnumTagMultiPayload();
LABEL_16:
            sub_1A4818E10(v39, v28, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
            return __swift_destroy_boxed_opaque_existential_0(v69);
          }

          LOBYTE(v65) = 1;
          sub_1A4818A14();
          v38 = v25;
          sub_1A524E844();
          sub_1A5240E64();
          sub_1A4818B64(&qword_1EB142FA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
          v40 = v50;
          v41 = v56;
          sub_1A524E8E4();
          (*(v57 + 8))(v38, v41);
          (*(v63 + 8))(v13, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v45 = v40;
        }

        else
        {
          LOBYTE(v65) = 0;
          sub_1A4818A68();
          sub_1A524E844();
          sub_1A4818BAC();
          v43 = v54;
          sub_1A524E8E4();
          v44 = v63;
          (*(v53 + 8))(v26, v43);
          (*(v44 + 8))(v13, v29);
          swift_unknownObjectRelease();
          v46 = v68;
          v47 = v66;
          v48 = v49;
          *v49 = v65;
          v48[1] = v47;
          v48[2] = v67;
          *(v48 + 48) = v46;
          swift_storeEnumTagMultiPayload();
          v45 = v48;
        }

        v39 = v64;
        sub_1A4818E10(v45, v64, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
        goto LABEL_16;
      }
    }

    v34 = sub_1A524E4C4();
    swift_allocError();
    v36 = v35;
    sub_1A3FA0828(0);
    *v36 = v51;
    sub_1A524E854();
    sub_1A524E4A4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v63 + 8))(v13, v29);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

void sub_1A48161B8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1A481623C(uint64_t a1)
{
  v2 = sub_1A4818DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4816278(uint64_t a1)
{
  v2 = sub_1A4818DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}
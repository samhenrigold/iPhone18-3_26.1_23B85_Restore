void Instrument.PopoverLocation.LocalConfiguration.restoreAssets(from:)(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 144) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
      ImageAsset.restore(from:)(a1);
    }
  }
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.streamName.getter()
{
  v1 = *v0;

  return v1;
}

void Instrument.PopoverLocation.LocalConfiguration.streamName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.closeButton.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v10 = v1[3];
  v11 = v2;
  v4 = v1[6];
  v12 = v1[5];
  v3 = v12;
  v13 = v4;
  v6 = v1[2];
  v9[0] = v1[1];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242CA321C(v9, &v8, &qword_27ECF4238, &qword_242F43800);
}

__n128 Instrument.PopoverLocation.LocalConfiguration.closeButton.setter(uint64_t a1)
{
  v3 = v1[4];
  v10[2] = v1[3];
  v10[3] = v3;
  v4 = v1[6];
  v10[4] = v1[5];
  v10[5] = v4;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  sub_242C6D138(v10, &qword_27ECF4238, &qword_242F43800);
  v6 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v6;
  v7 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v9;
  return result;
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.focusedCloseButton.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v10 = v1[9];
  v11 = v2;
  v4 = v1[12];
  v12 = v1[11];
  v3 = v12;
  v13 = v4;
  v6 = v1[8];
  v9[0] = v1[7];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242CA321C(v9, &v8, &qword_27ECFB0A0, &qword_242F43808);
}

__n128 Instrument.PopoverLocation.LocalConfiguration.focusedCloseButton.setter(uint64_t a1)
{
  v3 = v1[10];
  v10[2] = v1[9];
  v10[3] = v3;
  v4 = v1[12];
  v10[4] = v1[11];
  v10[5] = v4;
  v5 = v1[8];
  v10[0] = v1[7];
  v10[1] = v5;
  sub_242C6D138(v10, &qword_27ECFB0A0, &qword_242F43808);
  v6 = *(a1 + 48);
  v1[9] = *(a1 + 32);
  v1[10] = v6;
  v7 = *(a1 + 80);
  v1[11] = *(a1 + 64);
  v1[12] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[7] = *a1;
  v1[8] = v9;
  return result;
}

__n128 Instrument.PopoverLocation.LocalConfiguration.init(streamName:closeButton:focusedCloseButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 254;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = a3[3];
  *(a5 + 48) = a3[2];
  *(a5 + 64) = v7;
  v8 = a3[5];
  *(a5 + 80) = a3[4];
  *(a5 + 96) = v8;
  v9 = a3[1];
  *(a5 + 16) = *a3;
  *(a5 + 32) = v9;
  v10 = *(a5 + 192);
  v17[4] = *(a5 + 176);
  v17[5] = v10;
  v11 = *(a5 + 128);
  v17[0] = *(a5 + 112);
  v17[1] = v11;
  v12 = *(a5 + 160);
  v17[2] = *(a5 + 144);
  v17[3] = v12;
  sub_242C6D138(v17, &qword_27ECFB0A0, &qword_242F43808);
  v13 = *(a4 + 48);
  *(a5 + 144) = *(a4 + 32);
  *(a5 + 160) = v13;
  v14 = *(a4 + 80);
  *(a5 + 176) = *(a4 + 64);
  *(a5 + 192) = v14;
  result = *a4;
  v16 = *(a4 + 16);
  *(a5 + 112) = *a4;
  *(a5 + 128) = v16;
  return result;
}

unint64_t sub_242E91640()
{
  v1 = 0x74754265736F6C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E6D6165727473;
  }
}

uint64_t sub_242E916AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E950B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E916D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E94634(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E91710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E94634(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0A8, &qword_242F43810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v7 = v1[4];
  v40 = v1[3];
  v41 = v7;
  v8 = v1[6];
  v42 = v1[5];
  v43 = v8;
  v9 = v1[2];
  v38 = v1[1];
  v39 = v9;
  v10 = v1[8];
  v44 = v1[7];
  v45 = v10;
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[12];
  v48 = v1[11];
  v49 = v13;
  v46 = v11;
  v47 = v12;
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  v18 = __swift_project_boxed_opaque_existential_2Tm(v15, v14);
  sub_242E94634(v18, v19, v20);
  sub_242F064C0();
  LOBYTE(v32) = 0;
  v21 = v23[1];
  sub_242F05EC0();
  if (!v21)
  {
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v32 = v38;
    v33 = v39;
    v51 = 1;
    sub_242CA321C(&v38, v31, &qword_27ECF4238, &qword_242F43800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4238, &qword_242F43800);
    sub_242D67494(&qword_27ECF4250, &protocol conformance descriptor for <A> DynamicAppearanceValue<A>);
    sub_242F05F20();
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    sub_242C6D138(v31, &qword_27ECF4238, &qword_242F43800);
    v27 = v46;
    v28 = v47;
    v29 = v48;
    v30 = v49;
    v25 = v44;
    v26 = v45;
    v50 = 2;
    sub_242CA321C(&v44, v24, &qword_27ECFB0A0, &qword_242F43808);
    sub_242F05EB0();
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    v24[5] = v30;
    v24[0] = v25;
    v24[1] = v26;
    sub_242C6D138(v24, &qword_27ECFB0A0, &qword_242F43808);
  }

  return (*(v4 + 8))(v6, v17);
}

void Instrument.PopoverLocation.LocalConfiguration.hash(into:)(uint64_t a1)
{
  v3 = ~*(v1 + 144);
  sub_242F04DD0();
  sub_242D65A9C(a1);
  sub_242F063B0();
  if ((v3 & 0xFE) != 0)
  {
    sub_242D65A9C(a1);
  }
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.hashValue.getter()
{
  v1 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v1;
  v2 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 144);
  v15 = *(v0 + 16);
  v16 = v3;
  sub_242F06390();
  sub_242F04DD0();
  sub_242D65A9C(v7);
  if ((~v4 & 0xFELL) != 0)
  {
    v5 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = v5;
    v11 = *(v0 + 152);
    v12 = *(v0 + 168);
    v13 = *(v0 + 184);
    v14 = *(v0 + 200);
    v10 = v4;
    sub_242F063B0();
    sub_242D65A9C(v7);
  }

  else
  {
    sub_242F063B0();
  }

  return sub_242F063E0();
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0B8, &qword_242F43818);
  v5 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v7 = &v35 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E94634(v8, v9, v10);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v68 = 0u;
    v69 = 0u;
    *(v70 + 8) = 0u;
    *(&v70[1] + 8) = 0u;
    *(&v70[2] + 8) = 0u;
    *&v70[0] = 254;
    *(&v70[3] + 1) = 0;
    return sub_242C6D138(&v68, &qword_27ECFB0A0, &qword_242F43808);
  }

  else
  {
    v11 = v5;
    v48 = a2;
    LOBYTE(v68) = 0;
    v12 = v109;
    v13 = sub_242F05DA0();
    v47 = v14;
    v45 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4238, &qword_242F43800);
    v96 = 1;
    v46 = sub_242D67494(&qword_27ECF4268, &protocol conformance descriptor for <A> DynamicAppearanceValue<A>);
    sub_242F05E00();
    v105 = v99;
    v106 = v100;
    v107 = v101;
    v108 = v102;
    v103 = v97;
    v104 = v98;
    v83 = 2;
    sub_242F05D90();
    (*(v11 + 8))(v7, v12);
    v15 = v84;
    v46 = v84;
    v16 = v85;
    v17 = v86;
    v43 = v86;
    v44 = v85;
    v18 = v87;
    v42 = v87;
    v39 = v88;
    v109 = v89;
    v35 = v91;
    v36 = v90;
    v19 = v92;
    v20 = v94;
    v40 = v94;
    v41 = v92;
    v37 = v95;
    v38 = v93;
    memset(v49, 0, sizeof(v49));
    v50 = 254;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    sub_242C6D138(v49, &qword_27ECFB0A0, &qword_242F43808);
    *&v55 = v45;
    *(&v55 + 1) = v47;
    v58 = v105;
    v59 = v106;
    v60 = v107;
    v61 = v108;
    v56 = v103;
    v57 = v104;
    *&v62 = v15;
    *(&v62 + 1) = v16;
    *&v63 = v17;
    *(&v63 + 1) = v18;
    v21 = v39;
    *&v64 = v39;
    *(&v64 + 1) = v109;
    v23 = v35;
    v22 = v36;
    *&v65 = v36;
    *(&v65 + 1) = v35;
    *&v66 = v19;
    v24 = v38;
    *(&v66 + 1) = v38;
    *&v67 = v20;
    v25 = v37;
    *(&v67 + 1) = v37;
    v26 = v105;
    v27 = v48;
    v48[2] = v104;
    v27[3] = v26;
    v28 = v56;
    *v27 = v55;
    v27[1] = v28;
    v29 = v59;
    v30 = v60;
    v31 = v62;
    v27[6] = v61;
    v27[7] = v31;
    v27[4] = v29;
    v27[5] = v30;
    v32 = v64;
    v27[8] = v63;
    v27[9] = v32;
    v33 = v66;
    v27[10] = v65;
    v27[11] = v33;
    v27[12] = v67;
    sub_242E94688(&v55, &v68);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    *&v68 = v45;
    *(&v68 + 1) = v47;
    v70[1] = v105;
    v70[2] = v106;
    v70[3] = v107;
    v70[4] = v108;
    v69 = v103;
    v70[0] = v104;
    v71 = v46;
    v72 = v44;
    v73 = v43;
    v74 = v42;
    v75 = v21;
    v76 = v109;
    v77 = v22;
    v78 = v23;
    v79 = v41;
    v80 = v24;
    v81 = v40;
    v82 = v25;
    return sub_242E94604(&v68);
  }
}

void sub_242E920E4(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 144) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
      ImageAsset.restore(from:)(a1);
    }
  }
}

uint64_t sub_242E92188()
{
  v1 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v1;
  v2 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 144);
  v15 = *(v0 + 16);
  v16 = v3;
  sub_242F06390();
  sub_242F04DD0();
  sub_242D65A9C(v7);
  if ((~v4 & 0xFELL) != 0)
  {
    v5 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = v5;
    v11 = *(v0 + 152);
    v12 = *(v0 + 168);
    v13 = *(v0 + 184);
    v14 = *(v0 + 200);
    v10 = v4;
    sub_242F063B0();
    sub_242D65A9C(v7);
  }

  else
  {
    sub_242F063B0();
  }

  return sub_242F063E0();
}

void sub_242E92280(uint64_t a1)
{
  v3 = ~*(v1 + 144);
  sub_242F04DD0();
  sub_242D65A9C(a1);
  sub_242F063B0();
  if ((v3 & 0xFE) != 0)
  {
    sub_242D65A9C(a1);
  }
}

uint64_t sub_242E9234C(uint64_t a1)
{
  v2 = *(v1 + 64);
  v18 = *(v1 + 48);
  v19 = v2;
  v3 = *(v1 + 96);
  v20 = *(v1 + 80);
  v21 = v3;
  v4 = *(v1 + 32);
  v5 = *(v1 + 144);
  v16 = *(v1 + 16);
  v17 = v4;
  sub_242F06390();
  sub_242F04DD0();
  sub_242D65A9C(v8);
  if ((~v5 & 0xFELL) != 0)
  {
    v6 = *(v1 + 128);
    v9 = *(v1 + 112);
    v10 = v6;
    v12 = *(v1 + 152);
    v13 = *(v1 + 168);
    v14 = *(v1 + 184);
    v15 = *(v1 + 200);
    v11 = v5;
    sub_242F063B0();
    sub_242D65A9C(v8);
  }

  else
  {
    sub_242F063B0();
  }

  return sub_242F063E0();
}

uint64_t sub_242E92444()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6E65526C61636F6CLL;
  }
}

void sub_242E92488(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65526C61636F6CLL && a2 == 0xED00007265726564;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242E92568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E946C0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E925A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E946C0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E925E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E94768(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E9261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E94768(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E92658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E94714(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E92694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E94714(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.PopoverLocation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0C0, &qword_242F43820);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0C8, &qword_242F43828);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0D0, &qword_242F43830);
  v10 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v31 - v11;
  v13 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E946C0(v13, v14, v15);
  sub_242F064C0();
  v16 = v2[11];
  v60 = v2[10];
  v61 = v16;
  v62 = v2[12];
  v17 = v2[7];
  v56 = v2[6];
  v57 = v17;
  v18 = v2[9];
  v58 = v2[8];
  v59 = v18;
  v19 = v2[3];
  v52 = v2[2];
  v53 = v19;
  v20 = v2[5];
  v54 = v2[4];
  v55 = v20;
  v21 = v2[1];
  v50 = *v2;
  v51 = v21;
  enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v50);
  if (enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 1)
  {
    LOBYTE(v37) = 1;
    sub_242E94714(enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0, v23, v24);
    v25 = v36;
    sub_242F05E40();
    (*(v32 + 8))(v6, v33);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_242E94768(enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0, v23, v24);
    v25 = v36;
    v27 = sub_242F05E40();
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v43 = v56;
    v44 = v57;
    v45 = v58;
    v46 = v59;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v37 = v50;
    v38 = v51;
    sub_242E947BC(v27, v28, v29);
    v30 = v35;
    sub_242F05F20();
    (*(v34 + 8))(v9, v30);
  }

  return (*(v10 + 8))(v12, v25);
}

void Instrument.PopoverLocation.hash(into:)(uint64_t a1)
{
  v3 = v1[11];
  v11 = v1[10];
  v12 = v3;
  v13 = v1[12];
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[9];
  v9[8] = v1[8];
  v10 = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  v7 = v1[5];
  v9[4] = v1[4];
  v9[5] = v7;
  v8 = v1[1];
  v9[0] = *v1;
  v9[1] = v8;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v9) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    sub_242D65A9C(a1);
    if ((~v10 & 0xFE) != 0)
    {
      sub_242F063B0();
      sub_242D65A9C(a1);
    }

    else
    {
      sub_242F063B0();
    }
  }
}

uint64_t sub_242E92B6C()
{
  sub_242F06390();
  v1 = v0[11];
  v31 = v0[10];
  v32 = v1;
  v33 = v0[12];
  v2 = v0[7];
  v27 = v0[6];
  v28 = v2;
  v3 = v0[9];
  v29 = v0[8];
  v30 = v3;
  v4 = v0[3];
  v23 = v0[2];
  v24 = v4;
  v5 = v0[5];
  v25 = v0[4];
  v26 = v5;
  v6 = v0[1];
  v21 = *v0;
  v22 = v6;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v21) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v15 = v22;
    v16 = v23;
    sub_242F04DD0();
    sub_242D65A9C(v8);
    if ((~v30 & 0xFE) != 0)
    {
      v11 = v30;
      v12 = v31;
      v13 = v32;
      v14 = v33;
      v9 = v28;
      v10 = v29;
      sub_242F063B0();
      sub_242D65A9C(v8);
    }

    else
    {
      sub_242F063B0();
    }
  }

  return sub_242F063E0();
}

uint64_t Instrument.PopoverLocation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0F8, &qword_242F43838);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB100, &qword_242F43840);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB108, &unk_242F43848);
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = a1[3];
  v92 = a1;
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242E946C0(v14, v15, v16);
  v17 = v48;
  sub_242F06480();
  if (!v17)
  {
    v48 = v7;
    v18 = v46;
    v19 = sub_242F05E10();
    v20 = (2 * *(v19 + 16)) | 1;
    v88 = v19;
    v89 = v19 + 32;
    v90 = 0;
    v91 = v20;
    v21 = sub_242C7FBE4();
    v24 = v10;
    v25 = v12;
    if (v21 == 2 || v90 != v91 >> 1)
    {
      v28 = sub_242F05B10();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v30 = &type metadata for Instrument.PopoverLocation;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v47 + 8))(v25, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        LOBYTE(v62) = 1;
        sub_242E94714(v21, v22, v23);
        sub_242F05D10();
        v26 = v18;
        v27 = v47;
        (*(v45 + 1))(v6, v44);
        (*(v27 + 8))(v25, v10);
        swift_unknownObjectRelease();
        sub_242E13D54(&v75);
      }

      else
      {
        LOBYTE(v62) = 0;
        sub_242E94768(v21, v22, v23);
        sub_242F05D10();
        v32 = v12;
        v33 = v47;
        v26 = v18;
        v45 = v25;
        sub_242E94810(v32, v34, v35);
        v36 = v48;
        sub_242F05E00();
        (*(v43 + 8))(v9, v36);
        (*(v33 + 8))(v45, v24);
        swift_unknownObjectRelease();
        v59 = v72;
        v60 = v73;
        v61 = v74;
        v55 = v68;
        v56 = v69;
        v57 = v70;
        v58 = v71;
        v51 = v64;
        v52 = v65;
        v53 = v66;
        v54 = v67;
        v49 = v62;
        v50 = v63;
        nullsub_2();
        v85 = v59;
        v86 = v60;
        v87 = v61;
        v81 = v55;
        v82 = v56;
        v83 = v57;
        v84 = v58;
        v77 = v51;
        v78 = v52;
        v79 = v53;
        v80 = v54;
        v75 = v49;
        v76 = v50;
      }

      v37 = v86;
      v26[10] = v85;
      v26[11] = v37;
      v26[12] = v87;
      v38 = v82;
      v26[6] = v81;
      v26[7] = v38;
      v39 = v84;
      v26[8] = v83;
      v26[9] = v39;
      v40 = v78;
      v26[2] = v77;
      v26[3] = v40;
      v41 = v80;
      v26[4] = v79;
      v26[5] = v41;
      v42 = v76;
      *v26 = v75;
      v26[1] = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v92);
}

uint64_t sub_242E93248()
{
  v1 = v0[11];
  v8[10] = v0[10];
  v8[11] = v1;
  v8[12] = v0[12];
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[9];
  v8[8] = v0[8];
  v8[9] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = v0[5];
  v8[4] = v0[4];
  v8[5] = v5;
  v6 = v0[1];
  v8[0] = *v0;
  v8[1] = v6;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v8) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return Instrument.PopoverLocation.LocalConfiguration.assets.getter();
  }
}

void sub_242E93348(uint64_t a1)
{
  v3 = v1[11];
  v11 = v1[10];
  v12 = v3;
  v13 = v1[12];
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[9];
  v9[8] = v1[8];
  v10 = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  v7 = v1[5];
  v9[4] = v1[4];
  v9[5] = v7;
  v8 = v1[1];
  v9[0] = *v1;
  v9[1] = v8;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v9) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    sub_242D65A9C(a1);
    if ((~v10 & 0xFE) != 0)
    {
      sub_242F063B0();
      sub_242D65A9C(a1);
    }

    else
    {
      sub_242F063B0();
    }
  }
}

uint64_t sub_242E9345C(uint64_t a1)
{
  sub_242F06390();
  v2 = v1[11];
  v32 = v1[10];
  v33 = v2;
  v34 = v1[12];
  v3 = v1[7];
  v28 = v1[6];
  v29 = v3;
  v4 = v1[9];
  v30 = v1[8];
  v31 = v4;
  v5 = v1[3];
  v24 = v1[2];
  v25 = v5;
  v6 = v1[5];
  v26 = v1[4];
  v27 = v6;
  v7 = v1[1];
  v22 = *v1;
  v23 = v7;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v22) == 1)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v16 = v23;
    v17 = v24;
    sub_242F04DD0();
    sub_242D65A9C(v9);
    if ((~v31 & 0xFE) != 0)
    {
      v12 = v31;
      v13 = v32;
      v14 = v33;
      v15 = v34;
      v10 = v29;
      v11 = v30;
      sub_242F063B0();
      sub_242D65A9C(v9);
    }

    else
    {
      sub_242F063B0();
    }
  }

  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI10InstrumentV15PopoverLocationO18LocalConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 48);
  v77 = a1[7];
  v74 = a1[8];
  v71 = a1[10];
  v72 = a1[9];
  v69 = a1[11];
  v67 = *(a1 + 96);
  v58 = a1[13];
  v11 = *(a1 + 8);
  v110 = *(a1 + 7);
  v111 = v11;
  v12 = *(a1 + 9);
  v13 = *(a1 + 10);
  v14 = *(a1 + 12);
  v114 = *(a1 + 11);
  v115 = v14;
  v112 = v12;
  v113 = v13;
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  v20 = a2[5];
  v21 = *(a2 + 48);
  v76 = a2[7];
  v65 = a2[9];
  v66 = a2[8];
  v64 = a2[10];
  v62 = a2[11];
  v60 = *(a2 + 96);
  v56 = a2[13];
  v22 = *(a2 + 8);
  v116 = *(a2 + 7);
  v117 = v22;
  v23 = *(a2 + 9);
  v24 = *(a2 + 10);
  v25 = *(a2 + 12);
  *&v118[32] = *(a2 + 11);
  *&v118[48] = v25;
  *v118 = v23;
  *&v118[16] = v24;
  if (v4 == v15 && v5 == v16 || (v26 = sub_242F06110(), result = 0, (v26 & 1) != 0))
  {
    *&v97 = v6;
    *(&v97 + 1) = v7;
    *&v98 = v8;
    *(&v98 + 1) = v9;
    LOBYTE(v99) = v10;
    *&v85 = v17;
    *(&v85 + 1) = v18;
    *&v86 = v19;
    *(&v86 + 1) = v20;
    v87 = v21;
    sub_242C7F6C4(v6, v7, v8, v9, v10);
    sub_242C7F6C4(v17, v18, v19, v20, v21);
    v28 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v97, &v85);
    sub_242C7F724(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
    sub_242C7F724(v97, *(&v97 + 1), v98, *(&v98 + 1), v99);
    result = 0;
    if (v28 && v77 == v76)
    {
      *&v97 = v74;
      *(&v97 + 1) = v72;
      *&v98 = v71;
      *(&v98 + 1) = v69;
      LOBYTE(v99) = v67;
      *&v85 = v66;
      *(&v85 + 1) = v65;
      *&v86 = v64;
      *(&v86 + 1) = v62;
      v87 = v60;
      sub_242C7F6C4(v74, v72, v71, v69, v67);
      sub_242C7F6C4(v66, v65, v64, v62, v60);
      v29 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v97, &v85);
      sub_242C7F724(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
      sub_242C7F724(v97, *(&v97 + 1), v98, *(&v98 + 1), v99);
      result = 0;
      if (v29 && v58 == v56)
      {
        v30 = v110;
        v32 = *(&v111 + 1);
        v31 = v111;
        v33 = v112;
        v34 = *(&v112 + 1) | ((*(&v112 + 5) | (BYTE7(v112) << 16)) << 32);
        v35 = *(&v112 + 1);
        v109[0] = *(&v115 + 1);
        *(v109 + 3) = DWORD1(v115);
        v36 = v118[0];
        v37 = v118[0] & 0xFE;
        if (v112 <= 0xFDu)
        {
          if (v37 != 254)
          {
            v70 = v113;
            v75 = v114;
            v78 = v115;
            v73 = *(&v115 + 1);
            v97 = v116;
            v98 = v117;
            *v100 = *&v118[8];
            *&v100[16] = *&v118[24];
            *&v100[32] = *&v118[40];
            v99 = *v118;
            v51 = *&v118[56];
            v101 = *&v118[56];
            v61 = *(&v116 + 1);
            v63 = v116;
            v42 = v117;
            v57 = *&v118[16];
            v59 = *&v118[8];
            v54 = *&v118[32];
            v55 = *&v118[24];
            v53 = *&v118[40];
            v52 = v118[48];
            v82 = v110;
            v83 = v111;
            v84 = v112;
            v79 = v116;
            v80 = v117;
            v81 = v118[0];
            sub_242CA321C(&v110, &v85, &qword_27ECFB0A0, &qword_242F43808);
            sub_242CA321C(&v116, &v85, &qword_27ECFB0A0, &qword_242F43808);
            v68 = v31;
            sub_242C7F6C4(v30, *(&v30 + 1), v31, v32, v33);
            sub_242C7F6C4(v63, v61, v42, *(&v42 + 1), v36);
            v43 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v82, &v79);
            sub_242C7F724(v79, *(&v79 + 1), v80, *(&v80 + 1), v81);
            sub_242C7F724(v82, *(&v82 + 1), v83, *(&v83 + 1), v84);
            if (v43 && v35 == v59)
            {
              v44 = *(&v70 + 1);
              v45 = v70;
              v85 = v70;
              v86 = v75;
              v87 = v78;
              *&v82 = v57;
              *(&v82 + 1) = v55;
              *&v83 = v54;
              *(&v83 + 1) = v53;
              v84 = v52;
              sub_242C7F6C4(v70, *(&v70 + 1), v75, *(&v75 + 1), v78);
              sub_242C7F6C4(v57, v55, v54, v53, v52);
              v46 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v85, &v82);
              sub_242C7F724(v82, *(&v82 + 1), v83, *(&v83 + 1), v84);
              sub_242C7F724(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
              sub_242C6D138(&v97, &qword_27ECFB0A0, &qword_242F43808);
              v47 = *(&v75 + 1);
              v48 = v75;
              v49 = v78;
              v50 = v73;
              if (v46 && v73 == v51)
              {
                v85 = v30;
                v86 = __PAIR128__(v32, v68);
                v87 = v33;
                v88 = v34;
                v90 = BYTE6(v34);
                v89 = WORD2(v34);
                v91 = v35;
                v92 = v70;
                v93 = v75;
                v94 = v78;
                *v95 = v109[0];
                *&v95[3] = *(v109 + 3);
                v96 = v73;
                v38 = &v85;
                goto LABEL_11;
              }
            }

            else
            {
              sub_242C6D138(&v97, &qword_27ECFB0A0, &qword_242F43808);
              v50 = v73;
              v48 = v75;
              v49 = v78;
              v47 = *(&v75 + 1);
              v44 = *(&v70 + 1);
              v45 = v70;
            }

            v85 = v30;
            *&v86 = v68;
            *(&v86 + 1) = v32;
            v87 = v33;
            v88 = v34;
            v90 = BYTE6(v34);
            v89 = WORD2(v34);
            v91 = v35;
            *&v92 = v45;
            *(&v92 + 1) = v44;
            *&v93 = v48;
            *(&v93 + 1) = v47;
            v94 = v49;
            *v95 = v109[0];
            *&v95[3] = *(v109 + 3);
            v96 = v50;
            v39 = &qword_27ECFB0A0;
            v40 = &qword_242F43808;
            v41 = &v85;
            goto LABEL_21;
          }
        }

        else if (v37 == 254)
        {
          v97 = v110;
          v98 = v111;
          LOBYTE(v99) = v112;
          *(&v99 + 1) = *(&v112 + 1);
          HIBYTE(v99) = (*(&v112 + 1) | ((*(&v112 + 5) | (BYTE7(v112) << 16)) << 32)) >> 48;
          *(&v99 + 5) = *(&v112 + 5);
          *v100 = *(&v112 + 1);
          *&v100[8] = v113;
          *&v100[24] = v114;
          v100[40] = v115;
          *&v100[41] = *(&v115 + 1);
          *&v100[44] = DWORD1(v115);
          v101 = *(&v115 + 1);
          sub_242CA321C(&v110, &v85, &qword_27ECFB0A0, &qword_242F43808);
          sub_242CA321C(&v116, &v85, &qword_27ECFB0A0, &qword_242F43808);
          v38 = &v97;
LABEL_11:
          sub_242C6D138(v38, &qword_27ECFB0A0, &qword_242F43808);
          return 1;
        }

        v97 = v110;
        v98 = v111;
        LOBYTE(v99) = v112;
        *(&v99 + 1) = *(&v112 + 1);
        HIBYTE(v99) = (*(&v112 + 1) | ((*(&v112 + 5) | (BYTE7(v112) << 16)) << 32)) >> 48;
        *(&v99 + 5) = *(&v112 + 5);
        *v100 = *(&v112 + 1);
        *&v100[8] = v113;
        *&v100[24] = v114;
        v100[40] = v115;
        *&v100[41] = *(&v115 + 1);
        *&v100[44] = DWORD1(v115);
        v101 = *(&v115 + 1);
        v102 = v116;
        v103 = v117;
        v105 = *&v118[8];
        v106 = *&v118[24];
        v107 = *&v118[40];
        v104 = *v118;
        v108 = *&v118[56];
        sub_242CA321C(&v110, &v85, &qword_27ECFB0A0, &qword_242F43808);
        sub_242CA321C(&v116, &v85, &qword_27ECFB0A0, &qword_242F43808);
        v39 = &unk_27ECFB1A0;
        v40 = &unk_242F44658;
        v41 = &v97;
LABEL_21:
        sub_242C6D138(v41, v39, v40);
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV15PopoverLocationO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v66 = a1[10];
  v67 = v3;
  v4 = a1[11];
  v68 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v62 = a1[6];
  v63 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v64 = a1[8];
  v65 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v58 = a1[2];
  v59 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v60 = a1[4];
  v61 = v12;
  v13 = a1[1];
  v57[0] = *a1;
  v57[1] = v13;
  v14 = a2[9];
  v15 = a2[11];
  v79 = a2[10];
  v80 = v15;
  v16 = a2[11];
  v81 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v75 = a2[6];
  v76 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v78 = a2[9];
  v77 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v71 = a2[2];
  v72 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v74 = a2[5];
  v73 = v24;
  v27 = *a2;
  v28 = *a2;
  v70 = a2[1];
  v69 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v82[10] = a1[10];
  v82[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v82[6] = a1[6];
  v82[7] = v32;
  v33 = a1[8];
  v82[9] = v29;
  v82[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v82[2] = a1[2];
  v82[3] = v35;
  v36 = a1[4];
  v82[5] = v31;
  v82[4] = v36;
  v37 = *a1;
  v82[1] = v34;
  v82[0] = v37;
  v82[22] = v14;
  v82[23] = v79;
  v38 = a2[12];
  v82[24] = v16;
  v82[25] = v38;
  v82[18] = v17;
  v82[19] = v75;
  v82[20] = v20;
  v82[21] = v21;
  v82[14] = v22;
  v82[15] = v71;
  v82[16] = v25;
  v82[17] = v26;
  v82[12] = a1[12];
  v82[13] = v28;
  v93 = v66;
  v94 = v4;
  v95 = a1[12];
  v89 = v62;
  v90 = v7;
  v91 = v64;
  v92 = v2;
  v85 = v58;
  v86 = v11;
  v87 = v60;
  v88 = v5;
  v83 = v57[0];
  v84 = v9;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v83) != 1)
  {
    v54 = v79;
    v55 = v80;
    v56 = v81;
    v50 = v75;
    v51 = v76;
    v52 = v77;
    v53 = v78;
    v46 = v71;
    v47 = v72;
    v48 = v73;
    v49 = v74;
    v44 = v69;
    v45 = v70;
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v44) != 1)
    {
      v43[10] = v93;
      v43[11] = v94;
      v43[12] = v95;
      v43[6] = v89;
      v43[7] = v90;
      v43[8] = v91;
      v43[9] = v92;
      v43[2] = v85;
      v43[3] = v86;
      v43[4] = v87;
      v43[5] = v88;
      v43[0] = v83;
      v43[1] = v84;
      v42[10] = v54;
      v42[11] = v55;
      v42[12] = v56;
      v42[6] = v50;
      v42[7] = v51;
      v42[8] = v52;
      v42[9] = v53;
      v42[2] = v46;
      v42[3] = v47;
      v42[4] = v48;
      v42[5] = v49;
      v42[0] = v44;
      v42[1] = v45;
      sub_242E944A0(&v69, v41);
      sub_242E944A0(v57, v41);
      sub_242E944A0(v57, v41);
      sub_242E944A0(&v69, v41);
      v39 = _s14CarPlayAssetUI10InstrumentV15PopoverLocationO18LocalConfigurationV2eeoiySbAG_AGtFZ_0(v43, v42);
      sub_242C6D138(v82, &qword_27ECFB1A8, &qword_242F44660);
      sub_242D906CC(&v69);
      sub_242D906CC(v57);
      return v39 & 1;
    }

    goto LABEL_5;
  }

  v54 = v79;
  v55 = v80;
  v56 = v81;
  v50 = v75;
  v51 = v76;
  v52 = v77;
  v53 = v78;
  v46 = v71;
  v47 = v72;
  v48 = v73;
  v49 = v74;
  v44 = v69;
  v45 = v70;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v44) != 1)
  {
LABEL_5:
    sub_242E944A0(v57, &v44);
    sub_242E944A0(&v69, &v44);
    sub_242C6D138(v82, &qword_27ECFB1A8, &qword_242F44660);
    v39 = 0;
    return v39 & 1;
  }

  sub_242C6D138(v82, &qword_27ECFB1A8, &qword_242F44660);
  v39 = 1;
  return v39 & 1;
}

uint64_t _s14CarPlayAssetUI10InstrumentV20PopoverConfigurationV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v81 = a1[10];
  v82 = v3;
  v4 = a1[11];
  v83 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v77 = a1[6];
  v78 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v79 = a1[8];
  v80 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v73 = a1[2];
  v74 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v75 = a1[4];
  v76 = v12;
  v13 = a1[1];
  v71 = *a1;
  v72 = v13;
  v14 = a2[9];
  v15 = a2[11];
  v94 = a2[10];
  v95 = v15;
  v16 = a2[11];
  v96 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v90 = a2[6];
  v91 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v93 = a2[9];
  v92 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v86 = a2[2];
  v87 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v89 = a2[5];
  v88 = v24;
  v27 = *a2;
  v28 = *a2;
  v85 = a2[1];
  v84 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v97[10] = a1[10];
  v97[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v97[6] = a1[6];
  v97[7] = v32;
  v33 = a1[8];
  v97[9] = v29;
  v97[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v97[2] = a1[2];
  v97[3] = v35;
  v36 = a1[4];
  v97[5] = v31;
  v97[4] = v36;
  v37 = *a1;
  v97[1] = v34;
  v97[0] = v37;
  v97[22] = v14;
  v97[23] = v94;
  v38 = a2[12];
  v97[24] = v16;
  v97[25] = v38;
  v97[18] = v17;
  v97[19] = v90;
  v97[20] = v20;
  v97[21] = v21;
  v97[14] = v22;
  v97[15] = v86;
  v97[16] = v25;
  v97[17] = v26;
  v97[12] = a1[12];
  v97[13] = v28;
  v108 = v81;
  v109 = v4;
  v110 = a1[12];
  v104 = v77;
  v105 = v7;
  v106 = v79;
  v107 = v2;
  v100 = v73;
  v101 = v11;
  v102 = v75;
  v103 = v5;
  v98 = v71;
  v99 = v9;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v98) != 1)
  {
    v68 = v94;
    v69 = v95;
    v70 = v96;
    v64 = v90;
    v65 = v91;
    v66 = v92;
    v67 = v93;
    v60 = v86;
    v61 = v87;
    v62 = v88;
    v63 = v89;
    v58 = v84;
    v59 = v85;
    if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v58) != 1)
    {
      v55 = v108;
      v56 = v109;
      v57 = v110;
      v51 = v104;
      v52 = v105;
      v53 = v106;
      v54 = v107;
      v47 = v100;
      v48 = v101;
      v49 = v102;
      v50 = v103;
      v45 = v98;
      v46 = v99;
      v44[10] = v68;
      v44[11] = v69;
      v44[12] = v70;
      v44[6] = v64;
      v44[7] = v65;
      v44[8] = v66;
      v44[9] = v67;
      v44[2] = v60;
      v44[3] = v61;
      v44[4] = v62;
      v44[5] = v63;
      v44[0] = v58;
      v44[1] = v59;
      sub_242E944A0(&v84, v43);
      sub_242E944A0(&v71, v43);
      sub_242E944A0(&v71, v43);
      sub_242E944A0(&v84, v43);
      v39 = _s14CarPlayAssetUI10InstrumentV15PopoverLocationO18LocalConfigurationV2eeoiySbAG_AGtFZ_0(&v45, v44);
      sub_242C6D138(v97, &qword_27ECFB1A8, &qword_242F44660);
      sub_242D906CC(&v84);
      sub_242D906CC(&v71);
      return v39 & 1;
    }

    v55 = v81;
    v56 = v82;
    v57 = v83;
    v51 = v77;
    v52 = v78;
    v53 = v79;
    v54 = v80;
    v47 = v73;
    v48 = v74;
    v49 = v75;
    v50 = v76;
    v41 = v71;
    v40 = v72;
    goto LABEL_7;
  }

  v68 = v94;
  v69 = v95;
  v70 = v96;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  v67 = v93;
  v60 = v86;
  v61 = v87;
  v62 = v88;
  v63 = v89;
  v58 = v84;
  v59 = v85;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v58) != 1)
  {
    v55 = v94;
    v56 = v95;
    v57 = v96;
    v51 = v90;
    v52 = v91;
    v53 = v92;
    v54 = v93;
    v47 = v86;
    v48 = v87;
    v49 = v88;
    v50 = v89;
    v40 = v85;
    v41 = v84;
LABEL_7:
    v45 = v41;
    v46 = v40;
    sub_242CA321C(&v45, v44, &qword_27ECFB098, &qword_242F437F8);
    sub_242C6D138(v97, &qword_27ECFB1A8, &qword_242F44660);
    v39 = 0;
    return v39 & 1;
  }

  sub_242C6D138(v97, &qword_27ECFB1A8, &qword_242F44660);
  v39 = 1;
  return v39 & 1;
}

unint64_t sub_242E94508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB078;
  if (!qword_27ECFB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB078);
  }

  return result;
}

unint64_t sub_242E9455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB080;
  if (!qword_27ECFB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB080);
  }

  return result;
}

unint64_t sub_242E945B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB090;
  if (!qword_27ECFB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB090);
  }

  return result;
}

unint64_t sub_242E94634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB0B0;
  if (!qword_27ECFB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0B0);
  }

  return result;
}

unint64_t sub_242E946C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB0D8;
  if (!qword_27ECFB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0D8);
  }

  return result;
}

unint64_t sub_242E94714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB0E0;
  if (!qword_27ECFB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0E0);
  }

  return result;
}

unint64_t sub_242E94768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB0E8;
  if (!qword_27ECFB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0E8);
  }

  return result;
}

unint64_t sub_242E947BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB0F0;
  if (!qword_27ECFB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB0F0);
  }

  return result;
}

unint64_t sub_242E94810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB110;
  if (!qword_27ECFB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB110);
  }

  return result;
}

unint64_t sub_242E94868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB118;
  if (!qword_27ECFB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB118);
  }

  return result;
}

unint64_t sub_242E948C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB120;
  if (!qword_27ECFB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB120);
  }

  return result;
}

unint64_t sub_242E94918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB128;
  if (!qword_27ECFB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB128);
  }

  return result;
}

uint64_t sub_242E9496C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_242E949C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_242E94A60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242E94AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_242E94B20(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 200) = 0;
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_242E94BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB130;
  if (!qword_27ECFB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB130);
  }

  return result;
}

unint64_t sub_242E94C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB138;
  if (!qword_27ECFB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB138);
  }

  return result;
}

unint64_t sub_242E94C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB140;
  if (!qword_27ECFB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB140);
  }

  return result;
}

unint64_t sub_242E94CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB148;
  if (!qword_27ECFB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB148);
  }

  return result;
}

unint64_t sub_242E94D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB150;
  if (!qword_27ECFB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB150);
  }

  return result;
}

unint64_t sub_242E94DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB158;
  if (!qword_27ECFB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB158);
  }

  return result;
}

unint64_t sub_242E94DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB160;
  if (!qword_27ECFB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB160);
  }

  return result;
}

unint64_t sub_242E94E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB168;
  if (!qword_27ECFB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB168);
  }

  return result;
}

unint64_t sub_242E94EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB170;
  if (!qword_27ECFB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB170);
  }

  return result;
}

unint64_t sub_242E94F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB178;
  if (!qword_27ECFB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB178);
  }

  return result;
}

unint64_t sub_242E94F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB180;
  if (!qword_27ECFB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB180);
  }

  return result;
}

unint64_t sub_242E94FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB188;
  if (!qword_27ECFB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB188);
  }

  return result;
}

unint64_t sub_242E9500C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB190;
  if (!qword_27ECFB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB190);
  }

  return result;
}

unint64_t sub_242E95064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB198;
  if (!qword_27ECFB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB198);
  }

  return result;
}

uint64_t sub_242E950B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6D6165727473 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754265736F6C63 && a2 == 0xEB000000006E6F74 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5AC50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t TaggedValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  if ((*(v8 + 48))(v12) == 1)
  {
    v15 = sub_242F05860();
    (*(*(v15 - 8) + 8))(a1, v15);
    v17 = type metadata accessor for TaggedValue(0, a2, a3, v16);
    v18 = *(*(v17 - 8) + 56);

    return v18(a4, 1, 1, v17);
  }

  else
  {
    v20 = *(v8 + 32);
    v20(v14, a1, a3);
    v20(v10, v14, a3);
    v20(a4, v10, a3);
    v22 = type metadata accessor for TaggedValue(0, a2, a3, v21);
    return (*(*(v22 - 8) + 56))(a4, 0, 1, v22);
  }
}

uint64_t sub_242E95524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TaggedValue.init(rawValue:)(a1, a2, *(a2 + 24));
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_242E955D8@<X0>(uint64_t *a2@<X8>)
{
  result = _s14CarPlayAssetUI10EmptyArrayO7defaultSayxGvgZ_0();
  *a2 = result;
  return result;
}

uint64_t sub_242E95604@<X0>(uint64_t *a2@<X8>)
{
  result = sub_242F04C80();
  *a2 = result;
  return result;
}

uint64_t TaggedValue.description.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_242F04F90();
}

uint64_t TaggedValue.playgroundDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  a2[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v2, v3);
}

uint64_t sub_242E958CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a6)(char *, uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = *(a2 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, AssociatedTypeWitness, v18);
  a6(v15, a2, a3);
  (*(v13 + 8))(a1, AssociatedTypeWitness);
  return (*(v16 + 32))(a7, v20, a2);
}

uint64_t TaggedValue<>.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v32 = a6;
  v33 = a5;
  v34 = a7;
  v35 = a2;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_242F05860();
  v13 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v15 = &v30 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v30 - v22;
  (*(v10 + 16))(v12, a1, a4, v21);
  sub_242F05CF0();
  (*(v10 + 8))(a1, a4);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v13 + 8))(v15, v31);
    v25 = 1;
    v26 = v34;
  }

  else
  {
    v27 = *(v16 + 32);
    v27(v23, v15, a3);
    v27(v19, v23, a3);
    v26 = v34;
    v27(v34, v19, a3);
    v25 = 0;
  }

  v28 = type metadata accessor for TaggedValue(0, v35, a3, v24);
  return (*(*(v28 - 8) + 56))(v26, v25, 1, v28);
}

uint64_t sub_242E95DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t TaggedValue<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v22 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v25 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v14 = type metadata accessor for TaggedValue(0, v11, v12, v13);
  v20 = *(v14 - 8);
  v21 = v14;
  MEMORY[0x28223BE20](v14);
  v19 = &v19 - v15;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06470();
  if (v4)
  {
    sub_242C6CF00(a1, v24);
    v16 = v25;
    sub_242F054A0();

    v17 = v19;
    (*(v22 + 32))(v19, v16, a2);
  }

  else
  {
    __swift_project_boxed_opaque_existential_2Tm(v24, v24[3]);
    sub_242F06160();
    v17 = v19;
    (*(v22 + 32))(v19, v10, a2);
    __swift_destroy_boxed_opaque_existential_2Tm(v24);
  }

  (*(v20 + 32))(v23, v17, v21);
  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

void TaggedValue<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064B0();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_242F061B0();
  __swift_destroy_boxed_opaque_existential_2Tm(v5);
  if (v4)
  {
    sub_242F04D70();
  }
}

uint64_t sub_242E96200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_242E9626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v6);
}

uint64_t sub_242E962E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v6);
}

uint64_t UUID.init(stringLiteral:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B0, &qword_242F17F08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_242F036E0();
  v7 = sub_242F03720();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v8 + 32))(a3, v6, v7);
  }

  return result;
}

uint64_t sub_242E9670C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B0, &qword_242F17F08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_242F036E0();
  v8 = *(a2 - 8);
  result = (*(v8 + 48))(v7, 1, a2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v8 + 32))(a3, v7, a2);
  }

  return result;
}

uint64_t sub_242E9681C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double static PlatterShadowConfiguration.centerConsoleDefault.getter@<D0>(uint64_t a2@<X8>)
{
  sub_242F04730();
  v3 = sub_242F04770();

  *a2 = v3;
  result = 16.0;
  *(a2 + 8) = xmmword_242F2D200;
  return result;
}

uint64_t sub_242E9690C()
{
  v1 = sub_242F04000();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    sub_242F05710();
    v6 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_242E96A54@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_242F04A30();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_242F04700();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_242F03E30();
  MEMORY[0x28223BE20](v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB268, &qword_242F44DC8);
  MEMORY[0x28223BE20](v45);
  v10 = &v36 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB270, &qword_242F44DD0);
  MEMORY[0x28223BE20](v44);
  v12 = &v36 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB278, &qword_242F44DD8);
  MEMORY[0x28223BE20](v46);
  v14 = &v36 - v13;
  v15 = v1[5];
  v47 = v6;
  v16 = *(v6 + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_242F04070();
  v19 = *(*(v18 - 8) + 104);
  v43 = v17;
  v19(v8 + v16, v17, v18);
  *v8 = v15;
  v8[1] = v15;
  if (sub_242E9690C())
  {
    (*(v38 + 104))(v37, *MEMORY[0x277CE0EE0], v39);
    v49 = sub_242F047A0();
  }

  else
  {
    v20 = type metadata accessor for PlatterView(0);
    (*(v41 + 16))(v40, v1 + *(v20 + 28), v42);
  }

  v21 = sub_242F03C80();
  sub_242E97644(v8, v10);
  *&v10[*(v45 + 36)] = v21;
  v22 = &v12[*(v44 + 36)];
  v19(&v22[*(v47 + 20)], v43, v18);
  *v22 = v15;
  *(v22 + 1) = v15;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB280, &qword_242F44DE0) + 36)] = 256;
  sub_242CF6B3C(v10, v12, &qword_27ECFB268, &qword_242F44DC8);
  v23 = (v1 + *(type metadata accessor for PlatterView(0) + 32));
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  sub_242CF6B3C(v12, v14, &qword_27ECFB270, &qword_242F44DD0);
  v27 = &v14[*(v46 + 36)];
  *v27 = v24;
  *(v27 + 1) = v25;
  *(v27 + 2) = v26;

  v28 = sub_242F04A70();
  v30 = v29;
  sub_242E96F20(v1, &v49);
  v31 = v14;
  v33 = v48;
  v32 = v49;
  sub_242CF6B3C(v31, v48, &qword_27ECFB278, &qword_242F44DD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB288, &qword_242F44DE8);
  v35 = (v33 + *(result + 36));
  *v35 = v32;
  v35[1] = v28;
  v35[2] = v30;
  return result;
}

void sub_242E96F20(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  if (*(a1 + 16) != 1)
  {

    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    v14 = sub_242E976A8(v9, v8, 0);
    (*(v5 + 8))(v7, v4, v14);
    if (v15[1])
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(a1 + 5);
  v11 = [objc_allocWithZone(MEMORY[0x277CD9E18]) init];
  v12 = sub_242F04F00();

  [v11 setIdentifier_];

  [v11 setCornerRadius_];
LABEL_6:
  *a2 = v11;
}

uint64_t EnvironmentValues.opaquePlatterOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242E97388(a1, a2, a3);
  sub_242F04010();
  return v4;
}

void *sub_242E97150@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_242E97388(a2, a3, a4);
  result = sub_242F04010();
  *a1 = v6;
  return result;
}

uint64_t (*EnvironmentValues.opaquePlatterOverride.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  *(a1 + 8) = sub_242E97388(a1, a2, a3);
  sub_242F04010();
  *(a1 + 16) = *(a1 + 17);
  return sub_242E97290;
}

uint64_t PlatterShadowConfiguration.init(color:radius:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

unint64_t sub_242E97388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB240;
  if (!qword_27ECFB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB240);
  }

  return result;
}

uint64_t type metadata accessor for PlatterView(uint64_t a1)
{
  result = qword_27ECFB248;
  if (!qword_27ECFB248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242E97460(uint64_t a1)
{
  sub_242E97564(319);
  if (v1 <= 0x3F)
  {
    sub_242E975C8(319, &qword_27ECF0CA8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_242F04A30();
      if (v3 <= 0x3F)
      {
        sub_242E975C8(319, &qword_27ECFA830, &type metadata for PlatterShadowConfiguration, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E97564(uint64_t a1)
{
  if (!qword_27ECFB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB260, &qword_242F4AAF0);
    v1 = sub_242F03BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECFB258);
    }
  }
}

void sub_242E975C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_242E97644(uint64_t a1, uint64_t a2)
{
  v4 = sub_242F03E30();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_242E976A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_242E976B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_242E97714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_242E97778()
{
  result = qword_27ECFB290;
  if (!qword_27ECFB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB288, &qword_242F44DE8);
    sub_242E97830();
    sub_242C7E000(&qword_27ECFB2C8, &qword_27ECFB2D0, &qword_242F44E38, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB290);
  }

  return result;
}

unint64_t sub_242E97830()
{
  result = qword_27ECFB298;
  if (!qword_27ECFB298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB278, &qword_242F44DD8);
    v3 = sub_242E978BC();
    sub_242E97A84(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB298);
  }

  return result;
}

unint64_t sub_242E978BC()
{
  result = qword_27ECFB2A0;
  if (!qword_27ECFB2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB270, &qword_242F44DD0);
    sub_242E97974();
    sub_242C7E000(&qword_27ECFB2B8, &qword_27ECFB280, &qword_242F44DE0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2A0);
  }

  return result;
}

unint64_t sub_242E97974()
{
  result = qword_27ECFB2A8;
  if (!qword_27ECFB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB268, &qword_242F44DC8);
    sub_242E97A2C();
    sub_242C7E000(&qword_27ECF0BF8, &qword_27ECF0C00, &qword_242F0D180, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2A8);
  }

  return result;
}

unint64_t sub_242E97A2C()
{
  result = qword_27ECFB2B0;
  if (!qword_27ECFB2B0)
  {
    sub_242F03E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2B0);
  }

  return result;
}

unint64_t sub_242E97A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB2C0;
  if (!qword_27ECFB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2C0);
  }

  return result;
}

uint64_t sub_242E97AF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2D8, &qword_242F44E90);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E0, &qword_242F44E98);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *v1;
  if (*v1)
  {
    v11 = v1[1];
    v10 = v1[2];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E8, &qword_242F44EA0);
    (*(*(v12 - 8) + 16))(v8, a1, v12);
    v13 = &v8[*(v6 + 36)];
    *v13 = v9;
    *(v13 + 1) = v11;
    *(v13 + 2) = 0;
    *(v13 + 3) = v10;
    sub_242E97E50(v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_242E97D98();
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8, &qword_242F44EA0, MEMORY[0x277CE04B0]);

    sub_242F041C0();
    return sub_242E97EC0(v8);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E8, &qword_242F44EA0);
    (*(*(v15 - 8) + 16))(v5, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_242E97D98();
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8, &qword_242F44EA0, MEMORY[0x277CE04B0]);
    return sub_242F041C0();
  }
}

unint64_t sub_242E97D98()
{
  result = qword_27ECFB2F0;
  if (!qword_27ECFB2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB2E0, &qword_242F44E98);
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8, &qword_242F44EA0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB2F0);
  }

  return result;
}

uint64_t sub_242E97E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E0, &qword_242F44E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E97EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB2E0, &qword_242F44E98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242E97F28()
{
  result = qword_27ECFB300;
  if (!qword_27ECFB300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB308, &qword_242F44EA8);
    sub_242E97D98();
    sub_242C7E000(&qword_27ECFB2F8, &qword_27ECFB2E8, &qword_242F44EA0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB300);
  }

  return result;
}

double SystemUILayout.ContentArea.overrides.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void SystemUILayout.ContentArea.overrides.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void SystemUILayout.ContentArea.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t SystemUILayout.ContentArea.init(frame:zones:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = 0;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_242E980D8()
{
  v1 = 0x656D617266;
  if (*v0 != 1)
  {
    v1 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_242E98130@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E99DAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E98158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E98494(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E98194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E98494(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SystemUILayout.ContentArea.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB310, &qword_242F44EB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v17 = *(v1 + 3);
  v18 = v9;
  v16 = v1[5];
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E98494(v10, v11, v12);

  sub_242F064C0();
  *&v19 = v8;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB320, &qword_242F44EB8);
  sub_242C7E000(&qword_27ECFB328, &qword_27ECFB320, &qword_242F44EB8, &protocol conformance descriptor for Overrides<A>);
  sub_242F05EB0();

  if (!v2)
  {
    v13 = v16;
    v19 = v18;
    v20 = v17;
    v21 = 1;
    type metadata accessor for CGRect(0);
    sub_242E988CC(&qword_27ECF2330, type metadata accessor for CGRect, MEMORY[0x277CBF268]);
    sub_242F05F20();
    *&v19 = v13;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680, &unk_242F26400);
    sub_242E98830(&qword_27ECF4688, &qword_27ECF2578, &protocol conformance descriptor for Zone, MEMORY[0x277D83948]);
    sub_242F05EB0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_242E98494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB318;
  if (!qword_27ECFB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB318);
  }

  return result;
}

void SystemUILayout.ContentArea.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB330, &qword_242F44EC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E98494(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB320, &qword_242F44EB8);
    v19 = 0;
    sub_242C7E000(&qword_27ECFB338, &qword_27ECFB320, &qword_242F44EB8, &protocol conformance descriptor for Overrides<A>);
    sub_242F05D90();
    v12 = v17;

    type metadata accessor for CGRect(0);
    v19 = 1;
    sub_242E988CC(&qword_27ECF23A0, type metadata accessor for CGRect, MEMORY[0x277CBF280]);
    sub_242F05E00();
    v15 = v18;
    v16 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680, &unk_242F26400);
    v19 = 2;
    sub_242E98830(&qword_27ECF46D8, &qword_27ECF2570, &protocol conformance descriptor for Zone, MEMORY[0x277D83978]);
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v13 = v17;
    *a2 = v12;
    v14 = v16;
    *(a2 + 24) = v15;
    *(a2 + 8) = v14;
    *(a2 + 40) = v13;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242E98830(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4680, &unk_242F26400);
    sub_242E988CC(a2, type metadata accessor for Zone, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242E988CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double SystemUILayout.primaryContentArea.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;

  return result;
}

__n128 SystemUILayout.primaryContentArea.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[5];

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 24) = *(a1 + 3);
  *(v1 + 8) = result;
  *(v1 + 40) = v4;
  return result;
}

double SystemUILayout.secondaryContentArea.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_242E98A38(v2, v3, v4, v5, v6, v7);
}

double sub_242E98A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != 1)
  {
  }

  return result;
}

__n128 SystemUILayout.secondaryContentArea.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242E98AC8(v1[6], v1[7], v1[8], v1[9], v1[10], v1[11]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v6;
  v1[10] = v3;
  v1[11] = v4;
  return result;
}

double sub_242E98AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != 1)
  {
  }

  return result;
}

void SystemUILayout.persistentElements.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

uint64_t SystemUILayout.persistentElements.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 104) = *result;
  *(v1 + 112) = v2;
  return result;
}

uint64_t SystemUILayout.dualStatusBarSecondaryMaterial.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

__n128 SystemUILayout.init(primaryContentArea:secondaryContentArea:hasDualStatusBar:dualStatusBarSecondaryMaterial:hasPhysicalControlBars:hasTopStatusBar:persistentElements:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *(a1 + 40);
  v21 = a2[1];
  v22 = *a2;
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v18 = *a8;
  v19 = *(a8 + 8);
  *a9 = *a1;
  *(a9 + 8) = *(a1 + 8);
  *(a9 + 24) = *(a1 + 24);
  *(a9 + 40) = v15;
  sub_242E98AC8(1, 0, 0, 0, 0, 0);
  result = v21;
  *(a9 + 48) = v22;
  *(a9 + 64) = v21;
  *(a9 + 80) = v16;
  *(a9 + 88) = v17;
  *(a9 + 96) = a3;
  *(a9 + 120) = a4;
  *(a9 + 128) = a5 & 1;
  *(a9 + 97) = a6;
  *(a9 + 98) = a7;
  *(a9 + 104) = v18;
  *(a9 + 112) = v19;
  return result;
}

unint64_t sub_242E98D18()
{
  v1 = *v0;
  v2 = 0x7453706F54736168;
  v3 = 0xD00000000000001ELL;
  if (v1 == 5)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  v5 = 0xD000000000000014;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242E98E08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E99EC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E98E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E99238(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E98E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E99238(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SystemUILayout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB340, &qword_242F44EC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = *v2;
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = *(v2 + 64);
  v36 = *(v2 + 56);
  v37 = v9;
  v12 = *(v2 + 80);
  v34 = *(v2 + 72);
  v35 = v11;
  v32 = *(v2 + 88);
  v33 = v12;
  v43 = *(v2 + 96);
  LODWORD(v9) = *(v2 + 97);
  v30 = *(v2 + 98);
  v31 = v9;
  v26 = *(v2 + 104);
  v27 = *(v2 + 112);
  v28 = *(v2 + 120);
  v29 = *(v2 + 128);
  v13 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E99238(v13, v14, v15);

  v16 = sub_242F064C0();
  v39 = v8;
  v17 = *(v2 + 8);
  v41 = *(v2 + 24);
  v40 = v17;
  v42 = v10;
  v44 = 0;
  sub_242E9928C(v16, v18, v19);
  v20 = v38;
  sub_242F05F20();
  if (v20)
  {
  }

  else
  {
    v21 = v30;

    v39 = v37;
    *&v40 = v36;
    *(&v40 + 1) = v35;
    *&v41 = v34;
    *(&v41 + 1) = v33;
    v42 = v32;
    v44 = 1;
    sub_242E98A38(v37, v36, v35, v34, v33, v32);
    sub_242F05EB0();
    sub_242E98AC8(v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42);
    LOBYTE(v39) = 2;
    sub_242F05ED0();
    LOBYTE(v39) = 3;
    sub_242F05ED0();
    LOBYTE(v39) = v21;
    v44 = 4;
    v22 = sub_242F05F20();
    v44 = 5;
    if ((v27 & 1) == 0)
    {
      v39 = v26;
      sub_242E992E0(v22, v23, v24);
      sub_242F05F20();
    }

    LOBYTE(v39) = 6;
    sub_242F05EA0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_242E99238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB348;
  if (!qword_27ECFB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB348);
  }

  return result;
}

unint64_t sub_242E9928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB350;
  if (!qword_27ECFB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB350);
  }

  return result;
}

unint64_t sub_242E992E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB358;
  if (!qword_27ECFB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB358);
  }

  return result;
}

void SystemUILayout.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB360, &qword_242F44ED0);
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = &v37 - v5;
  v7 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E99238(v7, v8, v9);
  v10 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    sub_242E98AC8(1, 0, 0, 0, 0, 0);
  }

  else
  {
    v49 = a1;
    v13 = v4;
    v14 = v50;
    LOBYTE(v52) = 0;
    sub_242E998C0(v10, v11, v12);
    v15 = v51;
    v16 = v6;
    sub_242F05E00();
    v17 = v62;
    v18 = v63;
    v19 = v64;
    v20 = v65;
    v45 = v61;
    v46 = v66;
    LOBYTE(v52) = 1;
    sub_242F05D90();
    v21 = v49;
    v22 = v61;
    v47 = v62;
    v48 = v63;
    v43 = v65;
    v44 = v64;
    v42 = v66;
    sub_242E98AC8(1, 0, 0, 0, 0, 0);
    LOBYTE(v61) = 2;
    v23 = sub_242F05DB0();
    LOBYTE(v61) = 3;
    v40 = sub_242F05DB0();
    v41 = v23;
    LOBYTE(v61) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1400, &qword_242F503D0);
    sub_242C7E000(&qword_27ECF1408, &qword_27ECF1400, &qword_242F503D0, &protocol conformance descriptor for DecodableDefault<A>);
    sub_242F05D90();
    v39 = v52;
    LOBYTE(v52) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB370, &qword_242F44ED8);
    sub_242C7E000(&qword_27ECFB378, &qword_27ECFB370, &qword_242F44ED8, &protocol conformance descriptor for DecodableNil<A>);
    sub_242F05D90();
    v38 = v61;
    LODWORD(v37) = BYTE1(v62);
    v81 = (BYTE1(v62) | v62) & 1;
    v82 = 6;
    v24 = sub_242F05D80();
    v26 = v25;
    v40 &= 1u;
    v41 &= 1u;
    v39 &= 1u;
    v27 = v38;
    if (v37)
    {
      v27 = 0;
    }

    v37 = v24;
    v38 = v27;
    (*(v13 + 8))(v16, v15);
    v80 = v26 & 1;
    *&v52 = v45;
    *(&v52 + 1) = v17;
    *&v53 = v18;
    *(&v53 + 1) = v19;
    *&v54 = v20;
    *(&v54 + 1) = v46;
    *&v55 = v22;
    v28 = v22;
    *(&v55 + 1) = v47;
    *&v56 = v48;
    v30 = v43;
    v29 = v44;
    *(&v56 + 1) = v44;
    *&v57 = v43;
    v31 = v42;
    *(&v57 + 1) = v42;
    LOBYTE(v58) = v41;
    BYTE1(v58) = v40;
    BYTE2(v58) = v39;
    *(&v58 + 1) = v38;
    LODWORD(v51) = v81;
    LOBYTE(v59) = v81;
    *(&v59 + 1) = v37;
    v32 = v80;
    v60 = v80;
    v33 = v57;
    *(v14 + 64) = v56;
    *(v14 + 80) = v33;
    v34 = v55;
    *(v14 + 32) = v54;
    *(v14 + 48) = v34;
    v35 = v53;
    *v14 = v52;
    *(v14 + 16) = v35;
    *(v14 + 128) = v32;
    v36 = v59;
    *(v14 + 96) = v58;
    *(v14 + 112) = v36;
    sub_242E0EBBC(&v52, &v61);
    __swift_destroy_boxed_opaque_existential_2Tm(v21);
    v61 = v45;
    v62 = v17;
    v63 = v18;
    v64 = v19;
    v65 = v20;
    v66 = v46;
    v67 = v28;
    v68 = v47;
    v69 = v48;
    v70 = v29;
    v71 = v30;
    v72 = v31;
    v73 = v41;
    v74 = v40;
    v75 = v39;
    v76 = v38;
    v77 = v51;
    v78 = v37;
    v79 = v32;
    sub_242E0EC18(&v61);
  }
}

unint64_t sub_242E998C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB368;
  if (!qword_27ECFB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB368);
  }

  return result;
}

unint64_t sub_242E99914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E998C0(a1, a2, a3);
  *(a1 + 16) = v4;
  result = sub_242E9928C(v4, v5, v6);
  *(a1 + 24) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI14SystemUILayoutV11ContentAreaVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_242E999CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
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

uint64_t sub_242E99A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_242E99AB0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_242E99B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_242E99BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB380;
  if (!qword_27ECFB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB380);
  }

  return result;
}

unint64_t sub_242E99BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB388;
  if (!qword_27ECFB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB388);
  }

  return result;
}

unint64_t sub_242E99C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB390;
  if (!qword_27ECFB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB390);
  }

  return result;
}

unint64_t sub_242E99CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB398;
  if (!qword_27ECFB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB398);
  }

  return result;
}

unint64_t sub_242E99D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB3A0;
  if (!qword_27ECFB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB3A0);
  }

  return result;
}

unint64_t sub_242E99D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB3A8;
  if (!qword_27ECFB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB3A8);
  }

  return result;
}

uint64_t sub_242E99DAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE900000000000073;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242E99EC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F5CE60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5CE80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5CEA0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5CEC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7453706F54736168 && a2 == 0xEF72614273757461 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5CEE0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000242F5CF00 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__C::CGRect __swiftcall CGRect.rounded()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  v8 = round(CGRectGetMinX(*&v0));
  v15.origin.x = v7;
  v15.origin.y = v6;
  v15.size.width = v5;
  v15.size.height = v4;
  v9 = round(CGRectGetMinY(v15));
  v16.origin.x = v7;
  v16.origin.y = v6;
  v16.size.width = v5;
  v16.size.height = v4;
  v10 = round(CGRectGetWidth(v16));
  v17.origin.x = v7;
  v17.origin.y = v6;
  v17.size.width = v5;
  v17.size.height = v4;
  v11 = round(CGRectGetHeight(v17));
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

double CGRect.inset(from:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v19 = MinY - CGRectGetMinY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMaxY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxX(v27);
  return v19;
}

CGFloat CGRect.inset(by:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15.origin.x = a5;
  v15.origin.y = a6;
  v15.size.width = a7;
  v15.size.height = a8;
  v13 = CGRectGetMinX(v15) + a2;
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  CGRectGetMinY(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  CGRectGetWidth(v17);
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  CGRectGetHeight(v18);
  return v13;
}

__C::CGRect __swiftcall CGRect.init(size:)(CGSize size)
{
  height = size.height;
  width = size.width;
  v3 = 0.0;
  v4 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

double CGSize.minSide.getter(double a1, double a2)
{
  v2 = fabs(a2);
  result = fabs(a1);
  if (result >= v2)
  {
    return v2;
  }

  return result;
}

__C::CGRect __swiftcall CGSize.centered(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MinX = CGRectGetMinX(in);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = MinX + (CGRectGetWidth(v16) - v4) * 0.5;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinY = CGRectGetMinY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v12 = MinY + (CGRectGetHeight(v18) - v3) * 0.5;
  v13 = v10;
  v14 = v4;
  v15 = v3;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

__C::CGRect __swiftcall CGSize.centeredX(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MinX = CGRectGetMinX(in);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = MinX + (CGRectGetWidth(v15) - v4) * 0.5;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v12 = v10;
  v13 = v4;
  v14 = v3;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = MinY;
  result.origin.x = v12;
  return result;
}

__C::CGRect __swiftcall CGSize.centeredY(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MinX = CGRectGetMinX(in);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MinY = CGRectGetMinY(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v11 = MinY + (CGRectGetHeight(v16) - v3) * 0.5;
  v12 = MinX;
  v13 = v4;
  v14 = v3;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

uint64_t sub_242E9A648()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFB3B0 = v16;
  *(&xmmword_27ECFB3B0 + 1) = v15;
  qword_27ECFB3C0 = v14;
  unk_27ECFB3C8 = v7;
  *&xmmword_27ECFB3D0 = v8;
  *(&xmmword_27ECFB3D0 + 1) = v9;
  qword_27ECFB3E0 = v10;
  unk_27ECFB3E8 = v11;
  qword_27ECFB3F0 = result;
  return result;
}

uint64_t static Color.Ticks.orange.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFB3E0;
  v8[2] = xmmword_27ECFB3D0;
  v8[3] = *&qword_27ECFB3E0;
  v9 = qword_27ECFB3F0;
  v3 = qword_27ECFB3F0;
  v4 = *&qword_27ECFB3C0;
  v8[0] = xmmword_27ECFB3B0;
  v5 = xmmword_27ECFB3B0;
  v8[1] = *&qword_27ECFB3C0;
  *(a1 + 32) = xmmword_27ECFB3D0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.orange.setter(uint64_t a1)
{
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFB3D0;
  v5[3] = *&qword_27ECFB3E0;
  v6 = qword_27ECFB3F0;
  v5[0] = xmmword_27ECFB3B0;
  v5[1] = *&qword_27ECFB3C0;
  v2 = *(a1 + 48);
  xmmword_27ECFB3D0 = *(a1 + 32);
  *&qword_27ECFB3E0 = v2;
  qword_27ECFB3F0 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFB3B0 = *a1;
  *&qword_27ECFB3C0 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.orange.modify(uint64_t a1))()
{
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9AB10()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFB3F8 = v16;
  *(&xmmword_27ECFB3F8 + 1) = v15;
  qword_27ECFB408 = v14;
  unk_27ECFB410 = v7;
  *&xmmword_27ECFB418 = v8;
  *(&xmmword_27ECFB418 + 1) = v9;
  qword_27ECFB428 = v10;
  unk_27ECFB430 = v11;
  qword_27ECFB438 = result;
  return result;
}

uint64_t static Color.ProgressBars.orange.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFB428;
  v8[2] = xmmword_27ECFB418;
  v8[3] = *&qword_27ECFB428;
  v9 = qword_27ECFB438;
  v3 = qword_27ECFB438;
  v4 = *&qword_27ECFB408;
  v8[0] = xmmword_27ECFB3F8;
  v5 = xmmword_27ECFB3F8;
  v8[1] = *&qword_27ECFB408;
  *(a1 + 32) = xmmword_27ECFB418;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.orange.setter(uint64_t a1)
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFB418;
  v5[3] = *&qword_27ECFB428;
  v6 = qword_27ECFB438;
  v5[0] = xmmword_27ECFB3F8;
  v5[1] = *&qword_27ECFB408;
  v2 = *(a1 + 48);
  xmmword_27ECFB418 = *(a1 + 32);
  *&qword_27ECFB428 = v2;
  qword_27ECFB438 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFB3F8 = *a1;
  *&qword_27ECFB408 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.orange.modify(uint64_t a1))()
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9B014()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECFB440 = result;
  return result;
}

uint64_t static Color.Modular.orange.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECFB440;
}

double static Color.Modular.orange.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECFB440 = v1;

  return result;
}

uint64_t (*static Color.Modular.orange.modify(uint64_t a1))()
{
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9B280()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFB448 = v14;
  *(&xmmword_27ECFB448 + 1) = v7;
  qword_27ECFB458 = v8;
  unk_27ECFB460 = v9;
  *&xmmword_27ECFB468 = v10;
  *(&xmmword_27ECFB468 + 1) = v11;
  qword_27ECFB478 = result;
  return result;
}

uint64_t static Color.ACC.orange.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECFB448 + 1);
  v3 = qword_27ECFB458;
  v4 = unk_27ECFB460;
  v5 = xmmword_27ECFB468;
  v6 = qword_27ECFB478;
  *a1 = xmmword_27ECFB448;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

double static Color.ACC.orange.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF7A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFB448 = v5;
  *&qword_27ECFB458 = v4;
  xmmword_27ECFB468 = v3;
  qword_27ECFB478 = v1;

  return result;
}

uint64_t (*static Color.ACC.orange.modify(uint64_t a1))()
{
  if (qword_27ECEF7A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9B754()
{
  if (qword_27ECEF790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECFB418;
  v37 = *&qword_27ECFB428;
  v38 = qword_27ECFB438;
  v34 = xmmword_27ECFB3F8;
  v35 = *&qword_27ECFB408;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECFB3D0;
  v42 = *&qword_27ECFB3E0;
  v43 = qword_27ECFB3F0;
  v39 = xmmword_27ECFB3B0;
  v40 = *&qword_27ECFB3C0;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF7A0;
  v28 = qword_27ECFB440;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECFB448 + 1);
  v2 = qword_27ECFB458;
  v3 = unk_27ECFB460;
  v4 = xmmword_27ECFB468;
  v5 = qword_27ECFB478;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECFB448;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFB4A0 = v36;
  unk_27ECFB4B0 = v37;
  xmmword_27ECFB480 = v34;
  *algn_27ECFB490 = v35;
  unk_27ECFB4C8 = v39;
  unk_27ECFB4F8 = v42;
  qword_27ECFB4C0 = v38;
  unk_27ECFB4E8 = v41;
  unk_27ECFB4D8 = v40;
  qword_27ECFB508 = v43;
  unk_27ECFB510 = v28;
  qword_27ECFB518 = v23;
  unk_27ECFB520 = v22;
  qword_27ECFB528 = v21;
  unk_27ECFB530 = v27;
  qword_27ECFB538 = v26;
  qword_27ECFB540 = v25;
  unk_27ECFB548 = v3;
  xmmword_27ECFB550 = v4;
  qword_27ECFB560 = v24;
  unk_27ECFB568 = v20;
  qword_27ECFB570 = v19;
  qword_27ECFB578 = v11;
  unk_27ECFB580 = v12;
  qword_27ECFB588 = v13;
  unk_27ECFB590 = v14;
  qword_27ECFB598 = v15;
  unk_27ECFB5A0 = v16;
  xmmword_27ECFB5C8 = v32;
  unk_27ECFB5D8 = v33;
  xmmword_27ECFB5A8 = v30;
  unk_27ECFB5B8 = v31;
  xmmword_27ECFB5E8 = xmmword_27ECF3708;
  qword_27ECFB5F8 = qword_27ECF3718;
  unk_27ECFB600 = unk_27ECF3720;
  xmmword_27ECFB608 = xmmword_27ECF3728;
  qword_27ECFB618 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.orange.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF7A8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECFB480, sizeof(__dst));
  memcpy(a1, &xmmword_27ECFB480, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242E9BCCC()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECFB620 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightOrange.modify(uint64_t a1))()
{
  if (qword_27ECEF7B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E9C180()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFB628 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightOrange.modify(uint64_t a1))()
{
  if (qword_27ECEF7B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E9C278()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F2FF90;
  v25 = inited + 32;
  *(inited + 48) = 1;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F2FFA0;
  *(inited + 80) = 1;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECFB630[0] = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightOrange.modify(uint64_t a1))()
{
  if (qword_27ECEF7C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242E9C794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_242E9C810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_242E9C88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_242F04170();
  __break(1u);
}

uint64_t WrapViewController.init(_:updater:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_242E9C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_242E9CA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_242E9CAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_242F04330();
  __break(1u);
}

void *sub_242E9CB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a3;
  result[4] = a4;
  a8[2] = a7;
  a8[3] = result;
  return result;
}

uint64_t sub_242E9CBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  result = swift_allocObject();
  *(result + 16) = a3;
  a6[2] = a5;
  a6[3] = result;
  return result;
}

uint64_t sub_242E9CC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_242E9CCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RequestTemporaryContentModel.displayPanelIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RequestTemporaryContentModel.contentURL.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t (*RequestTemporaryContentModel.dismissHandler.getter())()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_242D5A674;
}

void RequestTemporaryContentModel.dismissHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v2 + 40) = sub_242D5A6E0;
  *(v2 + 48) = v5;
}

void (*RequestTemporaryContentModel.dismissHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_242D5D194;
  a1[1] = v5;

  return sub_242E9CEDC;
}

void sub_242E9CEDC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    *(v4 + 40) = sub_242D5D19C;
    *(v4 + 48) = v5;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;

    *(v4 + 40) = sub_242D5D19C;
    *(v4 + 48) = v6;
  }
}

uint64_t RequestTemporaryContentModel.init(displayPanelIdentifier:displayZoneIdentifier:on:userDismissible:contentURL:dismissHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  result = swift_allocObject();
  *(result + 16) = a8;
  *(result + 24) = a10;
  *(a9 + 40) = sub_242D5D19C;
  *(a9 + 48) = result;
  return result;
}

uint64_t RequestTemporaryContentModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  v4 = *(v0 + 18);
  v5 = v0[3];
  v6 = v0[4];
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001ALL, 0x8000000242F5CF20);
  MEMORY[0x245D26660](v1, v2);
  MEMORY[0x245D26660](0x2D20656E6F7A202CLL, 0xE900000000000020);
  sub_242F05C20();
  MEMORY[0x245D26660](0x202D206E6F20, 0xE600000000000000);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x245D26660](v7, v8);

  MEMORY[0x245D26660](0xD000000000000015, 0x8000000242F5CF40);
  if (v4)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v4)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x245D26660](v9, v10);

  MEMORY[0x245D26660](0xD000000000000010, 0x8000000242F5CF60);
  MEMORY[0x245D26660](v5, v6);
  return 0;
}

uint64_t _s14CarPlayAssetUI28RequestTemporaryContentModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = *(a2 + 18);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v12 = sub_242F06110(), result = 0, (v12 & 1) != 0))
  {
    if (v2)
    {
      v14 = 0x32656E6F7ALL;
    }

    else
    {
      v14 = 0x31656E6F7ALL;
    }

    if (v7)
    {
      v15 = 0x32656E6F7ALL;
    }

    else
    {
      v15 = 0x31656E6F7ALL;
    }

    if (v14 == v15)
    {
      swift_bridgeObjectRelease_n();
      result = 0;
      if (v3 != v8)
      {
        return result;
      }
    }

    else
    {
      v16 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      result = 0;
      if (v16 & 1) == 0 || ((v3 ^ v8))
      {
        return result;
      }
    }

    if (((v4 ^ v9) & 1) == 0)
    {
      if (v5 == v10 && v6 == v11)
      {
        return 1;
      }

      else
      {

        return sub_242F06110();
      }
    }
  }

  return result;
}

_BYTE *PowermeterDataIdentifiers.init(powerDataIdentifier:powerMaxDataIdentifier:powerMinDataIdentifier:powerMarkerAvailableMaxDataIdentifier:powerMarkerAvailableMinDataIdentifier:uiSceneStateDataIdentifier:powerStateDataIdentifier:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, _BYTE *a8@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  *a8 = *result;
  a8[1] = v8;
  a8[2] = v9;
  a8[3] = v10;
  a8[4] = v11;
  a8[5] = v12;
  a8[6] = v13;
  return result;
}

CarPlayAssetUI::LineCap_optional __swiftcall LineCap.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 DigiBarRadialStyle.angleConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

__n128 DigiBarRadialStyle.angleConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 24);
  *(v1 + 24) = result;
  return result;
}

uint64_t DigiBarRadialStyle.init(angleConfiguration:trackWidth:trackInset:trackLineCap:platterInset:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v6 = *(result + 16);
  v7 = *a2;
  *a3 = *result;
  *(a3 + 16) = v6;
  *(a3 + 24) = *(result + 24);
  *(a3 + 40) = a4;
  *(a3 + 44) = a5;
  *(a3 + 48) = a6;
  *(a3 + 52) = v7;
  return result;
}

unint64_t sub_242E9D5EC()
{
  v1 = *v0;
  v2 = 0x6469576B63617274;
  v3 = 0x736E496B63617274;
  v4 = 0x4972657474616C70;
  if (v1 != 3)
  {
    v4 = 0x6E694C6B63617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242E9D6A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAA320(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E9D6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA77A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E9D704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA77A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarRadialStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7B8, &qword_242F45600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[3];
  v12 = v1[4];
  v24 = *(v1 + 52);
  v13 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77A8(v13, v14, v15);
  v16 = sub_242F064C0();
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v25 = 0;
  sub_242CCED74(v16, v17, v18);
  sub_242F05F20();
  if (!v2)
  {
    v19 = v24;
    LOBYTE(v26) = 1;
    sub_242F05EF0();
    LOBYTE(v26) = 2;
    sub_242F05EF0();
    LOBYTE(v26) = 3;
    v20 = sub_242F05EF0();
    LOBYTE(v26) = v19;
    v25 = 4;
    sub_242CD0B40(v20, v21, v22);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DigiBarRadialStyle.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 52);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D279D0](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x245D279D0](*&v6);
  sub_242F063B0();
  sub_242C9457C(v3, v4);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  return MEMORY[0x245D279A0](v5);
}

uint64_t DigiBarRadialStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 52);
  sub_242F06390();
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x245D279D0](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  sub_242F063B0();
  sub_242C9457C(v3, v4);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v5);
  return sub_242F063E0();
}

uint64_t DigiBarRadialStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7C8, &qword_242F45608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77A8(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    HIBYTE(v31) = 0;
    sub_242CCEE1C(v12, v13, v14);
    sub_242F05E00();
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v19 = v36;
    LOBYTE(v32) = 1;
    sub_242F05DD0();
    v21 = v20;
    LOBYTE(v32) = 2;
    sub_242F05DD0();
    v23 = v22;
    LOBYTE(v32) = 3;
    v24 = sub_242F05DD0();
    v27 = v26;
    HIBYTE(v31) = 4;
    sub_242CD0A98(v24, v28, v29);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v30 = v32;
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
    *(a2 + 32) = v19;
    *(a2 + 40) = v21;
    *(a2 + 44) = v23;
    *(a2 + 48) = v27;
    *(a2 + 52) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E9DE64(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 52);
  sub_242F06390();
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  sub_242C9457C(v4, v5);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v6);
  return sub_242F063E0();
}

void __swiftcall DigiBarLinearStyle.init(trackWidth:leftInset:rightInset:centerOffset:isRTL:)(CarPlayAssetUI::DigiBarLinearStyle *__return_ptr retstr, Swift::Float trackWidth, Swift::Float leftInset, Swift::Float rightInset, Swift::Float centerOffset, Swift::Bool isRTL)
{
  retstr->trackWidth = trackWidth;
  retstr->leftInset = leftInset;
  retstr->rightInset = rightInset;
  retstr->centerOffset = centerOffset;
  retstr->isRTL = isRTL;
}

uint64_t sub_242E9E070()
{
  v1 = *v0;
  v2 = 0x6469576B63617274;
  v3 = 0x736E497468676972;
  v4 = 0x664F7265746E6563;
  if (v1 != 3)
  {
    v4 = 0x4C54527369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65736E497466656CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242E9E118@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAA4F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E9E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA77FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E9E17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA77FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarLinearStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7D0, &qword_242F45610);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77FC(v7, v8, v9);
  sub_242F064C0();
  v16 = 0;
  sub_242F05EF0();
  if (!v1)
  {
    v15 = 1;
    sub_242F05EF0();
    v14 = 2;
    sub_242F05EF0();
    v13 = 3;
    sub_242F05EF0();
    v12 = 4;
    sub_242F05ED0();
  }

  return (*(v4 + 8))(v6, v3);
}

void DigiBarLinearStyle.hash(into:)()
{
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063B0();
}

uint64_t DigiBarLinearStyle.hashValue.getter()
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t DigiBarLinearStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7E0, &qword_242F45618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA77FC(v9, v10, v11);
  sub_242F06480();
  if (!v2)
  {
    v27 = 0;
    sub_242F05DD0();
    v13 = v12;
    v26 = 1;
    sub_242F05DD0();
    v15 = v14;
    v25 = 2;
    sub_242F05DD0();
    v17 = v16;
    v24 = 3;
    sub_242F05DD0();
    v20 = v19;
    v23 = 4;
    v21 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v13;
    *(a2 + 4) = v15;
    *(a2 + 8) = v17;
    *(a2 + 12) = v20;
    *(a2 + 16) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E9E758(uint64_t a1)
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::CornerCurve_optional __swiftcall CornerCurve.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DigiBarRectangularStyle.progressLimit.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t DigiBarRectangularStyle.blurConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return sub_242DE5018(v2, v3, v4, v5);
}

__n128 DigiBarRectangularStyle.blurConfiguration.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_242D3CBDC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

__n128 DigiBarRectangularStyle.init(cornerRadius:cornerCurve:isRTL:roundedProgress:progressLimit:blurConfiguration:)@<Q0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>, float a7@<S0>)
{
  v8 = *a1;
  v12 = *a5;
  v9 = a5[1].n128_u64[0];
  v10 = a5[1].n128_u8[8];
  a6->n128_f32[0] = a7;
  a6->n128_u8[4] = v8;
  a6->n128_u8[5] = a2;
  a6->n128_u8[6] = a3;
  a6->n128_u32[2] = a4;
  a6->n128_u8[12] = BYTE4(a4) & 1;
  sub_242D3CBDC(0, 0, 0, 255);
  result = v12;
  a6[1] = v12;
  a6[2].n128_u64[0] = v9;
  a6[2].n128_u8[8] = v10;
  return result;
}

uint64_t sub_242E9EB28()
{
  v1 = *v0;
  v2 = 0x615272656E726F63;
  v3 = 0x506465646E756F72;
  v4 = 0x73736572676F7270;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x754372656E726F63;
  if (v1 != 1)
  {
    v5 = 0x4C54527369;
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

uint64_t sub_242E9EC0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAA6B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E9EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7850(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E9EC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7850(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarRectangularStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB7E8, &qword_242F45620);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = *(v1 + 4);
  v31 = *(v1 + 5);
  v32 = v8;
  v30 = *(v1 + 6);
  v27 = *(v1 + 8);
  v28 = *(v1 + 12);
  v9 = *(v1 + 24);
  v29 = *(v1 + 16);
  v10 = *(v1 + 32);
  v25 = v9;
  v26 = v10;
  v11 = *(v1 + 40);
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7850(v12, v13, v14);
  sub_242F064C0();
  LOBYTE(v33) = 0;
  v15 = sub_242F05EF0();
  if (!v2)
  {
    v18 = v28;
    HIDWORD(v24) = v11;
    v19 = v29;
    LOBYTE(v33) = v32;
    v37[0] = 1;
    sub_242EA78A4(v15, v16, v17);
    sub_242F05F20();
    LOBYTE(v33) = 2;
    sub_242F05ED0();
    LOBYTE(v33) = 3;
    sub_242F05ED0();
    LOBYTE(v33) = 4;
    v37[0] = v18;
    sub_242F05E80();
    v33 = v19;
    v34 = v25;
    v35 = v26;
    v36 = BYTE4(v24);
    v37[0] = 5;
    v20 = sub_242DE5018(v19, v25, v26, SBYTE4(v24));
    sub_242E874A8(v20, v21, v22);
    sub_242F05EB0();
    sub_242D3CBDC(v33, v34, v35, v36);
  }

  return (*(v5 + 8))(v7, v4);
}

double DigiBarRectangularStyle.hash(into:)(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[12];
  v4 = v1[40];
  sub_242F063C0();
  MEMORY[0x245D279A0](v2);
  sub_242F063B0();
  sub_242F063B0();
  if (v3 != 1)
  {
    sub_242F063B0();
    sub_242F063C0();
    if (v4 != 255)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_242F063B0();
    return result;
  }

  sub_242F063B0();
  if (v4 == 255)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_242F063B0();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t DigiBarRectangularStyle.hashValue.getter()
{
  sub_242F06390();
  DigiBarRectangularStyle.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t DigiBarRectangularStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB800, &qword_242F45628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7850(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    return sub_242D3CBDC(0, 0, 0, 255);
  }

  else
  {
    LOBYTE(v38) = 0;
    v12 = sub_242F05DD0();
    v14 = v13;
    LOBYTE(v36) = 1;
    sub_242EA78F8(v12, v15, v16);
    sub_242F05E00();
    v17 = v38;
    LOBYTE(v38) = 2;
    v18 = sub_242F05DB0();
    LOBYTE(v38) = 3;
    v35 = sub_242F05DB0();
    LOBYTE(v38) = 4;
    v34 = sub_242F05D60();
    v53 = BYTE4(v34) & 1;
    v48 = 5;
    sub_242E87550(v34, v19, v20);
    sub_242F05D90();
    v21 = v18 & 1;
    v33 = v18 & 1;
    v35 &= 1u;
    v22 = v35;
    (*(v6 + 8))(v8, v5);
    v23 = v49;
    v24 = v50;
    v31 = v51;
    v25 = v52;
    sub_242D3CBDC(0, 0, 0, 255);
    LODWORD(v36) = v14;
    BYTE4(v36) = v17;
    BYTE5(v36) = v21;
    BYTE6(v36) = v22;
    v26 = v34;
    DWORD2(v36) = v34;
    v32 = v53;
    BYTE12(v36) = v53;
    *v37 = v23;
    *&v37[8] = v24;
    v27 = v31;
    *&v37[16] = v31;
    v37[24] = v25;
    v28 = *&v37[9];
    v29 = *v37;
    *a2 = v36;
    a2[1] = v29;
    *(a2 + 25) = v28;
    sub_242EA794C(&v36, &v38);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v38 = v14;
    v39 = v17;
    v40 = v33;
    v41 = v35;
    v42 = v26;
    v43 = v32;
    v44 = v23;
    v45 = v24;
    v46 = v27;
    v47 = v25;
    return sub_242EA7984(&v38);
  }
}

uint64_t sub_242E9F488()
{
  sub_242F06390();
  DigiBarRectangularStyle.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E9F4CC(uint64_t a1)
{
  sub_242F06390();
  DigiBarRectangularStyle.hash(into:)(v2);
  return sub_242F063E0();
}

double sub_242E9F694()
{
  *&result = 926627351;
  dword_27ECFB738 = 926627351;
  word_27ECFB73C = 20536;
  byte_27ECFB73E = 8;
  return result;
}

uint64_t static PowermeterDataIdentifiers.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7C8 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_27ECFB73C;
  v2 = byte_27ECFB73E;
  *a1 = dword_27ECFB738;
  *(a1 + 4) = v1;
  *(a1 + 6) = v2;
  return result;
}

unint64_t sub_242E9F730()
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 5)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 4u)
  {
    v2 = 0xD000000000000025;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242E9F7EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAA8CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E9F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA79B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E9F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA79B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PowermeterDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB810, &qword_242F45630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v28 = v1[2];
  v29 = v9;
  v10 = v1[3];
  v26 = v1[4];
  v27 = v10;
  v11 = v1[5];
  v24 = v1[6];
  v25 = v11;
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA79B4(v12, v13, v14);
  v15 = v4;
  v16 = sub_242F064C0();
  v43 = v8;
  v42 = 0;
  sub_242C8AC28(v16, v17, v18);
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = v27;
  v20 = v28;
  v21 = v25;
  v22 = v26;
  v41 = v29;
  v40 = 1;
  sub_242F05F20();
  v39 = v20;
  v38 = 2;
  sub_242F05F20();
  v37 = v19;
  v36 = 3;
  sub_242F05F20();
  v35 = v22;
  v34 = 4;
  sub_242F05F20();
  v33 = v21;
  v32 = 5;
  sub_242F05F20();
  v31 = v24;
  v30 = 6;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v15);
}

double PowermeterDataIdentifiers.hash(into:)(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t PowermeterDataIdentifiers.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  v4[18] = *v0;
  v5 = v1;
  v6 = v2;
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t PowermeterDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB820, &unk_242F45638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA79B4(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v42 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v43;
    v40 = 1;
    sub_242F05E00();
    v29 = v15;
    v16 = v41;
    v38 = 2;
    sub_242F05E00();
    v28 = v16;
    v17 = v39;
    v36 = 3;
    sub_242F05E00();
    v27 = v17;
    v18 = v37;
    v34 = 4;
    sub_242F05E00();
    v25 = v35;
    v26 = v18;
    v33 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C20, &qword_242F276B0);
    sub_242EA8308(&qword_27ECF4C28, &qword_27ECF4C20, &qword_242F276B0);
    sub_242F05D90();
    v24 = v32;
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB828, &qword_242F45648);
    sub_242EA8308(&qword_27ECFB830, &qword_27ECFB828, &qword_242F45648);
    sub_242F05D90();
    if (v24 == 86)
    {
      v20 = 80;
    }

    else
    {
      v20 = v24;
    }

    (*(v6 + 8))(v8, v5);
    v21 = v30;
    if (v30 == 86)
    {
      v21 = 8;
    }

    v22 = v28;
    *a2 = v29;
    a2[1] = v22;
    v23 = v26;
    a2[2] = v27;
    a2[3] = v23;
    a2[4] = v25;
    a2[5] = v20;
    a2[6] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242EA0140()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  v4[18] = *v0;
  v5 = v1;
  v6 = v2;
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t sub_242EA01A0(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  v5[18] = *v1;
  v6 = v2;
  v7 = v3;
  sub_242F06390();
  PowermeterDataIdentifiers.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t sub_242EA01F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7C8 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_27ECFB73C;
  v2 = byte_27ECFB73E;
  *a1 = dword_27ECFB738;
  *(a1 + 4) = v1;
  *(a1 + 6) = v2;
  return result;
}

_BYTE *PowermeterPowerLevelDataIdentifiers.init(powerLevelDataIdentifier:powerLevelMarkerAvailableMaxDataIdentifier:powerLevelMarkerAvailableMinDataIdentifier:uiSceneStateDataIdentifier:powerLevelStateDataIdentifier:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, _BYTE *a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  *a6 = *result;
  a6[1] = v6;
  a6[2] = v7;
  a6[3] = v8;
  a6[4] = v9;
  return result;
}

double sub_242EA03B0()
{
  *&result = 1345992984;
  dword_27ECFB73F = 1345992984;
  byte_27ECFB743 = 7;
  return result;
}

uint64_t static PowermeterPowerLevelDataIdentifiers.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_27ECFB743;
  *a1 = dword_27ECFB73F;
  *(a1 + 4) = v1;
  return result;
}

unint64_t sub_242EA0440()
{
  v1 = 0xD00000000000002ALL;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2 == 2)
  {
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_242EA04CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAAB14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EA04F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7DC8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA0530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7DC8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PowermeterPowerLevelDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB838, &qword_242F45650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v24 = v1[2];
  v25 = v9;
  v10 = v1[3];
  v22 = v1[4];
  v23 = v10;
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7DC8(v11, v12, v13);
  v14 = sub_242F064C0();
  v35 = v8;
  v34 = 0;
  sub_242C8AC28(v14, v15, v16);
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v18 = v23;
  v17 = v24;
  v19 = v22;
  v33 = v25;
  v32 = 1;
  sub_242F05F20();
  v31 = v17;
  v30 = 2;
  sub_242F05F20();
  v29 = v18;
  v28 = 3;
  sub_242F05F20();
  v27 = v19;
  v26 = 4;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

double PowermeterPowerLevelDataIdentifiers.hash(into:)(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t PowermeterPowerLevelDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t PowermeterPowerLevelDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB848, &qword_242F45658);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7DC8(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v34 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v35;
    v32 = 1;
    sub_242F05E00();
    v25 = v15;
    v16 = v33;
    v30 = 2;
    sub_242F05E00();
    v23 = v16;
    v24 = v31;
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C20, &qword_242F276B0);
    sub_242EA8308(&qword_27ECF4C28, &qword_27ECF4C20, &qword_242F276B0);
    sub_242F05D90();
    v17 = v24;
    v22 = v28;
    v26 = 4;
    sub_242F05E00();
    if (v22 == 86)
    {
      v19 = 80;
    }

    else
    {
      v19 = v22;
    }

    (*(v6 + 8))(v8, v5);
    v20 = v27;
    *a2 = v25;
    a2[1] = v23;
    a2[2] = v17;
    a2[3] = v19;
    a2[4] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242EA0D64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_27ECFB743;
  *a1 = dword_27ECFB73F;
  *(a1 + 4) = v1;
  return result;
}

uint64_t sub_242EA0DD0()
{
  v1 = 0x7261656E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x75676E6174636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6169646172;
  }
}

uint64_t sub_242EA0E2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAACC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EA0E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7E1C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA0E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7E1C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EA0ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7F18(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA0F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7F18(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EA0F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7F6C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA0F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7F6C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EA0FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7E70(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA0FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA7E70(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB850, &qword_242F45660);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB858, &qword_242F45668);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v50 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB860, &qword_242F45670);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB868, &qword_242F45678);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v61 = v1[2];
  v62 = v12;
  v16 = v1[4];
  v15 = v1[5];
  v58 = v14;
  v59 = v16;
  v60 = v15;
  v17 = *(v1 + 52);
  v18 = *(v1 + 12);
  v19 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA7E1C(v19, v20, v21);
  v22 = sub_242F064C0();
  if (v17 >> 6)
  {
    if (v17 >> 6 == 1)
    {
      v25 = v62;
      v26 = HIDWORD(v62);
      LOBYTE(v65) = 1;
      sub_242EA7F18(v22, v23, v24);
      v27 = v52;
      v28 = v64;
      v29 = sub_242F05E40();
      v65 = v13;
      v66 = __PAIR64__(v26, v25);
      LOBYTE(v67) = v61 & 1;
      sub_242E871B4(v29, v30, v31);
      v32 = v54;
      sub_242F05F20();
      (*(v53 + 8))(v27, v32);
      return (*(v63 + 8))(v11, v28);
    }

    else
    {
      v43 = v62;
      v74 = BYTE4(v62) & 1;
      LOBYTE(v65) = 2;
      sub_242EA7E70(v22, v23, v24);
      v44 = v55;
      v45 = v64;
      v46 = sub_242F05E40();
      LODWORD(v65) = v13;
      BYTE4(v65) = BYTE4(v13) & 1;
      BYTE5(v65) = BYTE5(v13) & 1;
      BYTE6(v65) = BYTE6(v13) & 1;
      LODWORD(v66) = v43;
      BYTE4(v66) = v74;
      v67 = v61;
      v68 = v58;
      v69 = v59;
      LOBYTE(v70) = v60;
      sub_242EA7EC4(v46, v47, v48);
      v49 = v57;
      sub_242F05F20();
      (*(v56 + 8))(v44, v49);
      return (*(v63 + 8))(v11, v45);
    }
  }

  else
  {
    v34 = v18 & 0xFFFFFF00FFFFFFFFLL | (v17 << 32);
    v35 = v60;
    v36 = HIDWORD(v60);
    v57 = HIDWORD(v34);
    v37 = v61 & 1;
    LOBYTE(v65) = 0;
    sub_242EA7F6C(v22, v23, v24);
    v38 = v64;
    v39 = sub_242F05E40();
    v65 = v13;
    v66 = v62;
    LOBYTE(v67) = v37;
    v68 = v58;
    v69 = v59;
    v70 = v35;
    v71 = v36;
    v72 = v34;
    v73 = v57;
    sub_242E8725C(v39, v40, v41);
    v42 = v51;
    sub_242F05F20();
    (*(v50 + 8))(v8, v42);
    return (*(v63 + 8))(v11, v38);
  }
}

void Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = v1[4];
  v6 = *(v1 + 52) >> 6;
  if (v6)
  {
    if (v6 == 1)
    {
      MEMORY[0x245D279A0](1);
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063B0();
    }

    else
    {
      MEMORY[0x245D279A0](2);
      DigiBarRectangularStyle.hash(into:)(a1);
    }
  }

  else
  {
    v7 = *(v1 + 12) | (*(v1 + 52) << 32);
    v8 = v1[3];
    MEMORY[0x245D279A0](0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0.0;
    }

    MEMORY[0x245D279D0](*&v9);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245D279D0](v10);
    sub_242F063B0();
    sub_242C9457C(v8, v5);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    MEMORY[0x245D279A0](HIDWORD(v7));
  }
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.Style.hashValue.getter()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 52);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v0[2];
  v10 = v2;
  v9 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB898, &qword_242F45680);
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8A0, &qword_242F45688);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8A8, &qword_242F45690);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8B0, &unk_242F45698);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = a1[3];
  v68 = a1;
  v16 = __swift_project_boxed_opaque_existential_2Tm(a1, v15);
  sub_242EA7E1C(v16, v17, v18);
  v19 = v57;
  sub_242F06480();
  if (!v19)
  {
    v57 = v12;
    v21 = v55;
    v20 = v56;
    v22 = sub_242F05E10();
    v23 = (2 * *(v22 + 16)) | 1;
    v64 = v22;
    v65 = v22 + 32;
    v66 = 0;
    v67 = v23;
    v24 = sub_242C7FBE8();
    if (v24 == 3 || v66 != v67 >> 1)
    {
      v32 = sub_242F05B10();
      swift_allocError();
      v33 = v14;
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v35 = &type metadata for Instrument.GaugeStyle.DigiBarConfiguration.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v32 - 8) + 104))(v35, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v57 + 8))(v33, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        if (v24 == 1)
        {
          LOBYTE(v58) = 1;
          sub_242EA7F18(v24, v25, v26);
          v27 = sub_242F05D10();
          v28 = v57;
          sub_242E87304(v27, v29, v30);
          v31 = v52;
          sub_242F05E00();
          (*(v53 + 8))(v7, v31);
          (*(v28 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v45 = 0;
          v46 = 0;
          v47 = v58;
          v48 = v59;
          v49 = 0x4000000000;
        }

        else
        {
          LOBYTE(v58) = 2;
          sub_242EA7E70(v24, v25, v26);
          v38 = sub_242F05D10();
          v39 = v57;
          sub_242EA7FC0(v38, v40, v41);
          v42 = v50;
          sub_242F05E00();
          (*(v54 + 8))(v21, v42);
          (*(v39 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v47 = v58;
          v48 = v59;
          v45 = v60;
          v49 = 0x8000000000;
          v46 = v61;
        }
      }

      else
      {
        LOBYTE(v58) = 0;
        sub_242EA7F6C(v24, v25, v26);
        v37 = sub_242F05D10();
        sub_242E87358(v37, v43, v44);
        sub_242F05E00();
        (*(v51 + 8))(v10, v8);
        (*(v57 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v47 = v58;
        v48 = v59;
        v45 = v60;
        v46 = v61;
        v49 = (v62 | (v63 << 32)) & 0x3FFFFFFFFLL;
      }

      *v20 = v47;
      *(v20 + 16) = v48;
      *(v20 + 32) = v45;
      *(v20 + 40) = v46;
      *(v20 + 48) = v49;
      *(v20 + 52) = BYTE4(v49);
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v68);
}

uint64_t sub_242EA1E9C()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 52);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v0[2];
  v10 = v2;
  v9 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t sub_242EA1F04(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 52);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v1[2];
  v11 = v3;
  v10 = v2;
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v6);
  return sub_242F063E0();
}

double Instrument.GaugeStyle.DigiBarConfiguration.colorsConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_242DC83D4(v2, v3);
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.colorsConfiguration.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1->n128_i64[1];
  v5 = v1[1].n128_i64[0];

  sub_242C6CEC0(v4, v5);
  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 84);
  v9 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 52) = v8;
  *(a1 + 48) = v9;
  return sub_242DE4FF4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 32));
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  v8 = *(v1 + 80);
  v7 = v1 + 80;
  sub_242D3CBB8(*(v7 - 48), *(v7 - 40), *(v7 - 32), *(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | (*(v7 + 4) << 32));
  result = *a1;
  v10 = *(a1 + 16);
  *(v7 - 48) = *a1;
  *(v7 - 32) = v10;
  *(v7 - 16) = v3;
  *(v7 - 8) = v4;
  *(v7 + 4) = v6;
  *v7 = v5;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.redlineConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v9 = *(v1 + 128);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 157);
  v3 = *(v10 + 13);
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242CA321C(v8, v7, &qword_27ECFB8C0, &qword_242F456A8);
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.redlineConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v7[2] = *(v1 + 128);
  v8[0] = v3;
  *(v8 + 13) = *(v1 + 157);
  v4 = *(v1 + 112);
  v7[0] = *(v1 + 96);
  v7[1] = v4;
  sub_242C6D138(v7, &qword_27ECFB8C0, &qword_242F456A8);
  v5 = *(a1 + 48);
  *(v1 + 128) = *(a1 + 32);
  *(v1 + 144) = v5;
  *(v1 + 157) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = result;
  return result;
}

__n128 Instrument.GaugeStyle.DigiBarConfiguration.init(colorsConfiguration:style:trackLimitGap:redlineConfiguration:minDotThreshold:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 48);
  v12 = *(a2 + 52);
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  v13 = *(a2 + 16);
  *(a4 + 32) = *a2;
  *(a4 + 48) = v13;
  *(a4 + 64) = *(a2 + 32);
  *(a4 + 84) = v12;
  *(a4 + 80) = v11;
  *(a4 + 88) = a5;
  memset(v16, 0, 69);
  sub_242C6D138(v16, &qword_27ECFB8C0, &qword_242F456A8);
  v14 = *(a3 + 48);
  *(a4 + 128) = *(a3 + 32);
  *(a4 + 144) = v14;
  *(a4 + 157) = *(a3 + 61);
  result = *(a3 + 16);
  *(a4 + 96) = *a3;
  *(a4 + 112) = result;
  *(a4 + 168) = a6;
  return result;
}

unint64_t sub_242EA230C()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 0x6D694C6B63617274;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x6854746F446E696DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242EA23C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAADDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EA23EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA8014(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA2428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA8014(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8C8, &qword_242F456B0);
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v45 = *(v1 + 24);
  v9 = v1[5];
  v44 = v1[4];
  v43 = v9;
  v10 = v1[7];
  v42 = v1[6];
  v41 = v10;
  v11 = v1[9];
  v40 = v1[8];
  v39 = v11;
  v38 = *(v1 + 84);
  v37 = *(v1 + 20);
  v12 = *(v1 + 9);
  v58 = *(v1 + 8);
  *v59 = v12;
  *&v59[13] = *(v1 + 157);
  v13 = *(v1 + 7);
  v56 = *(v1 + 6);
  v57 = v13;
  v14 = *(v1 + 42);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);

  sub_242DC83D4(v7, v8);
  sub_242EA8014(v15, v16, v17);
  v18 = sub_242F064C0();
  *&v52 = v6;
  *(&v52 + 1) = v7;
  v19 = v3;
  *&v53 = v8;
  BYTE8(v53) = v45;
  LOBYTE(v49[0]) = 0;
  sub_242DC861C(v18, v20, v21);
  v22 = v46;
  sub_242F05F20();
  if (v22)
  {
    v23 = *(&v52 + 1);
    v24 = v53;

    sub_242C6CEC0(v23, v24);
    return (*(v60 + 8))(v5, v19);
  }

  else
  {
    v26 = v60;
    v27 = v37 | (v38 << 32);
    v28 = *(&v52 + 1);
    v29 = v53;

    sub_242C6CEC0(v28, v29);
    *&v52 = v44;
    *(&v52 + 1) = v43;
    *&v53 = v42;
    *(&v53 + 1) = v41;
    *&v54 = v40;
    *(&v54 + 1) = v39;
    v55[4] = BYTE4(v27);
    *v55 = v27;
    LOBYTE(v49[0]) = 1;
    v30 = sub_242DE4FF4(v44, v43, v42, v41, v40, v39, v27);
    sub_242DE50C4(v30, v31, v32);
    sub_242F05F20();
    sub_242D3CBB8(v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), *v55 | (v55[4] << 32));
    LOBYTE(v52) = 2;
    sub_242F05EF0();
    *v55 = *v59;
    *&v55[13] = *&v59[13];
    v53 = v57;
    v54 = v58;
    v52 = v56;
    v51 = 3;
    v33 = sub_242CA321C(&v56, v49, &qword_27ECFB8C0, &qword_242F456A8);
    sub_242EA8068(v33, v34, v35);
    sub_242F05EB0();
    v49[2] = v54;
    *v50 = *v55;
    *&v50[13] = *&v55[13];
    v49[1] = v53;
    v49[0] = v52;
    sub_242C6D138(v49, &qword_27ECFB8C0, &qword_242F456A8);
    v48 = v14;
    v47 = 4;
    sub_242F05F20();
    return (*(v26 + 8))(0, v19);
  }
}

void Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v7 = *(v1 + 128);
  *v8 = v3;
  *&v8[13] = *(v1 + 157);
  v4 = *(v1 + 112);
  v5 = *(v1 + 96);
  v6 = v4;
  Instrument.GaugeStyle.DigiBarColorsConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(a1);
  sub_242F063C0();
  if (v5)
  {
    sub_242F063B0();

    sub_242DE4FF4(v6, *(&v6 + 1), v7, *(&v7 + 1), *v8, *&v8[8], *&v8[16] | (v8[20] << 32));
    sub_242C79508(a1, v5);
    sub_242F063B0();
    if (*(&v5 + 1))
    {
      sub_242C79508(a1, *(&v5 + 1));
    }

    Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(a1);
    sub_242C6D138(&v5, &qword_27ECFB8C0, &qword_242F456A8);
  }

  else
  {
    sub_242F063B0();
  }

  sub_242F063C0();
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8E0, &unk_242F456B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = a1[3];
  v103 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242EA8014(v10, v11, v12);
  v13 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v103);
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    LODWORD(v73) = 0;
    BYTE4(v73) = 0;
    return sub_242C6D138(&v69, &qword_27ECFB8C0, &qword_242F456A8);
  }

  else
  {
    v58 = v6;
    LOBYTE(v59) = 0;
    sub_242DC85C4(v13, v14, v15);
    v16 = sub_242F05E00();
    v56 = v69;
    v57 = v70;
    v18 = BYTE8(v70);
    LOBYTE(v59) = 1;
    sub_242DE516C(v16, v19, v20);
    sub_242F05E00();
    v48 = v69;
    v49 = v70;
    v50 = *(&v71 + 1);
    v47 = v71;
    v45 = 0;
    v46 = v72 | (BYTE4(v72) << 32);
    LOBYTE(v69) = 2;
    v21 = sub_242F05DD0();
    v23 = v22;
    v92[71] = 3;
    sub_242EA80BC(v21, v24, v25);
    sub_242F05D90();
    v43 = v18;
    v42 = a2;
    v44 = v93;
    v54 = v96;
    v55 = v94;
    v52 = v95;
    v53 = v97;
    v51 = v98;
    v26 = v99;
    v27 = v100;
    v28 = v101 | (v102 << 32);
    memset(v92, 0, 69);
    sub_242C6D138(v92, &qword_27ECFB8C0, &qword_242F456A8);
    v91 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D78, &qword_242F38E80);
    sub_242EA8308(&qword_27ECF8D80, &qword_27ECF8D78, &qword_242F38E80);
    sub_242F05D90();
    (*(v58 + 8))(v8, v5);
    if (v90)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v89;
    }

    v59 = v56;
    *&v60 = v57;
    BYTE8(v60) = v43;
    v61 = v48;
    v62 = v49;
    v30 = v46;
    v31 = v51;
    *&v63 = v47;
    *(&v63 + 1) = v50;
    v58 = HIDWORD(v46);
    BYTE4(v64) = BYTE4(v46);
    LODWORD(v64) = v46;
    DWORD2(v64) = v23;
    v32 = v44;
    *&v65 = v44;
    *(&v65 + 1) = v55;
    v33 = v52;
    *&v66 = v52;
    *(&v66 + 1) = v54;
    *&v67 = v53;
    *(&v67 + 1) = v51;
    *&v68[0] = v26;
    *(&v68[0] + 1) = v27;
    v45 = HIDWORD(v28);
    BYTE4(v68[1]) = BYTE4(v28);
    LODWORD(v68[1]) = v28;
    *(&v68[1] + 2) = v29;
    v34 = v68[0];
    v35 = v42;
    v42[8] = v67;
    v35[9] = v34;
    v36 = v60;
    *v35 = v59;
    v35[1] = v36;
    v37 = v61;
    v38 = v62;
    v39 = v66;
    v35[6] = v65;
    v35[7] = v39;
    v40 = v64;
    v35[4] = v63;
    v35[5] = v40;
    v35[2] = v37;
    v35[3] = v38;
    *(v35 + 156) = *(v68 + 12);
    sub_242E50D10(&v59, &v69);
    __swift_destroy_boxed_opaque_existential_2Tm(v103);
    v69 = v56;
    *&v70 = v57;
    BYTE8(v70) = v43;
    v71 = v48;
    v72 = v49;
    v73 = v47;
    v74 = v50;
    v76 = v58;
    v75 = v30;
    v77 = v23;
    v78 = v32;
    v79 = v55;
    v80 = v33;
    v81 = v54;
    v82 = v53;
    v83 = v31;
    v84 = v26;
    v85 = v27;
    v87 = v45;
    v86 = v28;
    v88 = v29;
    return sub_242E50D6C(&v69);
  }
}

uint64_t sub_242EA31EC()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EA3230(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t DigiBarMaskConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 52);
  v9 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 52) = v8;
  *(a1 + 48) = v9;
  return sub_242DE4FF4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 32));
}

__n128 DigiBarMaskConfiguration.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  sub_242D3CBB8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48) | (*(v1 + 52) << 32));
  result = *a1;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 52) = v6;
  *(v1 + 48) = v5;
  return result;
}

__n128 DigiBarMaskConfiguration.init(style:widthExtension:blendMode:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 52);
  v11 = *a2;
  swift_beginAccess();
  *(a3 + 56) = a4;
  result = *a1;
  v13 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v13;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 52) = v10;
  *(a3 + 48) = v9;
  *(a3 + 60) = v11;
  return result;
}

uint64_t sub_242EA3448()
{
  v1 = 0x7478456874646977;
  if (*v0 != 1)
  {
    v1 = 0x646F4D646E656C62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_242EA34B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAAFA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EA34DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA82B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA82B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarMaskConfiguration.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB8F0, &qword_242F456C8);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v29 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v34 = *(v1 + 52);
  v35 = v11;
  v31 = v11 | (v34 << 32);
  v32 = v7;
  v30 = *(v1 + 60);
  v12 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v12);
  v13 = v32;
  v14 = sub_242DE4FF4(v5, v6, v8, v32, v10, v9, v31);
  sub_242EA82B4(v14, v15, v16);
  v17 = v36;
  v18 = sub_242F064C0();
  v40 = v5;
  v41 = v6;
  v42 = v8;
  v43 = v13;
  v44 = v10;
  v45 = v9;
  v47 = v34;
  v46 = v35;
  v39 = 0;
  sub_242DE50C4(v18, v19, v20);
  v21 = v4;
  v22 = v37;
  sub_242F05F20();
  sub_242D3CBB8(v40, v41, v42, v43, v44, v45, v46 | (v47 << 32));
  if (v22)
  {
    return (*(v38 + 8))(v4, v17);
  }

  v24 = v30;
  v25 = v38;
  LOBYTE(v40) = 1;
  v26 = sub_242F05EF0();
  LOBYTE(v40) = v24;
  v39 = 2;
  sub_242D8EEE0(v26, v27, v28);
  sub_242F05F20();
  return (*(v25 + 8))(v21, v17);
}

double DigiBarMaskConfiguration.hash(into:)(uint64_t a1)
{
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(a1);
  sub_242F063C0();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t DigiBarMaskConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v1);
  sub_242F063C0();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t DigiBarMaskConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB900, &qword_242F456D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA82B4(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v36) = 0;
  sub_242DE516C(v12, v13, v14);
  sub_242F05E00();
  v31 = v39;
  v34 = v40;
  v35 = v41;
  v32 = v42;
  v17 = v43;
  v16 = v44;
  v33 = v45 | (v46 << 32);
  LOBYTE(v39) = 1;
  sub_242F05DD0();
  *&v30 = v17;
  *(&v30 + 1) = v16;
  v19 = v18;
  v49 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB908, &qword_242F456D8);
  sub_242EA8308(&qword_27ECFB910, &qword_27ECFB908, &qword_242F456D8);
  sub_242F05D90();
  if (v39 == 23)
  {
    HIDWORD(v29) = byte_27ECF4CA0;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    HIDWORD(v29) = v39;
  }

  v20 = *(&v30 + 1);
  v21 = v30;
  v22 = v31;
  *&v36 = v31;
  *(&v36 + 1) = v34;
  v23 = v32;
  *&v37 = v35;
  *(&v37 + 1) = v32;
  *v38 = v30;
  v24 = v33;
  *&v38[16] = v33;
  v25 = HIDWORD(v33);
  v38[20] = BYTE4(v33);
  *&v38[24] = v19;
  v26 = BYTE4(v29);
  v38[28] = BYTE4(v29);
  v27 = v37;
  *a2 = v36;
  a2[1] = v27;
  a2[2] = *v38;
  *(a2 + 45) = *&v38[13];
  v28 = v20;
  sub_242EA835C(&v36, &v39);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v39 = v22;
  v40 = v34;
  v41 = v35;
  v42 = v23;
  v43 = v21;
  v44 = v28;
  v46 = v25;
  v45 = v24;
  v47 = v19;
  v48 = v26;
  return sub_242EA8394(&v39);
}

uint64_t sub_242EA3D64(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v2);
  sub_242F063C0();
  Instrument.Configuration.BlendMode.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t DigiBarRedlineConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 68);
  v9 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 52) = v8;
  *(a1 + 48) = v9;
  return sub_242DE4FF4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 32));
}

__n128 DigiBarRedlineConfiguration.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  v8 = *(v1 + 64);
  v7 = v1 + 64;
  sub_242D3CBB8(*(v7 - 48), *(v7 - 40), *(v7 - 32), *(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | (*(v7 + 4) << 32));
  result = *a1;
  v10 = *(a1 + 16);
  *(v7 - 48) = *a1;
  *(v7 - 32) = v10;
  *(v7 - 16) = v3;
  *(v7 - 8) = v4;
  *(v7 + 4) = v6;
  *v7 = v5;
  return result;
}

__n128 DigiBarRedlineConfiguration.init(colorIDs:crossedColorIDs:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 48);
  v5 = *(a3 + 52);
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  result = *(a3 + 32);
  *(a4 + 48) = result;
  *(a4 + 68) = v5;
  *(a4 + 64) = v4;
  return result;
}

uint64_t sub_242EA3FBC()
{
  v1 = 0x43646573736F7263;
  if (*v0 != 1)
  {
    v1 = 0x656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x734449726F6C6F63;
  }
}

uint64_t sub_242EA4020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAB0C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EA4048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA83C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA4084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA83C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarRedlineConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB918, &unk_242F456E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v29 = *(v1 + 16);
  v30 = v8;
  v11 = *(v1 + 40);
  v27 = *(v1 + 32);
  v28 = v10;
  v12 = *(v1 + 56);
  v25 = *(v1 + 48);
  v26 = v11;
  v23 = *(v1 + 68);
  v24 = v12;
  v22 = *(v1 + 64);
  v13 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA83C4(v13, v14, v15);

  sub_242F064C0();
  v31 = v9;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05F20();

  if (!v2)
  {
    v17 = v28;
    v16 = v29;
    v31 = v30;
    v39 = 1;
    sub_242F05EB0();
    v31 = v16;
    v32 = v17;
    v33 = v27;
    v34 = v26;
    v35 = v25;
    v36 = v24;
    v38 = (v22 | (v23 << 32)) >> 32;
    v37 = v22;
    v39 = 2;
    v18 = sub_242DE4FF4(v16, v17, v27, v26, v25, v24, v22 | (v23 << 32));
    sub_242DE50C4(v18, v19, v20);
    sub_242F05F20();
    sub_242D3CBB8(v31, v32, v33, v34, v35, v36, v37 | (v38 << 32));
  }

  return (*(v5 + 8))(v7, v4);
}

__n128 DigiBarRedlineConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  sub_242C79508(a1, *v1);
  sub_242F063B0();
  if (v3)
  {
    sub_242C79508(a1, v3);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(a1);
  return result;
}

uint64_t DigiBarRedlineConfiguration.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_242F06390();
  sub_242C79508(v4, v2);
  sub_242F063B0();
  if (v1)
  {
    sub_242C79508(v4, v1);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v4);
  return sub_242F063E0();
}

void DigiBarRedlineConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB928, &qword_242F456F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA83C4(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    LOBYTE(v31[0]) = 0;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05E00();
    v30 = v33[0];
    LOBYTE(v31[0]) = 1;
    v13 = sub_242F05D90();
    v14 = v33[0];
    v44 = 2;
    sub_242DE516C(v13, v15, v16);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v28 = *(&v39 + 1);
    v29 = v39;
    v17 = v40;
    v27 = *(&v41 + 1);
    v18 = v41;
    v26 = v42;
    v19 = v43;
    v20 = v30;
    *&v31[0] = v30;
    *(&v31[0] + 1) = v14;
    v31[1] = v39;
    v31[2] = v40;
    *v32 = v41;
    v32[20] = v43;
    *&v32[16] = v42;
    v21 = v31[0];
    v22 = v39;
    v23 = v40;
    v24 = v41;
    *(v12 + 61) = *&v32[13];
    *(v12 + 32) = v23;
    *(v12 + 48) = v24;
    *v12 = v21;
    *(v12 + 16) = v22;
    sub_242EA8418(v31, v33);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v33[0] = v20;
    v33[1] = v14;
    v33[2] = v29;
    v33[3] = v28;
    v34 = v17;
    v35 = v18;
    v36 = v27;
    v38 = v19;
    v37 = v26;
    sub_242EA8450(v33);
  }
}

__n128 sub_242EA48A8(uint64_t a1)
{
  v3 = v1[1];
  sub_242C79508(a1, *v1);
  sub_242F063B0();
  if (v3)
  {
    sub_242C79508(a1, v3);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(a1);
  return result;
}

uint64_t sub_242EA4954(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_242F06390();
  sub_242C79508(v5, v3);
  sub_242F063B0();
  if (v2)
  {
    sub_242C79508(v5, v2);
  }

  Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(v5);
  return sub_242F063E0();
}

__n128 DigiBandGradientProgressConfiguration.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 53);
  return result;
}

__n128 DigiBandGradientProgressConfiguration.style.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  *(v1 + 53) = *(a1 + 45);
  return result;
}

__n128 DigiBandGradientProgressConfiguration.init(colorIDs:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 53) = *(a2 + 45);
  return result;
}

BOOL static DigiBandGradientProgressConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_242C75A30(*a1, *a2))
  {
    v4 = *(a1 + 24);
    v10[0] = *(a1 + 8);
    v10[1] = v4;
    v11[0] = *(a1 + 40);
    *(v11 + 13) = *(a1 + 53);
    v5 = *(a2 + 24);
    v8[0] = *(a2 + 8);
    v8[1] = v5;
    v9[0] = *(a2 + 40);
    *(v9 + 13) = *(a2 + 53);
    return _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(v10, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242EA4B74()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x734449726F6C6F63;
  }
}

void sub_242EA4BAC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242EA4C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA8480(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA4CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA8480(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBandGradientProgressConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB930, &qword_242F456F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = *v3;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA8480(v10, v11, v12);

  sub_242F064C0();
  *&v18[0] = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05F20();

  if (!v2)
  {
    v16 = *(v3 + 3);
    v18[0] = *(v3 + 1);
    v18[1] = v16;
    v19[0] = *(v3 + 5);
    *(v19 + 13) = *(v3 + 53);
    v20 = 1;
    sub_242E8725C(v13, v14, v15);
    sub_242F05F20();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DigiBandGradientProgressConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 60);
  sub_242C79508(a1, *v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  sub_242C9457C(v4, v5);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  return MEMORY[0x245D279A0](v6);
}

uint64_t DigiBandGradientProgressConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 60);
  sub_242F06390();
  sub_242C79508(v10, v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x245D279D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  sub_242C9457C(v4, v5);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v6);
  return sub_242F063E0();
}

void DigiBandGradientProgressConfiguration.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB940, &qword_242F45700);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA8480(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    LOBYTE(v20[0]) = 0;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    v12 = sub_242F05E00();
    v13 = v21;
    v25 = 1;
    sub_242E87358(v12, v14, v15);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v29 = v26;
    v30 = v27;
    v31[0] = *v28;
    *(v31 + 13) = *&v28[13];
    *&v20[0] = v13;
    *(v20 + 8) = v26;
    *(&v20[1] + 8) = v27;
    *(&v20[2] + 8) = *v28;
    *(&v20[3] + 5) = *&v28[13];
    v16 = v20[0];
    v17 = v20[1];
    v18 = v20[2];
    *(a2 + 45) = *(&v20[2] + 13);
    a2[1] = v17;
    a2[2] = v18;
    *a2 = v16;
    sub_242EA84D4(v20, &v21);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v21 = v13;
    v22 = v29;
    v23 = v30;
    *v24 = v31[0];
    *&v24[13] = *(v31 + 13);
    sub_242EA850C(&v21);
  }
}

uint64_t sub_242EA544C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 60);
  sub_242F06390();
  sub_242C79508(v11, v2);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x245D279D0](*&v9);
  sub_242F063B0();
  sub_242C9457C(v5, v6);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  MEMORY[0x245D279A0](v7);
  return sub_242F063E0();
}

BOOL sub_242EA5564(uint64_t a1, uint64_t a2)
{
  if (sub_242C75A30(*a1, *a2))
  {
    v4 = *(a1 + 24);
    v10[0] = *(a1 + 8);
    v10[1] = v4;
    v11[0] = *(a1 + 40);
    *(v11 + 13) = *(a1 + 53);
    v5 = *(a2 + 24);
    v8[0] = *(a2 + 8);
    v8[1] = v5;
    v9[0] = *(a2 + 40);
    *(v9 + 13) = *(a2 + 53);
    return _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(v10, v8);
  }

  else
  {
    return 0;
  }
}

double sub_242EA55F0()
{
  if (qword_27ECEF780 != -1)
  {
    swift_once();
  }

  xmmword_27ECFB748 = xmmword_27ECFAF30;
  qword_27ECFB758 = byte_27ECFAF40;
  unk_27ECFB760 = *dbl_27ECFAF48;
  result = 8192.00201;
  qword_27ECFB770 = 0x40C0000041F00000;
  dword_27ECFB778 = 0;
  byte_27ECFB77C = 0;
  return result;
}

uint64_t static Instrument.GaugeStyle.DigiBarConfiguration.Style.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D8 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v2 = xmmword_27ECFB748;
  v3 = qword_27ECFB758;
  v4 = unk_27ECFB760;
  v5 = qword_27ECFB768;
  v6 = qword_27ECFB770;
  v7 = byte_27ECFB77C;
  v8 = dword_27ECFB778;
  v9 = dword_27ECFB778 | (byte_27ECFB77C << 32);
  *a1 = xmmword_27ECFB748;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 52) = v7;
  *(a1 + 48) = v8;

  return sub_242DE4FF4(v2, *(&v2 + 1), v3, v4, v5, v6, v9);
}

uint64_t sub_242EA5708@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7D8 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v2 = xmmword_27ECFB748;
  v3 = qword_27ECFB758;
  v4 = unk_27ECFB760;
  v5 = qword_27ECFB768;
  v6 = qword_27ECFB770;
  v7 = byte_27ECFB77C;
  v8 = dword_27ECFB778;
  v9 = dword_27ECFB778 | (byte_27ECFB77C << 32);
  *a1 = xmmword_27ECFB748;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 52) = v7;
  *(a1 + 48) = v8;

  return sub_242DE4FF4(v2, *(&v2 + 1), v3, v4, v5, v6, v9);
}

double sub_242EA57A0()
{
  if (qword_27ECEF780 != -1)
  {
    swift_once();
  }

  xmmword_27ECFB780 = xmmword_27ECFAF30;
  byte_27ECFB790 = byte_27ECFAF40;
  *&algn_27ECFB791[7] = *dbl_27ECFAF48;
  result = 8192.00201;
  qword_27ECFB7A8 = 0x40C0000041F00000;
  dword_27ECFB7B0 = 0;
  byte_27ECFB7B4 = 0;
  return result;
}

double static DigiBarRadialStyle.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_27ECFB790;
  *a1 = xmmword_27ECFB780;
  *(a1 + 16) = v1;
  result = dbl_27ECFB7A0;
  *(a1 + 32) = *&dbl_27ECFB7A0;
  *(a1 + 45) = *(&qword_27ECFB7A8 + 5);
  return result;
}

double sub_242EA5898@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF7E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_27ECFB790;
  *a1 = xmmword_27ECFB780;
  *(a1 + 16) = v1;
  result = dbl_27ECFB7A0;
  *(a1 + 32) = *&dbl_27ECFB7A0;
  *(a1 + 45) = *(&qword_27ECFB7A8 + 5);
  return result;
}

CarPlayAssetUI::DigiBarCruiseControlConfiguration::BarType_optional __swiftcall DigiBarCruiseControlConfiguration.BarType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DigiBarCruiseControlConfiguration.cruiseControlBarConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26[0] = v3;
  *(v26 + 12) = *(v1 + 156);
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 156) = *(v1 + 156);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_242E50D10(v18, &v17);
}

__n128 DigiBarCruiseControlConfiguration.cruiseControlBarConfiguration.setter(uint64_t a1)
{
  v3 = v1[9];
  v13[8] = v1[8];
  v14[0] = v3;
  *(v14 + 12) = *(v1 + 156);
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  sub_242E50D6C(v13);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  *(v1 + 156) = *(a1 + 156);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t DigiBarCruiseControlConfiguration.trackConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[20];
  v25 = v1[19];
  v26[0] = v3;
  v4 = v1[14];
  v5 = v1[16];
  v21 = v1[15];
  v6 = v21;
  v22 = v5;
  v7 = v1[16];
  v8 = v1[18];
  v23 = v1[17];
  v9 = v23;
  v24 = v8;
  v10 = v1[12];
  v18[0] = v1[11];
  v18[1] = v10;
  v11 = v1[14];
  v13 = v1[11];
  v12 = v1[12];
  v19 = v1[13];
  v14 = v19;
  v20 = v11;
  *(v26 + 12) = *(v1 + 332);
  v15 = v1[20];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 156) = *(v1 + 332);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_242E50D10(v18, &v17);
}

__n128 DigiBarCruiseControlConfiguration.trackConfiguration.setter(uint64_t a1)
{
  v3 = v1[20];
  v13[8] = v1[19];
  v14[0] = v3;
  v4 = v1[16];
  v13[4] = v1[15];
  v13[5] = v4;
  v5 = v1[18];
  v13[6] = v1[17];
  v13[7] = v5;
  v6 = v1[12];
  v13[0] = v1[11];
  v13[1] = v6;
  v7 = v1[14];
  v13[2] = v1[13];
  v13[3] = v7;
  *(v14 + 12) = *(v1 + 332);
  sub_242E50D6C(v13);
  v8 = *(a1 + 144);
  v1[19] = *(a1 + 128);
  v1[20] = v8;
  *(v1 + 332) = *(a1 + 156);
  v9 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v9;
  v10 = *(a1 + 112);
  v1[17] = *(a1 + 96);
  v1[18] = v10;
  v11 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v11;
  result = *(a1 + 48);
  v1[13] = *(a1 + 32);
  v1[14] = result;
  return result;
}

__n128 DigiBarCruiseControlConfiguration.init(cruiseControlBarConfiguration:trackConfiguration:type:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = a1[9];
  *(a4 + 128) = a1[8];
  *(a4 + 144) = v5;
  *(a4 + 156) = *(a1 + 156);
  v6 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v6;
  v7 = a1[7];
  *(a4 + 96) = a1[6];
  *(a4 + 112) = v7;
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  v9 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v9;
  v10 = *(a2 + 144);
  *(a4 + 304) = *(a2 + 128);
  *(a4 + 320) = v10;
  *(a4 + 332) = *(a2 + 156);
  v11 = *(a2 + 80);
  *(a4 + 240) = *(a2 + 64);
  *(a4 + 256) = v11;
  v12 = *(a2 + 112);
  *(a4 + 272) = *(a2 + 96);
  *(a4 + 288) = v12;
  v13 = *(a2 + 16);
  *(a4 + 176) = *a2;
  *(a4 + 192) = v13;
  result = *(a2 + 48);
  *(a4 + 208) = *(a2 + 32);
  *(a4 + 224) = result;
  *(a4 + 348) = v4;
  return result;
}

unint64_t sub_242EA5D54()
{
  v1 = 1701869940;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_242EA5DB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EAB1E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EA5DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA853C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EA5E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EA853C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DigiBarCruiseControlConfiguration.encode(to:)(void *a1)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB948, &qword_242F45708);
  v33 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v4 = &v31 - v3;
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[6];
  v77 = v1[7];
  v78 = v5;
  v79[0] = v6;
  *(v79 + 12) = *(v1 + 156);
  v8 = v1[5];
  v74 = v1[4];
  v75 = v8;
  v76 = v7;
  v9 = v1[1];
  v70 = *v1;
  v71 = v9;
  v10 = v1[3];
  v72 = v1[2];
  v73 = v10;
  v11 = v1[19];
  v12 = v1[20];
  v13 = v1[17];
  v87 = v1[18];
  v88 = v11;
  v89[0] = v12;
  *(v89 + 12) = *(v1 + 332);
  v14 = v1[16];
  v84 = v1[15];
  v85 = v14;
  v86 = v13;
  v15 = v1[12];
  v80 = v1[11];
  v81 = v15;
  v16 = v1[14];
  v82 = v1[13];
  v83 = v16;
  HIDWORD(v31) = *(v1 + 348);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v17 = sub_242E50D10(&v70, &v60);
  sub_242EA853C(v17, v18, v19);
  v20 = sub_242F064C0();
  v67 = v77;
  v68 = v78;
  v69[0] = v79[0];
  *(v69 + 12) = *(v79 + 12);
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v60 = v70;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v59 = 0;
  sub_242E509CC(v20, v21, v22);
  v23 = v4;
  v24 = v32;
  sub_242F05F20();
  if (v24)
  {
    v57 = v68;
    *v58 = v69[0];
    *&v58[12] = *(v69 + 12);
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v56 = v67;
    v49 = v60;
    v50 = v61;
    v51 = v62;
    v52 = v63;
    sub_242E50D6C(&v49);
    return (*(v33 + 8))(v4, v90);
  }

  else
  {
    v26 = BYTE4(v31);
    v56 = v67;
    v57 = v68;
    *v58 = v69[0];
    *&v58[12] = *(v69 + 12);
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v49 = v60;
    v50 = v61;
    v51 = v62;
    v52 = v63;
    sub_242E50D6C(&v49);
    v46 = v87;
    v47 = v88;
    v48[0] = v89[0];
    *(v48 + 12) = *(v89 + 12);
    v43 = v84;
    v44 = v85;
    v45 = v86;
    v39 = v80;
    v40 = v81;
    v41 = v82;
    v42 = v83;
    v38 = 1;
    sub_242E50D10(&v80, v36);
    v27 = v90;
    sub_242F05F20();
    v36[8] = v47;
    *v37 = v48[0];
    *&v37[12] = *(v48 + 12);
    v36[4] = v43;
    v36[5] = v44;
    v36[6] = v45;
    v36[7] = v46;
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v36[3] = v42;
    v28 = sub_242E50D6C(v36);
    v35 = v26;
    v34 = 2;
    sub_242EA8590(v28, v29, v30);
    sub_242F05F20();
    return (*(v33 + 8))(v23, v27);
  }
}

uint64_t DigiBarCruiseControlConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 348);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  return MEMORY[0x245D279A0](v3 + 1);
}

uint64_t DigiBarCruiseControlConfiguration.hashValue.getter()
{
  v1 = *(v0 + 348);
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

uint64_t DigiBarCruiseControlConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB960, &qword_242F45710);
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v21[-v6];
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EA853C(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v14 = v5;
  v35 = 0;
  sub_242E50AD0(v11, v12, v13);
  v15 = v47;
  sub_242F05E00();
  v46[8] = v44;
  v46[9] = v45[0];
  *(&v46[9] + 12) = *(v45 + 12);
  v46[4] = v40;
  v46[5] = v41;
  v46[7] = v43;
  v46[6] = v42;
  v46[0] = v36;
  v46[1] = v37;
  v46[3] = v39;
  v46[2] = v38;
  v24 = 1;
  v16 = sub_242F05E00();
  *(&v46[20] + 12) = *&v34[12];
  v46[19] = v33;
  v46[20] = *v34;
  v46[15] = v29;
  v46[16] = v30;
  v46[18] = v32;
  v46[17] = v31;
  v46[11] = v25;
  v46[12] = v26;
  v46[14] = v28;
  v46[13] = v27;
  v22[349] = 2;
  sub_242EA85E4(v16, v17, v18);
  sub_242F05E00();
  (*(v14 + 8))(v7, v15);
  v19 = v23;
  memcpy(v21, v46, 0x15CuLL);
  v21[348] = v23;
  memcpy(a2, v21, 0x15DuLL);
  sub_242EA8638(v21, v22);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  memcpy(v22, v46, 0x15CuLL);
  v22[348] = v19;
  return sub_242EA8670(v22);
}

uint64_t sub_242EA66FC()
{
  v1 = *(v0 + 348);
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v3);
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

uint64_t sub_242EA6758(uint64_t a1)
{
  v3 = *(v1 + 348);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
  return MEMORY[0x245D279A0](v3 + 1);
}

uint64_t sub_242EA67A0(uint64_t a1)
{
  v2 = *(v1 + 348);
  sub_242F06390();
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v4);
  Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(v4);
  MEMORY[0x245D279A0](v2 + 1);
  return sub_242F063E0();
}

BOOL _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24))))))
  {
    v5 = *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48);
    if (!v5 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0)
    {
      return *(a1 + 52) == *(a2 + 52);
    }
  }

  return result;
}

uint64_t _s14CarPlayAssetUI18DigiBarLinearStyleV2eeoiySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  if (vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))))
  {
    return (a2[1].u8[0] ^ a1[1].u8[0] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL _s14CarPlayAssetUI23DigiBarRectangularStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0 && ((*(a1 + 5) ^ *(a2 + 5)) & 1) == 0 && ((*(a1 + 6) ^ *(a2 + 6)) & 1) == 0)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (*(a1 + 12))
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) == *(a2 + 8))
      {
        v12 = *(a2 + 12);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (v7 == 255)
    {
      sub_242DE5018(v5, v4, v6, 255);
      if (v11 == 255)
      {
        sub_242DE5018(v9, v8, v10, 255);
        sub_242D3CBDC(v5, v4, v6, 255);
        return 1;
      }

      sub_242DE5018(v9, v8, v10, v11);
    }

    else
    {
      if (v11 != 255)
      {
        sub_242DE5018(v5, v4, v6, v7);
        sub_242DE5018(v9, v8, v10, v11);
        sub_242DE5018(v5, v4, v6, v7);
        if (*&v5 == *&v9)
        {
          v13 = sub_242E83E70();
          sub_242D3CBDC(v9, v8, v10, v11);
          sub_242C7CEB0(v4, v6, v7);
          sub_242D3CBDC(v5, v4, v6, v7);
          return (v13 & 1) != 0;
        }

        sub_242D3CBDC(v9, v8, v10, v11);
        sub_242C7CEB0(v4, v6, v7);
        v14 = v5;
        v15 = v4;
        v16 = v6;
        v17 = v7;
        goto LABEL_22;
      }

      sub_242DE5018(v5, v4, v6, v7);
      sub_242DE5018(v9, v8, v10, 255);
      sub_242DE5018(v5, v4, v6, v7);
      sub_242C7CEB0(v4, v6, v7);
    }

    sub_242D3CBDC(v5, v4, v6, v7);
    v14 = v9;
    v15 = v8;
    v16 = v10;
    v17 = v11;
LABEL_22:
    sub_242D3CBDC(v14, v15, v16, v17);
    return 0;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v73 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48) | (*(a1 + 52) << 32);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 48) | (*(a2 + 52) << 32);
  v13 = *(a1 + 52) >> 6;
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  if (!v13)
  {
    v70 = *(a1 + 8);
    v71 = *a1;
    if (((v12 >> 38) & 3) == 0)
    {
      v68 = *(a2 + 24);
      v63 = *(a2 + 16);
      v65 = *(a1 + 40);
      v54 = HIDWORD(v6);
      v59 = HIDWORD(v14);
      v56 = v10 & 1;
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a2 + 40);
      v27 = *(a2 + 8);
      v28 = *(a2 + 32);
      sub_242D3CBB8(v71, v70, v73, v4, v5, v6, v7);
      sub_242D3CBB8(v9, v27, v63, v68, v28, v26, v12);
      v84 = v71;
      v85 = v70;
      LOBYTE(v86) = v73 & 1;
      v87 = v24;
      v88 = v25;
      v89 = __PAIR64__(v54, v65);
      v90 = v7;
      v91 = BYTE4(v7);
      v74 = v9;
      v75 = v27;
      LOBYTE(v76) = v56;
      v77 = v68;
      v78 = v28;
      v79 = v26;
      v80 = v59;
      v81 = v12;
      v82 = BYTE4(v12);
      v23 = _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(&v84, &v74);
      return v23 & 1;
    }

LABEL_18:
    v69 = v11;
    v45 = v4;
    v46 = v11;
    v47 = v7;
    v48 = v5;
    v49 = v6;
    v50 = v14;
    v51 = v8;
    v52 = v15;
    sub_242DE4FF4(v9, v8, v10, v46, v15, v14, v12);
    sub_242D3CBB8(v71, v70, v73, v45, v48, v49, v47);
    sub_242D3CBB8(v9, v51, v10, v69, v52, v50, v12);
    v23 = 0;
    return v23 & 1;
  }

  if (v13 != 1)
  {
    v92 = BYTE4(v2) & 1;
    v67 = v4;
    if (((v12 >> 38) & 3) == 2)
    {
      v83 = BYTE4(v8) & 1;
      LODWORD(v84) = v3;
      BYTE4(v84) = BYTE4(v3) & 1;
      BYTE5(v84) = BYTE5(v3) & 1;
      BYTE6(v84) = BYTE6(v3) & 1;
      LODWORD(v85) = v2;
      BYTE4(v85) = v92;
      v86 = v73;
      v87 = v4;
      v88 = v5;
      LOBYTE(v89) = v6;
      LODWORD(v74) = v9;
      BYTE4(v74) = BYTE4(v9) & 1;
      BYTE5(v74) = BYTE5(v9) & 1;
      BYTE6(v74) = BYTE6(v9) & 1;
      LODWORD(v75) = v8;
      BYTE4(v75) = BYTE4(v8) & 1;
      v62 = v8;
      v64 = v10;
      v76 = v10;
      v77 = v11;
      v78 = v15;
      LOBYTE(v79) = v14;
      v60 = v5;
      v61 = v9;
      v29 = v9;
      v30 = v8;
      v31 = v10;
      v32 = v4;
      v33 = v5;
      v34 = v6;
      v72 = v14;
      v35 = v15;
      v57 = v15;
      sub_242DE4FF4(v29, v8, v31, v11, v15, v14, v12);
      v66 = v34;
      sub_242DE4FF4(v3, v2, v73, v32, v33, v34, v7);
      sub_242DE4FF4(v61, v30, v64, v11, v35, v72, v12);
      sub_242DE4FF4(v3, v2, v73, v67, v60, v34, v7);
      v23 = _s14CarPlayAssetUI23DigiBarRectangularStyleV2eeoiySbAC_ACtFZ_0(&v84, &v74);
      sub_242D3CBB8(v3, v2, v73, v67, v60, v66, v7);
      sub_242D3CBB8(v61, v62, v64, v11, v57, v72, v12);
      sub_242D3CBB8(v61, v62, v64, v11, v57, v72, v12);
      sub_242D3CBB8(v3, v2, v73, v67, v60, v66, v7);
      return v23 & 1;
    }

    v70 = v2;
    v71 = v3;
    v84 = v3;
    v85 = v2;
    v86 = v73;
    v87 = v4;
    v88 = v5;
    v89 = v6;
    v90 = v7;
    v91 = BYTE4(v7) & 0x3F;
    v36 = v10;
    v37 = v11;
    v38 = v6;
    v39 = v14;
    v40 = v8;
    v41 = v7;
    v42 = v12;
    v43 = v5;
    v44 = v15;
    sub_242CA321C(&v84, &v74, &qword_27ECFBB60, &qword_242F47F90);
    v15 = v44;
    v4 = v67;
    v5 = v43;
    v12 = v42;
    v7 = v41;
    v8 = v40;
    v14 = v39;
    v6 = v38;
    v11 = v37;
    v10 = v36;
    goto LABEL_18;
  }

  v70 = *(a1 + 8);
  v71 = *a1;
  if (((v12 >> 38) & 3) != 1)
  {
    goto LABEL_18;
  }

  v58 = HIDWORD(v9);
  v55 = HIDWORD(v8);
  v16 = *a2;
  v17 = *(a2 + 40);
  v18 = *(a2 + 8);
  v19 = *(a2 + 32);
  sub_242D3CBB8(v71, v2, v73, v4, v5, v6, *(a1 + 48) | (*(a1 + 52) << 32));
  sub_242D3CBB8(v16, v18, v10, v11, v19, v17, v12);
  v21 = *(&v71 + 1) == *&v58 && *&v71 == *&v16;
  v22 = v21 && *&v2 == *&v18;
  if (*(&v2 + 1) != *&v55)
  {
    v22 = 0;
  }

  v23 = v22 & (v10 ^ v73 ^ 1);
  return v23 & 1;
}

uint64_t _s14CarPlayAssetUI27DigiBarRedlineConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v21 = *(a1 + 56);
  v22 = *(a1 + 48);
  v7 = *(a1 + 68);
  v8 = *(a1 + 64);
  v9 = *(a2 + 8);
  v19 = *(a2 + 24);
  v20 = *(a2 + 16);
  v17 = *(a2 + 40);
  v18 = *(a2 + 32);
  v15 = *(a2 + 56);
  v16 = *(a2 + 48);
  v10 = *(a2 + 68);
  v11 = *(a2 + 64);
  if ((sub_242C75A30(*a1, *a2) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    if (v9)
    {

      v12 = sub_242C75A30(v2, v9);

      if (v12)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v22;
  v36 = v21;
  v37 = v8;
  v38 = (v8 | (v7 << 32)) >> 32;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
  v30 = (v11 | (v10 << 32)) >> 32;
  v29 = v11;
  sub_242DE4FF4(v3, v4, v5, v6, v22, v21, v8 | (v7 << 32));
  sub_242DE4FF4(v20, v19, v18, v17, v16, v15, v11 | (v10 << 32));
  v13 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(&v31, &v23);
  sub_242D3CBB8(v23, v24, v25, v26, v27, v28, v29 | (v30 << 32));
  sub_242D3CBB8(v31, v32, v33, v34, v35, v36, v37 | (v38 << 32));
  return v13 & 1;
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(void *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  v43 = v2[4];
  v42 = v2[5];
  v41 = v2[6];
  v40 = v2[7];
  v39 = v2[8];
  v38 = v2[9];
  v36 = *(v2 + 84);
  v35 = *(v2 + 20);
  v7 = *(v2 + 22);
  v8 = *(v2 + 9);
  *&v64[32] = *(v2 + 8);
  *&v64[48] = v8;
  *&v64[61] = *(v2 + 157);
  v9 = *(v2 + 7);
  *v64 = *(v2 + 6);
  *&v64[16] = v9;
  v10 = *(v2 + 42);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  LOBYTE(v2) = *(a2 + 24);
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a2[9];
  v37 = a2[8];
  v34 = *(a2 + 84);
  v33 = *(a2 + 20);
  v19 = *(a2 + 22);
  v20 = *(a2 + 9);
  *&v65[32] = *(a2 + 8);
  *&v65[48] = v20;
  *&v65[61] = *(a2 + 157);
  v21 = *(a2 + 7);
  *v65 = *(a2 + 6);
  *&v65[16] = v21;
  v22 = *(a2 + 42);
  *v53 = v3;
  *&v53[8] = v4;
  *&v53[16] = v5;
  v53[24] = v6;
  *&v49 = v11;
  *(&v49 + 1) = v12;
  *&v50 = v13;
  BYTE8(v50) = v2;

  sub_242DC83D4(v4, v5);

  v23.n128_f64[0] = sub_242DC83D4(v12, v13);
  LOBYTE(v13) = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO26DigiBarColorsConfigurationV2eeoiySbAG_AGtFZ_0(v53, &v49, v23);
  v24 = *(&v49 + 1);
  v25 = v50;

  sub_242C6CEC0(v24, v25);
  v26 = *&v53[8];
  v27 = *&v53[16];

  sub_242C6CEC0(v26, v27);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  *v53 = v43;
  *&v53[8] = v42;
  *&v53[16] = v41;
  *&v53[24] = v40;
  *&v53[32] = v39;
  *&v53[40] = v38;
  *&v53[48] = v35;
  v53[52] = (v35 | (v36 << 32)) >> 32;
  *&v49 = v14;
  *(&v49 + 1) = v15;
  *&v50 = v16;
  *(&v50 + 1) = v17;
  *&v51 = v37;
  *(&v51 + 1) = v18;
  BYTE4(v52[0]) = (v33 | (v34 << 32)) >> 32;
  LODWORD(v52[0]) = v33;
  sub_242DE4FF4(v43, v42, v41, v40, v39, v38, v35 | (v36 << 32));
  sub_242DE4FF4(v14, v15, v16, v17, v37, v18, v33 | (v34 << 32));
  v28 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(v53, &v49);
  sub_242D3CBB8(v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), LODWORD(v52[0]) | (BYTE4(v52[0]) << 32));
  sub_242D3CBB8(*v53, *&v53[8], *&v53[16], *&v53[24], *&v53[32], *&v53[40], *&v53[48] | (v53[52] << 32));
  result = 0;
  if ((v28 & 1) != 0 && v7 == v19)
  {
    v30 = *v64;
    v61 = *&v64[8];
    v62 = *&v64[24];
    v63[0] = *&v64[40];
    *(v63 + 13) = *&v64[53];
    v31 = *v65;
    v58 = *&v65[8];
    v59 = *&v65[24];
    v60[0] = *&v65[40];
    *(v60 + 13) = *&v65[53];
    if (*v64)
    {
      *v53 = *v64;
      *&v53[24] = *&v64[24];
      *&v53[8] = *&v64[8];
      *&v53[40] = *&v64[40];
      *&v53[53] = *&v64[53];
      v51 = *&v53[32];
      v52[0] = *&v53[48];
      *(v52 + 13) = *&v64[61];
      v49 = *v53;
      v50 = *&v53[16];
      if (*v65)
      {
        *&v48[8] = *&v65[8];
        *&v48[24] = *&v65[24];
        *&v48[40] = *&v65[40];
        *&v48[53] = *&v65[53];
        *v48 = *v65;
        sub_242CA321C(v64, v46, &qword_27ECFB8C0, &qword_242F456A8);
        sub_242CA321C(v65, v46, &qword_27ECFB8C0, &qword_242F456A8);
        sub_242CA321C(v53, v46, &qword_27ECFB8C0, &qword_242F456A8);
        v32 = _s14CarPlayAssetUI27DigiBarRedlineConfigurationV2eeoiySbAC_ACtFZ_0(&v49, v48);
        v44[2] = *&v48[32];
        v45[0] = *&v48[48];
        *(v45 + 13) = *&v48[61];
        v44[0] = *v48;
        v44[1] = *&v48[16];
        sub_242EA8450(v44);
        v46[2] = v51;
        v47[0] = v52[0];
        *(v47 + 13) = *(v52 + 13);
        v46[0] = v49;
        v46[1] = v50;
        sub_242EA8450(v46);
        *v48 = v30;
        *&v48[8] = v61;
        *&v48[24] = v62;
        *&v48[40] = v63[0];
        *&v48[53] = *(v63 + 13);
        sub_242C6D138(v48, &qword_27ECFB8C0, &qword_242F456A8);
        if ((v32 & 1) == 0)
        {
          return 0;
        }

        return v10 == v22;
      }

      *&v48[32] = *&v53[32];
      *&v48[48] = *&v53[48];
      *&v48[61] = *&v53[61];
      *v48 = *v53;
      *&v48[16] = *&v53[16];
      sub_242CA321C(v64, v46, &qword_27ECFB8C0, &qword_242F456A8);
      sub_242CA321C(v65, v46, &qword_27ECFB8C0, &qword_242F456A8);
      sub_242CA321C(v53, v46, &qword_27ECFB8C0, &qword_242F456A8);
      sub_242EA8450(v48);
    }

    else
    {
      if (!*v65)
      {
        *v53 = 0;
        *&v53[8] = *&v64[8];
        *&v53[24] = *&v64[24];
        *&v53[40] = *&v64[40];
        *&v53[53] = *&v64[53];
        sub_242CA321C(v64, &v49, &qword_27ECFB8C0, &qword_242F456A8);
        sub_242CA321C(v65, &v49, &qword_27ECFB8C0, &qword_242F456A8);
        sub_242C6D138(v53, &qword_27ECFB8C0, &qword_242F456A8);
        return v10 == v22;
      }

      sub_242CA321C(v64, v53, &qword_27ECFB8C0, &qword_242F456A8);
      sub_242CA321C(v65, v53, &qword_27ECFB8C0, &qword_242F456A8);
    }

    *&v53[8] = v61;
    *&v53[24] = v62;
    *&v53[40] = v63[0];
    *&v53[53] = *(v63 + 13);
    *v53 = v30;
    v54 = v31;
    v55 = v58;
    v56 = v59;
    v57[0] = v60[0];
    *(v57 + 13) = *(v60 + 13);
    sub_242C6D138(v53, &qword_27ECFBB58, &qword_242F47F88);
    return 0;
  }

  return result;
}

unint64_t sub_242EA77A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB7C0;
  if (!qword_27ECFB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7C0);
  }

  return result;
}

unint64_t sub_242EA77FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB7D8;
  if (!qword_27ECFB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7D8);
  }

  return result;
}

unint64_t sub_242EA7850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB7F0;
  if (!qword_27ECFB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7F0);
  }

  return result;
}

unint64_t sub_242EA78A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB7F8;
  if (!qword_27ECFB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB7F8);
  }

  return result;
}

unint64_t sub_242EA78F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB808;
  if (!qword_27ECFB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB808);
  }

  return result;
}

unint64_t sub_242EA79B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB818;
  if (!qword_27ECFB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB818);
  }

  return result;
}

BOOL _s14CarPlayAssetUI33DigiBarCruiseControlConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v89 = a1[8];
  v90[0] = v3;
  *(v90 + 12) = *(a1 + 156);
  v4 = a1[3];
  v5 = a1[5];
  v85 = a1[4];
  v86 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v87 = a1[6];
  v88 = v7;
  v8 = a1[1];
  v82[0] = *a1;
  v82[1] = v8;
  v9 = a1[3];
  v10 = *a1;
  v11 = a1[1];
  v83 = a1[2];
  v84 = v9;
  v12 = a1[20];
  v99 = a1[19];
  v100[0] = v12;
  *(v100 + 12) = *(a1 + 332);
  v13 = a1[16];
  v95 = a1[15];
  v96 = v13;
  v14 = a1[17];
  v98 = a1[18];
  v97 = v14;
  v15 = a1[12];
  v91 = a1[11];
  v92 = v15;
  v16 = a1[13];
  v94 = a1[14];
  v93 = v16;
  v17 = a2[7];
  v18 = a2[9];
  v106 = a2[8];
  v107[0] = v18;
  *(v107 + 12) = *(a2 + 156);
  v19 = a2[3];
  v20 = a2[5];
  v102 = a2[4];
  v103 = v20;
  v22 = a2[5];
  v21 = a2[6];
  v23 = v21;
  v105 = a2[7];
  v104 = v21;
  v24 = a2[1];
  v101[0] = *a2;
  v101[1] = v24;
  v25 = a2[2];
  v27 = *a2;
  v26 = a2[1];
  v28 = v25;
  v101[3] = a2[3];
  v101[2] = v25;
  v29 = a2[20];
  v116 = a2[19];
  v117[0] = v29;
  *(v117 + 12) = *(a2 + 332);
  v30 = a2[16];
  v112 = a2[15];
  v113 = v30;
  v31 = a2[17];
  v115 = a2[18];
  v114 = v31;
  v32 = a2[12];
  v108 = a2[11];
  v109 = v32;
  v33 = a2[13];
  v111 = a2[14];
  v110 = v33;
  v34 = a1[9];
  v80 = v89;
  v81[0] = v34;
  *(v81 + 12) = *(a1 + 156);
  v76 = v85;
  v77 = v6;
  v78 = v87;
  v79 = v2;
  v72 = v10;
  v73 = v11;
  v74 = v83;
  v75 = v4;
  v35 = a2[9];
  v70 = v106;
  v71[0] = v35;
  *(v71 + 12) = *(a2 + 156);
  v66 = v102;
  v67 = v22;
  v68 = v23;
  v69 = v17;
  v62 = v27;
  v63 = v26;
  v36 = *(a1 + 348);
  v37 = *(a2 + 348);
  v64 = v28;
  v65 = v19;
  sub_242E50D10(v82, v120);
  sub_242E50D10(v101, v120);
  v38 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v72, &v62);
  v118[8] = v70;
  v119[0] = v71[0];
  *(v119 + 12) = *(v71 + 12);
  v118[4] = v66;
  v118[5] = v67;
  v118[7] = v69;
  v118[6] = v68;
  v118[0] = v62;
  v118[1] = v63;
  v118[3] = v65;
  v118[2] = v64;
  sub_242E50D6C(v118);
  v120[8] = v80;
  v121[0] = v81[0];
  *(v121 + 12) = *(v81 + 12);
  v120[4] = v76;
  v120[5] = v77;
  v120[6] = v78;
  v120[7] = v79;
  v120[0] = v72;
  v120[1] = v73;
  v120[2] = v74;
  v120[3] = v75;
  sub_242E50D6C(v120);
  if (v38 && (v60 = v99, v61[0] = v100[0], *(v61 + 12) = *(v100 + 12), v56 = v95, v57 = v96, v58 = v97, v59 = v98, v52 = v91, v53 = v92, v54 = v93, v55 = v94, v50 = v116, v51[0] = v117[0], *(v51 + 12) = *(v117 + 12), v46 = v112, v47 = v113, v48 = v114, v49 = v115, v42 = v108, v43 = v109, v44 = v110, v45 = v111, sub_242E50D10(&v91, v41), sub_242E50D10(&v108, v41), v39 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(&v52, &v42), v70 = v50, v71[0] = v51[0], *(v71 + 12) = *(v51 + 12), v66 = v46, v67 = v47, v68 = v48, v69 = v49, v62 = v42, v63 = v43, v64 = v44, v65 = v45, sub_242E50D6C(&v62), v80 = v60, v81[0] = v61[0], *(v81 + 12) = *(v61 + 12), v76 = v56, v77 = v57, v78 = v58, v79 = v59, v72 = v52, v73 = v53, v74 = v54, v75 = v55, sub_242E50D6C(&v72), v39))
  {
    return v36 == v37;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_242EA7DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB840;
  if (!qword_27ECFB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB840);
  }

  return result;
}

unint64_t sub_242EA7E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB870;
  if (!qword_27ECFB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB870);
  }

  return result;
}

unint64_t sub_242EA7E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB878;
  if (!qword_27ECFB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB878);
  }

  return result;
}

unint64_t sub_242EA7EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB880;
  if (!qword_27ECFB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB880);
  }

  return result;
}

unint64_t sub_242EA7F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFB888;
  if (!qword_27ECFB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB888);
  }

  return result;
}
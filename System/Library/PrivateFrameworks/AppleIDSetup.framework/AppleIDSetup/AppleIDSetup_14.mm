uint64_t V1InfoHeader.osMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 96);
  return sub_2406DCE48(v2, v3);
}

__n128 V1InfoHeader.osMetadata.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_2406DCE98(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v7;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  return result;
}

uint64_t V1InfoHeader.frameworkMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406DCEE8(v2, v3);
}

__n128 V1InfoHeader.frameworkMetadata.setter(uint64_t a1)
{
  sub_2406DCF2C(v1[13], v1[14], v1[15], v1[16]);
  result = *a1;
  *(v1 + 15) = *(a1 + 16);
  *(v1 + 13) = result;
  return result;
}

uint64_t V1InfoHeader.clientMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406DCEE8(v2, v3);
}

__n128 V1InfoHeader.clientMetadata.setter(uint64_t a1)
{
  sub_2406DCF2C(v1[17], v1[18], v1[19], v1[20]);
  result = *a1;
  *(v1 + 19) = *(a1 + 16);
  *(v1 + 17) = result;
  return result;
}

void sub_2406D6F08()
{
  if (qword_27E4B5F80 != -1)
  {
    swift_once();
  }

  *(&xmmword_27E4BC4B8 + 8) = 0u;
  *&qword_27E4BC4D0 = 0u;
  *&qword_27E4BC4E0 = 0u;
  *&qword_27E4BC4F0 = 0u;
  *&xmmword_27E4BC458 = qword_27E4BC500;
  *(&xmmword_27E4BC458 + 8) = *algn_27E4BC508;
  unk_27E4BC470 = *&qword_27E4BC518;
  qword_27E4BC480 = qword_27E4BC528;
  xmmword_27E4BC488 = 0u;
  xmmword_27E4BC498 = 0u;
  xmmword_27E4BC4A8 = 0u;
  LOBYTE(xmmword_27E4BC4B8) = 0;

  sub_2406DCE98(0, 0, 0, 0, 0, 0);
  v0 = *(&xmmword_27E4BC4B8 + 1);
  v1 = unk_27E4BC4C8;
  v2 = qword_27E4BC4D0;
  v3 = unk_27E4BC4D8;
  *(&xmmword_27E4BC4B8 + 8) = 0u;
  *&qword_27E4BC4D0 = 0u;
  sub_2406DCF2C(v0, v1, v2, v3);
  v4 = qword_27E4BC4E0;
  v5 = unk_27E4BC4E8;
  v6 = qword_27E4BC4F0;
  v7 = qword_27E4BC4F8;
  *&qword_27E4BC4E0 = 0u;
  *&qword_27E4BC4F0 = 0u;

  sub_2406DCF2C(v4, v5, v6, v7);
}

__n128 V1InfoHeader.init(deviceMetadata:osMetadata:frameworkMetadata:clientMetadata:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v12;
  *(a5 + 32) = a1[2];
  sub_2406DCE98(0, 0, 0, 0, 0, 0);
  v13 = *(a2 + 16);
  *(a5 + 48) = *a2;
  *(a5 + 64) = v13;
  *(a5 + 80) = v9;
  *(a5 + 88) = v10;
  *(a5 + 96) = v11;
  sub_2406DCF2C(0, 0, 0, 0);
  v14 = *a3;
  *(a5 + 120) = a3[1];
  *(a5 + 104) = v14;
  sub_2406DCF2C(0, 0, 0, 0);
  result = *a4;
  *(a5 + 152) = *(a4 + 16);
  *(a5 + 136) = result;
  return result;
}

uint64_t static V1InfoHeader.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5F78 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = unk_27E4BC4C8;
  v13[8] = unk_27E4BC4D8;
  v13[9] = unk_27E4BC4E8;
  v2 = xmmword_27E4BC488;
  v3 = xmmword_27E4BC498;
  v13[4] = xmmword_27E4BC498;
  v13[5] = xmmword_27E4BC4A8;
  v4 = xmmword_27E4BC4A8;
  v5 = xmmword_27E4BC4B8;
  v13[6] = xmmword_27E4BC4B8;
  v13[7] = unk_27E4BC4C8;
  v13[0] = xmmword_27E4BC458;
  v13[1] = unk_27E4BC468;
  v7 = xmmword_27E4BC458;
  v6 = unk_27E4BC468;
  v8 = unk_27E4BC478;
  v13[2] = unk_27E4BC478;
  v13[3] = xmmword_27E4BC488;
  v9 = unk_27E4BC4E8;
  *(a1 + 128) = unk_27E4BC4D8;
  *(a1 + 144) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v1;
  *a1 = v7;
  *(a1 + 16) = v6;
  v14 = qword_27E4BC4F8;
  *(a1 + 160) = qword_27E4BC4F8;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  return sub_2406DCF70(v13, v12);
}

unint64_t sub_2406D71D8()
{
  v1 = 0x654D656369766564;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x654D746E65696C63;
  }

  if (*v0)
  {
    v1 = 0x61646174654D736FLL;
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

uint64_t sub_2406D7264@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E07D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406D728C(uint64_t a1)
{
  v2 = sub_2406DCFA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D72C8(uint64_t a1)
{
  v2 = sub_2406DCFA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC820, &qword_240777118);
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v40 = *(v1 + 16);
  v41 = v6;
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 56);
  v38 = *(v1 + 48);
  v39 = v9;
  v12 = *(v1 + 72);
  v36 = *(v1 + 64);
  v37 = v11;
  v13 = *(v1 + 88);
  v34 = *(v1 + 80);
  v35 = v12;
  v51 = *(v1 + 96);
  v14 = *(v1 + 112);
  v32 = *(v1 + 104);
  v33 = v13;
  v15 = *(v1 + 128);
  v30 = *(v1 + 120);
  v31 = v14;
  v29 = v15;
  v16 = *(v1 + 144);
  v25 = *(v1 + 136);
  v26 = v16;
  v17 = *(v1 + 160);
  v27 = *(v1 + 152);
  v28 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DCFA8();

  sub_24075AF74();
  v44 = v41;
  v45 = v7;
  v46 = v40;
  v47 = v8;
  v48 = v39;
  v49 = v10;
  v52 = 0;
  sub_2406DCFFC();
  v18 = v42;
  sub_24075ABE4();
  if (v18)
  {

    return (*(v43 + 8))(v5, v3);
  }

  else
  {
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v43;

    v44 = v38;
    v45 = v37;
    v46 = v36;
    v47 = v35;
    v48 = v34;
    v49 = v33;
    v50 = v51;
    v52 = 1;
    sub_2406DCE48(v38, v37);
    sub_2406DD050();
    sub_24075AB94();
    sub_2406DCE98(v44, v45, v46, v47, v48, v49);
    v44 = v22;
    v45 = v21;
    v46 = v20;
    v47 = v29;
    v52 = 2;
    sub_2406DCEE8(v22, v21);
    sub_2406DD0A4();
    sub_24075AB94();
    sub_2406DCF2C(v44, v45, v46, v47);
    v44 = v25;
    v45 = v26;
    v46 = v27;
    v47 = v28;
    v52 = 3;
    sub_2406DCEE8(v25, v26);
    sub_24075AB94();
    sub_2406DCF2C(v44, v45, v46, v47);
    return (*(v23 + 8))(v5, v3);
  }
}

uint64_t V1InfoHeader.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[14];
  v6 = v1[18];
  if (v1[1])
  {
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    if (v2)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  sub_24075AE94();
  if (v3)
  {
LABEL_4:
    sub_24075AE94();
    sub_24075A114();
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_8:
  sub_24075AE94();
  if (v4)
  {
LABEL_5:
    sub_24075AE94();
    sub_24075A114();
    sub_24075A114();
    sub_24075A114();
  }

LABEL_9:
  sub_24075AE94();
  if (!v5)
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_11;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  sub_24075A114();
  if (!v6)
  {
    return sub_24075AE94();
  }

LABEL_11:
  sub_24075AE94();
  sub_24075A114();

  return sub_24075A114();
}

uint64_t V1InfoHeader.hashValue.getter()
{
  sub_24075AE64();
  V1InfoHeader.hash(into:)(v1);
  return sub_24075AED4();
}

void V1InfoHeader.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC848, &qword_240777120);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2406DCFA8();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_2406DCE98(0, 0, 0, 0, 0, 0);
    sub_2406DCF2C(0, 0, 0, 0);
    sub_2406DCF2C(0, 0, 0, 0);
  }

  else
  {
    v41 = a2;
    v42 = v6;
    LOBYTE(v44) = 0;
    sub_2406DD0F8();
    v10 = v5;
    sub_24075AAF4();
    v11 = v53;
    v12 = v54;
    v35 = *(&v53 + 1);
    v36 = *(&v54 + 1);
    v37 = *(&v55 + 1);
    v13 = v55;
    LOBYTE(v44) = 1;
    sub_2406DD14C();
    sub_24075AAA4();
    v33 = v13;
    v34 = v12;
    v32 = v11;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v71 = v56;
    sub_2406DCE98(0, 0, 0, 0, 0, 0);
    LOBYTE(v44) = 2;
    sub_2406DD1A0();
    sub_24075AAA4();
    v31 = *(&v53 + 1);
    v14 = v53;
    v15 = v54;
    sub_2406DCF2C(0, 0, 0, 0);
    v72 = 3;
    sub_24075AAA4();
    (*(v42 + 8))(v8, v10);
    v16 = v67;
    v17 = v68;
    v42 = v67;
    v19 = v69;
    v18 = v70;
    sub_2406DCF2C(0, 0, 0, 0);
    v20 = v14;
    v30 = v14;
    v21 = v32;
    *&v44 = v32;
    *(&v44 + 1) = v35;
    *&v45 = v34;
    *(&v45 + 1) = v36;
    *&v46 = v33;
    *(&v46 + 1) = v37;
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v50[0] = v71;
    *&v50[8] = __PAIR128__(v31, v20);
    *&v50[24] = v15;
    *&v50[40] = v16;
    v22 = v17;
    *&v51 = v17;
    *(&v51 + 1) = v19;
    v23 = v18;
    v52 = v18;
    v24 = v41;
    *(v41 + 160) = v23;
    v25 = v49;
    v24[4] = v48;
    v24[5] = v25;
    v26 = v47;
    v24[2] = v46;
    v24[3] = v26;
    v27 = v51;
    v24[8] = *&v50[32];
    v24[9] = v27;
    v28 = *&v50[16];
    v24[6] = *v50;
    v24[7] = v28;
    v29 = v45;
    *v24 = v44;
    v24[1] = v29;
    sub_2406DCF70(&v44, &v53);
    __swift_destroy_boxed_opaque_existential_1(v43);
    *&v53 = v21;
    *(&v53 + 1) = v35;
    *&v54 = v34;
    *(&v54 + 1) = v36;
    *&v55 = v33;
    *(&v55 + 1) = v37;
    v56 = v38;
    v57 = v39;
    v58 = v40;
    v59 = v71;
    v60 = v30;
    v61 = v31;
    v62 = v15;
    v63 = v42;
    v64 = v22;
    v65 = v19;
    v66 = v23;
    sub_2406DD1F4(&v53);
  }
}

uint64_t sub_2406D7E58()
{
  sub_24075AE64();
  V1InfoHeader.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406D7E9C(uint64_t a1)
{
  sub_24075AE64();
  V1InfoHeader.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t V1InfoHeader.DeviceMetadata.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t V1InfoHeader.DeviceMetadata.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t V1InfoHeader.DeviceMetadata.model.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t V1InfoHeader.DeviceMetadata.model.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t V1InfoHeader.DeviceMetadata.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t V1InfoHeader.DeviceMetadata.type.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall V1InfoHeader.DeviceMetadata.init(identifier:model:type:)(AppleIDSetup::V1InfoHeader::DeviceMetadata *__return_ptr retstr, Swift::String_optional identifier, Swift::String_optional model, Swift::String_optional type)
{
  retstr->identifier = identifier;
  retstr->model = model;
  retstr->type = type;
}

void sub_2406D8080()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 uniqueDeviceIdentifier];
    if (v2)
    {
      v3 = v2;
      v4 = sub_24075A0B4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v9 = [v1 modelNumber];
    if (v9)
    {
      v10 = v9;
      v7 = sub_24075A0B4();
      v8 = v11;
    }

    else
    {

      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v4 = 0;
    v6 = 0;
  }

  qword_27E4BC500 = v4;
  *algn_27E4BC508 = v6;
  qword_27E4BC510 = v7;
  qword_27E4BC518 = v8;
  qword_27E4BC520 = 0;
  qword_27E4BC528 = 0;
}

uint64_t static V1InfoHeader.DeviceMetadata.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5F80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27E4BC528;
  *a1 = qword_27E4BC500;
  *(a1 + 8) = *algn_27E4BC508;
  *(a1 + 24) = *&qword_27E4BC518;
  *(a1 + 40) = v1;
}

uint64_t sub_2406D821C()
{
  v1 = 0x6C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2406D8270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E0958(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406D8298(uint64_t a1)
{
  v2 = sub_2406DD224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D82D4(uint64_t a1)
{
  v2 = sub_2406DD224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.DeviceMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC868, &qword_240777128);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD224();
  sub_24075AF74();
  v14 = 0;
  v9 = v11[5];
  sub_24075AB64();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24075AB64();
  v12 = 2;
  sub_24075AB64();
  return (*(v4 + 8))(v6, v3);
}

uint64_t V1InfoHeader.DeviceMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  if (!v3)
  {
    return sub_24075AE94();
  }

LABEL_4:
  sub_24075AE94();

  return sub_24075A114();
}

uint64_t V1InfoHeader.DeviceMetadata.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  sub_24075AE64();
  if (v1)
  {
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_24075AE94();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.DeviceMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC878, &qword_240777130);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD224();
  sub_24075AF34();
  if (!v2)
  {
    v27 = 0;
    v9 = sub_24075AA74();
    v12 = v11;
    v13 = v9;
    v26 = 1;
    v14 = sub_24075AA74();
    v16 = v15;
    v24 = v14;
    v25 = 2;
    v17 = sub_24075AA74();
    v18 = *(v6 + 8);
    v23 = v17;
    v19 = v8;
    v21 = v20;
    v18(v19, v5);
    *a2 = v13;
    a2[1] = v12;
    v22 = v23;
    a2[2] = v24;
    a2[3] = v16;
    a2[4] = v22;
    a2[5] = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406D8930()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_24075AE64();
  V1InfoHeader.DeviceMetadata.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t sub_2406D8988(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_24075AE64();
  V1InfoHeader.DeviceMetadata.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t V1InfoHeader.OSMetadata.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t V1InfoHeader.OSMetadata.type.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t V1InfoHeader.OSMetadata.build.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t V1InfoHeader.OSMetadata.build.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t V1InfoHeader.OSMetadata.version.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t V1InfoHeader.OSMetadata.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall V1InfoHeader.OSMetadata.init(type:build:version:isInternal:)(AppleIDSetup::V1InfoHeader::OSMetadata *__return_ptr retstr, Swift::String type, Swift::String build, Swift::String version, Swift::Bool isInternal)
{
  retstr->type = type;
  retstr->build = build;
  retstr->version = version;
  retstr->isInternal = isInternal;
}

uint64_t sub_2406D8BB8()
{
  v1 = 1701869940;
  v2 = 0x6E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    v1 = 0x646C697562;
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

uint64_t sub_2406D8C2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E0A74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406D8C54(uint64_t a1)
{
  v2 = sub_2406DD278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D8C90(uint64_t a1)
{
  v2 = sub_2406DD278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.OSMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC880, &qword_240777138);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v11[3] = *(v1 + 24);
  v11[4] = v7;
  v8 = *(v1 + 32);
  v11[1] = *(v1 + 40);
  v11[2] = v8;
  v12 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD278();
  sub_24075AF74();
  v16 = 0;
  v9 = v11[5];
  sub_24075ABB4();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_24075ABB4();
  v14 = 2;
  sub_24075ABB4();
  v13 = 3;
  sub_24075ABC4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t V1InfoHeader.OSMetadata.hash(into:)(uint64_t a1)
{
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AE94();
}

uint64_t V1InfoHeader.OSMetadata.hashValue.getter()
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.OSMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC890, &qword_240777140);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD278();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v9 = sub_24075AAC4();
  v26 = v10;
  v29 = 1;
  v11 = sub_24075AAC4();
  v25 = v12;
  v23 = v11;
  v28 = 2;
  v22 = sub_24075AAC4();
  v24 = v13;
  v27 = 3;
  v15 = sub_24075AAD4();
  (*(v6 + 8))(v8, v5);
  v16 = v15 & 1;
  v18 = v25;
  v17 = v26;
  *a2 = v9;
  *(a2 + 8) = v17;
  v19 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v18;
  v20 = v24;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406D92D8()
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_2406D9374(uint64_t a1)
{
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AE94();
}

uint64_t sub_2406D93E4(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.BundleMetadata.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t V1InfoHeader.BundleMetadata.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t V1InfoHeader.BundleMetadata.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t V1InfoHeader.BundleMetadata.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

AppleIDSetup::V1InfoHeader::BundleMetadata __swiftcall V1InfoHeader.BundleMetadata.init(bundleIdentifier:version:)(Swift::String bundleIdentifier, Swift::String version)
{
  *v2 = bundleIdentifier;
  v2[1] = version;
  result.version = version;
  result.bundleIdentifier = bundleIdentifier;
  return result;
}

void sub_2406D9598()
{
  qword_27E4BC530 = 0;
  *algn_27E4BC538 = 0xE000000000000000;
  qword_27E4BC540 = 0;
  unk_27E4BC548 = 0xE000000000000000;
}

uint64_t static V1InfoHeader.BundleMetadata.framework.getter@<X0>(void *a1@<X8>)
{
  if (qword_27E4B5F88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27E4BC538;
  v2 = qword_27E4BC540;
  v3 = unk_27E4BC548;
  *a1 = qword_27E4BC530;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static V1InfoHeader.BundleMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24075ACF4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24075ACF4();
    }
  }

  return result;
}

uint64_t sub_2406D96D8()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2406D9718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000240789440 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24075ACF4();

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
  return result;
}

uint64_t sub_2406D9800(uint64_t a1)
{
  v2 = sub_2406DD2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D983C(uint64_t a1)
{
  v2 = sub_2406DD2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.BundleMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC898, &qword_240777148);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD2CC();
  sub_24075AF74();
  v12 = 0;
  v8 = v10[3];
  sub_24075ABB4();
  if (!v8)
  {
    v11 = 1;
    sub_24075ABB4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t V1InfoHeader.BundleMetadata.hash(into:)(uint64_t a1)
{
  sub_24075A114();

  return sub_24075A114();
}

uint64_t V1InfoHeader.BundleMetadata.hashValue.getter()
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.BundleMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC8A8, &qword_240777150);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD2CC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24075AAC4();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24075AAC4();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406D9CF4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24075ACF4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24075ACF4();
    }
  }

  return result;
}

uint64_t sub_2406D9D98()
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_2406D9E00(uint64_t a1)
{
  sub_24075A114();

  return sub_24075A114();
}

uint64_t sub_2406D9E50(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t _s12AppleIDSetup12V1InfoHeaderV10OSMetadataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_24075ACF4()) && (v2 == v7 && v4 == v8 || (sub_24075ACF4()) && (v3 == v9 && v5 == v10 || (sub_24075ACF4()))
  {
    return v6 ^ v11 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t _s12AppleIDSetup12V1InfoHeaderV14DeviceMetadataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_24075ACF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12AppleIDSetup12V1InfoHeaderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v70 = *(a1 + 64);
  v77 = *(a1 + 48);
  v78 = *(a1 + 72);
  v86 = *(a1 + 80);
  v73 = *(a1 + 88);
  v76 = *(a1 + 96);
  v69 = *(a1 + 112);
  v64 = *(a1 + 120);
  v65 = *(a1 + 128);
  v66 = *(a1 + 104);
  v58 = *(a1 + 136);
  v59 = *(a1 + 144);
  v56 = *(a1 + 152);
  v57 = *(a1 + 160);
  v4 = *a2;
  v5 = a2[5];
  v85 = a2[6];
  v72 = a2[8];
  v79 = a2[7];
  v80 = a2[9];
  v74 = a2[10];
  v71 = a2[11];
  v75 = *(a2 + 96);
  v67 = a2[14];
  v68 = a2[13];
  v87 = *a1;
  v62 = a2[15];
  v63 = a2[16];
  v84 = *(a1 + 8);
  v6 = *(a1 + 24);
  v93 = v4;
  v60 = a2[17];
  v61 = a2[18];
  v82 = *(a2 + 1);
  v81 = *(a2 + 3);
  v54 = a2[19];
  v55 = a2[20];
  v88 = v84;
  v89 = v6;
  v90 = v2;
  v94 = v82;
  v95 = v81;
  v96 = v5;
  v7 = _s12AppleIDSetup12V1InfoHeaderV14DeviceMetadataV2eeoiySbAE_AEtFZ_0(&v87, &v93);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v3;
  if (!v3)
  {
    v21 = v77;
    v12 = v78;
    v22 = v70;
    v9 = v73;
    sub_2406DCE48(v77, 0);
    if (!v79)
    {
      sub_2406DCE48(v85, 0);
      sub_2406DCE98(v77, 0, v70, v78, v86, v73);
      goto LABEL_21;
    }

    v23 = v74;
    v24 = v71;
    v10 = v72;
    sub_2406DCE48(v85, v79);
    goto LABEL_16;
  }

  v10 = v72;
  v9 = v73;
  v11 = v77;
  v12 = v78;
  v13 = v70;
  if (!v79)
  {
    sub_2406DCE48(v77, v3);
    v22 = v70;
    v21 = v77;
    v24 = v71;
    sub_2406DCE48(v85, 0);
    v23 = v74;
    sub_2406DCE48(v77, v3);

LABEL_16:
    sub_2406DCE98(v21, v3, v22, v12, v86, v9);
    v25 = v85;
    v26 = v79;
    v27 = v80;
    v28 = v10;
    v29 = v23;
    v30 = v24;
LABEL_30:
    sub_2406DCE98(v25, v26, v28, v27, v29, v30);
    return 0;
  }

  if ((v77 != v85 || v3 != v79) && (v14 = sub_24075ACF4(), v11 = v77, (v14 & 1) == 0) || (v70 != v72 || v78 != v80) && (v15 = v11, v16 = sub_24075ACF4(), v11 = v15, (v16 & 1) == 0))
  {
    sub_2406DCE48(v11, v8);
    sub_2406DCE48(v85, v79);
    sub_2406DCE48(v77, v8);
    v20 = v86;
    v18 = v77;
    v17 = v78;
    v9 = v73;
    sub_2406DCE98(v85, v79, v72, v80, v74, v71);
LABEL_29:

    v25 = v18;
    v26 = v8;
    v28 = v13;
    v27 = v17;
    v29 = v20;
    v30 = v9;
    goto LABEL_30;
  }

  if (v86 == v74 && v73 == v71)
  {
    v17 = v78;
    v18 = v11;
    sub_2406DCE48(v11, v8);
    v19 = v75;
    sub_2406DCE48(v85, v79);
    sub_2406DCE48(v18, v8);
    v20 = v86;
    v13 = v70;
    sub_2406DCE98(v85, v79, v72, v80, v86, v73);
    goto LABEL_20;
  }

  v83 = sub_24075ACF4();
  sub_2406DCE48(v77, v8);
  v19 = v75;
  sub_2406DCE48(v85, v79);
  sub_2406DCE48(v77, v8);
  v17 = v78;
  v13 = v70;
  v18 = v77;
  v20 = v86;
  sub_2406DCE98(v85, v79, v72, v80, v74, v71);
  if ((v83 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:

  sub_2406DCE98(v18, v8, v13, v17, v20, v73);
  if ((v76 ^ v19))
  {
    return 0;
  }

LABEL_21:
  v31 = v69;
  if (!v69)
  {
    v33 = v65;
    v32 = v64;
    sub_2406DCEE8(v66, 0);
    if (!v67)
    {
      sub_2406DCEE8(v68, 0);
      v36 = 0;
      v34 = v66;
      goto LABEL_40;
    }

    v38 = v68;
    v40 = v62;
    v39 = v63;
    v35 = v67;
    sub_2406DCEE8(v68, v67);
    v34 = v66;
    v31 = 0;
LABEL_36:
    v87 = v34;
    *&v88 = v31;
    *(&v88 + 1) = v32;
    *&v89 = v33;
LABEL_54:
    *(&v89 + 1) = v38;
    v90 = v35;
    v91 = v40;
    v92 = v39;
    sub_2405B8A50(&v87, &qword_27E4BCC00, &qword_240779A90);
    return 0;
  }

  v32 = v64;
  v33 = v65;
  v34 = v66;
  v35 = v67;
  if (!v67)
  {
    sub_2406DCEE8(v66, v69);
    v38 = v68;
    v40 = v62;
    v39 = v63;
    sub_2406DCEE8(v68, 0);
    sub_2406DCEE8(v66, v69);

    goto LABEL_36;
  }

  if (v66 != v68 || v69 != v67)
  {
    v31 = v69;
    v34 = v66;
    if ((sub_24075ACF4() & 1) == 0)
    {
      sub_2406DCEE8(v66, v69);
      sub_2406DCEE8(v68, v67);
      sub_2406DCEE8(v66, v69);
      sub_2406DCF2C(v68, v67, v62, v63);

      sub_2406DCF2C(v66, v69, v64, v65);
      return 0;
    }
  }

  if (v64 == v62 && v65 == v63)
  {
    sub_2406DCEE8(v34, v69);
    sub_2406DCEE8(v68, v67);
    sub_2406DCEE8(v34, v69);
    sub_2406DCF2C(v68, v67, v64, v65);

    v36 = v69;
LABEL_40:
    sub_2406DCF2C(v34, v36, v32, v33);
    goto LABEL_41;
  }

  v41 = sub_24075ACF4();
  sub_2406DCEE8(v34, v31);
  sub_2406DCEE8(v68, v67);
  sub_2406DCEE8(v34, v31);
  sub_2406DCF2C(v68, v67, v62, v63);

  sub_2406DCF2C(v34, v31, v64, v65);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v42 = v59;
  if (!v59)
  {
    v44 = v57;
    v50 = v58;
    v46 = v56;
    sub_2406DCEE8(v58, 0);
    if (!v61)
    {
      sub_2406DCEE8(v60, 0);
      v48 = v58;
      v49 = 0;
      goto LABEL_58;
    }

    v38 = v60;
    v40 = v54;
    v39 = v55;
    v35 = v61;
    sub_2406DCEE8(v60, v61);
    v42 = 0;
    goto LABEL_53;
  }

  v44 = v57;
  v43 = v58;
  v35 = v61;
  if (!v61)
  {
    v46 = v56;
    v50 = v58;
    sub_2406DCEE8(v58, v59);
    v38 = v60;
    v40 = v54;
    v39 = v55;
    sub_2406DCEE8(v60, 0);
    sub_2406DCEE8(v58, v59);

LABEL_53:
    v87 = v50;
    *&v88 = v42;
    *(&v88 + 1) = v46;
    *&v89 = v44;
    goto LABEL_54;
  }

  if (v58 == v60 && v59 == v61 || (v45 = sub_24075ACF4(), v43 = v58, v42 = v59, (v45 & 1) != 0))
  {
    if (v56 == v54 && v57 == v55)
    {
      v46 = v56;
      v47 = v43;
      sub_2406DCEE8(v43, v42);
      sub_2406DCEE8(v60, v61);
      sub_2406DCEE8(v47, v42);
      sub_2406DCF2C(v60, v61, v56, v57);

      v48 = v47;
      v49 = v42;
LABEL_58:
      sub_2406DCF2C(v48, v49, v46, v44);
      return 1;
    }

    v51 = v42;
    v52 = v43;
    v53 = sub_24075ACF4();
    sub_2406DCEE8(v52, v51);
    sub_2406DCEE8(v60, v61);
    sub_2406DCEE8(v52, v51);
    sub_2406DCF2C(v60, v61, v54, v55);

    sub_2406DCF2C(v52, v51, v56, v57);
    if (v53)
    {
      return 1;
    }
  }

  else
  {
    sub_2406DCEE8(v58, v59);
    sub_2406DCEE8(v60, v61);
    sub_2406DCEE8(v58, v59);
    sub_2406DCF2C(v60, v61, v54, v55);

    sub_2406DCF2C(v58, v59, v56, v57);
  }

  return 0;
}

uint64_t _s12AppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(char *a1, uint64_t a2)
{
  v84 = a1;
  v3 = type metadata accessor for AuthenticateCommand.Request(0);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SignInCommand.Request(0);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for V1Command.Request(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v79 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v83 = &v79 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v82 = (&v79 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC18, &qword_240779AA8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v79 - v25;
  v27 = &v79 + *(v24 + 56) - v25;
  sub_2406DC664(v84, &v79 - v25, type metadata accessor for V1Command.Request);
  sub_2406DC664(a2, v27, type metadata accessor for V1Command.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v30 = v83;
      sub_2406DC664(v26, v83, type metadata accessor for V1Command.Request);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v31 = v81;
        sub_2406DB6F0(v27, v81, type metadata accessor for AuthenticateCommand.Request);
        v32 = _s12AppleIDSetup19AuthenticateCommandV7RequestV2eeoiySbAE_AEtFZ_0(v30, v31);
        v33 = type metadata accessor for AuthenticateCommand.Request;
        goto LABEL_14;
      }

      v61 = type metadata accessor for AuthenticateCommand.Request;
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2406DC664(v26, v13, type metadata accessor for V1Command.Request);
      v34 = v13[3];
      v109 = v13[2];
      v110 = v34;
      v111[0] = v13[4];
      *(v111 + 9) = *(v13 + 73);
      v35 = v13[1];
      v107 = *v13;
      v108 = v35;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_2405F717C(&v107);
        goto LABEL_25;
      }

      v36 = *(v27 + 3);
      v37 = *(v27 + 1);
      v99 = *(v27 + 2);
      v100 = v36;
      v38 = *(v27 + 3);
      v101[0] = *(v27 + 4);
      *(v101 + 9) = *(v27 + 73);
      v39 = *(v27 + 1);
      v97 = *v27;
      v98 = v39;
      v40 = v13[3];
      v93 = v13[2];
      v94 = v40;
      v95[0] = v13[4];
      *(v95 + 9) = *(v13 + 73);
      v41 = v13[1];
      v91 = *v13;
      v92 = v41;
      v87 = v99;
      v88 = v38;
      v89[0] = *(v27 + 4);
      *(v89 + 9) = *(v27 + 73);
      v85 = v97;
      v86 = v37;
      v32 = _s12AppleIDSetup13RepairCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v91, &v85);
      sub_2405F717C(&v97);
      sub_2405F717C(&v107);
    }

    else
    {
      sub_2406DC664(v26, v10, type metadata accessor for V1Command.Request);
      v59 = *(v10 + 1);
      v97 = *v10;
      v98 = v59;
      *&v99 = *(v10 + 4);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        sub_2406E0BDC(&v97);
        goto LABEL_25;
      }

      v60 = *(v27 + 1);
      v107 = *v27;
      v108 = v60;
      *&v109 = *(v27 + 4);
      v32 = _s12AppleIDSetup19AgeMigrationCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v97, &v107);
      sub_2406E0BDC(&v97);
      sub_2406E0BDC(&v107);
    }

    goto LABEL_27;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2406DC664(v26, v22, type metadata accessor for V1Command.Request);
    v42 = *(v22 + 9);
    v111[4] = *(v22 + 8);
    v111[5] = v42;
    v112 = *(v22 + 20);
    v43 = *(v22 + 5);
    v111[0] = *(v22 + 4);
    v111[1] = v43;
    v44 = *(v22 + 7);
    v111[2] = *(v22 + 6);
    v111[3] = v44;
    v45 = *(v22 + 1);
    v107 = *v22;
    v108 = v45;
    v46 = *(v22 + 3);
    v109 = *(v22 + 2);
    v110 = v46;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2406BD370(&v107);
      goto LABEL_25;
    }

    v62 = *(v27 + 7);
    v63 = *(v27 + 9);
    v104 = *(v27 + 8);
    v105 = v63;
    v64 = *(v27 + 3);
    v65 = *(v27 + 5);
    v101[0] = *(v27 + 4);
    v101[1] = v65;
    v66 = *(v27 + 5);
    v67 = *(v27 + 7);
    v102 = *(v27 + 6);
    v103 = v67;
    v68 = *(v27 + 1);
    v97 = *v27;
    v98 = v68;
    v69 = *(v27 + 3);
    v71 = *v27;
    v70 = *(v27 + 1);
    v99 = *(v27 + 2);
    v100 = v69;
    v72 = *(v22 + 9);
    v95[4] = *(v22 + 8);
    v95[5] = v72;
    v73 = *(v22 + 5);
    v95[0] = *(v22 + 4);
    v95[1] = v73;
    v74 = *(v22 + 7);
    v95[2] = *(v22 + 6);
    v95[3] = v74;
    v75 = *(v22 + 1);
    v91 = *v22;
    v92 = v75;
    v76 = *(v22 + 3);
    v93 = *(v22 + 2);
    v94 = v76;
    v77 = *(v27 + 9);
    v89[4] = v104;
    v89[5] = v77;
    v89[0] = v101[0];
    v89[1] = v66;
    v89[2] = v102;
    v89[3] = v62;
    v85 = v71;
    v86 = v70;
    v106 = *(v27 + 20);
    v96 = *(v22 + 20);
    v90 = *(v27 + 20);
    v87 = v99;
    v88 = v64;
    v32 = _s12AppleIDSetup16HandshakeCommandO7RequestV2eeoiySbAE_AEtFZ_0(&v91, &v85);
    sub_2406BD370(&v97);
    sub_2406BD370(&v107);
LABEL_27:
    v49 = v26;
    goto LABEL_28;
  }

  v29 = v27;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v82;
    sub_2406DC664(v26, v82, type metadata accessor for V1Command.Request);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v80;
      sub_2406DB6F0(v27, v80, type metadata accessor for SignInCommand.Request);
      v32 = _s12AppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(v30, v31);
      v33 = type metadata accessor for SignInCommand.Request;
LABEL_14:
      v47 = v26;
      v48 = v33;
      sub_2406DB7F4(v31, v33);
      sub_2406DB7F4(v30, v48);
      v49 = v47;
LABEL_28:
      sub_2406DB7F4(v49, type metadata accessor for V1Command.Request);
      return v32 & 1;
    }

    v61 = type metadata accessor for SignInCommand.Request;
LABEL_21:
    sub_2406DB7F4(v30, v61);
    goto LABEL_25;
  }

  sub_2406DC664(v26, v18, type metadata accessor for V1Command.Request);
  v51 = *v18;
  v50 = *(v18 + 1);
  v53 = *(v18 + 2);
  v52 = *(v18 + 3);
  v54 = v26;
  v55 = v18[32];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v56 = *v27;
    v57 = *(v29 + 1);
    v84 = v54;
    v58 = *(v29 + 2);
    v83 = *(v29 + 3);
    LODWORD(v82) = v29[32];
    *&v107 = v51;
    *(&v107 + 1) = v50;
    *&v108 = v53;
    *(&v108 + 1) = v52;
    LOBYTE(v109) = v55;
    *&v97 = v56;
    *(&v97 + 1) = v57;
    *&v98 = v58;
    *(&v98 + 1) = v83;
    LOBYTE(v99) = v82;
    v32 = _s12AppleIDSetup15AnisetteCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v107, &v97);
    sub_2405E1818(v56, v57, v58, v83, v82);
    sub_2405E1818(v51, v50, v53, v52, v55);
    v49 = v84;
    goto LABEL_28;
  }

  sub_2405E1818(v51, v50, v53, v52, v55);
  v26 = v54;
LABEL_25:
  sub_2405B8A50(v26, &qword_27E4BCC18, &qword_240779AA8);
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_2406DB4E4()
{
  result = qword_27E4BC588;
  if (!qword_27E4BC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC588);
  }

  return result;
}

unint64_t sub_2406DB538()
{
  result = qword_27E4BC590;
  if (!qword_27E4BC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC590);
  }

  return result;
}

unint64_t sub_2406DB58C()
{
  result = qword_27E4BC598;
  if (!qword_27E4BC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC598);
  }

  return result;
}

void sub_2406DB5E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 - 21 >= 2)
  {
    sub_2405E170C(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_2406DB5F4()
{
  result = qword_27E4BC5A0;
  if (!qword_27E4BC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5A0);
  }

  return result;
}

unint64_t sub_2406DB648()
{
  result = qword_27E4BC5A8;
  if (!qword_27E4BC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5A8);
  }

  return result;
}

unint64_t sub_2406DB69C()
{
  result = qword_27E4BC5B0;
  if (!qword_27E4BC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5B0);
  }

  return result;
}

uint64_t sub_2406DB6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2406DB758()
{
  result = qword_27E4BC5B8;
  if (!qword_27E4BC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5B8);
  }

  return result;
}

uint64_t sub_2406DB7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2406DB7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2406DB854()
{
  result = qword_27E4BC5C0;
  if (!qword_27E4BC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5C0);
  }

  return result;
}

unint64_t sub_2406DB8A8()
{
  result = qword_27E4BC600;
  if (!qword_27E4BC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC600);
  }

  return result;
}

uint64_t _s12AppleIDSetup9V1CommandO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for V1Command.Response(0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for V1Command.Request(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for V1Command(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC08, &qword_240779A98);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v37 - v20;
  v22 = &v37 + *(v19 + 56) - v20;
  sub_2406DC664(a1, &v37 - v20, type metadata accessor for V1Command);
  sub_2406DC664(a2, v22, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DC664(v21, v15, type metadata accessor for V1Command);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v38;
        sub_2406DB6F0(v22, v38, type metadata accessor for V1Command.Response);
        v25 = _s12AppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(v15, v24);
        v26 = type metadata accessor for V1Command.Response;
        sub_2406DB7F4(v24, type metadata accessor for V1Command.Response);
        v27 = v15;
LABEL_13:
        sub_2406DB7F4(v27, v26);
        goto LABEL_14;
      }

      sub_2406DB7F4(v15, type metadata accessor for V1Command.Response);
    }

    else
    {
      sub_2406DC664(v21, v12, type metadata accessor for V1Command);
      v29 = *v12;
      v28 = *(v12 + 1);
      v30 = *(v12 + 2);
      v31 = v12[24];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = *v22;
        v33 = *(v22 + 1);
        v34 = *(v22 + 2);
        v35 = v22[24];
        v41[0] = v29;
        v41[1] = v28;
        v41[2] = v30;
        v42 = v31;
        v39[0] = v32;
        v39[1] = v33;
        v39[2] = v34;
        v40 = v35;
        v25 = static V1CommandError.== infix(_:_:)(v41, v39);
        sub_2406DCA8C(v32, v33, v34, v35);
        sub_2406DCA8C(v29, v28, v30, v31);
LABEL_14:
        sub_2406DB7F4(v21, type metadata accessor for V1Command);
        return v25 & 1;
      }

      sub_2406DCA8C(v29, v28, v30, v31);
    }
  }

  else
  {
    sub_2406DC664(v21, v17, type metadata accessor for V1Command);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2406DB6F0(v22, v8, type metadata accessor for V1Command.Request);
      v25 = _s12AppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(v17, v8);
      v26 = type metadata accessor for V1Command.Request;
      sub_2406DB7F4(v8, type metadata accessor for V1Command.Request);
      v27 = v17;
      goto LABEL_13;
    }

    sub_2406DB7F4(v17, type metadata accessor for V1Command.Request);
  }

  sub_2405B8A50(v21, &qword_27E4BCC08, &qword_240779A98);
  v25 = 0;
  return v25 & 1;
}

uint64_t _s12AppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v72 = a1;
  v73 = a2;
  v2 = type metadata accessor for AgeMigrationCommand.Response(0);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AuthenticateCommand.Response(0);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnisetteCommand.Response(0);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SignInCommand.Response(0);
  MEMORY[0x28223BE20](v66);
  v68 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for V1Command.Response(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v66 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v71 = (&v66 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v66 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC10, &qword_240779AA0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v66 - v28;
  v30 = &v66 + *(v27 + 56) - v28;
  sub_2406DC664(v72, &v66 - v28, type metadata accessor for V1Command.Response);
  sub_2406DC664(v73, v30, type metadata accessor for V1Command.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = v71;
      sub_2406DC664(v29, v71, type metadata accessor for V1Command.Response);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v52 = type metadata accessor for AuthenticateCommand.Response;
LABEL_23:
        v53 = v52;
        v54 = v23;
LABEL_27:
        sub_2406DB7F4(v54, v53);
LABEL_28:
        sub_2405B8A50(v29, &qword_27E4BCC10, &qword_240779AA0);
LABEL_29:
        v34 = 0;
        return v34 & 1;
      }

      v46 = v69;
      sub_2406DB6F0(v30, v69, type metadata accessor for AuthenticateCommand.Response);
      sub_240602168();
      v47 = v29;
      sub_2406021BC();
      sub_240602210();
      v34 = sub_240759964();
      v48 = type metadata accessor for AuthenticateCommand.Response;
      sub_2406DB7F4(v46, type metadata accessor for AuthenticateCommand.Response);
      v49 = v23;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_2406DC664(v29, v15, type metadata accessor for V1Command.Response);
        v36 = *v15;
        v35 = v15[1];
        v38 = v15[2];
        v37 = v15[3];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v73 = v29;
          v39 = *v30;
          v40 = *(v30 + 1);
          v41 = *(v30 + 2);
          v42 = *(v30 + 3);
          *&v85 = v36;
          *(&v85 + 1) = v35;
          *&v86 = v38;
          *(&v86 + 1) = v37;
          *&v78 = v39;
          *(&v78 + 1) = v40;
          *&v79 = v41;
          *(&v79 + 1) = v42;
          v34 = _s12AppleIDSetup13RepairCommandV8ResponseO2eeoiySbAE_AEtFZ_0(&v85, &v78);
          sub_2405F7088(v39, v40, v41, v42);
          sub_2405F7088(v36, v35, v38, v37);
          sub_2406DB7F4(v73, type metadata accessor for V1Command.Response);
          return v34 & 1;
        }

        sub_2405F7088(v36, v35, v38, v37);
        goto LABEL_28;
      }

      sub_2406DC664(v29, v12, type metadata accessor for V1Command.Response);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v53 = type metadata accessor for AgeMigrationCommand.Response;
        v54 = v12;
        goto LABEL_27;
      }

      v51 = v70;
      sub_2406DB6F0(v30, v70, type metadata accessor for AgeMigrationCommand.Response);
      v34 = _s12AppleIDSetup19AgeMigrationCommandV8ResponseO2eeoiySbAE_AEtFZ_0(v12, v51);
      v47 = v29;
      v48 = type metadata accessor for AgeMigrationCommand.Response;
      sub_2406DB7F4(v51, type metadata accessor for AgeMigrationCommand.Response);
      v49 = v12;
    }

LABEL_20:
    sub_2406DB7F4(v49, v48);
    sub_2406DB7F4(v47, type metadata accessor for V1Command.Response);
    return v34 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2406DC664(v29, v25, type metadata accessor for V1Command.Response);
    v43 = *(v25 + 5);
    v89 = *(v25 + 4);
    v90 = v43;
    v91 = v25[96];
    v44 = *(v25 + 1);
    v85 = *v25;
    v86 = v44;
    v45 = *(v25 + 3);
    v87 = *(v25 + 2);
    v88 = v45;
    if (!swift_getEnumCaseMultiPayload())
    {
      v56 = *(v30 + 3);
      v57 = *(v30 + 5);
      v82 = *(v30 + 4);
      v83 = v57;
      v58 = *(v30 + 1);
      v78 = *v30;
      v79 = v58;
      v59 = *(v30 + 3);
      v61 = *v30;
      v60 = *(v30 + 1);
      v80 = *(v30 + 2);
      v81 = v59;
      v62 = *(v25 + 5);
      v76[4] = *(v25 + 4);
      v76[5] = v62;
      v63 = *(v25 + 1);
      v76[0] = *v25;
      v76[1] = v63;
      v64 = *(v25 + 3);
      v76[2] = *(v25 + 2);
      v76[3] = v64;
      v65 = *(v30 + 5);
      v74[4] = v82;
      v74[5] = v65;
      v74[0] = v61;
      v74[1] = v60;
      v84 = v30[96];
      v77 = v25[96];
      v75 = v30[96];
      v74[2] = v80;
      v74[3] = v56;
      v34 = _s12AppleIDSetup16HandshakeCommandO8ResponseV2eeoiySbAE_AEtFZ_0(v76, v74);
      sub_2406BFA90(&v78);
      sub_2406BFA90(&v85);
      sub_2406DB7F4(v29, type metadata accessor for V1Command.Response);
      return v34 & 1;
    }

    sub_2406BFA90(&v85);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2406DC664(v29, v20, type metadata accessor for V1Command.Response);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v53 = type metadata accessor for AnisetteCommand.Response;
      v54 = v20;
      goto LABEL_27;
    }

    v50 = v67;
    sub_2406DB6F0(v30, v67, type metadata accessor for AnisetteCommand.Response);
    v34 = _s12AppleIDSetup15AnisetteCommandV8ResponseO2eeoiySbAE_AEtFZ_0(v20, v50);
    v47 = v29;
    v48 = type metadata accessor for AnisetteCommand.Response;
    sub_2406DB7F4(v50, type metadata accessor for AnisetteCommand.Response);
    v49 = v20;
    goto LABEL_20;
  }

  sub_2406DC664(v29, v23, type metadata accessor for V1Command.Response);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v52 = type metadata accessor for SignInCommand.Response;
    goto LABEL_23;
  }

  v32 = v30;
  v33 = v68;
  sub_2406DB6F0(v32, v68, type metadata accessor for SignInCommand.Response);
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v23, v33) & 1) == 0 || (sub_24061F3B8(*(v23 + *(v66 + 20)), *(v33 + *(v66 + 20))) & 1) == 0)
  {
    sub_2406DB7F4(v33, type metadata accessor for SignInCommand.Response);
    sub_2406DB7F4(v23, type metadata accessor for SignInCommand.Response);
    sub_2406DB7F4(v29, type metadata accessor for V1Command.Response);
    goto LABEL_29;
  }

  sub_2406DB7F4(v33, type metadata accessor for SignInCommand.Response);
  sub_2406DB7F4(v23, type metadata accessor for SignInCommand.Response);
  sub_2406DB7F4(v29, type metadata accessor for V1Command.Response);
  v34 = 1;
  return v34 & 1;
}

unint64_t sub_2406DC610()
{
  result = qword_27E4BC640;
  if (!qword_27E4BC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC640);
  }

  return result;
}

uint64_t sub_2406DC664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2406DC6CC()
{
  result = qword_27E4BC648;
  if (!qword_27E4BC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC648);
  }

  return result;
}

unint64_t sub_2406DC720()
{
  result = qword_27E4BC658;
  if (!qword_27E4BC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC658);
  }

  return result;
}

unint64_t sub_2406DC774()
{
  result = qword_27E4BC660;
  if (!qword_27E4BC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC660);
  }

  return result;
}

unint64_t sub_2406DC7C8()
{
  result = qword_27E4BC668;
  if (!qword_27E4BC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC668);
  }

  return result;
}

unint64_t sub_2406DC81C()
{
  result = qword_27E4BC670;
  if (!qword_27E4BC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC670);
  }

  return result;
}

unint64_t sub_2406DC870()
{
  result = qword_27E4BC678;
  if (!qword_27E4BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC678);
  }

  return result;
}

unint64_t sub_2406DC8C4()
{
  result = qword_27E4B8B78;
  if (!qword_27E4B8B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8B38, &qword_240777010);
    sub_240602360();
    sub_2406023B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B78);
  }

  return result;
}

uint64_t sub_2406DC950(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return v4;
}

unint64_t sub_2406DC990()
{
  result = qword_27E4BC6F0;
  if (!qword_27E4BC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC6F0);
  }

  return result;
}

unint64_t sub_2406DC9E4()
{
  result = qword_27E4BC6F8;
  if (!qword_27E4BC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC6F8);
  }

  return result;
}

unint64_t sub_2406DCA38()
{
  result = qword_27E4BC700;
  if (!qword_27E4BC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC700);
  }

  return result;
}

uint64_t sub_2406DCA8C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return v4;
}

unint64_t sub_2406DCAAC()
{
  result = qword_27E4BC708;
  if (!qword_27E4BC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC708);
  }

  return result;
}

unint64_t sub_2406DCB00()
{
  result = qword_27E4BC718;
  if (!qword_27E4BC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC718);
  }

  return result;
}

unint64_t sub_2406DCB54()
{
  result = qword_27E4BC748;
  if (!qword_27E4BC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC748);
  }

  return result;
}

unint64_t sub_2406DCBA8()
{
  result = qword_27E4BC7A0;
  if (!qword_27E4BC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7A0);
  }

  return result;
}

unint64_t sub_2406DCBFC()
{
  result = qword_27E4BC7A8;
  if (!qword_27E4BC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7A8);
  }

  return result;
}

unint64_t sub_2406DCC50()
{
  result = qword_27E4BC7B0;
  if (!qword_27E4BC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7B0);
  }

  return result;
}

unint64_t sub_2406DCCA4()
{
  result = qword_27E4BC7B8;
  if (!qword_27E4BC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7B8);
  }

  return result;
}

unint64_t sub_2406DCCF8()
{
  result = qword_27E4BC7C0;
  if (!qword_27E4BC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7C0);
  }

  return result;
}

unint64_t sub_2406DCD4C()
{
  result = qword_27E4BC7C8;
  if (!qword_27E4BC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7C8);
  }

  return result;
}

unint64_t sub_2406DCDA0()
{
  result = qword_27E4BC7D0;
  if (!qword_27E4BC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7D0);
  }

  return result;
}

unint64_t sub_2406DCDF4()
{
  result = qword_27E4BC7D8;
  if (!qword_27E4BC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7D8);
  }

  return result;
}

uint64_t sub_2406DCE48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_2406DCE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_2406DCEE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_2406DCF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_2406DCFA8()
{
  result = qword_27E4BC828;
  if (!qword_27E4BC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC828);
  }

  return result;
}

unint64_t sub_2406DCFFC()
{
  result = qword_27E4BC830;
  if (!qword_27E4BC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC830);
  }

  return result;
}

unint64_t sub_2406DD050()
{
  result = qword_27E4BC838;
  if (!qword_27E4BC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC838);
  }

  return result;
}

unint64_t sub_2406DD0A4()
{
  result = qword_27E4BC840;
  if (!qword_27E4BC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC840);
  }

  return result;
}

unint64_t sub_2406DD0F8()
{
  result = qword_27E4BC850;
  if (!qword_27E4BC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC850);
  }

  return result;
}

unint64_t sub_2406DD14C()
{
  result = qword_27E4BC858;
  if (!qword_27E4BC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC858);
  }

  return result;
}

unint64_t sub_2406DD1A0()
{
  result = qword_27E4BC860;
  if (!qword_27E4BC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC860);
  }

  return result;
}

unint64_t sub_2406DD224()
{
  result = qword_27E4BC870;
  if (!qword_27E4BC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC870);
  }

  return result;
}

unint64_t sub_2406DD278()
{
  result = qword_27E4BC888;
  if (!qword_27E4BC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC888);
  }

  return result;
}

unint64_t sub_2406DD2CC()
{
  result = qword_27E4BC8A0;
  if (!qword_27E4BC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC8A0);
  }

  return result;
}

uint64_t sub_2406DD320(uint64_t a1)
{
  result = sub_2406DB7AC(&qword_27E4BC8B8, type metadata accessor for V1Command.Request, &protocol conformance descriptor for V1Command.Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406DD378(void *a1)
{
  a1[1] = sub_2406DB7AC(&qword_27E4BC758, type metadata accessor for V1Command.Request, &protocol conformance descriptor for V1Command.Request);
  a1[2] = sub_2406DB7AC(&qword_27E4BC720, type metadata accessor for V1Command.Request, &protocol conformance descriptor for V1Command.Request);
  result = sub_2406DB7AC(&qword_27E4BC8C0, type metadata accessor for V1Command.Request, &protocol conformance descriptor for V1Command.Request);
  a1[3] = result;
  return result;
}

uint64_t sub_2406DD46C(uint64_t a1)
{
  result = sub_2406DB7AC(&qword_27E4BC8D0, type metadata accessor for V1Command.Response, &protocol conformance descriptor for V1Command.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406DD4C4(void *a1)
{
  a1[1] = sub_2406DB7AC(&qword_27E4BC750, type metadata accessor for V1Command.Response, &protocol conformance descriptor for V1Command.Response);
  a1[2] = sub_2406DB7AC(&qword_27E4BC710, type metadata accessor for V1Command.Response, &protocol conformance descriptor for V1Command.Response);
  result = sub_2406DB7AC(&qword_27E4BC8D8, type metadata accessor for V1Command.Response, &protocol conformance descriptor for V1Command.Response);
  a1[3] = result;
  return result;
}

uint64_t sub_2406DD648(void *a1)
{
  a1[1] = sub_2406DB7AC(&qword_280FAD850, type metadata accessor for V1Command, &protocol conformance descriptor for V1Command);
  a1[2] = sub_2406DB7AC(qword_280FAD868, type metadata accessor for V1Command, &protocol conformance descriptor for V1Command);
  result = sub_2406DB7AC(&qword_280FAD860, type metadata accessor for V1Command, &protocol conformance descriptor for V1Command);
  a1[3] = result;
  return result;
}

unint64_t sub_2406DD77C()
{
  result = qword_27E4BC8F8;
  if (!qword_27E4BC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC8F8);
  }

  return result;
}

unint64_t sub_2406DD7D4()
{
  result = qword_27E4BC900;
  if (!qword_27E4BC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC900);
  }

  return result;
}

unint64_t sub_2406DD868()
{
  result = qword_27E4BC908;
  if (!qword_27E4BC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC908);
  }

  return result;
}

unint64_t sub_2406DD8BC()
{
  result = qword_27E4BC910;
  if (!qword_27E4BC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC910);
  }

  return result;
}

unint64_t sub_2406DD910()
{
  result = qword_27E4BC918;
  if (!qword_27E4BC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC918);
  }

  return result;
}

unint64_t sub_2406DD968()
{
  result = qword_27E4BC920;
  if (!qword_27E4BC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC920);
  }

  return result;
}

unint64_t sub_2406DD9FC()
{
  result = qword_27E4BC928;
  if (!qword_27E4BC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC928);
  }

  return result;
}

unint64_t sub_2406DDA54()
{
  result = qword_27E4BC930;
  if (!qword_27E4BC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC930);
  }

  return result;
}

unint64_t sub_2406DDAE8()
{
  result = qword_27E4BC938;
  if (!qword_27E4BC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC938);
  }

  return result;
}

unint64_t sub_2406DDB40()
{
  result = qword_27E4BC940;
  if (!qword_27E4BC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC940);
  }

  return result;
}

uint64_t sub_2406DDBD4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406DDC28()
{
  result = qword_27E4BC948;
  if (!qword_27E4BC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC948);
  }

  return result;
}

unint64_t sub_2406DDC80()
{
  result = qword_27E4BC950;
  if (!qword_27E4BC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC950);
  }

  return result;
}

uint64_t sub_2406DDCFC(uint64_t a1)
{
  result = type metadata accessor for V1Command.Request(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for V1Command.Response(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2406DDD78(uint64_t a1)
{
  result = type metadata accessor for SignInCommand.Request(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AuthenticateCommand.Request(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2406DDE14(uint64_t a1)
{
  result = type metadata accessor for SignInCommand.Response(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AnisetteCommand.Response(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AuthenticateCommand.Response(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AgeMigrationCommand.Response(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup14V1CommandErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_2406DDEE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2406DDF28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2406DDF70(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2406DDF9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
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

uint64_t sub_2406DDFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2406DE084(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2406DE0E0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2406DE150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2406DE198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for V1CommandError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for V1CommandError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2406DE52C()
{
  result = qword_27E4BC958;
  if (!qword_27E4BC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC958);
  }

  return result;
}

unint64_t sub_2406DE584()
{
  result = qword_27E4BC960;
  if (!qword_27E4BC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC960);
  }

  return result;
}

unint64_t sub_2406DE5DC()
{
  result = qword_27E4BC968;
  if (!qword_27E4BC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC968);
  }

  return result;
}

unint64_t sub_2406DE634()
{
  result = qword_27E4BC970;
  if (!qword_27E4BC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC970);
  }

  return result;
}

unint64_t sub_2406DE68C()
{
  result = qword_27E4BC978;
  if (!qword_27E4BC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC978);
  }

  return result;
}

unint64_t sub_2406DE6E4()
{
  result = qword_27E4BC980;
  if (!qword_27E4BC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC980);
  }

  return result;
}

unint64_t sub_2406DE73C()
{
  result = qword_27E4BC988;
  if (!qword_27E4BC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC988);
  }

  return result;
}

unint64_t sub_2406DE794()
{
  result = qword_27E4BC990;
  if (!qword_27E4BC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC990);
  }

  return result;
}

unint64_t sub_2406DE7EC()
{
  result = qword_27E4BC998;
  if (!qword_27E4BC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC998);
  }

  return result;
}

unint64_t sub_2406DE844()
{
  result = qword_27E4BC9A0;
  if (!qword_27E4BC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9A0);
  }

  return result;
}

unint64_t sub_2406DE89C()
{
  result = qword_27E4BC9A8;
  if (!qword_27E4BC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9A8);
  }

  return result;
}

unint64_t sub_2406DE8F4()
{
  result = qword_27E4BC9B0;
  if (!qword_27E4BC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9B0);
  }

  return result;
}

unint64_t sub_2406DE94C()
{
  result = qword_27E4BC9B8;
  if (!qword_27E4BC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9B8);
  }

  return result;
}

unint64_t sub_2406DE9A4()
{
  result = qword_27E4BC9C0;
  if (!qword_27E4BC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9C0);
  }

  return result;
}

unint64_t sub_2406DE9FC()
{
  result = qword_27E4BC9C8;
  if (!qword_27E4BC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9C8);
  }

  return result;
}

unint64_t sub_2406DEA54()
{
  result = qword_27E4BC9D0;
  if (!qword_27E4BC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9D0);
  }

  return result;
}

unint64_t sub_2406DEAAC()
{
  result = qword_27E4BC9D8;
  if (!qword_27E4BC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9D8);
  }

  return result;
}

unint64_t sub_2406DEB04()
{
  result = qword_27E4BC9E0;
  if (!qword_27E4BC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9E0);
  }

  return result;
}

unint64_t sub_2406DEB5C()
{
  result = qword_27E4BC9E8;
  if (!qword_27E4BC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9E8);
  }

  return result;
}

unint64_t sub_2406DEBB4()
{
  result = qword_27E4BC9F0;
  if (!qword_27E4BC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9F0);
  }

  return result;
}

unint64_t sub_2406DEC0C()
{
  result = qword_27E4BC9F8;
  if (!qword_27E4BC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9F8);
  }

  return result;
}

unint64_t sub_2406DEC64()
{
  result = qword_27E4BCA00;
  if (!qword_27E4BCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA00);
  }

  return result;
}

unint64_t sub_2406DECBC()
{
  result = qword_27E4BCA08;
  if (!qword_27E4BCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA08);
  }

  return result;
}

unint64_t sub_2406DED14()
{
  result = qword_27E4BCA10;
  if (!qword_27E4BCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA10);
  }

  return result;
}

unint64_t sub_2406DED6C()
{
  result = qword_27E4BCA18;
  if (!qword_27E4BCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA18);
  }

  return result;
}

unint64_t sub_2406DEDC4()
{
  result = qword_27E4BCA20;
  if (!qword_27E4BCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA20);
  }

  return result;
}

unint64_t sub_2406DEE1C()
{
  result = qword_27E4BCA28;
  if (!qword_27E4BCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA28);
  }

  return result;
}

unint64_t sub_2406DEE74()
{
  result = qword_27E4BCA30;
  if (!qword_27E4BCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA30);
  }

  return result;
}

unint64_t sub_2406DEECC()
{
  result = qword_27E4BCA38;
  if (!qword_27E4BCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA38);
  }

  return result;
}

unint64_t sub_2406DEF24()
{
  result = qword_27E4BCA40;
  if (!qword_27E4BCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA40);
  }

  return result;
}

unint64_t sub_2406DEF7C()
{
  result = qword_27E4BCA48;
  if (!qword_27E4BCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA48);
  }

  return result;
}

unint64_t sub_2406DEFD4()
{
  result = qword_27E4BCA50;
  if (!qword_27E4BCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA50);
  }

  return result;
}

unint64_t sub_2406DF02C()
{
  result = qword_27E4BCA58;
  if (!qword_27E4BCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA58);
  }

  return result;
}

unint64_t sub_2406DF084()
{
  result = qword_27E4BCA60;
  if (!qword_27E4BCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA60);
  }

  return result;
}

unint64_t sub_2406DF0DC()
{
  result = qword_27E4BCA68;
  if (!qword_27E4BCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA68);
  }

  return result;
}

unint64_t sub_2406DF134()
{
  result = qword_27E4BCA70;
  if (!qword_27E4BCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA70);
  }

  return result;
}

unint64_t sub_2406DF18C()
{
  result = qword_27E4BCA78;
  if (!qword_27E4BCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA78);
  }

  return result;
}

unint64_t sub_2406DF1E4()
{
  result = qword_27E4BCA80;
  if (!qword_27E4BCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA80);
  }

  return result;
}

unint64_t sub_2406DF23C()
{
  result = qword_27E4BCA88;
  if (!qword_27E4BCA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA88);
  }

  return result;
}

unint64_t sub_2406DF294()
{
  result = qword_27E4BCA90;
  if (!qword_27E4BCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA90);
  }

  return result;
}

unint64_t sub_2406DF2EC()
{
  result = qword_27E4BCA98;
  if (!qword_27E4BCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCA98);
  }

  return result;
}

unint64_t sub_2406DF344()
{
  result = qword_27E4BCAA0;
  if (!qword_27E4BCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAA0);
  }

  return result;
}

unint64_t sub_2406DF39C()
{
  result = qword_27E4BCAA8;
  if (!qword_27E4BCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAA8);
  }

  return result;
}

unint64_t sub_2406DF3F4()
{
  result = qword_27E4BCAB0;
  if (!qword_27E4BCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAB0);
  }

  return result;
}

unint64_t sub_2406DF44C()
{
  result = qword_27E4BCAB8;
  if (!qword_27E4BCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAB8);
  }

  return result;
}

unint64_t sub_2406DF4A4()
{
  result = qword_27E4BCAC0;
  if (!qword_27E4BCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAC0);
  }

  return result;
}

unint64_t sub_2406DF4FC()
{
  result = qword_27E4BCAC8;
  if (!qword_27E4BCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAC8);
  }

  return result;
}

unint64_t sub_2406DF554()
{
  result = qword_27E4BCAD0;
  if (!qword_27E4BCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAD0);
  }

  return result;
}

unint64_t sub_2406DF5AC()
{
  result = qword_27E4BCAD8;
  if (!qword_27E4BCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAD8);
  }

  return result;
}

unint64_t sub_2406DF604()
{
  result = qword_27E4BCAE0;
  if (!qword_27E4BCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAE0);
  }

  return result;
}

unint64_t sub_2406DF65C()
{
  result = qword_27E4BCAE8;
  if (!qword_27E4BCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAE8);
  }

  return result;
}

unint64_t sub_2406DF6B4()
{
  result = qword_27E4BCAF0;
  if (!qword_27E4BCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAF0);
  }

  return result;
}

unint64_t sub_2406DF70C()
{
  result = qword_27E4BCAF8;
  if (!qword_27E4BCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCAF8);
  }

  return result;
}

unint64_t sub_2406DF764()
{
  result = qword_27E4BCB00;
  if (!qword_27E4BCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB00);
  }

  return result;
}

unint64_t sub_2406DF7BC()
{
  result = qword_27E4BCB08;
  if (!qword_27E4BCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB08);
  }

  return result;
}

unint64_t sub_2406DF814()
{
  result = qword_27E4BCB10;
  if (!qword_27E4BCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB10);
  }

  return result;
}

unint64_t sub_2406DF86C()
{
  result = qword_27E4BCB18;
  if (!qword_27E4BCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB18);
  }

  return result;
}

unint64_t sub_2406DF8C4()
{
  result = qword_27E4BCB20;
  if (!qword_27E4BCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB20);
  }

  return result;
}

unint64_t sub_2406DF91C()
{
  result = qword_27E4BCB28;
  if (!qword_27E4BCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB28);
  }

  return result;
}

unint64_t sub_2406DF974()
{
  result = qword_27E4BCB30;
  if (!qword_27E4BCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB30);
  }

  return result;
}

unint64_t sub_2406DF9CC()
{
  result = qword_27E4BCB38;
  if (!qword_27E4BCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB38);
  }

  return result;
}

unint64_t sub_2406DFA24()
{
  result = qword_27E4BCB40;
  if (!qword_27E4BCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB40);
  }

  return result;
}

unint64_t sub_2406DFA7C()
{
  result = qword_27E4BCB48;
  if (!qword_27E4BCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB48);
  }

  return result;
}

unint64_t sub_2406DFAD4()
{
  result = qword_27E4BCB50;
  if (!qword_27E4BCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB50);
  }

  return result;
}

unint64_t sub_2406DFB2C()
{
  result = qword_27E4BCB58;
  if (!qword_27E4BCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB58);
  }

  return result;
}

unint64_t sub_2406DFB84()
{
  result = qword_27E4BCB60;
  if (!qword_27E4BCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB60);
  }

  return result;
}

unint64_t sub_2406DFBDC()
{
  result = qword_27E4BCB68;
  if (!qword_27E4BCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB68);
  }

  return result;
}

unint64_t sub_2406DFC34()
{
  result = qword_27E4BCB70;
  if (!qword_27E4BCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB70);
  }

  return result;
}

unint64_t sub_2406DFC8C()
{
  result = qword_27E4BCB78;
  if (!qword_27E4BCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB78);
  }

  return result;
}

unint64_t sub_2406DFCE4()
{
  result = qword_27E4BCB80;
  if (!qword_27E4BCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB80);
  }

  return result;
}

unint64_t sub_2406DFD3C()
{
  result = qword_27E4BCB88;
  if (!qword_27E4BCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB88);
  }

  return result;
}

unint64_t sub_2406DFD94()
{
  result = qword_27E4BCB90;
  if (!qword_27E4BCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB90);
  }

  return result;
}

unint64_t sub_2406DFDEC()
{
  result = qword_27E4BCB98;
  if (!qword_27E4BCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCB98);
  }

  return result;
}

unint64_t sub_2406DFE44()
{
  result = qword_27E4BCBA0;
  if (!qword_27E4BCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBA0);
  }

  return result;
}

unint64_t sub_2406DFE9C()
{
  result = qword_27E4BCBA8;
  if (!qword_27E4BCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBA8);
  }

  return result;
}

unint64_t sub_2406DFEF4()
{
  result = qword_27E4BCBB0;
  if (!qword_27E4BCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBB0);
  }

  return result;
}

unint64_t sub_2406DFF4C()
{
  result = qword_27E4BCBB8;
  if (!qword_27E4BCBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBB8);
  }

  return result;
}

unint64_t sub_2406DFFA4()
{
  result = qword_27E4BCBC0;
  if (!qword_27E4BCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBC0);
  }

  return result;
}

unint64_t sub_2406DFFFC()
{
  result = qword_27E4BCBC8;
  if (!qword_27E4BCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBC8);
  }

  return result;
}

unint64_t sub_2406E0054()
{
  result = qword_27E4BCBD0;
  if (!qword_27E4BCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBD0);
  }

  return result;
}

unint64_t sub_2406E00AC()
{
  result = qword_27E4BCBD8;
  if (!qword_27E4BCBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBD8);
  }

  return result;
}

unint64_t sub_2406E0104()
{
  result = qword_27E4BCBE0;
  if (!qword_27E4BCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBE0);
  }

  return result;
}

unint64_t sub_2406E015C()
{
  result = qword_27E4BCBE8;
  if (!qword_27E4BCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBE8);
  }

  return result;
}

unint64_t sub_2406E01B4()
{
  result = qword_27E4BCBF0;
  if (!qword_27E4BCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBF0);
  }

  return result;
}

unint64_t sub_2406E020C()
{
  result = qword_27E4BCBF8;
  if (!qword_27E4BCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCBF8);
  }

  return result;
}

uint64_t sub_2406E0260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616873646E6168 && a2 == 0xE900000000000065;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E496E676973 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574746573696E61 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEC00000065746163 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726961706572 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617267694D656761 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2406E0464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406E057C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657473656ELL && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002407893C0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002407893E0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240789400 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x636E614372657375 && a2 == 0xED000064656C6C65)
  {

    return 6;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406E07D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D656369766564 && a2 == 0xEE00617461646174;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61646174654D736FLL && a2 == 0xEA00000000006174 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240789420 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D746E65696C63 && a2 == 0xEE00617461646174)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2406E0958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406E0A74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646C697562 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_2406E0CA4()
{
  v1 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2406E0D50(uint64_t a1)
{
  v3 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2406E0DA8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_2406E0E88()
{
  v1 = v0[7];
  v2 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  v0[8] = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = qword_280FAD9F0;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_240759AE4();
    __swift_project_value_buffer(v6, qword_280FADA00);
    v7 = sub_240759AC4();
    v8 = sub_24075A5D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_240579000, v7, v8, "AISConfigurationStore using cached cachedChildCutOffResponse", v9, 2u);
      MEMORY[0x245CC76B0](v9, -1, -1);
    }

    v10 = v0[1];

    return v10(v5);
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v12 = sub_240759AE4();
    v0[9] = __swift_project_value_buffer(v12, qword_280FADA00);
    v13 = sub_240759AC4();
    v14 = sub_24075A5D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_240579000, v13, v14, "AISConfigurationStore requesting fetchMaxAgeForChildAccount", v15, 2u);
      MEMORY[0x245CC76B0](v15, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x277D08348]) init];
    v16 = [objc_opt_self() sharedSession];
    v17 = objc_allocWithZone(sub_240759874());
    v0[10] = sub_240759864();
    v19 = (*MEMORY[0x277D08058] + MEMORY[0x277D08058]);
    v18 = swift_task_alloc();
    v0[11] = v18;
    *v18 = v0;
    v18[1] = sub_2406E117C;

    return v19();
  }
}

uint64_t sub_2406E117C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_2406E141C;
  }

  else
  {
    v4 = sub_2406E1290;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406E1290()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = type metadata accessor for AISChildAccountCutOffAgeResponse();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___AISChildAccountCutOffAgeResponse_wrappedResponse] = v1;
  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  v6 = v1;
  v7 = objc_msgSendSuper2((v0 + 40), sel_init);
  v8 = *(v3 + v2);
  *(v3 + v2) = v7;
  v9 = v7;

  v10 = v9;
  v11 = sub_240759AC4();
  v12 = sub_24075A5D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 80);
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = sub_240759884();

    _os_log_impl(&dword_240579000, v11, v12, "AISConfigurationStore fetchMaxAgeForChildAccount completed maxAge:%ld", v14, 0xCu);
    MEMORY[0x245CC76B0](v14, -1, -1);

    v15 = *(v0 + 96);
  }

  else
  {
    v16 = *(v0 + 80);

    v15 = v10;
  }

  v17 = *(v0 + 8);

  return v17(v10);
}

uint64_t sub_2406E141C()
{
  v1 = *(v0 + 8);

  return v1();
}

id AISChildAccountCutOffAgeResponse.__allocating_init(wrappedResponse:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISChildAccountCutOffAgeResponse_wrappedResponse] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2406E1668(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_240638A5C;

  return sub_2406E0E68();
}

id AISConfigurationStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISConfigurationStore.init()()
{
  *&v0[OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISConfigurationStore();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AISChildAccountCutOffAgeResponse.init(wrappedResponse:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AISChildAccountCutOffAgeResponse_wrappedResponse] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AISChildAccountCutOffAgeResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2406E19BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2406E1A04@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of AISConfigurationStore.fetchMaxAgeForChildAccount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24063D29C;

  return v5();
}

uint64_t sub_2406E1CC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405CE450;

  return sub_2406E1668(v2, v3);
}

BOOL sub_2406E1D70(unsigned __int8 a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 != 14)
  {
    AISChildSetupScreen.rawValue.getter();
    v4 = sub_24075A084();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a2;
    *a2 = 0x8000000000000000;
    sub_2405BC9B8(v4, 0xD000000000000012, 0x8000000240789730, isUniquelyReferenced_nonNull_native);
    *a2 = v7;
  }

  return v2 == 14;
}

uint64_t sub_2406E1E2C(unint64_t a1, char a2, uint64_t *a3)
{
  if (a2)
  {
    return a2 & 1;
  }

  if (a1 <= 1)
  {
    v5 = sub_24075A084();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *a3;
    *a3 = 0x8000000000000000;
    sub_2405BC9B8(v5, 0x7079745F776F6C66, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    *a3 = v8;
    return a2 & 1;
  }

  result = sub_24075AD64();
  __break(1u);
  return result;
}

uint64_t sub_2406E1F5C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2406E2064(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_24061DDE0(a1, &v14 - v9);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_2406A9C2C(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_2406E2130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_24061DDE0(v2 + v4, a2);
}

uint64_t sub_2406E2190(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_2406A9C2C(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_2406E224C()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2406E2290(char a1)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2406E2340@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_lastViewedScreen;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_2406E2394(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_lastViewedScreen;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_2406E2444()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_appUsage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2406E2488(char a1)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_appUsage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2406E2538()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_askToBuy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2406E257C(char a1)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_askToBuy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2406E262C()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_commSafety;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2406E2670(char a1)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_commSafety;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2406E2720()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_screenDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2406E2764(char a1)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_screenDistance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2406E2814()
{
  v1 = v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2406E2860(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2406E2920(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_name);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2406E298C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_2406E2A4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  v3 = MEMORY[0x28223BE20](v2);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v77 = &v72 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  v9 = sub_240759744();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v72 - v13;
  v14 = sub_2405BD46C(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (v15 != 2)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86[0] = v14;
    sub_2405BC9B8(v16, 0x6F6363615F77656ELL, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
    v14 = v86[0];
  }

  v18 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  swift_beginAccess();
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v85[0] = v14;
  sub_2405BC9B8(v19, 0x6574656C706D6F63, 0xEF70757465735F64, v20);
  v87[0] = v85[0];
  v21 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_lastViewedScreen;
  swift_beginAccess();
  sub_2406E1D70(*(v1 + v21), v87);
  v22 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_appUsage;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23 != 2)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v25 = v87[0];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v25;
    sub_2405BC9B8(v24, 0x676173755F707061, 0xE900000000000065, v26);
    v87[0] = v84[0];
  }

  v27 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_askToBuy;
  swift_beginAccess();
  v28 = *(v1 + v27);
  if (v28 != 2)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v30 = v87[0];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = v30;
    sub_2405BC9B8(v29, 0x625F6F745F6B7361, 0xEA00000000007975, v31);
    v87[0] = v83[0];
  }

  v32 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_commSafety;
  swift_beginAccess();
  v33 = *(v1 + v32);
  if (v33 != 2)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v35 = v87[0];
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v35;
    sub_2405BC9B8(v34, 0x6661735F6D6D6F63, 0xEB00000000797465, v36);
    v87[0] = v82[0];
  }

  v37 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_screenDistance;
  swift_beginAccess();
  v38 = *(v1 + v37);
  if (v38 != 2)
  {
    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v40 = v87[0];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v40;
    sub_2405BC9B8(v39, 0x645F6E6565726373, 0xEF65636E61747369, v41);
    v87[0] = v81[0];
  }

  v42 = v1 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  swift_beginAccess();
  sub_2406E1E2C(*v42, *(v42 + 8), v87);
  v43 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_startDate;
  swift_beginAccess();
  sub_24061DDE0(v1 + v43, v8);
  v44 = v10[6];
  if (v44(v8, 1, v9) == 1)
  {
    goto LABEL_14;
  }

  v73 = v43;
  v74 = v2;
  v45 = v10[4];
  v46 = v78;
  v45(v78, v8, v9);
  v47 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_endDate;
  swift_beginAccess();
  v48 = v1 + v47;
  v8 = v77;
  sub_24061DDE0(v48, v77);
  if (v44(v8, 1, v9) != 1)
  {
    v62 = v8;
    v63 = v75;
    v45(v75, v62, v9);
    sub_240759704();
    v65 = v64;
    sub_240759704();
    v67 = v65 - v66;
    if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v67 > -9.22337204e18)
    {
      if (v67 < 9.22337204e18)
      {
        v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v69 = v87[0];
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v69;
        sub_2405BC9B8(v68, 0x6570735F656D6974, 0xEA0000000000746ELL, v70);
        v87[0] = v79[0];
        v71 = v10[1];
        v71(v63, v9);
        v71(v46, v9);
        return;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  (v10[1])(v46, v9);
  v43 = v73;
LABEL_14:
  sub_2406E3A40(v8);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v49 = sub_240759AE4();
  __swift_project_value_buffer(v49, qword_280FADA00);

  v50 = sub_240759AC4();
  v51 = sub_24075A5E4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v80[0] = v53;
    *v52 = 136315394;
    v54 = v76;
    sub_24061DDE0(v1 + v43, v76);
    v55 = sub_24075A0E4();
    v57 = sub_2405BBA7C(v55, v56, v80);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    v58 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_24061DDE0(v1 + v58, v54);
    v59 = sub_24075A0E4();
    v61 = sub_2405BBA7C(v59, v60, v80);

    *(v52 + 14) = v61;
    _os_log_impl(&dword_240579000, v50, v51, "AISChildSetupAnalyticsEvent startDate (%s) and endDate (%s) should not be nil", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v53, -1, -1);
    MEMORY[0x245CC76B0](v52, -1, -1);
  }
}

unint64_t AISChildSetupScreen.rawValue.getter()
{
  result = 0x6F4C746E65726170;
  switch(*v0)
  {
    case 1:
      result = 0x6950796C696D6166;
      break;
    case 2:
      result = 0x65646F6373736170;
      break;
    case 3:
      result = 0x676F4C646C696863;
      break;
    case 4:
      result = 0x657243646C696863;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x706552646C696863;
      break;
    case 8:
      result = 0x67694D646C696863;
      break;
    case 9:
      result = 0x49676F4C6E656574;
      break;
    case 0xA:
      result = 0x616572436E656574;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0x617065526E656574;
      break;
    case 0xD:
      result = 0x7267694D6E656574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2406E34C4()
{
  v1 = (v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AISChildSetupAnalyticsEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  AISChildSetupAnalyticsEvent.init()();
  return v0;
}

uint64_t AISChildSetupAnalyticsEvent.init()()
{
  *(v0 + 16) = 2;
  v1 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_startDate;
  v2 = sub_240759744();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_endDate, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup) = 0;
  *(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_lastViewedScreen) = 14;
  *(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_appUsage) = 2;
  *(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_askToBuy) = 2;
  *(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_commSafety) = 2;
  *(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_screenDistance) = 2;
  v4 = v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_name);
  *v5 = 0xD000000000000030;
  v5[1] = 0x8000000240789640;
  return v0;
}

uint64_t AISChildSetupAnalyticsEvent.deinit()
{
  sub_2406E3A40(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_startDate);
  sub_2406E3A40(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_endDate);

  return v0;
}

uint64_t AISChildSetupAnalyticsEvent.__deallocating_deinit()
{
  sub_2406E3A40(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_startDate);
  sub_2406E3A40(v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_endDate);

  return swift_deallocClassInstance();
}

uint64_t sub_2406E3788()
{
  v1 = (*v0 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

AppleIDSetup::AISChildSetupScreen_optional __swiftcall AISChildSetupScreen.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24075AA34();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2406E3840()
{
  v0 = AISChildSetupScreen.rawValue.getter();
  v2 = v1;
  if (v0 == AISChildSetupScreen.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24075ACF4();
  }

  return v5 & 1;
}

uint64_t sub_2406E38DC()
{
  sub_24075AE64();
  AISChildSetupScreen.rawValue.getter();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_2406E3944(uint64_t a1)
{
  AISChildSetupScreen.rawValue.getter();
  sub_24075A114();
}

uint64_t sub_2406E39A8(uint64_t a1)
{
  sub_24075AE64();
  AISChildSetupScreen.rawValue.getter();
  sub_24075A114();

  return sub_24075AED4();
}

unint64_t sub_2406E3A18@<X0>(unint64_t *a1@<X8>)
{
  result = AISChildSetupScreen.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2406E3A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2406E3AAC()
{
  result = qword_27E4BCC30;
  if (!qword_27E4BCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCC30);
  }

  return result;
}

uint64_t keypath_get_6Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_24061DDE0(v4 + v5, a3);
}

uint64_t keypath_get_12Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_13Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t type metadata accessor for AISChildSetupAnalyticsEvent(uint64_t a1)
{
  result = qword_27E4BCC38;
  if (!qword_27E4BCC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2406E3C8C(uint64_t a1)
{
  sub_2406E4354(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2406E4354(uint64_t a1)
{
  if (!qword_27E4BCC48)
  {
    sub_240759744();
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4BCC48);
    }
  }
}

uint64_t SafetySettingsFlowType.stringValue.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x7964647562;
    case 2:
      return 0x73676E6974746573;
    case 1:
      return 0x64647562696E696DLL;
  }

  result = sub_24075AD64();
  __break(1u);
  return result;
}

unint64_t SafetySettingsFlowType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2406E4470()
{
  result = qword_27E4BCC50;
  if (!qword_27E4BCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCC50);
  }

  return result;
}

unint64_t *sub_2406E44C4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2406E44F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = sub_24075A0B4();
      v7 = v6;
      if (v5 == sub_24075A0B4() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_24075ACF4();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2406E45D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24075ACF4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2406E4664(uint64_t a1, uint64_t a2)
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

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v28 = v5[2];
    v29 = v8;
    v30 = v5[4];
    v9 = v5[1];
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[4];
    v32 = v6[3];
    v33 = v13;
    v31[1] = v11;
    v31[2] = v12;
    v31[0] = v10;
    v19 = v12;
    v20 = v32;
    v21 = v13;
    v17 = v10;
    v18 = v11;
    sub_2406AA12C(v27, v16);
    sub_2406AA12C(v31, v16);
    v14 = _s12AppleIDSetup11SetupReportV2eeoiySbAC_ACtFZ_0(&v22, &v17);
    v34[2] = v19;
    v34[3] = v20;
    v34[4] = v21;
    v34[0] = v17;
    v34[1] = v18;
    sub_2406AA188(v34);
    v35[2] = v24;
    v35[3] = v25;
    v35[4] = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_2406AA188(v35);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_2406E47A8(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 48);
  v4 = (a2 + 48);
  while (1)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v9 = *(v4 - 2);
    v8 = *(v4 - 1);
    v10 = *v4;
    v55 = v3;
    v56 = v8;
    v54 = v4;
    if (v5)
    {
      if (!v9)
      {
        return 0;
      }

      sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
      v11 = v5;
      v12 = v10;
      v13 = v8;
      v14 = v5;
      v15 = v6;
      sub_240618C78(v6, v7);
      v16 = v9;
      v17 = v9;
      v18 = v13;
      v10 = v12;
      sub_240618C78(v18, v12);
      v19 = v17;
      v20 = v14;
      v21 = sub_24075A6D4();

      if ((v21 & 1) == 0)
      {

        sub_24058C9E4(v56, v12);
        v11 = v20;
        v51 = v15;
        goto LABEL_74;
      }
    }

    else
    {
      if (v9)
      {
        return 0;
      }

      v11 = 0;
      v16 = 0;
      v15 = *(v3 - 1);
      sub_240618C78(v15, v7);
      sub_240618C78(v8, v10);
    }

    if (v7 >> 60 == 15)
    {
      v22 = v16;
      if (v10 >> 60 != 15)
      {
        goto LABEL_71;
      }

      sub_240618C78(v15, v7);
      sub_240618C78(v56, v10);
      sub_24058C9E4(v15, v7);

      sub_24058C9E4(v56, v10);
      v23 = v15;
LABEL_44:
      v27 = v7;
      goto LABEL_45;
    }

    v22 = v16;
    if (v10 >> 60 == 15)
    {
LABEL_71:
      v51 = v15;
      sub_240618C78(v15, v7);
      v48 = v56;
      sub_240618C78(v56, v10);
      sub_24058C9E4(v15, v7);
      v49 = v56;
      v50 = v10;
      goto LABEL_73;
    }

    v24 = v7 >> 62;
    v25 = v10 >> 62;
    v51 = v15;
    if (v7 >> 62 == 3)
    {
      v26 = 0;
      if (!v15 && v7 == 0xC000000000000000 && v10 >> 62 == 3)
      {
        v26 = 0;
        if (!v56 && v10 == 0xC000000000000000)
        {
          sub_240618C78(0, 0xC000000000000000);
          sub_240618C78(0, 0xC000000000000000);
          sub_24058C9E4(0, 0xC000000000000000);
          sub_24058C9E4(0, 0xC000000000000000);

          sub_24058C9E4(0, 0xC000000000000000);
          v23 = 0;
          v27 = 0xC000000000000000;
LABEL_45:
          sub_24058C9E4(v23, v27);
          goto LABEL_46;
        }
      }

LABEL_31:
      if (v25 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v33 = *(v15 + 16);
        v32 = *(v15 + 24);
        v30 = __OFSUB__(v32, v33);
        v26 = v32 - v33;
        if (v30)
        {
          goto LABEL_78;
        }

        goto LABEL_31;
      }

      v26 = 0;
      if (v25 <= 1)
      {
        goto LABEL_32;
      }
    }

    else if (v24)
    {
      LODWORD(v26) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_77;
      }

      v26 = v26;
      if (v25 <= 1)
      {
LABEL_32:
        if (v25)
        {
          LODWORD(v31) = HIDWORD(v56) - v56;
          if (__OFSUB__(HIDWORD(v56), v56))
          {
            goto LABEL_76;
          }

          v31 = v31;
        }

        else
        {
          v31 = BYTE6(v10);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v26 = BYTE6(v7);
      if (v25 <= 1)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    if (v25 != 2)
    {
      if (v26)
      {
        break;
      }

LABEL_43:
      sub_240618C78(v15, v7);
      sub_240618C78(v56, v10);
      sub_24058C9E4(v56, v10);
      sub_24058C9E4(v15, v7);

      sub_24058C9E4(v56, v10);
      v23 = v15;
      goto LABEL_44;
    }

    v29 = *(v56 + 16);
    v28 = *(v56 + 24);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (v30)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

LABEL_38:
    if (v26 != v31)
    {
      break;
    }

    if (v26 < 1)
    {
      goto LABEL_43;
    }

    v53 = v11;
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        memset(v58, 0, 14);
        sub_240618C78(v15, v7);
        v34 = v10;
        v35 = v56;
        sub_240618C78(v56, v34);
        goto LABEL_64;
      }

      v52 = v22;
      v36 = *(v15 + 16);
      v37 = *(v51 + 24);
      sub_240618C78(v51, v7);
      sub_240618C78(v56, v10);
      v38 = sub_240759504();
      if (v38)
      {
        v39 = sub_240759534();
        if (__OFSUB__(v36, v39))
        {
          goto LABEL_81;
        }

        v38 += v36 - v39;
      }

      if (__OFSUB__(v37, v36))
      {
        goto LABEL_80;
      }

      v34 = v10;
      sub_240759524();
      v40 = v38;
      v35 = v56;
      v41 = v56;
      v42 = v34;
    }

    else
    {
      if (!v24)
      {
        v58[0] = v15;
        LOWORD(v58[1]) = v7;
        BYTE2(v58[1]) = BYTE2(v7);
        BYTE3(v58[1]) = BYTE3(v7);
        BYTE4(v58[1]) = BYTE4(v7);
        BYTE5(v58[1]) = BYTE5(v7);
        sub_240618C78(v15, v7);
        v34 = v10;
        v35 = v56;
        sub_240618C78(v56, v34);
LABEL_64:
        sub_2406E6E6C(v58, v35, v34, &v57);
        sub_24058C9E4(v35, v34);
        v46 = v57;
        goto LABEL_68;
      }

      v52 = v22;
      if (v15 >> 32 < v15)
      {
        goto LABEL_79;
      }

      sub_240618C78(v15, v7);
      sub_240618C78(v56, v10);
      v43 = sub_240759504();
      if (v43)
      {
        v44 = sub_240759534();
        if (__OFSUB__(v15, v44))
        {
          goto LABEL_82;
        }

        v45 = v10;
        v43 += v51 - v44;
      }

      else
      {
        v45 = v10;
      }

      sub_240759524();
      v40 = v43;
      v35 = v56;
      v41 = v56;
      v34 = v45;
      v42 = v45;
    }

    sub_2406E6E6C(v40, v41, v42, v58);
    sub_24058C9E4(v35, v34);
    v46 = v58[0];
    v22 = v52;
LABEL_68:
    sub_24058C9E4(v51, v7);

    sub_24058C9E4(v35, v34);
    sub_24058C9E4(v51, v7);
    if ((v46 & 1) == 0)
    {
      return 0;
    }

LABEL_46:
    v3 = v55 + 3;
    v4 = v54 + 3;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_240618C78(v15, v7);
  v48 = v56;
  sub_240618C78(v56, v10);
  sub_24058C9E4(v56, v10);
  v49 = v15;
  v50 = v7;
LABEL_73:
  sub_24058C9E4(v49, v50);

  sub_24058C9E4(v48, v10);
LABEL_74:

  sub_24058C9E4(v51, v7);
  return 0;
}

void static SetupReport.LocaleInfo.current.getter(uint64_t *a1@<X8>)
{
  v2 = sub_2407597F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2407597E4();
  v6 = sub_2407597C4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = sub_2407597D4();
  v10 = sub_24075A084();
  v11 = CFPreferencesCopyValue(v10, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  if (v11 && (v13[1] = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F30, &unk_2407692C0), swift_dynamicCast()))
  {
    v12 = v13[0];
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v12;
}

void __swiftcall SetupReport.into()(AISSetupReport *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v20 = v1[5];
  v22 = v1[9];
  v7 = [objc_allocWithZone(AISSetupReport) init];
  type metadata accessor for AIDAServiceType(0);
  sub_2406BFA14(&qword_280FAD720, &unk_24075D60C);
  v8 = sub_240759F54();
  [v7 setAccountAltDSIDsByService_];

  if (v2)
  {
    v9 = sub_24075A084();
  }

  else
  {
    v9 = 0;
  }

  [v7 setCreatedPersonaID_];

  if (v3)
  {
    v10 = sub_24075A084();
  }

  else
  {
    v10 = 0;
  }

  [v7 setAltDSID_];

  if (v4)
  {
    v11 = objc_allocWithZone(AISSetupReportLocaleInfo);

    v12 = [v11 init];
    v13 = sub_24075A084();
    [v12 setLocaleID_];

    v14 = sub_24075A2B4();
    [v12 setLanguages_];

    v15 = sub_24075A2B4();
    [v12 setKeyboards_];

    sub_240604C2C(v21, v4, v5, v6);
  }

  else
  {
    v12 = 0;
  }

  [v7 setPeerDeviceLocaleInfo_];

  v16 = *(v22 + 16);
  if (v16)
  {
    sub_24075A934();
    v18 = v22 + 32;
    do
    {
      v18 += 80;
      SetupReport.into()(v17);
      sub_24075A914();
      sub_24075A944();
      sub_24075A954();
      sub_24075A924();
      --v16;
    }

    while (v16);
  }

  sub_240590794(0, &qword_27E4BCC58, off_278CABE98);
  v19 = sub_24075A2B4();

  [v7 setChildReports_];
}

uint64_t SetupReport.newPersonaID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SetupReport.altDSID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SetupReport.peerDeviceLocaleInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_240618FD8(v2, v3);
}

uint64_t SetupReport.childReports.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

__n128 SetupReport.init(accountAltDSIDsByService:newPersonaID:altDSID:peerDeviceLocaleInfo:childReports:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = *a6;
  v9 = *(a6 + 16);
  *(a8 + 40) = *a6;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 56) = v9;
  *(a8 + 72) = a7;
  return result;
}

unint64_t sub_2406E5428()
{
  v1 = *v0;
  v2 = 0x6F7372655077656ELL;
  v3 = 0x44495344746C61;
  v4 = 0x706552646C696863;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_2406E54D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E7CD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406E5500(uint64_t a1)
{
  v2 = sub_2406E743C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406E553C(uint64_t a1)
{
  v2 = sub_2406E743C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupReport.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC60, &qword_240779E28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v25 = v1[2];
  v26 = v8;
  v11 = v1[5];
  v23 = v1[4];
  v24 = v10;
  v12 = v1[7];
  v19 = v1[6];
  v20 = v12;
  v13 = v1[9];
  v21 = v1[8];
  v22 = v11;
  v18 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406E743C();

  v14 = v4;
  sub_24075AF74();
  v27 = v9;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC70, &qword_240779E30);
  sub_2406E7490();
  sub_24075ABE4();
  if (v2)
  {
  }

  else
  {
    v15 = v22;

    LOBYTE(v27) = 1;
    sub_24075AB64();
    LOBYTE(v27) = 2;
    sub_24075AB64();
    v27 = v15;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = 3;
    sub_240618FD8(v15, v19);
    sub_24061907C();
    sub_24075AB94();
    sub_240604C2C(v27, v28, v29, v30);
    v27 = v18;
    v31 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC80, &qword_240779E38);
    sub_2406E7634(&qword_27E4BCC88, sub_2406E7538, MEMORY[0x277D83948]);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v14);
}

uint64_t SetupReport.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v13 = v1[9];
  sub_240620D20(a1, *v1);
  if (v3)
  {
    sub_24075AE94();
    sub_24075A114();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_13:
    sub_24075AE94();
    goto LABEL_14;
  }

  sub_24075AE94();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_24075AE94();
  sub_24075A114();
  MEMORY[0x245CC6BA0](*(v5 + 16));
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = v5 + 40;
    do
    {

      sub_24075A114();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  MEMORY[0x245CC6BA0](*(v7 + 16));
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = v7 + 40;
    do
    {

      sub_24075A114();

      v11 += 16;
      --v10;
    }

    while (v10);
  }

LABEL_14:

  return sub_240682FF8(a1, v13);
}

uint64_t SetupReport.hashValue.getter()
{
  sub_24075AE64();
  SetupReport.hash(into:)(v1);
  return sub_24075AED4();
}

void SetupReport.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC98, &qword_240779E40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406E743C();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC70, &qword_240779E30);
    LOBYTE(v30) = 0;
    sub_2406E758C();
    sub_24075AAF4();
    v9 = v35;
    LOBYTE(v35) = 1;
    v10 = sub_24075AA74();
    v29 = v11;
    v26 = v10;
    LOBYTE(v35) = 2;
    v25 = sub_24075AA74();
    v27 = v12;
    LOBYTE(v30) = 3;
    sub_2406190D0();
    sub_24075AAA4();
    v23 = v35;
    v24 = v36;
    v22 = v37;
    v28 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC80, &qword_240779E38);
    v45[0] = 4;
    sub_2406E7634(&qword_27E4BCCA8, sub_2406E76AC, MEMORY[0x277D83978]);
    sub_24075AAF4();
    (*(v6 + 8))(v8, v5);
    v21 = v46;
    v13 = v26;
    *&v30 = v9;
    *(&v30 + 1) = v26;
    v14 = v29;
    v15 = v25;
    *&v31 = v29;
    *(&v31 + 1) = v25;
    v16 = v27;
    *&v32 = v27;
    *(&v32 + 1) = v23;
    v17 = v22;
    *&v33 = v24;
    *(&v33 + 1) = v22;
    *&v34 = v28;
    *(&v34 + 1) = v46;
    v18 = v33;
    a2[2] = v32;
    a2[3] = v18;
    v19 = v31;
    *a2 = v30;
    a2[1] = v19;
    a2[4] = v34;
    sub_2406AA12C(&v30, &v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35 = v9;
    v36 = v13;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v23;
    v41 = v24;
    v42 = v17;
    v43 = v28;
    v44 = v21;
    sub_2406AA188(&v35);
  }
}

uint64_t sub_2406E5F28()
{
  sub_24075AE64();
  SetupReport.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406E5F6C(uint64_t a1)
{
  sub_24075AE64();
  SetupReport.hash(into:)(v2);
  return sub_24075AED4();
}

AISSetupReportLocaleInfo __swiftcall SetupReport.LocaleInfo.into()()
{
  v0 = [objc_allocWithZone(AISSetupReportLocaleInfo) init];
  v1 = sub_24075A084();
  [v0 setLocaleID_];

  v2 = sub_24075A2B4();
  [v0 setLanguages_];

  v3 = sub_24075A2B4();
  [v0 setKeyboards_];

  v7 = v0;
  result._keyboards = v6;
  result._languages = v5;
  result._localeID = v4;
  result.super.isa = v7;
  return result;
}

uint64_t AISSetupReport.into()@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 accountAltDSIDsByService];
  type metadata accessor for AIDAServiceType(0);
  sub_2406BFA14(&qword_280FAD720, &unk_24075D60C);
  v4 = sub_240759F74();

  v5 = [v1 createdPersonaID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24075A0B4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v1 altDSID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_24075A0B4();
    v40 = v13;
  }

  else
  {
    v12 = 0;
    v40 = 0;
  }

  v14 = [v1 peerDeviceLocaleInfo];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 localeID];
    v17 = sub_24075A0B4();
    v38 = v18;
    v39 = v17;

    v19 = [v15 languages];
    v37 = sub_24075A2C4();

    v20 = [v15 keyboards];
    v21 = sub_24075A2C4();
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v21 = 0;
  }

  v22 = [v1 childReports];
  sub_240590794(0, &qword_27E4BCC58, off_278CABE98);
  v23 = sub_24075A2C4();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v12;
    if (v24)
    {
      goto LABEL_12;
    }

LABEL_23:

    v27 = MEMORY[0x277D84F90];
LABEL_24:
    *a1 = v4;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v41;
    a1[4] = v40;
    a1[5] = v39;
    a1[6] = v38;
    a1[7] = v37;
    a1[8] = v21;
    a1[9] = v27;
    return result;
  }

  v24 = sub_24075A9D4();
  v41 = v12;
  if (!v24)
  {
    goto LABEL_23;
  }

LABEL_12:
  v43 = MEMORY[0x277D84F90];
  result = sub_2406B81EC(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v36 = v21;
    v26 = 0;
    v27 = v43;
    if ((v23 & 0xC000000000000001) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    for (i = MEMORY[0x245CC65B0](v26, v23); ; i = *(v23 + 8 * v26 + 32))
    {
      v29 = i;
      AISSetupReport.into()(v42);

      v43 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2406B81EC((v30 > 1), v31 + 1, 1);
        v27 = v43;
      }

      *(v27 + 16) = v31 + 1;
      v32 = (v27 + 80 * v31);
      v32[2] = v42[0];
      v33 = v42[1];
      v34 = v42[2];
      v35 = v42[4];
      v32[5] = v42[3];
      v32[6] = v35;
      v32[3] = v33;
      v32[4] = v34;
      if (v24 - 1 == v26)
      {
        break;
      }

      ++v26;
      if ((v23 & 0xC000000000000001) != 0)
      {
        goto LABEL_14;
      }

LABEL_15:
      ;
    }

    v21 = v36;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

AppleIDSetup::SetupReport::LocaleInfo __swiftcall AISSetupReportLocaleInfo.into()()
{
  v2 = v0;
  v3 = [v1 localeID];
  v4 = sub_24075A0B4();
  v6 = v5;

  v7 = [v1 languages];
  v8 = sub_24075A2C4();

  v9 = [v1 keyboards];
  v10 = sub_24075A2C4();

  *v2 = v4;
  v2[1] = v6;
  v2[2] = v8;
  v2[3] = v10;
  result.keyboards._rawValue = v14;
  result.languages._rawValue = v13;
  result.localeID._object = v12;
  result.localeID._countAndFlagsBits = v11;
  return result;
}

uint64_t SetupReport.LocaleInfo.localeID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SetupReport.LocaleInfo.preferredLanguage.getter()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);

  return v2;
}

AppleIDSetup::SetupReport::LocaleInfo __swiftcall SetupReport.LocaleInfo.init(localeID:languages:keyboards:)(Swift::String localeID, Swift::OpaquePointer languages, Swift::OpaquePointer keyboards)
{
  *v3 = localeID;
  *(v3 + 16) = languages;
  *(v3 + 24) = keyboards;
  result.localeID = localeID;
  result.keyboards = keyboards;
  result.languages = languages;
  return result;
}

uint64_t static SetupReport.LocaleInfo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24075ACF4() & 1) == 0 || (sub_2406E45D4(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_2406E45D4(v3, v4);
}

uint64_t sub_2406E65EC()
{
  v1 = 0x65676175676E616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6472616F6279656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C61636F6CLL;
  }
}

uint64_t sub_2406E6650@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E7E9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406E6678(uint64_t a1)
{
  v2 = sub_2406E7700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406E66B4(uint64_t a1)
{
  v2 = sub_2406E7700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupReport.LocaleInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCCB8, &qword_240779E48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406E7700();
  sub_24075AF74();
  LOBYTE(v15) = 0;
  v8 = v13;
  sub_24075ABB4();
  if (!v8)
  {
    v9 = v11;
    v15 = v12;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F30, &unk_2407692C0);
    sub_2406E7754(&qword_27E4BCCC8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24075ABE4();
    v15 = v9;
    v14 = 2;
    sub_24075ABE4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SetupReport.LocaleInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_24075A114();
  MEMORY[0x245CC6BA0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_24075A114();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  result = MEMORY[0x245CC6BA0](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v3 + 40;
    do
    {

      sub_24075A114();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t SetupReport.LocaleInfo.hashValue.getter()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_24075AE64();
  SetupReport.LocaleInfo.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t SetupReport.LocaleInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCCD0, &qword_240779E50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406E7700();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v17 = sub_24075AAC4();
  v18 = v9;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F30, &unk_2407692C0);
  v19 = 1;
  sub_2406E7754(&qword_27E4BCCD8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24075AAF4();
  v15 = v20;
  v19 = 2;
  sub_24075AAF4();
  (*(v6 + 8))(v8, v5);
  v10 = v20;
  v11 = v16;
  v12 = v18;
  *v16 = v17;
  v11[1] = v12;
  v11[2] = v15;
  v11[3] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406E6D20(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24075ACF4() & 1) == 0 || (sub_2406E45D4(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_2406E45D4(v3, v4);
}

uint64_t sub_2406E6DB4()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_24075AE64();
  SetupReport.LocaleInfo.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t sub_2406E6E14(uint64_t a1)
{
  v2 = v1[3];
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = v2;
  sub_24075AE64();
  SetupReport.LocaleInfo.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_2406E6E6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_240759504();
    if (v10)
    {
      v11 = sub_240759534();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_240759524();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_240759504();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_240759534();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_240759524();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s12AppleIDSetup11SetupReportV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  v32 = a1[7];
  v33 = a1[5];
  v31 = a1[8];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v29 = a2[5];
  v27 = a1[9];
  v28 = a2[6];
  v11 = a2[8];
  v30 = a2[7];
  v26 = a2[9];
  if ((sub_24061FA88(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v2 != v7 || v4 != v8) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v9 || v5 != v10) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v6;
  if (v6)
  {
    v13 = v31;
    v14 = v32;
    v15 = v33;
    v16 = v11;
    v18 = v28;
    v17 = v29;
    if (v28)
    {
      if (v33 == v29 && v12 == v28 || (sub_24075ACF4()) && (sub_2406E45D4(v32, v30))
      {
        v19 = sub_2406E45D4(v31, v11);
        sub_240618FD8(v33, v12);
        sub_240618FD8(v29, v28);
        sub_240618FD8(v33, v12);
        sub_240604C2C(v29, v28, v30, v11);

        sub_240604C2C(v33, v12, v32, v31);
        if (v19)
        {
          goto LABEL_32;
        }

        return 0;
      }

      sub_240618FD8(v33, v12);
      sub_240618FD8(v29, v28);
      sub_240618FD8(v33, v12);
      sub_240604C2C(v29, v28, v30, v11);

      v21 = v33;
      v22 = v12;
      v23 = v32;
      v24 = v31;
LABEL_29:
      sub_240604C2C(v21, v22, v23, v24);
      return 0;
    }

    sub_240618FD8(v33, v12);
    v20 = v30;
    sub_240618FD8(v29, 0);
    sub_240618FD8(v33, v12);

LABEL_28:
    sub_240604C2C(v15, v12, v14, v13);
    v21 = v17;
    v22 = v18;
    v23 = v20;
    v24 = v16;
    goto LABEL_29;
  }

  v14 = v32;
  v15 = v33;
  v13 = v31;
  sub_240618FD8(v33, 0);
  v16 = v11;
  v18 = v28;
  v17 = v29;
  if (v28)
  {
    v20 = v30;
    sub_240618FD8(v29, v28);
    goto LABEL_28;
  }

  sub_240618FD8(v29, 0);
  sub_240604C2C(v33, 0, v32, v31);
LABEL_32:

  return sub_2406E4664(v27, v26);
}

unint64_t sub_2406E743C()
{
  result = qword_27E4BCC68;
  if (!qword_27E4BCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCC68);
  }

  return result;
}

unint64_t sub_2406E7490()
{
  result = qword_27E4BCC78;
  if (!qword_27E4BCC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BCC70, &qword_240779E30);
    sub_2406BFA14(&qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCC78);
  }

  return result;
}

unint64_t sub_2406E7538()
{
  result = qword_27E4BCC90;
  if (!qword_27E4BCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCC90);
  }

  return result;
}

unint64_t sub_2406E758C()
{
  result = qword_27E4BCCA0;
  if (!qword_27E4BCCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BCC70, &qword_240779E30);
    sub_2406BFA14(&qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCCA0);
  }

  return result;
}

uint64_t sub_2406E7634(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BCC80, &qword_240779E38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2406E76AC()
{
  result = qword_27E4BCCB0;
  if (!qword_27E4BCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCCB0);
  }

  return result;
}

unint64_t sub_2406E7700()
{
  result = qword_27E4BCCC0;
  if (!qword_27E4BCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCCC0);
  }

  return result;
}

uint64_t sub_2406E7754(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8F30, &unk_2407692C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2406E7800()
{
  result = qword_27E4BCCE0;
  if (!qword_27E4BCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCCE0);
  }

  return result;
}

unint64_t sub_2406E7858()
{
  result = qword_27E4BCCE8;
  if (!qword_27E4BCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCCE8);
  }

  return result;
}

uint64_t sub_2406E78EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406E7940()
{
  result = qword_27E4BCCF0;
  if (!qword_27E4BCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCCF0);
  }

  return result;
}

unint64_t sub_2406E7998()
{
  result = qword_27E4BCCF8;
  if (!qword_27E4BCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCCF8);
  }

  return result;
}

uint64_t sub_2406E79EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2406E7A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2406E7ACC()
{
  result = qword_27E4BCD00;
  if (!qword_27E4BCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD00);
  }

  return result;
}

unint64_t sub_2406E7B24()
{
  result = qword_27E4BCD08;
  if (!qword_27E4BCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD08);
  }

  return result;
}

unint64_t sub_2406E7B7C()
{
  result = qword_27E4BCD10;
  if (!qword_27E4BCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD10);
  }

  return result;
}

unint64_t sub_2406E7BD4()
{
  result = qword_27E4BCD18;
  if (!qword_27E4BCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD18);
  }

  return result;
}

unint64_t sub_2406E7C2C()
{
  result = qword_27E4BCD20;
  if (!qword_27E4BCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD20);
  }

  return result;
}

unint64_t sub_2406E7C84()
{
  result = qword_27E4BCD28;
  if (!qword_27E4BCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD28);
  }

  return result;
}

uint64_t sub_2406E7CD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000240789750 == a2;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7372655077656ELL && a2 == 0xEC0000004449616ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240789770 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x706552646C696863 && a2 == 0xEC0000007374726FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2406E7E9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

id TermsAgreement.account.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TermsAgreement.error.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t TermsAgreement.terms.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TermsAgreement.clientInfo.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void (*TermsAgreement.error.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_24058F4B8;
}

uint64_t TermsAgreement.init(account:termsEntries:terms:clientInfo:success:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_2406E8168()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6E49746E65696C63;
  v4 = 0x73736563637573;
  if (v1 != 4)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E45736D726574;
  if (v1 != 1)
  {
    v5 = 0x736D726574;
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

uint64_t sub_2406E8224@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E93E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406E824C(uint64_t a1)
{
  v2 = sub_2406E8F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406E8288(uint64_t a1)
{
  v2 = sub_2406E8F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TermsAgreement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCD30, &qword_24077A310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v8;
  v11 = *(v1 + 40);
  v18 = *(v1 + 32);
  v19 = v10;
  v17 = v11;
  v16 = *(v1 + 48);
  v15 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406E8F50();
  v12 = v9;
  sub_24075AF74();
  v23 = v9;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
  sub_240590128(&qword_27E4B6388, &qword_27E4B6380, &qword_24077A650, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();
  if (!v2)
  {

    v23 = v21;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCD40, &qword_24077A318);
    sub_2406E8FA4(&qword_27E4BCD48, &qword_27E4BCD50, &protocol conformance descriptor for AATermsEntry, MEMORY[0x277D83B50]);
    sub_24075ABE4();
    LOBYTE(v23) = 2;
    sub_24075AB64();
    LOBYTE(v23) = 3;
    sub_24075AB64();
    LOBYTE(v23) = 4;
    sub_24075ABC4();
    v23 = v15;
    v22 = 5;
    v14 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v4);
}

void TermsAgreement.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  if (*v1)
  {
    sub_24075AE94();
    v6 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_2405F115C();
  if (v3)
  {
    sub_24075AE94();
    sub_24075A114();
    if (v4)
    {
LABEL_6:
      sub_24075AE94();
      sub_24075A114();
      goto LABEL_9;
    }
  }

  else
  {
    sub_24075AE94();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_24075AE94();
LABEL_9:
  sub_24075AE94();
  if (v5)
  {
    sub_24075AE94();
    v7 = v5;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }
}

uint64_t TermsAgreement.hashValue.getter()
{
  sub_24075AE64();
  TermsAgreement.hash(into:)(v1);
  return sub_24075AED4();
}

void TermsAgreement.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCD58, &qword_24077A320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406E8F50();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
    LOBYTE(v26) = 0;
    sub_240590128(&qword_27E4B63A8, &qword_27E4B6380, &qword_24077A650, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v9 = v30[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCD40, &qword_24077A318);
    LOBYTE(v26) = 1;
    sub_2406E8FA4(&qword_27E4BCD60, &qword_27E4BCD68, &protocol conformance descriptor for AATermsEntry, MEMORY[0x277D83B70]);
    sub_24075AAF4();
    v25 = v30[0];
    LOBYTE(v30[0]) = 2;
    v10 = sub_24075AA74();
    v24 = v11;
    v22 = v10;
    LOBYTE(v30[0]) = 3;
    v21 = sub_24075AA74();
    v23 = v12;
    LOBYTE(v30[0]) = 4;
    LODWORD(v20) = sub_24075AAD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v33[0] = 5;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v13 = v20 & 1;
    (*(v6 + 8))(v8, v5);
    v20 = v34;
    v14 = v24;
    v15 = v25;
    *&v26 = v9;
    *(&v26 + 1) = v25;
    v16 = v23;
    *&v27 = v22;
    *(&v27 + 1) = v24;
    v17 = v21;
    *&v28 = v21;
    *(&v28 + 1) = v23;
    LOBYTE(v29) = v13;
    *(&v29 + 1) = v34;
    v18 = v27;
    *a2 = v26;
    a2[1] = v18;
    v19 = v29;
    a2[2] = v28;
    a2[3] = v19;
    sub_2406E902C(&v26, v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v30[0] = v9;
    v30[1] = v15;
    v30[2] = v22;
    v30[3] = v14;
    v30[4] = v17;
    v30[5] = v16;
    v31 = v13;
    v32 = v20;
    sub_2406E9064(v30);
  }
}

uint64_t sub_2406E8CC8()
{
  sub_24075AE64();
  TermsAgreement.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406E8D0C(uint64_t a1)
{
  sub_24075AE64();
  TermsAgreement.hash(into:)(v2);
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup14TermsAgreementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *a2;
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  if ((sub_240753B98() & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    result = 0;
    if (v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    return 0;
  }

  sub_240590794(0, &qword_27E4B63F8, 0x277CB8F30);
  v8 = v5;
  v9 = v2;
  v10 = sub_24075A6D4();

  result = 0;
  if ((v10 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  if (((v3 ^ v6) & 1) == 0)
  {
    result = (v4 | v7) == 0;
    if (v4)
    {
      if (v7)
      {
        sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
        v12 = v7;
        v13 = v4;
        v14 = sub_24075A6D4();

        return v14 & 1;
      }
    }
  }

  return result;
}

unint64_t sub_2406E8F50()
{
  result = qword_27E4BCD38;
  if (!qword_27E4BCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD38);
  }

  return result;
}

uint64_t sub_2406E8FA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BCD40, &qword_24077A318);
    sub_2406E95E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2406E9094(void *a1)
{
  a1[1] = sub_2406E90CC();
  a1[2] = sub_2406E9120();
  result = sub_2406E9174();
  a1[3] = result;
  return result;
}

unint64_t sub_2406E90CC()
{
  result = qword_27E4BCD70;
  if (!qword_27E4BCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD70);
  }

  return result;
}

unint64_t sub_2406E9120()
{
  result = qword_27E4BCD78;
  if (!qword_27E4BCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD78);
  }

  return result;
}

unint64_t sub_2406E9174()
{
  result = qword_27E4BCD80;
  if (!qword_27E4BCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD80);
  }

  return result;
}

unint64_t sub_2406E91CC()
{
  result = qword_27E4BCD88;
  if (!qword_27E4BCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD88);
  }

  return result;
}

uint64_t sub_2406E9220(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2406E9268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2406E92DC()
{
  result = qword_27E4BCD90;
  if (!qword_27E4BCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD90);
  }

  return result;
}

unint64_t sub_2406E9334()
{
  result = qword_27E4BCD98;
  if (!qword_27E4BCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCD98);
  }

  return result;
}

unint64_t sub_2406E938C()
{
  result = qword_27E4BCDA0;
  if (!qword_27E4BCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCDA0);
  }

  return result;
}

uint64_t sub_2406E93E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E45736D726574 && a2 == 0xEC00000073656972 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D726574 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2406E95E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AATermsEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 SignInModel.init(account:srpResults:requiredServices:desiredServices:shouldBackgroundDesiredServices:suppressCloudDataProtectionSetup:localSecret:localSecretType:deviceUserKind:state:peerDeviceLocaleInfo:serverDeviceModel:forceReplacePrimaryUser:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t a12, __n128 *a13, uint64_t a14, uint64_t a15, char a16)
{
  v41 = a11[1];
  v42 = *a11;
  v39 = *a10;
  v40 = *(a11 + 16);
  v19 = type metadata accessor for IdMSAccount(0);
  v49 = a13[1];
  v50 = *a13;
  (*(*(v19 - 8) + 56))(a9, 1, 1, v19);
  v20 = type metadata accessor for SignInModel(0);
  v21 = (a9 + v20[5]);
  v21[4] = 0u;
  v21[5] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  *v21 = 0u;
  v21[1] = 0u;
  v22 = (a9 + v20[10]);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = (a9 + v20[11]);
  *(a9 + v20[13]) = 0;
  v24 = v20[15];
  v25 = (a9 + v20[14]);
  *(a9 + v24) = 2;
  v26 = (a9 + v20[17]);
  *v26 = 0;
  v26[1] = 0;
  *(a9 + v20[18]) = 0;
  sub_240590814(a1, a9);
  v27 = v21[3];
  v51[2] = v21[2];
  v51[3] = v27;
  v28 = v21[5];
  v51[4] = v21[4];
  v51[5] = v28;
  v29 = v21[1];
  v51[0] = *v21;
  v51[1] = v29;
  sub_2405B8A50(v51, &qword_27E4B8D00, &qword_2407691E0);
  v30 = a2[3];
  v21[2] = a2[2];
  v21[3] = v30;
  v31 = a2[5];
  v21[4] = a2[4];
  v21[5] = v31;
  v32 = a2[1];
  *v21 = *a2;
  v21[1] = v32;
  *(a9 + v20[6]) = a3;
  *(a9 + v20[7]) = a4;
  *(a9 + v20[8]) = a6;
  *(a9 + v20[9]) = a5;
  *v25 = a7;
  v25[1] = a8;
  *(a9 + v24) = v39;
  v33 = a9 + v20[16];
  *v33 = v42;
  *(v33 + 8) = v41;
  *(v33 + 16) = v40;
  v34 = a9 + v20[19];
  v35 = *(a12 + 16);
  *v34 = *a12;
  *(v34 + 16) = v35;
  *(v34 + 96) = *(a12 + 96);
  v36 = *(a12 + 80);
  *(v34 + 64) = *(a12 + 64);
  *(v34 + 80) = v36;
  v37 = *(a12 + 48);
  *(v34 + 32) = *(a12 + 32);
  *(v34 + 48) = v37;
  sub_240604C2C(*v22, v22[1], v22[2], v22[3]);
  result = v50;
  *v22 = v50;
  *(v22 + 1) = v49;
  *v23 = a14;
  v23[1] = a15;
  *(a9 + v20[12]) = a16;
  return result;
}

uint64_t type metadata accessor for SignInModel(uint64_t a1)
{
  result = qword_27E4BD038;
  if (!qword_27E4BD038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SignInModel.srpResults.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SignInModel(0) + 20));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v7 = v3[1];
  v11[0] = *v3;
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v8;
  a1[1] = v7;
  return sub_2405B044C(v11, &v10, &qword_27E4B8D00, &qword_2407691E0);
}

__n128 SignInModel.srpResults.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SignInModel(0) + 20));
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v5 = v3[5];
  v11[4] = v3[4];
  v11[5] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  sub_2405B8A50(v11, &qword_27E4B8D00, &qword_2407691E0);
  v7 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v7;
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  return result;
}

uint64_t SignInModel.requiredServices.getter()
{
  type metadata accessor for SignInModel(0);
}

uint64_t SignInModel.requiredServices.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SignInModel(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SignInModel.desiredServices.getter()
{
  type metadata accessor for SignInModel(0);
}

uint64_t SignInModel.desiredServices.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SignInModel(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SignInModel.suppressCloudDataProtectionSetup.setter(char a1)
{
  result = type metadata accessor for SignInModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SignInModel.peerDeviceLocaleInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SignInModel(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_240618FD8(v4, v5);
}

__n128 SignInModel.peerDeviceLocaleInfo.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SignInModel(0) + 40));
  sub_240604C2C(*v3, v3[1], v3[2], v3[3]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

uint64_t SignInModel.serverDeviceModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignInModel(0) + 44));

  return v1;
}

uint64_t SignInModel.serverDeviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SignInModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SignInModel.forceReplacePrimaryUser.setter(char a1)
{
  result = type metadata accessor for SignInModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

void *SignInModel.messageSessionTemplate.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignInModel(0) + 52));
  v2 = v1;
  return v1;
}

void sub_2406E9EEC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SignInModel(0) + 52);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void SignInModel.messageSessionTemplate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SignInModel(0) + 52);

  *(v1 + v3) = a1;
}

void (*SignInModel.messageSessionTemplate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SignInModel(0);
  *(v3 + 32) = sub_24058F504();
  return sub_24058F4B8;
}

uint64_t SignInModel.localSecret.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignInModel(0) + 56));

  return v1;
}

uint64_t SignInModel.localSecret.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SignInModel(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SignInModel.localSecretType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SignInModel(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t SignInModel.localSecretType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SignInModel(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t SignInModel.deviceUserKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SignInModel(0) + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_240668CD4(v4, v5, v6);
}

uint64_t SignInModel.deviceUserKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for SignInModel(0) + 64);
  result = sub_240604C7C(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t SignInModel.newPersonaID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignInModel(0) + 68));

  return v1;
}

uint64_t SignInModel.newPersonaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SignInModel(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SignInModel.isFinal.setter(char a1)
{
  result = type metadata accessor for SignInModel(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t SignInModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SignInModel(0) + 76);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 96) = v6;
  return sub_2406EA448(v12, v11);
}

__n128 SignInModel.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SignInModel(0) + 76);
  v4 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v4;
  v11 = *(v3 + 96);
  v5 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v5;
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  sub_2406EA500(v10);
  v7 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  result = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = result;
  return result;
}

unint64_t sub_2406EA584(char a1)
{
  result = 0x746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0x6C75736552707273;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x5364657269736564;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
    case 11:
      result = 0x6365536C61636F6CLL;
      break;
    case 12:
      result = 0x7355656369766564;
      break;
    case 13:
      result = 0x6F7372655077656ELL;
      break;
    case 14:
      result = 0x6C616E69467369;
      break;
    case 15:
      result = 0x6574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2406EA784@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406F5284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406EA7AC(uint64_t a1)
{
  v2 = sub_2406F29D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EA7E8(uint64_t a1)
{
  v2 = sub_2406F29D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDA8, &unk_24077A5E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F29D4();
  sub_24075AF74();
  v69 = 0;
  type metadata accessor for IdMSAccount(0);
  sub_2406F2A28(&qword_27E4B6438, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075AB94();
  if (!v2)
  {
    v9 = type metadata accessor for SignInModel(0);
    v10 = (v3 + v9[5]);
    v11 = v10[3];
    v12 = v10[1];
    v62 = v10[2];
    v63 = v11;
    v13 = v10[3];
    v14 = v10[5];
    v64 = v10[4];
    v65 = v14;
    v15 = v10[1];
    v61[0] = *v10;
    v61[1] = v15;
    v57 = v62;
    v58 = v13;
    v16 = v10[5];
    v59 = v64;
    v60 = v16;
    v55 = v61[0];
    v56 = v12;
    v68 = 1;
    sub_2405B044C(v61, &v47, &qword_27E4B8D00, &qword_2407691E0);
    sub_2406022B8();
    sub_24075AB94();
    v54[2] = v57;
    v54[3] = v58;
    v54[4] = v59;
    v54[5] = v60;
    v54[0] = v55;
    v54[1] = v56;
    sub_2405B8A50(v54, &qword_27E4B8D00, &qword_2407691E0);
    v17 = v9[6];
    v37 = v3;
    *&v47 = *(v3 + v17);
    LOBYTE(v40) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_2406F2B6C(&qword_27E4B8280, &qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B50]);
    sub_24075ABE4();
    *&v47 = *(v37 + v9[7]);
    LOBYTE(v40) = 3;
    sub_24075ABE4();
    v18 = v37;
    LOBYTE(v47) = 4;
    sub_24075ABC4();
    LOBYTE(v47) = 5;
    sub_24075ABC4();
    v19 = (v18 + v9[10]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    *&v47 = *v19;
    *(&v47 + 1) = v20;
    *&v48 = v21;
    *(&v48 + 1) = v22;
    LOBYTE(v40) = 6;
    sub_240618FD8(v47, v20);
    sub_24061907C();
    sub_24075AB94();
    sub_240604C2C(v47, *(&v47 + 1), v48, *(&v48 + 1));
    LOBYTE(v47) = 7;
    sub_24075AB64();
    LOBYTE(v47) = 8;
    sub_24075ABC4();
    *&v47 = *(v18 + v9[13]);
    LOBYTE(v40) = 9;
    v23 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDB8, &qword_24077A5F0);
    sub_240590128(&qword_27E4BCDC0, &qword_27E4BCDB8, &qword_24077A5F0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    LOBYTE(v47) = 10;
    sub_24075AB64();
    LOBYTE(v47) = *(v37 + v9[15]);
    LOBYTE(v40) = 11;
    sub_2406F2A70();
    sub_24075AB94();
    v24 = v37 + v9[16];
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    *&v47 = *v24;
    *(&v47 + 1) = v25;
    LOBYTE(v48) = v26;
    LOBYTE(v40) = 12;
    sub_240668CD4(v47, v25, v26);
    sub_2406F2AC4();
    sub_24075ABE4();
    sub_240604C7C(v47, *(&v47 + 1), v48);
    LOBYTE(v47) = 13;
    sub_24075AB64();
    v67 = 14;
    sub_24075ABC4();
    v27 = (v37 + v9[19]);
    v28 = v27[3];
    v29 = v27[5];
    v51 = v27[4];
    v52 = v29;
    v30 = v27[1];
    v47 = *v27;
    v48 = v30;
    v31 = v27[3];
    v33 = *v27;
    v32 = v27[1];
    v49 = v27[2];
    v50 = v31;
    v34 = v27[5];
    v44 = v51;
    v45 = v34;
    v40 = v33;
    v41 = v32;
    v53 = *(v27 + 96);
    v46 = *(v27 + 96);
    v42 = v49;
    v43 = v28;
    v66 = 15;
    sub_2406EA448(&v47, v38);
    sub_2406F2B18();
    sub_24075ABE4();
    v38[4] = v44;
    v38[5] = v45;
    v39 = v46;
    v38[0] = v40;
    v38[1] = v41;
    v38[2] = v42;
    v38[3] = v43;
    sub_2406EA500(v38);
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 SignInModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IdMSAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v35 - v9;
  sub_2405B044C(v2, v35 - v9, &qword_27E4B6418, &unk_24075D910);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_24061A408(v10, v7);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_2406F2D68(v7, type metadata accessor for IdMSAccount);
  }

  v11 = type metadata accessor for SignInModel(0);
  v12 = v2 + v11[5];
  if (*(v12 + 8) && (v13 = *(v12 + 88), sub_24075AE94(), sub_24075A114(), v13 >> 60 != 15))
  {
    sub_24075AE94();
    sub_2407596D4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_2405F115C();
  sub_2405F115C();
  sub_24075AE94();
  sub_24075AE94();
  v14 = (v2 + v11[10]);
  if (v14[1])
  {
    v16 = v14[2];
    v15 = v14[3];
    sub_24075AE94();
    sub_24075A114();
    MEMORY[0x245CC6BA0](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 40;
      do
      {

        sub_24075A114();

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    MEMORY[0x245CC6BA0](*(v15 + 16));
    v19 = *(v15 + 16);
    if (v19)
    {
      v20 = v15 + 40;
      do
      {

        sub_24075A114();

        v20 += 16;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    sub_24075AE94();
  }

  if (*(v2 + v11[11] + 8))
  {
    sub_24075AE94();
    sub_24075A114();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  v21 = *(v2 + v11[13]);
  sub_24075AE94();
  if (v21)
  {
    v22 = v21;
    sub_24075A6E4();
  }

  if (*(v2 + v11[14] + 8))
  {
    sub_24075AE94();
    sub_24075A114();
  }

  else
  {
    sub_24075AE94();
  }

  v23 = *(v2 + v11[15]);
  sub_24075AE94();
  if (v23 != 2)
  {
    MEMORY[0x245CC6BA0](v23 & 1);
  }

  v24 = v2 + v11[16];
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  if (v27 <= 1)
  {
    if (!v27)
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
      goto LABEL_38;
    }

    v28 = 2;
    goto LABEL_33;
  }

  if (v27 == 2)
  {
    v28 = 4;
LABEL_33:
    MEMORY[0x245CC6BA0](v28);
    sub_24075AE94();
    goto LABEL_38;
  }

  if (v25 | v26)
  {
    v29 = 3;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x245CC6BA0](v29);
LABEL_38:
  if (*(v2 + v11[17] + 8))
  {
    sub_24075AE94();
    sub_24075A114();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  v30 = v2 + v11[19];
  v31 = *(v30 + 80);
  v35[4] = *(v30 + 64);
  v35[5] = v31;
  v36 = *(v30 + 96);
  v32 = *(v30 + 16);
  v35[0] = *v30;
  v35[1] = v32;
  v33 = *(v30 + 48);
  v35[2] = *(v30 + 32);
  v35[3] = v33;
  SignInModel.State.hash(into:)(a1);
  return result;
}

uint64_t SignInModel.hashValue.getter()
{
  sub_24075AE64();
  SignInModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t SignInModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDE0, &qword_24077A5F8);
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  v9 = type metadata accessor for SignInModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdMSAccount(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = &v11[v9[5]];
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v68 = v13;
  v69 = v11;
  v14 = &v11[v9[10]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v70 = v14;
  v71 = v9;
  v15 = v9[13];
  v66 = a1;
  v67 = v15;
  *&v11[v15] = 0;
  v16 = v9[15];
  v11[v16] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F29D4();
  v64 = v8;
  v17 = v65;
  sub_24075AF34();
  if (v17)
  {
    *&v65 = 0;
    v20 = v68;
    v19 = v69;
    __swift_destroy_boxed_opaque_existential_1(v66);
    sub_2405B8A50(v19, &qword_27E4B6418, &unk_24075D910);
    v21 = *(v20 + 3);
    v74 = *(v20 + 2);
    v75 = v21;
    v22 = *(v20 + 5);
    v76 = *(v20 + 4);
    v77 = v22;
    v23 = *(v20 + 1);
    v72 = *v20;
    v73 = v23;
    sub_2405B8A50(&v72, &qword_27E4B8D00, &qword_2407691E0);
    sub_240604C2C(*v70, v70[1], v70[2], v70[3]);
  }

  else
  {
    v60 = v16;
    v18 = v62;
    LOBYTE(v72) = 0;
    sub_2406F2A28(&qword_27E4B6480, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
    sub_24075AAA4();
    v24 = v69;
    sub_240590814(v5, v69);
    v87 = 1;
    sub_240602498();
    sub_24075AAA4();
    v25 = v68;
    v81 = *(&v85[8] + 8);
    v82 = *(&v85[9] + 8);
    v83 = *(&v85[10] + 8);
    v84 = *(&v85[11] + 8);
    v79 = *(&v85[6] + 8);
    v80 = *(&v85[7] + 8);
    v26 = *(v68 + 3);
    v85[2] = *(v68 + 2);
    v85[3] = v26;
    v27 = *(v68 + 5);
    v85[4] = *(v68 + 4);
    v85[5] = v27;
    v28 = *(v68 + 1);
    v85[0] = *v68;
    v85[1] = v28;
    sub_2405B8A50(v85, &qword_27E4B8D00, &qword_2407691E0);
    v29 = v82;
    *(v25 + 2) = v81;
    *(v25 + 3) = v29;
    v30 = v84;
    *(v25 + 4) = v83;
    *(v25 + 5) = v30;
    v31 = v80;
    *v25 = v79;
    *(v25 + 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    v86 = 2;
    sub_2406F2B6C(&qword_27E4B82F8, &qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B70]);
    sub_24075AAF4();
    *(v24 + v71[6]) = v72;
    v86 = 3;
    sub_24075AAF4();
    v32 = v71;
    *(v24 + v71[7]) = v72;
    LOBYTE(v72) = 4;
    *(v24 + v32[8]) = sub_24075AAD4() & 1;
    LOBYTE(v72) = 5;
    *(v24 + v32[9]) = sub_24075AAD4() & 1;
    v86 = 6;
    sub_2406190D0();
    sub_24075AAA4();
    v33 = v70;
    v34 = *v70;
    v35 = v70[1];
    v36 = v70[2];
    v37 = v70[3];
    v65 = v72;
    v59 = v73;
    sub_240604C2C(v34, v35, v36, v37);
    v38 = v59;
    *v33 = v65;
    *(v33 + 1) = v38;
    LOBYTE(v72) = 7;
    v39 = sub_24075AA74();
    v40 = (v24 + v71[11]);
    *v40 = v39;
    v40[1] = v41;
    *&v65 = v41;
    LOBYTE(v72) = 8;
    *(v24 + v71[12]) = sub_24075AAD4() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDB8, &qword_24077A5F0);
    v86 = 9;
    sub_240590128(&qword_27E4BCDE8, &qword_27E4BCDB8, &qword_24077A5F0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v42 = v72;
    v43 = v69;
    v44 = v67;

    *(v43 + v44) = v42;
    LOBYTE(v72) = 10;
    v45 = sub_24075AA74();
    v46 = &v69[v71[14]];
    *v46 = v45;
    v46[1] = v47;
    v86 = 11;
    sub_2406F2C08();
    sub_24075AAA4();
    v69[v60] = v72;
    v86 = 12;
    sub_2406F2C5C();
    sub_24075AAF4();
    v48 = v73;
    v49 = &v69[v71[16]];
    *v49 = v72;
    v49[16] = v48;
    LOBYTE(v72) = 13;
    v50 = sub_24075AA74();
    v51 = &v69[v71[17]];
    *v51 = v50;
    v51[1] = v52;
    LOBYTE(v72) = 14;
    v69[v71[18]] = sub_24075AAD4() & 1;
    v86 = 15;
    sub_2406F2CB0();
    sub_24075AAF4();
    (*(v18 + 8))(v64, v63);
    v53 = v69;
    v54 = &v69[v71[19]];
    v55 = v77;
    *(v54 + 4) = v76;
    *(v54 + 5) = v55;
    v54[96] = v78;
    v56 = v73;
    *v54 = v72;
    *(v54 + 1) = v56;
    v57 = v75;
    *(v54 + 2) = v74;
    *(v54 + 3) = v57;
    sub_2406F2D04(v53, v61);
    __swift_destroy_boxed_opaque_existential_1(v66);
    return sub_2406F2D68(v53, type metadata accessor for SignInModel);
  }
}

uint64_t sub_2406EBF24(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C616974696E69;
    v6 = 0x547373696D736964;
    if (a1 != 2)
    {
      v6 = 0x49676E696E676973;
    }

    if (a1)
    {
      v5 = 0x6D726554776F6873;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6552796C696D6166;
    v2 = 0x7472656C61;
    if (a1 != 7)
    {
      v2 = 0x64656873696E6966;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646E6946776F6873;
    if (a1 != 4)
    {
      v3 = 0x467373696D736964;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2406EC094()
{
  sub_24075AE64();
  SignInModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406EC0D8(uint64_t a1)
{
  sub_24075AE64();
  SignInModel.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t sub_2406EC114()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_2406EC16C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406F578C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406EC194(uint64_t a1)
{
  v2 = sub_2406F2E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC1D0(uint64_t a1)
{
  v2 = sub_2406F2E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC214@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406F58A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406EC248(uint64_t a1)
{
  v2 = sub_2406F2DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC284(uint64_t a1)
{
  v2 = sub_2406F2DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC2C0(uint64_t a1)
{
  v2 = sub_2406F2F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC2FC(uint64_t a1)
{
  v2 = sub_2406F2F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC338(uint64_t a1)
{
  v2 = sub_2406F3014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC374(uint64_t a1)
{
  v2 = sub_2406F3014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC3B0(uint64_t a1)
{
  v2 = sub_2406F2EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC3EC(uint64_t a1)
{
  v2 = sub_2406F2EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC428(uint64_t a1)
{
  v2 = sub_2406F2E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC464(uint64_t a1)
{
  v2 = sub_2406F2E1C();

  return MEMORY[0x2821FE720](a1, v2);
}
uint64_t sub_2406BBA5C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_240759BF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240759C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B0, &qword_2407761E8);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_2405B044C(v18, &v17 - v11, &qword_27E4BC1B0, &qword_2407761E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v3 + 32);
    v13(v5, v12, v2);
    sub_2406BC080();
    v14 = swift_allocError();
    v13(v15, v5, v2);
    v20 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
    return sub_24075A354();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
    return sub_24075A364();
  }
}

uint64_t XPCSession.send(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2406BBCF8, 0, 0);
}

uint64_t sub_2406BBCF8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_240759C04();
  *v2 = v0;
  v2[1] = sub_2406BBDEC;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406BC078, v1, v3);
}

uint64_t sub_2406BBDEC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405C234C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2406BBF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1C0, &qword_2407761F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_240759B74();
}

unint64_t sub_2406BC080()
{
  result = qword_27E4B9BA0;
  if (!qword_27E4B9BA0)
  {
    sub_240759BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9BA0);
  }

  return result;
}

uint64_t sub_2406BC0D8(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_240759BF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240759C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BC1C8, &unk_240776200);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_2405B044C(v18, &v17 - v11, qword_27E4BC1C8, &unk_240776200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v3 + 32);
    v13(v5, v12, v2);
    sub_2406BC080();
    v14 = swift_allocError();
    v13(v15, v5, v2);
    v20 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1C0, &qword_2407761F8);
    return sub_24075A354();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1C0, &qword_2407761F8);
    return sub_24075A364();
  }
}

uint64_t sub_2406BC3A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_2406BC428(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v5 = *(sub_24075A374() - 8);
  v6 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_2406BB85C(a1, v6, v3, v4);
}

uint64_t AppleIDSetupBaseConfig.peerDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = v1 + 32;
  v5 = *(v3 - 24);
  v6 = *(v3 - 16);
  v7 = *(v3 - 8);
  v8 = *(v3 + 6);
  v9 = *(v3 + 4);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;
  *(a1 + 30) = v8;
  *(a1 + 28) = v9;

  return sub_2406BC580(v5, v6);
}

uint64_t sub_2406BC580(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 AppleIDSetupBaseConfig.peerDevice.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u32[2];
  v3 = &a1[1].n128_i8[8];
  v5 = *(v3 + 2);
  v6 = v1 + 32;
  v7 = v3[6];
  sub_240609C84(*(v6 - 24), *(v6 - 16));
  result = v9;
  *(v6 - 24) = v9;
  *(v6 - 8) = v2;
  *(v6 + 6) = v7;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

uint64_t AppleIDSetupBaseConfig.fixedPin.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AppleIDSetupBaseConfig.fixedPin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AppleIDSetupBaseConfig.targetAuthTag.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AppleIDSetupBaseConfig.targetAuthTag.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void AppleIDSetupBaseConfig.pinType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t AppleIDSetupBaseConfig.pinType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_2406BC82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a1 + 104);
  v6 = *(a1 + 112);
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = sub_2406BCC00;
  a4[1] = v8;
}

uint64_t sub_2406BC8A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *(a2 + 104) = sub_2406BCBD8;
  *(a2 + 112) = v8;
  return result;
}

uint64_t AppleIDSetupBaseConfig.stateHandler.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t AppleIDSetupBaseConfig.stateHandler.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

__n128 AppleIDSetupBaseConfig.init(queue:peerDevice:persistentPairing:reversePairing:fixedPin:targetAuthTag:advertisementFlags:pinType:stateHandler:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v25 = *a2;
  v16 = a2[1].n128_u64[0];
  v18 = a2[1].n128_u32[2];
  v17 = &a2[1].n128_i8[8];
  v19 = *(v17 + 2);
  v20 = *a10;
  v21 = *a11;
  v22 = *(a11 + 8);
  *a9 = a1;
  v23 = v17[6];
  sub_240609C84(0, 1);
  result = v25;
  *(a9 + 8) = v25;
  *(a9 + 24) = v16;
  *(a9 + 38) = v23;
  *(a9 + 36) = v19;
  *(a9 + 32) = v18;
  *(a9 + 39) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = v20;
  *(a9 + 88) = v21;
  *(a9 + 96) = v22;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t sub_2406BCAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup9BLEDeviceVSg(uint64_t a1)
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

uint64_t sub_2406BCB08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2406BCB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HandshakeCommand.Request.deviceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = *(v1 + 72);
  v4 = v11;
  v8[0] = *(v1 + 8);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_2405B044C(v8, v7, &qword_27E4B8B08, &qword_240768590);
}

__n128 HandshakeCommand.Request.deviceInfo.setter(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  v8[2] = *(v1 + 40);
  v8[3] = v4;
  v9 = *(v1 + 72);
  v8[0] = *(v1 + 8);
  v8[1] = v3;
  sub_2405B8A50(v8, &qword_27E4B8B08, &qword_240768590);
  v5 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v7;
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 8) = v5;
  return result;
}

uint64_t HandshakeCommand.Request.selfAccountId.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405B044C(v8, &v7, &qword_27E4B6420, &qword_240768F00);
}

__n128 HandshakeCommand.Request.selfAccountId.setter(uint64_t a1)
{
  v3 = v1[8];
  v7[2] = v1[7];
  v7[3] = v3;
  v7[4] = v1[9];
  v4 = v1[6];
  v7[0] = v1[5];
  v7[1] = v4;
  sub_2405B8A50(v7, &qword_27E4B6420, &qword_240768F00);
  v5 = *(a1 + 48);
  v1[7] = *(a1 + 32);
  v1[8] = v5;
  v1[9] = *(a1 + 64);
  result = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = result;
  return result;
}

__n128 HandshakeCommand.Request.init(isKeepAlive:minSupportedVersion:maxSupportedVersion:deviceInfo:selfAccountId:accountIDsByService:)@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  sub_2405B8A50(v15, &qword_27E4B8B08, &qword_240768590);
  v11 = *a4;
  *(a7 + 24) = a4[1];
  v12 = a4[3];
  *(a7 + 40) = a4[2];
  *(a7 + 56) = v12;
  *(a7 + 72) = *(a4 + 64);
  *(a7 + 8) = v11;
  memset(v17, 0, sizeof(v17));
  sub_2405B8A50(v17, &qword_27E4B6420, &qword_240768F00);
  v13 = *(a5 + 48);
  *(a7 + 112) = *(a5 + 32);
  *(a7 + 128) = v13;
  *(a7 + 144) = *(a5 + 64);
  result = *(a5 + 16);
  *(a7 + 80) = *a5;
  *(a7 + 96) = result;
  *(a7 + 160) = a6;
  return result;
}

void HandshakeCommand.Request.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload || (type metadata accessor for V1Command.Request(0), v6 = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Request, v6))
  {
    sub_2405F5954(a1, v5);
    LOBYTE(v46) = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    sub_2405B8A50(&v42, &qword_27E4B8B08, &qword_240768590);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    sub_2405B8A50(&v53, &qword_27E4B6420, &qword_240768F00);
    sub_2406BD300(&v64);
    v7 = v73;
    *(a2 + 128) = v72;
    *(a2 + 144) = v7;
    *(a2 + 160) = v74;
    v8 = v69;
    *(a2 + 64) = v68;
    *(a2 + 80) = v8;
    v9 = v71;
    *(a2 + 96) = v70;
    *(a2 + 112) = v9;
    v10 = v65;
    *a2 = v64;
    *(a2 + 16) = v10;
    v11 = v67;
    *(a2 + 32) = v66;
    *(a2 + 48) = v11;
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    v30 = *a1;
    v14 = a1[2];
    v15 = a1[3];
    v16 = a1[4];
    v29 = a1[5];
    v17 = a1[6];
    v27 = a1[8];
    v28 = a1[7];
    v26 = *(a1 + 72);
    v75[0] = *(a1 + 73);
    *(v75 + 3) = *(a1 + 19);
    v24 = a1[11];
    v25 = a1[10];
    v23 = a1[12];
    v37 = a1[14];
    v38 = a1[13];
    v35 = a1[16];
    v36 = a1[15];
    v33 = a1[18];
    v34 = a1[17];
    v31 = a1[20];
    v32 = a1[19];
    memset(v40, 0, 65);
    sub_2405B8A50(v40, &qword_27E4B8B08, &qword_240768590);
    memset(v41, 0, sizeof(v41));
    sub_2405B8A50(v41, &qword_27E4B6420, &qword_240768F00);
    *&v42 = v12;
    *(&v42 + 1) = v13;
    *&v43 = v14;
    *(&v43 + 1) = v15;
    *&v44 = v16;
    *(&v44 + 1) = v29;
    *&v45 = v17;
    *(&v45 + 1) = v28;
    *&v46 = v27;
    BYTE8(v46) = v26;
    HIDWORD(v46) = *(v75 + 3);
    *(&v46 + 9) = v75[0];
    *&v47 = v25;
    *(&v47 + 1) = v24;
    *&v48 = v23;
    *(&v48 + 1) = v38;
    *&v49 = v37;
    *(&v49 + 1) = v36;
    *&v50 = v35;
    *(&v50 + 1) = v34;
    *&v51 = v33;
    *(&v51 + 1) = v32;
    v52 = v31;
    v57 = v46;
    v58 = v47;
    v63 = v31;
    v61 = v50;
    v62 = v51;
    v59 = v48;
    v60 = v49;
    v55 = v44;
    v56 = v45;
    v53 = v42;
    v54 = v43;
    nullsub_3();
    v18 = v62;
    *(a2 + 128) = v61;
    *(a2 + 144) = v18;
    *(a2 + 160) = v63;
    v19 = v58;
    *(a2 + 64) = v57;
    *(a2 + 80) = v19;
    v20 = v60;
    *(a2 + 96) = v59;
    *(a2 + 112) = v20;
    v21 = v54;
    *a2 = v53;
    *(a2 + 16) = v21;
    v22 = v56;
    *(a2 + 32) = v55;
    *(a2 + 48) = v22;
    *&v64 = v30;
    *(&v64 + 1) = v13;
    *&v65 = v14;
    *(&v65 + 1) = v15;
    *&v66 = v16;
    *(&v66 + 1) = v29;
    *&v67 = v17;
    *(&v67 + 1) = v28;
    *&v68 = v27;
    BYTE8(v68) = v26;
    *(&v68 + 9) = v75[0];
    HIDWORD(v68) = *(v75 + 3);
    *&v69 = v25;
    *(&v69 + 1) = v24;
    *&v70 = v23;
    *(&v70 + 1) = v38;
    *&v71 = v37;
    *(&v71 + 1) = v36;
    *&v72 = v35;
    *(&v72 + 1) = v34;
    *&v73 = v33;
    *(&v73 + 1) = v32;
    v74 = v31;
    sub_2406BD338(&v42, v39);
    sub_2406BD370(&v64);
  }
}

double sub_2406BD300(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t HandshakeCommand.Request.into()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v6;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2406BD430()
{
  v1 = *v0;
  v2 = 0x6C417065654B7369;
  v3 = 0x6E49656369766564;
  v4 = 0x6F636341666C6573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2406BD510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406C0A0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406BD538(uint64_t a1)
{
  v2 = sub_2406BF870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406BD574(uint64_t a1)
{
  v2 = sub_2406BF870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC250, &qword_240776320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v7;
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v37 = *(v1 + 40);
  v38 = v9;
  v39 = *(v1 + 72);
  v35 = *(v1 + 8);
  v36 = v8;
  v10 = *(v1 + 144);
  v43 = *(v1 + 128);
  v44 = v10;
  v11 = *(v1 + 112);
  v41 = *(v1 + 96);
  v42 = v11;
  v40 = *(v1 + 80);
  v15 = *(v1 + 160);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BF870();
  sub_24075AF74();
  LOBYTE(v22) = 0;
  v12 = v45;
  sub_24075ABC4();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v15;
  LOBYTE(v22) = 1;
  sub_24075ABF4();
  LOBYTE(v22) = 2;
  sub_24075ABF4();
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v30 = v35;
  v31 = v36;
  v29 = 3;
  sub_2405B044C(&v35, &v22, &qword_27E4B8B08, &qword_240768590);
  sub_240602058();
  sub_24075AB94();
  v27[2] = v32;
  v27[3] = v33;
  v28 = v34;
  v27[0] = v30;
  v27[1] = v31;
  sub_2405B8A50(v27, &qword_27E4B8B08, &qword_240768590);
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v22 = v40;
  v23 = v41;
  v21 = 4;
  sub_2405B044C(&v40, v20, &qword_27E4B6420, &qword_240768F00);
  sub_2406185FC();
  sub_24075AB94();
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v20[0] = v22;
  v20[1] = v23;
  sub_2405B8A50(v20, &qword_27E4B6420, &qword_240768F00);
  v19 = v14;
  v18 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC260, &qword_240776328);
  sub_2406BF8C4();
  sub_24075AB94();
  return MEMORY[8](v6, v3);
}

uint64_t HandshakeCommand.Request.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 160);
  sub_24075AE94();
  sub_24075AE94();
  sub_24075AE94();
  sub_240601BC0(a1);
  if (!v3)
  {
    sub_24075AE94();
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v4)
  {
    return sub_24075AE94();
  }

LABEL_3:
  sub_24075AE94();

  return sub_240620B44(a1, v4);
}

uint64_t HandshakeCommand.Request.hashValue.getter()
{
  sub_24075AE64();
  HandshakeCommand.Request.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t HandshakeCommand.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC270, &qword_240776330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2406BF870();
  sub_24075AF34();
  if (v2)
  {
    v65 = v2;
LABEL_5:
    v63 = 0;
    v64 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v53 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v54);
    *&v66 = v14;
    *(&v66 + 1) = v13;
    *&v67 = v12;
    *(&v67 + 1) = v11;
    *&v68 = v10;
    *(&v68 + 1) = v64;
    *&v69 = v15;
    *(&v69 + 1) = v16;
    LOBYTE(v70) = v17;
    sub_2405B8A50(&v66, &qword_27E4B8B08, &qword_240768590);
    v77 = v53;
    v78 = v63;
    v79 = v62;
    v80 = v61;
    *&v81 = v60;
    *(&v81 + 1) = v59;
    v82 = v58;
    v83 = v57;
    v84 = v56;
    v85 = v55;
    return sub_2405B8A50(&v77, &qword_27E4B6420, &qword_240768F00);
  }

  LOBYTE(v77) = 0;
  v119 = sub_24075AAD4();
  LOBYTE(v77) = 1;
  v52 = sub_24075AB04();
  LOBYTE(v77) = 2;
  v19 = sub_24075AB04();
  v65 = 0;
  v51 = v19;
  v122 = 3;
  sub_2406020F4();
  v20 = v65;
  sub_24075AAA4();
  v65 = v20;
  if (v20)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_5;
  }

  v21 = v112;
  v47 = a2;
  v48 = v113;
  v49 = v111;
  v50 = v114;
  v64 = v115;
  v15 = v116;
  v16 = v117;
  v22 = v118;
  memset(v109, 0, sizeof(v109));
  v110 = 0;
  sub_2405B8A50(v109, &qword_27E4B8B08, &qword_240768590);
  v121 = 4;
  sub_2406186F8();
  v23 = v65;
  sub_24075AAA4();
  v65 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v53 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v10 = *(&v50 + 1);
    v11 = v50;
    v13 = v21;
    v17 = v22;
    v12 = v48;
    v14 = v49;
    goto LABEL_6;
  }

  v45 = v15;
  v46 = v21;
  v14 = v49;
  HIDWORD(v43) = v22;
  v44 = v16;
  v53 = v99;
  v62 = v101;
  v63 = v100;
  v60 = v103;
  v61 = v102;
  v58 = v105;
  v59 = v104;
  v56 = v107;
  v57 = v106;
  v55 = v108;
  memset(v98, 0, sizeof(v98));
  sub_2405B8A50(v98, &qword_27E4B6420, &qword_240768F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC260, &qword_240776328);
  v120 = 5;
  sub_2406BF96C();
  v24 = v65;
  sub_24075AAA4();
  v65 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);
    v10 = *(&v50 + 1);
    v11 = v50;
    v15 = v45;
    v13 = v46;
    v12 = v48;
    v16 = v44;
    v17 = BYTE4(v43);
    goto LABEL_6;
  }

  v119 &= 1u;
  v25 = v119;
  (*(v6 + 8))(v8, v5);
  v26 = v97;
  LOBYTE(v66) = v25;
  v28 = v51;
  v27 = v52;
  BYTE1(v66) = v52;
  BYTE2(v66) = v51;
  v29 = v45;
  *(&v66 + 1) = v14;
  *&v67 = v46;
  v30 = v48;
  *(&v67 + 1) = v48;
  v68 = v50;
  *&v69 = v64;
  v31 = v44;
  *(&v69 + 1) = v45;
  *&v70 = v44;
  v32 = BYTE4(v43);
  BYTE8(v70) = BYTE4(v43);
  v33 = v53;
  *&v71 = v53;
  *(&v71 + 1) = v63;
  *&v72 = v62;
  *(&v72 + 1) = v61;
  *&v73 = v60;
  *(&v73 + 1) = v59;
  *&v74 = v58;
  *(&v74 + 1) = v57;
  *&v75 = v56;
  *(&v75 + 1) = v55;
  v76 = v97;
  v34 = v71;
  v35 = v47;
  *(v47 + 64) = v70;
  *(v35 + 80) = v34;
  v36 = v72;
  v37 = v73;
  v38 = v74;
  v39 = v75;
  *(v35 + 160) = v26;
  *(v35 + 128) = v38;
  *(v35 + 144) = v39;
  *(v35 + 96) = v36;
  *(v35 + 112) = v37;
  v40 = v66;
  v41 = v67;
  v42 = v69;
  *(v35 + 32) = v68;
  *(v35 + 48) = v42;
  *v35 = v40;
  *(v35 + 16) = v41;
  sub_2406BD338(&v66, &v77);
  __swift_destroy_boxed_opaque_existential_1(v54);
  LOBYTE(v77) = v119;
  BYTE1(v77) = v27;
  BYTE2(v77) = v28;
  v78 = v49;
  v79 = v46;
  v80 = v30;
  v81 = v50;
  v82 = v64;
  v83 = v29;
  v84 = v31;
  LOBYTE(v85) = v32;
  v86 = v33;
  v87 = v63;
  v88 = v62;
  v89 = v61;
  v90 = v60;
  v91 = v59;
  v92 = v58;
  v93 = v57;
  v94 = v56;
  v95 = v55;
  v96 = v26;
  return sub_2406BD370(&v77);
}

uint64_t sub_2406BE0EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v6;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2406BE1B0()
{
  sub_24075AE64();
  HandshakeCommand.Request.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406BE1F4(uint64_t a1)
{
  sub_24075AE64();
  HandshakeCommand.Request.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t HandshakeCommand.Response.rejectionReason.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t HandshakeCommand.Response.rejectionReason.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HandshakeCommand.Response.selectedVersion.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 25) = BYTE1(result) & 1;
  return result;
}

uint64_t HandshakeCommand.Response.deviceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_2405B044C(v8, v7, &qword_27E4B8B08, &qword_240768590);
}

__n128 HandshakeCommand.Response.deviceInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v7[2] = *(v1 + 64);
  v7[3] = v3;
  v8 = *(v1 + 96);
  v4 = *(v1 + 48);
  v7[0] = *(v1 + 32);
  v7[1] = v4;
  sub_2405B8A50(v7, &qword_27E4B8B08, &qword_240768590);
  v5 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v5;
  *(v1 + 96) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  return result;
}

__n128 HandshakeCommand.Response.init(isKeepAlive:isAccepted:rejectionReason:selectedVersion:deviceInfo:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 25) = HIBYTE(a5) & 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  sub_2405B8A50(v11, &qword_27E4B8B08, &qword_240768590);
  v9 = *(a6 + 48);
  *(a7 + 64) = *(a6 + 32);
  *(a7 + 80) = v9;
  *(a7 + 96) = *(a6 + 64);
  result = *(a6 + 16);
  *(a7 + 32) = *a6;
  *(a7 + 48) = result;
  return result;
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload == 1 && (type metadata accessor for V1Command.Response(0), v6 = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Response, !v6))
  {
    v8 = a1[1];
    v41 = *a1;
    v42 = v8;
    v9 = *(a1 + 4);
    v10 = *(a1 + 5);
    v11 = *(a1 + 6);
    v12 = *(a1 + 7);
    v13 = *(a1 + 8);
    v14 = *(a1 + 9);
    v15 = *(a1 + 10);
    v22 = *(a1 + 11);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    v16 = *(a1 + 96);
    sub_2405B8A50(v24, &qword_27E4B8B08, &qword_240768590);
    v17 = v42;
    v18 = v41;
    v26[0] = v41;
    v26[1] = v42;
    *&v27 = v9;
    *(&v27 + 1) = v10;
    *&v28 = v11;
    *(&v28 + 1) = v12;
    *&v29 = v13;
    *(&v29 + 1) = v14;
    *&v30 = v15;
    *(&v30 + 1) = v22;
    v31 = v16;
    *a2 = v41;
    *(a2 + 16) = v17;
    v19 = v30;
    *(a2 + 64) = v29;
    *(a2 + 80) = v19;
    v20 = v27;
    v21 = v28;
    *(a2 + 96) = v16;
    *(a2 + 32) = v20;
    *(a2 + 48) = v21;
    v32 = v18;
    v33 = v42;
    *&v34 = v9;
    *(&v34 + 1) = v10;
    *&v35 = v11;
    *(&v35 + 1) = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
    v39 = v22;
    v40 = v16;
    sub_2406BFA58(v26, v23);
    return sub_2406BFA90(&v32);
  }

  else
  {
    sub_2405F5954(a1, v5);
    LOBYTE(v36) = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    result = sub_2405B8A50(&v32, &qword_27E4B8B08, &qword_240768590);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 81) = 0u;
  }

  return result;
}

uint64_t HandshakeCommand.Response.into()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v4;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2406BE704()
{
  v1 = *v0;
  v2 = 0x6C417065654B7369;
  v3 = 0x6F697463656A6572;
  v4 = 0x64657463656C6573;
  if (v1 != 3)
  {
    v4 = 0x6E49656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7470656363417369;
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

uint64_t sub_2406BE7CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406C0C2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406BE7F4(uint64_t a1)
{
  v2 = sub_2406BFE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406BE830(uint64_t a1)
{
  v2 = sub_2406BFE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Response.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC280, &qword_240776338);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v27 = *(v1 + 1);
  v8 = *(v1 + 16);
  v14 = *(v1 + 8);
  v13 = v8;
  v12[3] = *(v1 + 24);
  v12[2] = *(v1 + 25);
  v9 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = v9;
  v26 = *(v1 + 96);
  v10 = *(v1 + 48);
  v22 = *(v1 + 32);
  v23 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BFE84();
  sub_24075AF74();
  LOBYTE(v17) = 0;
  sub_24075ABC4();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_24075ABC4();
    LOBYTE(v17) = 2;
    sub_24075AB64();
    LOBYTE(v17) = 3;
    sub_24075ABA4();
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    v28[0] = 4;
    sub_2405B044C(&v22, v15, &qword_27E4B8B08, &qword_240768590);
    sub_240602058();
    sub_24075AB94();
    v15[2] = v19;
    v15[3] = v20;
    v16 = v21;
    v15[1] = v18;
    v15[0] = v17;
    sub_2405B8A50(v15, &qword_27E4B8B08, &qword_240768590);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HandshakeCommand.Response.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 25);
  sub_24075AE94();
  sub_24075AE94();
  if (v3)
  {
    sub_24075AE94();
    sub_24075A114();
    if (v4)
    {
      goto LABEL_6;
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
LABEL_6:
  sub_24075AE94();
  return sub_240601BC0(a1);
}

uint64_t HandshakeCommand.Response.hashValue.getter()
{
  sub_24075AE64();
  HandshakeCommand.Response.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC290, &qword_240776340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2406BFE84();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v67);

    LOBYTE(v51) = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    return sub_2405B8A50(&v47, &qword_27E4B8B08, &qword_240768590);
  }

  else
  {
    v10 = v6;
    LOBYTE(v47) = 0;
    v11 = v5;
    LODWORD(v38) = sub_24075AAD4();
    LOBYTE(v47) = 1;
    LODWORD(v37) = sub_24075AAD4();
    LOBYTE(v47) = 2;
    v12 = sub_24075AA74();
    v14 = v13;
    v36 = v12;
    LOBYTE(v47) = 3;
    v35 = sub_24075AAB4();
    v66 = BYTE1(v35) & 1;
    v56 = 4;
    sub_2406020F4();
    sub_24075AAA4();
    v15 = v37 & 1;
    v33 = v37 & 1;
    v34 = v38 & 1;
    (*(v10 + 8))(v8, v11);
    v16 = v57;
    v17 = v60;
    v18 = v61;
    v37 = v62;
    v38 = v59;
    v19 = v63;
    v31 = v63;
    v32 = v57;
    v28 = v64;
    v29 = v58;
    memset(v39, 0, 65);
    v27 = v65;
    sub_2405B8A50(v39, &qword_27E4B8B08, &qword_240768590);
    LOBYTE(v40) = v34;
    BYTE1(v40) = v15;
    *(&v40 + 1) = v36;
    *&v41 = v14;
    BYTE8(v41) = v35;
    v30 = v66;
    BYTE9(v41) = v66;
    v20 = v29;
    *&v42 = v16;
    *(&v42 + 1) = v29;
    *&v43 = v38;
    *(&v43 + 1) = v17;
    *&v44 = v18;
    *(&v44 + 1) = v37;
    v21 = v28;
    *&v45 = v19;
    *(&v45 + 1) = v28;
    LOBYTE(v19) = v27;
    v46 = v27;
    *(a2 + 96) = v27;
    v22 = v45;
    *(a2 + 64) = v44;
    *(a2 + 80) = v22;
    v23 = v43;
    *(a2 + 32) = v42;
    *(a2 + 48) = v23;
    v24 = v41;
    *a2 = v40;
    *(a2 + 16) = v24;
    sub_2406BFA58(&v40, &v47);
    __swift_destroy_boxed_opaque_existential_1(v67);
    LOBYTE(v47) = v34;
    BYTE1(v47) = v33;
    *(&v47 + 1) = v36;
    *&v48 = v14;
    BYTE8(v48) = v35;
    BYTE9(v48) = v30;
    *&v49 = v32;
    *(&v49 + 1) = v20;
    *&v50 = v38;
    *(&v50 + 1) = v17;
    v51 = v18;
    v52 = v37;
    v53 = v31;
    v54 = v21;
    v55 = v19;
    return sub_2406BFA90(&v47);
  }
}

uint64_t sub_2406BF054@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v4;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2406BF108()
{
  sub_24075AE64();
  HandshakeCommand.Response.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406BF14C(uint64_t a1)
{
  sub_24075AE64();
  HandshakeCommand.Response.hash(into:)(v2);
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup16HandshakeCommandO7RequestV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *(a1 + 56);
  v63[2] = *(a1 + 40);
  v63[3] = v8;
  v64 = a1[72];
  v63[0] = *(a1 + 8);
  v63[1] = v7;
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = *(a1 + 9);
  v68 = *(a1 + 8);
  v69 = v11;
  v12 = *(a1 + 7);
  v66 = v10;
  v67 = v12;
  v65 = v9;
  v13 = *(a1 + 20);
  v14 = *a2;
  v15 = a2[1];
  v71 = a2[72];
  v16 = a2[2];
  v17 = *(a2 + 24);
  v18 = *(a2 + 56);
  v70[2] = *(a2 + 40);
  v70[3] = v18;
  v70[0] = *(a2 + 8);
  v70[1] = v17;
  v19 = *(a2 + 9);
  v75 = *(a2 + 8);
  v76 = v19;
  v20 = *(a2 + 7);
  v73 = *(a2 + 6);
  v74 = v20;
  v72 = *(a2 + 5);
  if (((v4 ^ v14) & 1) == 0 && v5 == v15 && v6 == v16)
  {
    v21 = *(a2 + 20);
    v22 = v63[0];
    v23 = v70[0];
    if (*(&v63[0] + 1))
    {
      v57 = v63[0];
      v24 = *(a1 + 40);
      v58 = *(a1 + 24);
      v59 = v24;
      v60 = *(a1 + 56);
      v61[0] = a1[72];
      v54 = v24;
      v55 = v60;
      LOBYTE(v56) = v61[0];
      v52 = v63[0];
      v53 = v58;
      if (*(&v70[0] + 1))
      {
        v25 = *(a2 + 40);
        v48 = *(a2 + 24);
        v49 = v25;
        v50 = *(a2 + 56);
        LOBYTE(v51) = a2[72];
        v47 = v70[0];
        sub_2405B044C(v63, &v42, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v70, &v42, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(&v57, &v42, &qword_27E4B8B08, &qword_240768590);
        v26 = _s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(&v52, &v47);
        v39 = v49;
        v40 = v50;
        v41 = v51;
        v37 = v47;
        v38 = v48;
        sub_240602EAC(&v37);
        v44 = v54;
        v45 = v55;
        v46 = v56;
        v42 = v52;
        v43 = v53;
        sub_240602EAC(&v42);
        v47 = v22;
        v27 = *(a1 + 40);
        v48 = *(a1 + 24);
        v49 = v27;
        v50 = *(a1 + 56);
        LOBYTE(v51) = a1[72];
        sub_2405B8A50(&v47, &qword_27E4B8B08, &qword_240768590);
        if ((v26 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_13;
      }

      v28 = a2;
      v49 = v59;
      v50 = v60;
      LOBYTE(v51) = v61[0];
      v47 = v57;
      v48 = v58;
      sub_2405B044C(v63, &v42, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v70, &v42, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(&v57, &v42, &qword_27E4B8B08, &qword_240768590);
      sub_240602EAC(&v47);
    }

    else
    {
      if (!*(&v70[0] + 1))
      {
        v57 = *&v63[0];
        v32 = *(a1 + 40);
        v58 = *(a1 + 24);
        v59 = v32;
        v60 = *(a1 + 56);
        v61[0] = a1[72];
        sub_2405B044C(v63, &v52, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v70, &v52, &qword_27E4B8B08, &qword_240768590);
        sub_2405B8A50(&v57, &qword_27E4B8B08, &qword_240768590);
LABEL_13:
        v33 = v65;
        v42 = v66;
        v43 = v67;
        v44 = v68;
        v45 = v69;
        v34 = v72;
        v39 = v75;
        v40 = v76;
        v37 = v73;
        v38 = v74;
        if (*(&v65 + 1))
        {
          v57 = v65;
          v58 = v66;
          v59 = v67;
          v60 = v68;
          *v61 = v69;
          if (*(&v72 + 1))
          {
            v52 = v72;
            v53 = v73;
            v54 = v74;
            v55 = v75;
            v56 = v76;
            if (v65 == v72)
            {
              sub_2405B044C(&v65, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v72, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v57, &v47, &qword_27E4B6420, &qword_240768F00);
              v35 = 1;
            }

            else
            {
              v35 = sub_24075ACF4();
              sub_2405B044C(&v65, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v72, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v57, &v47, &qword_27E4B6420, &qword_240768F00);
            }

            sub_2405B8A50(&v52, &qword_27E4B6420, &qword_240768F00);

            v47 = v33;
            v48 = v42;
            v49 = v43;
            v50 = v44;
            v51 = v45;
            sub_2405B8A50(&v47, &qword_27E4B6420, &qword_240768F00);
            if ((v35 & 1) == 0)
            {
              return 0;
            }

            if (v13)
            {
LABEL_27:
              if (!v21)
              {
                return 0;
              }

              v36 = sub_24061F8BC(v13, v21);

              return (v36 & 1) != 0;
            }

            return !v21;
          }

          sub_2405B044C(&v65, &v52, &qword_27E4B6420, &qword_240768F00);
          sub_2405B044C(&v72, &v52, &qword_27E4B6420, &qword_240768F00);
          sub_2405B044C(&v57, &v52, &qword_27E4B6420, &qword_240768F00);
        }

        else
        {
          if (!*(&v72 + 1))
          {
            v57 = v65;
            v58 = v66;
            v59 = v67;
            v60 = v68;
            *v61 = v69;
            sub_2405B044C(&v65, &v52, &qword_27E4B6420, &qword_240768F00);
            sub_2405B044C(&v72, &v52, &qword_27E4B6420, &qword_240768F00);
            sub_2405B8A50(&v57, &qword_27E4B6420, &qword_240768F00);
            if (v13)
            {
              goto LABEL_27;
            }

            return !v21;
          }

          sub_2405B044C(&v65, &v57, &qword_27E4B6420, &qword_240768F00);
          sub_2405B044C(&v72, &v57, &qword_27E4B6420, &qword_240768F00);
        }

        v57 = v33;
        v58 = v42;
        v59 = v43;
        v60 = v44;
        *v61 = v45;
        *&v61[16] = v34;
        *&v61[32] = v37;
        *&v61[48] = v38;
        *&v61[64] = v39;
        v62 = v40;
        v30 = &unk_27E4BC348;
        v31 = &unk_240776988;
LABEL_21:
        sub_2405B8A50(&v57, v30, v31);
        return 0;
      }

      v28 = a2;
      sub_2405B044C(v63, &v57, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v70, &v57, &qword_27E4B8B08, &qword_240768590);
    }

    v57 = v22;
    v29 = *(a1 + 40);
    v58 = *(a1 + 24);
    v59 = v29;
    v60 = *(a1 + 56);
    v61[0] = a1[72];
    *&v61[8] = v23;
    *&v61[24] = *(v28 + 24);
    *&v61[40] = *(v28 + 40);
    *&v61[56] = *(v28 + 56);
    v61[72] = v28[72];
    v30 = &qword_27E4B8C88;
    v31 = &unk_240768A80;
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_2406BF870()
{
  result = qword_27E4BC258;
  if (!qword_27E4BC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC258);
  }

  return result;
}

unint64_t sub_2406BF8C4()
{
  result = qword_27E4BC268;
  if (!qword_27E4BC268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BC260, &qword_240776328);
    sub_2406BFA14(&qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType);
    sub_2406185FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC268);
  }

  return result;
}

unint64_t sub_2406BF96C()
{
  result = qword_27E4BC278;
  if (!qword_27E4BC278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BC260, &qword_240776328);
    sub_2406BFA14(&qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType);
    sub_2406186F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC278);
  }

  return result;
}

uint64_t sub_2406BFA14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s12AppleIDSetup16HandshakeCommandO8ResponseV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = a1[25];
  v9 = *(a1 + 5);
  v59[2] = *(a1 + 4);
  v59[3] = v9;
  v60 = a1[96];
  v10 = *(a1 + 3);
  v59[0] = *(a1 + 2);
  v59[1] = v10;
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  v15 = a2[24];
  v62 = a2[96];
  v16 = a2[25];
  v17 = *(a2 + 5);
  v61[2] = *(a2 + 4);
  v61[3] = v17;
  v18 = *(a2 + 3);
  v61[0] = *(a2 + 2);
  v61[1] = v18;
  if (v3 == v11 && ((v4 ^ v12) & 1) == 0)
  {
    if (v6)
    {
      if (!v14)
      {
        goto LABEL_12;
      }

      if (v5 != v13 || v6 != v14)
      {
        v19 = a1;
        v20 = a2;
        v21 = sub_24075ACF4();
        a2 = v20;
        v22 = v21;
        a1 = v19;
        if ((v22 & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    else if (v14)
    {
LABEL_12:
      v2 = 0;
      return v2 & 1;
    }

    if (v8)
    {
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v7 == v15)
      {
        v24 = v16;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        goto LABEL_12;
      }
    }

    v25 = v59[0];
    v26 = v61[0];
    if (*(&v59[0] + 1))
    {
      v49 = v59[0];
      v27 = *(a1 + 4);
      v50 = *(a1 + 3);
      v51 = v27;
      v52 = *(a1 + 5);
      v28 = a1;
      v53 = a1[96];
      v46 = v27;
      v47 = v52;
      v48 = v53;
      v44 = v59[0];
      v45 = v50;
      if (*(&v61[0] + 1))
      {
        v29 = *(a2 + 4);
        v40 = *(a2 + 3);
        v41 = v29;
        v42 = *(a2 + 5);
        v43 = a2[96];
        v39 = v61[0];
        sub_2405B044C(v59, v37, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v61, v37, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(&v49, v37, &qword_27E4B8B08, &qword_240768590);
        v2 = _s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(&v44, &v39);
        v35[2] = v41;
        v35[3] = v42;
        v36 = v43;
        v35[0] = v39;
        v35[1] = v40;
        sub_240602EAC(v35);
        v37[2] = v46;
        v37[3] = v47;
        v38 = v48;
        v37[0] = v44;
        v37[1] = v45;
        sub_240602EAC(v37);
        v39 = v25;
        v30 = *(v28 + 4);
        v40 = *(v28 + 3);
        v41 = v30;
        v42 = *(v28 + 5);
        v43 = v28[96];
        sub_2405B8A50(&v39, &qword_27E4B8B08, &qword_240768590);
        return v2 & 1;
      }

      v31 = a2;
      v41 = v51;
      v42 = v52;
      v43 = v53;
      v39 = v49;
      v40 = v50;
      sub_2405B044C(v59, v37, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v61, v37, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(&v49, v37, &qword_27E4B8B08, &qword_240768590);
      sub_240602EAC(&v39);
    }

    else
    {
      if (!*(&v61[0] + 1))
      {
        v49 = *&v59[0];
        v34 = *(a1 + 4);
        v50 = *(a1 + 3);
        v51 = v34;
        v52 = *(a1 + 5);
        v53 = a1[96];
        sub_2405B044C(v59, &v44, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v61, &v44, &qword_27E4B8B08, &qword_240768590);
        sub_2405B8A50(&v49, &qword_27E4B8B08, &qword_240768590);
        v2 = 1;
        return v2 & 1;
      }

      v31 = a2;
      v28 = a1;
      sub_2405B044C(v59, &v49, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v61, &v49, &qword_27E4B8B08, &qword_240768590);
    }

    v32 = *(v28 + 4);
    v50 = *(v28 + 3);
    v51 = v32;
    v52 = *(v28 + 5);
    v33 = *(v31 + 4);
    v55 = *(v31 + 3);
    v49 = v25;
    v53 = v28[96];
    v54 = v26;
    v56 = v33;
    v57 = *(v31 + 5);
    v58 = v31[96];
    sub_2405B8A50(&v49, &qword_27E4B8C88, &unk_240768A80);
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_2406BFE84()
{
  result = qword_27E4BC288;
  if (!qword_27E4BC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC288);
  }

  return result;
}

unint64_t sub_2406BFED8()
{
  result = qword_27E4BC298;
  if (!qword_27E4BC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC298);
  }

  return result;
}

unint64_t sub_2406BFF2C(uint64_t a1)
{
  result = sub_2406BFF54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406BFF54()
{
  result = qword_27E4BC2A0;
  if (!qword_27E4BC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2A0);
  }

  return result;
}

unint64_t sub_2406BFFA8()
{
  result = qword_27E4BC2A8;
  if (!qword_27E4BC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2A8);
  }

  return result;
}

unint64_t sub_2406BFFFC(uint64_t a1)
{
  result = sub_2406C0024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406C0024()
{
  result = qword_27E4BC2B0;
  if (!qword_27E4BC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2B0);
  }

  return result;
}

unint64_t sub_2406C00B8()
{
  result = qword_27E4BC2B8;
  if (!qword_27E4BC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2B8);
  }

  return result;
}

unint64_t sub_2406C010C()
{
  result = qword_27E4BC2C0;
  if (!qword_27E4BC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2C0);
  }

  return result;
}

unint64_t sub_2406C0160()
{
  result = qword_27E4BC2C8;
  if (!qword_27E4BC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2C8);
  }

  return result;
}

unint64_t sub_2406C01B8()
{
  result = qword_27E4BC2D0;
  if (!qword_27E4BC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2D0);
  }

  return result;
}

unint64_t sub_2406C020C(uint64_t a1)
{
  result = sub_2406C0234();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406C0234()
{
  result = qword_27E4BC2D8;
  if (!qword_27E4BC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2D8);
  }

  return result;
}

unint64_t sub_2406C0288(uint64_t a1)
{
  result = sub_2406C02B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406C02B0()
{
  result = qword_27E4BC2E0;
  if (!qword_27E4BC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2E0);
  }

  return result;
}

uint64_t sub_2406C0344(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406C0398()
{
  result = qword_27E4BC2E8;
  if (!qword_27E4BC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2E8);
  }

  return result;
}

unint64_t sub_2406C03EC()
{
  result = qword_27E4BC2F0;
  if (!qword_27E4BC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2F0);
  }

  return result;
}

unint64_t sub_2406C0440()
{
  result = qword_27E4BC2F8;
  if (!qword_27E4BC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2F8);
  }

  return result;
}

unint64_t sub_2406C0498()
{
  result = qword_27E4BC300;
  if (!qword_27E4BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC300);
  }

  return result;
}

unint64_t sub_2406C04F0()
{
  result = qword_27E4BC308;
  if (!qword_27E4BC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC308);
  }

  return result;
}

unint64_t sub_2406C0548()
{
  result = qword_27E4BC310;
  if (!qword_27E4BC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC310);
  }

  return result;
}

unint64_t sub_2406C059C(uint64_t a1)
{
  result = sub_2406BFFA8();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2406C0618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2406C0674(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2406C0700(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2406C075C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2406C0800()
{
  result = qword_27E4BC318;
  if (!qword_27E4BC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC318);
  }

  return result;
}

unint64_t sub_2406C0858()
{
  result = qword_27E4BC320;
  if (!qword_27E4BC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC320);
  }

  return result;
}

unint64_t sub_2406C08B0()
{
  result = qword_27E4BC328;
  if (!qword_27E4BC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC328);
  }

  return result;
}

unint64_t sub_2406C0908()
{
  result = qword_27E4BC330;
  if (!qword_27E4BC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC330);
  }

  return result;
}

unint64_t sub_2406C0960()
{
  result = qword_27E4BC338;
  if (!qword_27E4BC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC338);
  }

  return result;
}

unint64_t sub_2406C09B8()
{
  result = qword_27E4BC340;
  if (!qword_27E4BC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC340);
  }

  return result;
}

uint64_t sub_2406C0A0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789250 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789270 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F636341666C6573 && a2 == 0xED00006449746E75 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789290 == a2)
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

uint64_t sub_2406C0C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470656363417369 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F697463656A6572 && a2 == 0xEF6E6F736165526ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF6E6F6973726556 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66)
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

uint64_t sub_2406C0E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  (*(v5 + 16))(v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  type metadata accessor for MachSetupMessage(0);
  sub_2406CCB20(&qword_27E4BB880, type metadata accessor for MachSetupMessage, &protocol conformance descriptor for MachSetupMessage);
  sub_240759B84();
}

uint64_t sub_2406C1010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  (*(v5 + 16))(v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  type metadata accessor for MachRepairMessage(0);
  sub_2406CCB20(&qword_27E4B8308, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  sub_240759B84();
}

uint64_t sub_2406C11C8()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BC350);
  v1 = __swift_project_value_buffer(v0, qword_27E4BC350);
  if (qword_27E4B5EC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8530);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2406C1298(uint64_t result)
{
  if (result)
  {
    v1 = qword_27E4B5F70;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4BC350);

    v3 = sub_240759AC4();
    v4 = sub_24075A5D4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315394;
      sub_240759BD4();

      v7 = sub_24075A0E4();
      v9 = sub_2405BBA7C(v7, v8, &v13);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B0, &qword_2407749F0);
      v10 = sub_24075A0E4();
      v12 = sub_2405BBA7C(v10, v11, &v13);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_240579000, v3, v4, "Repair controller session changed from %s to %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v6, -1, -1);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    sub_240759BA4();
  }

  return result;
}

uint64_t RepairController.__allocating_init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_2406CAE2C(a1, a2, a3);

  return v6;
}

uint64_t RepairController.init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2406CAE2C(a1, a2, a3);

  return v3;
}

uint64_t RepairController.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_240759BE4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for RepairController(0);
  swift_allocObject();
  return sub_2406CAE2C(0, v2, 0);
}

uint64_t sub_2406C1624()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BC350);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_240579000, v6, v7, "Invalidating setup controller", v8, 2u);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v9 = sub_24075A3D4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_24060351C(0, 0, v4, &unk_240776998, v10);
}

uint64_t sub_2406C17EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2406C180C, a4, 0);
}

uint64_t sub_2406C180C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession);

  return MEMORY[0x2822009F8](sub_24069F77C, 0, 0);
}

uint64_t RepairController.deinit()
{
  v1 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BC350);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for RepairController(0);

    v7 = sub_24075A0E4();
    v9 = sub_2405BBA7C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_240579000, v3, v4, "RepairController deinitialized: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession))
  {

    sub_240759BA4();
  }

  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, &qword_27E4B9B18, &qword_24076CB30);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t RepairController.__deallocating_deinit()
{
  RepairController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2406C1AB0(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  v3[65] = type metadata accessor for MachRepairMessage(0);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = type metadata accessor for RepairContext(0);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C1BB4, v2, 0);
}

uint64_t sub_2406C1BB4()
{
  v23 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = v0[73];
  v2 = v0[63];
  v3 = sub_240759AE4();
  v0[74] = __swift_project_value_buffer(v3, qword_27E4BC350);
  sub_2406CB400(v2, v1, type metadata accessor for RepairContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[73];
  if (v6)
  {
    v8 = v0[72];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_2406CB400(v7, v8, type metadata accessor for RepairContext);
    v11 = sub_24075A0E4();
    v13 = v12;
    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
    v14 = sub_2405BBA7C(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v4, v5, "Performing Apple ID Repair with context: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
  }

  v15 = sub_2406C4EA0(v0[63]);
  v0[75] = v15;
  v16 = v0[69];
  v18 = v0[63];
  v17 = v0[64];
  v19 = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v0[76] = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v20 = *(v17 + v19);
  *(v17 + v19) = v15;
  swift_retain_n();
  sub_2406C1298(v20);

  sub_2406CB400(v18, v16, type metadata accessor for RepairModel);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_2406C1EFC, 0, 0);
}

uint64_t sub_2406C1EFC()
{
  v1 = v0[75];
  v2 = v0[69];
  v3 = swift_task_alloc();
  v0[77] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[78] = v4;
  *v4 = v0;
  v4[1] = sub_2406C1FF0;
  v5 = v0[70];
  v6 = v0[65];

  return MEMORY[0x2822008A0](v5, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406CB398, v3, v6);
}

uint64_t sub_2406C1FF0()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = sub_2406C281C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 552);
    v6 = *(v2 + 512);

    sub_2406CB3A0(v5, type metadata accessor for MachRepairMessage);
    v3 = sub_2406C2138;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2406C2138()
{
  v65 = v0;
  sub_2406CB400(*(v0 + 560), *(v0 + 544), type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v32 = *(v0 + 544);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v32 + 16);
    v36 = *(v32 + 24);
    v37 = *(v32 + 32);
    v38 = *(v32 + 40);
    sub_2405EF2E8(*v32, v34, v35, v36, v37, v38);
    v39 = sub_240759AC4();
    v40 = sub_24075A5E4();
    sub_2405EE680(v33, v34, v35, v36, v37, v38);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v41 = 138412290;
      sub_2405EF554();
      swift_allocError();
      *v42 = v33;
      *(v42 + 8) = v34;
      *(v42 + 16) = v35;
      *(v42 + 24) = v36;
      *(v42 + 32) = v37;
      *(v42 + 40) = v38;
      sub_2405EF2E8(v33, v34, v35, v36, v37, v38);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v63 = v43;
      _os_log_impl(&dword_240579000, v39, v40, "Failed to perform repair with error: %@", v41, 0xCu);
      sub_2405B8A50(v63, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v63, -1, -1);
      MEMORY[0x245CC76B0](v41, -1, -1);
    }

    v44 = *(v0 + 560);

    sub_2405EF554();
    swift_allocError();
    *v45 = v33;
    *(v45 + 8) = v34;
    *(v45 + 16) = v35;
    *(v45 + 24) = v36;
    *(v45 + 32) = v37;
    *(v45 + 40) = v38;
    swift_willThrow();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2406CB400(*(v0 + 560), *(v0 + 536), type metadata accessor for MachRepairMessage);
    v46 = sub_240759AC4();
    v47 = sub_24075A5E4();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 536);
    if (v48)
    {
      v50 = *(v0 + 528);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v64[0] = v52;
      *v51 = 136315138;
      sub_2406CB400(v49, v50, type metadata accessor for MachRepairMessage);
      v53 = sub_24075A0E4();
      v55 = v54;
      sub_2406CB3A0(v49, type metadata accessor for MachRepairMessage);
      v56 = sub_2405BBA7C(v53, v55, v64);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_240579000, v46, v47, "Received unexpected response: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x245CC76B0](v52, -1, -1);
      MEMORY[0x245CC76B0](v51, -1, -1);
    }

    else
    {

      sub_2406CB3A0(v49, type metadata accessor for MachRepairMessage);
    }

    v57 = *(v0 + 560);
    v44 = *(v0 + 544);
    sub_2405EF554();
    swift_allocError();
    *v58 = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 0;
    *(v58 + 40) = 4;
    swift_willThrow();
    sub_2406CB3A0(v57, type metadata accessor for MachRepairMessage);
LABEL_13:
    sub_2406CB3A0(v44, type metadata accessor for MachRepairMessage);
    v59 = *(v0 + 608);
    v60 = *(v0 + 512);
    v61 = *(v60 + v59);
    *(v60 + v59) = 0;
    sub_2406C1298(v61);

    v31 = *(v0 + 8);
    goto LABEL_14;
  }

  v2 = *(v0 + 544);
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v7 = v2[5];
  v6 = v2[6];
  v8 = v2[4];
  *(v0 + 128) = *(v2 + 14);
  *(v0 + 96) = v7;
  *(v0 + 112) = v6;
  *(v0 + 80) = v8;
  sub_2406425C8(v0 + 16, v0 + 136);
  v9 = sub_240759AC4();
  v10 = sub_24075A5C4();
  sub_2405EEB18(v0 + 16);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 560);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v64[0] = v14;
    *v13 = 136315138;
    v15 = *(v0 + 96);
    *(v0 + 320) = *(v0 + 80);
    *(v0 + 336) = v15;
    *(v0 + 352) = *(v0 + 112);
    *(v0 + 368) = *(v0 + 128);
    v16 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v16;
    v17 = *(v0 + 64);
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = v17;
    sub_2406425C8(v0 + 16, v0 + 376);
    v18 = sub_24075A0E4();
    v20 = sub_2405BBA7C(v18, v19, v64);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_240579000, v9, v10, "Finished Apple ID Repair with report: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);
  }

  sub_2406CB3A0(v12, type metadata accessor for MachRepairMessage);
  v21 = *(v0 + 608);
  v22 = *(v0 + 512);
  v23 = *(v0 + 496);
  v25 = *(v0 + 96);
  v24 = *(v0 + 112);
  v26 = *(v0 + 80);
  *(v23 + 112) = *(v0 + 128);
  *(v23 + 80) = v25;
  *(v23 + 96) = v24;
  *(v23 + 64) = v26;
  v27 = *(v0 + 16);
  v28 = *(v0 + 32);
  v29 = *(v0 + 64);
  *(v23 + 32) = *(v0 + 48);
  *(v23 + 48) = v29;
  *v23 = v27;
  *(v23 + 16) = v28;
  v30 = *(v22 + v21);
  *(v22 + v21) = 0;
  sub_2406C1298(v30);

  v31 = *(v0 + 8);
LABEL_14:

  return v31();
}

uint64_t sub_2406C281C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 512);

  sub_2406CB3A0(v1, type metadata accessor for MachRepairMessage);

  return MEMORY[0x2822009F8](sub_2406C28A8, v2, 0);
}

uint64_t sub_2406C28A8()
{
  v1 = v0[76];
  v2 = v0[64];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;
  sub_2406C1298(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2406C299C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MachRepairMessage(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for RepairContext(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C2A88, v2, 0);
}

uint64_t sub_2406C2A88()
{
  v23 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[3];
  v3 = sub_240759AE4();
  v0[12] = __swift_project_value_buffer(v3, qword_27E4BC350);
  sub_2406CB400(v2, v1, type metadata accessor for RepairContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_2406CB400(v7, v8, type metadata accessor for RepairContext);
    v11 = sub_24075A0E4();
    v13 = v12;
    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
    v14 = sub_2405BBA7C(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v4, v5, "Generating symptom report with context: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
  }

  v15 = sub_2406C4EA0(v0[3]);
  v0[13] = v15;
  v16 = v0[7];
  v17 = v0[4];
  v18 = v0[3];
  v19 = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v0[14] = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v20 = *(v17 + v19);
  *(v17 + v19) = v15;
  swift_retain_n();
  sub_2406C1298(v20);

  sub_2406CB400(v18, v16, type metadata accessor for RepairModel);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_2406C2DAC, 0, 0);
}

uint64_t sub_2406C2DAC()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_2406C2EA0;
  v5 = v0[8];
  v6 = v0[5];

  return MEMORY[0x2822008A0](v5, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406CCB94, v3, v6);
}

uint64_t sub_2406C2EA0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2406C3548;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 32);

    sub_2406CB3A0(v5, type metadata accessor for MachRepairMessage);
    v3 = sub_2406C2FE8;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2406C2FE8()
{
  v48 = v0;
  sub_2406CB400(v0[8], v0[6], type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v18 = v0[6];
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);
    v24 = *(v18 + 40);
    sub_2405EF2E8(*v18, v20, v21, v22, v23, v24);
    v25 = sub_240759AC4();
    v26 = sub_24075A5E4();
    sub_2405EE680(v19, v20, v21, v22, v23, v24);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v27 = 138412290;
      sub_2405EF554();
      swift_allocError();
      *v28 = v19;
      *(v28 + 8) = v20;
      *(v28 + 16) = v21;
      *(v28 + 24) = v22;
      *(v28 + 32) = v23;
      *(v28 + 40) = v24;
      sub_2405EF2E8(v19, v20, v21, v22, v23, v24);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v46 = v29;
      _os_log_impl(&dword_240579000, v25, v26, "Failed to generate symptom report with error: %@", v27, 0xCu);
      sub_2405B8A50(v46, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v46, -1, -1);
      MEMORY[0x245CC76B0](v27, -1, -1);
    }

    v30 = v0[8];

    sub_2405EF554();
    swift_allocError();
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    *(v31 + 24) = v22;
    *(v31 + 32) = v23;
    *(v31 + 40) = v24;
    swift_willThrow();
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v2 = v0[6];
      v4 = *v2;
      v3 = v2[1];
      v5 = v2[2];
      v6 = v2[3];

      v7 = sub_240759AC4();
      v8 = sub_24075A5C4();

      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[8];
      if (v9)
      {
        v11 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47[0] = v44;
        v47[1] = v4;
        *v11 = 136315138;
        v47[2] = v3;
        v47[3] = v5;
        v47[4] = v6;

        v45 = v10;
        v12 = SymptomReport.description.getter();
        v43 = v4;
        v14 = v13;

        v15 = sub_2405BBA7C(v12, v14, v47);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_240579000, v7, v8, "Generated Apple ID symptom report: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x245CC76B0](v44, -1, -1);
        MEMORY[0x245CC76B0](v11, -1, -1);

        sub_2406CB3A0(v45, type metadata accessor for MachRepairMessage);
        v16 = v43;
        v17 = v3;
      }

      else
      {

        sub_2406CB3A0(v10, type metadata accessor for MachRepairMessage);
        v17 = v3;
        v16 = v4;
      }

      v38 = v0[14];
      v39 = v0[4];
      v40 = v0[2];
      *v40 = v16;
      v40[1] = v17;
      v40[2] = v5;
      v40[3] = v6;
      v41 = *(v39 + v38);
      *(v39 + v38) = 0;
      sub_2406C1298(v41);

      v37 = v0[1];
      goto LABEL_12;
    }

    v32 = v0[8];
    v30 = v0[6];
    sub_2405EF554();
    swift_allocError();
    *v33 = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0;
    *(v33 + 40) = 4;
    swift_willThrow();
    sub_2406CB3A0(v32, type metadata accessor for MachRepairMessage);
  }

  sub_2406CB3A0(v30, type metadata accessor for MachRepairMessage);
  v34 = v0[14];
  v35 = v0[4];
  v36 = *(v35 + v34);
  *(v35 + v34) = 0;
  sub_2406C1298(v36);

  v37 = v0[1];
LABEL_12:

  return v37();
}

uint64_t sub_2406C3548()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  sub_2406CB3A0(v1, type metadata accessor for MachRepairMessage);

  return MEMORY[0x2822009F8](sub_2406C35D4, v2, 0);
}

uint64_t sub_2406C35D4()
{
  v1 = v0[14];
  v2 = v0[4];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;
  sub_2406C1298(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2406C369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = v53 - v5;
  v62 = type metadata accessor for MachRepairMessage(0);
  v6 = MEMORY[0x28223BE20](v62);
  v60 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v53 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v57 = v53 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = v53 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = v53 - v15;
  v16 = sub_240759C44();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v53 - v21;
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_240759AE4();
  v24 = __swift_project_value_buffer(v23, qword_27E4B8500);
  v25 = *(v17 + 16);
  v25(v22, a1, v16);
  v58 = v24;
  v26 = sub_240759AC4();
  v27 = sub_24075A5D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v53[1] = a1;
    v29 = v28;
    v30 = swift_slowAlloc();
    v53[0] = v10;
    v31 = v30;
    *&v63 = v30;
    *v29 = 136315138;
    v25(v20, v22, v16);
    v32 = sub_24075A0E4();
    v34 = v33;
    (*(v17 + 8))(v22, v16);
    v35 = sub_2405BBA7C(v32, v34, &v63);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_240579000, v26, v27, "Received XPC message: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v36 = v31;
    v10 = v53[0];
    MEMORY[0x245CC76B0](v36, -1, -1);
    MEMORY[0x245CC76B0](v29, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v22, v16);
  }

  sub_2406CCB20(&qword_27E4B8300, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  v37 = v59;
  sub_240759C34();
  v38 = v60;
  v39 = v61;
  sub_2406CC580(v37, v61, type metadata accessor for MachRepairMessage);
  v40 = v57;
  sub_2406CB400(v39, v57, type metadata accessor for MachRepairMessage);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v41 = v56;
    sub_2405E150C(v40, v56, &qword_27E4B8000, &unk_240776AD0);
    sub_2406C3F78(v41, v54, v55);
    swift_storeEnumTagMultiPayload();
    sub_2406CCB20(&qword_27E4B8308, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
    sub_240759C24();
    sub_2406CB3A0(v10, type metadata accessor for MachRepairMessage);
    sub_2405B8A50(v41, &qword_27E4B8000, &unk_240776AD0);
    v42 = v39;
  }

  else
  {
    sub_2406CB400(v39, v38, type metadata accessor for MachRepairMessage);
    v43 = sub_240759AC4();
    v44 = sub_24075A5D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v63 = v46;
      *v45 = 136315138;
      sub_2406CB400(v38, v10, type metadata accessor for MachRepairMessage);
      v47 = v10;
      v48 = sub_24075A0E4();
      v50 = v49;
      sub_2406CB3A0(v38, type metadata accessor for MachRepairMessage);
      v51 = sub_2405BBA7C(v48, v50, &v63);

      *(v45 + 4) = v51;
      v10 = v47;
      _os_log_impl(&dword_240579000, v43, v44, "Received unexpected mach repair message: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x245CC76B0](v46, -1, -1);
      MEMORY[0x245CC76B0](v45, -1, -1);
    }

    else
    {

      sub_2406CB3A0(v38, type metadata accessor for MachRepairMessage);
    }

    *(v10 + 4) = 0;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    v10[40] = 4;
    swift_storeEnumTagMultiPayload();
    sub_2406CCB20(&qword_27E4B8308, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
    sub_240759C24();
    sub_2406CB3A0(v10, type metadata accessor for MachRepairMessage);
    sub_2406CB3A0(v39, type metadata accessor for MachRepairMessage);
    v42 = v57;
  }

  return sub_2406CB3A0(v42, type metadata accessor for MachRepairMessage);
}

void sub_2406C3F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v63 = a2;
  v4 = type metadata accessor for RepairContext(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v62 = *(v10 - 8);
  v59 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v17 = sub_240759AE4();
  __swift_project_value_buffer(v17, qword_27E506810);
  v61 = a1;
  sub_2405B044C(a1, v16, &qword_27E4B8000, &unk_240776AD0);
  v18 = sub_240759AC4();
  v19 = sub_24075A5D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v54 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v55 = v9;
    v23 = v22;
    *&aBlock = v22;
    *v21 = 136315138;
    v53 = v17;
    v24 = v13;
    sub_2405B044C(v16, v64, &qword_27E4B8000, &unk_240776AD0);
    v25 = sub_24075A0E4();
    v26 = v7;
    v28 = v27;
    sub_2405B8A50(v16, &qword_27E4B8000, &unk_240776AD0);
    v29 = sub_2405BBA7C(v25, v28, &aBlock);
    v7 = v26;
    v13 = v24;
    v17 = v53;

    *(v21 + 4) = v29;
    _os_log_impl(&dword_240579000, v18, v19, "Received coordinated model update: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v30 = v23;
    v9 = v55;
    MEMORY[0x245CC76B0](v30, -1, -1);
    v31 = v21;
    v4 = v54;
    MEMORY[0x245CC76B0](v31, -1, -1);
  }

  else
  {

    sub_2405B8A50(v16, &qword_27E4B8000, &unk_240776AD0);
  }

  isEscapingClosureAtFileLocation = v63;
  sub_2405B044C(v63 + *(v4 + 20), &aBlock, &qword_27E4B8CB8, &qword_240768F08);
  if (v67)
  {
    sub_24058C9C0(&aBlock, v71);
    v33 = v72;
    v34 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v35 = (*(v34 + 8))(v33, v34);
    if (!v35)
    {
      v35 = *(v56 + 112);
    }

    v36 = v35;
    sub_2405F7830(v71, v70);
    v9 = v64;
    sub_2405B044C(v61, v64, &qword_27E4B8000, &unk_240776AD0);
    v37 = v62;
    v38 = v60;
    (*(v62 + 16))(v60, v58, v10);
    v7 = ((*(v57 + 80) + 56) & ~*(v57 + 80));
    v39 = &v7[v13 + *(v37 + 80)] & ~*(v37 + 80);
    v40 = swift_allocObject();
    sub_24058C9C0(v70, v40 + 16);
    sub_2405E150C(v9, &v7[v40], &qword_27E4B8000, &unk_240776AD0);
    v41 = *(v37 + 32);
    v17 = v37 + 32;
    v41(v40 + v39, v38, v10);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2406CC384;
    *(v42 + 24) = v40;
    v68 = sub_2406CC46C;
    v69 = v42;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v66 = sub_2406C0E30;
    v67 = &block_descriptor_54;
    v43 = _Block_copy(&aBlock);

    dispatch_async_and_wait(v36, v43);

    _Block_release(v43);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v71);

      return;
    }

    __break(1u);
  }

  else
  {
    sub_2405B8A50(&aBlock, &qword_27E4B8CB8, &qword_240768F08);
    if (qword_27E4B5EB0 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  __swift_project_value_buffer(v17, qword_27E4B8500);
  sub_2406CB400(isEscapingClosureAtFileLocation, v9, type metadata accessor for RepairContext);
  v44 = sub_240759AC4();
  v45 = sub_24075A5E4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&aBlock = v47;
    *v46 = 136315138;
    sub_2406CB400(v9, v7, type metadata accessor for RepairContext);
    v48 = sub_24075A0E4();
    v50 = v49;
    sub_2406CB3A0(v9, type metadata accessor for RepairContext);
    v51 = sub_2405BBA7C(v48, v50, &aBlock);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_240579000, v44, v45, "Unable to use exchange from context: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x245CC76B0](v47, -1, -1);
    MEMORY[0x245CC76B0](v46, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v9, type metadata accessor for RepairContext);
  }
}

uint64_t sub_2406C4768(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v20[0] = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v20 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v20[1] = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2405B044C(a2, v12, &qword_27E4B8000, &unk_240776AD0);
  v15 = v21;
  (*(v5 + 16))(v7, v22, v21);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_2405E150C(v12, v18 + v16, &qword_27E4B8000, &unk_240776AD0);
  (*(v5 + 32))(v18 + v17, v7, v15);
  (*(v14 + 16))(v20[0], sub_2406CC494, v18, v13, v14);
}

uint64_t sub_2406C49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = type metadata accessor for MachRepairMessage(0);
  MEMORY[0x28223BE20](v43);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC388, &unk_240776AE0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v35 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  v10 = MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v20 = sub_240759AE4();
  __swift_project_value_buffer(v20, qword_27E506810);
  sub_2405B044C(a2, v19, &qword_27E4B8000, &unk_240776AD0);
  v42 = a1;
  sub_2405B044C(a1, v13, &qword_27E4B80E8, &qword_240765598);
  v21 = sub_240759AC4();
  v22 = sub_24075A5D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v7;
    v44 = v35;
    *v23 = 136315394;
    v37 = a3;
    sub_2405B044C(v19, v17, &qword_27E4B8000, &unk_240776AD0);
    v24 = sub_24075A0E4();
    v26 = v25;
    sub_2405B8A50(v19, &qword_27E4B8000, &unk_240776AD0);
    v27 = sub_2405BBA7C(v24, v26, &v44);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_2405B044C(v13, v38, &qword_27E4B80E8, &qword_240765598);
    v28 = sub_24075A0E4();
    v30 = v29;
    sub_2405B8A50(v13, &qword_27E4B80E8, &qword_240765598);
    v31 = sub_2405BBA7C(v28, v30, &v44);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_240579000, v21, v22, "Responding to model update (%s) with response: %s", v23, 0x16u);
    v32 = v35;
    swift_arrayDestroy();
    v7 = v36;
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v23, -1, -1);
  }

  else
  {

    sub_2405B8A50(v13, &qword_27E4B80E8, &qword_240765598);
    sub_2405B8A50(v19, &qword_27E4B8000, &unk_240776AD0);
  }

  sub_2405B044C(v42, v7, &qword_27E4B80E8, &qword_240765598);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v33 = v40;
  sub_24075A414();
  return (*(v41 + 8))(v33, v8);
}

uint64_t sub_2406C4EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10);
  v65 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v66 = v6;
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A8, &qword_240776B18);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v58 = v13;
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = &v58 - v14;
  v15 = type metadata accessor for RepairContext(0);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v69 = v8;
  v23 = sub_240759AE4();
  __swift_project_value_buffer(v23, qword_27E4BC350);
  v68 = a1;
  sub_2406CB400(a1, v22, type metadata accessor for RepairContext);
  v24 = sub_240759AC4();
  v25 = sub_24075A5D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v73 = v4;
    v28 = v27;
    v75 = v27;
    *v26 = 136315138;
    sub_2406CB400(v22, v20, type metadata accessor for RepairContext);
    v29 = sub_24075A0E4();
    v31 = v30;
    sub_2406CB3A0(v22, type metadata accessor for RepairContext);
    v32 = sub_2405BBA7C(v29, v31, &v75);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_240579000, v24, v25, "Creating new XPC session for context: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v22, type metadata accessor for RepairContext);
  }

  v73 = swift_allocBox();
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v36 = (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  MEMORY[0x28223BE20](v36);
  *(&v58 - 2) = v34;
  type metadata accessor for MachRepairMessage(0);
  (*(v61 + 104))(v10, *MEMORY[0x277D85778], v63);
  sub_24075A484();
  v37 = v69;
  sub_2405B044C(v34, v69, &qword_27E4BC3A0, &qword_240776B10);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v67;
  sub_2405B044C(v37, v67, &qword_27E4BC3A0, &qword_240776B10);
  v40 = v64;
  sub_2406CB400(v68, v64, type metadata accessor for RepairContext);
  v41 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v42 = (v66 + *(v62 + 80) + v41) & ~*(v62 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v38;
  v44 = v43 + v41;
  v45 = v73;
  sub_2405E150C(v39, v44, &qword_27E4BC3A0, &qword_240776B10);
  sub_2406CC580(v40, v43 + v42, type metadata accessor for RepairContext);

  v46 = v70;
  v47 = sub_2406C7610(sub_2406CC614, v43, sub_2406CC708, v45);
  if (v46)
  {

    sub_2405B8A50(v37, &qword_27E4BC3A0, &qword_240776B10);
    (*(v71 + 8))(v74, v72);
  }

  else
  {
    sub_2405B8A50(v37, &qword_27E4BC3A0, &qword_240776B10);

    v48 = sub_24075A3D4();
    v49 = v60;
    (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
    v51 = v71;
    v50 = v72;
    v52 = v59;
    (*(v71 + 16))(v59, v74, v72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = v47;
    v55 = (v58 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    (*(v51 + 32))(v56 + v53, v52, v50);
    *(v56 + v55) = v54;
    v47 = v54;

    sub_240656510(0, 0, v49, &unk_240776B30, v56);

    sub_2405B8A50(v49, &unk_27E4B9BF0, &qword_240762710);
    (*(v51 + 8))(v74, v50);
  }

  return v47;
}

uint64_t sub_2406C5784(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4BC3A0, &qword_240776B10);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

double sub_2406C5860@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v53 = a3;
  v57 = a1;
  v59 = a5;
  v5 = type metadata accessor for RepairContext(0);
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v6;
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_240759C44();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v10 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_2405B044C(v53, v16, &qword_27E4BC3A0, &qword_240776B10);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v37 = v23;
      v49 = v23;
      v38 = v7;
      v48 = *(v18 + 32);
      v53 = v18 + 32;
      v48(v37, v16, v17);
      v39 = sub_24075A3D4();
      (*(*(v39 - 8) + 56))(v54, 1, 1, v39);
      v40 = *(v7 + 16);
      v41 = v58;
      v40(v56, v57, v58);
      sub_2406CB400(v50, v55, type metadata accessor for RepairContext);
      (*(v18 + 16))(v21, v49, v17);
      v42 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v43 = (v8 + *(v51 + 80) + v42) & ~*(v51 + 80);
      v44 = (v52 + *(v18 + 80) + v43) & ~*(v18 + 80);
      v45 = swift_allocObject();
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 4) = v25;
      (*(v38 + 32))(&v45[v42], v56, v41);
      sub_2406CC580(v55, &v45[v43], type metadata accessor for RepairContext);
      v48(&v45[v44], v21, v17);

      sub_240602F08(0, 0, v54, &unk_240776B58, v45);

      (*(v18 + 8))(v49, v17);
      goto LABEL_10;
    }

    sub_2405B8A50(v16, &qword_27E4BC3A0, &qword_240776B10);
  }

  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  __swift_project_value_buffer(v26, qword_27E4BC350);
  v27 = *(v7 + 16);
  v28 = v58;
  v27(v10, v57, v58);
  v29 = sub_240759AC4();
  v30 = sub_24075A5E4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136315138;
    v27(v56, v10, v28);
    v33 = sub_24075A0E4();
    v35 = v34;
    (*(v7 + 8))(v10, v28);
    v36 = sub_2405BBA7C(v33, v35, &v60);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_240579000, v29, v30, "Received a new XPC message but lost self: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v28);
  }

LABEL_10:
  v46 = v59;
  *(v59 + 32) = 0;
  result = 0.0;
  *v46 = 0u;
  v46[1] = 0u;
  return result;
}

uint64_t sub_2406C5F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2406C5F3C, a4, 0);
}

uint64_t sub_2406C5F3C()
{
  sub_2406C369C(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2406C5FA0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_240759BF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v11 = sub_240759AE4();
  __swift_project_value_buffer(v11, qword_27E4B8500);
  v12 = *(v7 + 16);
  v12(v9, a1, v6);
  v13 = sub_240759AC4();
  v14 = sub_24075A5E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v5;
    *v15 = 138412290;
    sub_2406CCB20(&qword_27E4B9BA0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v16 = v10;
    v12(v17, v9, v6);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v7 + 8))(v9, v6);
    *(v15 + 4) = v18;
    v19 = v24;
    *v24 = v18;
    v10 = v16;
    _os_log_impl(&dword_240579000, v13, v14, "XPC session cancelled: %@", v15, 0xCu);
    sub_2405B8A50(v19, &qword_27E4B92A0, &qword_240762400);
    v5 = v25;
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  sub_2405B044C(v10, v5, &qword_27E4BC3A0, &qword_240776B10);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v5, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24075A424();
    return (*(v21 + 8))(v5, v20);
  }

  return result;
}

uint64_t sub_2406C6354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_240759C44();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for MachRepairMessage(0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B8, &qword_240776B38);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3C0, &unk_240776B40);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C6564, 0, 0);
}

uint64_t sub_2406C6564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20);
  sub_24075A444();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_2406C662C;
  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2406C662C()
{

  return MEMORY[0x2822009F8](sub_2406C6728, 0, 0);
}

uint64_t sub_2406C6728()
{
  v29 = v0;
  v1 = v0[17];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B8500);
    v3 = sub_240759AC4();
    v4 = sub_24075A5C4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "End of outgoing messages to daemon", v5, 2u);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_2406CC580(v1, v0[16], type metadata accessor for MachRepairMessage);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    v9 = v0[16];
    v10 = sub_240759AE4();
    v0[22] = __swift_project_value_buffer(v10, qword_27E4B8500);
    sub_2406CB400(v9, v8, type metadata accessor for MachRepairMessage);
    v11 = sub_240759AC4();
    v12 = sub_24075A5D4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[15];
    if (v13)
    {
      v15 = v0[14];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      sub_2406CB400(v14, v15, type metadata accessor for MachRepairMessage);
      v18 = sub_24075A0E4();
      v20 = v19;
      sub_2406CB3A0(v14, type metadata accessor for MachRepairMessage);
      v21 = sub_2405BBA7C(v18, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_240579000, v11, v12, "Sending message: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    else
    {

      sub_2406CB3A0(v14, type metadata accessor for MachRepairMessage);
    }

    v22 = v0[16];
    v23 = v0[3];
    v24 = swift_task_alloc();
    v0[23] = v24;
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    v25 = swift_task_alloc();
    v0[24] = v25;
    *v25 = v0;
    v25[1] = sub_2406C6BB8;
    v26 = v0[8];
    v27 = v0[4];

    return MEMORY[0x2822008A0](v26, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406CC83C, v24, v27);
  }
}

uint64_t sub_2406C6BB8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2406C733C;
  }

  else
  {

    v2 = sub_2406C6CD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406C6CD4()
{
  v63 = v0;
  v1 = *(v0[5] + 16);
  v1(v0[7], v0[8], v0[4]);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62[0] = v59;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_24075A0E4();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v8);
    v14 = sub_2405BBA7C(v10, v12, v62);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v2, v3, "Sent message and received reply: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x245CC76B0](v59, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {
    v15 = v0[4];
    v16 = v0[5];

    v13 = *(v16 + 8);
    v13(v5, v15);
  }

  v17 = v0[25];
  sub_2406CCB20(&qword_27E4B8300, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  sub_240759C34();
  if (v17)
  {
    v13(v0[8], v0[4]);
    sub_2406CB400(v0[16], v0[11], type metadata accessor for MachRepairMessage);
    v18 = v17;
    v19 = sub_240759AC4();
    v20 = sub_24075A5E4();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[16];
    if (v21)
    {
      v23 = v0[14];
      v24 = v0[11];
      v60 = v0[16];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v62[0] = v27;
      *v25 = 136315394;
      sub_2406CB400(v24, v23, type metadata accessor for MachRepairMessage);
      v28 = sub_24075A0E4();
      v30 = v29;
      sub_2406CB3A0(v24, type metadata accessor for MachRepairMessage);
      v31 = sub_2405BBA7C(v28, v30, v62);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = v17;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      *v26 = v33;
      _os_log_impl(&dword_240579000, v19, v20, "Failed to send message (%s) with error: %@", v25, 0x16u);
      sub_2405B8A50(v26, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x245CC76B0](v27, -1, -1);
      MEMORY[0x245CC76B0](v25, -1, -1);

      v34 = v60;
    }

    else
    {
      v47 = v0[11];

      sub_2406CB3A0(v47, type metadata accessor for MachRepairMessage);
      v34 = v22;
    }
  }

  else
  {
    sub_2406CB400(v0[13], v0[12], type metadata accessor for MachRepairMessage);
    v35 = sub_240759AC4();
    v36 = sub_24075A5D4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[16];
    if (v37)
    {
      v39 = v0[14];
      v40 = v0[12];
      v58 = v0[4];
      v61 = v0[8];
      v57 = v0[13];
      v56 = v0[16];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62[0] = v42;
      *v41 = 136315138;
      sub_2406CB400(v40, v39, type metadata accessor for MachRepairMessage);
      v43 = sub_24075A0E4();
      v45 = v44;
      sub_2406CB3A0(v40, type metadata accessor for MachRepairMessage);
      v46 = sub_2405BBA7C(v43, v45, v62);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_240579000, v35, v36, "Decoded response: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x245CC76B0](v42, -1, -1);
      MEMORY[0x245CC76B0](v41, -1, -1);

      sub_2406CB3A0(v57, type metadata accessor for MachRepairMessage);
      v13(v61, v58);
      v34 = v56;
    }

    else
    {
      v49 = v0[12];
      v48 = v0[13];
      v50 = v0[8];
      v51 = v0[4];

      sub_2406CB3A0(v49, type metadata accessor for MachRepairMessage);
      sub_2406CB3A0(v48, type metadata accessor for MachRepairMessage);
      v13(v50, v51);
      v34 = v38;
    }
  }

  sub_2406CB3A0(v34, type metadata accessor for MachRepairMessage);
  v52 = swift_task_alloc();
  v0[21] = v52;
  *v52 = v0;
  v52[1] = sub_2406C662C;
  v53 = v0[17];
  v54 = v0[18];

  return MEMORY[0x2822003E8](v53, 0, 0, v54);
}

uint64_t sub_2406C733C()
{
  v26 = v0;

  v1 = v0[25];
  sub_2406CB400(v0[16], v0[11], type metadata accessor for MachRepairMessage);
  v2 = v1;
  v3 = sub_240759AC4();
  v4 = sub_24075A5E4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = v0[14];
    v8 = v0[11];
    v24 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    sub_2406CB400(v8, v7, type metadata accessor for MachRepairMessage);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2406CB3A0(v8, type metadata accessor for MachRepairMessage);
    v15 = sub_2405BBA7C(v12, v14, &v25);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_240579000, v3, v4, "Failed to send message (%s) with error: %@", v9, 0x16u);
    sub_2405B8A50(v10, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);

    v18 = v24;
  }

  else
  {
    v19 = v0[11];

    sub_2406CB3A0(v19, type metadata accessor for MachRepairMessage);
    v18 = v6;
  }

  sub_2406CB3A0(v18, type metadata accessor for MachRepairMessage);
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_2406C662C;
  v21 = v0[17];
  v22 = v0[18];

  return MEMORY[0x2822003E8](v21, 0, 0, v22);
}

uint64_t sub_2406C7610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v37 = a1;
  v38 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_240759BE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession);
  if (v16)
  {
    v36 = v4;
    v17 = qword_27E4B5F70;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_240759AE4();
    __swift_project_value_buffer(v18, qword_27E4BC350);

    v19 = sub_240759AC4();
    v20 = sub_24075A5D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v21 = 136315138;
      v39 = v16;
      sub_240759BD4();

      v22 = sub_24075A0E4();
      v24 = v6;
      v25 = sub_2405BBA7C(v22, v23, &v40);

      *(v21 + 4) = v25;
      v6 = v24;
      _os_log_impl(&dword_240579000, v19, v20, "Activating inactive session: %s", v21, 0xCu);
      v26 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CC76B0](v26, -1, -1);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    sub_240759B24();
    sub_240759B64();
    sub_240759B54();
    sub_240759BB4();
    if (v6)
    {
    }
  }

  else
  {
    sub_2405B044C(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, v11, &qword_27E4B9B18, &qword_24076CB30);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_2405B8A50(v11, &qword_27E4B9B18, &qword_24076CB30);
      if (qword_27E4B5F70 != -1)
      {
        swift_once();
      }

      v27 = sub_240759AE4();
      __swift_project_value_buffer(v27, qword_27E4BC350);
      v28 = sub_240759AC4();
      v29 = sub_24075A5D4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_240579000, v28, v29, "Creating new repair xpc session from scratch", v30, 2u);
        MEMORY[0x245CC76B0](v30, -1, -1);
      }

      v31 = sub_2406C7E34(0xD000000000000022, 0x8000000240786820, v37, v38, a3, a4);
      if (!v5)
      {
        return v31;
      }
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      v32 = sub_2406C7AB4(v15, v37, v38, a3, a4);
      if (!v5)
      {
        v16 = v32;
      }

      (*(v13 + 8))(v15, v12);
    }
  }

  return v16;
}

uint64_t sub_2406C7AB4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v8 = sub_240759B44();
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240759BE4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v19 = sub_240759AE4();
  __swift_project_value_buffer(v19, qword_27E4BC350);
  v20 = *(v11 + 16);
  v37 = a1;
  v43 = v20;
  v20(v18, a1, v10);
  v21 = sub_240759AC4();
  v22 = sub_24075A5D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v5;
    v24 = v23;
    v33 = swift_slowAlloc();
    v44 = v33;
    *v24 = 136315138;
    v43(v16, v18, v10);
    v25 = sub_24075A0E4();
    v34 = a5;
    v27 = v26;
    (*(v11 + 8))(v18, v10);
    v28 = sub_2405BBA7C(v25, v27, &v44);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_240579000, v21, v22, "Creating new session with xpc endpoint: %s", v24, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v24, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v18, v10);
  }

  sub_240759BD4();
  v43(v36, v37, v10);
  v30 = *(v39 + 112);
  sub_240759B34();

  return sub_240759BC4();
}

uint64_t sub_2406C7E34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_240759B44();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v9 = sub_240759AE4();
  __swift_project_value_buffer(v9, qword_27E4BC350);

  v10 = sub_240759AC4();
  v11 = sub_24075A5D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2405BBA7C(a1, a2, &v18);
    _os_log_impl(&dword_240579000, v10, v11, "Creating new session for mach service: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CC76B0](v13, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  sub_240759BD4();
  v14 = *(v17 + 112);

  v15 = v14;
  sub_240759B34();

  return sub_240759B14();
}

id __RepairController.init(queue:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_240759BE4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for RepairController(0);
  v6 = swift_allocObject();
  v7 = a1;
  swift_defaultActor_initialize();
  *(v6 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = 0;
  *(v6 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession) = 0;
  *(v6 + 112) = v7;
  sub_2405E150C(v4, v6 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  *(v6 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = 0;
  v8 = type metadata accessor for __RepairController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR_____AISRepairController_repairController] = v6;
  v12.receiver = v9;
  v12.super_class = v8;

  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_2406C82F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[118] = a7;
  v7[117] = a6;
  v7[116] = a5;
  v7[115] = a4;
  v8 = sub_240759C94();
  v7[119] = v8;
  v7[120] = *(v8 - 8);
  v7[121] = swift_task_alloc();
  v9 = sub_240759CE4();
  v7[122] = v9;
  v7[123] = *(v9 - 8);
  v7[124] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C8418, 0, 0);
}

uint64_t sub_2406C8418()
{
  v0[125] = *(v0[115] + OBJC_IVAR_____AISRepairController_repairController);
  v1 = swift_task_alloc();
  v0[126] = v1;
  *v1 = v0;
  v1[1] = sub_2406C84C4;
  v2 = v0[116];

  return sub_2406C1AB0((v0 + 32), v2);
}

uint64_t sub_2406C84C4()
{
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v2 = sub_2406C8B00;
  }

  else
  {
    v2 = sub_2406C85D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406C85D8()
{
  v44 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 336);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = *(v0 + 352);
  *(v0 + 112) = v3;
  v4 = *(v0 + 368);
  *(v0 + 128) = v4;
  v5 = *(v0 + 256);
  v6 = *(v0 + 272);
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  v7 = *(v0 + 288);
  v8 = *(v0 + 304);
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 184) = v8;
  *(v0 + 168) = v7;
  *(v0 + 152) = v6;
  *(v0 + 136) = v5;
  *(v0 + 248) = v4;
  *(v0 + 232) = v3;
  *(v0 + 216) = v2;
  *(v0 + 200) = v1;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v9 = sub_240759AE4();
  __swift_project_value_buffer(v9, qword_27E4BC350);
  sub_2405B044C(v0 + 16, v0 + 376, &qword_27E4BC398, &unk_240776B00);
  v10 = 0;
  v11 = sub_240759AC4();
  v12 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136315394;
    v15 = *(v0 + 216);
    *(v0 + 680) = *(v0 + 200);
    *(v0 + 696) = v15;
    *(v0 + 712) = *(v0 + 232);
    *(v0 + 728) = *(v0 + 248);
    v16 = *(v0 + 152);
    *(v0 + 616) = *(v0 + 136);
    *(v0 + 632) = v16;
    v17 = *(v0 + 184);
    *(v0 + 648) = *(v0 + 168);
    *(v0 + 664) = v17;
    sub_2405B044C(v0 + 16, v0 + 736, &qword_27E4BC398, &unk_240776B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC398, &unk_240776B00);
    v18 = sub_24075A0E4();
    v20 = sub_2405BBA7C(v18, v19, &v43);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    *(v0 + 912) = 0;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v22 = sub_24075A0E4();
    v24 = sub_2405BBA7C(v22, v23, &v43);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_240579000, v11, v12, "Returning repair report converted into objc: %s with error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);
  }

  v25 = *(v0 + 992);
  v41 = *(v0 + 984);
  v42 = *(v0 + 976);
  v26 = *(v0 + 968);
  v40 = *(v0 + 960);
  v27 = *(v0 + 952);
  v28 = *(v0 + 944);
  v29 = *(v0 + 936);
  v30 = *(*(v0 + 1000) + 112);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v28;
  v32 = *(v0 + 216);
  *(v31 + 96) = *(v0 + 200);
  *(v31 + 112) = v32;
  *(v31 + 128) = *(v0 + 232);
  v33 = *(v0 + 248);
  v34 = *(v0 + 152);
  *(v31 + 32) = *(v0 + 136);
  *(v31 + 48) = v34;
  v35 = *(v0 + 184);
  *(v31 + 64) = *(v0 + 168);
  *(v31 + 80) = v35;
  *(v31 + 144) = v33;
  *(v31 + 152) = 0;
  *(v0 + 888) = sub_2406CC5FC;
  *(v0 + 896) = v31;
  *(v0 + 856) = MEMORY[0x277D85DD0];
  *(v0 + 864) = 1107296256;
  *(v0 + 872) = sub_240644810;
  *(v0 + 880) = &block_descriptor_70;
  v36 = _Block_copy((v0 + 856));
  sub_2405B044C(v0 + 16, v0 + 496, &qword_27E4BC398, &unk_240776B00);
  v37 = v30;
  sub_24057B5BC(v29, v28);
  sub_240759CC4();
  *(v0 + 904) = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v25, v26, v36);
  _Block_release(v36);

  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);
  (*(v40 + 8))(v26, v27);
  (*(v41 + 8))(v25, v42);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2406C8B00()
{
  v48 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1016);
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BC350);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1016);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to repair with error: %@", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = *(v0 + 1016);

  v12 = v11;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E4BC350);
  sub_2405B044C(v0 + 16, v0 + 376, &qword_27E4BC398, &unk_240776B00);
  v13 = v11;
  v14 = sub_240759AC4();
  v15 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v47 = v17;
    *v16 = 136315394;
    v18 = *(v0 + 216);
    *(v0 + 680) = *(v0 + 200);
    *(v0 + 696) = v18;
    *(v0 + 712) = *(v0 + 232);
    *(v0 + 728) = *(v0 + 248);
    v19 = *(v0 + 152);
    *(v0 + 616) = *(v0 + 136);
    *(v0 + 632) = v19;
    v20 = *(v0 + 184);
    *(v0 + 648) = *(v0 + 168);
    *(v0 + 664) = v20;
    sub_2405B044C(v0 + 16, v0 + 736, &qword_27E4BC398, &unk_240776B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC398, &unk_240776B00);
    v21 = sub_24075A0E4();
    v23 = sub_2405BBA7C(v21, v22, &v47);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    *(v0 + 912) = v11;
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v25 = sub_24075A0E4();
    v27 = sub_2405BBA7C(v25, v26, &v47);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_240579000, v14, v15, "Returning repair report converted into objc: %s with error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v28 = v11;
  v29 = *(v0 + 992);
  v45 = *(v0 + 984);
  v46 = *(v0 + 976);
  v30 = *(v0 + 968);
  v43 = *(v0 + 952);
  v44 = *(v0 + 960);
  v31 = *(v0 + 944);
  v32 = *(v0 + 936);
  v33 = *(*(v0 + 1000) + 112);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v31;
  v35 = *(v0 + 216);
  *(v34 + 96) = *(v0 + 200);
  *(v34 + 112) = v35;
  *(v34 + 128) = *(v0 + 232);
  v36 = *(v0 + 248);
  v37 = *(v0 + 152);
  *(v34 + 32) = *(v0 + 136);
  *(v34 + 48) = v37;
  v38 = *(v0 + 184);
  *(v34 + 64) = *(v0 + 168);
  *(v34 + 80) = v38;
  *(v34 + 144) = v36;
  *(v34 + 152) = v28;
  *(v0 + 888) = sub_2406CC5FC;
  *(v0 + 896) = v34;
  *(v0 + 856) = MEMORY[0x277D85DD0];
  *(v0 + 864) = 1107296256;
  *(v0 + 872) = sub_240644810;
  *(v0 + 880) = &block_descriptor_70;
  v39 = _Block_copy((v0 + 856));
  sub_2405B044C(v0 + 16, v0 + 496, &qword_27E4BC398, &unk_240776B00);
  v40 = v33;
  sub_24057B5BC(v32, v31);
  sub_240759CC4();
  *(v0 + 904) = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v29, v30, v39);
  _Block_release(v39);

  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);
  (*(v44 + 8))(v30, v43);
  (*(v45 + 8))(v29, v46);

  v41 = *(v0 + 8);

  return v41();
}

void sub_2406C9138(void (*a1)(void *, uint64_t), uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a3 + 1))
    {
      v15 = a3[5];
      v16 = a3[6];
      v6 = *a3;
      v11 = a3[1];
      v12 = a3[2];
      v14 = a3[4];
      v13 = a3[3];
      v10 = *a3;
      v19 = *(a3 + 14);
      v17 = v19;
      v18[5] = v15;
      v18[6] = v16;
      v18[3] = v13;
      v18[4] = v14;
      v18[1] = v11;
      v18[2] = v12;
      v18[0] = v6;
      sub_2406425C8(v18, v20);
      RepairReport.into()(v7);
      v9 = v8;
      v20[4] = v14;
      v20[5] = v15;
      v20[6] = v16;
      v21 = v17;
      v20[0] = v10;
      v20[1] = v11;
      v20[2] = v12;
      v20[3] = v13;
      sub_2405EEB18(v20);
    }

    else
    {
      v9 = 0;
    }

    a1(v9, a4);
  }
}

uint64_t sub_2406C93A0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, ...)
{
  v71 = a7;
  v72 = a8;
  v81 = a3;
  v82 = a6;
  v70 = a5;
  v80 = a2;
  v10 = sub_240759C94();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_240759CE4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v65 - v14;
  v65 = type metadata accessor for RepairContext(0);
  v67 = *(v65 - 8);
  v15 = *(v67 + 64);
  v16 = MEMORY[0x28223BE20](v65);
  v17 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v68 = &v65 - v23;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v24 = sub_240759AE4();
  __swift_project_value_buffer(v24, qword_27E4BC350);
  v25 = a1;
  v26 = sub_240759AC4();
  v27 = sub_24075A5C4();

  v28 = os_log_type_enabled(v26, v27);
  v83 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v25;
    *v30 = v25;
    v31 = v25;
    _os_log_impl(&dword_240579000, v26, v27, a4, v29, 0xCu);
    sub_2405B8A50(v30, &qword_27E4B92A0, &qword_240762400);
    v32 = v30;
    v17 = v83;
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v29, -1, -1);
  }

  v33 = v25;
  v34 = sub_240759AC4();
  v35 = sub_24075A5D4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&dword_240579000, v34, v35, "Attempting to build repair context with compat objective-c context: %@", v36, 0xCu);
    sub_2405B8A50(v37, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v37, -1, -1);
    v39 = v36;
    v17 = v83;
    MEMORY[0x245CC76B0](v39, -1, -1);
  }

  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v95 = 0;
  v94 = 192;
  v93 = 0;
  v96 = 0u;
  v97 = 0u;
  v98 = 1;
  v99 = 2;
  v100 = 0;
  AutomaticSetupModelExchange.init(queue:)(0, v107);
  v102 = &type metadata for AutomaticRepairModelExchange;
  v103 = &protocol witness table for AutomaticRepairModelExchange;
  v40 = swift_allocObject();
  v101 = v40;
  v40[115] = &unk_240768A90;
  v40[116] = 0;
  v40[117] = &unk_240768A98;
  v40[118] = 0;
  v40[119] = &unk_240768AA0;
  v40[120] = 0;
  v40[121] = &unk_240768AA8;
  v40[122] = 0;
  v40[123] = &unk_240768AB0;
  v40[124] = 0;
  memcpy(v40 + 2, v107, 0x388uLL);
  v104 = 0;
  v105 = 0;
  RepairContext.Builder._context(_:)(v33);
  RepairContext.Builder.build()(v22);
  v41 = v68;
  sub_2406CC580(v22, v68, type metadata accessor for RepairContext);
  v42 = v66;
  sub_2406CB400(v41, v66, type metadata accessor for RepairContext);
  v43 = v79;
  v44 = sub_240759AC4();
  v45 = sub_24075A5D4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v106[0] = v79;
    *v46 = 136315394;
    *&v84 = *&v43[OBJC_IVAR_____AISRepairController_repairController];
    type metadata accessor for RepairController(0);

    v47 = sub_24075A0E4();
    v49 = sub_2405BBA7C(v47, v48, v106);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    sub_2406CB400(v42, v83, type metadata accessor for RepairContext);
    v50 = sub_24075A0E4();
    v52 = v51;
    sub_2406CB3A0(v42, type metadata accessor for RepairContext);
    v53 = sub_2405BBA7C(v50, v52, v106);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_240579000, v44, v45, "Calling repair controller (%s with built context: %s", v46, 0x16u);
    v54 = v79;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v54, -1, -1);
    v55 = v46;
    v17 = v83;
    MEMORY[0x245CC76B0](v55, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v42, type metadata accessor for RepairContext);
  }

  v56 = sub_24075A3D4();
  v57 = v69;
  (*(*(v56 - 8) + 56))(v69, 1, 1, v56);
  sub_2406CB400(v41, v17, type metadata accessor for RepairContext);
  v58 = (*(v67 + 80) + 40) & ~*(v67 + 80);
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v59[4] = v43;
  sub_2406CC580(v17, v59 + v58, type metadata accessor for RepairContext);
  v60 = (v59 + ((v15 + v58 + 7) & 0xFFFFFFFFFFFFFFF8));
  v62 = v80;
  v61 = v81;
  *v60 = v80;
  v60[1] = v61;
  v63 = v43;
  v82(v62, v61);
  sub_240602F08(0, 0, v57, v71, v59);

  return sub_2406CB3A0(v41, type metadata accessor for RepairContext);
}

uint64_t sub_2406C9EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_240759C94();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v9 = sub_240759CE4();
  v7[25] = v9;
  v7[26] = *(v9 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C9FFC, 0, 0);
}

uint64_t sub_2406C9FFC()
{
  v0[28] = *(v0[18] + OBJC_IVAR_____AISRepairController_repairController);
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_2406CA0A8;
  v2 = v0[19];

  return sub_2406C299C((v0 + 8), v2);
}

uint64_t sub_2406CA0A8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2406CA634;
  }

  else
  {
    v2 = sub_2406CA1BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406CA1BC()
{
  v35 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BC350);
  sub_2406424AC(v1, v2, v3, v4);
  v6 = 0;
  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();
  sub_240609C34(v1, v2, v3, v4);

  v32 = v4;
  v33 = v3;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315394;
    v0[12] = v1;
    v0[13] = v2;
    v0[14] = v3;
    v0[15] = v4;
    sub_2406424AC(v1, v2, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC390, &unk_240776AF0);
    v11 = sub_24075A0E4();
    v13 = sub_2405BBA7C(v11, v12, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[17] = 0;
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v15 = sub_24075A0E4();
    v17 = sub_2405BBA7C(v15, v16, &v34);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_240579000, v7, v8, "Returning symptom report converted into objc: %s with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  v25 = v0[27];
  v30 = v0[26];
  v31 = v0[25];
  v29 = v0[23];
  v18 = v0[21];
  v27 = v0[24];
  v28 = v0[22];
  v19 = v0[20];
  v20 = *(v0[28] + 112);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v1;
  v21[5] = v2;
  v21[6] = v3;
  v21[7] = v32;
  v21[8] = 0;
  v0[6] = sub_2406CC5E8;
  v0[7] = v21;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240644810;
  v0[5] = &block_descriptor_63_0;
  v26 = _Block_copy(v0 + 2);
  sub_2406424AC(v1, v2, v3, v32);
  v22 = v20;
  sub_24057B5BC(v19, v18);
  sub_240759CC4();
  v0[16] = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v25, v27, v26);
  _Block_release(v26);

  sub_240609C34(v1, v2, v33, v32);
  (*(v29 + 8))(v27, v28);
  (*(v30 + 8))(v25, v31);

  v23 = v0[1];

  return v23();
}

uint64_t sub_2406CA634()
{
  v41 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BC350);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to generate symptom report with error: %@", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = v0[30];

  v12 = v11;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E4BC350);
  sub_2406424AC(0, 0, 0, 0);
  v13 = v11;
  v14 = sub_240759AC4();
  v15 = sub_24075A5C4();
  sub_240609C34(0, 0, 0, 0);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315394;
    *(v0 + 6) = 0u;
    *(v0 + 7) = 0u;
    sub_2406424AC(0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC390, &unk_240776AF0);
    v18 = sub_24075A0E4();
    v20 = sub_2405BBA7C(v18, v19, &v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v0[17] = v11;
    v21 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v22 = sub_24075A0E4();
    v24 = sub_2405BBA7C(v22, v23, &v40);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_240579000, v14, v15, "Returning symptom report converted into objc: %s with error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v25 = v0[27];
  v38 = v0[26];
  v39 = v0[25];
  v26 = v0[24];
  v27 = v0[21];
  v36 = v0[22];
  v37 = v0[23];
  v28 = v0[20];
  v29 = *(v0[28] + 112);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v27;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *(v30 + 64) = v11;
  v0[6] = sub_2406CC5E8;
  v0[7] = v30;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240644810;
  v0[5] = &block_descriptor_63_0;
  v31 = _Block_copy(v0 + 2);
  sub_2406424AC(0, 0, 0, 0);
  v35 = v11;
  v32 = v29;
  sub_24057B5BC(v28, v27);
  sub_240759CC4();
  v0[16] = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v25, v26, v31);
  _Block_release(v31);

  sub_240609C34(0, 0, 0, 0);
  (*(v37 + 8))(v26, v36);
  (*(v38 + 8))(v25, v39);

  v33 = v0[1];

  return v33();
}

void sub_2406CABB8(void (*a1)(id, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a4)
    {

      v9 = SymptomReport.into()();
    }

    else
    {
      v9 = 0;
    }

    a1(v9, a7);
  }
}

id __RepairController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id __RepairController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for __RepairController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2406CAE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a1;
  v32 = a2;
  v6 = sub_24075A634();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24075A624();
  MEMORY[0x28223BE20](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AF8, &qword_24076CB20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v28 - v13;
  v15 = sub_240759CB4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_240759CE4();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v22 = v31;
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = 0;
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession) = 0;
  if (!v22)
  {
    v28[0] = v21;
    v28[1] = v9;
    v28[2] = v11;
    v31 = a3;
    qos_class_self();
    sub_240759CA4();
    v23 = *(v16 + 48);
    if (v23(v14, 1, v15) == 1)
    {
      (*(v16 + 104))(v18, *MEMORY[0x277D851B0], v15);
      v24 = v23(v14, 1, v15);
      v25 = v29;
      v26 = v8;
      if (v24 != 1)
      {
        sub_2405B8A50(v14, &qword_27E4B9AF8, &qword_24076CB20);
      }
    }

    else
    {
      (*(v16 + 32))(v18, v14, v15);
      v25 = v29;
      v26 = v8;
    }

    v29 = sub_2406082EC();
    sub_240759CD4();
    v33 = MEMORY[0x277D84F90];
    sub_2406CCB20(&qword_280FAD6F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B08, &qword_24076CB28);
    sub_240635FA0(&qword_280FAD728, &qword_27E4B9B08, &qword_24076CB28);
    sub_24075A794();
    (*(v25 + 104))(v26, *MEMORY[0x277D85260], v30);
    v22 = sub_24075A664();
    a3 = v31;
  }

  *(v4 + 112) = v22;
  sub_2405E150C(v32, v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = a3;

  return v4;
}

uint64_t type metadata accessor for RepairController(uint64_t a1)
{
  result = qword_27E4BC370;
  if (!qword_27E4BC370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2406CB2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_2406C17EC(a1, v4, v5, v6);
}

uint64_t sub_2406CB3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2406CB400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2406CB4A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RepairContext(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2406C82F0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_11Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_14Tm()
{
  v41 = type metadata accessor for RepairContext(0);
  v42 = *(*(v41 - 8) + 80);
  v38 = *(*(v41 - 8) + 64);
  swift_unknownObjectRelease();

  v39 = (v42 + 40) & ~v42;
  v1 = v0 + v39;

  v40 = type metadata accessor for RepairModel(0);
  v2 = v0 + v39 + *(v40 + 20);
  sub_240604AB8(*(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32) | ((*(v2 + 36) | (*(v2 + 38) << 16)) << 32));
  v3 = *(v2 + 88);
  if (v3 <= 0xF9)
  {
    sub_2405AEA70(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v3);
  }

  sub_240604AE0(*(v2 + 184), *(v2 + 192), *(v2 + 200), *(v2 + 208));

  sub_240604AE0(*(v2 + 240), *(v2 + 248), *(v2 + 256), *(v2 + 264));

  v4 = *(v2 + 288);
  if (v4 != 1)
  {

    v5 = *(v2 + 304);
    if (v5 >> 60 != 15)
    {
      sub_2405BCD98(*(v2 + 296), v5);
    }
  }

  if (*(v2 + 328))
  {
  }

  v6 = type metadata accessor for SetupModel(0);
  v7 = v2 + *(v6 + 36);
  v8 = type metadata accessor for IdMSAccount(0);
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v9;
    v11 = v8[5];
    v12 = sub_2407595A4();
    v13 = v7 + v11;
    v9 = v10;
    (*(*(v12 - 8) + 8))(v13, v12);
    v14 = v7 + v8[6];
    sub_240604B08(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80), *(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112), *(v14 + 120), *(v14 + 128), *(v14 + 136), *(v14 + 144), *(v14 + 152));

    v15 = (v7 + v8[8]);
    if (*v15 != 1)
    {
    }
  }

  v16 = type metadata accessor for AuthenticationModel(0);
  if (*(v7 + v16[5] + 8))
  {
  }

  v17 = v7 + v16[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v37 = v9;

      v18 = v8[5];
      v19 = sub_2407595A4();
      (*(*(v19 - 8) + 8))(v17 + v18, v19);
      v20 = v17 + v8[6];
      sub_240604B08(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), *(v20 + 120), *(v20 + 128), *(v20 + 136), *(v20 + 144), *(v20 + 152));

      v21 = (v17 + v8[8]);
      if (*v21 != 1)
      {
      }

      v9 = v37;
      break;
    case 2u:
    case 3u:

      v22 = *(v17 + 96);
      if (v22 != 255)
      {
        sub_2405B0558(*(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 88), v22);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v17 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v7 + v16[11]))
  {
  }

  v23 = v2 + *(v6 + 40);
  if (!v9(v23, 1, v8))
  {

    v24 = v8[5];
    v25 = sub_2407595A4();
    (*(*(v25 - 8) + 8))(v23 + v24, v25);
    v26 = v23 + v8[6];
    sub_240604B08(*v26, *(v26 + 8), *(v26 + 16), *(v26 + 24), *(v26 + 32), *(v26 + 40), *(v26 + 48), *(v26 + 56), *(v26 + 64), *(v26 + 72), *(v26 + 80), *(v26 + 88), *(v26 + 96), *(v26 + 104), *(v26 + 112), *(v26 + 120), *(v26 + 128), *(v26 + 136), *(v26 + 144), *(v26 + 152));

    v27 = (v23 + v8[8]);
    if (*v27 != 1)
    {
    }
  }

  v28 = type metadata accessor for SignInModel(0);
  v29 = (v23 + v28[5]);
  if (v29[1])
  {

    v30 = v29[11];
    if (v30 >> 60 != 15)
    {
      sub_2405BCD98(v29[10], v30);
    }
  }

  if (*(v23 + v28[10] + 8))
  {
  }

  sub_240604C7C(*(v23 + v28[16]), *(v23 + v28[16] + 8), *(v23 + v28[16] + 16));

  v31 = v23 + v28[19];
  sub_240604C90(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64), *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96));
  v32 = v1 + *(v40 + 24);
  v33 = *(v32 + 40);
  if (v33 <= 0xFA)
  {
    sub_2405EE680(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32), v33);
  }

  v34 = (v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v1 + *(v41 + 20));
  if (v35[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  if (*(v0 + v34))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v34 + 16, v42 | 7);
}

uint64_t sub_2406CBE48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RepairContext(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2406C9EDC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_2406CBF8C(uint64_t a1)
{
  sub_240635A98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RepairController.repair(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of RepairController.generateSymptomReport(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405CE450;

  return v8(a1, a2);
}

uint64_t sub_2406CC384()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2406C4768((v0 + 16), v0 + v2, v5);
}

uint64_t sub_2406CC494(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2406C49BC(a1, v1 + v4, v7);
}

uint64_t sub_2406CC580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_2406CC614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RepairContext(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2406C5860(a1, v2 + v6, v9, a2);
}

uint64_t sub_2406CC710(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2406C6354(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2406CC848(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240759C44() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RepairContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2405DA4B0;

  return sub_2406C5F18(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_85Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2406CCAA4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2406BBA5C(a1, v4);
}

uint64_t sub_2406CCB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2406CCD68@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_2406CCE40@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_2406CCF18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_2406CCFF8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id AISDaemonInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISDaemonInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISDaemonInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AISDaemonInterface.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AISDaemonInterface();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12AppleIDSetup18AISDaemonInterfaceC03xpcD0So14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  type metadata accessor for SignOutContext();
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8940, &qword_240767DC0);
  [v0 addObject_];
  swift_unknownObjectRelease();
  v1 = v0;
  sub_24075A524();

  result = sub_24075A9C4();
  __break(1u);
  return result;
}

uint64_t Message.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2407597B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Message.metrics.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);

  *(v2 + v4) = v3;
  return result;
}

uint64_t static Message.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_240759784() & 1) != 0 && (v9 = type metadata accessor for Message(0, a3, a4, v8), *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36))) && (v10 = *(v9 + 40), v11 = *(a1 + v10), v14 = *(a2 + v10), v15 = v11, , , v12 = static Message.Metrics.== infix(_:_:)(&v15, &v14, a3, a4), , , (v12))
  {
    return sub_24075A054() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2406CD5DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_2406CD738(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x7363697274656DLL;
  if (a1 != 2)
  {
    v2 = 0x646E616D6D6F63;
  }

  if (a1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2406CD7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406CD5DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406CD7E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406CD834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = v7;
  type metadata accessor for Message.CodingKeys(255, v7, v18, a4);
  swift_getWitnessTable();
  v8 = sub_24075AC24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v26 = 0;
  sub_2407597B4();
  sub_2405D5548(&qword_27E4BC3C8, MEMORY[0x277CC95F8]);
  v12 = v21;
  sub_24075ABE4();
  if (!v12)
  {
    v13 = v18;
    v14 = v19;
    v25 = 1;
    sub_24075ABF4();
    v22 = *(v5 + *(v20 + 40));
    v24 = 2;
    type metadata accessor for Message.Metrics(0, v14, v13, v15);

    swift_getWitnessTable();
    sub_24075ABE4();

    v23 = 3;
    sub_24075ABE4();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Message.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_2407597B4();
  sub_2405D5548(&qword_27E4B7438, MEMORY[0x277CC9600]);
  sub_24075A004();
  sub_24075AE94();
  v5 = type metadata accessor for Message.Metrics(0, *(a2 + 16), *(a2 + 24), v4);

  Message.Metrics.hash(into:)(a1, v5, v6, v7);

  return sub_24075A004();
}

uint64_t Message.hashValue.getter(uint64_t a1)
{
  sub_24075AE64();
  Message.hash(into:)(v3, a1);
  return sub_24075AED4();
}

uint64_t Message.init(from:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v29 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2407597B4();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v36 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Message.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v38 = sub_24075AB44();
  v32 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v27 - v10;
  v34 = a3;
  v13 = type metadata accessor for Message(0, a2, a3, v12);
  v28 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v11;
  v16 = v39;
  sub_24075AF34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v32;
  v18 = v33;
  v39 = v15;
  v19 = v34;
  v44 = 0;
  sub_2405D5548(qword_27E4BC3D0, MEMORY[0x277CC9618]);
  v20 = v35;
  sub_24075AAF4();
  v21 = v20;
  v22 = v39;
  (*(v18 + 32))(v39, v36, v21);
  v43 = 1;
  v22[v13[9]] = sub_24075AB04();
  v36 = a2;
  type metadata accessor for Message.Metrics(0, a2, v19, v23);
  v42 = 2;
  swift_getWitnessTable();
  sub_24075AAF4();
  *&v22[v13[10]] = v40;
  v41 = 3;
  v24 = v36;
  sub_24075AAF4();
  (*(v17 + 8))(v37, v38);
  (*(v29 + 32))(&v22[v13[11]], v31, v24);
  v25 = v28;
  (*(v28 + 16))(v30, v22, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v22, v13);
}

uint64_t sub_2406CE224(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  Message.hash(into:)(v4, a2);
  return sub_24075AED4();
}

uint64_t sub_2406CE268(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2406CE2FC(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_2406CE3C0(uint64_t a1)
{
  result = sub_2407597B4();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Message.Metrics(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2406CE470(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_2407597B4() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v8 + 48);

          return v25((v23 + v11 + 16) & ~v11, v9);
        }

        else
        {
          v24 = *(v23 + 8);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + (v10 & 0xFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_2406CE6E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_2407597B4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v16)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
LABEL_14:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

LABEL_51:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12] & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v26 = *(v10 + 56);

      v26((v24 + v13 + 16) & ~v13, a2, v11);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v25 = (a2 - 1);
      }

      *(v24 + 8) = v25;
    }
  }
}

uint64_t sub_2406CEA64(uint64_t a1)
{
  v2 = sub_2406DB538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEAA0(uint64_t a1)
{
  v2 = sub_2406DB538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEADC(uint64_t a1)
{
  v2 = sub_2406DB69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEB18(uint64_t a1)
{
  v2 = sub_2406DB69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEB54(uint64_t a1)
{
  v2 = sub_2406DB648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEB90(uint64_t a1)
{
  v2 = sub_2406DB648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEBCC(uint64_t a1)
{
  v2 = sub_2406DB4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEC08(uint64_t a1)
{
  v2 = sub_2406DB4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEC44(uint64_t a1)
{
  v2 = sub_2406DB854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEC80(uint64_t a1)
{
  v2 = sub_2406DB854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CECBC(uint64_t a1)
{
  v2 = sub_2406DB5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CECF8(uint64_t a1)
{
  v2 = sub_2406DB5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CED34(uint64_t a1)
{
  v2 = sub_2406DB758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CED70(uint64_t a1)
{
  v2 = sub_2406DB758();

  return MEMORY[0x2821FE720](a1, v2);
}

void V1Command.Request.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC550, &qword_240776F60);
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v79 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC558, &qword_240776F68);
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC560, &qword_240776F70);
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v64 - v7;
  v73 = type metadata accessor for AuthenticateCommand.Request(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC568, &qword_240776F78);
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC570, &qword_240776F80);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v64 - v12;
  v64 = type metadata accessor for SignInCommand.Request(0);
  MEMORY[0x28223BE20](v64);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC578, &qword_240776F88);
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for V1Command.Request(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC580, &qword_240776F90);
  v85 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v22 = &v64 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DB4E4();
  v84 = v22;
  sub_24075AF74();
  sub_2406DC664(v86, v20, type metadata accessor for V1Command.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v42 = v74;
      sub_2406DB6F0(v20, v74, type metadata accessor for AuthenticateCommand.Request);
      LOBYTE(v93) = 3;
      sub_2406DB648();
      v43 = v75;
      v44 = v103;
      v45 = v84;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B8BD8, type metadata accessor for AuthenticateCommand.Request, &protocol conformance descriptor for AuthenticateCommand.Request);
      v46 = v77;
      sub_24075ABE4();
      (*(v76 + 8))(v43, v46);
      sub_2406DB7F4(v42, type metadata accessor for AuthenticateCommand.Request);
      (*(v85 + 8))(v45, v44);
    }

    else
    {
      v28 = v103;
      if (EnumCaseMultiPayload == 4)
      {
        v29 = *(v20 + 3);
        v95 = *(v20 + 2);
        v96 = v29;
        v97[0] = *(v20 + 4);
        *(v97 + 9) = *(v20 + 73);
        v30 = *(v20 + 1);
        v93 = *v20;
        v94 = v30;
        LOBYTE(v87) = 4;
        sub_2406DB5F4();
        v31 = v78;
        v32 = v84;
        sub_24075AB54();
        v89 = v95;
        v90 = v96;
        v91[0] = v97[0];
        *(v91 + 9) = *(v97 + 9);
        v87 = v93;
        v88 = v94;
        sub_2405F5F80();
        v33 = v81;
        sub_24075ABE4();
        (*(v80 + 8))(v31, v33);
        (*(v85 + 8))(v32, v28);
        sub_2405F717C(&v93);
      }

      else
      {
        v56 = *v20;
        v57 = *(v20 + 1);
        v59 = *(v20 + 2);
        v58 = *(v20 + 3);
        v60 = *(v20 + 4);
        LOBYTE(v93) = 5;
        sub_2406DB538();
        v61 = v79;
        v62 = v84;
        sub_24075AB54();
        v86 = v56;
        *&v93 = v56;
        *(&v93 + 1) = v57;
        v81 = v57;
        *&v94 = v59;
        *(&v94 + 1) = v58;
        *&v95 = v60;
        sub_2406DB58C();
        v63 = v83;
        sub_24075ABE4();
        (*(v82 + 8))(v61, v63);
        (*(v85 + 8))(v62, v103);
        sub_2406DB5E0(v86, v81, v59, v58, v60);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v20, v14, type metadata accessor for SignInCommand.Request);
      LOBYTE(v93) = 1;
      sub_2406DB758();
      v24 = v65;
      v25 = v103;
      v26 = v84;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B9398, type metadata accessor for SignInCommand.Request, &protocol conformance descriptor for SignInCommand.Request);
      v27 = v69;
      sub_24075ABE4();
      (*(v68 + 8))(v24, v27);
      sub_2406DB7F4(v14, type metadata accessor for SignInCommand.Request);
      (*(v85 + 8))(v26, v25);
    }

    else
    {
      v48 = *(v20 + 1);
      v86 = *v20;
      v47 = v86;
      v49 = *(v20 + 3);
      v82 = *(v20 + 2);
      v83 = v48;
      v50 = v20[32];
      LOBYTE(v93) = 2;
      sub_2406DB69C();
      v51 = v70;
      v52 = v103;
      v53 = v84;
      sub_24075AB54();
      *&v93 = v47;
      *(&v93 + 1) = v48;
      v54 = v82;
      *&v94 = v82;
      *(&v94 + 1) = v49;
      LOBYTE(v95) = v50;
      sub_2405E17C4();
      v55 = v72;
      sub_24075ABE4();
      (*(v71 + 8))(v51, v55);
      (*(v85 + 8))(v53, v52);
      sub_2405E1818(v86, v83, v54, v49, v50);
    }
  }

  else
  {
    v34 = *(v20 + 9);
    v100 = *(v20 + 8);
    v101 = v34;
    v102 = *(v20 + 20);
    v35 = *(v20 + 5);
    v97[0] = *(v20 + 4);
    v97[1] = v35;
    v36 = *(v20 + 7);
    v98 = *(v20 + 6);
    v99 = v36;
    v37 = *(v20 + 1);
    v93 = *v20;
    v94 = v37;
    v38 = *(v20 + 3);
    v95 = *(v20 + 2);
    v96 = v38;
    LOBYTE(v87) = 0;
    sub_2406DB854();
    v39 = v103;
    v40 = v84;
    sub_24075AB54();
    v91[4] = v100;
    v91[5] = v101;
    v92 = v102;
    v91[0] = v97[0];
    v91[1] = v97[1];
    v91[2] = v98;
    v91[3] = v99;
    v87 = v93;
    v88 = v94;
    v89 = v95;
    v90 = v96;
    sub_2406C010C();
    v41 = v67;
    sub_24075ABE4();
    (*(v66 + 8))(v17, v41);
    (*(v85 + 8))(v40, v39);
    sub_2406BD370(&v93);
  }
}

void V1Command.Request.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticateCommand.Request(0);
  MEMORY[0x28223BE20](v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SignInCommand.Request(0);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for V1Command.Request(0);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2406DC664(v2, v12, type metadata accessor for V1Command.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = *(v12 + 9);
      v52 = *(v12 + 8);
      v53 = v20;
      v54 = *(v12 + 20);
      v21 = *(v12 + 5);
      v49[0] = *(v12 + 4);
      v49[1] = v21;
      v22 = *(v12 + 7);
      v50 = *(v12 + 6);
      v51 = v22;
      v23 = *(v12 + 1);
      v45 = *v12;
      v46 = v23;
      v24 = *(v12 + 3);
      v47 = *(v12 + 2);
      v48 = v24;
      MEMORY[0x245CC6BA0](0);
      v43[8] = v52;
      v43[9] = v53;
      v44 = v54;
      v43[4] = v49[0];
      v43[5] = v49[1];
      v43[6] = v50;
      v43[7] = v51;
      v43[0] = v45;
      v43[1] = v46;
      v43[2] = v47;
      v43[3] = v48;
      HandshakeCommand.Request.hash(into:)(a1);
      sub_2406BD370(&v45);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v12, v9, type metadata accessor for SignInCommand.Request);
      MEMORY[0x245CC6BA0](1);
      IdMSAccount.hash(into:)(a1);
      v14 = *&v9[*(v7 + 20) + 88];
      sub_24075A114();
      sub_24075AE94();
      if (v14 >> 60 != 15)
      {
        sub_2407596D4();
      }

      sub_24075AE94();
      sub_24075AE94();
      sub_2406DB7F4(v9, type metadata accessor for SignInCommand.Request);
      return;
    }

    v28 = *v12;
    v29 = *(v12 + 1);
    v31 = *(v12 + 2);
    v30 = *(v12 + 3);
    v32 = v12[32];
    MEMORY[0x245CC6BA0](2);
    if (v32)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v34 = (v30 >> 60) & 3 | v33;
    if (v34 <= 1)
    {
      if (v34)
      {
        MEMORY[0x245CC6BA0](3);
        sub_24075AE94();
        return;
      }

      MEMORY[0x245CC6BA0](1);
      goto LABEL_31;
    }

    if (v34 == 2)
    {
      MEMORY[0x245CC6BA0](4);
      sub_24075A114();
      goto LABEL_37;
    }

    if (v34 == 3)
    {
      MEMORY[0x245CC6BA0](5);
      sub_24075A114();
LABEL_31:
      sub_2407596D4();
LABEL_37:
      sub_2405E1818(v28, v29, v31, v30, v32);
      return;
    }

    if (v31 | v29 | v28 | v30)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2406DB6F0(v12, v6, type metadata accessor for AuthenticateCommand.Request);
    MEMORY[0x245CC6BA0](3);
    IdMSAccount.hash(into:)(a1);
    v25 = &v6[*(v4 + 20)];
    v26 = *(v25 + 3);
    v47 = *(v25 + 2);
    v48 = v26;
    LOBYTE(v49[0]) = v25[64];
    v27 = *(v25 + 1);
    v45 = *v25;
    v46 = v27;
    sub_240601BC0(a1);
    sub_2406DB7F4(v6, type metadata accessor for AuthenticateCommand.Request);
    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v15 = *(v12 + 3);
    v47 = *(v12 + 2);
    v48 = v15;
    v49[0] = *(v12 + 4);
    *(v49 + 9) = *(v12 + 73);
    v16 = *(v12 + 1);
    v45 = *v12;
    v46 = v16;
    MEMORY[0x245CC6BA0](4);
    v17 = BYTE8(v49[1]) >> 6;
    if (!v17)
    {
      MEMORY[0x245CC6BA0](0);
      sub_24075A114();
LABEL_52:
      sub_2405F717C(&v45);
      return;
    }

    if (v17 != 1)
    {
LABEL_39:
      v40 = 2;
      goto LABEL_40;
    }

    v18 = *&v49[1];
    MEMORY[0x245CC6BA0](1);
    sub_24075A114();
    if (v18 <= 1)
    {
      if (!v18)
      {
        v19 = 0;
        goto LABEL_50;
      }

      if (v18 == 1)
      {
        v19 = 1;
        goto LABEL_50;
      }
    }

    else
    {
      switch(v18)
      {
        case 2:
          v19 = 2;
          goto LABEL_50;
        case 3:
          v19 = 3;
          goto LABEL_50;
        case 4:
          v19 = 5;
LABEL_50:
          MEMORY[0x245CC6BA0](v19);
LABEL_51:
          sub_24075AE94();
          goto LABEL_52;
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    goto LABEL_51;
  }

  v35 = *v12;
  v36 = *(v12 + 1);
  v38 = *(v12 + 2);
  v37 = *(v12 + 3);
  v39 = *(v12 + 4);
  MEMORY[0x245CC6BA0](5);
  if (v36 == 22)
  {
    v40 = 1;
    goto LABEL_40;
  }

  if (v36 == 21)
  {
LABEL_26:
    v40 = 0;
LABEL_40:
    MEMORY[0x245CC6BA0](v40);
    return;
  }

  MEMORY[0x245CC6BA0](2);
  if (v36 == 20)
  {
    sub_24075AE94();
    v41 = v35;
    v42 = 20;
  }

  else
  {
    *&v45 = v35;
    *(&v45 + 1) = v36;
    *&v46 = v38;
    *(&v46 + 1) = v37;
    *&v47 = v39;
    sub_24075AE94();
    _AgeMigrationError.hash(into:)(a1);
    v41 = v35;
    v42 = v36;
  }

  sub_2406DB5E0(v41, v42, v38, v37, v39);
}

uint64_t V1Command.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5C8, &qword_240776F98);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v103 = &v76 - v3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5D0, &qword_240776FA0);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v96 = &v76 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5D8, &qword_240776FA8);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v102 = &v76 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5E0, &qword_240776FB0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v95 = &v76 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5E8, &qword_240776FB8);
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v94 = &v76 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5F0, &qword_240776FC0);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v99 = &v76 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5F8, &unk_240776FC8);
  v104 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v10 = &v76 - v9;
  v98 = type metadata accessor for V1Command.Request(0);
  v11 = MEMORY[0x28223BE20](v98);
  v80 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v76 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v76 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v76 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v76 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v76 - v27;
  v29 = a1[3];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2406DB4E4();
  v100 = v10;
  v30 = v105;
  sub_24075AF34();
  if (!v30)
  {
    v78 = v23;
    v76 = v20;
    v77 = v26;
    v79 = v17;
    v31 = v99;
    v32 = v102;
    v33 = v103;
    v105 = v28;
    v34 = v101;
    v35 = v100;
    v36 = sub_24075AB34();
    v37 = (2 * *(v36 + 16)) | 1;
    v116 = v36;
    v117 = v36 + 32;
    v118 = 0;
    v119 = v37;
    v38 = sub_2405B8B00();
    if (v38 != 6 && v118 == v119 >> 1)
    {
      if (v38 > 2u)
      {
        if (v38 == 3)
        {
          LOBYTE(v106) = 3;
          sub_2406DB648();
          v58 = v34;
          sub_24075AA54();
          v59 = v104;
          type metadata accessor for AuthenticateCommand.Request(0);
          sub_2406DB7AC(&qword_27E4B8BD0, type metadata accessor for AuthenticateCommand.Request, &protocol conformance descriptor for AuthenticateCommand.Request);
          v60 = v79;
          v61 = v88;
          sub_24075AAF4();
          (*(v90 + 8))(v32, v61);
          (*(v59 + 8))(v35, v58);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v65 = v60;
        }

        else
        {
          v48 = v104;
          if (v38 == 4)
          {
            LOBYTE(v106) = 4;
            sub_2406DB5F4();
            v49 = v96;
            sub_24075AA54();
            sub_2405F5F2C();
            v50 = v91;
            sub_24075AAF4();
            (*(v89 + 8))(v49, v50);
            (*(v48 + 8))(v35, v34);
            swift_unknownObjectRelease();
            v67 = v109;
            v68 = v81;
            *(v81 + 2) = v108;
            v68[3] = v67;
            v68[4] = *v110;
            *(v68 + 73) = *&v110[9];
            v69 = v107;
            *v68 = v106;
            v68[1] = v69;
            swift_storeEnumTagMultiPayload();
            v70 = v105;
            sub_2406DB6F0(v68, v105, type metadata accessor for V1Command.Request);
            v39 = v97;
LABEL_20:
            sub_2406DB6F0(v70, v39, type metadata accessor for V1Command.Request);
            return __swift_destroy_boxed_opaque_existential_1(v120);
          }

          LOBYTE(v106) = 5;
          sub_2406DB538();
          sub_24075AA54();
          sub_2406DB8A8();
          v64 = v92;
          sub_24075AAF4();
          (*(v93 + 8))(v33, v64);
          (*(v48 + 8))(v35, v34);
          swift_unknownObjectRelease();
          v73 = v108;
          v74 = v107;
          v75 = v80;
          *v80 = v106;
          v75[1] = v74;
          *(v75 + 4) = v73;
          swift_storeEnumTagMultiPayload();
          v65 = v75;
        }

        v70 = v105;
        sub_2406DB6F0(v65, v105, type metadata accessor for V1Command.Request);
        v39 = v97;
        goto LABEL_20;
      }

      v39 = v97;
      if (v38)
      {
        v40 = v34;
        if (v38 == 1)
        {
          LOBYTE(v106) = 1;
          sub_2406DB758();
          v41 = v94;
          sub_24075AA54();
          type metadata accessor for SignInCommand.Request(0);
          sub_2406DB7AC(&qword_27E4B9390, type metadata accessor for SignInCommand.Request, &protocol conformance descriptor for SignInCommand.Request);
          v42 = v78;
          v43 = v84;
          sub_24075AAF4();
          (*(v85 + 8))(v41, v43);
          (*(v104 + 8))(v35, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v66 = v42;
LABEL_18:
          v70 = v105;
          sub_2406DB6F0(v66, v105, type metadata accessor for V1Command.Request);
          goto LABEL_20;
        }

        LOBYTE(v106) = 2;
        sub_2406DB69C();
        v62 = v95;
        sub_24075AA54();
        sub_2405E1BAC();
        v63 = v87;
        sub_24075AAF4();
        (*(v86 + 8))(v62, v63);
        (*(v104 + 8))(v35, v34);
        swift_unknownObjectRelease();
        v71 = v108;
        v72 = v107;
        v53 = v76;
        *v76 = v106;
        v53[1] = v72;
        *(v53 + 32) = v71;
      }

      else
      {
        LOBYTE(v106) = 0;
        sub_2406DB854();
        sub_24075AA54();
        sub_2406C00B8();
        v51 = v82;
        sub_24075AAF4();
        (*(v83 + 8))(v31, v51);
        (*(v104 + 8))(v35, v34);
        swift_unknownObjectRelease();
        v52 = v114;
        v53 = v77;
        *(v77 + 8) = v113;
        v53[9] = v52;
        *(v53 + 20) = v115;
        v54 = *&v110[16];
        v53[4] = *v110;
        v53[5] = v54;
        v55 = v112;
        v53[6] = v111;
        v53[7] = v55;
        v56 = v107;
        *v53 = v106;
        v53[1] = v56;
        v57 = v109;
        v53[2] = v108;
        v53[3] = v57;
      }

      swift_storeEnumTagMultiPayload();
      v66 = v53;
      goto LABEL_18;
    }

    v44 = sub_24075A8C4();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v46 = v98;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v104 + 8))(v35, v34);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v120);
}

uint64_t sub_2406D0EE4(uint64_t a1)
{
  v2 = sub_2406DC6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D0F20(uint64_t a1)
{
  v2 = sub_2406DC6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D0F5C(uint64_t a1)
{
  v2 = sub_2406DC7C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D0F98(uint64_t a1)
{
  v2 = sub_2406DC7C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D0FD4(uint64_t a1)
{
  v2 = sub_2406DC774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1010(uint64_t a1)
{
  v2 = sub_2406DC774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D104C(uint64_t a1)
{
  v2 = sub_2406DC610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1088(uint64_t a1)
{
  v2 = sub_2406DC610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D10C4(uint64_t a1)
{
  v2 = sub_2406DC870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1100(uint64_t a1)
{
  v2 = sub_2406DC870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D113C(uint64_t a1)
{
  v2 = sub_2406DC720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1178(uint64_t a1)
{
  v2 = sub_2406DC720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D11B4(uint64_t a1)
{
  v2 = sub_2406DC81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D11F0(uint64_t a1)
{
  v2 = sub_2406DC81C();

  return MEMORY[0x2821FE720](a1, v2);
}

void V1Command.Response.encode(to:)(void *a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC608, &qword_240776FD8);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v46 - v2;
  v65 = type metadata accessor for AgeMigrationCommand.Response(0);
  MEMORY[0x28223BE20](v65);
  v66 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC610, &qword_240776FE0);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v46 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC618, &qword_240776FE8);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v46 - v5;
  v57 = type metadata accessor for AuthenticateCommand.Response(0);
  MEMORY[0x28223BE20](v57);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC620, &qword_240776FF0);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v46 - v7;
  v52 = type metadata accessor for AnisetteCommand.Response(0);
  MEMORY[0x28223BE20](v52);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC628, &qword_240776FF8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v10 = &v46 - v9;
  v48 = type metadata accessor for SignInCommand.Response(0);
  MEMORY[0x28223BE20](v48);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC630, &qword_240777000);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v46 - v13;
  v15 = type metadata accessor for V1Command.Response(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC638, &qword_240777008);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v19 = &v46 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DC610();
  v71 = v19;
  sub_24075AF74();
  sub_2406DC664(v87, v17, type metadata accessor for V1Command.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = *(v17 + 5);
      v84 = *(v17 + 4);
      v85 = v33;
      v86 = v17[96];
      v34 = *(v17 + 1);
      v80 = *v17;
      v81 = v34;
      v35 = *(v17 + 3);
      v82 = *(v17 + 2);
      v83 = v35;
      LOBYTE(v73) = 0;
      sub_2406DC870();
      v36 = v72;
      v37 = v71;
      sub_24075AB54();
      v77 = v84;
      v78 = v85;
      v79 = v86;
      v73 = v80;
      v74 = v81;
      v76 = v83;
      v75 = v82;
      sub_2406C03EC();
      v38 = v49;
      sub_24075ABE4();
      (*(v47 + 8))(v14, v38);
      (*(v70 + 8))(v37, v36);
      sub_2406BFA90(&v80);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v17, v12, type metadata accessor for SignInCommand.Response);
      LOBYTE(v80) = 1;
      sub_2406DC81C();
      v21 = v72;
      v22 = v71;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B93C8, type metadata accessor for SignInCommand.Response, &protocol conformance descriptor for SignInCommand.Response);
      v23 = v51;
      sub_24075ABE4();
      (*(v50 + 8))(v10, v23);
      v24 = type metadata accessor for SignInCommand.Response;
    }

    else
    {
      v12 = v53;
      sub_2406DB6F0(v17, v53, type metadata accessor for AnisetteCommand.Response);
      LOBYTE(v80) = 2;
      sub_2406DC7C8();
      v41 = v54;
      v21 = v72;
      v22 = v71;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B7B70, type metadata accessor for AnisetteCommand.Response, &protocol conformance descriptor for AnisetteCommand.Response);
      v42 = v56;
      sub_24075ABE4();
      (*(v55 + 8))(v41, v42);
      v24 = type metadata accessor for AnisetteCommand.Response;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v12 = v58;
    sub_2406DB6F0(v17, v58, type metadata accessor for AuthenticateCommand.Response);
    LOBYTE(v80) = 3;
    sub_2406DC774();
    v39 = v59;
    v21 = v72;
    v22 = v71;
    sub_24075AB54();
    sub_2406DB7AC(&qword_27E4B8C08, type metadata accessor for AuthenticateCommand.Response, &protocol conformance descriptor for AuthenticateCommand.Response);
    v40 = v61;
    sub_24075ABE4();
    (*(v60 + 8))(v39, v40);
    v24 = type metadata accessor for AuthenticateCommand.Response;
LABEL_11:
    sub_2406DB7F4(v12, v24);
    (*(v70 + 8))(v22, v21);
    return;
  }

  v25 = v72;
  v26 = v71;
  if (EnumCaseMultiPayload == 4)
  {
    v27 = *v17;
    v28 = *(v17 + 1);
    v29 = *(v17 + 2);
    v30 = *(v17 + 3);
    LOBYTE(v80) = 4;
    sub_2406DC720();
    v31 = v62;
    sub_24075AB54();
    *&v80 = v27;
    *(&v80 + 1) = v28;
    *&v81 = v29;
    *(&v81 + 1) = v30;
    sub_2405F6260();
    v32 = v64;
    sub_24075ABE4();
    (*(v63 + 8))(v31, v32);
    (*(v70 + 8))(v26, v25);
    sub_2405F7088(v27, v28, v29, v30);
  }

  else
  {
    v43 = v66;
    sub_2406DB6F0(v17, v66, type metadata accessor for AgeMigrationCommand.Response);
    LOBYTE(v80) = 5;
    sub_2406DC6CC();
    v44 = v67;
    sub_24075AB54();
    sub_2406DB7AC(&qword_27E4BC650, type metadata accessor for AgeMigrationCommand.Response, &protocol conformance descriptor for AgeMigrationCommand.Response);
    v45 = v69;
    sub_24075ABE4();
    (*(v68 + 8))(v44, v45);
    sub_2406DB7F4(v43, type metadata accessor for AgeMigrationCommand.Response);
    (*(v70 + 8))(v26, v25);
  }
}

void V1Command.Response.hash(into:)(__int128 *a1)
{
  v46 = a1;
  v44 = type metadata accessor for AgeMigrationCommand.Response.ReceivedMigrationInfo(0);
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AgeMigrationCommand.Response(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = type metadata accessor for AuthenticateCommand.Response(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnisetteCommand.Response(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SignInCommand.Response(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for V1Command.Response(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2406DC664(v1, v20, type metadata accessor for V1Command.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v30 = *(v20 + 5);
      v58 = *(v20 + 4);
      v59 = v30;
      v60 = v20[96];
      v31 = *(v20 + 1);
      v54 = *v20;
      v55 = v31;
      v32 = *(v20 + 3);
      v56 = *(v20 + 2);
      v57 = v32;
      v33 = v46;
      MEMORY[0x245CC6BA0](0);
      v51 = v58;
      v52 = v59;
      v53 = v60;
      v47 = v54;
      v48 = v55;
      v50 = v57;
      v49 = v56;
      HandshakeCommand.Response.hash(into:)(v33);
      sub_2406BFA90(&v54);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v20, v17, type metadata accessor for SignInCommand.Response);
      v22 = v46;
      MEMORY[0x245CC6BA0](1);
      IdMSAccount.hash(into:)(v22);
      sub_2406206AC(v22, *&v17[*(v15 + 20)]);
      v23 = type metadata accessor for SignInCommand.Response;
      v24 = v17;
    }

    else
    {
      sub_2406DB6F0(v20, v14, type metadata accessor for AnisetteCommand.Response);
      v34 = v46;
      MEMORY[0x245CC6BA0](2);
      AnisetteCommand.Response.hash(into:)(v34);
      v23 = type metadata accessor for AnisetteCommand.Response;
      v24 = v14;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2406DB6F0(v20, v11, type metadata accessor for AuthenticateCommand.Response);
    MEMORY[0x245CC6BA0](3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
    sub_2406DC8C4();
    sub_24075A004();
    v23 = type metadata accessor for AuthenticateCommand.Response;
    v24 = v11;
LABEL_24:
    sub_2406DB7F4(v24, v23);
    return;
  }

  v25 = v46;
  if (EnumCaseMultiPayload != 4)
  {
    sub_2406DB6F0(v20, v8, type metadata accessor for AgeMigrationCommand.Response);
    MEMORY[0x245CC6BA0](5);
    sub_2406DC664(v8, v6, type metadata accessor for AgeMigrationCommand.Response);
    v35 = swift_getEnumCaseMultiPayload();
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }

      MEMORY[0x245CC6BA0](v41);
    }

    else if (v35)
    {
      v42 = *(v6 + 1);
      v54 = *v6;
      v55 = v42;
      *&v56 = *(v6 + 4);
      MEMORY[0x245CC6BA0](3);
      _AgeMigrationError.hash(into:)(v25);
      sub_2405E1900(&v54);
    }

    else
    {
      v36 = v45;
      sub_2406DB6F0(v6, v45, type metadata accessor for AgeMigrationCommand.Response.ReceivedMigrationInfo);
      MEMORY[0x245CC6BA0](0);
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      v37 = v44;
      sub_240759744();
      sub_2406DB7AC(&qword_27E4BC680, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24075A004();
      v43 = *(v36 + *(v37 + 32) + 64);
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      MEMORY[0x245CC6BE0](v43);
      v38 = v36 + *(v37 + 36);
      v39 = *(v38 + 48);
      v56 = *(v38 + 32);
      v57 = v39;
      LOBYTE(v58) = *(v38 + 64);
      v40 = *(v38 + 16);
      v54 = *v38;
      v55 = v40;
      IdMSAccount.DeviceInfo.hash(into:)(v25);
      sub_24075A114();
      sub_2406DB7F4(v36, type metadata accessor for AgeMigrationCommand.Response.ReceivedMigrationInfo);
    }

    v23 = type metadata accessor for AgeMigrationCommand.Response;
    v24 = v8;
    goto LABEL_24;
  }

  v26 = *v20;
  v27 = *(v20 + 1);
  v28 = *(v20 + 2);
  v29 = *(v20 + 3);
  MEMORY[0x245CC6BA0](4);
  if (v29 >> 62)
  {
    if (v29 >> 62 == 1)
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075AE94();
    }

    else
    {
      MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_24075A114();
    sub_2405ED470(v25, v29);
    sub_2405F7088(v26, v27, v28, v29);
  }
}

uint64_t V1Command.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC688, &qword_240777018);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v107 = &v79 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC690, &qword_240777020);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v106 = &v79 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC698, &qword_240777028);
  v94 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v105 = &v79 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6A0, &qword_240777030);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v100 = &v79 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6A8, &qword_240777038);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v99 = &v79 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6B0, &qword_240777040);
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v103 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6B8, &qword_240777048);
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - v10;
  v102 = type metadata accessor for V1Command.Response(0);
  v12 = MEMORY[0x28223BE20](v102);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = (&v79 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v30 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_2406DC610();
  v104 = v11;
  v31 = v110;
  sub_24075AF34();
  if (!v31)
  {
    v80 = v27;
    v81 = v24;
    v82 = v21;
    v83 = v18;
    v32 = v103;
    v33 = v105;
    v110 = 0;
    v34 = v106;
    v35 = v107;
    v36 = v102;
    v84 = v29;
    v37 = v109;
    v38 = v104;
    v39 = sub_24075AB34();
    v40 = (2 * *(v39 + 16)) | 1;
    v118 = v39;
    v119 = v39 + 32;
    v120 = 0;
    v121 = v40;
    v41 = sub_2405B8B00();
    if (v41 == 6 || v120 != v121 >> 1)
    {
      v47 = sub_24075A8C4();
      swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v49 = v36;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      v50 = *(v108 + 8);
      v51 = v38;
LABEL_10:
      v50(v51, v37);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v122);
    }

    if (v41 <= 2u)
    {
      if (v41)
      {
        v42 = v110;
        if (v41 == 1)
        {
          LOBYTE(v111) = 1;
          sub_2406DC81C();
          v43 = v99;
          sub_24075AA54();
          if (!v42)
          {
            type metadata accessor for SignInCommand.Response(0);
            sub_2406DB7AC(&qword_27E4B93C0, type metadata accessor for SignInCommand.Response, &protocol conformance descriptor for SignInCommand.Response);
            v44 = v81;
            v45 = v89;
            sub_24075AAF4();
            v46 = v108;
            (*(v90 + 8))(v43, v45);
            (*(v46 + 8))(v38, v109);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v74 = v44;
LABEL_26:
            v78 = v84;
            sub_2406DB6F0(v74, v84, type metadata accessor for V1Command.Response);
            v53 = v101;
LABEL_28:
            sub_2406DB6F0(v78, v53, type metadata accessor for V1Command.Response);
            return __swift_destroy_boxed_opaque_existential_1(v122);
          }

          goto LABEL_23;
        }

        LOBYTE(v111) = 2;
        sub_2406DC7C8();
        v66 = v100;
        sub_24075AA54();
        if (!v42)
        {
          v67 = v38;
          v68 = v37;
          type metadata accessor for AnisetteCommand.Response(0);
          sub_2406DB7AC(&qword_27E4B7C00, type metadata accessor for AnisetteCommand.Response, &protocol conformance descriptor for AnisetteCommand.Response);
          v69 = v82;
          v70 = v92;
          sub_24075AAF4();
          (*(v91 + 8))(v66, v70);
          v59 = v69;
          (*(v108 + 8))(v67, v68);
          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v111) = 0;
        sub_2406DC870();
        v56 = v110;
        sub_24075AA54();
        if (!v56)
        {
          sub_2406C0398();
          v57 = v86;
          sub_24075AAF4();
          (*(v88 + 8))(v32, v57);
          (*(v108 + 8))(v38, v37);
          swift_unknownObjectRelease();
          v58 = v116;
          v59 = v80;
          *(v80 + 4) = v115;
          *(v59 + 80) = v58;
          *(v59 + 96) = v117;
          v60 = v112;
          *v59 = v111;
          *(v59 + 16) = v60;
          v61 = v114;
          *(v59 + 32) = v113;
          *(v59 + 48) = v61;
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v74 = v59;
          goto LABEL_26;
        }
      }

LABEL_23:
      v50 = *(v108 + 8);
      v51 = v38;
      goto LABEL_10;
    }

    v53 = v101;
    if (v41 == 3)
    {
      LOBYTE(v111) = 3;
      sub_2406DC774();
      v62 = v33;
      v63 = v110;
      sub_24075AA54();
      if (!v63)
      {
        type metadata accessor for AuthenticateCommand.Response(0);
        sub_2406DB7AC(&qword_27E4B8C00, type metadata accessor for AuthenticateCommand.Response, &protocol conformance descriptor for AuthenticateCommand.Response);
        v64 = v83;
        v65 = v93;
        sub_24075AAF4();
        (*(v94 + 8))(v62, v65);
        (*(v108 + 8))(v38, v109);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v74 = v64;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v41 == 4)
    {
      LOBYTE(v111) = 4;
      sub_2406DC720();
      v54 = v110;
      sub_24075AA54();
      if (v54)
      {
        goto LABEL_23;
      }

      sub_2405F620C();
      v55 = v96;
      sub_24075AAF4();
      (*(v95 + 8))(v34, v55);
      (*(v108 + 8))(v38, v37);
      swift_unknownObjectRelease();
      v75 = v112;
      v76 = v85;
      *v85 = v111;
      v76[1] = v75;
      swift_storeEnumTagMultiPayload();
      v77 = v76;
    }

    else
    {
      LOBYTE(v111) = 5;
      sub_2406DC6CC();
      v71 = v110;
      sub_24075AA54();
      if (v71)
      {
        goto LABEL_23;
      }

      type metadata accessor for AgeMigrationCommand.Response(0);
      sub_2406DB7AC(&qword_27E4BC6C0, type metadata accessor for AgeMigrationCommand.Response, &protocol conformance descriptor for AgeMigrationCommand.Response);
      v72 = v87;
      v73 = v97;
      sub_24075AAF4();
      (*(v98 + 8))(v35, v73);
      (*(v108 + 8))(v38, v109);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v77 = v72;
    }

    v78 = v84;
    sub_2406DB6F0(v77, v84, type metadata accessor for V1Command.Response);
    goto LABEL_28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v122);
}

uint64_t static V1CommandError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v37[0] = v4;
  v37[1] = v3;
  v37[2] = v5;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  v42 = v10;
  if (!v6)
  {
    if (!v10)
    {
      if (v4 == v7 && v3 == v8)
      {
        v22 = v9;
        sub_2406DC950(v4, v3, v9, 0);
        sub_2406DC950(v4, v3, v5, 0);
        sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
      }

      else
      {
        v24 = v7;
        v25 = v8;
        v26 = v9;
        v27 = sub_24075ACF4();
        v28 = v24;
        v22 = v26;
        sub_2406DC950(v28, v25, v26, 0);
        sub_2406DC950(v4, v3, v5, 0);
        sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
        v21 = 0;
        if ((v27 & 1) == 0)
        {
          return v21 & 1;
        }
      }

      v21 = v5 == v22;
      return v21 & 1;
    }

    goto LABEL_35;
  }

  if (v6 != 1)
  {
    v23 = v5 | v3;
    if (v5 | v3 | v4)
    {
      if (v4 != 1 || v23)
      {
        if (v4 != 2 || v23)
        {
          if (v4 != 3 || v23)
          {
            if (v10 != 2 || v7 != 4)
            {
              goto LABEL_35;
            }
          }

          else if (v10 != 2 || v7 != 3)
          {
            goto LABEL_35;
          }
        }

        else if (v10 != 2 || v7 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != 2 || v7 != 1)
      {
        goto LABEL_35;
      }

      if (v9 | v8)
      {
LABEL_35:
        sub_2406DC950(v7, v8, v9, v10);
        sub_2406DC950(v4, v3, v5, v6);
        goto LABEL_36;
      }
    }

    else if (v10 != 2 || v9 | v8 | v7)
    {
      goto LABEL_35;
    }

    sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
    v21 = 1;
    return v21 & 1;
  }

  if (v10 != 1)
  {
    goto LABEL_35;
  }

  v30 = *(v4 + 48);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  v13 = *(v4 + 40);
  v14 = *(v4 + 32);
  v15 = *(v7 + 32);
  v16 = *(v7 + 40);
  v17 = *(v7 + 48);
  v18 = *(v7 + 56);
  v19 = *(v7 + 64);
  v20 = *(v7 + 72);
  v34 = *(v4 + 16);
  v35 = v14;
  v36 = v13;
  v31 = *(v7 + 16);
  v32 = v15;
  v33 = v16;
  sub_2406DC950(v7, v8, v9, 1);
  sub_2406DC950(v4, v3, v5, 1);
  if ((static V1CommandError.== infix(_:_:)(&v34, &v31) & 1) == 0)
  {
LABEL_36:
    sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
    v21 = 0;
    return v21 & 1;
  }

  v34 = v30;
  v35 = v11;
  v36 = v12;
  *&v31 = v17;
  *(&v31 + 1) = v18;
  v32 = v19;
  v33 = v20;
  v21 = static V1CommandError.== infix(_:_:)(&v34, &v31);
  sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
  return v21 & 1;
}

uint64_t sub_2406D388C()
{
  v1 = 0x65736E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_2406D38E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E0464(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406D3910(uint64_t a1)
{
  v2 = sub_2406DC990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D394C(uint64_t a1)
{
  v2 = sub_2406DC990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D3988(uint64_t a1)
{
  v2 = sub_2406DC9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D39C4(uint64_t a1)
{
  v2 = sub_2406DC9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D3A00(uint64_t a1)
{
  v2 = sub_2406DCB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D3A3C(uint64_t a1)
{
  v2 = sub_2406DCB00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D3A78(uint64_t a1)
{
  v2 = sub_2406DCAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D3AB4(uint64_t a1)
{
  v2 = sub_2406DCAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6D0, &qword_240777058);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v33 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6D8, &qword_240777060);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v33 - v4;
  v37 = type metadata accessor for V1Command.Response(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6E0, &qword_240777068);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v34 = type metadata accessor for V1Command.Request(0);
  MEMORY[0x28223BE20](v34);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for V1Command(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6E8, &qword_240777070);
  v14 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DC990();
  sub_24075AF74();
  sub_2406DC664(v45, v13, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v13;
      v19 = v38;
      sub_2406DB6F0(v18, v38, type metadata accessor for V1Command.Response);
      LOBYTE(v47) = 1;
      sub_2406DCAAC();
      v20 = v39;
      v21 = v46;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4BC710, type metadata accessor for V1Command.Response, &protocol conformance descriptor for V1Command.Response);
      v22 = v42;
      sub_24075ABE4();
      (*(v40 + 8))(v20, v22);
      sub_2406DB7F4(v19, type metadata accessor for V1Command.Response);
      return (*(v14 + 8))(v16, v21);
    }

    else
    {
      v26 = *(v13 + 1);
      v45 = *v13;
      v27 = v45;
      v28 = *(v13 + 2);
      v29 = v13[24];
      LOBYTE(v47) = 2;
      sub_2406DC9E4();
      v30 = v41;
      v31 = v46;
      sub_24075AB54();
      v47 = v27;
      v48 = v26;
      v49 = v28;
      v50 = v29;
      sub_2406DCA38();
      v32 = v44;
      sub_24075ABE4();
      (*(v43 + 8))(v30, v32);
      (*(v14 + 8))(v16, v31);
      return sub_2406DCA8C(v45, v26, v28, v29);
    }
  }

  else
  {
    sub_2406DB6F0(v13, v10, type metadata accessor for V1Command.Request);
    LOBYTE(v47) = 0;
    sub_2406DCB00();
    v24 = v46;
    sub_24075AB54();
    sub_2406DB7AC(&qword_27E4BC720, type metadata accessor for V1Command.Request, &protocol conformance descriptor for V1Command.Request);
    v25 = v36;
    sub_24075ABE4();
    (*(v35 + 8))(v8, v25);
    sub_2406DB7F4(v10, type metadata accessor for V1Command.Request);
    return (*(v14 + 8))(v16, v24);
  }
}

uint64_t V1Command.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for V1Command.Response(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for V1Command.Request(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for V1Command(0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2406DC664(v1, v11, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v11, v5, type metadata accessor for V1Command.Response);
      MEMORY[0x245CC6BA0](1);
      V1Command.Response.hash(into:)(a1);
      return sub_2406DB7F4(v5, type metadata accessor for V1Command.Response);
    }

    else
    {
      v14 = *v11;
      v15 = *(v11 + 1);
      v16 = *(v11 + 2);
      v17 = v11[24];
      MEMORY[0x245CC6BA0](2);
      v18[0] = v14;
      v18[1] = v15;
      v18[2] = v16;
      v19 = v17;
      V1CommandError.hash(into:)(a1);
      return sub_2406DCA8C(v14, v15, v16, v17);
    }
  }

  else
  {
    sub_2406DB6F0(v11, v8, type metadata accessor for V1Command.Request);
    MEMORY[0x245CC6BA0](0);
    V1Command.Request.hash(into:)(a1);
    return sub_2406DB7F4(v8, type metadata accessor for V1Command.Request);
  }
}

uint64_t sub_2406D43BC(uint64_t (*a1)(void *))
{
  sub_24075AE64();
  a1(v3);
  return sub_24075AED4();
}

uint64_t V1Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC728, &qword_240777078);
  v58 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v59 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC730, &qword_240777080);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC738, &qword_240777088);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v50 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC740, &qword_240777090);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v9 = &v50 - v8;
  v10 = type metadata accessor for V1Command(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2406DC990();
  v23 = v65;
  sub_24075AF34();
  if (!v23)
  {
    v51 = v19;
    v50 = v13;
    v52 = v16;
    v24 = v60;
    v25 = v61;
    v65 = v21;
    v26 = v10;
    v28 = v62;
    v27 = v63;
    v29 = sub_24075AB34();
    v30 = (2 * *(v29 + 16)) | 1;
    v69 = v29;
    v70 = v29 + 32;
    v71 = 0;
    v72 = v30;
    v31 = sub_2405B8AF0();
    if (v31 != 3 && v71 == v72 >> 1)
    {
      if (v31)
      {
        if (v31 != 1)
        {
          LOBYTE(v66) = 2;
          sub_2406DC9E4();
          v43 = v59;
          sub_24075AA54();
          v60 = v10;
          sub_2406DCB54();
          v44 = v53;
          sub_24075AAF4();
          (*(v58 + 8))(v43, v44);
          (*(v64 + 8))(v9, v25);
          swift_unknownObjectRelease();
          v45 = v67;
          v46 = v68;
          v47 = v50;
          *v50 = v66;
          *(v47 + 2) = v45;
          *(v47 + 24) = v46;
          swift_storeEnumTagMultiPayload();
          v48 = v47;
LABEL_12:
          v49 = v65;
          sub_2406DB6F0(v48, v65, type metadata accessor for V1Command);
          sub_2406DB6F0(v49, v27, type metadata accessor for V1Command);
          return __swift_destroy_boxed_opaque_existential_1(v73);
        }

        LOBYTE(v66) = 1;
        sub_2406DCAAC();
        sub_24075AA54();
        v60 = v10;
        type metadata accessor for V1Command.Response(0);
        sub_2406DB7AC(&qword_27E4BC750, type metadata accessor for V1Command.Response, &protocol conformance descriptor for V1Command.Response);
        v32 = v52;
        v33 = v57;
        sub_24075AAF4();
        v34 = v28;
        v35 = v64;
        (*(v56 + 8))(v34, v33);
        (*(v35 + 8))(v9, v25);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v66) = 0;
        sub_2406DCB00();
        v41 = v24;
        sub_24075AA54();
        type metadata accessor for V1Command.Request(0);
        sub_2406DB7AC(&qword_27E4BC758, type metadata accessor for V1Command.Request, &protocol conformance descriptor for V1Command.Request);
        v32 = v51;
        v42 = v55;
        sub_24075AAF4();
        (*(v54 + 8))(v41, v42);
        (*(v64 + 8))(v9, v25);
        swift_unknownObjectRelease();
      }

      swift_storeEnumTagMultiPayload();
      v48 = v32;
      goto LABEL_12;
    }

    v36 = v9;
    v37 = sub_24075A8C4();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v39 = v26;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v64 + 8))(v36, v25);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_2406D4CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_24075AE64();
  a3(v5);
  return sub_24075AED4();
}

uint64_t sub_2406D4D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

void static V1CommandError.genericError(from:)(uint64_t a2@<X8>)
{
  v3 = sub_2407595C4();
  v4 = [v3 domain];
  v5 = sub_24075A0B4();
  v7 = v6;

  v8 = [v3 code];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
}

uint64_t sub_2406D4DD4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x636972656E6567;
    if (v1 != 1)
    {
      v5 = 0x64657473656ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 != 5)
    {
      v2 = 0x636E614372657375;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2406D4EBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E057C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406D4EE4(uint64_t a1)
{
  v2 = sub_2406DCBA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D4F20(uint64_t a1)
{
  v2 = sub_2406DCBA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D4F5C()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_2406D4F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2406D5064(uint64_t a1)
{
  v2 = sub_2406DCDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D50A0(uint64_t a1)
{
  v2 = sub_2406DCDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D50DC(uint64_t a1)
{
  v2 = sub_2406DCD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5118(uint64_t a1)
{
  v2 = sub_2406DCD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D5154(uint64_t a1)
{
  v2 = sub_2406DCC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5190(uint64_t a1)
{
  v2 = sub_2406DCC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D51CC(uint64_t a1)
{
  v2 = sub_2406DCCF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5208(uint64_t a1)
{
  v2 = sub_2406DCCF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D5244(uint64_t a1)
{
  v2 = sub_2406DCCA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5280(uint64_t a1)
{
  v2 = sub_2406DCCA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D52BC(uint64_t a1)
{
  v2 = sub_2406DCDF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D52F8(uint64_t a1)
{
  v2 = sub_2406DCDF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D5334(uint64_t a1)
{
  v2 = sub_2406DCBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5370(uint64_t a1)
{
  v2 = sub_2406DCBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1CommandError.encode(to:)(void *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC760, &qword_240777098);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v45 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC768, &qword_2407770A0);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v45 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC770, &qword_2407770A8);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC778, &qword_2407770B0);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC780, &qword_2407770B8);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC788, &qword_2407770C0);
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC790, &qword_2407770C8);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC798, &qword_2407770D0);
  v17 = *(v16 - 8);
  v66 = v16;
  v67 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v21 = *v1;
  v20 = v1[1];
  *v64 = v1[2];
  *&v64[8] = v20;
  v22 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DCBA8();
  v65 = v19;
  sub_24075AF74();
  if (v22)
  {
    if (v22 == 1)
    {
      *&v64[8] = *(v21 + 16);
      v23 = *(v21 + 32);
      v24 = *(v21 + 40);
      v25 = *(v21 + 56);
      *v64 = *(v21 + 48);
      v26 = *(v21 + 64);
      v27 = *(v21 + 72);
      LOBYTE(v69) = 2;
      sub_2406DCD4C();
      v28 = v61;
      v30 = v65;
      v29 = v66;
      sub_24075AB54();
      v69 = *&v64[8];
      v70 = v23;
      v71 = v24;
      v72 = 0;
      sub_2406DCA38();
      v31 = v63;
      v32 = v68;
      sub_24075ABE4();
      if (!v32)
      {
        *&v69 = *v64;
        *(&v69 + 1) = v25;
        v70 = v26;
        v71 = v27;
        v72 = 1;
        sub_24075ABE4();
      }

      (*(v62 + 8))(v28, v31);
      return (*(v67 + 8))(v30, v29);
    }

    else
    {
      v38 = v66;
      if (*v64 | *&v64[8] | v21)
      {
        if (v21 == 1 && *v64 == 0)
        {
          LOBYTE(v69) = 3;
          sub_2406DCCF8();
          v39 = v54;
          v40 = v65;
          sub_24075AB54();
          (*(v55 + 8))(v39, v56);
        }

        else if (v21 == 2 && *v64 == 0)
        {
          LOBYTE(v69) = 4;
          sub_2406DCCA4();
          v42 = v51;
          v40 = v65;
          sub_24075AB54();
          (*(v52 + 8))(v42, v53);
        }

        else if (v21 == 3 && *v64 == 0)
        {
          LOBYTE(v69) = 5;
          sub_2406DCC50();
          v43 = v45;
          v40 = v65;
          sub_24075AB54();
          (*(v46 + 8))(v43, v47);
        }

        else
        {
          LOBYTE(v69) = 6;
          sub_2406DCBFC();
          v44 = v48;
          v40 = v65;
          sub_24075AB54();
          (*(v49 + 8))(v44, v50);
        }
      }

      else
      {
        LOBYTE(v69) = 0;
        sub_2406DCDF4();
        v40 = v65;
        sub_24075AB54();
        (*(v57 + 8))(v15, v58);
      }

      return (*(v67 + 8))(v40, v38);
    }
  }

  else
  {
    v33 = v59;
    LOBYTE(v69) = 1;
    sub_2406DCDA0();
    v35 = v65;
    v34 = v66;
    sub_24075AB54();
    LOBYTE(v69) = 0;
    v36 = v60;
    v37 = v68;
    sub_24075ABB4();
    if (!v37)
    {
      LOBYTE(v69) = 1;
      sub_24075ABD4();
    }

    (*(v33 + 8))(v12, v36);
    return (*(v67 + 8))(v35, v34);
  }
}

uint64_t V1CommandError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {
      MEMORY[0x245CC6BA0](2);
      V1CommandError.hash(into:)(a1);
      return V1CommandError.hash(into:)(a1);
    }

    v8 = v5 | v4;
    if (v5 | v4 | v3)
    {
      if (v3 == 1 && v8 == 0)
      {
        v7 = 3;
      }

      else if (v3 != 2 || v8)
      {
        if (v3 != 3 || v8)
        {
          v7 = 6;
        }

        else
        {
          v7 = 5;
        }
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
    sub_24075A114();
    v7 = v5;
  }

  return MEMORY[0x245CC6BA0](v7);
}

uint64_t V1CommandError.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  V1CommandError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t V1CommandError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7E0, &qword_2407770D8);
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v75 = &v55 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7E8, &qword_2407770E0);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v71 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7F0, &qword_2407770E8);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v55 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7F8, &qword_2407770F0);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v70 = &v55 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC800, &qword_2407770F8);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v73 = &v55 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC808, &qword_240777100);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC810, &qword_240777108);
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC818, &qword_240777110);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v18 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2406DCBA8();
  v19 = v77;
  sub_24075AF34();
  if (v19)
  {
    goto LABEL_12;
  }

  v20 = v13;
  v55 = v11;
  v56 = 0;
  v21 = v73;
  v22 = v74;
  v23 = v75;
  v77 = v15;
  v24 = v17;
  v25 = sub_24075AB34();
  v26 = (2 * *(v25 + 16)) | 1;
  v78 = v25;
  v79 = v25 + 32;
  v80 = 0;
  v81 = v26;
  v27 = sub_2405B8B04();
  if (v27 == 7 || v80 != v81 >> 1)
  {
    v36 = sub_24075A8C4();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v38 = &type metadata for V1CommandError;
    v39 = v24;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
LABEL_10:
    (*(v77 + 8))(v39, v14);
    goto LABEL_11;
  }

  if (v27 > 2u)
  {
    if (v27 <= 4u)
    {
      v28 = v72;
      v29 = v77;
      if (v27 == 3)
      {
        v82 = 3;
        sub_2406DCCF8();
        v30 = v70;
        v31 = v56;
        sub_24075AA54();
        if (!v31)
        {
          (*(v58 + 8))(v30, v60);
          (*(v29 + 8))(v24, v14);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0;
          v34 = 2;
          v35 = 1;
LABEL_28:
          v40 = v76;
          goto LABEL_34;
        }
      }

      else
      {
        v82 = 4;
        sub_2406DCCA4();
        v49 = v56;
        sub_24075AA54();
        if (!v49)
        {
          (*(v62 + 8))(v22, v63);
          (*(v29 + 8))(v24, v14);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v34 = 2;
          goto LABEL_28;
        }
      }

      goto LABEL_30;
    }

    v44 = v72;
    v29 = v77;
    if (v27 == 5)
    {
      v82 = 5;
      sub_2406DCC50();
      v45 = v71;
      v46 = v56;
      sub_24075AA54();
      if (!v46)
      {
        (*(v66 + 8))(v45, v68);
        (*(v29 + 8))(v24, v14);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 2;
        v35 = 3;
LABEL_33:
        v40 = v76;
        v28 = v44;
        goto LABEL_34;
      }
    }

    else
    {
      v82 = 6;
      sub_2406DCBFC();
      v50 = v56;
      sub_24075AA54();
      if (!v50)
      {
        (*(v64 + 8))(v23, v69);
        (*(v29 + 8))(v24, v14);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 2;
        v35 = 4;
        goto LABEL_33;
      }
    }

LABEL_30:
    (*(v29 + 8))(v24, v14);
    goto LABEL_11;
  }

  if (!v27)
  {
    v82 = 0;
    sub_2406DCDF4();
    v39 = v17;
    v47 = v56;
    sub_24075AA54();
    if (!v47)
    {
      (*(v57 + 8))(v20, v55);
      (*(v77 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v35 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 2;
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v42 = v56;
  if (v27 == 1)
  {
    v82 = 1;
    sub_2406DCDA0();
    v39 = v24;
    sub_24075AA54();
    if (!v42)
    {
      v82 = 0;
      v43 = v61;
      v35 = sub_24075AAC4();
      v32 = v53;
      v82 = 1;
      v54 = sub_24075AAE4();
      (*(v59 + 8))(v10, v43);
      (*(v77 + 8))(v24, v14);
      swift_unknownObjectRelease();
      v33 = v54;
      v34 = 0;
LABEL_23:
      v40 = v76;
      v28 = v72;
LABEL_34:
      *v28 = v35;
      *(v28 + 8) = v32;
      *(v28 + 16) = v33;
      *(v28 + 24) = v34;
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    goto LABEL_10;
  }

  v82 = 2;
  sub_2406DCD4C();
  v48 = v24;
  sub_24075AA54();
  if (!v42)
  {
    v35 = swift_allocObject();
    v82 = 0;
    sub_2406DCB54();
    v51 = v67;
    sub_24075AAF4();
    v52 = v77;
    v82 = 1;
    sub_24075AAF4();
    (*(v65 + 8))(v21, v51);
    (*(v52 + 8))(v48, v14);
    swift_unknownObjectRelease();
    v32 = 0;
    v33 = 0;
    v34 = 1;
    goto LABEL_23;
  }

  (*(v77 + 8))(v24, v14);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v40 = v76;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_2406D6A8C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  V1CommandError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_2406D6AEC(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_24075AE64();
  V1CommandError.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t V1InfoHeader.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t V1InfoHeader.deviceMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

__n128 V1InfoHeader.deviceMetadata.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}
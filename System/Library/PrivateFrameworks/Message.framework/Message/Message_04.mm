uint64_t sub_1B03D3D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D3F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D3FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 176);
    v103 = *(a1 + 160);
    v104 = v3;
    v105[0] = *(a1 + 192);
    *(v105 + 9) = *(a1 + 201);
    v4 = *(a1 + 96);
    v100 = *(a1 + 112);
    v5 = *(a1 + 144);
    v101 = *(a1 + 128);
    v102 = v5;
    v6 = *(a1 + 48);
    v95 = *(a1 + 32);
    v96 = v6;
    v7 = *(a1 + 80);
    v97 = *(a1 + 64);
    v98 = v7;
    v99 = v4;
    v8 = *(a2 + 176);
    *&v106[128] = *(a2 + 160);
    *&v106[144] = v8;
    *&v106[160] = *(a2 + 192);
    *&v106[169] = *(a2 + 201);
    v9 = *(a2 + 112);
    *&v106[64] = *(a2 + 96);
    *&v106[80] = v9;
    v10 = *(a2 + 144);
    *&v106[96] = *(a2 + 128);
    *&v106[112] = v10;
    v11 = *(a2 + 48);
    *v106 = *(a2 + 32);
    *&v106[16] = v11;
    v12 = *(a2 + 80);
    *&v106[32] = *(a2 + 64);
    *&v106[48] = v12;
    if (*v106 != v95)
    {
      return 0;
    }

    v13 = (a1 + 224);
    v14 = (a2 + 224);
    while (1)
    {
      v15 = *(v13 - 40);
      v91 = *(v13 - 56);
      v92 = v15;
      v93 = *(v13 - 24);
      v94 = *(v13 - 8);
      v16 = *(v13 - 104);
      v87 = *(v13 - 120);
      v88 = v16;
      v17 = *(v13 - 72);
      v89 = *(v13 - 88);
      v90 = v17;
      v18 = *(v13 - 168);
      v83 = *(v13 - 184);
      v84 = v18;
      v19 = *(v13 - 136);
      v85 = *(v13 - 152);
      v86 = v19;
      if (sub_1B075FACC(&v83) == 1)
      {
        v55[8] = *&v106[136];
        v55[9] = *&v106[152];
        v55[10] = *&v106[168];
        v56 = v106[184];
        v55[4] = *&v106[72];
        v55[5] = *&v106[88];
        v55[6] = *&v106[104];
        v55[7] = *&v106[120];
        v55[0] = *&v106[8];
        v55[1] = *&v106[24];
        v55[2] = *&v106[40];
        v55[3] = *&v106[56];
        if (sub_1B075FACC(v55) != 1)
        {
          return 0;
        }
      }

      else
      {
        v79 = *&v106[136];
        v80 = *&v106[152];
        v81 = *&v106[168];
        v82 = v106[184];
        v75 = *&v106[72];
        v76 = *&v106[88];
        v77 = *&v106[104];
        v78 = *&v106[120];
        v71 = *&v106[8];
        v72 = *&v106[24];
        v73 = *&v106[40];
        v74 = *&v106[56];
        if (sub_1B075FACC(&v71) == 1)
        {
          return 0;
        }

        v69[8] = v91;
        v69[9] = v92;
        v69[10] = v93;
        v70 = v94;
        v69[4] = v87;
        v69[5] = v88;
        v69[6] = v89;
        v69[7] = v90;
        v69[0] = v83;
        v69[1] = v84;
        v69[2] = v85;
        v69[3] = v86;
        if (sub_1B0717014(v69) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v21 = *(v20 + 80);
          v109[4] = *(v20 + 64);
          v109[5] = v21;
          v109[6] = *(v20 + 96);
          v110 = *(v20 + 112);
          v22 = *(v20 + 16);
          v109[0] = *v20;
          v109[1] = v22;
          v23 = *(v20 + 48);
          v109[2] = *(v20 + 32);
          v109[3] = v23;
          v65 = v79;
          v66 = v80;
          v67 = v81;
          v68 = v82;
          v61 = v75;
          v62 = v76;
          v63 = v77;
          v64 = v78;
          v57 = v71;
          v58 = v72;
          v59 = v73;
          v60 = v74;
          if (sub_1B0717014(&v57) != 1)
          {
            goto LABEL_20;
          }

          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v25 = *(v24 + 80);
          v111[4] = *(v24 + 64);
          v111[5] = v25;
          v111[6] = *(v24 + 96);
          v112 = *(v24 + 112);
          v26 = *(v24 + 16);
          v111[0] = *v24;
          v111[1] = v26;
          v27 = *(v24 + 48);
          v111[2] = *(v24 + 32);
          v111[3] = v27;
          sub_1B0A912A8(&v95, v55);
          sub_1B0A912A8(v106, v55);
          v28 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(v109, v111);
        }

        else
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v30 = v29[9];
          v107[8] = v29[8];
          v107[9] = v30;
          v107[10] = v29[10];
          v31 = v29[5];
          v107[4] = v29[4];
          v107[5] = v31;
          v32 = v29[6];
          v107[7] = v29[7];
          v107[6] = v32;
          v33 = v29[1];
          v107[0] = *v29;
          v107[1] = v33;
          v34 = v29[2];
          v107[3] = v29[3];
          v107[2] = v34;
          v68 = v82;
          v66 = v80;
          v67 = v81;
          v64 = v78;
          v65 = v79;
          v62 = v76;
          v63 = v77;
          v60 = v74;
          v61 = v75;
          v58 = v72;
          v59 = v73;
          v57 = v71;
          if (sub_1B0717014(&v57) == 1)
          {
LABEL_20:
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            return 0;
          }

          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v36 = v35[9];
          v108[8] = v35[8];
          v108[9] = v36;
          v108[10] = v35[10];
          v37 = v35[5];
          v108[4] = v35[4];
          v108[5] = v37;
          v38 = v35[6];
          v108[7] = v35[7];
          v108[6] = v38;
          v39 = v35[1];
          v108[0] = *v35;
          v108[1] = v39;
          v40 = v35[2];
          v108[3] = v35[3];
          v108[2] = v40;
          sub_1B0A912A8(&v95, v55);
          sub_1B0A912A8(v106, v55);
          v28 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v107, v108);
        }

        v41 = v28;
        sub_1B0B66634(v106);
        sub_1B0B66634(&v95);
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      v42 = v13[9];
      v103 = v13[8];
      v104 = v42;
      v105[0] = v13[10];
      *(v105 + 9) = *(v13 + 169);
      v43 = v13[4];
      v100 = v13[5];
      v44 = v13[7];
      v101 = v13[6];
      v102 = v44;
      v45 = v13[1];
      v95 = *v13;
      v96 = v45;
      v46 = v13[2];
      v47 = v13[3];
      v13 += 12;
      v97 = v46;
      v98 = v47;
      v99 = v43;
      v48 = v14[9];
      *&v106[128] = v14[8];
      *&v106[144] = v48;
      *&v106[160] = v14[10];
      *&v106[169] = *(v14 + 169);
      v49 = v14[5];
      *&v106[64] = v14[4];
      *&v106[80] = v49;
      v50 = v14[7];
      *&v106[96] = v14[6];
      *&v106[112] = v50;
      v51 = v14[1];
      *v106 = *v14;
      *&v106[16] = v51;
      v52 = v14[2];
      v53 = v14[3];
      v14 += 12;
      *&v106[32] = v52;
      *&v106[48] = v53;
      if (*v106 != v95)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1B03D44D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B03D4530(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B03DA3A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03D4550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = type metadata accessor for Framer.OutboundMessage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;

  sub_1B03D4ADC(v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B03D5174(a1);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1B0C02B44();
    }

    else
    {
      sub_1B0C05704();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B0C024DC(a1, *v10);
    }

    else
    {
      v16 = v10[1];
      v17 = v10[2];
      *(v2 + 242) = *v10;
      *(v2 + 243) = v16;
      *(v2 + 244) = v17;
    }
  }

  else
  {
    v12 = *v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5658, &qword_1B0ED3900);
    sub_1B04498A0(&v10[*(v13 + 48)], v7, type metadata accessor for OutboundContent);
    v15 = sub_1B0C02EEC(v12, v7, a1, v14);
    if ((v15 & 1) == 0)
    {
      swift_beginAccess();
      v18 = *(v2 + 224);
      v22[0] = *(v2 + 208);
      v22[1] = v18;
      v23 = *(v2 + 240);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = sub_1B03DA44C();
      sub_1B03D61C8(v22);
      if (v19 >= 10000)
      {
        sub_1B03D5174(a1);
      }
    }

    sub_1B03D6B24(v7, type metadata accessor for OutboundContent);
  }

  return sub_1B0E440C8();
}

uint64_t sub_1B03D4ADC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5670, &qword_1B0ED3908);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for OutboundContent(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44018();
  if (!v26)
  {
    v13 = &qword_1EB6E29B0;
    v14 = &qword_1B0E9F008;
    v15 = v25;
LABEL_9:
    sub_1B0398EFC(v15, v13, v14);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v24;
    sub_1B0E44018();
    if (v26)
    {
      v11 = swift_dynamicCast();
      (*(v7 + 56))(v5, v11 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {

        sub_1B04498A0(v5, v9, type metadata accessor for OutboundContent);
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5658, &qword_1B0ED3900) + 48);
        *a2 = v10;
        sub_1B04498A0(v9, a2 + v12, type metadata accessor for OutboundContent);
        type metadata accessor for Framer.OutboundMessage(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
      (*(v7 + 56))(v5, 1, 1, v6);
    }

    v13 = &qword_1EB6E5670;
    v14 = &qword_1B0ED3908;
    v15 = v5;
    goto LABEL_9;
  }

LABEL_10:
  sub_1B0E44018();
  if (v26)
  {
    goto LABEL_11;
  }

  sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  sub_1B0E44018();
  if (v26)
  {
    sub_1B0E44118();
    if (swift_dynamicCast())
    {

      *a2 = v24;
      type metadata accessor for Framer.OutboundMessage(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  sub_1B0E44018();
  if (v26)
  {
    if (swift_dynamicCast())
    {

      v17 = BYTE1(v24);
      v18 = BYTE2(v24);
      *a2 = v24;
      *(a2 + 1) = v17;
      *(a2 + 2) = v18;
      type metadata accessor for Framer.OutboundMessage(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  sub_1B0E44018();
  if (v26)
  {
LABEL_11:

    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
    type metadata accessor for Framer.OutboundMessage(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  sub_1B0E44018();
  if (v26)
  {
    if (swift_dynamicCast())
    {

      type metadata accessor for Framer.OutboundMessage(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v19 = sub_1B0E439A8();
  __swift_project_value_buffer(v19, qword_1EB6DCD58);
  v20 = sub_1B0E43988();
  v21 = sub_1B0E458E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B0389000, v20, v21, "Message has no outbound content.", v22, 2u);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  sub_1B0C05A4C();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_1B03D5174(uint64_t a1)
{
  v4 = _s11CompressionO12OutgoingDataVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (*(*(v1 + 208) + 16))
  {
    sub_1B03D55F0(a1, v6);
    if (v2)
    {
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v8 = sub_1B0E439A8();
      __swift_project_value_buffer(v8, qword_1EB6DCD58);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v9 = v2;
      v10 = sub_1B0E43988();
      v11 = sub_1B0E458E8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v41 = v14;
        *v12 = 68158466;
        *(v12 + 4) = 2;
        *(v12 + 8) = 256;
        *(v12 + 10) = sub_1B04314DC(v14);

        *(v12 + 11) = 2082;
        v16 = sub_1B04314DC(v15);
        v17 = ConnectionID.debugDescription.getter(HIDWORD(v16));
        v19 = sub_1B0399D64(v17, v18, &v41);

        *(v12 + 13) = v19;
        *(v12 + 21) = 2112;
        v20 = sub_1B0E42CC8();
        *(v12 + 23) = v20;
        *v13 = v20;
        _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] Protocol error while sending. %@", v12, 0x1Fu);
        sub_1B0398EFC(v13, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v13, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x1B272C230](v14, -1, -1);
        MEMORY[0x1B272C230](v12, -1, -1);
      }

      else
      {
      }

      return swift_willThrow();
    }

    else
    {
      sub_1B03D6588(v6);
      if (*(*(v1 + 208) + 16))
      {
        v21 = *(v1 + 232);
        v22 = *(v1 + 240);
        v23 = *(v1 + 241);
        v36 = *(v1 + 208);
        v37 = *(v1 + 216);
        v38 = v21;
        v39 = v22;
        v40 = v23;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = sub_1B03DA44C();

        if (qword_1EB6DCD50 != -1)
        {
          swift_once();
        }

        v25 = sub_1B0E439A8();
        __swift_project_value_buffer(v25, qword_1EB6DCD58);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v26 = sub_1B0E43988();
        v27 = sub_1B0E458D8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v41 = v29;
          *v28 = 68158466;
          *(v28 + 4) = 2;
          *(v28 + 8) = 256;
          *(v28 + 10) = sub_1B04314DC(v29);

          *(v28 + 11) = 2082;
          v31 = sub_1B04314DC(v30);
          v32 = ConnectionID.debugDescription.getter(HIDWORD(v31));
          v34 = sub_1B0399D64(v32, v33, &v41);

          *(v28 + 13) = v34;
          *(v28 + 21) = 2048;
          *(v28 + 23) = v24;
          _os_log_impl(&dword_1B0389000, v26, v27, "[%.*hhx-%{public}s] Output buffer still holds %{iec-bytes}ld. Waiting for server response.", v28, 0x1Fu);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          MEMORY[0x1B272C230](v29, -1, -1);
          MEMORY[0x1B272C230](v28, -1, -1);
        }

        else
        {
        }
      }

      return sub_1B03D6B24(v6, _s11CompressionO12OutgoingDataVMa);
    }
  }

  return result;
}

void sub_1B03D55F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v104 = a1;
  v105 = _s11CompressionO12OutgoingDataVMa(0);
  MEMORY[0x1EEE9AC00](v105);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v99 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99 - v14;
  swift_beginAccess();
  v16 = *(v2 + 224);
  v108[0] = *(v2 + 208);
  v108[1] = v16;
  v109 = *(v2 + 240);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B03DA44C();
  sub_1B03D61C8(v108);
  v18 = *(v2 + 248);
  v19 = *(v3 + 256);

  sub_1B03D623C(v18, v19);
  v20 = v106;
  sub_1B03DA8AC(v18, v3, a2);
  sub_1B03D6500(v18, v19);
  if (v20)
  {
    return;
  }

  v102 = v15;
  v103 = v12;
  v106 = v9;
  sub_1B0E443C8();
  sub_1B03D6540(&qword_1EB6DB980, 255, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FF0]);
  sub_1B0E45668();
  sub_1B0E456C8();
  v21 = v105;
  if (v110 == v107)
  {
    return;
  }

  v22 = a2;
  v23 = a2 + v105[7];
  if (v23[8])
  {
    return;
  }

  v24 = *v23;
  v25 = v22 + v105[8];
  v26 = *v25;
  v27 = *(v25 + 8);
  if (*(v22 + v105[5]) != v17)
  {
    v101 = 0;
    if (v27)
    {
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v46 = sub_1B0E439A8();
      __swift_project_value_buffer(v46, qword_1EB6DCD58);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v6 = v106;
      sub_1B03FD270(v22, v106, _s11CompressionO12OutgoingDataVMa);
      v47 = sub_1B0E43988();
      v48 = sub_1B0E458D8();
      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_25;
      }

      v49 = swift_slowAlloc();
      v50 = v24;
      v51 = swift_slowAlloc();
      v110 = v51;
      *v49 = 68158722;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      *(v49 + 10) = sub_1B04314DC(v51);

      *(v49 + 11) = 2082;
      v53 = sub_1B04314DC(v52);
      v54 = ConnectionID.debugDescription.getter(HIDWORD(v53));
      v56 = v21;
      v57 = sub_1B0399D64(v54, v55, &v110);

      *(v49 + 13) = v57;
      *(v49 + 21) = 2048;
      v58 = *&v6[v56[5]];
      sub_1B03D6B24(v6, _s11CompressionO12OutgoingDataVMa);
      *(v49 + 23) = v58;
      *(v49 + 31) = 2082;
      v59 = Tag.debugDescription.getter(v50 & 0xFFFFFFFF000000FFLL);
      v61 = sub_1B0399D64(v59, v60, &v110);

      *(v49 + 33) = v61;
      _os_log_impl(&dword_1B0389000, v47, v48, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tag %{public}s).", v49, 0x29u);
      swift_arrayDestroy();
      v62 = v51;
    }

    else
    {
      v106 = v26;
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v81 = sub_1B0E439A8();
      __swift_project_value_buffer(v81, qword_1EB6DCD58);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03FD270(v22, v6, _s11CompressionO12OutgoingDataVMa);
      v47 = sub_1B0E43988();
      v82 = sub_1B0E458D8();
      if (!os_log_type_enabled(v47, v82))
      {
        goto LABEL_25;
      }

      v49 = swift_slowAlloc();
      v83 = v6;
      v84 = swift_slowAlloc();
      v110 = v84;
      *v49 = 68158978;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      *(v49 + 10) = sub_1B04314DC(v84);

      *(v49 + 11) = 2082;
      v86 = sub_1B04314DC(v85);
      v87 = ConnectionID.debugDescription.getter(HIDWORD(v86));
      v89 = v24;
      v90 = v21;
      v91 = sub_1B0399D64(v87, v88, &v110);

      *(v49 + 13) = v91;
      *(v49 + 21) = 2048;
      v92 = *(v83 + v90[5]);
      sub_1B03D6B24(v83, _s11CompressionO12OutgoingDataVMa);
      *(v49 + 23) = v92;
      *(v49 + 31) = 2082;
      v93 = Tag.debugDescription.getter(v89 & 0xFFFFFFFF000000FFLL);
      v95 = sub_1B0399D64(v93, v94, &v110);

      *(v49 + 33) = v95;
      *(v49 + 41) = 2082;
      v96 = Tag.debugDescription.getter(v106 & 0xFFFFFFFF000000FFLL);
      v98 = sub_1B0399D64(v96, v97, &v110);

      *(v49 + 43) = v98;
      _os_log_impl(&dword_1B0389000, v47, v82, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tags %{public}s - %{public}s).", v49, 0x33u);
      swift_arrayDestroy();
      v62 = v84;
    }

    MEMORY[0x1B272C230](v62, -1, -1);
    v80 = v49;
    goto LABEL_24;
  }

  if ((*(v25 + 8) & 1) == 0)
  {
    v100 = v24;
    v101 = 0;
    v106 = v26;
    if (qword_1EB6DCD50 != -1)
    {
      swift_once();
    }

    v63 = sub_1B0E439A8();
    __swift_project_value_buffer(v63, qword_1EB6DCD58);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v6 = v103;
    sub_1B03FD270(v22, v103, _s11CompressionO12OutgoingDataVMa);
    v47 = sub_1B0E43988();
    v64 = sub_1B0E458D8();
    if (os_log_type_enabled(v47, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v110 = v66;
      *v65 = 68159234;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      *(v65 + 10) = sub_1B04314DC(v66);

      *(v65 + 11) = 2082;
      v68 = sub_1B04314DC(v67);
      v69 = ConnectionID.debugDescription.getter(HIDWORD(v68));
      v71 = v21;
      v72 = sub_1B0399D64(v69, v70, &v110);

      *(v65 + 13) = v72;
      *(v65 + 21) = 2048;
      v73 = *&v6[v71[5]];
      sub_1B03D6B24(v6, _s11CompressionO12OutgoingDataVMa);
      *(v65 + 23) = v73;
      *(v65 + 31) = 2048;
      *(v65 + 33) = v17;
      *(v65 + 41) = 2082;
      v74 = Tag.debugDescription.getter(v100 & 0xFFFFFFFF000000FFLL);
      v76 = sub_1B0399D64(v74, v75, &v110);

      *(v65 + 43) = v76;
      *(v65 + 51) = 2082;
      v77 = Tag.debugDescription.getter(v106 & 0xFFFFFFFF000000FFLL);
      v79 = sub_1B0399D64(v77, v78, &v110);

      *(v65 + 53) = v79;
      _os_log_impl(&dword_1B0389000, v47, v64, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tags %{public}s - %{public}s).", v65, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v66, -1, -1);
      v80 = v65;
LABEL_24:
      MEMORY[0x1B272C230](v80, -1, -1);

      return;
    }

LABEL_25:
    sub_1B03D6B24(v6, _s11CompressionO12OutgoingDataVMa);

    return;
  }

  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v28 = sub_1B0E439A8();
  __swift_project_value_buffer(v28, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v29 = v102;
  sub_1B03FD270(v22, v102, _s11CompressionO12OutgoingDataVMa);
  v30 = sub_1B0E43988();
  v31 = sub_1B0E458D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v100 = v24;
    v33 = v32;
    v34 = swift_slowAlloc();
    v106 = v34;
    v110 = v34;
    *v33 = 68158978;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    *(v33 + 10) = sub_1B04314DC(v34);

    *(v33 + 11) = 2082;
    v36 = sub_1B04314DC(v35);
    v37 = ConnectionID.debugDescription.getter(HIDWORD(v36));
    v39 = v21;
    v40 = sub_1B0399D64(v37, v38, &v110);

    *(v33 + 13) = v40;
    *(v33 + 21) = 2048;
    v41 = *(v29 + v39[5]);
    sub_1B03D6B24(v29, _s11CompressionO12OutgoingDataVMa);
    *(v33 + 23) = v41;
    *(v33 + 31) = 2048;
    *(v33 + 33) = v17;
    *(v33 + 41) = 2082;
    v42 = Tag.debugDescription.getter(v100 & 0xFFFFFFFF000000FFLL);
    v44 = sub_1B0399D64(v42, v43, &v110);

    *(v33 + 43) = v44;
    _os_log_impl(&dword_1B0389000, v30, v31, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tag %{public}s).", v33, 0x33u);
    v45 = v106;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v45, -1, -1);
    MEMORY[0x1B272C230](v33, -1, -1);
  }

  else
  {
    sub_1B03D6B24(v29, _s11CompressionO12OutgoingDataVMa);
  }
}

uint64_t sub_1B03D60F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D6160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03D623C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_1B03D6500(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B03D6540(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B03D6588(uint64_t a1)
{
  v28 = _s11CompressionO12OutgoingDataVMa(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v26[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26[-v4];
  v30 = sub_1B0E43868();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26[-v8];
  v10 = sub_1B0E43828();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0E443C8();
  sub_1B03D6540(&qword_1EB6DB980, 255, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FF0]);
  sub_1B0E45668();
  result = sub_1B0E456C8();
  if (v33[0] == v33[4])
  {
    return result;
  }

  sub_1B0E44098();
  sub_1B0E440F8();
  sub_1B0E44058();

  if (!v33[3])
  {
    sub_1B0398EFC(v33, &qword_1EB6E29B0, &qword_1B0E9F008);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_1B0398EFC(v9, &qword_1EB6E5530, &qword_1B0ED0CF8);
  }

  v15 = swift_dynamicCast();
  (*(v11 + 56))(v9, v15 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1B0398EFC(v9, &qword_1EB6E5530, &qword_1B0ED0CF8);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = tracingSignposter.unsafeMutableAddressor();
  v17 = v30;
  (*(v32 + 16))(v31, v16, v30);
  sub_1B03FD270(a1, v5, _s11CompressionO12OutgoingDataVMa);
  v18 = v29;
  sub_1B03FD270(a1, v29, _s11CompressionO12OutgoingDataVMa);
  v19 = sub_1B0E43858();
  v20 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v21 = swift_slowAlloc();
    v27 = v20;
    v22 = v21;
    *v21 = 134218240;
    v23 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B03D6B24(v5, _s11CompressionO12OutgoingDataVMa);
    *(v22 + 1) = v23;
    *(v22 + 6) = 2048;
    v24 = *&v18[*(v28 + 20)];
    sub_1B03D6B24(v18, _s11CompressionO12OutgoingDataVMa);
    *(v22 + 14) = v24;
    v25 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v19, v27, v25, "Connection.didSendData", "%ld,%ld", v22, 0x16u);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {
    sub_1B03D6B24(v18, _s11CompressionO12OutgoingDataVMa);
    sub_1B03D6B24(v5, _s11CompressionO12OutgoingDataVMa);
  }

  (*(v32 + 8))(v31, v17);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B03D6AC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D6B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03D6B84(uint64_t a1)
{
  sub_1B0E43828();

  return sub_1B03D6BF4();
}

uint64_t sub_1B03D6BF4()
{
  v0 = sub_1B0E43868();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = tracingSignposter.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1B0E43858();
  v6 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v5, v6, v8, "Connection.didFlush", "", v7, 2u);
    MEMORY[0x1B272C230](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t type metadata accessor for MessagesPendingDownloadPerPass(uint64_t a1)
{
  result = qword_1EB6DD368;
  if (!qword_1EB6DD368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03D6DD0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = a3;
  v62 = a4;
  v59 = a2;
  v6 = type metadata accessor for DetermineNewestMessages(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4610, &qword_1B0EC59A0);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - v16;
  v18 = type metadata accessor for NewestMessages(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v23 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v24 = type metadata accessor for MailboxSyncState(0);
  sub_1B03B5C80(v22 + v23 + *(v24 + 64), v17, &qword_1EB6E4068, &unk_1B0EC2D20);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1B0398EFC(v17, &qword_1EB6E4068, &unk_1B0EC2D20);
    v25 = *(v4 + 43);
    v26 = *v4;
    v27 = v4[1];
    v28 = v4[2];
    v29 = *(v4 + 6);
    *v8 = MEMORY[0x1E69E7CD0];
    v8[8] = 0;
    v30 = *(v6 + 32);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(*(v31 - 8) + 56))(&v8[v30], 1, 1, v31);
    v63 = v28;
    v64 = v29;
    *(v8 + 2) = v6;
    sub_1B0451F2C();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    *(v8 + 8) = v26;
    *(v8 + 9) = v27;
    *(v8 + 40) = v25;
    *(v8 + 11) = v28;
    *(v8 + 24) = v29;
    v32 = v58;
    sub_1B0B24104(v8, v58, type metadata accessor for DetermineNewestMessages);
    v33 = v60;
    v34 = (v32 + *(v60 + 36));
    v35 = MEMORY[0x1E69E7CC0];
    *v34 = MEMORY[0x1E69E7CC0];
    v34[1] = v35;
    v65 = v33;
    v36 = sub_1B0B23F6C(&qword_1EB6DD3A0, &qword_1EB6E4610, &qword_1B0EC59A0);
    v66 = v36;
    v37 = __swift_allocate_boxed_opaque_existential_1(&v63);
    sub_1B03B5C80(v32, v37, &qword_1EB6E4610, &qword_1B0EC59A0);
    LOBYTE(v30) = v59(&v63);
    __swift_destroy_boxed_opaque_existential_0(&v63);
    if ((v30 & 1) == 0)
    {
      sub_1B0398EFC(v32, &qword_1EB6E4610, &qword_1B0EC59A0);
      _s29DetermineNewestMessagesResultOMa(0);
      v55 = v62;
      *v62 = 0u;
      *(v55 + 1) = 0u;
      v55[4] = 0;
      return swift_storeEnumTagMultiPayload();
    }

    v38 = v62;
    v62[3] = v33;
    v38[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    sub_1B03C60A4(v32, boxed_opaque_existential_1, &qword_1EB6E4610, &qword_1B0EC59A0);
    goto LABEL_8;
  }

  v40 = v60;
  sub_1B0B24104(v17, v21, type metadata accessor for NewestMessages);
  if (*&v21[*(v18 + 24)] <= 130 && *&v21[*(v18 + 20)] < 131)
  {
LABEL_12:
    sub_1B0B24104(v21, v62, type metadata accessor for NewestMessages);
    _s29DetermineNewestMessagesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  v58 = v21;
  v41 = *(v4 + 43);
  v42 = *v4;
  v43 = v4[1];
  v44 = v4[2];
  v45 = *(v4 + 6);
  *v11 = MEMORY[0x1E69E7CD0];
  v11[8] = 0;
  v46 = *(v6 + 32);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  (*(*(v47 - 8) + 56))(&v11[v46], 1, 1, v47);
  v63 = v44;
  v64 = v45;
  *(v11 + 2) = v6;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v11 + 8) = v42;
  *(v11 + 9) = v43;
  *(v11 + 40) = v41;
  *(v11 + 11) = v44;
  *(v11 + 24) = v45;
  v48 = v57;
  sub_1B0B24104(v11, v57, type metadata accessor for DetermineNewestMessages);
  v49 = (v48 + *(v40 + 36));
  v50 = MEMORY[0x1E69E7CC0];
  *v49 = MEMORY[0x1E69E7CC0];
  v49[1] = v50;
  v65 = v40;
  v51 = sub_1B0B23F6C(&qword_1EB6DD3A0, &qword_1EB6E4610, &qword_1B0EC59A0);
  v66 = v51;
  v52 = __swift_allocate_boxed_opaque_existential_1(&v63);
  sub_1B03B5C80(v48, v52, &qword_1EB6E4610, &qword_1B0EC59A0);
  LOBYTE(v46) = v59(&v63);
  __swift_destroy_boxed_opaque_existential_0(&v63);
  if ((v46 & 1) == 0)
  {
    sub_1B0398EFC(v48, &qword_1EB6E4610, &qword_1B0EC59A0);
    v21 = v58;
    goto LABEL_12;
  }

  v53 = v62;
  v62[3] = v40;
  v53[4] = v51;
  v54 = __swift_allocate_boxed_opaque_existential_1(v53);
  sub_1B03C60A4(v48, v54, &qword_1EB6E4610, &qword_1B0EC59A0);
  sub_1B0B238BC(v58, type metadata accessor for NewestMessages);
LABEL_8:
  _s29DetermineNewestMessagesResultOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B03D74A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B03D00F4();
  result = MEMORY[0x1B2727570](v2, &type metadata for OpaquePersistedMessageIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_1B03B2000(v7, *v5);
      sub_1B0B01F68(v8, v7, v6);
      sub_1B0391D50(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B03D753C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v197[1] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v170 = 0;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v175 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v185 = (a2 + 56);
  v13 = v194;
  v12 = v195;
  v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = 0;
  v181 = v4;
  v174 = v6;
  v172 = v11;
  v173 = v14;
  if (!v10)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_317;
      }

      if (v18 >= v11)
      {
        v194 = v13;
        v195 = v12;
        goto LABEL_313;
      }

      v10 = *(v6 + 8 * v18);
      ++v17;
    }

    while (!v10);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = (*(v14 + 48) + ((v16 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v178 = v16;
    v196 = v16;
    v197[0] = v10;
    sub_1B0E46C28();
    sub_1B03B2000(v22, v21);
    v183 = v22;
    v184 = v21;
    sub_1B0E42F48();
    v13 = __s1;
    v23 = sub_1B0E46CB8();
    v24 = -1 << *(v4 + 32);
    v3 = v23 & ~v24;
    v11 = v3 >> 6;
    v25 = v185;
    v7 = 1;
    v2 = 1 << v3;
    if (((1 << v3) & v185[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_155:
    sub_1B0391D50(v183, v184);
    v12 = v175;
    v6 = v174;
    v13 = v174;
    v14 = v173;
    v16 = v178;
    v11 = v172;
    v7 = -1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v26 = ~v24;
  v27 = v184 >> 62;
  if (v183)
  {
    v28 = 0;
  }

  else
  {
    v28 = v184 == 0xC000000000000000;
  }

  v29 = !v28;
  v180 = v29;
  v169 = HIDWORD(v183);
  v30 = __OFSUB__(HIDWORD(v183), v183);
  v177 = v30;
  v176 = HIDWORD(v183) - v183;
  v182 = BYTE6(v184);
  v171 = v183;
  v168 = v183 >> 32;
  v167 = (v183 >> 32) - v183;
  v179 = v26;
  while (1)
  {
    v31 = (*(v4 + 48) + 16 * v3);
    v6 = *v31;
    v32 = v31[1];
    v33 = v32 >> 62;
    if (v32 >> 62 == 3)
    {
      if (v6)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32 == 0xC000000000000000;
      }

      v36 = !v34 || v184 >> 62 != 3;
      if (((v36 | v180) & 1) == 0)
      {
        v6 = v174;
        v194 = v174;
        v195 = v175;
        v7 = v173;
        v193 = v173;
        v82 = 0;
        v83 = 0xC000000000000000;
LABEL_160:
        v84 = sub_1B0391D50(v82, v83);
        goto LABEL_161;
      }

LABEL_46:
      v37 = 0;
      if (v27 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v33 > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_46;
      }

      v39 = *(v6 + 16);
      v38 = *(v6 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v40)
      {
        goto LABEL_326;
      }

      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v33)
    {
      LODWORD(v37) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_325;
      }

      v37 = v37;
      if (v27 <= 1)
      {
LABEL_43:
        v41 = v182;
        if (v27)
        {
          v41 = v176;
          if (v177)
          {
            goto LABEL_321;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v37 = BYTE6(v32);
      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v27 != 2)
    {
      if (!v37)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    v43 = *(v183 + 16);
    v42 = *(v183 + 24);
    v40 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (v40)
    {
      goto LABEL_320;
    }

LABEL_49:
    if (v37 != v41)
    {
      goto LABEL_23;
    }

    if (v37 < 1)
    {
      goto LABEL_158;
    }

    if (v33 > 1)
    {
      break;
    }

    if (v33)
    {
      v7 = v6;
      if (v6 > v6 >> 32)
      {
        goto LABEL_327;
      }

      sub_1B03B2000(v6, v32);
      v50 = sub_1B0E42A98();
      if (v50)
      {
        v4 = v50;
        v51 = sub_1B0E42AC8();
        if (__OFSUB__(v6, v51))
        {
          goto LABEL_331;
        }

        v166 = v6 - v51 + v4;
      }

      else
      {
        v166 = 0;
      }

      v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1B0E42AB8();
      v4 = v181;
      v7 = 1;
      if (v27 == 2)
      {
        v72 = *(v183 + 24);
        v165 = *(v183 + 16);
        v164 = v72;
        v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1B0E42A98();
        if (v4)
        {
          v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
          v73 = sub_1B0E42AC8();
          v74 = v165;
          if (__OFSUB__(v165, v73))
          {
            goto LABEL_359;
          }

          v4 += v165 - v73;
        }

        else
        {
          v74 = v165;
        }

        v80 = v164 - v74;
        if (__OFSUB__(v164, v74))
        {
          goto LABEL_348;
        }

        v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
        v81 = sub_1B0E42AB8();
        if (v81 >= v80)
        {
          v58 = v80;
        }

        else
        {
          v58 = v81;
        }

        v59 = v166;
        if (!v166)
        {
          goto LABEL_376;
        }

        v7 = 1;
        if (!v4)
        {
          goto LABEL_375;
        }
      }

      else
      {
        if (v27 != 1)
        {
          v71 = v166;
          LODWORD(__s1[0]) = v183;
          BYTE4(__s1[0]) = v169;
          *(__s1 + 5) = *(&v183 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v183);
          LODWORD(__s1[1]) = v184;
          WORD2(__s1[1]) = WORD2(v184);
          if (!v166)
          {
            goto LABEL_383;
          }

          goto LABEL_123;
        }

        if (v168 < v171)
        {
          goto LABEL_347;
        }

        v4 = sub_1B0E42A98();
        if (v4)
        {
          v60 = sub_1B0E42AC8();
          if (__OFSUB__(v171, v60))
          {
            goto LABEL_361;
          }

          v4 += v171 - v60;
        }

        v7 = 1;
        v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
        v61 = sub_1B0E42AB8();
        v58 = v167;
        if (v61 < v167)
        {
          v58 = v61;
        }

        v59 = v166;
        if (!v166)
        {
          goto LABEL_387;
        }

        if (!v4)
        {
          goto LABEL_386;
        }
      }

      goto LABEL_150;
    }

    __s1[0] = v6;
    LOWORD(__s1[1]) = v32;
    BYTE2(__s1[1]) = BYTE2(v32);
    BYTE3(__s1[1]) = BYTE3(v32);
    BYTE4(__s1[1]) = BYTE4(v32);
    BYTE5(__s1[1]) = BYTE5(v32);
    if (!v27)
    {
      goto LABEL_76;
    }

    if (v27 != 1)
    {
      v62 = *(v183 + 24);
      v166 = *(v183 + 16);
      v165 = v62;
      sub_1B03B2000(v6, v32);
      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1B0E42A98();
      if (v4)
      {
        v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
        v63 = sub_1B0E42AC8();
        v64 = v166;
        if (__OFSUB__(v166, v63))
        {
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_357:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_358:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_359:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_360:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_361:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_362:
          __break(1u);
        }

        v4 += v166 - v63;
      }

      else
      {
        v64 = v166;
      }

      v75 = v165 - v64;
      if (__OFSUB__(v165, v64))
      {
        goto LABEL_343;
      }

      v76 = sub_1B0E42AB8();
      if (!v4)
      {
        goto LABEL_379;
      }

LABEL_131:
      if (v76 >= v75)
      {
        v77 = v75;
      }

      else
      {
        v77 = v76;
      }

      v13 = memcmp(__s1, v4, v77);
      sub_1B0391D50(v6, v32);
      v4 = v181;
      v25 = v185;
      v7 = 1;
LABEL_153:
      v26 = v179;
      if (!v13)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v168 < v171)
    {
      goto LABEL_340;
    }

    sub_1B03B2000(v6, v32);
    v44 = sub_1B0E42A98();
    if (!v44)
    {
      goto LABEL_377;
    }

    v4 = v44;
    v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
    v45 = sub_1B0E42AC8();
    if (__OFSUB__(v171, v45))
    {
      goto LABEL_345;
    }

    v46 = (v171 - v45 + v4);
    v47 = sub_1B0E42AB8();
    if (!v46)
    {
      goto LABEL_378;
    }

LABEL_109:
    if (v47 >= v167)
    {
      v67 = v167;
    }

    else
    {
      v67 = v47;
    }

    v13 = memcmp(__s1, v46, v67);
    sub_1B0391D50(v6, v32);
    v4 = v181;
    v25 = v185;
    v26 = v179;
    v7 = 1;
    if (!v13)
    {
LABEL_158:
      v6 = v174;
      v194 = v174;
      v195 = v175;
      v7 = v173;
      v193 = v173;
      v82 = v183;
      v83 = v184;
      goto LABEL_160;
    }

LABEL_23:
    v3 = (v3 + 1) & v26;
    v11 = v3 >> 6;
    v2 = 1 << v3;
    if ((v25[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_155;
    }
  }

  if (v33 != 2)
  {
    memset(__s1, 0, 14);
    if (!v27)
    {
LABEL_76:
      __s2 = v183;
      v187 = v169;
      v188 = *(&v183 + 5);
      v189 = HIBYTE(v183);
      v190 = v184;
      v191 = WORD2(v184);
      v55 = memcmp(__s1, &__s2, v182);
      v26 = v179;
      v25 = v185;
      if (!v55)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v27 == 2)
    {
      v52 = *(v183 + 24);
      v166 = *(v183 + 16);
      v165 = v52;
      sub_1B03B2000(v6, v32);
      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1B0E42A98();
      if (v4)
      {
        v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
        v53 = sub_1B0E42AC8();
        v54 = v166;
        if (__OFSUB__(v166, v53))
        {
          goto LABEL_357;
        }

        v4 += v166 - v53;
      }

      else
      {
        v54 = v166;
      }

      v75 = v165 - v54;
      if (__OFSUB__(v165, v54))
      {
        goto LABEL_342;
      }

      v76 = sub_1B0E42AB8();
      if (!v4)
      {
        goto LABEL_381;
      }

      goto LABEL_131;
    }

    if (v168 < v171)
    {
      goto LABEL_339;
    }

    sub_1B03B2000(v6, v32);
    v65 = sub_1B0E42A98();
    if (!v65)
    {
      goto LABEL_380;
    }

    v4 = v65;
    v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
    v66 = sub_1B0E42AC8();
    if (__OFSUB__(v171, v66))
    {
      goto LABEL_344;
    }

    v46 = (v171 - v66 + v4);
    v47 = sub_1B0E42AB8();
    if (!v46)
    {
      goto LABEL_382;
    }

    goto LABEL_109;
  }

  v7 = *(v6 + 16);
  sub_1B03B2000(v6, v32);
  v48 = sub_1B0E42A98();
  if (v48)
  {
    v4 = v48;
    v49 = sub_1B0E42AC8();
    if (__OFSUB__(v7, v49))
    {
      goto LABEL_330;
    }

    v166 = v7 - v49 + v4;
  }

  else
  {
    v166 = 0;
  }

  v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1B0E42AB8();
  v4 = v181;
  v7 = 1;
  if (v27 != 2)
  {
    if (v27 == 1)
    {
      if (v168 < v171)
      {
        goto LABEL_341;
      }

      v4 = sub_1B0E42A98();
      if (v4)
      {
        v56 = sub_1B0E42AC8();
        if (__OFSUB__(v171, v56))
        {
          goto LABEL_360;
        }

        v4 += v171 - v56;
      }

      v7 = 1;
      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v57 = sub_1B0E42AB8();
      v58 = v167;
      if (v57 < v167)
      {
        v58 = v57;
      }

      v59 = v166;
      if (!v166)
      {
        goto LABEL_389;
      }

      if (!v4)
      {
        goto LABEL_388;
      }

      goto LABEL_150;
    }

    v71 = v166;
    LODWORD(__s1[0]) = v183;
    BYTE4(__s1[0]) = v169;
    *(__s1 + 5) = *(&v183 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v183);
    LODWORD(__s1[1]) = v184;
    WORD2(__s1[1]) = WORD2(v184);
    if (!v166)
    {
      goto LABEL_374;
    }

LABEL_123:
    v13 = memcmp(v71, __s1, v182);
    sub_1B0391D50(v6, v32);
LABEL_152:
    v25 = v185;
    goto LABEL_153;
  }

  v68 = *(v183 + 24);
  v165 = *(v183 + 16);
  v164 = v68;
  v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = sub_1B0E42A98();
  if (v4)
  {
    v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
    v69 = sub_1B0E42AC8();
    v70 = v165;
    if (__OFSUB__(v165, v69))
    {
      goto LABEL_358;
    }

    v4 += v165 - v69;
  }

  else
  {
    v70 = v165;
  }

  v78 = v164 - v70;
  if (__OFSUB__(v164, v70))
  {
    goto LABEL_346;
  }

  v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
  v79 = sub_1B0E42AB8();
  if (v79 >= v78)
  {
    v58 = v78;
  }

  else
  {
    v58 = v79;
  }

  v59 = v166;
  if (!v166)
  {
    goto LABEL_385;
  }

  v7 = 1;
  if (!v4)
  {
    goto LABEL_384;
  }

LABEL_150:
  if (v59 != v4)
  {
    v13 = memcmp(v59, v4, v58);
    sub_1B0391D50(v6, v32);
    v4 = v181;
    goto LABEL_152;
  }

  v194 = v174;
  v195 = v175;
  v7 = v173;
  v193 = v173;
  sub_1B0391D50(v183, v184);
  v156 = v6;
  v6 = v174;
  v84 = sub_1B0391D50(v156, v32);
  v4 = v181;
LABEL_161:
  v85 = *(v4 + 32);
  v162 = ((1 << v85) + 63) >> 6;
  v15 = 8 * v162;
  if ((v85 & 0x3Fu) > 0xD)
  {
    goto LABEL_332;
  }

LABEL_162:
  v163 = &v159;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v159 - ((v86 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v87, v185, v86);
  v88 = *&v87[8 * v11] & ~v2;
  v165 = v87;
  *&v87[8 * v11] = v88;
  v89 = *(v4 + 16) - 1;
  v12 = v178;
  v90 = v172;
  while (2)
  {
    v164 = v89;
    while (1)
    {
LABEL_165:
      if (v10)
      {
        goto LABEL_171;
      }

      v91 = v12;
      do
      {
        v92 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          __break(1u);
LABEL_317:
          v194 = v13;
          v195 = v12;
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_321:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_326:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_327:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_331:
          v194 = v174;
          v195 = v175;
          __break(1u);
LABEL_332:
          v157 = v15;

          v13 = v157;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_354;
          }

          goto LABEL_162;
        }

        if (v92 >= v90)
        {
          v4 = sub_1B0BAA704(v165, v162, v164, v4);
          goto LABEL_312;
        }

        v10 = *(v6 + 8 * v92);
        ++v91;
      }

      while (!v10);
      v12 = v92;
LABEL_171:
      v93 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v94 = (*(v7 + 48) + ((v12 << 10) | (16 * v93)));
      v96 = *v94;
      v95 = v94[1];
      v193 = v7;
      v194 = v6;
      v97 = v96;
      v6 = v95;
      v195 = v175;
      v196 = v12;
      v178 = v12;
      v197[0] = v10;
      sub_1B0E46C28();
      sub_1B03B2000(v97, v6);
      sub_1B0E42F48();
      v13 = __s1;
      v98 = sub_1B0E46CB8();
      v99 = -1 << *(v4 + 32);
      v27 = v98 & ~v99;
      v11 = v27 >> 6;
      v100 = v185;
      v101 = v185[v27 >> 6];
      v2 = 1 << v27;
      v184 = v97;
      if (((1 << v27) & v101) != 0)
      {
        break;
      }

LABEL_164:
      sub_1B0391D50(v184, v6);
      v6 = v174;
      v7 = v173;
      v12 = v178;
      v90 = v172;
    }

    v102 = ~v99;
    v28 = v97 == 0;
    v103 = v97;
    v7 = v6 >> 62;
    v105 = !v28 || v6 != 0xC000000000000000;
    v180 = v105;
    v169 = HIDWORD(v103);
    v106 = __OFSUB__(HIDWORD(v103), v103);
    v177 = v106;
    v176 = HIDWORD(v103) - v103;
    v183 = BYTE6(v6);
    v171 = v103;
    v168 = v103 >> 32;
    v166 = (v103 >> 32) - v103;
    v182 = v6;
    v179 = v102;
    while (2)
    {
      v107 = (*(v4 + 48) + 16 * v27);
      v108 = *v107;
      v3 = v107[1];
      v109 = v3 >> 62;
      if (v3 >> 62 != 3)
      {
        if (v109 <= 1)
        {
          if (v109)
          {
            LODWORD(v113) = HIDWORD(v108) - v108;
            if (__OFSUB__(HIDWORD(v108), v108))
            {
              goto LABEL_323;
            }

            v113 = v113;
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v113 = BYTE6(v3);
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_203;
        }

        if (v109 != 2)
        {
          goto LABEL_206;
        }

        v115 = *(v108 + 16);
        v114 = *(v108 + 24);
        v40 = __OFSUB__(v114, v115);
        v113 = v114 - v115;
        if (v40)
        {
          goto LABEL_322;
        }

        if (v7 <= 1)
        {
          goto LABEL_203;
        }

LABEL_207:
        if (v7 == 2)
        {
          v118 = *(v184 + 16);
          v117 = *(v184 + 24);
          v40 = __OFSUB__(v117, v118);
          v116 = v117 - v118;
          if (v40)
          {
            goto LABEL_318;
          }

          goto LABEL_209;
        }

        if (!v113)
        {
          goto LABEL_302;
        }

        goto LABEL_183;
      }

      if (v108)
      {
        v110 = 0;
      }

      else
      {
        v110 = v3 == 0xC000000000000000;
      }

      v112 = !v110 || v7 < 3;
      if (((v112 | v180) & 1) == 0)
      {
        v152 = 0;
        v153 = 0xC000000000000000;
        goto LABEL_303;
      }

LABEL_206:
      v113 = 0;
      if (v7 > 1)
      {
        goto LABEL_207;
      }

LABEL_203:
      v116 = v183;
      if (v7)
      {
        v116 = v176;
        if (v177)
        {
          goto LABEL_319;
        }
      }

LABEL_209:
      if (v113 != v116)
      {
        goto LABEL_183;
      }

      if (v113 < 1)
      {
        goto LABEL_302;
      }

      if (v109 <= 1)
      {
        if (!v109)
        {
          __s1[0] = v108;
          LOWORD(__s1[1]) = v3;
          BYTE2(__s1[1]) = BYTE2(v3);
          BYTE3(__s1[1]) = BYTE3(v3);
          BYTE4(__s1[1]) = BYTE4(v3);
          BYTE5(__s1[1]) = BYTE5(v3);
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = v171;
              v119 = v168;
              if (v168 < v171)
              {
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
LABEL_338:
                __break(1u);
LABEL_339:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_340:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_341:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_342:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_343:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_344:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_345:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_346:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_347:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_348:
                v194 = v174;
                v195 = v175;
                __break(1u);
LABEL_349:
                __break(1u);
LABEL_350:
                __break(1u);
LABEL_351:
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                v27 = swift_slowAlloc();
                memcpy(v27, v185, v13);
                v6 = v170;
                v158 = sub_1B0BA9598(v27, v162, v4, v3, &v193);

                if (v6)
                {
                  goto LABEL_391;
                }

                MEMORY[0x1B272C230](v27, -1, -1);
                v7 = v193;
                v175 = v195;
                v4 = v158;
LABEL_312:
                v14 = v7;
LABEL_313:
                sub_1B03D91F8(v14);
                return v4;
              }
            }

            else
            {
              v13 = *(v184 + 16);
              v119 = *(v184 + 24);
            }

            sub_1B03B2000(v108, v3);
            v135 = v119;
            v6 = v170;
            v136 = sub_1B0BAD28C(v13, v135, v182 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v137 = v197;
            v170 = v6;
            if (v6)
            {
              goto LABEL_390;
            }

            v13 = v136;
            sub_1B0391D50(v108, v3);
            v100 = v185;
            v6 = v182;
            v102 = v179;
            if (v13)
            {
              goto LABEL_302;
            }

LABEL_183:
            v27 = (v27 + 1) & v102;
            v11 = v27 >> 6;
            v2 = 1 << v27;
            if ((v100[v27 >> 6] & (1 << v27)) == 0)
            {
              goto LABEL_164;
            }

            continue;
          }

LABEL_232:
          __s2 = v184;
          v187 = v169;
          v188 = *(&v184 + 5);
          v189 = HIBYTE(v184);
          LOWORD(v190) = v6;
          BYTE2(v190) = BYTE2(v6);
          HIBYTE(v190) = BYTE3(v6);
          LOBYTE(v191) = BYTE4(v6);
          HIBYTE(v191) = BYTE5(v6);
          v128 = memcmp(__s1, &__s2, v183);
          v102 = v179;
          v100 = v185;
          if (!v128)
          {
            goto LABEL_302;
          }

          goto LABEL_183;
        }

        v4 = v108;
        if (v108 > v108 >> 32)
        {
          goto LABEL_324;
        }

        sub_1B03B2000(v108, v3);
        v122 = sub_1B0E42A98();
        if (v122)
        {
          v6 = v122;
          v123 = sub_1B0E42AC8();
          if (__OFSUB__(v108, v123))
          {
            goto LABEL_329;
          }

          v167 = v108 - v123 + v6;
        }

        else
        {
          v167 = 0;
        }

        v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        sub_1B0E42AB8();
        v4 = v181;
        v6 = v182;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            if (v168 < v171)
            {
              goto LABEL_337;
            }

            v4 = sub_1B0E42A98();
            if (v4)
            {
              v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
              v133 = sub_1B0E42AC8();
              if (__OFSUB__(v171, v133))
              {
                goto LABEL_353;
              }

              v4 += v171 - v133;
            }

            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v134 = sub_1B0E42AB8();
            v131 = v166;
            if (v134 < v166)
            {
              v131 = v134;
            }

            v132 = v167;
            if (!v167)
            {
              goto LABEL_368;
            }

            if (!v4)
            {
              goto LABEL_367;
            }

LABEL_257:
            if (v132 == v4)
            {
              goto LABEL_306;
            }

LABEL_299:
            v13 = memcmp(v132, v4, v131);
            sub_1B0391D50(v108, v3);
            v4 = v181;
LABEL_300:
            v100 = v185;
LABEL_301:
            v102 = v179;
            if (!v13)
            {
              goto LABEL_302;
            }

            goto LABEL_183;
          }

          v146 = v167;
          LODWORD(__s1[0]) = v184;
          BYTE4(__s1[0]) = v169;
          *(__s1 + 5) = *(&v184 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v184);
          LODWORD(__s1[1]) = v182;
          WORD2(__s1[1]) = WORD2(v182);
          if (!v167)
          {
            goto LABEL_364;
          }

LABEL_282:
          v13 = memcmp(v146, __s1, v183);
          sub_1B0391D50(v108, v3);
          goto LABEL_300;
        }

        v147 = *(v184 + 24);
        v161 = *(v184 + 16);
        v160 = v147;
        v13 = v182 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1B0E42A98();
        if (v4)
        {
          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v148 = sub_1B0E42AC8();
          v149 = v161;
          if (__OFSUB__(v161, v148))
          {
            goto LABEL_351;
          }

          v4 += v161 - v148;
        }

        else
        {
          v149 = v161;
        }

        v6 = v160 - v149;
        if (__OFSUB__(v160, v149))
        {
          goto LABEL_338;
        }

        v13 = v182 & 0x3FFFFFFFFFFFFFFFLL;
        v151 = sub_1B0E42AB8();
        if (v151 >= v6)
        {
          v131 = v6;
        }

        else
        {
          v131 = v151;
        }

        v132 = v167;
        if (!v167)
        {
          goto LABEL_372;
        }

        if (!v4)
        {
          goto LABEL_370;
        }

        goto LABEL_298;
      }

      break;
    }

    if (v109 == 2)
    {
      v4 = *(v108 + 16);
      sub_1B03B2000(v108, v3);
      v120 = sub_1B0E42A98();
      if (v120)
      {
        v6 = v120;
        v121 = sub_1B0E42AC8();
        if (__OFSUB__(v4, v121))
        {
          goto LABEL_328;
        }

        v167 = v4 - v121 + v6;
      }

      else
      {
        v167 = 0;
      }

      v6 = v182;
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1B0E42AB8();
      v4 = v181;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          if (v168 < v171)
          {
            goto LABEL_335;
          }

          v4 = sub_1B0E42A98();
          if (v4)
          {
            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v129 = sub_1B0E42AC8();
            if (__OFSUB__(v171, v129))
            {
              goto LABEL_352;
            }

            v4 += v171 - v129;
          }

          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v130 = sub_1B0E42AB8();
          v131 = v166;
          if (v130 < v166)
          {
            v131 = v130;
          }

          v132 = v167;
          if (!v167)
          {
            goto LABEL_373;
          }

          if (!v4)
          {
            goto LABEL_371;
          }

          goto LABEL_257;
        }

        v146 = v167;
        LODWORD(__s1[0]) = v184;
        BYTE4(__s1[0]) = v169;
        *(__s1 + 5) = *(&v184 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v184);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v167)
        {
          goto LABEL_365;
        }

        goto LABEL_282;
      }

      v143 = *(v184 + 24);
      v161 = *(v184 + 16);
      v160 = v143;
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1B0E42A98();
      if (v4)
      {
        v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v144 = sub_1B0E42AC8();
        v145 = v161;
        if (__OFSUB__(v161, v144))
        {
          goto LABEL_349;
        }

        v4 += v161 - v144;
      }

      else
      {
        v145 = v161;
      }

      v6 = v160 - v145;
      if (__OFSUB__(v160, v145))
      {
        goto LABEL_336;
      }

      v13 = v182 & 0x3FFFFFFFFFFFFFFFLL;
      v150 = sub_1B0E42AB8();
      if (v150 >= v6)
      {
        v131 = v6;
      }

      else
      {
        v131 = v150;
      }

      v132 = v167;
      if (!v167)
      {
        goto LABEL_369;
      }

      if (!v4)
      {
        goto LABEL_366;
      }

LABEL_298:
      v6 = v182;
      if (v132 != v4)
      {
        goto LABEL_299;
      }

LABEL_306:
      sub_1B0391D50(v184, v6);
      sub_1B0391D50(v108, v3);
      v4 = v181;
LABEL_304:
      v12 = v178;
      v90 = v172;
      v154 = v165[v11];
      v165[v11] = v154 & ~v2;
      v6 = v174;
      v7 = v173;
      if ((v154 & v2) != 0)
      {
        v89 = v164 - 1;
        if (__OFSUB__(v164, 1))
        {
          goto LABEL_362;
        }

        if (v164 == 1)
        {

          v4 = MEMORY[0x1E69E7CD0];
          goto LABEL_312;
        }

        continue;
      }

      goto LABEL_165;
    }

    break;
  }

  memset(__s1, 0, 14);
  if (!v7)
  {
    goto LABEL_232;
  }

  if (v7 == 2)
  {
    v124 = *(v184 + 16);
    v125 = *(v184 + 24);
    sub_1B03B2000(v108, v3);
    v126 = v125;
    v127 = v170;
    v13 = sub_1B0BAD28C(v124, v126, v182 & 0x3FFFFFFFFFFFFFFFLL, __s1);
    v170 = v127;
    v6 = v182;
    sub_1B0391D50(v108, v3);
    v102 = v179;
    v100 = v185;
    if (v13)
    {
      goto LABEL_302;
    }

    goto LABEL_183;
  }

  if (v168 < v171)
  {
    goto LABEL_334;
  }

  sub_1B03B2000(v108, v3);
  v138 = sub_1B0E42A98();
  v139 = v6;
  v6 = v138;
  if (v138)
  {
    v13 = v139 & 0x3FFFFFFFFFFFFFFFLL;
    v140 = sub_1B0E42AC8();
    if (__OFSUB__(v171, v140))
    {
      goto LABEL_350;
    }

    v6 += v171 - v140;
  }

  v13 = v182 & 0x3FFFFFFFFFFFFFFFLL;
  v141 = sub_1B0E42AB8();
  if (v141 >= v166)
  {
    v142 = v166;
  }

  else
  {
    v142 = v141;
  }

  if (v6)
  {
    if (__s1 != v6)
    {
      v13 = memcmp(__s1, v6, v142);
      sub_1B0391D50(v108, v3);
      v100 = v185;
      v6 = v182;
      goto LABEL_301;
    }

    sub_1B0391D50(v108, v3);
    v6 = v182;
LABEL_302:
    v152 = v184;
    v153 = v6;
LABEL_303:
    sub_1B0391D50(v152, v153);
    goto LABEL_304;
  }

  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_375:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_376:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_377:
  v194 = v174;
  v195 = v175;
  sub_1B0E42AB8();
  __break(1u);
LABEL_378:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_379:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_380:
  v194 = v174;
  v195 = v175;
  sub_1B0E42AB8();
  __break(1u);
LABEL_381:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_382:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_383:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_384:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_385:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_386:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_387:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_388:
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_389:
  v137 = v175;
  v194 = v174;
  v195 = v175;
  __break(1u);
LABEL_390:

  __break(1u);
LABEL_391:

  result = MEMORY[0x1B272C230](v27, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B03D9200(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = result;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(result + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 56;
  v12 = a3 + 56;
LABEL_5:
  while (v9)
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

LABEL_7:
    v13 = *(*(v21 + 48) + (__clz(__rbit64(v9)) | (v5 << 6)));
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v13);
    result = sub_1B0E46CB8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v9 &= v9 - 1;
    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a3 + 16))
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v13);
      result = sub_1B0E46CB8();
      v18 = -1 << *(a3 + 32);
      v19 = result & ~v18;
      if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(a3 + 48) + v19) != v13)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }
  }

  do
  {
    v17 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v10)
    {
      return 1;
    }

    v9 = *(v6 + 8 * v17);
    ++v5;
  }

  while (!v9);
  v5 = v17;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1B03D93EC(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v30[-v7];
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  MEMORY[0x1EEE9AC00](PendingDownload);
  v33 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DownloadTask(0);
  v39 = *(a1 + 24);
  v32 = a1;
  v38 = *(a1 + 32);
  v31 = a2;
  v37 = a2 & 1;
  v10 = a3 + 56;
  v36 = sub_1B03D06A4();
  for (i = 0; i != 3; ++i)
  {
    v12 = byte_1F2710ED0[i + 32];
    v43 = v39;
    v44 = v38;
    v45 = v37;
    v46 = v12;
    *&v47[0] = v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    if (*(a3 + 16))
    {
      sub_1B0E46C28();
      sub_1B0E461D8();
      v13 = sub_1B0E46CB8();
      v14 = -1 << *(a3 + 32);
      v15 = v13 & ~v14;
      if ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        do
        {
          sub_1B03D0A20(*(a3 + 48) + 48 * v15, &v43);
          if (v43 == v9)
          {
            v17 = MEMORY[0x1B27282E0](&v44, v47 + 8);
            sub_1B03B04BC(&v43);
            if (v17)
            {
              sub_1B03B04BC(v47);
              v18 = 1;
              return v18 & 1;
            }
          }

          else
          {
            sub_1B03B04BC(&v43);
          }

          v15 = (v15 + 1) & v16;
        }

        while (((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
      }
    }

    sub_1B03B04BC(v47);
  }

  sub_1B03D06F8();
  v19 = v35;
  sub_1B0E46EE8();
  v20 = v33;
  *v33 = 0;
  *(v20 + 56) = 0;
  v21 = v32;
  v22 = v32[1];
  *(v20 + 8) = *v32;
  *(v20 + 24) = v22;
  *(v20 + 40) = *(v21 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43D0, &qword_1B0EC5138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  if (v31)
  {
    v24 = 10;
  }

  else
  {
    v24 = 9;
  }

  v47[0] = *v21;
  *(inited + 32) = v24;
  v25 = sub_1B03D0770(inited);
  swift_setDeallocating();
  *(v20 + 48) = v25;
  LOBYTE(v25) = v37;
  *(v20 + 57) = v37;
  v26 = PendingDownload;
  sub_1B03D08AC(v19, v20 + *(PendingDownload + 36));
  v27 = (v20 + *(v26 + 44));
  v40 = v39;
  v41 = v38;
  v42 = v25;
  *v27 = v26;
  swift_bridgeObjectRetain_n();
  sub_1B03D091C(v47, &v43);
  sub_1B03D0964();
  sub_1B0E461E8();
  sub_1B03D09B8(v19);
  v28 = v20 + *(v26 + 40);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_1B03D0A20(v27, &v43);
  sub_1B03D0A7C(v20);
  v18 = sub_1B03D0AD8(&v43, a3);
  sub_1B03B04BC(&v43);
  return v18 & 1;
}

uint64_t type metadata accessor for FindPendingDownload(uint64_t a1)
{
  result = qword_1EB6DD980;
  if (!qword_1EB6DD980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B03D985C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4638, &qword_1B0EC59D0);
    v3 = sub_1B0E466A8();
    for (i = (a1 + 57); ; i += 32)
    {
      v5 = *(i - 25);
      v6 = *(i - 17);
      v7 = *(i - 9);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1B03FE284(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v12 = v3[7] + 24 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 17) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
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

BOOL sub_1B03D9964(unsigned int a1, uint64_t a2)
{
  v43 = a1;
  v3 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for NewestMessages(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v23 = a2;
  sub_1B03D9D54(a2, v15);
  v24 = *(v17 + 48);
  v25 = v24(v15, 1, v16);
  v41 = v16;
  v42 = v24;
  if (v25 == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v39 = v19;
    v26 = v9;
    v27 = *(v16 + 20);
    v28 = *(v16 + 24);
    sub_1B074BA2C(v26, v22);
    *&v22[v27] = 0;
    *&v22[v28] = 0;
    v19 = v39;
    if (v24(v15, 1, v16) != 1)
    {
      sub_1B0B42E08(v15);
    }
  }

  else
  {
    sub_1B03D9DC4(v15, v22);
  }

  v29 = v44;
  sub_1B0B42D48(v45, v44);
  v30 = *(*v29 + 16);
  sub_1B03D0D84(v29, type metadata accessor for MessagesPendingDownload);
  sub_1B03D0D84(v22, type metadata accessor for NewestMessages);
  if (v30)
  {
    return 1;
  }

  else
  {
    sub_1B03D9D54(v23, v12);
    v33 = v41;
    v32 = v42;
    if (v42(v12, 1, v41) == 1)
    {
      sub_1B03D06F8();
      v34 = v40;
      sub_1B0E46EE8();
      v35 = *(v33 + 20);
      v36 = *(v33 + 24);
      sub_1B074BA2C(v34, v19);
      *&v19[v35] = 0;
      *&v19[v36] = 0;
      if (v32(v12, 1, v33) != 1)
      {
        sub_1B0B42E08(v12);
      }
    }

    else
    {
      sub_1B03D9DC4(v12, v19);
    }

    v31 = sub_1B03D9E28(1, v43, v19);
    sub_1B03D0D84(v19, type metadata accessor for NewestMessages);
  }

  return v31;
}

uint64_t sub_1B03D9D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B03D9DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewestMessages(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1B03D9E28(char a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v3 += *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
LABEL_5:
    sub_1B0B42D48(v3, v9);
    v10 = *(*v9 + 16) != 0;
    sub_1B03D0D84(v9, type metadata accessor for MessagesPendingDownload);
    return v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v12 = sub_1B0E46E98();
  v13 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  v14 = *(v3 + *(v13 + 20));
  if (v12)
  {
    return *(v14 + 16) != 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13);
    *&v16[-16] = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D0BFC(sub_1B0B42DAC, &v16[-32], v14);
    v10 = v15;
  }

  return v10;
}

char *sub_1B03D9FC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4328, &unk_1B0EC5070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t ConnectionUsage.usage(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a1;
    v4 = a2;
    LOBYTE(a1) = sub_1B0BE4B80(a1, a3);
    a2 = v4;
    v5 = a1;
    LODWORD(a1) = v3;
    if (v5)
    {
      return 1;
    }
  }

  if (!MailboxesSelectionUsage.subscript.getter(a1, a2))
  {
    return 0;
  }

  v6 = v7;

  return v6;
}

char *sub_1B03DA17C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_1B03DA298(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

uint64_t type metadata accessor for Framer.OutboundMessage(uint64_t a1)
{
  result = qword_1EB6DCD88;
  if (!qword_1EB6DCD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s11CompressionO12OutgoingDataVMa(uint64_t a1)
{
  result = qword_1EB6DCD98;
  if (!qword_1EB6DCD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03DA44C()
{
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  MEMORY[0x1EEE9AC00](done - 8);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s19CommandOutputBufferV9HandshakeVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s19CommandOutputBufferV12ContinuationVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV7CommandVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19CommandOutputBufferV7ElementOMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = *v0 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    while (1)
    {
      sub_1B03D60F8(v19, v16, _s19CommandOutputBufferV7ElementOMa);
      sub_1B03D60F8(v16, v12, _s19CommandOutputBufferV7ElementOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v25 = v32;
          sub_1B03D6160(v12, v32, _s19CommandOutputBufferV8IdleDoneVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v26 = _s19CommandOutputBufferV8IdleDoneVMa;
        }

        else
        {
          v25 = v31;
          sub_1B03D6160(v12, v31, _s19CommandOutputBufferV9HandshakeVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v26 = _s19CommandOutputBufferV9HandshakeVMa;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1B03D6160(v12, v9, _s19CommandOutputBufferV7CommandVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v23 = _s19CommandOutputBufferV7CommandVMa;
          v24 = v9;
          goto LABEL_11;
        }

        v25 = v30;
        sub_1B03D6160(v12, v30, _s19CommandOutputBufferV12ContinuationVMa);
        v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v26 = _s19CommandOutputBufferV12ContinuationVMa;
      }

      v23 = v26;
      v24 = v25;
LABEL_11:
      sub_1B03DA84C(v24, v23);
      result = sub_1B03DA84C(v16, _s19CommandOutputBufferV7ElementOMa);
      v28 = __OFADD__(v18, v22);
      v18 += v22;
      if (v28)
      {
        __break(1u);
        return result;
      }

      v19 += v20;
      if (!--v17)
      {
        return v18;
      }
    }
  }

  return 0;
}

uint64_t sub_1B03DA84C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03DA8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v134 = a3;
  v138 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.Result(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v136 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v140 = &v131 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56B0, &qword_1B0ED3A10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v156 = &v131 - v11;
  v152 = _s12OutputHelperV5ChunkVMa(0);
  v161 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v135 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v131 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v131 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56B8, &qword_1B0ED3A18);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v150 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v131 - v20;
  v163 = _s19CommandOutputBufferV8SendDataVMa(0);
  v160 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v147 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v131 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v155 = &v131 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v131 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v131 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v131 - v34;
  v36 = _s12OutputHelperVMa(0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1B0E443C8();
  v139 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v131 - v41;
  v148 = a2;
  if (a1)
  {
    v132 = v40;
    *v38 = 0;
    v43 = v36[5];
    v44 = a1;

    sub_1B0E44378();
    v45 = v161;
    v46 = v161 + 56;
    v47 = *(v161 + 56);
    v153 = v36[6];
    v47(&v38[v153], 1, 1, v152);
    *&v38[v36[7]] = v44;
    swift_beginAccess();
    v48 = v162;
    sub_1B03DC2C4(v150);
    v49 = v48;
    if (!v48)
    {
      v131 = v43;
      v142 = v47;
      v143 = v46;
      v157 = v38;
      v133 = v44;
      v50 = 0;
      v51 = 0;
      v162 = 0;
      v144 = (v160 + 48);
      v145 = (v139 + 16);
      v151 = (v45 + 48);
      v52 = 1;
      LODWORD(v43) = 1;
      v53 = v150;
      while (1)
      {
        swift_endAccess();
        v54 = v163;
        if ((*v144)(v53, 1, v163) == 1)
        {
          sub_1B0398EFC(v53, &qword_1EB6E56B8, &qword_1B0ED3A18);
          v103 = v132;
          sub_1B0BFCD94(v132);
          v161 = v50;
          v113 = v51;
          v123 = v139;
          v102 = v134;
          v124 = v149;
          (*(v139 + 16))(v134, v103, v149);
          v125 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          (*(v123 + 8))(v103, v124);
          v101 = v125;
          sub_1B0C05F94(v157, _s12OutputHelperVMa);
          v100 = v162;
          goto LABEL_46;
        }

        v55 = v147;
        sub_1B0C05F2C(v53, v147, _s19CommandOutputBufferV8SendDataVMa);
        v56 = (v55 + *(v54 + 20));
        v57 = *v56;
        v58 = *(v56 + 1);
        v59 = v57 | (v58 << 32);
        v60 = v57 == v50 && v58 == HIDWORD(v50);
        if (v60)
        {
          v61 = v51;
        }

        else
        {
          v61 = v57 | (v58 << 32);
        }

        if (v60)
        {
          v62 = v43;
        }

        else
        {
          v62 = 0;
        }

        if (v52)
        {
          v50 = v59;
        }

        else
        {
          v51 = v61;
          LODWORD(v43) = v62;
        }

        v63 = v55;
        v64 = v146;
        sub_1B0C05F2C(v63, v146, _s19CommandOutputBufferV8SendDataVMa);
        v65 = v155;
        sub_1B0C05F2C(v64, v155, _s19CommandOutputBufferV8SendDataVMa);
        result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v67 = v156;
        if (__OFADD__(v162, result))
        {
          __break(1u);
          return result;
        }

        v161 = v50;
        v162 += result;
        LODWORD(v158) = v43;
        v159 = v51;
        v160 = v49;
        v68 = *(v65 + *(v163 + 24));
        v69 = *v145;
        v70 = v154;
        (*v145)(v154, v65, v149);
        v72 = v152;
        v71 = v153;
        *(v70 + *(v152 + 20)) = v68;
        v73 = v157;
        sub_1B0BFD154(&v157[v71], v67);
        v74 = *v151;
        if ((*v151)(v67, 1, v72) == 1)
        {
          break;
        }

        v75 = v141;
        sub_1B0C05EC8(v67, v141);
        v76 = v72;
        if (v68 == *(v75 + *(v72 + 20)))
        {
          v81 = v74(&v157[v153], 1, v72);
          v49 = v160;
          v82 = v154;
          if (!v81)
          {
            sub_1B0E44388();
          }

          sub_1B0C05F94(v75, _s12OutputHelperV5ChunkVMa);
          sub_1B0C05F94(v82, _s12OutputHelperV5ChunkVMa);
          sub_1B0C05F94(v155, _s19CommandOutputBufferV8SendDataVMa);
          sub_1B0C05F94(v156, _s12OutputHelperV5ChunkVMa);
          goto LABEL_5;
        }

        sub_1B0C05F94(v75, _s12OutputHelperV5ChunkVMa);
        v77 = v153;
        v78 = v140;
        sub_1B0BFD154(&v157[v153], v140);
        v79 = v74(v78, 1, v72);
        v49 = v160;
        if (v79 == 1)
        {
          sub_1B0C05F94(v155, _s19CommandOutputBufferV8SendDataVMa);
          sub_1B0398EFC(v78, &qword_1EB6E5610, &qword_1B0ED35A0);
          v50 = v161;
          v43 = v157;
          v53 = v150;
          v80 = v142;
        }

        else
        {
          v83 = v78;
          v84 = v135;
          sub_1B0C05F2C(v83, v135, _s12OutputHelperV5ChunkVMa);
          v85 = v76;
          v86 = v137;
          v69(v137, v84, v149);
          swift_storeEnumTagMultiPayload();
          v87 = v136;
          sub_1B0BF93DC(v86, *(v84 + *(v85 + 20)), v136);
          v50 = v161;
          v53 = v150;
          if (v49)
          {
            sub_1B0C05F94(v86, type metadata accessor for Deflate.InputBuffer);
            sub_1B0C05F94(v84, _s12OutputHelperV5ChunkVMa);
            sub_1B0C05F94(v154, _s12OutputHelperV5ChunkVMa);
            sub_1B0C05F94(v155, _s19CommandOutputBufferV8SendDataVMa);
            v130 = v157;
            sub_1B0398EFC(&v157[v77], &qword_1EB6E5610, &qword_1B0ED35A0);
            v142(&v130[v77], 1, 1, v152);
            sub_1B0C05F94(v156, _s12OutputHelperV5ChunkVMa);
            v104 = v130;
            goto LABEL_40;
          }

          sub_1B0C05F94(v86, type metadata accessor for Deflate.InputBuffer);
          v43 = v157;
          sub_1B0E44388();
          sub_1B0C05F94(v87, type metadata accessor for Deflate.Result);
          sub_1B0C05F94(v84, _s12OutputHelperV5ChunkVMa);
          sub_1B0C05F94(v155, _s19CommandOutputBufferV8SendDataVMa);
          sub_1B0398EFC(&v43[v77], &qword_1EB6E5610, &qword_1B0ED35A0);
          v76 = v152;
          v80 = v142;
          v142(&v43[v77], 1, 1, v152);
        }

        sub_1B0398EFC(&v43[v77], &qword_1EB6E5610, &qword_1B0ED35A0);
        sub_1B0C05F2C(v154, &v43[v77], _s12OutputHelperV5ChunkVMa);
        v80(&v43[v77], 0, 1, v76);
        sub_1B0C05F94(v156, _s12OutputHelperV5ChunkVMa);
        v51 = v159;
        LODWORD(v43) = v158;
LABEL_6:
        swift_beginAccess();
        sub_1B03DC2C4(v53);
        v52 = 0;
        if (v49)
        {
          v38 = v157;
          goto LABEL_39;
        }
      }

      sub_1B0C05F94(v65, _s19CommandOutputBufferV8SendDataVMa);
      sub_1B0398EFC(&v73[v71], &qword_1EB6E5610, &qword_1B0ED35A0);
      sub_1B0C05F2C(v70, &v73[v71], _s12OutputHelperV5ChunkVMa);
      v142(&v73[v71], 0, 1, v72);
      v49 = v160;
LABEL_5:
      v51 = v159;
      v50 = v161;
      LODWORD(v43) = v158;
      v53 = v150;
      goto LABEL_6;
    }

LABEL_39:
    swift_endAccess();
    v104 = v38;
LABEL_40:
    sub_1B0C05F94(v104, _s12OutputHelperVMa);
  }

  v156 = v35;
  v158 = v32;
  v88 = v134;
  v159 = v29;
  sub_1B0E44378();
  swift_beginAccess();
  v89 = v162;
  sub_1B03DC2C4(v21);
  if (v89)
  {
    swift_endAccess();
    (*(v139 + 8))(v42, v149);
  }

  v162 = v42;
  v90 = v88;
  v133 = 0;
  swift_endAccess();
  v91 = *(v160 + 6);
  v92 = 1;
  v93 = v21;
  v94 = v21;
  v95 = v163;
  v160 += 48;
  v157 = v91;
  v96 = (v91)(v93, 1, v163);
  v52 = v96 == 1;
  if (v96 == 1)
  {
    v161 = 0;
    v113 = 0;
    v43 = v90;
  }

  else
  {
    v105 = v159;
    sub_1B0C05F2C(v94, v159, _s19CommandOutputBufferV8SendDataVMa);
    v106 = (v105 + *(v95 + 20));
    v107 = *v106;
    v108 = *(v106 + 1);
    v109 = v105;
    v110 = v158;
    sub_1B0C05F2C(v109, v158, _s19CommandOutputBufferV8SendDataVMa);
    v111 = v156;
    sub_1B0C05F2C(v110, v156, _s19CommandOutputBufferV8SendDataVMa);
    sub_1B0E44388();
    sub_1B0C05F94(v111, _s19CommandOutputBufferV8SendDataVMa);
    swift_beginAccess();
    sub_1B03DC2C4(v94);
    v112 = v108;
    v113 = 0;
    v154 = v112;
    v155 = v107;
    v161 = v107 | (v112 << 32);
    v92 = 1;
    while (1)
    {
      swift_endAccess();
      if ((v157)(v94, 1, v95) == 1)
      {
        break;
      }

      v114 = v159;
      sub_1B0C05F2C(v94, v159, _s19CommandOutputBufferV8SendDataVMa);
      v115 = (v114 + *(v95 + 20));
      v116 = *v115;
      v117 = *(v115 + 1);
      v118 = v117 == v154;
      v119 = v116 | (v117 << 32);
      v120 = v116 == v155 && v118;
      if (!v120)
      {
        v113 = v119;
      }

      v92 &= v120;
      v121 = v114;
      v122 = v158;
      sub_1B0C05F2C(v121, v158, _s19CommandOutputBufferV8SendDataVMa);
      sub_1B0C05F2C(v122, v111, _s19CommandOutputBufferV8SendDataVMa);
      sub_1B0E44388();
      sub_1B0C05F94(v111, _s19CommandOutputBufferV8SendDataVMa);
      swift_beginAccess();
      sub_1B03DC2C4(v94);
    }

    v43 = v134;
  }

  sub_1B0398EFC(v94, &qword_1EB6E56B8, &qword_1B0ED3A18);
  v97 = v139;
  v98 = v162;
  v99 = v149;
  (*(v139 + 16))(v43, v162, v149);
  v100 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v97 + 8))(v98, v99);
  v101 = 0;
  v102 = v43;
  LOBYTE(v43) = v92;
LABEL_46:
  v126 = v133 == 0;

  result = _s11CompressionO12OutgoingDataVMa(0);
  *(v102 + *(result + 20)) = v100;
  v127 = v102 + *(result + 24);
  *v127 = v101;
  v127[8] = v126;
  v128 = v102 + *(result + 28);
  *v128 = v161;
  v128[8] = v52;
  v129 = v102 + *(result + 32);
  *v129 = v113;
  v129[8] = v43 & 1;
  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B0E443C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void _configureMailboxCache(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 _shouldConfigureMailboxCache])
  {
    [v1 mf_lock];
    if (!v1[13])
    {
      v2 = [v1 _copyMailboxWithParent:0 name:0 attributes:18 dictionary:0];
      v3 = v1[13];
      v1[13] = v2;

      if ([v1[13] mailboxType] != 8)
      {
        [v1[13] setMailboxType:8];
      }
    }

    if ([v1 cacheHasBeenRead])
    {
      v4 = 1;
    }

    else
    {
      [v1 setCacheHasBeenRead:1];
      v5 = v1;
      v20 = [v5 mailboxCachePath];
      v6 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v20 options:1 error:0];
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 ef_publicDescription];
        *buf = 138543362;
        v23 = v8;
        _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Read mailbox cache from disk %{public}@", buf, 0xCu);
      }

      if (!v5[13])
      {
        __assert_rtn("_readMailboxCache", "MailAccount.m", 3415, "self->_rootMailboxUid");
      }

      if (v6)
      {
        error = 0;
        v9 = CFPropertyListCreateWithData(0, v6, 1uLL, 0, &error);
        if (error)
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _readMailboxCache(MailAccount *__strong)"];
          v19 = [(__CFError *)error localizedDescription];
          [v17 handleFailureInFunction:v18 file:@"MailAccount.m" lineNumber:3425 description:{@"%@", v19}];
        }

        v10 = CFDictionaryGetValue(v9, @"mboxes");
        v11 = [v5 _readCustomInfoFromMailboxCache:v9];
        v4 = v11;
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = MFLogGeneral();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v10 count];
              v14 = [v5 ef_publicDescription];
              *buf = 134218242;
              v23 = v13;
              v24 = 2114;
              v25 = v14;
              _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "loading mailboxes.count:%lu from mailbox cache %{public}@", buf, 0x16u);
            }

            [v5 _loadMailboxListingIntoCache:0 attributes:0 children:v10 parent:v5[13]];
          }
        }

        else
        {
          v15 = MFLogGeneral();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v5 ef_publicDescription];
            _configureMailboxCache_cold_1(v16, buf, v15);
          }
        }

        if (error)
        {
          CFRelease(error);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    [v1 mf_unlock];
    if ((v4 & 1) == 0)
    {
      [v1 _repairMailboxCache];
    }
  }

  else
  {
    _invalidateMailboxCache(v1);
  }
}

void sub_1B03DBFC8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, __int128 buf)
{
  v20 = v17;

  if (a2 == 1)
  {
    v22 = objc_begin_catch(a1);
    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v14 ef_publicDescription];
      LODWORD(buf) = 138543618;
      *(&buf + 4) = v24;
      WORD6(buf) = 2112;
      *(&buf + 14) = v22;
      _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_INFO, "Failed to read cached info for %{public}@: %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x1B03DBEB0);
  }

  _Unwind_Resume(a1);
}

void *sub_1B03DC144(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t, void), uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1B03D0298(v9, v7, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1B0B21EB0(v11, v7, v5, a2);
  result = MEMORY[0x1B272C230](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1B03DC2C4@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1B0E443C8();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s19CommandOutputBufferV7CommandVMa(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV7ElementOMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = *v1;
  v21 = *(*v1 + 16);
  if (!v21)
  {
    v25 = _s19CommandOutputBufferV8SendDataVMa(0);
    return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
  }

  v42 = a1;
  v48 = v2;
  sub_1B03D60F8(v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), &v42 - v18, _s19CommandOutputBufferV7ElementOMa);
  sub_1B03D60F8(v19, v15, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (v1[1])
      {
        goto LABEL_20;
      }

      v26 = v1 + 2;
      v27 = v1[2];
      if (v27 > 0)
      {
LABEL_14:
        *v26 = v27 - 1;
        goto LABEL_15;
      }

LABEL_23:
      sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
      v30 = _s19CommandOutputBufferV8SendDataVMa(0);
      (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
      return sub_1B03DA84C(v15, _s19CommandOutputBufferV7ElementOMa);
    }

    if (v21 == 1)
    {
      goto LABEL_23;
    }

    if (v1[2])
    {
      goto LABEL_18;
    }

LABEL_13:
    v26 = v1 + 1;
    v27 = v1[1];
    if (v27 > 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    if (v1[2])
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v1[1])
  {
LABEL_20:
    sub_1B0BEA5F4();
    goto LABEL_21;
  }

  if (v1[2])
  {
LABEL_18:
    sub_1B0BEA5A0();
LABEL_21:
    swift_allocError();
    swift_willThrow();
    sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
    return sub_1B03DA84C(v15, _s19CommandOutputBufferV7ElementOMa);
  }

  if ((*(v1 + 33) & 1) == 0 && (v1[4] & 1) == 0)
  {
    sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
    v23 = _s19CommandOutputBufferV8SendDataVMa(0);
    (*(*(v23 - 8) + 56))(v42, 1, 1, v23);
    return sub_1B03DA84C(v15, _s19CommandOutputBufferV7ElementOMa);
  }

LABEL_15:
  sub_1B03DA84C(v15, _s19CommandOutputBufferV7ElementOMa);
  sub_1B0C0B4F8(0, v12);
  sub_1B03DA84C(v12, _s19CommandOutputBufferV7ElementOMa);
  sub_1B03D60F8(v19, v9, _s19CommandOutputBufferV7ElementOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    v28 = _s19CommandOutputBufferV7ElementOMa;
    v29 = v9;
  }

  else
  {
    v31 = v44;
    sub_1B03D6160(v9, v44, _s19CommandOutputBufferV7CommandVMa);
    if (*(v31 + *(v43 + 24)))
    {
      v32 = (v31 + *(v43 + 20));
      v33 = *v32;
      v34 = *(v32 + 1);
      sub_1B03DA84C(v31, _s19CommandOutputBufferV7CommandVMa);
      v35 = v42;
      if ((*(v1 + 33) & 1) == 0)
      {
        v1[3] = v33 | (v34 << 32);
        *(v1 + 16) = 0;
      }

      goto LABEL_30;
    }

    v28 = _s19CommandOutputBufferV7CommandVMa;
    v29 = v31;
  }

  sub_1B03DA84C(v29, v28);
  v35 = v42;
LABEL_30:
  v36 = v45;
  sub_1B0BE9D78(v45);
  v37 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v46 + 8))(v36, v47);
  LOBYTE(v36) = v37 > 5000;
  sub_1B0BE9D78(v35);
  v38 = sub_1B0BEA028();
  LOBYTE(v37) = v38;
  v39 = HIDWORD(v38);
  sub_1B03DA84C(v19, _s19CommandOutputBufferV7ElementOMa);
  v40 = _s19CommandOutputBufferV8SendDataVMa(0);
  v41 = v35 + *(v40 + 20);
  *v41 = v37;
  *(v41 + 4) = v39;
  *(v35 + *(v40 + 24)) = v36;
  return (*(*(v40 - 8) + 56))(v35, 0, 1, v40);
}

uint64_t sub_1B03DC928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1B03DC998(char *a1)
{

  v6 = *(type metadata accessor for Activity(0) + 24);
  v8 = type metadata accessor for ConnectionStatus.Error(0);
  if (!(*(*(v8 - 8) + 48))(&a1[v6], 1))
  {
    v4 = &a1[v6 + *(v8 + 20)];
    v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
        }
      }

      else
      {
        v1 = sub_1B0E441D8();
        (*(*(v1 - 8) + 8))(v4);
      }
    }
  }

  return a1;
}

void sub_1B03DCB64(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 10) | (16 * v10)) + 8);
        v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B93AEC(v12, v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1B03DD01C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B03DD760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1B03DD8D4(uint64_t a1)
{
  v7 = type metadata accessor for ConnectionStatus.Error(0);
  if (!(*(*(v7 - 8) + 48))(a1, 1))
  {
    v4 = a1 + *(v7 + 20);
    v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
        }
      }

      else
      {
        v1 = sub_1B0E441D8();
        (*(*(v1 - 8) + 8))(v4);
      }
    }
  }

  return a1;
}

BOOL _s16IMAP2Persistence8ActivityV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60E8, &qword_1B0EE1938);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1B03DF118(*a1, *a2);
  if ((v14 & 1) == 0 || (sub_1B03DDD84(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for Activity(0) + 24);
  v16 = a1 + v15;
  v17 = *(v11 + 48);
  sub_1B03B5C80(v16, v13, &qword_1EB6E35A0, &qword_1B0E99850);
  sub_1B03B5C80(a2 + v15, &v13[v17], &qword_1EB6E35A0, &qword_1B0E99850);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1B0398EFC(v13, &qword_1EB6E35A0, &qword_1B0E99850);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B03B5C80(v13, v10, &qword_1EB6E35A0, &qword_1B0E99850);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1B0416AA0(v10, type metadata accessor for ConnectionStatus.Error);
LABEL_8:
    sub_1B0398EFC(v13, &qword_1EB6E60E8, &qword_1B0EE1938);
    return 0;
  }

  sub_1B0CC0084(&v13[v17], v7, type metadata accessor for ConnectionStatus.Error);
  v20 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v10, v7);
  sub_1B0416AA0(v7, type metadata accessor for ConnectionStatus.Error);
  sub_1B0416AA0(v10, type metadata accessor for ConnectionStatus.Error);
  sub_1B0398EFC(v13, &qword_1EB6E35A0, &qword_1B0E99850);
  return v20;
}

uint64_t sub_1B03DDD84(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v14);
    result = sub_1B0E46CB8();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      if (v19[1] == v14)
      {
        v20 = *v19;
        v21 = *(*v19 + 16);
        if (v21 == *(v15 + 16))
        {
          break;
        }
      }

LABEL_16:
      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }

    v22 = (v20 + 32);
    if (v21)
    {
      v23 = v20 == v15;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v15 + 32);
      while (v21)
      {
        if (*v22 != *v24)
        {
          goto LABEL_16;
        }

        ++v22;
        ++v24;
        if (!--v21)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B03DE00C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_1B03DE2A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t Activity.init(mailboxesWithPendingWork:accountError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = sub_1B03DE37C(MEMORY[0x1E69E7CC0]);
  v6 = *(type metadata accessor for Activity(0) + 24);
  v7 = type metadata accessor for ConnectionStatus.Error(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *(a3 + 1) = a1;

  return sub_1B03DC928(a2, &a3[v6]);
}

unint64_t sub_1B03DE37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60B8, &qword_1B0EE0F80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60C0, &qword_1B0EE0F88);
    v7 = sub_1B0E466A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1B0CBAE5C(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1B03B8A9C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Activity.MailboxStatus(0);
      result = sub_1B0415DC0(v5 + v8, (v17 + *(*(v18 - 8) + 72) * v15));
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t StateWithTasks.selectedMailboxes.getter()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192) == 1)
  {
    v2 = *(v0 + 168);
    v10 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 128);
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 22;
        if (v6)
        {
          v7 = *(v4 - 18);
          v8 = *(v4 - 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v9, v8, v7);
        }

        v4 = v5;
        --v3;
      }

      while (v3);
      return v10;
    }
  }

  return result;
}

char *sub_1B03DE5E0(void *a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for Activity(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B00, "Rz\b");
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB0, &unk_1B0EDC3F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v41 = a1;
  sub_1B03DEB8C(a1, (&v39 - v19));
  v40 = *(v5 + 56);
  v40(v20, 0, 1, v4);
  v43 = v2;
  sub_1B03DEF7C(v2, v17);
  v21 = *(v9 + 56);
  sub_1B03DEF7C(v20, v11);
  sub_1B03DEF7C(v17, &v11[v21]);
  v22 = *(v5 + 48);
  if (v22(v11, 1, v4) == 1)
  {
    sub_1B0398EFC(v17, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    sub_1B0398EFC(v20, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    if (v22(&v11[v21], 1, v4) == 1)
    {
      sub_1B0398EFC(v11, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
      v23 = MEMORY[0x1E69E7CC0];
      v25 = v42;
      v24 = v43;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1B03DEF7C(v11, v14);
  if (v22(&v11[v21], 1, v4) == 1)
  {
    sub_1B0398EFC(v17, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    sub_1B0398EFC(v20, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
    sub_1B03DC998(v14);
LABEL_6:
    sub_1B0398EFC(v11, &qword_1EB6E5B00, "Rz\b");
    v25 = v42;
    v24 = v43;
    goto LABEL_7;
  }

  sub_1B03DF0B0(&v11[v21], v7);
  v38 = static Activity.__derived_struct_equals(_:_:)(v14, v7);
  sub_1B03DC998(v7);
  sub_1B0398EFC(v17, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  sub_1B0398EFC(v20, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  sub_1B03DC998(v14);
  sub_1B0398EFC(v11, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  v25 = v42;
  v24 = v43;
  if (v38)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_7:
  sub_1B0398EFC(v24, &qword_1EB6E5AB0, &unk_1B0EDC3F0);
  v26 = v41;
  sub_1B03DEB8C(v41, v24);
  v40(v24, 0, 1, v4);
  v27 = swift_allocBox();
  sub_1B03DEB8C(v26, v28);
  v23 = sub_1B03E1498(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = *(v23 + 2);
  v29 = *(v23 + 3);
  if (v30 >= v29 >> 1)
  {
    v23 = sub_1B03E1498((v29 > 1), v30 + 1, 1, v23);
  }

  *(v23 + 2) = v30 + 1;
  *&v23[8 * v30 + 32] = v27 | 0x9000000000000002;
LABEL_10:
  v31 = *(type metadata accessor for ExternalState(0) + 20);
  v32 = *&v24[v31];
  if (*(v25 + 16) <= *(v32 + 16) >> 3)
  {
    v44 = *&v24[v31];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03DCB64(v25);
    v33 = v44;
    if (*(v44 + 16))
    {
      goto LABEL_12;
    }

LABEL_18:

    goto LABEL_19;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = sub_1B0455560(v25, v32);
  if (!*(v33 + 16))
  {
    goto LABEL_18;
  }

LABEL_12:
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1B03E1498(0, *(v23 + 2) + 1, 1, v23);
  }

  v36 = *(v23 + 2);
  v35 = *(v23 + 3);
  if (v36 >= v35 >> 1)
  {
    v23 = sub_1B03E1498((v35 > 1), v36 + 1, 1, v23);
  }

  *(v23 + 2) = v36 + 1;
  *&v23[8 * v36 + 32] = v34 | 0x1000000000000000;
LABEL_19:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  *&v24[v31] = v25;
  return v23;
}

uint64_t sub_1B03DEB54()
{

  return swift_deallocObject();
}

void *sub_1B03DEB8C(void *a1, void *a2)
{
  v17 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v17;
  v19 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v19;
  v20 = *(type metadata accessor for Activity(0) + 24);
  v22 = type metadata accessor for ConnectionStatus.Error(0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(a1 + v20, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    memcpy(a2 + v20, a1 + v20, *(*(v6 - 8) + 64));
  }

  else
  {
    *(a2 + v20) = *(a1 + v20);
    __dst = (a2 + v20 + *(v22 + 20));
    __src = (a1 + v20 + *(v22 + 20));
    v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          *__dst = *__src;
          v10 = __src[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v10;
          __dst[2] = __src[2];
          v11 = __src[3];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[3] = v11;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          *__dst = *__src;
          if (EnumCaseMultiPayload == 2)
          {
            v9 = __src[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v9;
          }

          else
          {
            v8 = __src[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v8;
          }

          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v2 = sub_1B0E441D8();
        (*(*(v2 - 8) + 16))(__dst, __src);
        swift_storeEnumTagMultiPayload();
      }

      (*(v16 + 56))(__dst, 0, 1, v15);
    }

    v4 = a2 + v20 + *(v22 + 24);
    v5 = a1 + v20 + *(v22 + 24);
    *v4 = *v5;
    v4[8] = v5[8];
    (*(v23 + 56))();
  }

  return a2;
}

uint64_t sub_1B03DEF7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB0, &unk_1B0EDC3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1B03DF000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B03DF0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B03DF118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v114 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v95 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6308, &unk_1B0EE59D0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v95 - v11;
  v103 = type metadata accessor for ConnectionStatus.Error(0);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60E0, &qword_1B0EE1930);
  MEMORY[0x1EEE9AC00](v111);
  v14 = &v95 - v13;
  v117 = type metadata accessor for Activity.MailboxStatus(0);
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v95 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6310, &qword_1B0EE59E0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v112 = (&v95 - v30);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v108 = a2;
    v99 = v10;
    v96 = v6;
    v100 = v4;
    v101 = v16;
    v97 = v9;
    v31 = 0;
    v106 = a1;
    v107 = v14;
    v32 = a1 + 64;
    v33 = 1 << *(a1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a1 + 64);
    v36 = (v33 + 63) >> 6;
    v98 = (v114 + 48);
    v110 = v23;
    v114 = v28;
    while (v35)
    {
      v113 = (v35 - 1) & v35;
      v37 = __clz(__rbit64(v35)) | (v31 << 6);
LABEL_18:
      v42 = (*(v106 + 48) + 16 * v37);
      v44 = *v42;
      v43 = v42[1];
      v45 = v109;
      sub_1B0416014((*(v106 + 56) + *(v115 + 72) * v37), v109);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6318, &unk_1B0EE59E8);
      v47 = *(v46 + 48);
      v48 = v114;
      *v114 = v44;
      *(v48 + 1) = v43;
      v49 = v45;
      v28 = v48;
      sub_1B0CE7B8C(v49, &v48[v47], type metadata accessor for Activity.MailboxStatus);
      (*(*(v46 - 8) + 56))(v28, 0, 1, v46);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_19:
      v50 = v112;
      sub_1B03C60A4(v28, v112, &qword_1EB6E6310, &qword_1B0EE59E0);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6318, &unk_1B0EE59E8);
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {
        return;
      }

      v52 = *(v51 + 48);
      v54 = *v50;
      v53 = v50[1];
      sub_1B0CE7B8C(v50 + v52, v23, type metadata accessor for Activity.MailboxStatus);
      v55 = v108;
      v56 = sub_1B03B8A9C(v54, v53);
      v57 = v23;
      v59 = v58;

      if ((v59 & 1) == 0)
      {
        v90 = v57;
        goto LABEL_66;
      }

      v60 = (*(v55 + 56) + *(v115 + 72) * v56);
      v61 = v116;
      sub_1B0416014(v60, v116);
      v62 = &v14[*(v111 + 48)];
      sub_1B0416014(v61, v14);
      sub_1B0416014(v57, v62);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        v28 = v114;
        if (EnumCaseMultiPayload == 2)
        {
          sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
          sub_1B0416B00(v57, type metadata accessor for Activity.MailboxStatus);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
          sub_1B0416B00(v57, type metadata accessor for Activity.MailboxStatus);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v28 = v114;
        if (EnumCaseMultiPayload)
        {
          v71 = v101;
          sub_1B0416014(v14, v101);
          v72 = swift_getEnumCaseMultiPayload();
          v73 = v100;
          if (v72 != 1)
          {
            sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v110, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v71, type metadata accessor for ConnectionStatus.Error);
LABEL_57:
            sub_1B0398EFC(v107, &qword_1EB6E60E0, &qword_1B0EE1930);
            return;
          }

          v74 = v104;
          sub_1B0CE7B8C(v62, v104, type metadata accessor for ConnectionStatus.Error);
          if (*v71 != *v74)
          {
            sub_1B0416B00(v74, type metadata accessor for ConnectionStatus.Error);
            sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
            v91 = v110;
            v92 = type metadata accessor for Activity.MailboxStatus;
            goto LABEL_63;
          }

          v75 = v102;
          v76 = *(v103 + 20);
          v77 = *(v99 + 48);
          sub_1B03B5C80(&v71[v76], v102, &qword_1EB6E39C0, &qword_1B0EA35E0);
          sub_1B03B5C80(&v74[v76], v75 + v77, &qword_1EB6E39C0, &qword_1B0EA35E0);
          v78 = *v98;
          if ((*v98)(v75, 1, v73) == 1)
          {
            sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v110, type metadata accessor for Activity.MailboxStatus);
            if (v78(v75 + v77, 1, v100) != 1)
            {
              v93 = type metadata accessor for ConnectionStatus.Error;
              v94 = v104;
LABEL_61:
              sub_1B0416B00(v94, v93);
              v71 = v101;
              sub_1B0398EFC(v75, &qword_1EB6E6308, &unk_1B0EE59D0);
LABEL_64:
              sub_1B0416B00(v71, type metadata accessor for ConnectionStatus.Error);
LABEL_65:
              v90 = v107;
LABEL_66:
              sub_1B0416B00(v90, type metadata accessor for Activity.MailboxStatus);
              return;
            }

            sub_1B0398EFC(v75, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v71 = v101;
          }

          else
          {
            v80 = v97;
            sub_1B03B5C80(v75, v97, &qword_1EB6E39C0, &qword_1B0EA35E0);
            if (v78(v75 + v77, 1, v73) == 1)
            {
              sub_1B0416B00(v104, type metadata accessor for ConnectionStatus.Error);
              sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
              sub_1B0416B00(v110, type metadata accessor for Activity.MailboxStatus);
              v93 = type metadata accessor for ConnectionStatus.Error.Details;
              v94 = v80;
              goto LABEL_61;
            }

            v81 = v96;
            sub_1B0CE7B8C(v75 + v77, v96, type metadata accessor for ConnectionStatus.Error.Details);
            v82 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(v80, v81);
            sub_1B0416B00(v81, type metadata accessor for ConnectionStatus.Error.Details);
            sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v110, type metadata accessor for Activity.MailboxStatus);
            sub_1B0416B00(v80, type metadata accessor for ConnectionStatus.Error.Details);
            sub_1B0398EFC(v75, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v71 = v101;
            if ((v82 & 1) == 0)
            {
              v92 = type metadata accessor for ConnectionStatus.Error;
              v91 = v104;
LABEL_63:
              sub_1B0416B00(v91, v92);
              goto LABEL_64;
            }
          }

          v83 = *(v103 + 24);
          v84 = *&v71[v83];
          v85 = v71[v83 + 8];
          v86 = &v104[v83];
          v87 = *v86;
          v88 = v86[8];
          sub_1B0416B00(v104, type metadata accessor for ConnectionStatus.Error);
          if (v85)
          {
            v28 = v114;
            if ((v88 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v84 == v87)
            {
              v89 = v88;
            }

            else
            {
              v89 = 1;
            }

            v28 = v114;
            if (v89)
            {
              goto LABEL_64;
            }
          }

          sub_1B0416B00(v71, type metadata accessor for ConnectionStatus.Error);
        }

        else
        {
          sub_1B0416B00(v116, type metadata accessor for Activity.MailboxStatus);
          sub_1B0416B00(v57, type metadata accessor for Activity.MailboxStatus);
          v64 = v105;
          sub_1B0416014(v14, v105);
          v65 = *(v64 + 1);
          v66 = *(v64 + 2);
          v67 = v64[24];
          v68 = v64[25];
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_57;
          }

          if (*v105 != *v62)
          {
            goto LABEL_65;
          }

          v69 = *(v62 + 24);
          v70 = *(v62 + 25);
          if (v67)
          {
            if (!*(v62 + 24) || v68 != v70)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v65 != *(v62 + 8))
            {
              v69 = 1;
            }

            if (v69 & 1) != 0 || v66 != *(v62 + 16) || ((v68 ^ v70))
            {
              goto LABEL_65;
            }
          }
        }
      }

      v14 = v107;
      sub_1B0416B00(v107, type metadata accessor for Activity.MailboxStatus);
      v23 = v110;
      v35 = v113;
    }

    if (v36 <= v31 + 1)
    {
      v38 = v31 + 1;
    }

    else
    {
      v38 = v36;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v40 >= v36)
      {
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6318, &unk_1B0EE59E8);
        (*(*(v79 - 8) + 56))(v28, 1, 1, v79);
        v113 = 0;
        v31 = v39;
        goto LABEL_19;
      }

      v41 = *(v32 + 8 * v40);
      ++v31;
      if (v41)
      {
        v113 = (v41 - 1) & v41;
        v37 = __clz(__rbit64(v41)) | (v40 << 6);
        v31 = v40;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for ExternalState(uint64_t a1)
{
  result = qword_1EB6DC278;
  if (!qword_1EB6DC278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id getDeliveryAccounts()
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!sDeliveryAccounts)
  {
    v0 = +[MFAccountStore sharedAccountStore];
    v9[0] = *MEMORY[0x1E69598F0];
    v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v2 = [v0 accountsWithTypeIdentifiers:v1 error:0];
    v3 = [v2 mutableCopy];
    v4 = sDeliveryAccounts;
    sDeliveryAccounts = v3;

    if (!sDeliveryAccounts || ![sDeliveryAccounts count])
    {
      v5 = objc_opt_new();
      v6 = sDeliveryAccounts;
      sDeliveryAccounts = v5;
    }
  }

  v7 = sDeliveryAccounts;

  return v7;
}

void sub_1B03DFFEC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void MFRegisterPowerObserver(void *a1)
{
  v1 = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MFRegisterPowerObserver_block_invoke;
  v4[3] = &unk_1E7AA25C0;
  v2 = v1;
  v5 = v2;
  v3 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v3 performBlock:v4];
}

uint64_t __MFRegisterPowerObserver_block_invoke(uint64_t a1)
{
  v2 = sObservers;
  if (!sObservers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = sObservers;
    sObservers = v3;

    v2 = sObservers;
  }

  v5 = *(a1 + 32);

  return [v2 addObject:v5];
}

id cachedMailboxUIDs()
{
  if (cachedMailboxUIDs_onceToken != -1)
  {
    cachedMailboxUIDs_cold_1();
  }

  v1 = cachedMailboxUIDs_cache;

  return v1;
}

void bindParentAndChild(void *a1, void *a2)
{
  v11 = a1;
  v3 = a2;
  v4 = [MEMORY[0x1E69AD788] weakReferenceWithObject:v11];
  [v3 mf_lock];
  v5 = v3[5];
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 reference];
    objc_storeStrong(v3 + 5, v4);
    v7 = v6;
  }

  [v3 mf_unlock];
  if (v7)
  {
    [v7 mf_lock];
    [v7[6] removeObjectIdenticalTo:v3];
    [v7 mf_unlock];
  }

  if (v11)
  {
    [v11 mf_lock];
    v8 = v11[6];
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = v11[6];
      v11[6] = v9;

      v8 = v11[6];
    }

    [v8 addObject:v3];
    [v11 mf_unlock];
  }
}

unint64_t sub_1B03E14B4(unint64_t result)
{
  switch((result >> 1) & 3 | (result >> 58) & 0x3C)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 10uLL:
    case 11uLL:
    case 12uLL:
    case 13uLL:
    case 14uLL:
    case 15uLL:
    case 16uLL:
    case 17uLL:
    case 18uLL:
    case 19uLL:
    case 20uLL:
    case 21uLL:
    case 22uLL:
    case 23uLL:
    case 24uLL:
    case 25uLL:
    case 26uLL:
    case 27uLL:
    case 28uLL:
    case 29uLL:
    case 30uLL:
    case 31uLL:
    case 32uLL:
    case 33uLL:
    case 34uLL:
    case 35uLL:
    case 36uLL:
    case 37uLL:
    case 38uLL:
    case 39uLL:
    case 40uLL:
    case 41uLL:
    case 42uLL:
    case 43uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B03E1960()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  sub_1B03E1B3C(sub_1B03E1A28, 0, v2, &type metadata for ActionID, &type metadata for ActionID);

  return v3;
}

int *sub_1B03E1A28@<X0>(int *a1@<X0>, int *a2@<X8>)
{
  v2 = ActionID.next.getter(*a1);
  result = a1;
  *a1 = v2;
  *a2 = *a1;
  return result;
}

void sub_1B03E1A80(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

unint64_t sub_1B03E1BE8(unint64_t result)
{
  switch((result >> 1) & 3 | (result >> 58) & 0x3C)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 10uLL:
    case 11uLL:
    case 12uLL:
    case 13uLL:
    case 14uLL:
    case 15uLL:
    case 16uLL:
    case 17uLL:
    case 18uLL:
    case 19uLL:
    case 20uLL:
    case 21uLL:
    case 22uLL:
    case 23uLL:
    case 24uLL:
    case 25uLL:
    case 26uLL:
    case 27uLL:
    case 28uLL:
    case 29uLL:
    case 30uLL:
    case 31uLL:
    case 32uLL:
    case 33uLL:
    case 34uLL:
    case 35uLL:
    case 36uLL:
    case 37uLL:
    case 38uLL:
    case 39uLL:
    case 40uLL:
    case 41uLL:
    case 42uLL:
    case 43uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B03E207C(unint64_t a1)
{
  v11 = a1;
  v12 = sub_1B0401EE8;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v13 = 0;
  v17 = sub_1B0E44238();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v8 - v8;
  v21 = sub_1B0E44288();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v20 = &v8 - v9;
  v34 = v2;
  v33 = v1;
  v24 = sub_1B03E1960();
  v32 = v24;
  v23 = *(v10 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v23);

  sub_1B03E14B4(v11);
  v3 = swift_allocObject();
  v4 = v11;
  v5 = v12;
  v6 = v3;
  LODWORD(v3) = v24;
  *(v6 + 16) = v10;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  v30 = v5;
  v31 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = 0;
  v28 = sub_1B038C908;
  v29 = &block_descriptor_409;
  v22 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v13, v20, v16, v22);
  (*(v14 + 8))(v16, v17);
  (*(v18 + 8))(v20, v21);
  _Block_release(v22);

  MEMORY[0x1E69E5920](v23);
  return v24;
}

uint64_t sub_1B03E2328()
{

  sub_1B03E1BE8(*(v0 + 24));
  return swift_deallocObject();
}

void sub_1B03E2370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_1B03E1BA0(a3 + *(*a3 + *MEMORY[0x1E69E6B68] + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence6ActionO(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3;
  }

  else
  {
    return (*a1 >> 3) + 44;
  }
}

void sub_1B03E248C(unint64_t a1, unsigned int a2)
{
  v542 = a1;
  v541 = a2;
  v540 = 0;
  v435 = sub_1B039BBE8;
  v436 = sub_1B0A1B10C;
  v437 = sub_1B07AC984;
  v438 = sub_1B0394C30;
  v439 = sub_1B0394C24;
  v440 = sub_1B039BA2C;
  v441 = sub_1B039BA88;
  v442 = sub_1B039BB94;
  v443 = sub_1B0394C24;
  v444 = sub_1B039BBA0;
  v445 = sub_1B039BC08;
  v446 = sub_1B0A1B114;
  v447 = sub_1B039BCF8;
  v448 = sub_1B03FB220;
  v449 = sub_1B039BCF8;
  v450 = sub_1B0398F5C;
  v451 = sub_1B0398F5C;
  v452 = sub_1B0399178;
  v453 = sub_1B0398F5C;
  v454 = sub_1B0398F5C;
  v455 = sub_1B039BA94;
  v456 = sub_1B0398F5C;
  v457 = sub_1B0398F5C;
  v458 = sub_1B0399178;
  v459 = sub_1B0398F5C;
  v460 = sub_1B0398F5C;
  v461 = sub_1B03991EC;
  v462 = sub_1B0398F5C;
  v463 = sub_1B0398F5C;
  v464 = sub_1B039BCEC;
  v465 = sub_1B0398F5C;
  v466 = sub_1B0398F5C;
  v467 = sub_1B039BCEC;
  v468 = sub_1B039BBE8;
  v469 = sub_1B07AC984;
  v470 = sub_1B0394C24;
  v471 = sub_1B039BA2C;
  v472 = sub_1B039BA88;
  v473 = sub_1B0394C24;
  v474 = sub_1B039BBA0;
  v475 = sub_1B039BC08;
  v476 = sub_1B03FB220;
  v477 = sub_1B039BCF8;
  v478 = sub_1B0398F5C;
  v479 = sub_1B0398F5C;
  v480 = sub_1B0399178;
  v481 = sub_1B0398F5C;
  v482 = sub_1B0398F5C;
  v483 = sub_1B039BA94;
  v484 = sub_1B0398F5C;
  v485 = sub_1B0398F5C;
  v486 = sub_1B0399178;
  v487 = sub_1B0398F5C;
  v488 = sub_1B0398F5C;
  v489 = sub_1B03991EC;
  v490 = sub_1B0398F5C;
  v491 = sub_1B0398F5C;
  v492 = sub_1B039BCEC;
  v493 = sub_1B039BBE8;
  v494 = sub_1B0A1B10C;
  v495 = sub_1B07AC984;
  v496 = sub_1B0394C24;
  v497 = sub_1B039BA2C;
  v498 = sub_1B039BA88;
  v499 = sub_1B0394C24;
  v500 = sub_1B039BBA0;
  v501 = sub_1B039BC08;
  v502 = sub_1B0A1B114;
  v503 = sub_1B039BCF8;
  v504 = sub_1B03FB220;
  v505 = sub_1B039BCF8;
  v506 = sub_1B07135E4;
  v507 = sub_1B070B324;
  v508 = sub_1B0398F5C;
  v509 = sub_1B0398F5C;
  v510 = sub_1B0399178;
  v511 = sub_1B0398F5C;
  v512 = sub_1B0398F5C;
  v513 = sub_1B039BA94;
  v514 = sub_1B0398F5C;
  v515 = sub_1B0398F5C;
  v516 = sub_1B0399178;
  v517 = sub_1B0398F5C;
  v518 = sub_1B0398F5C;
  v519 = sub_1B03991EC;
  v520 = sub_1B0398F5C;
  v521 = sub_1B0398F5C;
  v522 = sub_1B039BCEC;
  v523 = sub_1B0398F5C;
  v524 = sub_1B0398F5C;
  v525 = sub_1B039BCEC;
  v526 = sub_1B0398F5C;
  v527 = sub_1B0398F5C;
  v528 = sub_1B070B4B4;
  v574 = 0;
  v573 = 0;
  v572 = 0;
  v529 = 0;
  v570 = 0;
  v564 = 0;
  v530 = 0;
  v531 = sub_1B0E439A8();
  v532 = *(v531 - 8);
  v533 = v531 - 8;
  v534 = (v532[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v535 = v235 - v534;
  v536 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v537 = v235 - v536;
  v538 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v539 = v235 - v538;
  v543 = _s6LoggerVMa(v7);
  v544 = (*(*(v543 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v542);
  v545 = v235 - v544;
  v546 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v547 = v235 - v546;
  v548 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v549 = v235 - v548;
  v550 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v551 = v235 - v550;
  v574 = v14;
  v573 = v15;
  v572 = v2;
  v552 = v571;
  swift_beginAccess();
  v553 = *(v2 + 72);
  swift_endAccess();
  if ((v553 & 1) == 0)
  {
    v16 = v539;
    v388 = &unk_1EB737000;
    sub_1B0394784(v434 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v551);
    v386 = v532[2];
    v387 = v532 + 2;
    v386(v16, v551, v531);
    sub_1B039480C(v551);

    sub_1B0394784(v434 + v388[314], v549);
    v17 = (v549 + *(v543 + 20));
    v389 = *v17;
    v390 = *(v17 + 1);
    sub_1B039480C(v549);

    v392 = 24;
    v408 = 7;
    v18 = swift_allocObject();
    v19 = v390;
    v396 = v18;
    *(v18 + 16) = v389;
    *(v18 + 20) = v19;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = swift_allocObject();
    v21 = v390;
    v391 = v20;
    *(v20 + 16) = v389;
    *(v20 + 20) = v21;

    v407 = 32;
    v22 = swift_allocObject();
    v23 = v391;
    v401 = v22;
    *(v22 + 16) = v435;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B03E14B4(v542);
    v393 = swift_allocObject();
    *(v393 + 16) = v542;

    v24 = swift_allocObject();
    v25 = v393;
    v403 = v24;
    *(v24 + 16) = v436;
    *(v24 + 24) = v25;

    v394 = swift_allocObject();
    *(v394 + 16) = v541;

    v26 = swift_allocObject();
    v27 = v394;
    v409 = v26;
    *(v26 + 16) = v437;
    *(v26 + 24) = v27;

    v432 = sub_1B0E43988();
    v433 = sub_1B0E458D8();
    v405 = 17;
    v411 = swift_allocObject();
    v398 = 16;
    *(v411 + 16) = 16;
    v412 = swift_allocObject();
    v400 = 4;
    *(v412 + 16) = 4;
    v28 = swift_allocObject();
    v395 = v28;
    *(v28 + 16) = v438;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v395;
    v413 = v29;
    *(v29 + 16) = v439;
    *(v29 + 24) = v30;
    v414 = swift_allocObject();
    *(v414 + 16) = 0;
    v415 = swift_allocObject();
    *(v415 + 16) = 1;
    v31 = swift_allocObject();
    v32 = v396;
    v397 = v31;
    *(v31 + 16) = v440;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v397;
    v416 = v33;
    *(v33 + 16) = v441;
    *(v33 + 24) = v34;
    v417 = swift_allocObject();
    *(v417 + 16) = v398;
    v418 = swift_allocObject();
    *(v418 + 16) = v400;
    v35 = swift_allocObject();
    v399 = v35;
    *(v35 + 16) = v442;
    *(v35 + 24) = 0;
    v36 = swift_allocObject();
    v37 = v399;
    v419 = v36;
    *(v36 + 16) = v443;
    *(v36 + 24) = v37;
    v420 = swift_allocObject();
    *(v420 + 16) = 0;
    v421 = swift_allocObject();
    *(v421 + 16) = v400;
    v38 = swift_allocObject();
    v39 = v401;
    v402 = v38;
    *(v38 + 16) = v444;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v402;
    v422 = v40;
    *(v40 + 16) = v445;
    *(v40 + 24) = v41;
    v423 = swift_allocObject();
    *(v423 + 16) = 34;
    v424 = swift_allocObject();
    v406 = 8;
    *(v424 + 16) = 8;
    v42 = swift_allocObject();
    v43 = v403;
    v404 = v42;
    *(v42 + 16) = v446;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v404;
    v425 = v44;
    *(v44 + 16) = v447;
    *(v44 + 24) = v45;
    v426 = swift_allocObject();
    *(v426 + 16) = 32;
    v427 = swift_allocObject();
    *(v427 + 16) = v406;
    v46 = swift_allocObject();
    v47 = v409;
    v410 = v46;
    *(v46 + 16) = v448;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v410;
    v429 = v48;
    *(v48 + 16) = v449;
    *(v48 + 24) = v49;
    v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v428 = sub_1B0E46A48();
    v430 = v50;

    v51 = v411;
    v52 = v430;
    *v430 = v450;
    v52[1] = v51;

    v53 = v412;
    v54 = v430;
    v430[2] = v451;
    v54[3] = v53;

    v55 = v413;
    v56 = v430;
    v430[4] = v452;
    v56[5] = v55;

    v57 = v414;
    v58 = v430;
    v430[6] = v453;
    v58[7] = v57;

    v59 = v415;
    v60 = v430;
    v430[8] = v454;
    v60[9] = v59;

    v61 = v416;
    v62 = v430;
    v430[10] = v455;
    v62[11] = v61;

    v63 = v417;
    v64 = v430;
    v430[12] = v456;
    v64[13] = v63;

    v65 = v418;
    v66 = v430;
    v430[14] = v457;
    v66[15] = v65;

    v67 = v419;
    v68 = v430;
    v430[16] = v458;
    v68[17] = v67;

    v69 = v420;
    v70 = v430;
    v430[18] = v459;
    v70[19] = v69;

    v71 = v421;
    v72 = v430;
    v430[20] = v460;
    v72[21] = v71;

    v73 = v422;
    v74 = v430;
    v430[22] = v461;
    v74[23] = v73;

    v75 = v423;
    v76 = v430;
    v430[24] = v462;
    v76[25] = v75;

    v77 = v424;
    v78 = v430;
    v430[26] = v463;
    v78[27] = v77;

    v79 = v425;
    v80 = v430;
    v430[28] = v464;
    v80[29] = v79;

    v81 = v426;
    v82 = v430;
    v430[30] = v465;
    v82[31] = v81;

    v83 = v427;
    v84 = v430;
    v430[32] = v466;
    v84[33] = v83;

    v85 = v429;
    v86 = v430;
    v430[34] = v467;
    v86[35] = v85;
    sub_1B0394964();

    if (os_log_type_enabled(v432, v433))
    {
      v87 = v529;
      v379 = sub_1B0E45D78();
      v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v380 = sub_1B03949A8(0, v378, v378);
      v381 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v382 = &v558;
      v558 = v379;
      v383 = &v557;
      v557 = v380;
      v384 = &v556;
      v556 = v381;
      sub_1B0394A48(2, &v558);
      sub_1B0394A48(6, v382);
      v554 = v450;
      v555 = v411;
      sub_1B03949FC(&v554, v382, v383, v384);
      v385 = v87;
      if (v87)
      {

        __break(1u);
      }

      else
      {
        v554 = v451;
        v555 = v412;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v376 = 0;
        v554 = v452;
        v555 = v413;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v375 = 0;
        v554 = v453;
        v555 = v414;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v374 = 0;
        v554 = v454;
        v555 = v415;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v373 = 0;
        v554 = v455;
        v555 = v416;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v372 = 0;
        v554 = v456;
        v555 = v417;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v371 = 0;
        v554 = v457;
        v555 = v418;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v370 = 0;
        v554 = v458;
        v555 = v419;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v369 = 0;
        v554 = v459;
        v555 = v420;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v368 = 0;
        v554 = v460;
        v555 = v421;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v367 = 0;
        v554 = v461;
        v555 = v422;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v366 = 0;
        v554 = v462;
        v555 = v423;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v365 = 0;
        v554 = v463;
        v555 = v424;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v364 = 0;
        v554 = v464;
        v555 = v425;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v363 = 0;
        v554 = v465;
        v555 = v426;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v362 = 0;
        v554 = v466;
        v555 = v427;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v361 = 0;
        v554 = v467;
        v555 = v429;
        sub_1B03949FC(&v554, &v558, &v557, &v556);
        v360 = 0;
        _os_log_impl(&dword_1B0389000, v432, v433, "[%.*hhx-%.*X] Processing action %{public}s (%s).", v379, 0x2Bu);
        sub_1B03998A8(v380, 0, v378);
        sub_1B03998A8(v381, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v377 = v360;
      }
    }

    else
    {
      v88 = v529;

      v377 = v88;
    }

    v89 = v377;
    MEMORY[0x1E69E5920](v432);
    v355 = v532[1];
    v356 = v532 + 1;
    v355(v539, v531);
    v90 = sub_1B04020E0(v542, v541);
    v357 = v89;
    v358 = v90;
    v359 = v89;
    if (v89)
    {
      v151 = v535;
      v252 = v359;
      v244 = 0;
      v152 = v359;
      v570 = v252;
      v245 = &unk_1EB737000;
      sub_1B0394784(v434 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v545);
      v386(v151, v545, v531);
      sub_1B039480C(v545);

      sub_1B0394784(v434 + v245[314], v549);
      v153 = (v549 + *(v543 + 20));
      v246 = *v153;
      v247 = *(v153 + 1);
      sub_1B039480C(v549);

      v251 = 24;
      v268 = 7;
      v154 = swift_allocObject();
      v155 = v247;
      v254 = v154;
      *(v154 + 16) = v246;
      *(v154 + 20) = v155;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v156 = swift_allocObject();
      v157 = v247;
      v248 = v156;
      *(v156 + 16) = v246;
      *(v156 + 20) = v157;

      v267 = 32;
      v158 = swift_allocObject();
      v159 = v248;
      v259 = v158;
      *(v158 + 16) = v493;
      *(v158 + 24) = v159;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B03E14B4(v542);
      v249 = swift_allocObject();
      *(v249 + 16) = v542;

      v160 = swift_allocObject();
      v161 = v249;
      v261 = v160;
      *(v160 + 16) = v494;
      *(v160 + 24) = v161;

      v250 = swift_allocObject();
      *(v250 + 16) = v541;

      v162 = swift_allocObject();
      v163 = v250;
      v263 = v162;
      *(v162 + 16) = v495;
      *(v162 + 24) = v163;

      v164 = v252;
      v269 = swift_allocObject();
      *(v269 + 16) = v252;
      v294 = sub_1B0E43988();
      v295 = sub_1B0E458E8();
      v265 = 17;
      v271 = swift_allocObject();
      v256 = 16;
      *(v271 + 16) = 16;
      v272 = swift_allocObject();
      v258 = 4;
      *(v272 + 16) = 4;
      v165 = swift_allocObject();
      v253 = v165;
      *(v165 + 16) = v438;
      *(v165 + 24) = 0;
      v166 = swift_allocObject();
      v167 = v253;
      v273 = v166;
      *(v166 + 16) = v496;
      *(v166 + 24) = v167;
      v274 = swift_allocObject();
      *(v274 + 16) = 0;
      v275 = swift_allocObject();
      *(v275 + 16) = 1;
      v168 = swift_allocObject();
      v169 = v254;
      v255 = v168;
      *(v168 + 16) = v497;
      *(v168 + 24) = v169;
      v170 = swift_allocObject();
      v171 = v255;
      v276 = v170;
      *(v170 + 16) = v498;
      *(v170 + 24) = v171;
      v277 = swift_allocObject();
      *(v277 + 16) = v256;
      v278 = swift_allocObject();
      *(v278 + 16) = v258;
      v172 = swift_allocObject();
      v257 = v172;
      *(v172 + 16) = v442;
      *(v172 + 24) = 0;
      v173 = swift_allocObject();
      v174 = v257;
      v279 = v173;
      *(v173 + 16) = v499;
      *(v173 + 24) = v174;
      v280 = swift_allocObject();
      *(v280 + 16) = 0;
      v281 = swift_allocObject();
      *(v281 + 16) = v258;
      v175 = swift_allocObject();
      v176 = v259;
      v260 = v175;
      *(v175 + 16) = v500;
      *(v175 + 24) = v176;
      v177 = swift_allocObject();
      v178 = v260;
      v282 = v177;
      *(v177 + 16) = v501;
      *(v177 + 24) = v178;
      v283 = swift_allocObject();
      *(v283 + 16) = 34;
      v284 = swift_allocObject();
      v266 = 8;
      *(v284 + 16) = 8;
      v179 = swift_allocObject();
      v180 = v261;
      v262 = v179;
      *(v179 + 16) = v502;
      *(v179 + 24) = v180;
      v181 = swift_allocObject();
      v182 = v262;
      v285 = v181;
      *(v181 + 16) = v503;
      *(v181 + 24) = v182;
      v286 = swift_allocObject();
      *(v286 + 16) = 32;
      v287 = swift_allocObject();
      *(v287 + 16) = v266;
      v183 = swift_allocObject();
      v184 = v263;
      v264 = v183;
      *(v183 + 16) = v504;
      *(v183 + 24) = v184;
      v185 = swift_allocObject();
      v186 = v264;
      v288 = v185;
      *(v185 + 16) = v505;
      *(v185 + 24) = v186;
      v289 = swift_allocObject();
      *(v289 + 16) = 64;
      v290 = swift_allocObject();
      *(v290 + 16) = v266;
      v187 = swift_allocObject();
      v188 = v269;
      v270 = v187;
      *(v187 + 16) = v506;
      *(v187 + 24) = v188;
      v189 = swift_allocObject();
      v190 = v270;
      v292 = v189;
      *(v189 + 16) = v507;
      *(v189 + 24) = v190;
      v291 = sub_1B0E46A48();
      v293 = v191;

      v192 = v271;
      v193 = v293;
      *v293 = v508;
      v193[1] = v192;

      v194 = v272;
      v195 = v293;
      v293[2] = v509;
      v195[3] = v194;

      v196 = v273;
      v197 = v293;
      v293[4] = v510;
      v197[5] = v196;

      v198 = v274;
      v199 = v293;
      v293[6] = v511;
      v199[7] = v198;

      v200 = v275;
      v201 = v293;
      v293[8] = v512;
      v201[9] = v200;

      v202 = v276;
      v203 = v293;
      v293[10] = v513;
      v203[11] = v202;

      v204 = v277;
      v205 = v293;
      v293[12] = v514;
      v205[13] = v204;

      v206 = v278;
      v207 = v293;
      v293[14] = v515;
      v207[15] = v206;

      v208 = v279;
      v209 = v293;
      v293[16] = v516;
      v209[17] = v208;

      v210 = v280;
      v211 = v293;
      v293[18] = v517;
      v211[19] = v210;

      v212 = v281;
      v213 = v293;
      v293[20] = v518;
      v213[21] = v212;

      v214 = v282;
      v215 = v293;
      v293[22] = v519;
      v215[23] = v214;

      v216 = v283;
      v217 = v293;
      v293[24] = v520;
      v217[25] = v216;

      v218 = v284;
      v219 = v293;
      v293[26] = v521;
      v219[27] = v218;

      v220 = v285;
      v221 = v293;
      v293[28] = v522;
      v221[29] = v220;

      v222 = v286;
      v223 = v293;
      v293[30] = v523;
      v223[31] = v222;

      v224 = v287;
      v225 = v293;
      v293[32] = v524;
      v225[33] = v224;

      v226 = v288;
      v227 = v293;
      v293[34] = v525;
      v227[35] = v226;

      v228 = v289;
      v229 = v293;
      v293[36] = v526;
      v229[37] = v228;

      v230 = v290;
      v231 = v293;
      v293[38] = v527;
      v231[39] = v230;

      v232 = v292;
      v233 = v293;
      v293[40] = v528;
      v233[41] = v232;
      sub_1B0394964();

      if (os_log_type_enabled(v294, v295))
      {
        v234 = v244;
        v237 = sub_1B0E45D78();
        v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v238 = sub_1B03949A8(1, v236, v236);
        v239 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v240 = &v569;
        v569 = v237;
        v241 = &v568;
        v568 = v238;
        v242 = &v567;
        v567 = v239;
        sub_1B0394A48(2, &v569);
        sub_1B0394A48(7, v240);
        v565 = v508;
        v566 = v271;
        sub_1B03949FC(&v565, v240, v241, v242);
        v243 = v234;
        if (v234)
        {

          __break(1u);
        }

        else
        {
          v565 = v509;
          v566 = v272;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[18] = 0;
          v565 = v510;
          v566 = v273;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[17] = 0;
          v565 = v511;
          v566 = v274;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[16] = 0;
          v565 = v512;
          v566 = v275;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[15] = 0;
          v565 = v513;
          v566 = v276;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[14] = 0;
          v565 = v514;
          v566 = v277;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[13] = 0;
          v565 = v515;
          v566 = v278;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[12] = 0;
          v565 = v516;
          v566 = v279;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[11] = 0;
          v565 = v517;
          v566 = v280;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[10] = 0;
          v565 = v518;
          v566 = v281;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[9] = 0;
          v565 = v519;
          v566 = v282;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[8] = 0;
          v565 = v520;
          v566 = v283;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[7] = 0;
          v565 = v521;
          v566 = v284;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[6] = 0;
          v565 = v522;
          v566 = v285;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[5] = 0;
          v565 = v523;
          v566 = v286;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[4] = 0;
          v565 = v524;
          v566 = v287;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[3] = 0;
          v565 = v525;
          v566 = v288;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[2] = 0;
          v565 = v526;
          v566 = v289;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[1] = 0;
          v565 = v527;
          v566 = v290;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          v235[0] = 0;
          v565 = v528;
          v566 = v292;
          sub_1B03949FC(&v565, &v569, &v568, &v567);
          _os_log_impl(&dword_1B0389000, v294, v295, "[%.*hhx-%.*X] Action %{public}s (%s) failed: %@", v237, 0x35u);
          sub_1B03998A8(v238, 1, v236);
          sub_1B03998A8(v239, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v294);
      v355(v535, v531);
      sub_1B04179E0(v541);
    }

    else
    {
      v564 = v358 & 1;
      if (v358)
      {
        v91 = v537;
        v317 = &unk_1EB737000;
        sub_1B0394784(v434 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v547);
        v386(v91, v547, v531);
        sub_1B039480C(v547);

        sub_1B0394784(v434 + v317[314], v549);
        v92 = (v549 + *(v543 + 20));
        v319 = *v92;
        v320 = *(v92 + 1);
        sub_1B039480C(v549);

        v318 = 24;
        v333 = 7;
        v93 = swift_allocObject();
        v94 = v320;
        v324 = v93;
        *(v93 + 16) = v319;
        *(v93 + 20) = v94;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v95 = swift_allocObject();
        v96 = v320;
        v321 = v95;
        *(v95 + 16) = v319;
        *(v95 + 20) = v96;

        v332 = 32;
        v97 = swift_allocObject();
        v98 = v321;
        v329 = v97;
        *(v97 + 16) = v468;
        *(v97 + 24) = v98;
        sub_1B0394868();
        sub_1B0394868();

        v322 = swift_allocObject();
        *(v322 + 16) = v541;

        v99 = swift_allocObject();
        v100 = v322;
        v334 = v99;
        *(v99 + 16) = v469;
        *(v99 + 24) = v100;

        v353 = sub_1B0E43988();
        v354 = sub_1B0E458D8();
        v331 = 17;
        v336 = swift_allocObject();
        v326 = 16;
        *(v336 + 16) = 16;
        v337 = swift_allocObject();
        v328 = 4;
        *(v337 + 16) = 4;
        v101 = swift_allocObject();
        v323 = v101;
        *(v101 + 16) = v438;
        *(v101 + 24) = 0;
        v102 = swift_allocObject();
        v103 = v323;
        v338 = v102;
        *(v102 + 16) = v470;
        *(v102 + 24) = v103;
        v339 = swift_allocObject();
        *(v339 + 16) = 0;
        v340 = swift_allocObject();
        *(v340 + 16) = 1;
        v104 = swift_allocObject();
        v105 = v324;
        v325 = v104;
        *(v104 + 16) = v471;
        *(v104 + 24) = v105;
        v106 = swift_allocObject();
        v107 = v325;
        v341 = v106;
        *(v106 + 16) = v472;
        *(v106 + 24) = v107;
        v342 = swift_allocObject();
        *(v342 + 16) = v326;
        v343 = swift_allocObject();
        *(v343 + 16) = v328;
        v108 = swift_allocObject();
        v327 = v108;
        *(v108 + 16) = v442;
        *(v108 + 24) = 0;
        v109 = swift_allocObject();
        v110 = v327;
        v344 = v109;
        *(v109 + 16) = v473;
        *(v109 + 24) = v110;
        v345 = swift_allocObject();
        *(v345 + 16) = 0;
        v346 = swift_allocObject();
        *(v346 + 16) = v328;
        v111 = swift_allocObject();
        v112 = v329;
        v330 = v111;
        *(v111 + 16) = v474;
        *(v111 + 24) = v112;
        v113 = swift_allocObject();
        v114 = v330;
        v347 = v113;
        *(v113 + 16) = v475;
        *(v113 + 24) = v114;
        v348 = swift_allocObject();
        *(v348 + 16) = 32;
        v349 = swift_allocObject();
        *(v349 + 16) = 8;
        v115 = swift_allocObject();
        v116 = v334;
        v335 = v115;
        *(v115 + 16) = v476;
        *(v115 + 24) = v116;
        v117 = swift_allocObject();
        v118 = v335;
        v351 = v117;
        *(v117 + 16) = v477;
        *(v117 + 24) = v118;
        v350 = sub_1B0E46A48();
        v352 = v119;

        v120 = v336;
        v121 = v352;
        *v352 = v478;
        v121[1] = v120;

        v122 = v337;
        v123 = v352;
        v352[2] = v479;
        v123[3] = v122;

        v124 = v338;
        v125 = v352;
        v352[4] = v480;
        v125[5] = v124;

        v126 = v339;
        v127 = v352;
        v352[6] = v481;
        v127[7] = v126;

        v128 = v340;
        v129 = v352;
        v352[8] = v482;
        v129[9] = v128;

        v130 = v341;
        v131 = v352;
        v352[10] = v483;
        v131[11] = v130;

        v132 = v342;
        v133 = v352;
        v352[12] = v484;
        v133[13] = v132;

        v134 = v343;
        v135 = v352;
        v352[14] = v485;
        v135[15] = v134;

        v136 = v344;
        v137 = v352;
        v352[16] = v486;
        v137[17] = v136;

        v138 = v345;
        v139 = v352;
        v352[18] = v487;
        v139[19] = v138;

        v140 = v346;
        v141 = v352;
        v352[20] = v488;
        v141[21] = v140;

        v142 = v347;
        v143 = v352;
        v352[22] = v489;
        v143[23] = v142;

        v144 = v348;
        v145 = v352;
        v352[24] = v490;
        v145[25] = v144;

        v146 = v349;
        v147 = v352;
        v352[26] = v491;
        v147[27] = v146;

        v148 = v351;
        v149 = v352;
        v352[28] = v492;
        v149[29] = v148;
        sub_1B0394964();

        if (os_log_type_enabled(v353, v354))
        {
          v150 = v357;
          v310 = sub_1B0E45D78();
          v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v311 = sub_1B03949A8(0, v309, v309);
          v312 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v313 = &v563;
          v563 = v310;
          v314 = &v562;
          v562 = v311;
          v315 = &v561;
          v561 = v312;
          sub_1B0394A48(2, &v563);
          sub_1B0394A48(5, v313);
          v559 = v478;
          v560 = v336;
          sub_1B03949FC(&v559, v313, v314, v315);
          v316 = v150;
          if (v150)
          {

            __break(1u);
          }

          else
          {
            v559 = v479;
            v560 = v337;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v308 = 0;
            v559 = v480;
            v560 = v338;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v307 = 0;
            v559 = v481;
            v560 = v339;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v306 = 0;
            v559 = v482;
            v560 = v340;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v305 = 0;
            v559 = v483;
            v560 = v341;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v304 = 0;
            v559 = v484;
            v560 = v342;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v303 = 0;
            v559 = v485;
            v560 = v343;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v302 = 0;
            v559 = v486;
            v560 = v344;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v301 = 0;
            v559 = v487;
            v560 = v345;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v300 = 0;
            v559 = v488;
            v560 = v346;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v299 = 0;
            v559 = v489;
            v560 = v347;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v298 = 0;
            v559 = v490;
            v560 = v348;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v297 = 0;
            v559 = v491;
            v560 = v349;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            v296 = 0;
            v559 = v492;
            v560 = v351;
            sub_1B03949FC(&v559, &v563, &v562, &v561);
            _os_log_impl(&dword_1B0389000, v353, v354, "[%.*hhx-%.*X] Action %s will complete asynchronously.", v310, 0x21u);
            sub_1B03998A8(v311, 0, v309);
            sub_1B03998A8(v312, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v353);
        v355(v537, v531);
      }

      else
      {
        sub_1B04179E0(v541);
      }
    }
  }
}

void clearMailboxUIDCache()
{
  v0 = +[MailAccount log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    clearMailboxUIDCache_cold_1();
  }

  v1 = cachedMailboxUIDs();
  [v1 removeAllObjects];
}

uint64_t __cachedMailboxUIDs_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = cachedMailboxUIDs_cache;
  cachedMailboxUIDs_cache = v0;

  [cachedMailboxUIDs_cache setName:@"MailAccount.cachedMailboxUIDs"];
  v2 = cachedMailboxUIDs_cache;

  return [v2 setCountLimit:21];
}

void sub_1B03E9280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t MFCompareMailboxUids(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 == v6)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = [v5 mailboxType];
  v9 = [v7 mailboxType];
  if (v8 && !v9)
  {
    goto LABEL_6;
  }

  if (v9 && !v8)
  {
    goto LABEL_10;
  }

  if (v8 < v9)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_11;
  }

  if (v8 > v9)
  {
LABEL_10:
    v10 = -1;
    goto LABEL_11;
  }

  if (!a3 || (v5[136] & 0x10) != 0 || (v7[136] & 0x10) != 0)
  {
    v17 = [v5 account];
    if (v17)
    {
      [v5 displayName];
    }

    else
    {
      [(MFMailboxUid *)v5 pathComponent];
    }
    v14 = ;

    v12 = [v7 account];
    if (v12)
    {
      [v7 displayName];
    }

    else
    {
      [(MFMailboxUid *)v7 pathComponent];
    }
    v16 = ;
  }

  else
  {
    v12 = a3;
    v13 = [(MFMailboxUid *)v5 pathComponent];
    v14 = [v12 _pathComponentForUidName:v13];

    v15 = [(MFMailboxUid *)v7 pathComponent];
    v16 = [v12 _pathComponentForUidName:v15];
  }

  if (v14 == v16)
  {
    v10 = 0;
  }

  else if (v14)
  {
    if (v16)
    {
      v18 = [v14 length];
      v19 = [MEMORY[0x1E695DF58] currentLocale];
      v10 = [v14 compare:v16 options:65 range:0 locale:{v18, v19}];

      if (!v10)
      {
        v20 = [v14 length];
        v21 = [MEMORY[0x1E695DF58] currentLocale];
        v10 = [v14 compare:v16 options:64 range:0 locale:{v20, v21}];
      }
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_11:
  return v10;
}

void sub_1B03E96AC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id _MFChildWithPredicate(void *a1, unsigned int (*a2)(void *, uint64_t), uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  [v5 mf_lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5[6];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (a2(v10, a3))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v5 mf_unlock];

  return v7;
}

uint64_t mailboxHasName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(MFMailboxUid *)a1 pathComponent];
  v5 = [v4 isEqual:v3];

  return v5;
}

uint64_t mailboxHasExtraAttribute(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 extraAttributes];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t sub_1B03E9BB4()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 16);
  *v9 = v10;
  v11 = *MEMORY[0x1E69E8020];
  v12 = *(v6 + 104);
  v12(v9, *MEMORY[0x1E69E8020], v5, v7);
  v35 = v10;
  LOBYTE(v10) = sub_1B0E44488();
  v36 = *(v6 + 8);
  result = v36(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v34 = v12;
  swift_beginAccess();
  StateWithTasks.failOldBackgroundSyncRequests()();
  v15 = v14;
  swift_endAccess();
  if (!*(v15 + 16))
  {
  }

  v33 = v11;
  v16 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v4, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E43988();
  v18 = sub_1B0E439A8();
  (*(*(v18 - 8) + 8))(v4, v18);
  v19 = sub_1B0E45908();
  if (os_log_type_enabled(v17, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v6 + 104;
    v21 = v20;
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v21 = 68158466;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    *(v21 + 10) = *(v16 + *(v2 + 20));

    *(v21 + 11) = 2048;
    *(v21 + 13) = *(v15 + 16);

    *(v21 + 21) = 2082;
    v22 = sub_1B0B88A40(v15);
    v24 = v23;

    v25 = sub_1B0399D64(v22, v24, v37);

    *(v21 + 23) = v25;
    _os_log_impl(&dword_1B0389000, v17, v19, "[%.*hhx] Connections stalled. Failed %ld background sync request(s): %{public}s.", v21, 0x1Fu);
    v26 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1B272C230](v26, -1, -1);
    MEMORY[0x1B272C230](v21, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v27 = v34;
  v28 = v35;
  *v9 = v35;
  v27(v9, v33, v5);
  v29 = v28;
  LOBYTE(v28) = sub_1B0E44488();
  result = v36(v9, v5);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B038DED0(&unk_1F2721108);
  return sub_1B0425738(&unk_1F2721128);
}

void StateWithTasks.failOldBackgroundSyncRequests()()
{
  v0 = static MonotonicTime.now()();

  sub_1B03EA86C(v0);
}

id _stringByAppendingPathComponentsUsingSpecialDisplayNames(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v37 = a5;
  v38 = a6;
  if (!v15)
  {
    v15 = [v13 topMailbox];
  }

  v17 = v13;
  v18 = v17;
  v19 = v15 == v17 || v17 == 0;
  v20 = v19;
  v21 = v17;
  if (v19)
  {
    goto LABEL_14;
  }

  v22 = v17;
  do
  {
    v21 = [v22 parent];

    if (v15 == v21)
    {
      break;
    }

    v22 = v21;
  }

  while (v21);
  if (v20)
  {
LABEL_14:
    v23 = v16;
    goto LABEL_48;
  }

  v35 = v13;
  if (v16)
  {
    v24 = [v16 mutableCopyWithZone:{0, v13}];
  }

  else
  {
    v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  v23 = v24;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v14)
  {
    v26 = [v18 mailboxType];
    if (v37)
    {
      if (v26 != 7 && [v37 length] && (objc_msgSend(v18, "isShared") & 1) == 0)
      {
        if (v16 && [v16 length])
        {
          [v23 appendString:@"/"];
        }

        [v23 appendString:{v37, v35}];
      }
    }
  }

  v27 = v18;

  v36 = v27;
  do
  {
    v28 = [v14 persistentNameForMailbox:{v27, v35}];
    if (v28)
    {
      if (v14)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (a7)
      {
        [v27 displayNameUsingSpecialNames];
      }

      else
      {
        [v27 name];
      }
      v28 = ;
      if (v14)
      {
LABEL_30:
        v29 = [v14 _pathComponentForUidName:v28];

        v28 = v29;
        if (!v29)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }

    if (!v28)
    {
LABEL_31:
      v30 = 0;
      goto LABEL_38;
    }

LABEL_37:
    v30 = [v28 ef_sanitizedFileName];

    [v25 addObject:v30];
LABEL_38:

    v21 = [v27 parent];

    v27 = v21;
  }

  while (v21 != v15);
  v31 = [v25 count];
  if (v31)
  {
    v32 = v31 - 1;
    do
    {
      if ([v23 length])
      {
        [v23 appendString:@"/"];
      }

      v33 = [v25 objectAtIndexedSubscript:v32];
      [v23 appendString:v33];

      --v32;
    }

    while (v32 != -1);
  }

  if (v38 && [v36 isStore])
  {
    [v23 appendString:@"."];
    [v23 appendString:v38];
  }

LABEL_48:

  return v23;
}

void sub_1B03EA86C(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B0B94CF8;
  *(v5 + 24) = v4;
  swift_getKeyPath();
  v6 = sub_1B03ABAA0();
  swift_bridgeObjectRetain_n();

  v7 = 0;
  v50 = MEMORY[0x1B2727570](0, &type metadata for SyncRequest.ID, v6);
  v8 = v3;
  v10 = v3 + 64;
  v9 = *(v3 + 64);
  v11 = -1 << *(v3 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v45 = v8;
  while (v13)
  {
LABEL_11:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v7 << 6);
    v18 = *(v8 + 56) + 32 * v17;
    if ((*v18 & 0xFE) == 2)
    {
      v19 = *(*(v8 + 48) + 4 * v17);
      v20 = *(v18 + 24);
      if (v20 <= a1)
      {
        v21 = a1 - v20;
        if (__OFSUB__(a1, v20))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (__OFSUB__(v20, a1))
        {
          goto LABEL_48;
        }

        v21 = a1 - v20;
        if (__OFSUB__(0, v20 - a1))
        {
          goto LABEL_49;
        }
      }

      if (v21 / 1000000000.0 > 60.0)
      {
        sub_1B03FF318(v49, v19);
        v8 = v45;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v15 >= ((63 - v11) >> 6))
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v14;
    if (v13)
    {
      v7 = v15;
      goto LABEL_11;
    }
  }

  sub_1B03D91F8(v8);

  v22 = v50;
  v23 = v50 + 56;
  v24 = 1 << *(v50 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v50 + 56);
  v27 = (v24 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = 0;
  v29 = v46;
  v44 = v22;
  while (v26)
  {
LABEL_30:
    v32 = *(*(v22 + 48) + ((v28 << 8) | (4 * __clz(__rbit64(v26)))));
    v33 = *(v29 + 168);
    v48 = *(v29 + 176);
    v34 = *(v29 + 184);
    v47 = *(v29 + 192);
    if (v47)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = v33;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = *(v33 + 16);
        if (v36)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v35 = sub_1B03D0E54(v33);
        v36 = *(v35 + 2);
        if (v36)
        {
LABEL_33:
          v37 = 0;
          v38 = v35 + 168;
          while (v37 < v36)
          {
            sub_1B0B92A00(v32, sub_1B0B070B4);
            ++v37;
            v36 = *(v35 + 2);
            v38 += 176;
            if (v37 == v36)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_45;
        }
      }

LABEL_36:
      sub_1B03BB638(v33, v48, v34, 1);
      v30 = 0;
      v34 = 0;
      v33 = v35;
      v29 = v46;
      v22 = v44;
    }

    else
    {
      v39 = sub_1B03FE284(v32);
      if (v40)
      {
        v41 = v39;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v33;
        v43 = v33;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B0B8E628();
          v43 = v50;
        }

        sub_1B0B907A4(v41, v43);
        v30 = v48;
        sub_1B03BB638(v33, v48, v34, 0);
        v33 = v43;
      }

      else
      {
        v30 = v48;
      }
    }

    v26 &= v26 - 1;
    *(v29 + 168) = v33;
    *(v29 + 176) = v30;
    *(v29 + 184) = v34;
    *(v29 + 192) = v47;
  }

  while (1)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v31 >= v27)
    {

      return;
    }

    v26 = *(v23 + 8 * v31);
    ++v28;
    if (v26)
    {
      v28 = v31;
      goto LABEL_30;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_1B03EACD0()
{

  return swift_deallocObject();
}

void sub_1B03EAE7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFPersistenceDatabaseConnection_iOS;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id _stringByAppendingPathComponents(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(a1, a2, a3, a4, a5, a6, 0);

  return v6;
}

void __receivingEmailAddressesCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E699B7E0]);
  v1 = receivingEmailAddressesCache__receivingEmailAddressesCache;
  receivingEmailAddressesCache__receivingEmailAddressesCache = v0;
}

id MFCriterionExpressionForDate(void *a1)
{
  [a1 timeIntervalSince1970];
  v2 = v1;
  __y = NAN;
  modf(v1, &__y);
  if (__y == v2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", __y, __y];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", __y, *&v2];
  }
  v3 = ;

  return v3;
}

id MFMailDirectory()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = MFMailDirectory___MailDir;
  if (!MFMailDirectory___MailDir)
  {
    v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
    v2 = [v1 stringByAppendingPathComponent:@"Mail"];
    v3 = MFMailDirectory___MailDir;
    MFMailDirectory___MailDir = v2;

    v4 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v4 fileExistsAtPath:MFMailDirectory___MailDir] & 1) == 0 && objc_msgSend(v4, "mf_makeCompletePath:mode:", MFMailDirectory___MailDir, 448))
    {
      v5 = open([MFMailDirectory___MailDir fileSystemRepresentation], 0);
      v6 = v5;
      if (v5 < 0)
      {
        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v11 = MFMailDirectory___MailDir;
          _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Could not open fd for %@", buf, 0xCu);
        }
      }

      else
      {
        if (fcntl(v5, 64, 4))
        {
          v7 = MFLogGeneral();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v11 = MFMailDirectory___MailDir;
            _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Could not set protection class on %@", buf, 0xCu);
          }
        }

        close(v6);
      }
    }

    v0 = MFMailDirectory___MailDir;
  }

  return v0;
}

id MFLookupLocalizedString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Message";
  }

  v9 = MFMessageFrameworkBundle();
  v10 = [v9 localizedStringForKey:v5 value:v6 table:v8];

  return v10;
}

id MFMessageFrameworkBundle()
{
  v0 = sMessageFrameworkBundle;
  if (!sMessageFrameworkBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Message"];
    v2 = sMessageFrameworkBundle;
    sMessageFrameworkBundle = v1;

    v0 = sMessageFrameworkBundle;
  }

  return v0;
}

uint64_t _storeOnServerForTuple(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = v3;
    v8 = v5;
    v9 = [v7 _objectForAccountInfoKey:v8];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = NSBOOLFromString();
LABEL_9:
        v6 = v10;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 BOOLValue];
        goto LABEL_9;
      }
    }

    else
    {
      [v7 mf_lock];
      v11 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      [v7 setAccountProperty:v11 forKey:v8];

      [v7 mf_unlock];
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

BOOL _IsWiFiEnabled(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"AllowEnable");
  if (Value && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(Value)))
  {
    v4 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v4 = *MEMORY[0x1E695E4D0] == Value;
  }

  SCPreferencesSynchronize(a1);
  return v4;
}

id _MFDescendantWithPredicate(void *a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3)
{
  v5 = a1;
  [v5 mf_lock];
  v6 = [v5 depthFirstEnumerator];
  v7 = 0;
  do
  {
    v8 = [v6 nextObject];

    if (!v8)
    {
      break;
    }

    v7 = v8;
  }

  while ((a2(v8, a3) & 1) == 0);
  [v5 mf_unlock];

  return v8;
}

uint64_t ECMailboxTypeFromMailboxUidType(uint64_t a1)
{
  result = -500;
  if (a1 > 6)
  {
    if (a1 > 101)
    {
      if (a1 > 103)
      {
        if (a1 != 104)
        {
          if (a1 != 105)
          {
            if (a1 != 106)
            {
              return result;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      if (a1 != 102)
      {
        return 3;
      }

      return 2;
    }

    if (a1 <= 99)
    {
      if (a1 != 7)
      {
        if (a1 == 8)
        {
          return 8;
        }

        return result;
      }

      return 7;
    }

    if (a1 == 100)
    {
      return 7;
    }

    return 1;
  }

  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 != 5)
      {
        return 6;
      }

      return 5;
    }

    if (a1 != 3)
    {
      return 4;
    }

    return 3;
  }

  if (a1 > 0)
  {
    if (a1 != 1)
    {
      return 2;
    }

    return 1;
  }

  if (a1)
  {
    v3 = -500;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == -100)
  {
    return -100;
  }

  else
  {
    return v3;
  }
}

void _DisposeICUSQLiteContext(void *a1)
{
  if (a1)
  {
    usearch_close();
    CPICUReleaseSearchCollator();
    v2 = a1[22];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[24];
    if (v3 && v3 != a1 + 25)
    {
      free(v3);
    }

    v4 = a1[20];
    if (v4 && v4 != a1 + 4)
    {
      free(v4);
    }

    free(a1);
  }
}

void sub_1B03EDD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_1B03EE50C()
{
  v2 = qword_1EB6DAC90;
  if (!qword_1EB6DAC90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAC90);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1B03EE580(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v46 = 0;
  v47 = 0;
  v36 = sub_1B0E439A8();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v11 - v39;
  v53 = v3;
  v51 = v4;
  v52 = v5;
  v41 = (v3 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  v42 = v49;
  swift_beginAccess();
  v43 = *v41;
  v44 = v41[1];
  sub_1B03EEAD0(v43, v44);
  swift_endAccess();
  v48[0] = v43;
  v48[1] = v44;
  v32 = v44 == 0;
  v31 = v32;
  sub_1B03EEB18(v48);
  if (!v31)
  {
LABEL_8:
    v16 = v35 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor;
    swift_beginAccess();
    if (*(v16 + 8))
    {
      v14 = *(v16 + 8);

      swift_endAccess();
      v15 = v14;
    }

    else
    {
      swift_endAccess();
      v15 = 0;
    }

    v13 = v15;

    v50 = v13;
    v17 = v13;
    goto LABEL_12;
  }

  v27 = *(v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor);
  v26 = *(v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor + 8);

  v29 = *(v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_workloop);
  MEMORY[0x1E69E5928](v29);
  (*(v37 + 16))(v40, v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v36);
  v28 = v27(v29, v40);
  v30 = v6;
  (*(v37 + 8))(v40, v36);
  MEMORY[0x1E69E5920](v29);
  if (!v30)
  {

    goto LABEL_8;
  }

  v24 = v28;
  v25 = v30;
  v22 = v30;
  v23 = v28;
  v46 = v28;
  v47 = v30;

  v20 = (v35 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  v21 = v45;
  swift_beginAccess();
  v7 = v20;
  v8 = v22;
  v9 = *v20;
  v10 = v20[1];
  *v20 = v23;
  v7[1] = v8;
  sub_1B0A5E460(v9, v10);
  swift_endAccess();

  if (v23)
  {
    v19 = v23;
    v18 = v23;
    Engine.start()();
  }

  v50 = v22;

  v17 = v22;
LABEL_12:
  v12 = v17;

  v34(v12);

  sub_1B0391AD4(&v50);
}

uint64_t sub_1B03EEAD0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

void *sub_1B03EEB18(void *a1)
{
  if (a1[1])
  {
  }

  return a1;
}

uint64_t sub_1B03EEB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v43 = a1;
  v37 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v25 = sub_1B03F0000;
  v26 = sub_1B0A5F3F0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v44 = 0;
  v27 = 0;
  v28 = sub_1B0E44238();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = v22 - v31;
  v38 = sub_1B0E44288();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v42 = v22 - v41;
  v57 = v6;
  v56 = v7;
  v54 = v8;
  v55 = v9;
  v53 = v10;
  v52 = v11;

  if (v43)
  {
    v24 = v43;
    v22[1] = v43;
    v44 = v43;
    MEMORY[0x1E69E5928](v37);

    v15 = swift_allocObject();
    v16 = v33;
    v17 = v34;
    v18 = v36;
    v19 = v25;
    v20 = v15;
    LODWORD(v15) = v35;
    v22[0] = v20;
    v20[2] = v37;
    v20[3] = v16;
    v20[4] = v17;
    sub_1B03EEF98(v15, v18, v19, v20);
  }

  else
  {

    v12 = swift_allocObject();
    v13 = v34;
    v14 = v26;
    *(v12 + 16) = v33;
    *(v12 + 24) = v13;
    v50 = v14;
    v51 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = 0;
    v48 = sub_1B038C908;
    v49 = &block_descriptor_756;
    v23 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v42, v32, v23);
    (*(v29 + 8))(v32, v28);
    (*(v39 + 8))(v42, v38);
    _Block_release(v23);
  }
}

uint64_t sub_1B03EEF48()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B03EEF98(unsigned int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v58 = a1;
  v57 = a2;
  v54 = a3;
  v55 = a4;
  v56 = 0;
  v45 = sub_1B0A1AB44;
  v46 = sub_1B03F186C;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v77 = 0;
  v47 = 0;
  v48 = 0;
  v49 = sub_1B0E44238();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = v20 - v52;
  v59 = sub_1B0E44288();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v63 = v20 - v62;
  v94 = v5;
  v93 = v6;
  v91 = v7;
  v92 = v8;
  v90 = v4;
  v64 = v89;
  swift_beginAccess();
  v65 = *(v4 + 72);
  swift_endAccess();
  if (v65 & 1) != 0 || (v88[1] = v58, v43 = v88, v88[0] = 0x10000, v42 = type metadata accessor for EMFetchOption(0), sub_1B03EFA1C(), (sub_1B0E46F78()))
  {
    sub_1B03F7C00(v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34D0, &qword_1B0EA1F88);
    v20[0] = 0;
    v20[3] = sub_1B0E46A48();
    v20[1] = sub_1B03EE50C();
    v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    sub_1B03EFF80();
    v20[4] = sub_1B0E445D8();
    v54();
  }

  v41 = sub_1B03EFC84(v58);
  if (v41 == 5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34D0, &qword_1B0EA1F88);
    v20[5] = 0;
    v20[8] = sub_1B0E46A48();
    v20[6] = sub_1B03EE50C();
    v20[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    sub_1B03EFF80();
    v20[9] = sub_1B0E445D8();
    v54();
  }

  v40 = v41;
  v38 = v41;
  v87 = v41;
  v39 = sub_1B03F1544();
  v86 = v39;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v57)
  {
    v37 = v57;
    v9 = v47;
    v66 = v57;

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    sub_1B06E35CC();
    v36 = sub_1B0E44F58();
    if (v9)
    {

      __break(1u);
      return result;
    }

    v33 = v36;

    sub_1B039E440(&v66);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v30 = v34;
  v85 = v34;
  v84 = sub_1B03F150C(v58 & 0xF00000);
  v31 = v84;
  v32 = BYTE4(v84);
  v82 = v84;
  v83 = BYTE4(v84) & 1;
  v78 = v84;
  v79 = BYTE4(v84) & 1;
  v80 = 12582912;
  v81 = 0;
  if ((v84 & 0x100000000) != 0)
  {
    v29 = 0;
  }

  else
  {
    v68[1] = v31;
    v69 = v32 & 1;
    v28 = v68;
    v68[0] = v31;
    v26 = &v67;
    v67 = v80;
    v27 = type metadata accessor for EMFetchOptionType(0);
    sub_1B03F1720();
    v29 = sub_1B0E44A28();
  }

  v22 = v29;
  v21 = 1;
  v77 = v29 & 1;
  v25 = *(v44 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v25);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v39);

  v10 = swift_allocObject();
  v11 = v38;
  v12 = v21;
  v13 = v22;
  v14 = v54;
  v15 = v55;
  v16 = v46;
  v17 = v30;
  v18 = v39;
  v23 = v10;
  *(v10 + 16) = v44;
  *(v10 + 24) = v11;
  *(v10 + 25) = v13 & v12;
  *(v10 + 32) = v17;
  *(v10 + 40) = v18;
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  v75 = v16;
  v76 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = 0;
  v73 = sub_1B038C908;
  v74 = &block_descriptor_692;
  v24 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v63, v53, v24);
  (*(v50 + 8))(v53, v49);
  (*(v60 + 8))(v63, v59);
  _Block_release(v24);

  MEMORY[0x1E69E5920](v25);

  return MEMORY[0x1E69E5920](v39);
}

uint64_t sub_1B03EF924()
{

  MEMORY[0x1E69E5920](*(v0 + 40));

  return swift_deallocObject();
}

unint64_t type metadata accessor for EMFetchOption(uint64_t a1)
{
  v5 = qword_1EB6DAC10;
  if (!qword_1EB6DAC10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAC10);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B03EFA1C()
{
  v2 = qword_1EB6DAC30;
  if (!qword_1EB6DAC30)
  {
    type metadata accessor for EMFetchOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03EFB74(uint64_t a1, uint64_t a2)
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FB8();
}

unint64_t sub_1B03EFC04()
{
  v2 = qword_1EB6DAC40;
  if (!qword_1EB6DAC40)
  {
    type metadata accessor for EMFetchOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03EFC84(int a1)
{
  type metadata accessor for EMFetchOption(0);
  sub_1B03EFF00();
  if (sub_1B0E44A28())
  {
    return 5;
  }

  sub_1B03EFA1C();
  if (sub_1B0E46F78())
  {
    return 4;
  }

  v1 = sub_1B03F150C(a1 & 0xF00000);
  if ((v1 & 0x100000000) == 0)
  {
    switch(v1)
    {
      case 0x100000:
      case 0x200000:
      case 0x300000:
        return 2;
      case 0x400000:
        return 0;
      case 0x500000:
      case 0x600000:
      case 0x700000:
        return 2;
      case 0x800000:
        return 1;
      case 0x900000:
        return 0;
    }

    if (v1 != 10485760)
    {
      if (v1 != 11534336)
      {
        if (v1 != 12582912)
        {
          return 0;
        }

        return 2;
      }

      return 0;
    }

    return 5;
  }

  return 0;
}

unint64_t sub_1B03EFF00()
{
  v2 = qword_1EB6DAC50;
  if (!qword_1EB6DAC50)
  {
    type metadata accessor for EMFetchOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03EFF80()
{
  v2 = qword_1EB6DAC80;
  if (!qword_1EB6DAC80)
  {
    sub_1B03EE50C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03F0010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v29 = a2;
  v27 = a3;
  v28 = a4;
  v41 = sub_1B0A5F460;
  v16 = sub_1B03F0980;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v35 = 0;
  v17 = sub_1B0E44238();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v13 - v20;
  v22 = sub_1B0E44288();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v26 = &v13 - v25;
  v30 = sub_1B0E43108();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v13 - v33;
  v57 = &v13 - v33;
  v56 = v4;
  v55 = v5;
  v53 = v6;
  v54 = v7;
  sub_1B0E43088();
  v36 = &v43;
  v44 = v34;
  v38 = sub_1B03EE50C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  v40 = sub_1B039A494();
  sub_1B03EFF80();
  v42 = sub_1B0E446E8();
  v15 = v42;
  v52 = v42;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = swift_allocObject();
  v9 = v28;
  v10 = v16;
  v11 = v15;
  v8[2] = v27;
  v8[3] = v9;
  v8[4] = v11;
  v50 = v10;
  v51 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = 0;
  v48 = sub_1B038C908;
  v49 = &block_descriptor_765;
  v14 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v26, v21, v14);
  (*(v18 + 8))(v21, v17);
  (*(v23 + 8))(v26, v22);
  _Block_release(v14);

  return (*(v31 + 8))(v34, v30);
}

uint64_t sub_1B03F04AC()
{

  return swift_deallocObject();
}

uint64_t sub_1B03F04F4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v13 = a2;
  v14 = sub_1B03EE570;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v16 = 0;
  v20 = sub_1B0E44238();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v11 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v11 - v11;
  v24 = sub_1B0E44288();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v23 = &v11 - v12;
  v36 = v3;
  v37 = v4;
  v35 = v2;
  v27 = *(v2 + OBJC_IVAR___MFSwiftIMAPTaskManager_queue);
  MEMORY[0x1E69E5928](v27);
  MEMORY[0x1E69E5928](v26);
  MEMORY[0x1E69E5928](v26);

  v5 = swift_allocObject();
  v6 = v13;
  v7 = v14;
  v8 = v5;
  v9 = v15;
  v8[2] = v26;
  v8[3] = v9;
  v8[4] = v6;
  v33 = v7;
  v34 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = 0;
  v31 = sub_1B038C908;
  v32 = &block_descriptor_261;
  v25 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v16, v23, v19, v25);
  (*(v17 + 8))(v19, v20);
  (*(v21 + 8))(v23, v24);
  _Block_release(v25);

  MEMORY[0x1E69E5920](v26);
  return MEMORY[0x1E69E5920](v27);
}

uint64_t sub_1B03F07C0()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B03F0810(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + OBJC_IVAR___MFSwiftIMAPTaskManager_callbackQueue);
  MEMORY[0x1E69E5928](v11);
  MEMORY[0x1E69E5928](v11);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v11;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  sub_1B03F04F4(sub_1B03EEB64, v10);

  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B03F0928()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B03F0990(uint64_t a1, uint64_t a2)
{
  sub_1B03EE50C();
  sub_1B039A494();
  sub_1B03EFF80();
  v4 = sub_1B0E44598();
  (*(a2 + 16))();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B03F0A1C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

void _MFFlushCurrentInvocation()
{
  v0 = *MEMORY[0x1E695E8E0];
  if (CFRunLoopRunInMode(*MEMORY[0x1E695E8E0], 0.0, 0) == kCFRunLoopRunTimedOut)
  {
    Current = CFRunLoopGetCurrent();
    if (CFRunLoopGetNextTimerFireDate(Current, v0) > 1.17549435e-38)
    {
      v2 = 0.001;
      do
      {
        if (CFRunLoopRunInMode(v0, v2, 0) != kCFRunLoopRunTimedOut)
        {
          break;
        }

        v2 = v2 + v2;
        v3 = CFRunLoopGetCurrent();
      }

      while (CFRunLoopGetNextTimerFireDate(v3, v0) > 1.17549435e-38 && v2 < 10.0);
    }
  }
}

uint64_t sub_1B03F150C(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

id sub_1B03F1544()
{
  v3 = *(v0 + 112);
  MEMORY[0x1E69E5928](v3);
  v4 = [v3 library];
  MEMORY[0x1E69E5920](v3);
  if (v4)
  {
    return v4;
  }

  sub_1B0E465A8();
  __break(1u);
  return v2;
}

unint64_t type metadata accessor for EMFetchOptionType(uint64_t a1)
{
  v5 = qword_1EB6DAB08;
  if (!qword_1EB6DAB08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB08);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B03F1720()
{
  v2 = qword_1EB6DAB18;
  if (!qword_1EB6DAB18)
  {
    type metadata accessor for EMFetchOptionType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAB18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03F17A0()
{
  v2 = qword_1EB6DAB10;
  if (!qword_1EB6DAB10)
  {
    type metadata accessor for EMFetchOptionType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAB10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03F1820@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1B03F1850(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B03F1890(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a5);

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 25) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a6;
  *(v15 + 56) = a7;
  sub_1B039A170(sub_1B03F1FA0, v15);
}

uint64_t sub_1B03F19C0()
{

  MEMORY[0x1E69E5920](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1B03F1A20@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v29 = v17 - v28;
  v35 = *(v8 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v31 = v17 - v30;
  v32 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v36 = v17 - v32;
  sub_1B039A874(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_1B03F1D5C(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4 & 1;
  v24[4] = a5;
  v24[3] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v23 = a5;
  v21 = sub_1B09C0614;
  v22 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3848, &qword_1B0EA2E58);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  sub_1B03F1A20(sub_1B0A1F490, v20, v18, MEMORY[0x1E69E73E0], v8, v19, v24);
  v11 = v24[0];

  MEMORY[0x1E69E5928](a6);

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a6;
  *(v10 + 32) = a7;
  *(v10 + 40) = a8;
  sub_1B03F1FC4(a3, a4 & 1, v11, sub_1B0A1F4C0, v10);
}

uint64_t sub_1B03F1F48()
{

  MEMORY[0x1E69E5920](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1B03F1FC4(unsigned int a1, int a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  v344 = a1;
  v343 = a2;
  v340 = a3;
  v341 = a4;
  v342 = a5;
  v274 = sub_1B09C1CDC;
  v275 = sub_1B0A1AD28;
  v276 = sub_1B039BBE8;
  v277 = sub_1B03F7AE0;
  v278 = sub_1B03FB510;
  v279 = sub_1B03FB664;
  v280 = sub_1B0394C30;
  v281 = sub_1B0394C24;
  v282 = sub_1B039BA2C;
  v283 = sub_1B039BA88;
  v284 = sub_1B039BB94;
  v285 = sub_1B0394C24;
  v286 = sub_1B039BBA0;
  v287 = sub_1B039BC08;
  v288 = sub_1B03F7B10;
  v289 = sub_1B039BC08;
  v290 = sub_1B03FB4F4;
  v291 = sub_1B039BCF8;
  v292 = sub_1B03FB670;
  v293 = sub_1B03B0DF8;
  v294 = sub_1B03FB774;
  v295 = sub_1B03B0DF8;
  v296 = sub_1B0398F5C;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0399178;
  v299 = sub_1B0398F5C;
  v300 = sub_1B0398F5C;
  v301 = sub_1B039BA94;
  v302 = sub_1B0398F5C;
  v303 = sub_1B0398F5C;
  v304 = sub_1B0399178;
  v305 = sub_1B0398F5C;
  v306 = sub_1B0398F5C;
  v307 = sub_1B03991EC;
  v308 = sub_1B0398F5C;
  v309 = sub_1B0398F5C;
  v310 = sub_1B03991EC;
  v311 = sub_1B0398F5C;
  v312 = sub_1B0398F5C;
  v313 = sub_1B039BCEC;
  v314 = sub_1B0398F5C;
  v315 = sub_1B0398F5C;
  v316 = sub_1B0399260;
  v317 = sub_1B0398F5C;
  v318 = sub_1B0398F5C;
  v319 = sub_1B0399260;
  v320 = "Fatal error";
  v321 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v322 = "Message/PersistenceAdaptor.swift";
  v378 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v373 = 0;
  v374 = 0;
  v372 = 0;
  v323 = 0;
  v368 = 0;
  v366 = 0;
  v363 = 0;
  v364 = 0;
  v365 = 0;
  v360 = 0;
  v359 = 0;
  v329 = 0;
  v324 = sub_1B0E439A8();
  v325 = *(v324 - 8);
  v326 = v324 - 8;
  v327 = (*(v325 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v328 = v139 - v327;
  v330 = _s6LoggerVMa(v6);
  v331 = *(v330 - 8);
  v332 = v331;
  v333 = *(v331 + 64);
  v334 = (v333 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v329);
  v335 = v139 - v334;
  v336 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v337 = v139 - v336;
  v338 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v339 = v139 - v338;
  v378 = v139 - v338;
  v349 = sub_1B0E44468();
  v347 = *(v349 - 8);
  v348 = v349 - 8;
  v345 = (*(v347 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v344);
  v350 = (v139 - v345);
  v377 = v11;
  v376 = v12 & 1;
  v375 = v13;
  v373 = v14;
  v374 = v15;
  v372 = v5;

  v346 = *(v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v346);
  v16 = v347;
  *v350 = v346;
  (*(v16 + 104))();
  v351 = sub_1B0E44488();
  (*(v347 + 8))(v350, v349);
  result = v351;
  if (v351)
  {

    v271 = &v371;
    swift_beginAccess();
    v272 = *(v273 + 72);
    swift_endAccess();
    if (v272)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
      v139[1] = sub_1B0E46A48();
      v139[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0417568();
      v139[2] = sub_1B0E445D8();
      v341();

      return SyncRequest.ID.init()();
    }

    v18 = v323;
    v369 = v340;
    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3518, &qword_1B0EA1FB0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
    result = sub_1B03F1A20(v274, 0, v268, MEMORY[0x1E69E73E0], v19, v269, &v370);
    v270 = v18;
    if (!v18)
    {
      v252 = v370;
      v368 = v370;
      v253 = sub_1B03F4C20();
      v258 = v20;
      sub_1B0394784(v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v339);
      v257 = *(v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
      MEMORY[0x1E69E5928](v257);
      v248 = 7;
      v256 = swift_allocObject();
      v246 = v256 + 16;

      v247 = v273;
      swift_weakInit();

      MEMORY[0x1E69E5928](v257);
      sub_1B0394784(v339, v337);

      v249 = (*(v332 + 80) + 24) & ~*(v332 + 80);
      v250 = (v249 + v333 + 7) & 0xFFFFFFFFFFFFFFF8;
      v251 = (v250 + 23) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v22 = v249;
      v23 = v21;
      v24 = v337;
      v255 = v23;
      *(v23 + 16) = v257;
      sub_1B03F4FD0(v24, v23 + v22);
      v25 = v342;
      v26 = v251;
      v27 = v255;
      v28 = v256;
      v29 = (v255 + v250);
      *v29 = v341;
      v29[1] = v25;
      *(v27 + v26) = v28;
      v254 = &v367;
      v264 = 0;
      swift_beginAccess();
      v30 = sub_1B039AA00();
      v262 = 1;
      v259 = sub_1B03F5058(v30, v344, v343 & 1, v252, v253, v258, v275, v255);
      v260 = v31;
      v261 = v32;
      v263 = v33;
      swift_endAccess();

      MEMORY[0x1E69E5920](v257);
      sub_1B039480C(v339);

      v366 = v259;
      LOBYTE(v363) = v260;
      v364 = v261;
      v365 = v263 & v262;
      v265 = (v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
      v266 = &v362;
      swift_beginAccess();
      v267 = *v265;

      swift_endAccess();
      if (v267)
      {
        v245 = v267;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v178 = v245;
      RestartableTimer.start()();
      v34 = v328;

      v179 = v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
      v180 = &v361;
      v211 = 32;
      swift_beginAccess();
      v182 = *v179;
      v181 = *(v179 + 8);
      v183 = *(v179 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v193 = sub_1B03F7A78(v182);
      v360 = v193;

      v184 = &unk_1EB737000;
      sub_1B0394784(v273 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v335);
      (*(v325 + 16))(v34, v335, v324);
      sub_1B039480C(v335);

      sub_1B0394784(v273 + v184[314], v339);
      v35 = (v339 + *(v330 + 20));
      v185 = *v35;
      v186 = *(v35 + 1);
      sub_1B039480C(v339);

      v215 = 24;
      v212 = 7;
      v36 = swift_allocObject();
      v37 = v186;
      v196 = v36;
      *(v36 + 16) = v185;
      *(v36 + 20) = v37;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v38 = swift_allocObject();
      v39 = v186;
      v187 = v38;
      *(v38 + 16) = v185;
      *(v38 + 20) = v39;

      v40 = swift_allocObject();
      v41 = v187;
      v200 = v40;
      *(v40 + 16) = v276;
      *(v40 + 24) = v41;
      sub_1B0394868();
      sub_1B0394868();

      v188 = swift_allocObject();
      *(v188 + 16) = v259;

      v42 = swift_allocObject();
      v43 = v188;
      v203 = v42;
      *(v42 + 16) = v277;
      *(v42 + 24) = v43;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v191 = 33;
      v44 = swift_allocObject();
      v45 = v261;
      v46 = v263;
      v190 = v44;
      *(v44 + 16) = v260;
      *(v44 + 24) = v45;
      v195 = 1;
      v192 = 1;
      *(v44 + 32) = v46 & 1;

      v47 = swift_allocObject();
      v48 = v190;
      v189 = v47;
      *(v47 + 16) = v278;
      *(v47 + 24) = v48;

      v49 = swift_allocObject();
      v50 = v189;
      v205 = v49;
      *(v49 + 16) = v279;
      *(v49 + 24) = v50;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = swift_allocObject();
      v52 = v261;
      v53 = v192;
      v54 = v263;
      v207 = v51;
      *(v51 + 16) = v260;
      *(v51 + 24) = v52;
      *(v51 + 32) = v54 & v53;
      v213 = swift_allocObject();
      *(v213 + 16) = v193;
      v243 = sub_1B0E43988();
      v244 = sub_1B0E45908();
      v209 = 17;
      v216 = swift_allocObject();
      v198 = 16;
      *(v216 + 16) = 16;
      v217 = swift_allocObject();
      v202 = 4;
      *(v217 + 16) = 4;
      v55 = swift_allocObject();
      v194 = v55;
      *(v55 + 16) = v280;
      *(v55 + 24) = 0;
      v56 = swift_allocObject();
      v57 = v194;
      v218 = v56;
      *(v56 + 16) = v281;
      *(v56 + 24) = v57;
      v219 = swift_allocObject();
      *(v219 + 16) = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v195;
      v58 = swift_allocObject();
      v59 = v196;
      v197 = v58;
      *(v58 + 16) = v282;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v197;
      v221 = v60;
      *(v60 + 16) = v283;
      *(v60 + 24) = v61;
      v222 = swift_allocObject();
      *(v222 + 16) = v198;
      v223 = swift_allocObject();
      *(v223 + 16) = v202;
      v62 = swift_allocObject();
      v199 = v62;
      *(v62 + 16) = v284;
      *(v62 + 24) = 0;
      v63 = swift_allocObject();
      v64 = v199;
      v224 = v63;
      *(v63 + 16) = v285;
      *(v63 + 24) = v64;
      v225 = swift_allocObject();
      *(v225 + 16) = 0;
      v226 = swift_allocObject();
      *(v226 + 16) = v202;
      v65 = swift_allocObject();
      v66 = v200;
      v201 = v65;
      *(v65 + 16) = v286;
      *(v65 + 24) = v66;
      v67 = swift_allocObject();
      v68 = v201;
      v227 = v67;
      *(v67 + 16) = v287;
      *(v67 + 24) = v68;
      v228 = swift_allocObject();
      *(v228 + 16) = 0;
      v229 = swift_allocObject();
      *(v229 + 16) = v202;
      v69 = swift_allocObject();
      v70 = v203;
      v204 = v69;
      *(v69 + 16) = v288;
      *(v69 + 24) = v70;
      v71 = swift_allocObject();
      v72 = v204;
      v230 = v71;
      *(v71 + 16) = v289;
      *(v71 + 24) = v72;
      v231 = swift_allocObject();
      *(v231 + 16) = 34;
      v232 = swift_allocObject();
      v210 = 8;
      *(v232 + 16) = 8;
      v73 = swift_allocObject();
      v74 = v205;
      v206 = v73;
      *(v73 + 16) = v290;
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v206;
      v233 = v75;
      *(v75 + 16) = v291;
      *(v75 + 24) = v76;
      v234 = swift_allocObject();
      *(v234 + 16) = 0;
      v235 = swift_allocObject();
      *(v235 + 16) = v210;
      v77 = swift_allocObject();
      v78 = v207;
      v208 = v77;
      *(v77 + 16) = v292;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v208;
      v236 = v79;
      *(v79 + 16) = v293;
      *(v79 + 24) = v80;
      v237 = swift_allocObject();
      *(v237 + 16) = 0;
      v238 = swift_allocObject();
      *(v238 + 16) = v210;
      v81 = swift_allocObject();
      v82 = v213;
      v214 = v81;
      *(v81 + 16) = v294;
      *(v81 + 24) = v82;
      v83 = swift_allocObject();
      v84 = v214;
      v240 = v83;
      *(v83 + 16) = v295;
      *(v83 + 24) = v84;
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v239 = sub_1B0E46A48();
      v241 = v85;

      v86 = v216;
      v87 = v241;
      *v241 = v296;
      v87[1] = v86;

      v88 = v217;
      v89 = v241;
      v241[2] = v297;
      v89[3] = v88;

      v90 = v218;
      v91 = v241;
      v241[4] = v298;
      v91[5] = v90;

      v92 = v219;
      v93 = v241;
      v241[6] = v299;
      v93[7] = v92;

      v94 = v220;
      v95 = v241;
      v241[8] = v300;
      v95[9] = v94;

      v96 = v221;
      v97 = v241;
      v241[10] = v301;
      v97[11] = v96;

      v98 = v222;
      v99 = v241;
      v241[12] = v302;
      v99[13] = v98;

      v100 = v223;
      v101 = v241;
      v241[14] = v303;
      v101[15] = v100;

      v102 = v224;
      v103 = v241;
      v241[16] = v304;
      v103[17] = v102;

      v104 = v225;
      v105 = v241;
      v241[18] = v305;
      v105[19] = v104;

      v106 = v226;
      v107 = v241;
      v241[20] = v306;
      v107[21] = v106;

      v108 = v227;
      v109 = v241;
      v241[22] = v307;
      v109[23] = v108;

      v110 = v228;
      v111 = v241;
      v241[24] = v308;
      v111[25] = v110;

      v112 = v229;
      v113 = v241;
      v241[26] = v309;
      v113[27] = v112;

      v114 = v230;
      v115 = v241;
      v241[28] = v310;
      v115[29] = v114;

      v116 = v231;
      v117 = v241;
      v241[30] = v311;
      v117[31] = v116;

      v118 = v232;
      v119 = v241;
      v241[32] = v312;
      v119[33] = v118;

      v120 = v233;
      v121 = v241;
      v241[34] = v313;
      v121[35] = v120;

      v122 = v234;
      v123 = v241;
      v241[36] = v314;
      v123[37] = v122;

      v124 = v235;
      v125 = v241;
      v241[38] = v315;
      v125[39] = v124;

      v126 = v236;
      v127 = v241;
      v241[40] = v316;
      v127[41] = v126;

      v128 = v237;
      v129 = v241;
      v241[42] = v317;
      v129[43] = v128;

      v130 = v238;
      v131 = v241;
      v241[44] = v318;
      v131[45] = v130;

      v132 = v240;
      v133 = v241;
      v241[46] = v319;
      v133[47] = v132;
      sub_1B0394964();

      if (os_log_type_enabled(v243, v244))
      {
        v134 = v270;
        v171 = sub_1B0E45D78();
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v172 = sub_1B03949A8(0, v170, v170);
        v173 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v174 = &v356;
        v356 = v171;
        v175 = &v355;
        v355 = v172;
        v176 = &v354;
        v354 = v173;
        sub_1B0394A48(2, &v356);
        sub_1B0394A48(8, v174);
        v352 = v296;
        v353 = v216;
        sub_1B03949FC(&v352, v174, v175, v176);
        v177 = v134;
        if (v134)
        {

          __break(1u);
        }

        else
        {
          v352 = v297;
          v353 = v217;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v169 = 0;
          v352 = v298;
          v353 = v218;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v168 = 0;
          v352 = v299;
          v353 = v219;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v167 = 0;
          v352 = v300;
          v353 = v220;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v166 = 0;
          v352 = v301;
          v353 = v221;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v165 = 0;
          v352 = v302;
          v353 = v222;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v164 = 0;
          v352 = v303;
          v353 = v223;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v163 = 0;
          v352 = v304;
          v353 = v224;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v162 = 0;
          v352 = v305;
          v353 = v225;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v161 = 0;
          v352 = v306;
          v353 = v226;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v160 = 0;
          v352 = v307;
          v353 = v227;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v159 = 0;
          v352 = v308;
          v353 = v228;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v158 = 0;
          v352 = v309;
          v353 = v229;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v157 = 0;
          v352 = v310;
          v353 = v230;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v156 = 0;
          v352 = v311;
          v353 = v231;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v155 = 0;
          v352 = v312;
          v353 = v232;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v154 = 0;
          v352 = v313;
          v353 = v233;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v153 = 0;
          v352 = v314;
          v353 = v234;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v152 = 0;
          v352 = v315;
          v353 = v235;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v151 = 0;
          v352 = v316;
          v353 = v236;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v150 = 0;
          v352 = v317;
          v353 = v237;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v149 = 0;
          v352 = v318;
          v353 = v238;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          v148 = 0;
          v352 = v319;
          v353 = v240;
          sub_1B03949FC(&v352, &v356, &v355, &v354);
          _os_log_impl(&dword_1B0389000, v243, v244, "[%.*hhx-%.*X] Requesting sync #%u, kind: %{public}s, mailbox count: %ld. Running syncs count: %ld", v171, 0x3Bu);
          sub_1B03998A8(v172, 0, v170);
          sub_1B03998A8(v173, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v243);
      (*(v325 + 8))(v328, v324);
      v146 = swift_allocObject();
      *(v146 + 16) = v259;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v135 = v146;
      v136 = v261;
      v137 = v263;
      *(v146 + 24) = v260;
      *(v135 + 32) = v136;
      *(v135 + 40) = v137 & 1;
      v147 = v135 | 0x1000000000000000;
      sub_1B039C1F8(v135 | 0x1000000000000000);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v340)
      {
        v145 = v340;
        v144 = v340;
        v359 = v340;
        v142 = &v358;
        v358 = v340;
        v143 = &v357;
        swift_beginAccess();
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
        v138 = sub_1B0417878();
        sub_1B06A1FF8(v142, v141, v138);
        swift_endAccess();
      }

      return v259;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}
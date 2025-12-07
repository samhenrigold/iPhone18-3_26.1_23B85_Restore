void sub_1934B4E5C()
{
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v3);
  v4 = v0;
  while (1)
  {
    v5 = OUTLINED_FUNCTION_124();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        *__src = xmmword_1939526A0;
        *&__src[16] = 0;
        __src[24] = 0;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        v2 = v4;
        OUTLINED_FUNCTION_172_1();
        v7 = *&__src[8];
        if (*&__src[8] == 1)
        {
          v8 = &v78;
          GenerativeFunctionsInstrumentationMetadata.GenericError.init()(&v78);
          v7 = v79;
          v9 = v80;
          v10 = v81;
        }

        else
        {
          v9 = *&__src[16];
          v8 = __src;
          v10 = __src[24];
        }

        v57 = *v8;
        OUTLINED_FUNCTION_184();
        v58 = swift_allocObject();
        *(v58 + 16) = v57;
        *(v58 + 24) = v7;
        *(v58 + 32) = v9;
        *(v58 + 40) = v10 & 1;
        v4 = v2;
        *v2 = v58;
        continue;
      case 3:
        memset(&__src[48], 0, 41);
        OUTLINED_FUNCTION_112_4(0);
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[80])
        {
          memcpy(__dst, __src, 0x50uLL);
          __dst[10] = *&__src[80];
          LOBYTE(__dst[11]) = __src[88];
        }

        else
        {
          GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.init()(__dst);
        }

        v69 = swift_allocObject();
        v70 = OUTLINED_FUNCTION_151_1(v69);
        memcpy(v70, __dst, 0x59uLL);
        *v4 = v2 | 0x1000000000000000;
        continue;
      case 4:
        sub_1934B5A30(__src);
        v22 = OUTLINED_FUNCTION_168_0();
        memcpy(v22, v23, 0x299uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v24 = OUTLINED_FUNCTION_280();
        memcpy(v24, v25, 0x299uLL);
        v26 = OUTLINED_FUNCTION_157_0();
        memcpy(v26, v27, 0x299uLL);
        if (sub_1934B5A38(v77) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.init()(v75);
        }

        else
        {
          memcpy(v75, v76, 0x299uLL);
        }

        v53 = swift_allocObject();
        v54 = OUTLINED_FUNCTION_151_1(v53);
        memcpy(v54, v75, 0x299uLL);
        *v4 = v2 | 0x2000000000000000;
        continue;
      case 5:
        *&v28 = OUTLINED_FUNCTION_166_0();
        *&__src[58] = v28;
        __src[74] = v29;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[74])
        {
          GenerativeFunctionsInstrumentationMetadata.AssetAcquire.init()(v86);
        }

        else
        {
          memcpy(v86, __src, 0x4AuLL);
        }

        v55 = swift_allocObject();
        v56 = OUTLINED_FUNCTION_151_1(v55);
        memcpy(v56, v86, 0x4AuLL);
        *v4 = v2 | 0x3000000000000000;
        continue;
      case 6:
        memset(__src, 0, 42);
        __src[42] = 1;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[42])
        {
          GenerativeFunctionsInstrumentationMetadata.AssetRelease.init()(&v87);
        }

        else
        {
          v87 = *__src;
          *v88 = *&__src[16];
          *&v88[16] = *&__src[32];
          *&v88[24] = *&__src[40];
        }

        v46 = swift_allocObject();
        v47 = *v88;
        *(v46 + 16) = v87;
        *(v46 + 32) = v47;
        *(v46 + 42) = *&v88[10];
        *v4 = v46 | 0x4000000000000000;
        continue;
      case 7:
        sub_1934B59EC(__src);
        v30 = OUTLINED_FUNCTION_168_0();
        memcpy(v30, v31, 0x142uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v32 = OUTLINED_FUNCTION_280();
        memcpy(v32, v33, 0x142uLL);
        v34 = OUTLINED_FUNCTION_157_0();
        memcpy(v34, v35, 0x142uLL);
        if (sub_1934A83E0(v77) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.init()(v89);
        }

        else
        {
          memcpy(v89, v76, 0x142uLL);
        }

        v59 = swift_allocObject();
        v60 = OUTLINED_FUNCTION_151_1(v59);
        memcpy(v60, v89, 0x142uLL);
        v52 = 0x5000000000000000;
        goto LABEL_53;
      case 8:
        *&__src[48] = 0;
        OUTLINED_FUNCTION_112_4(0);
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[48])
        {
          v90 = *__src;
          v91 = *&__src[16];
          v92 = *&__src[32];
          v93 = *&__src[48];
        }

        else
        {
          GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.init()(&v90);
        }

        v71 = swift_allocObject();
        v72 = v91;
        *(v71 + 16) = v90;
        *(v71 + 32) = v72;
        *(v71 + 48) = v92;
        *(v71 + 64) = v93;
        *v4 = v71 | 0x6000000000000000;
        continue;
      case 9:
        memset(&__src[48], 0, 58);
        OUTLINED_FUNCTION_112_4(0);
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[16])
        {
          v94[0] = *__src;
          memcpy(&v94[1] + 8, &__src[24], 0x52uLL);
          *&v94[1] = *&__src[16];
        }

        else
        {
          GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.init()(v94);
        }

        v67 = swift_allocObject();
        v68 = OUTLINED_FUNCTION_151_1(v67);
        memcpy(v68, v94, 0x6AuLL);
        *v4 = v2 | 0x7000000000000000;
        continue;
      case 10:
        sub_1934B59CC(__src);
        v38 = OUTLINED_FUNCTION_168_0();
        memcpy(v38, v39, 0x189uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v40 = OUTLINED_FUNCTION_280();
        memcpy(v40, v41, 0x189uLL);
        v42 = OUTLINED_FUNCTION_157_0();
        memcpy(v42, v43, 0x189uLL);
        if (sub_1934B59D4(v77) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.init()(v95);
        }

        else
        {
          memcpy(v95, v76, 0x189uLL);
        }

        v65 = swift_allocObject();
        v66 = OUTLINED_FUNCTION_151_1(v65);
        memcpy(v66, v95, 0x189uLL);
        *v4 = v2 | 0x8000000000000000;
        continue;
      case 11:
        sub_1934B5988(__src);
        v16 = OUTLINED_FUNCTION_168_0();
        memcpy(v16, v17, 0x119uLL);
        OUTLINED_FUNCTION_281();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        v18 = OUTLINED_FUNCTION_280();
        memcpy(v18, v19, 0x119uLL);
        v20 = OUTLINED_FUNCTION_157_0();
        memcpy(v20, v21, 0x119uLL);
        if (sub_1934B59A8(v77) == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.ClassificationEvent.init()(v96);
        }

        else
        {
          memcpy(v96, v76, 0x119uLL);
        }

        v50 = swift_allocObject();
        v51 = OUTLINED_FUNCTION_151_1(v50);
        memcpy(v51, v96, 0x119uLL);
        v52 = 0x9000000000000000;
        goto LABEL_53;
      case 12:
        *&v36 = OUTLINED_FUNCTION_166_0();
        *&__src[64] = v36;
        *&__src[80] = v36;
        *&__src[96] = v36;
        *&__src[112] = 0;
        v85 = v37;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (v85)
        {
          GenerativeFunctionsInstrumentationMetadata.AssetTransition.init()(v97);
        }

        else
        {
          memcpy(v97, __src, 0x72uLL);
        }

        v63 = swift_allocObject();
        v64 = OUTLINED_FUNCTION_151_1(v63);
        memcpy(v64, v97, 0x72uLL);
        v52 = 0xA000000000000000;
        goto LABEL_53;
      case 13:
        *__src = 0;
        *&__src[8] = 256;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[9])
        {
          v11 = &v78;
          GenerativeFunctionsInstrumentationMetadata.AvailabilityStatus.init()(&v78);
          v12 = v79;
        }

        else
        {
          v11 = __src;
          v12 = __src[8];
        }

        v44 = *v11;
        OUTLINED_FUNCTION_123_1();
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        *(v45 + 24) = v12 & 1;
        *v4 = v45 | 0xB000000000000000;
        continue;
      case 14:
        memset(__src, 0, 41);
        __src[41] = 1;
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (__src[41])
        {
          v13 = &v78;
          GenerativeFunctionsInstrumentationMetadata.AvailabilityStatusTransition.init()(&v78);
          v14 = v79;
          v73 = v82;
          v15 = v83;
        }

        else
        {
          v73 = *&__src[32];
          v14 = __src[8];
          v13 = __src;
          v15 = __src[40];
        }

        v2 = *v13;
        v48 = swift_allocObject();
        *(v48 + 16) = v2;
        v49 = OUTLINED_FUNCTION_278(v48, v14 & 1);
        *(v49 + 48) = v73;
        *(v49 + 56) = v15 & 1;
        *v4 = v49 | 0xC000000000000000;
        continue;
      case 15:
        memset(__src, 0, 40);
        *&__src[40] = 1;
        memset(&__src[48], 0, 18);
        OUTLINED_FUNCTION_129_0();
        sub_193498018();
        OUTLINED_FUNCTION_172_1();
        if (*&__src[40] == 1)
        {
          GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.init()(v98);
        }

        else
        {
          v98[0] = *__src;
          v98[1] = *&__src[16];
          v98[3] = *&__src[48];
          LOWORD(v98[4]) = *&__src[64];
          v98[2] = *&__src[32];
        }

        v61 = swift_allocObject();
        v62 = OUTLINED_FUNCTION_151_1(v61);
        memcpy(v62, v98, 0x42uLL);
        v52 = 0xD000000000000000;
LABEL_53:
        *v4 = v2 | v52;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B5988(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  bzero((a1 + 72), 0xD1uLL);
}

uint64_t sub_1934B59A8(uint64_t a1)
{
  v1 = *(a1 + 64);
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

uint64_t sub_1934B59D4(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1934B59EC(uint64_t a1)
{
  bzero(a1, 0xE8uLL);
  *(a1 + 232) = 2;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  return result;
}

uint64_t sub_1934B5A38(uint64_t a1)
{
  v1 = *(a1 + 616);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1934B5A9C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8840);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("domain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "code");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B5C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8858);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v15 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v15, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("onBehalfOfPID");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v17 = *(v16 + 104);
  v18 = OUTLINED_FUNCTION_50_1();
  v17(v18);
  v19 = OUTLINED_FUNCTION_13((v10 + v14));
  v20 = OUTLINED_FUNCTION_5_4(v19, "onBehalfOfBundleIdentifier");
  v17(v20);
  v21 = OUTLINED_FUNCTION_59_5();
  *v22 = v11;
  v23 = OUTLINED_FUNCTION_5_4(v21, "createdByPID");
  v17(v23);
  v24 = OUTLINED_FUNCTION_19_2((v10 + 3 * v14));
  v25 = OUTLINED_FUNCTION_5_4(v24, "createdByBundleIdentifier");
  v17(v25);
  v26 = OUTLINED_FUNCTION_9_4((v10 + 4 * v14));
  v27 = OUTLINED_FUNCTION_5_4(v26, "requestType");
  v17(v27);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v28);
  v30 = OUTLINED_FUNCTION_5_4(v29, "isFallbackRequest");
  v17(v30);
  v31 = OUTLINED_FUNCTION_30_0((v10 + v14 * v9));
  v32 = OUTLINED_FUNCTION_23_7(v31, "assets");
  v17(v32);
  OUTLINED_FUNCTION_33_0(a9);
  OUTLINED_FUNCTION_121_1(v33);
  *v34 = "isInference";
  v34[1] = 11;
  v35 = OUTLINED_FUNCTION_41(v34);
  v17(v35);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B5E18()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 6:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 7:
        OUTLINED_FUNCTION_89_2();
        sub_193498238(v3, v4, v5, v6, v7);
        break;
      default:
        continue;
    }
  }
}

void sub_1934B5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_145_0();
  v29 = *(v27 + 24);
  v30 = *(v27 + 56);
  v47 = *(v27 + 73);
  v48 = *(v27 + 40);
  v31 = *(v27 + 74);
  v32 = *(v27 + 80);
  v33 = *(v27 + 88);
  if ((*(v27 + 8) & 1) == 0)
  {
    v46 = *(v27 + 24);
    OUTLINED_FUNCTION_293_0();
    sub_19393C360();
    v29 = v46;
  }

  if (!v28)
  {
    if (v29)
    {
      sub_19393C3C0();
    }

    if ((v48 & 1) == 0)
    {
      OUTLINED_FUNCTION_293_0();
      sub_19393C360();
    }

    if (v30)
    {
      OUTLINED_FUNCTION_185_0();
      sub_19393C3C0();
    }

    if ((v47 & 1) == 0)
    {
      OUTLINED_FUNCTION_185_0();
      sub_193447324(v34, v35, v36, v37, v38, v39);
    }

    if (v31 != 2)
    {
      OUTLINED_FUNCTION_293_0();
      sub_19393C2E0();
    }

    if (*(v32 + 16))
    {
      OUTLINED_FUNCTION_185_0();
      sub_193451CFC(v40, v41, v42, v43, v44, v45);
    }

    if (v33 != 2)
    {
      OUTLINED_FUNCTION_293_0();
      sub_19393C2E0();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1934B616C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8870);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_4_9();
  *v9 = "OneShot";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "Streaming";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B630C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8888);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v36 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v36, xmmword_1939526C0);
  *v0 = "requestType";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_61();
  *v9 = 2;
  v10 = OUTLINED_FUNCTION_23_7(v8, "inputTokensCount");
  v6(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "outputTokensCount");
  v6(v12);
  v13 = OUTLINED_FUNCTION_13((v1 + 3 * v4));
  v14 = OUTLINED_FUNCTION_36_0(v13, "errorString");
  v6(v14);
  v15 = OUTLINED_FUNCTION_19_2((v1 + 4 * v4));
  v16 = OUTLINED_FUNCTION_23_7(v15, "instructionCount");
  v6(v16);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v17);
  v19 = OUTLINED_FUNCTION_36_0(v18, "errorType");
  v6(v19);
  v20 = OUTLINED_FUNCTION_30_0((v1 + 16 * v4));
  v21 = OUTLINED_FUNCTION_5_4(v20, "privateCloudMetrics");
  v6(v21);
  OUTLINED_FUNCTION_33_0(8 * v4);
  OUTLINED_FUNCTION_121_1(v22);
  v24 = OUTLINED_FUNCTION_5_4(v23, "speculativeDecodingMetrics");
  v6(v24);
  v25 = OUTLINED_FUNCTION_67_1((v1 + 8 * v4));
  v26 = OUTLINED_FUNCTION_23_7(v25, "fileResidentInfos");
  v6(v26);
  v27 = OUTLINED_FUNCTION_44(9 * v4);
  *v28 = 10;
  v29 = OUTLINED_FUNCTION_5_4(v27, "prefixKVCacheTokensMatchCount");
  v6(v29);
  v30 = OUTLINED_FUNCTION_52_0();
  *v31 = 11;
  v32 = OUTLINED_FUNCTION_5_4(v30, "promptModulesKVCacheTokensMatchCount");
  v6(v32);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_187_0(v33);
  *v34 = "outputImagesCount";
  v34[1] = 17;
  v35 = OUTLINED_FUNCTION_41(v34);
  v6(v35);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B65CC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_8;
      case 2:
      case 3:
      case 5:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        continue;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        continue;
      case 6:
LABEL_8:
        sub_1934982A8();
        continue;
      case 7:
        goto LABEL_9;
      case 8:
        OUTLINED_FUNCTION_146_0();
LABEL_9:
        sub_193498018();
        break;
      case 9:
        sub_193498238(v0 + 616, v3, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo, v2, &off_1F07BEA28);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B673C()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = v3;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v21 = *(v0 + 40);
  v20 = *(v0 + 32);
  v24 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v9 = *(v0 + 89);
  v16 = *(v0 + 632);
  v15 = *(v0 + 648);
  v10 = *(v0 + 664);
  v17 = *(v0 + 616);
  if ((*(v0 + 9) & 1) == 0)
  {
    __dst[0] = *v0;
    LOBYTE(__dst[1]) = *(v0 + 8);
    v14 = v7;
    v2 = v9;
    v11 = v3;
    v12 = v4;
    sub_193447324(__dst, 1, v3, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType, v4, &off_1F07BE9A8);
    v7 = v14;
    v5 = v12;
    v6 = v11;
  }

  if (!v1)
  {
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_274(v7, 2);
      v5 = v2;
    }

    if ((v21 & 1) == 0)
    {
      OUTLINED_FUNCTION_274(v20, 3);
      v5 = v2;
    }

    if (v24)
    {
      v2 = v5;
      sub_19393C3C0();
      v5 = v2;
    }

    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_274(v18, 5);
      v5 = v2;
    }

    if (v9)
    {
      v13 = v5;
    }

    else
    {
      __dst[0] = *(v0 + 80);
      LOBYTE(__dst[1]) = *(v0 + 88);
      v13 = v5;
      sub_193447324(__dst, 6, v6, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType, v5, &off_1F07BE9D0);
    }

    memcpy(__dst, (v0 + 96), 0x142uLL);
    if (sub_1934A83E0(__dst) != 1)
    {
      memcpy(v22, __dst, sizeof(v22));
      sub_193447600();
    }

    memcpy(__dst, (v0 + 424), 0xBAuLL);
    if (sub_1934A83C4(__dst) != 1)
    {
      memcpy(v22, __dst, 0xB9uLL);
      sub_193447600();
    }

    if (*(v17 + 16))
    {
      sub_193451CFC(v17, 9, v6, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo, v13, &off_1F07BEA28);
    }

    if ((v16 & 1) == 0)
    {
      sub_19393C360();
    }

    if ((v15 & 1) == 0)
    {
      sub_19393C360();
    }

    if ((v10 & 1) == 0)
    {
      sub_19393C360();
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B6AD4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA88A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("RequestTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  *v6 = "OneShot";
  v6[1] = 7;
  v7 = OUTLINED_FUNCTION_70(v6);
  v4(v7);
  v8 = OUTLINED_FUNCTION_35_4();
  v9 = OUTLINED_FUNCTION_48(v8, "Streaming");
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B6C58()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA88B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v66 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v66, xmmword_1939526D0);
  OUTLINED_FUNCTION_63("ErrorTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  v8 = OUTLINED_FUNCTION_16_6(v7, "GeneralRequestFailure");
  v5(v8);
  v9 = OUTLINED_FUNCTION_35_4();
  v10 = OUTLINED_FUNCTION_0_0(v9, "CreateInferenceContextFailure");
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v12 = OUTLINED_FUNCTION_18_1(v11, "ProcessPromptGeneralFailure");
  v5(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v14 = OUTLINED_FUNCTION_0_0(v13, "ProcessPromptUnknownSpecialToken");
  v5(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v16 = OUTLINED_FUNCTION_0_0(v15, "ProcessPromptTokenizationFailed");
  v5(v16);
  v17 = OUTLINED_FUNCTION_14_4(6);
  v18 = OUTLINED_FUNCTION_18_1(v17, "InvalidMaxOutputTokensValue");
  v5(v18);
  OUTLINED_FUNCTION_120();
  v20 = OUTLINED_FUNCTION_30_0((v0 + v19));
  v21 = OUTLINED_FUNCTION_0_0(v20, "ExtendInferenceFailure");
  v5(v21);
  v22 = OUTLINED_FUNCTION_39_3((v0 + 8 * v3));
  v23 = OUTLINED_FUNCTION_16_6(v22, "EncodeResponseFailure");
  v5(v23);
  v24 = OUTLINED_FUNCTION_45_2(9 * v3);
  *v25 = 9;
  v26 = OUTLINED_FUNCTION_16_6(v24, "StreamCanceled");
  v5(v26);
  v27 = OUTLINED_FUNCTION_14_4(10);
  v28 = OUTLINED_FUNCTION_0_0(v27, "DataStreamNotFound");
  v5(v28);
  v29 = OUTLINED_FUNCTION_14_4(11);
  v30 = OUTLINED_FUNCTION_28_4(v29, 28);
  v5(v30);
  v31 = OUTLINED_FUNCTION_14_4(12);
  v32 = OUTLINED_FUNCTION_18_1(v31, "NoCatalog");
  v5(v32);
  v33 = OUTLINED_FUNCTION_14_4(13);
  v34 = OUTLINED_FUNCTION_0_0(v33, "UnknownRequestPayloadCase");
  v5(v34);
  v35 = OUTLINED_FUNCTION_60_1((v0 + 14 * v3));
  v36 = OUTLINED_FUNCTION_0_0(v35, "WordsToStringConversionFailure");
  v5(v36);
  OUTLINED_FUNCTION_45_2(15 * v3);
  OUTLINED_FUNCTION_180_0(v37);
  v39 = OUTLINED_FUNCTION_18_1(v38, "AsyncStreamFailed");
  v5(v39);
  v40 = OUTLINED_FUNCTION_3_1(v0 + 16 * v3);
  *v41 = 16;
  v42 = OUTLINED_FUNCTION_18_1(v40, "PromptRenderError");
  v5(v42);
  v43 = OUTLINED_FUNCTION_45_2(17 * v3);
  *v44 = 17;
  v45 = OUTLINED_FUNCTION_28_4(v43, 25);
  v5(v45);
  v46 = OUTLINED_FUNCTION_32_10();
  v47 = OUTLINED_FUNCTION_0_0(v46, "OneShotServerResponseMissingCompletion");
  v5(v47);
  v48 = OUTLINED_FUNCTION_14_4(19);
  v49 = OUTLINED_FUNCTION_0_0(v48, "StreamServerResponseMissingCompletion");
  v5(v49);
  v50 = OUTLINED_FUNCTION_14_4(20);
  v51 = OUTLINED_FUNCTION_18_1(v50, "VisualGenerationUnknownGenerator");
  v5(v51);
  v52 = OUTLINED_FUNCTION_32_10();
  v53 = OUTLINED_FUNCTION_18_1(v52, "VisualGenerationUnspecifiedGoals");
  v5(v53);
  v54 = OUTLINED_FUNCTION_32_10();
  v55 = OUTLINED_FUNCTION_16_6(v54, "VisualGenerationUnexpectedCondition");
  v5(v55);
  v56 = OUTLINED_FUNCTION_14_4(23);
  v57 = OUTLINED_FUNCTION_28_4(v56, 31);
  v5(v57);
  v58 = OUTLINED_FUNCTION_14_4(24);
  v59 = OUTLINED_FUNCTION_18_1(v58, "VisualGenerationAnalysisError");
  v5(v59);
  v60 = OUTLINED_FUNCTION_32_10();
  v61 = OUTLINED_FUNCTION_16_6(v60, "VisualGenerationInitializationError");
  v5(v61);
  v62 = OUTLINED_FUNCTION_14_4(26);
  v63 = OUTLINED_FUNCTION_18_1(v62, "VisualGenerationImageRejected");
  v5(v63);
  v64 = OUTLINED_FUNCTION_32_10();
  *v64 = "VisualGenerationImageTypeNotSupported";
  *(v64 + 1) = 37;
  v65 = OUTLINED_FUNCTION_1_3(v64);
  v5(v65);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B7174()
{
  OUTLINED_FUNCTION_115();
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, qword_1EAEA88D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v37 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v37, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("tinyModelInferenceCallCount");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_61();
  *v10 = v2;
  v11 = OUTLINED_FUNCTION_5_4(v9, "draftModelInferenceCallCount");
  v7(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v13 = OUTLINED_FUNCTION_5_4(v12, "targetModelInferenceCallCount");
  v7(v13);
  v14 = OUTLINED_FUNCTION_13((v1 + 3 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "draftTokenAcceptanceRate");
  v7(v15);
  v16 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  v17 = OUTLINED_FUNCTION_5_4(v16, "tinyTokenAcceptanceRate");
  v7(v17);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v18);
  v20 = OUTLINED_FUNCTION_36_0(v19, "speculationSuccessRate");
  v7(v20);
  v21 = OUTLINED_FUNCTION_30_0((v1 + v5 * v0));
  v22 = OUTLINED_FUNCTION_36_0(v21, "draftOutputTokensCount");
  v7(v22);
  OUTLINED_FUNCTION_33_0(8 * v5);
  OUTLINED_FUNCTION_121_1(v23);
  v25 = OUTLINED_FUNCTION_36_0(v24, "totalOutputTokensCount");
  v7(v25);
  v26 = OUTLINED_FUNCTION_55_2((v1 + 8 * v5));
  v27 = OUTLINED_FUNCTION_15(v26, 27);
  v7(v27);
  v28 = OUTLINED_FUNCTION_44(9 * v5);
  *v29 = 10;
  v30 = OUTLINED_FUNCTION_15(v28, 28);
  v7(v30);
  v31 = OUTLINED_FUNCTION_52_0();
  *v32 = 11;
  v33 = OUTLINED_FUNCTION_15(v31, 29);
  v7(v33);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_187_0(v34);
  *v35 = "draftSteps";
  v35[1] = 10;
  v36 = OUTLINED_FUNCTION_41(v35);
  v7(v36);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B7428()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 7:
      case 8:
      case 12:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 4:
      case 5:
      case 6:
      case 9:
      case 10:
      case 11:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1934B74FC()
{
  OUTLINED_FUNCTION_75_3();
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v19 = *(v1 + 40);
  v18 = *(v1 + 56);
  v17 = *(v1 + 72);
  v16 = *(v1 + 88);
  v15 = *(v1 + 104);
  v14 = *(v1 + 120);
  v4 = *(v1 + 136);
  v5 = *(v1 + 152);
  v6 = *(v1 + 168);
  v7 = *(v1 + 184);
  if ((*(v1 + 8) & 1) == 0)
  {
    v13 = *(v1 + 16);
    v8 = *(v1 + 136);
    v9 = *(v1 + 152);
    v10 = *(v1 + 168);
    v11 = *(v1 + 184);
    v12 = *(v1 + 24);
    sub_19393C360();
    v3 = v12;
    v7 = v11;
    v6 = v10;
    v5 = v9;
    v4 = v8;
    result = v13;
  }

  if (!v0)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      result = sub_19393C360();
    }

    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      result = sub_19393C360();
    }

    if ((v18 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      result = sub_19393C360();
    }

    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      result = sub_19393C360();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      result = sub_19393C3B0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      return sub_19393C360();
    }
  }

  return result;
}

void sub_1934B77BC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA88E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("asset");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "totalPages");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_16_6(v10, "residentPages");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  *v12 = "residentRatio";
  *(v12 + 1) = 13;
  v13 = OUTLINED_FUNCTION_1_3(v12);
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B793C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      default:
        continue;
    }
  }
}

void sub_1934B79F4()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v7 + 40);
  v9 = *(v7 + 56);
  v10 = *(v7 + 64);
  if (*(v7 + 8))
  {
    OUTLINED_FUNCTION_85_3(v1, v2, v3, &type metadata for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion, v4, &off_1F07BE800, v5, v6, *v7);
    sub_193447600();
  }

  if (!v0)
  {
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C3E0();
    }

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      sub_19393C340();
    }
  }
}

void sub_1934B7B34()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8900);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("result");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "memoryCostKB");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_28_4(v10, 6);
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "aneHintClientMetric");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B7CB4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_7;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 3:
        OUTLINED_FUNCTION_89_2();
LABEL_7:
        sub_1934982A8();
        break;
      case 4:
        OUTLINED_FUNCTION_147_0();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B7D94()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v0 + 24);
  v9 = *(v0 + 41);
  v10 = *(v0 + 73);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_133_0();
    v17 = OUTLINED_FUNCTION_85_3(v11, v12, v13, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result, v14, &off_1F07BEA88, v15, v16, v35);
    v2 = sub_193447324(v17, v18, v19, v20, v21, v22);
  }

  if (!v1)
  {
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      v2 = sub_19393C3E0();
    }

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_153_1();
      v29 = OUTLINED_FUNCTION_105_4(v23, v24, v25, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason, v26, &off_1F07BEAB0, v27, v28, v35);
      v2 = sub_193447324(v29, v30, v31, v32, v33, v34);
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_174(v2, v3, v4, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetAcquire.ANEHintClientMetric, v5, &off_1F07BEAD8, v6, v7, *(v0 + 48));
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }
}

void sub_1934B7EE0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8918);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "Loaded");
  v7(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25(v11, "AlreadyLoaded");
  v7(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_25(v14, "LoadFailure");
  v7(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8094()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8930);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("ReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v9 = "UserInitiated";
  *(v9 + 1) = 13;
  v10 = OUTLINED_FUNCTION_56_0(v9);
  v7(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25(v11, "PolicyChange");
  v7(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_25(v14, "Prewarm");
  v7(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B824C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8948);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("totalPages");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "residentPages");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B83E0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8960);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  *v0 = "result";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v10 = 2;
  *v9 = "memoryCostKB";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v11 = "reason";
  *(v11 + 1) = 6;
  v11[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8554()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_62();
LABEL_10:
        sub_1934982A8();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_10;
    }
  }
}

void sub_1934B8600()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v0[24];
  v3 = v0[41];
  if ((v0[9] & 1) == 0)
  {
    OUTLINED_FUNCTION_133_0();
    v10 = OUTLINED_FUNCTION_85_3(v4, v5, v6, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result, v7, &off_1F07BEB38, v8, v9, v28);
    sub_193447324(v10, v11, v12, v13, v14, v15);
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C3E0();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_153_1();
      v22 = OUTLINED_FUNCTION_105_4(v16, v17, v18, &type metadata for GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason, v19, &off_1F07BEB60, v20, v21, v28);
      sub_193447324(v22, v23, v24, v25, v26, v27);
    }
  }
}

void sub_1934B8714()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8978);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_20(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "Unloaded");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_0_0(v10, "AlreadyUnloaded");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_16_6(v12, "Busy");
  v6(v13);
  v14 = OUTLINED_FUNCTION_60_1((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "UnloadFailure");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B88E0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8990);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v29 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_27_2(v29, xmmword_193952660);
  *v1 = 0;
  *v0 = "ReasonUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "UserInitiated";
  *(v8 + 1) = 13;
  v9 = OUTLINED_FUNCTION_56_0(v8);
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_5();
  *v11 = 2;
  v12 = OUTLINED_FUNCTION_25(v10, "PolicyChange");
  v6(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v14 = OUTLINED_FUNCTION_25(v13, "MemoryBudgetPressure");
  v6(v14);
  v15 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v16 = OUTLINED_FUNCTION_25(v15, "AcquisitionError");
  v6(v16);
  v17 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v18 = OUTLINED_FUNCTION_25(v17, "PurgeInactiveAssets");
  v6(v18);
  v19 = OUTLINED_FUNCTION_54_1(6);
  v20 = OUTLINED_FUNCTION_25(v19, "AssetVersionChange");
  v6(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_30_0((v1 + v21));
  v23 = OUTLINED_FUNCTION_25(v22, "PolicyChangeCriticalMemory");
  v6(v23);
  v24 = OUTLINED_FUNCTION_39_3(&v1[v4]);
  v25 = OUTLINED_FUNCTION_25(v24, "PolicyChangeBackgroundSession");
  v6(v25);
  OUTLINED_FUNCTION_44(9 * v4);
  OUTLINED_FUNCTION_131_3(v26);
  v28 = OUTLINED_FUNCTION_25(v27, "ConnectionTermination");
  v6(v28);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8B8C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA89A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v1;
  v6 = (v4 + v1 + dword_1EAEA89E0);
  *(v4 + v1) = 1;
  *v6 = "reason";
  v6[1] = 6;
  OUTLINED_FUNCTION_107_3();
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v3);
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_16_6(v10, "result");
  v8(v12);
  v13 = OUTLINED_FUNCTION_9_4((v5 + 2 * v3));
  v14 = OUTLINED_FUNCTION_0_0(v13, "fromState");
  v8(v14);
  v15 = OUTLINED_FUNCTION_13((v5 + 3 * v3));
  v16 = OUTLINED_FUNCTION_0_0(v15, "toState");
  v8(v16);
  v17 = OUTLINED_FUNCTION_19_2((v5 + 4 * v3));
  v18 = OUTLINED_FUNCTION_0_0(v17, "memoryCostKB");
  v8(v18);
  v19 = OUTLINED_FUNCTION_60_1((v5 + 5 * v3));
  v20 = OUTLINED_FUNCTION_0_0(v19, "fileResidentInfo");
  v8(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B8D80()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_8;
      case 2:
        goto LABEL_8;
      case 3:
      case 4:
        OUTLINED_FUNCTION_147_0();
LABEL_8:
        sub_1934982A8();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      case 6:
        OUTLINED_FUNCTION_146_0();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B8ED4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA89C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v31 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v31, xmmword_1939526F0);
  *v0 = "ReasonUnknown";
  v0[1] = 13;
  OUTLINED_FUNCTION_107_3();
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_18_1(v8, "UserInitiated");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_0_0(v10, "PolicyChange");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v13 = OUTLINED_FUNCTION_0_0(v12, "MemoryBudgetPressure");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v15 = OUTLINED_FUNCTION_0_0(v14, "AcquisitionError");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v17 = OUTLINED_FUNCTION_18_1(v16, "Prewarm");
  v6(v17);
  v18 = OUTLINED_FUNCTION_14_4(6);
  v19 = OUTLINED_FUNCTION_0_0(v18, "PurgeInactiveAssets");
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_45_2(v20);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_0_0(v21, "AssetVersionChange");
  v6(v23);
  v24 = OUTLINED_FUNCTION_39_3((v1 + 8 * v4));
  v25 = OUTLINED_FUNCTION_0_0(v24, "PolicyChangeBackgroundSession");
  v6(v25);
  OUTLINED_FUNCTION_45_2(9 * v4);
  OUTLINED_FUNCTION_131_3(v26);
  v28 = OUTLINED_FUNCTION_0_0(v27, "ConnectionTermination");
  v6(v28);
  v29 = OUTLINED_FUNCTION_14_4(10);
  v30 = OUTLINED_FUNCTION_0_0(v29, "PolicyChangeCriticalMemory");
  v6(v30);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9188()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA89D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ResultUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  *v6 = "Success";
  v6[1] = 7;
  v7 = OUTLINED_FUNCTION_70(v6);
  v4(v7);
  v8 = OUTLINED_FUNCTION_35_4();
  *v8 = "Failure";
  *(v8 + 1) = 7;
  v9 = OUTLINED_FUNCTION_70(v8);
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9308()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA89F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("LoadStateUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "Unloaded");
  v7(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25(v11, "DynamicMode");
  v7(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_25(v14, "Loaded");
  v7(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B94B8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("totalPages");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  *v8 = "residentPages";
  v8[1] = 13;
  v9 = OUTLINED_FUNCTION_70(v8);
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  *v10 = "residentRatio";
  *(v10 + 1) = 13;
  v11 = OUTLINED_FUNCTION_70(v10);
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934B9610()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C160();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C230();
    }
  }

  return result;
}

void sub_1934B96D4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("validator");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "outcome");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "rejectionReason");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "safetyAssets");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9854()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_8;
      case 2:
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_147_0();
LABEL_8:
        sub_193498018();
        break;
      case 4:
        OUTLINED_FUNCTION_146_0();
        sub_193498238(v3, v4, v5, v6, v7);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934B9A00()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v4, xmmword_193952700);
  OUTLINED_FUNCTION_63("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "DenyList");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_16_6(v10, "OVS");
  v6(v11);
  v12 = OUTLINED_FUNCTION_22_3();
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_0_0(v12, "AdapterModel");
  v6(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v16 = OUTLINED_FUNCTION_0_0(v15, "SensitiveContentAnalysisModel");
  v6(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v18 = OUTLINED_FUNCTION_0_0(v17, "LanguageRecognizer");
  v6(v18);
  v19 = OUTLINED_FUNCTION_14_4(6);
  v20 = OUTLINED_FUNCTION_0_0(v19, "LanguageScriptValidator");
  v6(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9C88()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8A80);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_20(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "NotApplied");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_16_6(v10, "Rejected");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_28_4(v12, 7);
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  *v14 = "Replaced";
  *(v14 + 1) = 8;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934B9EE8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8AB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v53 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v53, xmmword_193952710);
  OUTLINED_FUNCTION_63("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  v8 = OUTLINED_FUNCTION_0_0(v7, "Unspecified");
  v5(v8);
  v9 = OUTLINED_FUNCTION_35_4();
  v10 = OUTLINED_FUNCTION_0_0(v9, "Safe");
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  *v11 = "Drugs";
  *(v11 + 1) = 5;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  v5(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v14 = OUTLINED_FUNCTION_0_0(v13, "Hate");
  v5(v14);
  v15 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v16 = 5;
  v17 = OUTLINED_FUNCTION_16_6(v15, "Conspiracies");
  v5(v17);
  v18 = OUTLINED_FUNCTION_14_4(6);
  *v18 = "Violence";
  *(v18 + 1) = 8;
  v19 = OUTLINED_FUNCTION_1_3(v18);
  v5(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_30_0((v0 + v20));
  v22 = OUTLINED_FUNCTION_0_0(v21, "PropertyCrime");
  v5(v22);
  v23 = OUTLINED_FUNCTION_67_1((v0 + 8 * v3));
  v24 = OUTLINED_FUNCTION_0_0(v23, "TerrorismOrExtremism");
  v5(v24);
  OUTLINED_FUNCTION_45_2(9 * v3);
  OUTLINED_FUNCTION_131_3(v25);
  v27 = OUTLINED_FUNCTION_28_4(v26, 4);
  v5(v27);
  v28 = OUTLINED_FUNCTION_32_10();
  v29 = OUTLINED_FUNCTION_16_6(v28, "BodilyFluids");
  v5(v29);
  v30 = OUTLINED_FUNCTION_32_10();
  v31 = OUTLINED_FUNCTION_18_1(v30, "ObsceneGestures");
  v5(v31);
  v32 = OUTLINED_FUNCTION_60_1((v0 + 12 * v3));
  v33 = OUTLINED_FUNCTION_16_6(v32, "NudityOrSexual");
  v5(v33);
  v34 = OUTLINED_FUNCTION_32_10();
  v35 = OUTLINED_FUNCTION_28_4(v34, 7);
  v5(v35);
  v36 = OUTLINED_FUNCTION_60_1((v0 + 14 * v3));
  v37 = OUTLINED_FUNCTION_16_6(v36, "MassLossOfLife");
  v5(v37);
  v38 = OUTLINED_FUNCTION_45_2(15 * v3);
  *v39 = 15;
  v40 = OUTLINED_FUNCTION_16_6(v38, "OffensiveWords");
  v5(v40);
  v41 = OUTLINED_FUNCTION_3_1(v0 + 16 * v3);
  *v42 = 16;
  v43 = OUTLINED_FUNCTION_0_0(v41, "ChildSexualExploitationAndAbuseImagery");
  v5(v43);
  v44 = OUTLINED_FUNCTION_45_2(17 * v3);
  *v45 = 17;
  v46 = OUTLINED_FUNCTION_28_4(v44, 8);
  v5(v46);
  v47 = OUTLINED_FUNCTION_14_4(18);
  v48 = OUTLINED_FUNCTION_28_4(v47, 5);
  v5(v48);
  v49 = OUTLINED_FUNCTION_14_4(19);
  v50 = OUTLINED_FUNCTION_18_1(v49, "Harassment");
  v5(v50);
  v51 = OUTLINED_FUNCTION_32_10();
  *v51 = "Suggestive";
  *(v51 + 1) = 10;
  v52 = OUTLINED_FUNCTION_1_3(v51);
  v5(v52);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934BA320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8AC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v15 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v15, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("totalInferenceTime");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v17 = *(v16 + 104);
  v18 = OUTLINED_FUNCTION_50_1();
  v17(v18);
  v19 = OUTLINED_FUNCTION_61();
  *v20 = v11;
  v21 = OUTLINED_FUNCTION_5_4(v19, "tokenRate");
  v17(v21);
  v22 = OUTLINED_FUNCTION_19_2((v10 + 2 * v14));
  v23 = OUTLINED_FUNCTION_5_4(v22, "timeToFirstTokenMillis");
  v17(v23);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_140_0(v24);
  v26 = OUTLINED_FUNCTION_5_4(v25, "extendLatencyMillis");
  v17(v26);
  v27 = OUTLINED_FUNCTION_30_0((v10 + 4 * v14));
  v28 = OUTLINED_FUNCTION_5_4(v27, "outputTokensCount");
  v17(v28);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_121_1(v29);
  v31 = OUTLINED_FUNCTION_5_4(v30, "inputTokensCount");
  v17(v31);
  v32 = OUTLINED_FUNCTION_9_4((v10 + v14 * v9));
  v33 = OUTLINED_FUNCTION_5_4(v32, "inferenceEnvironmentInfo");
  v17(v33);
  v34 = OUTLINED_FUNCTION_13((v10 + a9 - v14));
  *v34 = "speculativeDecodingMetrics";
  *(v34 + 1) = 26;
  v35 = OUTLINED_FUNCTION_41(v34);
  v17(v35);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BA53C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_89_2();
LABEL_7:
        sub_193498018();
        break;
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BA630()
{
  OUTLINED_FUNCTION_103();
  v2 = v0[24];
  v3 = v0[40];
  v4 = v0[56];
  v5 = v0[72];
  v7 = v0[88];
  v6 = v0[321];
  if ((v0[8] & 1) == 0)
  {
    OUTLINED_FUNCTION_98();
    sub_19393C3B0();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C3B0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C360();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C360();
    }

    memcpy(__dst, v0 + 96, 0x90uLL);
    if (sub_1934A8518(__dst) != 1)
    {
      memcpy(v8, __dst, sizeof(v8));
      OUTLINED_FUNCTION_179();
    }

    if ((v6 & 1) == 0)
    {
      memcpy(__dst, v0 + 240, 0x51uLL);
      OUTLINED_FUNCTION_179();
    }
  }
}

void sub_1934BA88C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8AE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("baseModel");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "adapter");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "draftModel");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_28_4(v12, 9);
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "cloudosVersion");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BAA30()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BAAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v5 = v3[5];
  v6 = v3[9];
  v7 = v3[13];
  v8 = v3[16];
  v9 = v3[17];
  if (v3[1] != 1)
  {
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }

  if (!v4)
  {
    if (v5 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v6 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v7 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v9)
    {
      OUTLINED_FUNCTION_181(v8, v9, 5);
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1934BAC98()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8AF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("name");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "version");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BADC8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1934BAE24()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_181(v3, v4, 2);
    }
  }
}

void sub_1934BAEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8B10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v15 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v15, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("speculativeDecodingAcceptanceRate");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v17 = *(v16 + 104);
  v18 = OUTLINED_FUNCTION_50_1();
  v17(v18);
  v19 = OUTLINED_FUNCTION_61();
  *v20 = v11;
  v21 = OUTLINED_FUNCTION_5_4(v19, "draftModelInferenceCallCount");
  v17(v21);
  v22 = OUTLINED_FUNCTION_9_4((v10 + 2 * v14));
  v23 = OUTLINED_FUNCTION_5_4(v22, "targetModelInferenceCallCount");
  v17(v23);
  v24 = OUTLINED_FUNCTION_13((v10 + 3 * v14));
  v25 = OUTLINED_FUNCTION_5_4(v24, "draftOutputTokenCount");
  v17(v25);
  v26 = OUTLINED_FUNCTION_19_2((v10 + 4 * v14));
  v27 = OUTLINED_FUNCTION_5_4(v26, "targetOutputTokenCount");
  v17(v27);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v28);
  v30 = OUTLINED_FUNCTION_5_4(v29, "draftModelTotalInferenceLatencyMillis");
  v17(v30);
  v31 = OUTLINED_FUNCTION_30_0((v10 + v14 * v9));
  v32 = OUTLINED_FUNCTION_5_4(v31, "targetModelTotalInferenceLatencyMillis");
  v17(v32);
  OUTLINED_FUNCTION_33_0(a9);
  OUTLINED_FUNCTION_121_1(v33);
  *v34 = "draftSteps";
  v34[1] = 10;
  v35 = OUTLINED_FUNCTION_41(v34);
  v17(v35);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BB110()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C230();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BB1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v5 = v4[12];
  v6 = v4[20];
  v7 = v4[28];
  v11 = v4[36];
  v10 = v4[48];
  v9 = v4[64];
  v8 = v4[80];
  if ((v4[4] & 1) == 0)
  {
    OUTLINED_FUNCTION_126_1();
    sub_19393C340();
  }

  if (!v3)
  {
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C3D0();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1934BB38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v12 = sub_19393C420();
  __swift_allocate_value_buffer(v12, qword_1EAEA8B28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v14 = *(v13 + 72);
  OUTLINED_FUNCTION_49_0();
  v15 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v15, xmmword_1939526B0);
  OUTLINED_FUNCTION_83_0("sessionEventType");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v17 = *(v16 + 104);
  v18 = OUTLINED_FUNCTION_50_1();
  v17(v18);
  v19 = OUTLINED_FUNCTION_61();
  *v20 = v11;
  v21 = OUTLINED_FUNCTION_5_4(v19, "supportedAssetBundleIdentifiers");
  v17(v21);
  v22 = OUTLINED_FUNCTION_9_4((v10 + 2 * v14));
  v23 = OUTLINED_FUNCTION_5_4(v22, "onBehalfOfPID");
  v17(v23);
  v24 = OUTLINED_FUNCTION_13((v10 + 3 * v14));
  v25 = OUTLINED_FUNCTION_5_4(v24, "onBehalfOfBundleIdentifier");
  v17(v25);
  v26 = OUTLINED_FUNCTION_19_2((v10 + 4 * v14));
  v27 = OUTLINED_FUNCTION_5_4(v26, "createdByPID");
  v17(v27);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v28);
  v30 = OUTLINED_FUNCTION_5_4(v29, "createdByBundleIdentifier");
  v17(v30);
  v31 = OUTLINED_FUNCTION_30_0((v10 + v14 * v9));
  v32 = OUTLINED_FUNCTION_5_4(v31, "containsSensitiveData");
  v17(v32);
  OUTLINED_FUNCTION_33_0(a9);
  OUTLINED_FUNCTION_121_1(v33);
  *v34 = "sessionEventResult";
  v34[1] = 18;
  v35 = OUTLINED_FUNCTION_41(v34);
  v17(v35);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BB5A8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        goto LABEL_8;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      case 3:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 4:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 8:
        OUTLINED_FUNCTION_89_2();
LABEL_8:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BB700()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8B40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_20(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("SessionEventTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_4_9();
  v6 = OUTLINED_FUNCTION_16_6(v5, "Add");
  v3(v6);
  v7 = OUTLINED_FUNCTION_35_4();
  v8 = OUTLINED_FUNCTION_0_0(v7, "Remove");
  v3(v8);
  v9 = OUTLINED_FUNCTION_22_3();
  *v10 = 3;
  v11 = OUTLINED_FUNCTION_0_0(v9, "Prewarm");
  v3(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BB8A0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8B58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("SessionEventResultUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "Success");
  v7(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  *v11 = "FailedDueToUseCaseDisabled";
  v11[1] = 26;
  v13 = OUTLINED_FUNCTION_56_0(v11);
  v7(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "FailedDueToSessionNotFound";
  *(v14 + 1) = 26;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  v7(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_25(v16, "FailedForUnknownReason");
  v7(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BBA78()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8B70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v118 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v118, xmmword_193952720);
  OUTLINED_FUNCTION_83_0("inputLength");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_61();
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_5_4(v8, "maxTokenLength");
  v6(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "compressedInputLength");
  v6(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_5_4(v13, "outputLength");
  v6(v14);
  v15 = OUTLINED_FUNCTION_55_2((v0 + 4 * v4));
  *v15 = "inputTokensCount";
  *(v15 + 1) = 16;
  v16 = OUTLINED_FUNCTION_41(v15);
  v6(v16);
  v17 = OUTLINED_FUNCTION_38_2();
  *v18 = 10;
  v19 = OUTLINED_FUNCTION_5_4(v17, "overestimatedInputTokensCount");
  v6(v19);
  v20 = OUTLINED_FUNCTION_52_0();
  *v21 = 11;
  *v20 = "isInputTruncated";
  v20[1] = 16;
  v22 = OUTLINED_FUNCTION_41(v20);
  v6(v22);
  OUTLINED_FUNCTION_33_0(8 * v4);
  OUTLINED_FUNCTION_187_0(v23);
  v25 = OUTLINED_FUNCTION_5_4(v24, "outputTokensCount");
  v6(v25);
  v26 = OUTLINED_FUNCTION_19_2((v0 + 8 * v4));
  v27 = OUTLINED_FUNCTION_36_0(v26, "styles");
  v6(v27);
  v28 = OUTLINED_FUNCTION_44(9 * v4);
  *v29 = 6;
  *v28 = "contextAugmented";
  v28[1] = 16;
  v30 = OUTLINED_FUNCTION_41(v28);
  v6(v30);
  v31 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v32 = 13;
  v33 = OUTLINED_FUNCTION_5_4(v31, "isContextAugmented");
  v6(v33);
  v34 = OUTLINED_FUNCTION_30_0((v0 + 11 * v4));
  *v34 = "isInputSafe";
  *(v34 + 1) = v35;
  v36 = OUTLINED_FUNCTION_41(v34);
  v6(v36);
  v37 = OUTLINED_FUNCTION_39_3((v0 + 12 * v4));
  v38 = OUTLINED_FUNCTION_36_0(v37, "isSummarySafe");
  v6(v38);
  v39 = OUTLINED_FUNCTION_52_0();
  *v40 = 14;
  v41 = OUTLINED_FUNCTION_23_7(v39, "isInputSanitized");
  v6(v41);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_180_0(v42);
  v44 = OUTLINED_FUNCTION_5_4(v43, "isOutputFactuallyConsistent");
  v6(v44);
  v45 = OUTLINED_FUNCTION_33_0(16 * v4);
  *v46 = 16;
  v47 = OUTLINED_FUNCTION_36_0(v45, "isOutputSanitized");
  v6(v47);
  v48 = OUTLINED_FUNCTION_67_1((v0 + 16 * v4));
  v49 = OUTLINED_FUNCTION_36_0(v48, "latencyPreprocessing");
  v6(v49);
  v50 = OUTLINED_FUNCTION_44(17 * v4);
  *v51 = 18;
  v52 = OUTLINED_FUNCTION_5_4(v50, "latencyInputSanitization");
  v6(v52);
  v53 = OUTLINED_FUNCTION_72();
  *v54 = 19;
  v55 = OUTLINED_FUNCTION_15(v53, 16);
  v6(v55);
  v56 = OUTLINED_FUNCTION_67_1((v0 + 19 * v4));
  v57 = OUTLINED_FUNCTION_23_7(v56, "latencyPostprocessing");
  v6(v57);
  v58 = OUTLINED_FUNCTION_52_0();
  *v59 = 21;
  v60 = OUTLINED_FUNCTION_5_4(v58, "latencyFactualConsistencyClassification");
  v6(v60);
  v61 = OUTLINED_FUNCTION_52_0();
  *v62 = 22;
  v63 = OUTLINED_FUNCTION_23_7(v61, "inputHasUnsupportedEmoji");
  v6(v63);
  v64 = OUTLINED_FUNCTION_52_0();
  *v65 = 23;
  v66 = OUTLINED_FUNCTION_15(v64, 18);
  v6(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 24;
  v69 = OUTLINED_FUNCTION_23_7(v67, "inputHasTapback");
  v6(v69);
  v70 = OUTLINED_FUNCTION_52_0();
  *v71 = 25;
  v72 = OUTLINED_FUNCTION_15(v70, 11);
  v6(v72);
  v73 = OUTLINED_FUNCTION_52_0();
  *v74 = 26;
  v75 = OUTLINED_FUNCTION_23_7(v73, "inputHasCaption");
  v6(v75);
  v76 = OUTLINED_FUNCTION_52_0();
  *v77 = 27;
  v78 = OUTLINED_FUNCTION_15(v76, 10);
  v6(v78);
  v79 = OUTLINED_FUNCTION_52_0();
  *v80 = 28;
  v81 = OUTLINED_FUNCTION_15(v79, 11);
  v6(v81);
  v82 = OUTLINED_FUNCTION_52_0();
  *v83 = 29;
  v84 = OUTLINED_FUNCTION_15(v82, 14);
  v6(v84);
  v85 = OUTLINED_FUNCTION_52_0();
  *v86 = 30;
  v87 = OUTLINED_FUNCTION_15(v85, 13);
  v6(v87);
  v88 = OUTLINED_FUNCTION_52_0();
  *v89 = 31;
  v90 = OUTLINED_FUNCTION_15(v88, 12);
  v6(v90);
  v91 = OUTLINED_FUNCTION_33_0(32 * v4);
  *v92 = 32;
  v93 = OUTLINED_FUNCTION_23_7(v91, "recipientsLength");
  v6(v93);
  v94 = OUTLINED_FUNCTION_3_1(v0 + 32 * v4);
  *v95 = 33;
  v96 = OUTLINED_FUNCTION_15(v94, 17);
  v6(v96);
  v97 = OUTLINED_FUNCTION_44(33 * v4);
  *v98 = 34;
  v99 = OUTLINED_FUNCTION_23_7(v97, "languageDetected");
  v6(v99);
  v100 = OUTLINED_FUNCTION_52_0();
  *v101 = 35;
  v102 = OUTLINED_FUNCTION_23_7(v100, "numChunks");
  v6(v102);
  v103 = OUTLINED_FUNCTION_52_0();
  *v104 = 36;
  v105 = OUTLINED_FUNCTION_15(v103, 10);
  v6(v105);
  v106 = OUTLINED_FUNCTION_52_0();
  *v107 = 37;
  v108 = OUTLINED_FUNCTION_15(v106, 11);
  v6(v108);
  v109 = OUTLINED_FUNCTION_52_0();
  *v110 = 38;
  v111 = OUTLINED_FUNCTION_15(v109, 12);
  v6(v111);
  v112 = OUTLINED_FUNCTION_52_0();
  *v113 = 39;
  v114 = OUTLINED_FUNCTION_15(v112, 25);
  v6(v114);
  v115 = OUTLINED_FUNCTION_52_0();
  *v116 = 40;
  *v115 = "modelType";
  v115[1] = 9;
  v117 = OUTLINED_FUNCTION_41(v115);
  v6(v117);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BC1B0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v1 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 9:
      case 10:
      case 12:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 40:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 5:
        sub_1934984D4(v0 + 112, v3, &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle, v2, &off_1F07BEF08);
        break;
      case 6:
      case 7:
      case 8:
      case 11:
      case 13:
      case 14:
      case 15:
      case 16:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 38:
      case 39:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 34:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BC39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v8 = *(v3 + 24);
  v58 = *(v3 + 40);
  v57 = *(v3 + 56);
  v56 = *(v3 + 72);
  v55 = *(v3 + 88);
  v53 = *(v3 + 104);
  v9 = *(v3 + 112);
  v51 = *(v3 + 120);
  v10 = *(v3 + 121);
  v11 = *(v3 + 122);
  v12 = *(v3 + 123);
  v13 = *(v3 + 124);
  v50 = *(v3 + 125);
  v52 = *(v3 + 126);
  v49 = *(v3 + 136);
  v48 = *(v3 + 152);
  v47 = *(v3 + 168);
  v46 = *(v3 + 184);
  v44 = *(v3 + 200);
  v45 = *(v3 + 201);
  v43 = *(v3 + 202);
  v41 = *(v3 + 203);
  v42 = *(v3 + 204);
  v40 = *(v3 + 205);
  v39 = *(v3 + 216);
  v38 = *(v3 + 232);
  v37 = *(v3 + 248);
  v36 = *(v3 + 264);
  v35 = *(v3 + 280);
  v34 = *(v3 + 296);
  v32 = *(v3 + 312);
  v30 = *(v3 + 320);
  v33 = *(v3 + 328);
  v31 = *(v3 + 344);
  v29 = *(v3 + 360);
  v27 = *(v3 + 376);
  v28 = *(v3 + 377);
  v26 = *(v3 + 378);
  v25 = *(v3 + 392);
  v54 = *(v3 + 89);
  if ((*(v3 + 8) & 1) == 0)
  {
    v24 = *(v3 + 112);
    v23 = *(v3 + 122);
    v5 = *(v3 + 121);
    v16 = *(v3 + 123);
    v17 = *(v3 + 124);
    v18 = *(v3 + 24);
    sub_19393C360();
    v8 = v18;
    v9 = v24;
    v13 = v17;
    v12 = v16;
    v10 = v5;
    v6 = a3;
    v7 = a2;
    v11 = v23;
  }

  if (!v4)
  {
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v9 = OUTLINED_FUNCTION_46_3();
    }

    if ((v58 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v9 = OUTLINED_FUNCTION_46_3();
    }

    if ((v57 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v9 = OUTLINED_FUNCTION_46_3();
    }

    if ((v56 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v9 = OUTLINED_FUNCTION_46_3();
    }

    if ((v55 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      v9 = OUTLINED_FUNCTION_46_3();
    }

    if (v54 != 2)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      v9 = OUTLINED_FUNCTION_46_3();
    }

    if ((v53 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_73_3();
      sub_19393C360();
      OUTLINED_FUNCTION_81_3();
      v9 = v5;
    }

    if (*(v9 + 16))
    {
      v59 = v13;
      sub_193498B44(v9, 5, v7, &type metadata for GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle, v6, &off_1F07BEF08);
      v13 = v59;
    }

    if (v51 == 2)
    {
      v19 = v52;
    }

    else
    {
      v11 = v12;
      v12 = v13;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      OUTLINED_FUNCTION_81_3();
    }

    if (v10 != 2)
    {
      v11 = v12;
      v12 = v13;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      OUTLINED_FUNCTION_81_3();
    }

    if (v11 != 2)
    {
      v20 = v12;
      v21 = v13;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      v13 = v21;
      v12 = v20;
    }

    if (v12 != 2)
    {
      v22 = v13;
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
      v13 = v22;
    }

    if (v13 != 2)
    {
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
    }

    if (v50 != 2)
    {
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
      OUTLINED_FUNCTION_175_2();
    }

    if (v19 != 2)
    {
      OUTLINED_FUNCTION_73_3();
      sub_19393C2E0();
    }

    if ((v49 & 1) == 0)
    {
      sub_19393C3B0();
    }

    if ((v48 & 1) == 0)
    {
      OUTLINED_FUNCTION_178(18);
    }

    if ((v47 & 1) == 0)
    {
      OUTLINED_FUNCTION_178(19);
    }

    if ((v46 & 1) == 0)
    {
      OUTLINED_FUNCTION_178(20);
    }

    if ((v44 & 1) == 0)
    {
      OUTLINED_FUNCTION_178(21);
    }

    if (v45 != 2)
    {
      sub_19393C2E0();
    }

    if (v43 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v41 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v42 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v40 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if ((v39 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v38 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v37 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v36 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v35 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v34 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v32 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if (v33)
    {
      OUTLINED_FUNCTION_181(v30, v33, 34);
    }

    if ((v31 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if (v28 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v26 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if ((v25 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }
  }
}

void sub_1934BCBF8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8B88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_20(v4, xmmword_1939526E0);
  OUTLINED_FUNCTION_63("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "Topic");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_28_4(v10, 7);
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "Synopsis");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_16_6(v14, "VisualConcept");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  *v16 = "VisualTopLine";
  *(v16 + 1) = 13;
  v17 = OUTLINED_FUNCTION_1_3(v16);
  v6(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BCDF0()
{
  OUTLINED_FUNCTION_115();
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, qword_1EAEA8BA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v79 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v79, xmmword_193952730);
  OUTLINED_FUNCTION_83_0("urgencyModelInferenceEnabled");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_61();
  *v10 = v2;
  v11 = OUTLINED_FUNCTION_5_4(v9, "fallbackToLLMUrgencyClassifier");
  v7(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v13 = OUTLINED_FUNCTION_5_4(v12, "inputLength");
  v7(v13);
  v14 = OUTLINED_FUNCTION_13((v1 + 3 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "inputTokensCount");
  v7(v15);
  v16 = OUTLINED_FUNCTION_19_2((v1 + 4 * v5));
  v17 = OUTLINED_FUNCTION_36_0(v16, "overestimatedInputTokensCount");
  v7(v17);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_140_0(v18);
  v20 = OUTLINED_FUNCTION_5_4(v19, "isLLMClassifierTriggered");
  v7(v20);
  v21 = OUTLINED_FUNCTION_30_0((v1 + v5 * v0));
  v22 = OUTLINED_FUNCTION_23_7(v21, "languageDetected");
  v7(v22);
  OUTLINED_FUNCTION_33_0(8 * v5);
  OUTLINED_FUNCTION_121_1(v23);
  v25 = OUTLINED_FUNCTION_5_4(v24, "responseUrgency");
  v7(v25);
  v26 = OUTLINED_FUNCTION_55_2((v1 + 8 * v5));
  v27 = OUTLINED_FUNCTION_36_0(v26, "responseUrgencyFastClassifier");
  v7(v27);
  v28 = OUTLINED_FUNCTION_44(9 * v5);
  *v29 = 10;
  v30 = OUTLINED_FUNCTION_15(v28, 28);
  v7(v30);
  v31 = OUTLINED_FUNCTION_52_0();
  *v32 = 11;
  v33 = OUTLINED_FUNCTION_23_7(v31, "confidenceBucket");
  v7(v33);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_187_0(v34);
  v36 = OUTLINED_FUNCTION_15(v35, 26);
  v7(v36);
  v37 = OUTLINED_FUNCTION_52_0();
  *v38 = 13;
  v39 = OUTLINED_FUNCTION_5_4(v37, "latencyFastClassifier");
  v7(v39);
  v40 = OUTLINED_FUNCTION_52_0();
  *v41 = 14;
  v42 = OUTLINED_FUNCTION_5_4(v40, "latencyLLMClassifier");
  v7(v42);
  v43 = OUTLINED_FUNCTION_52_0();
  *v44 = 15;
  v45 = OUTLINED_FUNCTION_15(v43, 24);
  v7(v45);
  v46 = OUTLINED_FUNCTION_33_0(16 * v5);
  *v47 = 16;
  v48 = OUTLINED_FUNCTION_36_0(v46, "inputHasAttachment");
  v7(v48);
  v49 = OUTLINED_FUNCTION_3_1(v1 + 16 * v5);
  *v50 = 17;
  v51 = OUTLINED_FUNCTION_23_7(v49, "inputHasTapback");
  v7(v51);
  v52 = OUTLINED_FUNCTION_44(17 * v5);
  *v53 = 18;
  v54 = OUTLINED_FUNCTION_23_7(v52, "inputHasURL");
  v7(v54);
  v55 = OUTLINED_FUNCTION_52_0();
  *v56 = 19;
  v57 = OUTLINED_FUNCTION_15(v55, 15);
  v7(v57);
  v58 = OUTLINED_FUNCTION_52_0();
  *v59 = 20;
  v60 = OUTLINED_FUNCTION_15(v58, 10);
  v7(v60);
  v61 = OUTLINED_FUNCTION_52_0();
  *v62 = 21;
  v63 = OUTLINED_FUNCTION_23_7(v61, "titleLength");
  v7(v63);
  v64 = OUTLINED_FUNCTION_52_0();
  *v65 = 22;
  v66 = OUTLINED_FUNCTION_15(v64, 14);
  v7(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 23;
  v69 = OUTLINED_FUNCTION_15(v67, 13);
  v7(v69);
  v70 = OUTLINED_FUNCTION_52_0();
  *v71 = 24;
  v72 = OUTLINED_FUNCTION_15(v70, 12);
  v7(v72);
  v73 = OUTLINED_FUNCTION_52_0();
  *v74 = 25;
  v75 = OUTLINED_FUNCTION_15(v73, 16);
  v7(v75);
  v76 = OUTLINED_FUNCTION_52_0();
  *v77 = 26;
  *v76 = "attachmentsLength";
  v76[1] = 17;
  v78 = OUTLINED_FUNCTION_41(v76);
  v7(v78);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934BD2E8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 6:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 3:
      case 4:
      case 5:
      case 8:
      case 10:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 9:
        OUTLINED_FUNCTION_98();
        sub_19393C160();
        break;
      case 11:
        sub_1934982A8();
        break;
      case 12:
      case 13:
      case 14:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BD470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 1);
  v6 = *(v3 + 16);
  v37 = *(v3 + 32);
  v33 = *(v3 + 48);
  v7 = *(v3 + 49);
  v36 = *(v3 + 64);
  v31 = *(v3 + 88);
  v32 = *(v3 + 80);
  v29 = *(v3 + 121);
  v30 = *(v3 + 104);
  v25 = *(v3 + 152);
  v26 = *(v3 + 136);
  v24 = *(v3 + 168);
  v38 = *(v3 + 169);
  v34 = *(v3 + 170);
  v35 = *(v3 + 171);
  v27 = *(v3 + 172);
  v28 = *(v3 + 173);
  v23 = *(v3 + 184);
  v22 = *(v3 + 200);
  v8 = *(v3 + 216);
  v21 = *(v3 + 232);
  v20 = *(v3 + 248);
  v19 = *(v3 + 264);
  v18 = *(v3 + 280);
  if (*v3 != 2)
  {
    sub_19393C2E0();
  }

  if (!v4)
  {
    if (v5 != 2)
    {
      sub_19393C2E0();
    }

    if ((v6 & 1) == 0)
    {
      sub_19393C360();
    }

    v9 = v38;
    if ((v37 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
    }

    v11 = v34;
    v10 = v35;
    if ((v33 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
      v10 = v35;
      v11 = v34;
      v9 = v38;
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v36)
    {
      OUTLINED_FUNCTION_185_0();
      sub_19393C3C0();
    }

    if ((v32 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
    }

    if ((v31 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C340();
    }

    if ((v30 & 1) == 0)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C360();
    }

    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_185_0();
      sub_193447324(v12, v13, v14, v15, v16, v17);
    }

    if ((v26 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C3B0();
    }

    if ((v25 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C3B0();
    }

    if ((v24 & 1) == 0)
    {
      OUTLINED_FUNCTION_148_1();
      sub_19393C3B0();
    }

    if (v9 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v11 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v10 != 2)
    {
      OUTLINED_FUNCTION_88_3();
      sub_19393C2E0();
    }

    if (v27 != 2)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C2E0();
    }

    if (v28 != 2)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C2E0();
    }

    if ((v23 & 1) == 0)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C360();
    }

    if ((v22 & 1) == 0)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C360();
    }

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_115_3();
      sub_19393C360();
    }

    if ((v21 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v18 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }
  }
}

void sub_1934BDA04()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8BB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "Today");
  v7(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25(v11, "Within24Hours");
  v7(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_25(v14, "After24Hours");
  v7(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_25(v16, "NoEventTime");
  v7(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BDBF4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }
  }

  return result;
}

uint64_t sub_1934BDC40(uint64_t result)
{
  if ((*(v1 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    return sub_19393C360();
  }

  return v2;
}

void sub_1934BDCE0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8BE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("fromStatus");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  *v8 = "toStatus";
  v8[1] = 8;
  v9 = OUTLINED_FUNCTION_70(v8);
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  *v10 = "duration";
  *(v10 + 1) = 8;
  v11 = OUTLINED_FUNCTION_70(v10);
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BDE38()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C1E0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }
  }

  return result;
}

void sub_1934BDEB0()
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_276();
  v3 = *(v0 + 40);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      sub_19393C3B0();
    }
  }
}

void sub_1934BDFB0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8C00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("outputTokensCount");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_61();
  *v10 = v1;
  v11 = OUTLINED_FUNCTION_5_4(v9, "tokensPerSecond");
  v7(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v13 = OUTLINED_FUNCTION_5_4(v12, "isSignedIn");
  v7(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_5_4(v14, "modelUsed");
  v7(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_5_4(v16, "webSearchUsed");
  v7(v17);
  v18 = OUTLINED_FUNCTION_38_2();
  *v19 = 6;
  *v18 = "accountType";
  v18[1] = 11;
  v20 = OUTLINED_FUNCTION_41(v18);
  v7(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BE188()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      case 3:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 6:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1934BE268()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v13 = *(v0 + 65);
  if ((*(v0 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      sub_19393C3B0();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_181(v4, v5, 4);
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_106();
      sub_193447324(v7, v8, v9, v10, v11, v12);
    }
  }
}

void sub_1934BE3FC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8C18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("PartnerCloudAccountTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  *v6 = "Free";
  v6[1] = 4;
  v7 = OUTLINED_FUNCTION_70(v6);
  v4(v7);
  v8 = OUTLINED_FUNCTION_35_4();
  v9 = OUTLINED_FUNCTION_48(v8, "Premium");
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BE580(void *a1@<X8>)
{
  OUTLINED_FUNCTION_184();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  GenerativeFunctionsInstrumentationError.GenericError.init()(v3);
  *a1 = v1;
}

void sub_1934BE5BC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8C30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v5, xmmword_193952700);
  OUTLINED_FUNCTION_63("genericError");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_29_1();
  v10 = OUTLINED_FUNCTION_0_0(v9, "modelManagerSessionError");
  v7(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v12 = OUTLINED_FUNCTION_0_0(v11, "modelManagerInferenceError");
  v7(v12);
  v13 = OUTLINED_FUNCTION_13((v1 + 3 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "generativeFunctionError");
  v7(v14);
  v15 = OUTLINED_FUNCTION_19_2((v1 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "tokenGenerationError");
  v7(v16);
  OUTLINED_FUNCTION_45_2(5 * v4);
  OUTLINED_FUNCTION_140_0(v17);
  v19 = OUTLINED_FUNCTION_0_0(v18, "summarizationError");
  v7(v19);
  v20 = OUTLINED_FUNCTION_30_0((v1 + v4 * v0));
  v21 = OUTLINED_FUNCTION_0_0(v20, "classificationError");
  v7(v21);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BEC08(void *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError.init()(v3);
  *a1 = v1;
}

void sub_1934BEC44(void *a1@<X8>)
{
  OUTLINED_FUNCTION_123_1();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.init()(v3);
  *a1 = v1;
}

void sub_1934BEC80(uint64_t *a2@<X8>)
{
  v3 = swift_allocEmptyBox();
  GenerativeFunctionsInstrumentationError.SummarizationError.UnknownError.init()();
  *a2 = v3;
}

void sub_1934BECB0(uint64_t *a2@<X8>)
{
  v3 = swift_allocEmptyBox();
  GenerativeFunctionsInstrumentationError.ClassificationError.UnknownError.init()();
  *a2 = v3;
}

uint64_t objectdestroy_43Tm()
{

  OUTLINED_FUNCTION_173_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_46Tm()
{

  OUTLINED_FUNCTION_173_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1934BED50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(*v8 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_182_0(v21, v22, v23, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError, v24, &off_1F07BF0A0, v25, v26, v27);
      break;
    case 2:
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_135_1(v9, v10, v11, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError, v12, &off_1F07BF1B8, v13, v14, v27);
      break;
    case 3:
      OUTLINED_FUNCTION_139_2();
      OUTLINED_FUNCTION_174(v15, v16, v17, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError, v18, &off_1F07BF210, v19, v20, v27);
      break;
    case 4:
      OUTLINED_FUNCTION_24_9();
      break;
    case 5:
    case 6:
      OUTLINED_FUNCTION_139_2();
      break;
    default:
      OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for GenerativeFunctionsInstrumentationError.GenericError, a3, &off_1F07BF070, a7, a8, *(*v8 + 16));
      break;
  }

  sub_193447600();
}

void sub_1934BEEFC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8C48);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("domain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "code");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BF02C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1934BF094()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }
}

void sub_1934BF164()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8C60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("simpleError");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "unrecognizedInferenceProviderError");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "inferenceError");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "missingEntitlementError");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "useCaseDisabledError");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934BF5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(*v4 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_182_0(v23, v24, v25, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.UnrecognizedInferenceProviderError, v26, &off_1F07BF128, v27, v28, v29);
      break;
    case 2:
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_135_1(v11, v12, v13, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerInferenceError, v14, &off_1F07BF1B8, v15, v16, v29);
      break;
    case 3:
      OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_174(v17, v18, v19, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.MissingEntitlementError, v20, &off_1F07BF158, v21, v22, v29);
      break;
    case 4:
      OUTLINED_FUNCTION_138_0();
      break;
    default:
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_134(v5, v6, v7, &type metadata for GenerativeFunctionsInstrumentationError.ModelManagerSessionError.SimpleError, v8, &off_1F07BF0D0, v9, v10, v29);
      break;
  }

  sub_193447600();
}

void sub_1934BF7B0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8C90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v71 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v71, xmmword_193952740);
  OUTLINED_FUNCTION_63("ErrorCaseUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  v8 = OUTLINED_FUNCTION_0_0(v7, "MissingFeatureFlag");
  v5(v8);
  v9 = OUTLINED_FUNCTION_35_4();
  v10 = OUTLINED_FUNCTION_0_0(v9, "DaemonNotFound");
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v12 = OUTLINED_FUNCTION_0_0(v11, "UnsupportedNumberOfAssetBundles");
  v5(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v14 = OUTLINED_FUNCTION_0_0(v13, "CancelledDueToLowPriority");
  v5(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v16 = OUTLINED_FUNCTION_0_0(v15, "InternalError");
  v5(v16);
  v17 = OUTLINED_FUNCTION_14_4(6);
  *v17 = "UnrecognizedUnderlyingError";
  *(v17 + 1) = 27;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  v5(v18);
  OUTLINED_FUNCTION_120();
  v20 = OUTLINED_FUNCTION_30_0((v0 + v19));
  v21 = OUTLINED_FUNCTION_18_1(v20, "XpcError");
  v5(v21);
  v22 = OUTLINED_FUNCTION_67_1((v0 + 8 * v3));
  v23 = OUTLINED_FUNCTION_16_6(v22, "NotSupportedOnExternalBuild");
  v5(v23);
  OUTLINED_FUNCTION_45_2(9 * v3);
  OUTLINED_FUNCTION_131_3(v24);
  *v25 = "InsufficientSystemResources";
  v25[1] = 27;
  v26 = OUTLINED_FUNCTION_1_3(v25);
  v5(v26);
  v27 = OUTLINED_FUNCTION_14_4(10);
  v28 = OUTLINED_FUNCTION_0_0(v27, "DeniedDueToSystemState");
  v5(v28);
  v29 = OUTLINED_FUNCTION_14_4(11);
  v30 = OUTLINED_FUNCTION_18_1(v29, "OnBehalfOfProcessNotRunning");
  v5(v30);
  v31 = OUTLINED_FUNCTION_14_4(12);
  v32 = OUTLINED_FUNCTION_18_1(v31, "ResourceNotFound");
  v5(v32);
  v33 = OUTLINED_FUNCTION_32_10();
  v34 = OUTLINED_FUNCTION_0_0(v33, "ResourceInCancelState");
  v5(v34);
  v35 = OUTLINED_FUNCTION_32_10();
  v36 = OUTLINED_FUNCTION_28_4(v35, 18);
  v5(v36);
  OUTLINED_FUNCTION_45_2(15 * v3);
  OUTLINED_FUNCTION_180_0(v37);
  v39 = OUTLINED_FUNCTION_16_6(v38, "AssetBundleNotFound");
  v5(v39);
  v40 = OUTLINED_FUNCTION_67_1((v0 + 16 * v3));
  v41 = OUTLINED_FUNCTION_28_4(v40, 13);
  v5(v41);
  v42 = OUTLINED_FUNCTION_45_2(17 * v3);
  *v43 = 17;
  v44 = OUTLINED_FUNCTION_0_0(v42, "UnrecognizedModelCatalogResource");
  v5(v44);
  v45 = OUTLINED_FUNCTION_32_10();
  v46 = OUTLINED_FUNCTION_0_0(v45, "NoCommonInferenceProviderForAssets");
  v5(v46);
  v47 = OUTLINED_FUNCTION_60_1((v0 + 19 * v3));
  v48 = OUTLINED_FUNCTION_28_4(v47, 15);
  v5(v48);
  v49 = OUTLINED_FUNCTION_60_1((v0 + 20 * v3));
  v50 = OUTLINED_FUNCTION_28_4(v49, 27);
  v5(v50);
  v51 = OUTLINED_FUNCTION_32_10();
  v52 = OUTLINED_FUNCTION_18_1(v51, "InvalidRequestRequiredAssetIDs");
  v5(v52);
  v53 = OUTLINED_FUNCTION_32_10();
  v54 = OUTLINED_FUNCTION_18_1(v53, "AssetDoesNotSupportDynamicMode");
  v5(v54);
  v55 = OUTLINED_FUNCTION_67_1((v0 + 23 * v3));
  v56 = OUTLINED_FUNCTION_28_4(v55, 17);
  v5(v56);
  v57 = OUTLINED_FUNCTION_14_4(24);
  v58 = OUTLINED_FUNCTION_18_1(v57, "DeniedAssertionBySystem");
  v5(v58);
  v59 = OUTLINED_FUNCTION_32_10();
  v60 = OUTLINED_FUNCTION_28_4(v59, 15);
  v5(v60);
  v61 = OUTLINED_FUNCTION_14_4(26);
  v62 = OUTLINED_FUNCTION_16_6(v61, "SessionInCancelState");
  v5(v62);
  v63 = OUTLINED_FUNCTION_32_10();
  v64 = OUTLINED_FUNCTION_28_4(v63, 31);
  v5(v64);
  v65 = OUTLINED_FUNCTION_14_4(28);
  v66 = OUTLINED_FUNCTION_28_4(v65, 18);
  v5(v66);
  v67 = OUTLINED_FUNCTION_14_4(29);
  v68 = OUTLINED_FUNCTION_28_4(v67, 17);
  v5(v68);
  v69 = OUTLINED_FUNCTION_32_10();
  *v69 = "PolicyNotFound";
  *(v69 + 1) = 14;
  v70 = OUTLINED_FUNCTION_1_3(v69);
  v5(v70);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934BFEC4()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8D08);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v50 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v50, xmmword_193952750);
  *v0 = 0;
  OUTLINED_FUNCTION_83_0("ErrorCaseUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_17_8((v0 + v6));
  v11 = OUTLINED_FUNCTION_5_4(v10, "NotImplemented");
  v8(v11);
  v12 = OUTLINED_FUNCTION_59_5();
  *v13 = v1;
  v14 = OUTLINED_FUNCTION_5_4(v12, "InvalidClientData");
  v8(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v6));
  v16 = OUTLINED_FUNCTION_23_7(v15, "UnsupportedRequestType");
  v8(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v6));
  v18 = OUTLINED_FUNCTION_23_7(v17, "ResponseEncodingFailed");
  v8(v18);
  v19 = OUTLINED_FUNCTION_19_2((v0 + 5 * v6));
  v20 = OUTLINED_FUNCTION_5_4(v19, "AlreadyLoaded");
  v8(v20);
  v21 = OUTLINED_FUNCTION_54_1(6);
  v22 = OUTLINED_FUNCTION_36_0(v21, "NotLoaded");
  v8(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_30_0((v0 + v23));
  v25 = OUTLINED_FUNCTION_23_7(v24, "LoadFailed");
  v8(v25);
  v26 = OUTLINED_FUNCTION_39_3(&v0[v6]);
  v27 = OUTLINED_FUNCTION_5_4(v26, "InferenceFailed");
  v8(v27);
  v28 = OUTLINED_FUNCTION_44(9 * v6);
  *v29 = 9;
  v30 = OUTLINED_FUNCTION_5_4(v28, "OperationNotAllowed");
  v8(v30);
  v31 = OUTLINED_FUNCTION_60_1((v0 + 10 * v6));
  v32 = OUTLINED_FUNCTION_15(v31, 14);
  v8(v32);
  v33 = OUTLINED_FUNCTION_52_0();
  *v34 = 11;
  v35 = OUTLINED_FUNCTION_5_4(v33, "UnrecognizedUnderlyingError");
  v8(v35);
  v36 = OUTLINED_FUNCTION_54_1(12);
  v37 = OUTLINED_FUNCTION_5_4(v36, "OperationCancelled");
  v8(v37);
  v38 = OUTLINED_FUNCTION_3_1(v0 + 13 * v6);
  *v39 = v40;
  v41 = OUTLINED_FUNCTION_5_4(v38, "InternalError");
  v8(v41);
  v42 = OUTLINED_FUNCTION_3_1(v0 + 14 * v6);
  *v43 = v44;
  v45 = OUTLINED_FUNCTION_36_0(v42, "RateLimited");
  v8(v45);
  OUTLINED_FUNCTION_33_0(16 * v6);
  OUTLINED_FUNCTION_180_0(v46);
  *v47 = "XpcError";
  v47[1] = 8;
  v48 = OUTLINED_FUNCTION_41(v47);
  v8(v48);
  return sub_19393C410();
}

void sub_1934C0280()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8D20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("modelError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  *v8 = "sanitizerError";
  v8[1] = 14;
  v9 = OUTLINED_FUNCTION_70(v8);
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "useCaseDisablementError");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C03D8()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        OUTLINED_FUNCTION_111_5();
        sub_193498018();
        OUTLINED_FUNCTION_188();
        if (v14)
        {
          v2 = &v12;
          GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError.init()(&v12);
          v3 = v13;
        }

        else
        {
          OUTLINED_FUNCTION_137_0();
        }

        v2 = *v2;
        OUTLINED_FUNCTION_123_1();
        v8 = swift_allocObject();
        v9 = OUTLINED_FUNCTION_177_0(v8);
        *(v9 + 25) = v3;
        OUTLINED_FUNCTION_285(v9);
        break;
      case 2:
        OUTLINED_FUNCTION_111_5();
        sub_193498018();
        OUTLINED_FUNCTION_188();
        if (v14)
        {
          v2 = &v12;
          GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.init()(&v12);
          v3 = v13;
        }

        else
        {
          OUTLINED_FUNCTION_137_0();
        }

        v2 = *v2;
        OUTLINED_FUNCTION_123_1();
        v6 = swift_allocObject();
        v7 = OUTLINED_FUNCTION_177_0(v6);
        *(v7 + 25) = v3;
        OUTLINED_FUNCTION_277(v7);
        break;
      case 1:
        OUTLINED_FUNCTION_111_5();
        sub_193498018();
        OUTLINED_FUNCTION_188();
        if (v14)
        {
          v2 = &v12;
          GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError.init()(&v12);
          v3 = v13;
        }

        else
        {
          OUTLINED_FUNCTION_137_0();
        }

        v2 = *v2;
        OUTLINED_FUNCTION_123_1();
        v10 = swift_allocObject();
        v11 = OUTLINED_FUNCTION_177_0(v10);
        *(v11 + 25) = v3;
        *v1 = v11;
        break;
    }
  }
}

void sub_1934C05AC()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    if (v0 >> 62 == 1)
    {
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_182_0(v1, v2, v3, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError, v4, &off_1F07BF298, v5, v6, v19);
    }

    else
    {
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_135_1(v13, v14, v15, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.UseCaseDisablementError, v16, &off_1F07BF2F0, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    OUTLINED_FUNCTION_134(v7, v8, v9, &type metadata for GenerativeFunctionsInstrumentationError.GenerativeFunctionError.ModelError, v10, &off_1F07BF240, v11, v12, v19);
  }

  sub_193447600();
}

void sub_1934C073C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8D50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526E0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("ErrorCaseUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "ResourcesUnavailable");
  v7(v10);
  v11 = OUTLINED_FUNCTION_59_5();
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25(v11, "Timeout");
  v7(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_25(v14, "RateLimited");
  v7(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_25(v16, "Canceled");
  v7(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v19 = OUTLINED_FUNCTION_25(v18, "TooManyTokens");
  v7(v19);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C09D8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8D80);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ErrorCaseUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_4_9();
  *v6 = "SanitizerAssetNotAvailable";
  v6[1] = 26;
  v7 = OUTLINED_FUNCTION_70(v6);
  v4(v7);
  v8 = OUTLINED_FUNCTION_35_4();
  v9 = OUTLINED_FUNCTION_48(v8, "SanitizerRejected");
  v4(v9);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C0BF4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8DB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBE0);
  *v1 = 0;
  *v0 = "ErrorCaseUnknown";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_65();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  *v7 = "UseCaseDisabled";
  v7[1] = 15;
  v8 = OUTLINED_FUNCTION_70(v7);
  v5(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C0DF8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8DE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v4, xmmword_193951270);
  OUTLINED_FUNCTION_63("ErrorCaseUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_4_9();
  v9 = OUTLINED_FUNCTION_0_0(v8, "Timeout");
  v6(v9);
  v10 = OUTLINED_FUNCTION_35_4();
  v11 = OUTLINED_FUNCTION_0_0(v10, "RateLimited");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "TooManyTokens");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_16_6(v14, "Canceled");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v17 = OUTLINED_FUNCTION_0_0(v16, "UnservicableConfiguration");
  v6(v17);
  v18 = OUTLINED_FUNCTION_14_4(6);
  v19 = OUTLINED_FUNCTION_0_0(v18, "EmbeddingSpaceMismatch");
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_30_0((v0 + v20));
  v22 = OUTLINED_FUNCTION_0_0(v21, "UnknownSpecialToken");
  v6(v22);
  v23 = OUTLINED_FUNCTION_60_1((v0 + 8 * v3));
  v24 = OUTLINED_FUNCTION_0_0(v23, "InvalidGrammar");
  v6(v24);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v10 = sub_19393C420();
  __swift_allocate_value_buffer(v10, qword_1EAEA8DF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v12 = *(v11 + 72);
  OUTLINED_FUNCTION_49_0();
  v13 = OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_8_18(v13, xmmword_1939526B0);
  OUTLINED_FUNCTION_290("unknownError");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_50_1();
  v15(v16);
  v17 = OUTLINED_FUNCTION_9_4((v9 + v12));
  v18 = OUTLINED_FUNCTION_5_4(v17, "inputTooShort");
  v15(v18);
  v19 = OUTLINED_FUNCTION_13((v9 + 2 * v12));
  v20 = OUTLINED_FUNCTION_23_7(v19, "missingRequiredData");
  v15(v20);
  v21 = OUTLINED_FUNCTION_26_5();
  *v22 = 1000;
  v23 = OUTLINED_FUNCTION_5_4(v21, "useCaseDisabled");
  v15(v23);
  v24 = OUTLINED_FUNCTION_66_6();
  *v25 = 2000;
  v26 = OUTLINED_FUNCTION_23_7(v24, "missingResponseData");
  v15(v26);
  v27 = OUTLINED_FUNCTION_38_2();
  *v28 = 2001;
  v29 = OUTLINED_FUNCTION_5_4(v27, "unknownSummarizationStyle");
  v15(v29);
  v30 = OUTLINED_FUNCTION_3_1(v9 + 6 * v12);
  *v31 = 2002;
  v32 = OUTLINED_FUNCTION_5_4(v30, "unknownVisualPromptUseCase");
  v15(v32);
  v33 = OUTLINED_FUNCTION_33_0(a9);
  *v34 = 2003;
  v35 = OUTLINED_FUNCTION_5_4(v33, "invalidModelBundleIdentifier");
  v15(v35);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C1654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(*v4 >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_158_0();
      OUTLINED_FUNCTION_135_1(v11, v12, v13, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.InputTooShort, v14, &off_1F07BF400, v15, v16, v17);
      break;
    case 2:
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_174(v5, v6, v7, &type metadata for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData, v8, &off_1F07BF430, v9, v10, v17);
      break;
    case 7:
      OUTLINED_FUNCTION_138_0();
      break;
    default:
      break;
  }

  sub_193447600();
}

uint64_t sub_1934C17F8()
{
  OUTLINED_FUNCTION_75_3();
  do
  {
    result = sub_19393C0E0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

void sub_1934C1880()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8E28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("minumumWordCount");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "inputWordCount");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C1A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 1)
    {
      sub_1934982A8();
    }
  }
}

void sub_1934C1B2C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA8E58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v20 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v20, xmmword_193952700);
  OUTLINED_FUNCTION_63("PropertyUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_4_9();
  v8 = OUTLINED_FUNCTION_16_6(v7, "Body");
  v5(v8);
  v9 = OUTLINED_FUNCTION_35_4();
  v10 = OUTLINED_FUNCTION_0_0(v9, "Elements");
  v5(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v12 = OUTLINED_FUNCTION_0_0(v11, "Recipients");
  v5(v12);
  v13 = OUTLINED_FUNCTION_60_1((v0 + 4 * v3));
  v14 = OUTLINED_FUNCTION_16_6(v13, "Sender");
  v5(v14);
  v15 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v16 = 5;
  v17 = OUTLINED_FUNCTION_0_0(v15, "Subject");
  v5(v17);
  v18 = OUTLINED_FUNCTION_60_1((v0 + 6 * v3));
  *v18 = "Title";
  *(v18 + 1) = 5;
  v19 = OUTLINED_FUNCTION_1_3(v18);
  v5(v19);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934C1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 8))
  {
    return sub_19393C3C0();
  }

  return result;
}

void sub_1934C1F0C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8EE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  *v0 = "unknownError";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v10 = 1000;
  v11 = OUTLINED_FUNCTION_0_0(v9, "useCaseDisabled");
  v7(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v13 = 2003;
  v14 = OUTLINED_FUNCTION_0_0(v12, "invalidModelBundleIdentifier");
  v7(v14);
  v15 = OUTLINED_FUNCTION_22_3();
  *v16 = 3000;
  v17 = OUTLINED_FUNCTION_0_0(v15, "invalidEmbeddingDimension");
  v7(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934C22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(*v4 >> 62)
  {
    case 3:
      OUTLINED_FUNCTION_158_0();
      break;
    default:
      break;
  }

  sub_193447600();
}

uint64_t sub_1934C2458(uint64_t a1, uint64_t *a2)
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_19393C410();
}

uint64_t sub_1934C24F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19394FAC0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v13 + 104))(v11, v12);
  return sub_19393C410();
}

uint64_t sub_1934C2658()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1934C26D8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F48);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("expectedDimension");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "actualDimension");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934C2808(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v11 = v4 + 16;
LABEL_7:
      a4(v11, a2, a3);
    }

    else if (result == 1)
    {
      v11 = v4;
      goto LABEL_7;
    }
  }
}

void sub_1934C288C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_103();
  v7 = *(v4 + 24);
  if ((*(v4 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_130();
    a4();
  }

  if (!v5 && (v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_130();
    a4();
  }
}

uint64_t sub_1934C2924(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

uint64_t OUTLINED_FUNCTION_150_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACF8];

  return sub_1934C2808(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_152_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAD98];

  sub_1934C288C(a1, a2, a3, v4);
}

double OUTLINED_FUNCTION_166_0()
{
  LOBYTE(STACK[0x860]) = 1;
  result = 0.0;
  *&STACK[0xB00] = 0u;
  *&STACK[0xB10] = 0u;
  *&STACK[0xB20] = 0u;
  *&STACK[0xB30] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_172_1()
{
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1)
{

  return sub_19393C3B0();
}

uint64_t OUTLINED_FUNCTION_278@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 24) = a2;
  *(result + 32) = v2;
  *(result + 40) = v3 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_297_0(uint64_t a1)
{

  return sub_19393C550();
}

void *OUTLINED_FUNCTION_298(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x68uLL);
}

uint64_t GenerativeFunctionsInstrumentationEvent.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_101(*(v1 + 20));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.identifiers.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.eventType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.subtype.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_101(v1);
  return sub_19344D364();
}

uint64_t GenerativeFunctionsInstrumentationEvent.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_100_0();
  return sub_1934461D4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.threadQualityOfService.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2);
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.threadQualityOfService.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.unixEpochTime.setter(double a1)
{
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.unixEpochTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 56);
  result = sub_193444060(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.error.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.trialExperimentInfos.getter()
{
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
}

uint64_t GenerativeFunctionsInstrumentationEvent.trialExperimentInfos.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 60);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.trialExperimentInfos.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent._identifierSet.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 64);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x68uLL);
  return sub_19344FABC(__dst, &v5);
}

void *GenerativeFunctionsInstrumentationEvent._identifierSet.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 64);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_1934500D8(__dst);
  return memcpy((v1 + v3), v0, 0x68uLL);
}

uint64_t GenerativeFunctionsInstrumentationEvent._identifierSet.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1934C3404@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationEvent.Subtype.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C345C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1934C34F4()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_1934C3568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_19393CA30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_13_0();

      return sub_19393CA30();
    }
  }

  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.hash(into:)(uint64_t a1)
{
  sub_19393C640();
  OUTLINED_FUNCTION_187();

  return sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_116_3(v0);
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_1934C37E8(uint64_t a1)
{
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_116_3(v1);
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientSessionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientRequestIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientApplicationIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.clientBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowGroupIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSessionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 36));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSessionIdentifier.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSessionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSpanIdentifier.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.intelligenceFlowSpanIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.getter()
{
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionIdentifier.getter()
{
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionInvocationIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 52));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionInvocationIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerAssetTransitionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 68));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerAssetTransitionIdentifier.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerAssetTransitionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  return OUTLINED_FUNCTION_1_4();
}

void GenerativeFunctionsInstrumentationEvent.Identifiers.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v0;
  OUTLINED_FUNCTION_3_4();
  v3 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_6();
  v64 = v10 - v11;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v61 - v13;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v61 - v15;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_173_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[3])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[5])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[7])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[9])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v20 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_72_4();
    v23(v22, v19, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    v26 = sub_1934C4560(v24, v25, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_73(v26);
    v27 = OUTLINED_FUNCTION_52_8();
    v28(v27);
  }

  v29 = v0 + v20[10];
  if (v29[8] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v30 = *v29;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v30);
  }

  if (*(v0 + v20[11] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v20[12] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v1);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_72_4();
    v32(v31, v1, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    v35 = sub_1934C4560(v33, v34, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_73(v35);
    v36 = OUTLINED_FUNCTION_52_8();
    v37(v36);
  }

  v38 = v0 + v20[14];
  if (*(v38 + 1))
  {
    v61 = *(v38 + 3);
    OUTLINED_FUNCTION_103_0();
    v2 = v0;
    sub_19393C640();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v39 = v62;
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v39);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_72_4();
    v41(v40, v39, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    v44 = sub_1934C4560(v42, v43, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_73(v44);
    v45 = OUTLINED_FUNCTION_52_8();
    v46(v45);
  }

  v47 = v63;
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v47);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v48 = OUTLINED_FUNCTION_72_4();
    v49(v48, v47, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    v52 = sub_1934C4560(v50, v51, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_73(v52);
    v53 = OUTLINED_FUNCTION_52_8();
    v54(v53);
  }

  v55 = v64;
  sub_1934486A4();
  OUTLINED_FUNCTION_5_3(v55);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v56 = OUTLINED_FUNCTION_72_4();
    v57(v56, v55, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_17();
    v60 = sub_1934C4560(v58, v59, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_73(v60);
    (*(v5 + 8))(v8, v3);
  }

  if (*(v2 + v20[18] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_1934C4560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.namespaceName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.experimentId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.treatmentId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

double GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void static GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_115();
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 20);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v14 = *(v7 + 40);
  v13 = *(v7 + 48);
  if (*(v0 + 8))
  {
    if (!v8)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_155(v0);
    v17 = v17 && v15 == v16;
    if (!v17)
    {
      v27 = v13;
      v28 = v14;
      v18 = v6;
      v19 = v5;
      v20 = v11;
      v21 = sub_19393CA30();
      v11 = v20;
      v5 = v19;
      v6 = v18;
      v13 = v27;
      v14 = v28;
      if ((v21 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_33;
  }

  if (v2)
  {
    if (!v10)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v1 == v9)
    {
      v22 = v10;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_33;
    }
  }

  if (v3)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    if (v4 != v11 || v3 != v12)
    {
      v24 = v5;
      v25 = sub_19393CA30();
      v5 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_33;
  }

  if (v6 && v13 && (v5 != v14 || v6 != v13))
  {
    sub_19393CA30();
  }

LABEL_33:
  OUTLINED_FUNCTION_114();
}

void GenerativeFunctionsInstrumentationEvent.TrialExperimentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 20);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
LABEL_3:
      sub_19393CAD0();
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_19393CAD0();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_19393CAD0();
      OUTLINED_FUNCTION_116();
      return;
    }
  }

  sub_19393CAD0();
  sub_19393CAE0();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_116();

  sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientSessionIdentifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientRequestIdentifiers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientApplicationIdentifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.clientBundleIdentifiers.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.intelligenceFlowGroupIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.intelligenceFlowSessionIdentifiers.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.intelligenceFlowSpanIdentifiers.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.useCaseIdentifiers.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.generativeFunctionIdentifiers.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.catalogResourceIdentifiers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.modelManagerRequestIdentifiers.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.modelManagerSessionIdentifiers.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.inferenceProviderIdentifiers.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1934C4DD8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = result + 40;
  v4 = a2 + 40;
  while (v2)
  {
    v4 += 16;
    v5 = GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter();
    v6 = v5 == GenerativeFunctionsInstrumentationMetadata.SummarizationEvent.SummarizationStyle.rawValue.getter();
    result = v6;
    v6 = !v6 || v2-- == 1;
    v3 += 16;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1934C4E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 72)
    {
      memcpy(__dst, v3, 0x41uLL);
      memcpy(v9, v3, 0x41uLL);
      memcpy(v11, i, 0x41uLL);
      memcpy(__src, i, 0x41uLL);
      sub_1934A8404(__dst, v7);
      sub_1934A8404(v11, v7);
      v5 = static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, 0x41uLL);
      sub_1934D5044(v12);
      memcpy(v13, v9, 0x41uLL);
      sub_1934D5044(v13);
      if (!v5)
      {
        break;
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[11];
  sub_1934D11C8(v1, *v0);
  v8 = OUTLINED_FUNCTION_188_0();
  sub_1934D11C8(v8, v9);
  sub_1934D11C8(v2, v3);
  sub_1934D11C8(v2, v4);
  v10 = OUTLINED_FUNCTION_102_4();
  sub_1934D11C8(v10, v11);
  sub_1934D1508(v2, v5);
  sub_1934D14B8(v2, v6);
  sub_1934D11C8(v2, v7);
  v12 = OUTLINED_FUNCTION_187();
  sub_1934D11C8(v12, v13);
  sub_1934D1240(v2, v18);
  sub_1934D11C8(v2, v19);
  sub_1934D11C8(v2, v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_107();

  return sub_1934D11C8(v14, v15);
}

uint64_t GenerativeFunctionsInstrumentationEvent.IdentifierSet.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationEvent.IdentifierSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C50C8(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationEvent.IdentifierSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C511C(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934C517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.onBehalfOfBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.createdByBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.assets.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 256;
  *(a1 + 74) = 2;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = 2;
}

uint64_t sub_1934C5468@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5490@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 73);
  v12 = *(a1 + 74);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 73);
  v21 = *(a2 + 74);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v24 = *(a2 + 8);
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != *(a2 + 16) || v6 != v15)
    {
      v51 = *(a2 + 88);
      v52 = v14;
      v50 = v13;
      v49 = v12;
      v48 = *(a2 + 80);
      v47 = *(a2 + 74);
      v26 = sub_19393CA30();
      v14 = v52;
      v21 = v47;
      v22 = v48;
      v12 = v49;
      v13 = v50;
      v23 = v51;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v8)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v16)
    {
      v27 = v17;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v9 != v19 || v10 != v18)
    {
      v29 = v14;
      v30 = v23;
      v31 = v13;
      v32 = v12;
      v33 = v22;
      v34 = v21;
      v35 = sub_19393CA30();
      v21 = v34;
      v22 = v33;
      v12 = v32;
      v13 = v31;
      v23 = v30;
      v14 = v29;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v20)
    {
      return 0;
    }

    v36 = v14;
    v37 = v23;
    v38 = v13;
    v39 = v12;
    v40 = v22;
    v41 = v21;
    v42 = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
    v43 = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
    v21 = v41;
    v22 = v40;
    v12 = v39;
    v13 = v38;
    v23 = v37;
    v14 = v36;
    if (v42 != v43)
    {
      return 0;
    }
  }

  if (v12 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }

    goto LABEL_43;
  }

  result = 0;
  if (v21 != 2 && ((v21 ^ v12) & 1) == 0)
  {
LABEL_43:
    v45 = v23;
    v46 = v14;
    if (sub_19344FFB0(v13, v22))
    {
      if (v46 == 2)
      {
        if (v45 != 2)
        {
          return 0;
        }
      }

      else if (v45 == 2 || ((v45 ^ v46) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + 40);
  v14 = v1[7];
  v3 = *(v1 + 73);
  v4 = *(v1 + 74);
  v5 = *(v1 + 88);
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v1 + 88);
    v7 = *v1;
    OUTLINED_FUNCTION_103_0();
    v8 = v7;
    v5 = v6;
    MEMORY[0x193B18060](v8);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v13)
  {
    OUTLINED_FUNCTION_104_0();
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v12);
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_8:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_188_0();
  sub_19393C640();
  if (v3)
  {
LABEL_9:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_13;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146_2();
  v9 = GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.rawValue.getter();
  MEMORY[0x193B18030](v9);
LABEL_13:
  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v10 = OUTLINED_FUNCTION_187();
  sub_1934D1240(v10, v11);
  if (v5 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_140_1();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934C5A04(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.errorString.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.errorType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.privateCloudMetrics.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), sizeof(__dst));
  memcpy(a1, (v1 + 96), 0x142uLL);
  return sub_1934486A4();
}

void *GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.privateCloudMetrics.setter(const void *a1)
{
  memcpy(v4, (v1 + 96), 0x142uLL);
  sub_193442B60(v4, &qword_1EAE3B4D0, &qword_193952790);
  return memcpy((v1 + 96), a1, 0x142uLL);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.fileResidentInfos.setter(uint64_t a1)
{

  *(v1 + 616) = a1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.prefixKVCacheTokensMatchCount.setter(uint64_t result, char a2)
{
  *(v2 + 624) = result;
  *(v2 + 632) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.promptModulesKVCacheTokensMatchCount.setter(uint64_t result, char a2)
{
  *(v2 + 640) = result;
  *(v2 + 648) = a2 & 1;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.outputImagesCount.setter(uint64_t result, char a2)
{
  *(v2 + 656) = result;
  *(v2 + 664) = a2 & 1;
  return result;
}

void *GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1934B59EC(v3);
  memcpy((a1 + 96), v3, 0x142uLL);
  sub_1934D1604(__src);
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 256;
  memcpy(__dst, (a1 + 96), 0x142uLL);
  sub_193442B60(__dst, &qword_1EAE3B4D0, &qword_193952790);
  memcpy((a1 + 96), v3, 0x142uLL);
  result = memcpy((a1 + 424), __src, 0xBAuLL);
  *(a1 + 616) = MEMORY[0x1E69E7CC0];
  *(a1 + 624) = 0;
  *(a1 + 632) = 1;
  *(a1 + 640) = 0;
  *(a1 + 648) = 1;
  *(a1 + 656) = 0;
  *(a1 + 664) = 1;
  return result;
}

uint64_t sub_1934C5E9C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5EC4@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5FB4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C5FDC@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.totalOutputTokensCount.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v1 = *(v0 + 24);
  v28 = v0[2];
  v29 = v0[4];
  v30 = v0[6];
  v35 = *(v0 + 40);
  v36 = *(v0 + 56);
  v37 = *(v0 + 72);
  v31 = v0[8];
  v32 = v0[10];
  v33 = v0[12];
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v34 = v0[14];
  v40 = *(v0 + 120);
  v2 = v0[16];
  v3 = *(v0 + 136);
  v4 = v0[18];
  v5 = *(v0 + 152);
  v6 = v0[20];
  v7 = *(v0 + 168);
  v8 = v0[22];
  v9 = *(v0 + 184);
  if (v10 == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      MEMORY[0x193B18060](v28);
      goto LABEL_6;
    }
  }

  else
  {
    v27 = *(v0 + 136);
    v11 = v0[16];
    v12 = *(v0 + 152);
    v13 = v0[18];
    v14 = *(v0 + 168);
    v15 = v0[20];
    v16 = *(v0 + 184);
    v17 = v0[22];
    v18 = *v0;
    sub_19393CAD0();
    v19 = v18;
    v8 = v17;
    v9 = v16;
    v6 = v15;
    v7 = v14;
    v4 = v13;
    v5 = v12;
    v2 = v11;
    v3 = v27;
    MEMORY[0x193B18060](v19);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v35)
  {
    MEMORY[0x193B18060](v29);
  }

  sub_19393CAD0();
  if (!v36)
  {
    v20 = OUTLINED_FUNCTION_76_4(v30);
    MEMORY[0x193B18060](v20);
  }

  sub_19393CAD0();
  if (!v37)
  {
    v21 = OUTLINED_FUNCTION_76_4(v31);
    MEMORY[0x193B18060](v21);
  }

  sub_19393CAD0();
  if (!v38)
  {
    v22 = OUTLINED_FUNCTION_76_4(v32);
    MEMORY[0x193B18060](v22);
  }

  sub_19393CAD0();
  if (!v39)
  {
    MEMORY[0x193B18060](v33);
  }

  if (v40)
  {
    sub_19393CAD0();
    if (!v3)
    {
      goto LABEL_18;
    }

LABEL_32:
    sub_19393CAD0();
    if (!v5)
    {
      goto LABEL_22;
    }

LABEL_33:
    sub_19393CAD0();
    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  sub_19393CAD0();
  MEMORY[0x193B18060](v34);
  if (v3)
  {
    goto LABEL_32;
  }

LABEL_18:
  sub_19393CAD0();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = v2;
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x193B18060](v23);
  if (v5)
  {
    goto LABEL_33;
  }

LABEL_22:
  sub_19393CAD0();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v24 = v4;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x193B18060](v24);
  if (!v7)
  {
LABEL_26:
    sub_19393CAD0();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v6;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x193B18060](v25);
    if (!v9)
    {
      goto LABEL_30;
    }

    return sub_19393CAD0();
  }

LABEL_34:
  sub_19393CAD0();
  if (!v9)
  {
LABEL_30:
    sub_19393CAD0();
    return MEMORY[0x193B18060](v8);
  }

  return sub_19393CAD0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C6860(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)();
  return sub_19393CB00();
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.asset.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_19344C630(v2, v3, v4, v5);
}

__n128 GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.asset.setter(uint64_t a1)
{
  sub_193442C40(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.residentRatio.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

double GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_193442C40(v1, 0, 0, 0);
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  return result;
}

BOOL static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 40);
  v106 = *(a1 + 48);
  v6 = *(a1 + 60);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 40);
  v104 = *(a2 + 48);
  v11 = *(a2 + 60);
  v105 = *(a2 + 64);
  if (!v2)
  {
    v102 = *(a2 + 32);
    v103 = *(a1 + 32);
    v107 = *(a2 + 56);
    v108 = *(a1 + 56);
    v101 = *(a1 + 64);
    OUTLINED_FUNCTION_69_1();
    sub_19344C630(v36, v37, v38, v39);
    if (!v7)
    {
      OUTLINED_FUNCTION_199();
      goto LABEL_24;
    }

    v40 = OUTLINED_FUNCTION_29_9();
    sub_19344C630(v40, v41, v42, v43);
    goto LABEL_19;
  }

  if (!v7)
  {
    v44 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v44, v45, v46, v47);
    OUTLINED_FUNCTION_199();
    v48 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v48, v49, v50, v51);

LABEL_19:
    v52 = OUTLINED_FUNCTION_8_6();
    sub_193442C40(v52, v53, v54, v55);
    v56 = OUTLINED_FUNCTION_29_9();
LABEL_20:
    sub_193442C40(v56, v57, v58, v59);
    return 0;
  }

  v102 = *(a2 + 32);
  v103 = *(a1 + 32);
  v107 = *(a2 + 56);
  v108 = *(a1 + 56);
  v101 = *(a1 + 64);
  if (*a1 != *a2 || v2 != v7)
  {
    OUTLINED_FUNCTION_2_0();
    if ((sub_19393CA30() & 1) == 0)
    {
      v82 = OUTLINED_FUNCTION_8_6();
      sub_19344C630(v82, v83, v84, v85);
      v86 = OUTLINED_FUNCTION_29_9();
      sub_19344C630(v86, v87, v88, v89);
      v90 = OUTLINED_FUNCTION_8_6();
      sub_19344C630(v90, v91, v92, v93);
      v94 = OUTLINED_FUNCTION_29_9();
      sub_193442C40(v94, v95, v96, v97);

      v56 = OUTLINED_FUNCTION_8_6();
      goto LABEL_20;
    }
  }

  if (v4 != v9 || v3 != v8)
  {
    v100 = sub_19393CA30();
    v14 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_29_9();
    sub_19344C630(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_8_6();
    sub_19344C630(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_29_9();
    sub_193442C40(v26, v27, v28, v29);

    v30 = OUTLINED_FUNCTION_8_6();
    sub_193442C40(v30, v31, v32, v33);
    if ((v100 & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      goto LABEL_14;
    }

LABEL_25:
    if (v103 == v102)
    {
      v81 = v10;
    }

    else
    {
      v81 = 1;
    }

    v35 = v107;
    v34 = v108;
    if (v81)
    {
      return 0;
    }

    goto LABEL_29;
  }

  v61 = OUTLINED_FUNCTION_8_6();
  sub_19344C630(v61, v62, v63, v64);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_69_1();
  sub_19344C630(v65, v66, v67, v68);
  v69 = OUTLINED_FUNCTION_8_6();
  sub_19344C630(v69, v70, v71, v72);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_69_1();
  sub_193442C40(v73, v74, v75, v76);

LABEL_24:
  v77 = OUTLINED_FUNCTION_8_6();
  sub_193442C40(v77, v78, v79, v80);
  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v35 = v107;
  v34 = v108;
  if (!v10)
  {
    return 0;
  }

LABEL_29:
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (v106 == v104)
    {
      v98 = v35;
    }

    else
    {
      v98 = 1;
    }

    if (v98)
    {
      return 0;
    }
  }

  if ((v101 & 1) == 0)
  {
    v99 = v105;
    if (v6 != v11)
    {
      v99 = 1;
    }

    return (v99 & 1) == 0;
  }

  return (v105 & 1) != 0;
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_19393CAD0();
      if (!v4)
      {
        goto LABEL_5;
      }

LABEL_9:
      sub_19393CAD0();
      goto LABEL_10;
    }
  }

  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_19393CAD0();
  MEMORY[0x193B18060](v5);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_19393CAD0();
  sub_19393CAE0();
LABEL_10:
  OUTLINED_FUNCTION_114();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C6DA4(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

void static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_91_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 9);
  v39 = v2[2];
  v41 = *(v2 + 24);
  v40 = *(v2 + 40);
  v30 = v2[6];
  v35 = v2[4];
  v36 = v2[7];
  v27 = v2[8];
  v32 = *(v2 + 72);
  v6 = v2[10];
  v7 = *(v2 + 88);
  v28 = *(v2 + 89);
  memcpy(__dst, v1 + 12, sizeof(__dst));
  memcpy(v50, v1 + 53, sizeof(v50));
  v22 = v1[77];
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  v37 = v0[2];
  v11 = *(v0 + 24);
  v38 = *(v0 + 40);
  v29 = v0[6];
  v33 = v0[4];
  v34 = v0[7];
  v31 = *(v0 + 72);
  v24 = v0[10];
  v25 = v0[8];
  v23 = *(v0 + 88);
  v26 = *(v0 + 89);
  memcpy(__src, v0 + 12, sizeof(__src));
  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_46;
    }

    v47[0] = v3;
    LOBYTE(v47[1]) = v4 & 1;
    v45[0] = v8;
    LOBYTE(v45[1]) = v9 & 1;
    v21 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter();
    if (v21 != GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter())
    {
      goto LABEL_46;
    }
  }

  if (v41)
  {
    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v39 == v37)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_46;
    }
  }

  if (v40)
  {
    if (!v38)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = v38;
    if (v35 != v33)
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_46;
    }
  }

  if (v36)
  {
    if (!v34)
    {
      goto LABEL_46;
    }

    v14 = v30 == v29 && v36 == v34;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (v34)
  {
    goto LABEL_46;
  }

  if (v32)
  {
    if (!v31)
    {
      goto LABEL_46;
    }

LABEL_34:
    if (v28)
    {
      OUTLINED_FUNCTION_124_2();
      if ((v26 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v26)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_124_2();
      v47[0] = v6;
      LOBYTE(v47[1]) = v16 & 1;
      v45[0] = v24;
      LOBYTE(v45[1]) = v23 & 1;
      v17 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter();
      if (v17 != GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter())
      {
        goto LABEL_46;
      }
    }

    memcpy(v47, __dst, 0x142uLL);
    memcpy(&v47[41], __src, 0x142uLL);
    memcpy(v48, __dst, 0x142uLL);
    if (sub_1934A83E0(v48) == 1)
    {
      memcpy(v45, &v47[41], 0x142uLL);
      if (sub_1934A83E0(v45) == 1)
      {
        OUTLINED_FUNCTION_168_1(v46);
        OUTLINED_FUNCTION_113_2();
        OUTLINED_FUNCTION_113_2();
        sub_193442B60(v46, &qword_1EAE3B4D0, &qword_193952790);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
    }

    else
    {
      OUTLINED_FUNCTION_168_1(v46);
      memcpy(v45, &v47[41], 0x142uLL);
      if (sub_1934A83E0(v45) != 1)
      {
        OUTLINED_FUNCTION_113_2();
        OUTLINED_FUNCTION_113_2();
        OUTLINED_FUNCTION_113_2();
        static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.== infix(_:_:)();
        v19 = v18;
        memcpy(v42, &v47[41], 0x142uLL);
        sub_1934D1634(v42);
        OUTLINED_FUNCTION_168_1(v43);
        sub_1934D1634(v43);
        OUTLINED_FUNCTION_168_1(v44);
        sub_193442B60(v44, &qword_1EAE3B4D0, &qword_193952790);
        if ((v19 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_48:
        memcpy(v47, v50, 0xBAuLL);
        if (sub_1934A83C4(v47) == 1)
        {
          memcpy(v45, v0 + 53, 0xBAuLL);
          if (sub_1934A83C4(v45) != 1)
          {
            goto LABEL_46;
          }
        }

        else
        {
          memcpy(v46, v50, 0xBAuLL);
          memcpy(v45, v0 + 53, 0xBAuLL);
          if (sub_1934A83C4(v45) == 1)
          {
            goto LABEL_46;
          }

          static GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.== infix(_:_:)();
          if ((v20 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        sub_1934C4E94(v22, v7);
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_168_1(v44);
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      OUTLINED_FUNCTION_75_0();
      sub_1934486A4();
      sub_1934D1634(v44);
    }

    memcpy(v45, v47, 0x28AuLL);
    sub_193442B60(v45, &qword_1EAE3B4F0, &qword_193952D00);
    goto LABEL_46;
  }

  v15 = v31;
  if (v27 != v25)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_46:
  OUTLINED_FUNCTION_116();
}

void GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_148_2();
  v19 = v1[2];
  v2 = v1[4];
  v25 = *(v1 + 24);
  v26 = *(v1 + 40);
  v3 = v1[7];
  v27 = *(v1 + 72);
  v24 = v1[10];
  v23 = *(v1 + 88);
  v28 = *(v1 + 89);
  v4 = v1[77];
  v5 = v1[78];
  v6 = *(v1 + 632);
  v20 = v1[80];
  v7 = *(v1 + 648);
  v21 = v1[82];
  v22 = v1[8];
  v8 = *(v1 + 664);
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = *(v1 + 632);
    v17 = v1[78];
    v10 = *(v1 + 648);
    v11 = *(v1 + 8);
    v12 = v1[4];
    v13 = *v1;
    OUTLINED_FUNCTION_103_0();
    __dst[0] = v13;
    v2 = v12;
    v14 = v11 & 1;
    v7 = v10;
    v5 = v17;
    v6 = v18;
    LOBYTE(__dst[1]) = v14;
    v15 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType.rawValue.getter();
    MEMORY[0x193B18030](v15);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v19);
  }

  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
LABEL_9:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
    if (v3)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_12:
  if (v27)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  if (v28)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __dst[0] = v24;
    LOBYTE(__dst[1]) = v23 & 1;
    v16 = GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType.rawValue.getter();
    MEMORY[0x193B18030](v16);
  }

  memcpy(__dst, v1 + 12, 0x142uLL);
  if (sub_1934A83E0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(v29, v1 + 12, 0x142uLL);
    sub_1934A84BC(v29, v30);
    GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.hash(into:)();
    memcpy(v30, v1 + 12, 0x142uLL);
    sub_1934D1634(v30);
  }

  memcpy(v30, v1 + 53, 0xBAuLL);
  if (sub_1934A83C4(v30) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.SpeculativeDecodingMetrics.hash(into:)();
  }

  sub_1934D1358(v0, v4);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v7)
    {
      goto LABEL_26;
    }

LABEL_29:
    OUTLINED_FUNCTION_104_0();
    if (!v8)
    {
      goto LABEL_27;
    }

LABEL_30:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v5);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_26:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v20);
  if (v8)
  {
    goto LABEL_30;
  }

LABEL_27:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v21);
LABEL_31:
  OUTLINED_FUNCTION_116();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C7704(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.hash(into:)();
  return sub_19393CB00();
}

__n128 GenerativeFunctionsInstrumentationMetadata.AssetAcquire.aneHintClientMetric.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  v3 = v1[4].n128_u8[8];
  v4 = v1[4].n128_u8[9];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.aneHintClientMetric.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 48) = *a1;
  OUTLINED_FUNCTION_134_2(v2);
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 256;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_1934C7858@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7880@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7970@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7998@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetAcquire.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 41);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 73);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 41);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = *(a2 + 72);
  v17 = *(a2 + 73);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v40 = *(a1 + 64);
    v38 = *(a1 + 72);
    v36 = *(a1 + 56);
    v37 = *(a2 + 56);
    v35 = *(a2 + 72);
    v33 = *(a2 + 64);
    v34 = *(a1 + 48);
    v32 = *(a2 + 48);
    v30 = *(a2 + 41);
    v31 = *(a1 + 73);
    v18 = *(a2 + 73);
    v29 = *(a1 + 41);
    v19 = *(a1 + 16);
    v20 = *(a2 + 16);
    v28 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter();
    v21 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter();
    v10 = v20;
    v4 = v29;
    v12 = v30;
    v2 = v19;
    v17 = v18;
    v9 = v31;
    v13 = v32;
    v15 = v33;
    v6 = v34;
    v16 = v35;
    LOBYTE(v5) = v36;
    LOBYTE(v14) = v37;
    v8 = v38;
    v7 = v40;
    if (v28 != v21)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v10)
    {
      v22 = v11;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (v4)
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v12)
    {
      return 0;
    }

    v41 = v7;
    v23 = v8;
    v24 = v15;
    v25 = v13;
    v39 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter();
    v26 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter();
    v13 = v25;
    v15 = v24;
    v8 = v23;
    v7 = v41;
    if (v39 != v26)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (v17)
    {
      return 1;
    }
  }

  else if ((v17 & 1) == 0)
  {
    if (v5)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14 & 1 | (v6 != v13))
    {
      return 0;
    }

    if (v8)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v16 & 1) != 0 || v7 != v15)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

void GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_148_2();
  v14 = *(v0 + 16);
  v1 = *(v0 + 24);
  v15 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 73);
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      MEMORY[0x193B18060](v14);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = *(v0 + 73);
    v8 = *(v0 + 56);
    v2 = *(v0 + 48);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    OUTLINED_FUNCTION_103_0();
    v5 = v10;
    v4 = v9;
    v3 = v2;
    LOBYTE(v2) = v8;
    v6 = v13;
    v11 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Result.rawValue.getter();
    MEMORY[0x193B18030](v11);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v15)
  {
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v12 = GenerativeFunctionsInstrumentationMetadata.AssetAcquire.Reason.rawValue.getter();
    MEMORY[0x193B18030](v12);
    if (v6)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_103_0();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v3);
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_104_0();
  if (v5)
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v4);
LABEL_15:
  OUTLINED_FUNCTION_194();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C7E64(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetAcquire.hash(into:)();
  return sub_19393CB00();
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_1934C7F54@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C7F7C@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C806C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C8094@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.AssetRelease.== infix(_:_:)()
{
  OUTLINED_FUNCTION_195();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 41);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 41);
  if (*(v1 + 9))
  {
    if ((*(v0 + 9) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(v0 + 9))
    {
      goto LABEL_16;
    }

    v8 = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter();
    if (v8 != GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter())
    {
      goto LABEL_16;
    }
  }

  if (v3)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v2 == v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0 && (v7 & 1) == 0)
    {
      GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
      GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_194();
}

void GenerativeFunctionsInstrumentationMetadata.AssetRelease.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 41);
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v6 = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Result.rawValue.getter();
  MEMORY[0x193B18030](v6);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v1);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v5 = GenerativeFunctionsInstrumentationMetadata.AssetRelease.Reason.rawValue.getter();
  MEMORY[0x193B18030](v5);
LABEL_8:
  OUTLINED_FUNCTION_114();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetRelease.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.AssetRelease.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C839C(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetRelease.hash(into:)();
  return sub_19393CB00();
}

__n128 GenerativeFunctionsInstrumentationMetadata.AssetTransition.fileResidentInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 113);
  result = *(v1 + 80);
  v5 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.AssetTransition.fileResidentInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v5;
  *(v1 + 112) = v2;
  *(v1 + 113) = v3;
  return result;
}

uint64_t sub_1934C84BC@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C84E4@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C85D4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C85FC@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C86EC@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C8714@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.residentRatio.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 28) != *(a2 + 28))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_51_5();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v4 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19393CAD0();
    if (!v3)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  v6 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v6);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (!v3)
  {
LABEL_4:
    sub_19393CAD0();
    return sub_19393CAE0();
  }

  return sub_19393CAD0();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_89_7(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934C89E8()
{
  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_89_7(v0);
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.AssetTransition.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v114 = *(a1 + 16);
  v112 = *(a1 + 24);
  v116 = *(a1 + 25);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 57);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v13 = *(a1 + 113);
  v111 = a2[2];
  v110 = *(a2 + 24);
  v14 = *(a2 + 25);
  v15 = a2[4];
  v16 = *(a2 + 40);
  v17 = *(a2 + 41);
  v18 = a2[6];
  v19 = *(a2 + 56);
  v20 = *(a2 + 57);
  v21 = a2[8];
  v22 = *(a2 + 72);
  v24 = a2[10];
  v23 = a2[11];
  v25 = a2[12];
  v26 = a2[13];
  v27 = *(a2 + 112);
  v28 = *(a2 + 113);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v29 = *(a1 + 8);
    v67 = *(a1 + 112);
    v65 = a2[10];
    v66 = a2[13];
    v98 = *(a2 + 112);
    v30 = *a2;
    v91 = a2[11];
    v94 = a2[12];
    v31 = *(a2 + 8);
    *&v126[0] = *a1;
    BYTE8(v126[0]) = v29 & 1;
    v120 = v30;
    v121 = v31 & 1;
    v102 = v11;
    v106 = v10;
    v88 = v13;
    v85 = v8;
    v79 = v28;
    v82 = v9;
    v72 = v4;
    v74 = v3;
    v32 = v22;
    v76 = v20;
    v33 = v21;
    v34 = v5;
    v35 = v6;
    v36 = v7;
    v37 = v18;
    v71 = v15;
    v38 = v19;
    v64 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    v39 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    v19 = v38;
    v15 = v71;
    v18 = v37;
    v7 = v36;
    v6 = v35;
    v5 = v34;
    v21 = v33;
    v20 = v76;
    v28 = v79;
    v22 = v32;
    v4 = v72;
    v3 = v74;
    v12 = v67;
    v9 = v82;
    v8 = v85;
    v13 = v88;
    LOBYTE(v23) = v91;
    v25 = v94;
    v24 = v65;
    v26 = v66;
    v11 = v102;
    v10 = v106;
    v27 = v98;
    if (v64 != v39)
    {
      return 0;
    }

LABEL_6:
    if (v116)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v14)
      {
        return 0;
      }

      *&v126[0] = v114;
      BYTE8(v126[0]) = v112 & 1;
      v120 = v111;
      v121 = v110 & 1;
      v99 = v27;
      v103 = v11;
      v107 = v10;
      v92 = v23;
      v95 = v25;
      v89 = v13;
      v86 = v8;
      v80 = v28;
      v83 = v9;
      v73 = v4;
      v75 = v3;
      v40 = v22;
      v115 = v21;
      v117 = v18;
      v70 = v16;
      v41 = v5;
      v42 = v6;
      v77 = v20;
      v43 = v7;
      v44 = v19;
      v113 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
      v45 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
      v19 = v44;
      v21 = v115;
      v18 = v117;
      v7 = v43;
      v20 = v77;
      v28 = v80;
      v6 = v42;
      v5 = v41;
      v16 = v70;
      v22 = v40;
      v4 = v73;
      v3 = v75;
      v9 = v83;
      v8 = v86;
      v13 = v89;
      LOBYTE(v23) = v92;
      v25 = v95;
      v11 = v103;
      v10 = v107;
      v27 = v99;
      if (v113 != v45)
      {
        return 0;
      }
    }

    if (v4)
    {
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v17)
      {
        return 0;
      }

      *&v126[0] = v2;
      BYTE8(v126[0]) = v3 & 1;
      v120 = v15;
      v121 = v16 & 1;
      v68 = v12;
      v100 = v27;
      v104 = v11;
      v108 = v10;
      v93 = v23;
      v96 = v25;
      v90 = v13;
      v87 = v8;
      v81 = v28;
      v84 = v9;
      v46 = v22;
      v47 = v21;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v51 = v18;
      v78 = v20;
      v52 = v19;
      v118 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v53 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v19 = v52;
      v20 = v78;
      v28 = v81;
      v18 = v51;
      v7 = v50;
      v6 = v49;
      v5 = v48;
      v21 = v47;
      v22 = v46;
      v9 = v84;
      v8 = v87;
      v13 = v90;
      LOBYTE(v23) = v93;
      v25 = v96;
      v11 = v104;
      v10 = v108;
      v27 = v100;
      v12 = v68;
      if (v118 != v53)
      {
        return 0;
      }
    }

    if (v7)
    {
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v20)
      {
        return 0;
      }

      *&v126[0] = v5;
      BYTE8(v126[0]) = v6 & 1;
      v120 = v18;
      v121 = v19 & 1;
      v69 = v12;
      v101 = v27;
      v105 = v11;
      v109 = v10;
      v97 = v25;
      v54 = v23;
      v55 = v13;
      v56 = v8;
      v57 = v9;
      v58 = v28;
      v59 = v22;
      v60 = v21;
      v119 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v61 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
      v21 = v60;
      v22 = v59;
      v28 = v58;
      v9 = v57;
      v8 = v56;
      v13 = v55;
      LOBYTE(v23) = v54;
      v25 = v97;
      v11 = v105;
      v10 = v109;
      v27 = v101;
      v12 = v69;
      if (v119 != v61)
      {
        return 0;
      }
    }

    if (v9)
    {
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == v21)
      {
        v62 = v22;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        return 0;
      }
    }

    if (v13)
    {
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v126[0] = v10;
      v126[1] = v11;
      v127 = v12;
      v128 = 0;
      if (v28)
      {
        return 0;
      }

      v120 = v24;
      v121 = v23 & 1;
      v122 = v25;
      v123 = v26 & 1;
      v124 = HIDWORD(v26);
      v125 = v27 & 1;
      if ((static GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.== infix(_:_:)(v126, &v120) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 9))
  {
    goto LABEL_6;
  }

  return 0;
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 41);
  v4 = *(v1 + 57);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  if (*(v1 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_2();
    v8 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    MEMORY[0x193B18030](v8);
    if (!v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_146_2();
      v5 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.rawValue.getter();
      MEMORY[0x193B18030](v5);
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      OUTLINED_FUNCTION_104_0();
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146_2();
  v6 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
  MEMORY[0x193B18030](v6);
  if (!v4)
  {
LABEL_5:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146_2();
    v7 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.rawValue.getter();
    MEMORY[0x193B18030](v7);
    goto LABEL_10;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
LABEL_10:
  if (v10)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v9);
  }

  sub_1934D1104();
  OUTLINED_FUNCTION_191();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934C9070(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.validator.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.outcome.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 26) = v3;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.rejectionReason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  *(v1 + 42) = v3;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.safetyAssets.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1934C91F4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934C921C@<X0>(char **a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C9398@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C93C0@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C953C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934C9564@<X0>(uint64_t *a1@<X8>)
{
  result = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.allCases.getter();
  *a1 = result;
  return result;
}

void static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 12);
  v4 = *(a1 + 26);
  v5 = a1[4];
  v6 = *(a1 + 20);
  v7 = *(a1 + 42);
  v8 = *(a2 + 10);
  v9 = a2[2];
  v10 = *(a2 + 12);
  v11 = *(a2 + 26);
  v12 = a2[4];
  v13 = *(a2 + 20);
  v14 = *(a2 + 42);
  if (*(a1 + 10))
  {
    if ((*(a2 + 10) & 1) == 0)
    {
LABEL_19:
      OUTLINED_FUNCTION_140_1();
      return;
    }
  }

  else
  {
    v15 = *a2;
    v16 = *(a2 + 4);
    v17 = *(a1 + 4);
    v34 = *a1;
    v35 = v17;
    v36 = 0;
    if (v8)
    {
      goto LABEL_19;
    }

    v32 = v15;
    v33 = v16 & 0x1FF;
    v31 = v14;
    v30 = v12;
    v29 = v6;
    v18 = v10;
    v19 = v3;
    v20 = v9;
    v21 = static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.== infix(_:_:)(&v34, &v32);
    v9 = v20;
    v3 = v19;
    LOBYTE(v10) = v18;
    v6 = v29;
    v12 = v30;
    v14 = v31;
    if (!v21)
    {
      goto LABEL_19;
    }
  }

  if (v4)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v34 = v2;
    v35 = v3;
    v36 = 0;
    if (v11)
    {
      goto LABEL_19;
    }

    v32 = v9;
    LOBYTE(v33) = v10;
    OUTLINED_FUNCTION_174_0();
    if (!static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.== infix(_:_:)(v22, v23))
    {
      goto LABEL_19;
    }
  }

  if (v7)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v34 = v5;
    v35 = v6;
    v36 = 0;
    if (v14)
    {
      goto LABEL_19;
    }

    v32 = v12;
    LOBYTE(v33) = v13;
    OUTLINED_FUNCTION_174_0();
    if (!static GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.== infix(_:_:)(v24, v25))
    {
      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_140_1();

  sub_19344FFB0(v26, v27);
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 26);
  v3 = *(v0 + 40);
  v4 = *(v0 + 42);
  if (*(v0 + 10) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *(v0 + 42);
    v5 = *(v0 + 40);
    v6 = *(v0 + 8);
    OUTLINED_FUNCTION_103_0();
    if ((v6 & 0x100) != 0)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_177_1();
      v7 = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator.ValidatorType.rawValue.getter();
      MEMORY[0x193B18030](v7);
    }

    v3 = v5;
    v4 = v14;
    if (v2)
    {
LABEL_11:
      OUTLINED_FUNCTION_104_0();
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_103_0();
  if ((v1 & 0x100) != 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_177_1();
  v8 = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome.OutcomeType.rawValue.getter();
  MEMORY[0x193B18030](v8);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  if ((v3 & 0x100) == 0)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177_1();
    v9 = GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason.ViolationCategory.rawValue.getter();
    MEMORY[0x193B18030](v9);
    goto LABEL_15;
  }

LABEL_14:
  OUTLINED_FUNCTION_104_0();
LABEL_15:
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_107();

  return sub_1934D1240(v10, v11);
}

uint64_t sub_1934C99BC(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934C9A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.inferenceEnvironmentInfo.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_139_3(v4);
  memcpy(a1, (v1 + 96), 0x90uLL);
  return sub_1934486A4();
}

void *GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.inferenceEnvironmentInfo.setter(const void *a1)
{
  OUTLINED_FUNCTION_139_3(v4);
  sub_193442B60(v4, &qword_1EAE3B4F8, &qword_193952D08);
  return memcpy((v1 + 96), a1, 0x90uLL);
}

double GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1934D1664(__src);
  v4 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  memcpy(__dst, __src, sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE3B4F8, &qword_193952D08);
  memcpy((a1 + 96), __src, 0x90uLL);
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 256;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.baseModel.setter(uint64_t a1)
{
  sub_1934D16DC(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.adapter.setter(uint64_t a1)
{
  sub_1934D16DC(v1[4], v1[5], v1[6], v1[7]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v4;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.draftModel.setter(uint64_t a1)
{
  sub_1934D16DC(v1[8], v1[9], v1[10], v1[11]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v4;
  return result;
}

__n128 GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.tokenizer.setter(uint64_t a1)
{
  sub_1934D16DC(v1[12], v1[13], v1[14], v1[15]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 6) = *a1;
  *(v1 + 7) = v4;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.cloudosVersion.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

double GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_1934D16DC(v1, 1, 0, 0);
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  OUTLINED_FUNCTION_81_4();
  *(v0 + 32) = xmmword_1939526A0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  OUTLINED_FUNCTION_81_4();
  *(v0 + 64) = xmmword_1939526A0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  OUTLINED_FUNCTION_81_4();
  result = 0.0;
  *(v0 + 96) = xmmword_1939526A0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.version.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      if (v2 == v5 && v3 == v6)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_4();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_2_0();
    sub_19393C640();
  }

  if (v2)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_116_3(v3);
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_1934CA214(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_19393CAB0();
  GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v200 = a1[5];
  v201 = a1[4];
  v203 = a1[6];
  v204 = a1[7];
  v195 = a1[9];
  v196 = a1[8];
  v197 = a1[10];
  v198 = a1[11];
  v6 = a1[12];
  v7 = a1[13];
  v9 = a1[14];
  v8 = a1[15];
  v10 = a1[16];
  v11 = a1[17];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  v199 = a2[4];
  v17 = a2[6];
  v202 = a2[7];
  v19 = a2[8];
  v18 = a2[9];
  v21 = a2[10];
  v20 = a2[11];
  v22 = a2[12];
  v23 = a2[13];
  v24 = a2[14];
  v25 = a2[15];
  v27 = a2[16];
  v26 = a2[17];
  if (v3 == 1)
  {
    v191 = a2[8];
    v192 = a2[10];
    v193 = a2[9];
    v194 = a2[11];
    v183 = a2[12];
    v184 = a2[14];
    v185 = a2[13];
    v186 = a2[15];
    v179 = a2[16];
    v180 = v10;
    v181 = a2[17];
    v182 = v11;
    v187 = v7;
    v188 = v6;
    v189 = v9;
    v190 = v8;
    v28 = OUTLINED_FUNCTION_184_1();
    sub_1934D1694(v28, v29, v30, v31);
    if (v13 == 1)
    {
      v32 = OUTLINED_FUNCTION_129_1();
      sub_1934D1694(v32, v33, v14, v15);
      v34 = OUTLINED_FUNCTION_184_1();
      sub_1934D16DC(v34, v35, v36, v37);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_198();
LABEL_7:
    v205 = v2;
    v206 = v3;
    v207 = v4;
    v208 = v5;
    v209 = v12;
    v210 = v13;
    v211 = v14;
    v212 = v15;
LABEL_25:
    sub_193442B60(&v205, &qword_1EAE3B500, &qword_193952D10);
    return 0;
  }

  v205 = v2;
  v206 = v3;
  v207 = v4;
  v208 = v5;
  if (v13 == 1)
  {
    v38 = OUTLINED_FUNCTION_38_7();
    sub_1934D1694(v38, v39, v40, v41);
    v42 = OUTLINED_FUNCTION_129_1();
    sub_1934D1694(v42, v43, v14, v15);
    v44 = OUTLINED_FUNCTION_38_7();
    sub_1934D1694(v44, v45, v46, v47);

    goto LABEL_7;
  }

  v191 = v19;
  v192 = v21;
  v193 = v18;
  v194 = v20;
  v183 = v22;
  v184 = v24;
  v185 = v23;
  v186 = v25;
  v179 = v27;
  v180 = v10;
  v181 = v26;
  v182 = v11;
  v187 = v7;
  v188 = v6;
  v189 = v9;
  v190 = v8;
  v48 = OUTLINED_FUNCTION_185_1();
  v178 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v48, v49);
  v50 = OUTLINED_FUNCTION_38_7();
  sub_1934D1694(v50, v51, v52, v53);
  OUTLINED_FUNCTION_198();
  v54 = OUTLINED_FUNCTION_38_7();
  sub_1934D1694(v54, v55, v56, v57);

  v58 = OUTLINED_FUNCTION_38_7();
  sub_1934D16DC(v58, v59, v60, v61);
  if ((v178 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (v200 == 1)
  {
    v62 = v201;
    v63 = OUTLINED_FUNCTION_129_1();
    v64 = v203;
    v65 = v204;
    sub_1934D1694(v63, v66, v203, v204);
    v67 = v17;
    if (v16 == 1)
    {
      OUTLINED_FUNCTION_170();
      sub_1934D1694(v68, v69, v70, v202);
      OUTLINED_FUNCTION_129_1();
      OUTLINED_FUNCTION_70_4();
      sub_1934D16DC(v71, v72, v73, v74);
      goto LABEL_17;
    }

    v75 = v16;
    v80 = v199;
    v89 = OUTLINED_FUNCTION_32_4();
    v81 = v202;
    sub_1934D1694(v89, v90, v17, v202);
LABEL_15:
    v205 = v62;
    v206 = v200;
    v207 = v64;
    v208 = v65;
    v209 = v80;
LABEL_24:
    v210 = v75;
    v211 = v67;
    v212 = v81;
    goto LABEL_25;
  }

  v62 = v201;
  v205 = v201;
  v206 = v200;
  v64 = v203;
  v65 = v204;
  v207 = v203;
  v208 = v204;
  v75 = v16;
  v67 = v17;
  if (v16 == 1)
  {
    v76 = OUTLINED_FUNCTION_36_9();
    sub_1934D1694(v76, v77, v78, v79);
    v80 = v199;
    OUTLINED_FUNCTION_170();
    v81 = v202;
    sub_1934D1694(v82, v83, v84, v202);
    v85 = OUTLINED_FUNCTION_36_9();
    sub_1934D1694(v85, v86, v87, v88);

    goto LABEL_15;
  }

  v91 = OUTLINED_FUNCTION_185_1();
  v93 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v91, v92);
  v94 = OUTLINED_FUNCTION_36_9();
  sub_1934D1694(v94, v95, v96, v97);
  sub_1934D1694(v199, v16, v17, v202);
  v98 = OUTLINED_FUNCTION_36_9();
  sub_1934D1694(v98, v99, v100, v101);

  v102 = OUTLINED_FUNCTION_36_9();
  sub_1934D16DC(v102, v103, v104, v105);
  if ((v93 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v195 == 1)
  {
    v107 = v196;
    v106 = v197;
    v108 = OUTLINED_FUNCTION_129_1();
    v109 = v198;
    sub_1934D1694(v108, v110, v197, v198);
    if (v193 == 1)
    {
      sub_1934D1694(v191, 1, v192, v194);
      OUTLINED_FUNCTION_129_1();
      OUTLINED_FUNCTION_70_4();
      sub_1934D16DC(v111, v112, v113, v114);
      goto LABEL_29;
    }

    v119 = v191;
    v67 = v192;
    v81 = v194;
    v75 = v193;
    sub_1934D1694(v191, v193, v192, v194);
    goto LABEL_23;
  }

  v107 = v196;
  v106 = v197;
  v205 = v196;
  v206 = v195;
  v109 = v198;
  v207 = v197;
  v208 = v198;
  if (v193 == 1)
  {
    v115 = OUTLINED_FUNCTION_17_1();
    v75 = 1;
    sub_1934D1694(v115, v116, v117, v118);
    v119 = v191;
    v67 = v192;
    OUTLINED_FUNCTION_170();
    v81 = v194;
    sub_1934D1694(v120, v121, v122, v194);
    v123 = OUTLINED_FUNCTION_17_1();
    sub_1934D1694(v123, v124, v125, v126);

LABEL_23:
    v205 = v107;
    v206 = v195;
    v207 = v106;
    v208 = v109;
    v209 = v119;
    goto LABEL_24;
  }

  v128 = OUTLINED_FUNCTION_185_1();
  v130 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v128, v129);
  v131 = OUTLINED_FUNCTION_17_1();
  sub_1934D1694(v131, v132, v133, v134);
  OUTLINED_FUNCTION_197_0();
  v135 = OUTLINED_FUNCTION_17_1();
  sub_1934D1694(v135, v136, v137, v138);

  v139 = OUTLINED_FUNCTION_17_1();
  sub_1934D16DC(v139, v140, v141, v142);
  if ((v130 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (v187 != 1)
  {
    v205 = v188;
    v206 = v187;
    v146 = v190;
    v207 = v189;
    v208 = v190;
    if (v185 != 1)
    {
      v162 = OUTLINED_FUNCTION_185_1();
      v164 = static GenerativeFunctionsInstrumentationMetadata.PrivateCloudMetrics.InferenceEnvironmentInfo.AssetInfo.== infix(_:_:)(v162, v163);
      v165 = OUTLINED_FUNCTION_17_1();
      sub_1934D1694(v165, v166, v167, v168);
      OUTLINED_FUNCTION_197_0();
      v169 = OUTLINED_FUNCTION_17_1();
      sub_1934D1694(v169, v170, v171, v172);

      v173 = OUTLINED_FUNCTION_17_1();
      sub_1934D16DC(v173, v174, v175, v176);
      if ((v164 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

    v144 = v189;
    v145 = v188;
    v143 = v187;
    v151 = 1;
    sub_1934D1694(v188, v187, v189, v190);
    v153 = v183;
    v152 = v184;
    OUTLINED_FUNCTION_170();
    v154 = v186;
    sub_1934D1694(v155, v156, v157, v186);
    v158 = OUTLINED_FUNCTION_8_6();
    sub_1934D1694(v158, v159, v160, v161);

    goto LABEL_35;
  }

  v143 = 1;
  v145 = v188;
  v144 = v189;
  v146 = v190;
  sub_1934D1694(v188, 1, v189, v190);
  if (v185 != 1)
  {
    v153 = v183;
    v152 = v184;
    v154 = v186;
    v151 = v185;
    sub_1934D1694(v183, v185, v184, v186);
LABEL_35:
    v205 = v145;
    v206 = v143;
    v207 = v144;
    v208 = v146;
    v209 = v153;
    v210 = v151;
    v211 = v152;
    v212 = v154;
    goto LABEL_25;
  }

  sub_1934D1694(v183, 1, v184, v186);
  OUTLINED_FUNCTION_69_1();
  sub_1934D16DC(v147, v148, v149, v150);
LABEL_37:
  if (v182)
  {
    if (v181)
    {
      v177 = v180 == v179 && v182 == v181;
      if (v177 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v181)
  {
    return 1;
  }

  return 0;
}
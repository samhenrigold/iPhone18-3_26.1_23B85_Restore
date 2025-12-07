uint64_t sub_254EC8500()
{
  sub_254EB2BBC((v1 + 16));
  sub_254EB7974();
  sub_254EB3F88(v4, "IFCR.IntelligenceCommandEmbeddingClient.embedIfReady()");

  (*(v3 + 8))(v0, v2);

  v5 = sub_254EB69D0();

  return v6(v5);
}

uint64_t sub_254EC85D8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  sub_254EB2BBC(v0 + 2);
  sub_254EC86C8(v1, "IFCR.IntelligenceCommandEmbeddingClient.embedIfReady()", 54, 2, v2);

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_254EC86C8(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v26 = a2;
  v6 = sub_254F29180();
  sub_254EB2CBC();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_254F29140();
  sub_254EB2CBC();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_254F29160();
  sub_254F29190();
  v25 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v14 + 8))(v17, v12);
  }

  if ((a4 & 1) == 0)
  {
    v20 = v26;
    if (v26)
    {
LABEL_9:

      sub_254F291C0();

      if ((*(v8 + 88))(v11, v6) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v11, v6);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v18, v25, v23, v20, v21, v22, 2u);
      MEMORY[0x259C2EB80](v22, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v26 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v26 & 0xFFFFF800) != 0xD800)
  {
    if (v26 >> 16 <= 0x10)
    {
      v20 = &v27;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EC894C()
{
  sub_254EC8C08(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_254EC89A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254EC8A50;

  return sub_254EC7E5C(a1, a2);
}

uint64_t sub_254EC8A50(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_254EC8B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75ED50, &qword_254F2AE68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EC8BC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254EC8C08(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75ED50, &qword_254F2AE68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EC8C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75ED50, &qword_254F2AE68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EC8CE0()
{
  v0 = sub_254F291E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (v4)
  {
    v5 = v4;
    if (([v4 hasAvailableAssets] & 1) == 0)
    {
      aBlock[4] = sub_254EC9048;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_254EC93E4;
      aBlock[3] = &unk_2867254F0;
      v6 = _Block_copy(aBlock);
      [v5 requestEmbeddingAssetsWithCompletionHandler_];
      _Block_release(v6);
    }

    sub_254EB69E4();
    v7 = swift_allocObject();
    sub_254EC8BC0(&qword_27F75EDD8, &unk_254F2AFC0);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v7 + 16) = v5;
    *(v7 + 24) = v8;
  }

  else
  {
    sub_254F284C0();
    v9 = sub_254F291D0();
    v7 = sub_254F29700();
    if (os_log_type_enabled(v9, v7))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_254EAE000, v9, v7, "Could not load NLContextualEmbedding model", v10, 2u);
      MEMORY[0x259C2EB80](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    sub_254ECB3F4();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_254EC8F90(char a1)
{
  sub_254F29BC0();
  MEMORY[0x259C2E340](a1 & 1);
  return sub_254F29C00();
}

uint64_t sub_254EC8FF4(uint64_t a1)
{
  v2 = *v1;
  sub_254F29BC0();
  MEMORY[0x259C2E340](v2);
  return sub_254F29C00();
}

uint64_t sub_254EC9048(uint64_t a1, void *a2)
{
  v4 = sub_254F291E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_254F284C0();
      v23 = a2;
      v16 = sub_254F291D0();
      v24 = sub_254F29700();

      if (os_log_type_enabled(v16, v24))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        if (a2)
        {
          v25 = a2;
          v26 = _swift_stdlib_bridgeErrorToNSError();
          v27 = v26;
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        *(v18 + 4) = v26;
        *v19 = v27;
        _os_log_impl(&dword_254EAE000, v16, v24, "NLContextualEmbedding assets not available: %@", v18, 0xCu);
        v14 = v11;
        goto LABEL_20;
      }
    }

    else
    {
      if (a1 == 2)
      {
        sub_254F284C0();
        v15 = a2;
        v16 = sub_254F291D0();
        v17 = sub_254F29700();

        if (!os_log_type_enabled(v16, v17))
        {
LABEL_21:
          v11 = v14;
          goto LABEL_22;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        if (a2)
        {
          v20 = a2;
          v21 = _swift_stdlib_bridgeErrorToNSError();
          v22 = v21;
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        *(v18 + 4) = v21;
        *v19 = v22;
        _os_log_impl(&dword_254EAE000, v16, v17, "Error fetching NLContextualEmbedding assets: %@", v18, 0xCu);
LABEL_20:
        sub_254ECB348(v19);
        MEMORY[0x259C2EB80](v19, -1, -1);
        MEMORY[0x259C2EB80](v18, -1, -1);
        goto LABEL_21;
      }

      sub_254F284C0();
      v28 = a2;
      v16 = sub_254F291D0();
      v29 = sub_254F29700();

      if (os_log_type_enabled(v16, v29))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        if (a2)
        {
          v30 = a2;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          v32 = v31;
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        *(v18 + 4) = v31;
        *v19 = v32;
        _os_log_impl(&dword_254EAE000, v16, v29, "NLContextualEmbedding unknown error: %@", v18, 0xCu);
        v14 = v8;
        goto LABEL_20;
      }

      v11 = v8;
    }

LABEL_22:

    return (*(v5 + 8))(v11, v4);
  }

  return result;
}

void sub_254EC93E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_254EC945C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_254EC9480, 0, 0);
}

uint64_t sub_254EC9480()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
  inited = swift_initStackObject();
  v0[11] = inited;
  *(inited + 16) = xmmword_254F2AE00;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_254EC9560;

  return sub_254EC9728(inited);
}

uint64_t sub_254EC9560(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_254EC96BC, 0, 0);
  }

  else
  {
    swift_setDeallocating();
    sub_254ECA4CC();
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_254EC96BC()
{
  swift_setDeallocating();
  sub_254ECA4CC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254EC9728(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_254F291E0();
  v2[4] = v3;
  sub_254EB2CAC(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EC97E0, 0, 0);
}

uint64_t sub_254EC97E0()
{
  v47 = v0;
  if (![*(v0[3] + 16) hasAvailableAssets])
  {
    sub_254F284C0();
    v14 = sub_254F291D0();
    v15 = sub_254F29700();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_254EAE000, v14, v15, "NLContextualEmbedding assets unavailable", v16, 2u);
      MEMORY[0x259C2EB80](v16, -1, -1);
    }

    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    v20 = v0[2];

    (*(v18 + 8))(v17, v19);
    v21 = sub_254EC9C24(MEMORY[0x277D84F90], *(v20 + 16));
    goto LABEL_33;
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 16);
  v4 = (v1 + 40);
  for (i = MEMORY[0x277D84F90]; v3; --v3)
  {
    v6 = v0[3];
    v8 = *(v4 - 1);
    v7 = *v4;
    v9 = *(v2 + 24);

    os_unfair_lock_lock(v9 + 4);
    sub_254EC9DA8(v6, v8, v7, &v46);
    os_unfair_lock_unlock(v9 + 4);

    v10 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_254EEFD3C();
      i = v12;
    }

    v11 = *(i + 16);
    if (v11 >= *(i + 24) >> 1)
    {
      sub_254EEFD3C();
      i = v13;
    }

    *(i + 16) = v11 + 1;
    *(i + 8 * v11 + 32) = v10;
    v4 += 2;
  }

  v22 = *(i + 16);
  if (!v22)
  {

    v21 = MEMORY[0x277D84F90];
LABEL_33:

    v39 = v0[1];

    return v39(v21);
  }

  v45 = MEMORY[0x277D84F90];
  result = sub_254ECA5E4(0, v22, 0);
  v24 = 0;
  v21 = v45;
  v41 = i;
  v42 = i + 32;
  v40 = v22;
  while (v24 < *(i + 16))
  {
    v25 = *(v42 + 8 * v24);
    if (v25 >> 62)
    {
      v35 = v24;
      result = sub_254F29AA0();
      v24 = v35;
      v26 = result;
      if (!result)
      {
LABEL_27:
        v28 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_27;
      }
    }

    v43 = v24;
    v44 = v21;
    v46 = MEMORY[0x277D84F90];

    result = sub_254ECA604(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_37;
    }

    v27 = 0;
    v28 = v46;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x259C2E0D0](v27, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      [v29 floatValue];
      v32 = v31;

      v46 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_254ECA604((v33 > 1), v34 + 1, 1);
        v28 = v46;
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      *(v28 + 4 * v34 + 32) = v32;
    }

    while (v26 != v27);

    v22 = v40;
    i = v41;
    v24 = v43;
    v21 = v44;
LABEL_28:
    v37 = *(v21 + 16);
    v36 = *(v21 + 24);
    if (v37 >= v36 >> 1)
    {
      v38 = v24;
      result = sub_254ECA5E4((v36 > 1), v37 + 1, 1);
      v24 = v38;
    }

    ++v24;
    *(v21 + 16) = v37 + 1;
    *(v21 + 8 * v37 + 32) = v28;
    if (v24 == v22)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_254EC9C24(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_254EC8BC0(&qword_27F75ED68, &qword_254F2AF50);
      v4 = sub_254F295A0();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_254EC9CBC(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_254F295A0();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_254F2AED0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_254F2AEC0)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_254EC9DA8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = sub_254F291E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *MEMORY[0x277CD8708];
  v28[0] = 0;
  v14 = sub_254ECB2E0(a2, a3, v13, v28, v12);
  v15 = v28[0];
  if (v14)
  {
    v16 = v14;
    sub_254ECB3B0();
    v17 = sub_254F29560();
    v18 = v15;
  }

  else
  {
    v19 = v28[0];
    v20 = sub_254F27870();

    swift_willThrow();
    sub_254F284C0();
    v21 = v20;
    v22 = sub_254F291D0();
    v23 = sub_254F29700();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_254EAE000, v22, v23, "Couldn't fetch embedding due to error: %@", v24, 0xCu);
      sub_254ECB348(v25);
      MEMORY[0x259C2EB80](v25, -1, -1);
      MEMORY[0x259C2EB80](v24, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v17 = MEMORY[0x277D84F90];
  }

  *a4 = v17;
}

uint64_t sub_254ECA040()
{
  sub_254ECA018();
  v0 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_254ECA090(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254EC8A50;

  return sub_254EC945C(a1, a2);
}

char *sub_254ECA150(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_254EB2CD0(a3, result);
  }

  return result;
}

char *sub_254ECA188(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_254EB2CD0(a3, result);
  }

  return result;
}

uint64_t sub_254ECA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_254EB7EEC();
  if (v10 && (result = sub_254EC8BC0(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_254EB6B68();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_254EC8BC0(a4, a5);
    sub_254EB6B68();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_254ECA348(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return sub_254EB2CD0(a3, result);
  }

  return result;
}

uint64_t sub_254ECA410(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_254EB7EEC();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_254EB6B68();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_254EB6B68();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_254ECA4CC()
{
  swift_arrayDestroy();
  v0 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_254ECA508()
{
  sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  sub_254EB7DAC();
  sub_254EB3A30();
  swift_arrayDestroy();
  v0 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_254ECA57C()
{
  sub_254F28080();
  sub_254EB7DAC();
  sub_254EB3A30();
  swift_arrayDestroy();
  v0 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_254ECA5E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254ECA934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254ECA604(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254ECAA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254ECA624(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254ECAB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254ECA74C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254ECAE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254ECA8D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254ECB068(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254ECA934(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254EC8BC0(&qword_27F75ED58, &qword_254F2AE70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254EC8BC0(&qword_27F75ED68, &qword_254F2AF50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_254ECAA64(char *result, int64_t a2, char a3, char *a4)
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
    sub_254EC8BC0(&qword_27F75ED60, &unk_254F2AF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_254ECAB64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254EC8BC0(&qword_27F75EDC0, &qword_254F2AFB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254EC8BC0(&qword_27F75EDC8, &qword_254F2AFB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254ECAC94(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_254EB3BC8();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  if (v13 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254EC8BC0(a5, a6);
  v18 = a7(0);
  sub_254EB2CAC(v18);
  v20 = *(v19 + 72);
  v21 = sub_254EB6D18();
  v22 = j__malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v8 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v8) / v20);
LABEL_18:
  a7(0);
  sub_254EB7DAC();
  sub_254EB3A30();
  if (a1)
  {
    sub_254ECA410(a4 + v24, v16, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254EB6910();
  }
}

void *sub_254ECAE14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254EC8BC0(&qword_27F75ED98, &unk_254F2C370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254EC8BC0(&qword_27F75EDA0, &unk_254F2AF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254ECAF70(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_254EB3BC8();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_254ECB068(char *result, int64_t a2, char a3, char *a4)
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
    sub_254EC8BC0(&qword_27F75ED90, &unk_254F2AF80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_254ECB15C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_254EB3BC8();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  if (v13 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254EC8BC0(a5, a6);
  v18 = sub_254EC8BC0(a7, a8);
  sub_254EB2CAC(v18);
  v20 = *(v19 + 72);
  v21 = sub_254EB6D18();
  v22 = j__malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v8 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v8) / v20);
LABEL_18:
  sub_254EC8BC0(a7, a8);
  sub_254EB7DAC();
  sub_254EB3A30();
  if (a1)
  {
    sub_254ECA260(a4 + v24, v16, v21 + v24, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254EB6910();
  }
}

id sub_254ECB2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_254F29420();
  v9 = [a5 sentenceEmbeddingVectorForString:v8 language:a3 error:a4];

  return v9;
}

uint64_t sub_254ECB348(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75ED70, &qword_254F2AF58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254ECB3B0()
{
  result = qword_281426040;
  if (!qword_281426040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426040);
  }

  return result;
}

unint64_t sub_254ECB3F4()
{
  result = qword_27F75EDD0;
  if (!qword_27F75EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75EDD0);
  }

  return result;
}

uint64_t sub_254ECB448(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for ContextEmbeddingsInitializationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextEmbeddingsInitializationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254ECB5EC()
{
  result = qword_27F75EDE0;
  if (!qword_27F75EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75EDE0);
  }

  return result;
}

uint64_t sub_254ECB644()
{
  v1 = v0;
  v2 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_254F291E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v9 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  v10 = *(v1 + 112);
  *(v1 + 112) = v9;
  v11 = v9;

  if (v11)
  {
  }

  else
  {
    sub_254F284C0();
    v12 = sub_254F291D0();
    v13 = sub_254F29700();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_254EAE000, v12, v13, "Could not load NLContextualEmbedding model", v14, 2u);
      MEMORY[0x259C2EB80](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  v15 = sub_254F29600();
  sub_254EB2F04(v4, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;

  sub_254ECB91C(0, 0, v4, &unk_254F2B1B0, v16);

  return v1;
}

uint64_t sub_254ECB8C4()
{
  sub_254EB3BD8();
  sub_254ECBC2C();
  sub_254EB4924();

  return v0();
}

uint64_t sub_254ECB91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_254ECD9D8(a3, v24 - v10);
  v12 = sub_254F29600();
  v13 = sub_254EB2F2C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_254EB300C(v11, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_254F295C0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_254F294A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_254EB300C(a3, &qword_27F75EE08, &qword_254F2B1A0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254EB300C(a3, &qword_27F75EE08, &qword_254F2B1A0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_254ECBBF0(uint64_t a1)
{
  type metadata accessor for NLEmbeddingModelXPCClient();
  swift_allocObject();
  result = sub_254ECB644();
  qword_27F7604D8 = result;
  return result;
}

uint64_t sub_254ECBC2C()
{
  v1 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + 112);
  if (v5)
  {
    if ((*(v0 + 120) & 1) == 0)
    {
      *(v0 + 120) = 1;
      v6 = sub_254F29600();
      sub_254EB2F04(v4, 1, 1, v6);
      v7 = sub_254ECD804();
      v8 = swift_allocObject();
      v8[2] = v0;
      v8[3] = v7;
      v8[4] = v5;
      v8[5] = v0;
      swift_retain_n();
      v9 = v5;
      sub_254F19D88();
    }
  }

  return result;
}

uint64_t sub_254ECBD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = sub_254F291E0();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ECBE04, a5, 0);
}

uint64_t sub_254ECBE04()
{
  v1 = v0[19];
  v2 = sub_254F29420();
  v0[24] = v2;
  v3 = *MEMORY[0x277CD8708];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_254ECBF50;
  v4 = swift_continuation_init();
  v0[17] = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_254ECC1EC;
  v0[13] = &unk_286725688;
  v0[14] = v4;
  [v1 requestSentenceEmbeddingVectorForString:v2 language:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_254ECBF50()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = v0[6];
  v0[25] = v1;
  v2 = v0[20];
  if (v1)
  {
    v3 = sub_254ECC158;
  }

  else
  {
    v3 = sub_254ECC068;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_254ECC068()
{
  sub_254EB3A3C();
  v1 = *(v0 + 160);

  *(v1 + 121) = 1;
  sub_254F284C0();
  v2 = sub_254F291D0();
  v3 = sub_254F296F0();
  if (sub_254EB3E3C(v3))
  {
    *swift_slowAlloc() = 0;
    sub_254EB7DB8(&dword_254EAE000, v4, v5, "NLContextualEmbedding finishedFirstEmbedding");
    sub_254EC0004();
  }

  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 168);

  (*(v7 + 8))(v6, v8);

  sub_254EB4924();

  return v9();
}

uint64_t sub_254ECC158()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  swift_willThrow();

  *(v2 + 120) = 0;
  swift_willThrow();

  sub_254EB4924();

  return v3();
}

uint64_t sub_254ECC1EC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_254EB5A9C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_254EDF0F0();
  }

  else
  {
    if (a2)
    {
      sub_254ECB3B0();
      sub_254F29560();
    }

    return sub_254EC7068();
  }
}

uint64_t sub_254ECC290()
{
  sub_254EB3BD8();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_254F291E0();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ECC350, v0, 0);
}

uint64_t sub_254ECC350()
{
  sub_254EB3A3C();
  if (*(v0[10] + 121) == 1)
  {
    v2 = v0[8];
    v1 = v0[9];
    sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
    inited = swift_initStackObject();
    v0[14] = inited;
    *(inited + 16) = xmmword_254F2AE00;
    *(inited + 32) = v2;
    *(inited + 40) = v1;

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_254ECC524;

    return sub_254ECC6EC();
  }

  else
  {
    sub_254F284C0();
    v6 = sub_254F291D0();
    v7 = sub_254F29700();
    if (sub_254EB3E3C(v7))
    {
      *swift_slowAlloc() = 0;
      sub_254EB7DB8(&dword_254EAE000, v8, v9, "NLContextualEmbedding hasn't finishedFirstEmbedding");
      sub_254EC0004();
    }

    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];

    (*(v11 + 8))(v10, v12);
    sub_254EC8BC0(&qword_27F75ED68, &qword_254F2AF50);
    v13 = sub_254F295A0();
    *(v13 + 16) = 1;
    *(v13 + 32) = MEMORY[0x277D84F90];

    sub_254EB4930();

    return v14(v13);
  }
}

uint64_t sub_254ECC524()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  v6 = *v1;
  sub_254EB2CE0();
  *v7 = v6;
  *(v5 + 128) = v0;

  if (v0)
  {
    v8 = *(v5 + 80);

    return MEMORY[0x2822009F8](sub_254ECC680, v8, 0);
  }

  else
  {
    swift_setDeallocating();
    sub_254ECA4CC();

    v9 = *(v6 + 8);

    return v9(v3);
  }
}

uint64_t sub_254ECC680()
{
  sub_254EB3BD8();
  swift_setDeallocating();
  sub_254ECA4CC();

  sub_254EB4924();

  return v0();
}

uint64_t sub_254ECC6EC()
{
  sub_254EB3BD8();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_254F291E0();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ECC7B4, v0, 0);
}

uint64_t sub_254ECC7B4(uint64_t a1, double a2, double a3)
{
  v4 = *(v3[20] + 112);
  v3[25] = v4;
  if (!v4)
  {
    sub_254F284C0();
    v12 = sub_254F291D0();
    v13 = sub_254F29700();
    if (sub_254EB3E3C(v13))
    {
      *swift_slowAlloc() = 0;
      sub_254EB7DB8(&dword_254EAE000, v14, v15, "NLContextualEmbedding nil");
      sub_254EC0004();
    }

    v16 = v3[24];
    v17 = v3;
    v18 = v3[22];
    v19 = v17[21];
    v20 = v17[19];

    (*(v18 + 8))(v16, v19);
    v21 = sub_254EC9C24(MEMORY[0x277D84F90], *(v20 + 16));
    goto LABEL_30;
  }

  v5 = *(v3[19] + 16);
  v3[26] = v5;
  if (v5)
  {
    v6 = *MEMORY[0x277CD8708];
    v7 = MEMORY[0x277D84F90];
    v3[28] = 0;
    v3[29] = v7;
    v3[27] = v6;
    v8 = v4;

    v9 = sub_254F29420();
    v3[30] = v9;

    v3[2] = v3;
    v3[7] = v3 + 18;
    v3[3] = sub_254ECCC18;
    v10 = swift_continuation_init();
    v3[17] = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
    v3[10] = MEMORY[0x277D85DD0];
    v3[11] = 1107296256;
    v3[12] = sub_254ECC1EC;
    v3[13] = &unk_286725638;
    v3[14] = v10;
    [v8 requestSentenceEmbeddingVectorForString:v9 language:v6 completionHandler:v3 + 10];
    v11 = (v3 + 2);

    return MEMORY[0x282200938](v11);
  }

  v22 = MEMORY[0x277D84F90];
  v23 = *(MEMORY[0x277D84F90] + 16);
  v24 = v4;
  if (!v23)
  {

    v21 = MEMORY[0x277D84F90];

LABEL_30:

    sub_254EB4930();

    return v42(v21);
  }

  v44 = v3;
  v11 = sub_254ECA5E4(0, v23, 0);
  v25 = 0;
  v26 = v22;
  v45 = v23;
  while (v25 < *(v22 + 16))
  {
    v27 = *(v22 + 8 * v25 + 32);
    if (v27 >> 62)
    {
      v11 = sub_254EB3A48();
      v28 = v11;
      if (!v11)
      {
LABEL_24:
        v30 = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_24;
      }
    }

    v46 = v26;
    v47 = v22;

    v11 = sub_254EB9934();
    if (v28 < 0)
    {
      goto LABEL_34;
    }

    v29 = 0;
    v30 = v47;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x259C2E0D0](v29, v27);
      }

      else
      {
        v31 = *(v27 + 8 * v29 + 32);
      }

      v32 = v31;
      [v31 floatValue];
      v34 = v33;

      v36 = *(v47 + 16);
      v35 = *(v47 + 24);
      if (v36 >= v35 >> 1)
      {
        v37 = sub_254EB5124(v35);
        sub_254ECA604(v37, v36 + 1, 1);
      }

      ++v29;
      *(v47 + 16) = v36 + 1;
      *(v47 + 4 * v36 + 32) = v34;
    }

    while (v28 != v29);

    v22 = MEMORY[0x277D84F90];
    v26 = v46;
LABEL_25:
    v39 = *(v26 + 16);
    v38 = *(v26 + 24);
    if (v39 >= v38 >> 1)
    {
      v40 = sub_254EB5124(v38);
      v11 = sub_254ECA5E4(v40, v39 + 1, 1);
    }

    ++v25;
    *(v26 + 16) = v39 + 1;
    *(v26 + 8 * v39 + 32) = v30;
    if (v25 == v45)
    {
      v21 = v26;
      v41 = v44[25];

      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return MEMORY[0x282200938](v11);
}

uint64_t sub_254ECCC18()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = v0[6];
  v0[31] = v1;
  v2 = v0[20];
  if (v1)
  {
    v3 = sub_254ECD0C0;
  }

  else
  {
    v3 = sub_254ECCD30;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_254ECCD30()
{
  v39 = v0;
  v2 = (v0 + 18);
  v1 = v0[18];

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0[29];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    v7 = v6 + 1;
    v36 = v6;
    if (v6 >= v5 >> 1)
    {
      sub_254EB5124(v5);
      sub_254EEFD3C();
      v4 = v31;
    }

    v8 = v0[26];
    v9 = v0[28] + 1;
    *(v4 + 2) = v7;
    v35 = v4 + 32;
    *&v4[8 * v36 + 32] = v1;
    if (v9 != v8)
    {
      break;
    }

    v33 = v0;
    v37 = MEMORY[0x277D84F90];
    v1 = &v37;
    sub_254ECA5E4(0, v7, 0);
    v2 = 0;
    v10 = v37;
    v0 = &off_2797B4000;
    v34 = v4;
    while (v2 < *(v4 + 2))
    {
      v11 = *&v35[8 * v2];
      if (v11 >> 62)
      {
        v12 = sub_254EB3A48();
        if (!v12)
        {
LABEL_22:
          v13 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v38 = MEMORY[0x277D84F90];

      v1 = &v38;
      sub_254EB9934();
      if (v12 < 0)
      {
        goto LABEL_35;
      }

      v13 = v38;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x259C2E0D0](0, v11);
        }

        else
        {
          v14 = *(v11 + 32);
        }

        v1 = v14;
        [v14 floatValue];

        v38 = v13;
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          v18 = sub_254EB5124(v15);
          v1 = &v38;
          sub_254ECA604(v18, v16 + 1, 1);
          v13 = v38;
        }

        sub_254EB6368();
      }

      while (!v17);

      v4 = v34;
LABEL_23:
      v37 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        v1 = &v37;
        sub_254ECA5E4((v19 > 1), v20 + 1, 1);
        v10 = v37;
      }

      *(v10 + 16) = v20 + 1;
      *(v10 + 8 * v20 + 32) = v13;
      v17 = v2++ == v36;
      if (v17)
      {
        v27 = v33[25];

        sub_254EB4930();
        sub_254EB67A8();

        __asm { BRAA            X2, X16 }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    sub_254EEFD3C();
    v4 = v30;
  }

  sub_254EB4ACC();
  v0[28] = v21;
  v0[29] = v4;
  sub_254EB56F8();
  v0[30] = sub_254F29420();

  v0[2] = v0;
  v0[7] = v2;
  v22 = sub_254EB69F4();
  v23 = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
  v24 = sub_254EB6B7C(v23);
  v0[11] = 1107296256;
  v0[12] = sub_254ECC1EC;
  v0[13] = &unk_286725638;
  v0[14] = v22;
  sub_254EB5B88(v24, sel_requestSentenceEmbeddingVectorForString_language_completionHandler_);
  sub_254EB67A8();

  return MEMORY[0x282200938](v25);
}

uint64_t sub_254ECD0C0()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  sub_254F284C0();
  v3 = v2;
  v4 = sub_254F291D0();
  v5 = sub_254F29700();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_254EAE000, v4, v5, "Couldn't fetch embedding due to error: %@", v7, 0xCu);
    sub_254EB300C(v8, &qword_27F75ED70, &qword_254F2AF58);
    MEMORY[0x259C2EB80](v8, -1, -1);
    MEMORY[0x259C2EB80](v7, -1, -1);
  }

  v11 = v0[31];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[21];

  v13[1](v12, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v0[29];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = v18 + 1;
    v51 = v18;
    if (v18 >= v17 >> 1)
    {
      sub_254EB5124(v17);
      sub_254EEFD3C();
      v16 = v46;
    }

    v20 = v0[26];
    v21 = v0[28] + 1;
    *(v16 + 2) = v19;
    v22 = MEMORY[0x277D84F90];
    v50 = v16 + 32;
    *&v16[8 * v51 + 32] = MEMORY[0x277D84F90];
    if (v21 != v20)
    {
      break;
    }

    v48 = v0;
    sub_254ECA5E4(0, v19, 0);
    v23 = 0;
    v24 = v22;
    v0 = &off_2797B4000;
    v49 = v16;
    while (v23 < *(v16 + 2))
    {
      v25 = *&v50[8 * v23];
      if (v25 >> 62)
      {
        v26 = sub_254EB3A48();
        if (!v26)
        {
LABEL_22:
          v27 = v22;
          goto LABEL_23;
        }
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_22;
        }
      }

      v52 = v24;

      sub_254EB9934();
      if (v26 < 0)
      {
        goto LABEL_35;
      }

      v27 = v22;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x259C2E0D0](0, v25);
        }

        else
        {
          v28 = *(v25 + 32);
        }

        v29 = v28;
        [v28 floatValue];

        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        if (v31 >= v30 >> 1)
        {
          v33 = sub_254EB5124(v30);
          sub_254ECA604(v33, v31 + 1, 1);
        }

        sub_254EB6368();
      }

      while (!v32);

      v16 = v49;
      v22 = MEMORY[0x277D84F90];
      v24 = v52;
LABEL_23:
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_254ECA5E4((v34 > 1), v35 + 1, 1);
      }

      *(v24 + 16) = v35 + 1;
      *(v24 + 8 * v35 + 32) = v27;
      v32 = v23++ == v51;
      if (v32)
      {
        v42 = v48[25];

        sub_254EB4930();
        sub_254EB67A8();

        __asm { BRAA            X2, X16 }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    sub_254EEFD3C();
    v16 = v45;
  }

  sub_254EB4ACC();
  v0[28] = v36;
  v0[29] = v16;
  sub_254EB56F8();
  v0[30] = sub_254F29420();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v37 = sub_254EB69F4();
  v38 = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
  v39 = sub_254EB6B7C(v38);
  v0[11] = 1107296256;
  v0[12] = sub_254ECC1EC;
  v0[13] = &unk_286725638;
  v0[14] = v37;
  sub_254EB5B88(v39, sel_requestSentenceEmbeddingVectorForString_language_completionHandler_);
  sub_254EB67A8();

  return MEMORY[0x282200938](v40);
}

uint64_t sub_254ECD554()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254ECD5D8()
{
  if (qword_27F75EB78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254ECD634(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NLEmbeddingModelXPCClient();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_254ECD66C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254ECD714;

  return sub_254ECC290();
}

uint64_t sub_254ECD714()
{
  sub_254EB3BD8();
  v3 = v2;
  sub_254EB4918();
  v4 = *v1;
  sub_254EB2CE0();
  *v5 = v4;

  sub_254EB4930();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_254ECD804()
{
  result = qword_27F75EE00;
  if (!qword_27F75EE00)
  {
    type metadata accessor for NLEmbeddingModelXPCClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75EE00);
  }

  return result;
}

uint64_t sub_254ECD858()
{
  sub_254EB3A3C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_254EB3BE4(v3);
  *v4 = v5;
  v4[1] = sub_254ECD8F8;
  v6 = sub_254EB3FA8();

  return sub_254ECB8A4(v6, v7, v1, v2);
}

uint64_t sub_254ECD8F8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;

  sub_254EB4924();

  return v3();
}

uint64_t sub_254ECD9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ECDA48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_254ECDB40;

  return v6(a1);
}

uint64_t sub_254ECDB40()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;

  sub_254EB4924();

  return v3();
}

uint64_t sub_254ECDC24()
{
  sub_254EB3A3C();
  v0 = swift_task_alloc();
  v1 = sub_254EB3BE4(v0);
  *v1 = v2;
  v1[1] = sub_254ECDD98;
  v3 = sub_254EB3FA8();

  return v4(v3);
}

uint64_t sub_254ECDCE0()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_254EB3BE4(v4);
  *v5 = v6;
  v5[1] = sub_254ECD8F8;
  v7 = sub_254EB3FA8();

  return sub_254ECBD40(v7, v8, v1, v3, v2);
}

uint64_t sub_254ECDD9C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_254ECDDF8()
{
  v1 = sub_254F291E0();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_254F29170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F284C0();
  sub_254F29150();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime25IntelligenceCommandScorer_signposter, v5, v2);
  return v0;
}

uint64_t sub_254ECDF20()
{
  sub_254EB3BD8();
  v1[106] = v0;
  v1[105] = v2;
  v1[99] = v3;
  v1[93] = v4;
  v5 = sub_254F291E0();
  v1[107] = v5;
  sub_254EB2CAC(v5);
  v1[108] = v6;
  v1[109] = sub_254EB3FC4();
  sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  v1[110] = sub_254EB3FC4();
  sub_254EC8BC0(&qword_27F75EE30, &qword_254F2B260);
  v1[111] = sub_254EB3FC4();
  v7 = sub_254F28380();
  v1[112] = v7;
  sub_254EB2CAC(v7);
  v1[113] = v8;
  v1[114] = sub_254EB3FC4();
  v9 = sub_254F28260();
  v1[115] = v9;
  sub_254EB2CAC(v9);
  v1[116] = v10;
  v1[117] = sub_254EB3FC4();
  v11 = sub_254F29180();
  v1[118] = v11;
  sub_254EB2CAC(v11);
  v1[119] = v12;
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v13 = sub_254F29140();
  v1[123] = v13;
  sub_254EB2CAC(v13);
  v1[124] = v14;
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_254ECE200(uint64_t a1)
{
  v1[132] = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime25IntelligenceCommandScorer_signposter;
  sub_254F29160();
  sub_254F29120();
  v2 = sub_254F29160();
  sub_254F297A0();
  if (sub_254EB3E58())
  {
    v3 = sub_254EB7DD8();
    *v3 = 0;
    sub_254F29130();
    sub_254EB6380();
    _os_signpost_emit_with_name_impl(v4, v5, v6, v7, v8, v9, v3, 2u);
    sub_254EB3C04();
  }

  v10 = v1[131];
  v11 = v1[130];
  v12 = v1[124];
  v13 = v1[123];

  v14 = *(v12 + 16);
  v1[133] = v14;
  v1[134] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v11, v10, v13);
  v1[135] = sub_254F291B0();
  swift_allocObject();
  v1[136] = sub_254F291A0();
  v15 = *(v12 + 8);
  v1[137] = v15;
  v1[138] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v10, v13);
  if (qword_27F75EB70 != -1)
  {
    swift_once();
  }

  v16 = v1[105];
  v17 = v1[99];
  v18 = qword_27F7604D0;
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v17;
  v19[4] = v16;
  v20 = swift_allocObject();
  v1[139] = v20;
  *(v20 + 16) = &unk_254F2B270;
  *(v20 + 24) = v19;

  sub_254EC8BC0(&qword_27F75EE38, &qword_254F2B288);
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v1 + 2, v1 + 87, sub_254ECE4A0, v1 + 82);
}

uint64_t sub_254ECE4A0()
{
  sub_254EB3BD8();
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_254ECE524(uint64_t a1, double a2, double a3)
{
  v4 = v3[87];
  if (v4 && *(v4 + 16))
  {
    v3[140] = *(v4 + 32);

    v5 = sub_254F29160();
    sub_254F29190();
    v6 = sub_254F29790();
    if (sub_254F29800())
    {
      v7 = v3[122];
      v8 = v3[119];
      v9 = v3[118];

      sub_254F291C0();

      if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
      {
        v10 = "[Error] Interval already ended";
      }

      else
      {
        sub_254EB6D40();
        v18();
        v10 = "";
      }

      v19 = sub_254EB7DD8();
      *v19 = 0;
      v20 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v5, v6, v20, "IFCR.IntelligenceCommandScorer.scoreRelevanceOfContextValues.embedQuery", v10, v19, 2u);
      sub_254EB3C04();
    }

    v21 = v3[137];
    v22 = v3[129];
    v23 = v3[123];
    v24 = v3[93];

    v21(v22, v23);
    v25 = *(v24 + 16);
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v27 = v3[116];
      v28 = v3[113];
      v29 = v3[93];
      v75 = MEMORY[0x277D84F90];
      sub_254ECA624(0, v25, 0);
      v26 = v75;
      v30 = *(v27 + 16);
      v27 += 16;
      v31 = v29 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
      v73 = *(v27 + 56);
      v74 = v30;
      v72 = (v27 - 8);
      v68 = (v28 + 8);
      v69 = (v28 + 32);
      v71 = *MEMORY[0x277D1F0A0];
      while (1)
      {
        v74(v3[117], v31, v3[115]);
        sub_254F28200();
        v32 = sub_254F28440();
        v33 = sub_254EB3FDC();
        v35 = sub_254EB2F2C(v33, v34, v32);
        v36 = v3[110];
        if (v35 == 1)
        {
          break;
        }

        sub_254F28430();
        (*(*(v32 - 8) + 8))(v36, v32);
        v40 = sub_254F28420();
        v41 = sub_254EB3FDC();
        if (sub_254EB2F2C(v41, v42, v40) == 1)
        {
          goto LABEL_16;
        }

        v49 = *(v40 - 8);
        v50 = (*(v49 + 88))(v3[111], v40);
        v51 = v3[115];
        if (v50 == v71)
        {
          v52 = v3[114];
          v53 = v3[112];
          v54 = v3[111];
          v70 = v3[117];
          (*(v49 + 96))(v54, v40);
          (*v69)(v52, v54, v53);
          v44 = sub_254F28370();
          v45 = v55;
          (*v68)(v52, v53);
          (*v72)(v70, v51);
          goto LABEL_18;
        }

        v56 = v3[111];
        (*v72)(v3[117], v3[115]);
        (*(v49 + 8))(v56, v40);
LABEL_17:
        v44 = 0;
        v45 = 0;
LABEL_18:
        v47 = *(v75 + 16);
        v46 = *(v75 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_254ECA624((v46 > 1), v47 + 1, 1);
        }

        *(v75 + 16) = v47 + 1;
        v48 = v75 + 16 * v47;
        *(v48 + 32) = v44;
        *(v48 + 40) = v45;
        v31 += v73;
        if (!--v25)
        {
          goto LABEL_25;
        }
      }

      sub_254EB2B68(v3[110], &qword_27F75EEC0, &unk_254F2B4A0);
      sub_254F28420();
      v37 = sub_254EB3FDC();
      sub_254EB2F04(v37, v38, 1, v39);
LABEL_16:
      v43 = v3[111];
      (*v72)(v3[117], v3[115]);
      sub_254EB2B68(v43, &qword_27F75EE30, &qword_254F2B260);
      goto LABEL_17;
    }

LABEL_25:
    v3[141] = v26;
    sub_254F29160();
    sub_254F29120();
    v57 = sub_254F29160();
    v58 = sub_254F297A0();
    if (sub_254F29800())
    {
      v59 = sub_254EB7DD8();
      *v59 = 0;
      v60 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v57, v58, v60, "IFCR.IntelligenceCommandScorer.scoreRelevanceOfContextValues.embedQuery", "", v59, 2u);
      sub_254EB3C04();
    }

    v61 = v3[137];
    v62 = v3[133];
    v63 = v3[130];
    v64 = v3[128];
    v65 = v3[123];

    v62(v63, v64, v65);
    swift_allocObject();
    sub_254EB3FDC();
    v3[142] = sub_254F291A0();
    v61(v64, v65);
    if (qword_281427150 != -1)
    {
      swift_once();
    }

    v3[143] = sub_254EB61A0();
    v66 = swift_task_alloc();
    v3[144] = v66;
    *v66 = v3;
    v66[1] = sub_254ECEE20;

    return sub_254EEA110();
  }

  else
  {
    sub_254F284C0();
    v11 = sub_254F291D0();
    v12 = sub_254F29700();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_254EB7DD8();
      *v13 = 0;
      _os_log_impl(&dword_254EAE000, v11, v12, "Couldn't get query embedding", v13, 2u);
      sub_254EB3C04();
    }

    v14 = v3[109];
    v15 = v3[108];
    v16 = v3[107];
    v17 = v3[93];

    (*(v15 + 8))(v14, v16);
    v3[147] = sub_254EC9CBC(*(v17 + 16), 0.0);

    return MEMORY[0x282200920](v3 + 2, v3 + 87, sub_254ECF798, v3 + 88);
  }
}

uint64_t sub_254ECEE20()
{
  sub_254EB3A3C();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;
  *(v4 + 1160) = v3;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254ECEF80(uint64_t a1)
{
  v2 = sub_254F29160();
  sub_254F29190();
  sub_254F29790();
  if (sub_254EB3E58())
  {
    v3 = *(v1 + 968);
    v4 = *(v1 + 952);
    v5 = *(v1 + 944);

    sub_254F291C0();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D85B00])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      sub_254EB6D40();
      v7();
      v6 = "";
    }

    v8 = sub_254EB7DD8();
    *v8 = 0;
    sub_254F29130();
    sub_254EB6380();
    _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v6, v8, 2u);
    sub_254EB3C04();
  }

  v14 = *(v1 + 1096);
  v15 = *(v1 + 1016);
  v16 = *(v1 + 984);

  v14(v15, v16);
  sub_254F29160();
  sub_254F29120();
  v17 = sub_254F29160();
  sub_254F297A0();
  if (sub_254EB3E58())
  {
    v18 = sub_254EB7DD8();
    *v18 = 0;
    sub_254F29130();
    sub_254EB6380();
    _os_signpost_emit_with_name_impl(v19, v20, v21, v22, v23, v24, v18, 2u);
    sub_254EB3C04();
  }

  v54 = *(v1 + 1160);
  v25 = *(v1 + 1096);
  v26 = *(v1 + 1064);
  v27 = *(v1 + 1040);
  v28 = *(v1 + 1008);
  v29 = *(v1 + 984);

  v26(v27, v28, v29);
  swift_allocObject();
  v30 = sub_254F291A0();
  v25(v28, v29);
  v31 = *(v54 + 16);
  v32 = *(v1 + 1160);
  v33 = *(v1 + 1120);
  if (v31)
  {
    v53 = v30;
    v55 = (v1 + 1184);
    v34 = (v1 + 1188);
    v35 = (v1 + 1192);
    v56 = MEMORY[0x277D84F90];
    sub_254ECA604(0, v31, 0);
    v36 = v56;
    v37 = (v32 + 32);
    do
    {
      v39 = *v37++;
      v38 = v39;
      v40 = 0.0;
      if (v39)
      {
        v41 = *(v38 + 16);
        if (v41 >= 2 && v41 == *(v33 + 16))
        {
          *v55 = NAN;

          vDSP_svesq((v38 + 32), 1, v55, v41);
          v42 = *v55;
          v43 = *(v33 + 16);
          *v34 = NAN;
          vDSP_svesq((v33 + 32), 1, (v1 + 1188), v43);
          v44 = *(v38 + 16);
          if (v44 != *(v33 + 16))
          {
            __break(1u);
          }

          v45 = sqrtf(*v34);
          *v35 = NAN;
          v46 = sqrtf(v42);
          vDSP_dotpr((v38 + 32), 1, (v33 + 32), 1, (v1 + 1192), v44);
          v47 = *v35;

          v48 = v47 / ((v46 * v45) + 0.00000011921);
          if (v48 <= 1.0)
          {
            v49 = v47 / ((v46 * v45) + 0.00000011921);
          }

          else
          {
            v49 = 1.0;
          }

          if (v48 > 0.0)
          {
            v40 = v49;
          }

          else
          {
            v40 = 0.0;
          }
        }
      }

      v51 = *(v56 + 16);
      v50 = *(v56 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_254ECA604((v50 > 1), v51 + 1, 1);
      }

      *(v56 + 16) = v51 + 1;
      *(v56 + 4 * v51 + 32) = v40;
      --v31;
    }

    while (v31);

    v30 = v53;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  *(v1 + 1168) = v36;
  sub_254ECFD28(*(v1 + 848), "IFCR.IntelligenceCommandScorer.scoreRelevanceOfContextValues.scoreEmbeddings", 76, 2, v30);

  return MEMORY[0x282200920](v1 + 16, v1 + 696, sub_254ECF420, v1 + 800);
}

uint64_t sub_254ECF420()
{
  sub_254EB3BD8();
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_254ECF4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_254EC0020();
  v29 = *MEMORY[0x277D85DE8];
  sub_254EB2CF0();

  sub_254EB3BF4();
  sub_254EB3A64();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, v29, a18, a19, a20);
}

uint64_t sub_254ECF5B4()
{
  sub_254EB3BD8();
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_254ECF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_254EC0020();
  v37 = *MEMORY[0x277D85DE8];
  v30 = v20[121];
  v31 = v20[120];
  v32 = v20[117];
  v33 = v20[114];
  v34 = v20[111];
  v35 = v20[110];
  v36 = v20[109];

  sub_254EB3BF4();
  sub_254EB3A64();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, v36, v37, a18, a19, a20);
}

uint64_t sub_254ECF798()
{
  sub_254EB3BD8();
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_254ECF81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_254EC0020();
  v29 = *MEMORY[0x277D85DE8];
  sub_254EB2CF0();

  sub_254EB3BF4();
  sub_254EB3A64();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, v29, a18, a19, a20);
}

uint64_t sub_254ECF92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_254ECF950, 0, 0);
}

uint64_t sub_254ECF950()
{
  sub_254EB3A3C();
  v1 = sub_254F29490();
  v3 = v2;
  *(v0 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_254ECFA00;

  return sub_254EC7E5C(v1, v3);
}

uint64_t sub_254ECFA00()
{
  sub_254EB3A3C();
  v3 = v2;
  v4 = *v1;
  sub_254EB2CE0();
  *v5 = v4;

  if (v0)
  {

    v3 = 0;
  }

  else
  {
  }

  v6 = *(v4 + 8);

  return v6(v3);
}

uint64_t sub_254ECFB34(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_254ECFC20;

  return v5();
}

uint64_t sub_254ECFC20()
{
  sub_254EB3BD8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;

  *v3 = v2;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_254ECFD28(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_254F29180();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_254F29140();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_254F29160();
  sub_254F29190();
  v21 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_254F291C0();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x259C2EB80](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254ECFFD0()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime25IntelligenceCommandScorer_signposter;
  sub_254F29170();
  sub_254EB2D54();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for IntelligenceCommandScorer(uint64_t a1)
{
  result = qword_27F75EE20;
  if (!qword_27F75EE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED00B4(uint64_t a1)
{
  result = sub_254F29170();
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

uint64_t sub_254ED0144()
{
  sub_254EB3A3C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_254ED01E8;

  return sub_254ECF92C(v2, v3, v4);
}

uint64_t sub_254ED01E8()
{
  sub_254EB3BD8();
  v2 = v1;
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_254ED02D8()
{
  sub_254EB3A3C();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_254ED038C;

  return sub_254ECFB34(v3, v4);
}

uint64_t sub_254ED038C()
{
  sub_254EB3BD8();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_254ED0474()
{

  return v0;
}

uint64_t sub_254ED04A4()
{
  sub_254ED0474();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for OnScreenContentAppEntityProvider(uint64_t a1)
{
  result = qword_2814262A8;
  if (!qword_2814262A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED0570(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for OnScreenContentAppEntityProvider(0);
  sub_254EB2D90(v3);
  v2[18] = sub_254EB3FC4();
  v4 = sub_254F291E0();
  v2[19] = v4;
  sub_254EB2CAC(v4);
  v2[20] = v5;
  v2[21] = sub_254EB3FC4();
  v6 = sub_254EC8BC0(&qword_27F75EE40, &qword_254F2B488);
  v2[22] = v6;
  sub_254EB2D90(v6);
  v2[23] = sub_254EB3C44();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = sub_254F28120();
  v2[26] = v7;
  sub_254EB2CAC(v7);
  v2[27] = v8;
  v2[28] = sub_254EB3FC4();
  v9 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v9);
  v2[29] = sub_254EB3FC4();
  v10 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v10);
  v2[30] = sub_254EB3C44();
  v2[31] = swift_task_alloc();
  v11 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v11);
  v2[32] = sub_254EB3FC4();
  v12 = sub_254F28EE0();
  v2[33] = v12;
  sub_254EB2CAC(v12);
  v2[34] = v13;
  v2[35] = sub_254EB3FC4();
  v14 = sub_254F281F0();
  v2[36] = v14;
  sub_254EB2CAC(v14);
  v2[37] = v15;
  v2[38] = sub_254EB3FC4();
  v16 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  sub_254EB2D90(v16);
  v2[39] = sub_254EB3FC4();
  v17 = sub_254F29290();
  v2[40] = v17;
  sub_254EB2CAC(v17);
  v2[41] = v18;
  v2[42] = sub_254EB3C44();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v19 = sub_254F28750();
  v2[46] = v19;
  sub_254EB2CAC(v19);
  v2[47] = v20;
  v2[48] = sub_254EB3FC4();
  v21 = sub_254F28C50();
  v2[49] = v21;
  sub_254EB2CAC(v21);
  v2[50] = v22;
  v2[51] = sub_254EB3FC4();
  v23 = type metadata accessor for ContextValueElement(0);
  v2[52] = v23;
  sub_254EB2CAC(v23);
  v2[53] = v24;
  v2[54] = sub_254EB3C44();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v25 = sub_254F289F0();
  v2[61] = v25;
  sub_254EB2CAC(v25);
  v2[62] = v26;
  v2[63] = sub_254EB3FC4();
  v27 = sub_254EC8BC0(&qword_27F75EE58, &qword_254F2B4B0);
  sub_254EB2D90(v27);
  v2[64] = sub_254EB3FC4();
  v28 = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  v2[65] = v28;
  sub_254EB2D90(v28);
  v2[66] = sub_254EB3FC4();

  return MEMORY[0x2822009F8](sub_254ED0A6C, 0, 0);
}

void sub_254ED0A6C()
{
  v239 = v0;
  v1 = v0;
  sub_254ED1F44(v0[16], (v0 + 12));
  v2 = v0[65];
  v3 = v0[64];
  v224 = v0;
  if (!v0[15])
  {
    sub_254EB306C((v0 + 12), &qword_27F75EE68, &qword_254F2B4C0);
    sub_254EB2F04(v3, 1, 1, v2);
    goto LABEL_24;
  }

  v4 = swift_dynamicCast();
  sub_254EB2F04(v3, v4 ^ 1u, 1, v2);
  if (sub_254EB2F2C(v3, 1, v2) == 1)
  {
LABEL_24:
    v64 = v0[17];
    v63 = v0[18];
    sub_254EB306C(v0[64], &qword_27F75EE58, &qword_254F2B4B0);
    sub_254F284C0();
    sub_254ED2140(v64, v63, type metadata accessor for OnScreenContentAppEntityProvider);
    v65 = sub_254F291D0();
    v66 = sub_254F296F0();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[20];
    v69 = v0[21];
    v70 = v1[19];
    if (v67)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v238 = v72;
      *v71 = 136315138;
      v73 = sub_254F28070();
      v75 = v74;
      sub_254EB3C1C();
      v76 = v73;
      v1 = v224;
      v77 = sub_254EC2D74(v76, v75, &v238);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_254EAE000, v65, v66, "[%s] unable to get source data", v71, 0xCu);
      sub_254EB2BBC(v72);
      MEMORY[0x259C2EB80](v72, -1, -1);
      MEMORY[0x259C2EB80](v71, -1, -1);
    }

    else
    {

      sub_254EB3C1C();
    }

    (*(v68 + 8))(v69, v70);
    v234 = MEMORY[0x277D84F90];
    goto LABEL_81;
  }

  v5 = v0[66];
  v6 = v0[65];
  sub_254ED20D4(v0[64], v5, &qword_27F75EE60, &qword_254F2B4B8);
  v7 = *(v5 + *(v6 + 48));
  v218 = *MEMORY[0x277D729F8];
  v216 = *(v7 + 16);
  if (v216)
  {
    v8 = 0;
    v9 = v0[62];
    v198 = v0[52];
    v199 = v0[53];
    v10 = v0[50];
    v11 = v0[47];
    v12 = v0[41];
    v13 = v0[37];
    v14 = v0[34];
    v15 = *(v9 + 16);
    v9 += 16;
    v213 = v15;
    v211 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v210 = *(v9 + 56);
    v16 = (v11 + 88);
    v17 = *MEMORY[0x277D1D2E8];
    v237 = (v11 + 8);
    v233 = (v11 + 96);
    v231 = (v10 + 32);
    v196 = (v14 + 8);
    v197 = (v12 + 32);
    v194 = (v13 + 16);
    v195 = (v12 + 16);
    v192 = (v12 + 8);
    v193 = (v13 + 8);
    v228 = (v10 + 8);
    v208 = v9 - 8;
    v220 = MEMORY[0x277D84F90];
    v225 = (v11 + 88);
    while (1)
    {
      v221 = v8;
      v213(v1[63], v211 + v8 * v210, v1[61]);
      v18 = sub_254F289D0();
      v19 = 0;
      v20 = *(v18 + 16);
      while (v20 != v19)
      {
        v21 = v1[48];
        v22 = v1[46];
        v23 = sub_254F28CE0();
        sub_254EB2CAC(v23);
        sub_254F28CD0();
        if ((*v16)(v21, v22) == v17)
        {
          v24 = v18;
          v25 = v1[51];
          v27 = v1[48];
          v26 = v1[49];
          v28 = v1[46];
          v29 = v1;
          v32 = v1 + 39;
          v31 = v1[39];
          v30 = v32[1];
          (*v233)(v27, v28);
          (*v231)(v25, v27, v26);
          sub_254F28C10();
          if (sub_254EB2F2C(v31, 1, v30) == 1)
          {
            v33 = v29[39];
            (*v228)(v29[51], v29[49]);
            sub_254EB306C(v33, &qword_27F75EE50, &unk_254F2C4F0);
            v18 = v24;
            v16 = v225;
            v1 = v29;
            goto LABEL_11;
          }

          v34 = v29[35];
          v207 = v29[33];
          (*v197)(v29[45], v29[39], v29[40]);
          sub_254F289B0();
          sub_254F28E60();
          sub_254F28EA0();
          sub_254F28E30();
          v29[7] = v35;
          v29[8] = v36;
          v29[9] = v37;
          v29[10] = v38;
          *(v29 + 88) = 0;
          sub_254F28EC0();
          v29[2] = v39;
          v29[3] = v40;
          v29[4] = v41;
          v29[5] = v42;
          *(v29 + 48) = 0;
          sub_254F28E20();
          sub_254F28180();
          sub_254F28ED0();
          sub_254F281E0();
          sub_254F28E70();
          sub_254F28170();
          (*v196)(v34, v207);
          if ((sub_254F28130() & 1) == 0)
          {
            sub_254F28C00();
          }

          sub_254F28140();
          if ((sub_254F281D0() & 1) == 0)
          {
            sub_254F28C30();
          }

          v204 = v29[59];
          v43 = v29[40];
          v44 = v29[38];
          v201 = v29[45];
          v203 = v29[36];
          v45 = v29[31];
          v46 = v29[32];
          v47 = v29[29];
          sub_254F281E0();
          v48 = sub_254F28440();
          sub_254EB2F04(v46, 1, 1, v48);
          v49 = swift_allocBox();
          (*v195)(v50, v201, v43);
          *v45 = v49;
          v51 = sub_254F29300();
          sub_254EB2D80();
          (*(v52 + 104))(v45, v218, v51);
          sub_254EB2F04(v45, 0, 1, v51);
          (*v194)(v47, v44, v203);
          sub_254EB2F04(v47, 0, 1, v203);
          sub_254F280D0();
          sub_254F289B0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EF0038();
            v220 = v59;
          }

          v53 = *(v220 + 16);
          if (v53 >= *(v220 + 24) >> 1)
          {
            sub_254EF0038();
            v220 = v60;
          }

          ++v19;
          v206 = v224[59];
          v54 = v224[51];
          v55 = v224[49];
          v56 = v224[45];
          v57 = v224[40];
          (*v193)(v224[38], v224[36]);
          v58 = v56;
          v1 = v224;
          (*v192)(v58, v57);
          (*v228)(v54, v55);
          *(v220 + 16) = v53 + 1;
          sub_254ED1FB4(v206, v220 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v53);
          v18 = v24;
          v16 = v225;
        }

        else
        {
          (*v237)(v1[48], v1[46]);
LABEL_11:
          ++v19;
        }
      }

      v8 = v221 + 1;
      v61 = sub_254EB6930();
      v62(v61);
      if (v221 + 1 == v216)
      {
        goto LABEL_29;
      }
    }
  }

  v220 = MEMORY[0x277D84F90];
LABEL_29:
  v78 = v1;
  v79 = 0;
  v80 = v78[41];
  v232 = (v80 + 16);
  v212 = v80;
  v215 = (v80 + 8);
  v81 = MEMORY[0x277D84F98];
  v82 = v220;
  v83 = *(v220 + 16);
  v235 = v83;
  while (v83 != v79)
  {
    if (v79 >= *(v82 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      return;
    }

    v84 = v224[60];
    v85 = v224[30];
    sub_254EB7DF0();
    v87 = *(v86 + 72);
    sub_254EB6B9C();
    sub_254ED2140(v88, v84, v89);
    sub_254F280F0();
    v90 = sub_254F29300();
    v91 = sub_254EB2F2C(v85, 1, v90);
    v92 = v224[30];
    if (v91 == 1)
    {
      sub_254EB306C(v92, &qword_27F75EE48, &unk_254F2B550);
    }

    else
    {
      v93 = *(v90 - 8);
      if ((*(v93 + 88))(v92, v90) == v218)
      {
        v94 = v224[44];
        v95 = v224[40];
        (*(v93 + 96))(v224[30], v90);
        v96 = v81;
        v97 = swift_projectBox();
        v98 = *v232;
        (*v232)(v94, v97, v95);

        if (*(v81 + 16) && (sub_254F0585C(), (v100 & 1) != 0))
        {
          v101 = v224[60];
          v103 = v224[57];
          v102 = v224[58];
          v104 = v224[56];
          v226 = v224[44];
          v229 = v224[55];
          v222 = v224[43];
          v105 = v224[40];
          sub_254ED2140(*(v96 + 56) + v99 * v87, v103, type metadata accessor for ContextValueElement);
          sub_254ED1FB4(v103, v102);
          sub_254F18050(v101, v104);
          sub_254EB2D68();
          sub_254ED2018(v102, v106);
          sub_254ED1FB4(v104, v102);
          v98(v222, v226, v105);
          sub_254ED2140(v102, v229, type metadata accessor for ContextValueElement);
          swift_isUniquelyReferenced_nonNull_native();
          v238 = v96;
          sub_254F0585C();
          sub_254EB5130();
          if (v108)
          {
            goto LABEL_96;
          }

          v109 = v107;
          v110 = sub_254EC8BC0(&qword_27F75EE70, &qword_254F2B4C8);
          v111 = sub_254EB638C(v110);
          v81 = v238;
          if (v111)
          {
            sub_254F0585C();
            v82 = v220;
            if ((v109 & 1) != (v118 & 1))
            {
              goto LABEL_84;
            }
          }

          else
          {
            v82 = v220;
          }

          if (v109)
          {
            v142 = sub_254EB6D50();
            sub_254ED2070(v142, v143);
          }

          else
          {
            v144 = sub_254EB3FE8(v111, v224[43], v112, v113, v114, v115, v116, v117, v192, v193, v194, v195, v196, v197, v198, v199, v201, v203, v204, v206, v208, v210, v212);
            (v98)(v144);
            v145 = sub_254EB6D50();
            sub_254ED1FB4(v145, v146);
            v147 = v238[2];
            v108 = __OFADD__(v147, 1);
            v148 = v147 + 1;
            if (v108)
            {
              goto LABEL_97;
            }

            v238[2] = v148;
          }

          v149 = v224[58];
          v150 = v224[44];
          v151 = v224[40];
          v152 = *v215;
          (*v215)(v224[43], v151);
          sub_254EB2D68();
          sub_254ED2018(v149, v153);
          (v152)(v150, v151);
        }

        else
        {
          v98(v224[42], v224[44], v224[40]);
          sub_254EB6B9C();
          v119 = sub_254EB6930();
          sub_254ED2140(v119, v120, v121);
          swift_isUniquelyReferenced_nonNull_native();
          v238 = v81;
          sub_254F0585C();
          sub_254EB5130();
          if (v108)
          {
            goto LABEL_94;
          }

          v123 = v122;
          v124 = sub_254EC8BC0(&qword_27F75EE70, &qword_254F2B4C8);
          v125 = sub_254EB638C(v124);
          v81 = v238;
          if (v125)
          {
            sub_254F0585C();
            if ((v123 & 1) != (v132 & 1))
            {
LABEL_84:

              sub_254F29B50();
              return;
            }
          }

          if (v123)
          {
            v133 = sub_254EB6D50();
            sub_254ED2070(v133, v134);
          }

          else
          {
            v135 = sub_254EB3FE8(v125, v224[42], v126, v127, v128, v129, v130, v131, v192, v193, v194, v195, v196, v197, v198, v199, v201, v203, v204, v206, v208, v210, v212);
            (v98)(v135);
            v136 = sub_254EB6D50();
            sub_254ED1FB4(v136, v137);
            v138 = v238[2];
            v108 = __OFADD__(v138, 1);
            v139 = v138 + 1;
            if (v108)
            {
              goto LABEL_95;
            }

            v238[2] = v139;
          }

          v140 = *v215;
          (*v215)(v224[42], v224[40]);
          v141 = sub_254EB6930();
          v140(v141);
        }

        v83 = v235;
      }

      else
      {
        (*(v93 + 8))(v224[30], v90);
      }
    }

    sub_254EB2D68();
    sub_254ED2018(v154, v155);
    ++v79;
  }

  v156 = *(v81 + 16);
  if (v156)
  {
    v1 = v224;
    v157 = v224[27];
    v209 = v224[22];
    v238 = MEMORY[0x277D84F90];
    sub_254ECA644(0, v156, 0);
    v158 = v238;
    v161 = sub_254ED1F04(v81);
    v162 = 0;
    v230 = v81 + 64;
    v205 = (v157 + 16);
    v202 = v156;
    v200 = v81 + 72;
    if ((v161 & 0x8000000000000000) == 0)
    {
      while (v161 < 1 << *(v81 + 32))
      {
        v163 = v161 >> 6;
        if ((*(v230 + 8 * (v161 >> 6)) & (1 << v161)) == 0)
        {
          goto LABEL_89;
        }

        if (*(v81 + 36) != v159)
        {
          goto LABEL_90;
        }

        v219 = v159;
        v214 = v160;
        v217 = v162;
        v236 = v158;
        v164 = *(v209 + 48);
        v165 = v81;
        v166 = v1[40];
        v227 = v1[28];
        v167 = v1[25];
        v223 = v1[26];
        v169 = v1[23];
        v168 = v1[24];
        (*(v212 + 16))(v167, *(v165 + 48) + *(v212 + 72) * v161, v166);
        sub_254EB6B9C();
        sub_254ED2140(v170, v167 + v164, v171);
        v172 = sub_254EB6930();
        v173(v172);
        v174 = v167 + v164;
        v158 = v236;
        sub_254ED1FB4(v174, v168 + *(v209 + 48));
        sub_254ED20D4(v168, v169, &qword_27F75EE40, &qword_254F2B488);
        v175 = *(v209 + 48);
        (*v205)(v227, v169 + v175, v223);
        sub_254EB2D68();
        sub_254ED2018(v169 + v175, v176);
        (*(v212 + 8))(v169, v166);
        v238 = v236;
        v178 = *(v236 + 16);
        v177 = *(v236 + 24);
        if (v178 >= v177 >> 1)
        {
          sub_254ECA644(v177 > 1, v178 + 1, 1);
          v158 = v238;
        }

        v1 = v224;
        *(v158 + 16) = v178 + 1;
        sub_254EB7DF0();
        (*(v180 + 32))(v179 + *(v180 + 72) * v178);
        v181 = 1 << *(v165 + 32);
        if (v161 >= v181)
        {
          goto LABEL_91;
        }

        v182 = *(v230 + 8 * v163);
        if ((v182 & (1 << v161)) == 0)
        {
          goto LABEL_92;
        }

        v81 = v165;
        if (*(v165 + 36) != v219)
        {
          goto LABEL_93;
        }

        v183 = v182 & (-2 << (v161 & 0x3F));
        if (v183)
        {
          v181 = __clz(__rbit64(v183)) | v161 & 0x7FFFFFFFFFFFFFC0;
          v184 = v202;
          v185 = v217;
        }

        else
        {
          v186 = v163 << 6;
          v184 = v202;
          v187 = (v200 + 8 * v163);
          v188 = v163 + 1;
          v185 = v217;
          while (v188 < (v181 + 63) >> 6)
          {
            v190 = *v187++;
            v189 = v190;
            v186 += 64;
            ++v188;
            if (v190)
            {
              sub_254ED2134(v161, v219, v214 & 1);
              v181 = __clz(__rbit64(v189)) + v186;
              goto LABEL_75;
            }
          }

          sub_254ED2134(v161, v219, v214 & 1);
        }

LABEL_75:
        v162 = v185 + 1;
        if (v162 == v184)
        {

          goto LABEL_80;
        }

        v160 = 0;
        v159 = *(v81 + 36);
        v161 = v181;
        if (v181 < 0)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_88;
  }

  v158 = MEMORY[0x277D84F90];
  v1 = v224;
LABEL_80:
  v234 = v158;
  sub_254EB306C(v1[66], &qword_27F75EE60, &qword_254F2B4B8);
LABEL_81:

  v191 = v1[1];

  v191(v234);
}

uint64_t sub_254ED1D74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254ED0570(a1);
}

uint64_t sub_254ED1E08(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_254ED1F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE68, &qword_254F2B4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED1FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextValueElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED2018(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_254EB2D80();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_254ED2070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextValueElement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED20D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254EC8BC0(a3, a4);
  sub_254EB2D80();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_254ED2134(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_254ED2140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_254EB2D80();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for OnScreenContentDocumentImageProvider(uint64_t a1)
{
  result = qword_281426218;
  if (!qword_281426218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED2214(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_254F291E0();
  v1[20] = v2;
  sub_254EB2CAC(v2);
  v1[21] = v3;
  v1[22] = sub_254EB3FC4();
  sub_254EC8BC0(&qword_27F75EE78, &unk_254F2B528);
  v1[23] = sub_254EB3FC4();
  v4 = sub_254F28120();
  v1[24] = v4;
  sub_254EB2CAC(v4);
  v1[25] = v5;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v6 = sub_254F289A0();
  v1[28] = v6;
  sub_254EB2CAC(v6);
  v1[29] = v7;
  v1[30] = sub_254EB3FC4();
  v8 = sub_254F28E10();
  v1[31] = v8;
  sub_254EB2CAC(v8);
  v1[32] = v9;
  v1[33] = sub_254EB3FC4();
  v10 = sub_254F28F20();
  v1[34] = v10;
  sub_254EB2CAC(v10);
  v1[35] = v11;
  v1[36] = sub_254EB3FC4();
  sub_254EC8BC0(&qword_27F75EE58, &qword_254F2B4B0);
  v1[37] = sub_254EB3FC4();
  v1[38] = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ED24B0, 0, 0);
}

uint64_t sub_254ED24B0()
{
  v37 = v0;
  sub_254EB2F54(v0[19], (v0 + 14), &qword_27F75EE68, &qword_254F2B4C0);
  v1 = v0[37];
  v2 = v0[38];
  if (!v0[17])
  {
    sub_254EB300C((v0 + 14), &qword_27F75EE68, &qword_254F2B4C0);
    sub_254EB2F04(v1, 1, 1, v2);
    goto LABEL_6;
  }

  v3 = swift_dynamicCast();
  sub_254EB2F04(v1, v3 ^ 1u, 1, v2);
  if (sub_254EB2F2C(v1, 1, v2) == 1)
  {
LABEL_6:
    v10 = v0[37];
    v8 = &qword_27F75EE58;
    v9 = &qword_254F2B4B0;
    goto LABEL_7;
  }

  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[34];
  sub_254ED3594(v0[37], v5);
  sub_254EB2F54(v5, v4, &qword_27F75EE60, &qword_254F2B4B8);

  if (sub_254EB2F2C(v4, 1, v6) == 1)
  {
    v7 = v0[39];
    sub_254EB300C(v0[40], &qword_27F75EE60, &qword_254F2B4B8);
    v8 = &unk_27F75EE88;
    v9 = &unk_254F2B540;
    v10 = v7;
LABEL_7:
    sub_254EB300C(v10, v8, v9);
    sub_254F284C0();
    v11 = sub_254F291D0();
    v12 = sub_254F296F0();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[20];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v0[18] = type metadata accessor for OnScreenContentDocumentImageProvider(0);
      sub_254EC8BC0(&qword_27F75EE80, &qword_254F2B538);
      v19 = sub_254F29480();
      v21 = sub_254EC2D74(v19, v20, &v36);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_254EAE000, v11, v12, "unable to get source data for %s", v17, 0xCu);
      sub_254EB2BBC(v18);
      MEMORY[0x259C2EB80](v18, -1, -1);
      MEMORY[0x259C2EB80](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);

    v22 = v0[1];
    v23 = MEMORY[0x277D84F90];

    return v22(v23);
  }

  (*(v0[35] + 32))(v0[36], v0[39], v0[34]);
  v25 = type metadata accessor for UserSessionManager();
  swift_allocObject();
  v26 = sub_254EC104C();
  v0[12] = v25;
  v0[13] = &off_286726428;
  v0[9] = v26;
  type metadata accessor for UIContextRetriever();
  inited = swift_initStackObject();
  v0[41] = inited;
  v28 = v0[12];
  v29 = sub_254EC10A4((v0 + 9), v28);
  v30 = *(v28 - 8);
  v31 = sub_254EB3FC4();
  (*(v30 + 16))(v31, v29, v28);
  v32 = *v31;
  inited[5] = v25;
  inited[6] = &off_286726428;
  inited[2] = v32;
  sub_254EB2BBC(v0 + 9);

  v33 = sub_254F28F10();
  v0[42] = v33;
  sub_254F28E00();
  v34 = swift_task_alloc();
  v0[43] = v34;
  *v34 = v0;
  v34[1] = sub_254ED2980;
  v35 = v0[33];

  return sub_254EFAB5C(v33, v35);
}

uint64_t sub_254ED2980(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  *(*v1 + 352) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_254ED2AFC, 0, 0);
}

void sub_254ED2AFC()
{
  v1 = 0;
  v2 = v0[44];
  v3 = v0[29];
  v4 = *(v2 + 16);
  v23 = v0[25];
  v24 = (v23 + 32);
  v25 = MEMORY[0x277D84F90];
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[23];
    (*(v3 + 16))(v0[30], v0[44] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, v0[28]);
    sub_254ED2E68(v5);
    v7 = v0[23];
    v6 = v0[24];
    (*(v3 + 8))(v0[30], v0[28]);
    if (sub_254EB2F2C(v7, 1, v6) == 1)
    {
      sub_254EB300C(v0[23], &qword_27F75EE78, &unk_254F2B528);
      ++v1;
    }

    else
    {
      v8 = v0[27];
      v22 = v0[26];
      v9 = v0[24];
      v10 = *v24;
      (*v24)(v8, v0[23], v9);
      v10(v22, v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254EEFEB4();
        v25 = v14;
      }

      v11 = *(v25 + 16);
      if (v11 >= *(v25 + 24) >> 1)
      {
        sub_254EEFEB4();
        v25 = v15;
      }

      ++v1;
      v12 = v0[26];
      v13 = v0[24];
      *(v25 + 16) = v11 + 1;
      v10(v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v11, v12, v13);
    }
  }

  v17 = v0[40];
  v16 = v0[41];
  v18 = v0[35];
  v19 = v0[36];
  v20 = v0[34];

  swift_setDeallocating();
  sub_254EB2BBC((v16 + 16));
  (*(v18 + 8))(v19, v20);
  sub_254EB300C(v17, &qword_27F75EE60, &qword_254F2B4B8);

  v21 = v0[1];

  v21(v25);
}

uint64_t sub_254ED2E68@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v41 - v2;
  v3 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v41 - v4);
  v6 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v41 - v7;
  v8 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v41 - v9;
  v10 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_254F28800();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_254F28990();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F28940();
  if ((*(v14 + 88))(v16, v13) == *MEMORY[0x277D1D368])
  {
    (*(v14 + 96))(v16, v13);
    (*(v18 + 32))(v20, v16, v17);
    sub_254F28980();
    v21 = sub_254F29290();
    if (sub_254EB2F2C(v12, 1, v21) == 1)
    {
      sub_254EB300C(v12, &qword_27F75EE50, &unk_254F2C4F0);
      sub_254EC8BC0(&qword_27F75EE90, &unk_254F2B570);
      v22 = v42[9];
      v23 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_254F2B4D0;
      v25 = v24 + v23;
      sub_254F286B0();
      v26 = sub_254F286E0();
      v27 = 1;
      sub_254EB2F04(v25, 0, 1, v26);
      sub_254F286C0();
      sub_254EB2F04(v25 + v22, 0, 1, v26);
      sub_254F286D0();
      sub_254EB2F04(v25 + 2 * v22, 0, 1, v26);
      v28 = v43;
      v29 = sub_254F28970();
      v42 = &v41;
      MEMORY[0x28223BE20](v29);
      *(&v41 - 2) = v28;
      v30 = v47;
      LOBYTE(v26) = sub_254EF7458(sub_254ED3604, (&v41 - 4), v24);
      v47 = v30;
      swift_setDeallocating();
      sub_254ECA508();
      (*(v18 + 8))(v20, v17);
      sub_254EB300C(v28, &qword_27F75EDF8, &unk_254F2B560);
      v31 = v46;
      if ((v26 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    (*(v18 + 8))(v20, v17);
    sub_254EB300C(v12, &qword_27F75EE50, &unk_254F2C4F0);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  v31 = v46;
LABEL_8:
  v32 = sub_254F28440();
  sub_254EB2F04(v44, 1, 1, v32);
  v33 = sub_254F292F0();
  v34 = swift_allocBox();
  *v35 = 1;
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D72988], v33);
  *v5 = v34;
  v36 = *MEMORY[0x277D72A58];
  v37 = sub_254F29300();
  (*(*(v37 - 8) + 104))(v5, v36, v37);
  sub_254EB2F04(v5, 0, 1, v37);
  v38 = sub_254F281F0();
  sub_254EB2F04(v45, 1, 1, v38);
  sub_254F280D0();
  v27 = 0;
LABEL_9:
  v39 = sub_254F28120();
  return sub_254EB2F04(v31, v27, 1, v39);
}

uint64_t sub_254ED3500(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254ED2214(a1);
}

uint64_t sub_254ED3594(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED364C(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    v4 = sub_254F27F10() - 8;
    MEMORY[0x28223BE20](v4);
    result = sub_254F27DB0();
    ++v2;
  }

  return result;
}

uint64_t sub_254ED374C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for OnScreenUITextProvider(0);
  sub_254EB2D90(v3);
  v2[8] = sub_254EB3FC4();
  v4 = sub_254F291E0();
  v2[9] = v4;
  sub_254EB2CAC(v4);
  v2[10] = v5;
  v2[11] = sub_254EB3FC4();
  v6 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v6);
  v2[12] = sub_254EB3FC4();
  v7 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v7);
  v2[13] = sub_254EB3FC4();
  v8 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v8);
  v2[14] = sub_254EB3FC4();
  v9 = sub_254F28410();
  v2[15] = v9;
  sub_254EB2CAC(v9);
  v2[16] = v10;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = sub_254F28120();
  v2[19] = v11;
  sub_254EB2CAC(v11);
  v2[20] = v12;
  v2[21] = sub_254EB3FC4();
  v13 = sub_254F28F20();
  v2[22] = v13;
  sub_254EB2CAC(v13);
  v2[23] = v14;
  v2[24] = sub_254EB3FC4();
  v15 = sub_254EC8BC0(&qword_27F75EE58, &qword_254F2B4B0);
  sub_254EB2D90(v15);
  v2[25] = sub_254EB3FC4();
  v16 = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  v2[26] = v16;
  sub_254EB2D90(v16);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ED3A08, 0, 0);
}

uint64_t sub_254ED3A08()
{
  v73 = v0;
  sub_254EB2FBC(v0[6], (v0 + 2), &qword_27F75EE68, &qword_254F2B4C0);
  v1 = v0[25];
  v2 = v0[26];
  if (!v0[5])
  {
    sub_254EB306C((v0 + 2), &qword_27F75EE68, &qword_254F2B4C0);
    v13 = sub_254EB3FDC();
    sub_254EB2F04(v13, v14, 1, v2);
    goto LABEL_6;
  }

  v3 = swift_dynamicCast();
  sub_254EB2F04(v1, v3 ^ 1u, 1, v2);
  v4 = sub_254EB3FDC();
  if (sub_254EB2F2C(v4, v5, v2) == 1)
  {
LABEL_6:
    sub_254EB306C(v0[25], &qword_27F75EE58, &qword_254F2B4B0);
LABEL_7:
    v16 = v0[7];
    v15 = v0[8];
    sub_254F284C0();
    sub_254ED4C6C(v16, v15, type metadata accessor for OnScreenUITextProvider);
    v17 = sub_254F291D0();
    v18 = sub_254F296F0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[10];
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[9];
    if (v19)
    {
      v24 = swift_slowAlloc();
      v70 = v21;
      v72[0] = swift_slowAlloc();
      v25 = v72[0];
      *v24 = 136315138;
      v26 = sub_254F28070();
      v28 = v27;
      sub_254ED4BB8(v22);
      v29 = sub_254EC2D74(v26, v28, v72);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_254EAE000, v17, v18, "[%s] unable to get source data", v24, 0xCu);
      sub_254EB2BBC(v25);
      MEMORY[0x259C2EB80](v25, -1, -1);
      MEMORY[0x259C2EB80](v24, -1, -1);

      (*(v20 + 8))(v70, v23);
    }

    else
    {

      sub_254ED4BB8(v22);
      (*(v20 + 8))(v21, v23);
    }

    goto LABEL_10;
  }

  v6 = v0[27];
  v7 = v0[28];
  v8 = v0;
  v9 = v0[22];
  sub_254ED4C1C(v0[25], v7, &qword_27F75EE60, &qword_254F2B4B8);
  sub_254EB2FBC(v7, v6, &qword_27F75EE60, &qword_254F2B4B8);

  v10 = sub_254EB3FDC();
  if (sub_254EB2F2C(v10, v11, v9) == 1)
  {
    v12 = v0[27];
    sub_254EB306C(v0[28], &qword_27F75EE60, &qword_254F2B4B8);
    sub_254EB306C(v12, &qword_27F75EE88, &unk_254F2B540);
    goto LABEL_7;
  }

  (*(v0[23] + 32))(v0[24], v0[27], v0[22]);
  v33 = MEMORY[0x277D84F90];
  v72[0] = MEMORY[0x277D84F90];
  v34 = sub_254F28F10();
  sub_254ED364C(v34, v72);

  v35 = v72[0];
  v36 = *(v72[0] + 16);
  if (!v36)
  {
    v61 = v8[28];
    v62 = v8[23];
    v63 = v8[24];
    v0 = v8;
    v64 = v8[22];

    (*(v62 + 8))(v63, v64);
    sub_254EB306C(v61, &qword_27F75EE60, &qword_254F2B4B8);
LABEL_10:
    v30 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v37 = v8[20];
  v38 = v8[16];
  v72[0] = v33;
  sub_254ECA644(0, v36, 0);
  v30 = v72[0];
  v39 = *(v38 + 16);
  v38 += 16;
  v65 = v8;
  v40 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
  v67 = *(v38 + 56);
  v68 = v39;
  v69 = v37;
  v66 = (v38 - 8);
  v41 = v8;
  do
  {
    v71 = v36;
    v43 = v41[17];
    v42 = v41[18];
    v45 = v41[14];
    v44 = v41[15];
    v46 = v41[12];
    v47 = v30;
    v68(v42, v40, v44);
    v68(v43, v42, v44);
    sub_254F28470();
    v48 = sub_254F28440();
    sub_254EB2F04(v45, 0, 1, v48);
    sub_254F29300();
    v49 = sub_254EB3FDC();
    sub_254EB2F04(v49, v50, 1, v51);
    v52 = sub_254F281F0();
    sub_254EB2F04(v46, 1, 1, v52);
    sub_254F280D0();
    (*v66)(v42, v44);
    v72[0] = v30;
    v54 = *(v30 + 16);
    v53 = *(v30 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_254ECA644(v53 > 1, v54 + 1, 1);
      v47 = v72[0];
    }

    v55 = v65[21];
    v56 = v65[19];
    *(v47 + 16) = v54 + 1;
    v30 = v47;
    (*(v69 + 32))(v47 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v54, v55, v56);
    v40 += v67;
    --v36;
    v41 = v65;
  }

  while (v71 != 1);
  v57 = v65[28];
  v59 = v65[23];
  v58 = v65[24];
  v0 = v65;
  v60 = v65[22];

  (*(v59 + 8))(v58, v60);
  sub_254EB306C(v57, &qword_27F75EE60, &qword_254F2B4B8);
LABEL_11:

  v31 = v0[1];

  return v31(v30);
}

uint64_t sub_254ED4044(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v72 = a3;
  v75 = a2;
  v4 = sub_254F28410();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v71 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = v60 - v7;
  v8 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = v60 - v9;
  v10 = sub_254F283D0();
  MEMORY[0x28223BE20](v10 - 8);
  v64 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F283F0();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v66 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = v60 - v15;
  v16 = sub_254EC8BC0(&qword_27F75EEA0, &qword_254F2B5C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v60 - v17;
  v19 = sub_254EC8BC0(&qword_27F75EEA8, &qword_254F2B5D0);
  v20 = MEMORY[0x28223BE20](v19);
  v62 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v61 = v60 - v23;
  MEMORY[0x28223BE20](v22);
  v65 = v60 - v24;
  v25 = sub_254F27E10();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_254F27E90();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F27EA0();
  if ((*(v30 + 88))(v32, v29) == *MEMORY[0x277D74650])
  {
    (*(v30 + 96))(v32, v29);
    (*(v26 + 32))(v28, v32, v25);
    v33 = sub_254F27E00();
    v35 = v34;
    v36 = sub_254F27DF0();
    (*(v26 + 8))(v28, v25);
  }

  else
  {
    (*(v30 + 8))(v32, v29);
    result = sub_254F27D90();
    if (!v38)
    {
      return result;
    }

    v33 = result;
    v35 = v38;
    v36 = MEMORY[0x277D84F90];
  }

  sub_254F27D60();
  if (sub_254EB2F2C(v18, 1, v19) == 1)
  {

    return sub_254EB306C(v18, &qword_27F75EEA0, &qword_254F2B5C8);
  }

  else
  {
    v60[3] = v36;
    v39 = v65;
    sub_254ED4C1C(v18, v65, &qword_27F75EEA8, &qword_254F2B5D0);
    v60[0] = a1;
    v40 = v61;
    sub_254EB2FBC(v39, v61, &qword_27F75EEA8, &qword_254F2B5D0);
    v60[2] = v35;
    v41 = *(v19 + 48);
    v42 = v62;
    sub_254EB2FBC(v39, v62, &qword_27F75EEA8, &qword_254F2B5D0);
    v43 = *(v19 + 48);
    v44 = sub_254F27F10();
    v45 = *(v44 - 8);
    v60[1] = v33;
    v46 = v45;
    v47 = v63;
    (*(v45 + 32))(v63, v42, v44);
    sub_254EB2F04(v47, 0, 1, v44);
    sub_254ED4850(v40 + v41, v47);
    v48 = sub_254F27E80();
    (*(*(v48 - 8) + 8))(v42 + v43, v48);
    (*(v46 + 8))(v40, v44);
    v49 = v67;
    sub_254F283E0();
    type metadata accessor for UIContextRetriever();
    v50 = sub_254F27D70();
    sub_254EBB528(v60[0], v50);

    sub_254F27D20();
    v52 = v68;
    v51 = v69;
    (*(v68 + 16))(v66, v49, v69);
    v53 = v70;
    sub_254F28400();
    v55 = v73;
    v54 = v74;
    v56 = v71;
    (*(v73 + 16))(v71, v53, v74);
    v57 = v72;
    sub_254F16BE8();
    v58 = *(*v57 + 16);
    sub_254F16C90(v58);
    (*(v55 + 8))(v53, v54);
    (*(v52 + 8))(v49, v51);
    sub_254EB306C(v39, &qword_27F75EEA8, &qword_254F2B5D0);
    v59 = *v57;
    *(v59 + 16) = v58 + 1;
    return (*(v55 + 32))(v59 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v58, v56, v54);
  }
}

uint64_t sub_254ED4850(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  v5 = sub_254EB2D90(v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_254F27E70();
  sub_254F283C0();
  sub_254EB2FBC(a2, v10, &qword_27F75EE98, &qword_254F2B5C0);
  v11 = sub_254F27F10();
  v12 = sub_254EB2F2C(v10, 1, v11);
  if (v12 == 1)
  {
    sub_254EB306C(v10, &qword_27F75EE98, &qword_254F2B5C0);
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    sub_254F27CB0();
    v22 = v15;
    v23 = v16;
    v21 = v17;
    v24 = v18;
    (*(*(v11 - 8) + 8))(v10, v11);
    *&v14 = v21;
    *&v13 = v22;
    *(&v13 + 1) = v23;
    *(&v14 + 1) = v24;
  }

  v25 = v13;
  v26 = v14;
  v27 = v12 == 1;
  sub_254F283A0();
  sub_254EB2FBC(a2, v8, &qword_27F75EE98, &qword_254F2B5C0);
  if (sub_254EB2F2C(v8, 1, v11) == 1)
  {
    sub_254EB306C(v8, &qword_27F75EE98, &qword_254F2B5C0);
  }

  else
  {
    sub_254F27D20();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  sub_254F283B0();
  sub_254F27E40();
  sub_254F28390();
  sub_254EB306C(a2, &qword_27F75EE98, &qword_254F2B5C0);
  sub_254F27E80();
  sub_254EB2D80();
  return (*(v19 + 8))(a1);
}

uint64_t sub_254ED4B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254ED374C(a1);
}

uint64_t sub_254ED4BB8(uint64_t a1)
{
  v2 = type metadata accessor for OnScreenUITextProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254ED4C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB2D80();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_254ED4C6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_254EB2D80();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for AppInFocus(uint64_t a1)
{
  result = qword_281426BE8;
  if (!qword_281426BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED4D40(uint64_t a1, uint64_t a2, void *a3)
{
  sub_254EB5A9C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_254EDF0F0();
  }

  else
  {
    sub_254ED6B90();
    sub_254F293C0();

    return sub_254EDF0EC();
  }
}

uint64_t sub_254ED4DE8()
{
  v1[19] = v0;
  v2 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v2);
  v1[20] = sub_254EB3FC4();
  v3 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v3);
  v1[21] = sub_254EB3FC4();
  v4 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v4);
  v1[22] = sub_254EB3FC4();
  v5 = sub_254F282A0();
  v1[23] = v5;
  sub_254EB2CAC(v5);
  v1[24] = v6;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = sub_254EC8BC0(&qword_27F75EEC8, &qword_254F2B628);
  sub_254EB2D90(v7);
  v1[27] = sub_254EB3FC4();
  v8 = sub_254EC8BC0(&qword_27F75EED0, &qword_254F2B630);
  sub_254EB2D90(v8);
  v1[28] = sub_254EB3FC4();
  v9 = sub_254EC8BC0(&qword_27F75EED8, &qword_254F2B638);
  sub_254EB2D90(v9);
  v1[29] = sub_254EB3FC4();
  v10 = sub_254EC8BC0(&qword_27F75EEE0, &qword_254F2B640);
  sub_254EB2D90(v10);
  v1[30] = sub_254EB3FC4();
  v11 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  sub_254EB2D90(v11);
  v1[31] = sub_254EB3FC4();
  v12 = sub_254F29300();
  v1[32] = v12;
  sub_254EB2CAC(v12);
  v1[33] = v13;
  v1[34] = sub_254EB3FC4();
  v14 = type metadata accessor for AppInFocus(0);
  sub_254EB2D90(v14);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v15 = sub_254F291E0();
  v1[38] = v15;
  sub_254EB2CAC(v15);
  v1[39] = v16;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ED5104, 0, 0);
}

uint64_t sub_254ED5104()
{
  v67 = v0;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  v3 = sub_254ED607C(v2, sub_254ED6034, 0);

  if (!v3 || (v4 = sub_254ED6B08(v3), v0[43] = v4, (v0[44] = v5) == 0))
  {
    v9 = v0[36];
    v10 = v0[19];
    sub_254F284C0();
    sub_254EB2D9C();
    sub_254EB6E58(v10, v9);
    v11 = sub_254F291D0();
    v12 = sub_254F296E0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[41];
    v16 = v0[38];
    v15 = v0[39];
    v17 = v0[36];
    if (v13)
    {
      v65 = v0[41];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v66 = v19;
      *v18 = 136315138;
      v20 = sub_254F28070();
      v22 = v21;
      sub_254ED6774(v17);
      v23 = sub_254EC2D74(v20, v22, &v66);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_254EAE000, v11, v12, "[%s] unable to get most recent app in focus", v18, 0xCu);
      sub_254EB2BBC(v19);
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v15 + 8))(v65, v16);
    }

    else
    {

      sub_254ED6774(v17);
      (*(v15 + 8))(v14, v16);
    }

    sub_254EB4930();
    sub_254EB3A64();

    __asm { BRAA            X2, X16 }
  }

  v6 = v4;
  v7 = v5;
  v8 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v64 = v6;
  v26 = sub_254ED68F0(v6, v7, 0);
  v27 = [v26 localizedName];
  v28 = sub_254F29450();
  v30 = v29;

  if (v30)
  {
    sub_254EC8BC0(&qword_27F75EF10, &qword_254F2B670);
    sub_254EB6A6C();
    sub_254EB2F04(v31, v32, v33, v34);
    sub_254EC8BC0(&qword_27F75EF18, &qword_254F2B678);
    sub_254EB6A6C();
    sub_254EB2F04(v35, v36, v37, v38);
    sub_254EC8BC0(&unk_27F75EF20, qword_254F2B680);
    sub_254EB6A6C();
    sub_254EB2F04(v39, v40, v41, v42);
    sub_254F29340();
    sub_254EB6A6C();
    sub_254EB2F04(v43, v44, v45, v46);

    sub_254F29360();
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v0[45] = v30;
  v0[46] = v28;
  v48 = v0[33];
  v49 = v0[34];
  v51 = v0[31];
  v50 = v0[32];
  v52 = sub_254F29380();
  sub_254EB2F04(v51, v47, 1, v52);
  v53 = sub_254F292F0();
  v54 = swift_allocBox();
  v56 = v55;

  sub_254F292A0();
  (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D72970], v53);
  *v49 = v54;
  (*(v48 + 104))(v49, *MEMORY[0x277D72A58], v50);
  v57 = [objc_opt_self() sharedCategories];
  v0[47] = v57;
  sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_254F2AE00;
  *(v58 + 32) = v64;
  *(v58 + 40) = v7;

  v59 = sub_254F29550();
  v0[48] = v59;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_254ED5904;
  v60 = swift_continuation_init();
  v0[17] = sub_254EC8BC0(&qword_27F75EEF8, &qword_254F2B658);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_254ED4D40;
  v0[13] = &unk_286725870;
  v0[14] = v60;
  [v57 categoriesForBundleIDs:v59 completionHandler:?];
  sub_254EB3A64();

  return MEMORY[0x282200938](v61);
}

uint64_t sub_254ED5904()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_254ED5C4C;
  }

  else
  {
    v2 = sub_254ED5A14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_254ED5A14()
{
  v5 = *(v1 + 384);

  v6 = sub_254F0CB54();

  if (v6)
  {
    v0 = [v6 identifier];

    sub_254F29450();
  }

  sub_254EB6A24();
  sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
  sub_254EB5144();
  v7 = sub_254F28120();
  sub_254EB2CAC(v7);
  v8 = sub_254EB7E04();
  v9 = sub_254EB3C7C(v8, xmmword_254F2AE00);
  v10(v9);
  sub_254F28450();
  v11 = sub_254F28440();
  v12 = sub_254EB7F00(v11);
  v13(v12);
  sub_254EB3A80();
  sub_254EB6A6C();
  sub_254EB2F04(v14, v15, v16, v17);
  sub_254EC003C();
  (*(v3 + 8))();
  (*(v2 + 8))(v4, v0);
  sub_254EB7988();

  sub_254EB4930();
  sub_254EB3A64();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_254ED5C4C()
{
  v44 = v0;
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  v6 = v0[35];
  v7 = v0[19];
  swift_willThrow();

  sub_254F284C0();
  sub_254EB2D9C();
  sub_254EB6E58(v7, v6);
  v8 = v3;
  v9 = sub_254F291D0();
  v10 = sub_254F296E0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[49];
  v14 = v0[39];
  v13 = v0[40];
  v15 = v0[38];
  v16 = v0[35];
  if (v11)
  {
    v40 = v0[49];
    v17 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v43 = v1;
    *v17 = 136315394;
    v41 = v15;
    v42 = v13;
    v18 = sub_254F28070();
    v15 = v19;
    sub_254ED6774(v16);
    v20 = sub_254EC2D74(v18, v15, &v43);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2112;
    v21 = v40;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v2 = v22;
    _os_log_impl(&dword_254EAE000, v9, v10, "[%s] unable to get app category due to error: %@", v17, 0x16u);
    sub_254ECB348(v2);
    sub_254EB3C04();
    sub_254EB2BBC(v1);
    sub_254EB3C04();
    sub_254EB3C04();

    v24 = *(v14 + 8);
    v23 = v14 + 8;
    v24(v42, v41);
  }

  else
  {

    sub_254ED6774(v16);
    v25 = *(v14 + 8);
    v23 = v14 + 8;
    v25(v13, v15);
  }

  v26 = sub_254F0CB54();

  if (v26)
  {
    v15 = [v26 identifier];

    sub_254F29450();
  }

  sub_254EB6A24();
  sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
  sub_254EB5144();
  v27 = sub_254F28120();
  sub_254EB2CAC(v27);
  v28 = sub_254EB7E04();
  v29 = sub_254EB3C7C(v28, xmmword_254F2AE00);
  v30(v29);
  sub_254F28450();
  v31 = sub_254F28440();
  v32 = sub_254EB7F00(v31);
  v33(v32);
  sub_254EB3A80();
  sub_254EB6A6C();
  sub_254EB2F04(v34, v35, v36, v37);
  sub_254EC003C();
  (*(v1 + 8))();
  (*(v23 + 8))(v2, v15);
  sub_254EB7988();

  sub_254EB4930();

  return v38(v42);
}

id sub_254ED6034(void *a1)
{
  result = [a1 starting];
  if (result)
  {
    return ([a1 type] == 1);
  }

  return result;
}

void *sub_254ED607C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254EC8BC0(&unk_27F75EF30, &qword_254F2BD90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = sub_254F27940();
  sub_254EB2F04(v11, 1, 1, v13);
  sub_254EB2F04(v9, 1, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v15 = sub_254ED69CC(v11, v9, 1, 1, 0);
  v16 = [a1 publisherWithOptions_];

  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_254ED6C70;
  v27 = &unk_2867258C0;
  v17 = _Block_copy(&aBlock);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v12;
  v28 = sub_254ED6C60;
  v29 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_254ED6C70;
  v27 = &unk_286725910;
  v19 = _Block_copy(&aBlock);
  sub_254EC6374(a2, a3);

  v20 = [v16 sinkWithCompletion:v17 receiveInput:v19];

  _Block_release(v19);
  _Block_release(v17);

  swift_beginAccess();
  v21 = *(v12 + 16);
  v22 = v21;

  return v21;
}

void *sub_254ED633C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254EC8BC0(&unk_27F75EF30, &qword_254F2BD90);
  v7 = sub_254EB2D90(v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = sub_254F27940();
  sub_254EB6A6C();
  sub_254EB2F04(v15, v16, v17, v14);
  sub_254EB6A6C();
  sub_254EB2F04(v18, v19, v20, v14);
  v21 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v22 = sub_254ED69CC(v12, v10, 1, 1, 0);
  v23 = [a1 publisherWithOptions_];

  v35 = nullsub_1;
  v36 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_254ED6C70;
  v34 = &unk_286725960;
  v24 = _Block_copy(&aBlock);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v13;
  v35 = sub_254ED6C34;
  v36 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_254ED6C70;
  v34 = &unk_2867259B0;
  v26 = _Block_copy(&aBlock);
  sub_254EC6374(a2, a3);

  v27 = [v23 sinkWithCompletion:v24 receiveInput:v26];

  _Block_release(v26);
  _Block_release(v24);

  swift_beginAccess();
  v28 = *(v13 + 16);
  v29 = v28;

  return v28;
}

uint64_t sub_254ED65F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254ED667C;

  return sub_254ED4DE8();
}

uint64_t sub_254ED667C(uint64_t a1)
{

  sub_254EB4930();

  return v2(a1);
}

uint64_t sub_254ED6774(uint64_t a1)
{
  v2 = type metadata accessor for AppInFocus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_254ED67D0(void *a1, uint64_t (*a2)(id), uint64_t a3, uint64_t a4)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v8 = v6;
    if (a2 && (a2(v6) & 1) == 0)
    {

      MEMORY[0x2821F96F8]();
    }

    else
    {
      swift_beginAccess();
      v7 = *(a4 + 16);
      *(a4 + 16) = v8;
    }
  }
}

void sub_254ED6888(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_254ED68F0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_254F29420();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_254F27870();

    swift_willThrow();
  }

  return v6;
}

id sub_254ED69CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_254F27940();
  v13 = 0;
  if (sub_254EB2F2C(a1, 1, v12) != 1)
  {
    v13 = sub_254F27920();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_254EB2F2C(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_254F27920();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_254ED6B08(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_254F29450();

  return v3;
}

unint64_t sub_254ED6B90()
{
  result = qword_281426108;
  if (!qword_281426108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426108);
  }

  return result;
}

uint64_t sub_254ED6BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254ED6BEC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ContextDefinition.init(type:description:sourceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_254F28080();
  sub_254EB2D80();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for ContextDefinition(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = a5 + *(v11 + 24);

  return sub_254ED6D18(a4, v13);
}

uint64_t sub_254ED6D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EFA0, &qword_254F2B6B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED6D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = v6;
  *(v7 + 168) = a3;
  *(v7 + 176) = a5;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;
  v10 = sub_254F291E0();
  *(v7 + 200) = v10;
  sub_254EB2CAC(v10);
  *(v7 + 208) = v11;
  *(v7 + 216) = sub_254EB3FC4();
  v12 = *(a5 - 8);
  *(v7 + 224) = v12;
  *(v7 + 232) = *(v12 + 64);
  *(v7 + 240) = sub_254EB3C44();
  *(v7 + 248) = swift_task_alloc();
  sub_254EC8BC0(&qword_27F75EFA0, &qword_254F2B6B0);
  *(v7 + 256) = sub_254EB3FC4();
  v13 = sub_254F29210();
  *(v7 + 264) = v13;
  sub_254EB2CAC(v13);
  *(v7 + 272) = v14;
  *(v7 + 280) = sub_254EB3FC4();
  v15 = sub_254F29240();
  *(v7 + 288) = v15;
  sub_254EB2CAC(v15);
  *(v7 + 296) = v16;
  *(v7 + 304) = sub_254EB3FC4();
  v17 = sub_254F28080();
  *(v7 + 312) = v17;
  sub_254EB2CAC(v17);
  *(v7 + 320) = v18;
  *(v7 + 328) = sub_254EB3FC4();
  *(v7 + 336) = type metadata accessor for ContextDefinition(0);
  *(v7 + 344) = sub_254EB3C44();
  *(v7 + 352) = swift_task_alloc();
  v19 = sub_254F27980();
  *(v7 + 360) = v19;
  sub_254EB2CAC(v19);
  *(v7 + 368) = v20;
  *(v7 + 376) = sub_254EB3FC4();
  v21 = sub_254F29A20();
  *(v7 + 384) = v21;
  sub_254EB2CAC(v21);
  *(v7 + 392) = v22;
  *(v7 + 400) = sub_254EB3C44();
  *(v7 + 408) = swift_task_alloc();
  v23 = sub_254F29A40();
  *(v7 + 416) = v23;
  sub_254EB2CAC(v23);
  *(v7 + 424) = v24;
  *(v7 + 432) = sub_254EB3FC4();
  v25 = sub_254F29140();
  *(v7 + 440) = v25;
  sub_254EB2CAC(v25);
  *(v7 + 448) = v26;
  *(v7 + 456) = sub_254EB3C44();
  *(v7 + 464) = swift_task_alloc();
  v27 = sub_254F29170();
  *(v7 + 472) = v27;
  sub_254EB2CAC(v27);
  *(v7 + 480) = v28;
  *(v7 + 488) = sub_254EB3C44();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 624) = *a4;
  *(v7 + 504) = *(a4 + 8);
  v29 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_254ED71A0(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v41 = a3;
  v42 = a1;
  v5 = sub_254F29180();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254F29140();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F29170();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v16 = sub_254F29160();
  sub_254F29190();
  v39 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  v35 = v12;
  v36 = v8;
  if (v41)
  {
    if (!(v42 >> 32))
    {
      if ((v42 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v42 >> 16 <= 0x10)
      {
        v18 = v9;
        v19 = v13;
        v42 = &v45;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v42)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v9;
  v19 = v13;
LABEL_10:

  sub_254F291C0();

  v21 = v37;
  v20 = v38;
  v22 = v16;
  if ((*(v37 + 88))(v7, v38) == *MEMORY[0x277D85B00])
  {
    v23 = 0;
    v24 = "[Error] Interval already ended";
  }

  else
  {
    (*(v21 + 8))(v7, v20);
    v24 = "ContextProvider=%{signpost.telemetry:string1,public}s %s";
    v23 = 2;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v44 = v26;
  *v25 = v23;
  *(v25 + 1) = v23;
  *(v25 + 2) = 2082;
  v43 = v40;
  swift_getMetatypeMetadata();
  v27 = sub_254F29480();
  v29 = sub_254EC2D74(v27, v28, &v44);

  *(v25 + 4) = v29;
  *(v25 + 12) = 2080;
  sub_254F280B0();
  v30 = sub_254F29950();
  v32 = sub_254EC2D74(v30, v31, &v44);

  *(v25 + 14) = v32;
  v33 = sub_254F29130();
  _os_signpost_emit_with_name_impl(&dword_254EAE000, v22, v39, v33, v42, v24, v25, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x259C2EB80](v26, -1, -1);
  MEMORY[0x259C2EB80](v25, -1, -1);

  (*(v18 + 8))(v11, v36);
  return (*(v19 + 8))(v15, v35);
}

uint64_t sub_254ED75E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = (*(a6 + 16) + **(a6 + 16));
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_254ED7718;

  return v12(a4, a5, a6);
}

uint64_t sub_254ED7718()
{
  sub_254EB3BD8();
  sub_254EB4918();
  *(v1 + 32) = v0;

  v2 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254ED7808()
{
  sub_254EB3BD8();
  sub_254F29220();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContextDefinition.type.getter@<X0>(uint64_t a1@<X8>)
{
  sub_254F28080();
  sub_254EB2D80();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ContextDefinition.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextDefinition(0) + 20));

  return v1;
}

void sub_254ED797C(uint64_t a1)
{
  sub_254F28080();
  if (v1 <= 0x3F)
  {
    sub_254ED7A18();
    if (v2 <= 0x3F)
    {
      sub_254ED7A68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254ED7A18()
{
  if (!qword_281426170)
  {
    v0 = sub_254F29810();
    if (!v1)
    {
      atomic_store(v0, &qword_281426170);
    }
  }
}

void sub_254ED7A68(uint64_t a1)
{
  if (!qword_281427540)
  {
    sub_254F28050();
    v1 = sub_254F29810();
    if (!v2)
    {
      atomic_store(v1, &qword_281427540);
    }
  }
}

uint64_t sub_254ED7AC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254EC8BC0(a3, a4);
  sub_254EB2D80();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_254ED7B20(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = (*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_254ED7C44;

  return sub_254ED75E4(a1, a2, v2 + v8, v2 + v9, v6, v7);
}

uint64_t sub_254ED7C44()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_254ED7D28()
{
  result = sub_254EB0968();
  qword_281427CC0 = result;
  return result;
}

void *sub_254ED7D48()
{
  result = sub_254ED7D68();
  qword_281427CE0 = result;
  return result;
}

void *sub_254ED7D68()
{
  v36 = sub_254F28080();
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ContextDefinition(0);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281426CE0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v4 = qword_281427CC0;
  v33 = *(qword_281427CC0 + 16);
  if (v33)
  {
    v5 = 0;
    v6 = qword_281427CC0 + 32;
    v35 = (v31 + 16);
    v32 = (v31 + 8);
    v7 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      sub_254EB5C9C(v6, v39);
      v8 = v40;
      v9 = v41;
      sub_254EB5A9C(v39, v40);
      v10 = v34;
      (*(v9 + 8))(v8, v9);
      v11 = *v35;
      (*v35)(v1, v10, v36);
      sub_254EB5C40(v10);
      sub_254EB5C9C(v39, v38);
      swift_isUniquelyReferenced_nonNull_native();
      v37 = v7;
      sub_254F059E0();
      if (__OFADD__(v7[2], (v13 & 1) == 0))
      {
        goto LABEL_21;
      }

      v14 = v12;
      v15 = v13;
      sub_254EC8BC0(&qword_27F75EFB0, &unk_254F2B740);
      v16 = sub_254F29A50();
      v7 = v37;
      if (v16)
      {
        sub_254F059E0();
        if ((v15 & 1) != (v18 & 1))
        {
          result = sub_254F29B50();
          __break(1u);
          return result;
        }

        v14 = v17;
      }

      if ((v15 & 1) == 0)
      {
        v7[(v14 >> 6) + 8] |= 1 << v14;
        v11((v7[6] + *(v31 + 72) * v14), v1, v36);
        *(v7[7] + 8 * v14) = MEMORY[0x277D84F90];
        v19 = v7[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_22;
        }

        v7[2] = v21;
      }

      v22 = v7[7];
      v23 = *(v22 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v14) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254EB4818();
        v23 = v27;
        *(v22 + 8 * v14) = v27;
      }

      v25 = *(v23 + 16);
      if (v25 >= *(v23 + 24) >> 1)
      {
        sub_254EB4818();
        *(v22 + 8 * v14) = v28;
      }

      ++v5;
      (*v32)(v1, v36);
      v26 = *(v22 + 8 * v14);
      *(v26 + 16) = v25 + 1;
      sub_254EB26F4(v38, v26 + 40 * v25 + 32);
      sub_254EB2BBC(v39);
      v6 += 40;
      if (v33 == v5)
      {
        return v7;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t type metadata accessor for LiveCallProvider(uint64_t a1)
{
  result = qword_281426B58;
  if (!qword_281426B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED81BC(uint64_t a1)
{
  result = type metadata accessor for ContextDefinition(319);
  if (v2 <= 0x3F)
  {
    result = sub_254ED8278(319, &unk_281426B70, &protocol descriptor for LiveCallProvider.CallFetcherProtocol);
    if (v3 <= 0x3F)
    {
      result = sub_254ED8278(319, &qword_281426B68, &protocol descriptor for LiveCallProvider.LinkWrapperProtocol);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_254ED8278(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_254ED82CC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v18 = a3 & 0xC000000000000001;
  v19 = sub_254EC5594(a3);
  v6 = MEMORY[0x277D84F90];
  while (v19 != v5)
  {
    if (v18)
    {
      v7 = MEMORY[0x259C2E0D0](v5, a3);
    }

    else
    {
      if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(a3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v21 = v7;
    a1(&v20, &v21);
    if (v3)
    {

      return;
    }

    v9 = v20;
    v10 = *(v20 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      goto LABEL_24;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      sub_254EF04D8();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
      sub_254F29290();
      if (v13 < v10)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v14 = *(v6 + 16);
        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_27;
        }

        *(v6 + 16) = v16;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_25;
      }
    }

    ++v5;
  }
}

uint64_t sub_254ED84CC()
{
  sub_254EB3BD8();
  v1[2] = v0;
  v2 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v2);
  v1[3] = sub_254EB3FC4();
  v3 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v3);
  v1[4] = sub_254EB3FC4();
  v4 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v4);
  v1[5] = sub_254EB3FC4();
  v5 = sub_254F29290();
  v1[6] = v5;
  sub_254EB2CAC(v5);
  v1[7] = v6;
  v1[8] = sub_254EB3FC4();
  v7 = sub_254F28120();
  v1[9] = v7;
  sub_254EB2CAC(v7);
  v1[10] = v8;
  v1[11] = sub_254EB3FC4();
  v9 = sub_254F297B0();
  v1[12] = v9;
  sub_254EB2CAC(v9);
  v1[13] = v10;
  v1[14] = sub_254EB3FC4();
  v11 = sub_254F297C0();
  v1[15] = v11;
  sub_254EB2CAC(v11);
  v1[16] = v12;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v13 = sub_254F27980();
  v1[19] = v13;
  sub_254EB2CAC(v13);
  v1[20] = v14;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v15 = sub_254F291E0();
  v1[23] = v15;
  sub_254EB2CAC(v15);
  v1[24] = v16;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

void sub_254ED87D4()
{
  v75 = v0;
  v2 = v0[2];
  v3 = type metadata accessor for LiveCallProvider(0);
  sub_254EB5A9C((v2 + *(v3 + 20)), *(v2 + *(v3 + 20) + 24));
  sub_254EC541C();
  v5 = v4;
  if (!sub_254EC5594(v4))
  {

    sub_254F284C0();
    v19 = sub_254F291D0();
    v20 = sub_254F296F0();
    v21 = sub_254EB493C(v20);
    v22 = v0[29];
    v23 = v0[23];
    v24 = v0[24];
    if (v21)
    {
      *swift_slowAlloc() = 0;
      sub_254EB6A78();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      sub_254EB3C04();
    }

    (*(v24 + 8))(v22, v23);
LABEL_28:
    sub_254EB6BB4();

    sub_254EB4930();
    sub_254EB4AE0();

    __asm { BRAA            X2, X16 }
  }

  v6 = sub_254EC5594(v5);
  v7 = MEMORY[0x277D84F90];
  v70 = v3;
  if (v6)
  {
    v1 = v6;
    v74 = MEMORY[0x277D84F90];
    sub_254ECA6F4(0, v6 & ~(v6 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v0[20];
    v10 = v74;
    v72 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v72)
      {
        v12 = MEMORY[0x259C2E0D0](v8, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v0;
      v15 = [v12 UUID];
      sub_254F27960();

      v74 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_254ECA6F4(v16 > 1, v17 + 1, 1);
        v10 = v74;
      }

      ++v8;
      *(v10 + 16) = v17 + 1;
      sub_254EB3A30();
      (*(v9 + 32))(v10 + v18 + *(v9 + 72) * v17);
      v0 = v14;
      v5 = v11;
    }

    while (v1 != v8);

    v7 = MEMORY[0x277D84F90];
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_254EB3E70();
  v30 = *(v10 + 16);
  if (v30)
  {
    v31 = v0[20];
    v74 = v7;
    sub_254F299D0();
    v31 += 16;
    sub_254EB3A30();
    v33 = v10 + v32;
    v71 = *(v31 + 56);
    v73 = v34;
    v1 = v31;
    v35 = (v31 - 8);
    do
    {
      v36 = v0[21];
      v37 = v0[19];
      v73(v36, v33, v37);
      v38 = sub_254F27950();
      v40 = v39;
      v41 = objc_allocWithZone(MEMORY[0x277D23800]);
      sub_254EDA6FC(0x6C6C61436576694CLL, 0xE800000000000000, v38, v40);
      (*v35)(v36, v37);
      sub_254F299B0();
      sub_254F299E0();
      sub_254F299F0();
      sub_254F299C0();
      v33 += v71;
      --v30;
    }

    while (v30);

    v42 = v74;
    sub_254EB3E70();
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v43 = (v0[2] + *(v70 + 24));
  sub_254EB5A9C(v43, v43[3]);
  v44 = sub_254ED9EF8(0xD000000000000028, 0x8000000254F2D950, v1, 0xE800000000000000);
  v0[30] = v44;
  v45 = v44;
  if (!v44)
  {

    sub_254F284C0();
    v58 = sub_254F291D0();
    v59 = sub_254F296E0();
    if (sub_254EB493C(v59))
    {
      swift_slowAlloc();
      v60 = sub_254EB63AC();
      v74 = v60;
      MEMORY[0] = 136315138;
      MEMORY[4] = sub_254EB5150(v60, 0x8000000254F2D980, &v74);
      sub_254EB6A78();
      _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
      sub_254EB2BBC(v60);
      sub_254EB79D0();
      sub_254EB3C04();
    }

    v66 = sub_254EB67C8();
    v67(v66);
    goto LABEL_28;
  }

  v46 = v42;
  v47 = v0[17];
  v48 = v0[18];
  v50 = v0[15];
  v49 = v0[16];
  v52 = v0[13];
  v51 = v0[14];
  v53 = v0[12];
  *v48 = v46;
  (*(v49 + 104))(v48, *MEMORY[0x277D23A18], v50);
  sub_254EB48D8(0, &qword_27F75EFB8, 0x277D23B90);
  (*(v49 + 16))(v47, v48, v50);
  *v51 = v45;
  (*(v52 + 104))(v51, *MEMORY[0x277D23A40], v53);
  v54 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v55 = v45;
  [v54 init];
  v0[31] = sub_254F297D0();
  sub_254EB5A9C(v43, v43[3]);
  v56 = swift_task_alloc();
  v0[32] = v56;
  *v56 = v0;
  v56[1] = sub_254ED8FE8;
  sub_254EB4AE0();

  sub_254EDA160();
}

uint64_t sub_254ED8FE8()
{
  sub_254EB3BD8();
  sub_254EB2DB4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254ED90F0(uint64_t a1, double a2, double a3)
{
  v59 = v3;
  v5 = *(v3 + 264);
  if (!v5)
  {
    sub_254F284C0();
    v31 = sub_254F291D0();
    v32 = sub_254F29700();
    if (sub_254EB493C(v32))
    {
      swift_slowAlloc();
      v33 = sub_254EB63AC();
      v58 = v33;
      *v4 = 136315138;
      *(v4 + 4) = sub_254EB5150(v33, 0x8000000254F2D980, &v58);
      sub_254EB6A78();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      sub_254EB2BBC(v33);
      sub_254EB79D0();
      sub_254EB3C04();
    }

    v39 = sub_254EB67C8();
    v40(v39);
    v41 = *(v3 + 240);
    v42 = *(v3 + 144);
    v43 = *(v3 + 120);
    v44 = *(v3 + 128);

    (*(v44 + 8))(v42, v43);
    goto LABEL_12;
  }

  v6 = [*(v3 + 264) value];
  v7 = sub_254ED98F4(v6, 0xD000000000000028, 0x8000000254F2D950);

  v8 = *(v7 + 16);
  if (!v8)
  {
    v46 = *(v3 + 240);
    v45 = *(v3 + 248);
    v47 = *(v3 + 144);
    v48 = *(v3 + 120);
    v49 = *(v3 + 128);

    (*(v49 + 8))(v47, v48);
LABEL_12:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v52 = v5;
  v9 = *(v3 + 56);
  v58 = MEMORY[0x277D84F90];
  sub_254ECA644(0, v8, 0);
  v10 = v58;
  v9 += 16;
  sub_254EB3A30();
  v12 = v7 + v11;
  v55 = *(v9 + 56);
  v56 = v13;
  v54 = *MEMORY[0x277D729F8];
  v53 = (v9 - 8);
  do
  {
    v57 = v8;
    v14 = *(v3 + 64);
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    v18 = *(v3 + 24);
    v17 = *(v3 + 32);
    v19 = v10;
    v56(v14, v12, v16);
    v20 = sub_254F28440();
    sub_254EB2F04(v15, 1, 1, v20);
    v21 = swift_allocBox();
    v56(v22, v14, v16);
    *v17 = v21;
    v23 = sub_254F29300();
    (*(*(v23 - 8) + 104))(v17, v54, v23);
    sub_254EB2F04(v17, 0, 1, v23);
    v24 = sub_254F281F0();
    sub_254EB2F04(v18, 1, 1, v24);
    sub_254F280D0();
    (*v53)(v14, v16);
    v58 = v10;
    v26 = *(v10 + 16);
    v25 = *(v10 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_254ECA644(v25 > 1, v26 + 1, 1);
      v19 = v58;
    }

    *(v19 + 16) = v26 + 1;
    sub_254EB3A30();
    v10 = v19;
    (*(v28 + 32))(v19 + v27 + *(v28 + 72) * v26);
    v12 += v55;
    v8 = v57 - 1;
  }

  while (v57 != 1);
  v29 = *(v3 + 240);
  v30 = *(v3 + 248);
  (*(*(v3 + 128) + 8))(*(v3 + 144), *(v3 + 120));

LABEL_13:
  sub_254EB6BB4();

  sub_254EB4930();

  return v50(v10);
}

void sub_254ED95C4(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + 272);
  sub_254F284C0();
  v5 = v4;
  v6 = sub_254F291D0();
  v7 = sub_254F296E0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v3 + 272);
  v10 = *(v3 + 216);
  v11 = *(v3 + 184);
  v12 = *(v3 + 192);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_254EB5150(v15, 0x8000000254F2D980, &v34);
    *(v13 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_254EAE000, v6, v7, "%s unable to performQuery from LinkServices: %@", v13, 0x16u);
    sub_254ECB348(v14);
    sub_254EB3C04();
    sub_254EB2BBC(v15);
    sub_254EB3C04();
    sub_254EB79D0();
  }

  else
  {
  }

  (*(v12 + 8))(v10, v11);
  sub_254F284C0();
  v18 = sub_254F291D0();
  v19 = sub_254F29700();
  if (sub_254EB493C(v19))
  {
    swift_slowAlloc();
    v20 = sub_254EB63AC();
    v34 = v20;
    *v7 = 136315138;
    *(v7 + 4) = sub_254EB5150(v20, 0x8000000254F2D980, &v34);
    sub_254EB6A78();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    sub_254EB2BBC(v20);
    sub_254EB79D0();
    sub_254EB3C04();
  }

  v26 = sub_254EB67C8();
  v27(v26);
  v28 = *(v3 + 240);
  v29 = *(v3 + 144);
  v30 = *(v3 + 120);
  v31 = *(v3 + 128);

  (*(v31 + 8))(v29, v30);
  sub_254EB6BB4();

  sub_254EB4930();
  sub_254EB4AE0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_254ED98F4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  v8 = sub_254EB2D90(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = sub_254F29330();
  sub_254EB2CBC();
  v55 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_254F29290();
  sub_254EB2CBC();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v56 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v59 = MEMORY[0x277D84F90];
  v24 = [a1 value];
  sub_254F29860();
  swift_unknownObjectRelease();
  v25 = sub_254EC8BC0(&qword_27F75EFC0, &qword_254F2B810);
  v28 = sub_254EB5BA8(v25, v26, v27, v25);
  if (v28)
  {
    v29 = v57;
    MEMORY[0x28223BE20](v28);
    *(&v54 - 4) = v3;
    *(&v54 - 3) = a2;
    *(&v54 - 2) = a3;
    sub_254ED82CC(sub_254EDA784, (&v54 - 6), v29);
    v31 = v30;

    sub_254EED934(v31);
  }

  else
  {
    v32 = sub_254EB48D8(0, &qword_27F75EFC8, 0x277D237F0);
    if (sub_254EB5BA8(v32, v33, v34, v32))
    {
      v54 = v16;
      v35 = v57;
      v36 = swift_allocObject();
      v36[2] = a2;
      v36[3] = a3;

      v37 = [v35 identifier];
      v38 = [v37 typeIdentifier];

      v39 = sub_254F29450();
      v41 = v40;

      v42 = v35;
      v44 = v54;
      v43 = v55;
      v36[4] = v39;
      v36[5] = v41;
      *v15 = v36;
      (*(v43 + 104))(v15, *MEMORY[0x277D72D28], v11);
      v45 = [v42 identifier];
      v46 = [v45 instanceIdentifier];

      sub_254F29450();
      v47 = sub_254F29380();
      sub_254EB2F04(v10, 1, 1, v47);
      sub_254F29270();
      v48 = v56;
      (*(v18 + 16))(v56, v23, v44);
      sub_254EF04D8();
      v50 = v49;
      v51 = *(v49 + 16);
      if (v51 >= *(v49 + 24) >> 1)
      {
        sub_254EF04D8();
        v50 = v53;
      }

      (*(v18 + 8))(v23, v44);
      *(v50 + 16) = v51 + 1;
      (*(v18 + 32))(v50 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v51, v48, v44);
      v59 = v50;
    }
  }

  sub_254EB2BBC(v58);
  return v59;
}

uint64_t sub_254ED9D7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254ED9E08;

  return sub_254ED84CC();
}

uint64_t sub_254ED9E08()
{
  sub_254EB3BD8();
  v2 = v1;
  v3 = *v0;
  sub_254EB2DB4();
  *v4 = v3;

  sub_254EB4930();

  return v5(v2);
}

id sub_254ED9EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v7 = sub_254F29420();
  v24[0] = 0;
  v8 = [v6 entitiesForBundleIdentifier:v7 error:v24];

  v9 = v24[0];
  if (v8)
  {
    v23 = v6;
    sub_254EB48D8(0, &unk_2814260C8, 0x277D23818);
    v10 = sub_254F29560();
    v11 = v9;

    v12 = sub_254EC5594(v10);
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        return 0;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x259C2E0D0](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v14 = *(v10 + 8 * i + 32);
      }

      v8 = v14;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = [v14 identifier];
      v16 = sub_254F29450();
      v18 = v17;

      if (v16 == a3 && v18 == a4)
      {

        return v8;
      }

      v20 = sub_254F29B10();

      if (v20)
      {
        break;
      }
    }
  }

  else
  {
    v21 = v24[0];
    sub_254F27870();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_254EDA160()
{
  sub_254EB3BD8();
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254EDA1E8()
{
  v1 = [objc_opt_self() policyWithEntityMetadata_];
  v0[10] = 0;
  v2 = [v1 connectionWithError_];
  v0[21] = v2;

  v3 = v0[10];
  if (v2)
  {
    v4 = v0[19];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_254EDA414;
    v5 = swift_continuation_init();
    v0[17] = sub_254EC8BC0(&qword_27F75EFD0, &qword_254F2B818);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_254EDA66C;
    v0[13] = &unk_286725AA8;
    v0[14] = v5;
    v6 = v3;
    [v2 performConfigurableQuery:v4 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v7 = v3;
    sub_254F27870();

    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_254EDA414()
{
  sub_254EB3BD8();
  sub_254EB2DB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254EDA544()
{
  sub_254EB3BD8();

  sub_254EB4930();

  return v1();
}

uint64_t sub_254EDA5D0()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void *sub_254EDA66C(uint64_t a1, void *a2, void *a3)
{
  result = sub_254EB5A9C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_254EDF0F0();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_254EDF0EC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_254EDA6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_254F29420();

  v6 = sub_254F29420();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

uint64_t sub_254EDA784@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_254ED98F4(*a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_254EDA7E4(uint64_t a1)
{
  sub_254F291E0();
  sub_254EB2CBC();
  v50 = v4;
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  sub_254EB3AB8();
  v7 = v6 - v5;
  v8 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v47 - v9;
  v10 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  sub_254F28120();
  sub_254EB2CBC();
  v48 = v14;
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  sub_254EB3AB8();
  v17 = v16 - v15;
  v18 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v47 - v22);
  v24 = sub_254F29300();
  sub_254EB2CBC();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_254EB3AB8();
  v30 = v29 - v28;
  sub_254ED1F44(a1, v53);
  if (!v53[3])
  {
    sub_254EB306C(v53, &qword_27F75EE68, &qword_254F2B4C0);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_254F284C0();
    v33 = v1;
    v34 = sub_254F291D0();
    v35 = sub_254F296F0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53[0] = v37;
      *v36 = 136315138;
      v38 = sub_254F28070();
      v40 = sub_254EC2D74(v38, v39, v53);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_254EAE000, v34, v35, "[%s] unable to get source data", v36, 0xCu);
      sub_254EB2BBC(v37);
      MEMORY[0x259C2EB80](v37, -1, -1);
      MEMORY[0x259C2EB80](v36, -1, -1);
    }

    (*(v50 + 8))(v7, v51);
    return MEMORY[0x277D84F90];
  }

  v31 = v52;
  v32 = v52;
  sub_254EDAD38(v31, v23);

  if (sub_254EB2F2C(v23, 1, v24) != 1)
  {
    v51 = v32;
    (*(v26 + 32))(v30, v23, v24);
    v43 = sub_254F28440();
    sub_254EB2F04(v12, 1, 1, v43);
    (*(v26 + 16))(v21, v30, v24);
    sub_254EB2F04(v21, 0, 1, v24);
    v44 = sub_254F281F0();
    sub_254EB2F04(v47, 1, 1, v44);
    sub_254F280D0();
    sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
    v45 = v48;
    v46 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_254F2AE00;
    (*(v45 + 32))(v41 + v46, v17, v49);

    (*(v26 + 8))(v30, v24);
    return v41;
  }

  sub_254EB306C(v23, &qword_27F75EE48, &unk_254F2B550);

  return MEMORY[0x277D84F90];
}

uint64_t sub_254EDAD38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 && [a1 placemark])
  {
    v3 = sub_254F292F0();
    v4 = swift_allocBox();
    v6 = v5;
    sub_254F292E0();
    (*(*(v3 - 8) + 104))(v6, *MEMORY[0x277D729D0], v3);
    *a2 = v4;
    v7 = *MEMORY[0x277D72A58];
    v8 = sub_254F29300();
    (*(*(v8 - 8) + 104))(a2, v7, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_254F29300();
    v9 = a2;
    v10 = 1;
  }

  return sub_254EB2F04(v9, v10, 1, v11);
}

id sub_254EDAE74()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime16LocationProvider_contextDefinition];
  v3 = *MEMORY[0x277D1EA90];
  sub_254F28080();
  sub_254EB2D80();
  (*(v4 + 104))(v2, v3);
  v5 = type metadata accessor for ContextDefinition(0);
  v6 = *(v5 + 24);
  v7 = *MEMORY[0x277D1EA10];
  v8 = sub_254F28050();
  sub_254EB2D80();
  (*(v9 + 104))(&v2[v6], v7, v8);
  sub_254EB2F04(&v2[v6], 0, 1, v8);
  v10 = &v2[*(v5 + 20)];
  *v10 = 0xD00000000000002FLL;
  *(v10 + 1) = 0x8000000254F2DA30;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_254EDAFCC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LocationProvider(uint64_t a1)
{
  result = qword_281426AC0;
  if (!qword_281426AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDB068(uint64_t a1)
{
  result = type metadata accessor for ContextDefinition(319);
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

uint64_t sub_254EDB0F8(uint64_t a1)
{
  v2 = sub_254EDA7E4(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t type metadata accessor for PointOfInterestProvider(uint64_t a1)
{
  result = qword_281426788;
  if (!qword_281426788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDB1CC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for PointOfInterestProvider(0);
  sub_254EB2D90(v3);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_254F291E0();
  v2[11] = v4;
  sub_254EB2CAC(v4);
  v2[12] = v5;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v6);
  v2[15] = swift_task_alloc();
  v7 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v7);
  v2[16] = swift_task_alloc();
  v8 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EDB360, 0, 0);
}

uint64_t sub_254EDB360()
{
  v65 = v0;
  sub_254ED1F44(*(v0 + 56), v0 + 16);
  if (!*(v0 + 40))
  {
    sub_254EDBA9C(v0 + 16);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    sub_254F284C0();
    sub_254EB2DC0();
    sub_254EDBBD0(v20, v19);
    v21 = sub_254F291D0();
    v22 = sub_254F296F0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    if (v23)
    {
      v62 = *(v0 + 104);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136315138;
      v30 = sub_254F28070();
      v32 = v31;
      sub_254EDBB04(v27);
      v33 = sub_254EC2D74(v30, v32, &v64);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_254EAE000, v21, v22, "[%s] unable to get source data", v28, 0xCu);
      sub_254EB2BBC(v29);
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v24 + 8))(v62, v26);
    }

    else
    {

      sub_254EDBB04(v27);
      (*(v24 + 8))(v25, v26);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v1 = *(v0 + 48);
  if (v1 && (v2 = [*(v0 + 48) placemark]) != 0 && (v3 = sub_254EDBB60(v2), v4))
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v0 + 128);
    sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
    sub_254EB5144();
    v8 = sub_254F28120();
    sub_254EB2CAC(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_254F2AE00;
    v10 = sub_254F28440();
    v11 = v1;
    v12 = sub_254EB7F40(v10);
    v13 = swift_allocBox();
    *v14 = v5;
    v14[1] = v6;
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D729B8], v12);
    *v7 = v13;
    v15 = *MEMORY[0x277D72A58];
    v16 = sub_254F29300();
    sub_254EB2D80();
    (*(v17 + 104))(v7, v15, v16);
    sub_254EB2F04(v7, 0, 1, v16);
    v18 = sub_254F281F0();
    sub_254EB3CB0(v18);
    sub_254F280D0();
  }

  else
  {
    v34 = *(v0 + 80);
    v35 = *(v0 + 64);
    sub_254F284C0();
    sub_254EB2DC0();
    sub_254EDBBD0(v35, v34);
    v36 = sub_254F291D0();
    v37 = sub_254F296F0();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 112);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);
    v42 = *(v0 + 80);
    if (v38)
    {
      v43 = swift_slowAlloc();
      v63 = v1;
      v64 = swift_slowAlloc();
      v44 = v64;
      *v43 = 136315138;
      v45 = sub_254F28070();
      v61 = v39;
      v47 = v46;
      sub_254EDBB04(v42);
      v48 = sub_254EC2D74(v45, v47, &v64);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_254EAE000, v36, v37, "[%s] could not get POI category", v43, 0xCu);
      sub_254EB2BBC(v44);
      v1 = v63;
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v40 + 8))(v61, v41);
    }

    else
    {

      sub_254EDBB04(v42);
      (*(v40 + 8))(v39, v41);
    }

    v49 = *(v0 + 128);
    sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
    sub_254EB5144();
    v50 = sub_254F28120();
    sub_254EB2CAC(v50);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_254F2AE00;
    v51 = sub_254F28440();
    v52 = sub_254EB7F40(v51);
    v53 = swift_allocBox();
    *v54 = 0x6E776F6E6B6E75;
    v54[1] = 0xE700000000000000;
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D729B8], v52);
    *v49 = v53;
    v55 = *MEMORY[0x277D72A58];
    v56 = sub_254F29300();
    sub_254EB2D80();
    (*(v57 + 104))(v49, v55, v56);
    sub_254EB2F04(v49, 0, 1, v56);
    v58 = sub_254F281F0();
    sub_254EB3CB0(v58);
    sub_254F280D0();
  }

LABEL_16:

  v59 = *(v0 + 8);

  return v59(v9);
}

uint64_t sub_254EDBA08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254EDB1CC(a1);
}

uint64_t sub_254EDBA9C(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75EE68, &qword_254F2B4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EDBB04(uint64_t a1)
{
  v2 = type metadata accessor for PointOfInterestProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EDBB60(void *a1)
{
  v2 = [a1 category];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_254F29450();

  return v3;
}

uint64_t sub_254EDBBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EB5144();
  v5(v4);
  sub_254EB2D80();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_254EDBC2C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for SemanticLocationProvider(0);
  sub_254EB2D90(v3);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_254F291E0();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v5);
  v2[15] = swift_task_alloc();
  v6 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v6);
  v2[16] = swift_task_alloc();
  v7 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v7);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EDBDC8, 0, 0);
}

uint64_t sub_254EDBDC8()
{
  v38 = v0;
  sub_254ED1F44(v0[7], (v0 + 2));
  if (v0[5])
  {
    if (swift_dynamicCast())
    {
      v1 = v0[6];
      if (v1)
      {
        v3 = v0[16];
        v2 = v0[17];
        v4 = v0[15];
        sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
        sub_254EB5144();
        sub_254F28120();
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_254F2AE00;
        v6 = sub_254F28440();
        sub_254EB2F04(v2, 1, 1, v6);
        v7 = sub_254F292F0();
        v8 = swift_allocBox();
        v10 = v9;
        v11 = v1;
        *v10 = _CLPlaceInferenceUserSpecificPlaceType.contextValue.getter([v11 userType]);
        v10[1] = v12;
        (*(*(v7 - 8) + 104))(v10, *MEMORY[0x277D729B8], v7);
        *v3 = v8;
        v13 = *MEMORY[0x277D72A58];
        v14 = sub_254F29300();
        (*(*(v14 - 8) + 104))(v3, v13, v14);
        sub_254EB2F04(v3, 0, 1, v14);
        v15 = sub_254F281F0();
        sub_254EB2F04(v4, 1, 1, v15);
        sub_254F280D0();

        goto LABEL_13;
      }

      sub_254F284C0();
      sub_254EB2DD8();
      v16 = sub_254F291D0();
      v17 = sub_254F296F0();
      v29 = os_log_type_enabled(v16, v17);
      v20 = v0[14];
      v21 = v0[11];
      v19 = v0[12];
      v22 = v0[10];
      if (v29)
      {
        swift_slowAlloc();
        v23 = sub_254EB79EC();
        v37 = v23;
        *v20 = 136315138;
        v30 = sub_254F28070();
        v32 = v31;
        sub_254EDC3E8(v22);
        v33 = sub_254EC2D74(v30, v32, &v37);

        *(v20 + 4) = v33;
        v28 = "[%s] could not get preferred name";
        goto LABEL_8;
      }

LABEL_11:

      sub_254EDC3E8(v22);
      (*(v19 + 8))(v20, v21);
      goto LABEL_12;
    }
  }

  else
  {
    sub_254EDBA9C((v0 + 2));
  }

  sub_254F284C0();
  sub_254EB2DD8();
  v16 = sub_254F291D0();
  LOBYTE(v17) = sub_254F296F0();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[12];
  v20 = v0[13];
  v21 = v0[11];
  v22 = v0[9];
  if (!v18)
  {
    goto LABEL_11;
  }

  swift_slowAlloc();
  v23 = sub_254EB79EC();
  v37 = v23;
  *v20 = 136315138;
  v24 = sub_254F28070();
  v26 = v25;
  sub_254EDC3E8(v22);
  v27 = sub_254EC2D74(v24, v26, &v37);

  *(v20 + 4) = v27;
  v28 = "[%s] unable to get source data";
LABEL_8:
  _os_log_impl(&dword_254EAE000, v16, v17, v28, v20, 0xCu);
  sub_254EB2BBC(v23);
  MEMORY[0x259C2EB80](v23, -1, -1);
  MEMORY[0x259C2EB80](v20, -1, -1);

  (*(v19 + 8))(v36, v21);
LABEL_12:
  v5 = MEMORY[0x277D84F90];
LABEL_13:

  v34 = v0[1];

  return v34(v5);
}

uint64_t _CLPlaceInferenceUserSpecificPlaceType.contextValue.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1701670728;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 1802661719;
      break;
    case 2:
      result = 0x6C6F6F686353;
      break;
    case 3:
      result = 7174471;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t type metadata accessor for SemanticLocationProvider(uint64_t a1)
{
  result = qword_281426648;
  if (!qword_281426648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDC354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254EDBC2C(a1);
}

uint64_t sub_254EDC3E8(uint64_t a1)
{
  v2 = type metadata accessor for SemanticLocationProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SiriRequestContextProvider(uint64_t a1)
{
  result = qword_281427430;
  if (!qword_281427430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDC4B8()
{
  v0 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v0);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - v2;
  v4 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v4);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_254F28360();
  v9 = sub_254EB2D90(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v12);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v17 = [v16 Orchestration];
  swift_unknownObjectRelease();
  v18 = [v17 RequestContext];
  swift_unknownObjectRelease();
  v19 = sub_254ED633C(v18, 0, 0);

  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
  sub_254F28120();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_254F2AE00;
  sub_254EDC7A4(v11);
  sub_254F28460();
  v21 = sub_254F28440();
  sub_254EB7A0C(v15, v22, v23, v21);
  v24 = sub_254F29300();
  sub_254EB2F04(v7, 1, 1, v24);
  v25 = sub_254F281F0();
  sub_254EB2F04(v3, 1, 1, v25);
  sub_254F280D0();

  return v20;
}

void sub_254EDC7A4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_254EC8BC0(&qword_27F75EFD8, &qword_254F2B918);
  sub_254EB2D90(v4);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v5);
  sub_254EB4020();
  v129 = v6;
  v7 = sub_254F28320();
  v8 = *(v7 - 8);
  v137 = v7;
  v138 = v8;
  MEMORY[0x28223BE20](v7);
  v136 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254EC8BC0(&qword_27F75EFE0, &qword_254F2B920);
  sub_254EB2D90(v10);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v11);
  sub_254EB4020();
  v128 = v12;
  v13 = sub_254EC8BC0(&qword_27F75EFE8, &qword_254F2B928);
  sub_254EB2D90(v13);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v14);
  sub_254EB4020();
  v131 = v15;
  v16 = sub_254EC8BC0(&qword_27F75EFF0, &qword_254F2B930);
  sub_254EB2D90(v16);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v17);
  v19 = v93 - v18;
  v20 = sub_254EC8BC0(&qword_27F75EFF8, &qword_254F2B938);
  sub_254EB2D90(v20);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v21);
  sub_254EB4020();
  v130 = v22;
  v23 = sub_254EDD60C(v2, &selRef_sessionID);
  v126 = v24;
  v127 = v23;
  v125 = sub_254EDD60C(v2, &selRef_requestID);
  v124 = v25;
  v123 = sub_254EDD60C(v2, &selRef_inputOrigin);
  v122 = v26;
  v121 = sub_254EDD60C(v2, &selRef_responseMode);
  v120 = v27;
  v119 = [v2 isEyesFree];
  v118 = [v2 isMultiUser];
  v117 = [v2 isVoiceTriggerEnabled];
  v116 = [v2 isTextToSpeechEnabled];
  v115 = [v2 isTriggerlessFollowup];
  v28 = [v2 deviceRestrictions];
  v114 = sub_254F29560();

  v29 = [v2 bargeInModes];
  v113 = sub_254F29560();

  v30 = [v2 identifiedUser];
  if (v30)
  {
    sub_254EDD5A0(v30, &selRef_userID);
  }

  v31 = [v2 identifiedUser];
  if (v31)
  {
    v32 = v31;
    [v31 isOnlyUserInHome];
  }

  v33 = [v2 identifiedUser];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 classification];

    sub_254EDD3F0(v35, v19);
    v36 = sub_254F282E0();
    v37 = 0;
  }

  else
  {
    v36 = sub_254F282E0();
    v37 = 1;
  }

  sub_254EB2F04(v19, v37, 1, v36);
  v38 = v130;
  sub_254F282F0();
  v39 = sub_254F28300();
  sub_254EB7A0C(v38, v40, v41, v39);
  v112 = sub_254EDD4F8(v2);
  v111 = v42;
  v110 = sub_254EDD60C(v2, &selRef_countryCode);
  v109 = v43;
  v108 = sub_254EDD60C(v2, &selRef_siriLocale);
  v107 = v44;
  v45 = sub_254EB6D60();
  v46 = v45;
  if (v45)
  {
    [v45 appRestriction];
  }

  v47 = sub_254EB6D60();
  if (v47)
  {
    sub_254EDD5A0(v47, &selRef_countryCode);
  }

  v48 = sub_254EB6D60();
  v49 = v48;
  if (v48)
  {
    [v48 movieRestriction];
  }

  v50 = sub_254EB6D60();
  v51 = v50;
  if (v50)
  {
    [v50 tvRestriction];
  }

  v145 = v46 == 0;
  v144 = v49 == 0;
  v143 = v51 == 0;
  v52 = v131;
  sub_254F282C0();
  v53 = sub_254F282D0();
  sub_254EB7A0C(v52, v54, v55, v53);
  [v2 uiScale];
  v106 = sub_254EDD60C(v2, &selRef_temperatureUnit);
  v105 = v56;
  v104 = [v2 allowUserGeneratedContent];
  v103 = [v2 censorSpeech];
  v57 = sub_254EB6A88();
  if (v57)
  {
    v102 = sub_254EDD5A0(v57, &selRef_givenName);
    v101 = v58;
  }

  else
  {
    v102 = 0;
    v101 = 0;
  }

  v59 = sub_254EB6A88();
  if (v59)
  {
    v100 = sub_254EDD5A0(v59, &selRef_middleName);
    v99 = v60;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  v61 = sub_254EB6A88();
  if (v61)
  {
    v98 = sub_254EDD5A0(v61, &selRef_familyName);
    v97 = v62;
  }

  else
  {
    v98 = 0;
    v97 = 0;
  }

  v63 = sub_254EB6A88();
  if (v63)
  {
    v96 = sub_254EDD5A0(v63, &selRef_nickName);
    v95 = v64;
  }

  else
  {
    v96 = 0;
    v95 = 0;
  }

  v65 = sub_254EB6A88();
  if (v65)
  {
    v66 = sub_254EDD5A0(v65, &selRef_fullName);
    v94 = v67;
  }

  else
  {
    v66 = 0;
    v94 = 0;
  }

  v68 = sub_254EB6A88();
  v69 = MEMORY[0x277D84F90];
  if (!v68)
  {
    goto LABEL_43;
  }

  v70 = v68;
  v93[2] = v66;
  v71 = [v68 addresses];

  sub_254EDD55C();
  v72 = sub_254F29560();

  v73 = sub_254EC5594(v72);
  if (!v73)
  {

LABEL_43:
    v84 = v128;
    sub_254F28330();
    v85 = sub_254F28340();
    sub_254EB7A0C(v84, v86, v87, v85);
    v88 = [v2 deviceIdiom];
    v89 = v129;
    sub_254EDD474(v88, v129);
    v90 = sub_254F282B0();
    sub_254EB7A0C(v89, v91, v92, v90);
    [v2 didPSCFire];
    sub_254F28350();
    return;
  }

  v74 = v73;
  v142 = v69;
  sub_254ECA69C(0, v73 & ~(v73 >> 63), 0);
  if ((v74 & 0x8000000000000000) == 0)
  {
    v93[0] = v2;
    v93[1] = a1;
    v75 = 0;
    v76 = v142;
    v132 = v138 + 32;
    v133 = v72 & 0xC000000000000001;
    v134 = v74;
    v135 = v72;
    do
    {
      v141 = v76;
      if (v133)
      {
        v77 = MEMORY[0x259C2E0D0](v75, v72);
      }

      else
      {
        v77 = *(v72 + 8 * v75 + 32);
      }

      v78 = v77;
      v79 = sub_254EDD60C(v77, &selRef_label);
      v139 = v80;
      v140 = v79;
      sub_254EDD60C(v78, &selRef_street);
      sub_254EDD60C(v78, &selRef_city);
      sub_254EDD60C(v78, &selRef_state);
      sub_254EDD60C(v78, &selRef_postalCode);
      sub_254EDD60C(v78, &selRef_countryCode);
      v81 = v136;
      sub_254F28310();

      v76 = v141;
      v142 = v141;
      v83 = *(v141 + 16);
      v82 = *(v141 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_254ECA69C(v82 > 1, v83 + 1, 1);
        v76 = v142;
      }

      ++v75;
      *(v76 + 16) = v83 + 1;
      (*(v138 + 32))(v76 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v83, v81, v137);
      v72 = v135;
    }

    while (v134 != v75);

    v2 = v93[0];
    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_254EDD394()
{
  v1 = sub_254EDC4B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_254EDD3F0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_254F282E0();
  sub_254EB3CD0();
  v5 = *(v4 + 104);
  if ((a1 - 1) > 3)
  {
    v6 = MEMORY[0x277D1EF50];
  }

  else
  {
    v6 = qword_2797B4930[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7);
}

uint64_t sub_254EDD474@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_254F282B0();
  sub_254EB3CD0();
  v5 = *(v4 + 104);
  if ((a1 - 1) > 9)
  {
    v6 = MEMORY[0x277D1EF38];
  }

  else
  {
    v6 = qword_2797B4950[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7);
}

uint64_t sub_254EDD4F8(void *a1)
{
  v1 = [a1 encodedLocation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F27900();

  return v3;
}

unint64_t sub_254EDD55C()
{
  result = qword_27F75F000;
  if (!qword_27F75F000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F75F000);
  }

  return result;
}

uint64_t sub_254EDD5A0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_254F29450();

  return v4;
}

uint64_t sub_254EDD60C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_254F29450();

  return v4;
}

uint64_t sub_254EDD66C(uint64_t a1, uint64_t a2)
{
  sub_254EC8BC0(&qword_27F75F090, "P<");
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_254EDD6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

id sub_254EDD718()
{
  ObjectType = swift_getObjectType();
  v12 = sub_254F29770();
  v1 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  sub_254EB3AB8();
  v4 = v3 - v2;
  sub_254F29760();
  sub_254EB2D80();
  MEMORY[0x28223BE20](v5);
  sub_254EB3AB8();
  v6 = sub_254F293A0();
  MEMORY[0x28223BE20](v6 - 8);
  sub_254EB3AB8();
  v7 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_type;
  v8 = *MEMORY[0x277D1EA10];
  sub_254F28050();
  sub_254EB2D80();
  (*(v9 + 104))(&v0[v7], v8);
  *&v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_locationManager] = 0;
  sub_254EB48D8(0, &qword_281426098, 0x277D85C78);
  sub_254F29390();
  v15 = MEMORY[0x277D84F90];
  sub_254EDEF28();
  sub_254EC8BC0(&qword_27F75F098, qword_254F2B9D0);
  sub_254EDEF80();
  sub_254F298A0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *&v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_queue] = sub_254F29780();
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  sub_254EDD9A4();

  return v10;
}

uint64_t sub_254EDD9A4()
{
  v1 = sub_254F291E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_queue];
  objc_allocWithZone(MEMORY[0x277CBFC10]);
  v6 = v5;
  v7 = v0;
  v8 = sub_254EDEDB8(0xD000000000000034, 0x8000000254F2DB40, v0, v5);
  if (v8)
  {
    *&v7[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_locationManager] = v8;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    sub_254F284C0();
    v9 = v7;
    v10 = sub_254F291D0();
    v11 = sub_254F29700();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_254F28040();
      v16 = sub_254EC2D74(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_254EAE000, v10, v11, "[%s] couldn't create CLLocationManager", v12, 0xCu);
      sub_254EB2BBC(v13);
      MEMORY[0x259C2EB80](v13, -1, -1);
      MEMORY[0x259C2EB80](v12, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_254EDDC14()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v3 = v2;
  v4 = *v1;
  *v3 = v4;
  *(v2 + 24) = v5;

  if (v0)
  {
    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_254EDDD38()
{
  sub_254EB3BD8();
  if (sub_254EC5594(*(v0 + 24)))
  {
    v1 = *(v0 + 24) & 0xC000000000000001;
    sub_254EB862C();
    if (v1)
    {
      v2 = MEMORY[0x259C2E0D0](0, *(v0 + 24));
    }

    else
    {
      v2 = *(*(v0 + 24) + 32);
    }
  }

  else
  {

    v2 = 0;
  }

  sub_254EB4930();

  return v3(v2);
}

uint64_t sub_254EDDDF4()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB2DB4();
  *v6 = v5;
  v7 = *v1;
  sub_254EB2DB4();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3 & 1;
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254EDDF0C(uint64_t a1, double a2, double a3)
{
  v29 = v3;
  if (*(v3 + 120) != 1)
  {
    v10 = *(v3 + 32);
    sub_254F284C0();
    v11 = v10;
    v12 = sub_254F291D0();
    v13 = sub_254F296E0();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v3 + 64);
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      v20 = sub_254F28040();
      v22 = sub_254EC2D74(v20, v21, &v28);

      *(v18 + 4) = v22;
      sub_254EB7E2C(&dword_254EAE000, v23, v24, "[%s] not authorized to fetch location");
      sub_254EB2BBC(v19);
      sub_254EB3C04();
      sub_254EB3C04();
    }

    (*(v17 + 8))(v15, v16);

    sub_254EB4930();
    sub_254EB3CE4();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v3 + 72);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = swift_task_alloc();
  *(v3 + 96) = v7;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v3 + 104) = v8;
  sub_254EC8BC0(&qword_27F75F068, &qword_254F2B9A8);
  *v8 = v3;
  v8[1] = sub_254EDE170;
  sub_254EB3FB8();
  sub_254EB3CE4();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_254EDE170()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB2DB4();
  *v4 = v3;
  v5 = *v1;
  sub_254EB2DB4();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EDE278()
{
  sub_254EB3BD8();

  v1 = *(v0 + 16);

  sub_254EB4930();

  return v2(v1);
}

uint64_t sub_254EDE2EC()
{
  sub_254EB3BD8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254EDE35C()
{
  sub_254EB3BD8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254EDE3D8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254EDE4D8()
{
  sub_254EB3BD8();

  sub_254EB4930();

  return v1();
}

uint64_t sub_254EDE544()
{
  sub_254EB3A3C();
  v1 = *(v0 + 160);
  swift_willThrow();

  sub_254EB4930();

  return v2(0);
}

void sub_254EDE5B0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_254EDEE50;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_254EDEA14;
  aBlock[3] = &unk_286725B58;
  v15 = _Block_copy(aBlock);
  v16 = a4;

  [a2 _fetchPlaceInferencesWithFidelityPolicy_handler_];
  _Block_release(v15);
}

uint64_t sub_254EDE78C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_254F291E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v25 = a2;
    v11 = a2;
    sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0);
    return sub_254F295D0();
  }

  else if (a1)
  {
    v25 = a1;

    sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0);
    return sub_254F295E0();
  }

  else
  {
    sub_254F284C0();
    v13 = a4;
    v14 = sub_254F291D0();
    v15 = sub_254F29700();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315394;
      v18 = sub_254F28040();
      v20 = sub_254EC2D74(v18, v19, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v24 = 0;
      sub_254EC8BC0(&qword_27F75F080, &qword_254F2B9B8);
      v21 = sub_254F29480();
      v23 = sub_254EC2D74(v21, v22, &v25);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_254EAE000, v14, v15, "[%s] could not fetch place inferences due to error: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C2EB80](v17, -1, -1);
      MEMORY[0x259C2EB80](v16, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_254EDEA14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_254EB48D8(0, &unk_281426088, 0x277CBFCC8);
    v4 = sub_254F29560();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_254EDEAB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_254EB5A9C((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return sub_254EDD66C(*v7, a4);
  }

  v9 = *v7;

  return sub_254EDD6F8(v9, a2, a3);
}

uint64_t type metadata accessor for PlaceInferenceSourceProvider(uint64_t a1)
{
  result = qword_281426518;
  if (!qword_281426518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDEC10(uint64_t a1)
{
  result = sub_254F28050();
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

uint64_t sub_254EDECB8()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB2DB4();
  *v6 = v5;
  v7 = *v1;
  sub_254EB2DB4();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

id sub_254EDEDB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_254F29420();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundlePath:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_254EDEE50(void *a1, void *a2)
{
  v5 = *(sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_254EDE78C(a1, a2, v2 + v6, v7);
}

uint64_t sub_254EDEF08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_254EDEF28()
{
  result = qword_2814260A0;
  if (!qword_2814260A0)
  {
    sub_254F29760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814260A0);
  }

  return result;
}

unint64_t sub_254EDEF80()
{
  result = qword_281426130;
  if (!qword_281426130)
  {
    sub_254EDEFE4(&qword_27F75F098, qword_254F2B9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426130);
  }

  return result;
}

uint64_t sub_254EDEFE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254EDF038(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EDF08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_254EDF0F4()
{
  result = sub_254EB4BB0();
  qword_281427CB8 = result;
  return result;
}

uint64_t sub_254EDF114()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_254EDF804;
  }

  else
  {
    v2 = sub_254EDF228;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254EDF228(uint64_t a1, double a2, double a3)
{
  v68 = v3;
  v4 = v3[47];
  v5 = v3[23];
  v6 = v3[15];
  v7 = v3[13];
  sub_254F284C0();
  v4(v5, v6, v7);

  v8 = sub_254F291D0();
  v9 = sub_254F296E0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v3[49];
  v11 = v3[50];
  if (v10)
  {
    v62 = v3[44];
    v63 = v3[45];
    v66 = v3[27];
    v64 = v3[49];
    v65 = v3[25];
    v13 = v3[23];
    v14 = v3[21];
    v15 = v3[13];
    v16 = v3[14];
    v58 = v3[19];
    v17 = v3[53];
    v18 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    sub_254EB7A24(4.8151e-34);
    v61 = v9;
    v19(v15, v16);
    sub_254F28040();
    v20 = sub_254EB402C();
    v21(v20, v58);
    v11(v13, v15);
    v22 = sub_254EC2D74(v14, v16, v67);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v67[1] = v17;
    v67[2] = v62;
    v67[3] = v63;
    v23 = RequestID.debugDescription.getter();
    v25 = sub_254EC2D74(v23, v24, v67);

    *(v18 + 14) = v25;
    sub_254EB3D00(&dword_254EAE000, "[%s] finished fetching source data for %{public}s", v61);
    swift_arrayDestroy();
    sub_254EB3C04();
    sub_254EB3C04();

    v64(v66, v65);
  }

  else
  {
    v26 = v3[27];
    v27 = v3[25];
    v28 = v3[23];
    v29 = v3[13];

    v11(v28, v29);
    v12(v26, v27);
  }

  v60 = v3[46];
  v57 = v3[34];
  v59 = v3[33];
  v50 = v3[35];
  v51 = v3[32];
  v49 = v3[31];
  v30 = v3[30];
  v52 = v3[29];
  v32 = v3[20];
  v31 = v3[21];
  v33 = v3[19];
  v55 = v3[16];
  v56 = v3[18];
  v34 = v3[14];
  v35 = v3[13];
  v53 = v3[12];
  v54 = v3[17];
  type metadata accessor for Analytics();
  sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F2BA20;
  *(inited + 32) = 0x7954656372756F73;
  *(inited + 40) = 0xEA00000000006570;
  sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
  (*(v34 + 16))(v35, v34);
  v37 = sub_254F28040();
  v39 = v38;
  (*(v32 + 8))(v31, v33);
  *(inited + 48) = sub_254EF3180(v37, v39);
  *(inited + 56) = 0x79636E6574616CLL;
  *(inited + 64) = 0xE700000000000000;
  sub_254F29A00();
  sub_254F29A10();
  v40 = *(v30 + 8);
  v40(v49, v52);
  v41 = sub_254F29C10();
  v43 = v41 * 1000.0 + v42 * 1.0e-15;
  v44 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v45 = v43;
  *(inited + 72) = [v44 initWithFloat_];
  sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
  v46 = sub_254F293D0();
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0x7250656372756F53, 0xEE0072656469766FLL, 0, 0, v46);

  v40(v51, v52);
  (*(v57 + 8))(v50, v59);
  (*(v54 + 32))(v53, v56, v55);
  sub_254EDF980("ContextRetrieval.SourceProvider", 31, 2, v60, v35);

  v47 = v3[1];

  return v47();
}

uint64_t sub_254EDF804()
{
  v1 = v0[46];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[13];
  (*(v0[30] + 8))(v0[32], v0[29]);
  (*(v2 + 8))(v3, v4);
  sub_254EDF980("ContextRetrieval.SourceProvider", 31, 2, v1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_254EDF980(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v41 = a3;
  v42 = a1;
  v5 = sub_254F29180();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254F29140();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F29170();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v16 = sub_254F29160();
  sub_254F29190();
  v39 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  v35 = v12;
  v36 = v8;
  if (v41)
  {
    if (!(v42 >> 32))
    {
      if ((v42 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v42 >> 16 <= 0x10)
      {
        v18 = v9;
        v19 = v13;
        v42 = &v45;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v42)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v9;
  v19 = v13;
LABEL_10:

  sub_254F291C0();

  v21 = v37;
  v20 = v38;
  v22 = v16;
  if ((*(v37 + 88))(v7, v38) == *MEMORY[0x277D85B00])
  {
    v23 = 0;
    v24 = "[Error] Interval already ended";
  }

  else
  {
    (*(v21 + 8))(v7, v20);
    v24 = "SourceProvider=%{signpost.telemetry:string1,public}s %s";
    v23 = 2;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v44 = v26;
  *v25 = v23;
  *(v25 + 1) = v23;
  *(v25 + 2) = 2082;
  v43 = v40;
  swift_getMetatypeMetadata();
  v27 = sub_254F29480();
  v29 = sub_254EC2D74(v27, v28, &v44);

  *(v25 + 4) = v29;
  *(v25 + 12) = 2080;
  sub_254F280B0();
  v30 = sub_254F29950();
  v32 = sub_254EC2D74(v30, v31, &v44);

  *(v25 + 14) = v32;
  v33 = sub_254F29130();
  _os_signpost_emit_with_name_impl(&dword_254EAE000, v22, v39, v33, v42, v24, v25, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x259C2EB80](v26, -1, -1);
  MEMORY[0x259C2EB80](v25, -1, -1);

  (*(v18 + 8))(v11, v36);
  return (*(v19 + 8))(v15, v35);
}

uint64_t sub_254EDFDEC(uint64_t a1)
{
  result = sub_254F28050();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254EDFE60(uint64_t a1)
{
  v4 = *v2;
  sub_254EB2DB4();
  *v5 = v4;
  v6 = *v2;
  sub_254EB2DB4();
  *v7 = v6;
  v4[26] = v1;

  if (v1)
  {
    v8 = sub_254EE0060;
  }

  else
  {
    v9 = v4[24];
    v4[27] = a1;
    swift_setDeallocating();
    sub_254EB2BBC((v9 + 16));
    v8 = sub_254EDFF90;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_254EDFF90()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];

  (*(v2 + 32))(v4, v1, v3);
  sub_254EB2F04(v4, 0, 1, v3);

  v5 = v0[1];
  v6 = v0[27];

  return v5(v6);
}

uint64_t sub_254EE0060()
{
  v1 = *(v0 + 192);

  swift_setDeallocating();
  sub_254EB2BBC((v1 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_254EE00FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254F28050();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_254EE0164(uint64_t a1)
{
  v4 = *v2;
  sub_254EB2DB4();
  *v5 = v4;
  v6 = *v2;
  sub_254EB2DB4();
  *v7 = v6;

  if (!v1)
  {
    v9 = *(v4 + 16);
    *(v9 + *(sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8) + 48)) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_254EE0290()
{
  type metadata accessor for ContextReferenceCache(0);
  v0 = swift_allocObject();
  result = sub_254EE053C();
  qword_281427CD8 = v0;
  return result;
}

uint64_t sub_254EE03A0()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime21ContextReferenceCache_instance;
  sub_254F28550();
  sub_254EB2D80();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ContextReferenceCache(uint64_t a1)
{
  result = qword_281427130;
  if (!qword_281427130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EE0488(uint64_t a1)
{
  result = sub_254F28550();
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

uint64_t sub_254EE053C()
{
  type metadata accessor for ContextReferenceCache.CacheCallbacks();
  swift_allocObject();
  sub_254EB6264(qword_2814271F0, v1, type metadata accessor for ContextReferenceCache.CacheCallbacks, &unk_254F2BC9C);
  sub_254F28540();
  return v0;
}

uint64_t sub_254EE05D8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_254EE0628(a1);
  return v2;
}

void *sub_254EE0628(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F98];
  v1[14] = MEMORY[0x277D84F98];
  v1[15] = v4;
  v1[16] = v4;
  _s14EmbeddingCacheCMa();
  swift_allocObject();
  v5 = sub_254EEA4B4(50, 10);
  sub_254F28510();
  sub_254EB2D80();
  (*(v6 + 8))(a1);
  v2[17] = v5;
  return v2;
}

uint64_t *sub_254EE06D4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_254F291E0();
  sub_254EB2CBC();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_254EB3AB8();
  v9 = v8 - v7;
  sub_254F284C0();
  v10 = sub_254F291D0();
  v11 = sub_254F296F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v42 = v13;
    *v12 = 136315138;
    v14 = sub_254EE0BC4(v2);
    v16 = sub_254EC2D74(v14, v15, &v42);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_254EAE000, v10, v11, "%s is being deinitialized", v12, 0xCu);
    sub_254EB2BBC(v13);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  (*(v5 + 8))(v9, v3);
  sub_254EB6D78();
  swift_beginAccess();
  v17 = v1[14];
  sub_254EB4AFC();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;

  v24 = 0;
  while (v20)
  {
LABEL_9:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = *(v17 + 56) + ((v24 << 10) | (16 * v26));
    if ((*(v27 + 8) & 1) == 0)
    {
      v28 = *v27;

      sub_254EC8BC0(&qword_27F75F0B0, &unk_254F2BD10);
      sub_254EC8BC0(&qword_27F75F090, "P<");
      sub_254F29630();
      result = sub_254EE304C(v28, 0);
    }
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v25 >= v22)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v25);
    ++v24;
    if (v20)
    {
      v24 = v25;
      goto LABEL_9;
    }
  }

  sub_254EB6D78();
  swift_beginAccess();
  v29 = v1[15];
  sub_254EB4AFC();
  v32 = v31 & v30;
  v34 = (v33 + 63) >> 6;

  v35 = 0;
  while (v32)
  {
    v36 = v35;
LABEL_17:
    v37 = __clz(__rbit64(v32)) | (v36 << 6);
    v38 = *(*(v29 + 48) + 32 * v37 + 8);
    sub_254ED7AC0(*(v29 + 56) + 40 * v37, &v42, &qword_27F75F100, &qword_254F2BDD0);
    v40 = v43;
    v41 = v42;
    v39 = v44;

    if (v38 == 1)
    {
LABEL_22:

      sub_254EB67F0((v1 + 14));
      sub_254EC8BC0(&qword_27F75F110, &qword_254F2BDF0);
      sub_254F293E0();
      swift_endAccess();
      sub_254EB67F0((v1 + 15));
      sub_254EC8BC0(&qword_27F75F118, &qword_254F2BDF8);
      sub_254F293E0();
      swift_endAccess();
      sub_254EB67F0((v1 + 16));
      sub_254EC8BC0(&qword_27F75F120, &qword_254F2BE00);
      sub_254F293E0();
      swift_endAccess();

      swift_defaultActor_destroy();
      return v1;
    }

    v32 &= v32 - 1;

    v43 = v40;
    v42 = v41;
    v44 = v39;
    if (v39)
    {
      result = sub_254EB306C(&v42, &qword_27F75F100, &qword_254F2BDD0);
    }

    else
    {
      sub_254EC8BC0(&qword_27F75F108, &qword_254F2BDD8);
      sub_254EC8BC0(&qword_27F75F090, "P<");
      sub_254F29630();
    }

    v35 = v36;
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      goto LABEL_22;
    }

    v32 = *(v29 + 64 + 8 * v36);
    ++v35;
    if (v32)
    {
      goto LABEL_17;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_254EE0BF4()
{
  sub_254EE06D4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254EE0C20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_254EE0D44(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}
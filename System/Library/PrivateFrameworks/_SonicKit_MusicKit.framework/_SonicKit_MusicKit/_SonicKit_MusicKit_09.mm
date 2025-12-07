uint64_t sub_2753A7748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_275319D08(0x4E4F4953524556, 0xE700000000000000, a1, &v26);
  if (!v27)
  {
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_3_12(v8, v9, v10, MEMORY[0x277D83B88], v11, v12, v13, v14, v24) & 1) != 0 && v25 >= 1)
  {
    sub_275319D08(0x4F462D4F49445541, 0xEF44492D54414D52, a1, &v26);
    if (v27)
    {
      if (OUTLINED_FUNCTION_3_12(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v25))
      {
        v22 = sub_2753B6E18();

        if (v22 == 4)
        {
          *a4 = a1;
          a4[1] = a2;
          a4[2] = a3;
          return result;
        }
      }

      goto LABEL_8;
    }

LABEL_9:

    result = sub_2753A7890(&v26, sub_2753A78F0);
    goto LABEL_10;
  }

LABEL_8:

LABEL_10:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return result;
}

uint64_t sub_2753A7890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2753A78F0()
{
  if (!qword_2809C36F8)
  {
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C36F8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return sub_2753A7890(v0, type metadata accessor for AssetRecipe.DRM);
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_dynamicCast();
}

uint64_t AVAsset.enhancedHLSAssetVariants.getter()
{
  v1[53] = v0;
  v2 = sub_2753B6DB8();
  v1[54] = v2;
  v1[55] = *(v2 - 8);
  v1[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753A7A98, 0, 0);
}

uint64_t sub_2753A7A98()
{
  v1 = v0[53];
  v2 = *MEMORY[0x277CE5F38];
  v0[2] = v0;
  v0[7] = v0 + 46;
  v0[3] = sub_2753A7BEC;
  v3 = swift_continuation_init();
  sub_2753A8910(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2753A89F4;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v1 loadMetadataForFormat:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2753A7BEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_2753A87DC;
  }

  else
  {
    v2 = sub_2753A7D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2753A7D28()
{
  v1 = v0[46];
  v2 = sub_2753A8AA4(v1);
  v3 = 0;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v18 = v1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v18)
    {
      v5 = MEMORY[0x277C76690](v3, v1);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_26;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[58] = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v7 = [v5 key];
    if (v7 && (v0[47] = v7, v0[59] = sub_2753A489C(), (swift_dynamicCast() & 1) != 0))
    {
      if (v0[42] == 0xD000000000000020 && 0x80000002753BE0E0 == v0[43])
      {

LABEL_22:

        sub_2753A8AC8(0);
        v16 = sub_2753B6268();
        v0[60] = v16;
        v17 = swift_task_alloc();
        v0[61] = v17;
        *v17 = v0;
        v17[1] = sub_2753A8000;

        return MEMORY[0x2821FAF00](v0 + 48, v16, 0, 0);
      }

      v9 = v1;
      v10 = v4;
      v11 = v2;
      v12 = sub_2753B7718();

      if (v12)
      {
        goto LABEL_22;
      }

      v2 = v11;
      v4 = v10;
      v1 = v9;
    }

    else
    {
    }

    ++v3;
  }

  v13 = v0[1];
  v14 = MEMORY[0x277D84F98];

  return v13(v14);
}

uint64_t sub_2753A8000()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_2753A8878;
  }

  else
  {
    v2 = sub_2753A8160;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2753A8160()
{
  v77 = v0;
  v76[3] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 384);
  if (!v1 || (*(v0 + 392) = v1, (swift_dynamicCast() & 1) == 0) || (v3 = *(v0 + 440), v2 = *(v0 + 448), v4 = *(v0 + 432), sub_2753B6DA8(), v5 = sub_2753B6D98(), v7 = v6, , (*(v3 + 8))(v2, v4), v7 >> 60 == 15))
  {

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_139_2();
  v10 = sub_2753B6208();
  if (v11 >> 60 == 15)
  {

    v12 = OUTLINED_FUNCTION_139_2();
    sub_275315F60(v12, v13);
    goto LABEL_5;
  }

  v14 = v10;
  v15 = v11;
  v16 = objc_opt_self();
  v17 = sub_2753B6218();
  *(v0 + 400) = 0;
  v18 = [v16 JSONObjectWithData:v17 options:0 error:v0 + 400];

  v19 = *(v0 + 400);
  if (!v18)
  {
    v55 = *(v0 + 464);
    v56 = v19;
    sub_2753B6108();

    swift_willThrow();
    v57 = OUTLINED_FUNCTION_139_2();
    sub_275315F60(v57, v58);
    sub_275315F60(v14, v15);

    OUTLINED_FUNCTION_225();

    __asm { BRAA            X1, X16 }
  }

  v20 = v19;
  sub_2753B72D8();
  swift_unknownObjectRelease();
  sub_2753A8BD4(0, &qword_2809C3728, MEMORY[0x277D84F70] + 8, MEMORY[0x277D834F8]);
  if (!swift_dynamicCast())
  {
    v61 = *(v0 + 464);
    v62 = OUTLINED_FUNCTION_139_2();
    sub_275315F60(v62, v63);
    sub_275315F60(v14, v15);

    goto LABEL_5;
  }

  v73 = v14;
  v74 = v15;
  v75 = v7;
  v21 = 0;
  v22 = *(v0 + 408);
  v23 = -1;
  v24 = -1 << *(v22 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(v22 + 64);
  v26 = MEMORY[0x277D84F98];
  v27 = (63 - v24) >> 6;
LABEL_15:
  if (v25)
  {
    v28 = v21;
    goto LABEL_21;
  }

  while (1)
  {
    v28 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v28 >= v27)
    {
      v25 = 0;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      *(v0 + 192) = 0u;
      goto LABEL_22;
    }

    v25 = *(v22 + 64 + 8 * v28);
    ++v21;
    if (v25)
    {
      v21 = v28;
LABEL_21:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = v29 | (v28 << 6);
      v31 = (*(v22 + 48) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      sub_275316DF4(*(v22 + 56) + 32 * v30, v0 + 272);
      *(v0 + 192) = v33;
      *(v0 + 200) = v32;
      sub_2753A8BC4((v0 + 272), (v0 + 208));

LABEL_22:
      v34 = *(v0 + 208);
      *(v0 + 144) = *(v0 + 192);
      *(v0 + 160) = v34;
      *(v0 + 176) = *(v0 + 224);
      v35 = *(v0 + 152);
      if (!v35)
      {
        v64 = *(v0 + 464);

        sub_275315F60(v5, v75);
        sub_275315F60(v73, v74);

LABEL_5:

        OUTLINED_FUNCTION_225();

        __asm { BRAA            X2, X16 }
      }

      v36 = *(v0 + 144);
      sub_2753A8BC4((v0 + 160), (v0 + 304));
      if (swift_dynamicCast())
      {
        v37 = *(v0 + 416);

        sub_2753A7748(v37, v36, v35, v76);
        if (v76[0])
        {
          v71 = v76[0];
          v69 = v76[1];
          v70 = v76[2];
          swift_isUniquelyReferenced_nonNull_native();
          v68 = sub_2753842B8(v36, v35);
          v72 = v38;
          if (__OFADD__(*(v26 + 16), (v38 & 1) == 0))
          {
            __break(1u);
LABEL_48:
            __break(1u);
          }

          v39 = OUTLINED_FUNCTION_0_13();
          sub_2753A8BD4(v39, &qword_2809C3730, &type metadata for EnhancedHLSAssetVariant, v40);
          if (sub_2753B7478())
          {
            v41 = sub_2753842B8(v36, v35);
            v43 = v72;
            if ((v72 & 1) != (v42 & 1))
            {
              goto LABEL_44;
            }

            v44 = v41;
          }

          else
          {
            v44 = v68;
            v43 = v72;
          }

          if (v43)
          {

            OUTLINED_FUNCTION_1_15();
            OUTLINED_FUNCTION_3_13(v49, v67, v68, v69, v70, v71);
          }

          else
          {
            *(v26 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v50 = (*(v26 + 48) + 16 * v44);
            *v50 = v36;
            v50[1] = v35;
            OUTLINED_FUNCTION_1_15();
            OUTLINED_FUNCTION_3_13(v51, v67, v68, v69, v70, v71);
            v52 = *(v26 + 16);
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_48;
            }

            *(v26 + 16) = v54;
          }
        }

        else
        {
          sub_2753842B8(v36, v35);
          v46 = v45;

          if (v46)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v47 = OUTLINED_FUNCTION_0_13();
            sub_2753A8BD4(v47, &qword_2809C3730, &type metadata for EnhancedHLSAssetVariant, v48);
            sub_2753B7478();

            OUTLINED_FUNCTION_1_15();

            sub_2753B7488();
          }
        }
      }

      else
      {
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  OUTLINED_FUNCTION_225();

  return sub_2753B7768();
}

uint64_t sub_2753A87DC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2753A8878()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2753A8910(uint64_t a1)
{
  if (!qword_2809C3700)
  {
    sub_2753A8B60(255, &qword_2809C3708, sub_2753A89B0, MEMORY[0x277D83940]);
    sub_275358C80();
    v1 = sub_2753B7188();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3700);
    }
  }
}

unint64_t sub_2753A89B0()
{
  result = qword_2809C3710;
  if (!qword_2809C3710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C3710);
  }

  return result;
}

uint64_t sub_2753A89F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_27532A6F4(v4, v5);
  }

  else
  {
    sub_2753A89B0();
    sub_2753B6FD8();

    return sub_27532A6F8();
  }
}

uint64_t sub_2753A8AA4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_2753A8AC8(uint64_t a1)
{
  if (!qword_2809C3718)
  {
    sub_2753A89B0();
    sub_2753A8B60(255, &qword_2809C3720, sub_2753A489C, MEMORY[0x277D83D88]);
    v1 = sub_2753B6258();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3718);
    }
  }
}

void sub_2753A8B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_OWORD *sub_2753A8BC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2753A8BD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_3_13(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a6;
  a1[1] = a4;
  a1[2] = a5;
}

unint64_t sub_2753A8CAC()
{
  result = qword_2809C3738;
  if (!qword_2809C3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3738);
  }

  return result;
}

unint64_t sub_2753A8D10()
{
  result = qword_2809C3740;
  if (!qword_2809C3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3740);
  }

  return result;
}

_BYTE *_s18AssetDownloadErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2753A8E20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id sub_2753A8E58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_275396480(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(&v1[v8], 1, v4))
  {
    (*(v5 + 16))(v7, &v1[v8], v4);
    sub_2753B7108();
    sub_2753A9A64(&qword_2809C3788, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v9 = swift_allocError();
    sub_2753B6C58();
    v11 = v9;
    sub_2753B70D8();
    (*(v5 + 8))(v7, v4);
  }

  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t _s27ProgressiveDownloadObserverCMa(uint64_t a1)
{
  result = qword_2809C3758;
  if (!qword_2809C3758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2753A90D0()
{
  v1 = v0;
  sub_2753A9834(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_275396480(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v10, 1, v6))
  {
    (*(v7 + 16))(v9, v1 + v10, v6);
    sub_2753B70E8();
    (*(v7 + 8))(v9, v6);
  }

  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  swift_beginAccess();
  sub_2753A98F0(v4, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_2753A9288()
{
  sub_2753A9834(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - v5;
  sub_275396480(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  swift_beginAccess();
  sub_2753A988C(v0 + v12, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    return sub_2753A9A04(v6, sub_2753A9834);
  }

  (*(v9 + 32))(v11, v6, v8);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  swift_beginAccess();
  sub_2753A98F0(v4, v0 + v12);
  swift_endAccess();
  v14 = sub_2753B6048();
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v21[0] = sub_2753B6D88();
  v21[1] = v16;
  sub_2753B7338();
  sub_275319D6C(v15, &v23);

  sub_275387FFC(v22);
  if (!v24)
  {
    sub_2753A9A04(&v23, sub_2753A78F0);
    goto LABEL_8;
  }

  sub_275358C80();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_2753A9954(0);
    sub_2753A9A64(&qword_2809C3780, sub_2753A9954, MEMORY[0x277D64F10]);
    v17 = swift_allocError();
    v20 = sub_2753A99B0();
    MEMORY[0x277C755D0](v20, 0xD000000000000016, 0x80000002753BE1B0, MEMORY[0x277D84F90], &type metadata for AVURLAsset.AssetDownloadError, v20);
    v19 = 0;
    goto LABEL_9;
  }

  v17 = v21[0];
  v18 = v21[0];
  v19 = v17;
LABEL_9:
  v22[0] = v17;
  sub_2753B70D8();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2753A9608(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_2753B6058();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B6038();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_2753A96F8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_result] = 0;
  v2 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  sub_275396480(0);
  __swift_storeEnumTagSinglePayload(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_2753A9798(uint64_t a1)
{
  sub_2753A9834(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2753A9834(uint64_t a1)
{
  if (!qword_2809C3768)
  {
    sub_275396480(255);
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3768);
    }
  }
}

uint64_t sub_2753A988C(uint64_t a1, uint64_t a2)
{
  sub_2753A9834(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2753A98F0(uint64_t a1, uint64_t a2)
{
  sub_2753A9834(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2753A9954(uint64_t a1)
{
  if (!qword_2809C3770)
  {
    sub_2753A99B0();
    v1 = sub_2753B6308();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3770);
    }
  }
}

unint64_t sub_2753A99B0()
{
  result = qword_2809C3778;
  if (!qword_2809C3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3778);
  }

  return result;
}

uint64_t sub_2753A9A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2753A9A64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_SonicKit_MusicKit::MusicAssetSelectionError_optional __swiftcall MusicAssetSelectionError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 24)
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

uint64_t MusicAssetSelectionError.rawValue.getter()
{
  if (*v0)
  {
    return 24;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753A9B24@<X0>(uint64_t *a1@<X8>)
{
  result = MusicAssetSelectionError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MusicAssetSelectionMode.description.getter()
{
  if (!*(v0 + 8))
  {
    sub_2753B7398();

    OUTLINED_FUNCTION_69_5();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_2753B7398();

    OUTLINED_FUNCTION_69_5();
    v2 = v1 | 8;
LABEL_5:
    v5 = v2;
    sub_2753B3B24(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_275329E9C();
    v3 = sub_2753B6D48();
    MEMORY[0x277C76100](v3);

    MEMORY[0x277C76100](93, 0xE100000000000000);
    return v5;
  }

  return 0x6573736120796E41;
}

uint64_t MusicAssetCandidate.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MusicAssetCandidate.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicAssetCandidate(0) + 20);
  sub_2753B6A38();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicAssetCandidate.availability.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for MusicAssetCandidate(v2) + 20);
  sub_2753B6A38();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t MusicAssetCandidate.availability.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for MusicAssetCandidate(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t MusicAssetCandidate.recipe.getter()
{
  type metadata accessor for MusicAssetCandidate(0);
  OUTLINED_FUNCTION_4_12();
  v1 = OUTLINED_FUNCTION_54_4(v0);
  return sub_2753B39C8(v1, v2, v3, v4);
}

uint64_t sub_2753A9ECC(uint64_t a1, uint64_t a2)
{
  sub_2753AC02C(0, &qword_2809C3790, type metadata accessor for AssetRecipe, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicAssetCandidate.recipe.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for MusicAssetCandidate(v0);
  return OUTLINED_FUNCTION_116();
}

void *MusicAssetCandidate.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicAssetCandidate(0) + 28));
  v2 = v1;
  return v1;
}

void MusicAssetCandidate.error.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for MusicAssetCandidate(v2) + 28);

  *(v1 + v3) = v0;
}

uint64_t MusicAssetCandidate.error.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for MusicAssetCandidate(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t MusicAssetCandidate.description.getter()
{
  v7 = *v0;

  MEMORY[0x277C76100](23328, 0xE200000000000000);
  v1 = type metadata accessor for MusicAssetCandidate(0);
  sub_2753B6A38();
  sub_2753AA1C8(&qword_2809C3798, MEMORY[0x277D65158], MEMORY[0x277D65160]);
  v2 = sub_2753B76B8();
  MEMORY[0x277C76100](v2);

  MEMORY[0x277C76100](93, 0xE100000000000000);
  v3 = *(v0 + *(v1 + 28));
  if (v3)
  {
    v4 = v3;
    MEMORY[0x277C76100](23328, 0xE200000000000000);
    swift_getErrorValue();
    sub_2753B76E8();
    MEMORY[0x277C76100](93, 0xE100000000000000);

    v5 = OUTLINED_FUNCTION_97_0();
    MEMORY[0x277C76100](v5);
  }

  return v7;
}

uint64_t sub_2753AA1C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicAssetSelection.selectionMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_2753AA228(v2, v3);
}

uint64_t sub_2753AA228(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t MusicAssetSelection.selectionMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_2753AA27C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_2753AA27C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t MusicAssetSelection.candidates.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MusicAssetSelection.result.getter()
{
  v0 = type metadata accessor for MusicAssetSelection(0);
  v1 = OUTLINED_FUNCTION_54_4(*(v0 + 24));
  return sub_2753B36B0(v1, v2, v3);
}

void sub_2753AA36C(uint64_t a1)
{
  if (!qword_2809C37A0)
  {
    type metadata accessor for AssetRecipe(255);
    sub_275358C80();
    v1 = sub_2753B77E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C37A0);
    }
  }
}

uint64_t sub_2753AA408(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_24();
  v7 = v4 + *(v6(v5) + 24);

  return a3(v3, v7);
}

uint64_t sub_2753AA460(uint64_t a1, uint64_t a2)
{
  sub_2753AA36C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicAssetSelection.result.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for MusicAssetSelection(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t FacetCollection<>.selectAsset()()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v5 = v4;
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v6;
  v1[13] = v4;
  sub_2753ABF7C(0);
  v1[16] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[17] = v8;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_2753AA36C(0);
  v1[21] = v9;
  OUTLINED_FUNCTION_75(v9);
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_2_12();
  v10 = MEMORY[0x277D83D88];
  sub_2753AC02C(0, v11, v12, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_75(v13);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v14 = type metadata accessor for MusicAssetCandidate(0);
  v1[26] = v14;
  OUTLINED_FUNCTION_17_1(v14);
  v1[27] = v15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  OUTLINED_FUNCTION_0_14();
  sub_2753AC02C(0, v16, v17, v10);
  OUTLINED_FUNCTION_75(v18);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v20 = type metadata accessor for FacetCollection<>.Asset(0, *(v5 + 16), v3, v19);
  v1[36] = v20;
  OUTLINED_FUNCTION_17_1(v20);
  v1[37] = v21;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v1[41] = v23;
  *v23 = v24;
  v23[1] = sub_2753AA7FC;

  return sub_2753AC08C((v1 + 10), v5, v3, v22);
}

uint64_t sub_2753AA7FC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753AA8F8()
{
  v2 = *(v0 + 288);
  *(v0 + 344) = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 90) = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2753B76C8();
  v5 = *(v0 + 320);
  v82 = *(v0 + 312);
  v84 = TupleTypeMetadata2;
  v85 = *(*(TupleTypeMetadata2 - 8) + 72);
  if (!v3)
  {
    v80 = *(v0 + 296);
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    v69 = v25;
    v26 = *(v0 + 104);
    swift_allocObject();
    sub_2753B6FF8();
    v28 = v27;
    v71 = *(TupleTypeMetadata2 + 48);
    v29 = OUTLINED_FUNCTION_60_2();
    FacetCollection<>.hlsAsset.getter(v29, v24, v30);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_59_4();
    v78 = *(v80 + 8);
    v31 = OUTLINED_FUNCTION_28_1();
    v32(v31);
    *v28 = v25;
    v28[1] = v1;
    v33 = v28 + v71;
    v34 = v24;
    FacetCollection<>.hlsAsset.getter(v26, v24, v33);
    v35 = TupleTypeMetadata2;
    sub_2752E6688();
    v75 = sub_2753B6C98();
    swift_allocObject();
    sub_2753B6FF8();
    v37 = v36;
    v79 = *(TupleTypeMetadata2 + 48);
    v38 = OUTLINED_FUNCTION_60_2();
    v39 = v34;
    FacetCollection<>.streamingAsset.getter(v38, v34, v40);
    v41 = OUTLINED_FUNCTION_53_5();
    v43 = v42;
    v44 = OUTLINED_FUNCTION_28_1();
    v78(v44);
    *v37 = v41;
    v37[1] = v43;
    FacetCollection<>.streamingAsset.getter(v26, v39, v37 + v79);
    v45 = (v37 + v85);
    v46 = *(v35 + 48);
    FacetCollection<>.drmStreamingAsset.getter(v26, v39, v82);
    OUTLINED_FUNCTION_76_3();
    v47 = OUTLINED_FUNCTION_37_5();
    v20 = v75;
    (v78)(v47, v2);
    *v45 = v69;
    v45[1] = v5;
    FacetCollection<>.drmStreamingAsset.getter(v26, v39, v45 + v46);
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 112);
    v70 = *(v0 + 120);
    v74 = v7;
    v8 = *(v0 + 104);
    swift_allocObject();
    sub_2753B6FF8();
    v10 = v9;
    v11 = *(TupleTypeMetadata2 + 48);
    v12 = OUTLINED_FUNCTION_60_2();
    FacetCollection<>.streamingAsset.getter(v12, v7, v13);
    v14 = OUTLINED_FUNCTION_53_5();
    v16 = v15;
    v77 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_28_1();
    v18(v17);
    *v10 = v14;
    v10[1] = v16;
    FacetCollection<>.streamingAsset.getter(v8, v74, v10 + v11);
    v19 = (v10 + v85);
    v68 = *(v84 + 48);
    FacetCollection<>.drmStreamingAsset.getter(v8, v74, v82);
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_59_4();
    v77(v82, v2);
    *v19 = v70;
    v19[1] = v10;
    FacetCollection<>.drmStreamingAsset.getter(v8, v74, v10 + v85 + v68);
    sub_2752E6688();
    v20 = sub_2753B6C98();
    swift_allocObject();
    sub_2753B6FF8();
    v22 = v21;
    v83 = *(v84 + 48);
    FacetCollection<>.hlsAsset.getter(v8, v74, v5);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_59_4();
    v23 = OUTLINED_FUNCTION_28_1();
    (v77)(v23);
    *v22 = v70;
    v22[1] = v84;
    FacetCollection<>.hlsAsset.getter(v8, v74, v22 + v83);
LABEL_5:
    sub_2752E6688();
    goto LABEL_7;
  }

  v48 = *(v0 + 296);
  v76 = *(v0 + 304);
  v50 = *(v0 + 112);
  v49 = *(v0 + 120);
  v51 = *(v0 + 104);
  swift_allocObject();
  sub_2753B6FF8();
  v53 = v52;
  v72 = *(TupleTypeMetadata2 + 48);
  v54 = OUTLINED_FUNCTION_60_2();
  FacetCollection<>.streamingAsset.getter(v54, v50, v55);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_59_4();
  v81 = *(v48 + 8);
  v56 = OUTLINED_FUNCTION_28_1();
  v57(v56);
  *v53 = v49;
  v53[1] = v1;
  FacetCollection<>.streamingAsset.getter(v51, v50, v53 + v72);
  v58 = (v53 + v85);
  v73 = *(TupleTypeMetadata2 + 48);
  FacetCollection<>.drmStreamingAsset.getter(v51, v50, v82);
  OUTLINED_FUNCTION_76_3();
  v59 = OUTLINED_FUNCTION_37_5();
  v81(v59, v2);
  *v58 = v49;
  v58[1] = v50;
  FacetCollection<>.drmStreamingAsset.getter(v51, v50, v53 + v85 + v73);
  v60 = (v53 + 2 * v85);
  v86 = *(TupleTypeMetadata2 + 48);
  v20 = v76;
  FacetCollection<>.hlsAsset.getter(v51, v50, v76);
  OUTLINED_FUNCTION_76_3();
  v61 = OUTLINED_FUNCTION_37_5();
  v81(v61, v2);
  *v60 = v49;
  v60[1] = v50;
  FacetCollection<>.hlsAsset.getter(v51, v50, v60 + v86);
  sub_2752E6688();
  sub_2753B6C98();
  OUTLINED_FUNCTION_24();
  sub_2753B7038();
LABEL_7:
  *(v0 + 352) = v20;
  *(v0 + 360) = sub_2753B6C98();
  v62 = swift_task_alloc();
  *(v0 + 368) = v62;
  *v62 = v0;
  v62[1] = sub_2753AAF28;
  OUTLINED_FUNCTION_309_0();

  return sub_2753AC5B8(v63, v64, v65, v66);
}

uint64_t sub_2753AAF28()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 376) = v5;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753AB728()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2753ABE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_10_11();
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v20[23];
  v37 = v20[22];
  v38 = v20[20];
  v39 = v20[19];
  v40 = v20[18];

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_148_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

void sub_2753ABF7C(uint64_t a1)
{
  if (!qword_2809C37A8)
  {
    sub_2753ABFD8();
    v1 = sub_2753B6308();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C37A8);
    }
  }
}

unint64_t sub_2753ABFD8()
{
  result = qword_2809C37B0;
  if (!qword_2809C37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C37B0);
  }

  return result;
}

void sub_2753AC02C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_304_0();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2753AC08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[61] = a3;
  v5[62] = v4;
  v5[59] = a1;
  v5[60] = a2;
  v6 = type metadata accessor for FacetCollection<>.Traits(0, *(a2 + 16), a3, a4);
  v5[63] = v6;
  v5[64] = *(v6 - 8);
  v5[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753AC154, 0, 0);
}

uint64_t sub_2753AC154()
{
  OUTLINED_FUNCTION_3();
  sub_2753B6978();
  *(v0 + 112) = *(v0 + 144);
  *(v0 + 125) = *(v0 + 157);
  sub_275314888(v0 + 112);
  sub_2753B6978();
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 93) = *(v0 + 189);
  sub_275314888(v0 + 80);
  sub_2753B6978();
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 61) = *(v0 + 221);
  sub_275314888(v0 + 48);
  sub_2753B6978();
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 29) = *(v0 + 253);
  sub_275314888(v0 + 16);
  if (*(v0 + 42) == 1 || (sub_2753B6978(), *(v0 + 272) = *(v0 + 304), *(v0 + 285) = *(v0 + 317), sub_275314888(v0 + 272), *(v0 + 299) == 1))
  {
    FacetCollection<>.traits.getter(*(v0 + 480), *(v0 + 520));
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v0 + 528) = v1;
    *v1 = v2;
    v1[1] = sub_2753AC320;

    return FacetCollection<>.Traits.value.getter(v0 + 464);
  }

  else
  {
    OUTLINED_FUNCTION_66_5();

    OUTLINED_FUNCTION_35_0();

    return v4();
  }
}

uint64_t sub_2753AC320()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[67] = v0;

  (*(v3[64] + 8))(v3[65], v3[63]);
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753AC44C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 464);
  sub_2753B6978();
  *(v0 + 336) = *(v0 + 368);
  *(v0 + 349) = *(v0 + 381);
  sub_275314888(v0 + 336);
  if (*(v0 + 362) == 1 && (v1 & 4) != 0)
  {
    v2 = *(v0 + 472);
    v3 = &unk_288407E40;
  }

  else
  {
    sub_2753B6978();
    *(v0 + 400) = *(v0 + 432);
    *(v0 + 413) = *(v0 + 445);
    sub_275314888(v0 + 400);
    if (*(v0 + 427) != 1 || (v1 & 2) == 0)
    {
      OUTLINED_FUNCTION_66_5();
      goto LABEL_9;
    }

    v2 = *(v0 + 472);
    v3 = &unk_288407E70;
  }

  *v2 = v3;
  *(v2 + 8) = 0;
LABEL_9:

  OUTLINED_FUNCTION_35_0();

  return v4();
}

uint64_t sub_2753AC55C()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_2753AC5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a3;
  v5 = *(a2 + 16);
  v4[7] = v5;
  v4[8] = type metadata accessor for FacetCollection<>.Asset(255, v5, a3, a4);
  sub_2753B72A8();
  v4[9] = swift_task_alloc();
  sub_2753AC02C(0, &qword_2809C3790, type metadata accessor for AssetRecipe, MEMORY[0x277D83D88]);
  v4[10] = swift_task_alloc();
  v6 = sub_2753B6A38();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for MusicAssetCandidate(0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753AC78C, 0, 0);
}

uint64_t sub_2753AC78C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[2].i64[1];
  sub_2753B3484(0);
  v3 = v2;
  v4 = swift_task_alloc();
  v0[9].i64[1] = v4;
  v4[1] = vextq_s8(v0[3], v0[3], 8uLL);
  v4[2].i64[0] = v1;
  OUTLINED_FUNCTION_0_14();
  sub_2753AC02C(0, v5, v6, MEMORY[0x277D83940]);
  v8 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[10].i64[0] = v9;
  *v9 = v10;
  v9[1] = sub_2753AC8B4;

  return MEMORY[0x282200600](&v0[2], v3, v8, 0, 0, &unk_2753CDA30, v4, v3);
}

uint64_t sub_2753AC8B4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2753AC9B8()
{
  v32 = v0;
  v1 = v0 + 32;
  v2 = *(v0 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    sub_2753B35E8(v2);
    v2 = v29;
  }

  v3 = *(v2 + 16);
  v4 = *(*(v0 + 128) + 80);
  *(v0 + 216) = v4;
  v31[0] = v2 + ((v4 + 32) & ~v4);
  v31[1] = v3;
  sub_2753AE680(v31);
  v5 = *(v2 + 16);
  *(v0 + 168) = v5;
  if (!v5)
  {
LABEL_7:
    OUTLINED_FUNCTION_52_5();

    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_173();

    __asm { BRAA            X2, X16 }
  }

  v6 = 0;
  v1 -= 16;
  *(v0 + 220) = *MEMORY[0x277D65138];
  while (1)
  {
    *(v0 + 176) = v6;
    *(v0 + 184) = v2;
    if (v6 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v7 = *(v0 + 220);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    OUTLINED_FUNCTION_46_4();
    v14 = v12 + v13 * v6;
    (*(v11 + 16))(v8, v14 + *(v15 + 20), v10);
    (*(v11 + 32))(v9, v8, v10);
    LODWORD(v8) = (*(v11 + 88))(v9, v10);
    EnumTagSinglePayload = (*(v11 + 8))(v9, v10);
    if (v8 != v7)
    {
      break;
    }

    v6 = *(v0 + 176) + 1;
    if (v6 == *(v0 + 168))
    {
      goto LABEL_7;
    }
  }

  if (v6 >= *(v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = *(v0 + 136);
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  OUTLINED_FUNCTION_3_14();
  sub_2753B36B0(v14, v21, v24);
  v25 = *v21;
  v26 = v21[1];
  *(v0 + 16) = v25;
  *(v0 + 24) = v26;

  sub_2753B6D08();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v23);
  if (EnumTagSinglePayload == 1)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2821CC420](EnumTagSinglePayload, v17, v18);
  }

  OUTLINED_FUNCTION_1_16();
  sub_2753B370C();
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  OUTLINED_FUNCTION_7_6();
  swift_getWitnessTable();
  *v27 = v0;
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC420](EnumTagSinglePayload, v17, v18);
}

uint64_t sub_2753ACC98()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2753ACD94()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 80);
  (*(*(*(v0 + 64) - 8) + 8))(*(v0 + 72));
  v2 = type metadata accessor for AssetRecipe(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2753B35E8(*(v0 + 184));
    v4 = v8;
  }

  v5 = *(v0 + 176);
  if (v5 >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_2753A9ECC(*(v0 + 80), v4 + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 192) * v5 + *(*(v0 + 120) + 24));
    OUTLINED_FUNCTION_52_5();

    v6 = OUTLINED_FUNCTION_40_4();

    v7(v6);
  }
}

uint64_t sub_2753ACED0()
{
  (*(*(*(v0 + 64) - 8) + 8))(*(v0 + 72));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    sub_2753B35E8(v4);
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v5 = *(v0 + 176);
  if (v5 >= *(v4 + 16))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v6 = v4 + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 192) * v5;
    v7 = *(*(v0 + 120) + 28);
    v8 = *(v6 + v7);
    *(v6 + v7) = *(v0 + 208);

    do
    {
      v9 = *(v0 + 176) + 1;
      if (v9 == *(v0 + 168))
      {
        OUTLINED_FUNCTION_52_5();

        v32 = OUTLINED_FUNCTION_40_4();

        return v33(v32);
      }

      *(v0 + 176) = v9;
      *(v0 + 184) = v4;
      if (v9 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v10 = *(v0 + 220);
      v11 = *(v0 + 112);
      v12 = *(v0 + 88);
      v13 = *(v0 + 96);
      OUTLINED_FUNCTION_46_4();
      (*(v13 + 16))(v11, v14 + v15 * v9 + *(v16 + 20), v12);
      v17 = OUTLINED_FUNCTION_28_1();
      v18(v17);
      v19 = OUTLINED_FUNCTION_97_0();
      LODWORD(v11) = v20(v19);
      v21 = OUTLINED_FUNCTION_97_0();
      isUniquelyReferenced_nonNull_native = v22(v21);
    }

    while (v11 == v10);
    if (v9 >= *(v4 + 16))
    {
      goto LABEL_18;
    }

    v23 = *(v0 + 136);
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    OUTLINED_FUNCTION_3_14();
    v26 = OUTLINED_FUNCTION_27();
    sub_2753B36B0(v26, v27, v28);
    v29 = *v23;
    v30 = v23[1];
    *(v0 + 16) = v29;
    *(v0 + 24) = v30;

    sub_2753B6D08();

    isUniquelyReferenced_nonNull_native = __swift_getEnumTagSinglePayload(v24, 1, v25);
    if (isUniquelyReferenced_nonNull_native != 1)
    {
      OUTLINED_FUNCTION_1_16();
      sub_2753B370C();
      v31 = swift_task_alloc();
      *(v0 + 200) = v31;
      OUTLINED_FUNCTION_7_6();
      swift_getWitnessTable();
      *v31 = v0;
      isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_15_8();

      return MEMORY[0x2821CC420](isUniquelyReferenced_nonNull_native, v2, v3);
    }
  }

  __break(1u);
  return MEMORY[0x2821CC420](isUniquelyReferenced_nonNull_native, v2, v3);
}

uint64_t sub_2753AD1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for MusicAssetCandidate(0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_2753B3484(0);
  v5[11] = v7;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_2753AC02C(0, &qword_2809C3838, sub_2753B3484, MEMORY[0x277D83D88]);
  v5[16] = swift_task_alloc();
  sub_2753AC02C(0, &qword_2809C3840, sub_2753B3484, MEMORY[0x277D856B8]);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753AD3A8, 0, 0);
}

uint64_t sub_2753AD3A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v0[2] = v0[5];
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = sub_2753B3684;
  v5[5] = v4;
  type metadata accessor for FacetCollection<>.Asset(255, v2, v1, v6);
  sub_2753B6CD8();
  swift_getWitnessTable();
  sub_2753B6EB8();

  sub_2753B7118();
  v0[20] = MEMORY[0x277D84F90];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[21] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_12_7(v7);

  return MEMORY[0x2822002E8](v9);
}

uint64_t sub_2753AD52C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2753AD614()
{
  v1 = v0[16];
  v2 = v0[11];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[20];
  if (EnumTagSinglePayload == 1)
  {
    v5 = v0[3];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v5 = v4;

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_309_0();

    __asm { BRAA            X1, X16 }
  }

  v8 = v0[15];
  v46 = v0[13];
  v47 = v0[14];
  v45 = v0[12];
  v44 = v0[10];
  v41 = v0[8];
  v9 = *(v1 + 1);
  v10 = *(v2 + 48);
  v11 = *(v2 + 64);
  v12 = *&v1[v11];
  *v8 = *v1;
  *(v8 + 1) = v9;
  v13 = sub_2753B6A38();
  v14 = *(v13 - 8);
  v43 = *(v14 + 32);
  v43(&v8[v10], &v1[v10], v13);
  *&v8[v11] = v12;
  sub_2753B36B0(v8, v47, sub_2753B3484);
  v39 = v47[1];
  v40 = *v47;
  v42 = *(v2 + 48);

  sub_2753B36B0(v8, v46, sub_2753B3484);

  v38 = *(v2 + 48);

  v15 = v41[6];
  v16 = type metadata accessor for AssetRecipe(0);
  __swift_storeEnumTagSinglePayload(&v44[v15], 1, 1, v16);
  sub_2753B36B0(v8, v45, sub_2753B3484);

  v17 = *(v2 + 48);
  v18 = *(v45 + *(v2 + 64));
  *v44 = v40;
  *(v44 + 1) = v39;
  v43(&v44[v41[5]], (v46 + v38), v13);
  *&v44[v41[7]] = v18;
  v19 = *(v14 + 8);
  v19(v45 + v17, v13);
  v19(v47 + v42, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = OUTLINED_FUNCTION_14_6();
    sub_275385418(v31, v32, v33, v34);
    v21 = v35;
  }

  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_275385418(v22 > 1, v23 + 1, 1, v21);
    v21 = v36;
  }

  v24 = v0[10];
  sub_2753B370C();
  *(v21 + 16) = v23 + 1;
  OUTLINED_FUNCTION_5_8();
  sub_2753B2B70(v24, v25, v26);
  v0[20] = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[21] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_12_7(v27);
  OUTLINED_FUNCTION_309_0();

  return MEMORY[0x2822002E8](v29);
}

uint64_t sub_2753AD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a1;
  v22[1] = a4;
  v10 = type metadata accessor for FacetCollection<>.Asset(0, a5, a6, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  v14 = MEMORY[0x277D85720];
  sub_2753AC02C(0, &qword_2809C32C0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v22 - v16;
  v18 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v11 + 16))(v13, a3, v10);
  v19 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a5;
  *(v20 + 5) = a6;
  *(v20 + 6) = v22[0];
  *(v20 + 7) = a2;
  (*(v11 + 32))(&v20[v19], v13, v10);

  sub_2753ADF14(v17, &unk_2753CDA40, v20);
  return sub_2753B3960(v17, &qword_2809C32C0, v14);
}

uint64_t sub_2753ADBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x2822009F8](sub_2753ADBF4, 0, 0);
}

uint64_t sub_2753ADBF4()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  sub_2753B3484(0);
  v7 = *(v6 + 48);
  *(v0 + 80) = v7;
  *(v0 + 84) = *(v6 + 64);
  *v5 = v4;
  v5[1] = v3;

  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v10 = type metadata accessor for FacetCollection<>.Asset(0, v1, v2, v9);
  OUTLINED_FUNCTION_7_6();
  WitnessTable = swift_getWitnessTable();
  *v8 = v0;
  v8[1] = sub_2753ADCF8;

  return MEMORY[0x2821CC418](v5 + v7, v10, WitnessTable);
}

uint64_t sub_2753ADCF8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753ADDF4()
{
  *(*(v0 + 16) + *(v0 + 84)) = 0;
  OUTLINED_FUNCTION_19_0();
  return v1();
}

uint64_t sub_2753ADE20()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);

  v6 = (v5 + v2);
  *v5 = v4;
  v5[1] = v3;
  *v6 = 0x726F727265;
  v6[1] = 0xE500000000000000;
  v7 = *MEMORY[0x277D65138];
  sub_2753B6A38();
  OUTLINED_FUNCTION_9();
  (*(v8 + 104))(v6, v7);
  *(*(v0 + 16) + *(v0 + 84)) = v1;
  OUTLINED_FUNCTION_19_0();
  v11 = v9;

  return v11();
}

uint64_t sub_2753ADF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x277D85720];
  sub_2753AC02C(0, &qword_2809C32C0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  sub_2753B39C8(a1, v20 - v10, &qword_2809C32C0, v8);
  v12 = sub_2753B7148();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2753B3960(v11, &qword_2809C32C0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2753B7138();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_2753B70C8();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_2753B3484(0);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_2753AE13C(char *a1, uint64_t (*a2)(uint64_t, uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  type metadata accessor for FacetCollection<>.Asset(255, a4, a5, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, v8, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_2753AE1C8()
{
  v1 = v0;
  v2 = sub_2753B6A38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2753B6898();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  (*(v3 + 16))(v5, v1, v2);
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == *MEMORY[0x277D65138])
  {
    (*(v3 + 8))(v5, v2);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v16 == *MEMORY[0x277D65148])
  {
    v17 = 2;
LABEL_7:
    (*(v3 + 96))(v5, v2);
    v18 = *(v7 + 32);
    v18(v15, v5, v6);
    v18(v13, v15, v6);
    goto LABEL_10;
  }

  if (v16 == *MEMORY[0x277D65140])
  {
    v17 = 1;
    goto LABEL_7;
  }

  if (v16 != *MEMORY[0x277D65150])
  {
    goto LABEL_21;
  }

  (*(v3 + 96))(v5, v2);
  (*(v7 + 32))(v13, v5, v6);
  v17 = 0;
LABEL_10:
  (*(v7 + 16))(v10, v13, v6);
  v19 = (*(v7 + 88))(v10, v6);
  if (v19 == *MEMORY[0x277D650D8])
  {
    (*(v7 + 8))(v13, v6);
    v17 += 10;
LABEL_14:
    v17 += 10;
LABEL_15:
    v17 += 10;
    return v17;
  }

  if (v19 == *MEMORY[0x277D650C8])
  {
    (*(v7 + 8))(v13, v6);
    goto LABEL_14;
  }

  if (v19 == *MEMORY[0x277D650C0])
  {
    (*(v7 + 8))(v13, v6);
    goto LABEL_15;
  }

  if (v19 == *MEMORY[0x277D650D0])
  {
    (*(v7 + 8))(v13, v6);
    return v17;
  }

LABEL_21:
  result = sub_2753B7708();
  __break(1u);
  return result;
}

unint64_t sub_2753AE5A8()
{
  result = qword_2809C37C0;
  if (!qword_2809C37C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C37C0);
  }

  return result;
}

void sub_2753AE5EC(uint64_t a1)
{
  if (!qword_2809C37C8)
  {
    sub_2753ABF7C(255);
    sub_2753AA1C8(&qword_2809C37D0, sub_2753ABF7C, MEMORY[0x277D64F10]);
    v1 = sub_2753B6528();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C37C8);
    }
  }
}

uint64_t sub_2753AE680(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MusicAssetCandidate(0);
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MusicAssetCandidate(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2753AF2B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2753AE7B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2753AE7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2753B6A38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v102 = &v69[-v13];
  v100 = sub_2753B6898();
  v14 = *(v100 - 8);
  v15 = MEMORY[0x28223BE20](v100);
  v85 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v69[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v87 = &v69[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v80 = &v69[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v86 = &v69[-v24];
  MEMORY[0x28223BE20](v23);
  v79 = &v69[-v25];
  v26 = type metadata accessor for MusicAssetCandidate(0);
  v27 = MEMORY[0x28223BE20](v26);
  v91 = &v69[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v109 = &v69[-v30];
  result = MEMORY[0x28223BE20](v29);
  v107 = &v69[-v33];
  v71 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v34 = *a4;
  v35 = *(v32 + 72);
  v105 = (v9 + 88);
  v106 = (v9 + 16);
  v104 = *MEMORY[0x277D65138];
  v99 = *MEMORY[0x277D65148];
  v82 = *MEMORY[0x277D65140];
  v78 = *MEMORY[0x277D65150];
  v97 = (v14 + 32);
  v98 = (v9 + 96);
  v96 = (v14 + 16);
  v95 = (v14 + 88);
  v94 = *MEMORY[0x277D650D8];
  v93 = (v14 + 8);
  v92 = (v9 + 8);
  v81 = *MEMORY[0x277D650C8];
  v36 = v34 + v35 * (a3 - 1);
  v89 = -v35;
  v37 = a1 - a3;
  v77 = *MEMORY[0x277D650C0];
  v90 = v34;
  v70 = v35;
  v38 = v34 + v35 * a3;
  v76 = *MEMORY[0x277D650D0];
  v83 = v12;
  v101 = v8;
  v88 = v26;
  while (2)
  {
    v75 = a3;
    v72 = v38;
    v73 = v37;
    v39 = v37;
    v74 = v36;
    v40 = v102;
    do
    {
      v41 = v107;
      sub_2753B36B0(v38, v107, type metadata accessor for MusicAssetCandidate);
      sub_2753B36B0(v36, v109, type metadata accessor for MusicAssetCandidate);
      v42 = *v106;
      (*v106)(v40, &v41[*(v26 + 20)], v8);
      v43 = *v105;
      v44 = (*v105)(v40, v8);
      if (v44 == v104)
      {
        (*v92)(v40, v8);
        v108 = 0x7FFFFFFFFFFFFFFFLL;
        v45 = v12;
        goto LABEL_19;
      }

      if (v44 == v99)
      {
        v103 = v39;
        v46 = 2;
LABEL_10:
        v108 = v46;
        v47 = v102;
        (*v98)(v102, v8);
        v48 = *v97;
        v49 = v79;
        v50 = v100;
        (*v97)(v79, v47, v100);
        v51 = v86;
        v48(v86, v49, v50);
        v39 = v103;
        goto LABEL_13;
      }

      if (v44 == v82)
      {
        v103 = v39;
        v46 = 1;
        goto LABEL_10;
      }

      v52 = v100;
      if (v44 != v78)
      {
        goto LABEL_50;
      }

      (*v98)(v40, v8);
      v51 = v86;
      v50 = v52;
      (*v97)(v86, v40, v52);
      v108 = 0;
LABEL_13:
      v53 = v84;
      (*v96)(v84, v51, v50);
      v54 = (*v95)(v53, v50);
      if (v54 == v94)
      {
        (*v93)(v51, v50);
        v55 = v108 + 10;
        v45 = v83;
        v8 = v101;
        v26 = v88;
LABEL_17:
        v57 = v55 + 10;
LABEL_18:
        v108 = v57 + 10;
        goto LABEL_19;
      }

      v56 = v50;
      v26 = v88;
      if (v54 == v81)
      {
        (*v93)(v86, v50);
        v45 = v83;
        v8 = v101;
        v55 = v108;
        goto LABEL_17;
      }

      v45 = v83;
      v8 = v101;
      if (v54 == v77)
      {
        (*v93)(v86, v56);
        v57 = v108;
        goto LABEL_18;
      }

      if (v54 != v76)
      {
        goto LABEL_50;
      }

      (*v93)(v86, v56);
LABEL_19:
      v42(v45, &v109[*(v26 + 20)], v8);
      v58 = v43(v45, v8);
      if (v58 == v104)
      {
        v12 = v45;
        (*v92)(v45, v8);
        v59 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_34;
      }

      if (v58 == v99)
      {
        v103 = v39;
        v59 = 2;
LABEL_25:
        (*v98)(v45, v8);
        v60 = *v97;
        v61 = v80;
        v62 = v100;
        (*v97)(v80, v45, v100);
        v63 = v87;
        v60(v87, v61, v62);
        v26 = v88;
        v39 = v103;
        goto LABEL_28;
      }

      if (v58 == v82)
      {
        v103 = v39;
        v59 = 1;
        goto LABEL_25;
      }

      v62 = v100;
      if (v58 != v78)
      {
        goto LABEL_50;
      }

      (*v98)(v45, v101);
      v63 = v87;
      (*v97)(v87, v45, v62);
      v59 = 0;
LABEL_28:
      v64 = v85;
      (*v96)(v85, v63, v62);
      v65 = (*v95)(v64, v62);
      v66 = v62;
      if (v65 == v94)
      {
        (*v93)(v63, v62);
        v59 += 10;
        v8 = v101;
LABEL_32:
        v59 += 10;
LABEL_33:
        v12 = v45;
        v59 += 10;
        goto LABEL_34;
      }

      v8 = v101;
      if (v65 == v81)
      {
        (*v93)(v87, v66);
        goto LABEL_32;
      }

      if (v65 == v77)
      {
        (*v93)(v87, v66);
        goto LABEL_33;
      }

      if (v65 != v76)
      {
        goto LABEL_50;
      }

      v12 = v45;
      (*v93)(v87, v66);
LABEL_34:
      sub_2753B370C();
      result = sub_2753B370C();
      v40 = v102;
      if (v59 >= v108)
      {
        break;
      }

      if (!v90)
      {
        __break(1u);
LABEL_50:
        result = sub_2753B7708();
        __break(1u);
        return result;
      }

      v67 = v91;
      sub_2753B2B70(v38, v91, type metadata accessor for MusicAssetCandidate);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2753B2B70(v67, v36, type metadata accessor for MusicAssetCandidate);
      v36 += v89;
      v38 += v89;
    }

    while (!__CFADD__(v39++, 1));
    a3 = v75 + 1;
    v36 = v74 + v70;
    v37 = v73 - 1;
    v38 = v72 + v70;
    if (v75 + 1 != v71)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2753AF2B8(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v199 = a1;
  v255 = sub_2753B6A38();
  v6 = *(v255 - 8);
  v7 = MEMORY[0x28223BE20](v255);
  v250 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v247 = &v196 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v217 = &v196 - v12;
  MEMORY[0x28223BE20](v11);
  v213 = &v196 - v13;
  v232 = sub_2753B6898();
  v14 = *(v232 - 8);
  v15 = MEMORY[0x28223BE20](v232);
  v229 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v228 = &v196 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v227 = &v196 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v225 = &v196 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v234 = &v196 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v224 = &v196 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v208 = &v196 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v207 = &v196 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v206 = &v196 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v202 = &v196 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v205 = &v196 - v36;
  MEMORY[0x28223BE20](v35);
  v201 = &v196 - v37;
  v238 = type metadata accessor for MusicAssetCandidate(0);
  v218 = *(v238 - 8);
  v38 = MEMORY[0x28223BE20](v238);
  v209 = &v196 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v237 = &v196 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v254 = &v196 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v249 = &v196 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v196 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v221 = &v196 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v197 = &v196 - v52;
  MEMORY[0x28223BE20](v51);
  v196 = &v196 - v53;
  v219 = a3;
  v54 = a3[1];
  if (v54 >= 1)
  {
    v55 = 0;
    v252 = (v6 + 88);
    v253 = (v6 + 16);
    v251 = *MEMORY[0x277D65138];
    v245 = *MEMORY[0x277D65148];
    v231 = *MEMORY[0x277D65140];
    v223 = *MEMORY[0x277D65150];
    v243 = (v14 + 32);
    v244 = (v6 + 96);
    v241 = (v14 + 88);
    v242 = (v14 + 16);
    v240 = *MEMORY[0x277D650D8];
    v230 = *MEMORY[0x277D650C8];
    v222 = *MEMORY[0x277D650C0];
    v216 = *MEMORY[0x277D650D0];
    v246 = (v14 + 8);
    v239 = (v6 + 8);
    v56 = MEMORY[0x277D84F90];
    v198 = a4;
    v57 = v247;
    v211 = v48;
    while (2)
    {
      v58 = v55 + 1;
      v210 = v56;
      v200 = v55;
      if (v55 + 1 >= v54)
      {
        goto LABEL_68;
      }

      v59 = v55;
      v60 = *v219;
      v14 = *(v218 + 72);
      v61 = *v219 + v14 * v58;
      v233 = v54;
      sub_2753B36B0(v61, v196, type metadata accessor for MusicAssetCandidate);
      sub_2753B36B0(v60 + v14 * v59, v197, type metadata accessor for MusicAssetCandidate);
      v62 = v238;
      v215 = sub_2753AE1C8();
      v214 = sub_2753AE1C8();
      sub_2753B370C();
      v63 = v233;
      sub_2753B370C();
      v64 = v59 + 2;
      v235 = v14;
      v6 = v60 + v14 * (v59 + 2);
      v65 = v211;
      while (1)
      {
        v66 = v64;
        if (v58 + 1 >= v63)
        {
          break;
        }

        v236 = v64;
        v226 = v58;
        v67 = v221;
        sub_2753B36B0(v6, v221, type metadata accessor for MusicAssetCandidate);
        v248 = v61;
        sub_2753B36B0(v61, v65, type metadata accessor for MusicAssetCandidate);
        v68 = *v253;
        v69 = v67 + *(v62 + 20);
        v70 = v213;
        v71 = v255;
        (*v253)(v213, v69, v255);
        v72 = *v252;
        v73 = (*v252)(v70, v71);
        if (v73 == v251)
        {
          (*v239)(v70, v255);
          v74 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        v75 = v205;
        if (v73 == v245)
        {
          v74 = 2;
LABEL_12:
          v76 = v70;
          (*v244)(v70, v255);
          v77 = *v243;
          v78 = v201;
          v79 = v76;
          v80 = v232;
          (*v243)(v201, v79, v232);
          v77(v75, v78, v80);
          v62 = v238;
          v65 = v211;
          goto LABEL_15;
        }

        if (v73 == v231)
        {
          v74 = 1;
          goto LABEL_12;
        }

        if (v73 != v223)
        {
          goto LABEL_220;
        }

        (*v244)(v70, v255);
        v80 = v232;
        (*v243)(v75, v70, v232);
        v74 = 0;
LABEL_15:
        v81 = v207;
        (*v242)(v207, v75, v80);
        v82 = (*v241)(v81, v80);
        if (v82 == v240)
        {
          (*v246)(v75, v80);
          v74 += 10;
LABEL_19:
          v63 = v233;
          v74 += 10;
LABEL_20:
          v74 += 10;
          goto LABEL_21;
        }

        if (v82 == v230)
        {
          (*v246)(v75, v232);
          goto LABEL_19;
        }

        v63 = v233;
        if (v82 == v222)
        {
          (*v246)(v75, v232);
          goto LABEL_20;
        }

        if (v82 != v216)
        {
          goto LABEL_220;
        }

        (*v246)(v75, v232);
LABEL_21:
        v83 = v217;
        v84 = v255;
        v68(v217, v65 + *(v62 + 20), v255);
        v85 = v72(v83, v84);
        if (v85 != v251)
        {
          v88 = v206;
          v87 = v248;
          if (v85 == v245)
          {
            v86 = 2;
            goto LABEL_27;
          }

          if (v85 == v231)
          {
            v86 = 1;
LABEL_27:
            v89 = v217;
            (*v244)(v217, v255);
            v90 = *v243;
            v91 = v202;
            v92 = v89;
            v93 = v232;
            (*v243)(v202, v92, v232);
            v90(v88, v91, v93);
            v62 = v238;
            v65 = v211;
          }

          else
          {
            if (v85 != v223)
            {
              goto LABEL_220;
            }

            (*v244)(v83, v255);
            v93 = v232;
            (*v243)(v88, v83, v232);
            v86 = 0;
          }

          v94 = v208;
          (*v242)(v208, v88, v93);
          v95 = (*v241)(v94, v93);
          if (v95 == v240)
          {
            (*v246)(v88, v93);
            v86 += 10;
            goto LABEL_34;
          }

          if (v95 == v230)
          {
            (*v246)(v88, v232);
LABEL_34:
            v63 = v233;
            v86 += 10;
          }

          else
          {
            v63 = v233;
            if (v95 != v222)
            {
              if (v95 != v216)
              {
                goto LABEL_220;
              }

              (*v246)(v88, v232);
              goto LABEL_36;
            }

            (*v246)(v88, v232);
          }

          v86 += 10;
          goto LABEL_36;
        }

        (*v239)(v83, v255);
        v86 = 0x7FFFFFFFFFFFFFFFLL;
        v87 = v248;
LABEL_36:
        v96 = v214 < v215;
        v14 = type metadata accessor for MusicAssetCandidate;
        sub_2753B370C();
        sub_2753B370C();
        v97 = v96 ^ (v86 >= v74);
        v66 = v236;
        v6 += v235;
        v61 = v87 + v235;
        v58 = v226 + 1;
        v64 = v236 + 1;
        if ((v97 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v58 = v63;
LABEL_47:
      v57 = v247;
      if (v214 >= v215)
      {
        goto LABEL_67;
      }

      v14 = v200;
      if (v58 < v200)
      {
        goto LABEL_210;
      }

      if (v200 >= v58)
      {
LABEL_67:
        a4 = v198;
      }

      else
      {
        if (v63 >= v66)
        {
          v98 = v66;
        }

        else
        {
          v98 = v63;
        }

        v99 = v235 * (v98 - 1);
        v100 = v235 * v98;
        v101 = v200 * v235;
        v226 = v58;
        do
        {
          if (v14 != --v58)
          {
            v102 = *v219;
            if (!*v219)
            {
              goto LABEL_217;
            }

            v6 = v102 + v101;
            sub_2753B2B70(v102 + v101, v209, type metadata accessor for MusicAssetCandidate);
            v103 = v101 < v99 || v6 >= v102 + v100;
            if (v103)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v101 != v99)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2753B2B70(v209, v102 + v99, type metadata accessor for MusicAssetCandidate);
          }

          ++v14;
          v99 -= v235;
          v100 -= v235;
          v101 += v235;
        }

        while (v14 < v58);
        a4 = v198;
        v57 = v247;
        v58 = v226;
      }

LABEL_68:
      v104 = v219[1];
      if (v58 < v104)
      {
        if (__OFSUB__(v58, v200))
        {
          goto LABEL_209;
        }

        if (v58 - v200 < a4)
        {
          v105 = v200 + a4;
          if (__OFADD__(v200, a4))
          {
            goto LABEL_211;
          }

          if (v105 >= v104)
          {
            v105 = v219[1];
          }

          v106 = v232;
          v107 = v238;
          if (v105 >= v200)
          {
            if (v58 == v105)
            {
              goto LABEL_124;
            }

            v108 = *v219;
            v109 = *(v218 + 72);
            v14 = *v219 + v109 * (v58 - 1);
            v235 = -v109;
            v110 = v200 - v58;
            v236 = v108;
            v203 = v109;
            v6 = v108 + v58 * v109;
            v204 = v105;
            while (1)
            {
              v226 = v58;
              v212 = v6;
              v214 = v110;
              v111 = v110;
              v215 = v14;
              while (1)
              {
                v248 = v111;
                v112 = v249;
                sub_2753B36B0(v6, v249, type metadata accessor for MusicAssetCandidate);
                sub_2753B36B0(v14, v254, type metadata accessor for MusicAssetCandidate);
                v113 = *v253;
                v114 = v112 + *(v107 + 20);
                v115 = v255;
                (*v253)(v57, v114, v255);
                v116 = *v252;
                v117 = (*v252)(v57, v115);
                if (v117 == v251)
                {
                  (*v239)(v57, v255);
                  v118 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_93;
                }

                if (v117 == v245)
                {
                  v233 = v113;
                  v119 = 2;
LABEL_84:
                  v120 = v247;
                  (*v244)(v247, v255);
                  v121 = *v243;
                  v122 = v224;
                  v106 = v232;
                  (*v243)(v224, v120, v232);
                  v123 = v234;
                  v121(v234, v122, v106);
                  v118 = v119;
                  v113 = v233;
                  goto LABEL_87;
                }

                if (v117 == v231)
                {
                  v233 = v113;
                  v119 = 1;
                  goto LABEL_84;
                }

                if (v117 != v223)
                {
                  goto LABEL_220;
                }

                (*v244)(v57, v255);
                v123 = v234;
                (*v243)(v234, v57, v106);
                v118 = 0;
LABEL_87:
                v124 = v228;
                (*v242)(v228, v123, v106);
                v125 = (*v241)(v124, v106);
                if (v125 == v240)
                {
                  (*v246)(v123, v106);
                  v118 += 10;
LABEL_91:
                  v107 = v238;
                  v118 += 10;
LABEL_92:
                  v118 += 10;
                  goto LABEL_93;
                }

                if (v125 == v230)
                {
                  (*v246)(v234, v106);
                  goto LABEL_91;
                }

                v107 = v238;
                if (v125 == v222)
                {
                  (*v246)(v234, v106);
                  goto LABEL_92;
                }

                if (v125 != v216)
                {
                  goto LABEL_220;
                }

                (*v246)(v234, v106);
LABEL_93:
                v126 = v250;
                v127 = v255;
                v113(v250, v254 + *(v107 + 20), v255);
                v128 = v116(v126, v127);
                if (v128 == v251)
                {
                  (*v239)(v250, v255);
                  v129 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_108;
                }

                v130 = v227;
                if (v128 == v245)
                {
                  v129 = 2;
LABEL_99:
                  v131 = v250;
                  (*v244)(v250, v255);
                  v132 = *v243;
                  v133 = v131;
                  v134 = v225;
                  (*v243)(v225, v133, v106);
                  v132(v130, v134, v106);
                  v107 = v238;
                  goto LABEL_102;
                }

                if (v128 == v231)
                {
                  v129 = 1;
                  goto LABEL_99;
                }

                if (v128 != v223)
                {
                  goto LABEL_220;
                }

                v135 = v250;
                (*v244)(v250, v255);
                (*v243)(v130, v135, v106);
                v129 = 0;
LABEL_102:
                v136 = v229;
                (*v242)(v229, v130, v106);
                v137 = (*v241)(v136, v106);
                if (v137 == v240)
                {
                  (*v246)(v130, v106);
                  v129 += 10;
LABEL_106:
                  v129 += 10;
LABEL_107:
                  v129 += 10;
                  goto LABEL_108;
                }

                if (v137 == v230)
                {
                  (*v246)(v130, v106);
                  goto LABEL_106;
                }

                if (v137 == v222)
                {
                  (*v246)(v130, v106);
                  goto LABEL_107;
                }

                if (v137 != v216)
                {
                  goto LABEL_220;
                }

                (*v246)(v130, v106);
LABEL_108:
                sub_2753B370C();
                sub_2753B370C();
                if (v129 >= v118)
                {
                  break;
                }

                v57 = v247;
                v138 = v248;
                if (!v236)
                {
                  __break(1u);
LABEL_215:
                  __break(1u);
LABEL_216:
                  __break(1u);
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  __break(1u);
                  while (1)
                  {
LABEL_220:
                    sub_2753B7708();
                    __break(1u);
                  }
                }

                v139 = v237;
                sub_2753B2B70(v6, v237, type metadata accessor for MusicAssetCandidate);
                swift_arrayInitWithTakeFrontToBack();
                sub_2753B2B70(v139, v14, type metadata accessor for MusicAssetCandidate);
                v14 += v235;
                v6 += v235;
                v103 = __CFADD__(v138, 1);
                v111 = v138 + 1;
                if (v103)
                {
                  goto LABEL_122;
                }
              }

              v57 = v247;
LABEL_122:
              v58 = v226 + 1;
              v14 = v215 + v203;
              v110 = v214 - 1;
              v6 = v212 + v203;
              if (v226 + 1 == v204)
              {
                v58 = v204;
                goto LABEL_124;
              }
            }
          }

LABEL_212:
          __break(1u);
          goto LABEL_213;
        }
      }

LABEL_124:
      v140 = v200;
      if (v58 < v200)
      {
        goto LABEL_208;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v226 = v58;
      if (isUniquelyReferenced_nonNull_native)
      {
        v56 = v210;
      }

      else
      {
        sub_275384E68();
        v56 = v186;
      }

      v6 = v56[2];
      v14 = v6 + 1;
      if (v6 >= v56[3] >> 1)
      {
        sub_275384E68();
        v56 = v187;
      }

      v56[2] = v14;
      v142 = v56 + 4;
      v143 = &v56[2 * v6 + 4];
      v144 = v226;
      *v143 = v140;
      v143[1] = v144;
      v248 = *v199;
      if (!v248)
      {
        goto LABEL_218;
      }

      if (!v6)
      {
LABEL_173:
        v54 = v219[1];
        v55 = v226;
        a4 = v198;
        if (v226 >= v54)
        {
          goto LABEL_178;
        }

        continue;
      }

      break;
    }

    while (1)
    {
      v145 = v14 - 1;
      v146 = &v142[2 * v14 - 2];
      v147 = &v56[2 * v14];
      if (v14 >= 4)
      {
        break;
      }

      if (v14 == 3)
      {
        v148 = v56[4];
        v149 = v56[5];
        v158 = __OFSUB__(v149, v148);
        v150 = v149 - v148;
        v151 = v158;
LABEL_144:
        if (v151)
        {
          goto LABEL_195;
        }

        v163 = *v147;
        v162 = v147[1];
        v164 = __OFSUB__(v162, v163);
        v165 = v162 - v163;
        v166 = v164;
        if (v164)
        {
          goto LABEL_198;
        }

        v167 = v146[1];
        v168 = v167 - *v146;
        if (__OFSUB__(v167, *v146))
        {
          goto LABEL_201;
        }

        if (__OFADD__(v165, v168))
        {
          goto LABEL_203;
        }

        if (v165 + v168 >= v150)
        {
          if (v150 < v168)
          {
            v145 = v14 - 2;
          }

          goto LABEL_166;
        }

        goto LABEL_159;
      }

      if (v14 < 2)
      {
        goto LABEL_197;
      }

      v170 = *v147;
      v169 = v147[1];
      v158 = __OFSUB__(v169, v170);
      v165 = v169 - v170;
      v166 = v158;
LABEL_159:
      if (v166)
      {
        goto LABEL_200;
      }

      v172 = *v146;
      v171 = v146[1];
      v158 = __OFSUB__(v171, v172);
      v173 = v171 - v172;
      if (v158)
      {
        goto LABEL_202;
      }

      if (v173 < v165)
      {
        goto LABEL_173;
      }

LABEL_166:
      if (v145 - 1 >= v14)
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
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
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
        goto LABEL_212;
      }

      if (!*v219)
      {
        goto LABEL_215;
      }

      v177 = v56;
      v178 = &v142[2 * v145 - 2];
      v179 = *v178;
      v180 = v145;
      v6 = &v142[2 * v145];
      v181 = *(v6 + 8);
      v182 = v220;
      sub_2753B0C50(*v219 + *(v218 + 72) * *v178, *v219 + *(v218 + 72) * *v6, *v219 + *(v218 + 72) * v181, v248);
      v14 = v182;
      if (v182)
      {
      }

      if (v181 < v179)
      {
        goto LABEL_190;
      }

      v183 = v142;
      v184 = v177[2];
      if (v180 > v184)
      {
        goto LABEL_191;
      }

      *v178 = v179;
      v178[1] = v181;
      if (v180 >= v184)
      {
        goto LABEL_192;
      }

      v220 = 0;
      v14 = v184 - 1;
      memmove(v6, (v6 + 16), 16 * (v184 - 1 - v180));
      v56 = v177;
      v177[2] = v184 - 1;
      v185 = v184 > 2;
      v57 = v247;
      v142 = v183;
      if (!v185)
      {
        goto LABEL_173;
      }
    }

    v152 = &v142[2 * v14];
    v153 = *(v152 - 8);
    v154 = *(v152 - 7);
    v158 = __OFSUB__(v154, v153);
    v155 = v154 - v153;
    if (v158)
    {
      goto LABEL_193;
    }

    v157 = *(v152 - 6);
    v156 = *(v152 - 5);
    v158 = __OFSUB__(v156, v157);
    v150 = v156 - v157;
    v151 = v158;
    if (v158)
    {
      goto LABEL_194;
    }

    v159 = v147[1];
    v160 = v159 - *v147;
    if (__OFSUB__(v159, *v147))
    {
      goto LABEL_196;
    }

    v158 = __OFADD__(v150, v160);
    v161 = v150 + v160;
    if (v158)
    {
      goto LABEL_199;
    }

    if (v161 >= v155)
    {
      v175 = *v146;
      v174 = v146[1];
      v158 = __OFSUB__(v174, v175);
      v176 = v174 - v175;
      if (v158)
      {
        goto LABEL_207;
      }

      if (v150 < v176)
      {
        v145 = v14 - 2;
      }

      goto LABEL_166;
    }

    goto LABEL_144;
  }

  v56 = MEMORY[0x277D84F90];
LABEL_178:
  v14 = v220;
  v255 = *v199;
  if (!v255)
  {
    goto LABEL_219;
  }

  v6 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_213:
    v6 = sub_2753B20A8(v6);
  }

  v188 = (v6 + 16);
  v189 = *(v6 + 16);
  while (v189 >= 2)
  {
    if (!*v219)
    {
      goto LABEL_216;
    }

    v190 = v6;
    v191 = (v6 + 16 * v189);
    v192 = *v191;
    v6 = &v188[2 * v189];
    v193 = *(v6 + 8);
    sub_2753B0C50(*v219 + *(v218 + 72) * *v191, *v219 + *(v218 + 72) * *v6, *v219 + *(v218 + 72) * v193, v255);
    if (v14)
    {
      break;
    }

    if (v193 < v192)
    {
      goto LABEL_204;
    }

    if (v189 - 2 >= *v188)
    {
      goto LABEL_205;
    }

    *v191 = v192;
    v191[1] = v193;
    v194 = *v188 - v189;
    if (*v188 < v189)
    {
      goto LABEL_206;
    }

    v189 = *v188 - 1;
    memmove(v6, (v6 + 16), 16 * v194);
    *v188 = v189;
    v6 = v190;
  }
}

uint64_t sub_2753B0C50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_2753B6A38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v132[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v150 = &v132[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v157 = &v132[-v16];
  MEMORY[0x28223BE20](v15);
  v156 = &v132[-v17];
  v18 = sub_2753B6898();
  v164 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v138 = &v132[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v132[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v136 = &v132[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v135 = &v132[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v142 = &v132[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v134 = &v132[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v144 = &v132[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v143 = &v132[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v147 = &v132[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v140 = &v132[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v132[-v40];
  MEMORY[0x28223BE20](v39);
  v139 = &v132[-v42];
  v170 = type metadata accessor for MusicAssetCandidate(0);
  v43 = MEMORY[0x28223BE20](v170);
  v141 = &v132[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = MEMORY[0x28223BE20](v43);
  v166 = &v132[-v46];
  v47 = MEMORY[0x28223BE20](v45);
  v169 = &v132[-v48];
  MEMORY[0x28223BE20](v47);
  v165 = &v132[-v49];
  v51 = *(v50 + 72);
  if (!v51)
  {
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (a2 - a1 == 0x8000000000000000 && v51 == -1)
  {
    goto LABEL_139;
  }

  v53 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v51 != -1)
  {
    v152 = v12;
    v153 = a3;
    v173 = a1;
    v172 = a4;
    v167 = (v9 + 88);
    v168 = (v9 + 16);
    v163 = (v9 + 96);
    v162 = (v164 + 32);
    v161 = (v164 + 16);
    v160 = (v164 + 88);
    v159 = (v164 + 8);
    v158 = (v9 + 8);
    v55 = v51;
    v56 = MEMORY[0x277D65138];
    v57 = v53 / v51;
    v148 = v18;
    if ((a2 - a1) / v51 >= v53 / v51)
    {
      sub_27538593C(a2, v57, a4);
      v149 = a4;
      v92 = a4 + v57 * v55;
      v93 = -v55;
      LODWORD(v165) = *v56;
      LODWORD(v147) = *MEMORY[0x277D65148];
      LODWORD(v144) = *MEMORY[0x277D65140];
      LODWORD(v140) = *MEMORY[0x277D65150];
      LODWORD(v146) = *MEMORY[0x277D650D8];
      LODWORD(v143) = *MEMORY[0x277D650C8];
      LODWORD(v139) = *MEMORY[0x277D650C0];
      v133 = *MEMORY[0x277D650D0];
      v94 = v92;
      v154 = a1;
      v96 = v152;
      v95 = v153;
      v169 = v93;
LABEL_76:
      v151 = (a2 + v93);
      v97 = v95;
      v98 = v94;
      v155 = a2;
      v99 = v141;
      v153 = v94;
      while (1)
      {
        if (v92 <= v149)
        {
          v173 = a2;
          v171 = v98;
          goto LABEL_137;
        }

        if (a2 <= a1)
        {
          v173 = a2;
          v171 = v94;
          goto LABEL_137;
        }

        v157 = v97;
        v145 = v98;
        v164 = v92;
        v156 = (v92 + v93);
        v100 = v166;
        sub_2753B36B0(v92 + v93, v166, type metadata accessor for MusicAssetCandidate);
        sub_2753B36B0(v151, v99, type metadata accessor for MusicAssetCandidate);
        v101 = *v168;
        v102 = &v100[*(v170 + 20)];
        v103 = v150;
        (*v168)(v150, v102, v8);
        v104 = *v167;
        v105 = (*v167)(v103, v8);
        if (v105 == v165)
        {
          (*v158)(v103, v8);
          v106 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_94;
        }

        if (v105 == v147)
        {
          break;
        }

        if (v105 == v144)
        {
          v106 = 1;
          goto LABEL_85;
        }

        if (v105 != v140)
        {
          goto LABEL_141;
        }

        (*v163)(v103, v8);
        v112 = v142;
        (*v162)(v142, v103, v18);
        v106 = 0;
LABEL_88:
        v113 = v137;
        (*v161)(v137, v112, v18);
        v114 = (*v160)(v113, v18);
        if (v114 == v146)
        {
          (*v159)(v112, v18);
          v106 += 10;
LABEL_92:
          v99 = v141;
          v106 += 10;
LABEL_93:
          v106 += 10;
          goto LABEL_94;
        }

        if (v114 == v143)
        {
          (*v159)(v142, v18);
          goto LABEL_92;
        }

        v99 = v141;
        if (v114 == v139)
        {
          (*v159)(v142, v18);
          goto LABEL_93;
        }

        if (v114 != v133)
        {
          goto LABEL_141;
        }

        (*v159)(v142, v18);
LABEL_94:
        v101(v96, v99 + *(v170 + 20), v8);
        v115 = v104(v96, v8);
        if (v115 == v165)
        {
          (*v158)(v96, v8);
          v116 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_96:
          v117 = v157;
          goto LABEL_110;
        }

        if (v115 == v147)
        {
          v116 = 2;
LABEL_101:
          (*v163)(v96, v8);
          v118 = *v162;
          v119 = v135;
          (*v162)(v135, v96, v18);
          v120 = v136;
          (v118)(v136, v119, v18);
          a1 = v154;
          goto LABEL_104;
        }

        if (v115 == v144)
        {
          v116 = 1;
          goto LABEL_101;
        }

        if (v115 != v140)
        {
          goto LABEL_141;
        }

        (*v163)(v96, v8);
        v120 = v136;
        (*v162)();
        v116 = 0;
LABEL_104:
        v121 = v138;
        (*v161)(v138, v120, v18);
        v122 = (*v160)(v121, v18);
        if (v122 == v146)
        {
          (*v159)(v120, v18);
          v116 += 10;
LABEL_108:
          v116 += 10;
          goto LABEL_109;
        }

        if (v122 == v143)
        {
          (*v159)(v120, v18);
          goto LABEL_108;
        }

        if (v122 != v139)
        {
          if (v122 != v133)
          {
            goto LABEL_141;
          }

          (*v159)(v120, v18);
          goto LABEL_96;
        }

        (*v159)(v120, v18);
LABEL_109:
        v117 = v157;
        v116 += 10;
LABEL_110:
        v123 = &v169[v117];
        sub_2753B370C();
        sub_2753B370C();
        if (v116 < v106)
        {
          v128 = v117 < v155 || v123 >= v155;
          v95 = v123;
          if (v128)
          {
            a2 = v151;
            swift_arrayInitWithTakeFrontToBack();
            v94 = v145;
            v96 = v152;
            v93 = v169;
            v92 = v164;
          }

          else
          {
            v94 = v145;
            v129 = v151;
            a2 = v151;
            v93 = v169;
            v96 = v152;
            v92 = v164;
            if (v117 != v155)
            {
              v130 = v145;
              swift_arrayInitWithTakeBackToFront();
              v92 = v164;
              a2 = v129;
              v94 = v130;
            }
          }

          goto LABEL_76;
        }

        v124 = v117 < v164 || v123 >= v164;
        a2 = v155;
        v125 = v123;
        if (v124)
        {
          v126 = v156;
          swift_arrayInitWithTakeFrontToBack();
          v97 = v123;
          v92 = v126;
          v98 = v126;
          v96 = v152;
          v94 = v153;
          v93 = v169;
        }

        else
        {
          v98 = v156;
          v97 = v123;
          v92 = v156;
          v96 = v152;
          v94 = v153;
          v93 = v169;
          if (v164 != v117)
          {
            v127 = v156;
            swift_arrayInitWithTakeBackToFront();
            v94 = v153;
            v97 = v125;
            v92 = v127;
            v98 = v127;
          }
        }
      }

      v106 = 2;
LABEL_85:
      v107 = v150;
      (*v163)(v150, v8);
      v108 = *v162;
      v109 = v134;
      v110 = v107;
      v18 = v148;
      (*v162)(v134, v110, v148);
      v111 = v142;
      (v108)(v142, v109, v18);
      a1 = v154;
      v96 = v152;
      v112 = v111;
      goto LABEL_88;
    }

    v58 = (a2 - a1) / v51;
    sub_27538593C(a1, v58, a4);
    v152 = a4 + v58 * v55;
    v171 = v152;
    LODWORD(v164) = *v56;
    LODWORD(v150) = *MEMORY[0x277D65148];
    LODWORD(v142) = *MEMORY[0x277D65140];
    LODWORD(v138) = *MEMORY[0x277D65150];
    LODWORD(v149) = *MEMORY[0x277D650D8];
    LODWORD(v141) = *MEMORY[0x277D650C8];
    LODWORD(v137) = *MEMORY[0x277D650C0];
    LODWORD(v136) = *MEMORY[0x277D650D0];
    v146 = v8;
    v145 = v41;
    v151 = v55;
    while (1)
    {
      if (a4 >= v152 || a2 >= v153)
      {
LABEL_137:
        sub_2753B20BC(&v173, &v172, &v171);
        return 1;
      }

      v60 = v165;
      sub_2753B36B0(a2, v165, type metadata accessor for MusicAssetCandidate);
      sub_2753B36B0(a4, v169, type metadata accessor for MusicAssetCandidate);
      v61 = *v168;
      v62 = v156;
      (*v168)(v156, &v60[*(v170 + 20)], v8);
      v63 = *v167;
      v64 = (*v167)(v62, v8);
      if (v64 == v164)
      {
        (*v158)(v62, v8);
        v65 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_32;
      }

      if (v64 == v150)
      {
        break;
      }

      if (v64 == v142)
      {
        v154 = a1;
        v155 = a2;
        v66 = a4;
        v67 = 1;
        goto LABEL_23;
      }

      if (v64 != v138)
      {
        goto LABEL_141;
      }

      (*v163)(v62, v8);
      (*v162)(v41, v62, v18);
      v166 = 0;
LABEL_26:
      v72 = v143;
      (*v161)(v143, v41, v18);
      v73 = (*v160)(v72, v18);
      if (v73 == v149)
      {
        (*v159)(v41, v18);
        v74 = v166 + 10;
LABEL_30:
        v75 = v74 + 10;
        goto LABEL_31;
      }

      if (v73 == v141)
      {
        (*v159)(v41, v18);
        v74 = v166;
        goto LABEL_30;
      }

      if (v73 == v137)
      {
        (*v159)(v41, v18);
        v75 = v166;
LABEL_31:
        v65 = (v75 + 10);
LABEL_32:
        v166 = v65;
        goto LABEL_33;
      }

      if (v73 != v136)
      {
        goto LABEL_141;
      }

      (*v159)(v41, v18);
LABEL_33:
      v76 = v157;
      v61(v157, &v169[*(v170 + 20)], v8);
      v77 = v63(v76, v8);
      if (v77 == v164)
      {
        (*v158)(v76, v8);
        v78 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_48;
      }

      v79 = v147;
      if (v77 == v150)
      {
        v80 = a1;
        v81 = a4;
        v78 = 2;
LABEL_39:
        v82 = v157;
        (*v163)(v157, v8);
        v83 = *v162;
        v84 = v140;
        v85 = v148;
        (*v162)(v140, v82, v148);
        v79 = v147;
        (v83)(v147, v84, v85);
        a4 = v81;
        a1 = v80;
        v18 = v85;
        v8 = v146;
        v41 = v145;
        goto LABEL_42;
      }

      if (v77 == v142)
      {
        v80 = a1;
        v81 = a4;
        v78 = 1;
        goto LABEL_39;
      }

      if (v77 != v138)
      {
        goto LABEL_141;
      }

      (*v163)(v76, v8);
      (*v162)(v79, v76, v18);
      v78 = 0;
LABEL_42:
      v86 = v144;
      (*v161)(v144, v79, v18);
      v87 = (*v160)(v86, v18);
      if (v87 == v149)
      {
        (*v159)(v79, v18);
        v78 += 10;
LABEL_46:
        v78 += 10;
LABEL_47:
        v78 += 10;
        goto LABEL_48;
      }

      if (v87 == v141)
      {
        (*v159)(v79, v18);
        goto LABEL_46;
      }

      if (v87 == v137)
      {
        (*v159)(v79, v18);
        goto LABEL_47;
      }

      if (v87 != v136)
      {
        goto LABEL_141;
      }

      (*v159)(v79, v18);
LABEL_48:
      sub_2753B370C();
      sub_2753B370C();
      if (v78 >= v166)
      {
        v88 = v151;
        v90 = &v151[a4];
        if (a1 < a4 || a1 >= v90)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v172 = v90;
        a4 += v88;
      }

      else
      {
        v88 = v151;
        if (a1 < a2 || a1 >= &v151[a2])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v88;
      }

      a1 += v88;
      v173 = a1;
    }

    v154 = a1;
    v155 = a2;
    v66 = a4;
    v67 = 2;
LABEL_23:
    v166 = v67;
    v68 = v156;
    v8 = v146;
    (*v163)(v156, v146);
    v69 = *v162;
    v70 = v139;
    v71 = v68;
    v18 = v148;
    (*v162)(v139, v71, v148);
    v41 = v145;
    (v69)(v145, v70, v18);
    a4 = v66;
    a1 = v154;
    a2 = v155;
    goto LABEL_26;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  result = sub_2753B7708();
  __break(1u);
  return result;
}

uint64_t sub_2753B20BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for MusicAssetCandidate(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2753B219C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2753B21C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2753AC02C(0, &qword_2809C2F10, sub_2753881C4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2753B22EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2753B3B24(0, &qword_2809C1418, &type metadata for MusicContent.QualifiedIdentifier, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_275385858((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2753B240C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_52_4(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_80_3();
    if (v4)
    {
      OUTLINED_FUNCTION_24_4(v9, &qword_2809C1B20, &type metadata for MusicContent.RawIdentifier);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      OUTLINED_FUNCTION_92_3(v11);
      if (a1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_38_4();
        sub_2753858A8(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2753B250C(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_52_4();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_2753B3B24(0, a5, a6, MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size_0(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v12)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2753B2618(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_52_4(), v8 == v9))
  {
LABEL_6:
    OUTLINED_FUNCTION_80_3();
    if (v5)
    {
      sub_2753AC02C(0, &qword_2809C3848, type metadata accessor for CMTimeMapping, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      OUTLINED_FUNCTION_92_3(v11);
      if (a1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_38_4();
        sub_2753858CC(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 96 * v4);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2753B2710(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_52_4(), v8 == v9))
  {
LABEL_6:
    OUTLINED_FUNCTION_80_3();
    if (v5)
    {
      OUTLINED_FUNCTION_24_4(v10, &qword_2809C35B0, MEMORY[0x277D839F8]);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_0(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_38_4();
        sub_2753858F4(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v11 + 4, (a4 + 32), 8 * v4);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_2753B27E4(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_2753AC02C(0, &qword_2809C2F20, type metadata accessor for CMTime, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_275385914(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_2753B290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2753B6D78();

  if (a4)
  {
    v8 = sub_2753B6C68();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_2753B29BC(uint64_t a1, uint64_t a2)
{
  sub_2753B7798();
  sub_2753B6688();
  v4 = sub_2753B77D8();

  return sub_2753844F4(a1, a2, v4);
}

_OWORD *sub_2753B2A34(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2753B29BC(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_2753B33B4();
  if ((sub_2753B7478() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2753B29BC(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2753B7768();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_2753A8BC4(a1, v17);
  }

  else
  {
    sub_2753B3418(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_2753B2B70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_2753B2BCC(uint64_t a1, uint64_t a2)
{
  sub_2753AC02C(0, &qword_2809C37B8, type metadata accessor for MusicAssetCandidate, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2753B2C64()
{
  result = qword_2809C37E8;
  if (!qword_2809C37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C37E8);
  }

  return result;
}

unint64_t sub_2753B2CBC()
{
  result = qword_2809C37F0;
  if (!qword_2809C37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C37F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicAssetSelectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753B2DDCLL);
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

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB00C18AssetSelectionModeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2753B2E44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2753B2E84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2753B2EC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2753B2F04()
{
  OUTLINED_FUNCTION_58_2();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_68_4(*(v0 + 8));
  }

  v5 = v2;
  if (*(*(sub_2753B6A38() - 8) + 84) == v1)
  {
    v6 = *(v5 + 20);
  }

  else
  {
    OUTLINED_FUNCTION_2_12();
    sub_2753AC02C(0, v7, v8, MEMORY[0x277D83D88]);
    v6 = *(v5 + 24);
  }

  v9 = OUTLINED_FUNCTION_54_4(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_2753B2FF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58_2();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(sub_2753B6A38() - 8) + 84) == v4)
    {
      v8 = *(v7 + 20);
    }

    else
    {
      OUTLINED_FUNCTION_2_12();
      sub_2753AC02C(0, v9, v10, MEMORY[0x277D83D88]);
      v8 = *(v7 + 24);
    }

    v11 = OUTLINED_FUNCTION_54_4(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }
}

void sub_2753B30D0(uint64_t a1)
{
  sub_2753B6A38();
  if (v1 <= 0x3F)
  {
    sub_2753AC02C(319, &qword_2809C3790, type metadata accessor for AssetRecipe, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2753AC02C(319, &qword_2809C3808, sub_275358C80, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2753B31F0()
{
  OUTLINED_FUNCTION_58_2();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_68_4(*(v0 + 16));
  }

  v5 = v1;
  sub_2753AA36C(0);
  v6 = OUTLINED_FUNCTION_54_4(*(v5 + 24));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2753B3278(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58_2();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_2753AA36C(0);
    v8 = OUTLINED_FUNCTION_54_4(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

void sub_2753B32F0(uint64_t a1)
{
  sub_2753AC02C(319, &qword_2809C3820, type metadata accessor for MusicAssetCandidate, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2753AA36C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2753B33B4()
{
  if (!qword_2809C3828)
  {
    v0 = sub_2753B7498();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3828);
    }
  }
}

_OWORD *sub_2753B3418(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2753A8BC4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_2753B3484(uint64_t a1)
{
  if (!qword_2809C3830)
  {
    sub_2753B6A38();
    sub_2753AC02C(255, &qword_2809C3808, sub_275358C80, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2809C3830);
    }
  }
}

uint64_t sub_2753B352C()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2752FD514;

  return sub_2753AD1B0(v5, v3, v8, v6, v7);
}

uint64_t sub_2753B36B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_2753B370C()
{
  v1 = OUTLINED_FUNCTION_24();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2753B3760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FacetCollection<>.Asset(0, *(v4 + 32), *(v4 + 40), a4);
  OUTLINED_FUNCTION_17_1(v5);
  v7 = *(v6 + 80);
  v8 = (v7 + 64) & ~v7;
  v10 = *(v9 + 64);
  swift_unknownObjectRelease();

  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  (*(v11 + 8))(v4 + v8);

  return MEMORY[0x2821FE8E8](v4, v8 + v10, v7 | 7);
}

uint64_t sub_2753B3848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[4];
  v7 = v4[5];
  v9 = type metadata accessor for FacetCollection<>.Asset(0, v8, v7, a4);
  OUTLINED_FUNCTION_75(v9);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[6];
  v15 = v4[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v5 + 16) = v16;
  *v16 = v17;
  v16[1] = sub_2752FE5C0;

  return sub_2753ADBCC(a1, v12, v13, v14, v15, v4 + v11, v8, v7);
}

uint64_t sub_2753B3960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2753AC02C(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2753B39C8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2753AC02C(0, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return a2;
}

uint64_t sub_2753B3A3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2753B3A74()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2752FD514;

  return sub_27539AEB4(v3, v4);
}

void sub_2753B3B24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{
  v4 = v2 + *(a1 + 24);

  return sub_2753B2B70(v1, v4, sub_2753AA36C);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_2753B2B70(v0, v1, type metadata accessor for AssetRecipe);
}

void OUTLINED_FUNCTION_24_4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_2753B3B24(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2, unint64_t *a3)
{

  return sub_2753B39C8(a1, v3, a3, type metadata accessor for MusicAssetCandidate);
}

uint64_t OUTLINED_FUNCTION_34_5()
{
}

id OUTLINED_FUNCTION_41_5()
{

  return sub_2753B290C(v1, v2, v3, v0);
}

_OWORD *OUTLINED_FUNCTION_42_4(char a1)
{

  return sub_2753B2A34((v1 + 48), v2, v3, a1);
}

void OUTLINED_FUNCTION_48_4()
{

  JUMPOUT(0x277C755D0);
}

uint64_t OUTLINED_FUNCTION_49_4(uint64_t a1)
{
  *(v2 + *(a1 + 24)) = v1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_50_5()
{

  sub_27538553C();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return MEMORY[0x2821CC270](v3, v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_5()
{
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return FacetCollection<>.Asset.id.getter(v0);
}

void OUTLINED_FUNCTION_64_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *v18 = v17;
  *(v18 + 8) = v16;
  *(v18 + 16) = a16;
}

void OUTLINED_FUNCTION_66_5()
{
  v1 = *(v0 + 472);
  *v1 = 0;
  *(v1 + 8) = 2;
}

uint64_t OUTLINED_FUNCTION_68_4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_73_5()
{
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1)
{

  return MEMORY[0x2821FDE20](v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return FacetCollection<>.Asset.id.getter(v0);
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = v1;
  sub_2753A8BC4((v2 + 16), (v2 + 48));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t URL.UserAttributes.init(url:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for URL.UserAttributes(0) + 20));
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  result = (*(v9 + 32))(a4, a1);
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t type metadata accessor for URL.UserAttributes(uint64_t a1)
{
  result = qword_2809C3868;
  if (!qword_2809C3868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2753B41BC()
{
  sub_2753B4CE0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2753C28B0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000002753BE230;
  v2 = (v0 + *(type metadata accessor for URL.UserAttributes(0) + 20));
  v3 = v2[1];
  *(inited + 48) = *v2;
  *(inited + 56) = v3;

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (inited + 40 + 16 * v4);
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_275385044();
        v5 = v12;
      }

      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_275385044();
        v5 = v13;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      goto LABEL_2;
    }
  }

  v14 = swift_setDeallocating();
  sub_275384E04(v14);
  sub_2753B4D54(0, &qword_2809C1BB0, MEMORY[0x277D83940]);
  sub_275329E9C();
  v15 = sub_2753B6D48();

  return v15;
}

uint64_t URL.UserAttributes.assetRecipe.getter()
{
  type metadata accessor for AssetRecipe(0);
  sub_2753B41BC();
  OUTLINED_FUNCTION_3_15(&qword_2809C3850);
  OUTLINED_FUNCTION_2_13(&qword_2809C3858);
  sub_2753B6118();
}

uint64_t sub_2753B4410(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetRecipe(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t URL.UserAttributes.setAssetRecipe(_:)(uint64_t a1)
{
  v41 = a1;
  v1 = type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_13();
  v38 = v3;
  sub_2753B484C(0);
  v39 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_13();
  v40 = v6;
  sub_2753B48B0(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v16 = sub_2753B41BC();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_3_15(&qword_2809C3850);
  OUTLINED_FUNCTION_2_13(&qword_2809C3858);
  v43 = v18;
  v20 = v42;
  sub_2753B6118();
  if (v20)
  {
  }

  v37[0] = v10;
  v37[1] = v16;
  v37[2] = v19;
  v37[3] = 0;
  sub_2753B4908(v41, v13, type metadata accessor for AssetRecipe);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v1);
  v21 = v40;
  v22 = *(v39 + 48);
  v42 = v15;
  sub_2753B4908(v15, v40, sub_2753B48B0);
  sub_2753B4908(v13, v21 + v22, sub_2753B48B0);
  v23 = v1;
  if (__swift_getEnumTagSinglePayload(v21, 1, v1) != 1)
  {
    v26 = v37[0];
    sub_2753B4908(v21, v37[0], sub_2753B48B0);
    if (__swift_getEnumTagSinglePayload(v21 + v22, 1, v23) != 1)
    {
      v31 = v21 + v22;
      v32 = v26;
      v33 = v38;
      sub_2753B49C0(v31, v38);
      static AssetRecipe.== infix(_:_:)(v32, v33);
      LODWORD(v39) = v34;
      sub_2753B4968(v33, type metadata accessor for AssetRecipe);
      sub_2753B4968(v13, sub_2753B48B0);
      sub_2753B4968(v32, type metadata accessor for AssetRecipe);
      sub_2753B4968(v21, sub_2753B48B0);
      if (v39)
      {

        goto LABEL_12;
      }

      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_15();
    sub_2753B4968(v13, v27);
    sub_2753B4968(v26, type metadata accessor for AssetRecipe);
LABEL_7:
    sub_2753B4968(v21, sub_2753B484C);
LABEL_8:
    sub_2753B6128();
    OUTLINED_FUNCTION_0_15();
    sub_2753B4968(v28, v29);
  }

  OUTLINED_FUNCTION_0_15();
  sub_2753B4968(v13, v24);
  if (__swift_getEnumTagSinglePayload(v21 + v22, 1, v1) != 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_15();
  sub_2753B4968(v21, v25);
LABEL_12:
  OUTLINED_FUNCTION_0_15();
  return sub_2753B4968(v35, v36);
}

void sub_2753B484C(uint64_t a1)
{
  if (!qword_2809C3860)
  {
    sub_2753B48B0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C3860);
    }
  }
}

void sub_2753B48B0(uint64_t a1)
{
  if (!qword_2809C3790)
  {
    type metadata accessor for AssetRecipe(255);
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3790);
    }
  }
}

uint64_t sub_2753B4908(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2753B4968(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2753B49C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URL.attributes(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  (*(v7 + 16))(a3, v3);
  v8 = (a3 + *(type metadata accessor for URL.UserAttributes(0) + 20));
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_2753B4AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2753B61F8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2753B4B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2753B61F8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2753B4C40(uint64_t a1)
{
  sub_2753B61F8();
  if (v1 <= 0x3F)
  {
    sub_2753B4D54(319, &qword_2809C0E08, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2753B4CE0(uint64_t a1)
{
  if (!qword_2809C3878)
  {
    sub_2753B4D54(255, &qword_2809C0E08, MEMORY[0x277D83D88]);
    v1 = sub_2753B76C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3878);
    }
  }
}

void sub_2753B4D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_13(unint64_t *a1)
{

  return sub_2753B4410(a1, &protocol conformance descriptor for AssetRecipe);
}

uint64_t OUTLINED_FUNCTION_3_15(unint64_t *a1)
{

  return sub_2753B4410(a1, &protocol conformance descriptor for AssetRecipe);
}

unint64_t sub_2753B4E78()
{
  result = qword_2809C3880;
  if (!qword_2809C3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3880);
  }

  return result;
}

uint64_t sub_2753B4F28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752E546C;

  return sub_27539BAC4();
}

unint64_t sub_2753B4FD8()
{
  result = qword_2809C3888;
  if (!qword_2809C3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3888);
  }

  return result;
}

unint64_t sub_2753B5030()
{
  result = qword_2809C3890;
  if (!qword_2809C3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3890);
  }

  return result;
}

uint64_t static Configuration.systemMusic.getter()
{
  if (qword_2809C0700 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_2809C0700);
  }
}

uint64_t static PlaybackEngine.music(configuration:)(uint64_t a1)
{
  v1 = sub_2753B54D4();

  return MEMORY[0x2821CC428](v2, &unk_28840EE68, &unk_28840EE68, v1);
}

uint64_t sub_2753B5150@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.supportsAutoplay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*Configuration.supportsAutoplay.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = Configuration.supportsAutoplay.getter() & 1;
  return sub_2753B521C;
}

uint64_t sub_2753B526C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_getKeyPath();
  a2();
  sub_2753B6908();

  return v5;
}

uint64_t sub_2753B52D4@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.supportsSing.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2753B5354(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_getKeyPath();
  a3();
  return sub_2753B6918();
}

uint64_t (*Configuration.supportsSing.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = Configuration.supportsSing.getter() & 1;
  return sub_2753B5410;
}

uint64_t sub_2753B5438()
{
  sub_2753B68F8();
  sub_2753B72E8();
  sub_2753B6C98();
  v0 = sub_2753B68D8();

  sub_2753B68E8();
  sub_2753B68C8();
  Configuration.supportsSing.setter(1);
  Configuration.supportsAutoplay.setter(1);

  qword_2809C3898 = v0;
  return result;
}

unint64_t sub_2753B54D4()
{
  result = qword_2809C38A0;
  if (!qword_2809C38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38A0);
  }

  return result;
}

uint64_t sub_2753B5528@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.supportsAutoplay.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2753B5580()
{
  result = qword_2809C38A8;
  if (!qword_2809C38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38A8);
  }

  return result;
}

uint64_t sub_2753B55D4@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.supportsSing.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2753B562C()
{
  result = qword_2809C38B0;
  if (!qword_2809C38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38B0);
  }

  return result;
}

uint64_t static Configuration.applicationMusic()()
{
  sub_2753B72E8();
  sub_2753B6C98();
  v0 = sub_2753B68D8();
  sub_2753B68C8();
  Configuration.supportsSing.setter(0);
  Configuration.supportsAutoplay.setter(0);
  return v0;
}

uint64_t static Configuration.multiplayerMusic()()
{
  if (qword_2809C0700 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_2809C0700);
  }

  v0 = qword_2809C3898;

  Configuration.supportsSing.setter(0);
  return v0;
}

unint64_t sub_2753B576C()
{
  result = qword_2809C38B8;
  if (!qword_2809C38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38B8);
  }

  return result;
}

unint64_t sub_2753B57C4()
{
  result = qword_2809C38C0;
  if (!qword_2809C38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38C0);
  }

  return result;
}

unint64_t sub_2753B581C()
{
  result = qword_2809C38C8;
  if (!qword_2809C38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38C8);
  }

  return result;
}

unint64_t sub_2753B5874()
{
  result = qword_2809C38D0;
  if (!qword_2809C38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38D0);
  }

  return result;
}

unint64_t sub_2753B58CC()
{
  result = qword_2809C38D8;
  if (!qword_2809C38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38D8);
  }

  return result;
}

unint64_t sub_2753B5924()
{
  result = qword_2809C38E0;
  if (!qword_2809C38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return swift_once();
}
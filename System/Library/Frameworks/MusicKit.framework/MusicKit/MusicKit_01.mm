uint64_t sub_217205FF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217206040()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_2172AE558;
  }

  else
  {
    v5 = sub_2172062E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t OUTLINED_FUNCTION_101_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return sub_21726A630(va, &a25, a3, a4);
}

__n128 OUTLINED_FUNCTION_101_5()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

void *OUTLINED_FUNCTION_101_6(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  return memcpy(va, a2, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_101_7()
{

  return sub_217751F08();
}

uint64_t OUTLINED_FUNCTION_101_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_101_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_101_12()
{
  v1 = v0[59];
  v0[68] = v1;
  v0[69] = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_101_13@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return sub_217265A08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_101_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 16);

  return type metadata accessor for RelatedItem(0, v6, v5, a4);
}

uint64_t sub_217206300()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_2172AE558;
  }

  else
  {
    v5 = sub_217206408;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_217206424()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[8];
  v2 = sub_2177513E8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    OUTLINED_FUNCTION_20_0();

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[14] = Strong;
    if (Strong)
    {
      sub_217752518();
      v0[15] = sub_217752508();
      v7 = sub_217752498();

      return MEMORY[0x2822009F8](sub_21721E278, v7, v6);
    }

    else
    {
      sub_2171F0738(v0[8], &unk_27CB282D0, &qword_21776C3D0);
      OUTLINED_FUNCTION_10_10();
      sub_2171FC248(v8, v9, MEMORY[0x277CC9D70]);
      v10 = swift_task_alloc();
      v11 = OUTLINED_FUNCTION_29_3(v10);
      *v11 = v12;
      v13 = OUTLINED_FUNCTION_8_14(v11);

      return MEMORY[0x282200308](v13);
    }
  }
}

uint64_t sub_2172065CC()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[8];
  v2 = sub_2177513E8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[14] = Strong;
    if (Strong)
    {
      sub_217752518();
      v0[15] = sub_217752508();
      v7 = sub_217752498();

      return MEMORY[0x2822009F8](sub_21721E458, v7, v6);
    }

    else
    {
      sub_2171F06D8(v0[8], &unk_27CB282D0, &qword_21776C3D0);
      sub_2171F8214();
      v8 = swift_task_alloc();
      v9 = OUTLINED_FUNCTION_29_3(v8);
      *v9 = v10;
      v11 = OUTLINED_FUNCTION_0_72(v9);

      return MEMORY[0x282200308](v11);
    }
  }
}

uint64_t sub_217206770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2172067C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void MusicLibraryRequest.init()(uint64_t a1@<X8>)
{
  if (qword_280BE8C28 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE8C30;
  v3 = objc_opt_self();

  v4 = [v3 mainBundle];
  v5 = NSBundle.isMusicApp.getter();

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 22) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = MEMORY[0x277D84F90];
  *(a1 + 48) = MEMORY[0x277D84F90];
  *(a1 + 56) = v6;
  *(a1 + 64) = v6;
  *(a1 + 72) = v5;
}

uint64_t sub_2172068E8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v3 = sub_217752418();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_217206978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MusicPredicateValue(319, *(a1 + 120), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *MusicPredicate.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  *(v4 + 2) = a1;
  v7 = *(v6 + 144);
  type metadata accessor for MusicPredicateValue(0, *(v6 + 120), a3, a4);
  OUTLINED_FUNCTION_41_0();
  (*(v8 + 32))(&v4[v7], a2);
  return v4;
}

uint64_t MusicPredicate.__allocating_init(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MusicPredicate.init(_:_:)(a1, a2, v5, v6);
  return v4;
}

uint64_t sub_217206B28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217206B88(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_217206C30(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x217206E34);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_217206E5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t MusicLibrarySectionedRequest.response()(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = a2;
  v4 = *(v2 + 16);
  *(v3 + 256) = *v2;
  *(v3 + 272) = v4;
  v5 = *(v2 + 48);
  *(v3 + 288) = *(v2 + 32);
  *(v3 + 304) = v5;
  *(v3 + 368) = *(v2 + 64);
  *(v3 + 384) = *(v2 + 80);
  *(v3 + 329) = *(v2 + 97);
  *(v3 + 320) = *(v2 + 88);
  OUTLINED_FUNCTION_35_1();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_21720703C()
{
  v28 = v0;
  v1 = (v0 + 320);
  static MusicAuthorization.currentStatus.getter(v27);
  switch(LOBYTE(v27[0]))
  {
    case 3:

      break;
    default:
      v2 = sub_217753058();

      if ((v2 & 1) == 0)
      {
        sub_21728FC9C(v3, v4, v5);
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_32_4();

        __asm { BRAA            X1, X16 }
      }

      return;
  }

  v7 = *(*(v0 + 360) + 16);
  if (OUTLINED_FUNCTION_23_9(v3, v4, &protocol descriptor for MusicLibrarySectionExtendedRequestable))
  {
    v9 = (*(v8 + 8))(*(*(v0 + 360) + 24), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(*(v0 + 360) + 24), *(*(v0 + 360) + 40));
  }

  else
  {
    v9 = (*(*(*(v0 + 360) + 32) + 8))(*(*(v0 + 360) + 24), *(v0 + 368), *(v0 + 384), *(*(v0 + 360) + 24), *(*(v0 + 360) + 40), v7);
  }

  *(v0 + 392) = 0;
  if (v7 == &type metadata for TitledSection)
  {
    v18 = *(v0 + 272);
    *(v0 + 136) = *(v0 + 256);
    *(v0 + 152) = v18;
    v19 = *(v0 + 304);
    *(v0 + 168) = *(v0 + 288);
    v20 = *(v0 + 384);
    *(v0 + 184) = v19;
    *(v0 + 200) = *(v0 + 368);
    *(v0 + 216) = v20;
    *(v0 + 224) = *v1;
    *(v0 + 233) = *(v0 + 329);
    v21 = swift_task_alloc();
    *(v0 + 400) = v21;
    *v21 = v0;
    v21[1] = sub_21728CE28;
    OUTLINED_FUNCTION_32_4();

    sub_217202C68(v22, v23);
  }

  else if (OUTLINED_FUNCTION_23_9(v9, v10, &protocol descriptor for MusicLibraryRequestable))
  {
    v13 = *(v0 + 384);
    v14 = *(v0 + 272);
    *(v0 + 16) = *(v0 + 256);
    *(v0 + 32) = v14;
    v15 = *(v0 + 304);
    *(v0 + 48) = *(v0 + 288);
    *(v0 + 64) = v15;
    *(v0 + 80) = *(v0 + 368);
    *(v0 + 96) = v13;
    *(v0 + 104) = *v1;
    *(v0 + 113) = *(v0 + 329);
    v16 = swift_task_alloc();
    *(v0 + 416) = v16;
    *v16 = v0;
    v16[1] = sub_21728CF84;
    OUTLINED_FUNCTION_32_4();

    sub_21728D830();
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000019, 0x80000002177AAE80);
    v25 = OUTLINED_FUNCTION_27_8();
    MEMORY[0x21CEA23B0](v25);

    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AAEA0, v26);
    OUTLINED_FUNCTION_19_4("Fatal error");
    OUTLINED_FUNCTION_32_4();
  }
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dynamic_cast_existential_1_conditional(v3, v3, a3);
}

void OUTLINED_FUNCTION_23_10()
{

  JUMPOUT(0x21CEA4360);
}

void *OUTLINED_FUNCTION_23_11@<X0>(unint64_t a1@<X8>)
{

  return sub_217276678((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_23_12(uint64_t a1)
{

  return sub_2172A9DC0();
}

unint64_t OUTLINED_FUNCTION_23_14()
{
  v4 = *(v1 + 200);
  *(v2 + 16) = v0;
  return v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_23_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v11, v12, v9 + 1296, a5, v10, a7, a8, v9 + 1344, a9);
}

uint64_t OUTLINED_FUNCTION_156()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_23_16(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_23_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
}

void OUTLINED_FUNCTION_23_23()
{
  *(v4 + v2[12]) = v3;
  *(v4 + v2[13]) = v0;
  *(v4 + v2[14]) = v1;
  *(v4 + v2[15]) = v5;
}

__n128 OUTLINED_FUNCTION_23_25()
{
  v2 = *(v0 + 16);
  *(v1 + 3296) = *v0;
  *(v1 + 3312) = v2;
  result = *(v0 + 32);
  *(v1 + 3328) = result;
  *(v1 + 3344) = *(v0 + 48);
  return result;
}

void *OUTLINED_FUNCTION_23_27()
{

  return memcpy((v0 + 4064), (v1 + 552), 0x221uLL);
}

void OUTLINED_FUNCTION_23_30()
{
  v1 = *(v0 + 936);
  *(v0 + 928) = *(v0 + 928);
  *(v0 + 936) = v1;
}

uint64_t OUTLINED_FUNCTION_23_35(uint64_t a1)
{
  v4 = (v1 + *(a1 + 40));
  *v4 = v3;
  v4[1] = v2;
  return v1 + *(a1 + 44);
}

uint64_t OUTLINED_FUNCTION_23_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_23_44()
{

  type metadata accessor for CGColor(0);
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1)
{

  return sub_217752D08();
}

unint64_t OUTLINED_FUNCTION_23_46()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;

  return sub_2177228E8();
}

__n128 OUTLINED_FUNCTION_22_2()
{
  v2 = *(v1 + 464);
  *(v0 + 2464) = *(v1 + 448);
  *(v0 + 2480) = v2;
  result = *(v1 + 480);
  v4 = *(v1 + 496);
  *(v0 + 2496) = result;
  *(v0 + 2512) = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_23_47()
{
  v2 = *(v1 + 704);
  result = *v0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_49(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2177532C8();
}

uint64_t OUTLINED_FUNCTION_23_52()
{
  v4 = *(v0 + 160);
  *v1 = *(v0 + 144);
  v1[1] = v4;
  v1[2] = *(v0 + 176);
  *(v0 + 256) = *(v0 + 192);

  return sub_217283C5C(v2, 0);
}

uint64_t OUTLINED_FUNCTION_23_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

void OUTLINED_FUNCTION_23_55(uint64_t a1)
{

  sub_2174BE7E4(v2, v3, v4, v1 + 288);
}

uint64_t OUTLINED_FUNCTION_23_57()
{
  v2 = v0[327];
  v3 = v0[328];
  __swift_project_boxed_opaque_existential_1(v0 + 324, v2);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_23_58()
{

  return sub_2177528F8();
}

uint64_t OUTLINED_FUNCTION_23_60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2 + a1 * v5 + 32;

  return sub_2174A87A0(v7, a5, a3, a4);
}

void static TitledSection.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 == &type metadata for Playlist.Entry)
  {
    sub_2173546F8(a1, a2, a3);
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }
}

id getMPModelPropertySongLibraryAddEligible()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongLibraryAddEligibleSymbolLoc_ptr;
  v8 = getMPModelPropertySongLibraryAddEligibleSymbolLoc_ptr;
  if (!getMPModelPropertySongLibraryAddEligibleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongLibraryAddEligible");
    getMPModelPropertySongLibraryAddEligibleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertySongShouldShowComposer()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongShouldShowComposerSymbolLoc_ptr;
  v8 = getMPModelPropertySongShouldShowComposerSymbolLoc_ptr;
  if (!getMPModelPropertySongShouldShowComposerSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongShouldShowComposer");
    getMPModelPropertySongShouldShowComposerSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertySongTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongTitleSymbolLoc_ptr;
  v8 = getMPModelPropertySongTitleSymbolLoc_ptr;
  if (!getMPModelPropertySongTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongTitle");
    getMPModelPropertySongTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertySongUserRating()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongUserRatingSymbolLoc_ptr;
  v8 = getMPModelPropertySongUserRatingSymbolLoc_ptr;
  if (!getMPModelPropertySongUserRatingSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongUserRating");
    getMPModelPropertySongUserRatingSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertySongIsDisliked()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongIsDislikedSymbolLoc_ptr;
  v8 = getMPModelPropertySongIsDislikedSymbolLoc_ptr;
  if (!getMPModelPropertySongIsDislikedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongIsDisliked");
    getMPModelPropertySongIsDislikedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipSongComposer()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipSongComposerSymbolLoc_ptr;
  v8 = getMPModelRelationshipSongComposerSymbolLoc_ptr;
  if (!getMPModelRelationshipSongComposerSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipSongComposer");
    getMPModelRelationshipSongComposerSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyComposerName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyComposerNameSymbolLoc_ptr;
  v8 = getMPModelPropertyComposerNameSymbolLoc_ptr;
  if (!getMPModelPropertyComposerNameSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyComposerName");
    getMPModelPropertyComposerNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumYear()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumYearSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumYearSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumYearSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumYear");
    getMPModelPropertyAlbumYearSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipSongArtist()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipSongArtistSymbolLoc_ptr;
  v8 = getMPModelRelationshipSongArtistSymbolLoc_ptr;
  if (!getMPModelRelationshipSongArtistSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipSongArtist");
    getMPModelRelationshipSongArtistSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistNameSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistNameSymbolLoc_ptr;
  if (!getMPModelPropertyArtistNameSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistName");
    getMPModelPropertyArtistNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipPlaylistEntryMovie()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipPlaylistEntryMovieSymbolLoc_ptr;
  v8 = getMPModelRelationshipPlaylistEntryMovieSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistEntryMovieSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipPlaylistEntryMovie");
    getMPModelRelationshipPlaylistEntryMovieSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyMovieHasCloudSyncSource()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyMovieHasCloudSyncSourceSymbolLoc_ptr;
  v8 = getMPModelPropertyMovieHasCloudSyncSourceSymbolLoc_ptr;
  if (!getMPModelPropertyMovieHasCloudSyncSourceSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyMovieHasCloudSyncSource");
    getMPModelPropertyMovieHasCloudSyncSourceSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyMovieLibraryAdded()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyMovieLibraryAddedSymbolLoc_ptr;
  v8 = getMPModelPropertyMovieLibraryAddedSymbolLoc_ptr;
  if (!getMPModelPropertyMovieLibraryAddedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyMovieLibraryAdded");
    getMPModelPropertyMovieLibraryAddedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVEpisodeDuration()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVEpisodeDurationSymbolLoc_ptr;
  v8 = getMPModelPropertyTVEpisodeDurationSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeDurationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVEpisodeDuration");
    getMPModelPropertyTVEpisodeDurationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVEpisodeLibraryAddEligible()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVEpisodeLibraryAddEligibleSymbolLoc_ptr;
  v8 = getMPModelPropertyTVEpisodeLibraryAddEligibleSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeLibraryAddEligibleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVEpisodeLibraryAddEligible");
    getMPModelPropertyTVEpisodeLibraryAddEligibleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVEpisodeNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVEpisodeNumberSymbolLoc_ptr;
  v8 = getMPModelPropertyTVEpisodeNumberSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVEpisodeNumber");
    getMPModelPropertyTVEpisodeNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVEpisodeTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVEpisodeTitleSymbolLoc_ptr;
  v8 = getMPModelPropertyTVEpisodeTitleSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVEpisodeTitle");
    getMPModelPropertyTVEpisodeTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipTVEpisodeShow()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipTVEpisodeShowSymbolLoc_ptr;
  v8 = getMPModelRelationshipTVEpisodeShowSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodeShowSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipTVEpisodeShow");
    getMPModelRelationshipTVEpisodeShowSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumTrackCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumTrackCountSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumTrackCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumTrackCount");
    getMPModelPropertyAlbumTrackCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumLibraryAdded()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumLibraryAddedSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumLibraryAddedSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumLibraryAddedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumLibraryAdded");
    getMPModelPropertyAlbumLibraryAddedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumDateFavorited()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumDateFavoritedSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumDateFavoritedSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumDateFavoritedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumDateFavorited");
    getMPModelPropertyAlbumDateFavoritedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumIsDisliked()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumIsDislikedSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumIsDislikedSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsDislikedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumIsDisliked");
    getMPModelPropertyAlbumIsDislikedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_217209760(uint64_t a1, uint64_t a2)
{
  v17 = v2;
  *(v2 + 544) = *(*(v2 + 536) + 24);
  v3 = OUTLINED_FUNCTION_23_9(a1, a2, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  if (!v3 || (v5 = OUTLINED_FUNCTION_23_9(v3, v4, &protocol descriptor for UnderlyingLegacyModelObjectConvertible), *(v2 + 552) = v5, *(v2 + 560) = v6, !v5))
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4("Fatal error");
  }

  v7 = OUTLINED_FUNCTION_23_9(v5, v6, &protocol descriptor for MusicItemTypeValueProviding);
  *(v2 + 568) = v7;
  *(v2 + 576) = v8;
  if (!v7)
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL);
    return OUTLINED_FUNCTION_19_4("Fatal error");
  }

  v9 = *(v2 + 536);
  v10 = OUTLINED_FUNCTION_26_6();
  v11(v10);
  *(v2 + 601) = __dst[0];
  memcpy(__dst, (v2 + 80), sizeof(__dst));
  v16 = *(v2 + 600);
  v12 = sub_21720E6A0(v9);
  *(v2 + 584) = v12;
  *(v2 + 16) = v2;
  *(v2 + 56) = v2 + 304;
  *(v2 + 24) = sub_21728D13C;
  swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_9_8(v13);
  *(v2 + 200) = 1107296256;
  OUTLINED_FUNCTION_8_10();
  [v12 performWithCompletionHandler_];

  return MEMORY[0x282200938](v2 + 16);
}

id getMPModelPropertyPlaylistArtwork()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistArtworkSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistArtworkSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistArtwork");
    getMPModelPropertyPlaylistArtworkSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyPlaylistName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistNameSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistNameSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistNameSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistName");
    getMPModelPropertyPlaylistNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_27_6()
{
  sub_21725CF00(v1, 0);

  return sub_21725CF00(v0, 0);
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return sub_217753348();
}

uint64_t OUTLINED_FUNCTION_27_9()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_27_13()
{
  v9 = v0[76];
  v10 = v0[77];
  v0[140] = v3;
  v0[141] = v4;
  v11 = v0[8];
  v0[142] = v0[9];
  v0[143] = v2;
  v0[144] = v5;
  v0[145] = v11;
  v0[146] = v6;
  v0[147] = v1;
  v0[148] = v7;
  v0[154] = v9;
  v0[155] = v10;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_27_14(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_27_16()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_73_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_21@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W8>)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t *OUTLINED_FUNCTION_27_24()
{
  *(v0 + 664) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 640));
}

uint64_t OUTLINED_FUNCTION_27_28()
{

  return sub_217202078(v1 + 112, v3, v0, v2);
}

uint64_t OUTLINED_FUNCTION_27_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_27_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_36()
{
  sub_2171F3F0C((v0 + 216), v0 + 176);
  v1 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  *(v0 + 584) = *(v0 + 336);
  return v1 + 32;
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2)
{

  return sub_217752EE8();
}

void *OUTLINED_FUNCTION_27_40()
{

  return __swift_project_boxed_opaque_existential_1(v1, v0);
}

uint64_t OUTLINED_FUNCTION_27_41()
{

  return sub_21729C79C(v0, v1 - 144);
}

void *OUTLINED_FUNCTION_27_45@<X0>(_OWORD *a1@<X8>)
{
  v5 = *(v2 + 222);
  *a1 = *(v2 + 206);
  a1[1] = v5;
  v6 = *(v2 + 254);
  a1[2] = *(v2 + 238);
  a1[3] = v6;
  v7 = *(v2 + 142);
  v8 = *(v2 + 158);
  v9 = *(v2 + 190);
  *(v3 + 586) = *(v2 + 174);
  *(v3 + 602) = v9;
  *(v3 + 554) = v7;
  *(v3 + 570) = v8;

  return memcpy((v3 + 618), (v1 + 2478), 0x41uLL);
}

__n128 OUTLINED_FUNCTION_27_47()
{
  v1 = *(v0 + 144);
  *(v0 + 32) = *(v0 + 160);
  *(v0 + 48) = v1;
  result = *(v0 + 176);
  *(v0 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_48(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_51()
{

  return sub_217752128();
}

void OUTLINED_FUNCTION_27_53()
{

  sub_2172B240C();
}

uint64_t OUTLINED_FUNCTION_27_54()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_27_56(uint64_t a1)
{

  return sub_217752D08();
}

id getMPModelPropertyPlaylistType()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistTypeSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistTypeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistTypeSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistType");
    getMPModelPropertyPlaylistTypeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyPlaylistLibraryAdded()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistLibraryAddedSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistLibraryAddedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistLibraryAddedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistLibraryAdded");
    getMPModelPropertyPlaylistLibraryAddedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_3_18()
{
  v4 = *(v2 + 8);

  MusicItem.identifierSet.getter(v1, v4, v0 + 640);
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2)
{

  return sub_217752038();
}

unint64_t OUTLINED_FUNCTION_15_11@<X0>(uint64_t a1@<X8>)
{

  return sub_21729C0E8(0xD000000000000020, (a1 - 32) | 0x8000000000000000, (v1 + 496));
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t result, double a2)
{
  *(result + 48) = a2;
  *(result + 56) = 0x3FF0000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_26@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>)
{
  v14 = *(v7 + 88);
  v15 = *(v7 + 96);
  *v3 = v2;
  *(v3 + 8) = a1;
  *(v3 + 16) = v5;
  *(v3 + 24) = v11;
  *(v3 + 32) = v4;
  *(v3 + 40) = v10;
  *(v3 + 48) = v6;
  *(v3 + 56) = v8;
  *(v3 + 64) = v9;
  *(v3 + 88) = a2;
  *(v3 + 104) = *(v12 - 96);
  *(v3 + 112) = v14;
  *(v3 + 120) = v15;

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_3_28()
{
  v0[4] = 0;
  v0[6] = 0;
  v0[8] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
}

void OUTLINED_FUNCTION_3_31()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_40()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 176);
  __swift_project_boxed_opaque_existential_1((v0 - 208), v1);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v1, v2, v0 - 168);
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1, uint64_t a2)
{

  return sub_217752F08();
}

void OUTLINED_FUNCTION_3_45(char a1@<W8>)
{
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = a1;
}

void OUTLINED_FUNCTION_3_49(unint64_t a1@<X8>)
{

  sub_2172B1A50(a1 > 1, v2, 1, v1);
}

double OUTLINED_FUNCTION_3_50()
{
  *(v0 + 784) = 0;
  result = 0.0;
  v1[9] = 0u;
  v1[10] = 0u;
  v1[8] = 0u;
  return result;
}

void OUTLINED_FUNCTION_3_52()
{
  v0[81] = 0;
  v0[80] = 0;
  v0[82] = 0;
}

uint64_t OUTLINED_FUNCTION_3_53()
{
  result = 0;
  *(v0 + 640) = 0;
  *(v0 + 632) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_59(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_64(uint64_t a1)
{

  return sub_217752F88();
}

uint64_t OUTLINED_FUNCTION_3_65(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_67()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v11, v12, v9 + 1264, a5, v10, a7, a8, v9 + 368, a9);
}

uint64_t OUTLINED_FUNCTION_3_77(uint64_t a1, uint64_t a2)
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_3_81(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_82(uint64_t a1)
{

  return sub_217752D08();
}

void OUTLINED_FUNCTION_3_86()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_3_87()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_3_91()
{

  return sub_2175CB780(v5, v1, v0, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_3_93()
{

  return sub_21736C3E8();
}

void OUTLINED_FUNCTION_3_94(unint64_t a1@<X8>)
{

  sub_2172B1AC0(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_96()
{
  v1 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);

  return sub_217202078(a1, va, v63, v62);
}

uint64_t OUTLINED_FUNCTION_3_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

char *OUTLINED_FUNCTION_3_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_217661D6C(a1, a2, a3, va);
}

uint64_t OUTLINED_FUNCTION_3_107(uint64_t a1, uint64_t a2)
{

  return sub_217752E58();
}

void OUTLINED_FUNCTION_3_110()
{
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
  v0[18] = 0;
  v0[20] = 0;
  v0[22] = 0;
}

uint64_t OUTLINED_FUNCTION_3_111()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_3_113(uint64_t a1, uint64_t a2)
{

  return sub_217752EE8();
}

uint64_t OUTLINED_FUNCTION_3_116@<X0>(uint64_t a1@<X8>)
{

  return sub_21726A630(a1 + v4, v1 + 5816, v2, v3);
}

uint64_t OUTLINED_FUNCTION_3_118()
{
  v1 = *(v0 + 824);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, *(v0 + 800));
  return v1;
}

__n128 OUTLINED_FUNCTION_3_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12, unint64_t a13, unint64_t a14)
{
  result = a12;
  *v14 = a12;
  v14[1].n128_u64[0] = a13;
  v14[1].n128_u64[1] = a14;
  return result;
}

void *OUTLINED_FUNCTION_3_128(void *a1)
{

  return memcpy(a1, v1, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_3_132()
{
  sub_217275680(*(v4 - 72), v3);
  sub_217275680(v2, v1);
  return v0;
}

void OUTLINED_FUNCTION_3_135()
{

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_3_136()
{
  v3 = *(v0 + 32);
  *(v3 + 16) = v1;
  v4 = v3 + (v2 << 6);
  result = *(v0 + 48);
  v6 = *(v0 + 64);
  v7 = *(v0 + 80);
  *(v4 + 73) = *(v0 + 89);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = result;
  return result;
}

id getMPModelPropertyPlaylistTraits()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistTraitsSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistTraitsSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistTraitsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistTraits");
    getMPModelPropertyPlaylistTraitsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyPlaylistIsFavorite()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistIsFavoriteSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistIsFavoriteSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsFavoriteSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistIsFavorite");
    getMPModelPropertyPlaylistIsFavoriteSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_21720B4CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
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
    *(result + 520) = 0u;
    *(result + 544) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
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
      *(result + 545) = 1;
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

    *(result + 545) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21720B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BEAA00;
  if (!qword_280BEAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BEAA00);
  }

  return result;
}

void *SharedInstanceManager.init(_:)()
{
  OUTLINED_FUNCTION_143();
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  v1[7] = v3;
  v1[2] = v2;
  v1[3] = v0;

  OUTLINED_FUNCTION_1_73();
  sub_217752338();
  v1[4] = sub_217751DC8();
  WeakValuesDictionary.init()(&v7);
  v1[5] = v7;
  OUTLINED_FUNCTION_1_73();
  sub_217752338();
  v5 = sub_217751DC8();

  v1[6] = v5;
  return v1;
}

uint64_t sub_21720B7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *v2;
  v5 = *(v15 + 88);
  v6 = sub_2177528F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_storeEnumTagSinglePayload(&v14 - v11, 1, 1, v5);
  sub_21720BA74();
  v16 = v12;
  v17 = v2;
  v18 = a1;
  sub_21720BA7C();

  (*(v7 + 16))(v9, v12, v6);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000004CLL, 0x80000002177AFE60);
    sub_217753018();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
    (*(*(v5 - 8) + 32))(a2, v9, v5);
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

void sub_21720BA7C()
{
  OUTLINED_FUNCTION_0_80();
  v1();
  os_unfair_lock_unlock(*(v0 + 16));
}

uint64_t sub_21720BACC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v41 = a3;
  v43 = a1;
  v4 = *a2;
  v5 = *(*a2 + 80);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = v33 - v6;
  v7 = *(v4 + 88);
  v8 = sub_2177528F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  sub_21720BEDC(v17, v18);
  v40 = a2;
  v19 = *(v4 + 96);
  v39 = v5;
  sub_217751E68();

  v21 = v43;
  v37 = v9[5];
  v37(v43, v16, v8, v20);
  v38 = v9[2];
  v38(v13, v21, v8);
  LODWORD(v21) = __swift_getEnumTagSinglePayload(v13, 1, v7);
  v22 = v13;
  v23 = v8;
  v24 = v8;
  v25 = v9[1];
  result = v25(v22, v24);
  if (v21 == 1)
  {
    sub_21720C114(v27, v42);
    v33[1] = type metadata accessor for WeakValuesDictionary(0, v39, v7, v19);
    WeakValuesDictionary.subscript.getter();

    v29 = v43;
    v37(v43, v16, v23, v28);
    v30 = v36;
    v38(v36, v29, v23);
    LODWORD(v29) = __swift_getEnumTagSinglePayload(v30, 1, v7);
    result = v25(v30, v23);
    if (v29 == 1)
    {
      v31 = v41;
      (v40[2])(v41);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v7);
      v32 = v43;
      (v37)(v43, v16, v23);
      (*(v34 + 16))(v35, v31, v39);
      v38(v16, v32, v23);
      swift_beginAccess();
      WeakValuesDictionary.subscript.setter();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1, uint64_t a2)
{

  return sub_2171F50C0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_75_6(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_75_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a32, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, __n128 a33, __int128 a34, __int128 a35)
{
  *(v36 + 104) = a34;
  *(v36 + 120) = a35;
  *(v36 + 136) = a29;
  result = a33;
  *(v36 + 152) = a33;
  *(v36 + 168) = v35;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_11(uint64_t a1)
{

  return Encoder.dataRequestConfiguration.getter(a1, v1);
}

uint64_t OUTLINED_FUNCTION_75_12(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 3792, v3, v2);
}

uint64_t OUTLINED_FUNCTION_75_13()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_75_14()
{
  __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));

  return swift_getDynamicType();
}

void *OUTLINED_FUNCTION_75_16(void *a1)
{

  return memcpy(a1, (v1 + 856), 0x180uLL);
}

double OUTLINED_FUNCTION_75_18()
{
  v2 = v0[157];
  v3 = v0[158];
  v4 = v0[159];
  v5 = v0[160];

  return sub_217283940(v2, v3, v4, v5);
}

uint64_t sub_21720C114@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_126(v2 + 40, a1);
  *a2 = *(v2 + 40);
  return sub_217751DE8();
}

void WeakValuesDictionary.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = *(v2 + 24);
  v4 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v32 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v3);
  sub_2171F5808();
  sub_217751E68();
  v18 = *&v34[0];
  if (*&v34[0])
  {
    if ([*&v34[0] weakObjectValue])
    {
      sub_2177529C8();

      swift_unknownObjectRelease();
      sub_2172124CC(&v33, v34);
    }

    else
    {

      memset(v34, 0, sizeof(v34));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    v19 = swift_dynamicCast();
    v20 = (v32 + 8);
    if (v19)
    {
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v3);
      (*v20)(v1, v4);
      v24 = *(v10 + 32);
      v24(v14, v8, v3);
      v24(v1, v14, v3);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v3);
    }

    else
    {
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v3);
      (*v20)(v8, v4);
    }
  }

  OUTLINED_FUNCTION_13();
}

void sub_21720C770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPPropertySetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPPropertySetClass_softClass_0;
  v7 = getMPPropertySetClass_softClass_0;
  if (!getMPPropertySetClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPPropertySetClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPPropertySetClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21720C860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertySongDateFavorited()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongDateFavoritedSymbolLoc_ptr;
  v8 = getMPModelPropertySongDateFavoritedSymbolLoc_ptr;
  if (!getMPModelPropertySongDateFavoritedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongDateFavorited");
    getMPModelPropertySongDateFavoritedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertySongTrackNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongTrackNumberSymbolLoc_ptr;
  v8 = getMPModelPropertySongTrackNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongTrackNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongTrackNumber");
    getMPModelPropertySongTrackNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipSongAlbum()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  v8 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  if (!getMPModelRelationshipSongAlbumSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipSongAlbum");
    getMPModelRelationshipSongAlbumSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumTitleSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumTitleSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumTitle");
    getMPModelPropertyAlbumTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyMovieTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyMovieTitleSymbolLoc_ptr;
  v8 = getMPModelPropertyMovieTitleSymbolLoc_ptr;
  if (!getMPModelPropertyMovieTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyMovieTitle");
    getMPModelPropertyMovieTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipPlaylistEntryTVEpisode()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipPlaylistEntryTVEpisodeSymbolLoc_ptr;
  v8 = getMPModelRelationshipPlaylistEntryTVEpisodeSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistEntryTVEpisodeSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipPlaylistEntryTVEpisode");
    getMPModelRelationshipPlaylistEntryTVEpisodeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVEpisodeArtwork()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVEpisodeArtworkSymbolLoc_ptr;
  v8 = getMPModelPropertyTVEpisodeArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeArtworkSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVEpisodeArtwork");
    getMPModelPropertyTVEpisodeArtworkSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVEpisodeLibraryAdded()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVEpisodeLibraryAddedSymbolLoc_ptr;
  v8 = getMPModelPropertyTVEpisodeLibraryAddedSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeLibraryAddedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVEpisodeLibraryAdded");
    getMPModelPropertyTVEpisodeLibraryAddedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVEpisodeType()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVEpisodeTypeSymbolLoc_ptr;
  v8 = getMPModelPropertyTVEpisodeTypeSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeTypeSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVEpisodeType");
    getMPModelPropertyTVEpisodeTypeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVShowTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVShowTitleSymbolLoc_ptr;
  v8 = getMPModelPropertyTVShowTitleSymbolLoc_ptr;
  if (!getMPModelPropertyTVShowTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVShowTitle");
    getMPModelPropertyTVShowTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericMovie()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericMovieSymbolLoc_ptr_0;
  v8 = getMPModelRelationshipGenericMovieSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericMovieSymbolLoc_ptr_0)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericMovie");
    getMPModelRelationshipGenericMovieSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericMovie_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericMovieSymbolLoc_ptr_1;
  v8 = getMPModelRelationshipGenericMovieSymbolLoc_ptr_1;
  if (!getMPModelRelationshipGenericMovieSymbolLoc_ptr_1)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericMovie");
    getMPModelRelationshipGenericMovieSymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericMovie_1()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericMovieSymbolLoc_ptr_2;
  v8 = getMPModelRelationshipGenericMovieSymbolLoc_ptr_2;
  if (!getMPModelRelationshipGenericMovieSymbolLoc_ptr_2)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericMovie");
    getMPModelRelationshipGenericMovieSymbolLoc_ptr_2 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_21720D94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelRelationshipGenericAlbum()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr_0;
  v8 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericAlbumSymbolLoc_ptr_0)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericAlbum");
    getMPModelRelationshipGenericAlbumSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericAlbum_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr_1;
  v8 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr_1;
  if (!getMPModelRelationshipGenericAlbumSymbolLoc_ptr_1)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericAlbum");
    getMPModelRelationshipGenericAlbumSymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericAlbum_1()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr_2;
  v8 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr_2;
  if (!getMPModelRelationshipGenericAlbumSymbolLoc_ptr_2)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericAlbum");
    getMPModelRelationshipGenericAlbumSymbolLoc_ptr_2 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumArtwork()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumArtworkSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumArtworkSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumArtwork");
    getMPModelPropertyAlbumArtworkSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumLibraryAddEligible()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumLibraryAddEligible");
    getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumIsFavorite()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumIsFavoriteSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumIsFavoriteSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsFavoriteSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumIsFavorite");
    getMPModelPropertyAlbumIsFavoriteSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumTraits()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumTraitsSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumTraitsSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumTraitsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumTraits");
    getMPModelPropertyAlbumTraitsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipAlbumArtist()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipAlbumArtistSymbolLoc_ptr;
  v8 = getMPModelRelationshipAlbumArtistSymbolLoc_ptr;
  if (!getMPModelRelationshipAlbumArtistSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipAlbumArtist");
    getMPModelRelationshipAlbumArtistSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericPlaylist()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr;
  v8 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericPlaylistSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericPlaylist");
    getMPModelRelationshipGenericPlaylistSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericPlaylist_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_0;
  v8 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_0)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericPlaylist");
    getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericPlaylist_1()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_1;
  v8 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_1;
  if (!getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_1)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericPlaylist");
    getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericPlaylist_2()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_2;
  v8 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_2;
  if (!getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_2)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericPlaylist");
    getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_2 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyPlaylistDateFavorited()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistDateFavoritedSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistDateFavoritedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistDateFavoritedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistDateFavorited");
    getMPModelPropertyPlaylistDateFavoritedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_21720E6A0(void *a1)
{
  v38 = *(v1 + 8);
  v39 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v36 = *(v1 + 56);
  v37 = *(v1 + 48);
  v34 = *(v1 + 80);
  v35 = *(v1 + 64);
  v5 = *(v1 + 96);
  v6 = *(v1 + 97);
  v7 = *(v1 + 98);
  v8 = *(v1 + 99);
  v9 = a1[2];
  v10 = v9 == MEMORY[0x277D839B0] || v9 == &type metadata for TitledSection;
  v11 = *(v1 + 100);
  if (v10)
  {
    v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelKind) init];
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    WORD2(v16) = 0;
    LOBYTE(v16) = v4;
    BYTE1(v16) = v5;
    BYTE2(v16) = v6;
    BYTE3(v16) = v11;
    BYTE6(v16) = v7;
    HIBYTE(v16) = v8;
    v17 = MEMORY[0x277D84F90];
    v18 = vdupq_n_s64(MEMORY[0x277D84F90]);
    v19 = 1;
    v20 = 31;
    v21 = MEMORY[0x277D84F90];
    v22 = v18;
LABEL_9:
    *&__src[0] = v20;
    *(&__src[0] + 1) = v12;
    __src[1] = v18;
    __src[2] = v22;
    *&__src[3] = v14;
    BYTE8(__src[3]) = v19;
    *&__src[4] = v17;
    *(&__src[4] + 1) = v16;
    LOBYTE(__src[5]) = v13;
    *(&__src[5] + 8) = v15;
    *(&__src[6] + 1) = v21;
    v25 = a1[3];
    LOBYTE(v44[0]) = v4;
    BYTE1(v44[0]) = v5;
    BYTE2(v44[0]) = v6;
    BYTE3(v44[0]) = v11;
    WORD2(v44[0]) = 0;
    BYTE6(v44[0]) = v7;
    *(v44 + 7) = v8;
    v26 = a1[5];
    sub_21720E9D8(v35, v34, v37, v36, v43);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v40, v43, sizeof(v40));
    sub_2172147A0(__src, v44);
    v27 = sub_2172147FC(__dst, v40, v38, v3, v39, v25, v26);
    sub_21721D674(__src);
    memcpy(v44, __dst, sizeof(v44));
    sub_21721D6C8(v44);
    sub_21721D674(v43);
    return v27;
  }

  v31 = *(v1 + 32);
  v32 = *(v1 + 40);
  v33 = *(v1 + 16);
  v23 = *(v1 + 72);
  v24 = *(v1 + 88);
  if (dynamic_cast_existential_1_conditional(v9, v9, &protocol descriptor for MusicLibraryRequestable))
  {
    LOBYTE(v43[0]) = v4;
    HIBYTE(v43[0]) = v5;
    LOBYTE(v43[1]) = v6;
    HIBYTE(v43[1]) = v11;
    v43[2] = 0;
    LOBYTE(v43[3]) = v7;
    HIBYTE(v43[3]) = v8;
    LOBYTE(v43[4]) = 0;
    sub_21720E9D8(v23, v24, v31, v32, v44);
    v12 = *(&v44[0] + 1);
    v20 = *&v44[0];
    v18 = v44[1];
    v22 = v44[2];
    v14 = *&v44[3];
    v19 = BYTE8(v44[3]);
    v16 = *(&v44[4] + 1);
    v17 = *&v44[4];
    v13 = v44[5];
    v15 = *(&v44[5] + 8);
    v21 = *(&v44[6] + 1);
    v3 = v33;
    goto LABEL_9;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AAED0);
  v29 = sub_217753348();
  MEMORY[0x21CEA23B0](v29);

  MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAEF0, v30);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21720E9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for LegacyModelExtendedLibraryRequestable) && (OUTLINED_FUNCTION_0_161(), v11 = OUTLINED_FUNCTION_5_111(), (v13 = v12(v11)) != 0))
  {
    v14 = v13;
  }

  else
  {
    if (!dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for LegacyModelLibraryRequestable))
    {
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000001ELL, 0x80000002177B6130);
      v52 = sub_217753348();
      MEMORY[0x21CEA23B0](v52);

      MEMORY[0x21CEA23B0](0xD000000000000041, 0x80000002177B6150, v53);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_0_161();
    v15 = OUTLINED_FUNCTION_5_111();
    v14 = sub_21721EEB8(v15, v16, v17, v18, v19);
    if (dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for LegacyModelExtendedLibraryRequestable))
    {
      OUTLINED_FUNCTION_0_161();
      v21 = (*(v20 + 16))(v14, a1, a2, &v70);

      v14 = v21;
    }
  }

  if (!dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding))
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_217752AA8();
    v50 = sub_217753348();
    MEMORY[0x21CEA23B0](v50);

    MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177B61A0, v51);
LABEL_28:
    result = sub_217752D08();
    __break(1u);
    return result;
  }

  v56 = v22;
  (*(*v14 + 328))();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v59 = v23;
  v60 = a5;
  v61 = a3;
  OUTLINED_FUNCTION_138(v14 + 16, &v70);
  v24 = *(v14 + 16);
  sub_217751DE8();
  v25 = sub_2172146A4(5, v24);

  OUTLINED_FUNCTION_138(v14 + 72, v69);
  v26 = *(v14 + 72);
  sub_217751DE8();
  v58 = sub_2172146A4(5, v26);

  OUTLINED_FUNCTION_138(v14 + 48, v68);
  v27 = *(v14 + 48);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v54 = a4;
    v67[0] = MEMORY[0x277D84F90];
    sub_217751DE8();
    sub_217752BF8();
    v30 = (v27 + 56);
    do
    {
      v31 = *(v30 - 3);
      v32 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      v30 += 32;
      objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter);
      sub_217751DE8();
      sub_217751DE8();
      sub_217491DD8(v31, v32, v33, v34);
      sub_217752BC8();
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
      --v28;
    }

    while (v28);

    v29 = v67[0];
    a4 = v54;
  }

  (*(v56 + 8))(v67);
  v57 = sub_21721478C();
  OUTLINED_FUNCTION_138(v14 + 24, v67);
  v35 = *(v14 + 24);
  OUTLINED_FUNCTION_138(v14 + 32, v66);
  v36 = *(v14 + 32);
  if (sub_217204DD0(v25))
  {
    sub_217504048();
    if ((v25 & 0xC000000000000001) != 0)
    {
      sub_217751DE8();
      sub_217751DE8();
      v37 = v25;
      v39 = MEMORY[0x21CEA2E30](0, v25);
    }

    else
    {
      v37 = v25;
      v38 = *(v25 + 32);
      sub_217751DE8();
      sub_217751DE8();
      v39 = v38;
    }

    v40 = v39;
    v41 = [v39 modelObjectType];

    v42 = 0;
    v25 = v37;
    v43 = v58;
  }

  else
  {
    v43 = v58;
    if (sub_217204DD0(v58))
    {
      v55 = v25;
      sub_217504048();
      if ((v58 & 0xC000000000000001) != 0)
      {
        sub_217751DE8();
        sub_217751DE8();
        v45 = MEMORY[0x21CEA2E30](0, v58);
      }

      else
      {
        v44 = *(v58 + 32);
        sub_217751DE8();
        sub_217751DE8();
        v45 = v44;
      }

      v46 = v45;
      v41 = [v45 modelObjectType];

      v42 = 0;
      v25 = v55;
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();

      v41 = 0;
      v42 = 1;
    }
  }

  OUTLINED_FUNCTION_138(v14 + 40, v63);
  v47 = *(v14 + 40);
  OUTLINED_FUNCTION_138(v14 + 56, v62);
  v64 = *(v14 + 56);
  v65 = *(v14 + 64);
  sub_217751DE8();

  *v60 = v57;
  *(v60 + 8) = v59;
  *(v60 + 16) = v35;
  *(v60 + 24) = v36;
  *(v60 + 32) = v25;
  *(v60 + 40) = v43;
  *(v60 + 48) = v41;
  *(v60 + 56) = v42;
  v48 = v64;
  *(v60 + 64) = v47;
  *(v60 + 72) = v48;
  *(v60 + 80) = v65;
  *(v60 + 88) = v61;
  *(v60 + 96) = a4;
  *(v60 + 104) = v29;
  return sub_217751DE8();
}

id getMPModelPropertyPlaylistIsDisliked()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyPlaylistIsDislikedSymbolLoc_ptr;
  v8 = getMPModelPropertyPlaylistIsDislikedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsDislikedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyPlaylistIsDisliked");
    getMPModelPropertyPlaylistIsDislikedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_21720F864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21720F8A0(uint64_t a1)
{
  result = sub_21720F8F8(&qword_280BE7458, type metadata accessor for MusicKit_SoftLinking_MPModelEmptyVariants, &unk_217757934);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21720F8F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id getMPModelRelationshipGenericTVSeason()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr;
  v8 = getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericTVSeason");
    getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericTVSeason_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_0;
  v8 = getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_0)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericTVSeason");
    getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipGenericTVSeason_1()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_1;
  v8 = getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_1;
  if (!getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_1)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericTVSeason");
    getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_21720FE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id getMPModelPropertyTVSeasonArtwork()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVSeasonArtworkSymbolLoc_ptr;
  v8 = getMPModelPropertyTVSeasonArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonArtworkSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVSeasonArtwork");
    getMPModelPropertyTVSeasonArtworkSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVSeasonEpisodesCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVSeasonEpisodesCountSymbolLoc_ptr;
  v8 = getMPModelPropertyTVSeasonEpisodesCountSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonEpisodesCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVSeasonEpisodesCount");
    getMPModelPropertyTVSeasonEpisodesCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVSeasonLibraryAdded()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVSeasonLibraryAddedSymbolLoc_ptr;
  v8 = getMPModelPropertyTVSeasonLibraryAddedSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonLibraryAddedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVSeasonLibraryAdded");
    getMPModelPropertyTVSeasonLibraryAddedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVSeasonLibraryAddEligible()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVSeasonLibraryAddEligibleSymbolLoc_ptr;
  v8 = getMPModelPropertyTVSeasonLibraryAddEligibleSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonLibraryAddEligibleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVSeasonLibraryAddEligible");
    getMPModelPropertyTVSeasonLibraryAddEligibleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyTVSeasonNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyTVSeasonNumberSymbolLoc_ptr;
  v8 = getMPModelPropertyTVSeasonNumberSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyTVSeasonNumber");
    getMPModelPropertyTVSeasonNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_2172104AC(uint64_t a1)
{
  result = sub_21720F8F8(&unk_280BE7490, type metadata accessor for MusicKit_SoftLinking_MPModelEmptyOptions, &unk_2177578FC);
  *(a1 + 8) = result;
  return result;
}

id getMPModelRelationshipTVSeasonShow()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipTVSeasonShowSymbolLoc_ptr;
  v8 = getMPModelRelationshipTVSeasonShowSymbolLoc_ptr;
  if (!getMPModelRelationshipTVSeasonShowSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipTVSeasonShow");
    getMPModelRelationshipTVSeasonShowSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

_BYTE *storeEnumTagSinglePayload for AudioVariant(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2172107CCLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t ActiveMonitoring.Publisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);
  v25[0] = v11;
  v25[1] = v17;
  v25[2] = v19;
  v26 = v18;
  WitnessTable = v20;
  v21 = _s12SubscriptionCMa(0, v25);
  (*(v12 + 16))(v15, v4, v11);
  (*(v7 + 16))(v9, a1, a3);
  v22 = sub_217210D18(v15, v9);
  v26 = v21;
  WitnessTable = swift_getWitnessTable();
  v25[0] = v22;
  sub_217751B18();
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void *static LibrarySortDescriptorResolver.resolving(keyPath:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibrarySortDescriptorResolver(0, *(v4 + 96), *(v4 + 104), a4);
  v8 = sub_217210BAC(a1, a2, a3);

  return v8;
}

void *sub_217210BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  result[2] = a1;
  result[3] = v7;
  result[4] = a2;
  result[5] = a3;
  return result;
}

uint64_t sub_217210C20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_217210D18(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_217210F60(a1, a2);
  return v4;
}

void sub_217210D68(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = v2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*a1 + 80);

  v9 = v8(AssociatedTypeWitness, AssociatedTypeWitness);
  v20 = v6;
  if (v9)
  {
    v19 = v9;
    sub_217752BA8();
    v10 = sub_217751F08();

    if (v10)
    {
      v12 = v3[3];
      if (v12[2] || (v17 = v3[4]) == 0)
      {
        v13 = (*(*a1 + 88))(v11);
        v14 = sub_2174F9A24(v12, v13 & 1);
        if (v14)
        {
          v15 = v14;
          if ([v14 sortDescriptor])
          {
            MEMORY[0x21CEA25D0]();
            sub_217204C70(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_217752378();
            v16 = *a2;

            *a2 = v16;
          }

          else
          {
          }
        }
      }

      else
      {
        v18 = v3[5];

        v17(a2);
        sub_2171FF138(v17, v18);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_217210F60(uint64_t a1, uint64_t a2)
{
  *(v2 + *(*v2 + 136)) = 0;
  OUTLINED_FUNCTION_0_41();
  v6 = *(v5 + 144);
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v2 + v6) = v7;
  OUTLINED_FUNCTION_0_41();
  v10 = *(v9 + 152);
  *(v2 + v10) = sub_217751B48();
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_1_96();
  (*(v11 + 32))(v2 + v12, a1);
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_1_96();
  (*(v13 + 32))(v2 + v14, a2);
  return v2;
}

uint64_t sub_2172110AC(uint64_t a1, uint64_t a2)
{
  sub_217752BA8();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
  }

  return v2;
}

void sub_217211554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMultiSortDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMultiSortDescriptorClass_softClass;
  v7 = getMPMultiSortDescriptorClass_softClass;
  if (!getMPMultiSortDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMultiSortDescriptorClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPMultiSortDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217211664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMultiSortDescriptorClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPMultiSortDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMultiSortDescriptorClass_block_invoke_cold_1();
  }

  getMPMultiSortDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_217211778(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 152);
  swift_beginAccess();
  v5 = *(a1 + v4);
  swift_beginAccess();
  sub_217751B58();
  if (sub_217751B38())
  {
    goto LABEL_10;
  }

  sub_217751B58();
  v6 = sub_217751B38();
  v7 = sub_217751B58();
  if (v6)
  {
LABEL_9:
    *(a1 + v4) = v7;
LABEL_10:
    swift_endAccess();
    return sub_217211878(v5);
  }

  result = sub_217751B38();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v5 | a2) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_7:
    v7 = sub_217751B58();
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_217211878(uint64_t a1)
{
  v2 = v1;
  v41 = *v2;
  v4 = v41;
  v5 = sub_217751C58();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_217751C88();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[10];
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  os_unfair_lock_assert_owner(*(*(v2 + v4[18]) + 16));
  v16 = *(v9 + 16);
  v16(v15, v2 + *(*v2 + 120), v8);
  sub_217751B58();
  result = sub_217751B38();
  if ((result & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (!a1)
    {
      v21 = *(*v2 + 152);
      swift_beginAccess();
      v22 = *(v2 + v21);
      sub_217751B58();
      result = sub_217751B38();
      if (result)
      {
        goto LABEL_15;
      }

      if (v22 < 0)
      {
LABEL_24:
        __break(1u);
        return result;
      }

      if (v22)
      {
LABEL_15:
        aBlock[0] = (*(v41[13] + 24))(v8);
        sub_21721345C(v2);
        sub_217751B68();
        swift_getWitnessTable();
        v23 = sub_217751C48();

        (*(v9 + 8))(v15, v8);

        *(v2 + *(*v2 + 136)) = v23;
      }
    }
  }

  sub_217751B58();
  result = sub_217751B38();
  if ((result & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (!a1)
      {
        return (*(v9 + 8))(v15, v8);
      }

      goto LABEL_7;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_7:
  v18 = *(*v2 + 152);
  swift_beginAccess();
  v19 = *(v2 + v18);
  sub_217751B58();
  result = sub_217751B38();
  if ((result & 1) == 0)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (!v19)
      {
        v20 = *(*v2 + 136);
        if (*(v2 + v20))
        {

          sub_217751B78();
        }

        *(v2 + v20) = 0;

        v24 = v41;
        v25 = v41[13];
        if ((*(v25 + 16))(v8, v25))
        {
          sub_2172B38C0();
          v34 = sub_217752838();
          v16(v12, v15, v8);
          v26 = (*(v9 + 80) + 56) & ~*(v9 + 80);
          v27 = swift_allocObject();
          *(v27 + 2) = v8;
          *(v27 + 3) = v24[11];
          *(v27 + 4) = v24[12];
          *(v27 + 5) = v25;
          *(v27 + 6) = v24[14];
          (*(v9 + 32))(&v27[v26], v12, v8);
          aBlock[4] = sub_2175B23C4;
          aBlock[5] = v27;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2172B5448;
          aBlock[3] = &block_descriptor_12;
          v28 = _Block_copy(aBlock);

          v29 = v35;
          sub_217751C78();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_2172B61B8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
          sub_2172B3934();
          v30 = v37;
          v31 = v40;
          sub_217752A08();
          v32 = v34;
          MEMORY[0x21CEA2BA0](0, v29, v30, v28);
          _Block_release(v28);

          (*(v39 + 8))(v30, v31);
          (*(v36 + 8))(v29, v38);
        }

        else
        {
          (*(v25 + 32))(v8, v25);
        }
      }

      return (*(v9 + 8))(v15, v8);
    }

    goto LABEL_23;
  }

  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_217211EF4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217211F74()
{
  OUTLINED_FUNCTION_143();
  sub_21720BA74();
  sub_21720BA7C();
}

double sub_217211FE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_38(v2 + 40, a2);
  *(v2 + 40) = a1;
}

uint64_t sub_217212070(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v27 - v6;
  v31 = *(v3 + 88);
  v7 = sub_2177528F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  sub_217212474(v13, v14);
  v37 = *(v3 + 96);
  sub_217751E68();

  if (v36 == 1 || (v17 = v35) == 0)
  {
    sub_21720C114(v15, &v35);
    v32 = v4;
    v28 = v7;
    type metadata accessor for WeakValuesDictionary(0, v4, v31, v37);
    v19 = v8;
    v27 = v12;
    WeakValuesDictionary.subscript.getter();

    swift_beginAccess();
    WeakValuesDictionary.removeValue(forKey:)(a2);
    swift_endAccess();
    v20 = *(v5 + 16);
    v21 = v30;
    v20(v30, a2, v32);
    v22 = v21;
    v23 = v28;
    (*(v19 + 16))(v29, v12, v28);
    swift_beginAccess();
    sub_217751E38();
    sub_217751E78();
    swift_endAccess();
    v24 = v23;
    v25 = v32;
    (*(v19 + 8))(v27, v24);
    v17 = 0;
    result = (v20)(v22, a2, v25, v26);
  }

  else
  {
    result = (*(v5 + 16))(v30, a2, v4, v16);
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = v17 + 1;
    v34 = 0;
    swift_beginAccess();
    sub_217751E38();
    sub_217751E78();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_217212418@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = OUTLINED_FUNCTION_126(v2 + 56, a1);
  *a2 = *(v2 + 56);
  *(a2 + 8) = *(v2 + 64);
  return result;
}

_OWORD *sub_2172124CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return sub_217752E68();
}

uint64_t OUTLINED_FUNCTION_4_20()
{
  v2 = *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_217204C70(v2);
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return sub_217752AA8();
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t a1, uint64_t a2)
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_4_32(uint64_t a1, uint64_t a2)
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_2172B6904(v65, &a61, &a11, &a65, &a16);
}

void OUTLINED_FUNCTION_4_35()
{
  v0[5] = 0;
  *(v1 - 72) = 0;
  v0[6] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
}

uint64_t OUTLINED_FUNCTION_4_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_41(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_217753098();
}

uint64_t OUTLINED_FUNCTION_4_43(uint64_t a1)
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_4_45()
{

  return sub_21733AB9C(v0 - 168);
}

unint64_t OUTLINED_FUNCTION_4_46(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v11 = a1;

  return sub_21729C0E8(v10, v9, va);
}

uint64_t OUTLINED_FUNCTION_4_50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_217752F38();
}

__n128 OUTLINED_FUNCTION_4_52()
{
  v2 = *(v1 + 80);
  *v1 = *(v1 + 64);
  *(v1 + 16) = v2;
  result = *(v1 + 96);
  *(v1 + 32) = result;
  *(v0 + 656) = *(v0 + 720);
  return result;
}

unint64_t OUTLINED_FUNCTION_4_54()
{
  *(v4 - 88) = *(v1 + 280);
  v5 = *(v1 + 264);
  *(v2 + 16) = v0;
  return v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_4_57@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 624) = a1;
  *(v2 + 648) = a2;
  return v2 + 624;
}

void *OUTLINED_FUNCTION_4_58(void *a1)
{

  return memcpy(a1, (v1 + 5720), 0x221uLL);
}

void OUTLINED_FUNCTION_4_59()
{

  sub_2174B4D4C();
}

uint64_t OUTLINED_FUNCTION_4_61(uint64_t a1)
{

  return sub_217751308();
}

uint64_t OUTLINED_FUNCTION_4_62()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_64(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_4_66()
{
  *(v0 + 16) = v2;
  v4 = v0 + (v3 << 6);
  result = *(v1 + 192);
  v6 = *(v1 + 208);
  v7 = *(v1 + 224);
  *(v4 + 73) = *(v1 + 233);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = result;
  return result;
}

void OUTLINED_FUNCTION_4_67()
{

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_4_73()
{
  v1 = *(v0 - 136);
  *(v0 - 208) = *(v0 - 152);
  *(v0 - 192) = v1;
  result = *(v0 - 120);
  *(v0 - 176) = result;
  *(v0 - 160) = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_75(uint64_t a1)
{
  *(a1 + 8) = sub_21756635C;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return v2 + 296;
}

uint64_t OUTLINED_FUNCTION_4_78()
{
}

uint64_t OUTLINED_FUNCTION_4_80(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_81(uint64_t a1)
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_4_82(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_4_85@<Q0>(uint64_t a1@<X8>)
{
  v2 = *&STACK[0x5E0];
  *&STACK[0x4B0] = *&STACK[0x5D0];
  *&STACK[0x4C0] = v2;
  *&STACK[0x4D0] = *&STACK[0x5F0];
  *(v1 + 56) = *(a1 + 56);
  result = *(a1 + 72);
  *(v1 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_86(uint64_t a1)
{

  return sub_2171F06D8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_88(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_4_95()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1AC0(0, v2, 1, v0);
}

__n128 OUTLINED_FUNCTION_4_99()
{
  *(v1 + 16) = v0;
  v4 = v1 + (v2 << 6);
  result = *(v3 + 304);
  v6 = *(v3 + 320);
  v8 = *(v3 + 272);
  v7 = *(v3 + 288);
  *(v4 + 64) = result;
  *(v4 + 80) = v6;
  *(v4 + 32) = v8;
  *(v4 + 48) = v7;
  v9 = *(v3 + 528) + 1;
  *(v3 + 536) = v1;
  *(v3 + 528) = v9;
  return result;
}

void OUTLINED_FUNCTION_4_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_2172B6904(v65, &a63, &a13, &a65, &a18);
}

void *OUTLINED_FUNCTION_4_101(void *a1)
{

  return memcpy(a1, (v1 + 8), 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_4_102(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_4_104()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_4_105@<X0>(char a1@<W8>)
{
  *(v1 - 272) = a1;

  return sub_217752E18();
}

__n128 OUTLINED_FUNCTION_4_110()
{
  v2 = *(v0 + 96);
  *(v0 + 336) = *(v0 + 112);
  *(v0 + 352) = v2;
  result = *(v0 + 80);
  *(v0 + 368) = result;
  *(v0 + 384) = v1;
  return result;
}

unint64_t OUTLINED_FUNCTION_4_112(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[16] = 10;
  v10[17] = 0xE100000000000000;
  v10[14] = 2105354;
  v10[15] = 0xE300000000000000;

  return sub_21733A5C8(a1, a2, a3);
}

void OUTLINED_FUNCTION_4_113()
{
  v0[3] = 1;
  v0[4] = 1;
  v0[5] = 1;
  v0[6] = 1;
  v0[7] = 1;
  v0[8] = 1;
  v0[9] = 1;
  v0[10] = 1;
}

uint64_t OUTLINED_FUNCTION_4_114()
{

  return sub_2177521E8();
}

uint64_t OUTLINED_FUNCTION_4_117(uint64_t a1, uint64_t a2)
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_4_120()
{
  v6 = *(v0 + 32) + v4;

  return sub_21726A630(v6, v3 + 104, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_121(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_122()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_124()
{

  return sub_217752F88();
}

uint64_t OUTLINED_FUNCTION_4_127()
{
  result = *(v0 + 24);
  *(*(v0 + 32) + 16) = v1;
  return result;
}

void OUTLINED_FUNCTION_4_130(unint64_t a1@<X8>)
{

  sub_2172B1A50(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_4_131()
{
  *(v0 - 192) = 0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return v0 - 224;
}

uint64_t OUTLINED_FUNCTION_4_138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752F88();
}

uint64_t OUTLINED_FUNCTION_4_141(uint64_t a1)
{

  return sub_217752E78();
}

uint64_t OUTLINED_FUNCTION_4_142()
{

  return sub_217751DC8();
}

void OUTLINED_FUNCTION_4_143()
{
  v0[84] = 0;
  v0[86] = 0;
  v0[88] = 0;
}

void OUTLINED_FUNCTION_4_147()
{

  sub_2172A5428(v0, 0, v2, v1);
}

void WeakValuesDictionary.removeValue(forKey:)(uint64_t a1)
{
  sub_2171F5808();
  OUTLINED_FUNCTION_10_3();
  sub_217751E38();
  sub_217751DB8();
}

Class __getMPModelAlbumClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1();
    return __getMPModelAlbumClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelAlbumClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1_0();
    return __getMPModelGenericObjectClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelGenericObjectClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPModelGenericObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenericObjectClass_block_invoke_cold_1();
    return __getMPModelGenericObjectClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelGenericObjectClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelGenericObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenericObjectClass_block_invoke_cold_1();
    return __getMPModelGenericObjectClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelGenericObjectClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelGenericObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenericObjectClass_block_invoke_cold_1();
    return __getMPModelGenericObjectClass_block_invoke_2(v3);
  }

  return result;
}

Class __getMPModelGenericObjectClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelGenericObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelGenericObjectClass_block_invoke_cold_1();
    return getMPModelGenericObjectClass();
  }

  return result;
}

id getMPModelGenericObjectClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelGenericObjectClass_softClass_0;
  v7 = getMPModelGenericObjectClass_softClass_0;
  if (!getMPModelGenericObjectClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelGenericObjectClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelGenericObjectClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217213774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelGenericObjectClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelGenericObjectClass_softClass_1;
  v7 = getMPModelGenericObjectClass_softClass_1;
  if (!getMPModelGenericObjectClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelGenericObjectClass_block_invoke_1;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelGenericObjectClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217213854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelGenericObjectClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelGenericObjectClass_softClass_2;
  v7 = getMPModelGenericObjectClass_softClass_2;
  if (!getMPModelGenericObjectClass_softClass_2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelGenericObjectClass_block_invoke_2;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelGenericObjectClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217213934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelAlbumClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelAlbumClass_softClass_0;
  v7 = getMPModelAlbumClass_softClass_0;
  if (!getMPModelAlbumClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelAlbumClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelAlbumClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217213A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelSongClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1();
    return __getMPModelSongClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelSongClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelSongClass_block_invoke_cold_1_0();
    return getMPModelSongClass();
  }

  return result;
}

id getMPModelSongClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongClass_softClass_0;
  v7 = getMPModelSongClass_softClass_0;
  if (!getMPModelSongClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelSongClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217213C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217213D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelMovieClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelMovieClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelMovieClass_block_invoke_cold_1();
    return __getMPModelMovieClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelMovieClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelMovieClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelMovieClass_block_invoke_cold_1_0();
    return +[(MusicKit_SoftLinking_MPModelKind *)v3];
  }

  return result;
}

Class __getMPModelPlaylistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistClass_block_invoke_cold_1();
    return __getMPModelPlaylistClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelPlaylistClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelPlaylistClass_block_invoke_cold_1_0();
    return getMPModelPlaylistClass();
  }

  return result;
}

id getMPModelPlaylistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistClass_softClass_0;
  v7 = getMPModelPlaylistClass_softClass_0;
  if (!getMPModelPlaylistClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelPlaylistClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21721403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistEntryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistEntryClass_softClass_1;
  v7 = getMPModelPlaylistEntryClass_softClass_1;
  if (!getMPModelPlaylistEntryClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistEntryClass_block_invoke_1;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelPlaylistEntryClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217214218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelPlaylistEntryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryClass_block_invoke_cold_1();
    return __getMPModelPlaylistEntryClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryClass_block_invoke_cold_1_0();
    return __getMPModelPlaylistEntryClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryClass_block_invoke_cold_1_1();
    return +[(MusicKit_SoftLinking_MPModelKind *)v3];
  }

  return result;
}

void sub_217214420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelTVEpisodeClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelTVEpisodeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelTVEpisodeClass_block_invoke_cold_1();
    return __getMPModelTVEpisodeClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelTVEpisodeClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelTVEpisodeClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelTVEpisodeClass_block_invoke_cold_1_0();
    return +[(MusicKit_SoftLinking_MPModelKind *)v3];
  }

  return result;
}

void sub_2172145DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelTVSeasonClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelTVSeasonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelTVSeasonClass_block_invoke_cold_1();
    return __getMPModelTVSeasonClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelTVSeasonClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelTVSeasonClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelTVSeasonClass_block_invoke_cold_1_0();
    return sub_2172146A4(v3, v4);
  }

  return result;
}

uint64_t sub_2172146A4(char a1, uint64_t a2)
{
  result = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 32;
    do
    {
      sub_21749A32C(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = a1;
      sub_2173AAEE8(&v10, v6, v7);
      v8 = __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CEA25D0](v8);
      v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
      {
        OUTLINED_FUNCTION_57(v9);
        sub_2177522F8();
      }

      OUTLINED_FUNCTION_13_2();
      sub_217752378();
      v5 += 40;
      --v4;
    }

    while (v4);
    return v14;
  }

  return result;
}

uint64_t sub_2172147FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v131 = a5;
  v136 = a4;
  v137 = a3;
  v7 = *(a1 + 8);
  v147 = *a1;
  v8 = *(a1 + 16);
  v138 = *(a1 + 24);
  v118 = *(a1 + 40);
  v125 = *(a1 + 72);
  LODWORD(v126) = *(a1 + 80);
  v122 = *(a1 + 32);
  v124 = *(a1 + 88);
  v133 = *(a1 + 64);
  v134 = *(a1 + 96);
  v132 = *(a1 + 104);
  v9 = *a2;
  v129 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v144 = *(a2 + 32);
  v119 = *(a2 + 48);
  v121 = *(a2 + 40);
  HIDWORD(v145) = *(a2 + 56);
  v12 = *(a2 + 64);
  v156 = *(a2 + 72);
  v157 = *(a2 + 80);
  v135 = *(a2 + 88);
  v140 = *(a2 + 96);
  v141 = v12;
  v139 = *(a2 + 104);
  v13 = *(v11 + 16);
  v14 = MEMORY[0x277D84F90];
  v142 = v9;
  v143 = v7;
  if (v13)
  {
    __dst[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_92(a1, a2, a3, a4, a5, a6, a7);
    v14 = __dst[0];
    v15 = (v11 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      __dst[0] = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      a1 = sub_217751DE8();
      if (v19 >= v18 >> 1)
      {
        sub_217275C90(v18 > 1, v19 + 1, 1, a4, a5, a6, a7);
        v14 = __dst[0];
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 2;
      --v13;
    }

    while (v13);
    v7 = v143;
  }

  if (v7)
  {
    v21 = *(v8 + 16);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      __dst[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_8_92(a1, a2, a3, a4, a5, a6, a7);
      v22 = __dst[0];
      v23 = (v8 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        __dst[0] = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        sub_217751DE8();
        if (v27 >= v26 >> 1)
        {
          sub_217275C90(v26 > 1, v27 + 1, 1, v28, v29, v30, v31);
          v22 = __dst[0];
        }

        *(v22 + 16) = v27 + 1;
        v32 = v22 + 16 * v27;
        *(v32 + 32) = v25;
        *(v32 + 40) = v24;
        v23 += 2;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v22 = 0;
  }

  v33 = *(v10 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v151 = MEMORY[0x277D84F90];
    sub_217752BF8();
    v35 = (v10 + 32);
    do
    {
      v36 = memcpy(__dst, v35, 0x161uLL);
      OUTLINED_FUNCTION_9_96(v36, v37, v38, v39, v40, v41, v42, v43, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v121, v122, v124, v125, v126, v127, v129, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v147, v149);
      sub_217752BC8();
      OUTLINED_FUNCTION_6_111();
      sub_217752C08();
      OUTLINED_FUNCTION_6_111();
      sub_217752C18();
      sub_217752BD8();
      v35 += 360;
      --v33;
    }

    while (v33);
    v128 = v151;
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v44 = v147;
  if (v143)
  {
    v45 = *(v138 + 16);
    if (v45)
    {
      v151 = v34;
      sub_217752BF8();
      v46 = (v138 + 32);
      do
      {
        v47 = memcpy(__dst, v46, 0x161uLL);
        OUTLINED_FUNCTION_9_96(v47, v48, v49, v50, v51, v52, v53, v54, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v121, v122, v124, v125, v126, v128, v129, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v147, v149);
        sub_217752BC8();
        OUTLINED_FUNCTION_6_111();
        sub_217752C08();
        OUTLINED_FUNCTION_6_111();
        sub_217752C18();
        sub_217752BD8();
        v46 += 360;
        --v45;
      }

      while (v45);
      v55 = v151;
      v154 = v151;
    }

    else
    {
      v154 = v34;
      v55 = v34;
    }

    v153 = v34;
    v34 = v122;
    sub_217751DE8();
    BYTE4(v145) = 0;
  }

  else
  {
    v153 = v34;
    v154 = v34;
    v55 = v34;
    v44 = v119;
  }

  __dst[0] = v144;
  sub_217751DE8();
  sub_217215144(v34);
  v56 = __dst[0];
  result = sub_217204DD0(__dst[0]);
  v58 = MEMORY[0x277D84F90];
  v148 = v44;
  if (result)
  {
    v59 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v59; ++i)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x21CEA2E30](i, v56);
      }

      else
      {
        v61 = *(v56 + 8 * i + 32);
      }

      v62 = v61;
      v63 = [v61 modelObjectType];
      v64 = BYTE4(v145);
      if (v63 != v148)
      {
        v64 = 1;
      }

      if (v64)
      {
        v65 = v62;
        MEMORY[0x21CEA25D0]();
        if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v58 = v153;
      }

      else
      {
        v66 = [v62 legacyIdentifierSet];
        MEMORY[0x21CEA25D0]();
        if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();

        v55 = v154;
      }
    }
  }

  v151 = v156;
  v152 = v157;
  v68 = 2;
  if (v143)
  {
    v68 = v125;
  }

  v69 = v126;
  if (!v143)
  {
    v69 = 0;
  }

  v149 = v68;
  v150 = v69;
  *&v67.value.includeOnlyDownloadedContent = &v149;
  MusicLibraryFilteringOptions.merging(_:)(v67);
  v70 = BYTE5(__dst[0]);
  v71 = BYTE6(__dst[0]);
  v72 = HIBYTE(__dst[0]);
  v73 = __dst[1];
  if ((v145 & 0x100000000) != 0)
  {

    if (v131)
    {
      v74 = *(v131 + 16);
      v75 = v74;
    }

    else
    {
      v74 = 0;
    }

    v83 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
    OUTLINED_FUNCTION_3_130();
    OUTLINED_FUNCTION_1_146();
    if (v86)
    {
      v85 = 0;
    }

    v87 = 0x10000000000;
    if (!v70)
    {
      v87 = 0;
    }

    v88 = 0x1000000000000;
    if (!v71)
    {
      v88 = 0;
    }

    v89 = v85 | v87;
    v90 = 0x100000000000000;
    if (!v72)
    {
      v90 = 0;
    }

    v91 = v84 | v89 | v88 | v90;
    v92 = v129;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    return sub_2174920E8(v142, v92, v14, v128, v141, v135, v140, v139, v136, v137, v91, v73, v74);
  }

  else
  {
    v120 = BYTE5(__dst[0]);
    v123 = BYTE6(__dst[0]);
    v76 = HIBYTE(__dst[0]);
    v146 = __dst[1];
    if (v143)
    {
      v77 = v143;
    }

    v78 = MEMORY[0x277D84F90];
    if (v22)
    {
      v79 = v22;
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
    }

    __dst[0] = v58;
    v130 = v129;
    sub_217751DE8();
    v80 = sub_217751DE8();
    sub_217215144(v80);
    v81 = __dst[0];
    if (v143)
    {
      v82 = sub_217751DE8();
    }

    else
    {
      v82 = v78;
    }

    __dst[0] = v81;
    sub_217215144(v82);
    v93 = __dst[0];
    if (v143)
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
    }

    else
    {
      v124 = 0;
      v134 = 0;
      v132 = MEMORY[0x277D84F90];
      v133 = MEMORY[0x277D84F90];
    }

    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    if (v131)
    {
      v94 = *(v131 + 16);
      v95 = v94;
    }

    else
    {
      v94 = 0;
    }

    v96 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
    OUTLINED_FUNCTION_3_130();
    OUTLINED_FUNCTION_1_146();
    if (v86)
    {
      v98 = 0;
    }

    v99 = 0x10000000000;
    if (!v120)
    {
      v99 = 0;
    }

    v100 = 0x1000000000000;
    if (!v123)
    {
      v100 = 0;
    }

    v101 = v98 | v99;
    v102 = 0x100000000000000;
    if (!v76)
    {
      v102 = 0;
    }

    return sub_217215468(v142, v148, v130, v143, v14, v79, v128, v55, v93, v141, v133, v135, v140, v124, v134, v139, v132, v136, v137, v97 | v101 | v100 | v102, v146, v94);
  }
}

MusicKit::MusicLibraryFilteringOptions __swiftcall MusicLibraryFilteringOptions.merging(_:)(MusicKit::MusicLibraryFilteringOptions_optional a1)
{
  v3 = **&a1.value.includeOnlyDownloadedContent;
  if (*v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = (**&a1.value.includeOnlyDownloadedContent != 2) & **&a1.value.includeOnlyDownloadedContent;
  }

  if (v2[1])
  {
    LOBYTE(v5) = 1;
  }

  else if (**&a1.value.includeOnlyDownloadedContent == 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = (v3 >> 8) & 1;
  }

  if (v2[2])
  {
    LOBYTE(v6) = 1;
  }

  else if (**&a1.value.includeOnlyDownloadedContent == 2)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = (v3 >> 16) & 1;
  }

  v7 = *(*&a1.value.includeOnlyDownloadedContent + 8);
  v8 = v2[8];
  if (v2[3])
  {
    LOBYTE(v9) = 1;
  }

  else if (**&a1.value.includeOnlyDownloadedContent == 2)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = (v3 >> 24) & 1;
  }

  v10 = **&a1.value.includeOnlyDownloadedContent;
  v11 = HIDWORD(v3) & 1;
  if (v10 == 2)
  {
    LOBYTE(v11) = 0;
  }

  if (v2[4])
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = (v3 >> 40) & 1;
  if (v10 == 2)
  {
    LODWORD(v13) = 0;
  }

  if (v2[5])
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = HIWORD(v3) & 1;
  if (v10 == 2)
  {
    LOBYTE(v15) = 0;
  }

  if (v2[6])
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17 = HIBYTE(v3) & 1;
  if (v10 == 2)
  {
    LOBYTE(v17) = 0;
  }

  if (v2[7])
  {
    LOBYTE(v17) = 1;
  }

  *v1 = v4;
  v1[1] = v5;
  v1[2] = v6;
  v18 = (v10 != 2) & v7;
  v1[3] = v9;
  v1[4] = v12;
  v1[5] = v14;
  v1[6] = v16;
  if (v8)
  {
    v18 = 1;
  }

  v1[7] = v17;
  v1[8] = v18;
  result.includeOnlyDownloadedContent = v14;
  result.wantsDetailedLibraryResponse = BYTE1(v14);
  result.includeNonLibraryAddedContent = BYTE2(v14);
  result.ignoreExplicitContentRestrictions = BYTE3(v14);
  result.includeOnlyFavoritedItems = BYTE4(v14);
  result.includeOnlyFavoritedCollections = BYTE5(v14);
  result.excludeNonPinnedItems = BYTE6(v14);
  result.excludeNonPinnedPlaylists = HIBYTE(v14);
  result.includeEmptyTracklist = v12;
  return result;
}

void sub_217215184(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(v12, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_217215254(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_217752D38();
LABEL_9:
  result = sub_217752AE8();
  *v2 = result;
  return result;
}

uint64_t sub_2172152F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2173AB24C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29410, &qword_27CB29408, &qword_217776DE0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29408, &qword_217776DE0);
          v9 = sub_2177339F0(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_217215468(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22)
{
  v22 = a13;
  v35 = sub_217752288();

  v32 = sub_217752288();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24F40, &unk_21775A460);
  OUTLINED_FUNCTION_745();
  v31 = sub_217752288();

  OUTLINED_FUNCTION_85_3();
  v26 = sub_217752288();

  sub_217215924(0, &qword_280BE22D8, off_278228D58);
  v30 = sub_217752288();

  sub_217215924(0, &qword_280BE84A0, 0x277CCAC98);
  OUTLINED_FUNCTION_145_0();
  v28 = sub_217752288();

  v27 = sub_217752288();

  if (a13)
  {
    v23 = sub_217751F18();
  }

  else
  {
    v23 = 0;
  }

  if (a15)
  {
    sub_217751F18();
    OUTLINED_FUNCTION_798();
  }

  else
  {
    v22 = 0;
  }

  sub_217215924(0, &unk_280BE8368, off_278228D50);
  OUTLINED_FUNCTION_145_0();
  v25 = sub_217752288();

  OUTLINED_FUNCTION_145_0();
  v29 = sub_217752288();
  v37 = [v36 initWithLegacyModelObjectType:a1 sectionLegacyModelObjectType:a2 itemKind:a3 sectionKind:a4 allowedItemIdentifiers:v35 allowedSectionIdentifiers:v32 allowedItemIdentifierSets: allowedSectionIdentifierSets:v31 scopedContainers:v26 itemSortDescriptors:v30 sectionSortDescriptors:v28 itemFilterText:v27 sectionFilterText:v23 itemPropertyFilters:v22 sectionPropertyFilters:v25 range:v29 filteringOptions:a18 mediaLibrary:{a19, a20 & 0x101010101010101, a21 & 1, a22}];

  return v37;
}

uint64_t OUTLINED_FUNCTION_89_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_89_8()
{
  *(v2 + v0[12]) = *(v3 - 224);
  *(v2 + v0[13]) = *(v3 - 240);
  *(v2 + v0[14]) = v1;
}

double OUTLINED_FUNCTION_89_12()
{
  result = 0.0;
  v0[56] = 0u;
  v0[57] = 0u;
  v0[58] = 0u;
  v0[59] = 0u;
  v0[60] = 0u;
  v0[61] = 0u;
  v0[62] = 0u;
  v0[63] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_89_19()
{

  return type metadata accessor for ArtistPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_1361()
{

  return swift_getObjectType();
}

uint64_t sub_217215924(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return sub_21726A630(v24, va, a3, a4);
}

BOOL OUTLINED_FUNCTION_44_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1)
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2177532C8();
}

void OUTLINED_FUNCTION_44_9(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void OUTLINED_FUNCTION_44_13(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v9[172] = a2;
  v9[173] = a3;
  v9[174].n128_u64[0] = a1;
  v9[174].n128_u64[1] = v4;
  v9[175].n128_u64[0] = v5;
  v9[175].n128_u64[1] = v8;
  v9[176] = a4;
  v9[177].n128_u64[0] = v6;
  v9[177].n128_u8[8] = v7;
}

uint64_t OUTLINED_FUNCTION_713()
{

  return sub_217752AA8();
}

uint64_t OUTLINED_FUNCTION_44_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217751308();
}

uint64_t OUTLINED_FUNCTION_44_17()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudSong.Attributes);
}

uint64_t OUTLINED_FUNCTION_44_18(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_44_19()
{
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;
  *(v0 + 280) = v3;
  *(v0 + 352) = 4;
}

uint64_t OUTLINED_FUNCTION_44_21(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_44_22(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[5].n128_u64[0] = v4;
  a1[3] = a3;
  a1[4] = a4;
  a1[2] = a2;
}

void OUTLINED_FUNCTION_48_1()
{

  JUMPOUT(0x21CEA23B0);
}

double OUTLINED_FUNCTION_44_31()
{
}

Class __getMPModelLibraryRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPModelLibraryRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelLibraryRequestClass_block_invoke_cold_1();
    return getMPModelLibraryRequestClass();
  }

  return result;
}

id getMPModelLibraryRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryRequestClass_softClass;
  v7 = getMPModelLibraryRequestClass_softClass;
  if (!getMPModelLibraryRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryRequestClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelLibraryRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217215DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217217530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertyAlbumCleanSongCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumCleanSongCountSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumCleanSongCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumCleanSongCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumCleanSongCount");
    getMPModelPropertyAlbumCleanSongCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyAlbumReleaseDateComponents()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumReleaseDateComponents");
    getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistCleanSongCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistCleanSongCountSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistCleanSongCountSymbolLoc_ptr;
  if (!getMPModelPropertyArtistCleanSongCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistCleanSongCount");
    getMPModelPropertyArtistCleanSongCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistCleanDownloadedSongCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_ptr;
  if (!getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistCleanDownloadedSongCount");
    getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistDownloadedSongCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistDownloadedSongCountSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistDownloadedSongCountSymbolLoc_ptr;
  if (!getMPModelPropertyArtistDownloadedSongCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistDownloadedSongCount");
    getMPModelPropertyArtistDownloadedSongCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistSongCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistSongCountSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistSongCountSymbolLoc_ptr;
  if (!getMPModelPropertyArtistSongCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistSongCount");
    getMPModelPropertyArtistSongCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistAlbumCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistAlbumCountSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistAlbumCountSymbolLoc_ptr;
  if (!getMPModelPropertyArtistAlbumCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistAlbumCount");
    getMPModelPropertyArtistAlbumCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistLibraryAddedDate()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistLibraryAddedDateSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyArtistLibraryAddedDateSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistLibraryAddedDate");
    getMPModelPropertyArtistLibraryAddedDateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistIsFavorite()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistIsFavoriteSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistIsFavoriteSymbolLoc_ptr;
  if (!getMPModelPropertyArtistIsFavoriteSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistIsFavorite");
    getMPModelPropertyArtistIsFavoriteSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistDateFavorited()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistDateFavoritedSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistDateFavoritedSymbolLoc_ptr;
  if (!getMPModelPropertyArtistDateFavoritedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistDateFavorited");
    getMPModelPropertyArtistDateFavoritedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyArtistIsDisliked()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyArtistIsDislikedSymbolLoc_ptr;
  v8 = getMPModelPropertyArtistIsDislikedSymbolLoc_ptr;
  if (!getMPModelPropertyArtistIsDislikedSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyArtistIsDisliked");
    getMPModelPropertyArtistIsDislikedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_21721831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertySongKeepLocalEnableState()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongKeepLocalEnableStateSymbolLoc_ptr;
  v8 = getMPModelPropertySongKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertySongKeepLocalEnableStateSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongKeepLocalEnableState");
    getMPModelPropertySongKeepLocalEnableStateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertySongKeepLocalManagedStatus()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongKeepLocalManagedStatusSymbolLoc_ptr;
  v8 = getMPModelPropertySongKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertySongKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongKeepLocalManagedStatus");
    getMPModelPropertySongKeepLocalManagedStatusSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertySongKeepLocalManagedStatusReason()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertySongKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v8 = getMPModelPropertySongKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertySongKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertySongKeepLocalManagedStatusReason");
    getMPModelPropertySongKeepLocalManagedStatusReasonSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipSongLocalFileAsset()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipSongLocalFileAssetSymbolLoc_ptr;
  v8 = getMPModelRelationshipSongLocalFileAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipSongLocalFileAssetSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipSongLocalFileAsset");
    getMPModelRelationshipSongLocalFileAssetSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyFileAssetNonPurgeable()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyFileAssetNonPurgeableSymbolLoc_ptr;
  v8 = getMPModelPropertyFileAssetNonPurgeableSymbolLoc_ptr;
  if (!getMPModelPropertyFileAssetNonPurgeableSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyFileAssetNonPurgeable");
    getMPModelPropertyFileAssetNonPurgeableSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyFileAssetProtectionType()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyFileAssetProtectionTypeSymbolLoc_ptr;
  v8 = getMPModelPropertyFileAssetProtectionTypeSymbolLoc_ptr;
  if (!getMPModelPropertyFileAssetProtectionTypeSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyFileAssetProtectionType");
    getMPModelPropertyFileAssetProtectionTypeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyFileAssetTraits()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyFileAssetTraitsSymbolLoc_ptr;
  v8 = getMPModelPropertyFileAssetTraitsSymbolLoc_ptr;
  if (!getMPModelPropertyFileAssetTraitsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyFileAssetTraits");
    getMPModelPropertyFileAssetTraitsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipSongStoreAsset()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipSongStoreAssetSymbolLoc_ptr;
  v8 = getMPModelRelationshipSongStoreAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipSongStoreAssetSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipSongStoreAsset");
    getMPModelRelationshipSongStoreAssetSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyStoreAssetRedownloadable()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyStoreAssetRedownloadableSymbolLoc_ptr;
  v8 = getMPModelPropertyStoreAssetRedownloadableSymbolLoc_ptr;
  if (!getMPModelPropertyStoreAssetRedownloadableSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyStoreAssetRedownloadable");
    getMPModelPropertyStoreAssetRedownloadableSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyStoreAssetSubscriptionRequired()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyStoreAssetSubscriptionRequiredSymbolLoc_ptr;
  v8 = getMPModelPropertyStoreAssetSubscriptionRequiredSymbolLoc_ptr;
  if (!getMPModelPropertyStoreAssetSubscriptionRequiredSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyStoreAssetSubscriptionRequired");
    getMPModelPropertyStoreAssetSubscriptionRequiredSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyStoreAssetNeedsUserUpload()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyStoreAssetNeedsUserUploadSymbolLoc_ptr;
  v8 = getMPModelPropertyStoreAssetNeedsUserUploadSymbolLoc_ptr;
  if (!getMPModelPropertyStoreAssetNeedsUserUploadSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyStoreAssetNeedsUserUpload");
    getMPModelPropertyStoreAssetNeedsUserUploadSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyStoreAssetEndpointType()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyStoreAssetEndpointTypeSymbolLoc_ptr;
  v8 = getMPModelPropertyStoreAssetEndpointTypeSymbolLoc_ptr;
  if (!getMPModelPropertyStoreAssetEndpointTypeSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyStoreAssetEndpointType");
    getMPModelPropertyStoreAssetEndpointTypeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelRelationshipSongHomeSharingAsset()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipSongHomeSharingAssetSymbolLoc_ptr;
  v8 = getMPModelRelationshipSongHomeSharingAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipSongHomeSharingAssetSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelRelationshipSongHomeSharingAsset");
    getMPModelRelationshipSongHomeSharingAssetSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyHomeSharingAssetAvailable()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyHomeSharingAssetAvailableSymbolLoc_ptr;
  v8 = getMPModelPropertyHomeSharingAssetAvailableSymbolLoc_ptr;
  if (!getMPModelPropertyHomeSharingAssetAvailableSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyHomeSharingAssetAvailable");
    getMPModelPropertyHomeSharingAssetAvailableSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_21721A2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21721A898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21721CA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertyCuratorName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyCuratorNameSymbolLoc_ptr;
  v8 = getMPModelPropertyCuratorNameSymbolLoc_ptr;
  if (!getMPModelPropertyCuratorNameSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyCuratorName");
    getMPModelPropertyCuratorNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyCuratorKind()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyCuratorKindSymbolLoc_ptr;
  v8 = getMPModelPropertyCuratorKindSymbolLoc_ptr;
  if (!getMPModelPropertyCuratorKindSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyCuratorKind");
    getMPModelPropertyCuratorKindSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyCuratorSubKind()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyCuratorSubKindSymbolLoc_ptr;
  v8 = getMPModelPropertyCuratorSubKindSymbolLoc_ptr;
  if (!getMPModelPropertyCuratorSubKindSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyCuratorSubKind");
    getMPModelPropertyCuratorSubKindSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyCuratorHandle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyCuratorHandleSymbolLoc_ptr;
  v8 = getMPModelPropertyCuratorHandleSymbolLoc_ptr;
  if (!getMPModelPropertyCuratorHandleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyCuratorHandle");
    getMPModelPropertyCuratorHandleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_21721D63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21721D6C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B20, &qword_217759358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21721D740(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void OUTLINED_FUNCTION_8_8()
{
  v2 = v1[11];
  v0[7] = v1[12];
  v0[8] = v2;
  v3 = v1[13];
  v0[5] = v1[14];
  v0[6] = v3;
}

void OUTLINED_FUNCTION_8_10()
{
  v1[26] = sub_2172AB494;
  v1[27] = v0;
  v1[28] = v2;
}

uint64_t OUTLINED_FUNCTION_8_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(a2 + 56) + 32 * (__clz(__rbit64(v3)) | (a1 << 6));

  return sub_21721E0AC(v5, va);
}

__n128 OUTLINED_FUNCTION_8_15(uint64_t a1)
{
  *(v3 + 88) = a1;
  v6 = *(v3 + 72);
  result = *(v3 + 40);
  *(a1 + 16) = v1;
  *(a1 + 24) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = result;
  *(a1 + 72) = v2;
  return result;
}

double OUTLINED_FUNCTION_8_18()
{
  result = 0.0;
  *(v0 + 1344) = 0u;
  *(v0 + 1360) = 0u;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = 0u;
  *(v0 + 1440) = 0;
  return result;
}

void OUTLINED_FUNCTION_8_24()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
}

uint64_t OUTLINED_FUNCTION_8_29()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_31(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_34(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_8_39()
{
  result = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_47(uint64_t a1)
{

  return sub_217752E58();
}

void OUTLINED_FUNCTION_8_55()
{
  v0[14] = sub_21758A640;
  v0[15] = v2;
  v0[10] = v1;
  v0[11] = v3;
}

uint64_t OUTLINED_FUNCTION_8_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return sub_2171F06D8(va, v24, v25);
}

void OUTLINED_FUNCTION_8_61()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_8_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_69()
{

  return sub_2177531E8();
}

uint64_t OUTLINED_FUNCTION_8_70@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[1] = a3;
  a1[2] = a4;
  *a1 = a2;
  __swift_destroy_boxed_opaque_existential_1(v4 + 5);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v5 + 8;
}

uint64_t OUTLINED_FUNCTION_8_71(uint64_t a1)
{

  return sub_2171F5110(a1, v1 + 608, v2, v3);
}

double OUTLINED_FUNCTION_8_74@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 1616) = a1;
  *(v1 + 1632) = 0;
  result = 0.0;
  *(v1 + 1640) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_75@<X0>(char a1@<W8>)
{
  *(v1 - 66) = a1;

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_8_78()
{
  sub_2171F3F0C((v0 + 176), v0 + 216);
  v1 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v1);
  return v1;
}

void *OUTLINED_FUNCTION_8_81(void *a1)
{

  return memcpy(a1, (v1 + 32), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_8_83@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_84(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_88@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_89(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 - 288) = a4;
  *(v4 - 228) = a3;
  *(v4 - 296) = a2;
  *(v4 - 304) = result;
  return result;
}

void OUTLINED_FUNCTION_8_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_217275C90(0, v7, 0, a4, a5, a6, a7);
}

__n128 OUTLINED_FUNCTION_8_95()
{
  v1 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v1;
  result = *(v0 + 80);
  *(v0 + 144) = result;
  return result;
}

uint64_t sub_21721E0AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  return sub_21721E0AC(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_21721E0AC(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21721E278()
{
  OUTLINED_FUNCTION_10();

  sub_21721E2E8();

  return MEMORY[0x2822009F8](sub_21721E7BC, 0, 0);
}

void sub_21721E2E8()
{
  if (!*(v0 + 56))
  {
    swift_weakInit();
    swift_weakAssign();
    v1 = objc_opt_self();
    v2 = *(v0 + 64);
    sub_2171F5110(v9, v8, &qword_27CB24DB0, &qword_217759FE0);
    OUTLINED_FUNCTION_37_3();
    v3 = swift_allocObject();
    sub_21721E6D0(v8, v3 + 16);
    v7[4] = sub_2172B3998;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_217656CF4;
    v7[3] = &block_descriptor_35_0;
    v4 = _Block_copy(v7);

    v5 = [v1 scheduledTimerWithTimeInterval:0 repeats:v4 block:v2];
    _Block_release(v4);
    sub_2171F0738(v9, &qword_27CB24DB0, &qword_217759FE0);
    v6 = *(v0 + 56);
    *(v0 + 56) = v5;
  }
}

uint64_t sub_21721E458()
{
  OUTLINED_FUNCTION_10();

  sub_21721E504();

  return MEMORY[0x2822009F8](sub_21721E868, 0, 0);
}

void sub_21721E504()
{
  if (!*(v0 + 40))
  {
    swift_weakInit();
    swift_weakAssign();
    v1 = objc_opt_self();
    sub_217202078(v8, v7, &qword_27CB28C88, &qword_217772018);
    v2 = swift_allocObject();
    sub_21721E74C(v7, v2 + 16);
    v6[4] = sub_21750D914;
    v6[5] = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_217656CF4;
    v6[3] = &block_descriptor_9;
    v3 = _Block_copy(v6);

    v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:0.01];
    _Block_release(v3);
    sub_2171F06D8(v8, &qword_27CB28C88, &qword_217772018);
    v5 = *(v0 + 40);
    *(v0 + 40) = v4;
  }
}

uint64_t sub_21721E694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21721E6D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DB0, &qword_217759FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21721E74C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C88, &qword_217772018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21721E7BC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(*(v0 + 64), &unk_27CB282D0, &qword_21776C3D0);
  OUTLINED_FUNCTION_10_10();
  sub_2171FC248(v1, v2, MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_14(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_21721E868()
{
  OUTLINED_FUNCTION_10();
  sub_2171F06D8(*(v0 + 64), &unk_27CB282D0, &qword_21776C3D0);
  sub_2171F8214();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_29_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_72(v2);

  return MEMORY[0x282200308](v4);
}

uint64_t MusicLibraryRequest.response()()
{
  OUTLINED_FUNCTION_10();
  v1[65] = v2;
  v1[64] = v3;
  memcpy(v1 + 48, v0, 0x49uLL);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21721E964()
{
  v35 = v0;
  static MusicAuthorization.currentStatus.getter(__dst);
  switch(LOBYTE(__dst[0]))
  {
    case 2:
      OUTLINED_FUNCTION_8_21();
      goto LABEL_3;
    case 3:

      goto LABEL_6;
    default:
LABEL_3:
      OUTLINED_FUNCTION_7_17();
      v1 = sub_217753058();

      if ((v1 & 1) == 0)
      {
        sub_21728FC9C(v2, v3, v4);
LABEL_14:
        swift_allocError();
        *v20 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_20_0();

        return v21();
      }

LABEL_6:
      *(v0 + 528) = *(*(v0 + 520) + 16);
      v5 = OUTLINED_FUNCTION_23_9(v2, v3, &protocol descriptor for MusicLibraryFlatRequestable);
      if (!v5)
      {
        sub_2173546F8(0, v6, v7);
        goto LABEL_14;
      }

      v8 = OUTLINED_FUNCTION_23_9(v5, v6, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
      if (!v8)
      {
        OUTLINED_FUNCTION_1_9();
        sub_217752AA8();
        v22 = OUTLINED_FUNCTION_8();
        MEMORY[0x21CEA23B0](v22);
        v23 = OUTLINED_FUNCTION_27_8();
        MEMORY[0x21CEA23B0](v23);

        OUTLINED_FUNCTION_21_53();
        MEMORY[0x21CEA23B0](v24 + 17, v25 | 0x8000000000000000);
        return OUTLINED_FUNCTION_0_88("Fatal error");
      }

      v10 = v8;
      v11 = v9;
      v12 = OUTLINED_FUNCTION_23_9(v8, v9, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
      *(v0 + 536) = v12;
      *(v0 + 544) = v13;
      if (!v12)
      {
        OUTLINED_FUNCTION_1_9();
        sub_217752AA8();
        v26 = OUTLINED_FUNCTION_8();
        MEMORY[0x21CEA23B0](v26);
        v27 = OUTLINED_FUNCTION_27_8();
        MEMORY[0x21CEA23B0](v27);

        OUTLINED_FUNCTION_21_53();
        MEMORY[0x21CEA23B0](v28 + 15, v29 | 0x8000000000000000);
        return OUTLINED_FUNCTION_0_88("Fatal error");
      }

      v14 = OUTLINED_FUNCTION_23_9(v12, v13, &protocol descriptor for MusicItemTypeValueProviding);
      *(v0 + 552) = v14;
      *(v0 + 560) = v15;
      if (!v14)
      {
        OUTLINED_FUNCTION_1_9();
        sub_217752AA8();
        v30 = OUTLINED_FUNCTION_8();
        MEMORY[0x21CEA23B0](v30);
        v31 = OUTLINED_FUNCTION_27_8();
        MEMORY[0x21CEA23B0](v31);

        MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0, v32);
        return OUTLINED_FUNCTION_0_88("Fatal error");
      }

      v16 = *(v0 + 520);
      (*(v11 + 8))(__dst, v10, v11);
      *(v0 + 377) = __dst[0];
      memcpy(__dst, (v0 + 384), 0x49uLL);
      v17 = sub_21721EDBC(v16);
      *(v0 + 568) = v17;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_21770568C;
      v18 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_246();
      *(v0 + 104) = v19;
      *(v0 + 112) = v18;
      [v17 performWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21721EDBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  v7 = *(v1 + 27);
  v8 = *(v1 + 28);
  v9 = *(v1 + 29);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v13 = *(v1 + 48);
  v12 = *(v1 + 56);
  LOBYTE(v20[0]) = *(v1 + 24);
  BYTE1(v20[0]) = v5;
  BYTE2(v20[0]) = v6;
  BYTE3(v20[0]) = v7;
  WORD2(v20[0]) = 0;
  BYTE6(v20[0]) = v8;
  *(v20 + 7) = v9;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  result = sub_21720E9D8(v13, v12, v10, v11, __src);
  if (v3 && (v17 = __OFADD__(v3, 1), ++v3, v17))
  {
    __break(1u);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    memcpy(v19, __src, sizeof(v19));
    v18 = sub_2172147FC(v20, v19, v3, v4, v2, v14, v15);
    sub_21721D674(__src);
    return v18;
  }

  return result;
}

uint64_t sub_21721EEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v67 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v65 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v21 = sub_217204DD0(a2);
  v64 = v12;
  v59 = v15;
  if (v21 || (v22 = OUTLINED_FUNCTION_29_32(), (v24 = v23(v22)) == 0))
  {
    sub_217751DE8();
  }

  else
  {
    a2 = v24;
  }

  v63 = a2;
  v25 = v65;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = AssociatedTypeWitness;
  v28 = swift_getAssociatedConformanceWitness();
  v69 = v25;
  v70 = v27;
  v60 = v28;
  v61 = AssociatedConformanceWitness;
  v71 = AssociatedConformanceWitness;
  v72 = v28;
  type metadata accessor for LibraryRequestConfigurationParameters(0, &v69);
  v69 = *a3;
  LOBYTE(v70) = *(a3 + 8);
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = v5;
  v30 = sub_217696EF4(&v69, sub_2175673CC, v29);
  v31 = OUTLINED_FUNCTION_29_32();
  v32(v31);
  v33 = *(*v30 + 368);
  OUTLINED_FUNCTION_43_20();
  (*(v17 + 40))(v30 + v33, v20, v25);
  swift_endAccess();
  v34 = v59;
  v35 = OUTLINED_FUNCTION_29_32();
  v36(v35);
  v37 = *(*v30 + 376);
  OUTLINED_FUNCTION_43_20();
  v38 = *(v64 + 40);
  v64 = v30;
  v38(v30 + v37, v34, v27);
  swift_endAccess();
  result = sub_217204DD0(v67);
  v68 = v6;
  v62 = a4;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    v40 = 0;
    v58 = a5[8];
    v59 = a5 + 8;
    v57 = v67 & 0xC000000000000001;
    do
    {
      v41 = result;
      if (v57)
      {
        v42 = MEMORY[0x21CEA2E30](v40, v67);
      }

      else
      {
        v42 = *(v67 + 8 * v40 + 32);
      }

      ++v40;
      v43 = v62;
      v75 = v58(v62, a5);
      MEMORY[0x28223BE20](v75);
      *(&v56 - 4) = v43;
      *(&v56 - 3) = a5;
      v45 = v64;
      v44 = v65;
      *(&v56 - 2) = v42;
      *(&v56 - 1) = v45;
      v46 = a5[2];
      v69 = v43;
      v70 = v44;
      v71 = AssociatedTypeWitness;
      v72 = v46;
      v73 = v61;
      v74 = v60;
      type metadata accessor for PartialLibraryPredicateResolver(255, &v69);
      sub_217752418();
      OUTLINED_FUNCTION_32_0();
      swift_getWitnessTable();
      sub_2177521C8();

      result = v41;
    }

    while (v41 != v40);
  }

  v75 = MEMORY[0x277D84F90];
  v47 = v63;
  result = sub_217204DD0(v63);
  if (!result)
  {

    v54 = MEMORY[0x277D84F90];
LABEL_21:
    v55 = v64;
    swift_beginAccess();
    *(v55 + 40) = v54;

    return v55;
  }

  if (result >= 1)
  {
    v48 = 0;
    v67 = a5;
    v65 = a5[9];
    AssociatedTypeWitness = a5 + 9;
    v61 = v47 & 0xC000000000000001;
    v49 = v62;
    do
    {
      v50 = result;
      if (v61)
      {
        v51 = MEMORY[0x21CEA2E30](v48, v47);
      }

      else
      {
        v51 = *(v47 + 8 * v48 + 32);
      }

      ++v48;
      v52 = v67;
      v69 = v65(v49, v67);
      MEMORY[0x28223BE20](v69);
      *(&v56 - 4) = v49;
      *(&v56 - 3) = v52;
      *(&v56 - 2) = v51;
      *(&v56 - 1) = &v75;
      type metadata accessor for LibrarySortDescriptorResolver(255, v49, *(v52 + 16), v53);
      sub_217752418();
      OUTLINED_FUNCTION_32_0();
      swift_getWitnessTable();
      sub_2177521C8();

      result = v50;
      v47 = v63;
    }

    while (v50 != v48);

    v54 = v75;
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_21721F744(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 & a1) != 0)
  {
    *v2 &= ~a1;
  }

  OUTLINED_FUNCTION_18_5(a2);
}

uint64_t sub_21721F764(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_21721F7C4(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_21721F82C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_21721F794(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_21721F8B4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_21721F7F4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_21721F910(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_21721F7A4(v2, v3);
  *v1 = result;
  return result;
}

void *sub_21721F938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21721F950@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_21725A450(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21721F9B0()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21721FA70(char a1)
{
  if (a1)
  {
    return 1954047342;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21721FA94()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

__n128 sub_21721FB18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21721FB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217751888();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21721FBD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217751888();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217220090()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722016C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21726D0EC(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21722019C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21726D208(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21722025C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172202A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2172202B4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172202EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217220324()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722037C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172204D0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217220594()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172205DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722063C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217220654()
{

  OUTLINED_FUNCTION_28_6();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217220690()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172206E4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217220A00()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v7 = MEMORY[0x277D84F90];
  *&v6 = MEMORY[0x277D84F90];
  *(&v6 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v1, v2, v3, v4, 5001813, 0xE300000000000000, 0, 0, v6, v7, qword_282959AF8);
}

uint64_t sub_217220A5C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v7 = MEMORY[0x277D84F90];
  *&v6 = MEMORY[0x277D84F90];
  *(&v6 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v1, v2, v3, v4, 2, 0, 2, 0, v6, v7, qword_282959AF8);
}

uint64_t sub_217220B14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudAlbum.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217220B98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudAlbum.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217220C14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_195_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_217(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_217220C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217220E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217220E6C(a1, a2);
  *a3 = result & 1;
  return result;
}

double sub_217221010(uint64_t result)
{
  if (result != 1)
  {
  }

  return v1;
}

uint64_t sub_217221020(uint64_t result)
{
  if (result != 1)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_217221030()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217221078()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = OUTLINED_FUNCTION_164_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2172210B0(uint64_t a1)
{
  if (*(v1 + 72) <= 8u)
  {

    __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  }

  v2 = OUTLINED_FUNCTION_164_2();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_2172210F4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217221138(uint64_t a1)
{
  if (*(v1 + 72) <= 2u)
  {

    __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  }

  v2 = OUTLINED_FUNCTION_164_2();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit03AnyA28LibrarySearchExtendedResultsVSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217221630()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_207_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217221668()
{
  if (v0[3] != 1)
  {
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172216EC()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172217DC()
{

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217221848()
{

  OUTLINED_FUNCTION_207_2();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722188C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172218DC()
{

  if (*(v0 + 80) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217221980(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[22];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[32];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[66]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_217221A84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[22];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[66]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[32];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_217221BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_20();
  v6 = sub_2177512F8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_217221C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2177512F8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217221CFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217221D34()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217221EA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217221F70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudMusicVideo.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217221FE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudMusicVideo.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217222064(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2172220F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722232C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177517D8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_217222374(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177517D8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2172225C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217222648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2172226C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_195_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_217(*(a3 + 88));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_217222748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 88));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722289C(char a1)
{
  if (!a1)
  {
    return 0x7472616863;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x6449726564726FLL;
}

BOOL sub_217222938(uint64_t a1, uint64_t a2)
{
  v2 = sub_217752DC8();

  return v2 != 0;
}

uint64_t sub_217222980()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217222A50(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 136) = 0;
  *(v1 + 144) = v2;
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_217222A88(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = MEMORY[0x277D84F90];
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_217222D14()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217222D5C()
{

  if (v0[11] != 1)
  {
  }

  if (v0[14])
  {
  }

  if (v0[17])
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217222DEC()
{

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217222E28()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217222E78()
{

  if (*(v0 + 312))
  {
  }

  if (*(v0 + 432))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217222F14()
{
  if (*(v0 + 40) != 1)
  {
    if (*(v0 + 16) != 1)
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217222F74()
{
  if (*(v0 + 40) != 1)
  {
    if (*(v0 + 16) != 1)
    {
    }
  }

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217223174()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217223210()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172232D0()
{

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722333C()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722342C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722347C()
{

  if (v0[20])
  {
  }

  if (v0[24])
  {
  }

  if (v0[42])
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217223598(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[9];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[29];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[60]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_21722369C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[9];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[60]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[29];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_217223960()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_2173A9DF4(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_21722398C()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_2173A9ECC(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_2172239B8()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_21720BEDC(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_2172239E4()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_2173AA050(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_217223A10()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_217212474(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_217223A64()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_2173AA260(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_217223B70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217223C58()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217223D10()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217223DB0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2173C47B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_217223E38()
{

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2172247C0(uint64_t *a1@<X8>)
{
  sub_2172C3638();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_217224940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  else
  {
    return sub_217753058() & 1;
  }
}

uint64_t sub_2172249B8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2172249EC()
{
  OUTLINED_FUNCTION_1101((v0 + 16));
  OUTLINED_FUNCTION_207_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217224A20()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  OUTLINED_FUNCTION_1438();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217224A74()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  OUTLINED_FUNCTION_1438();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217224AC0()
{
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v1);
}

BOOL sub_217224E8C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_217224F0C()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217224F78()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217225068()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172250F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2172251B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217225268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2177516D8();
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_217751518();
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_217225358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2177516D8();
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_217751518();
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21722546C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2172254F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2172255C4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_21722560C(uint64_t a1, uint64_t a2)
{
  v2 = sub_217752DC8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217225658(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1954047342;
  }

  return 0xD000000000000019;
}

uint64_t sub_2172256A0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v1);
}
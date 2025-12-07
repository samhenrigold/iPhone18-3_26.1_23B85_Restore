void sub_21672B330(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for BubbleLockup(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(v4 + a4[6]) = a2 + 1;
        return;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
      v15 = a4[7];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21672B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170067A4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21672B56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2170067A4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672B6F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21672B728()
{

  return swift_deallocObject();
}

uint64_t sub_21672B7BC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a3[8];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21672B8F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21672BA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21672BAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21672BB9C()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_216A906B4(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_21672BBFC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1630, &qword_21703EB48);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21672BC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700C924();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672BD14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700C924();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672BDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672BE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
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

    return (v8 + 1);
  }
}

uint64_t sub_21672BF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21672BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v8 = a1 + *(a3 + 32);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21672C0A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672C1A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1698, &qword_21703F040);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D0, &qword_21703F060);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1690, &qword_21703F038);
  sub_216A94BA0();
  OUTLINED_FUNCTION_3_5();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16D8, &qword_21703F068);
  sub_216A94C60();
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21672C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21672C324(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672C3C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AB5EBC();
  *a1 = result;
  return result;
}

uint64_t sub_21672C414()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21672C45C()
{
  v2 = _s7SectionVMa(0);
  v3 = *(*(v2 - 1) + 80);
  swift_unknownObjectRelease();

  v4 = v0 + ((v3 + 40) & ~v3);

  v5 = v2[5];
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_20_1(v4 + v5))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = (v4 + v2[6]);
  v9 = _s7SectionV6HeaderVMa(0);
  v10 = OUTLINED_FUNCTION_84_13();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    v12 = OUTLINED_FUNCTION_144_2();
    v13 = _s7SectionV6HeaderV12HeaderLockupOMa(v12);
    v14 = OUTLINED_FUNCTION_84_13();
    if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
    {
      OUTLINED_FUNCTION_226();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_24;
        case 1u:
          v29 = OUTLINED_FUNCTION_65_10();
          v30 = type metadata accessor for ComposerSectionHeader(v29);
          v1 = v30[5];
          if (!OUTLINED_FUNCTION_20_1(&v8[v1]))
          {
            OUTLINED_FUNCTION_4_23();
            (*(v31 + 8))(&v8[v1], v6);
          }

          OUTLINED_FUNCTION_7_7(v30[6]);

          OUTLINED_FUNCTION_7_7(v30[10]);

          v32 = OUTLINED_FUNCTION_115_2(v30[11]);
          if (v33)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v32);
          }

          v34 = OUTLINED_FUNCTION_144_2();
          v35 = type metadata accessor for ContentDescriptor(v34);
          v36 = OUTLINED_FUNCTION_84_13();
          if (!__swift_getEnumTagSinglePayload(v36, v37, v35))
          {

            v38 = OUTLINED_FUNCTION_250_0();
            if (!OUTLINED_FUNCTION_17_13(&v8[v1]))
            {
              OUTLINED_FUNCTION_50();
              (*(v39 + 8))(&v8[v1], v38);
            }
          }

          break;
        case 2u:
          if (*(v8 + 1))
          {

            if (*(v8 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v8 + 4);
            }
          }

          if (*(v8 + 10))
          {

            if (*(v8 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v8 + 13);
            }
          }

          type metadata accessor for DefaultSectionHeader(0);
          v22 = OUTLINED_FUNCTION_144_2();
          v23 = type metadata accessor for Artwork(v22);
          v24 = OUTLINED_FUNCTION_84_13();
          if (!__swift_getEnumTagSinglePayload(v24, v25, v23))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v26 + 8))(v8);
            OUTLINED_FUNCTION_212_0();
            OUTLINED_FUNCTION_9_0();
            (*(v27 + 8))(&v8[v23], v28);
          }

          break;
        case 3u:
          if (*(v8 + 1))
          {

            if (*(v8 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v8 + 4);
            }
          }

LABEL_24:

          break;
        default:
          break;
      }
    }
  }

  if (*(v4 + v2[10] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + v2[10]));
  }

  v16 = v4 + v2[12];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
  v18 = OUTLINED_FUNCTION_84_13();
  if (!__swift_getEnumTagSinglePayload(v18, v19, v17))
  {

    v17 = *(v17 + 36);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v16 + v17);
  }

  v21 = (v4 + v2[13]);
  type metadata accessor for SectionContent(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v225 = OUTLINED_FUNCTION_82();
        v226(v225);
      }

      v227 = type metadata accessor for AlbumDetailHeaderLockup(0);
      OUTLINED_FUNCTION_163_0(v227);
      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_221_1();

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      v228 = OUTLINED_FUNCTION_116_5();
      v229 = type metadata accessor for ModalPresentationDescriptor(v228);
      if (!OUTLINED_FUNCTION_54_1(v229))
      {

        v1 = *(v1 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v230 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 48));

      v231 = OUTLINED_FUNCTION_116_5();
      v232 = type metadata accessor for Artwork(v231);
      if (!OUTLINED_FUNCTION_54_1(v232))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v233 + 8))(v17);
        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v234 + 8))(v17 + v1);
      }

      v235 = OUTLINED_FUNCTION_116_5();
      v236 = type metadata accessor for VideoArtwork(v235);
      if (!OUTLINED_FUNCTION_54_1(v236))
      {

        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v237 + 8))(v17 + v1);
      }

      v238 = OUTLINED_FUNCTION_116_5();
      v239 = type metadata accessor for ContentDescriptor(v238);
      if (!OUTLINED_FUNCTION_54_1(v239))
      {

        v240 = *(v1 + 24);
        v241 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_204_0(v241))
        {
          OUTLINED_FUNCTION_50();
          (*(v242 + 8))(v17 + v498, v240);
        }
      }

      v243 = type metadata accessor for LinkComponentModel(0);
      if (!OUTLINED_FUNCTION_112_8(v243))
      {
        v244 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v244, v245, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v246 = OUTLINED_FUNCTION_27_0();
          v247(v246);
        }

        v248 = OUTLINED_FUNCTION_119_6();
        if (v249)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v248);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v250 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v250, v251, v17))
      {
        v252 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v252, v253, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v254 = OUTLINED_FUNCTION_27_0();
          v255(v254);
        }

        v256 = OUTLINED_FUNCTION_119_6();
        if (v257)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v256);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v258 = *(v9 + 72);
      goto LABEL_260;
    case 1u:

      v259 = &qword_27CABB7D8;
      v260 = &unk_21703F640;
      goto LABEL_298;
    case 2u:
      v167 = OUTLINED_FUNCTION_65_10();
      v168 = type metadata accessor for AnimatedTextListItem(v167);
      goto LABEL_285;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xFu:
    case 0x10u:
    case 0x13u:
    case 0x14u:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x25u:
    case 0x30u:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_309;
    case 4u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v173 = OUTLINED_FUNCTION_82();
        v174(v173);
      }

      v175 = type metadata accessor for ArtistDetailHeaderLockup(0);
      OUTLINED_FUNCTION_16_40(v175);
      OUTLINED_FUNCTION_7_7(v176);

      v177 = OUTLINED_FUNCTION_116_5();
      v178 = type metadata accessor for Artwork(v177);
      if (!OUTLINED_FUNCTION_54_1(v178))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v179 + 8))(v17);
        v180 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v181 + 8))(v17 + v180);
      }

      v501 = v1;
      v182 = v6[9];
      sub_2170061E4();
      OUTLINED_FUNCTION_9_0();
      (*(v183 + 8))(&v21[v182]);
      v184 = OUTLINED_FUNCTION_115_2(v6[10]);
      if (v185)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v184);
      }

      v186 = OUTLINED_FUNCTION_116_5();
      v187 = type metadata accessor for ContentDescriptor(v186);
      if (!OUTLINED_FUNCTION_54_1(v187))
      {

        v188 = *(v1 + 24);
        v189 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_176_0(v17 + v188))
        {
          OUTLINED_FUNCTION_50();
          (*(v190 + 8))(v17 + v188, v189);
        }
      }

      v191 = &v21[v6[12]];
      v192 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v192, v193, v501))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v194 + 8))(v191);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v195 + 8))(&v191[v501]);
      }

      v196 = OUTLINED_FUNCTION_144_2();
      v197 = type metadata accessor for VideoArtwork(v196);
      if (OUTLINED_FUNCTION_83_12())
      {
        break;
      }

      goto LABEL_339;
    case 5u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v127 = OUTLINED_FUNCTION_82();
        v128(v127);
      }

      v129 = type metadata accessor for ArtistLatestReleaseLockup(0);
      OUTLINED_FUNCTION_16_40(v129);
      OUTLINED_FUNCTION_7_7(v130);

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      v131 = OUTLINED_FUNCTION_115_2(v6[10]);
      if (v132)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
      }

      v133 = OUTLINED_FUNCTION_174_0();
      v134 = type metadata accessor for ContentDescriptor(v133);
      if (!OUTLINED_FUNCTION_4_16(v134))
      {

        v17 = OUTLINED_FUNCTION_250_0();
        if (!OUTLINED_FUNCTION_17_13(v9 + v1))
        {
          OUTLINED_FUNCTION_50();
          (*(v135 + 8))(v9 + v1, v17);
        }
      }

      v136 = OUTLINED_FUNCTION_174_0();
      v137 = type metadata accessor for Artwork(v136);
      if (!OUTLINED_FUNCTION_4_16(v137))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v138 + 8))(v9);
        OUTLINED_FUNCTION_212_0();
        OUTLINED_FUNCTION_9_0();
        (*(v139 + 8))(v9 + v17);
      }

      v140 = OUTLINED_FUNCTION_115_2(v6[14]);
      if (v141)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
      }

      v85 = v6[15];
      goto LABEL_296;
    case 6u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v271 = OUTLINED_FUNCTION_82();
        v272(v271);
      }

      v273 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v21[v273[5]]);
      v274 = &v21[v273[6]];
      v275 = type metadata accessor for ArtistLatestReleaseLockup(0);
      v503 = v273;
      if (!OUTLINED_FUNCTION_176_0(v274))
      {
        v494 = v275;
        if (!OUTLINED_FUNCTION_20_1(v274))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v276 + 8))(v274, v6);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v274 + v275[5]));
        OUTLINED_FUNCTION_254();
        OUTLINED_FUNCTION_254();
        OUTLINED_FUNCTION_254();
        v277 = v275;
        v278 = (v274 + v275[10]);
        if (v278[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v278);
          v277 = v275;
        }

        v279 = v274 + v277[12];
        v280 = type metadata accessor for ContentDescriptor(0);
        if (!OUTLINED_FUNCTION_54_1(v280))
        {

          v281 = v275[6];
          v493 = sub_217005EF4();
          if (!__swift_getEnumTagSinglePayload(v279 + v281, 1, v493))
          {
            OUTLINED_FUNCTION_50();
            (*(v282 + 8))(v279 + v281);
          }
        }

        v283 = v274 + v494[13];
        type metadata accessor for Artwork(0);
        v492 = v283;
        v284 = OUTLINED_FUNCTION_19_2();
        v286 = v285;
        if (!__swift_getEnumTagSinglePayload(v284, v287, v285))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v288 + 8))(v492);
          OUTLINED_FUNCTION_212_0();
          OUTLINED_FUNCTION_9_0();
          (*(v289 + 8))(v492 + v286);
        }

        v290 = (v274 + v494[14]);
        if (v290[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v290);
        }

        OUTLINED_FUNCTION_254();
        v273 = v503;
      }

      v291 = &v21[v273[7]];
      v292 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v292, v293, v9))
      {
        v294 = &v291[*(v9 + 20)];
        v295 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_112_8(v295))
        {
          OUTLINED_FUNCTION_39();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_366;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v294);
              v482 = type metadata accessor for ComposerSectionHeader(0);
              v495 = v482[5];
              if (!OUTLINED_FUNCTION_20_1(&v294[v495]))
              {
                OUTLINED_FUNCTION_4_23();
                (*(v483 + 8))(&v294[v495], v6);
              }

              v484 = &v294[v482[11]];
              if (*(v484 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v484);
              }

              v485 = &v294[v482[12]];
              v486 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_112_8(v486))
              {

                v487 = v482[6];
                v488 = sub_217005EF4();
                v496 = v487;
                v489 = &v485[v487];
                v490 = v488;
                if (!__swift_getEnumTagSinglePayload(v489, 1, v488))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v491 + 8))(&v485[v496], v490);
                }
              }

              break;
            case 2u:
              if (*(v294 + 1))
              {

                if (*(v294 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v294 + 4);
                }
              }

              if (*(v294 + 10))
              {

                if (*(v294 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v294 + 13);
                }
              }

              v471 = &v294[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              v472 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_112_8(v472))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v473 + 8))(v471);
                OUTLINED_FUNCTION_212_0();
                OUTLINED_FUNCTION_9_0();
                (*(v474 + 8))(v273 + v471, v475);
              }

              break;
            case 3u:
              if (*(v294 + 1))
              {

                if (*(v294 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v294 + 4);
                }
              }

LABEL_366:

              break;
            default:
              break;
          }
        }
      }

      v21 += v503[9];
      v296 = OUTLINED_FUNCTION_84_13();
      if (!__swift_getEnumTagSinglePayload(v296, v297, v9))
      {
        v298 = OUTLINED_FUNCTION_144_2();
        v299 = _s7SectionV6HeaderV12HeaderLockupOMa(v298);
        v300 = OUTLINED_FUNCTION_84_13();
        if (!__swift_getEnumTagSinglePayload(v300, v301, v299))
        {
          OUTLINED_FUNCTION_115();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              goto LABEL_71;
            case 1u:
              v476 = OUTLINED_FUNCTION_65_10();
              v477 = type metadata accessor for ComposerSectionHeader(v476);
              if (!OUTLINED_FUNCTION_42_23(v477))
              {
                OUTLINED_FUNCTION_4_23();
                v478 = OUTLINED_FUNCTION_129_0();
                v479(v478);
              }

              OUTLINED_FUNCTION_56_15();

              OUTLINED_FUNCTION_221_1();

              OUTLINED_FUNCTION_7_7(*(v299 + 40));

              v480 = OUTLINED_FUNCTION_115_2(*(v299 + 44));
              if (v481)
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v480);
              }

              goto LABEL_327;
            case 2u:
              if (*(v21 + 1))
              {

                if (*(v21 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v21 + 4);
                }
              }

              if (*(v21 + 10))
              {

                if (*(v21 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v21 + 13);
                }
              }

              type metadata accessor for DefaultSectionHeader(0);
              goto LABEL_336;
            case 3u:
              if (*(v21 + 1))
              {

                if (*(v21 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v21 + 4);
                }
              }

              goto LABEL_90;
            default:
              goto LABEL_310;
          }
        }
      }

      break;
    case 8u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v323 = OUTLINED_FUNCTION_82();
        v324(v323);
      }

      v325 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
      OUTLINED_FUNCTION_16_40(v325);
      v326 = OUTLINED_FUNCTION_174_0();
      v327 = type metadata accessor for ContentDescriptor(v326);
      if (!OUTLINED_FUNCTION_4_16(v327))
      {

        v328 = OUTLINED_FUNCTION_250_0();
        if (!OUTLINED_FUNCTION_17_13(v9 + v1))
        {
          OUTLINED_FUNCTION_50();
          (*(v329 + 8))(v9 + v1, v328);
        }
      }

      OUTLINED_FUNCTION_7_7(v6[8]);

      if (*&v21[v6[9] + 8])
      {
      }

      goto LABEL_309;
    case 9u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v198 = OUTLINED_FUNCTION_82();
        v199(v198);
      }

      v200 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
      OUTLINED_FUNCTION_163_0(v200);
      OUTLINED_FUNCTION_56_15();

      v201 = *(v9 + 28);
      v502 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(&v21[v201], 1, v502))
      {
        OUTLINED_FUNCTION_50();
        (*(v202 + 8))(&v21[v201]);
      }

      v203 = &v21[*(v9 + 32)];
      v204 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_112_8(v204))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v205 + 8))(v203);
        v206 = *(v201 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v207 + 8))(&v203[v206]);
      }

      v208 = &v21[*(v9 + 40)];
      v209 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v209, v210, v201))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v211 + 8))(v208);
        v212 = *(v201 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v213 + 8))(&v208[v212]);
      }

      v214 = OUTLINED_FUNCTION_116_5();
      v215 = type metadata accessor for VideoArtwork(v214);
      if (!OUTLINED_FUNCTION_54_1(v215))
      {

        v216 = *(v208 + 5);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v217 + 8))(v201 + v216);
      }

      v218 = OUTLINED_FUNCTION_144_2();
      v219 = type metadata accessor for ContentDescriptor(v218);
      v220 = OUTLINED_FUNCTION_84_13();
      if (!__swift_getEnumTagSinglePayload(v220, v221, v219))
      {

        v222 = *(v219 + 24);
        if (!__swift_getEnumTagSinglePayload(&v21[v222], 1, v502))
        {
          OUTLINED_FUNCTION_50();
          (*(v223 + 8))(&v21[v222], v224);
        }
      }

      break;
    case 0xAu:
      v377 = OUTLINED_FUNCTION_65_10();
      v378 = type metadata accessor for EmptyStateLockup(v377);
      if (!OUTLINED_FUNCTION_42_23(v378))
      {
        OUTLINED_FUNCTION_4_23();
        v379 = OUTLINED_FUNCTION_129_0();
        v380(v379);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      OUTLINED_FUNCTION_7_7(*(v9 + 36));

      v381 = OUTLINED_FUNCTION_116_5();
      v197 = type metadata accessor for Artwork(v381);
      v382 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v382, v383, v197))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v384 + 8))(v17);
        v385 = *(v197 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v386 + 8))(v17 + v385);
      }

      v387 = OUTLINED_FUNCTION_144_2();
      v388 = type metadata accessor for ColorSchemeArtwork(v387);
      v389 = OUTLINED_FUNCTION_84_13();
      if (__swift_getEnumTagSinglePayload(v389, v390, v388))
      {
        break;
      }

      if (!OUTLINED_FUNCTION_83_12())
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v391 + 8))(v21);
        v392 = *(v197 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v393 + 8))(&v21[v392]);
      }

      v322 = *(v388 + 20);
LABEL_278:
      v21 += v322;
      goto LABEL_337;
    case 0xCu:

      __swift_destroy_boxed_opaque_existential_1Tm(v21 + 1);
      v151 = type metadata accessor for GradientListRowModel(0);
      if (!OUTLINED_FUNCTION_114_7())
      {
        OUTLINED_FUNCTION_4_23();
        v152 = OUTLINED_FUNCTION_129_0();
        v153(v152);
      }

      v154 = OUTLINED_FUNCTION_115_2(*(v151 + 28));
      if (v155)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v154);
      }

      v156 = &v21[*(v151 + 32)];
      if (*(v156 + 4))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v156 + 1);
      }

      goto LABEL_90;
    case 0xDu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v370 = OUTLINED_FUNCTION_82();
        v371(v370);
      }

      v372 = type metadata accessor for GroupedTextListLockup(0);
      OUTLINED_FUNCTION_16_40(v372);
      v373 = OUTLINED_FUNCTION_174_0();
      v374 = type metadata accessor for ModalPresentationDescriptor(v373);
      if (!OUTLINED_FUNCTION_4_16(v374))
      {

        v375 = *(v17 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v376 + 8))(v9 + v375);
      }

      goto LABEL_309;
    case 0xEu:
      v123 = OUTLINED_FUNCTION_65_10();
      v124 = type metadata accessor for HeaderComponentModel(v123);
      if (!OUTLINED_FUNCTION_42_23(v124))
      {
        OUTLINED_FUNCTION_4_23();
        v125 = OUTLINED_FUNCTION_129_0();
        v126(v125);
      }

      OUTLINED_FUNCTION_56_15();
      goto LABEL_94;
    case 0x11u:
      v142 = OUTLINED_FUNCTION_65_10();
      v143 = type metadata accessor for InlineUpsell(v142);
      if (!OUTLINED_FUNCTION_42_23(v143))
      {
        OUTLINED_FUNCTION_4_23();
        v144 = OUTLINED_FUNCTION_129_0();
        v145(v144);
      }

      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      v146 = OUTLINED_FUNCTION_115_2(*(v9 + 36));
      if (v147)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v146);
      }

      v148 = OUTLINED_FUNCTION_115_2(*(v9 + 40));
      if (v149)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v148);
      }

      v150 = *(v9 + 44);
      goto LABEL_304;
    case 0x12u:
      v306 = OUTLINED_FUNCTION_65_10();
      v307 = type metadata accessor for LandingUpsell(v306);
      if (!OUTLINED_FUNCTION_42_23(v307))
      {
        OUTLINED_FUNCTION_4_23();
        v308 = OUTLINED_FUNCTION_129_0();
        v309(v308);
      }

      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      OUTLINED_FUNCTION_7_7(*(v9 + 36));

      v310 = OUTLINED_FUNCTION_115_2(*(v9 + 40));
      if (v311)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v310);
      }

      v312 = OUTLINED_FUNCTION_115_2(*(v9 + 44));
      if (v313)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v312);
      }

      v314 = OUTLINED_FUNCTION_115_2(*(v9 + 48));
      if (v315)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v314);
      }

      v316 = OUTLINED_FUNCTION_116_5();
      v197 = type metadata accessor for Artwork(v316);
      v317 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v317, v318, v197))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v319 + 8))(v17);
        v320 = *(v197 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v321 + 8))(v17 + v320);
      }

      v322 = *(v9 + 56);
      goto LABEL_278;
    case 0x15u:

      v118 = *(type metadata accessor for SearchResultsListSection(0) + 28);
      sub_21700D194();
      goto LABEL_340;
    case 0x16u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v169 = OUTLINED_FUNCTION_82();
        v170(v169);
      }

      v171 = type metadata accessor for ListSection(0);
      OUTLINED_FUNCTION_16_40(v171);
      OUTLINED_FUNCTION_7_7(v172);

      OUTLINED_FUNCTION_7_7(v6[7]);

      goto LABEL_309;
    case 0x17u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v101 = OUTLINED_FUNCTION_82();
        v102(v101);
      }

      v103 = type metadata accessor for SongDetailList(0);
      OUTLINED_FUNCTION_163_0(v103);
      v104 = OUTLINED_FUNCTION_116_5();
      v105 = type metadata accessor for SongDetailListHeaderLockup(v104);
      if (!OUTLINED_FUNCTION_54_1(v105))
      {
        v106 = OUTLINED_FUNCTION_19_2();
        if (!__swift_getEnumTagSinglePayload(v106, v107, v6))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v108 + 8))(v17, v6);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v17 + *(v1 + 20)));
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_249();
        v109 = (v17 + *(v1 + 32));
        if (v109[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v109);
        }

        v110 = (v17 + *(v1 + 36));
        if (v110[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v110);
        }

        v111 = v17 + *(v1 + 40);
        v499 = type metadata accessor for ContentDescriptor(0);
        if (!__swift_getEnumTagSinglePayload(v111, 1, v499))
        {

          v500 = *(v499 + 24);
          v497 = sub_217005EF4();
          if (!__swift_getEnumTagSinglePayload(v111 + v500, 1, v497))
          {
            OUTLINED_FUNCTION_50();
            (*(v112 + 8))(v111 + v113);
          }
        }

        v114 = v17 + *(v1 + 44);
        v115 = type metadata accessor for Artwork(0);
        if (!OUTLINED_FUNCTION_17_13(v114))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v116 + 8))(v114);
          OUTLINED_FUNCTION_212_0();
          OUTLINED_FUNCTION_9_0();
          (*(v117 + 8))(v114 + v115);
        }
      }

      OUTLINED_FUNCTION_221_1();
LABEL_94:

      goto LABEL_327;
    case 0x18u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v264 = OUTLINED_FUNCTION_82();
        v265(v264);
      }

      v266 = type metadata accessor for ParagraphComponentModel(0);
      OUTLINED_FUNCTION_16_40(v266);
      OUTLINED_FUNCTION_7_7(v267);
      goto LABEL_193;
    case 0x19u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v330 = OUTLINED_FUNCTION_82();
        v331(v330);
      }

      v332 = type metadata accessor for PlaylistDetailHeaderLockup(0);
      OUTLINED_FUNCTION_163_0(v332);
      OUTLINED_FUNCTION_56_15();

      OUTLINED_FUNCTION_221_1();

      OUTLINED_FUNCTION_7_7(*(v9 + 32));

      v333 = OUTLINED_FUNCTION_116_5();
      v334 = type metadata accessor for ModalPresentationDescriptor(v333);
      if (!OUTLINED_FUNCTION_54_1(v334))
      {

        v1 = *(v1 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v335 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 44));

      v336 = OUTLINED_FUNCTION_116_5();
      v337 = type metadata accessor for Artwork(v336);
      if (!OUTLINED_FUNCTION_54_1(v337))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v338 + 8))(v17);
        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v339 + 8))(v17 + v1);
      }

      v340 = OUTLINED_FUNCTION_116_5();
      v341 = type metadata accessor for VideoArtwork(v340);
      if (!OUTLINED_FUNCTION_54_1(v341))
      {

        OUTLINED_FUNCTION_255_0();
        OUTLINED_FUNCTION_9_0();
        (*(v342 + 8))(v17 + v1);
      }

      v343 = OUTLINED_FUNCTION_116_5();
      v344 = type metadata accessor for ContentDescriptor(v343);
      if (!OUTLINED_FUNCTION_54_1(v344))
      {

        v345 = *(v1 + 24);
        v346 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_204_0(v346))
        {
          OUTLINED_FUNCTION_50();
          (*(v347 + 8))(v17 + v498, v345);
        }
      }

      v348 = type metadata accessor for LinkComponentModel(0);
      if (!OUTLINED_FUNCTION_112_8(v348))
      {
        v349 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v349, v350, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v351 = OUTLINED_FUNCTION_27_0();
          v352(v351);
        }

        v353 = OUTLINED_FUNCTION_119_6();
        if (v354)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v353);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v355 = OUTLINED_FUNCTION_49_1();
      if (!__swift_getEnumTagSinglePayload(v355, v356, v17))
      {
        v357 = OUTLINED_FUNCTION_49_1();
        if (!__swift_getEnumTagSinglePayload(v357, v358, v6))
        {
          OUTLINED_FUNCTION_4_23();
          v359 = OUTLINED_FUNCTION_27_0();
          v360(v359);
        }

        v361 = OUTLINED_FUNCTION_119_6();
        if (v362)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v361);
        }

        OUTLINED_FUNCTION_185_0();
      }

      v258 = *(v9 + 68);
LABEL_260:
      v363 = &v21[v258];
      v364 = OUTLINED_FUNCTION_84_13();
      if (__swift_getEnumTagSinglePayload(v364, v365, v17))
      {
        break;
      }

      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v366 = OUTLINED_FUNCTION_82();
        v367(v366);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v363[*(v17 + 20)]);
      v368 = OUTLINED_FUNCTION_115_2(*(v17 + 24));
      if (v369)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v368);
      }

      v85 = *(v17 + 28);
      goto LABEL_296;
    case 0x1Au:

      v259 = &qword_27CABB7C0;
      v260 = &unk_217030FE0;
LABEL_298:
      v417 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(v259, v260) + 48)];

      v418 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v419 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(&v417[v418], 1, v419))
      {
        OUTLINED_FUNCTION_50();
        (*(v420 + 8))(&v417[v418], v419);
      }

      break;
    case 0x1Bu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v268 = OUTLINED_FUNCTION_82();
        v269(v268);
      }

      v270 = type metadata accessor for PopoverSelector(0);
      OUTLINED_FUNCTION_16_40(v270);
LABEL_193:

      v85 = v6[7];
      goto LABEL_296;
    case 0x1Fu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v302 = OUTLINED_FUNCTION_82();
        v303(v302);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
      OUTLINED_FUNCTION_16_40(ContextLockup);
      OUTLINED_FUNCTION_7_7(v305);

      OUTLINED_FUNCTION_7_7(v6[8]);

      OUTLINED_FUNCTION_7_7(v6[9]);

      OUTLINED_FUNCTION_7_7(v6[10]);

      goto LABEL_309;
    case 0x23u:
      v403 = OUTLINED_FUNCTION_65_10();
      v404 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v403);
      if (!OUTLINED_FUNCTION_42_23(v404))
      {
        OUTLINED_FUNCTION_4_23();
        v405 = OUTLINED_FUNCTION_129_0();
        v406(v405);
      }

      goto LABEL_290;
    case 0x24u:
      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      v52 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0) + 48);
      goto LABEL_329;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_1Tm(v21 + 2);
      v164 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
      if (!OUTLINED_FUNCTION_114_7())
      {
        OUTLINED_FUNCTION_4_23();
        v165 = OUTLINED_FUNCTION_129_0();
        v166(v165);
      }

      v85 = *(v164 + 28);
      goto LABEL_296;
    case 0x27u:
      v9 = type metadata accessor for Artwork(0);
      v157 = OUTLINED_FUNCTION_84_13();
      if (!__swift_getEnumTagSinglePayload(v157, v158, v9))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v159 + 8))(v21);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v160 + 8))(&v21[v9]);
      }

      v161 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
      OUTLINED_FUNCTION_163_0(v161);
      if (!OUTLINED_FUNCTION_114_7())
      {
        OUTLINED_FUNCTION_4_23();
        v162 = OUTLINED_FUNCTION_129_0();
        v163(v162);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 28));

LABEL_290:
      v85 = *(v9 + 32);
      goto LABEL_296;
    case 0x28u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v459 = OUTLINED_FUNCTION_82();
        v460(v459);
      }

      v461 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
      OUTLINED_FUNCTION_16_40(v461);
      v463 = &v21[v462];

      v464 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v465 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_239_0(v465))
      {
        OUTLINED_FUNCTION_50();
        (*(v466 + 8))(&v463[v464], v9);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

LABEL_336:
      v467 = OUTLINED_FUNCTION_144_2();
      v197 = type metadata accessor for Artwork(v467);
LABEL_337:
      if (!OUTLINED_FUNCTION_83_12())
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v468 + 8))(v21);
LABEL_339:
        v118 = *(v197 + 20);
        sub_21700C444();
LABEL_340:
        OUTLINED_FUNCTION_9_0();
        (*(v469 + 8))(&v21[v118], v470);
      }

      break;
    case 0x29u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v86 = OUTLINED_FUNCTION_82();
        v87(v86);
      }

      v88 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_16_40(v88);
      v90 = &v21[v89];

      v91 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v92 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_239_0(v92))
      {
        OUTLINED_FUNCTION_50();
        (*(v93 + 8))(&v90[v91], v9);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      OUTLINED_FUNCTION_7_7(v6[11]);

      OUTLINED_FUNCTION_7_7(v6[12]);

      OUTLINED_FUNCTION_7_7(v6[13]);

      OUTLINED_FUNCTION_7_7(v6[14]);

      v94 = OUTLINED_FUNCTION_174_0();
      v95 = type metadata accessor for Artwork(v94);
      if (!OUTLINED_FUNCTION_4_16(v95))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v96 + 8))(v9);
        OUTLINED_FUNCTION_212_0();
        OUTLINED_FUNCTION_9_0();
        (*(v97 + 8))(&v90[v9]);
      }

      v85 = v6[17];
      goto LABEL_296;
    case 0x2Au:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v421 = OUTLINED_FUNCTION_82();
        v422(v421);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
      OUTLINED_FUNCTION_16_40(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_7_7(v424);

      v150 = v6[7];
      goto LABEL_304;
    case 0x2Bu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v427 = OUTLINED_FUNCTION_82();
        v428(v427);
      }

      v429 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v21[*(v429 + 20)]);
      goto LABEL_309;
    case 0x2Cu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v394 = OUTLINED_FUNCTION_82();
        v395(v394);
      }

      v396 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
      OUTLINED_FUNCTION_16_40(v396);
      OUTLINED_FUNCTION_7_7(v397);

      OUTLINED_FUNCTION_7_7(v6[7]);

      v398 = OUTLINED_FUNCTION_115_2(v6[8]);
      if (v399)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v398);
      }

      v150 = v6[9];
LABEL_304:
      v425 = OUTLINED_FUNCTION_115_2(v150);
      if (v426)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v425);
      }

      break;
    case 0x2Du:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v261 = OUTLINED_FUNCTION_82();
        v262(v261);
      }

      v263 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
      OUTLINED_FUNCTION_16_40(v263);
      goto LABEL_309;
    case 0x2Eu:
      v400 = OUTLINED_FUNCTION_65_10();
      v168 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v400);
LABEL_285:
      if (!OUTLINED_FUNCTION_42_23(v168))
      {
        OUTLINED_FUNCTION_4_23();
        v401 = OUTLINED_FUNCTION_129_0();
        v402(v401);
      }

      goto LABEL_309;
    case 0x2Fu:
      v119 = OUTLINED_FUNCTION_65_10();
      FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v119);
      if (!OUTLINED_FUNCTION_42_23(FriendsPageSectionLockup))
      {
        OUTLINED_FUNCTION_4_23();
        v121 = OUTLINED_FUNCTION_129_0();
        v122(v121);
      }

LABEL_90:

      goto LABEL_309;
    case 0x31u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v98 = OUTLINED_FUNCTION_82();
        v99(v98);
      }

      v100 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
      OUTLINED_FUNCTION_16_40(v100);

      if (*&v21[v6[7]] == 1)
      {
        break;
      }

LABEL_71:

      goto LABEL_309;
    case 0x32u:
      v51 = OUTLINED_FUNCTION_65_10();
      v52 = *(type metadata accessor for Spacer(v51) + 20);
      goto LABEL_329;
    case 0x35u:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v53 = OUTLINED_FUNCTION_82();
        v54(v53);
      }

      v55 = type metadata accessor for SuperHeroLockup(0);
      OUTLINED_FUNCTION_16_40(v55);
      v57 = OUTLINED_FUNCTION_115_2(v56);
      if (v58)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      OUTLINED_FUNCTION_7_7(v6[9]);

      OUTLINED_FUNCTION_7_7(v6[10]);

      OUTLINED_FUNCTION_7_7(v6[11]);

      v59 = OUTLINED_FUNCTION_116_5();
      v60 = type metadata accessor for Artwork(v59);
      v61 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v61, v62, v60))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v63 + 8))(v17);
        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v64 + 8))(v17 + v1);
      }

      v65 = &v21[v6[15]];
      v66 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v66, v67, v60))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v68 + 8))(v65);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v69 + 8))(&v65[v60]);
      }

      v70 = OUTLINED_FUNCTION_116_5();
      v71 = type metadata accessor for VideoArtwork(v70);
      v72 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v72, v73, v71))
      {

        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v74 + 8))(&v65[v1]);
      }

      v75 = &v21[v6[17]];
      v76 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v76, v77, v71))
      {

        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v78 + 8))(&v75[v71]);
      }

      OUTLINED_FUNCTION_7_7(v6[20]);

      OUTLINED_FUNCTION_7_7(v6[21]);

      v79 = OUTLINED_FUNCTION_115_2(v6[23]);
      if (v80)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
      }

      v81 = OUTLINED_FUNCTION_174_0();
      v82 = type metadata accessor for ContentDescriptor(v81);
      if (!OUTLINED_FUNCTION_4_16(v82))
      {

        v83 = OUTLINED_FUNCTION_250_0();
        if (!OUTLINED_FUNCTION_17_13(v71 + v1))
        {
          OUTLINED_FUNCTION_50();
          (*(v84 + 8))(v71 + v1, v83);
        }
      }

      v85 = v6[25];
      goto LABEL_296;
    case 0x3Au:
      v40 = OUTLINED_FUNCTION_65_10();
      v41 = type metadata accessor for TVMovieDescription(v40);
      if (!OUTLINED_FUNCTION_42_23(v41))
      {
        OUTLINED_FUNCTION_4_23();
        v42 = OUTLINED_FUNCTION_129_0();
        v43(v42);
      }

      OUTLINED_FUNCTION_56_15();

      v44 = OUTLINED_FUNCTION_115_2(*(v9 + 28));
      if (v45)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 36));

      v46 = OUTLINED_FUNCTION_116_5();
      v47 = type metadata accessor for ParagraphComponentModel(v46);
      if (!OUTLINED_FUNCTION_54_1(v47))
      {
        v48 = OUTLINED_FUNCTION_19_2();
        if (!__swift_getEnumTagSinglePayload(v48, v49, v6))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v50 + 8))(v17, v6);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v17 + *(v1 + 20)));
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_249();
      }

      OUTLINED_FUNCTION_7_7(*(v9 + 44));

      goto LABEL_327;
    case 0x3Bu:
      if (!OUTLINED_FUNCTION_83_12())
      {
        OUTLINED_FUNCTION_4_23();
        v431 = OUTLINED_FUNCTION_82();
        v432(v431);
      }

      v433 = type metadata accessor for TVMovieDetailHeaderLockup(0);
      OUTLINED_FUNCTION_16_40(v433);
      v435 = OUTLINED_FUNCTION_115_2(v434);
      if (v436)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v435);
      }

      OUTLINED_FUNCTION_7_7(v6[7]);

      OUTLINED_FUNCTION_7_7(v6[8]);

      v437 = OUTLINED_FUNCTION_174_0();
      v438 = type metadata accessor for ModalPresentationDescriptor(v437);
      if (!OUTLINED_FUNCTION_4_16(v438))
      {

        v17 = *(v17 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v439 + 8))(v9 + v17);
      }

      v440 = OUTLINED_FUNCTION_116_5();
      v441 = type metadata accessor for Artwork(v440);
      v442 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v442, v443, v441))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v444 + 8))(v17);
        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v445 + 8))(v17 + v1);
      }

      OUTLINED_FUNCTION_7_7(v6[12]);

      v446 = &v21[v6[15]];
      v447 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v447, v448, v441))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v449 + 8))(v446);
        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_9_0();
        (*(v450 + 8))(&v446[v1]);
      }

      OUTLINED_FUNCTION_7_7(v6[16]);

      v451 = &v21[v6[17]];
      v452 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v452, v453, v441))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v454 + 8))(v451);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_9_0();
        (*(v455 + 8))(&v451[v441]);
      }

LABEL_327:
      v456 = OUTLINED_FUNCTION_144_2();
      v457 = type metadata accessor for ContentDescriptor(v456);
      if (!OUTLINED_FUNCTION_83_12())
      {

        v52 = *(v457 + 24);
        v6 = sub_217005EF4();
LABEL_329:
        if (!OUTLINED_FUNCTION_20_1(&v21[v52]))
        {
          OUTLINED_FUNCTION_4_23();
          (*(v458 + 8))(&v21[v52], v6);
        }
      }

      break;
    case 0x3Cu:
      v407 = OUTLINED_FUNCTION_65_10();
      v408 = type metadata accessor for VerticalArtworkListItem(v407);
      if (!OUTLINED_FUNCTION_42_23(v408))
      {
        OUTLINED_FUNCTION_4_23();
        v409 = OUTLINED_FUNCTION_129_0();
        v410(v409);
      }

      OUTLINED_FUNCTION_56_15();

      v411 = &v21[*(v9 + 28)];
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v412 + 8))(v411);
      v413 = *(type metadata accessor for Artwork(0) + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v414 + 8))(&v411[v413]);
      v415 = OUTLINED_FUNCTION_115_2(*(v9 + 32));
      if (v416)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v415);
      }

      v85 = *(v9 + 36);
LABEL_296:
      OUTLINED_FUNCTION_7_7(v85);
LABEL_309:

      break;
    default:
      break;
  }

LABEL_310:
  if (*(v4 + v2[14]) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21672F38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672F3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672F420(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[18];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8, &unk_21703FD90);
      v14 = a3[19];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21672F554(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[18];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BF8, &unk_21703FD90);
      v14 = a4[19];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21672F6AC()
{

  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21672F6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1C10, &qword_217040000);
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21672F76C()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21672F7A0()
{

  return swift_deallocObject();
}

uint64_t sub_21672F7E0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[15];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
            v14 = a3[16];
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_17;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21672F9F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[15];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
            v14 = a4[16];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21672FC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672FC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672FCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672FCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672FD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007CA4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21672FD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007CA4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672FDC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21672FE50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21672FF28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for LinkComponentModel(0);
    OUTLINED_FUNCTION_17();
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
      v9 = *(a3 + 24);
    }

    v10 = OUTLINED_FUNCTION_19_1(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

uint64_t sub_21672FFFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    type metadata accessor for LinkComponentModel(0);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
      v8 = *(a4 + 24);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }

  return result;
}

uint64_t sub_2167300C8(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  sub_21700D194();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28, &unk_2170352A0);
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          OUTLINED_FUNCTION_11_1();
          return (v15 + 1);
        }

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8, &unk_21705EC50);
        v12 = a3[9];
      }
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21673022C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  sub_21700D194();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28, &unk_2170352A0);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[7]) = (a2 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8, &unk_21705EC50);
        v14 = a4[9];
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167303A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
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

    return (v8 + 1);
  }
}

uint64_t sub_216730454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216730500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167305B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216730670(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_21700C254();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216730790(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_21700C254();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167308A0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[15];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[16];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
            v14 = a3[17];
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_17;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216730AB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[15];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[16];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
            v14 = a4[17];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216730D30(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      sub_2170061E4();
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[11];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
          v14 = a3[13];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216730EF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      sub_2170061E4();
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
          v14 = a4[13];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167310AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216731198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216731280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D194();
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

    return (v8 + 1);
  }
}

uint64_t sub_216731330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D194();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167313FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E38, &qword_217041418);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E30, &qword_217041410);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E40, &unk_217041420);
  sub_216AD3974();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_119();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167314D0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[11];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v14 = a3[18];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216731650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v14 = a4[18];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167317CC(uint64_t a1)
{
  result = sub_2166D8670(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216731890()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2170090C4();
  *v0 = result;
  return result;
}

uint64_t sub_2167318BC()
{
  type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;

  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_36();
  v7 = v4 + v0[8];
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
    }
  }

  else
  {
  }

  v8 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_33();

  return swift_deallocObject();
}

__n128 sub_216731A78(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_216731AB4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for SplitPosterLockup.Item(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (v3 == 254)
      {
        v13 = *(v4 + a3[6]);
        if (v13 >= 2)
        {
          return v13 - 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v12 = a3[7];
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216731BC0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for SplitPosterLockup.Item(0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(v5 + a4[6]) = v4 + 1;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v14 = a4[7];
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216731CF4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v11 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void sub_216731DD4()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v5)
    {
      v8 = v6;
      v9 = *(v4 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v9 = *(v4 + 40);
    }

    __swift_storeEnumTagSinglePayload(v1 + v9, v0, v0, v8);
  }
}

uint64_t sub_216731EAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EB0, &qword_2170417C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F48, &qword_217041850);
  sub_216ADD2F4();
  OUTLINED_FUNCTION_8_2();
  sub_2167D2D50(v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216731F64()
{
  OUTLINED_FUNCTION_49();
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = *(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + ((v5 + v7 + v9) & ~v9);
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v18 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
    {
      OUTLINED_FUNCTION_50();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  OUTLINED_FUNCTION_4_2();

  v20 = (v10 + *(v0 + 32));
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167321FC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  sub_2170067A4();
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = a3[7];
LABEL_7:
    v9 = v4 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
  OUTLINED_FUNCTION_17();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_7;
  }

  v16 = *(v4 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_216732348(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) != a3)
      {
        *(v5 + a4[10]) = v4;
        return;
      }

      v10 = v15;
      v14 = a4[8];
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216732484()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(255);
  sub_2167D2D50(&unk_27CAC20E8);
  sub_2167D2D50(qword_280E2BAE8);
  sub_216ADCD70(qword_280E3F158);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167325C8()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21673260C()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2167326C8()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_2167D2D50(&unk_27CAC21B8);
  OUTLINED_FUNCTION_5_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216732760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_2167327A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700BDB4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_21700BBA4();
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_216732890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700BDB4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21700BBA4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167329DC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v12 = a3[8];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_216732B00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216732C3C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216732C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216732D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }

  return result;
}

uint64_t sub_216732E60()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for ScrollableParagraphView.Content(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216732EA4()
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for ScrollableParagraphView.Content(0);
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216732F24(uint64_t a1)
{
  sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  OUTLINED_FUNCTION_2_3();
  sub_2170089F4();
  OUTLINED_FUNCTION_14_47();
  sub_2170089F4();
  OUTLINED_FUNCTION_14_47();
  sub_2170089F4();
  v1 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
  v2 = OUTLINED_FUNCTION_2_3();
  v5 = OUTLINED_FUNCTION_22_9(v2, v3, v4);
  OUTLINED_FUNCTION_18_38(v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B0A4();
  OUTLINED_FUNCTION_10_56();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_62();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_2170089F4();
  v6 = OUTLINED_FUNCTION_19_0();
  v8 = OUTLINED_FUNCTION_22_9(v6, v1, v7);
  OUTLINED_FUNCTION_18_38(v8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170083A4();
  OUTLINED_FUNCTION_14_47();
  sub_2170089F4();
  OUTLINED_FUNCTION_8_62();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217008BC4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700F164();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_18_38(TupleTypeMetadata3);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v10 = sub_21700B084();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_19_0();
  type metadata accessor for ActionButton(v11, v10, v12, v13);
  sub_217008AD4();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_72();
  sub_216AEBA80(v14, v15, MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A60, &qword_217050220);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE0, &unk_217018250);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v16 = MEMORY[0x277CE0868];
  sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60, &qword_217050220, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, v16);
  return swift_getWitnessTable();
}

uint64_t sub_21673330C()
{
  OUTLINED_FUNCTION_92();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_21673335C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2167333AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D194();
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

uint64_t sub_216733458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D194();
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

uint64_t sub_216733530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupedTextListLockup(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167335DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GroupedTextListLockup(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_216733688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2167336C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2588, &unk_217042A78);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216733728(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2588, &unk_217042A78);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216733788()
{

  return swift_deallocObject();
}

uint64_t sub_216733814(char a1)
{
  result = 27503;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x6554737574617473;
      break;
    case 3:
      result = 0x73726564616568;
      break;
    case 4:
      result = 0x7463657269646572;
      break;
    case 5:
      result = 7107189;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216733978()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2167339C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2170067A4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216733A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2170067A4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216733AD0()
{
  v1 = (type metadata accessor for PageToolbarContentView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216733BEC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF45A4();
  *v0 = result;
  return result;
}

__n128 sub_216733C1C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216733C28()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF457C();
  *v0 = result;
  return result;
}

uint64_t sub_216733C58()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF4554();
  *v0 = result;
  return result;
}

uint64_t sub_216733C88()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF452C();
  *v0 = result;
  return result;
}

uint64_t sub_216733CB8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AF4504();
  *v0 = result;
  return result;
}

uint64_t sub_216733CF8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[14];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216733E20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[14];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216733F48(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      type metadata accessor for SocialProfileDescriptor(0);
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[9];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216734068(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      type metadata accessor for SocialProfileDescriptor(0);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216734184(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21673420C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673428C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[16];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[25];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2167343C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[16];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[25];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167344F0(uint64_t a1)
{
  result = sub_2166D286C(qword_280E41540, type metadata accessor for AlbumTrackLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216734548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicEvent.Event(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216734590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicEvent.Event(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216734674()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167346C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673475C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167347E8()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B02EE8();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734834()
{

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216734870()
{

  return swift_deallocObject();
}

uint64_t sub_2167348B0()
{
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2167348E4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216734918()
{

  return swift_deallocObject();
}

uint64_t sub_216734950()
{

  return swift_deallocObject();
}

uint64_t sub_216734990()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF7D4();
  *v0 = result;
  return result;
}

uint64_t sub_2167349BC()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF550();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734A08()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF528();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734A54()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF514();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734AA0()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF500();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734AEC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF430();
  *v0 = result;
  return result;
}

uint64_t sub_216734B40()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF340();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216734B94()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF32C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216734BE8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF318();
  *v0 = result;
  return result;
}

uint64_t sub_216734C14()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF2F0();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216734C60()
{

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216734C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700C384();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216734D38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700C384();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216734DDC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C994();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v12 = a3[8];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_216734F00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C994();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216735014()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21673504C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void *sub_2167350D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21673518C()
{
  type metadata accessor for VerticalVideoLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167352C4()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216735354()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680, &unk_21701F610);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2167353B4()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = (v10 + *(v0 + 32));
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_216735668(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2167356FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_216735788()
{
  type metadata accessor for VerticalVideoLockupContent(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  if (*(v1 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  }

  v5 = v4 + *(v0 + 36);
  v6 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v5);
    v8 = *(v6 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v5 + v8);
  }

  if ((*(v4 + *(v0 + 40) + 8) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216735918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(v4 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    v7 = v6 - 1;
    if (v7 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 - 8;
    if (v7 >= 9)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167359E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 9);
  }

  return result;
}

uint64_t sub_216735A98()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  type metadata accessor for ActionButtonStyle(255);
  sub_2166D9530(&qword_27CAC2AC8, &qword_27CAC2A98, &qword_217044420, &unk_21702C8E0);
  sub_2166D88EC(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216735B74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AD0, &unk_217065070);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216735BD4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2AE8, &unk_217065060);
  sub_216B0B1D8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216735C3C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[16];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v14 = a3[24];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216735DBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[16];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v14 = a4[24];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216735F38(uint64_t a1)
{
  result = sub_2166D7ECC(qword_280E41E98, type metadata accessor for SuperHeroLockup, &unk_217044670);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216735F90(uint64_t *a1)
{
  type metadata accessor for MusicPageMetricsModifier(255);
  sub_2170089F4();
  sub_216B0D2E8();
  return swift_getWitnessTable();
}

uint64_t sub_216735FFC()
{
  if (v0[5] != 1)
  {
  }

  j__swift_release();

  sub_2166B8588(v0[25], v0[26]);

  OUTLINED_FUNCTION_11_57();

  return swift_deallocObject();
}

uint64_t sub_2167360C0()
{

  if (v0[20] != 1)
  {
  }

  j__swift_release();

  sub_2166B8588(v0[40], v0[41]);

  OUTLINED_FUNCTION_11_57();

  return swift_deallocObject();
}

uint64_t sub_216736184()
{
  swift_unknownObjectRelease();
  if (v0[7] != 1)
  {
  }

  j__swift_release();

  sub_2166B8588(v0[27], v0[28]);

  return swift_deallocObject();
}

uint64_t sub_216736254(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B58, &qword_2170448E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B60, &unk_2170448E8);
  sub_2170089F4();
  OUTLINED_FUNCTION_5_0();
  sub_2166D9530(v1, &qword_27CAC2B58, &qword_2170448E0, v2);
  OUTLINED_FUNCTION_6_72(&qword_280E2AC30);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  sub_217008B74();
  sub_21700F164();
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_76();
  return swift_getWitnessTable();
}

uint64_t sub_216736368(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MenuConfiguration(0);
    v8 = a3[7];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216736448(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for MenuConfiguration(0);
    v10 = a4[7];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_216736524()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_65_3();

  return swift_deallocObject();
}

uint64_t sub_216736554()
{

  return swift_deallocObject();
}

uint64_t sub_21673658C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216736644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2167366EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216736780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216736844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_18_41();
      return (v10 + 1);
    }

    v8 = sub_217005EF4();
    v9 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_216736914()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20) + 8) = (v0 - 1);
      return;
    }

    v6 = sub_217005EF4();
    v7 = v1 + *(v2 + 32);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2167369E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_18_41();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }
}

void sub_216736A8C()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_216736B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ModalActionModelDestinations.Destination(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216736BC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ModalActionModelDestinations.Destination(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216736C84(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_216736D68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216736E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216736EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216736EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
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

    return (v8 + 1);
  }
}

uint64_t sub_216736FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167370A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for LockupArtwork(0);
    v8 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216737180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for LockupArtwork(0);
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673725C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216737304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167373DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    Friends = type metadata accessor for SocialFindFriendsController.Friend.Kind(0);
    OUTLINED_FUNCTION_36(Friends);
    if (*(v9 + 84) == a2)
    {
      v10 = *(a3 + 48);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0, &unk_217045FD8);
      v12 = a1 + v10;
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
      v12 = a1 + *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_2167374C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    Friends = type metadata accessor for SocialFindFriendsController.Friend.Kind(0);
    OUTLINED_FUNCTION_36(Friends);
    if (*(v9 + 84) == a3)
    {
      v10 = *(a4 + 48);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0, &unk_217045FD8);
      v12 = v5 + v10;
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
      v12 = v5 + *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2167375B0()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_2167375E8()
{

  return swift_deallocObject();
}

uint64_t sub_216737628()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216737660()
{

  return swift_deallocObject();
}

uint64_t sub_2167376B0()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_2167376F8()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_216737730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B1D700();
  *a1 = result;
  return result;
}

uint64_t sub_216737760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B1D6D8();
  *a1 = result;
  return result;
}

uint64_t sub_216737790()
{

  return swift_deallocObject();
}

uint64_t sub_2167377C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 6)
    {
      return v8 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_216737870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_216737940()
{
  v1 = *(type metadata accessor for UnifiedMessagesRequestAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21700D284();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_216737A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216737AE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216737B7C()
{

  sub_2168AEE00(*(v0 + 56), *(v0 + 64));
  sub_21680E444(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_216737BF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F18, &qword_2170465D8);
  sub_2170067A4();
  sub_216B273E8();
  sub_216B2752C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216737C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216737D10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216737D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216737E1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216737EDC()
{

  return swift_deallocObject();
}

uint64_t sub_216737F14()
{
  type metadata accessor for ReportAConcern(0);
  OUTLINED_FUNCTION_117();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(v3 + v0);
  }

  else
  {
  }

  sub_2169C50D4(*(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 24));

  return swift_deallocObject();
}

uint64_t sub_216738028()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F80, &qword_2170467A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F90, &qword_2170580E0);
  OUTLINED_FUNCTION_1_132();
  sub_2166D9530(v0, &qword_27CAC2F80, &qword_2170467A0, v1);
  sub_2167B2E14();
  OUTLINED_FUNCTION_2_107();
  sub_2166D9530(v2, &qword_27CAC2F90, &qword_2170580E0, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167381C4()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_216A906B4(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_21673821C()
{
  v1 = (type metadata accessor for OpenInClassicalExperienceAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[7];
  sub_21700C384();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_2167383A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for EmptyStateLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216738448()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for EmptyStateLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_216738540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_0_11(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167385C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_0_11(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_216738700()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_2167387AC()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216738818()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for ReportMusicItemConcernAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = *(v5 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v0 + v2);
  v9 = v0 + v2 + v1[7];
  v10 = type metadata accessor for ReportableMusicItem(0);
  if (!OUTLINED_FUNCTION_9_1(v10))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        sub_21700C924();
        goto LABEL_9;
      case 1u:
        sub_217006E94();
        goto LABEL_9;
      case 2u:
      case 3u:
        sub_21700C084();
LABEL_9:
        OUTLINED_FUNCTION_34();
        (*(v15 + 8))(v9);
        break;
      case 4u:
        v11 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_9_1(v11))
        {
          (*(*(v0 + v2 - 8) + 8))(v9, v0 + v2);
        }

        v12 = type metadata accessor for SocialProfileDescriptor(0);

        v13 = *(v12 + 32);
        sub_217005EF4();
        OUTLINED_FUNCTION_34();
        (*(v14 + 8))(v9 + v13);
        break;
      case 5u:

        break;
      default:
        break;
    }
  }

  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v4);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216738AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216738B60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216738CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738D90(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21700D284();
    v9 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_216738E10(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216738EDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_102();
  type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[9];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_22_1(*(v4 + a3[10]));
      }

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      v13 = a3[15];
    }

    v10 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

void sub_216738FE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_102();
  type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[9];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[10]) = (v4 - 1);
        return;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      v15 = a4[15];
    }

    v12 = v5 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_2167390F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 40));
  }

  type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 40);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v10 = *(a3 + 56);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_2167391BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 40);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      v11 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21673928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SectionV6HeaderVMa(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 36) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_21673932C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  _s7SectionV6HeaderVMa(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 36) + 8) = (v4 - 1);
  }
}

uint64_t sub_2167393CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v26 = *a1;
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, *a1, v4, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v5 = OUTLINED_FUNCTION_46_22();
  type metadata accessor for ArtistLatestReleaseLockupView(v5);
  OUTLINED_FUNCTION_28_31();
  sub_2166D9530(v6, &qword_27CABB7D0, &qword_2170479B0, v7);
  OUTLINED_FUNCTION_27_38();
  sub_2166D381C(v8, v9, &unk_217064990);
  v10 = OUTLINED_FUNCTION_40_2();
  type metadata accessor for PaginatingGridView(v10, v11);
  OUTLINED_FUNCTION_25_35();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30, &qword_217034B68);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  OUTLINED_FUNCTION_7_76();
  swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_21_15(OpaqueTypeConformance2, MEMORY[0x277CDF678]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_6();
  sub_2166D9530(v13, &qword_27CABFC30, &qword_217034B68, v14);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v15 = sub_21700B084();
  OUTLINED_FUNCTION_22_9(255, v15, MEMORY[0x277CE1180]);
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_34_4();
  v25 = sub_21700F164();
  type metadata accessor for TopSongsShelfCollection(255, v26, v4, v16);
  OUTLINED_FUNCTION_46_22();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170099F4();
  OUTLINED_FUNCTION_21_40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_26_38();
  sub_2166D9530(v17, &qword_27CABC210, &qword_21702A200, v18);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0, &unk_2170479B8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  v19 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9(v19, v25, v20);
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700AF94();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_0();
  sub_21700B1D4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_34_4();
  v21 = sub_21700F164();
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_0();
  sub_21700B1D4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  v22 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9(v22, v21, v23);
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  sub_2170089F4();
  OUTLINED_FUNCTION_46_22();
  sub_217009564();
  OUTLINED_FUNCTION_6_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_216739B18()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_216A906B4(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_216739B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TopSongsShelfCollection(0, *(v4 + 16), *(v4 + 24), a4);
  v9 = *(*(v8 - 1) + 80);
  v10 = v4 + ((v9 + 32) & ~v9);
  sub_216838830(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

  v11 = v10 + v8[10];

  v12 = type metadata accessor for MappedSection(0);
  v13 = (v11 + v12[6]);
  v14 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_15_10(v14))
  {
    v15 = OUTLINED_FUNCTION_38_27();
    v6 = _s7SectionV6HeaderV12HeaderLockupOMa(v15);
    v16 = OUTLINED_FUNCTION_16_1();
    if (!__swift_getEnumTagSinglePayload(v16, v17, v6))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_18;
        case 1u:
          v24 = OUTLINED_FUNCTION_14_52();
          v25 = type metadata accessor for ComposerSectionHeader(v24);
          v26 = v25[5];
          v7 = sub_21700D7A4();
          if (!OUTLINED_FUNCTION_176_0(&v13[v26]))
          {
            OUTLINED_FUNCTION_50();
            (*(v27 + 8))(&v13[v26], v7);
          }

          OUTLINED_FUNCTION_54_4(v25[6]);

          OUTLINED_FUNCTION_54_4(v25[10]);

          v28 = OUTLINED_FUNCTION_31_38(v25[11]);
          if (v29)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v28);
          }

          v30 = OUTLINED_FUNCTION_38_27();
          v6 = type metadata accessor for ContentDescriptor(v30);
          v31 = OUTLINED_FUNCTION_16_1();
          if (!__swift_getEnumTagSinglePayload(v31, v32, v6))
          {

            v7 = *(v6 + 24);
            v33 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_10_63(v33))
            {
              OUTLINED_FUNCTION_2_11();
              v34 = OUTLINED_FUNCTION_30_35();
              v35(v34);
            }
          }

          break;
        case 2u:
          if (*(v13 + 1))
          {

            if (*(v13 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v13 + 4);
            }
          }

          if (*(v13 + 10))
          {

            if (*(v13 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v13 + 13);
            }
          }

          type metadata accessor for DefaultSectionHeader(0);
          v19 = OUTLINED_FUNCTION_38_27();
          v6 = type metadata accessor for Artwork(v19);
          v20 = OUTLINED_FUNCTION_16_1();
          if (!__swift_getEnumTagSinglePayload(v20, v21, v6))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v22 + 8))(v13);
            v6 = *(v6 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v23 + 8))(&v13[v6]);
          }

          break;
        case 3u:
          if (*(v13 + 1))
          {

            if (*(v13 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v13 + 4);
            }
          }

LABEL_18:

          break;
        default:
          break;
      }
    }
  }

  v18 = (v11 + v12[7]);
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_128;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v192 + 8))(v18);
      v150 = &qword_27CAB7938;
      v151 = &unk_217017C10;
      goto LABEL_130;
    case 2u:
      v120 = OUTLINED_FUNCTION_14_52();
      type metadata accessor for AnimatedTextListItem(v120);
      goto LABEL_81;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_176;
    case 6u:
      v182 = OUTLINED_FUNCTION_14_52();
      v183 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v182);
      OUTLINED_FUNCTION_33_27();
      v184 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(&v18[v7], 1, v184))
      {
        OUTLINED_FUNCTION_50();
        (*(v185 + 8))(&v18[v7], v184);
      }

      v301 = v184;
      v186 = &v18[*(v183 + 24)];
      if (!OUTLINED_FUNCTION_23_4(v186))
      {
        v187 = v186 + *(v5 + 20);
        v188 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_37_33(v188))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_211;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v187);
              v281 = type metadata accessor for ComposerSectionHeader(0);
              if (!__swift_getEnumTagSinglePayload(v187 + v281[5], 1, v301))
              {
                OUTLINED_FUNCTION_50();
                (*(v282 + 8))(v187 + v283);
              }

              v284 = (v187 + v281[11]);
              if (v284[3])
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v284);
              }

              v285 = v187 + v281[12];
              v286 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_37_33(v286))
              {

                v287 = v281[6];
                v298 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(v285 + v287, 1, v298))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v288 + 8))(v285 + v287);
                }
              }

              break;
            case 2u:
              if (*(v187 + 8))
              {

                if (*(v187 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v187 + 32));
                }
              }

              if (*(v187 + 80))
              {

                if (*(v187 + 128))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v187 + 104));
                }
              }

              v270 = v187 + *(type metadata accessor for DefaultSectionHeader(0) + 32);
              v271 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_19_3(v271))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v272 + 8))(v270);
                v297 = v270;
                v273 = *(v187 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v274 + 8))(v297 + v273);
              }

              break;
            case 3u:
              if (*(v187 + 8))
              {

                if (*(v187 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v187 + 32));
                }
              }

LABEL_211:

              break;
            default:
              break;
          }
        }
      }

      v189 = &v18[*(v183 + 32)];
      if (!OUTLINED_FUNCTION_23_4(v189))
      {
        v190 = (v189 + *(v5 + 20));
        v191 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v190, 1, v191))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_216;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v190);
              v289 = type metadata accessor for ComposerSectionHeader(0);
              v299 = v289[5];
              if (!__swift_getEnumTagSinglePayload(&v190[v299], 1, v301))
              {
                OUTLINED_FUNCTION_50();
                (*(v290 + 8))(&v190[v299], v301);
              }

              v291 = &v190[v289[11]];
              if (*(v291 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v291);
              }

              v292 = &v190[v289[12]];
              v293 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_176_0(v292))
              {

                v294 = *(v293 + 24);
                v295 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_176_0(v292 + v294))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v296 + 8))(v292 + v294, v295);
                }
              }

              break;
            case 2u:
              if (*(v190 + 1))
              {

                if (*(v190 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v190 + 4);
                }
              }

              if (*(v190 + 10))
              {

                if (*(v190 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v190 + 13);
                }
              }

              v275 = &v190[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              v276 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_176_0(v275))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v277 + 8))(v275);
                v278 = *(v276 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v279 + 8))(v275 + v278, v280);
              }

              break;
            case 3u:
              if (*(v190 + 1))
              {

                if (*(v190 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v190 + 4);
                }
              }

LABEL_216:

              break;
            default:
              break;
          }
        }
      }

LABEL_128:

      goto LABEL_177;
    case 8u:
      OUTLINED_FUNCTION_47_24();
      v84 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v84))
      {
        OUTLINED_FUNCTION_4_89();
        v85 = OUTLINED_FUNCTION_22_4();
        v86(v85);
      }

      v87 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
      OUTLINED_FUNCTION_2_111(v87);
      v88 = OUTLINED_FUNCTION_45_22();
      v89 = type metadata accessor for ContentDescriptor(v88);
      if (!OUTLINED_FUNCTION_54_1(v89))
      {

        v90 = *(v7 + 24);
        v91 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_176_0(v6 + v90))
        {
          OUTLINED_FUNCTION_50();
          (*(v92 + 8))(v6 + v90, v91);
        }
      }

      OUTLINED_FUNCTION_54_4(*(v5 + 32));

      if (*&v18[*(v5 + 36) + 8])
      {
      }

      goto LABEL_176;
    case 9u:
      v93 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v93))
      {
        OUTLINED_FUNCTION_4_89();
        v94 = OUTLINED_FUNCTION_22_4();
        v95(v94);
      }

      v96 = OUTLINED_FUNCTION_47_24();
      v97 = type metadata accessor for CuratorDetailHeaderComponentModel(v96);
      __swift_destroy_boxed_opaque_existential_1Tm(&v18[v97[5]]);
      OUTLINED_FUNCTION_54_4(v97[6]);

      v98 = v97[7];
      v300 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(&v18[v98], 1, v300))
      {
        OUTLINED_FUNCTION_50();
        (*(v99 + 8))(&v18[v98]);
      }

      v100 = &v18[v97[8]];
      v101 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_37_33(v101))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v102 + 8))(v100);
        v103 = *(v98 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v104 + 8))(&v100[v103]);
      }

      v105 = &v18[v97[10]];
      if (!OUTLINED_FUNCTION_176_0(v105))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v106 + 8))(v105);
        v107 = *(v98 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v108 + 8))(v105 + v107);
      }

      v109 = &v18[v97[11]];
      v110 = type metadata accessor for VideoArtwork(0);
      if (!OUTLINED_FUNCTION_19_3(v110))
      {

        v111 = *(v105 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v112 + 8))(&v109[v111]);
      }

      v113 = OUTLINED_FUNCTION_38_27();
      v114 = type metadata accessor for ContentDescriptor(v113);
      v115 = OUTLINED_FUNCTION_16_1();
      if (!__swift_getEnumTagSinglePayload(v115, v116, v114))
      {

        v117 = *(v114 + 24);
        if (!__swift_getEnumTagSinglePayload(&v18[v117], 1, v300))
        {
          OUTLINED_FUNCTION_50();
          (*(v118 + 8))(&v18[v117], v119);
        }
      }

      goto LABEL_177;
    case 0xAu:
      v156 = OUTLINED_FUNCTION_14_52();
      v157 = type metadata accessor for EmptyStateLockup(v156);
      OUTLINED_FUNCTION_33_27();
      v158 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_23_4(&v18[v7]))
      {
        OUTLINED_FUNCTION_4_89();
        (*(v159 + 8))(&v18[v7], v158);
      }

      OUTLINED_FUNCTION_54_4(v157[7]);

      OUTLINED_FUNCTION_54_4(v157[8]);

      OUTLINED_FUNCTION_54_4(v157[9]);

      v160 = &v18[v157[10]];
      v5 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_23_4(v160))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v161 + 8))(v160);
        v162 = *(v5 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v163 + 8))(v160 + v162);
      }

      v164 = OUTLINED_FUNCTION_38_27();
      v165 = type metadata accessor for ColorSchemeArtwork(v164);
      v166 = OUTLINED_FUNCTION_16_1();
      if (!__swift_getEnumTagSinglePayload(v166, v167, v165))
      {
        v168 = OUTLINED_FUNCTION_16_1();
        if (!__swift_getEnumTagSinglePayload(v168, v169, v5))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v170 + 8))(v18);
          v171 = *(v5 + 20);
          sub_21700C444();
          OUTLINED_FUNCTION_9_0();
          (*(v172 + 8))(&v18[v171]);
        }

        v18 += *(v165 + 20);
        v173 = OUTLINED_FUNCTION_16_1();
        if (!__swift_getEnumTagSinglePayload(v173, v174, v5))
        {
          goto LABEL_159;
        }
      }

      goto LABEL_177;
    case 0xCu:
      v72 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v72))
      {
        OUTLINED_FUNCTION_4_89();
        v73 = OUTLINED_FUNCTION_22_4();
        v74(v73);
      }

      v75 = type metadata accessor for GroupedTextListLockup(0);
      OUTLINED_FUNCTION_2_111(v75);
      v76 = OUTLINED_FUNCTION_45_22();
      v77 = type metadata accessor for ModalPresentationDescriptor(v76);
      if (!OUTLINED_FUNCTION_54_1(v77))
      {

        v78 = *(v7 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v79 + 8))(v6 + v78);
      }

      goto LABEL_176;
    case 0x10u:
      v130 = OUTLINED_FUNCTION_14_52();
      v131 = type metadata accessor for InlineUpsell(v130);
      OUTLINED_FUNCTION_33_27();
      v132 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v132))
      {
        OUTLINED_FUNCTION_2_11();
        v133 = OUTLINED_FUNCTION_30_35();
        v134(v133);
      }

      OUTLINED_FUNCTION_11_62();

      OUTLINED_FUNCTION_54_4(v131[7]);

      OUTLINED_FUNCTION_54_4(v131[8]);

      v135 = OUTLINED_FUNCTION_31_38(v131[9]);
      if (v136)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
      }

      v137 = OUTLINED_FUNCTION_31_38(v131[10]);
      if (v138)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v137);
      }

      v139 = v131[11];
      goto LABEL_139;
    case 0x11u:
      v52 = OUTLINED_FUNCTION_14_52();
      v53 = type metadata accessor for LandingUpsell(v52);
      OUTLINED_FUNCTION_33_27();
      v54 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v54))
      {
        OUTLINED_FUNCTION_2_11();
        v55 = OUTLINED_FUNCTION_30_35();
        v56(v55);
      }

      OUTLINED_FUNCTION_11_62();

      OUTLINED_FUNCTION_54_4(v53[7]);

      OUTLINED_FUNCTION_54_4(v53[8]);

      OUTLINED_FUNCTION_54_4(v53[9]);

      v57 = OUTLINED_FUNCTION_31_38(v53[10]);
      if (v58)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      v59 = OUTLINED_FUNCTION_31_38(v53[11]);
      if (v60)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
      }

      v61 = OUTLINED_FUNCTION_31_38(v53[12]);
      if (v62)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
      }

      v63 = &v18[v53[13]];
      v64 = type metadata accessor for Artwork(0);
      if (!__swift_getEnumTagSinglePayload(v63, 1, v64))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v65 + 8))(v63);
        v66 = *(v64 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v67 + 8))(v63 + v66);
      }

      v18 += v53[14];
      v68 = OUTLINED_FUNCTION_16_1();
      if (__swift_getEnumTagSinglePayload(v68, v69, v64))
      {
        goto LABEL_177;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v70 + 8))(v18);
      v71 = *(v64 + 20);
      goto LABEL_160;
    case 0x14u:
      v144 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v144))
      {
        OUTLINED_FUNCTION_4_89();
        v145 = OUTLINED_FUNCTION_22_4();
        v146(v145);
      }

      v147 = type metadata accessor for ListSection(0);
      OUTLINED_FUNCTION_2_111(v147);
      OUTLINED_FUNCTION_54_4(v148);

      OUTLINED_FUNCTION_54_4(*(v5 + 28));

      goto LABEL_176;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v18 + 1);
      v175 = type metadata accessor for GradientListRowModel(0);
      v176 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v176))
      {
        OUTLINED_FUNCTION_2_11();
        v177 = OUTLINED_FUNCTION_30_35();
        v178(v177);
      }

      v179 = OUTLINED_FUNCTION_31_38(*(v175 + 28));
      if (v180)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
      }

      v181 = &v18[*(v175 + 32)];
      if (*(v181 + 4))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v181 + 1);
      }

      goto LABEL_121;
    case 0x16u:
      v221 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v221))
      {
        OUTLINED_FUNCTION_4_89();
        v222 = OUTLINED_FUNCTION_22_4();
        v223(v222);
      }

      v224 = type metadata accessor for ParagraphComponentModel(0);
      OUTLINED_FUNCTION_2_111(v224);
      OUTLINED_FUNCTION_54_4(v225);
      goto LABEL_152;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v149 + 8))(v18);
      v150 = &qword_27CAB7940;
      v151 = &unk_21701C440;
LABEL_130:
      __swift_instantiateConcreteTypeFromMangledNameV2(v150, v151);
      goto LABEL_176;
    case 0x19u:
      v152 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v152))
      {
        OUTLINED_FUNCTION_4_89();
        v153 = OUTLINED_FUNCTION_22_4();
        v154(v153);
      }

      v155 = type metadata accessor for PopoverSelector(0);
      OUTLINED_FUNCTION_2_111(v155);
LABEL_152:

      goto LABEL_174;
    case 0x1Du:
      v207 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v207))
      {
        OUTLINED_FUNCTION_4_89();
        v208 = OUTLINED_FUNCTION_22_4();
        v209(v208);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
      OUTLINED_FUNCTION_2_111(ContextLockup);
      OUTLINED_FUNCTION_54_4(v211);

      OUTLINED_FUNCTION_54_4(*(v5 + 32));

      OUTLINED_FUNCTION_54_4(*(v5 + 36));

      OUTLINED_FUNCTION_54_4(*(v5 + 40));

      goto LABEL_176;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      v71 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      v125 = OUTLINED_FUNCTION_14_52();
      v5 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v125);
      OUTLINED_FUNCTION_33_27();
      v126 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v126))
      {
        OUTLINED_FUNCTION_2_11();
        v127 = OUTLINED_FUNCTION_30_35();
        v128(v127);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      v124 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0) + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v18 + 2);
      v5 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
      v257 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v257))
      {
        OUTLINED_FUNCTION_2_11();
        v258 = OUTLINED_FUNCTION_30_35();
        v259(v258);
      }

LABEL_174:
      v129 = *(v5 + 28);
      goto LABEL_175;
    case 0x26u:
      v44 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_15_10(v44))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v45 + 8))(v18);
        v5 = *(v5 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v46 + 8))(&v18[v5]);
      }

      v47 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
      OUTLINED_FUNCTION_18_42(v47);
      v48 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v48))
      {
        OUTLINED_FUNCTION_2_11();
        v49 = OUTLINED_FUNCTION_30_35();
        v50(v49);
      }

      OUTLINED_FUNCTION_54_4(*(v5 + 28));

LABEL_87:
      v129 = *(v5 + 32);
      goto LABEL_175;
    case 0x27u:
      OUTLINED_FUNCTION_47_24();
      v226 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v226))
      {
        OUTLINED_FUNCTION_4_89();
        v227 = OUTLINED_FUNCTION_22_4();
        v228(v227);
      }

      v229 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
      OUTLINED_FUNCTION_2_111(v229);
      v231 = &v18[v230];

      v232 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v233 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_49_22(v233))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v234 + 8))(&v231[v232], v6);
      }

      OUTLINED_FUNCTION_54_4(*(v5 + 28));

      OUTLINED_FUNCTION_54_4(*(v5 + 32));

      v235 = OUTLINED_FUNCTION_38_27();
      v236 = type metadata accessor for Artwork(v235);
      if (!OUTLINED_FUNCTION_15_10(v236))
      {
LABEL_159:
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v237 + 8))(v18);
        v71 = *(v5 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v238 + 8))(&v18[v71], v239);
      }

      goto LABEL_177;
    case 0x28u:
      OUTLINED_FUNCTION_47_24();
      v240 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v240))
      {
        OUTLINED_FUNCTION_4_89();
        v241 = OUTLINED_FUNCTION_22_4();
        v242(v241);
      }

      v243 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_2_111(v243);
      v245 = &v18[v244];

      v246 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v247 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_49_22(v247))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v248 + 8))(&v245[v246], v6);
      }

      OUTLINED_FUNCTION_54_4(*(v5 + 28));

      OUTLINED_FUNCTION_54_4(*(v5 + 32));

      OUTLINED_FUNCTION_54_4(*(v5 + 44));

      OUTLINED_FUNCTION_54_4(*(v5 + 48));

      OUTLINED_FUNCTION_54_4(*(v5 + 52));

      OUTLINED_FUNCTION_54_4(*(v5 + 56));

      v249 = OUTLINED_FUNCTION_45_22();
      v250 = type metadata accessor for Artwork(v249);
      if (!OUTLINED_FUNCTION_54_1(v250))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v251 + 8))(v6);
        v252 = *(v245 + 5);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v253 + 8))(v6 + v252);
      }

      OUTLINED_FUNCTION_54_4(*(v5 + 68));
      goto LABEL_176;
    case 0x29u:
      v193 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v193))
      {
        OUTLINED_FUNCTION_4_89();
        v194 = OUTLINED_FUNCTION_22_4();
        v195(v194);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
      OUTLINED_FUNCTION_2_111(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_54_4(v197);

      v139 = *(v5 + 28);
      goto LABEL_139;
    case 0x2Au:
      v140 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v140))
      {
        OUTLINED_FUNCTION_4_89();
        v141 = OUTLINED_FUNCTION_22_4();
        v142(v141);
      }

      v143 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
      OUTLINED_FUNCTION_18_42(v143);
      goto LABEL_176;
    case 0x2Bu:
      v198 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v198))
      {
        OUTLINED_FUNCTION_4_89();
        v199 = OUTLINED_FUNCTION_22_4();
        v200(v199);
      }

      v201 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
      OUTLINED_FUNCTION_2_111(v201);
      OUTLINED_FUNCTION_54_4(v202);

      OUTLINED_FUNCTION_54_4(*(v5 + 28));

      v203 = OUTLINED_FUNCTION_31_38(*(v5 + 32));
      if (v204)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v203);
      }

      v139 = *(v5 + 36);
LABEL_139:
      v205 = OUTLINED_FUNCTION_31_38(v139);
      if (v206)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v205);
      }

      goto LABEL_177;
    case 0x2Cu:
      v80 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v80))
      {
        OUTLINED_FUNCTION_4_89();
        v81 = OUTLINED_FUNCTION_22_4();
        v82(v81);
      }

      v83 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
      OUTLINED_FUNCTION_18_42(v83);
      goto LABEL_176;
    case 0x2Eu:
      v51 = OUTLINED_FUNCTION_14_52();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v51);
LABEL_81:
      OUTLINED_FUNCTION_33_27();
      v121 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v121))
      {
        OUTLINED_FUNCTION_2_11();
        v122 = OUTLINED_FUNCTION_30_35();
        v123(v122);
      }

      goto LABEL_176;
    case 0x2Fu:
      v36 = OUTLINED_FUNCTION_14_52();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v36);
      OUTLINED_FUNCTION_33_27();
      v37 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v37))
      {
        OUTLINED_FUNCTION_2_11();
        v38 = OUTLINED_FUNCTION_30_35();
        v39(v38);
      }

LABEL_121:

      goto LABEL_176;
    case 0x30u:
      v40 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_15_10(v40))
      {
        OUTLINED_FUNCTION_4_89();
        v41 = OUTLINED_FUNCTION_22_4();
        v42(v41);
      }

      v43 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
      OUTLINED_FUNCTION_2_111(v43);

      if (*&v18[*(v5 + 28)] == 1)
      {
        goto LABEL_177;
      }

LABEL_176:

LABEL_177:
      v260 = v12[9];
      v261 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v11 + v260, 1, v261))
      {
        OUTLINED_FUNCTION_50();
        (*(v262 + 8))(v11 + v260, v261);
      }

      v263 = v11 + v12[10];
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
      if (!__swift_getEnumTagSinglePayload(v263, 1, v264))
      {

        v265 = *(v264 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v266 + 8))(v263 + v265);
      }

      swift_unknownObjectRelease();
      sub_216684F5C(*(v10 + v8[13]), *(v10 + v8[13] + 8));
      v267 = v8[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_217008844();
        OUTLINED_FUNCTION_9_0();
        (*(v268 + 8))(v10 + v267);
      }

      else
      {
      }

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      goto LABEL_176;
    case 0x32u:
      v254 = OUTLINED_FUNCTION_14_52();
      v124 = *(type metadata accessor for Spacer(v254) + 20);
LABEL_170:
      v255 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_23_4(&v18[v124]))
      {
        OUTLINED_FUNCTION_4_89();
        (*(v256 + 8))(&v18[v124], v255);
      }

      goto LABEL_177;
    case 0x3Cu:
      v212 = OUTLINED_FUNCTION_14_52();
      v213 = type metadata accessor for VerticalArtworkListItem(v212);
      OUTLINED_FUNCTION_33_27();
      v214 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_10_63(v214))
      {
        OUTLINED_FUNCTION_2_11();
        v215 = OUTLINED_FUNCTION_30_35();
        v216(v215);
      }

      OUTLINED_FUNCTION_11_62();

      OUTLINED_FUNCTION_45_22();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v217 + 8))(v6);
      type metadata accessor for Artwork(0);
      OUTLINED_FUNCTION_33_27();
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v218 + 8))(v6 + v7);
      v219 = OUTLINED_FUNCTION_31_38(*(v213 + 32));
      if (v220)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v219);
      }

      v129 = *(v213 + 36);
LABEL_175:
      OUTLINED_FUNCTION_54_4(v129);
      goto LABEL_176;
    default:
      goto LABEL_177;
  }
}

uint64_t sub_21673BB70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppFullScreenCoverDestinationViewControllerRepresentable(255, *a1, a1[1], a4);
  swift_getAssociatedTypeWitness();
  sub_217009564();
  OUTLINED_FUNCTION_0_162();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21673BC38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_21673BCAC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21673BCB8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v12 = a3[7];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_21673BDEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 24) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673BF24()
{

  return swift_deallocObject();
}

uint64_t sub_21673BF64()
{
  OUTLINED_FUNCTION_4_3();
  if (v0 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v1;
    v6 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_21673C034(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == v8)
    {
      v10 = *(v7 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v10 = *(v7 + 32);
    }

    v11 = OUTLINED_FUNCTION_19_1(v10);

    __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }
}

uint64_t sub_21673C110(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36A0, &qword_2170482D0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21673C170()
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + v7;
  v9 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v7, 1, v9))
  {

    v10 = *(v9 + 24);
    v11 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }
  }

  v12 = v8 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v12);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v15 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  v16 = (v8 + *(v0 + 32));
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return swift_deallocObject();
}

uint64_t sub_21673C460()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 32));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_21673C4E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *(v2 + 48) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 32));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_21673C568(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 - 8;
    if (v8 >= 9)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

void sub_21673C62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 + 9);
  }
}

uint64_t sub_21673C704()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21673C7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_21673C8B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673C99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_217009124();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21673CA30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_217009124();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673CACC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850, &unk_217048BD0);
  sub_216B54B6C();
  sub_217009F14();
  sub_2170087F4();
  OUTLINED_FUNCTION_38_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_34();
  sub_216B54D10(v1, v2, MEMORY[0x277CDD9D8]);
  swift_getOpaqueTypeMetadata2();
  sub_2170091D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_110();
  sub_216B54D10(v3, v4, MEMORY[0x277CDDE38]);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE8, &qword_2170180D8);
  sub_217009574();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_141();
  sub_216B54D10(v6, v7, MEMORY[0x277CDDFA8]);
  OUTLINED_FUNCTION_35_31();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76C0, &unk_217017530);
  sub_2170089F4();
  v26 = MEMORY[0x277CE1350];
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_57_0(v8, v9, v10, v11, v12, v13, v14, v15, v26);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17_48();
  sub_2166D9530(v16, v17, &unk_217017530, v18);
  OUTLINED_FUNCTION_0_9();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_57_0(WitnessTable, MEMORY[0x277CE0E68], v19, v20, v21, v22, v23, v24, OpaqueTypeMetadata2);
}

uint64_t sub_21673CD88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3868, &qword_217048BE8);
  sub_217009574();
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3860, &qword_217048BE0);
  sub_2170091D4();
  OUTLINED_FUNCTION_28_1();
  sub_2166D9530(v2, &qword_27CAC3860, &qword_217048BE0, v3);
  OUTLINED_FUNCTION_3_110();
  sub_216B54D10(v4, v5, MEMORY[0x277CDDE38]);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_57_0(v6, v7, v8, v9, v10, v11, v12, v13, v1);
  OUTLINED_FUNCTION_1_141();
  sub_216B54D10(v14, v15, MEMORY[0x277CDDFA8]);
  OUTLINED_FUNCTION_35_31();
  return OUTLINED_FUNCTION_57_0(v16, v23, v17, v18, v19, v20, v21, v22, v0);
}

uint64_t sub_21673CE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21673CF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673D028()
{
  v1 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v4 = v6;
  v7 = v1;
  v2 = *(type metadata accessor for PageLoadingView(0, &v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21673D154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21673D1A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_21673D254(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC38D0, &qword_217048EE0);
  sub_2170089F4();
  sub_2170089F4();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_5();
  sub_2166D9530(v1, &qword_27CAC38D0, &qword_217048EE0, v2);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21673D384(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[17];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[24];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21673D4B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[17];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[24];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673D5E8(uint64_t a1)
{
  result = sub_2166D5774(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21673D640()
{

  return swift_deallocObject();
}

uint64_t sub_21673D688(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3918, &qword_2170493A0);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21673D6F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3918, &qword_2170493A0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21673D7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B59FF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21673D88C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21673D8C0()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_21673D9B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppDestinationViewControllerRepresentable(255, *a1, a1[1], a4);
  swift_getAssociatedTypeWitness();
  sub_217009564();
  OUTLINED_FUNCTION_0_169();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21673DAC0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21673DAF8()
{

  return swift_deallocObject();
}

uint64_t sub_21673DB30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21673DBAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for SetPersistenceItemAction(0) - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v10 = type metadata accessor for SelectTabAction(0);
  OUTLINED_FUNCTION_2(v10);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v15 = sub_21700D284();
  OUTLINED_FUNCTION_34();
  v17 = *(v16 + 8);
  v17(v0 + v8, v15);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v8 + v7[7]));

  v17(v0 + v12, v15);

  return swift_deallocObject();
}

uint64_t sub_21673DDB0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_21673DDF0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_35_3();

  return swift_deallocObject();
}

uint64_t sub_21673DE30()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_35_3();

  return swift_deallocObject();
}

uint64_t sub_21673DE7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for OpenExternalURLAction(0) - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = (*(*v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v10 + 8))(v0 + v8);
  v11 = v7[8];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v0 + v8 + v11);

  return swift_deallocObject();
}

uint64_t sub_21673E024()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21673E05C()
{

  return swift_deallocObject();
}

uint64_t sub_21673E0C0()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F3C();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E10C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F14();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E158()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61EEC();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E1A4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61EC4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E1F0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B61DD8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21673E21C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61DB0();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E268()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61D88();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E2B4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61D60();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21673E310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673E3A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673E440(uint64_t *a1)
{
  v3[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BB8, &qword_21701AFD0);
  v3[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CA8, &qword_217049FF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0, &qword_217049FF8);
  sub_216B6A524();
  v4 = sub_217009F14();
  v5 = v3[0];
  OUTLINED_FUNCTION_2_115(v4, v1, v3);
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  sub_21700AF94();
  OUTLINED_FUNCTION_6_7();
  return swift_getWitnessTable();
}

uint64_t sub_21673E518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21673E56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21673E5C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21673E5FC()
{

  return swift_deallocObject();
}

uint64_t sub_21673E634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673E6C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21673E824(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673E8D4()
{
  v1 = *(type metadata accessor for EngagementEventAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21700D284();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21673E9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21673EA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21673EB70(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700C4B4();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21673EBF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700C4B4();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673ECE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21673ED30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21673EDC0()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21673EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21673EF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673F04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618, &qword_21704AE70);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21673F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618, &qword_21704AE70);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_21673F15C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F40, &qword_21704B118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F38, &qword_21704B110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4088, &qword_21704B1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F30, &qword_21704B108);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4018, &qword_21704B198);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F48, &qword_21704B120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F50, &qword_21704B128);
  OUTLINED_FUNCTION_5_86();
  sub_216B790C0(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FB0, &qword_21704B160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FB8, &qword_21704B168);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FC0, &qword_21704B170);
  OUTLINED_FUNCTION_3_114();
  sub_216B79044(v1);
  swift_getOpaqueTypeConformance2();
  sub_216B78B58();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4020, &qword_21704B1A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4028, &qword_21704B1A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4030, &qword_21704B1B0);
  sub_216B78C44();
  swift_getOpaqueTypeConformance2();
  sub_216B78E3C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4090, &qword_21704B1E0);
  sub_216B78EFC();
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_97();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_21673F51C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21673F528()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B784();
  *v0 = result;
  return result;
}

uint64_t sub_21673F578()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B5B4();
  *v0 = result & 1;
  return result;
}

void sub_21673F5F8()
{
  OUTLINED_FUNCTION_0_0();
  sub_216B7B1AC();
  *v0 = v1;
}

uint64_t sub_21673F628()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AFA8();
  *v0 = result;
  return result;
}

void sub_21673F658()
{
  OUTLINED_FUNCTION_0_0();
  sub_216B7AD48();
  *v0 = v1;
}

uint64_t sub_21673F688()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AB58();
  *v0 = result;
  return result;
}

uint64_t sub_21673F718()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for GoToArtistAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);

  type metadata accessor for GoToArtistContext(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_21700C1E4();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    sub_21700BA44();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    sub_21700C084();
  }

  OUTLINED_FUNCTION_34();
  (*(v10 + 8))(v0 + v3);
LABEL_8:
  v11 = *(v1 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v0 + v3 + v11);
  (*(v7 + 8))(v0 + ((v3 + v4 + v8) & ~v8), v5);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21673F8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21673F924(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21673F970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21673FA04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673FA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21673FB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21673FC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21673FD08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21673FE2C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21673FEC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21673FF58()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21673FFDC()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216740024()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v1 + v5, v2);
  v12 = v1 + v9;
  v13 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_9_1(v13))
  {

    v14 = *(v10 + 24);
    v15 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      OUTLINED_FUNCTION_50();
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  v17 = v12 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v17);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v20 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v17 + v19, 1, v20))
    {
      OUTLINED_FUNCTION_50();
      (*(v21 + 8))(v17 + v19, v20);
    }
  }

  OUTLINED_FUNCTION_4_2();

  v22 = OUTLINED_FUNCTION_115_2(*(v0 + 32));
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  OUTLINED_FUNCTION_4_2();

  return swift_deallocObject();
}

uint64_t sub_2167402A8()
{
  type metadata accessor for LiveRadioPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  v4 = v1 + v3;

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v4 + *(v0 + 28);
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216740404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HorizontalPosterLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278, &qword_21704C088);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_23_37(a1 + *(a3 + 24));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_2167404F0()
{
  OUTLINED_FUNCTION_20_41();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278, &qword_21704C088);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = -v0;
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2167405D8()
{
  type metadata accessor for LiveRadioPosterLockupView.CardView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    OUTLINED_FUNCTION_50();
    (*(v7 + 8))(v1 + v4, v2);
  }

  v8 = type metadata accessor for HorizontalPosterLockup(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + v8[5]));
  v9 = OUTLINED_FUNCTION_115_2(v8[6]);
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v11 = v5 + v8[7];
  v12 = *(v11 + 16);
  if (v12 != 255)
  {
    sub_21678817C(*v11, *(v11 + 8), v12 & 1);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  v13 = OUTLINED_FUNCTION_115_2(v8[12]);
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  OUTLINED_FUNCTION_4_2();
  v15 = v5 + v8[14];
  v16 = type metadata accessor for ColorSchemeArtwork(0);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v17 = type metadata accessor for Artwork(0);
    if (!OUTLINED_FUNCTION_7_61())
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v18 + 8))(v15);
      v19 = *(v17 + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v15 + v19);
    }

    v21 = v15 + *(v16 + 20);
    if (!OUTLINED_FUNCTION_7_61())
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v22 + 8))(v21);
      v23 = *(v17 + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v24 + 8))(v21 + v23);
    }
  }

  v25 = OUTLINED_FUNCTION_115_2(v8[15]);
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v27 = v5 + v8[16];
  v28 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
  {

    v29 = *(v28 + 24);
    v30 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v27 + v29, 1, v30))
    {
      OUTLINED_FUNCTION_50();
      (*(v31 + 8))(v27 + v29, v30);
    }
  }

  OUTLINED_FUNCTION_4_2();
  v32 = v5 + v8[19];
  v33 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v34 + 8))(v32);
    v35 = *(v33 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v36 + 8))(v32 + v35);
  }

  v37 = v5 + v8[20];
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v38 + 8))(v37);
    v39 = *(v33 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v40 + 8))(v37 + v39);
  }

  v41 = v5 + v8[21];
  v42 = type metadata accessor for VideoArtwork(0);
  if (!__swift_getEnumTagSinglePayload(v41, 1, v42))
  {

    v43 = *(v42 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v44 + 8))(v41 + v43);
  }

  v45 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278, &qword_21704C088);
  OUTLINED_FUNCTION_9_0();
  (*(v46 + 8))(v5 + v45);
  sub_216684F5C(*(v5 + v0[6]), *(v5 + v0[6] + 8));
  sub_216684F5C(*(v5 + v0[7]), *(v5 + v0[7] + 8));

  return swift_deallocObject();
}
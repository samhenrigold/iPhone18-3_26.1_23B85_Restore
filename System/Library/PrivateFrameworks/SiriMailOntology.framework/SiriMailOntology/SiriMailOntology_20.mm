uint64_t sub_2679EAF74(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  OUTLINED_FUNCTION_11_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    OUTLINED_FUNCTION_11_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      OUTLINED_FUNCTION_11_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        OUTLINED_FUNCTION_11_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          OUTLINED_FUNCTION_11_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            OUTLINED_FUNCTION_11_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
              OUTLINED_FUNCTION_11_0();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[10];
              }

              else
              {
                v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v14 = a4[11];
              }
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_2679EB1F4(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF638, &qword_2801DF640, &qword_267A89E38);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v2 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v3 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v4 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v5 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v6 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801DF648, &qword_2801DF5E8, &qword_267A89CC0);
              if (v7 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CommonUserEntity.UserEntityAttribute.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2679EB494);
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

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_267A41C54();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
}

void *OUTLINED_FUNCTION_50_3(uint64_t a1, ...)
{

  return sub_267A41C74();
}

void *OUTLINED_FUNCTION_55_2(uint64_t a1, ...)
{

  return sub_267A41C74();
}

uint64_t OUTLINED_FUNCTION_57_2(uint64_t a1, uint64_t a2)
{

  return sub_2679E883C(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return sub_267A41C24();
}

uint64_t OUTLINED_FUNCTION_70_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_267A41C54();
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1)
{

  return sub_267A41C24();
}

uint64_t sub_2679EB8C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFA0, &qword_267A8CF58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42E50;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 6645601;
  *(inited + 48) = 0xE300000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 6645601;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "associatedDate");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "associatedDate");
  *(inited + 127) = -18;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000016;
  *(inited + 144) = 0x8000000267A9A010;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000016;
  *(inited + 168) = 0x8000000267A9A010;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x7475626972747461;
  *(inited + 192) = 0xEA00000000007365;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x7475626972747461;
  *(inited + 216) = 0xEA00000000007365;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x7461646874726962;
  *(inited + 240) = 0xE900000000000065;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x7461646874726962;
  *(inited + 264) = 0xE900000000000065;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000017;
  *(inited + 288) = 0x8000000267A9A030;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000017;
  *(inited + 312) = 0x8000000267A9A030;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x6E6F697461636F6CLL;
  *(inited + 336) = 0xE800000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x6E6F697461636F6CLL;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 1701667182;
  *(inited + 384) = 0xE400000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 1701667182;
  *(inited + 408) = 0xE400000000000000;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "phoneticName");
  *(inited + 437) = 0;
  *(inited + 438) = -5120;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "phoneticName");
  *(inited + 461) = 0;
  *(inited + 462) = -5120;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000016;
  *(inited + 480) = 0x8000000267A9A050;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000016;
  *(inited + 504) = 0x8000000267A9A050;
  *(inited + 512) = swift_getKeyPath();
  strcpy((inited + 520), "relationships");
  *(inited + 534) = -4864;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "relationships");
  *(inited + 558) = -4864;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000018;
  *(inited + 576) = 0x8000000267A99CB0;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000018;
  *(inited + 600) = 0x8000000267A99CB0;
  *(inited + 608) = swift_getKeyPath();
  strcpy((inited + 616), "structuredName");
  *(inited + 631) = -18;
  *(inited + 632) = swift_getKeyPath();
  strcpy((inited + 640), "structuredName");
  *(inited + 655) = -18;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0xD000000000000010;
  *(inited + 672) = 0x8000000267A97810;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0xD000000000000010;
  *(inited + 696) = 0x8000000267A97810;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0x507473694C6F7375;
  *(inited + 720) = 0xEF6E6F697469736FLL;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0x507473694C6F7375;
  *(inited + 744) = 0xEF6E6F697469736FLL;
  *(inited + 752) = swift_getKeyPath();
  strcpy((inited + 760), "usoQuantifier");
  *(inited + 774) = -4864;
  *(inited + 776) = swift_getKeyPath();
  strcpy((inited + 784), "usoQuantifier");
  *(inited + 798) = -4864;
  *(inited + 800) = swift_getKeyPath();
  *(inited + 808) = 0xD000000000000010;
  *(inited + 816) = 0x8000000267A97830;
  *(inited + 824) = swift_getKeyPath();
  *(inited + 832) = 0xD000000000000010;
  *(inited + 840) = 0x8000000267A97830;
  *(inited + 848) = swift_getKeyPath();
  *(inited + 856) = 0xD000000000000012;
  *(inited + 864) = 0x8000000267A97850;
  *(inited + 872) = swift_getKeyPath();
  *(inited + 880) = 0xD000000000000012;
  *(inited + 888) = 0x8000000267A97850;
  *(inited + 896) = swift_getKeyPath();
  *(inited + 904) = 0x41656D61536F7375;
  *(inited + 912) = 0xE900000000000073;
  *(inited + 920) = swift_getKeyPath();
  *(inited + 928) = 0x41656D61536F7375;
  *(inited + 936) = 0xE900000000000073;
  *(inited + 944) = swift_getKeyPath();
  *(inited + 952) = 0xD000000000000012;
  *(inited + 960) = 0x8000000267A97870;
  *(inited + 968) = swift_getKeyPath();
  *(inited + 976) = 0xD000000000000012;
  *(inited + 984) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFA8, &qword_267A8D5A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.definition.getter()
{
  if (qword_2801D4B98 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB00, &qword_267A89E58);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF650);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EBF98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF90, &qword_267A8CC28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000018;
  *(inited + 144) = 0x8000000267A99CB0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000267A99CB0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF98, &qword_267A8CF50);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.definition.getter()
{
  if (qword_2801D4BA0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB08, &qword_267A89E60);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF668);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EC3A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF80, &qword_267A8C8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x737265626D656DLL;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x737265626D656DLL;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000018;
  *(inited + 192) = 0x8000000267A99CB0;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000018;
  *(inited + 216) = 0x8000000267A99CB0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97810;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97810;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x8000000267A97830;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x8000000267A97830;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x8000000267A97850;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x8000000267A97850;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x8000000267A97870;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF88, &qword_267A8CC20);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.definition.getter()
{
  if (qword_2801D4BA8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB10, &qword_267A89E68);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF680);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EC7EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF70, &qword_267A8C578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000018;
  *(inited + 144) = 0x8000000267A99CB0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000267A99CB0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF78, &qword_267A8C8A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.definition.getter()
{
  if (qword_2801D4BB0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB18, &qword_267A89E70);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF698);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679ECBF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF60, &qword_267A8C248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000018;
  *(inited + 144) = 0x8000000267A99CB0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000267A99CB0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97810;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97810;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000267A97830;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000267A97830;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97850;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97850;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x8000000267A97870;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF68, &qword_267A8C570);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.definition.getter()
{
  if (qword_2801D4BB8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB20, &qword_267A89E78);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6B0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679ED000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF50, &qword_267A8C198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF58, &qword_267A8C240);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.CheckExistence.definition.getter()
{
  if (qword_2801D4BC0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB28, &qword_267A89E80);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6C8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679ED21C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF40, &qword_267A8C0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF48, &qword_267A8C190);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.CheckIdentity.definition.getter()
{
  if (qword_2801D4BC8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB30, &qword_267A89E88);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6E0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679ED438()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF30, &qword_267A8C038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "geographicArea");
  *(inited + 55) = -18;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "geographicArea");
  *(inited + 79) = -18;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF38, &qword_267A8C0E0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.CheckLocation.definition.getter()
{
  if (qword_2801D4BD0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB38, &qword_267A89E90);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF6F8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679ED658()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF20, &qword_267A8BF88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF28, &qword_267A8C030);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Create.definition.getter()
{
  if (qword_2801D4BD8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB40, &qword_267A89E98);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF710);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679ED86C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF10, &qword_267A8BED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF18, &qword_267A8BF80);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Delete.definition.getter()
{
  if (qword_2801D4BE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB48, &qword_267A89EA0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF728);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EDA88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF00, &qword_267A8BE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFF08, &qword_267A8BED0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.GetLocation(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.GetLocation.definition.getter()
{
  if (qword_2801D4BE8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB50, &qword_267A89EA8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF740);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EDCA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEF0, &qword_267A8BD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEF8, &qword_267A8BE20);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.NoVerb.definition.getter()
{
  if (qword_2801D4BF0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB58, &qword_267A89EB0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF758);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EDEB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEE0, &qword_267A8BCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEE8, &qword_267A8BD70);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.PronounceName(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.PronounceName.definition.getter()
{
  if (qword_2801D4BF8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB60, &qword_267A89EB8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF770);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EE0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFED0, &qword_267A8BC18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFED8, &qword_267A8BCC0);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Read.definition.getter()
{
  if (qword_2801D4C00 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB68, &qword_267A89EC0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF788);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EE2F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEC0, &qword_267A8BB18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEC8, &qword_267A8BC10);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Request.definition.getter()
{
  if (qword_2801D4C08 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB70, &qword_267A89EC8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7A0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EE544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEB0, &qword_267A8BA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEB8, &qword_267A8BB10);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.SetIdentity.definition.getter()
{
  if (qword_2801D4C10 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB78, &qword_267A89ED0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7B8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EE798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEA0, &qword_267A8B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFEA8, &qword_267A8BA10);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Summarise.definition.getter()
{
  if (qword_2801D4C18 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB80, &qword_267A89ED8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7D0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EE9B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE90, &qword_267A8B868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE98, &qword_267A8B960);
  sub_267A41C04();
  type metadata accessor for Sirikit.AudiobookAuthor.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.AudiobookAuthor.Update.definition.getter()
{
  if (qword_2801D4C20 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB88, &qword_267A89EE0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF7E8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EEC08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE80, &qword_267A8B7B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE88, &qword_267A8B860);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.CheckExistence.definition.getter()
{
  if (qword_2801D4C28 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB90, &qword_267A89EE8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF800);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EEE24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE70, &qword_267A8B708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE78, &qword_267A8B7B0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Create.definition.getter()
{
  if (qword_2801D4C30 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB98, &qword_267A89EF0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF818);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EF038()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE60, &qword_267A8B658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE68, &qword_267A8B700);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Delete.definition.getter()
{
  if (qword_2801D4C38 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBA0, &qword_267A89EF8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF830);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EF254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE50, &qword_267A8B5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE58, &qword_267A8B650);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.NoVerb.definition.getter()
{
  if (qword_2801D4C40 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBA8, &qword_267A89F00);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF848);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EF468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE40, &qword_267A8B4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE48, &qword_267A8B5A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Read.definition.getter()
{
  if (qword_2801D4C48 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBB0, &qword_267A89F08);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF860);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EF684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE30, &qword_267A8B3F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE38, &qword_267A8B4F0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Request.definition.getter()
{
  if (qword_2801D4C50 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBB8, &qword_267A89F10);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF878);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EF8D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE20, &qword_267A8B348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE28, &qword_267A8B3F0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Summarise.definition.getter()
{
  if (qword_2801D4C58 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBC0, &qword_267A89F18);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF890);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EFAF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE10, &qword_267A8B248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE18, &qword_267A8B340);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactAgent.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactAgent.Update.definition.getter()
{
  if (qword_2801D4C60 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBC8, &qword_267A89F20);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8A8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EFD48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE00, &qword_267A8B198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFE08, &qword_267A8B240);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.CheckExistence.definition.getter()
{
  if (qword_2801D4C68 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBD0, &qword_267A89F28);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8C0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679EFF64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDF0, &qword_267A8B0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDF8, &qword_267A8B190);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Create.definition.getter()
{
  if (qword_2801D4C70 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBD8, &qword_267A89F30);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8D8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F0178()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDE0, &qword_267A8B038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDE8, &qword_267A8B0E0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Delete.definition.getter()
{
  if (qword_2801D4C78 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBE0, &qword_267A89F38);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF8F0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F0394()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDD0, &qword_267A8AF88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDD8, &qword_267A8B030);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.NoVerb.definition.getter()
{
  if (qword_2801D4C80 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBE8, &qword_267A89F40);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF908);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F05A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDC0, &qword_267A8AED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDC8, &qword_267A8AF80);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Read.definition.getter()
{
  if (qword_2801D4C88 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBF0, &qword_267A89F48);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF920);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F07C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDB0, &qword_267A8ADD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDB8, &qword_267A8AED0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Request.definition.getter()
{
  if (qword_2801D4C90 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBF8, &qword_267A89F50);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF938);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F0A18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDA0, &qword_267A8AD28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFDA8, &qword_267A8ADD0);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Summarise.definition.getter()
{
  if (qword_2801D4C98 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC00, &qword_267A89F58);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF950);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F0C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD90, &qword_267A8AC28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD98, &qword_267A8AD20);
  sub_267A41C04();
  type metadata accessor for Sirikit.ContactGroup.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.ContactGroup.Update.definition.getter()
{
  if (qword_2801D4CA0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC08, &qword_267A89F60);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF968);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F0E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD80, &qword_267A8AB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD88, &qword_267A8AC20);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.CheckExistence.definition.getter()
{
  if (qword_2801D4CA8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC10, &qword_267A89F68);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF980);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F10A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD70, &qword_267A8AAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD78, &qword_267A8AB70);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Create.definition.getter()
{
  if (qword_2801D4CB0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC18, &qword_267A89F70);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF998);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F12B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD60, &qword_267A8AA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD68, &qword_267A8AAC0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Delete.definition.getter()
{
  if (qword_2801D4CB8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC20, &qword_267A89F78);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9B0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F14D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD50, &qword_267A8A968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD58, &qword_267A8AA10);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.NoVerb.definition.getter()
{
  if (qword_2801D4CC0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC28, &qword_267A89F80);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9C8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F16E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD40, &qword_267A8A8B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD48, &qword_267A8A960);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Read.definition.getter()
{
  if (qword_2801D4CC8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC30, &qword_267A89F88);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9E0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F1904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD30, &qword_267A8A7B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD38, &qword_267A8A8B0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Request.definition.getter()
{
  if (qword_2801D4CD0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC38, &qword_267A89F90);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DF9F8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F1B58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD20, &qword_267A8A708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD28, &qword_267A8A7B0);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Summarise.definition.getter()
{
  if (qword_2801D4CD8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC40, &qword_267A89F98);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA10);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F1D74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD10, &qword_267A8A608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD18, &qword_267A8A700);
  sub_267A41C04();
  type metadata accessor for Sirikit.MusicArtist.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.MusicArtist.Update.definition.getter()
{
  if (qword_2801D4CE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC48, &qword_267A89FA0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA28);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F1FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD00, &qword_267A8A558);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFD08, &qword_267A8A600);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.CheckExistence(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.CheckExistence.definition.getter()
{
  if (qword_2801D4CE8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC50, &qword_267A89FA8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA40);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F21E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCF0, &qword_267A8A4A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCF8, &qword_267A8A550);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Create(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Create.definition.getter()
{
  if (qword_2801D4CF0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC58, &qword_267A89FB0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA58);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F23F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCE0, &qword_267A8A3F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCE8, &qword_267A8A4A0);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Delete(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Delete.definition.getter()
{
  if (qword_2801D4CF8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC60, &qword_267A89FB8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA70);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F2614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCD0, &qword_267A8A348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCD8, &qword_267A8A3F0);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.NoVerb(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.NoVerb.definition.getter()
{
  if (qword_2801D4D00 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC68, &qword_267A89FC0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFA88);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F2828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCC0, &qword_267A8A298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCC8, &qword_267A8A340);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Read(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Read.definition.getter()
{
  if (qword_2801D4D08 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC70, &qword_267A89FC8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAA0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F2A44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCB0, &qword_267A8A198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7463656C6573;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656C6573;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCB8, &qword_267A8A290);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Request(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Request.definition.getter()
{
  if (qword_2801D4D10 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC78, &qword_267A89FD0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAB8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F2C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCA0, &qword_267A8A0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x636E657265666572;
  *(inited + 48) = 0xE900000000000065;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x636E657265666572;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFCA8, &qword_267A8A190);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Summarise(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Summarise.definition.getter()
{
  if (qword_2801D4D18 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC80, &qword_267A89FD8);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAD0);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F2EB4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2679F2F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC90, &qword_267A89FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42EA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746567726174;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746567726174;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x636E657265666572;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x636E657265666572;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "userEntities");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "userEntities");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC98, &qword_267A8A0E0);
  sub_267A41C04();
  type metadata accessor for Sirikit.PaymentOrganization.Update(0);
  return sub_267A41914();
}

uint64_t static Sirikit.PaymentOrganization.Update.definition.getter()
{
  if (qword_2801D4D20 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC88, &qword_267A89FE0);
  OUTLINED_FUNCTION_0_2(v0, qword_2801DFAE8);
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679F3BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_118();
  sub_2676F8AF4(a1, v7, a5, a6);
  return a7(v7);
}

uint64_t sub_2679F3CD4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F3E04()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F3E44()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.phoneticName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F3ED0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.relationships.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F41C8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4214()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F44B4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4500()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.members.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F454C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F47EC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4838()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F4AD8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4B24()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F4B64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_2679F4E58()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F4EF0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5020()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F50B8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5150()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.GetLocation.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F51E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5280()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.PronounceName.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5318()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F53FC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F54E0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.SetIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5578()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F565C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F56F4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F578C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5824()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F58BC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5954()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5A38()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5AD0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5BB4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5C4C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5CE4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5D7C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5E14()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5EAC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F5F90()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6028()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F610C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F61A4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F623C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F62D4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F636C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6404()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F64E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6580()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6664()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F66FC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6794()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F682C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F68C4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F695C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6A40()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6AD8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F6BBC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Update.userEntities.getter();
  *v0 = result;
  return result;
}

void Entity<A>.init(age:associatedDate:associatedOrganization:attributes:birthdate:identifyingRelationship:location:name:phoneticName:phoneticStructuredName:relationships:specifyingContactAddress:structuredName:usoAssociatedApp:usoListPosition:usoQuantifier:usoReferenceType:usoSearchQualifier:usoSameAs:usoSpatialPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_312();
  v118 = v39;
  v119 = v38;
  v120 = v40;
  v121 = v42;
  v122 = v41;
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v45);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_241();
  v117 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v48);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_241();
  v116 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v51);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_241();
  v115 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v54);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_241();
  v114 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v57);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_241();
  v113 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v60);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v63);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_3(v66);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9DD0, &qword_267A6E530);
  OUTLINED_FUNCTION_3(v69);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9B80, &qword_267A6B1C0);
  OUTLINED_FUNCTION_3(v72);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_273(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9DD8, &qword_267A6E538);
  OUTLINED_FUNCTION_3(v75);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_95();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9DB8, &qword_267A6E390);
  OUTLINED_FUNCTION_3(v77);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_110();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9970, &qword_267A695C0);
  OUTLINED_FUNCTION_3(v79);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_118();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D96C0, &qword_267A67298);
  OUTLINED_FUNCTION_3(v81);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_119();
  if (qword_2801D4B98 != -1)
  {
    swift_once();
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB00, &qword_267A89E58);
  OUTLINED_FUNCTION_175(v83, qword_2801DF650);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  sub_267A419D4();
  swift_getKeyPath();
  sub_2676F8AF4(v44, v34, &qword_2801D96C0, &qword_267A67298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB8, &qword_267A8D5D8);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v84, v85, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  sub_267A00F7C(&qword_2801D96E8, type metadata accessor for Common.Age, &protocol conformance descriptor for Common.Age);
  OUTLINED_FUNCTION_196();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v122, v36, &qword_2801D9970, &qword_267A695C0);
  sub_267A00F7C(&qword_2801D99A8, type metadata accessor for Common.Date, &protocol conformance descriptor for Common.Date);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_1770(v86);
  swift_getKeyPath();
  sub_2676F8AF4(v121, v37, &qword_2801D9DB8, &qword_267A6E390);
  sub_267A00F7C(&qword_2801D9DC8, type metadata accessor for Common.Organization, &protocol conformance descriptor for Common.Organization);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_196();
  sub_267A41A14();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_267A00F7C(v87, v88, &protocol conformance descriptor for CommonContact.ContactAttribute);
  OUTLINED_FUNCTION_196();
  sub_267A41A54();
  swift_getKeyPath();
  sub_2676F8AF4(v120, v36, &qword_2801D9970, &qword_267A695C0);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_1770(v89);
  swift_getKeyPath();
  sub_2676F8AF4(v119, v35, &qword_2801D9DD8, &qword_267A6E538);
  sub_267A00F7C(&qword_2801D9DE8, type metadata accessor for Common.PersonRelationship, &protocol conformance descriptor for Common.PersonRelationship);
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v118, v108, &qword_2801D9B80, &qword_267A6B1C0);
  sub_267A00F7C(&qword_2801D9B90, type metadata accessor for Common.Geolocation, &protocol conformance descriptor for Common.Geolocation);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_267A41A34();
  swift_getKeyPath();
  sub_267A41A34();
  swift_getKeyPath();
  sub_2676F8AF4(a24, v109, &qword_2801D9DD0, &qword_267A6E530);
  sub_267A00F7C(&qword_2801D9DF0, type metadata accessor for Common.PersonName, &protocol conformance descriptor for Common.PersonName);
  v90 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1770(v90);
  swift_getKeyPath();
  sub_267A41A54();
  swift_getKeyPath();
  sub_2676F8AF4(a26, v110, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_14_5();
  sub_267A00F7C(v91, v92, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_196();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(a27, v109, &qword_2801D9DD0, &qword_267A6E530);
  v93 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1770(v93);
  swift_getKeyPath();
  sub_2676F8AF4(a28, v111, &qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_13_5();
  sub_267A00F7C(v94, v95, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a29, v112, &qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_12_8();
  sub_267A00F7C(v96, v97, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a30, v113, &qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_11_13();
  sub_267A00F7C(v98, v99, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a31, v114, &qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_10_12();
  sub_267A00F7C(v100, v101, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a32, v115, &qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_9_13();
  sub_267A00F7C(v102, v103, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_31_12();
  swift_getKeyPath();
  sub_2676F8AF4(a33, v116, &qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_201();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(a34, v117, &qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_8_15();
  sub_267A00F7C(v104, v105, &protocol conformance descriptor for Common.SpatialPosition);
  OUTLINED_FUNCTION_22_3();
  sub_267A41A14();
  sub_2676F8798(a34, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(a33, &qword_2801DFFB0, &qword_267A8D5A8);
  sub_2676F8798(a32, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(a31, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(a30, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(a29, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8798(a28, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8798(a27, &qword_2801D9DD0, &qword_267A6E530);
  sub_2676F8798(a26, &qword_2801D9710, &qword_267A67480);
  sub_2676F8798(a24, &qword_2801D9DD0, &qword_267A6E530);
  sub_2676F8798(v118, &qword_2801D9B80, &qword_267A6B1C0);
  sub_2676F8798(v119, &qword_2801D9DD8, &qword_267A6E538);
  sub_2676F8798(v120, &qword_2801D9970, &qword_267A695C0);
  sub_2676F8798(v121, &qword_2801D9DB8, &qword_267A6E390);
  v106 = OUTLINED_FUNCTION_317();
  sub_2676F8798(v106, v107, &qword_267A695C0);
  sub_2676F8798(v44, &qword_2801D96C0, &qword_267A67298);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679F7A48()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F7B64()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F7BB8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.phoneticName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F7C5C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.relationships.getter();
  *v0 = result;
  return result;
}

void Entity<A>.init(attributes:name:specifyingContactAddress:usoAssociatedApp:usoListPosition:usoQuantifier:usoReferenceType:usoSearchQualifier:usoSameAs:usoSpatialPosition:)()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_33_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47(v11, v66);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52(v14, v67);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_95();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_115();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v19);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_110();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_124();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_119();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_3(v25);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_155();
  if (qword_2801D4BA0 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB08, &qword_267A89E60);
  OUTLINED_FUNCTION_175(v27, qword_2801DF668);
  v28 = OUTLINED_FUNCTION_102();
  type metadata accessor for Sirikit.ContactAgent(v28);
  OUTLINED_FUNCTION_40_5();
  sub_267A419D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFD0, &qword_267A8D908);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v29, v30, &protocol conformance descriptor for Sirikit.ContactAgent);
  OUTLINED_FUNCTION_15_7();
  sub_267A00F7C(v31, v32, &protocol conformance descriptor for CommonContact.ContactAttribute);
  OUTLINED_FUNCTION_54();
  sub_267A41A54();
  swift_getKeyPath();
  OUTLINED_FUNCTION_54_3();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_169_1(KeyPath, v34, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_14_5();
  sub_267A00F7C(v35, v36, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  swift_getKeyPath();
  v37 = OUTLINED_FUNCTION_317();
  sub_2676F8AF4(v37, v38, v39, v40);
  OUTLINED_FUNCTION_13_5();
  sub_267A00F7C(v41, v42, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_173_1(v43, v44, &qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_12_8();
  sub_267A00F7C(v45, v46, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v47 = swift_getKeyPath();
  OUTLINED_FUNCTION_172_1(v47, v48, &qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_11_13();
  sub_267A00F7C(v49, v50, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v51 = swift_getKeyPath();
  OUTLINED_FUNCTION_171_1(v51, v52, &qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_10_12();
  sub_267A00F7C(v53, v54, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  swift_getKeyPath();
  v55 = OUTLINED_FUNCTION_250();
  sub_2676F8AF4(v55, v56, v57, v58);
  OUTLINED_FUNCTION_9_13();
  sub_267A00F7C(v59, v60, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v61 = swift_getKeyPath();
  OUTLINED_FUNCTION_53_3(v61, v62, &qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_170_1(v63);
  swift_getKeyPath();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_8_15();
  sub_267A00F7C(v64, v65, &protocol conformance descriptor for Common.SpatialPosition);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  OUTLINED_FUNCTION_165_1();
  sub_2676F8798(v0, &qword_2801DFFC8, &qword_267A8D8D8);
  sub_2676F8798(v68, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v69, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v70, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v71, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8798(v72, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8798(v73, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_33_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47(v11, v66);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52(v14, v67);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_95();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_115();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v19);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_110();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_124();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_119();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_3(v25);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_155();
  if (qword_2801D4BB0 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB18, &qword_267A89E70);
  OUTLINED_FUNCTION_175(v27, qword_2801DF698);
  v28 = OUTLINED_FUNCTION_102();
  type metadata accessor for Sirikit.MusicArtist(v28);
  OUTLINED_FUNCTION_40_5();
  sub_267A419D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0000, &qword_267A8DC70);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v29, v30, &protocol conformance descriptor for Sirikit.MusicArtist);
  OUTLINED_FUNCTION_15_7();
  sub_267A00F7C(v31, v32, &protocol conformance descriptor for CommonContact.ContactAttribute);
  OUTLINED_FUNCTION_54();
  sub_267A41A54();
  swift_getKeyPath();
  OUTLINED_FUNCTION_54_3();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_169_1(KeyPath, v34, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_14_5();
  sub_267A00F7C(v35, v36, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  swift_getKeyPath();
  v37 = OUTLINED_FUNCTION_317();
  sub_2676F8AF4(v37, v38, v39, v40);
  OUTLINED_FUNCTION_13_5();
  sub_267A00F7C(v41, v42, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_173_1(v43, v44, &qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_12_8();
  sub_267A00F7C(v45, v46, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v47 = swift_getKeyPath();
  OUTLINED_FUNCTION_172_1(v47, v48, &qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_11_13();
  sub_267A00F7C(v49, v50, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v51 = swift_getKeyPath();
  OUTLINED_FUNCTION_171_1(v51, v52, &qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_10_12();
  sub_267A00F7C(v53, v54, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  swift_getKeyPath();
  v55 = OUTLINED_FUNCTION_250();
  sub_2676F8AF4(v55, v56, v57, v58);
  OUTLINED_FUNCTION_9_13();
  sub_267A00F7C(v59, v60, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v61 = swift_getKeyPath();
  OUTLINED_FUNCTION_53_3(v61, v62, &qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_170_1(v63);
  swift_getKeyPath();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_8_15();
  sub_267A00F7C(v64, v65, &protocol conformance descriptor for Common.SpatialPosition);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  OUTLINED_FUNCTION_165_1();
  sub_2676F8798(v0, &qword_2801DFFF8, &qword_267A8DC40);
  sub_2676F8798(v68, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v69, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v70, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v71, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8798(v72, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8798(v73, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_33_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47(v11, v66);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52(v14, v67);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_95();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_115();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v19);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_110();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_124();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_119();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_3(v25);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_155();
  if (qword_2801D4BB8 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB20, &qword_267A89E78);
  OUTLINED_FUNCTION_175(v27, qword_2801DF6B0);
  v28 = OUTLINED_FUNCTION_102();
  type metadata accessor for Sirikit.PaymentOrganization(v28);
  OUTLINED_FUNCTION_40_5();
  sub_267A419D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0018, &qword_267A8DE10);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v29, v30, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  OUTLINED_FUNCTION_15_7();
  sub_267A00F7C(v31, v32, &protocol conformance descriptor for CommonContact.ContactAttribute);
  OUTLINED_FUNCTION_54();
  sub_267A41A54();
  swift_getKeyPath();
  OUTLINED_FUNCTION_54_3();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_169_1(KeyPath, v34, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_14_5();
  sub_267A00F7C(v35, v36, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  swift_getKeyPath();
  v37 = OUTLINED_FUNCTION_317();
  sub_2676F8AF4(v37, v38, v39, v40);
  OUTLINED_FUNCTION_13_5();
  sub_267A00F7C(v41, v42, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_173_1(v43, v44, &qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_12_8();
  sub_267A00F7C(v45, v46, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v47 = swift_getKeyPath();
  OUTLINED_FUNCTION_172_1(v47, v48, &qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_11_13();
  sub_267A00F7C(v49, v50, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v51 = swift_getKeyPath();
  OUTLINED_FUNCTION_171_1(v51, v52, &qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_10_12();
  sub_267A00F7C(v53, v54, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  swift_getKeyPath();
  v55 = OUTLINED_FUNCTION_250();
  sub_2676F8AF4(v55, v56, v57, v58);
  OUTLINED_FUNCTION_9_13();
  sub_267A00F7C(v59, v60, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v61 = swift_getKeyPath();
  OUTLINED_FUNCTION_53_3(v61, v62, &qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_170_1(v63);
  swift_getKeyPath();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_8_15();
  sub_267A00F7C(v64, v65, &protocol conformance descriptor for Common.SpatialPosition);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  OUTLINED_FUNCTION_165_1();
  sub_2676F8798(v0, &qword_2801E0010, &qword_267A8DDE0);
  sub_2676F8798(v68, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v69, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v70, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v71, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8798(v72, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8798(v73, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679F85C4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F85F0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void Entity<A>.init(attributes:members:name:specifyingContactAddress:usoAssociatedApp:usoListPosition:usoQuantifier:usoReferenceType:usoSearchQualifier:usoSameAs:usoSpatialPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_312();
  v87 = v24;
  v88 = v23;
  v89 = v26;
  v90 = v25;
  v85 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47(v30, v85);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v31);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_52(v33, v86);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v34);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_95();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v36);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_115();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_110();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_124();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v42);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_119();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_3(v44);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_155();
  if (qword_2801D4BA8 != -1)
  {
    swift_once();
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB10, &qword_267A89E68);
  OUTLINED_FUNCTION_175(v46, qword_2801DF680);
  v47 = OUTLINED_FUNCTION_102();
  type metadata accessor for Sirikit.ContactGroup(v47);
  OUTLINED_FUNCTION_40_5();
  sub_267A419D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE8, &qword_267A8DAA8);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v48, v49, &protocol conformance descriptor for Sirikit.ContactGroup);
  OUTLINED_FUNCTION_15_7();
  sub_267A00F7C(v50, v51, &protocol conformance descriptor for CommonContact.ContactAttribute);
  OUTLINED_FUNCTION_54();
  sub_267A41A54();
  swift_getKeyPath();
  sub_267A00F7C(&qword_2801D9720, type metadata accessor for Common.Agent, &protocol conformance descriptor for Common.Agent);
  OUTLINED_FUNCTION_54();
  sub_267A41A54();
  swift_getKeyPath();
  OUTLINED_FUNCTION_54_3();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_169_1(KeyPath, v53, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_14_5();
  sub_267A00F7C(v54, v55, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  swift_getKeyPath();
  v56 = OUTLINED_FUNCTION_317();
  sub_2676F8AF4(v56, v57, v58, v59);
  OUTLINED_FUNCTION_13_5();
  sub_267A00F7C(v60, v61, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v62 = swift_getKeyPath();
  OUTLINED_FUNCTION_173_1(v62, v63, &qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_12_8();
  sub_267A00F7C(v64, v65, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v66 = swift_getKeyPath();
  OUTLINED_FUNCTION_172_1(v66, v67, &qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_11_13();
  sub_267A00F7C(v68, v69, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  v70 = swift_getKeyPath();
  OUTLINED_FUNCTION_171_1(v70, v71, &qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_10_12();
  sub_267A00F7C(v72, v73, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_252();
  sub_267A41A14();
  swift_getKeyPath();
  v74 = OUTLINED_FUNCTION_250();
  sub_2676F8AF4(v74, v75, v76, v77);
  OUTLINED_FUNCTION_9_13();
  sub_267A00F7C(v78, v79, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  v80 = swift_getKeyPath();
  OUTLINED_FUNCTION_53_3(v80, v81, &qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_170_1(v82);
  swift_getKeyPath();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_8_15();
  sub_267A00F7C(v83, v84, &protocol conformance descriptor for Common.SpatialPosition);
  OUTLINED_FUNCTION_54();
  sub_267A41A14();
  OUTLINED_FUNCTION_165_1();
  sub_2676F8798(v22, &qword_2801DFFE0, &qword_267A8DA78);
  sub_2676F8798(a22, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(a21, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v87, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v88, &qword_2801D4E98, &qword_267A421B8);
  sub_2676F8798(v89, &qword_2801D4EA0, &qword_267A421C0);
  sub_2676F8798(v90, &qword_2801D9710, &qword_267A67480);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679F8FA4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F8FD0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.members.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F8FFC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679F993C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679F9968()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2679FA2A8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FA2D4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void DynamicTask<A>.init(reference:userEntities:)()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4BC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB28, &qword_267A89E80);
  OUTLINED_FUNCTION_175(v2, qword_2801DF6C8);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0028, &qword_267A8DFA8);
  sub_267A00F7C(&qword_2801E0030, type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence, &protocol conformance descriptor for Sirikit.AudiobookAuthor.CheckExistence);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4BC8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB30, &qword_267A89E88);
  OUTLINED_FUNCTION_175(v2, qword_2801DF6E0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0038, &qword_267A8E000);
  sub_267A00F7C(&qword_2801E0040, type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity, &protocol conformance descriptor for Sirikit.AudiobookAuthor.CheckIdentity);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4BE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB48, &qword_267A89EA0);
  OUTLINED_FUNCTION_175(v2, qword_2801DF728);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.AudiobookAuthor.Delete(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0068, &qword_267A8E108);
  sub_267A00F7C(&qword_2801E0070, type metadata accessor for Sirikit.AudiobookAuthor.Delete, &protocol conformance descriptor for Sirikit.AudiobookAuthor.Delete);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4BE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB50, &qword_267A89EA8);
  OUTLINED_FUNCTION_175(v2, qword_2801DF740);
  v3 = OUTLINED_FUNCTION_102();
  Location = type metadata accessor for Sirikit.AudiobookAuthor.GetLocation(v3);
  OUTLINED_FUNCTION_37_1(Location);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0078, &qword_267A8E160);
  sub_267A00F7C(&qword_2801E0080, type metadata accessor for Sirikit.AudiobookAuthor.GetLocation, &protocol conformance descriptor for Sirikit.AudiobookAuthor.GetLocation);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4BF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB60, &qword_267A89EB8);
  OUTLINED_FUNCTION_175(v2, qword_2801DF770);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.AudiobookAuthor.PronounceName(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0098, &qword_267A8E210);
  sub_267A00F7C(&qword_2801E00A0, type metadata accessor for Sirikit.AudiobookAuthor.PronounceName, &protocol conformance descriptor for Sirikit.AudiobookAuthor.PronounceName);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C00 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB68, &qword_267A89EC0);
  OUTLINED_FUNCTION_175(v2, qword_2801DF788);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.AudiobookAuthor.Read(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E00A8, &qword_267A8E268);
  sub_267A00F7C(&qword_2801E00B0, type metadata accessor for Sirikit.AudiobookAuthor.Read, &protocol conformance descriptor for Sirikit.AudiobookAuthor.Read);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C18 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB80, &qword_267A89ED8);
  OUTLINED_FUNCTION_175(v2, qword_2801DF7D0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.AudiobookAuthor.Summarise(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E00D8, &qword_267A8E3C0);
  sub_267A00F7C(&qword_2801E00E0, type metadata accessor for Sirikit.AudiobookAuthor.Summarise, &protocol conformance descriptor for Sirikit.AudiobookAuthor.Summarise);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C28 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB90, &qword_267A89EE8);
  OUTLINED_FUNCTION_175(v2, qword_2801DF800);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactAgent.CheckExistence(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E00F8, &qword_267A8E498);
  sub_267A00F7C(&qword_2801E0100, type metadata accessor for Sirikit.ContactAgent.CheckExistence, &protocol conformance descriptor for Sirikit.ContactAgent.CheckExistence);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactAgent);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C38 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBA0, &qword_267A89EF8);
  OUTLINED_FUNCTION_175(v2, qword_2801DF830);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactAgent.Delete(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0118, &qword_267A8E548);
  sub_267A00F7C(&qword_2801E0120, type metadata accessor for Sirikit.ContactAgent.Delete, &protocol conformance descriptor for Sirikit.ContactAgent.Delete);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactAgent);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBB0, &qword_267A89F08);
  OUTLINED_FUNCTION_175(v2, qword_2801DF860);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactAgent.Read(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0138, &qword_267A8E5F8);
  sub_267A00F7C(&qword_2801E0140, type metadata accessor for Sirikit.ContactAgent.Read, &protocol conformance descriptor for Sirikit.ContactAgent.Read);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactAgent);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C58 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBC0, &qword_267A89F18);
  OUTLINED_FUNCTION_175(v2, qword_2801DF890);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactAgent.Summarise(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0158, &qword_267A8E6D0);
  sub_267A00F7C(&qword_2801E0160, type metadata accessor for Sirikit.ContactAgent.Summarise, &protocol conformance descriptor for Sirikit.ContactAgent.Summarise);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactAgent);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C68 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBD0, &qword_267A89F28);
  OUTLINED_FUNCTION_175(v2, qword_2801DF8C0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactGroup.CheckExistence(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0178, &qword_267A8E7A8);
  sub_267A00F7C(&qword_2801E0180, type metadata accessor for Sirikit.ContactGroup.CheckExistence, &protocol conformance descriptor for Sirikit.ContactGroup.CheckExistence);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactGroup);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C78 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBE0, &qword_267A89F38);
  OUTLINED_FUNCTION_175(v2, qword_2801DF8F0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactGroup.Delete(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0198, &qword_267A8E858);
  sub_267A00F7C(&qword_2801E01A0, type metadata accessor for Sirikit.ContactGroup.Delete, &protocol conformance descriptor for Sirikit.ContactGroup.Delete);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactGroup);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBF0, &qword_267A89F48);
  OUTLINED_FUNCTION_175(v2, qword_2801DF920);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactGroup.Read(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E01B8, &qword_267A8E908);
  sub_267A00F7C(&qword_2801E01C0, type metadata accessor for Sirikit.ContactGroup.Read, &protocol conformance descriptor for Sirikit.ContactGroup.Read);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactGroup);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C98 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC00, &qword_267A89F58);
  OUTLINED_FUNCTION_175(v2, qword_2801DF950);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactGroup.Summarise(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E01D8, &qword_267A8E9E0);
  sub_267A00F7C(&qword_2801E01E0, type metadata accessor for Sirikit.ContactGroup.Summarise, &protocol conformance descriptor for Sirikit.ContactGroup.Summarise);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactGroup);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC10, &qword_267A89F68);
  OUTLINED_FUNCTION_175(v2, qword_2801DF980);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.MusicArtist.CheckExistence(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E01F8, &qword_267A8EAB8);
  sub_267A00F7C(&qword_2801E0200, type metadata accessor for Sirikit.MusicArtist.CheckExistence, &protocol conformance descriptor for Sirikit.MusicArtist.CheckExistence);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.MusicArtist);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CB8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC20, &qword_267A89F78);
  OUTLINED_FUNCTION_175(v2, qword_2801DF9B0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.MusicArtist.Delete(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0218, &qword_267A8EB68);
  sub_267A00F7C(&qword_2801E0220, type metadata accessor for Sirikit.MusicArtist.Delete, &protocol conformance descriptor for Sirikit.MusicArtist.Delete);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.MusicArtist);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CC8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC30, &qword_267A89F88);
  OUTLINED_FUNCTION_175(v2, qword_2801DF9E0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.MusicArtist.Read(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0238, &qword_267A8EC18);
  sub_267A00F7C(&qword_2801E0240, type metadata accessor for Sirikit.MusicArtist.Read, &protocol conformance descriptor for Sirikit.MusicArtist.Read);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.MusicArtist);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC40, &qword_267A89F98);
  OUTLINED_FUNCTION_175(v2, qword_2801DFA10);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.MusicArtist.Summarise(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0258, &qword_267A8ECF0);
  sub_267A00F7C(&qword_2801E0260, type metadata accessor for Sirikit.MusicArtist.Summarise, &protocol conformance descriptor for Sirikit.MusicArtist.Summarise);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.MusicArtist);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC50, &qword_267A89FA8);
  OUTLINED_FUNCTION_175(v2, qword_2801DFA40);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.PaymentOrganization.CheckExistence(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0278, &qword_267A8EDC8);
  sub_267A00F7C(&qword_2801E0280, type metadata accessor for Sirikit.PaymentOrganization.CheckExistence, &protocol conformance descriptor for Sirikit.PaymentOrganization.CheckExistence);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC60, &qword_267A89FB8);
  OUTLINED_FUNCTION_175(v2, qword_2801DFA70);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.PaymentOrganization.Delete(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0298, &qword_267A8EE78);
  sub_267A00F7C(&qword_2801E02A0, type metadata accessor for Sirikit.PaymentOrganization.Delete, &protocol conformance descriptor for Sirikit.PaymentOrganization.Delete);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D08 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC70, &qword_267A89FC8);
  OUTLINED_FUNCTION_175(v2, qword_2801DFAA0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.PaymentOrganization.Read(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E02B8, &qword_267A8EF28);
  sub_267A00F7C(&qword_2801E02C0, type metadata accessor for Sirikit.PaymentOrganization.Read, &protocol conformance descriptor for Sirikit.PaymentOrganization.Read);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D18 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC80, &qword_267A89FD8);
  OUTLINED_FUNCTION_175(v2, qword_2801DFAD0);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.PaymentOrganization.Summarise(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E02D8, &qword_267A8F000);
  sub_267A00F7C(&qword_2801E02E0, type metadata accessor for Sirikit.PaymentOrganization.Summarise, &protocol conformance descriptor for Sirikit.PaymentOrganization.Summarise);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D30 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0A78, &qword_267A903B0);
  OUTLINED_FUNCTION_175(v2, qword_2801E0860);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.Close(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0CB0, &qword_267A91DF0);
  sub_267A31014(&qword_2801E0CB8, type metadata accessor for Uso.NoEntity.Close, &protocol conformance descriptor for Uso.NoEntity.Close);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D38 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0A80, &qword_267A903B8);
  OUTLINED_FUNCTION_175(v2, qword_2801E0878);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.Delete(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0CC0, &qword_267A91E48);
  sub_267A31014(&qword_2801E0CC8, type metadata accessor for Uso.NoEntity.Delete, &protocol conformance descriptor for Uso.NoEntity.Delete);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0A88, &qword_267A903C0);
  OUTLINED_FUNCTION_175(v2, qword_2801E0890);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.DiscoverCapabilities(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0CD0, &qword_267A91EA0);
  sub_267A31014(&qword_2801E0CD8, type metadata accessor for Uso.NoEntity.DiscoverCapabilities, &protocol conformance descriptor for Uso.NoEntity.DiscoverCapabilities);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0A90, &qword_267A903C8);
  OUTLINED_FUNCTION_175(v2, qword_2801E08A8);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.Like(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0CE0, &qword_267A91EF8);
  sub_267A31014(&qword_2801E0CE8, type metadata accessor for Uso.NoEntity.Like, &protocol conformance descriptor for Uso.NoEntity.Like);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D58 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0AA0, &qword_267A903D8);
  OUTLINED_FUNCTION_175(v2, qword_2801E08D8);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.Open(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0D00, &qword_267A91FA8);
  sub_267A31014(&qword_2801E0D08, type metadata accessor for Uso.NoEntity.Open, &protocol conformance descriptor for Uso.NoEntity.Open);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0AB8, &qword_267A903F0);
  OUTLINED_FUNCTION_175(v2, qword_2801E0920);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.Read(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0D30, &qword_267A92150);
  sub_267A31014(&qword_2801E0D38, type metadata accessor for Uso.NoEntity.Read, &protocol conformance descriptor for Uso.NoEntity.Read);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4D98 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0AE0, &qword_267A90418);
  OUTLINED_FUNCTION_175(v2, qword_2801E0998);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.Save(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0D80, &qword_267A92420);
  sub_267A31014(&qword_2801E0D88, type metadata accessor for Uso.NoEntity.Save, &protocol conformance descriptor for Uso.NoEntity.Save);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4DB8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0B00, &qword_267A90438);
  OUTLINED_FUNCTION_175(v2, qword_2801E09F8);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.SoftwareUpdate(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0DC0, &qword_267A92670);
  sub_267A31014(&qword_2801E0DC8, type metadata accessor for Uso.NoEntity.SoftwareUpdate, &protocol conformance descriptor for Uso.NoEntity.SoftwareUpdate);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4DD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0B18, &qword_267A90450);
  OUTLINED_FUNCTION_175(v2, qword_2801E0A40);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Uso.NoEntity.Unlike(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0DF0, &qword_267A92818);
  sub_267A31014(&qword_2801E0DF8, type metadata accessor for Uso.NoEntity.Unlike, &protocol conformance descriptor for Uso.NoEntity.Unlike);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v5, v6, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679FA7B8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FA9F4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.CheckIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

void DynamicTask<A>.init(geographicArea:reference:)()
{
  OUTLINED_FUNCTION_312();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_95();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9B48, &qword_267A6AE90);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4BD0 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB38, &qword_267A89E90);
  OUTLINED_FUNCTION_175(v10, qword_2801DF6F8);
  v11 = OUTLINED_FUNCTION_133();
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(v11);
  OUTLINED_FUNCTION_35_9(v12);
  swift_getKeyPath();
  sub_2676F8AF4(v5, v1, &qword_2801D9B48, &qword_267A6AE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0048, &qword_267A8E058);
  sub_267A00F7C(&qword_2801E0050, type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation, &protocol conformance descriptor for Sirikit.AudiobookAuthor.CheckLocation);
  sub_267A00F7C(&qword_2801D9B68, type metadata accessor for Common.GeographicArea, &protocol conformance descriptor for Common.GeographicArea);
  OUTLINED_FUNCTION_45();
  sub_267A41954();
  swift_getKeyPath();
  sub_2676F8AF4(v3, v0, &qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v13, v14, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_57();
  sub_267A41954();
  sub_2676F8798(v3, &qword_2801DFFB0, &qword_267A8D5A8);
  sub_2676F8798(v5, &qword_2801D9B48, &qword_267A6AE90);
  OUTLINED_FUNCTION_311();
}

void DynamicTask<A>.init(target:userEntities:)()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4BD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB40, &qword_267A89E98);
  OUTLINED_FUNCTION_175(v2, qword_2801DF710);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.AudiobookAuthor.Create(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0058, &qword_267A8E0B0);
  sub_267A00F7C(&qword_2801E0060, type metadata accessor for Sirikit.AudiobookAuthor.Create, &protocol conformance descriptor for Sirikit.AudiobookAuthor.Create);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C30 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB98, &qword_267A89EF0);
  OUTLINED_FUNCTION_175(v2, qword_2801DF818);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactAgent.Create(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0108, &qword_267A8E4F0);
  sub_267A00F7C(&qword_2801E0110, type metadata accessor for Sirikit.ContactAgent.Create, &protocol conformance descriptor for Sirikit.ContactAgent.Create);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactAgent);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4C70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBD8, &qword_267A89F30);
  OUTLINED_FUNCTION_175(v2, qword_2801DF8D8);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.ContactGroup.Create(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0188, &qword_267A8E800);
  sub_267A00F7C(&qword_2801E0190, type metadata accessor for Sirikit.ContactGroup.Create, &protocol conformance descriptor for Sirikit.ContactGroup.Create);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.ContactGroup);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC18, &qword_267A89F70);
  OUTLINED_FUNCTION_175(v2, qword_2801DF998);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.MusicArtist.Create(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0208, &qword_267A8EB10);
  sub_267A00F7C(&qword_2801E0210, type metadata accessor for Sirikit.MusicArtist.Create, &protocol conformance descriptor for Sirikit.MusicArtist.Create);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.MusicArtist);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_95();
  if (qword_2801D4CF0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC58, &qword_267A89FB0);
  OUTLINED_FUNCTION_175(v2, qword_2801DFA58);
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Sirikit.PaymentOrganization.Create(v3);
  OUTLINED_FUNCTION_37_1(v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0288, &qword_267A8EE20);
  sub_267A00F7C(&qword_2801E0290, type metadata accessor for Sirikit.PaymentOrganization.Create, &protocol conformance descriptor for Sirikit.PaymentOrganization.Create);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v5, v6, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  OUTLINED_FUNCTION_12();
  sub_267A41954();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v7, v8, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_12();
  sub_267A41964();
  v9 = OUTLINED_FUNCTION_96();
  sub_2676F8798(v9, v10, v11);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679FAF34()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB170()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB3AC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.GetLocation.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB5E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FB824()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.PronounceName.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FBA60()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Read.userEntities.getter();
  *v0 = result;
  return result;
}

void DynamicTask<A>.init(reference:select:userEntities:)()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4C08 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB70, &qword_267A89EC8);
  OUTLINED_FUNCTION_175(v5, qword_2801DF7A0);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.AudiobookAuthor.Request(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8D5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E00B8, &qword_267A8E2C0);
  sub_267A00F7C(&qword_2801E00C0, type metadata accessor for Sirikit.AudiobookAuthor.Request, &protocol conformance descriptor for Sirikit.AudiobookAuthor.Request);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4C50 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBB8, &qword_267A89F10);
  OUTLINED_FUNCTION_175(v5, qword_2801DF878);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.ContactAgent.Request(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0148, &qword_267A8E650);
  sub_267A00F7C(&qword_2801E0150, type metadata accessor for Sirikit.ContactAgent.Request, &protocol conformance descriptor for Sirikit.ContactAgent.Request);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.ContactAgent);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4C90 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBF8, &qword_267A89F50);
  OUTLINED_FUNCTION_175(v5, qword_2801DF938);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.ContactGroup.Request(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8DA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E01C8, &qword_267A8E960);
  sub_267A00F7C(&qword_2801E01D0, type metadata accessor for Sirikit.ContactGroup.Request, &protocol conformance descriptor for Sirikit.ContactGroup.Request);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.ContactGroup);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4CD0 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC38, &qword_267A89F90);
  OUTLINED_FUNCTION_175(v5, qword_2801DF9F8);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.MusicArtist.Request(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8DC40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0248, &qword_267A8EC70);
  sub_267A00F7C(&qword_2801E0250, type metadata accessor for Sirikit.MusicArtist.Request, &protocol conformance descriptor for Sirikit.MusicArtist.Request);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.MusicArtist);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4D10 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC78, &qword_267A89FD0);
  OUTLINED_FUNCTION_175(v5, qword_2801DFAB8);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.PaymentOrganization.Request(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E02C8, &qword_267A8EF80);
  sub_267A00F7C(&qword_2801E02D0, type metadata accessor for Sirikit.PaymentOrganization.Request, &protocol conformance descriptor for Sirikit.PaymentOrganization.Request);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679FBD10()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Request.userEntities.getter();
  *v0 = result;
  return result;
}

void DynamicTask<A>.init(target:reference:userEntities:)()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4C10 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB78, &qword_267A89ED0);
  OUTLINED_FUNCTION_175(v5, qword_2801DF7B8);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8D5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E00C8, &qword_267A8E340);
  sub_267A00F7C(&qword_2801E00D0, type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity, &protocol conformance descriptor for Sirikit.AudiobookAuthor.SetIdentity);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFB0, &qword_267A8D5A8);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4C20 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFB88, &qword_267A89EE0);
  OUTLINED_FUNCTION_175(v5, qword_2801DF7E8);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.AudiobookAuthor.Update(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8D5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E00E8, &qword_267A8E418);
  sub_267A00F7C(&qword_2801E00F0, type metadata accessor for Sirikit.AudiobookAuthor.Update, &protocol conformance descriptor for Sirikit.AudiobookAuthor.Update);
  OUTLINED_FUNCTION_1_15();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.AudiobookAuthor);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFC8, &qword_267A8D8D8);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4C60 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFBC8, &qword_267A89F20);
  OUTLINED_FUNCTION_175(v5, qword_2801DF8A8);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.ContactAgent.Update(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0168, &qword_267A8E728);
  sub_267A00F7C(&qword_2801E0170, type metadata accessor for Sirikit.ContactAgent.Update, &protocol conformance descriptor for Sirikit.ContactAgent.Update);
  OUTLINED_FUNCTION_5_15();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.ContactAgent);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFE0, &qword_267A8DA78);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4CA0 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC08, &qword_267A89F60);
  OUTLINED_FUNCTION_175(v5, qword_2801DF968);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.ContactGroup.Update(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8DA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E01E8, &qword_267A8EA38);
  sub_267A00F7C(&qword_2801E01F0, type metadata accessor for Sirikit.ContactGroup.Update, &protocol conformance descriptor for Sirikit.ContactGroup.Update);
  OUTLINED_FUNCTION_4_15();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.ContactGroup);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFFF8, &qword_267A8DC40);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4CE0 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC48, &qword_267A89FA0);
  OUTLINED_FUNCTION_175(v5, qword_2801DFA28);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.MusicArtist.Update(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8DC40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0268, &qword_267A8ED48);
  sub_267A00F7C(&qword_2801E0270, type metadata accessor for Sirikit.MusicArtist.Update, &protocol conformance descriptor for Sirikit.MusicArtist.Update);
  OUTLINED_FUNCTION_3_8();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.MusicArtist);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v0, v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0010, &qword_267A8DDE0);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4D20 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DFC88, &qword_267A89FE0);
  OUTLINED_FUNCTION_175(v5, qword_2801DFAE8);
  v6 = OUTLINED_FUNCTION_133();
  v7 = type metadata accessor for Sirikit.PaymentOrganization.Update(v6);
  OUTLINED_FUNCTION_35_9(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A8DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E02E8, &qword_267A8F058);
  sub_267A00F7C(&qword_2801E02F0, type metadata accessor for Sirikit.PaymentOrganization.Update, &protocol conformance descriptor for Sirikit.PaymentOrganization.Update);
  OUTLINED_FUNCTION_2_5();
  sub_267A00F7C(v11, v12, &protocol conformance descriptor for Sirikit.PaymentOrganization);
  v13 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_12();
  v14 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_372(v14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_267A00F7C(v15, v16, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_57();
  sub_267A41964();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4D80 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0AC8, &qword_267A90400);
  OUTLINED_FUNCTION_175(v7, qword_2801E0950);
  type metadata accessor for Uso.NoEntity.Reply(0);
  OUTLINED_FUNCTION_127();
  sub_267A41944();
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A91CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0D50, &qword_267A92250);
  sub_267A31014(&qword_2801E0D58, type metadata accessor for Uso.NoEntity.Reply, &protocol conformance descriptor for Uso.NoEntity.Reply);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v11, v12, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_20_7();
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_132();
  sub_2676F8AF4(v13, v14, v15, &qword_267A91CA0);
  OUTLINED_FUNCTION_20_7();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v16, v17, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_70_5();
  OUTLINED_FUNCTION_72_5(v1);
  OUTLINED_FUNCTION_72_5(v0);
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_58(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0C98, &qword_267A91CA0);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_118();
  if (qword_2801D4DD8 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0B20, &qword_267A90458);
  OUTLINED_FUNCTION_175(v7, qword_2801E0A58);
  type metadata accessor for Uso.NoEntity.Update(0);
  OUTLINED_FUNCTION_127();
  sub_267A41944();
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_96();
  sub_2676F8AF4(v8, v9, v10, &qword_267A91CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0E00, &qword_267A92870);
  sub_267A31014(&qword_2801E0E08, type metadata accessor for Uso.NoEntity.Update, &protocol conformance descriptor for Uso.NoEntity.Update);
  OUTLINED_FUNCTION_0_12();
  sub_267A31014(v11, v12, &protocol conformance descriptor for Uso.NoEntity);
  OUTLINED_FUNCTION_20_7();
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_132();
  sub_2676F8AF4(v13, v14, v15, &qword_267A91CA0);
  OUTLINED_FUNCTION_20_7();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_16();
  sub_267A31014(v16, v17, &protocol conformance descriptor for Common.UserEntity);
  OUTLINED_FUNCTION_70_5();
  OUTLINED_FUNCTION_72_5(v1);
  OUTLINED_FUNCTION_72_5(v0);
  OUTLINED_FUNCTION_311();
}

uint64_t sub_2679FBFC0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.SetIdentity.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC1FC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC4AC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.AudiobookAuthor.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC6E8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FC924()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FCB60()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FCD9C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FCFD8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD288()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD4C4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD774()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactAgent.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FD9B0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FDBEC()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FDE28()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE064()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE2A0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE550()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FE78C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FEA3C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.ContactGroup.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FEC78()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FEEB4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF0F0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF32C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF568()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FF818()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FFA54()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FFD04()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.MusicArtist.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679FFF40()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.CheckExistence.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A0017C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Create.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A003B8()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Delete.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A005F4()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00830()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Read.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00AE0()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Request.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00D1C()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Summarise.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267A00F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267A01014()
{
  OUTLINED_FUNCTION_239();
  result = Sirikit.PaymentOrganization.Update.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_2676F8AF4(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return sub_267A41A14();
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 15) = a8;
  *(v8 - 14) = a7;
  *(v8 - 13) = a6;
  *(v8 - 12) = a5;
  *(v8 - 11) = a4;
  *(v8 - 22) = a2;
  *(v8 - 21) = a3;
  *(v8 - 23) = result;
  v9 = v8[3];
  *(v8 - 18) = v8[4];
  *(v8 - 17) = v9;
  *(v8 - 16) = v8[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1)
{

  return sub_267A41944();
}

uint64_t OUTLINED_FUNCTION_45_5()
{
  v4 = *(v2 - 144);
  v5 = *(v2 - 152);

  return sub_2676F8AF4(v4, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return sub_2676F8798(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return sub_2676F8798(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 136);
  v7 = *(v4 - 160);

  return sub_2676F8AF4(v6, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return sub_267A41A34();
}

uint64_t OUTLINED_FUNCTION_165_1()
{

  return sub_2676F8798(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_169_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 88);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_170_1(uint64_t a1)
{

  return sub_267A41A14();
}

uint64_t OUTLINED_FUNCTION_171_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 120);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_172_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 112);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_173_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 104);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t Sirikit.AudiobookAuthor.age.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);

  return sub_267A41984();
}

uint64_t Sirikit.AudiobookAuthor.$age.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);

  return sub_267A419A4();
}

uint64_t Sirikit.AudiobookAuthor.associatedDate.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F0D0);
}

uint64_t sub_267A01FC4()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$associatedDate.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E8, &qword_267A79920);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.associatedOrganization.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC50, &unk_267A79ED0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A78C60);
}

uint64_t sub_267A0225C()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$associatedOrganization.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC58, &qword_267A79EE0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC50, &unk_267A79ED0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.attributes.getter()
{
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  sub_267A41984();
  return v1;
}

uint64_t Sirikit.AudiobookAuthor.attributes.setter()
{
  v0 = OUTLINED_FUNCTION_102_0();
  type metadata accessor for Sirikit.AudiobookAuthor(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  OUTLINED_FUNCTION_100_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return sub_267A41994();
}

uint64_t Sirikit.AudiobookAuthor.$attributes.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F8, &qword_267A79530);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.birthdate.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F0D0);
}

uint64_t sub_267A026F8()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$birthdate.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E8, &qword_267A79920);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.identifyingRelationship.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC70, &qword_267A79EF8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A79F00);
}

uint64_t sub_267A02990()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$identifyingRelationship.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC78, &qword_267A79F08);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC70, &qword_267A79EF8);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.location.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9D0, &unk_267A8F0E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A79BB0);
}

uint64_t sub_267A02C28()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$location.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9D8, &unk_267A8F0F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9D0, &unk_267A8F0E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.name.getter()
{
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849(v0);
  return v2;
}

uint64_t Sirikit.AudiobookAuthor.name.setter()
{
  v0 = OUTLINED_FUNCTION_99_0();
  type metadata accessor for Sirikit.AudiobookAuthor(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Sirikit.AudiobookAuthor.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.phoneticName.getter()
{
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849(v0);
  return v2;
}

uint64_t Sirikit.AudiobookAuthor.phoneticName.setter()
{
  v0 = OUTLINED_FUNCTION_99_0();
  type metadata accessor for Sirikit.AudiobookAuthor(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Sirikit.AudiobookAuthor.$phoneticName.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.phoneticStructuredName.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F100);
}

uint64_t sub_267A032A8()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$phoneticStructuredName.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC88, &unk_267A79F20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.relationships.getter()
{
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC90, &unk_267A8F110);
  sub_267A41984();
  return v1;
}

uint64_t Sirikit.AudiobookAuthor.relationships.setter()
{
  v0 = OUTLINED_FUNCTION_102_0();
  type metadata accessor for Sirikit.AudiobookAuthor(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC90, &unk_267A8F110);
  OUTLINED_FUNCTION_100_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return sub_267A41994();
}

uint64_t Sirikit.AudiobookAuthor.$relationships.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC98, &qword_267A79F30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC90, &unk_267A8F110);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.specifyingContactAddress.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A79550);
}

uint64_t sub_267A036FC()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$specifyingContactAddress.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.structuredName.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F100);
}

uint64_t sub_267A03948()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$structuredName.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC88, &unk_267A79F20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBC80, &unk_267A79F10);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F140);
}

uint64_t sub_267A03B94()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t sub_267A03DE0()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t sub_267A0402C()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t sub_267A04278()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1A0);
}

uint64_t sub_267A044C4()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F0C0);
}

uint64_t sub_267A04710()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t sub_267A0495C()
{
  OUTLINED_FUNCTION_41_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t Sirikit.AudiobookAuthor.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.$specifyingContactAddress.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A04E94()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactAgent.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t Sirikit.ContactAgent.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t Sirikit.ContactAgent.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t Sirikit.ContactAgent.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A05770()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactAgent.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A05974()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactAgent.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F0B8);
}

uint64_t Sirikit.ContactAgent.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0338, &unk_267A8F1F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t Sirikit.ContactAgent.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.$members.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9F8, &qword_267A8F200);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB9F0, &unk_267A79BD0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.name.getter()
{
  type metadata accessor for Sirikit.ContactGroup(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849(v0);
  return v2;
}

uint64_t Sirikit.ContactGroup.name.setter()
{
  v0 = OUTLINED_FUNCTION_99_0();
  type metadata accessor for Sirikit.ContactGroup(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Sirikit.ContactGroup.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.specifyingContactAddress.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A79550);
}

uint64_t Sirikit.ContactGroup.$specifyingContactAddress.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F140);
}

uint64_t Sirikit.ContactGroup.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t Sirikit.ContactGroup.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t Sirikit.ContactGroup.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t Sirikit.ContactGroup.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1A0);
}

uint64_t Sirikit.ContactGroup.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F210);
}

uint64_t Sirikit.ContactGroup.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0348, &qword_267A8F218);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A07238()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Sirikit.ContactGroup.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t Sirikit.ContactGroup.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.$attributes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);

  return sub_267A419A4();
}

uint64_t sub_267A0756C(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849(v1);
  return v3;
}

uint64_t sub_267A075F8()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t Sirikit.MusicArtist.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A077F8(uint64_t a1, void (*a2)(void))
{
  v3 = OUTLINED_FUNCTION_45_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_6(v7, v12);
  a2(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_24_4(v8);
  v9 = OUTLINED_FUNCTION_32_2();
  return sub_2676F8798(v9, v10, &unk_267A79550);
}

uint64_t Sirikit.MusicArtist.$specifyingContactAddress.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A07A58(uint64_t a1, void (*a2)(void))
{
  v3 = OUTLINED_FUNCTION_45_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_6(v7, v12);
  a2(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_24_4(v8);
  v9 = OUTLINED_FUNCTION_32_2();
  return sub_2676F8798(v9, v10, &unk_267A8F140);
}

uint64_t Sirikit.MusicArtist.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t Sirikit.MusicArtist.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t Sirikit.MusicArtist.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t Sirikit.MusicArtist.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A08390(uint64_t a1, void (*a2)(void))
{
  v3 = OUTLINED_FUNCTION_45_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_6(v7, v12);
  a2(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_24_4(v8);
  v9 = OUTLINED_FUNCTION_32_2();
  return sub_2676F8798(v9, v10, &unk_267A8F1A0);
}

uint64_t Sirikit.MusicArtist.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F0B0);
}

uint64_t Sirikit.MusicArtist.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0358, &qword_267A8F230);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t Sirikit.MusicArtist.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t _s16SiriMailOntology7SirikitO11MusicArtistV10attributesSayAA13CommonContactO0I9AttributeVGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  sub_267A41984();
  return v1;
}

uint64_t _s16SiriMailOntology7SirikitO11MusicArtistV10attributesSayAA13CommonContactO0I9AttributeVGvs_0(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  OUTLINED_FUNCTION_100_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, a1);
  return sub_267A41994();
}

uint64_t Sirikit.PaymentOrganization.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.$specifyingContactAddress.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423A0);
}

uint64_t Sirikit.PaymentOrganization.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F170);
}

uint64_t Sirikit.PaymentOrganization.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A423D0);
}

uint64_t Sirikit.PaymentOrganization.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F240);
}

uint64_t Sirikit.PaymentOrganization.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0368, &unk_267A8F248);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F1D0);
}

uint64_t Sirikit.PaymentOrganization.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A09D00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7);
  sub_2676F8AF4(a1, &v10 - v8, a2, a3);
  OUTLINED_FUNCTION_1848();
  sub_267A41994();
  return sub_2676F8798(a1, a2, a3);
}

uint64_t sub_267A09E0C(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_1848();
  sub_267A41984();
  return v2;
}

uint64_t sub_267A09EB0()
{
  v0 = OUTLINED_FUNCTION_102_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_100_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_267A41994();
}

uint64_t Sirikit.AudiobookAuthor.CheckExistence.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.CheckIdentity.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.geographicArea.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB970, &unk_267A79B20);

  return sub_267A41984();
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.$geographicArea.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB970, &unk_267A79B20);

  return sub_267A419A4();
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F0C0);
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.$reference.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Create.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Delete.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Delete(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);

  return sub_267A41984();
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.$reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);

  return sub_267A419A4();
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.GetLocation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.PronounceName.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.PronounceName(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Read.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Read(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Request.select.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F0C0);
}

uint64_t Sirikit.AudiobookAuthor.Request.$select.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Request.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.SetIdentity.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F0C0);
}

uint64_t Sirikit.AudiobookAuthor.SetIdentity.$reference.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A0B97C(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  sub_267A41984();
  return v2;
}

uint64_t sub_267A0B9F0()
{
  v0 = OUTLINED_FUNCTION_102_0();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_100_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_267A41994();
}

uint64_t Sirikit.AudiobookAuthor.SetIdentity.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Summarise.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Summarise(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Update.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.AudiobookAuthor.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &unk_267A8F0C0);
}

uint64_t Sirikit.AudiobookAuthor.Update.$reference.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.AudiobookAuthor.Update.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.CheckExistence.reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);

  return sub_267A41984();
}

uint64_t Sirikit.ContactAgent.CheckExistence.$reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);

  return sub_267A419A4();
}

uint64_t Sirikit.ContactAgent.CheckExistence.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.CheckExistence(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Create.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Delete.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Delete(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Read.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Read(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Request.select.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactAgent.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F0B8);
}

uint64_t Sirikit.ContactAgent.Request.$select.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0338, &unk_267A8F1F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Request.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Summarise.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Summarise(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Update.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactAgent.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F0B8);
}

uint64_t Sirikit.ContactAgent.Update.$reference.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0338, &unk_267A8F1F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0330, &unk_267A8F1E0);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactAgent.Update.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactAgent.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.CheckExistence.reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);

  return sub_267A41984();
}

uint64_t Sirikit.ContactGroup.CheckExistence.$reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);

  return sub_267A419A4();
}

uint64_t Sirikit.ContactGroup.CheckExistence.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.CheckExistence(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Create.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Delete.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Delete(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Read.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Read(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Request.select.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F210);
}

uint64_t Sirikit.ContactGroup.Request.$select.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0348, &qword_267A8F218);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Request.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Summarise.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Summarise(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Update.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.ContactGroup.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F210);
}

uint64_t Sirikit.ContactGroup.Update.$reference.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0348, &qword_267A8F218);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0340, &qword_267A8F208);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.ContactGroup.Update.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.ContactGroup.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.CheckExistence.reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);

  return sub_267A41984();
}

uint64_t Sirikit.MusicArtist.CheckExistence.$reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);

  return sub_267A419A4();
}

uint64_t Sirikit.MusicArtist.CheckExistence.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.CheckExistence(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Create.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Delete.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Delete(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Read.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Read(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Request.select.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.MusicArtist.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F0B0);
}

uint64_t Sirikit.MusicArtist.Request.$select.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0358, &qword_267A8F230);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Request.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Summarise.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Summarise(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Update.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.MusicArtist.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F0B0);
}

uint64_t Sirikit.MusicArtist.Update.$reference.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0358, &qword_267A8F230);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0350, &unk_267A8F220);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.MusicArtist.Update.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.MusicArtist.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.CheckExistence.reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);

  return sub_267A41984();
}

uint64_t Sirikit.PaymentOrganization.CheckExistence.$reference.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);

  return sub_267A419A4();
}

uint64_t Sirikit.PaymentOrganization.CheckExistence.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.CheckExistence(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.Create.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.Delete.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Delete(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.Read.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Read(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.Request.select.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.PaymentOrganization.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F240);
}

uint64_t Sirikit.PaymentOrganization.Request.$select.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0368, &unk_267A8F248);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.Request.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Request(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t Sirikit.PaymentOrganization.Summarise.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Summarise(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A111F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7);
  (*(v6 + 16))(&v12 - v8, a1, v4);
  OUTLINED_FUNCTION_1848();
  sub_267A419B4();
  v9 = OUTLINED_FUNCTION_45_1();
  return v10(v9);
}

uint64_t Sirikit.PaymentOrganization.Update.reference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0(v4, v8);
  type metadata accessor for Sirikit.PaymentOrganization.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v5 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v5, v6, &qword_267A8F240);
}

uint64_t Sirikit.PaymentOrganization.Update.$reference.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0368, &unk_267A8F248);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0360, &qword_267A8F238);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_267A11604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = OUTLINED_FUNCTION_83_0();
  v12(v11);
  return a7(v10);
}

uint64_t Sirikit.PaymentOrganization.Update.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for Sirikit.PaymentOrganization.Update(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_21_4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t (*Sirikit.AudiobookAuthor.CheckExistence.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.CheckExistence.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.CheckExistence.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.CheckExistence.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.CheckExistence(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.CheckIdentity.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.CheckIdentity.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.CheckIdentity.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.CheckIdentity.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.CheckIdentity(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.CheckLocation.geographicArea.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB970, &unk_267A79B20);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.$geographicArea.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB978, &qword_267A79B30);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB970, &unk_267A79B20);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.CheckLocation.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.CheckLocation.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.CheckLocation(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Create.target.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Create.$target.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Create.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Create(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Create.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.Create(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Delete.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Delete.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Delete.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Delete(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Delete.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.Delete(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.GetLocation.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.GetLocation.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.GetLocation(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.GetLocation.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  Location = type metadata accessor for Sirikit.AudiobookAuthor.GetLocation(v11);
  OUTLINED_FUNCTION_33_1(Location);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.NoVerb.$entity.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.NoVerb(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.NoVerb(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.PronounceName.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.PronounceName.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.PronounceName.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.PronounceName(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.PronounceName.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.PronounceName(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Read.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Read.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Read.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Read(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Read.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.Read(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Request.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Request.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Request.select.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Request(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Request.$select.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.Request(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.Request.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.Request(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.Request.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.Request(v11);
  OUTLINED_FUNCTION_35_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.SetIdentity.target.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.SetIdentity.$target.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*Sirikit.AudiobookAuthor.SetIdentity.reference.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t Sirikit.AudiobookAuthor.SetIdentity.$reference.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0328, &unk_267A8F1C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for Sirikit.AudiobookAuthor.SetIdentity(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801E0320, &unk_267A8F1B0);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}
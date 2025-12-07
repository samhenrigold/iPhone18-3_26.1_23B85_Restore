id *Contact.INPersonExpansion.first.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(v1 + 32);
      }

      __break(1u);
    }

    JUMPOUT(0x1E12B2C10);
  }

  return v1;
}

uint64_t Contact.INPersonExpansion.all.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1;
  if ((v2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DD643B80;
    *(v3 + 32) = v1;
  }

  sub_1DD408B28(v1, v2);
  return v3;
}

uint64_t sub_1DD407F1C(uint64_t a1, unint64_t a2)
{
  sub_1DD3B7F10();
  if ((sub_1DD6406D8() & 1) == 0)
  {
    return sub_1DD5E77D4(a1, a2);
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;

  for (i = 15; v5 != i >> 14; i = sub_1DD63FF18())
  {
    if (sub_1DD640038() == 124 && v7 == 0xE100000000000000)
    {

      break;
    }

    v9 = sub_1DD640CD8();

    if (v9)
    {
      break;
    }
  }

  v11 = sub_1DD640058();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1E12B2190](v11, v13, v15, v17);
  v20 = v19;

  v10 = sub_1DD5E77D4(v18, v20);

  return v10;
}

void *sub_1DD4080B4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  if (qword_1EE1630C0 != -1)
  {
    swift_once();
  }

  v5 = off_1EE1630C8;
  if (*(off_1EE1630C8 + 2) && (v6 = sub_1DD3978DC(), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + 8 * v6);
    v9 = v8;
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1EE16F068);

    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640368();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DD39565C(a1, a2, &v16);
      _os_log_impl(&dword_1DD38D000, v11, v12, "no predefined INPersonHandleLabel found for '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    return sub_1DD63FDA8();
  }

  return v8;
}

void *sub_1DD40828C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4D0, &unk_1DD646900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD646840;
  v1 = sub_1DD63FDD8();
  v2 = MEMORY[0x1E696E5D0];
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  v4 = *v2;
  *(inited + 48) = *v2;
  v5 = sub_1DD63FDD8();
  v6 = MEMORY[0x1E696E608];
  *(inited + 56) = v5;
  *(inited + 64) = v7;
  v8 = *v6;
  *(inited + 72) = *v6;
  v9 = sub_1DD63FDD8();
  v10 = MEMORY[0x1E696E5F0];
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  v12 = *v10;
  *(inited + 96) = *v10;
  v13 = sub_1DD63FDD8();
  v14 = MEMORY[0x1E696E618];
  *(inited + 104) = v13;
  *(inited + 112) = v15;
  v16 = *v14;
  *(inited + 120) = *v14;
  v17 = sub_1DD63FDD8();
  v18 = MEMORY[0x1E696E5E8];
  *(inited + 128) = v17;
  *(inited + 136) = v19;
  v20 = *v18;
  *(inited + 144) = *v18;
  v21 = sub_1DD63FDD8();
  v22 = MEMORY[0x1E696E5E0];
  *(inited + 152) = v21;
  *(inited + 160) = v23;
  v24 = *v22;
  *(inited + 168) = *v22;
  v25 = sub_1DD63FDD8();
  v26 = MEMORY[0x1E696E5D8];
  *(inited + 176) = v25;
  *(inited + 184) = v27;
  v28 = *v26;
  *(inited + 192) = *v26;
  v29 = sub_1DD63FDD8();
  v30 = MEMORY[0x1E696E610];
  *(inited + 200) = v29;
  *(inited + 208) = v31;
  v32 = *v30;
  *(inited + 216) = *v30;
  v33 = sub_1DD63FDD8();
  v34 = MEMORY[0x1E696E5F8];
  *(inited + 224) = v33;
  *(inited + 232) = v35;
  v36 = *v34;
  *(inited + 240) = *v34;
  *(inited + 248) = sub_1DD63FDD8();
  *(inited + 256) = v37;
  v38 = *MEMORY[0x1E696E600];
  *(inited + 264) = *MEMORY[0x1E696E600];
  *(inited + 272) = 1701670760;
  v60 = v38;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = v4;
  *(inited + 296) = 1802661751;
  *(inited + 304) = 0xE400000000000000;
  *(inited + 312) = v8;
  *(inited + 320) = 0x726568746FLL;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = v12;
  *(inited + 344) = 0x656E6F687069;
  *(inited + 352) = 0xE600000000000000;
  *(inited + 360) = v16;
  *(inited + 368) = 0x656C69626F6DLL;
  *(inited + 376) = 0xE600000000000000;
  *(inited + 384) = v20;
  *(inited + 392) = 1852399981;
  *(inited + 400) = 0xE400000000000000;
  *(inited + 408) = v24;
  *(inited + 416) = 0x786166656D6F68;
  *(inited + 424) = 0xE700000000000000;
  *(inited + 432) = v28;
  *(inited + 440) = 0x7861666B726F77;
  *(inited + 448) = 0xE700000000000000;
  *(inited + 456) = v32;
  *(inited + 464) = 0x7265676170;
  *(inited + 472) = 0xE500000000000000;
  *(inited + 480) = v36;
  *(inited + 488) = 0x6C6F6F686373;
  *(inited + 496) = 0xE600000000000000;
  *(inited + 504) = v38;
  type metadata accessor for INPersonHandleLabel(0);
  v59 = v4;
  v39 = v8;
  v40 = v12;
  v41 = v16;
  v42 = v20;
  v43 = v24;
  v44 = v28;
  v45 = v32;
  v46 = v36;
  v47 = v60;
  v48 = v59;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v57 = v47;
  result = sub_1DD63FC88();
  off_1EE1630C8 = result;
  return result;
}

void sub_1DD4085DC(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 3)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16F068);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_1DD38D000, v5, v6, "unhandled INPersonHandleType: %ld", v7, 0xCu);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

id sub_1DD4086E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DD63FDA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_1DD40874C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_1DD63CD18();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1DD63CCA8();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1DD63FDA8();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_1DD63FDA8();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_1DD63FDA8();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_1DD4088D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = sub_1DD63FDA8();

  v14 = [v7 initWithValue:v13 type:a3 label:a4 emergencyType:a5 faceTimeType:a6 suggested:a7 & 1];

  return v14;
}

uint64_t sub_1DD408964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD4089D4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1DD4089F4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_1DD408A18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();

  [a3 setSourceAppBundleIdentifier_];
}

uint64_t sub_1DD408A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD408AE4()
{
  result = qword_1EE166068[0];
  if (!qword_1EE166068[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EE166068);
  }

  return result;
}

id sub_1DD408B28(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DD408B54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_1DD408B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1DD408C04()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_9_11();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD408C90()
{
  OUTLINED_FUNCTION_99_0();
  switch(v0)
  {
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_20_6();
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD408D98(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD408DD8(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD408E84(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD408EF8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD408F88(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409048(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_3();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4090B8(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_3();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409128(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409198(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40924C()
{
  OUTLINED_FUNCTION_37_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_20_6();
      break;
    case 2:
      OUTLINED_FUNCTION_68_1();
      break;
    case 3:
      OUTLINED_FUNCTION_35_3();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4092CC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_89_0();
      break;
    case 4:
      OUTLINED_FUNCTION_35_3();
      break;
    default:
      OUTLINED_FUNCTION_20_6();
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4093AC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_44_2();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409464(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_31_5();
      break;
    case 4:
      OUTLINED_FUNCTION_89_0();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409518(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_5();
  sub_1DD63FD28();
}

uint64_t sub_1DD40959C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_44_2();
  switch(v2)
  {
    case 2:
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_20_6();
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40966C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_31_5();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409720(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40979C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD538ED0(a2);
  OUTLINED_FUNCTION_29_4(v2, v3);
}

uint64_t sub_1DD4097DC(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409844()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4098DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409960(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409A40()
{
  OUTLINED_FUNCTION_99_0();
  sub_1DD63FD28();
}

uint64_t sub_1DD409B0C(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409BC4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409C44(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409D18()
{
  OUTLINED_FUNCTION_37_6();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_20_6();
      break;
    case 3:
      OUTLINED_FUNCTION_68_1();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409DC4()
{
  OUTLINED_FUNCTION_26_1();
  sub_1DD63FD28();
}

uint64_t sub_1DD409E3C()
{
  OUTLINED_FUNCTION_99_0();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_20_6();
      OUTLINED_FUNCTION_78_1();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409F94(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A010(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A09C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_45_2();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A168(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A1D0(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A2CC(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A324(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A384(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A420(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_3();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A498(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 8:
      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A5D0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_20_6();
      break;
    case 5:
      OUTLINED_FUNCTION_68_1();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A6B8()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_2();
      break;
    case 3:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A748()
{
  OUTLINED_FUNCTION_99_0();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_45_2();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A810()
{
  OUTLINED_FUNCTION_49_3();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_28_3();
      break;
    case 3:
      OUTLINED_FUNCTION_76_1();
      break;
    case 7:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A8E8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A9D0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AA48()
{
  OUTLINED_FUNCTION_96();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_94();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AB50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_28_3();
      break;
    case 3:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40ABF4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AC64(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40ACBC()
{
  OUTLINED_FUNCTION_49_3();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_28_3();
      break;
    case 4:
      OUTLINED_FUNCTION_76_1();
      break;
    case 8:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AD94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_94();
  switch(v2)
  {
    case 1:
    case 7:
      OUTLINED_FUNCTION_96();
      break;
    case 3:
      OUTLINED_FUNCTION_94();
      break;
    case 4:
      OUTLINED_FUNCTION_96();
      break;
    case 5:
      OUTLINED_FUNCTION_94();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_29_4(v3, v4);
}

uint64_t sub_1DD40AEF0()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_2();
      break;
    case 2:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AF94(uint64_t a1, char a2)
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40AFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_29_4(v3, v4);
}

uint64_t Contact.displayName.getter()
{
  sub_1DD63CD18();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  Contact.nameComponents.getter(v1);
  v2 = sub_1DD63CCF8();
  v3 = OUTLINED_FUNCTION_14_9();
  v4(v3);
  return v2;
}

void sub_1DD40B108()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32_6();
  *(v5 + 16) = 2;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *(v5 + 216) = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for Contact(0);
  v10 = v9[19];
  v49 = sub_1DD63CBB8();
  v51 = v10;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  *(v5 + v9[20]) = v8;
  *(v5 + v9[21]) = 0;
  v15 = (v5 + v9[22]);
  *v15 = 0;
  v15[1] = 0;
  *(v5 + v9[23]) = 2;
  v16 = [v3 identifier];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *v5 = v8;
  *(v5 + 8) = v1;
  v17 = [v3 namePrefix];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 24) = v8;
  *(v5 + 32) = v1;
  v18 = [v3 givenName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 40) = v8;
  *(v5 + 48) = v1;
  v19 = [v3 middleName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 56) = v8;
  *(v5 + 64) = v1;
  v20 = [v3 familyName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 72) = v8;
  *(v5 + 80) = v1;
  v21 = [v3 previousFamilyName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 88) = v8;
  *(v5 + 96) = v1;
  v22 = [v3 nameSuffix];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 104) = v8;
  *(v5 + 112) = v1;
  v23 = [v3 nickname];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 120) = v8;
  *(v5 + 128) = v1;
  v24 = [v3 organizationName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 136) = v8;
  *(v5 + 144) = v1;
  v25 = sub_1DD415424(v3, &selRef_pronunciationGivenName);
  if (!v26 || (sub_1DD5E77D4(v25, v26), OUTLINED_FUNCTION_48_3(), , !v8))
  {
    v27 = [v3 phoneticGivenName];
    sub_1DD63FDD8();
    OUTLINED_FUNCTION_48_3();
  }

  *(v5 + 152) = v24;
  *(v5 + 160) = v8;
  v28 = sub_1DD415424(v3, &selRef_pronunciationFamilyName);
  if (!v29 || (v30 = v29, sub_1DD5E77D4(v28, v29), OUTLINED_FUNCTION_48_3(), , !v8))
  {
    v30 = [v3 phoneticFamilyName];
    sub_1DD63FDD8();
    OUTLINED_FUNCTION_48_3();
  }

  *(v5 + 184) = v24;
  *(v5 + 192) = v8;
  v31 = [v3 phoneticMiddleName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 168) = v8;
  *(v5 + 176) = v30;
  v32 = [v3 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
  v33 = sub_1DD640118();

  sub_1DD40F188(v33, 2, sub_1DD4149DC);
  v35 = v34;

  sub_1DD607854(v35);
  v36 = [v3 emailAddresses];
  v37 = sub_1DD640118();

  v38 = 1;
  sub_1DD40F188(v37, 1, sub_1DD4147B4);
  v40 = v39;

  sub_1DD607854(v40);
  v41 = [v3 birthday];
  if (v41)
  {
    v42 = v41;
    sub_1DD63CA18();

    v38 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0, v38, 1, v50);
  sub_1DD4155A8(v0, v5 + v51);
  v43 = sub_1DD415424(v3, &selRef_phonemeData);
  v45 = v44;

  if (v45)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  v47 = 0xE000000000000000;
  if (v45)
  {
    v47 = v45;
  }

  v48 = (v5 + v9[24]);
  *v48 = v46;
  v48[1] = v47;

  *v15 = 0;
  v15[1] = 0;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD40B5BC()
{
  OUTLINED_FUNCTION_14_1();
  v0 = sub_1DD3B7F10();
  OUTLINED_FUNCTION_69(v0, MEMORY[0x1E69E6158], v1, v0, v2, v3, v4, v5, 64);
  if (sub_1DD6406D8())
  {
    OUTLINED_FUNCTION_14_9();
    v6 = sub_1DD63FDA8();
    v7 = OUTLINED_FUNCTION_34_4();
    v9 = v8(v7, v6);

    sub_1DD63FDD8();
  }

  else
  {
    sub_1DD3EB444();

    OUTLINED_FUNCTION_14_9();
    v10 = sub_1DD40B8E0();
    sub_1DD415480(v10);
  }

  return OUTLINED_FUNCTION_15_0();
}

void ContactHandle.init(id:type:label:value:isSuggested:)()
{
  OUTLINED_FUNCTION_101_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v31 = v11;
  v13 = v12;
  v14 = *v0;
  if (v2)
  {
    v15 = v1;
  }

  else
  {
    v15 = 0;
  }

  if (v2)
  {
    v16 = v2;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (*v0)
  {
    v30 = v3;
    if (v14 == 1)
    {

      OUTLINED_FUNCTION_25_3();
      v17 = sub_1DD63FDA8();

      v18 = OUTLINED_FUNCTION_34_4();
      v20 = v19(v18, v17);

      v21 = sub_1DD63FDD8();
      v23 = v22;
    }

    else
    {
      v21 = sub_1DD3EB444();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_25_3();
      v25 = sub_1DD40B8E0();
      sub_1DD415480(v25);
      OUTLINED_FUNCTION_77_0();

      if (v4)
      {
        v23 = v4;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }
    }

    LOBYTE(v4) = v30;
  }

  else
  {

    OUTLINED_FUNCTION_25_3();
    v21 = sub_1DD40B5BC();
    v23 = v24;
  }

  v26 = 0xE000000000000000;
  if (v6)
  {
    v27 = v6;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  if (v6)
  {
    v28 = v8;
  }

  else
  {
    v28 = 0;
  }

  if (v10)
  {
    v26 = v10;
  }

  v29 = v31;
  if (!v10)
  {
    v29 = 0;
  }

  *v13 = v29;
  *(v13 + 8) = v26;
  *(v13 + 16) = v14;
  *(v13 + 24) = v28;
  *(v13 + 32) = v27;
  *(v13 + 40) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v21;
  *(v13 + 64) = v23;
  *(v13 + 72) = v4 & 1;
  *(v13 + 73) = 2;
  OUTLINED_FUNCTION_100_0();
}

void sub_1DD40B80C(_BYTE *a1)
{
  if (*a1)
  {
    v2 = *a1 == *(v1 + 16);
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_47_3();
    if (sub_1DD412154(v3))
    {
      OUTLINED_FUNCTION_47_3();
      sub_1DD412278();
    }
  }
}

id sub_1DD40B8E0()
{
  OUTLINED_FUNCTION_14_1();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_14_9();
  v1 = sub_1DD63FDA8();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t static ContactSource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t Contact.id.setter()
{
  OUTLINED_FUNCTION_14_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Contact.namePrefix.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Contact.givenName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Contact.middleName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Contact.familyName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Contact.previousFamilyName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Contact.nameSuffix.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Contact.nickname.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Contact.organizationName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Contact.phoneticGivenName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t Contact.phoneticMiddleName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t Contact.phoneticFamilyName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t Contact.phoneticOrganizationName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  return result;
}

uint64_t Contact.contactRelations.setter(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

uint64_t Contact.birthday.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Contact(0) + 76);

  return sub_1DD415538(v3, a1);
}

uint64_t Contact.birthday.setter()
{
  v2 = OUTLINED_FUNCTION_43();
  v3 = v1 + *(type metadata accessor for Contact(v2) + 76);

  return sub_1DD4155A8(v0, v3);
}

uint64_t Contact.birthday.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for Contact(v0);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.handles.getter()
{
  type metadata accessor for Contact(0);
}

uint64_t Contact.handles.setter()
{
  v2 = OUTLINED_FUNCTION_43();
  v3 = *(type metadata accessor for Contact(v2) + 80);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Contact.handles.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for Contact(v0);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.isSuggested.setter(char a1)
{
  result = type metadata accessor for Contact(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t Contact.isSuggested.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for Contact(v0);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.source.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Contact(0) + 88));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t Contact.source.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Contact(0) + 88));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Contact.source.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for Contact(v0);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.description.getter()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0x28746361746E6F43, 0xE800000000000000);
  OUTLINED_FUNCTION_1_25();
  if (v2)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260]();
    OUTLINED_FUNCTION_17_11();
    v3 = v44;
    v4 = v45;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v3, v4);

  if (*(v0 + 16))
  {
    v5 = 0x7572743D654D7369;
  }

  else
  {
    v5 = 0;
  }

  if (*(v0 + 16))
  {
    v6 = 0xEA00000000002065;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v5, v6);

  v7 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_51_3();

  MEMORY[0x1E12B2260](0x3D656372756F73, 0xE700000000000000);
  v8 = (v0 + *(v7 + 88));
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v10 = 0x80000001DD66B290;
    v9 = 0xD00000000000001BLL;
  }

  MEMORY[0x1E12B2260](v9, v10);

  MEMORY[0x1E12B2260](32, 0xE100000000000000);
  OUTLINED_FUNCTION_1_25();
  if (v13)
  {
    MEMORY[0x1E12B2260](v11, v12);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260]();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v17)
  {
    MEMORY[0x1E12B2260](v15, v16);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v20)
  {
    MEMORY[0x1E12B2260](v18, v19);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v21)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_83_1();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v24)
  {
    MEMORY[0x1E12B2260](v22, v23);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v25)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260]();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v26)
  {
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x1E12B2260](v27, v28);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v29)
  {
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x1E12B2260](v30, v31);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v32)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_83_1();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v33)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_83_1();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  OUTLINED_FUNCTION_1_25();
  if (v34)
  {
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x1E12B2260](v35, v36);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v37 = *(v0 + 216);
  if (*(v37 + 16))
  {
    OUTLINED_FUNCTION_26_1();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC50, &qword_1DD644060);
    v39 = MEMORY[0x1E12B2430](v37, v38);
    MEMORY[0x1E12B2260](v39);

    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  if (*(*(v1 + *(v7 + 80)) + 16))
  {
    v40 = MEMORY[0x1E12B2430]();
    MEMORY[0x1E12B2260](v40);

    OUTLINED_FUNCTION_17_11();
    v41 = 0x3D73656C646E6168;
    v42 = 0xE800000000000000;
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v41, v42);

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t Contact.LabeledValue.description.getter(uint64_t a1)
{
  v2 = v1;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000010, 0x80000001DD66B3B0);
  MEMORY[0x1E12B2260](*v2, v2[1]);
  MEMORY[0x1E12B2260](0x3D6C6562616C20, 0xE700000000000000);
  MEMORY[0x1E12B2260](v2[2], v2[3]);
  MEMORY[0x1E12B2260](0x3D65756C617620, 0xE700000000000000);
  sub_1DD640CC8();
  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t Contact.LabeledValue.init(id:label:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v16[0] = a6;
  v16[1] = a7;
  v16[2] = a8;
  v16[3] = a10;
  v16[4] = a11;
  v14 = type metadata accessor for Contact.LabeledValue(0, v16);
  return (*(*(a6 - 8) + 32))(&a9[*(v14 + 64)], a5, a6);
}

uint64_t static Contact.LabeledValue.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1 == *a2 && a1[1] == a2[1];
  if (v14 || (sub_1DD640CD8()) && (a1[2] == a2[2] ? (v15 = a1[3] == a2[3]) : (v15 = 0), v15 || (sub_1DD640CD8()))
  {
    v18[0] = a3;
    v18[1] = a4;
    v18[2] = a5;
    v18[3] = a6;
    v18[4] = a7;
    type metadata accessor for Contact.LabeledValue(0, v18);
    v16 = sub_1DD63FD98();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1DD40CC9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD40CDA4(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x65756C6176;
}

uint64_t sub_1DD40CE2C(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD3AA530(v3, *v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD40CE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD40CC9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD40CEF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD3B376C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD40CF2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DD40CF80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void Contact.LabeledValue.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = *(v4 + 32);
  v10 = *(v4 + 16);
  v11 = v5;
  v12 = *(v4 + 40);
  type metadata accessor for Contact.LabeledValue.CodingKeys(255, &v10);
  OUTLINED_FUNCTION_27_6();
  swift_getWitnessTable();
  v6 = sub_1DD640C88();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD640EF8();
  LOBYTE(v10) = 0;
  sub_1DD640C18();
  if (!v0)
  {
    LOBYTE(v10) = 1;
    sub_1DD640C18();
    LOBYTE(v10) = 2;
    sub_1DD640C68();
  }

  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_86();
}

uint64_t Contact.LabeledValue.hash(into:)()
{
  OUTLINED_FUNCTION_14_1();
  sub_1DD63FD28();
  sub_1DD63FD28();
  return sub_1DD63FCF8();
}

uint64_t Contact.LabeledValue.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  Contact.LabeledValue.hash(into:)();
  return sub_1DD640E78();
}

void Contact.LabeledValue.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v41 = v13;
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v44 = v15 - v14;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  type metadata accessor for Contact.LabeledValue.CodingKeys(255, &v48);
  OUTLINED_FUNCTION_27_6();
  swift_getWitnessTable();
  v46 = sub_1DD640BA8();
  OUTLINED_FUNCTION_0();
  v43 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v38 - v23;
  v45 = v10;
  v48 = v10;
  v49 = v8;
  v42 = v6;
  v50 = v6;
  v51 = v4;
  v52 = v2;
  v25 = type metadata accessor for Contact.LabeledValue(0, &v48);
  OUTLINED_FUNCTION_0();
  v39 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v38 - v28);
  v30 = OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_41_3(v30, v31);
  v47 = v24;
  sub_1DD640ED8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v53 = v29;
    v33 = v43;
    v32 = v44;
    v34 = v45;
    LOBYTE(v48) = 0;
    *v53 = OUTLINED_FUNCTION_102();
    v53[1] = v35;
    v38[1] = v35;
    LOBYTE(v48) = 1;
    v53[2] = OUTLINED_FUNCTION_102();
    v53[3] = v36;
    LOBYTE(v48) = 2;
    sub_1DD640B78();
    (*(v33 + 8))(v47, v46);
    (*(v40 + 32))(v53 + *(v25 + 64), v32, v34);
    v37 = v39;
    (*(v39 + 16))(v41, v53, v25);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v37 + 8))(v53, v25);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD40D5D0@<X0>(uint64_t *a1@<X8>)
{
  result = Contact.LabeledValue.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD40D618(uint64_t a1)
{
  sub_1DD640E28();
  Contact.LabeledValue.hash(into:)();
  return sub_1DD640E78();
}

uint64_t Contact.PostalAddress.street.setter()
{
  OUTLINED_FUNCTION_14_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Contact.PostalAddress.city.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Contact.PostalAddress.state.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Contact.PostalAddress.postalCode.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Contact.PostalAddress.country.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Contact.PostalAddress.isoCountryCode.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Contact.PostalAddress.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Contact.PostalAddress.subLocality.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t static Contact.PostalAddress.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_65_2(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v39 = v3[7];
  v40 = v3[6];
  v38 = v3[8];
  v37 = v3[9];
  v33 = v3[11];
  v34 = v3[10];
  v29 = v3[13];
  v30 = v3[12];
  v25 = v3[15];
  v26 = v3[14];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v35 = v2[9];
  v36 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v27 = v2[13];
  v28 = v2[12];
  v14 = v1 == *v2 && v3[1] == v2[1];
  v23 = v2[15];
  v24 = v2[14];
  if (!v14 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8 || v6 != v9)
  {
    OUTLINED_FUNCTION_11_0();
    if ((sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 != v10 || v7 != v11)
  {
    OUTLINED_FUNCTION_15_0();
    if ((sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  v17 = v40 == v12 && v39 == v13;
  if (!v17 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v18 = v38 == v36 && v37 == v35;
  if (!v18 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v19 = v34 == v32 && v33 == v31;
  if (!v19 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v20 = v30 == v28 && v29 == v27;
  if (!v20 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v26 == v24 && v25 == v23)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t sub_1DD40DC38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2037672291 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001DD66B440 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD40DECC(char a1)
{
  result = 0x746565727473;
  switch(a1)
  {
    case 1:
      result = 2037672291;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x6F436C6174736F70;
      break;
    case 4:
      result = 0x7972746E756F63;
      break;
    case 5:
      result = 0x746E756F436F7369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6C61636F4C627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD40DFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD40DC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD40DFEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD40DEC4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD40E014(uint64_t a1)
{
  v2 = sub_1DD415648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD40E050(uint64_t a1)
{
  v2 = sub_1DD415648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Contact.PostalAddress.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC500, &qword_1DD646920);
  OUTLINED_FUNCTION_0();
  v35 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21_5();
  v49 = v26[3];
  v50 = v26[2];
  v47 = v26[5];
  v48 = v26[4];
  v45 = v26[7];
  v46 = v26[6];
  v43 = v26[9];
  v44 = v26[8];
  v41 = v26[10];
  v42 = v26[11];
  v39 = v26[12];
  v40 = v26[13];
  v37 = v26[14];
  v38 = v26[15];
  OUTLINED_FUNCTION_41_3(v32, v32[3]);
  sub_1DD415648();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v27)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_80_0(v50, v49, &a16);
    a15 = 2;
    OUTLINED_FUNCTION_80_0(v48, v47, &a15);
    a14 = 3;
    OUTLINED_FUNCTION_80_0(v46, v45, &a14);
    a13 = 4;
    OUTLINED_FUNCTION_80_0(v44, v43, &a13);
    a12 = 5;
    OUTLINED_FUNCTION_80_0(v41, v42, &a12);
    a11 = 6;
    OUTLINED_FUNCTION_80_0(v39, v40, &a11);
    a10 = 7;
    OUTLINED_FUNCTION_80_0(v37, v38, &a10);
  }

  (*(v35 + 8))(v28, v33);
  OUTLINED_FUNCTION_86();
}

void Contact.PostalAddress.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC510, &qword_1DD646928);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66_1();
  v59 = v26;
  OUTLINED_FUNCTION_41_3(v26, v26[3]);
  sub_1DD415648();
  sub_1DD640ED8();
  if (v23)
  {
    OUTLINED_FUNCTION_7_13();
    __swift_destroy_boxed_opaque_existential_1(v26);
    v69 = 0;
    v70 = 0xE000000000000000;
    v71 = 0;
    v72 = 0xE000000000000000;
    v73 = 0;
    v74 = 0xE000000000000000;
    v75 = v60;
    v76 = v23;
    v77 = 0;
    v78 = v28;
    v79 = 0;
    v80 = v62;
    v81 = v66;
    v82 = v64;
    v83 = 0;
    v84 = 0xE000000000000000;
  }

  else
  {
    LOBYTE(v69) = 0;
    v55 = sub_1DD640B28();
    v56 = v31;
    v32 = OUTLINED_FUNCTION_16_8(1);
    v53 = v33;
    v54 = v32;
    v34 = OUTLINED_FUNCTION_16_8(2);
    v36 = v35;
    v52 = v34;
    v37 = OUTLINED_FUNCTION_16_8(3);
    v39 = v38;
    v61 = v37;
    v40 = OUTLINED_FUNCTION_16_8(4);
    v51 = v41;
    v57 = v40;
    v42 = OUTLINED_FUNCTION_16_8(5);
    v63 = v43;
    v58 = v42;
    v44 = OUTLINED_FUNCTION_16_8(6);
    v65 = v45;
    v67 = v44;
    v46 = v24;
    sub_1DD640B28();
    v47 = OUTLINED_FUNCTION_59_0();
    v49 = v48;
    v50(v47, v29);
    v68[0] = v55;
    v68[1] = v56;
    v68[2] = v54;
    v68[3] = v53;
    v68[4] = v52;
    v68[5] = v36;
    v68[6] = v61;
    v68[7] = v39;
    v68[8] = v57;
    v68[9] = v51;
    v68[10] = v58;
    v68[11] = v63;
    v68[12] = v67;
    v68[13] = v65;
    v68[14] = v46;
    v68[15] = v49;
    memcpy(v28, v68, 0x80uLL);
    sub_1DD4156CC(v68, &v69);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v69 = v55;
    v70 = v56;
    v71 = v54;
    v72 = v53;
    v73 = v52;
    v74 = v36;
    v75 = v61;
    v76 = v39;
    v77 = v57;
    v78 = v51;
    v79 = v58;
    v80 = v63;
    v81 = v67;
    v82 = v65;
    v83 = v46;
    v84 = v49;
  }

  sub_1DD41569C(&v69);
  OUTLINED_FUNCTION_86();
}

uint64_t static Contact.InstantMessageAddress.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_65_2(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_1DD640CD8(), result = 0, (v9 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_15_0();

      return sub_1DD640CD8();
    }
  }

  return result;
}

uint64_t sub_1DD40E7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD40E884(char a1)
{
  if (a1)
  {
    return 0x656D616E72657375;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_1DD40E8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD40E7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD40E8EC(uint64_t a1)
{
  v2 = sub_1DD415704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD40E928(uint64_t a1)
{
  v2 = sub_1DD415704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Contact.InstantMessageAddress.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC518, &qword_1DD646930);
  OUTLINED_FUNCTION_0();
  v29 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_41_3(v25, v25[3]);
  sub_1DD415704();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v22)
  {
    OUTLINED_FUNCTION_58();
    sub_1DD640C18();
  }

  (*(v29 + 8))(v23, v26);
  OUTLINED_FUNCTION_86();
}

void Contact.InstantMessageAddress.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC528, &qword_1DD646938);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_41_3(v25, v25[3]);
  sub_1DD415704();
  sub_1DD640ED8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v32 = sub_1DD640B28();
    v34 = v33;
    OUTLINED_FUNCTION_58();
    v35 = sub_1DD640B28();
    v37 = v36;
    v38 = v35;
    (*(v30 + 8))(v23, v28);
    *v27 = v32;
    v27[1] = v34;
    v27[2] = v38;
    v27[3] = v37;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_86();
}

void Contact.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0xE000000000000000;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0xE000000000000000;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 216) = MEMORY[0x1E69E7CC0];
  v3 = type metadata accessor for Contact(0);
  sub_1DD63CBB8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(a1 + *(v3 + 80)) = v2;
  OUTLINED_FUNCTION_55_3();
  *(a1 + v8) = 2;
  v9 = (a1 + *(v3 + 96));
  *v9 = 0;
  v9[1] = 0xE000000000000000;
}

uint64_t sub_1DD40ED6C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x108uLL);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0xE000000000000000;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0xE000000000000000;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0xE000000000000000;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(a2 + 216) = MEMORY[0x1E69E7CC0];
  v4 = type metadata accessor for Contact(0);
  sub_1DD63CBB8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = *(v4 + 80);
  *(a2 + v9) = v3;
  OUTLINED_FUNCTION_55_3();
  *(a2 + v10) = 2;
  v11 = (a2 + *(v4 + 96));
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = __dst[1];
  *a2 = __dst[0];
  *(a2 + 8) = v12;
  *(a2 + 16) = __dst[2];
  v13 = __dst[6];
  *(a2 + 24) = __dst[5];
  *(a2 + 32) = v13;
  v14 = __dst[7];
  v15 = __dst[8];
  *(a2 + 40) = __dst[7];
  *(a2 + 48) = v15;
  v16 = __dst[10];
  *(a2 + 56) = __dst[9];
  *(a2 + 64) = v16;
  v17 = __dst[12];
  *(a2 + 72) = __dst[11];
  *(a2 + 80) = v17;
  v18 = __dst[4];
  v19 = HIBYTE(__dst[4]) & 0xFLL;
  if ((__dst[4] & 0x2000000000000000) == 0)
  {
    v19 = __dst[3] & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v15) & 0xF;
    }

    if (!v20)
    {
      *(a2 + 40) = __dst[3];
      *(a2 + 48) = v18;
    }
  }

  v21 = __dst[14];
  *(a2 + 88) = __dst[13];
  *(a2 + 96) = v21;
  v22 = __dst[16];
  *(a2 + 104) = __dst[15];
  *(a2 + 112) = v22;
  v23 = __dst[18];
  *(a2 + 120) = __dst[17];
  *(a2 + 128) = v23;
  v24 = __dst[20];
  *(a2 + 136) = __dst[19];
  *(a2 + 144) = v24;
  v25 = __dst[26];
  if (__dst[26])
  {
    v36 = v9;
    v27 = __dst[24];
    v26 = __dst[25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DD643F90;

    sub_1DD4178F8(v27, v26, v25);
    sub_1DD40F034();
    *(a2 + v36) = v28;
  }

  else
  {
  }

  v29 = __dst[23];
  if (!__dst[23])
  {
    return sub_1DD3C9580(__dst);
  }

  v30 = __dst[22];

  sub_1DD3C9580(__dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC48, &qword_1DD664C10);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DD643F90;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0xE000000000000000;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0xE000000000000000;
  *(v31 + 48) = v30;
  *(v31 + 56) = v29;

  OUTLINED_FUNCTION_93_0();
  result = sub_1DD4178B4(v32, v33, v34);
  *(a2 + 216) = v31;
  return result;
}

void sub_1DD40F034()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v5 = *v4;
  v7 = *(v4 + 1);
  v6 = *(v4 + 2);
  v8 = *(v4 + 4);
  v9 = *(v4 + 5);
  if (!*v4)
  {

    OUTLINED_FUNCTION_25_3();
    sub_1DD40B5BC();
    OUTLINED_FUNCTION_48_3();
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v0 = *MEMORY[0x1E69964B0];

    OUTLINED_FUNCTION_25_3();
    v1 = sub_1DD63FDA8();
    v10 = OUTLINED_FUNCTION_34_4();
    v12 = v11(v10, v1);

    sub_1DD63FDD8();
    OUTLINED_FUNCTION_48_3();

LABEL_5:

    goto LABEL_8;
  }

  v0 = sub_1DD3EB444();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_25_3();
  v13 = sub_1DD40B8E0();
  sub_1DD415480(v13);
  OUTLINED_FUNCTION_48_3();

  if (!v1)
  {
    v0 = 0;
    v1 = 0xE000000000000000;
  }

LABEL_8:
  *v3 = 0;
  *(v3 + 8) = 0xE000000000000000;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  *(v3 + 48) = v9;
  *(v3 + 56) = v0;
  *(v3 + 64) = v1;
  *(v3 + 72) = 512;
  OUTLINED_FUNCTION_17();
}

void sub_1DD40F188(unint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, id, uint64_t, char *))
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DD6407B8())
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DD42B518(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v16;
    while (v6 < i)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12B2C10](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(a1 + 8 * v6 + 32);
      }

      v10 = v9;
      a3(__src, v9, a2, v14);

      v16 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DD42B518(v11 > 1, v12 + 1, 1);
        v7 = v16;
      }

      *(v7 + 16) = v12 + 1;
      memcpy((v7 + 80 * v12 + 32), __src, 0x4AuLL);
      ++v6;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_1DD40F314()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v4, 0x108uLL);
  v5 = v1;
  sub_1DD40B108();
  v6 = __dst[26];
  if (__dst[26])
  {
    v42 = v5;
    v7 = __dst[24];
    v8 = __dst[25];
    v9 = LOBYTE(__dst[24]);

    sub_1DD3C9580(__dst);
    v10 = 0;
    v43 = v3;
    v40 = *(type metadata accessor for Contact(0) + 80);
    v11 = *(v3 + v40);
    v12 = *(v11 + 16);
    v41 = v7;
    v47 = v7;
    v45 = *MEMORY[0x1E69964B0];
    v44 = MEMORY[0x1E69E7CC0];
    v46 = v12;
    while (2)
    {
      for (i = 80 * v10 + 32; ; i += 80)
      {
        if (v12 == v10)
        {
          sub_1DD3FAA54(v41, v8, v6);

          *(v43 + v40) = v44;
          goto LABEL_41;
        }

        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        memcpy(__src, (v11 + i), 0x4AuLL);
        if (!v47 || LOBYTE(__src[2]) == v9)
        {
          break;
        }

LABEL_33:
        ++v10;
      }

      if (v9)
      {
        if (v9 == 1)
        {
          sub_1DD3C6A40(__src, v48);
          OUTLINED_FUNCTION_14_9();
          v14 = sub_1DD63FDA8();
          v15 = (*(v45 + 16))(v45, v14);

          v16 = sub_1DD63FDD8();
          v18 = v17;

          goto LABEL_21;
        }

        sub_1DD3EB444();
        sub_1DD3C6A40(__src, v48);
      }

      else
      {
        v49 = 64;
        v50 = 0xE100000000000000;
        sub_1DD3C6A40(__src, v48);
        sub_1DD3B7F10();
        if (sub_1DD6406D8())
        {
          OUTLINED_FUNCTION_14_9();
          v19 = sub_1DD63FDA8();
          v20 = v8;
          v21 = v6;
          v22 = (*(v45 + 16))(v45, v19);

          v16 = sub_1DD63FDD8();
          v18 = v23;

          v6 = v21;
          v8 = v20;
          goto LABEL_21;
        }

        sub_1DD3EB444();
      }

      OUTLINED_FUNCTION_14_9();
      v24 = sub_1DD40B8E0();
      v25 = sub_1DD415480(v24);
      if (v26)
      {
        v16 = v25;
      }

      else
      {
        v16 = 0;
      }

      if (v26)
      {
        v18 = v26;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

LABEL_21:
      v27 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v27 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27 || (v16 == __src[7] ? (v28 = v18 == __src[8]) : (v28 = 0), v28))
      {
      }

      else
      {
        v29 = sub_1DD640CD8();

        if ((v29 & 1) == 0)
        {
LABEL_32:
          sub_1DD3C6A9C(__src);
          v12 = v46;
          goto LABEL_33;
        }
      }

      memcpy(v48, __src, 0x4AuLL);
      sub_1DD412278();
      if (v30)
      {
        v31 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = OUTLINED_FUNCTION_26_2();
          sub_1DD42B518(v33, v34, v35);
          v31 = v52;
        }

        v12 = v46;
        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        v38 = v31;
        if (v37 >= v36 >> 1)
        {
          v39 = OUTLINED_FUNCTION_1_0(v36);
          sub_1DD42B518(v39, v37 + 1, 1);
          v12 = v46;
          v38 = v52;
        }

        ++v10;
        *(v38 + 16) = v37 + 1;
        v44 = v38;
        memcpy((v38 + 80 * v37 + 32), __src, 0x4AuLL);
        continue;
      }

      goto LABEL_32;
    }
  }

  sub_1DD3C9580(__dst);
LABEL_41:
  OUTLINED_FUNCTION_17();
}

void sub_1DD40F728()
{
  OUTLINED_FUNCTION_18_4();
  v1 = type metadata accessor for Contact(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v5 = (v4 - v3);
  sub_1DD415D68(v0, v4 - v3);

  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = *(v2 + 88);
  v7 = *(v5 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v34 = v6;
  v35 = v5;
  v46[0] = MEMORY[0x1E69E7CC0];
  v9 = v46;
  sub_1DD42B518(0, v8, 0);
  v10 = v46[0];
  v11 = v8 - 1;
  v12 = 32;
  for (i = v7; ; v7 = i)
  {
    v37 = v12;
    memcpy(v45, (v7 + v12), 0x4AuLL);
    v13 = v45[7];
    v14 = v45[8];
    v15 = v45[4];
    v38 = v45[3];
    v16 = v45[2];
    v39 = v11;
    if (LOBYTE(v45[2]))
    {
      if (LOBYTE(v45[2]) == 1)
      {
        swift_bridgeObjectRetain_n();
        sub_1DD3C6A40(v45, v40);

        OUTLINED_FUNCTION_57_3();
        sub_1DD63FDA8();
        OUTLINED_FUNCTION_59_0();

        v17 = OUTLINED_FUNCTION_59_1();
        v19 = v18(v17);
LABEL_8:
        v22 = v19;

        v23 = sub_1DD63FDD8();
        v25 = v24;
        sub_1DD3C6A9C(v45);

        goto LABEL_14;
      }

      sub_1DD3EB444();
      OUTLINED_FUNCTION_59_0();
      swift_bridgeObjectRetain_n();
      sub_1DD3C6A40(v45, v40);
    }

    else
    {
      v43[0] = v45[7];
      v43[1] = v45[8];
      v41 = 64;
      v42 = 0xE100000000000000;
      swift_bridgeObjectRetain_n();
      sub_1DD3C6A40(v45, v40);
      sub_1DD3B7F10();

      v9 = v43;
      if (sub_1DD6406D8())
      {
        OUTLINED_FUNCTION_57_3();
        sub_1DD63FDA8();
        OUTLINED_FUNCTION_59_0();

        v20 = OUTLINED_FUNCTION_59_1();
        v19 = v21(v20);
        goto LABEL_8;
      }

      v9 = sub_1DD3EB444();
    }

    OUTLINED_FUNCTION_57_3();
    v26 = sub_1DD40B8E0();
    v27 = sub_1DD415480(v26);
    if (v28)
    {
      v23 = v27;
      v25 = v28;
      sub_1DD3C6A9C(v45);
    }

    else
    {
      sub_1DD3C6A9C(v45);
      v23 = 0;
      v25 = 0xE000000000000000;
    }

LABEL_14:
    *v40 = *v44;
    *&v40[3] = *&v44[3];
    v46[0] = v10;
    v30 = *(v10 + 16);
    v29 = *(v10 + 24);
    if (v30 >= v29 >> 1)
    {
      v33 = OUTLINED_FUNCTION_1_0(v29);
      v9 = v46;
      sub_1DD42B518(v33, v30 + 1, 1);
      v10 = v46[0];
    }

    *(v10 + 16) = v30 + 1;
    v31 = v10 + 80 * v30;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0xE000000000000000;
    *(v31 + 48) = v16;
    v32 = *&v40[3];
    *(v31 + 49) = *v40;
    *(v31 + 52) = v32;
    *(v31 + 56) = v38;
    *(v31 + 64) = v15;
    *(v31 + 72) = v13;
    *(v31 + 80) = v14;
    *(v31 + 88) = v23;
    *(v31 + 96) = v25;
    *(v31 + 104) = 512;
    if (!v39)
    {
      break;
    }

    v11 = v39 - 1;
    v12 = v37 + 80;
  }

  v5 = v35;
  v6 = v34;
LABEL_20:
  *(v5 + v6) = v10;
  sub_1DD640E28();
  Contact.hash(into:)();
  sub_1DD640E78();
  sub_1DD415B40(v5);
  OUTLINED_FUNCTION_17();
}

uint64_t Contact.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  Contact.hash(into:)();
  return sub_1DD640E78();
}

uint64_t sub_1DD40FB18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  v2 = v0[6];
  *(inited + 32) = v0[5];
  *(inited + 40) = v2;
  v3 = v0[9];
  v4 = v0[10];
  *(inited + 48) = v3;
  *(inited + 56) = v4;

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (inited + 40 + 16 * v5);
  while (++v5 != 3)
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v7 += 2;
    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_26_2();
        sub_1DD42A2D4(v11, v12, v13, v14, v15, v16, v17);
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = OUTLINED_FUNCTION_1_0(v18);
        sub_1DD42A2D4(v21, v19 + 1, 1, v22, v23, v24, v25);
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 16 * v19;
      *(v20 + 32) = v9;
      *(v20 + 40) = v8;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_1DD46CAFC();
  return v6;
}

void sub_1DD40FC64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6435D0;
  v2 = v0[4];
  *(inited + 32) = v0[3];
  *(inited + 40) = v2;
  v3 = v0[6];
  *(inited + 48) = v0[5];
  *(inited + 56) = v3;
  v4 = v0[8];
  *(inited + 64) = v0[7];
  *(inited + 72) = v4;
  v5 = v0[10];
  *(inited + 80) = v0[9];
  *(inited + 88) = v5;
  v6 = v0[12];
  *(inited + 96) = v0[11];
  *(inited + 104) = v6;
  v7 = v0[16];
  *(inited + 112) = v0[15];
  *(inited + 120) = v7;
  v8 = v0[18];
  *(inited + 128) = v0[17];
  *(inited + 136) = v8;
  v9 = v0[14];
  *(inited + 144) = v0[13];
  *(inited + 152) = v9;
  v10 = v0[20];
  *(inited + 160) = v0[19];
  *(inited + 168) = v10;
  v11 = v0[22];
  *(inited + 176) = v0[21];
  *(inited + 184) = v11;
  v12 = v0[23];
  v13 = v0[24];
  *(inited + 192) = v12;
  *(inited + 200) = v13;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = (inited + 40 + 16 * v14);
  while (1)
  {
    if (v14 == 11)
    {
      swift_setDeallocating();
      sub_1DD46CAFC();
      return;
    }

    if (v14 > 0xA)
    {
      break;
    }

    ++v14;
    v18 = *(v16 - 1);
    v17 = *v16;
    v16 += 2;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_26_2();
        sub_1DD42A2D4(v20, v21, v22, v23, v24, v25, v26);
      }

      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = OUTLINED_FUNCTION_1_0(v27);
        sub_1DD42A2D4(v30, v28 + 1, 1, v31, v32, v33, v34);
      }

      *(v15 + 16) = v28 + 1;
      v29 = v15 + 16 * v28;
      *(v29 + 32) = v18;
      *(v29 + 40) = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
}

BOOL static Contact.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v18 = *(a2 + 72);
  v3 = sub_1DD3B7F10();
  OUTLINED_FUNCTION_69(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v18);
  v10 = sub_1DD640698();
  if (v10 == -1)
  {
    return 1;
  }

  if (v10 == 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69(v10, MEMORY[0x1E69E6158], v11, v12, v13, v14, v15, v16, *(a2 + 40));
  return sub_1DD640698() == -1;
}

void sub_1DD40FF0C()
{
  OUTLINED_FUNCTION_101_0();
  v1 = *(v0 + *(type metadata accessor for Contact(0) + 80));
  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];

    sub_1DD42A2D4(0, v2, 0, v3, v4, v5, v6);
    v7 = (v1 + 96);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(v17 + 16);
      v11 = *(v17 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1DD42A2D4(v11 > 1, v10 + 1, 1, v12, v13, v14, v15);
      }

      *(v17 + 16) = v10 + 1;
      v16 = v17 + 16 * v10;
      *(v16 + 32) = v9;
      *(v16 + 40) = v8;
      v7 += 10;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_100_0();
}

void Contact.nameComponents.getter(uint64_t a1)
{
  sub_1DD63CD08();
  OUTLINED_FUNCTION_6_17();
  if (v2)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC78();
  }

  OUTLINED_FUNCTION_6_17();
  if (v3)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC18();
  }

  OUTLINED_FUNCTION_6_17();
  if (v4)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC58();
  }

  OUTLINED_FUNCTION_6_17();
  if (v5)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC38();
  }

  OUTLINED_FUNCTION_6_17();
  if (v6)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC98();
  }

  v7 = *(v1 + 128);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *(v1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    OUTLINED_FUNCTION_14_9();
    sub_1DD63CCE8();
  }
}

void static Contact.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_14_1();
  v4 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC530, &qword_1DD646940);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32_6();
  v15 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v15 || (sub_1DD640CD8() & 1) != 0)
  {
    v16 = *(v1 + 16);
    v17 = *(v0 + 16);
    if (v16 == 2)
    {
      if (v17 != 2)
      {
        goto LABEL_91;
      }
    }

    else if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
    {
      goto LABEL_91;
    }

    v18 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
    if (v18 || (sub_1DD640CD8() & 1) != 0)
    {
      v19 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
      if (v19 || (sub_1DD640CD8() & 1) != 0)
      {
        v20 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
        if (v20 || (sub_1DD640CD8() & 1) != 0)
        {
          v21 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
          if (v21 || (sub_1DD640CD8() & 1) != 0)
          {
            v22 = *(v1 + 88) == *(v0 + 88) && *(v1 + 96) == *(v0 + 96);
            if (v22 || (sub_1DD640CD8() & 1) != 0)
            {
              v23 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
              if (v23 || (sub_1DD640CD8() & 1) != 0)
              {
                v24 = *(v1 + 120) == *(v0 + 120) && *(v1 + 128) == *(v0 + 128);
                if (v24 || (sub_1DD640CD8() & 1) != 0)
                {
                  v25 = *(v1 + 136) == *(v0 + 136) && *(v1 + 144) == *(v0 + 144);
                  if (v25 || (sub_1DD640CD8() & 1) != 0)
                  {
                    v26 = *(v1 + 152) == *(v0 + 152) && *(v1 + 160) == *(v0 + 160);
                    if (v26 || (sub_1DD640CD8() & 1) != 0)
                    {
                      v27 = *(v1 + 168) == *(v0 + 168) && *(v1 + 176) == *(v0 + 176);
                      if (v27 || (sub_1DD640CD8() & 1) != 0)
                      {
                        v28 = *(v1 + 184) == *(v0 + 184) && *(v1 + 192) == *(v0 + 192);
                        if (v28 || (sub_1DD640CD8() & 1) != 0)
                        {
                          v29 = *(v1 + 200) == *(v0 + 200) && *(v1 + 208) == *(v0 + 208);
                          if (v29 || (sub_1DD640CD8() & 1) != 0)
                          {
                            sub_1DD3C4134(*(v1 + 216), *(v0 + 216));
                            if (v30)
                            {
                              v31 = type metadata accessor for Contact(0);
                              v32 = v31[19];
                              v33 = *(v13 + 48);
                              sub_1DD415538(v1 + v32, v2);
                              sub_1DD415538(v0 + v32, v2 + v33);
                              OUTLINED_FUNCTION_105(v2);
                              if (v15)
                              {
                                OUTLINED_FUNCTION_105(v2 + v33);
                                if (v15)
                                {
                                  sub_1DD417838(v2, &qword_1ECCDC4F8, &unk_1DD646910);
LABEL_82:
                                  if ((sub_1DD3C4228(*(v1 + v31[20]), *(v0 + v31[20])) & 1) != 0 && *(v1 + v31[21]) == *(v0 + v31[21]))
                                  {
                                    v40 = v31[22];
                                    v41 = *(v1 + v40 + 8);
                                    v51[0] = *(v1 + v40);
                                    v51[1] = v41;
                                    v42 = (v0 + v40);
                                    v43 = v42[1];
                                    v50[0] = *v42;
                                    v50[1] = v43;

                                    v44 = static ContactSource.== infix(_:_:)(v51, v50);

                                    if ((v44 & 1) != 0 && *(v1 + v31[23]) == *(v0 + v31[23]))
                                    {
                                      v45 = v31[24];
                                      v46 = *(v1 + v45);
                                      v47 = *(v1 + v45 + 8);
                                      v48 = (v0 + v45);
                                      if (v46 != *v48 || v47 != v48[1])
                                      {
                                        sub_1DD640CD8();
                                      }
                                    }
                                  }

                                  goto LABEL_91;
                                }
                              }

                              else
                              {
                                v34 = OUTLINED_FUNCTION_20_2();
                                sub_1DD415538(v34, v35);
                                OUTLINED_FUNCTION_105(v2 + v33);
                                if (!v36)
                                {
                                  (*(v6 + 32))(v10, v2 + v33, v4);
                                  OUTLINED_FUNCTION_2_19();
                                  sub_1DD417D04(v37);
                                  v38 = sub_1DD63FD98();
                                  v39 = *(v6 + 8);
                                  v39(v10, v4);
                                  v39(v3, v4);
                                  sub_1DD417838(v2, &qword_1ECCDC4F8, &unk_1DD646910);
                                  if ((v38 & 1) == 0)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_82;
                                }

                                (*(v6 + 8))(v3, v4);
                              }

                              sub_1DD417838(v2, &qword_1ECCDC530, &qword_1DD646940);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_91:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4105EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1699574633 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001DD66B460 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001DD66B480 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001DD66B4A0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DD66B4C0 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x80000001DD66B4E0 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000018 && 0x80000001DD66B500 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000010 && 0x80000001DD66B520 == a2;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7961646874726962 && a2 == 0xE800000000000000;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x73656C646E6168 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7365676775537369 && a2 == 0xEB00000000646574;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000014 && 0x80000001DD66B540 == a2;
                                        if (v24 || (sub_1DD640CD8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0x6E6F685069726973 && a2 == 0xEF61746144656D65)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = sub_1DD640CD8();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD410C34(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1699574633;
      break;
    case 2:
      result = 0x66657250656D616ELL;
      break;
    case 3:
      result = 0x6D614E6E65766967;
      break;
    case 4:
      v3 = 0x656C6464696DLL;
      goto LABEL_16;
    case 5:
      v3 = 0x796C696D6166;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x66667553656D616ELL;
      break;
    case 8:
      result = 0x656D616E6B63696ELL;
      break;
    case 9:
    case 14:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x7961646874726962;
      break;
    case 16:
      result = 0x73656C646E6168;
      break;
    case 17:
      result = 0x7365676775537369;
      break;
    case 18:
      result = 0x656372756F73;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x6E6F685069726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD410E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4105EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD410E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD410C2C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD410EB0(uint64_t a1)
{
  v2 = sub_1DD415758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD410EEC(uint64_t a1)
{
  v2 = sub_1DD415758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC540, &qword_1DD646948);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32_6();
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD415758();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_18_2();
  sub_1DD640C18();
  if (!v1)
  {
    OUTLINED_FUNCTION_18_2();
    sub_1DD640BD8();
    OUTLINED_FUNCTION_3_17(2);
    OUTLINED_FUNCTION_3_17(3);
    OUTLINED_FUNCTION_3_17(4);
    OUTLINED_FUNCTION_3_17(5);
    OUTLINED_FUNCTION_3_17(6);
    OUTLINED_FUNCTION_3_17(7);
    OUTLINED_FUNCTION_3_17(8);
    OUTLINED_FUNCTION_3_17(9);
    OUTLINED_FUNCTION_3_17(10);
    OUTLINED_FUNCTION_3_17(11);
    OUTLINED_FUNCTION_3_17(12);
    OUTLINED_FUNCTION_3_17(13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC548, &qword_1DD646950);
    sub_1DD415B9C(&unk_1EE1638F0);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    type metadata accessor for Contact(0);
    sub_1DD63CBB8();
    OUTLINED_FUNCTION_2_19();
    sub_1DD417D04(v8);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC550, &qword_1DD646958);
    sub_1DD4157AC(&unk_1EE163938);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C28();
    v9 = sub_1DD415874();

    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();

    if (!v9)
    {
      sub_1DD4158C8();
      OUTLINED_FUNCTION_33_4();
      OUTLINED_FUNCTION_18_2();
      sub_1DD640C68();
      OUTLINED_FUNCTION_3_17(20);
    }
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t Contact.hash(into:)()
{
  OUTLINED_FUNCTION_43();
  v3 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22_4();
  sub_1DD63FD28();
  if (*(v1 + 16) != 2)
  {
    sub_1DD640E48();
  }

  sub_1DD640E48();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD415A70(v0, *(v1 + 216));
  v12 = type metadata accessor for Contact(0);
  sub_1DD415538(v1 + v12[19], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_20_2();
    v14(v13);
    sub_1DD640E48();
    OUTLINED_FUNCTION_2_19();
    sub_1DD417D04(v15);
    sub_1DD63FCF8();
    (*(v5 + 8))(v9, v3);
  }

  sub_1DD41591C(v0, *(v1 + v12[20]));
  sub_1DD640E48();
  if (*(v1 + v12[22] + 8))
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  MEMORY[0x1E12B3140](*(v1 + v12[23]));
  return sub_1DD63FD28();
}

void Contact.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v49 = v1;
  v44 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_3();
  v45 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC560, &qword_1DD646960);
  OUTLINED_FUNCTION_0();
  v46 = v7;
  v47 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_3();
  v48 = v9;
  v10 = type metadata accessor for Contact(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  *v14 = 0;
  *(v14 + 8) = 0xE000000000000000;
  *(v14 + 16) = 2;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0xE000000000000000;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0xE000000000000000;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0xE000000000000000;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0xE000000000000000;
  *(v14 + 88) = 0;
  *(v14 + 96) = 0xE000000000000000;
  *(v14 + 104) = 0;
  *(v14 + 112) = 0xE000000000000000;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0xE000000000000000;
  *(v14 + 136) = 0;
  *(v14 + 144) = 0xE000000000000000;
  *(v14 + 152) = 0;
  *(v14 + 160) = 0xE000000000000000;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0xE000000000000000;
  *(v14 + 184) = 0;
  *(v14 + 192) = 0xE000000000000000;
  *(v14 + 200) = 0;
  *(v14 + 208) = 0xE000000000000000;
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 216) = MEMORY[0x1E69E7CC0];
  v16 = v11[21];
  sub_1DD63CBB8();
  v43 = v16;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v11[22];
  *(v14 + v21) = v15;
  v22 = v11[23];
  *(v14 + v22) = 0;
  v23 = (v14 + v11[24]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v11[25];
  *(v14 + v24) = 2;
  v25 = (v14 + v11[26]);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_41_3(v49, v49[3]);
  sub_1DD415758();
  sub_1DD640ED8();
  if (!v0)
  {
    OUTLINED_FUNCTION_19_11();
    *v14 = sub_1DD640B28();
    *(v14 + 8) = v26;
    LOBYTE(v50) = 1;
    *(v14 + 16) = sub_1DD640AE8();
    *(v14 + 24) = OUTLINED_FUNCTION_5_19(2);
    *(v14 + 32) = v27;
    *(v14 + 40) = OUTLINED_FUNCTION_5_19(3);
    *(v14 + 48) = v28;
    *(v14 + 56) = OUTLINED_FUNCTION_5_19(4);
    *(v14 + 64) = v29;
    *(v14 + 72) = OUTLINED_FUNCTION_5_19(5);
    *(v14 + 80) = v30;
    *(v14 + 88) = OUTLINED_FUNCTION_5_19(6);
    *(v14 + 96) = v31;
    *(v14 + 104) = OUTLINED_FUNCTION_5_19(7);
    *(v14 + 112) = v32;
    *(v14 + 120) = OUTLINED_FUNCTION_5_19(8);
    *(v14 + 128) = v33;
    *(v14 + 136) = OUTLINED_FUNCTION_5_19(9);
    *(v14 + 144) = v34;
    *(v14 + 152) = OUTLINED_FUNCTION_10_16(10);
    *(v14 + 160) = v35;
    *(v14 + 168) = OUTLINED_FUNCTION_10_16(11);
    *(v14 + 176) = v36;
    *(v14 + 184) = OUTLINED_FUNCTION_10_16(12);
    *(v14 + 192) = v37;
    *(v14 + 200) = OUTLINED_FUNCTION_10_16(13);
    *(v14 + 208) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC548, &qword_1DD646950);
    sub_1DD415B9C(&unk_1EE160278);
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();
    *(v14 + 216) = v50;
    LOBYTE(v50) = 15;
    OUTLINED_FUNCTION_2_19();
    sub_1DD417D04(v39);
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B18();
    sub_1DD4155A8(v45, v14 + v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC550, &qword_1DD646958);
    sub_1DD4157AC(&unk_1EE160308);
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();
    *(v14 + v21) = v50;
    LOBYTE(v50) = 17;
    OUTLINED_FUNCTION_19_11();
    *(v14 + v22) = sub_1DD640B38() & 1;
    sub_1DD415CC0();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();

    *v23 = v50;
    v23[1] = v51;
    sub_1DD415D14();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();
    *(v14 + v24) = 17;
    v40 = OUTLINED_FUNCTION_10_16(20);
    v42 = v41;
    (*(v46 + 8))(v48, v47);
    *v25 = v40;
    v25[1] = v42;
    sub_1DD415D68(v14, v44);
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_1DD415B40(v14);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD411CB0@<X0>(uint64_t *a1@<X8>)
{
  result = Contact.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD411CE8(uint64_t a1)
{
  sub_1DD640E28();
  Contact.hash(into:)();
  return sub_1DD640E78();
}

uint64_t ContactHandle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 72);
  v8 = *(v0 + 73);
  v9 = 0xE000000000000000;
  LOBYTE(v24) = *(v0 + 16);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](40, 0xE100000000000000);
  v10 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v10 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_61_2();
    v11 = OUTLINED_FUNCTION_57_3();
    MEMORY[0x1E12B2260](v11);
    v12 = v24;
    v9 = v25;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E12B2260](v12, v9);

  v13 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v13 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_61_2();
    v14 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x1E12B2260](v14);
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v15 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v15 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260](v5, v6);
    v16 = v24;
    v17 = v25;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v16, v17);

  OUTLINED_FUNCTION_26_1();
  if (v7)
  {
    v19 = 0xD000000000000011;
  }

  else
  {
    v19 = 0;
  }

  if (v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v19, v20);

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  if (v8 != 2)
  {
    sub_1DD6408D8();

    OUTLINED_FUNCTION_26_1();
    if (v8)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v8)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x1E12B2260](v21, v22);
  }

  OUTLINED_FUNCTION_51_3();

  return 0;
}

SiriInference::ContactHandle::HandleType_optional __swiftcall ContactHandle.HandleType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD41207C@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandle.HandleType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD412154(_BYTE *a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  if (*a1)
  {
    if (*a1 == 1)
    {
      OUTLINED_FUNCTION_25_3();
      v4 = sub_1DD63FDA8();
      v5 = OUTLINED_FUNCTION_34_4();
      v7 = v6(v5, v4);

      v8 = sub_1DD63FDD8();
      v10 = v9;
    }

    else
    {
      sub_1DD3EB444();

      OUTLINED_FUNCTION_25_3();
      v12 = sub_1DD40B8E0();
      v13 = sub_1DD415480(v12);
      if (v14)
      {
        v8 = v13;
      }

      else
      {
        v8 = 0;
      }

      if (v14)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0xE000000000000000;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_3();
    v8 = sub_1DD40B5BC();
    v10 = v11;
  }

  v15 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v15 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (v8 == v2 ? (v16 = v10 == v3) : (v16 = 0), v16))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1DD640CD8();
  }

  return v17 & 1;
}

void sub_1DD412278()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v71 - v4;
  v7 = v1[1];
  v6 = v1[2];
  v8 = v1[3];
  OUTLINED_FUNCTION_92_0();
  if (v9 || *(v8 + 16))
  {
    OUTLINED_FUNCTION_1_25();
    if (v10)
    {
      v76 = sub_1DD63FE58();
      v77 = v11;
      v74 = v76;
      v75 = v11;
      v72 = 1008804959;
      v73 = 0xE400000000000000;
      v12 = sub_1DD63D168();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      sub_1DD3B7F10();

      OUTLINED_FUNCTION_50_4(v16, v17, v18, v19, v20, v21, MEMORY[0x1E69E6158]);
      v23 = v22;
      sub_1DD417838(v5, &qword_1ECCDC3F0, &unk_1DD64AF50);

      if ((v23 & 1) == 0)
      {
        sub_1DD63FE98();
      }

      v74 = v76;
      v75 = v77;
      v72 = 1596203326;
      v73 = 0xE400000000000000;
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v12);

      OUTLINED_FUNCTION_50_4(v27, v28, v29, v30, v31, v32, MEMORY[0x1E69E6158]);
      v34 = v33;
      sub_1DD417838(v5, &qword_1ECCDC3F0, &unk_1DD64AF50);

      if ((v34 & 1) == 0)
      {
        OUTLINED_FUNCTION_20_2();
        sub_1DD63FE98();
      }

      v39 = *(v8 + 16);
      v40 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v74 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4(0, v39, 0, v35, v36, v37, v38);
        v40 = v74;
        v41 = v8 + 40;
        do
        {
          v42 = sub_1DD63FE58();
          v44 = v43;
          v74 = v40;
          v46 = *(v40 + 16);
          v45 = *(v40 + 24);
          if (v46 >= v45 >> 1)
          {
            v48 = OUTLINED_FUNCTION_1_0(v45);
            sub_1DD42A2D4(v48, v46 + 1, 1, v49, v50, v51, v52);
            v40 = v74;
          }

          *(v40 + 16) = v46 + 1;
          v47 = v40 + 16 * v46;
          *(v47 + 32) = v42;
          *(v47 + 40) = v44;
          v41 += 16;
          --v39;
        }

        while (v39);
      }

      if (sub_1DD640008())
      {

        v53 = sub_1DD63FF08();
        sub_1DD4127E0(v53, v7, v6);
        sub_1DD640608();
        OUTLINED_FUNCTION_77_0();
      }

      else
      {
        sub_1DD63FE58();
        OUTLINED_FUNCTION_77_0();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_26_2();
        sub_1DD3BE2A4();
        v40 = v69;
      }

      v55 = *(v40 + 16);
      v54 = *(v40 + 24);
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v54);
        sub_1DD3BE2A4();
        v40 = v70;
      }

      *(v40 + 16) = v55 + 1;
      v56 = v40 + 16 * v55;
      *(v56 + 32) = "plusSuggestionStatus";
      *(v56 + 40) = v6;
      v58 = v76;
      v57 = v77;
      OUTLINED_FUNCTION_93_0();
      if (sub_1DD5E7698(v59, v60, v61))
      {
      }

      else
      {
        if (qword_1ECCDB050 != -1)
        {
          swift_once();
        }

        v62 = qword_1ECCDC4E8;
        v63 = qword_1ECCDC4F0;
        if (sub_1DD5E7698(v40, qword_1ECCDC4E8, qword_1ECCDC4F0))
        {

          if (qword_1ECCDB048 != -1)
          {
            OUTLINED_FUNCTION_30_6(&qword_1ECCDB048);
          }

          v64 = qword_1ECCDC4D8;
          v65 = qword_1ECCDC4E0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DD643F90;
          *(inited + 32) = v58;
          *(inited + 40) = v57;
          sub_1DD5E7698(inited, v64, v65);
          swift_setDeallocating();
        }

        else
        {
          if (qword_1ECCDB048 != -1)
          {
            OUTLINED_FUNCTION_30_6(&qword_1ECCDB048);
          }

          v67 = sub_1DD5E7698(v40, qword_1ECCDC4D8, qword_1ECCDC4E0);

          if (!v67)
          {

            goto LABEL_35;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
          v68 = swift_initStackObject();
          *(v68 + 16) = xmmword_1DD643F90;
          *(v68 + 32) = v58;
          *(v68 + 40) = v57;
          sub_1DD5E7698(v68, v62, v63);
          swift_setDeallocating();
        }

        sub_1DD46CAFC();
      }
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD412784(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  sub_1DD63FDD8();
  v6 = sub_1DD63FE58();
  v8 = v7;

  *a3 = v6;
  *a4 = v8;
  return result;
}

unint64_t sub_1DD4127E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1DD63FF28();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      OUTLINED_FUNCTION_93_0();
      sub_1DD640058();
      OUTLINED_FUNCTION_77_0();

      return OUTLINED_FUNCTION_64_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t static ContactHandle.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_65_2(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v27 = *(v3 + 64);
  v28 = *(v3 + 56);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v26 = *(v2 + 56);
  v25 = *(v2 + 64);
  v23 = *(v2 + 72);
  v24 = *(v3 + 72);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v21 = *(v2 + 73);
  v22 = *(v3 + 73);
  if (v14)
  {
    if (v4 != v9)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v15 = sub_1DD640CD8();
  result = 0;
  if ((v15 & 1) != 0 && v4 == v9)
  {
LABEL_9:
    v17 = v5 == v10 && v6 == v11;
    if (!v17 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }

    if (v7 != v12 || v8 != v13)
    {
      OUTLINED_FUNCTION_20_2();
      if ((sub_1DD640CD8() & 1) == 0)
      {
        return 0;
      }
    }

    if (v28 != v26 || v27 != v25)
    {
      v20 = sub_1DD640CD8();
      result = 0;
      if (v20 & 1) == 0 || ((v24 ^ v23))
      {
        return result;
      }

LABEL_27:
      if (v22 == 2)
      {
        if (v21 != 2)
        {
          return 0;
        }
      }

      else if (v21 == 2 || ((v21 ^ v22) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    if (v24 == v23)
    {
      goto LABEL_27;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD412A3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365676775537369 && a2 == 0xEB00000000646574;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6954656361467369 && a2 == 0xEE00656C6261656DLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD412C80(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6C6562616CLL;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x7A696C616D726F6ELL;
      break;
    case 5:
      result = 0x7365676775537369;
      break;
    case 6:
      result = 0x6954656361467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD412D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD412A3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD412D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD412C78();
  *a1 = result;
  return result;
}

uint64_t sub_1DD412DA8(uint64_t a1)
{
  v2 = sub_1DD415DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD412DE4(uint64_t a1)
{
  v2 = sub_1DD415DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactHandle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC568, &qword_1DD646968);
  OUTLINED_FUNCTION_0();
  v32 = v31;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_41_3(v29, v29[3]);
  sub_1DD415DCC();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v26)
  {
    sub_1DD415E20();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C68();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C18();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C18();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C18();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C28();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640BD8();
  }

  (*(v32 + 8))(v27, v30);
  OUTLINED_FUNCTION_86();
}

void ContactHandle.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_101_0();
  v2 = *(v1 + 16);
  v3 = *(v1 + 73);
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v2);
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD640E48();
  if (v3 != 2)
  {
    sub_1DD640E48();
  }

  sub_1DD640E48();
  OUTLINED_FUNCTION_100_0();
}

uint64_t ContactHandle.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  ContactHandle.hash(into:)(v1);
  return sub_1DD640E78();
}

void ContactHandle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_93();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC570, &qword_1DD646970);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_41_3(v30, v31);
  sub_1DD415DCC();
  sub_1DD640ED8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    LOBYTE(v50[0]) = 0;
    v32 = sub_1DD640B28();
    v34 = v33;
    LOBYTE(v49[0]) = 1;
    sub_1DD415E74();
    sub_1DD640B78();
    OUTLINED_FUNCTION_8_8(2);
    v45 = sub_1DD640B28();
    v48 = v35;
    OUTLINED_FUNCTION_8_8(3);
    v36 = sub_1DD640B28();
    v46 = v37;
    v44 = v36;
    OUTLINED_FUNCTION_8_8(4);
    v43 = sub_1DD640B28();
    v47 = v38;
    OUTLINED_FUNCTION_8_8(5);
    v42 = sub_1DD640B38();
    v39 = sub_1DD640AE8();
    v40 = OUTLINED_FUNCTION_23_8();
    v41(v40);
    v49[0] = v32;
    v49[1] = v34;
    LOBYTE(v49[2]) = 0;
    v49[3] = v45;
    v49[4] = v48;
    v49[5] = v44;
    v49[6] = v46;
    v49[7] = v43;
    v49[8] = v47;
    LOBYTE(v49[9]) = v42 & 1;
    BYTE1(v49[9]) = v39;
    memcpy(v28, v49, 0x4AuLL);
    sub_1DD3C6A40(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v50[0] = v32;
    v50[1] = v34;
    v51 = 0;
    v52 = v45;
    v53 = v48;
    v54 = v44;
    v55 = v46;
    v56 = v43;
    v57 = v47;
    v58 = v42 & 1;
    v59 = v39;
    sub_1DD3C6A9C(v50);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD413544@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD41357C(uint64_t a1)
{
  sub_1DD640E28();
  ContactHandle.hash(into:)(v2);
  return sub_1DD640E78();
}

uint64_t ContactSource.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_57_3();
  sub_1DD640EC8();
  if (!v2)
  {
    OUTLINED_FUNCTION_41_3(v10, v10[3]);
    OUTLINED_FUNCTION_57_3();
    v6 = sub_1DD640CE8();
    v7 = v5;
    v8 = v6 == 0xD00000000000001BLL && 0x80000001DD66B290 == v5;
    if (v8 || (sub_1DD640CD8() & 1) != 0)
    {

      v6 = 0;
      v7 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContactSource.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_20_2();
  sub_1DD640EE8();
  OUTLINED_FUNCTION_26_1();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);

  sub_1DD640CF8();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t ContactSource.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x1E12B3140](0);
  }

  MEMORY[0x1E12B3140](1);
  OUTLINED_FUNCTION_11_0();

  return sub_1DD63FD28();
}

uint64_t ContactSource.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_79();
  if (v1)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD4138B8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1DD640E28();
  if (v2)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD413950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7269666E6F636E75 && a2 == 0xEB0000000064656DLL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x506D6F7246746F6ELL && a2 == 0xEB0000000053554CLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD413A70(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD413AB0(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x7269666E6F636E75;
  }

  return 0x506D6F7246746F6ELL;
}

uint64_t sub_1DD413B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD413950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD413B58(uint64_t a1)
{
  v2 = sub_1DD415F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413B94(uint64_t a1)
{
  v2 = sub_1DD415F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD413BF0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DD413C1C(uint64_t a1)
{
  v2 = sub_1DD416014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413C58(uint64_t a1)
{
  v2 = sub_1DD416014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD413C94(uint64_t a1)
{
  v2 = sub_1DD415F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413CD0(uint64_t a1)
{
  v2 = sub_1DD415F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD413D0C(uint64_t a1)
{
  v2 = sub_1DD415FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD413D48(uint64_t a1)
{
  v2 = sub_1DD415FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PlusSuggestionStatus.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_93();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC578, &qword_1DD646978);
  OUTLINED_FUNCTION_0();
  v55 = v32;
  v56 = v31;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_3();
  v54 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC580, &qword_1DD646980);
  OUTLINED_FUNCTION_0();
  v52 = v36;
  v53 = v35;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_7_3();
  v51 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC588, &qword_1DD646988);
  OUTLINED_FUNCTION_0();
  v49 = v40;
  v50 = v39;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_21_5();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC590, &qword_1DD646990);
  OUTLINED_FUNCTION_0();
  v44 = v43;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_66_1();
  v46 = *v24;
  OUTLINED_FUNCTION_41_3(v30, v30[3]);
  sub_1DD415F18();
  sub_1DD640EF8();
  if (v46)
  {
    if (v46 == 1)
    {
      OUTLINED_FUNCTION_58();
      sub_1DD415FC0();
      v25 = v51;
      OUTLINED_FUNCTION_52_0(&type metadata for PlusSuggestionStatus.UnconfirmedCodingKeys, &a13);
      v48 = v52;
      v47 = v53;
    }

    else
    {
      a14 = 2;
      sub_1DD415F6C();
      v25 = v54;
      OUTLINED_FUNCTION_52_0(&type metadata for PlusSuggestionStatus.NotFromPLUSCodingKeys, &a14);
      v48 = v55;
      v47 = v56;
    }
  }

  else
  {
    a12 = 0;
    sub_1DD416014();
    OUTLINED_FUNCTION_52_0(&type metadata for PlusSuggestionStatus.ConfirmedCodingKeys, &a12);
    v48 = v49;
    v47 = v50;
  }

  (*(v48 + 8))(v25, v47);
  (*(v44 + 8))(v26, v42);
  OUTLINED_FUNCTION_86();
}

uint64_t PlusSuggestionStatus.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

void PlusSuggestionStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_93();
  a23 = v27;
  a24 = v28;
  v86 = v24;
  v30 = v29;
  v81 = v31;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5A8, &qword_1DD646998);
  OUTLINED_FUNCTION_0();
  v82 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_3();
  v84 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5B0, &qword_1DD6469A0);
  OUTLINED_FUNCTION_0();
  v79 = v36;
  v80 = v35;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32_6();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5B8, &qword_1DD6469A8);
  OUTLINED_FUNCTION_0();
  v78 = v39;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v73 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C0, &unk_1DD6469B0);
  OUTLINED_FUNCTION_0();
  v83 = v44;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_41_3(v30, v30[3]);
  sub_1DD415F18();
  v46 = v86;
  sub_1DD640ED8();
  if (v46)
  {
    goto LABEL_10;
  }

  v75 = v38;
  v76 = v42;
  v77 = v25;
  v48 = v84;
  v47 = v85;
  v86 = v30;
  v49 = sub_1DD640B98();
  sub_1DD4153EC(v49, 0);
  if (v52 == v53 >> 1)
  {
    goto LABEL_9;
  }

  v74 = 0;
  if (v52 < (v53 >> 1))
  {
    LODWORD(v54) = *(v51 + v52);
    sub_1DD417948(v52 + 1, v53 >> 1, v50, v51, v52, v53);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v59 = v56 == v58 >> 1;
    v60 = v82;
    if (v59)
    {
      if (v54)
      {
        if (v54 == 1)
        {
          OUTLINED_FUNCTION_58();
          sub_1DD415FC0();
          v61 = v77;
          OUTLINED_FUNCTION_104(&type metadata for PlusSuggestionStatus.UnconfirmedCodingKeys, &a13);
          v62 = v81;
          v63 = v43;
          v64 = v83;
          swift_unknownObjectRelease();
          (*(v79 + 8))(v61, v80);
          (*(v64 + 8))(v26, v63);
        }

        else
        {
          LODWORD(v80) = v54;
          a14 = 2;
          sub_1DD415F6C();
          v69 = v74;
          sub_1DD640AB8();
          v62 = v81;
          v54 = v43;
          v70 = v83;
          if (v69)
          {
            (*(v83 + 8))(v26, v54);
            swift_unknownObjectRelease();
            v30 = v86;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v60 + 8))(v48, v47);
          (*(v70 + 8))(v26, v54);
          LOBYTE(v54) = v80;
        }
      }

      else
      {
        a12 = 0;
        sub_1DD416014();
        v68 = v76;
        OUTLINED_FUNCTION_104(&type metadata for PlusSuggestionStatus.ConfirmedCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v78 + 8))(v68, v75);
        v71 = OUTLINED_FUNCTION_86_1();
        v72(v71);
        v62 = v81;
      }

      *v62 = v54;
      __swift_destroy_boxed_opaque_existential_1(v86);
      goto LABEL_11;
    }

LABEL_9:
    sub_1DD640938();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0);
    *v66 = &type metadata for PlusSuggestionStatus;
    sub_1DD640AC8();
    sub_1DD640928();
    OUTLINED_FUNCTION_72();
    (*(v67 + 104))(v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v26, v43);
    v30 = v86;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_11:
    OUTLINED_FUNCTION_86();
    return;
  }

  __break(1u);
}

void sub_1DD4147B4(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 isSuggested];
  v7 = [a1 identifier];
  v8 = sub_1DD63FDD8();
  v29 = v9;

  v10 = [a1 label];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1DD63FDD8();
    v27 = v13;
    v28 = v12;
  }

  else
  {
    v27 = 0xE000000000000000;
    v28 = 0;
  }

  v14 = [a1 value];
  v15 = sub_1DD63FDD8();
  v17 = v16;

  if (a2)
  {
    if (a2 == 1)
    {
      v18 = *MEMORY[0x1E69964B0];

      v19 = sub_1DD63FDA8();

      v20 = (*(v18 + 16))(v18, v19);

      v21 = sub_1DD63FDD8();
      v23 = v22;
    }

    else
    {
      sub_1DD3EB444();
      swift_bridgeObjectRetain_n();
      v25 = sub_1DD40B8E0();
      v21 = sub_1DD415480(v25);
      v23 = v26;

      if (!v23)
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }
    }
  }

  else
  {

    v21 = sub_1DD40B5BC();
    v23 = v24;
  }

  *a3 = v8;
  *(a3 + 8) = v29;
  *(a3 + 16) = a2;
  *(a3 + 24) = v28;
  *(a3 + 32) = v27;
  *(a3 + 40) = v15;
  *(a3 + 48) = v17;
  *(a3 + 56) = v21;
  *(a3 + 64) = v23;
  *(a3 + 72) = v6;
  *(a3 + 73) = 2;
}

void sub_1DD4149DC(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 isSuggested];
  v7 = [a1 identifier];
  v8 = sub_1DD63FDD8();
  v30 = v9;

  v10 = [a1 label];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1DD63FDD8();
    v28 = v13;
    v29 = v12;
  }

  else
  {
    v28 = 0xE000000000000000;
    v29 = 0;
  }

  v14 = [a1 value];
  v15 = [v14 stringValue];
  v16 = sub_1DD63FDD8();
  v18 = v17;

  if (a2)
  {
    if (a2 == 1)
    {
      v19 = *MEMORY[0x1E69964B0];

      v20 = sub_1DD63FDA8();

      v21 = (*(v19 + 16))(v19, v20);

      v22 = sub_1DD63FDD8();
      v24 = v23;
    }

    else
    {
      sub_1DD3EB444();
      swift_bridgeObjectRetain_n();
      v26 = sub_1DD40B8E0();
      v22 = sub_1DD415480(v26);
      v24 = v27;

      if (!v24)
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }
    }
  }

  else
  {

    v22 = sub_1DD40B5BC();
    v24 = v25;
  }

  *a3 = v8;
  *(a3 + 8) = v30;
  *(a3 + 16) = a2;
  *(a3 + 24) = v29;
  *(a3 + 32) = v28;
  *(a3 + 40) = v16;
  *(a3 + 48) = v18;
  *(a3 + 56) = v22;
  *(a3 + 64) = v24;
  *(a3 + 72) = v6;
  *(a3 + 73) = 2;
}

void sub_1DD414C20()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = v8[1];
  v11 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  v13 = sub_1DD5E8878(v9, v10, v3, v11, v12);
  v14 = v13;
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_31_0();
    *(v15 - 16) = v5;
    v17 = sub_1DD6043E4(sub_1DD417894, v16, v14);

    v14 = v17;
  }

  *v7 = v14;
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD414D00@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = a1[1];
  v17[0] = *a1;
  v17[1] = v9;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 8))(v10, v11);
  v12 = sub_1DD63D168();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  sub_1DD3B7F10();
  v13 = sub_1DD6406C8();
  v15 = v14;
  result = sub_1DD417838(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t sub_1DD414E38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6156656C646E6168 && a2 == 0xEC0000007365756CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD414EFC(char a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](a1 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD414F3C(char a1)
{
  if (a1)
  {
    return 0x6156656C646E6168;
  }

  else
  {
    return 25705;
  }
}

void sub_1DD414F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC6D8, &qword_1DD647E40);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_41_3(v25, v25[3]);
  sub_1DD417DAC();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v22)
  {
    OUTLINED_FUNCTION_58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&qword_1EE1638D0);
    sub_1DD640C68();
  }

  (*(v28 + 8))(v23, v26);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD415100(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC6C8, &unk_1DD647E30);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_4();
  v4 = a1[4];
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD417DAC();
  sub_1DD640ED8();
  if (!v1)
  {
    v4 = sub_1DD640B28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&qword_1EE160268);
    sub_1DD640B78();
    v6 = OUTLINED_FUNCTION_67();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1DD4152FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD414E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD415324(uint64_t a1)
{
  v2 = sub_1DD417DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD415360(uint64_t a1)
{
  v2 = sub_1DD417DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD41539C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD415100(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1DD4153EC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_40_3();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1DD415424(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1DD63FDD8();
  }

  return OUTLINED_FUNCTION_15_0();
}

void *sub_1DD415480(void *a1)
{
  v1 = a1;
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  sub_1DD63FDD8();
  OUTLINED_FUNCTION_77_0();

  return v1;
}

uint64_t type metadata accessor for Contact(uint64_t a1)
{
  result = qword_1EE165DE0;
  if (!qword_1EE165DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD415538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4155A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD415648()
{
  result = qword_1ECCDC508;
  if (!qword_1ECCDC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC508);
  }

  return result;
}

unint64_t sub_1DD415704()
{
  result = qword_1ECCDC520;
  if (!qword_1ECCDC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC520);
  }

  return result;
}

unint64_t sub_1DD415758()
{
  result = qword_1EE163BE0;
  if (!qword_1EE163BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163BE0);
  }

  return result;
}

unint64_t sub_1DD4157AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC550, &qword_1DD646958);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD415820()
{
  result = qword_1EE1659F0;
  if (!qword_1EE1659F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659F0);
  }

  return result;
}

unint64_t sub_1DD415874()
{
  result = qword_1EE1659E0;
  if (!qword_1EE1659E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659E0);
  }

  return result;
}

unint64_t sub_1DD4158C8()
{
  result = qword_1EE165210;
  if (!qword_1EE165210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165210);
  }

  return result;
}

uint64_t sub_1DD41591C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B3140](v3);
  if (v3)
  {
    v5 = (a2 + 105);
    do
    {
      v6 = *(v5 - 57);
      v7 = *v5;

      sub_1DD63FD28();
      MEMORY[0x1E12B3140](v6);
      sub_1DD63FD28();
      sub_1DD63FD28();
      sub_1DD63FD28();
      sub_1DD640E48();
      if (v7 != 2)
      {
        sub_1DD640E48();
      }

      v5 += 80;
      sub_1DD640E48();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD415A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B3140](v3);
  if (v3)
  {
    v5 = a2 + 72;
    do
    {

      sub_1DD63FD28();
      sub_1DD63FD28();
      sub_1DD63FD28();

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD415B40(uint64_t a1)
{
  v2 = type metadata accessor for Contact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD415B9C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC548, &qword_1DD646950);
    sub_1DD415C20(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD415C20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBC50, &qword_1DD644060);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD415C6C()
{
  result = qword_1EE1659E8;
  if (!qword_1EE1659E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659E8);
  }

  return result;
}

unint64_t sub_1DD415CC0()
{
  result = qword_1EE1630B8;
  if (!qword_1EE1630B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1630B8);
  }

  return result;
}

unint64_t sub_1DD415D14()
{
  result = qword_1EE161D70[0];
  if (!qword_1EE161D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE161D70);
  }

  return result;
}

uint64_t sub_1DD415D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD415DCC()
{
  result = qword_1EE165A08;
  if (!qword_1EE165A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A08);
  }

  return result;
}

unint64_t sub_1DD415E20()
{
  result = qword_1EE165A18;
  if (!qword_1EE165A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A18);
  }

  return result;
}

unint64_t sub_1DD415E74()
{
  result = qword_1EE1630D0;
  if (!qword_1EE1630D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1630D0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1DD415F18()
{
  result = qword_1EE165260;
  if (!qword_1EE165260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165260);
  }

  return result;
}

unint64_t sub_1DD415F6C()
{
  result = qword_1EE165228;
  if (!qword_1EE165228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165228);
  }

  return result;
}

unint64_t sub_1DD415FC0()
{
  result = qword_1ECCDC598;
  if (!qword_1ECCDC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC598);
  }

  return result;
}

unint64_t sub_1DD416014()
{
  result = qword_1ECCDC5A0;
  if (!qword_1ECCDC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5A0);
  }

  return result;
}

void sub_1DD416068()
{
  OUTLINED_FUNCTION_103();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_64_2();
      sub_1DD63FD28();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1DD4160C8()
{
  OUTLINED_FUNCTION_103();
  if (v0)
  {
    v2 = (v1 + 72);
    do
    {
      v3 = *(v2 - 40);
      v4 = *v2;
      v2 += 6;
      v5 = v4;
      MEMORY[0x1E12B3140](v3);

      OUTLINED_FUNCTION_64_2();
      sub_1DD63FD28();
      sub_1DD63FD28();
      if (v4 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v5;
      }

      MEMORY[0x1E12B3170](*&v6);

      --v0;
    }

    while (v0);
  }
}

unint64_t sub_1DD4161A4()
{
  result = qword_1ECCDC5D8;
  if (!qword_1ECCDC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5D8);
  }

  return result;
}

unint64_t sub_1DD4161FC()
{
  result = qword_1ECCDC5E0;
  if (!qword_1ECCDC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5E0);
  }

  return result;
}

unint64_t sub_1DD416254()
{
  result = qword_1ECCDC5E8;
  if (!qword_1ECCDC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC5E8);
  }

  return result;
}

unint64_t sub_1DD4162A8()
{
  result = qword_1ECCDC5F0[0];
  if (!qword_1ECCDC5F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCDC5F0);
  }

  return result;
}

void sub_1DD416324(uint64_t a1)
{
  sub_1DD3BB974(319, &qword_1EE1638C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DD416480(319);
    if (v2 <= 0x3F)
    {
      sub_1DD4164E4(319);
      if (v3 <= 0x3F)
      {
        sub_1DD3BB974(319, &qword_1EE163940, &type metadata for ContactHandle, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD416480(uint64_t a1)
{
  if (!qword_1EE1638F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBC50, &qword_1DD644060);
    v1 = sub_1DD640178();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1638F8);
    }
  }
}

void sub_1DD4164E4(uint64_t a1)
{
  if (!qword_1EE166060)
  {
    sub_1DD63CBB8();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE166060);
    }
  }
}

uint64_t sub_1DD416544(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD4165C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1DD41674C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DD4169A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1DD4169E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD416A70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_1DD416AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD416B24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1DD416B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Contact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Contact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Contact.PostalAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Contact.PostalAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD416FE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4170CC()
{
  result = qword_1ECCDC678;
  if (!qword_1ECCDC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC678);
  }

  return result;
}

unint64_t sub_1DD417124()
{
  result = qword_1ECCDC680;
  if (!qword_1ECCDC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC680);
  }

  return result;
}

unint64_t sub_1DD41717C()
{
  result = qword_1ECCDC688;
  if (!qword_1ECCDC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC688);
  }

  return result;
}

unint64_t sub_1DD4171D4()
{
  result = qword_1ECCDC690;
  if (!qword_1ECCDC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC690);
  }

  return result;
}

unint64_t sub_1DD41722C()
{
  result = qword_1ECCDC698;
  if (!qword_1ECCDC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC698);
  }

  return result;
}

unint64_t sub_1DD417284()
{
  result = qword_1EE165240;
  if (!qword_1EE165240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165240);
  }

  return result;
}

unint64_t sub_1DD4172DC()
{
  result = qword_1EE165248;
  if (!qword_1EE165248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165248);
  }

  return result;
}

unint64_t sub_1DD417334()
{
  result = qword_1EE165218;
  if (!qword_1EE165218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165218);
  }

  return result;
}

unint64_t sub_1DD41738C()
{
  result = qword_1EE165220;
  if (!qword_1EE165220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165220);
  }

  return result;
}

unint64_t sub_1DD4173E4()
{
  result = qword_1EE165230;
  if (!qword_1EE165230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165230);
  }

  return result;
}

unint64_t sub_1DD41743C()
{
  result = qword_1EE165238;
  if (!qword_1EE165238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165238);
  }

  return result;
}

unint64_t sub_1DD417494()
{
  result = qword_1EE165250;
  if (!qword_1EE165250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165250);
  }

  return result;
}

unint64_t sub_1DD4174EC()
{
  result = qword_1EE165258;
  if (!qword_1EE165258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165258);
  }

  return result;
}

unint64_t sub_1DD417544()
{
  result = qword_1EE1659F8;
  if (!qword_1EE1659F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1659F8);
  }

  return result;
}

unint64_t sub_1DD41759C()
{
  result = qword_1EE165A00;
  if (!qword_1EE165A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A00);
  }

  return result;
}

unint64_t sub_1DD4175F4()
{
  result = qword_1EE163BD0;
  if (!qword_1EE163BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163BD0);
  }

  return result;
}

unint64_t sub_1DD41764C()
{
  result = qword_1EE163BD8;
  if (!qword_1EE163BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163BD8);
  }

  return result;
}

unint64_t sub_1DD4176A4()
{
  result = qword_1ECCDC6A0;
  if (!qword_1ECCDC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6A0);
  }

  return result;
}

unint64_t sub_1DD4176FC()
{
  result = qword_1ECCDC6A8;
  if (!qword_1ECCDC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6A8);
  }

  return result;
}

unint64_t sub_1DD417754()
{
  result = qword_1ECCDC6B0;
  if (!qword_1ECCDC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6B0);
  }

  return result;
}

unint64_t sub_1DD4177AC()
{
  result = qword_1ECCDC6B8;
  if (!qword_1ECCDC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6B8);
  }

  return result;
}

uint64_t sub_1DD417838(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_72();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD4178B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD4178F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD417948(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD4179C4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25[3] = a4;
  v25[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_72();
  (*(v7 + 16))();
  memcpy(v24, a3, sizeof(v24));
  sub_1DD41E024();
  v9 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v11 = a3[19];
    v10 = a3[20];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v9 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v9 + 24) >> 1)
      {
        v23 = v13 + 1;
        OUTLINED_FUNCTION_87_1();
        v22 = v21;
        sub_1DD3BE2A4();
        v13 = v22;
        v14 = v23;
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v14;
      v15 = v9 + 16 * v13;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v16 - 16) = v25;
  *(v16 - 8) = 1;
  *(v16 - 7) = a2 & 1;
  sub_1DD582E38();
  v18 = v17;

  v19 = sub_1DD41859C(v18);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v19;
}

uint64_t sub_1DD417B78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[3] = a4;
  v24[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_72();
  (*(v7 + 16))();
  isUniquelyReferenced_nonNull_native = sub_1DD40FB18();
  v9 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v11 = *(a3 + 136);
    v10 = *(a3 + 144);
    OUTLINED_FUNCTION_92_0();
    if (v12)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v9 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v9 + 24) >> 1)
      {
        v23 = v13 + 1;
        OUTLINED_FUNCTION_87_1();
        v22 = v21;
        sub_1DD3BE2A4();
        v13 = v22;
        v14 = v23;
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v14;
      v15 = v9 + 16 * v13;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v16 - 16) = v24;
  *(v16 - 8) = 1;
  *(v16 - 7) = a2 & 1;
  sub_1DD582E38();
  v18 = v17;

  v19 = sub_1DD41859C(v18);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v19;
}

unint64_t sub_1DD417D04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD417D48()
{
  result = qword_1EE165A10;
  if (!qword_1EE165A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A10);
  }

  return result;
}

unint64_t sub_1DD417DAC()
{
  result = qword_1ECCDC6D0;
  if (!qword_1ECCDC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6D0);
  }

  return result;
}

unint64_t sub_1DD417E00(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_1DD417E68(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD417F44()
{
  result = qword_1ECCDC6E0;
  if (!qword_1ECCDC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6E0);
  }

  return result;
}

unint64_t sub_1DD417F9C()
{
  result = qword_1ECCDC6E8;
  if (!qword_1ECCDC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6E8);
  }

  return result;
}

unint64_t sub_1DD417FF4()
{
  result = qword_1ECCDC6F0;
  if (!qword_1ECCDC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC6F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17@<X0>(char a3@<W8>)
{
  *(v3 - 88) = a3;

  return sub_1DD640C18();
}

uint64_t OUTLINED_FUNCTION_10_16@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_1DD640B28();
}

uint64_t OUTLINED_FUNCTION_29_4(uint64_t a1, uint64_t a2)
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1DD6406A8();
}

void OUTLINED_FUNCTION_51_3()
{

  JUMPOUT(0x1E12B2260);
}

void OUTLINED_FUNCTION_55_3()
{
  *(v0 + *(v1 + 84)) = 0;
  v2 = (v0 + *(v1 + 88));
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_62_2()
{
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD640C18();
}

void OUTLINED_FUNCTION_83_1()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_84_1()
{
}

uint64_t OUTLINED_FUNCTION_102()
{

  return sub_1DD640B28();
}

void OUTLINED_FUNCTION_103()
{

  JUMPOUT(0x1E12B3140);
}

uint64_t sub_1DD41865C()
{
  OUTLINED_FUNCTION_9_1();
  v2 = sub_1DD41B5DC();
  result = MEMORY[0x1E12B2590](v1, &type metadata for AppEventValues, v2);
  v4 = 0;
  v11 = result;
  v5 = *(v0 + 16);
  for (i = (v0 + 48); ; i += 3)
  {
    if (v5 == v4)
    {

      return v11;
    }

    if (v4 >= *(v0 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *(i - 2);

    sub_1DD56CF8C(&v10, v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD418734()
{
  OUTLINED_FUNCTION_43();
  v1 = sub_1DD63D2B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1DD41B280(&qword_1EE1637E0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  v8 = OUTLINED_FUNCTION_1_26();
  v9 = MEMORY[0x1E12B2590](v8, v1);
  v20 = v9;
  v10 = *(v0 + 16);
  if (v10)
  {
    v13 = *(v2 + 16);
    v11 = v2 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19 = v0;
    v15 = v0 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v4, v15, v1);
      sub_1DD56D194();
      (*(v11 - 8))(v7, v1);
      v15 += v16;
      --v10;
    }

    while (v10);

    return v20;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

void sub_1DD418A94(uint64_t a1)
{
  sub_1DD3CC020();
  v2 = sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  sub_1DD41B0B0();
  v3 = OUTLINED_FUNCTION_1_26();
  v7[1] = MEMORY[0x1E12B2590](v3, v2);
  v4 = sub_1DD3CC020();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E12B2C10](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1DD56E030(v7, v6);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1DD418DBC()
{
  OUTLINED_FUNCTION_9_1();
  v2 = sub_1DD41B2C8();
  v3 = 0;
  v12 = MEMORY[0x1E12B2590](v1, &type metadata for DateTime.DateTimeRange.DefinedDateTimeRange, v2);
  OUTLINED_FUNCTION_4_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v9 = v3;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1DD56E918(&v11, *(*(v0 + 48) + (v10 | (v9 << 6))));
    }

    while (v6);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1DD418E9C(uint64_t a1)
{
  v2 = MEMORY[0x1E12B2590](*(a1 + 16), MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1DD56E934(v7, *(a1 + v4));
      v4 += 4;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_1DD419018()
{
  OUTLINED_FUNCTION_9_1();
  v2 = sub_1DD41B118();
  result = MEMORY[0x1E12B2590](v1, &type metadata for ContactSearchMatchType, v2);
  v4 = 0;
  v11 = result;
  v5 = *(v0 + 16);
  for (i = 32; ; i += 48)
  {
    if (v5 == v4)
    {

      return v11;
    }

    if (v4 >= *(v0 + 16))
    {
      break;
    }

    v7 = *(v0 + i + 16);
    v12 = *(v0 + i);
    v13[0] = v7;
    *(v13 + 9) = *(v0 + i + 25);
    ++v4;
    sub_1DD41B16C(&v12, v9);
    sub_1DD56EF28(v9, &v12, v8);
    result = sub_1DD41B1C8(v9[0], v9[1], v9[2], v9[3], v9[4], v10);
  }

  __break(1u);
  return result;
}

uint64_t ContactGroupResolver.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactResolverCache(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1DD419134@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30[-v7];
  v9 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-v13];
  sub_1DD41B424(v1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    sub_1DD41B520(v8, v14);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1EE16F068);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DD38D000, v22, v23, "using overridden cache", v24, 2u);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }

    v25 = v14;
    return sub_1DD41B520(v25, a1);
  }

  sub_1DD41B494(v8);
  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  sub_1DD640488();

  if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
  {
    sub_1DD41B520(v5, v11);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD63F9F8();
    __swift_project_value_buffer(v26, qword_1EE16F068);
    v27 = sub_1DD63F9D8();
    v28 = sub_1DD640358();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DD38D000, v27, v28, "using shared cache", v29, 2u);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
    }

    v25 = v11;
    return sub_1DD41B520(v25, a1);
  }

  sub_1DD41B494(v5);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F068);
  v16 = sub_1DD63F9D8();
  v17 = sub_1DD640358();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DD38D000, v16, v17, "creating and using shared cache", v18, 2u);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
  }

  v19 = sub_1DD447E80(a1);
  MEMORY[0x1EEE9AC00](v19);
  *&v30[-16] = a1;

  sub_1DD5FF92C();
}

uint64_t sub_1DD4195D0(uint64_t a1, uint64_t a2)
{
  sub_1DD41B494(a1);
  sub_1DD41B584(a2, a1);
  v4 = type metadata accessor for ContactResolverCache(0);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t ContactGroupResolver.findGroups(query:config:)(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  OUTLINED_FUNCTION_5_20();

  v5 = sub_1DD41859C(v4);
  v6 = sub_1DD4196CC(v8, a2, v5);

  return v6;
}

uint64_t sub_1DD4196CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v16 = a2;
  v19 = sub_1DD63F9C8();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v15 = *a1;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD643F90;
  v10 = sub_1DD6408F8();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1DD392BD8();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1DD63F998();

  sub_1DD419A18(v15, v7, v17, v16, v18, &v20);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  (*(v4 + 8))(v6, v19);
  return v20;
}

uint64_t ContactGroupResolver.findGroupsAsync(query:config:)(void *a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v4 = a1[1];
  v3[4] = *a1;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DD419978, 0, 0);
}

uint64_t sub_1DD419978()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v8[0] = v0[4];
  v8[1] = v1;
  OUTLINED_FUNCTION_5_20();

  v4 = sub_1DD41859C(v3);
  v5 = sub_1DD4196CC(v8, v2, v4);

  v6 = v0[1];

  return v6(v5);
}

void sub_1DD419A18(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v111 = a5;
  v108 = a1;
  v103 = a6;
  v9 = sub_1DD63D168();
  v109 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Expander = type metadata accessor for EmojiQueryExpander(0);
  MEMORY[0x1EEE9AC00](Expander);
  v101 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SiriVocabularySearcher(0);
  MEMORY[0x1EEE9AC00](v122);
  v104 = (&v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for StringTokenizer(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - v16;
  v18 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v18);
  v97 = (&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v97 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  sub_1DD419134((&v97 - v24));
  v106 = v18;
  sub_1DD41B584(&v25[*(v18 + 60)], v17);
  v26 = sub_1DD41B3D0();
  v27 = sub_1DD4F9BB8(v26);
  v112 = a3;
  v107 = v9;
  if (v27)
  {
    v28 = a4;
    v29 = 0;
  }

  else
  {
    v102 = a2;
    v114 = sub_1DD63D118();
    v115 = v30;
    v120 = 24938;
    v121 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v31 = sub_1DD63FD48();

    v28 = a4;
    if (v31)
    {
      v29 = 0;
    }

    else
    {
      v114 = sub_1DD63D118();
      v115 = v32;
      v120 = 28523;
      v121 = 0xE200000000000000;
      v33 = sub_1DD63FD48();

      v29 = v33 ^ 1;
    }

    a2 = v102;
  }

  v34 = v109;
  v35 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v108, a2, v29 & 1, 1);
  sub_1DD41B3D0();
  v36 = *(v34 + 16);
  v37 = v104;
  v105 = v28;
  v38 = v107;
  v36(v104, v28, v107);
  sub_1DD419134(v22);
  v39 = v106;
  v40 = *(v22 + *(v106 + 48));
  sub_1DD41B3D0();
  *(v37 + *(v122 + 20)) = v40;
  v41 = sub_1DD5F8668(v35, v111, 2);

  v122 = sub_1DD3CC020();
  if (v122)
  {
    v42 = 0;
    v111 = (v41 & 0xFFFFFFFFFFFFFF8);
    v112 = (v41 & 0xC000000000000001);
    v109 = MEMORY[0x1E69E7CC0];
    v110 = v41;
    v43 = v113;
    v44 = v41;
    while (v122 != v42)
    {
      if (v112)
      {
        v45 = MEMORY[0x1E12B2C10](v42, v44);
      }

      else
      {
        if (v42 >= v111[2])
        {
          goto LABEL_61;
        }

        v45 = *(v44 + 8 * v42 + 32);
      }

      v35 = v45;
      if (__OFADD__(v42, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v120 = v45;
      sub_1DD41A78C(&v120, &v114);

      v47 = v114;
      v46 = v115;
      v49 = v116;
      v48 = v117;
      v51 = v118;
      v50 = v119;
      if (v115)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD3BFA60();
          v109 = v56;
        }

        v53 = *(v109 + 16);
        v35 = (v53 + 1);
        if (v53 >= *(v109 + 24) >> 1)
        {
          sub_1DD3BFA60();
          v109 = v57;
        }

        v54 = v109;
        *(v109 + 16) = v35;
        v55 = (v54 + 48 * v53);
        v55[4] = v47;
        v55[5] = v46;
        v55[6] = v49;
        v55[7] = v48;
        v55[8] = v51;
        v55[9] = v50;
        v43 = v113;
      }

      else
      {
        sub_1DD41B31C(v114, 0);
      }

      ++v42;
      v44 = v110;
    }

    goto LABEL_57;
  }

  v102 = a2;

  v58 = v100;
  v36(v100, v105, v38);
  v59 = v97;
  sub_1DD419134(v97);
  v60 = v98;
  sub_1DD41B584(v59 + *(v39 + 60), v98);
  sub_1DD41B3D0();
  v61 = v101;
  v36(v101, v58, v38);
  v62 = v61;
  v63 = Expander;
  sub_1DD41B584(v60, &v61[*(Expander + 20)]);
  v35 = sub_1DD39638C(0, &qword_1EE1601D8, 0x1E699BAD0);
  v64 = sub_1DD63D118();
  v66 = sub_1DD4BE624(v64, v65);
  v44 = v105;
  if (v66)
  {
    v67 = v66;
    sub_1DD41B3D0();
    v68.n128_f64[0] = (*(v109 + 8))(v58, v38);
    *&v61[*(v63 + 24)] = v67;
    v114 = v108;
    v115 = v102;
    v35 = sub_1DD4BE308(&v114, v68);
    if (qword_1EE165FB0 != -1)
    {
LABEL_63:
      swift_once();
    }

    v69 = sub_1DD63F9F8();
    __swift_project_value_buffer(v69, qword_1EE16F068);

    v70 = sub_1DD63F9D8();
    v71 = sub_1DD640368();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v111;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = v35[2];

      _os_log_impl(&dword_1DD38D000, v70, v71, "queries after EmojiQueryExpander: %ld", v74, 0xCu);
      MEMORY[0x1E12B3DA0](v74, -1, -1);
    }

    else
    {
    }

    v76 = v113;
    MEMORY[0x1EEE9AC00](v75);
    *(&v97 - 2) = v112;
    *(&v97 - 1) = v44;
    sub_1DD5E7FBC();
    v62 = v76;

    v35 = &v97;
    MEMORY[0x1EEE9AC00](v77);
    *(&v97 - 2) = v104;
    *(&v97 - 1) = v73;
    v78 = sub_1DD5E80D8();

    v44 = 0;
    v107 = v78;
    v108 = 0;
    v105 = v78 + 32;
    v109 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v79 = 0;
      v80 = v44 & 0xFFFFFFFFFFFFFF8;
      if (v44 >= 0)
      {
        v81 = v44 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v81 = v44;
      }

      v106 = v81;
      v110 = v44;
      v111 = (v44 & 0xC000000000000001);
      v122 = v109;
      if (v44)
      {
        while (1)
        {
          if (v44 >> 62)
          {
            v82 = sub_1DD6407B8();
          }

          else
          {
            v82 = *(v80 + 16);
          }

          if (v79 == v82)
          {
            v109 = v122;
            goto LABEL_53;
          }

          if (v111)
          {
            v83 = MEMORY[0x1E12B2C10](v79, v44);
          }

          else
          {
            if (v79 >= *(v80 + 16))
            {
              goto LABEL_59;
            }

            v83 = *(v44 + 8 * v79 + 32);
          }

          v35 = v83;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          v120 = v83;
          sub_1DD41A78C(&v120, &v114);
          if (v62)
          {
            goto LABEL_65;
          }

          v35 = v114;
          v84 = v115;
          v86 = v116;
          v85 = v117;
          v87 = v118;
          if (v115)
          {
            v112 = v119;
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v113 = 0;
            if ((v88 & 1) == 0)
            {
              sub_1DD3BFA60();
              v122 = v93;
            }

            v89 = *(v122 + 16);
            if (v89 >= *(v122 + 24) >> 1)
            {
              sub_1DD3BFA60();
              v122 = v94;
            }

            v90 = v122;
            *(v122 + 16) = v89 + 1;
            v91 = (v90 + 48 * v89);
            v91[4] = v35;
            v91[5] = v84;
            v91[6] = v86;
            v91[7] = v85;
            v92 = v112;
            v62 = v113;
            v91[8] = v87;
            v91[9] = v92;
            v44 = v110;
          }

          else
          {
            sub_1DD41B31C(v114, 0);
          }

          ++v79;
          if (!v44)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

LABEL_53:
      v95 = *(v107 + 16);
      if (v108 == v95)
      {
        break;
      }

      if (v108 >= v95)
      {
        goto LABEL_62;
      }

      v96 = v108 + 1;
      v35 = *(v105 + 8 * v108);

      v44 = v35;
      v108 = v96;
    }

    sub_1DD41B3D0();
LABEL_57:

    *v103 = v109;
    sub_1DD41B3D0();
    return;
  }

  __break(1u);
LABEL_65:

  __break(1u);
}

void sub_1DD41A54C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for StringTokenizer(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactResolverCache(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = a1[1];
  sub_1DD419134(v10);
  sub_1DD41B584(v10 + *(v8 + 68), v6);
  v13 = sub_1DD41B3D0();
  if (sub_1DD4F9BB8(v13) & 1) != 0 || (v22 = sub_1DD63D118(), v23 = v14, v20 = 24938, v21 = 0xE200000000000000, sub_1DD3B52B8(), sub_1DD3B530C(), v15 = sub_1DD63FD48(), , (v15))
  {
    v16 = 0;
  }

  else
  {
    v22 = sub_1DD63D118();
    v23 = v17;
    v20 = 28523;
    v21 = 0xE200000000000000;
    v18 = sub_1DD63FD48();

    v16 = v18 ^ 1;
  }

  v19 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v11, v12, v16 & 1, 1);
  sub_1DD41B3D0();
  *a2 = v19;
}

void __swiftcall ContactGroup.init(id:name:bundleId:)(SiriInference::ContactGroup *__return_ptr retstr, Swift::String id, Swift::String name, Swift::String bundleId)
{
  retstr->id = id;
  retstr->name = name;
  retstr->bundleId = bundleId;
}

double sub_1DD41A78C@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 vocabularyItem];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DD5FA8C8(v5);
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11 = [v6 term];
    v12 = sub_1DD63FDD8();
    v14 = v13;

    v15 = [v3 originAppId];
    v16 = sub_1DD63FDD8();
    v18 = v17;

    swift_unknownObjectRelease();
    *a2 = v29;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v14;
    a2[4] = v16;
    a2[5] = v18;
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);
    v21 = v3;
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640378();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      [v21 vocabularyItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC750, &qword_1DD648228);
      v26 = sub_1DD63FE38();
      v28 = sub_1DD39565C(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1DD38D000, v22, v23, "wanted CKVCustomTerm, got %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }

    result = 0.0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t ContactGroupResolverConfig.locale.getter()
{
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_0();

  return v1(v0);
}

uint64_t ContactGroupResolverConfig.locale.setter()
{
  OUTLINED_FUNCTION_43();
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_1_26();

  return v2(v1, v0);
}

uint64_t ContactGroupResolverConfig.bundleIds.getter()
{
  OUTLINED_FUNCTION_5_20();
}

uint64_t ContactGroupResolverConfig.bundleIds.setter()
{
  v2 = OUTLINED_FUNCTION_43();
  v3 = *(type metadata accessor for ContactGroupResolverConfig(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

void (*ContactGroupResolverConfig.bundleIds.modify())()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for ContactGroupResolverConfig(v0);
  return nullsub_1;
}

uint64_t ContactGroupResolverConfig.init(locale:bundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(a3, a1);
  result = OUTLINED_FUNCTION_5_20();
  *(a3 + v8) = a2;
  return result;
}

uint64_t ContactGroupQuery.name.setter()
{
  OUTLINED_FUNCTION_14_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContactGroup.id.setter()
{
  OUTLINED_FUNCTION_14_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContactGroup.name.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ContactGroup.bundleId.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void sub_1DD41AE44(uint64_t a1)
{
  sub_1DD41AEB0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD41AEB0(uint64_t a1)
{
  if (!qword_1EE166570)
  {
    type metadata accessor for ContactResolverCache(255);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE166570);
    }
  }
}

void sub_1DD41AF30(uint64_t a1)
{
  sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    sub_1DD41AFB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD41AFB4()
{
  if (!qword_1EE1638D8)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1638D8);
    }
  }
}

uint64_t sub_1DD41B014(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD41B054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD41B0B0()
{
  result = qword_1ECCDC720;
  if (!qword_1ECCDC720)
  {
    sub_1DD39638C(255, &qword_1EE163880, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC720);
  }

  return result;
}

unint64_t sub_1DD41B118()
{
  result = qword_1ECCDC728;
  if (!qword_1ECCDC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC728);
  }

  return result;
}

uint64_t sub_1DD41B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = a2;
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}
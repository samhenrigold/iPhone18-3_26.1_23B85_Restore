uint64_t sub_275378024()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  v2[177] = v0;

  OUTLINED_FUNCTION_157_2();
  if (v0)
  {
    v2[180] = v4;
    v2[181] = v5;
    v4();
    v6 = v2[175];
    v7 = v2[174];
    v8 = sub_275378250;
  }

  else
  {
    v2[178] = v4;
    v2[179] = v5;
    v4();
    v6 = v2[175];
    v7 = v2[174];
    v8 = sub_2753781A4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2753781A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 1424);
  OUTLINED_FUNCTION_177_1();
  v16 = OUTLINED_FUNCTION_306();
  v15(v16);

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_173();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_275378250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 1440);
  OUTLINED_FUNCTION_177_1();
  v16 = OUTLINED_FUNCTION_306();
  v15(v16);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicContentStorage.Operations.firstContentID(matching:in:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[67] = v0;
  v1[66] = v2;
  v3 = sub_2753B65D8();
  v1[68] = v3;
  OUTLINED_FUNCTION_17_1(v3);
  v1[69] = v4;
  v1[70] = OUTLINED_FUNCTION_187_1();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v5 = sub_2753B6608();
  v1[73] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[74] = v6;
  v1[75] = OUTLINED_FUNCTION_187_1();
  v1[76] = swift_task_alloc();
  sub_2753B6288();
  v1[77] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v7, 255, v8);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[78] = v9;
  v1[79] = v10;
  v11 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275378468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v17 = v16[66];
  v18 = *(v17 + 16);
  v16[80] = v18;
  if (v18)
  {
    v19 = 0;
    v20 = v16 + 57;
    v21 = v17 + 32;
    while (2)
    {
      v16[81] = v19;
      v22 = *(v21 + 32);
      switch(v22 >> 5)
      {
        case 1u:
          v45 = *v21;
          v46 = *(v21 + 8);
          v47 = *(v21 + 16);
          v48 = *(v21 + 24);

          sub_2753B65C8();
          sub_2753B65B8();
          v49 = MEMORY[0x277D65000];
          v16[40] = MEMORY[0x277D837D0];
          v16[41] = v49;
          v82 = v45;
          v16[37] = v45;
          v16[38] = v46;
          v80 = v46;

          sub_2753B6588();
          v50 = OUTLINED_FUNCTION_68_3(v16 + 37);
          OUTLINED_FUNCTION_266_0(v50);
          v51 = MEMORY[0x277D65080];
          v16[45] = MEMORY[0x277D84A28];
          v16[46] = v51;
          v79 = v47;
          v16[42] = v47;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 42);
          v52 = OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1(v52);
          v16[50] = &type metadata for MusicContent.LibraryContentType;
          v16[51] = sub_2753629A0();
          v78 = v48;
          *(v16 + 376) = v48;
          sub_2753B6588();
          v20 = v16 + 47;
          break;
        case 2u:
          v32 = *v21;
          v33 = *(v21 + 8);
          v34 = *(v21 + 16);
          v35 = *(v21 + 24);

          sub_2753B65C8();
          sub_2753B65B8();
          v36 = MEMORY[0x277D837D0];
          v37 = MEMORY[0x277D65000];
          v16[25] = MEMORY[0x277D837D0];
          v16[26] = v37;
          v82 = v32;
          v16[22] = v32;
          v16[23] = v33;
          v80 = v33;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 22);
          OUTLINED_FUNCTION_204_1();
          v16[30] = v36;
          v16[31] = v37;
          v78 = v35;
          v79 = v34;
          v16[27] = v34;
          v16[28] = v35;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 27);
          OUTLINED_FUNCTION_27_3();
          sub_2753B65B8();
          v16[35] = &type metadata for MusicContent.CloudLibraryContentType;
          v16[36] = sub_275362BB0();
          *(v16 + 256) = v22 & 0x1F;
          sub_2753B6588();
          v20 = v16 + 32;
          break;
        case 3u:
          v58 = *v21;
          v59 = *(v21 + 8);
          v60 = *(v21 + 16);
          v61 = *(v21 + 24);

          sub_2753B65C8();
          sub_2753B65B8();
          v62 = MEMORY[0x277D65000];
          v16[10] = MEMORY[0x277D837D0];
          v16[11] = v62;
          v82 = v58;
          v16[7] = v58;
          v16[8] = v59;
          v80 = v59;

          sub_2753B6588();
          v63 = OUTLINED_FUNCTION_68_3(v16 + 7);
          OUTLINED_FUNCTION_320_0(v63);
          v64 = MEMORY[0x277D65080];
          v16[15] = MEMORY[0x277D84A28];
          v16[16] = v64;
          v79 = v60;
          v16[12] = v60;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 12);
          v65 = OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1(v65);
          v16[20] = &type metadata for MusicContent.PurchasableContentType;
          v16[21] = sub_275362DC0();
          v78 = v61;
          *(v16 + 136) = v61;
          sub_2753B6588();
          v20 = v16 + 17;
          break;
        case 4u:
          ++v19;
          v21 += 40;
          if (v18 == v19)
          {
            goto LABEL_5;
          }

          continue;
        case 5u:
          v38 = *v21;
          v39 = *(v21 + 8);
          v40 = OUTLINED_FUNCTION_97_0();
          v78 = v42;
          v79 = v41;
          sub_275329198(v40, v43, v41, v42, v22);

          sub_2753B65C8();
          sub_2753B65B8();
          v44 = MEMORY[0x277D65000];
          v16[5] = MEMORY[0x277D837D0];
          v16[6] = v44;
          v82 = v38;
          v16[2] = v38;
          v16[3] = v39;
          v80 = v39;
          sub_2753B6588();
          v20 = v16 + 2;
          break;
        default:
          v53 = *v21;
          v54 = *(v21 + 8);
          v55 = *(v21 + 16);
          v78 = *(v21 + 24);

          sub_2753B65C8();
          sub_2753B65B8();
          v56 = MEMORY[0x277D65000];
          v16[55] = MEMORY[0x277D837D0];
          v16[56] = v56;
          v82 = v53;
          v16[52] = v53;
          v16[53] = v54;
          v80 = v54;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 52);
          v57 = OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1(v57);
          v16[60] = &type metadata for MusicContent.MediaAPIContentType;
          v16[61] = sub_275362790();
          v79 = v55;
          *(v16 + 456) = v55;
          sub_2753B6588();
          break;
      }

      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
    v81 = v16[75];
    OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    sub_2753B65F8();
    sub_2753147B0(v82, v80, v79, v78, v22);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_316_0();
    sub_2753B6598();
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    v66 = OUTLINED_FUNCTION_300();
    v67(v66);
    sub_2753B65F8();
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v16[82] = v68;
    v16[64] = MEMORY[0x277D64FD0];
    v16[65] = MEMORY[0x277D64FC0];
    *v68 = v69;
    OUTLINED_FUNCTION_97_2(v68);
    OUTLINED_FUNCTION_175();

    return MEMORY[0x2821CC210](v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, a14);
  }

  else
  {
LABEL_5:

    OUTLINED_FUNCTION_285_0();
    OUTLINED_FUNCTION_175();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_275378A60()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  v2[83] = v0;

  OUTLINED_FUNCTION_157_2();
  if (v0)
  {
    v2[86] = v4;
    v2[87] = v5;
    v4();
    v6 = v2[79];
    v7 = v2[78];
    v8 = sub_275379204;
  }

  else
  {
    v2[84] = v4;
    v2[85] = v5;
    v4();
    v6 = v2[79];
    v7 = v2[78];
    v8 = sub_275378BE0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275378BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  (*(v16 + 672))(*(v16 + 608), *(v16 + 584));
  if (*(v16 + 504))
  {
    goto LABEL_2;
  }

  v26 = (v16 + 456);
  v27 = *(v16 + 640);
  v28 = *(v16 + 648);
  v29 = v28 + 1;
  v30 = 40 * v28 + 56;
  while (2)
  {
    if (v27 == v29)
    {
LABEL_2:

      OUTLINED_FUNCTION_285_0();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_175();

      return v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      *(v16 + 648) = v29;
      v31 = *(v16 + 528);
      v32 = *(v31 + v30 + 48);
      ++v29;
      v30 += 40;
      switch(v32 >> 5)
      {
        case 1u:
          v54 = *(v31 + v30 - 24);
          v55 = *(v31 + v30 - 16);
          v57 = *(v31 + v30 - 8);
          v56 = *(v31 + v30);

          sub_2753B65C8();
          sub_2753B65B8();
          v58 = MEMORY[0x277D65000];
          *(v16 + 320) = MEMORY[0x277D837D0];
          *(v16 + 328) = v58;
          v77 = v55;
          v78 = v54;
          *(v16 + 296) = v54;
          *(v16 + 304) = v55;

          sub_2753B6588();
          v59 = OUTLINED_FUNCTION_68_3((v16 + 296));
          OUTLINED_FUNCTION_266_0(v59);
          v60 = MEMORY[0x277D65080];
          *(v16 + 360) = MEMORY[0x277D84A28];
          *(v16 + 368) = v60;
          v76 = v57;
          *(v16 + 336) = v57;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v16 + 336));
          v61 = OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1(v61);
          *(v16 + 400) = &type metadata for MusicContent.LibraryContentType;
          *(v16 + 408) = sub_2753629A0();
          v75 = v56;
          *(v16 + 376) = v56;
          sub_2753B6588();
          v26 = (v16 + 376);
          break;
        case 2u:
          v41 = *(v31 + v30 - 24);
          v42 = *(v31 + v30 - 16);
          v44 = *(v31 + v30 - 8);
          v43 = *(v31 + v30);

          sub_2753B65C8();
          sub_2753B65B8();
          v45 = MEMORY[0x277D65000];
          *(v16 + 200) = MEMORY[0x277D837D0];
          *(v16 + 208) = v45;
          v77 = v42;
          v78 = v41;
          *(v16 + 176) = v41;
          *(v16 + 184) = v42;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v16 + 176));
          OUTLINED_FUNCTION_204_1();
          *(v16 + 240) = MEMORY[0x277D837D0];
          *(v16 + 248) = v45;
          v75 = v43;
          v76 = v44;
          *(v16 + 216) = v44;
          *(v16 + 224) = v43;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v16 + 216));
          OUTLINED_FUNCTION_27_3();
          sub_2753B65B8();
          *(v16 + 280) = &type metadata for MusicContent.CloudLibraryContentType;
          *(v16 + 288) = sub_275362BB0();
          *(v16 + 256) = v32 & 0x1F;
          sub_2753B6588();
          v26 = (v16 + 256);
          break;
        case 3u:
          v46 = *(v31 + v30 - 24);
          v47 = *(v31 + v30 - 16);
          v49 = *(v31 + v30 - 8);
          v48 = *(v31 + v30);

          sub_2753B65C8();
          sub_2753B65B8();
          v50 = MEMORY[0x277D65000];
          *(v16 + 80) = MEMORY[0x277D837D0];
          *(v16 + 88) = v50;
          v77 = v47;
          v78 = v46;
          *(v16 + 56) = v46;
          *(v16 + 64) = v47;

          sub_2753B6588();
          v51 = OUTLINED_FUNCTION_68_3((v16 + 56));
          OUTLINED_FUNCTION_320_0(v51);
          v52 = MEMORY[0x277D65080];
          *(v16 + 120) = MEMORY[0x277D84A28];
          *(v16 + 128) = v52;
          v76 = v49;
          *(v16 + 96) = v49;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v16 + 96));
          v53 = OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1(v53);
          *(v16 + 160) = &type metadata for MusicContent.PurchasableContentType;
          *(v16 + 168) = sub_275362DC0();
          v75 = v48;
          *(v16 + 136) = v48;
          sub_2753B6588();
          v26 = (v16 + 136);
          break;
        case 4u:
          continue;
        case 5u:
          v38 = *(v31 + v30 - 24);
          v39 = *(v31 + v30 - 16);
          v75 = *(v31 + v30);
          v76 = *(v31 + v30 - 8);
          sub_275329198(v38, v39, v76, v75, v32);

          sub_2753B65C8();
          sub_2753B65B8();
          v40 = MEMORY[0x277D65000];
          *(v16 + 40) = MEMORY[0x277D837D0];
          *(v16 + 48) = v40;
          v77 = v39;
          v78 = v38;
          *(v16 + 16) = v38;
          *(v16 + 24) = v39;
          sub_2753B6588();
          v26 = (v16 + 16);
          break;
        default:
          v33 = *(v31 + v30 - 24);
          v34 = *(v31 + v30 - 16);
          v35 = *(v31 + v30 - 8);
          v75 = *(v31 + v30);

          sub_2753B65C8();
          sub_2753B65B8();
          v36 = MEMORY[0x277D65000];
          *(v16 + 440) = MEMORY[0x277D837D0];
          *(v16 + 448) = v36;
          v77 = v34;
          v78 = v33;
          *(v16 + 416) = v33;
          *(v16 + 424) = v34;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v16 + 416));
          v37 = OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1(v37);
          *(v16 + 480) = &type metadata for MusicContent.MediaAPIContentType;
          *(v16 + 488) = sub_275362790();
          v76 = v35;
          *(v16 + 456) = v35;
          sub_2753B6588();
          break;
      }

      __swift_destroy_boxed_opaque_existential_1(v26);
      v74 = *(v16 + 600);
      OUTLINED_FUNCTION_247_0();
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      sub_2753B65F8();
      sub_2753147B0(v78, v77, v76, v75, v32);
      OUTLINED_FUNCTION_249_0();
      OUTLINED_FUNCTION_316_0();
      sub_2753B6598();
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      v62 = OUTLINED_FUNCTION_300();
      v63(v62);
      sub_2753B65F8();
      swift_task_alloc();
      OUTLINED_FUNCTION_64_0();
      *(v16 + 656) = v64;
      *(v16 + 512) = MEMORY[0x277D64FD0];
      *(v16 + 520) = MEMORY[0x277D64FC0];
      *v64 = v65;
      OUTLINED_FUNCTION_97_2(v64);
      OUTLINED_FUNCTION_175();

      return MEMORY[0x2821CC210](v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, a14);
    }
  }
}

void sub_275379204()
{
  OUTLINED_FUNCTION_66_0();
  v1 = v0[86];
  v2 = v0[76];
  v3 = v0[73];

  v1(v2, v3);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_179();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2753792C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 85) = a5;
  *(v5 + 1384) = a4;
  *(v5 + 1376) = a3;
  *(v5 + 1368) = a2;
  *(v5 + 1360) = a1;
  sub_2753868E4(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  *(v5 + 1392) = v6;
  *(v5 + 1400) = swift_task_alloc();
  sub_2753868E4(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  *(v5 + 1408) = v7;
  *(v5 + 1416) = *(v7 - 8);
  *(v5 + 1424) = swift_task_alloc();
  v8 = sub_2753B6608();
  *(v5 + 1432) = v8;
  *(v5 + 1440) = *(v8 - 8);
  *(v5 + 1448) = swift_task_alloc();
  *(v5 + 1456) = swift_task_alloc();
  *(v5 + 1464) = swift_task_alloc();
  *(v5 + 1472) = swift_task_alloc();
  *(v5 + 1480) = swift_task_alloc();
  *(v5 + 1488) = swift_task_alloc();
  *(v5 + 1496) = swift_task_alloc();
  *(v5 + 1504) = swift_task_alloc();
  *(v5 + 1512) = swift_task_alloc();
  v9 = sub_2753B65D8();
  *(v5 + 1520) = v9;
  *(v5 + 1528) = *(v9 - 8);
  *(v5 + 1536) = swift_task_alloc();
  *(v5 + 1544) = swift_task_alloc();
  *(v5 + 1552) = swift_task_alloc();
  *(v5 + 1560) = swift_task_alloc();
  *(v5 + 1568) = swift_task_alloc();
  *(v5 + 1576) = swift_task_alloc();
  *(v5 + 1584) = swift_task_alloc();
  *(v5 + 1592) = swift_task_alloc();
  *(v5 + 1600) = swift_task_alloc();
  *(v5 + 1608) = swift_task_alloc();
  *(v5 + 1616) = swift_task_alloc();
  *(v5 + 1624) = swift_task_alloc();
  *(v5 + 1632) = swift_task_alloc();
  *(v5 + 1640) = swift_task_alloc();
  *(v5 + 1648) = swift_task_alloc();
  *(v5 + 1656) = swift_task_alloc();
  *(v5 + 1664) = swift_task_alloc();
  *(v5 + 1672) = swift_task_alloc();
  sub_2753B6288();
  *(v5 + 1680) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v11 = sub_2753B70C8();
  *(v5 + 1688) = v11;
  *(v5 + 1696) = v10;

  return MEMORY[0x2822009F8](sub_275379684, v11, v10);
}

uint64_t sub_275379684()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(*(v0 + 1368), v0 + 408);
  v1 = *(v0 + 432);
  *(v0 + 1704) = v1;
  *(v0 + 1720) = __swift_project_boxed_opaque_existential_1((v0 + 408), v1);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v2 = swift_task_alloc();
  *(v0 + 1728) = v2;
  *v2 = v0;
  v2[1] = sub_275379770;
  OUTLINED_FUNCTION_86_1(*(v0 + 1376));

  return sub_27537633C();
}

uint64_t sub_275379770()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v4[217] = v0;

  if (v0)
  {
    v8 = v4[212];
    v9 = v4[211];
    v10 = sub_27537C2EC;
  }

  else
  {
    v4[218] = v1;
    v8 = v4[212];
    v9 = v4[211];
    v10 = sub_275379884;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_275379884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v14 = v13[218];
  v15 = v13[208];
  v16 = v13[191];
  v17 = MEMORY[0x277D83B88];
  v13[99] = MEMORY[0x277D83B88];
  v13[100] = MEMORY[0x277D65050];
  v13[96] = v14;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v13 + 96);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v13[219] = *(v16 + 32);
  v13[220] = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v18 = OUTLINED_FUNCTION_27();
  v19(v18);
  OUTLINED_FUNCTION_273_0();
  v20 = swift_task_alloc();
  v13[221] = v20;
  v13[91] = v17;
  OUTLINED_FUNCTION_142_1();
  sub_275388174(0, v21, v17, v22);
  v24 = v23;
  v13[92] = v23;
  sub_275388174(0, &qword_2809C0E08, MEMORY[0x277D837D0], v15);
  v13[222] = v25;
  v13[93] = v25;
  v13[94] = v24;
  v13[95] = v24;
  v13[81] = MEMORY[0x277D65058];
  v26 = sub_2753869F4();
  v13[82] = v26;
  v27 = sub_275386A88();
  v13[223] = v27;
  v13[83] = v27;
  v13[84] = v26;
  v13[85] = v26;
  *v20 = v13;
  v20[1] = sub_275379A34;
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2821CC210](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_275379A34()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1440);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[224] = v0;

  v9 = (v6 + 8);
  v3[225] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    (*v9)(v3[189], v3[179]);
    OUTLINED_FUNCTION_128_2();
    v12 = sub_27537C474;
  }

  else
  {
    v13 = v3[189];
    v14 = v3[179];
    v15 = *v9;
    v3[226] = *v9;
    v15(v13, v14);
    OUTLINED_FUNCTION_128_2();
    v12 = sub_275379B90;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_275379B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  memcpy((v32 + 88), (v32 + 16), 0x41uLL);
  __swift_destroy_boxed_opaque_existential_1((v32 + 408));
  v34 = *(v32 + 88);
  v33 = *(v32 + 96);
  *(v32 + 1816) = v34;
  v35 = *(v32 + 120);
  *(v32 + 1824) = *(v32 + 112);
  *(v32 + 1832) = v35;
  v36 = *(v32 + 128);
  v37 = *(v32 + 136);
  *(v32 + 1840) = *(v32 + 144);
  *(v32 + 86) = *(v32 + 152);
  if (v35 == 1)
  {
    OUTLINED_FUNCTION_296_0();
    v38 = *(v32 + 1384);
    v39 = *(v32 + 1376);

    sub_275314678();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v32 + 82) = 2;
    sub_2753B6298();
    sub_2753B62C8();
    *(v32 + 1296) = v39;
    *(v32 + 1304) = v38;
    sub_2753146CC();
    sub_2753B62B8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_10_6();
    v40 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v40, v41, v42, v43, v44);
    v45 = sub_275314720();
    v80 = OUTLINED_FUNCTION_124_3(v45);
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_284_0();
    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_103_3();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v80, a29, a30, a31, a32);
  }

  else
  {
    if (*(v32 + 104))
    {
      OUTLINED_FUNCTION_35_3();
      sub_275388564(v32 + 88, v55, v56, MEMORY[0x277D83D88], sub_275387F04);
      v57 = OUTLINED_FUNCTION_96_0();
      __swift_project_boxed_opaque_existential_1(v57, v58);
      if (v37)
      {
        v78 = *(v32 + 1776);
        v79 = *(v32 + 1784);
        v59 = *(v32 + 1752);
        sub_2753B65C8();
        sub_2753B65B8();
        *(v32 + 512) = MEMORY[0x277D83B88];
        *(v32 + 520) = MEMORY[0x277D65050];
        *(v32 + 488) = v34;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v32 + 488));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v60 = OUTLINED_FUNCTION_31_4();
        v59(v60);
        OUTLINED_FUNCTION_212_1();
        v61 = swift_task_alloc();
        *(v32 + 1880) = v61;
        *(v32 + 1024) = MEMORY[0x277D837D0];
        *(v32 + 1032) = &type metadata for MusicContent.MediaAPIContentType;
        *(v32 + 1040) = v78;
        *(v32 + 1048) = MEMORY[0x277D65008];
        *(v32 + 1056) = sub_2753627E8();
        *(v32 + 1064) = v79;
        *v61 = v32;
        v61[1] = sub_27537ABF8;
      }

      else
      {
        v66 = *(v32 + 1752);
        OUTLINED_FUNCTION_237_1();
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_236_1();
        *(v32 + 632) = MEMORY[0x277D83B88];
        *(v32 + 640) = MEMORY[0x277D65050];
        *(v32 + 608) = v36;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v32 + 608));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v67 = OUTLINED_FUNCTION_31_4();
        v66(v67);
        OUTLINED_FUNCTION_212_1();
        swift_task_alloc();
        OUTLINED_FUNCTION_64_0();
        *(v32 + 1864) = v68;
        *(v32 + 1328) = MEMORY[0x277D64FD0];
        *(v32 + 1336) = MEMORY[0x277D64FC0];
        *v68 = v69;
        v68[1] = sub_27537A6E8;
        OUTLINED_FUNCTION_195_0();
      }
    }

    else
    {
      v62 = *(v32 + 1752);
      __swift_project_boxed_opaque_existential_1(*(v32 + 1368), *(*(v32 + 1368) + 24));
      OUTLINED_FUNCTION_237_1();
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_236_1();
      *(v32 + 592) = MEMORY[0x277D83B88];
      *(v32 + 600) = MEMORY[0x277D65050];
      *(v32 + 568) = v33;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v32 + 568));
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      v63 = OUTLINED_FUNCTION_31_4();
      v62(v63);
      OUTLINED_FUNCTION_212_1();
      swift_task_alloc();
      OUTLINED_FUNCTION_64_0();
      *(v32 + 1848) = v64;
      *(v32 + 1344) = MEMORY[0x277D64FD0];
      *(v32 + 1352) = MEMORY[0x277D64FC0];
      *v64 = v65;
      v64[1] = sub_27537A1C8;
      OUTLINED_FUNCTION_195_0();
    }

    OUTLINED_FUNCTION_103_3();

    return MEMORY[0x2821CC210](v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_27537A1C8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[232] = v0;

  OUTLINED_FUNCTION_134_3();
  v7(v3[188], v3[179]);
  if (v0)
  {
    OUTLINED_FUNCTION_35_3();
    sub_275388564((v3 + 11), v8, v9, MEMORY[0x277D83D88], sub_275387F04);
    OUTLINED_FUNCTION_128_2();
    v12 = sub_27537C5E0;
  }

  else
  {
    OUTLINED_FUNCTION_128_2();
    v12 = sub_27537A320;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27537A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v34 = *(v32 + 1288);
  if (v34)
  {
    v35 = *(v32 + 1424);
    v36 = *(v32 + 1416);
    v37 = *(v32 + 1408);
    v38 = *(v32 + 1384);
    v39 = *(v32 + 1280);
    *(v32 + 1312) = *(v32 + 1376);
    *(v32 + 1320) = v38;
    v40 = *(v32 + 1824);
    *v35 = v39;
    *(v35 + 8) = v34;
    *(v35 + 16) = v40;
    (*(v36 + 104))(v35, *MEMORY[0x277D65168], v37);
    sub_2752FBA9C();

    OUTLINED_FUNCTION_257(v32 + 1312, v41, &type metadata for MusicContent);
    OUTLINED_FUNCTION_4_7();

    OUTLINED_FUNCTION_35_0();
  }

  else
  {
    OUTLINED_FUNCTION_296_0();
    OUTLINED_FUNCTION_35_3();
    sub_275388564(v32 + 88, v42, v43, MEMORY[0x277D83D88], sub_275387F04);
    sub_275314678();
    OUTLINED_FUNCTION_307_0();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v32 + 84) = v33;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_328_0(92);
    OUTLINED_FUNCTION_10_6();
    v44 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v44, v45, v46, v47, v48);
    v49 = sub_275314720();
    a28 = OUTLINED_FUNCTION_124_3(v49);
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_284_0();
    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_24_3();
  }

  OUTLINED_FUNCTION_103_3();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_27537A6E8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1872) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v5 + 1808))(v1[187], v1[179]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1696);
  v8 = v1[211];
  if (v0)
  {
    v9 = sub_27537C744;
  }

  else
  {
    v9 = sub_27537A860;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27537A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v34 = *(v32 + 1256);
  if (!v34)
  {
    goto LABEL_4;
  }

  if (*(v32 + 86))
  {

LABEL_4:
    OUTLINED_FUNCTION_296_0();
    sub_275314678();
    OUTLINED_FUNCTION_307_0();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v32 + 83) = v33;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_328_0(110);
    OUTLINED_FUNCTION_10_6();
    v35 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v35, v36, v37, v38, v39);
    v40 = sub_275314720();
    a28 = OUTLINED_FUNCTION_124_3(v40);
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_284_0();
    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_24_3();
    goto LABEL_6;
  }

  v41 = *(v32 + 1248);
  v42 = *(v32 + 1840);
  v43 = *(v32 + 1424);
  v44 = *(v32 + 1416);
  v45 = *(v32 + 1408);
  v46 = *(v32 + 1384);
  *(v32 + 1264) = *(v32 + 1376);
  *(v32 + 1272) = v46;
  *v43 = v41;
  v43[1] = v34;
  v43[2] = v42;
  (*(v44 + 104))(v43, *MEMORY[0x277D65170], v45);
  sub_2752FBA9C();

  OUTLINED_FUNCTION_257(v32 + 1264, v47, &type metadata for MusicContent);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_35_0();
LABEL_6:
  OUTLINED_FUNCTION_103_3();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_27537ABF8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1888) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v5 + 1808))(v1[186], v1[179]);
  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 1696);
  v8 = v1[211];
  if (v0)
  {
    v9 = sub_27537C8A8;
  }

  else
  {
    v9 = sub_27537AD70;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27537AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 456);
  if (v15)
  {
    v16 = *(v14 + 448);
    v17 = *(v14 + 480);
    v18 = *(v14 + 464);
    if (v17)
    {
      *(v14 + 1216) = *(v14 + 472);
      *(v14 + 1224) = v17;
      *(v14 + 1232) = 44;
      *(v14 + 1240) = 0xE100000000000000;
      sub_275329E48();
      v19 = sub_2753B72C8();
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_275384F68();
    v20 = v21;
    v22 = *(v21 + 16);
    if (v22 >= *(v21 + 24) >> 1)
    {
      OUTLINED_FUNCTION_321_0();
      v20 = v42;
    }

    *(v20 + 16) = v22 + 1;
    v23 = v20 + 56 * v22;
    *(v23 + 32) = v16;
    *(v23 + 40) = v15;
    *(v23 + 48) = v18;
    *(v23 + 56) = v19;
    *(v23 + 64) = 0;
    *(v23 + 72) = 0;
    *(v23 + 79) = 0;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  *(v14 + 1896) = v20;
  v24 = *(v14 + 1816);
  v25 = *(v14 + 1752);
  OUTLINED_FUNCTION_45_4(*(v14 + 1368));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v26 = MEMORY[0x277D83B88];
  *(v14 + 552) = MEMORY[0x277D83B88];
  *(v14 + 560) = MEMORY[0x277D65050];
  *(v14 + 528) = v24;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v14 + 528));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v27 = OUTLINED_FUNCTION_31_4();
  v25(v27);
  OUTLINED_FUNCTION_212_1();
  v28 = swift_task_alloc();
  *(v14 + 216) = MEMORY[0x277D837D0];
  *(v14 + 224) = MEMORY[0x277D84A28];
  *(v14 + 232) = &type metadata for MusicContent.LibraryContentType;
  *(v14 + 1904) = v28;
  *(v14 + 240) = v26;
  *(v14 + 248) = &type metadata for MusicContent.CloudStatus;
  *(v14 + 256) = MEMORY[0x277D839B0];
  v29 = MEMORY[0x277D65088];
  *(v14 + 360) = MEMORY[0x277D65008];
  *(v14 + 368) = v29;
  v30 = sub_2753629F8();
  v31 = MEMORY[0x277D65058];
  *(v14 + 376) = v30;
  *(v14 + 384) = v31;
  v32 = sub_275361784();
  *(v14 + 1912) = v32;
  v33 = MEMORY[0x277D65048];
  *(v14 + 392) = v32;
  *(v14 + 400) = v33;
  *v28 = v14;
  v28[1] = sub_27537AFF4;
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC208](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_27537AFF4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  v3[240] = v5;
  v3[241] = v0;

  OUTLINED_FUNCTION_134_3();
  v6(v3[185], v3[179]);
  if (v0)
  {

    OUTLINED_FUNCTION_128_2();
    v9 = sub_27537CA0C;
  }

  else
  {
    OUTLINED_FUNCTION_128_2();
    v9 = sub_27537B128;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27537B128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = v14;
  v16 = v14[240];
  v17 = *(v16 + 16);
  if (v17)
  {
    v50 = v14;
    v18 = v14[237];
    v19 = (v16 + 73);
    do
    {
      v20 = *(v19 - 33);
      v52 = *(v19 - 25);
      v54 = *(v19 - 41);
      v21 = *(v19 - 17);
      v22 = *(v19 - 9);
      v23 = *(v19 - 1);
      if (*v19)
      {
        v24 = 256;
      }

      else
      {
        v24 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_50_1();
        sub_275384F68();
        v18 = v27;
      }

      v25 = *(v18 + 16);
      if (v25 >= *(v18 + 24) >> 1)
      {
        sub_275384F68();
        v18 = v28;
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 56 * v25;
      *(v26 + 32) = v54;
      *(v26 + 40) = v20;
      *(v26 + 48) = v52;
      *(v26 + 56) = v21;
      *(v26 + 64) = v22;
      *(v26 + 72) = v24 | v23;
      *(v26 + 82) = 32;
      *(v26 + 80) = 0;
      v19 += 48;
      --v17;
    }

    while (v17);
    v15 = v50;
  }

  else
  {
    v18 = v14[237];
  }

  v15[242] = v18;
  v51 = v15[239];
  v29 = v15[227];
  v30 = v15[219];
  v31 = v15[171];

  v55 = v31[4];
  v53 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v32 = MEMORY[0x277D83B88];
  v15[89] = MEMORY[0x277D83B88];
  v15[90] = MEMORY[0x277D65050];
  v15[86] = v29;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v15 + 86);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v33 = OUTLINED_FUNCTION_78_2();
  v30(v33);
  OUTLINED_FUNCTION_199_1();
  sub_2753B65F8();
  v34 = swift_task_alloc();
  v15[243] = v34;
  v35 = MEMORY[0x277D837D0];
  v15[39] = MEMORY[0x277D837D0];
  v15[40] = v35;
  v15[41] = &type metadata for MusicContent.CloudLibraryContentType;
  v15[42] = v32;
  v36 = MEMORY[0x277D839B0];
  v15[43] = &type metadata for MusicContent.CloudStatus;
  v15[44] = v36;
  v37 = MEMORY[0x277D65008];
  v15[33] = MEMORY[0x277D65008];
  v15[34] = v37;
  v38 = sub_275362C08();
  v39 = MEMORY[0x277D65058];
  v15[35] = v38;
  v15[36] = v39;
  v40 = MEMORY[0x277D65048];
  v15[37] = v51;
  v15[38] = v40;
  *v34 = v15;
  v34[1] = sub_27537B3DC;
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v41, v42, v43, v44, v45, v46, v47, v48, v51, v53, v55, a12, a13, a14);
}

uint64_t sub_27537B3DC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[244] = v0;

  OUTLINED_FUNCTION_134_3();
  v7(v3[184], v3[179]);
  if (v0)
  {

    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537CB70;
  }

  else
  {
    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537B504;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27537B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int128 a10, uint64_t a12, uint64_t a13, uint64_t _20, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 1936);
  if (*(v14 + 168))
  {
    a10 = *(v14 + 168);
    v16 = *(v14 + 160);
    v17 = *(v14 + 184);
    v18 = *(v14 + 200);
    v19 = *(v14 + 192);
    v20 = (*(v14 + 208) << 8) | ((HIBYTE(*(v14 + 208)) & 1) << 16) | 0x400000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v14 + 1936);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v15 = v39;
    }

    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    v24 = a10;
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_94_1(v22);
      sub_275384F68();
      v24 = a10;
      v15 = v40;
    }

    *(v15 + 16) = v23 + 1;
    v25 = v15 + 56 * v23;
    *(v25 + 32) = v16;
    *(v25 + 40) = v24;
    *(v25 + 56) = v17;
    *(v25 + 64) = v19;
    *(v25 + 72) = v18;
    *(v25 + 82) = BYTE2(v20);
    *(v25 + 80) = v20;
  }

  *(v14 + 1960) = v15;
  v26 = *(v14 + 1816);
  v27 = *(v14 + 1752);
  v28 = *(v14 + 1368);
  *&a10 = v28[4];
  OUTLINED_FUNCTION_107_3(v28);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  *(v14 + 832) = MEMORY[0x277D83B88];
  *(v14 + 840) = MEMORY[0x277D65050];
  *(v14 + 808) = v26;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v14 + 808));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v29 = OUTLINED_FUNCTION_31_4();
  v27(v29);
  OUTLINED_FUNCTION_212_1();
  v30 = swift_task_alloc();
  *(v14 + 1968) = v30;
  *(v14 + 1072) = MEMORY[0x277D837D0];
  *(v14 + 1080) = MEMORY[0x277D84A28];
  *(v14 + 1088) = &type metadata for MusicContent.PurchasableContentType;
  *(v14 + 1096) = MEMORY[0x277D65008];
  *(v14 + 1104) = MEMORY[0x277D65088];
  *(v14 + 1112) = sub_275362E18();
  *v30 = v14;
  v30[1] = sub_27537B738;
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v31, v32, v33, v34, v35, v36, v37, v38, a10, *(&a10 + 1), a12, a13, _20, a14);
}

uint64_t sub_27537B738()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[247] = v0;

  OUTLINED_FUNCTION_134_3();
  v7(v3[183], v3[179]);
  if (v0)
  {

    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537CCD4;
  }

  else
  {
    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537B860;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27537B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a12, uint64_t a13, uint64_t _20, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 1960);
  if (*(v14 + 968))
  {
    a10 = *(v14 + 968);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v14 + 1960);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v19 = isUniquelyReferenced_nonNull_native;
    }

    v20 = *(v19 + 24);
    v21 = a10;
    if (*(v19 + 16) >= v20 >> 1)
    {
      OUTLINED_FUNCTION_94_1(v20);
      sub_275384F68();
      v21 = a10;
      v19 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_194_0(v21, isUniquelyReferenced_nonNull_native, v17, v18, v19);
    *(v22 + 82) = 96;
    *(v22 + 80) = 0;
  }

  *(v14 + 1984) = v15;
  v23 = *(v14 + 1816);
  v24 = *(v14 + 1752);
  v25 = *(v14 + 1368);
  a10.n128_u64[0] = v25[4];
  OUTLINED_FUNCTION_107_3(v25);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  *(v14 + 872) = MEMORY[0x277D83B88];
  *(v14 + 880) = MEMORY[0x277D65050];
  *(v14 + 848) = v23;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v14 + 848));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v26 = OUTLINED_FUNCTION_31_4();
  v24(v26);
  OUTLINED_FUNCTION_212_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v14 + 1992) = v27;
  *v27 = v28;
  v27[1] = sub_27537BA18;
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v29, v30, v31, v32, v33, v34, v35, v36, a10.n128_u64[0], a10.n128_u64[1], a12, a13, _20, a14);
}

uint64_t sub_27537BA18()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[250] = v0;

  OUTLINED_FUNCTION_134_3();
  v7(v3[182], v3[179]);
  if (v0)
  {

    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537CE38;
  }

  else
  {
    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537BB40;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27537BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v15 = *(v14 + 1984);
  if (*(v14 + 1000))
  {
    a12 = *(v14 + 1000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v14 + 1984);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v19 = isUniquelyReferenced_nonNull_native;
    }

    v20 = *(v19 + 24);
    v21 = a12;
    if (*(v19 + 16) >= v20 >> 1)
    {
      OUTLINED_FUNCTION_94_1(v20);
      sub_275384F68();
      v21 = a12;
      v19 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_194_0(v21, isUniquelyReferenced_nonNull_native, v17, v18, v19);
    *(v22 + 82) = 0x80;
    *(v22 + 80) = 0;
  }

  *(v14 + 2008) = v15;
  v23 = *(v14 + 1816);
  v38 = *(v14 + 1784);
  v24 = *(v14 + 1776);
  v25 = *(v14 + 1752);
  OUTLINED_FUNCTION_45_4(*(v14 + 1368));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  *(v14 + 912) = MEMORY[0x277D83B88];
  *(v14 + 920) = MEMORY[0x277D65050];
  *(v14 + 888) = v23;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v14 + 888));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v26 = OUTLINED_FUNCTION_31_4();
  v25(v26);
  OUTLINED_FUNCTION_212_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v14 + 1136) = MEMORY[0x277D837D0];
  *(v14 + 2016) = v27;
  *(v14 + 1144) = v24;
  *(v14 + 1120) = MEMORY[0x277D65008];
  *(v14 + 1128) = v38;
  *v27 = v28;
  v27[1] = sub_27537BD2C;
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC210](v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a12.n128_u64[0], a12.n128_u64[1], a13, a14);
}

uint64_t sub_27537BD2C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[253] = v0;

  OUTLINED_FUNCTION_134_3();
  v7(v3[181], v3[179]);
  if (v0)
  {

    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537CF9C;
  }

  else
  {
    OUTLINED_FUNCTION_128_2();
    v10 = sub_27537BE54;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27537BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v33 = *(v32 + 936);
  if (v33)
  {
    v34 = *(v32 + 928);
    v35 = *(v32 + 952);
    if (v35)
    {
      *(v32 + 1184) = *(v32 + 944);
      *(v32 + 1192) = v35;
      *(v32 + 1200) = 44;
      *(v32 + 1208) = 0xE100000000000000;
      sub_275329E48();
      v36 = sub_2753B72C8();
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v32 + 2008);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v37 = v63;
    }

    v47 = *(v37 + 16);
    if (v47 >= *(v37 + 24) >> 1)
    {
      OUTLINED_FUNCTION_321_0();
      v37 = v64;
    }

    *(v37 + 16) = v47 + 1;
    v48 = v37 + 56 * v47;
    *(v48 + 32) = v34;
    *(v48 + 40) = v33;
    *(v48 + 48) = v36;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    *(v48 + 72) = 0;
    *(v48 + 82) = -96;
    *(v48 + 80) = 0;
  }

  else
  {
    v37 = *(v32 + 2008);
    if (!*(v37 + 16))
    {
      OUTLINED_FUNCTION_296_0();
      v38 = *(v32 + 1384);
      v39 = *(v32 + 1376);

      sub_275314678();
      OUTLINED_FUNCTION_216_1();
      sub_2753B62D8();
      OUTLINED_FUNCTION_67();
      sub_2753B62C8();
      *(v32 + 81) = 1;
      sub_2753B6298();
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_328_0(34);
      *(v32 + 1152) = v39;
      *(v32 + 1160) = v38;
      sub_2753146CC();
      sub_2753B62B8();
      OUTLINED_FUNCTION_67();
      sub_2753B62C8();
      OUTLINED_FUNCTION_10_6();
      v40 = OUTLINED_FUNCTION_200_0();
      sub_2753868E4(v40, v41, v42, v43, v44);
      v45 = sub_275314720();
      a28 = OUTLINED_FUNCTION_124_3(v45);
      OUTLINED_FUNCTION_64_4();
      sub_2753B62E8();
      swift_willThrow();
      OUTLINED_FUNCTION_284_0();
      OUTLINED_FUNCTION_15_5();

      OUTLINED_FUNCTION_24_3();
      goto LABEL_13;
    }
  }

  v49 = *(v32 + 1424);
  v50 = *(v32 + 1416);
  v51 = *(v32 + 1408);
  v52 = *(v32 + 1384);
  *(v32 + 1168) = *(v32 + 1376);
  *(v32 + 1176) = v52;
  *v49 = v37;
  (*(v50 + 104))(v49, *MEMORY[0x277D65178], v51);
  sub_2752FBA9C();

  OUTLINED_FUNCTION_257(v32 + 1168, v53, &type metadata for MusicContent);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_35_0();
LABEL_13:
  OUTLINED_FUNCTION_103_3();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_27537C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v33 = OUTLINED_FUNCTION_36_3();
  v34(v33);
  __swift_destroy_boxed_opaque_existential_1((v32 + 408));
  v44 = *(v32 + 1736);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v44, a30, a31, a32);
}

uint64_t sub_27537C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  __swift_destroy_boxed_opaque_existential_1((v32 + 408));
  v42 = *(v32 + 1792);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 1856);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 1872);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 1888);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 1928);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 1952);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 1976);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537CE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 2000);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();

  v42 = *(v32 + 2024);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v42, a30, a31, a32);
}

uint64_t sub_27537D100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_27537D164(uint64_t a1)
{
  if (!qword_2809C2CD8)
  {
    sub_2753868E4(255, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C2CD8);
    }
  }
}

uint64_t sub_27537D200(uint64_t a1, uint64_t a2)
{
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, MEMORY[0x277D65188]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27537D288()
{
  result = qword_2809C2CE0;
  if (!qword_2809C2CE0)
  {
    sub_275388174(255, &qword_2809C0E08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CE0);
  }

  return result;
}

uint64_t sub_27537D31C(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_27537D350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_27537D3C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_27537D430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_27537D4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_27537D510@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27537D31C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_27537D53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27537D344(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_27537D658(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6EF8();
}

uint64_t sub_27537D6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6EE8();
}

uint64_t sub_27537D784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6ED8();
}

uint64_t sub_27537D820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821CC280](a1, WitnessTable);
}

uint64_t sub_27537D884(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6F08();
}

uint64_t MusicContentStorage.Operations.registrations(for:followRedirect:)()
{
  OUTLINED_FUNCTION_3();
  v2[215] = v1;
  v2[214] = v4;
  v5 = sub_2753B6AD8();
  v2[216] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v2[217] = v6;
  v2[218] = OUTLINED_FUNCTION_138_0();
  sub_275386EA0(0, &qword_2809C2D28, MEMORY[0x277D64F00]);
  v2[219] = v7;
  OUTLINED_FUNCTION_75(v7);
  v2[220] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_10_6();
  sub_2753868E4(0, v8, v9, v10, MEMORY[0x277D64F00]);
  v2[221] = v11;
  OUTLINED_FUNCTION_75(v11);
  v2[222] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_146_2();
  sub_2753868E4(0, v12, v0, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v2[223] = v13;
  OUTLINED_FUNCTION_17_1(v13);
  v2[224] = v14;
  v2[225] = OUTLINED_FUNCTION_330_0();
  v2[226] = swift_task_alloc();
  v2[227] = swift_task_alloc();
  v15 = sub_2753B6608();
  v2[228] = v15;
  OUTLINED_FUNCTION_17_1(v15);
  v2[229] = v16;
  v2[230] = OUTLINED_FUNCTION_330_0();
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();
  v17 = sub_2753B65D8();
  v2[233] = v17;
  OUTLINED_FUNCTION_17_1(v17);
  v2[234] = v18;
  v2[235] = OUTLINED_FUNCTION_330_0();
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  OUTLINED_FUNCTION_144_2();
  sub_27538685C(0, v19, &qword_2809C1310, v20);
  OUTLINED_FUNCTION_75(v21);
  v2[241] = OUTLINED_FUNCTION_138_0();
  sub_2753868E4(0, &qword_2809C1310, v0, &type metadata for MusicContent, v3);
  v2[242] = v22;
  OUTLINED_FUNCTION_17_1(v22);
  v2[243] = v23;
  v2[244] = OUTLINED_FUNCTION_187_1();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  sub_2753B6288();
  v2[249] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v24, 255, v25);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v2[250] = v26;
  v2[251] = v27;
  v28 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_27537DCF0()
{
  v1 = *(v0 + 1712);
  sub_275314624();
  *(v0 + 1704) = sub_2753B6C98();
  v2 = *(v1 + 16);
  sub_27538672C(0, &qword_2809C2D38, MEMORY[0x277D834F8]);
  OUTLINED_FUNCTION_304_0();
  sub_2753B6C88();
  sub_275385044();
  v4 = v3;
  if (v2)
  {
    v5 = *(v0 + 1944);
    v103 = (v5 + 32);
    v101 = v5;
    v99 = v0 + 1504;
    v100 = v5 + 8;
    v98 = v5 + 40;
    v6 = (*(v0 + 1712) + 40);
    do
    {
      v105 = v2;
      v7 = *(v0 + 1928);
      v9 = *(v6 - 1);
      v8 = *v6;
      swift_bridgeObjectRetain_n();
      v10 = sub_2753B6558();
      *(v0 + 1536) = v9;
      *(v0 + 1544) = v8;
      v11 = OUTLINED_FUNCTION_6_3();
      sub_27538672C(v11, &qword_2809C2CD0, v12);
      sub_2753B64A8();

      OUTLINED_FUNCTION_332_0(v7);
      if (v13)
      {
        OUTLINED_FUNCTION_1_8();
        sub_275388564(v14, &qword_2809C2CC8, &qword_2809C1310, v15, sub_27538685C);
        v16 = OUTLINED_FUNCTION_214_1();
        v10(v16);
        v18 = *(v4 + 16);
        v17 = *(v4 + 24);
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_94_1(v17);
          sub_275385044();
          v4 = v63;
        }

        *(v4 + 16) = v18 + 1;
        v19 = v4 + 16 * v18;
        *(v19 + 32) = v9;
        *(v19 + 40) = v8;
      }

      else
      {
        v104 = v4;
        v20 = *(v0 + 1984);
        v102 = *v103;
        (*v103)(v20, *(v0 + 1928), *(v0 + 1936));
        v21 = OUTLINED_FUNCTION_214_1();
        v10(v21);
        v22 = OUTLINED_FUNCTION_76();
        v23(v22);
        OUTLINED_FUNCTION_329_0();
        OUTLINED_FUNCTION_5_6();
        sub_27538436C(v9, v8, v24, sub_275384B18);
        OUTLINED_FUNCTION_161_1();
        if (__OFADD__(v27, v28))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return MEMORY[0x2821CC220](v25);
        }

        v29 = v25;
        v30 = v26;
        v31 = OUTLINED_FUNCTION_12_5();
        sub_27538672C(v31, &qword_2809C2DA0, v32);
        v33 = sub_2753B7478();
        if (v33)
        {
          OUTLINED_FUNCTION_5_6();
          v33 = sub_27538436C(v9, v8, v41, sub_275384B18);
          if ((v30 & 1) != (v34 & 1))
          {

            return sub_2753B7768();
          }

          v29 = v33;
        }

        v42 = *(v0 + 1976);
        v43 = *(v0 + 1936);
        if (v30)
        {

          v45 = v20;
          v53 = OUTLINED_FUNCTION_279_0(v44, v46, v47, v48, v49, v50, v51, v52, v98, v99, v100, v101);
          (*(v8 + 40))(v53, v42, v43);
          v54 = OUTLINED_FUNCTION_277_0();
          v55(v54);
        }

        else
        {
          v45 = v20;
          *(v20 + 8 * (v29 >> 6) + 64) |= 1 << v29;
          v56 = (*(v20 + 48) + 16 * v29);
          *v56 = v9;
          v56[1] = v8;
          v57 = OUTLINED_FUNCTION_279_0(v33, v34, v35, v36, v37, v38, v39, v40, v98, v99, v100, v101);
          v102(v57, v42, v43);
          v58 = OUTLINED_FUNCTION_277_0();
          v25 = v59(v58);
          v60 = *(v20 + 16);
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_25;
          }

          *(v20 + 16) = v62;
        }

        *(v0 + 1704) = v45;
        v4 = v104;
      }

      v6 += 2;
      v2 = v105 - 1;
    }

    while (v105 != 1);
  }

  *(v0 + 2016) = v4;
  v64 = *(v0 + 1920);
  v65 = *(v0 + 1912);
  v66 = *(v0 + 1872);
  v67 = *(v0 + 1864);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1720), *(*(v0 + 1720) + 24));
  sub_2753B65C8();
  sub_2753B65B8();
  *(v0 + 1688) = v4;
  OUTLINED_FUNCTION_11_5();
  sub_275388174(0, v68, v69, v70);
  sub_2753867C8();

  OUTLINED_FUNCTION_256(v0 + 1688);
  sub_2753B65B8();
  *(v0 + 1680) = v4;
  OUTLINED_FUNCTION_256(v0 + 1680);
  sub_2753B65B8();
  *(v0 + 1656) = v4;
  OUTLINED_FUNCTION_256(v0 + 1656);
  sub_2753B65B8();
  *(v0 + 1648) = v4;
  OUTLINED_FUNCTION_256(v0 + 1648);
  sub_2753B65B8();
  *(v0 + 1624) = v4;
  OUTLINED_FUNCTION_256(v0 + 1624);
  sub_2753B65B8();
  *(v0 + 1616) = v4;
  OUTLINED_FUNCTION_256(v0 + 1616);

  sub_2753B65B8();
  v71 = *(v66 + 32);
  *(v0 + 2024) = v71;
  *(v0 + 2032) = (v66 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v71(v65, v64, v67);
  sub_2753B65F8();
  v72 = swift_task_alloc();
  *(v0 + 2040) = v72;
  v73 = MEMORY[0x277D83B88];
  *(v0 + 1056) = MEMORY[0x277D83B88];
  *(v0 + 1064) = MEMORY[0x277D64FD0];
  v74 = MEMORY[0x277D83D88];
  sub_275388174(0, &qword_2809C2CE8, &type metadata for MusicContent.ContentType, MEMORY[0x277D83D88]);
  *(v0 + 1072) = v75;
  sub_275388174(0, &qword_2809C2D08, v73, v74);
  v77 = v76;
  *(v0 + 1080) = v76;
  sub_275388174(0, &qword_2809C0E08, MEMORY[0x277D837D0], v74);
  v79 = v78;
  *(v0 + 1088) = v78;
  *(v0 + 1096) = v77;
  *(v0 + 1104) = v77;
  sub_27538685C(0, &qword_2809C2D48, &qword_2809C2D50, type metadata accessor for MusicContentStorage.Operations.ContentRow.Source);
  *(v0 + 1112) = v80;
  *(v0 + 1120) = v79;
  *(v0 + 1128) = v79;
  v81 = OUTLINED_FUNCTION_200_0();
  sub_275388174(v81, v82, v83, v84);
  *(v0 + 1136) = v85;
  *(v0 + 1144) = v79;
  *(v0 + 1152) = v79;
  *(v0 + 1160) = v77;
  *(v0 + 1168) = v77;
  v86 = OUTLINED_FUNCTION_200_0();
  sub_275388174(v86, v87, v88, v89);
  *(v0 + 1176) = v90;
  OUTLINED_FUNCTION_21_4();
  sub_2753868E4(0, v91, v92, v93, type metadata accessor for MusicContentStorage.Operations.ContentRow);
  *(v0 + 1184) = MEMORY[0x277D65058];
  *(v0 + 1192) = MEMORY[0x277D64FC0];
  *(v0 + 1200) = sub_275386964(&qword_2809C2D68, sub_275356078, MEMORY[0x277D650A0]);
  v94 = sub_2753869F4();
  *(v0 + 1208) = v94;
  v95 = sub_275386A88();
  *(v0 + 1216) = v95;
  *(v0 + 1224) = v94;
  *(v0 + 1232) = v94;
  *(v0 + 1240) = sub_275386B1C();
  *(v0 + 1248) = v95;
  *(v0 + 1256) = v95;
  *(v0 + 1264) = sub_275386C48();
  *(v0 + 1272) = v95;
  *(v0 + 1280) = v95;
  *(v0 + 1288) = v94;
  *(v0 + 1296) = v94;
  *(v0 + 1304) = sub_275386CDC();
  *v72 = v0;
  v72[1] = sub_27537E530;
  OUTLINED_FUNCTION_309_0();

  return MEMORY[0x2821CC220](v25);
}

uint64_t sub_27537E530()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  v3[256] = v5;
  v3[257] = v0;

  v6 = OUTLINED_FUNCTION_286_0();
  if (v0)
  {
    v8(v6);

    OUTLINED_FUNCTION_225_1();
    v11 = sub_275380C08;
  }

  else
  {
    v3[258] = v8;
    v3[259] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v6);
    OUTLINED_FUNCTION_225_1();
    v11 = sub_27537E674;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

void sub_27537E674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, const char *a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t _D0, uint64_t a34)
{
  OUTLINED_FUNCTION_311_0();
  v44 = *(v34 + 2048);
  v45 = *(v44 + 16);
  *(v34 + 2080) = v45;
  if (v45)
  {
    v46 = 0;
    v47 = (v34 + 1368);
    *(v34 + 220) = *MEMORY[0x277D65178];
    a11 = " during regstration lookup";
    *(v34 + 428) = *MEMORY[0x277D65168];
    *(v34 + 636) = *MEMORY[0x277D65170];
    v48 = *(v34 + 2056);
    a24 = 2;
    while (1)
    {
      *(v34 + 2088) = v46;
      if (v46 >= v45)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_174_1(v44, v46);
      v50 = *(v34 + 440);
      v49 = *(v34 + 448);
      *(v34 + 2096) = v50;
      *(v34 + 2104) = v49;
      v51 = *(v34 + 1704);
      if (*(v51 + 16))
      {
        sub_275386D70(v34 + 432, v34 + 640);

        OUTLINED_FUNCTION_5_6();
        v53 = sub_27538436C(v50, v49, v52, sub_275384B18);
        if (v54)
        {
          a26.n128_u64[0] = v49;
          LODWORD(a28) = *(v34 + 220);
          v55 = *(v34 + 1944);
          v56 = *(v34 + 1816);
          v57 = *(v34 + 1792);
          v58 = *(v34 + 1784);
          v180 = *(v55 + 72);
          v183 = *(v55 + 16);
          v183(*(v34 + 1968), *(v51 + 56) + v180 * v53, *(v34 + 1936));
          OUTLINED_FUNCTION_199_1();
          sub_2753B6A58();
          (*(v57 + 88))(v56, v58);
          v59 = *(v34 + 1816);
          OUTLINED_FUNCTION_215_1();
          if (v61 != a28)
          {
            (*(v60 + 8))(v59);
            OUTLINED_FUNCTION_48_3();
            OUTLINED_FUNCTION_229_1();
            OUTLINED_FUNCTION_133_3();
            OUTLINED_FUNCTION_224();
            return;
          }

          v62 = OUTLINED_FUNCTION_126_0();
          v63(v62);
          OUTLINED_FUNCTION_208_1();
          sub_2753811B8(v34 + 224, (v34 + 1312));
          if (v48)
          {
            v156 = OUTLINED_FUNCTION_49_3();
            v157(v156);

            goto LABEL_50;
          }

          v174 = *(v34 + 220);
          v64 = *(v34 + 1968);
          a28 = *(v34 + 1960);
          v177 = *(v34 + 1936);
          v65 = *(v34 + 1808);
          v66 = *(v34 + 1792);
          v171 = *(v34 + 1784);
          sub_275386E0C(v34 + 432);
          v67 = *(v34 + 1344);
          v68 = *(v34 + 1352);
          v168 = *(v34 + 1360);
          v35 = v50;
          v69 = *(v34 + 1362);
          v70 = OUTLINED_FUNCTION_9_5();
          sub_275388174(v70, &qword_2809C1418, &type metadata for MusicContent.QualifiedIdentifier, v71);
          a13 = *(v34 + 1328);
          a14 = *(v34 + 1312);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_2753BE420;
          *(v72 + 32) = a14;
          *(v72 + 48) = a13;
          *(v72 + 64) = v67;
          *(v72 + 72) = v68;
          *(v72 + 82) = v69;
          *(v72 + 80) = v168;
          a30 = v59;
          sub_275365400(v72);
          *v65 = v59;
          (*(v66 + 104))(v65, v174, v171);
          sub_2753B6A68();
          v183(a28, v64, v177);
          OUTLINED_FUNCTION_329_0();
          *(v34 + 1696) = v64;
          OUTLINED_FUNCTION_5_6();
          v36 = a26.n128_u64[0];
          sub_27538436C(v35, a26.n128_i64[0], v73, sub_275384B18);
          OUTLINED_FUNCTION_161_1();
          if (__OFADD__(v74, v75))
          {
            goto LABEL_57;
          }

          v76 = v44;
          v77 = v37;
          v78 = OUTLINED_FUNCTION_12_5();
          sub_27538672C(v78, &qword_2809C2DA0, v79);
          if (sub_2753B7478())
          {
            OUTLINED_FUNCTION_5_6();
            sub_27538436C(v35, a26.n128_i64[0], v80, sub_275384B18);
            OUTLINED_FUNCTION_154_2();
            if (!v82)
            {
              goto LABEL_45;
            }

            v76 = v81;
          }

          v83 = *(v34 + 1696);
          OUTLINED_FUNCTION_220_1();
          if (v77)
          {
            (*(v84 + 40))(v83[7] + v76 * v180);
          }

          else
          {
            v83[(v76 >> 6) + 8] |= 1 << v76;
            v119 = (v83[6] + 16 * v76);
            *v119 = v35;
            v119[1] = a26.n128_u64[0];
            v44 = (*(v84 + 32))(v83[7] + v76 * v180);
            v120 = v83[2];
            v98 = __OFADD__(v120, 1);
            v121 = v120 + 1;
            if (v98)
            {
              goto LABEL_58;
            }

            v83[2] = v121;
          }

          v116 = *(v34 + 1968);
          v118 = *(v34 + 1944);
          v117 = *(v34 + 1936);
          goto LABEL_32;
        }
      }

      else
      {
        sub_275386D70(v34 + 432, v34 + 16);
      }

      if ((*(v34 + 472) & 1) == 0)
      {
        v145 = OUTLINED_FUNCTION_62_3();
        v146 = *(v34 + 464);
        OUTLINED_FUNCTION_107_3(v145);
        OUTLINED_FUNCTION_237_1();
        OUTLINED_FUNCTION_236_1();
        *(v34 + 1448) = MEMORY[0x277D83B88];
        *(v34 + 1456) = MEMORY[0x277D65050];
        *(v34 + 1424) = v146;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v34 + 1424));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v147 = OUTLINED_FUNCTION_31_4();
        v48(v147);
        OUTLINED_FUNCTION_212_1();
        swift_task_alloc();
        OUTLINED_FUNCTION_64_0();
        *(v34 + 2112) = v148;
        *(v34 + 1664) = MEMORY[0x277D64FD0];
        *(v34 + 1672) = MEMORY[0x277D64FC0];
        *v148 = v149;
        OUTLINED_FUNCTION_29_4(v148);
LABEL_41:
        OUTLINED_FUNCTION_195_0();
        OUTLINED_FUNCTION_224();

LABEL_59:
        MEMORY[0x2821CC210](v44, v37, v38, v39, v40, v41, v42, v43, a9, a10, " during regstration lookup", v34 + 1696, a13, *(&a13 + 1));
        return;
      }

      if ((*(v34 + 504) & 1) == 0)
      {
        v150 = OUTLINED_FUNCTION_61_2();
        v151 = *(v34 + 496);
        OUTLINED_FUNCTION_107_3(v150);
        OUTLINED_FUNCTION_237_1();
        OUTLINED_FUNCTION_236_1();
        *(v34 + 1488) = MEMORY[0x277D83B88];
        *(v34 + 1496) = MEMORY[0x277D65050];
        *(v34 + 1464) = v151;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v34 + 1464));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v152 = OUTLINED_FUNCTION_31_4();
        v48(v152);
        OUTLINED_FUNCTION_212_1();
        swift_task_alloc();
        OUTLINED_FUNCTION_64_0();
        *(v34 + 2128) = v153;
        *(v34 + 1632) = MEMORY[0x277D64FD0];
        *(v34 + 1640) = MEMORY[0x277D64FC0];
        *v153 = v154;
        OUTLINED_FUNCTION_28_4(v153);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_263_0();
      sub_2753811B8(v34 + 848, v47);
      if (v48)
      {

LABEL_50:

        sub_275386E0C(v34 + 432);
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_207_1();
      v36 = *(v34 + 1416);
      v85 = OUTLINED_FUNCTION_9_5();
      sub_275388174(v85, &qword_2809C1418, &type metadata for MusicContent.QualifiedIdentifier, v86);
      v88 = OUTLINED_FUNCTION_206_1(v87);
      OUTLINED_FUNCTION_82_3(v88, xmmword_2753BE420, a26);
      v90 = OUTLINED_FUNCTION_120_2(v89);
      v91(v90);
      v92 = *(v34 + 1808);
      OUTLINED_FUNCTION_83_3();
      v93(v92);
      sub_2752FBA9C();

      sub_2753B6A78();
      v35 = *(v34 + 1704);
      swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 1600) = v35;
      OUTLINED_FUNCTION_5_6();
      v94 = OUTLINED_FUNCTION_27();
      sub_27538436C(v94, v95, v96, v97);
      OUTLINED_FUNCTION_169_1();
      if (v98)
      {
        goto LABEL_55;
      }

      v99 = v44;
      v100 = v37;
      v101 = OUTLINED_FUNCTION_12_5();
      sub_27538672C(v101, &qword_2809C2DA0, v102);
      OUTLINED_FUNCTION_176_1();
      if (sub_2753B7478())
      {
        OUTLINED_FUNCTION_5_6();
        sub_27538436C(v103, v104, v105, sub_275384B18);
        OUTLINED_FUNCTION_154_2();
        if (!v82)
        {
LABEL_45:
          OUTLINED_FUNCTION_224();

          sub_2753B7768();
          return;
        }

        v99 = v106;
      }

      v83 = *(v34 + 1600);
      v107 = *(v34 + 2104);
      if (v100)
      {
        OUTLINED_FUNCTION_220_1();
        (*(v108 + 40))(v83[7] + *(v108 + 72) * v99);
      }

      else
      {
        v109 = *(v34 + 2096);
        v110 = *(v34 + 1952);
        v111 = *(v34 + 1944);
        v112 = *(v34 + 1936);
        v83[(v99 >> 6) + 8] |= 1 << v99;
        v113 = (v83[6] + 16 * v99);
        *v113 = v109;
        v113[1] = v107;
        v44 = (*(v111 + 32))(v83[7] + *(v111 + 72) * v99, v110, v112);
        v114 = v83[2];
        v98 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v98)
        {
          goto LABEL_56;
        }

        v83[2] = v115;
      }

      OUTLINED_FUNCTION_215_1();
LABEL_32:
      (*(v118 + 8))(v116, v117);
      *(v34 + 1704) = v83;
      v44 = OUTLINED_FUNCTION_117_3();
      if (v82)
      {
        break;
      }

      v48 = 0;
      v45 = *(v44 + 16);
      v47 = (v34 + 1368);
    }
  }

  sub_275381A04(v122, (v34 + 1704));
  v124 = v123;

  if (*(v124 + 16))
  {
    OUTLINED_FUNCTION_166_1();
    v125 = *(v34 + 1728);
    OUTLINED_FUNCTION_20_3();
    sub_2753870A8(v126, 255, v127);
    OUTLINED_FUNCTION_162_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    v128 = OUTLINED_FUNCTION_228_1();
    v129(v128);
    OUTLINED_FUNCTION_71();
    sub_2753B6298();
    (*(v36 + 8))(v35, v125);
    OUTLINED_FUNCTION_70_4();
    *(v34 + 1608) = v124;
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_182_0();
    sub_275388174(v130, v131, v132, v133);
    OUTLINED_FUNCTION_41_4(&qword_2809C2DA8);
    OUTLINED_FUNCTION_209_1();

    OUTLINED_FUNCTION_48_3();
    v134 = OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_42_3(v134, &qword_2809C2DB0);
    sub_275386F30();
    v135 = OUTLINED_FUNCTION_304_0();
    OUTLINED_FUNCTION_122(v135, v136);
    OUTLINED_FUNCTION_96_0();
    sub_2753B62E8();
    swift_willThrow();
LABEL_51:
    OUTLINED_FUNCTION_118_3();
    v167 = *(v34 + 1904);
    *&a13 = *(v34 + 1896);
    *&a14 = *(v34 + 1888);
    v170 = *(v34 + 1880);
    v173 = *(v34 + 1856);
    v176 = *(v34 + 1848);
    v179 = *(v34 + 1840);
    v182 = *(v34 + 1816);
    v185 = *(v34 + 1808);
    v187 = *(v34 + 1800);
    v189 = *(v34 + 1776);
    OUTLINED_FUNCTION_37_4();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_224();

    v159(v158, v159, v160, v161, v162, v163, v164, v165, a9, a10, a11, v167, a13, *(&a13 + 1), a14, *(&a14 + 1), a15, v170, v173, v176, v179, v182, v185, v187, v189, a24, a26.n128_u64[0], a26.n128_u64[1], a28, a29, a30, a31, a32, a33, _D0, a34);
  }

  else
  {
    OUTLINED_FUNCTION_79_3();
    v166 = *(v34 + 1904);
    *&a13 = *(v34 + 1896);
    *&a14 = *(v34 + 1888);
    v169 = *(v34 + 1880);
    v172 = *(v34 + 1856);
    v175 = *(v34 + 1848);
    v178 = *(v34 + 1840);
    v181 = *(v34 + 1816);
    v184 = *(v34 + 1808);
    v186 = *(v34 + 1800);
    v188 = *(v34 + 1776);
    OUTLINED_FUNCTION_37_4();

    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_224();

    v139(v137, v138, v139, v140, v141, v142, v143, v144, a9, a10, a11, v166, a13, *(&a13 + 1), a14, *(&a14 + 1), a15, v169, v172, v175, v178, v181, v184, v186, v188, a24, a26.n128_u64[0], a26.n128_u64[1], a28, a29, a30, a31, a32, a33, _D0, a34);
  }
}

uint64_t sub_27537F32C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_239_1();
    v7(*(v3 + 1848), *(v3 + 1824));
    sub_275386E0C(v3 + 432);

    OUTLINED_FUNCTION_225_1();
    v10 = sub_275380D1C;
  }

  else
  {
    (*(v3 + 2064))(*(v3 + 1848), *(v3 + 1824));
    OUTLINED_FUNCTION_225_1();
    v10 = sub_27537F474;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27537FF94()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 2136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_239_1();
    v7(*(v3 + 1840), *(v3 + 1824));
    sub_275386E0C(v3 + 432);

    OUTLINED_FUNCTION_225_1();
    v10 = sub_275380E30;
  }

  else
  {
    (*(v3 + 2064))(*(v3 + 1840), *(v3 + 1824));
    OUTLINED_FUNCTION_225_1();
    v10 = sub_2753800DC;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_275380C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_312_0();

  OUTLINED_FUNCTION_26_4(*(v24 + 2056));

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_313_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275380D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_312_0();

  OUTLINED_FUNCTION_26_4(*(v24 + 2120));

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_313_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275380E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_312_0();

  OUTLINED_FUNCTION_26_4(*(v24 + 2136));

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_313_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275380F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, char a29)
{
  v29 = *a4;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v29;
  *a9 = a1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 89) = a14;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 201) = a29;
}

uint64_t sub_275381078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = **a2;
  v6 = *v4;
  v7 = v4[1];
  v8 = *(a2 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  sub_275380F44(v5, v6, v7, *(a2 + 16), v9, v10, *v11, v11[1], a1, *v12, *(v12 + 8), *v13, *(v13 + 8), **(a2 + 56), **(a2 + 64), *(*(a2 + 64) + 8), **(a2 + 72), *(*(a2 + 72) + 8), **(a2 + 80), *(*(a2 + 80) + 8), **(a2 + 88), *(*(a2 + 88) + 8), **(a2 + 96), *(*(a2 + 96) + 8), **(a2 + 104), *(*(a2 + 104) + 8), **(a2 + 112), *(*(a2 + 112) + 8), **(a2 + 120));
  v14 = *(v2 + 8);

  return v14();
}

void sub_2753811B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2753868E4(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  MEMORY[0x28223BE20](v3);
  v4 = *(a1 + 89);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v8 = *(a1 + 112);
  v7 = *(a1 + 120);
  v9 = *(a1 + 128);
  v10 = *(a1 + 136);
  v11 = *(a1 + 152);
  v13 = *(a1 + 160);
  v12 = *(a1 + 168);
  v14 = *(a1 + 176);
  v15 = *(a1 + 184);
  v16 = *(a1 + 200);
  v17 = *(a1 + 201);
  switch(v4)
  {
    case 1:
      if (!v6)
      {
        goto LABEL_52;
      }

      if (!v11)
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_52;
      }

      v41 = v9;
      v42 = v5;

      v34 = sub_2753B74E8();

      if (v34 >= 4 || v15 || v16 || (MusicContent.CloudStatus.init(rawValue:)(&v44), v35 = v44, v44 == 10) || v17 == 2)
      {

        goto LABEL_52;
      }

      v40 = 256;
      if ((v17 & 1) == 0)
      {
        v40 = 0;
      }

      *a2 = v42;
      a2[1] = v6;
      a2[2] = v41;
      a2[3] = v34;
      a2[4] = v14;
      a2[5] = v40 | v35;
      *(a2 + 50) = 32;
      *(a2 + 24) = 0;
      return;
    case 2:
      if (!v6 || !v7 || !v11)
      {
        goto LABEL_22;
      }

      v26 = v8;
      v27 = v5;
      v28 = v7;

      v29 = sub_2753B74E8();

      if (v29 <= 3 && v17 != 2)
      {
        LOBYTE(v44) = 1;
        *a2 = v27;
        a2[1] = v6;
        a2[2] = v26;
        a2[3] = v28;
        a2[4] = v29;
        a2[5] = 0;
        *(a2 + 24) = 2561;
        *(a2 + 50) = (((v17 & 1) << 16) | 0x400A01u) >> 16;
        return;
      }

LABEL_22:
      sub_275314678();
      sub_2753B62D8();
      sub_2753B62C8();
      LOBYTE(v44) = 1;
      sub_2753B6298();
      goto LABEL_53;
    case 3:
      if (!v6)
      {
        goto LABEL_52;
      }

      if (!v11)
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_52;
      }

      v31 = v9;
      v32 = v5;

      v33 = sub_2753B74E8();

      if (v33 < 3)
      {
        v24 = a2;
        *a2 = v32;
        a2[1] = v6;
        a2[2] = v31;
        a2[3] = v33;
        a2[4] = 0;
        a2[5] = 0;
        v25 = 96;
        goto LABEL_29;
      }

      goto LABEL_52;
    case 4:
      if (!v6)
      {
        goto LABEL_52;
      }

      if (!v11)
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_52;
      }

      v21 = v9;
      v22 = v5;

      v23 = sub_2753B74E8();

      if (v23 >= 3)
      {

        goto LABEL_52;
      }

      v24 = a2;
      *a2 = v22;
      a2[1] = v6;
      a2[2] = v21;
      a2[3] = v23;
      a2[4] = 0;
      a2[5] = 0;
      v25 = 0x80;
LABEL_29:
      *(v24 + 50) = v25;
      *(v24 + 24) = 0;
      break;
    case 5:
      if (!v7)
      {
        goto LABEL_22;
      }

      v36 = v8;
      if (v12)
      {
        v44 = v13;
        v45 = v12;
        v37 = v7;
        sub_275329E48();

        v38 = sub_2753B72C8();
      }

      else
      {
        v37 = v7;

        v38 = MEMORY[0x277D84F90];
      }

      *a2 = v36;
      a2[1] = v37;
      a2[2] = v38;
      a2[3] = 0;
      a2[4] = 0;
      a2[5] = 0;
      *(a2 + 50) = -96;
      *(a2 + 24) = 0;
      return;
    case 6:
      sub_2753B74A8();
      __break(1u);
      JUMPOUT(0x2753819E8);
    default:
      if (!v7 || !v11)
      {
        goto LABEL_52;
      }

      v18 = v8;
      v19 = v7;

      MusicContent.MediaAPIContentType.init(rawValue:)();
      v20 = v44;
      if (v44 == 5)
      {

LABEL_52:
        sub_275314678();
        sub_2753B62D8();
        sub_2753B62C8();
        LOBYTE(v44) = 1;
        sub_2753B6298();
LABEL_53:
        sub_2753B62C8();
        sub_2753868E4(0, &qword_2809C1440, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
        sub_275314720();
        swift_allocError();
        sub_2753B62E8();
        swift_willThrow();
      }

      else
      {
        if (v12)
        {
          v44 = v13;
          v45 = v12;
          sub_275329E48();
          v39 = sub_2753B72C8();
        }

        else
        {
          v39 = MEMORY[0x277D84F90];
        }

        *a2 = v18;
        a2[1] = v19;
        a2[2] = v20;
        a2[3] = v39;
        a2[4] = 0;
        a2[5] = 0;
        *(a2 + 47) = 0;
      }

      break;
  }
}

void sub_275381A04(uint64_t a1, uint64_t *a2)
{
  v30 = a2;
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, MEMORY[0x277D65188]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = 0;
  v31 = *(a1 + 16);
  v32 = a1;
  v7 = a1 + 40;
  v28 = a1 + 40;
  v29 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v7 + 16 * v6); ; i += 2)
  {
    if (v31 == v6)
    {

      return;
    }

    if (v6 >= *(v32 + 16))
    {
      break;
    }

    v10 = *(i - 1);
    v9 = *i;
    v11 = *v30;
    v12 = *(*v30 + 16);

    if (!v12 || (v13 = sub_27538436C(v10, v9, MEMORY[0x277D64FB0], sub_275384B18), (v14 & 1) == 0))
    {
      v20 = MEMORY[0x277D65188];
      sub_2753868E4(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
      sub_275388564(v5, &qword_2809C2CC8, &qword_2809C1310, v20, sub_27538685C);
      v22 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27538821C(0, *(v22 + 16) + 1, 1);
        v22 = v33;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_27538821C(v24 > 1, v25 + 1, 1);
        v22 = v33;
      }

      ++v6;
      *(v22 + 16) = v25 + 1;
      v29 = v22;
      v26 = v22 + 16 * v25;
      *(v26 + 32) = v10;
      *(v26 + 40) = v9;
      v7 = v28;
      goto LABEL_2;
    }

    v15 = v13;
    v16 = *(v11 + 56);
    v17 = MEMORY[0x277D65188];
    sub_2753868E4(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
    v19 = v18;
    (*(*(v18 - 8) + 16))(v5, v16 + *(*(v18 - 8) + 72) * v15, v18);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v19);
    sub_275388564(v5, &qword_2809C2CC8, &qword_2809C1310, v17, sub_27538685C);

    ++v6;
  }

  __break(1u);
}

uint64_t MusicContentStorage.Operations.relateContent(ids:to:as:)()
{
  OUTLINED_FUNCTION_3();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = sub_2753B6608();
  v1[45] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[46] = v5;
  v1[47] = OUTLINED_FUNCTION_187_1();
  v1[48] = swift_task_alloc();
  v6 = sub_2753B65D8();
  v1[49] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[50] = v7;
  v1[51] = OUTLINED_FUNCTION_187_1();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = sub_2753B6288();
  v1[56] = sub_2753B6278();
  v8 = swift_task_alloc();
  v1[57] = v8;
  *v8 = v1;
  v8[1] = sub_275381EC8;
  OUTLINED_FUNCTION_155_2();

  return sub_27537633C();
}

uint64_t sub_275381EC8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[58] = v7;
  v3[59] = v0;

  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v8, 255, v9);
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v3[60] = v10;
  v3[61] = v11;
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275382038()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = *(v0 + 464);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  OUTLINED_FUNCTION_45_4(*(v0 + 352));
  sub_2753B65C8();
  OUTLINED_FUNCTION_274_0(0xD000000000000037);
  v6 = MEMORY[0x277D65050];
  *(v0 + 40) = MEMORY[0x277D83B88];
  *(v0 + 48) = v6;
  *(v0 + 16) = v1;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v7 = sub_2753B6A08();
  v8 = MEMORY[0x277D65000];
  *(v0 + 80) = MEMORY[0x277D837D0];
  *(v0 + 88) = v8;
  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v10 = *(v4 + 32);
  *(v0 + 496) = v10;
  *(v0 + 504) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v2, v3, v5);
  sub_2753B65F8();
  v11 = swift_task_alloc();
  *(v0 + 512) = v11;
  *v11 = v0;
  v11[1] = sub_2753821E0;
  OUTLINED_FUNCTION_86_1(*(v0 + 384));
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v12);
}

uint64_t sub_2753821E0()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_2();
  *v3 = v0;
  v4 = v0[46];
  *v3 = *v2;
  v0[65] = v1;

  v0[66] = *(v4 + 8);
  v0[67] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_107_0();
  v6(v5);
  OUTLINED_FUNCTION_303_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275382368()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[42];
  v2 = *(v1 + 16);
  v0[68] = v2;
  v0[69] = 0;
  if (v2)
  {
    OUTLINED_FUNCTION_318_0(v0[44], v1);
    OUTLINED_FUNCTION_267_0();
    sub_2753B65C8();
    sub_2753B65B8();
    OUTLINED_FUNCTION_317_0(MEMORY[0x277D83B88]);
    OUTLINED_FUNCTION_34_4("\n    WHERE parent_pk = ");
    v3 = swift_task_alloc();
    v0[74] = v3;
    *v3 = v0;
    v3[1] = sub_2753824E0;
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_217();

    return sub_27537633C();
  }

  else
  {

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_217();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_2753824E0()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 600) = v0;

  if (!v0)
  {
    *(v4 + 608) = v3;
  }

  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_275382610()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v1 = v0[76];
  v2 = v0[69];
  v20 = v0[62];
  v3 = MEMORY[0x277D65050];
  v0[25] = MEMORY[0x277D83B88];
  v0[26] = v3;
  v0[22] = v1;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 22);
  v4 = sub_2753B69E8();
  v6 = v5;
  v7 = MEMORY[0x277D837D0];
  v8 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v8, v9, v7, v10);
  v0[30] = v11;
  v0[31] = sub_27537D288();
  v0[27] = v4;
  v0[28] = v6;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 27);
  v0[35] = MEMORY[0x277D83B88];
  v0[36] = v3;
  v0[32] = v2;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 32);
  v12 = sub_2753B6A08();
  v13 = MEMORY[0x277D65000];
  v0[40] = v7;
  v0[41] = v13;
  v0[37] = v12;
  v0[38] = v14;
  sub_2753B6588();
  OUTLINED_FUNCTION_60_1(v0 + 37);
  v15 = OUTLINED_FUNCTION_53();
  v20(v15);
  sub_2753B65F8();
  v16 = swift_task_alloc();
  v0[77] = v16;
  *v16 = v0;
  v16[1] = sub_2753827C8;
  OUTLINED_FUNCTION_86_1(v0[47]);
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v17);
}

uint64_t sub_2753827C8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 624) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1 + 528))(*(v1 + 376), *(v1 + 360));
  OUTLINED_FUNCTION_145_0();
  v6 = *(v5 + 488);
  v7 = *(v1 + 480);
  if (v0)
  {
    v8 = sub_275382C9C;
  }

  else
  {
    v8 = sub_275382940;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_275382940()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[69] + 1;
  v0[69] = v1;
  if (v1 == v0[68])
  {

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_217();

    return v3(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_318_0(v0[44], v0[42] + 16 * v1);
    OUTLINED_FUNCTION_267_0();
    sub_2753B65C8();
    sub_2753B65B8();
    OUTLINED_FUNCTION_317_0(MEMORY[0x277D83B88]);
    OUTLINED_FUNCTION_34_4("\n    WHERE parent_pk = ");
    v11 = swift_task_alloc();
    v0[74] = v11;
    *v11 = v0;
    v11[1] = sub_2753824E0;
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_217();

    return sub_27537633C();
  }
}

uint64_t sub_275382ACC()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_275382B5C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_275382BEC()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();

  v1 = OUTLINED_FUNCTION_36_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_275382C9C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t MusicContentStorage.Operations.hasRelatedContent(for:as:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v5 = sub_2753B65D8();
  v1[28] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[29] = v6;
  v1[30] = OUTLINED_FUNCTION_187_1();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v7 = sub_2753B6608();
  v1[33] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_187_1();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_2753B6288();
  v1[38] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v9, 255, v10);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[39] = v11;
  v1[40] = v12;
  v13 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_275382EA4()
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_67();
  sub_2753B65E8();
  sub_2753B69E8();
  if (v3)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    v4 = MEMORY[0x277D837D0];
    *(v0 + 136) = v2;
    v5 = MEMORY[0x277D65000];
    *(v0 + 160) = v4;
    *(v0 + 168) = v5;
    *(v0 + 144) = v1;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    sub_2753B65F8();
    v6 = OUTLINED_FUNCTION_53();
    v7(v6);
    v8 = OUTLINED_FUNCTION_129_0();
    v9(v8);
  }

  sub_27537D100(*(v0 + 216), v0 + 16);
  *(v0 + 344) = OUTLINED_FUNCTION_150_2((v0 + 328));
  sub_2753B65C8();
  sub_2753B65B8();
  v10 = swift_task_alloc();
  *(v0 + 352) = v10;
  *v10 = v0;
  v10[1] = sub_275383034;
  OUTLINED_FUNCTION_86_1(*(v0 + 192));
  OUTLINED_FUNCTION_100_0();

  return sub_27537633C();
}

uint64_t sub_275383034()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v4[45] = v0;

  if (v0)
  {
    v8 = v4[39];
    v9 = v4[40];
    v10 = sub_275383540;
  }

  else
  {
    v4[46] = v1;
    v8 = v4[39];
    v9 = v4[40];
    v10 = sub_275383140;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_275383140()
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_255(v2);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_63_3();
  sub_2753B65B8();
  v0[15] = sub_2753B6A18();
  OUTLINED_FUNCTION_141_1();
  v0[16] = sub_2753870A8(v3, 255, v4);
  __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_182_0();
  v5();
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  sub_2753B6598();
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v6 = OUTLINED_FUNCTION_76();
  v7(v6);
  sub_2753B65F8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[22] = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D65048];
  v0[47] = v9;
  v0[23] = v8;
  *v9 = v10;
  v9[1] = sub_27538331C;
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v11);
}

uint64_t sub_27538331C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_2();
  *v3 = v0;
  v4 = v0[34];
  *v3 = *v2;
  v0[48] = v1;

  v0[49] = *(v4 + 8);
  v0[50] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_107_0();
  v6(v5);
  OUTLINED_FUNCTION_303_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753834A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = *(v12 + 392);
  OUTLINED_FUNCTION_323_0();
  v14 = OUTLINED_FUNCTION_306();
  v13(v14);
  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_100_0();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_275383540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_322_0();
  v10 = OUTLINED_FUNCTION_90_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_96_0();
  v13(v12);
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_111_0();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2753835F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = *(v10 + 392);

  v12 = OUTLINED_FUNCTION_96_0();
  v11(v12);
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_111_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_275383694(uint64_t a1, _BYTE **a2)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = **a2;
  sub_2753B6288();
  *(v2 + 24) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v4 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27538376C, v4, v3);
}

uint64_t sub_27538376C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_35_0();

  return v3();
}

uint64_t MusicContentStorage.Operations.removeContent(id:removeRelationships:)()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v0, 255, v1);
  OUTLINED_FUNCTION_102_0();
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275383870, v3, v2);
}

uint64_t sub_2753838EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275383984;

  return MusicContentStorage.Operations.firstContentID(matching:in:)();
}

uint64_t sub_275383984()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v4 = v3;
  OUTLINED_FUNCTION_65_3();
  v6 = v5;
  OUTLINED_FUNCTION_13_2();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;

  if (!v0)
  {
    v10 = *(v6 + 16);
    *v10 = v1;
    v10[1] = v4;
  }

  OUTLINED_FUNCTION_195();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_275383A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.validateContent(id:)();
}

uint64_t sub_275383B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.registerContent(_:in:)();
}

uint64_t sub_275383BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.registration(for:followRedirect:)();
}

uint64_t sub_275383C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2753886CC;

  return MusicContentStorage.Operations.registrations(for:followRedirect:)();
}

uint64_t sub_275383D1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.relateContent(ids:to:as:)();
}

uint64_t sub_275383DD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_275383E7C;

  return MusicContentStorage.Operations.hasRelatedContent(for:as:)();
}

uint64_t sub_275383E7C()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_105_3();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_275383F70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_275384018;

  return MusicContentStorage.Operations.relatedContent(to:as:)();
}

uint64_t sub_275384018()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_105_3();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_275384104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.removeContent(id:removeRelationships:)();
}

uint64_t sub_275384194()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.updateDebugDescription(_:for:)();
}

uint64_t sub_27538424C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2753B3610(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_275385A28(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_2753842E4(char a1)
{
  v3 = sub_2753651BC(*(v1 + 40));

  return sub_2753845A8(a1 & 1, v3);
}

unint64_t sub_275384328(uint64_t a1)
{
  v2 = a1;
  v3 = sub_27536527C(*(v1 + 40));

  return sub_2753846F0(v2, v3);
}

uint64_t sub_27538436C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_319_0(a1, a2);
  a3(v10, v5, v4);
  v7 = sub_2753B77D8();

  return a4(v5, v4, v7);
}

unint64_t sub_2753843F0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x277C76A60](*(v1 + 40), a1, 4);

  return sub_275384BE0(v2, v3);
}

unint64_t sub_275384438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_319_0(a1, a2);
  sub_2753B7288();
  v6 = sub_2753B77D8();

  return sub_275384C40(v4, v3, a3, v6);
}

unint64_t sub_2753844B4()
{
  sub_2753B7318();
  v0 = OUTLINED_FUNCTION_245();

  return sub_275384CFC(v0, v1);
}

unint64_t sub_2753844F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2753B7718() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2753845A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x647261646E617473;
    }

    else
    {
      v6 = 0x6966696C706D6973;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xEA00000000006465;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x647261646E617473 : 0x6966696C706D6973;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xEA00000000006465;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2753B7718();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2753846F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x73676E6F73;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x2D7972617262696CLL;
          v7 = 0xED000073676E6F73;
          break;
        case 2:
          v8 = 0x69762D636973756DLL;
          v7 = 0xEC000000736F6564;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x80000002753B8130;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x736D75626C61;
          break;
        case 5:
          v8 = 0x2D7972617262696CLL;
          v9 = 0x736D75626C61;
          goto LABEL_12;
        case 6:
          v8 = 0x7473696C79616C70;
          v7 = 0xE900000000000073;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x80000002753B8170;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x736E6F6974617473;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x7365726E6567;
          break;
        case 0xA:
          v8 = 0x612D6C6D78656C66;
          v7 = 0xEF736973796C616ELL;
          break;
        case 0xB:
          v8 = 0x6E612D6F69647561;
          v9 = 0x736973796C61;
LABEL_12:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v10 = 0xE500000000000000;
      v11 = 0x73676E6F73;
      switch(a1)
      {
        case 1:
          v11 = 0x2D7972617262696CLL;
          v10 = 0xED000073676E6F73;
          break;
        case 2:
          v11 = 0x69762D636973756DLL;
          v10 = 0xEC000000736F6564;
          break;
        case 3:
          v11 = 0xD000000000000014;
          v10 = 0x80000002753B8130;
          break;
        case 4:
          v10 = 0xE600000000000000;
          v11 = 0x736D75626C61;
          break;
        case 5:
          v11 = 0x2D7972617262696CLL;
          v12 = 0x736D75626C61;
          goto LABEL_25;
        case 6:
          v11 = 0x7473696C79616C70;
          v10 = 0xE900000000000073;
          break;
        case 7:
          v11 = 0xD000000000000011;
          v10 = 0x80000002753B8170;
          break;
        case 8:
          v10 = 0xE800000000000000;
          v11 = 0x736E6F6974617473;
          break;
        case 9:
          v10 = 0xE600000000000000;
          v11 = 0x7365726E6567;
          break;
        case 10:
          v11 = 0x612D6C6D78656C66;
          v10 = 0xEF736973796C616ELL;
          break;
        case 11:
          v11 = 0x6E612D6F69647561;
          v12 = 0x736973796C61;
LABEL_25:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_2753B7718();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_275384B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a3 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {

    v6 = sub_2753B6678();

    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_275384BE0(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_275384C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ~(-1 << *(v4 + 32));
    ;
  }

  return i;
}

unint64_t sub_275384CFC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_275359C68(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x277C76600](v8, a1);
    sub_275387FFC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_275384DC0()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_275384E04(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v2, v3, v4, v5);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v1, 32, 7);
}

void sub_275384E68()
{
  OUTLINED_FUNCTION_193_1();
  if (v3)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_275387F04(0, &qword_2809C2F10, sub_2753881C4, MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size_0(v9);
    OUTLINED_FUNCTION_293();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_275384F68()
{
  OUTLINED_FUNCTION_193_1();
  if (v4)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_80_3();
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v7, v8, v9, v10);
    v12 = OUTLINED_FUNCTION_217_1(v11);
    v13 = _swift_stdlib_malloc_size_0(v12);
    OUTLINED_FUNCTION_92_3(v13);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v12 != v0 || &v15[56 * v2] <= v14)
    {
      memmove(v14, v15, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_275385044()
{
  OUTLINED_FUNCTION_193_1();
  if (v4)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_80_3();
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v7, v8, v9, v10);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size_0(v11);
    OUTLINED_FUNCTION_293();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v11 != v0 || &v14[16 * v2] <= v13)
    {
      memmove(v13, v14, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_275385150()
{
  OUTLINED_FUNCTION_193_1();
  if (v4)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_80_3();
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v7, v8, v9, v10);
    v12 = OUTLINED_FUNCTION_217_1(v11);
    v13 = _swift_stdlib_malloc_size_0(v12);
    OUTLINED_FUNCTION_92_3(v13);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v12 != v0 || &v15[40 * v2] <= v14)
    {
      memmove(v14, v15, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27538522C()
{
  OUTLINED_FUNCTION_193_1();
  if (v4)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_80_3();
  if (v3)
  {
    sub_275387F04(0, &qword_2809C2EF0, sub_275387F9C, MEMORY[0x277D84560]);
    v8 = OUTLINED_FUNCTION_217_1(v7);
    v9 = _swift_stdlib_malloc_size_0(v8);
    OUTLINED_FUNCTION_92_3(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[56 * v2 + 32] <= v8 + 32)
    {
      v11 = OUTLINED_FUNCTION_97_0();
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_275387F9C();
    OUTLINED_FUNCTION_97_0();
    swift_arrayInitWithCopy();
  }
}

void sub_275385338()
{
  OUTLINED_FUNCTION_193_1();
  if (v4)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_80_3();
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v7, v8, v9, v10);
    v12 = OUTLINED_FUNCTION_217_1(v11);
    v13 = _swift_stdlib_malloc_size_0(v12);
    OUTLINED_FUNCTION_92_3(v13);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v12 != v0 || &v15[824 * v2] <= v14)
    {
      memmove(v14, v15, 824 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_275385448(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_52_4();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_184_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_275385954(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27538553C()
{
  OUTLINED_FUNCTION_193_1();
  if (v4)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_80_3();
  if (v3)
  {
    sub_2753148DC(0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size_0(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_97_0();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_2753149C4(0, &qword_2809C1468, MEMORY[0x277D84948]);
    OUTLINED_FUNCTION_97_0();
    swift_arrayInitWithCopy();
  }
}

void *sub_275385670(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_275387F04(0, &qword_2809C2F20, type metadata accessor for CMTime, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *sub_27538574C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_275387F04(0, a3, a4, MEMORY[0x277D84560]);
  v8 = a5(0);
  OUTLINED_FUNCTION_17_1(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_275385858(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[56 * a2] <= __dst)
  {
    return memmove(__dst, __src, 56 * a2);
  }

  return __src;
}

char *sub_275385888(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_2753858A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_2753858CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_2753858F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_275385914(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

void sub_275385954(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_18(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_76();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_76();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_275385A28(uint64_t *a1)
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
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_275385BE4(v7, v8, a1, v4);
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
    return sub_275385B1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_275385B1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2753B7718();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_275385BE4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2753B7718();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2753B7718()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2753B7718() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_275384E68();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_275384E68();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_275386218((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_2753860EC(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_2753860EC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2753B20A8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_275386218((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_275386218(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2753B7718() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_2753B7718() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_2753863DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_275386474()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_121_3(v1);
  OUTLINED_FUNCTION_195();

  return sub_275373BFC(v3, v4, v5, v6);
}

uint64_t sub_275386510()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_121_3(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_275374198(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2753865B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_11_5();
    sub_275388174(255, v3, v4, v5);
    OUTLINED_FUNCTION_245();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2753865FC()
{
  result = qword_2809C2D10;
  if (!qword_2809C2D10)
  {
    sub_275388174(255, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D10);
  }

  return result;
}

unint64_t sub_275386690()
{
  result = qword_2809C2D20;
  if (!qword_2809C2D20)
  {
    sub_275388174(255, &qword_2809C2D18, &type metadata for MusicContent.CloudStatus, MEMORY[0x277D83D88]);
    sub_27536172C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D20);
  }

  return result;
}

void sub_27538672C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, unint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_21_4();
    sub_2753868E4(255, v6, v7, v8, MEMORY[0x277D65188]);
    v10 = v9;
    v11 = sub_275314624();
    v12 = a3(a1, MEMORY[0x277D64FD0], v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

unint64_t sub_2753867C8()
{
  result = qword_2809C2D40;
  if (!qword_2809C2D40)
  {
    sub_275388174(255, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D40);
  }

  return result;
}

void sub_27538685C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2753868E4(255, a3, sub_2752FBA9C, &type metadata for MusicContent, a4);
    OUTLINED_FUNCTION_245();
    v5 = sub_2753B72A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2753868E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275386964(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_275388174(255, &qword_2809C2CE8, &type metadata for MusicContent.ContentType, MEMORY[0x277D83D88]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2753869F4()
{
  result = qword_2809C2D70;
  if (!qword_2809C2D70)
  {
    sub_275388174(255, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D70);
  }

  return result;
}

unint64_t sub_275386A88()
{
  result = qword_2809C2D78;
  if (!qword_2809C2D78)
  {
    sub_275388174(255, &qword_2809C0E08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D78);
  }

  return result;
}

unint64_t sub_275386B1C()
{
  result = qword_2809C2D80;
  if (!qword_2809C2D80)
  {
    sub_27538685C(255, &qword_2809C2D48, &qword_2809C2D50, type metadata accessor for MusicContentStorage.Operations.ContentRow.Source);
    sub_275386BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D80);
  }

  return result;
}

unint64_t sub_275386BB8()
{
  result = qword_2809C2D88;
  if (!qword_2809C2D88)
  {
    sub_2753868E4(255, &qword_2809C2D50, sub_2752FBA9C, &type metadata for MusicContent, type metadata accessor for MusicContentStorage.Operations.ContentRow.Source);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D88);
  }

  return result;
}

unint64_t sub_275386C48()
{
  result = qword_2809C2D90;
  if (!qword_2809C2D90)
  {
    sub_275388174(255, &qword_2809C0DF0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D90);
  }

  return result;
}

unint64_t sub_275386CDC()
{
  result = qword_2809C2D98;
  if (!qword_2809C2D98)
  {
    sub_275388174(255, &qword_2809C2D58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D98);
  }

  return result;
}

uint64_t sub_275386D70(uint64_t a1, uint64_t a2)
{
  sub_2753868E4(0, &qword_2809C2D60, sub_2752FBA9C, &type metadata for MusicContent, type metadata accessor for MusicContentStorage.Operations.ContentRow);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275386E0C(uint64_t a1)
{
  sub_2753868E4(0, &qword_2809C2D60, sub_2752FBA9C, &type metadata for MusicContent, type metadata accessor for MusicContentStorage.Operations.ContentRow);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275386EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2753B6AD8();
    OUTLINED_FUNCTION_20_3();
    v9 = sub_2753870A8(v7, 255, v8);
    v10 = a3(a1, v6, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_275386F30()
{
  result = qword_2809C2DB8;
  if (!qword_2809C2DB8)
  {
    sub_275386EA0(255, &qword_2809C2DB0, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2DB8);
  }

  return result;
}

unint64_t sub_275386FA4()
{
  result = qword_2809C2DC0;
  if (!qword_2809C2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2DC0);
  }

  return result;
}

unint64_t sub_275386FFC()
{
  result = qword_2809C2DC8;
  if (!qword_2809C2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2DC8);
  }

  return result;
}

uint64_t sub_275387050(uint64_t a1, uint64_t a2)
{
  result = sub_2753870A8(qword_2809C2DD0, a2, type metadata accessor for MusicContentStorage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2753870A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_245();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275387114(uint64_t a1)
{
  result = sub_275386FA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of MusicContentStorage.withOperations<A>(_:)()
{
  OUTLINED_FUNCTION_66_0();
  v5 = (*(*v0 + 120) + **(*v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_26_0(v1);
  *v2 = v3;
  v2[1] = sub_2752FD514;
  OUTLINED_FUNCTION_216_1();

  return v5();
}

uint64_t dispatch thunk of MusicContentStorage.withTransaction<A>(named:_:)()
{
  OUTLINED_FUNCTION_144_0();
  v5 = (*(*v0 + 128) + **(*v0 + 128));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_26_0(v1);
  *v2 = v3;
  v2[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_119_3();

  return v5();
}

uint64_t sub_2753873C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_275387408(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_27538746C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    AssociatedTypeWitness = sub_2753B72A8();
    if (v5 <= 0x3F)
    {
      sub_275388174(319, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      AssociatedTypeWitness = v6;
      if (v7 <= 0x3F)
      {
        sub_275388174(319, &qword_2809C0E08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          type metadata accessor for MusicContentStorage.Operations.ContentRow.Source(255, v2, v1, v9);
          v11 = sub_2753B72A8();
          if (v12 > 0x3F)
          {
            return v11;
          }

          sub_275388174(319, &qword_2809C0DF0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
          if (v13 > 0x3F)
          {
            return v11;
          }

          else
          {
            sub_275388174(319, &qword_2809C2D58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            AssociatedTypeWitness = v14;
            if (v15 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_2753876B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v8;
  v18 = v16 + 23;
  if (v12 < a2)
  {
    v19 = ((((((((((((((v18 + ((v14 + v15 + ((v13 + 8) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
    if (v19 <= 3)
    {
      v20 = ((a2 - v12 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          break;
        }

        goto LABEL_28;
      case 2:
        v22 = *(a1 + v19);
        if (*(a1 + v19))
        {
          goto LABEL_28;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2753879BCLL);
      case 4:
        v22 = *(a1 + v19);
        if (!v22)
        {
          break;
        }

LABEL_28:
        v23 = (v22 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  v25 = (a1 + v13 + 8) & ~v13;
  if (v7 == v12)
  {

    return __swift_getEnumTagSinglePayload(v25, v7, AssociatedTypeWitness);
  }

  v27 = (v25 + v14 + v15) & ~v15;
  if (v11 == v12)
  {
    if (v10 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, v10, v17);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v18 + v27) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  if ((v28 + 1) >= 2)
  {
    return v28;
  }

  else
  {
    return 0;
  }
}

void sub_2753879D0(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  v18 = *(*(v9 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v18 + 23;
  v20 = ((((((((((((((v19 + ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v14 < a3)
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v14 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v10 = v22;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    bzero(a1, v20);
    if (v20 <= 3)
    {
      v24 = HIWORD(v23) + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v20 > 3)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }

    switch(v10)
    {
      case 1:
        *(a1 + v20) = v24;
        return;
      case 2:
        *(a1 + v20) = v24;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *(a1 + v20) = v24;
        return;
      default:
        return;
    }
  }

  switch(v10)
  {
    case 1:
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 2:
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x275387D24);
    case 4:
      *(a1 + v20) = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      v25 = (a1 + v15 + 8) & ~v15;
      if (v8 == v14)
      {
        v26 = a2;
        v12 = v8;
        v9 = AssociatedTypeWitness;
      }

      else
      {
        v25 = (v25 + v16 + v17) & ~v17;
        if (v13 != v14)
        {
          v27 = ((v19 + v25) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            v27[1] = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            v27[1] = a2;
          }

          return;
        }

        v26 = (a2 + 1);
      }

      __swift_storeEnumTagSinglePayload(v25, v26, v12, v9);
      return;
  }
}

_BYTE *sub_275387D4C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275387E18);
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

void sub_275387F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_275387F9C()
{
  if (!qword_2809C2EF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C2EF8);
    }
  }
}

uint64_t sub_275388050()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_26_0(v3);
  *v4 = v5;
  v4[1] = sub_2752FE5C0;

  return sub_27537275C(v2, v0);
}

uint64_t sub_2753880E0()
{
  OUTLINED_FUNCTION_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_26_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_1(v2);

  return sub_275372AD4(v4, v5, v0);
}

void sub_275388174(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2753881C4()
{
  if (!qword_2809C2F18)
  {
    v0 = sub_2753B7218();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2F18);
    }
  }
}

void sub_27538827C(uint64_t a1)
{
  if (!qword_2809C2F30)
  {
    sub_2753868E4(255, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C2F30);
    }
  }
}

unint64_t sub_27538831C()
{
  result = qword_2809C2F38;
  if (!qword_2809C2F38)
  {
    sub_275387F04(255, &qword_2809C2F28, sub_27538827C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F38);
  }

  return result;
}

void sub_2753883A4(uint64_t a1)
{
  if (!qword_2809C2F40)
  {
    sub_27538672C(255, &qword_2809C2CD0, MEMORY[0x277D64FA0]);
    v1 = sub_2753B6568();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C2F40);
    }
  }
}

uint64_t sub_275388418()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_1(v1);
  OUTLINED_FUNCTION_217();

  return sub_275374458(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2753884C0()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_121_3(v1);
  OUTLINED_FUNCTION_217();

  return sub_27537489C(v3, v4, v5, v6, v7);
}

uint64_t sub_275388564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_18();
  (*(v6 + 8))(a1);
  return a1;
}

void sub_2753885C0(uint64_t a1)
{
  if (!qword_2809C2F50)
  {
    v1 = MEMORY[0x277D83D88];
    sub_275388174(255, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    sub_275388174(255, &qword_2809C0E08, MEMORY[0x277D837D0], v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2809C2F50);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[185];
  *(v2 - 152) = v1[186];
  *(v2 - 144) = v4;
  v5 = v1[183];
  *(v2 - 136) = v1[184];
  *(v2 - 128) = v5;
  v6 = v1[181];
  *(v2 - 120) = v1[182];
  *(v2 - 112) = v6;
  v7 = v1[177];
  *(v2 - 104) = v1[180];
  *(v2 - 96) = v7;
}

uint64_t OUTLINED_FUNCTION_4_7()
{
  v3 = v0[181];
  *(v1 - 112) = v0[182];
  *(v1 - 104) = v3;
  v4 = v0[175];
  *(v1 - 96) = v0[178];
  *(v1 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_8_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 176) = a1;
  *(v2 - 160) = v1[192];
  *(v2 - 144) = v1[191];
  *(v2 - 128) = v1[188];
  *(v2 - 168) = v1[186];
  *(v2 - 152) = v1[185];
  *(v2 - 136) = v1[184];
  v4 = v1[182];
  *(v2 - 120) = v1[183];
  *(v2 - 112) = v4;
  v5 = v1[180];
  *(v2 - 104) = v1[181];
  *(v2 - 96) = v5;
  *(v2 - 88) = v1[177];

  return sub_2753B6A88();
}

uint64_t OUTLINED_FUNCTION_15_5()
{
  v3 = v0[178];
  *(v1 - 112) = v0[181];
  *(v1 - 104) = v3;
  *(v1 - 96) = v0[175];
}

uint64_t OUTLINED_FUNCTION_17_5()
{
}

uint64_t OUTLINED_FUNCTION_26_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  *(v1 + 1320) = v0;
  *(v1 + 1328) = v3;

  return sub_2753B6558();
}

uint64_t OUTLINED_FUNCTION_34_4(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_41_4(unint64_t *a1)
{

  return sub_2753865B8(a1);
}

void OUTLINED_FUNCTION_42_3(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x277D64F08];

  sub_275386EA0(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  *(v0 + 1320) = v1;
  *(v0 + 1328) = v3;

  return sub_2753B6558();
}

uint64_t OUTLINED_FUNCTION_60_1(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_69_4(void *a1)
{
  v2 = a1[3];
  *(v1 - 112) = a1[4];
  *(v1 - 128) = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_2753B65C8();
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return sub_2753B62C8();
}

uint64_t OUTLINED_FUNCTION_73_4()
{

  return sub_2753B65B8();
}

__n128 OUTLINED_FUNCTION_82_3(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[1] = a2;
  result = *(v7 - 112);
  a1[2] = result;
  a1[3] = a3;
  a1[4].n128_u64[0] = v3;
  a1[4].n128_u64[1] = v4;
  a1[5].n128_u8[2] = v6;
  a1[5].n128_u16[0] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_3()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_109_3()
{
  v4 = *(v2 + 2096);
  v5 = *(v2 + 1944);
  *(v1 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v6 = (*(v1 + 48) + 16 * v0);
  *v6 = v4;
  v6[1] = v3;
  return *(v1 + 56) + *(v5 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_112_3()
{
  *(v3 - 128) = v0;
  *(v3 - 112) = v2;
  return *(v1 + 1968);
}

uint64_t OUTLINED_FUNCTION_113_3()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_124_3(uint64_t a1)
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_129_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v26 + 8 * (v25 >> 6) + 64) |= 1 << v25;
  v29 = (*(v26 + 48) + 16 * v25);
  *v29 = v28;
  v29[1] = v27;
  return *(v26 + 56) + v25 * a25;
}

uint64_t OUTLINED_FUNCTION_133_3()
{

  return sub_2753B74A8();
}

void *OUTLINED_FUNCTION_150_2@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 40);
  *a1 = v3;

  return __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
}

uint64_t OUTLINED_FUNCTION_159_2(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_160_2()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_164_1(unint64_t *a1)
{

  return sub_2753865B8(a1);
}

uint64_t OUTLINED_FUNCTION_172_1(uint64_t a1)
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_173_1()
{

  return sub_275386E0C(v0 + 432);
}

void *OUTLINED_FUNCTION_174_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 208 * a2;

  return memcpy((v2 + 432), (v4 + 32), 0xCAuLL);
}

uint64_t OUTLINED_FUNCTION_177_1()
{
}

void OUTLINED_FUNCTION_183(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 + 16) = v18;
  v23 = v19 + 40 * v17;
  *(v23 + 32) = a16;
  *(v23 + 40) = v16;
  *(v23 + 48) = v20;
  *(v23 + 56) = v21;
  *(v23 + 64) = v22;
}

uint64_t OUTLINED_FUNCTION_187_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_188_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17)
{
  *(a1 + 16) = a15;
  *(a1 + 32) = a17;
  *(a1 + 48) = a16;
  *(a1 + 64) = v20;
  *(a1 + 72) = v19;
  *(a1 + 82) = v17;
  *(a1 + 80) = v21;
  *(v22 - 96) = v18;

  return sub_275365400(a1);
}

uint64_t OUTLINED_FUNCTION_189_1()
{
  *(v2 - 120) = *(v1 + 1688);
  *(v2 - 112) = v0;
}

uint64_t OUTLINED_FUNCTION_191_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

void OUTLINED_FUNCTION_194_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 16) = v6;
  v9 = a5 + 56 * v8;
  *(v9 + 32) = v7;
  *(v9 + 40) = a1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 56) = v5;
}

uint64_t OUTLINED_FUNCTION_203_1()
{

  return sub_2753B65C8();
}

uint64_t OUTLINED_FUNCTION_204_1()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_205_1()
{
}

uint64_t OUTLINED_FUNCTION_206_1(uint64_t a1)
{
  v4 = *v1;
  *(v2 - 128) = v1[1];
  *(v2 - 112) = v4;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_207_1()
{

  return sub_275386E0C(v0 + 432);
}

void *OUTLINED_FUNCTION_208_1()
{

  return memcpy((v0 + 224), (v0 + 432), 0xCAuLL);
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return sub_2753B62B8();
}

uint64_t OUTLINED_FUNCTION_212_1()
{

  return sub_2753B65F8();
}

uint64_t OUTLINED_FUNCTION_213_1()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_217_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_224_1()
{
}

void *OUTLINED_FUNCTION_227_1(double a1)
{

  return __swift_project_boxed_opaque_existential_1((v1 + 16), *&a1);
}

uint64_t OUTLINED_FUNCTION_233_1()
{

  return sub_2753B65B8();
}

void OUTLINED_FUNCTION_234_1()
{

  sub_275386454(0, v0, 0);
}

void OUTLINED_FUNCTION_235_1()
{
  v5 = *(v3 - 112);
  v6 = *(v3 - 104);
  v7 = *(v3 - 96);
  v8 = *(v3 - 88);

  sub_2752FBB6C(v2, v1, v0, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_236_1()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_237_1()
{

  return sub_2753B65C8();
}

uint64_t OUTLINED_FUNCTION_240_1(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_243_0(uint64_t result)
{
  *(result + 8) = v2;
  *(v4 + 16) = *(v3 + 192);
  *(v4 + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_249_0()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_2753B65C8();
}

uint64_t OUTLINED_FUNCTION_255@<X0>(uint64_t a1@<X8>)
{
  v3[10] = v1;
  v3[11] = v2;
  v3[7] = a1;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_256(uint64_t a1)
{

  return MEMORY[0x2821CC2B8](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_257(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2753B6A78();
}

uint64_t OUTLINED_FUNCTION_258_0()
{
}

uint64_t OUTLINED_FUNCTION_259_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[84] = a1;
  v10[80] = a10;
  v10[81] = a9;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_260_0()
{
  v1[103] = v2;
  v1[104] = v0;
  v1[100] = v3;
  v1[101] = v4;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_261_0()
{

  return sub_2753B62C8();
}

void OUTLINED_FUNCTION_262_0()
{

  sub_275386454(v0 > 1, v1, 1);
}

void *OUTLINED_FUNCTION_263_0()
{

  return memcpy((v0 + 848), (v0 + 432), 0xCAuLL);
}

uint64_t OUTLINED_FUNCTION_264_0()
{

  return sub_2753B6A78();
}

uint64_t OUTLINED_FUNCTION_265_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_266_0(unsigned int a1)
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_267_0()
{
  v1 = *(v0 + 120);
  *(v0 + 568) = v1;
  *(v0 + 584) = __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
}

uint64_t OUTLINED_FUNCTION_269_0()
{

  return sub_2753B6598();
}

uint64_t OUTLINED_FUNCTION_270_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, char a8@<W8>, __n128 a9@<Q0>, __n128 a10@<Q1>)
{
  *(v10 + 88) = a10;
  *(v10 + 72) = a9;
  *(v10 + 104) = a5;
  *(v10 + 112) = a6;
  *(v10 + 122) = a8;

  return sub_275315CB8(a1, a2, a3, a4, a5, a6, a7);
}

void *OUTLINED_FUNCTION_271_0(uint64_t a1, ...)
{

  return sub_2753B7798();
}

uint64_t OUTLINED_FUNCTION_272_0()
{

  return sub_2753B6A88();
}

uint64_t OUTLINED_FUNCTION_273_0()
{

  return sub_2753B65F8();
}

uint64_t OUTLINED_FUNCTION_274_0(uint64_t a1)
{

  return sub_2753B65B8();
}

void OUTLINED_FUNCTION_276_0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v8[2] = a2;
  v8[1] = a1;
  v8[3].n128_u64[0] = a7;
  v8[3].n128_u64[1] = a8;
}

void OUTLINED_FUNCTION_280_0()
{
  v1 = v0[56];
  v0[262] = v0[55];
  v0[263] = v1;
}

void OUTLINED_FUNCTION_288_0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = a2;
  *(v8 + 184) = a1;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
}

void OUTLINED_FUNCTION_292_0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v8[9] = a2;
  v8[8] = a1;
  v8[10].n128_u64[0] = a7;
  v8[10].n128_u64[1] = a8;
}

uint64_t OUTLINED_FUNCTION_314_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v4 - 128);
  v7 = *(v4 - 112);

  return sub_27538436C(v6, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_315_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  v4[58] = a1;
  v4[59] = v3;
  v4[55] = a3;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_316_0()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_317_0@<X0>(uint64_t a1@<X8>)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[17] = v3;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_318_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 560) = *(a2 + 40);

  return sub_27537D100(a1, v2 + 96);
}

void *OUTLINED_FUNCTION_319_0(uint64_t a1, ...)
{

  return sub_2753B7798();
}

uint64_t OUTLINED_FUNCTION_320_0(unsigned int a1)
{

  return sub_2753B65B8();
}

void OUTLINED_FUNCTION_321_0()
{

  sub_275384F68();
}

uint64_t OUTLINED_FUNCTION_322_0()
{
}

uint64_t OUTLINED_FUNCTION_323_0()
{
}

uint64_t OUTLINED_FUNCTION_324_0()
{
}

uint64_t OUTLINED_FUNCTION_325_0()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_326_0()
{

  return sub_2753B65F8();
}

uint64_t OUTLINED_FUNCTION_327_0()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_328_0(uint64_t a1)
{

  return sub_2753B62C8();
}

uint64_t OUTLINED_FUNCTION_329_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_330_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_331_0()
{
}

uint64_t OUTLINED_FUNCTION_333_0()
{

  return sub_2753B65F8();
}

uint64_t MusicContent.SourceType.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

char *MusicContentSystem.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t MusicContentSystem.__deallocating_deinit()
{
  MusicContentSystem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MusicContentSystem.qualify(rawIdentifiers:_:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[17] = *v0;
  sub_2753B6288();
  v1[18] = sub_2753B6278();
  sub_27538B458(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v6 = sub_2753B70C8();
  v1[19] = v6;
  v1[20] = v5;

  return MEMORY[0x2822009F8](sub_27538AA34, v6, v5);
}

uint64_t sub_27538AA34()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = *(v2 + 16);
  v0[21] = v3;
  v0[22] = *(*v1 + 120);
  v0[23] = 0;
  if (v3)
  {
    OUTLINED_FUNCTION_1_9(v2);
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_0_8(v4);

    return MEMORY[0x2821CC408](v0 + 2);
  }

  else
  {

    OUTLINED_FUNCTION_19_0();

    return v5();
  }
}

uint64_t sub_27538AB40()
{
  OUTLINED_FUNCTION_14_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v2 + 232) = v0;

  if (v0)
  {
    sub_2753147B0(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 89));
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_27538B028;
  }

  else
  {
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v6 = sub_27538AC58;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_27538AC58()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 72) = v6;
  *(v0 + 56) = v7;
  *(v0 + 88) = v1;
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = sub_27538AD38;

  return MEMORY[0x2821CC598](v0 + 56, v2, v3);
}

uint64_t sub_27538AD38(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v4 + 248) = v1;

  if (v1)
  {
    v6 = *(v4 + 152);
    v7 = *(v4 + 160);
    v8 = sub_27538B084;
  }

  else
  {
    v9 = *(v4 + 208);
    v10 = *(v4 + 216);
    v11 = *(v4 + 192);
    v12 = *(v4 + 200);
    *(v4 + 256) = a1;
    sub_2753147B0(v11, v12, v9, v10, *(v4 + 89));
    v6 = *(v4 + 152);
    v7 = *(v4 + 160);
    v8 = sub_27538AE64;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_27538AE64()
{
  v0[12] = v0[32];
  v1 = v0[14];
  sub_275361684(0, &qword_2809C1450);
  sub_275362630();
  sub_27538B120(&qword_2809C2F58, &qword_2809C1450, &type metadata for MusicContent.QualifiedIdentifier, MEMORY[0x277D83970]);
  v2 = sub_2753B71E8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1(v2);

  v3 = v0[23] + 1;
  v0[23] = v3;
  if (v3 == v0[21])
  {

    OUTLINED_FUNCTION_19_0();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_1_9(v0[13] + 40 * v3);
    v6 = swift_task_alloc();
    v0[28] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_0_8(v6);

    return MEMORY[0x2821CC408](v0 + 2);
  }
}

uint64_t sub_27538B028()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27538B084()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 89);

  sub_2753147B0(v4, v3, v1, v2, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_19_0();

  return v6();
}

uint64_t sub_27538B120(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_275361684(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27538B168()
{
  result = qword_2809C2F60;
  if (!qword_2809C2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F60);
  }

  return result;
}

unint64_t sub_27538B1C0()
{
  result = qword_2809C2F68;
  if (!qword_2809C2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F68);
  }

  return result;
}

unint64_t sub_27538B218()
{
  result = qword_2809C2F70;
  if (!qword_2809C2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F70);
  }

  return result;
}

unint64_t sub_27538B270()
{
  result = qword_2809C2F78;
  if (!qword_2809C2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F78);
  }

  return result;
}

uint64_t sub_27538B37C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27538B3BC()
{
  result = qword_2809C2F90;
  if (!qword_2809C2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F90);
  }

  return result;
}

uint64_t sub_27538B458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27538B4A4()
{
  result = qword_2809C2F98[0];
  if (!qword_2809C2F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C2F98);
  }

  return result;
}

uint64_t sub_27538B4F8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContentSystem.storage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27538B548()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27538B5F8;

  return MusicContentSystem.qualify(rawIdentifiers:_:)();
}

uint64_t sub_27538B5F8()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19_0();

  return v3();
}

_BYTE *_s10SourceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27538B7A8);
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

uint64_t sub_27538B820(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_9@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 32);
  *(v1 + 192) = v3;
  v4 = *(a1 + 40);
  *(v1 + 200) = v4;
  v5 = *(a1 + 48);
  *(v1 + 208) = v5;
  v6 = *(a1 + 56);
  *(v1 + 216) = v6;
  v7 = *(a1 + 64);
  *(v1 + 89) = v7;

  return sub_275329198(v3, v4, v5, v6, v7);
}

unint64_t sub_27538B964()
{
  result = qword_2809C3020;
  if (!qword_2809C3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3020);
  }

  return result;
}

uint64_t sub_27538BA08(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2753B6148();
  OUTLINED_FUNCTION_75(v2);
  v1[3] = OUTLINED_FUNCTION_138_0();
  sub_27538C3F8(0);
  OUTLINED_FUNCTION_75(v3);
  v1[4] = OUTLINED_FUNCTION_138_0();
  v4 = sub_2753B61F8();
  v1[5] = v4;
  OUTLINED_FUNCTION_75(v4);
  v1[6] = OUTLINED_FUNCTION_138_0();
  v5 = sub_2753B63F8();
  OUTLINED_FUNCTION_75(v5);
  v1[7] = OUTLINED_FUNCTION_138_0();
  v6 = sub_2753B6418();
  OUTLINED_FUNCTION_75(v6);
  v1[8] = OUTLINED_FUNCTION_138_0();
  sub_2753B6288();
  v1[9] = sub_2753B6278();
  sub_27538C5D0(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v8 = sub_2753B70C8();
  v1[10] = v8;
  v1[11] = v7;

  return MEMORY[0x2822009F8](sub_27538BB74, v8, v7);
}

uint64_t sub_27538BB74()
{
  sub_2753B6438();
  sub_2753B6408();
  sub_2753B63E8();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_27538BC38;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2821CC1F8](v3, v2);
}

uint64_t sub_27538BC38()
{
  v2 = *v1;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_53_0();
  *v6 = v5;
  *(v8 + 104) = v7;
  *(v8 + 112) = v0;

  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  if (v0)
  {
    v11 = sub_27538C1D4;
  }

  else
  {
    v11 = sub_27538BD74;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_27538BD74()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[4];
  sub_2753B6188();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
  sub_2753B6138();
  sub_2753B66C8();
  swift_allocObject();
  sub_2753B66A8();
  if (v1)
  {

    OUTLINED_FUNCTION_19_0();

    return v4();
  }

  else
  {
    type metadata accessor for MusicContent.Sources.MusicKit();
    swift_allocObject();
    sub_27538C450(0);
    swift_allocObject();
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_27538BF48;

    return sub_27538C990();
  }
}

uint64_t sub_27538BF48(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_53_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_53_0();
  *v7 = v6;
  v4[16] = v1;

  if (v1)
  {
    v8 = v4[10];
    v9 = v4[11];
    v10 = sub_27538C134;
  }

  else
  {
    v4[17] = a1;
    v8 = v4[10];
    v9 = v4[11];
    v10 = sub_27538C068;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_27538C068()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);

  sub_27538C4E4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *v2 = v3;

  OUTLINED_FUNCTION_19_0();

  return v4();
}

uint64_t sub_27538C134()
{

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27538C1D4()
{

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27538C274(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27538C30C;

  return sub_27538BA08(a1);
}

uint64_t sub_27538C30C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_53_0();
  *v2 = v1;

  OUTLINED_FUNCTION_19_0();

  return v3();
}

void sub_27538C3F8(uint64_t a1)
{
  if (!qword_2809C08E8)
  {
    sub_2753B61F8();
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C08E8);
    }
  }
}

void sub_27538C450(uint64_t a1)
{
  if (!qword_2809C3028)
  {
    v2 = type metadata accessor for MusicContent.Sources.MusicKit();
    v3 = sub_27538C5D0(&qword_2809C3030, type metadata accessor for MusicContent.Sources.MusicKit, &protocol conformance descriptor for MusicContent.Sources.MusicKit);
    v5 = type metadata accessor for MusicContentSystem(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2809C3028);
    }
  }
}

void sub_27538C4E4(uint64_t a1)
{
  if (!qword_2809C3038)
  {
    sub_27538C450(255);
    v3 = v2;
    v4 = sub_27538C5D0(&qword_2809C3040, sub_27538C450, &protocol conformance descriptor for MusicContentSystem<A>);
    v6 = type metadata accessor for MusicContentBehavior(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_2809C3038);
    }
  }
}

uint64_t sub_27538C5D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27538C618()
{
  sub_2753920F0(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v21 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v21 - v2);
  sub_2753920F0(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_275391F70(0);
  sub_2753B69A8();
  v9 = sub_2753B6648();
  v11 = v10;

  v30 = v9;
  v31 = v11;
  sub_2753B6988();
  sub_2753B6A58();
  (*(v6 + 8))(v8, v5);
  v12 = v21;
  if ((*(v1 + 88))(v3, v21) == *MEMORY[0x277D65178])
  {
    (*(v1 + 96))(v3, v12);
    sub_27535A340(*v3, &v22);

    v13 = v28 | (v29 << 16);
    if ((~v13 & 0xFE00FE) != 0)
    {
      v15 = v22;
      v14 = v23;
      v16 = v24;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      if ((v13 & 0xE00000) != 0)
      {
        sub_2752FBB58(v22, v23, v24, v25, v26, v27, v28 | (v29 << 16));
      }

      else
      {
        v22 = 45;
        v23 = 0xE100000000000000;

        MEMORY[0x277C76100](v15, v14);
        sub_2752FBB58(v15, v14, v16, v17, v18, v19, v13);

        MEMORY[0x277C76100](v22, v23);
      }
    }
  }

  else
  {
    (*(v1 + 8))(v3, v12);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_2753B7398();

  v22 = v30;
  v23 = v31;
  MEMORY[0x277C76100](0x7469736E6172742DLL, 0xEF6F666E496E6F69);
  return v22;
}

uint64_t sub_27538C990()
{
  OUTLINED_FUNCTION_14_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  sub_2753B6288();
  v1[7] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  v7 = sub_275392218(v5, v6, MEMORY[0x277D64EF8]);
  v9 = OUTLINED_FUNCTION_22_3(v7);
  v1[8] = v9;
  v1[9] = v8;

  return MEMORY[0x2822009F8](sub_27538CA60, v9, v8);
}

uint64_t sub_27538CA60()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  sub_2753B6AF8();
  *(v1 + 16) = sub_2753B6AE8();
  type metadata accessor for MusicContentStorage();
  swift_allocObject();

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_27538CB38;

  return sub_275371F64();
}

uint64_t sub_27538CB38()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v5[11] = v0;

  if (v0)
  {

    v9 = v5[8];
    v10 = v5[9];
    v11 = sub_27538CCD8;
  }

  else
  {
    v5[12] = v3;
    v9 = v5[8];
    v10 = v5[9];
    v11 = sub_27538CC4C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27538CC4C()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  v2[3] = v1;
  v2[4] = v4;
  v2[5] = v3;
  OUTLINED_FUNCTION_105_3();
  v6 = v0[5];

  return v5(v6);
}

uint64_t sub_27538CCD8()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_27();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27538CD6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  sub_275392260(a2, v2 + OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer, type metadata accessor for SmartTransitionRenderer);
  return v2;
}

uint64_t static SonicNES.shared.getter()
{
  OUTLINED_FUNCTION_14_0();
  v1[6] = v0;
  v2 = type metadata accessor for SmartTransitionRenderer(0);
  OUTLINED_FUNCTION_75(v2);
  v1[7] = OUTLINED_FUNCTION_138_0();
  v3 = sub_2753B5E48();
  v1[8] = v3;
  OUTLINED_FUNCTION_17_1(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_138_0();
  v5 = sub_2753B5E78();
  v1[11] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[12] = v6;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = sub_2753B6878();
  v1[15] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_138_0();
  sub_27538E610(0);
  v1[18] = v9;
  OUTLINED_FUNCTION_17_1(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B6148();
  OUTLINED_FUNCTION_75(v11);
  v1[21] = OUTLINED_FUNCTION_138_0();
  sub_275392158(0, &qword_2809C08E8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_75(v12);
  v1[22] = OUTLINED_FUNCTION_138_0();
  v13 = sub_2753B6168();
  v1[23] = v13;
  OUTLINED_FUNCTION_17_1(v13);
  v1[24] = v14;
  v1[25] = OUTLINED_FUNCTION_138_0();
  v15 = sub_2753B61F8();
  v1[26] = v15;
  OUTLINED_FUNCTION_17_1(v15);
  v1[27] = v16;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v17 = sub_2753B6418();
  v1[33] = v17;
  OUTLINED_FUNCTION_17_1(v17);
  v1[34] = v18;
  v1[35] = OUTLINED_FUNCTION_138_0();
  v19 = sub_2753B63B8();
  v1[36] = v19;
  OUTLINED_FUNCTION_17_1(v19);
  v1[37] = v20;
  v1[38] = OUTLINED_FUNCTION_138_0();
  v21 = sub_2753B63F8();
  v1[39] = v21;
  OUTLINED_FUNCTION_17_1(v21);
  v1[40] = v22;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_2753B6288();
  v1[43] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  v25 = sub_275392218(v23, v24, MEMORY[0x277D64EF8]);
  v27 = OUTLINED_FUNCTION_22_3(v25);
  v1[44] = v27;
  v1[45] = v26;

  return MEMORY[0x2822009F8](sub_27538D1F4, v27, v26);
}

uint64_t sub_27538D1F4()
{
  if (qword_2809C3050)
  {

    OUTLINED_FUNCTION_5_7();

    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_309_0();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[42];
  v4 = v0[40];
  v17 = v0[39];
  v18 = v0[41];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[35];
  v8 = v0[34];
  v15 = v0[36];
  v16 = v0[33];
  v9 = NSTemporaryDirectory();
  sub_2753B6D88();

  MEMORY[0x277C76100](0xD000000000000013, 0x80000002753BD8C0);

  sub_2753B63E8();
  (*(v6 + 104))(v5, *MEMORY[0x277D64F50], v15);
  sub_2753B63C8();
  sub_2753B63D8();
  sub_2753B6438();
  sub_2753B6178();

  (*(v8 + 104))(v7, *MEMORY[0x277D64F58], v16);
  (*(v4 + 16))(v18, v3, v17);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_27538D4D8;
  OUTLINED_FUNCTION_309_0();

  return MEMORY[0x2821CC1F8](v11, v12);
}

uint64_t sub_27538D4D8()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *(v3 + 376) = v5;
  *(v3 + 384) = v0;

  v6 = *(v2 + 360);
  v7 = *(v2 + 352);
  if (v0)
  {
    v8 = sub_27538E4DC;
  }

  else
  {
    v8 = sub_27538D610;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_27538D610()
{
  v1 = v0[48];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  sub_2753B7238();
  if (v1)
  {
    (*(v0[40] + 8))(v0[42], v0[39]);

    OUTLINED_FUNCTION_19_0();

    return v17();
  }

  else
  {
    v4 = v0[31];
    v45 = v0[27];
    v44 = v0[26];
    v5 = v0[24];
    v6 = v0[25];
    v7 = v0[23];

    v0[2] = 0xD000000000000014;
    v0[3] = 0x80000002753BD8E0;
    v43 = *MEMORY[0x277CC91D8];
    v42 = *(v5 + 104);
    v42(v6);
    sub_275329E48();
    sub_2753B61E8();
    v8 = *(v5 + 8);
    v8(v6, v7);
    v9 = *(v45 + 8);
    v0[49] = v9;
    v0[50] = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v44);
    v10 = [v2 defaultManager];
    sub_2753B7238();
    v37 = v0[30];
    v38 = v8;
    v11 = v0[29];
    v39 = v0[28];
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[25];
    v15 = v0[23];
    v40 = v0[22];
    v41 = v0[32];

    v0[4] = 0xD000000000000029;
    v0[5] = 0x80000002753BD900;
    (v42)(v14, v43, v15);
    sub_2753B61E8();
    v38(v14, v15);
    v9(v11, v13);
    v16 = *(v12 + 16);
    v16(v39, v41, v13);
    v16(v40, v37, v13);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v13);
    sub_2753B6138();
    sub_2753B66C8();
    swift_allocObject();
    v0[51] = sub_2753B66A8();
    sub_2753B66B8();
    v19 = 0.2;
    if (MSVDeviceOSIsInternalInstall())
    {
      v20 = [objc_opt_self() standardUserDefaults];
      v21 = sub_2753B6D78();
      [v20 doubleForKey_];
      v23 = v22;

      if (v23 > 0.0001)
      {
        if (v23 > 1.0)
        {
          v19 = 0.2;
        }

        else
        {
          v19 = v23;
        }
      }
    }

    v25 = v0[19];
    v24 = v0[20];
    v26 = v0[18];
    MEMORY[0x277C75B00]();
    sub_2753B6838();
    (*(v25 + 8))(v24, v26);
    v27 = sub_2753B6858();
    v28 = sub_2753B7248();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134349056;
      *(v29 + 4) = v19;
      _os_log_impl(&dword_2752E3000, v27, v28, "[ALC] - Setting planner configuration with step duration: - %{public}f", v29, 0xCu);
      MEMORY[0x277C77190](v29, -1, -1);
    }

    v30 = v0[16];
    v31 = v0[17];
    v32 = v0[15];
    v34 = v0[9];
    v33 = v0[10];
    v35 = v0[8];

    (*(v30 + 8))(v31, v32);
    *v33 = v19;
    (*(v34 + 104))(v33, *MEMORY[0x277D7F030], v35);
    sub_2753B5E68();
    type metadata accessor for MusicContent.Sources.MusicKit();
    swift_allocObject();
    sub_27538C450(0);
    swift_allocObject();

    v36 = swift_task_alloc();
    v0[52] = v36;
    *v36 = v0;
    v36[1] = sub_27538DE6C;

    return sub_27538C990();
  }
}

uint64_t sub_27538DE6C()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *(v3 + 424) = v5;
  *(v3 + 432) = v0;

  v6 = *(v2 + 360);
  v7 = *(v2 + 352);
  if (v0)
  {
    v8 = sub_27538E344;
  }

  else
  {
    v8 = sub_27538DFA4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

void sub_27538DFA4()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[7];

  sub_27538C4E4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v6 + 16))(v4, v3, v5);

  sub_27539D9E8(v4, v7);
  v9 = v0[49];
  v10 = v0[42];
  v11 = v0[40];
  v23 = v0[32];
  v24 = v0[39];
  v22 = v0[30];
  v12 = v0[26];
  v21 = v0[14];
  v13 = v0[12];
  v20 = v0[11];
  if (v2)
  {

    (*(v13 + 8))(v21, v20);
    v9(v22, v12);
    v9(v23, v12);
    (*(v11 + 8))(v10, v24);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_12_6();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_309_0();

    __asm { BRAA            X1, X16 }
  }

  v19 = v0[42];
  v16 = v0[7];
  swift_allocObject();
  qword_2809C3050 = sub_27538CD6C(v8, v16);

  (*(v13 + 8))(v21, v20);
  v9(v22, v12);
  v9(v23, v12);
  (*(v11 + 8))(v19, v24);
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_309_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_27538E344()
{
  v1 = v0[49];
  v2 = v0[40];
  v11 = v0[39];
  v12 = v0[42];
  v9 = v0[30];
  v10 = v0[32];
  v3 = v0[26];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  (*(v5 + 8))(v4, v6);
  v1(v9, v3);
  v1(v10, v3);
  (*(v2 + 8))(v12, v11);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_19_0();

  return v7();
}

uint64_t sub_27538E4DC()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];

  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_19_0();

  return v4();
}

void sub_27538E610(uint64_t a1)
{
  if (!qword_2809C1480)
  {
    sub_2753B6878();
    v1 = sub_2753B6848();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C1480);
    }
  }
}

uint64_t SonicNES.behavior.getter()
{
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
}

uint64_t SonicNES.behavior.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t SonicNES.smartTransitionRenderer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer;
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_10_7();
  return sub_27539177C(v1 + v3, a1, v4);
}

uint64_t SonicNES.smartTransitionRenderer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer;
  swift_beginAccess();
  sub_27539160C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SonicNES.load(identifiers:in:)()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  v2 = sub_275392218(v0, v1, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_22_3(v2);
  OUTLINED_FUNCTION_118_0();

  return MEMORY[0x2822009F8](sub_27538E8F0, v3, v4);
}

uint64_t SonicNES.deinit()
{

  OUTLINED_FUNCTION_1_10();
  sub_275392098(v0 + v1, v2);
  return v0;
}

uint64_t SonicNES.__deallocating_deinit()
{

  OUTLINED_FUNCTION_1_10();
  sub_275392098(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t SonicNES.loadContentID(for:in:)()
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 104) = v0;
  v3 = *(v2 + 16);
  *(v1 + 112) = *v2;
  *(v1 + 128) = v3;
  *(v1 + 50) = *(v2 + 32);
  sub_2753B6288();
  *(v1 + 144) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  v6 = sub_275392218(v4, v5, MEMORY[0x277D64EF8]);
  v8 = OUTLINED_FUNCTION_22_3(v6);
  *(v1 + 152) = v8;
  *(v1 + 160) = v7;

  return MEMORY[0x2822009F8](sub_27538EAB4, v8, v7);
}

uint64_t sub_27538EAB4()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 50);
  v2 = *(v0 + 104);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v0 + 168) = v3;
  *(v0 + 96) = v3;
  *(v0 + 32) = v9;
  *(v0 + 16) = v10;
  *(v0 + 48) = v1;

  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  sub_27538C4E4(0);
  OUTLINED_FUNCTION_8_7();
  sub_275392218(v5, v6, &protocol conformance descriptor for MusicContentBehavior<A>);
  *v4 = v0;
  v4[1] = sub_27538EBE4;
  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821CC570](v7);
}

uint64_t sub_27538EBE4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[23] = v0;

  v7 = v3[19];
  v8 = v3[20];
  if (v0)
  {
    v9 = sub_27538EEE4;
  }

  else
  {
    v9 = sub_27538ECF0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27538ECF0()
{

  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    *(v0 + 49) = 3;
    sub_2753B7398();

    v4 = MusicContent.RawIdentifier.description.getter();
    MEMORY[0x277C76100](v4);

    sub_2753920F0(0, &qword_2809C3058, sub_275391670, &type metadata for SonicNESError, MEMORY[0x277D64F08]);
    sub_2753916C4(&qword_2809C3068, &qword_2809C3058, sub_275391670, &type metadata for SonicNESError);
    swift_allocError();
    sub_275391670();
    v5 = OUTLINED_FUNCTION_27();
    MEMORY[0x277C755D0](v5);
    swift_willThrow();
    OUTLINED_FUNCTION_19_0();

    return v6();
  }
}

uint64_t sub_27538EEE4()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t SonicNES.loadTransitionData(outgoingTrackInfo:incomingTrackInfo:in:previousTransitionPlaybackEndState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v10 = v8;
  *(v9 + 72) = a1;
  *(v9 + 80) = v10;
  v15 = type metadata accessor for SmartTransitionRequestSongData(0);
  *(v9 + 88) = v15;
  OUTLINED_FUNCTION_75(v15);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();
  v16 = type metadata accessor for SmartTransitionRenderer(0);
  OUTLINED_FUNCTION_75(v16);
  *(v9 + 112) = OUTLINED_FUNCTION_138_0();
  v17 = sub_2753B6878();
  *(v9 + 120) = v17;
  OUTLINED_FUNCTION_17_1(v17);
  *(v9 + 128) = v18;
  *(v9 + 136) = OUTLINED_FUNCTION_138_0();
  v19 = type metadata accessor for SongTransitionInfo(0);
  *(v9 + 144) = v19;
  OUTLINED_FUNCTION_75(v19);
  v20 = swift_task_alloc();
  *(v9 + 152) = v20;
  v21 = swift_task_alloc();
  *(v9 + 160) = v21;
  *(v9 + 168) = swift_task_alloc();
  v22 = swift_task_alloc();
  *(v9 + 46) = *a4;
  *(v9 + 47) = *(a4 + 1);
  *(v9 + 312) = *(a4 + 2);
  v23 = *(a4 + 8);
  *(v9 + 176) = v22;
  *(v9 + 184) = v23;
  *(v9 + 313) = *(a4 + 16);
  v24 = *(a4 + 24);
  *(v9 + 314) = *(a4 + 32);
  v25 = *(a4 + 40);
  *(v9 + 192) = v24;
  *(v9 + 200) = v25;
  *(v9 + 315) = *(a4 + 48);
  *(v9 + 316) = *a7;
  *(v9 + 317) = *(a7 + 1);
  *(v9 + 318) = *(a7 + 2);
  v26 = *(a7 + 8);
  *(v9 + 319) = *(a7 + 16);
  v27 = *(a7 + 24);
  *(v9 + 208) = v26;
  *(v9 + 216) = v27;
  *(v9 + 320) = *(a7 + 32);
  *(v9 + 224) = *(a7 + 40);
  *(v9 + 321) = *(a7 + 48);
  *(v9 + 29) = *(a8 + 13);
  *(v9 + 16) = *a8;
  *(v9 + 232) = *v35;
  *(v9 + 322) = *(v35 + 16);
  *(v9 + 248) = sub_2753B6288();
  *(v9 + 256) = sub_2753B6278();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v9 + 264) = v28;
  *v28 = v29;
  v28[1] = sub_27538F1E8;

  return sub_27538FAC8(v21, v20, a2, a3, a5, a6, (v9 + 16));
}

uint64_t sub_27538F1E8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  v3[34] = v5;
  v3[35] = v6;
  v3[36] = v7;
  v3[37] = v8;
  v3[38] = v0;

  OUTLINED_FUNCTION_0_9();
  v11 = sub_275392218(v9, v10, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_22_3(v11);
  OUTLINED_FUNCTION_118_0();
  if (v0)
  {
    v14 = sub_27538FA18;
  }

  else
  {
    v14 = sub_27538F354;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_27538F354()
{
  v75 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);

  sub_275392260(v3, v2, type metadata accessor for SongTransitionInfo);
  sub_275392260(v4, v1, type metadata accessor for SongTransitionInfo);
  v6 = *(v5 + 36);
  if (*(v2 + v6) == 1)
  {
    v7 = *(*(v0 + 168) + v6);
  }

  else
  {
    v7 = 0;
  }

  if (MSVDeviceOSIsInternalInstall() && (v8 = [objc_opt_self() standardUserDefaults], v9 = sub_2753B6D78(), v10 = objc_msgSend(v8, sel_BOOLForKey_, v9), v9, v8, v10))
  {
    sub_2753B6868();
    v11 = sub_2753B6858();
    v12 = sub_2753B7248();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2752E3000, v11, v12, "[ALC] - SupportsSmartTransitions overridden", v13, 2u);
      MEMORY[0x277C77190](v13, -1, -1);
    }

    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  else if ((v7 & 1) == 0)
  {
    v40 = *(v0 + 168);
    v39 = *(v0 + 176);

    *(v0 + 45) = 2;
    sub_2753920F0(0, &qword_2809C3070, sub_275391728, &type metadata for SmartTransitionRendererError, MEMORY[0x277D64F08]);
    sub_2753916C4(&qword_2809C3080, &qword_2809C3070, sub_275391728, &type metadata for SmartTransitionRendererError);
    swift_allocError();
    v41 = sub_275391728();
    MEMORY[0x277C755D0](v0 + 45, 0xD00000000000003ELL, 0x80000002753BD9C0, MEMORY[0x277D84F90], &type metadata for SmartTransitionRendererError, v41);
    swift_willThrow();
    sub_275392098(v40, type metadata accessor for SongTransitionInfo);
    v38 = v39;
    goto LABEL_13;
  }

  v72 = *(v0 + 304);
  v63 = *(v0 + 288);
  v64 = *(v0 + 296);
  v55 = *(v0 + 280);
  v53 = *(v0 + 272);
  v71 = *(v0 + 322);
  v69 = *(v0 + 232);
  v70 = *(v0 + 240);
  v68 = *(v0 + 321);
  v66 = *(v0 + 320);
  v67 = *(v0 + 224);
  v65 = *(v0 + 216);
  v61 = *(v0 + 318);
  v62 = *(v0 + 319);
  v59 = *(v0 + 317);
  v56 = *(v0 + 315);
  v57 = *(v0 + 316);
  v60 = *(v0 + 208);
  v54 = *(v0 + 200);
  v52 = *(v0 + 314);
  v49 = *(v0 + 313);
  v48 = *(v0 + 184);
  v47 = *(v0 + 312);
  v17 = *(v0 + 47);
  v18 = *(v0 + 46);
  v19 = *(v0 + 176);
  v50 = *(v0 + 192);
  v51 = *(v0 + 168);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  v22 = OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer;
  v23 = *(v0 + 88);
  v24 = *(v0 + 96);
  v25 = *(v0 + 80);
  v58 = *(v0 + 72);
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_10_7();
  sub_27539177C(v25 + v22, v21, v26);
  sub_27539177C(v19, v20 + v23[5], type metadata accessor for SongTransitionInfo);
  *v20 = v53;
  v20[1] = v55;
  *(v20 + v23[6]) = v18;
  *(v20 + v23[7]) = v17;
  *(v20 + v23[8]) = v47;
  v27 = v20 + v23[9];
  *v27 = v48;
  v27[8] = v49;
  v28 = v20 + v23[10];
  *v28 = v50;
  v28[8] = v52;
  v29 = v20 + v23[11];
  *v29 = v54;
  v29[8] = v56;
  sub_27539177C(v51, v24 + v23[5], type metadata accessor for SongTransitionInfo);
  *v24 = v63;
  v24[1] = v64;
  *(v24 + v23[6]) = v57;
  *(v24 + v23[7]) = v59;
  *(v24 + v23[8]) = v61;
  v30 = v24 + v23[9];
  *v30 = v60;
  v30[8] = v62;
  v31 = v24 + v23[10];
  *v31 = v65;
  v31[8] = v66;
  v32 = v24 + v23[11];
  *v32 = v67;
  v32[8] = v68;
  v73[0] = v69;
  v73[1] = v70;
  v74 = v71;
  sub_27539DB88(v20, v24, v73, v58);
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  if (v72)
  {
    v36 = *(v0 + 104);
    v35 = *(v0 + 112);
    sub_275392098(*(v0 + 96), type metadata accessor for SmartTransitionRequestSongData);
    sub_275392098(v36, type metadata accessor for SmartTransitionRequestSongData);
    OUTLINED_FUNCTION_1_10();
    sub_275392098(v35, v37);
    sub_275392098(v34, type metadata accessor for SongTransitionInfo);
    v38 = v33;
LABEL_13:
    sub_275392098(v38, type metadata accessor for SongTransitionInfo);
    OUTLINED_FUNCTION_23_2();

    OUTLINED_FUNCTION_19_0();
    goto LABEL_15;
  }

  v43 = *(v0 + 104);
  v44 = *(v0 + 112);
  sub_275392098(*(v0 + 96), type metadata accessor for SmartTransitionRequestSongData);
  sub_275392098(v43, type metadata accessor for SmartTransitionRequestSongData);
  OUTLINED_FUNCTION_1_10();
  sub_275392098(v44, v45);
  sub_275392098(v34, type metadata accessor for SongTransitionInfo);
  sub_275392098(v33, type metadata accessor for SongTransitionInfo);

  OUTLINED_FUNCTION_19_0();
LABEL_15:

  return v42();
}

uint64_t sub_27538FA18()
{
  OUTLINED_FUNCTION_66_0();

  OUTLINED_FUNCTION_23_2();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27538FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *(v8 + 88) = a6;
  *(v8 + 96) = v7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  *(v8 + 48) = a1;
  sub_275391C04(0);
  *(v8 + 104) = v10;
  v11 = swift_task_alloc();
  v12 = *a7;
  *(v8 + 112) = v11;
  *(v8 + 120) = v12;
  *(v8 + 128) = *(a7 + 1);
  *(v8 + 200) = *(a7 + 6);
  *(v8 + 204) = *(a7 + 28);
  sub_2753B6288();
  *(v8 + 144) = sub_2753B6278();
  sub_275392218(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v14 = sub_2753B70C8();
  *(v8 + 152) = v14;
  *(v8 + 160) = v13;

  return MEMORY[0x2822009F8](sub_27538FBEC, v14, v13);
}

uint64_t sub_27538FBEC(uint64_t a1)
{
  sub_2753B7178();
  v2 = *(v1 + 204);
  v3 = *(v1 + 136);
  v4 = *(v1 + 96);
  v5 = *(v1 + 64);
  v19 = *(v1 + 80);
  v20 = *(v1 + 120);
  v17 = v5;
  LODWORD(v5) = *(v1 + 200);
  v18 = vmovl_u8(*&v5).u64[0];
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  v6 = *(v4 + 16);
  *(v1 + 168) = v6;
  *(v1 + 40) = v6;
  v7 = swift_task_alloc();
  *(v1 + 176) = v7;
  *(v7 + 16) = v17;
  *(v7 + 32) = v19;
  *(v7 + 48) = v20;
  *(v7 + 64) = v3;
  *(v7 + 72) = vuzp1_s8((v18 & 0xFF01FF01FF01FF01), (v18 & 0xFF01FF01FF01FF01)).u32[0];
  *(v7 + 76) = v2 & 1;

  v8 = swift_task_alloc();
  *(v1 + 184) = v8;
  sub_27538C4E4(0);
  v10 = v9;
  OUTLINED_FUNCTION_8_7();
  v13 = sub_275392218(v11, v12, &protocol conformance descriptor for MusicContentBehavior<A>);
  *v8 = v1;
  v8[1] = sub_27538FDC8;
  v15 = *(v1 + 104);
  v14 = *(v1 + 112);

  return MEMORY[0x2821CC578](v14, sub_275391D04, v7, v10, v15, v13);
}

uint64_t sub_27538FDC8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[24] = v0;

  v7 = v3[19];
  v8 = v3[20];
  if (v0)
  {
    v9 = sub_27538FFD4;
  }

  else
  {
    v9 = sub_27538FEE4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27538FEE4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[6];
  v3 = v0[7];

  v5 = *v1;
  v6 = v1[1];
  v7 = (v1 + v2[16]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v2[20];
  sub_275392260(v1 + v2[12], v4, type metadata accessor for SongTransitionInfo);
  sub_275392260(v1 + v10, v3, type metadata accessor for SongTransitionInfo);

  v11 = v0[1];

  return v11(v5, v6, v8, v9);
}

uint64_t sub_27538FFD4()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275390038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10)
{
  sub_275391D8C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2753C28B0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  sub_275391DDC(0);

  sub_2753B6BC8();

  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  sub_275391C04(0);

  sub_2753B6B78();
}

uint64_t sub_27539019C(uint64_t a1)
{
  sub_275392158(0, &qword_2809C30D8, sub_2753921BC, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2753BE420;
  sub_275392004(0);
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_275392218(&qword_2809C30E8, sub_275392004, &protocol conformance descriptor for FacetCollection<A><>.TransitionInfo);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_275391F70(0);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  return v2;
}

uint64_t sub_2753902A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  type metadata accessor for SongTransitionInfo(0);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  sub_275391F70(0);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  sub_275392004(0);
  v6[22] = v8;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_2753B6288();
  v6[25] = sub_2753B6278();
  sub_275392218(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v10 = sub_2753B70C8();
  v6[26] = v10;
  v6[27] = v9;

  return MEMORY[0x2822009F8](sub_275390454, v10, v9);
}

uint64_t sub_275390454()
{
  OUTLINED_FUNCTION_66_0();
  sub_2753B7178();
  v1 = v0[13];
  v0[2] = v0[12];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[28] = v2;
  sub_275391DDC(0);
  v0[29] = v3;
  *v2 = v0;
  v2[1] = sub_2753905A0;
  OUTLINED_FUNCTION_32_4();

  return MEMORY[0x2821CC540](v4);
}

uint64_t sub_2753905A0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[30] = v0;

  v7 = v3[26];
  v8 = v3[27];
  if (v0)
  {
    v9 = sub_275390E80;
  }

  else
  {
    v9 = sub_27539069C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27539069C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = *(v4 + 32);
  v0[31] = v7;
  v0[32] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v1, v2, v3);
  v0[4] = v6;
  v0[5] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[33] = v8;
  *v8 = v9;
  v8[1] = sub_275390778;
  v10 = v0[20];

  return MEMORY[0x2821CC540](v10);
}

uint64_t sub_275390778()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[34] = v0;

  v7 = v3[26];
  v8 = v3[27];
  if (v0)
  {
    v9 = sub_275390F18;
  }

  else
  {
    v9 = sub_275390874;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275390874()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 272);
  (*(v0 + 248))(*(v0 + 184), *(v0 + 160), *(v0 + 144));
  sub_2753B7178();
  if (v1)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 184);

    sub_275392098(v3, sub_275392004);
    sub_275392098(v2, sub_275392004);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_32_4();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 48) = sub_27538C618();
  *(v0 + 56) = v6;
  *(v0 + 280) = v6;
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *(v0 + 296) = sub_275392218(&qword_2809C30D0, sub_275392004, &protocol conformance descriptor for FacetCollection<A><>.TransitionInfo);
  *v7 = v0;
  v7[1] = sub_275390A30;
  OUTLINED_FUNCTION_32_4();

  return MEMORY[0x2821CC420](v8, v9, v10);
}

uint64_t sub_275390A30()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[38] = v0;

  if (v0)
  {

    v7 = v3[26];
    v8 = v3[27];
    v9 = sub_275390FCC;
  }

  else
  {
    v7 = v3[26];
    v8 = v3[27];
    v9 = sub_275390B34;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275390B34()
{
  OUTLINED_FUNCTION_14_0();
  v0[8] = sub_27538C618();
  v0[9] = v1;
  v0[39] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[40] = v2;
  *v2 = v3;
  v2[1] = sub_275390BDC;
  v4 = v0[37];
  v5 = v0[22];
  v6 = v0[16];

  return MEMORY[0x2821CC420](v6, v5, v4);
}

uint64_t sub_275390BDC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[41] = v0;

  if (v0)
  {
    sub_275392098(v3[17], type metadata accessor for SongTransitionInfo);

    v7 = v3[26];
    v8 = v3[27];
    v9 = sub_275391084;
  }

  else
  {
    v10 = v3[6];
    v3[42] = v3[8];
    v3[43] = v10;
    v7 = v3[26];
    v8 = v3[27];
    v9 = sub_275390D20;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275390D20()
{
  v1 = v0[43];
  v14 = v0[39];
  v15 = v0[42];
  v2 = v0[35];
  v3 = v0[24];
  v4 = v0[23];
  v5 = v0[17];
  v13 = v0[16];
  v6 = v0[10];

  sub_275392098(v4, sub_275392004);
  sub_275392098(v3, sub_275392004);
  sub_275391C04(0);
  v8 = v7[12];
  v9 = (v6 + v7[16]);
  v10 = v7[20];
  *v6 = v1;
  v6[1] = v2;
  sub_275392260(v5, v6 + v8, type metadata accessor for SongTransitionInfo);
  *v9 = v15;
  v9[1] = v14;
  sub_275392260(v13, v6 + v10, type metadata accessor for SongTransitionInfo);

  OUTLINED_FUNCTION_19_0();

  return v11();
}

uint64_t sub_275390E80()
{
  OUTLINED_FUNCTION_68_0();

  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275390F18()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 192);

  sub_275392098(v1, sub_275392004);
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v2();
}

uint64_t sub_275390FCC()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  OUTLINED_FUNCTION_9_6();
  sub_275392098(v3, v4);
  sub_275392098(v2, v0);
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_275391084()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  OUTLINED_FUNCTION_9_6();
  sub_275392098(v3, v4);
  sub_275392098(v2, v0);
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t SonicNES.loadTransitionInfoFor(outgoingTrackID:incomingTrackID:in:)()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  *(v0 + 16) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  v3 = sub_275392218(v1, v2, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_22_3(v3);
  OUTLINED_FUNCTION_118_0();

  return MEMORY[0x2822009F8](sub_2753911D8, v4, v5);
}

uint64_t sub_2753911D8()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_105_3();
  v1 = MEMORY[0x277D84F90];

  return v0(v1);
}
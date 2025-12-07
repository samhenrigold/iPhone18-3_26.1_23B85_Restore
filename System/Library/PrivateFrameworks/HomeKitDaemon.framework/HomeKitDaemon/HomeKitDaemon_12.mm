id sub_229672F78(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  sub_22A4DE7EC();
  sub_22A4DE1FC();

  v8 = 0xD00000000000001ALL;
  v2 = [v1 description];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  MEMORY[0x22AAD08C0](v3, v5);

  MEMORY[0x22AAD08C0](0x61746164206F7420, 0xE800000000000000);
  sub_22A4DBD3C();

  sub_229673968();
  swift_allocError();
  *v6 = v1;
  swift_willThrow();
  return v1;
}

char *sub_229673380(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_22A4DB24C();
  v8 = result;
  if (result)
  {
    result = sub_22A4DB27C();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_22A4DB26C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t _s13HomeKitDaemon21AliroVersionUtilitiesC29isCurrentDeviceCompatibleWith0dE023includeUWBCompatibilitySbAaEC_SbtFZ_0(void *a1, char a2)
{
  v4 = [objc_opt_self() driver];
  v5 = [v4 homeManager];

  *&v15 = v5;
  v14 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DBD4C();

  v6 = v17[0];
  if (!v17[0])
  {
    v6 = 0;
    *v17 = 0u;
    v18 = 0u;
LABEL_3:
    sub_229609094(v17);
    goto LABEL_4;
  }

  if ([v17[0] currentDeviceAliroVersion])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  *v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    goto LABEL_3;
  }

  type metadata accessor for AliroVersion();
  if (swift_dynamicCast())
  {
    v13 = AliroVersion.isCompatibleWith(version:includeUWBCompatibility:)(a1, a2 & 1);

    if (v13)
    {
      sub_22A4DE1FC();

      v17[0] = 0xD000000000000030;
      v17[1] = 0x800000022A58F550;
      v7 = [a1 description];
      goto LABEL_5;
    }
  }

LABEL_4:
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A58F510);
  v7 = [a1 description];
LABEL_5:
  v8 = v7;
  v9 = sub_22A4DD5EC();
  v11 = v10;

  MEMORY[0x22AAD08C0](v9, v11);

  sub_22A4DBD0C();

  return 1;
}

uint64_t sub_229673710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229673758()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_22966E1B8(v2, v3, v4);
}

unint64_t sub_229673844()
{
  result = qword_2814038B0;
  if (!qword_2814038B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814038B0);
  }

  return result;
}

uint64_t sub_229673898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22966C54C(a1, v4);
}

unint64_t sub_229673968()
{
  result = qword_27D87E528;
  if (!qword_27D87E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E528);
  }

  return result;
}

uint64_t sub_2296739BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_229673A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id HomeIntelligence.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HomeIntelligence();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_229673AEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E538, &qword_22A57C188);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_22957F3C0(0, 0, v8, &unk_22A57C198, v11);
  return sub_22A4DD9FC();
}

uint64_t sub_229673CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_22A4DD22C();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E540, &qword_22A57C1A0);
  v4[26] = swift_task_alloc();
  v6 = sub_22A4DD1DC();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E548, &qword_22A57C1A8);
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v8 = sub_22A4DD24C();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229673F40, 0, 0);
}

uint64_t sub_229673F40()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v18 = *(v0 + 256);
  v19 = *(v0 + 240);
  v17 = *(v0 + 264);
  sub_22A4DD1FC();
  swift_allocObject();
  *(v0 + 296) = sub_22A4DD1EC();
  sub_22A4DD1BC();
  v4 = sub_22967519C(0);
  v6 = v5;
  *(v0 + 304) = v4;
  *(v0 + 312) = v5;
  v7 = sub_22967519C(1);
  v9 = v8;
  *(v0 + 320) = v7;
  *(v0 + 328) = v8;
  v10 = *(v2 + 8);
  *(v0 + 336) = v10;
  *(v0 + 344) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v17);
  *(v0 + 96) = v4;
  *(v0 + 104) = v6;
  *(v0 + 112) = v7;
  *(v0 + 120) = v9;
  sub_2295AEF1C(v4, v6);
  sub_2295AEF1C(v7, v9);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E538, &qword_22A57C188);
  sub_22A4DDA0C();
  v11 = *(v3 + 8);
  *(v0 + 360) = v11;
  *(v0 + 368) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v18, v19);
  sub_2295AEF1C(v4, v6);
  sub_2295AEF1C(v7, v9);

  sub_22A4DD1CC();
  *(v0 + 440) = *MEMORY[0x277CD8F78];
  *(v0 + 408) = v7;
  *(v0 + 416) = v9;
  *(v0 + 392) = v4;
  *(v0 + 400) = v6;
  v12 = sub_22967553C();
  v13 = swift_task_alloc();
  *(v0 + 424) = v13;
  *v13 = v0;
  v13[1] = sub_229674194;
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);

  return MEMORY[0x282200308](v14, v15, v12);
}

uint64_t sub_229674194()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_229674FE8;
  }

  else
  {
    v2 = sub_2296742D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296742D4()
{

  return MEMORY[0x2822009F8](sub_229674360, 0, 0);
}

uint64_t sub_229674360()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 208);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v95 = *(v0 + 392);
    v97 = *(v0 + 400);
    v4 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v100 = *(v0 + 408);
    v105 = *(v0 + 416);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    sub_22A4DDA1C();

    sub_229590D18(v7, v6);
    sub_229590D18(v4, v5);
    sub_229590D18(v95, v97);
    sub_229590D18(v100, v105);

    v8 = *(v0 + 8);

    return v8();
  }

  __dst = (v0 + 444);
  v10 = *(v0 + 440);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  (*(v2 + 32))(*(v0 + 280), v3, v1);
  sub_22A4DD23C();
  v107 = *(v14 + 104);
  v107(v12, v10, v13);
  v15 = sub_22A4DD21C();
  v16 = *(v14 + 8);
  v16(v12, v13);
  v16(v11, v13);
  if ((v15 & 1) == 0 || !sub_22A4DD20C())
  {
    goto LABEL_13;
  }

  v17 = sub_22A4DD86C();
  *(v17 + 16) = 20;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 32) = 0;
  *(v0 + 475) = 20;
  if (!nw_path_get_ipv4_network_signature())
  {

    swift_unknownObjectRelease();
LABEL_13:
    v21 = 0;
    v106 = *(v0 + 376);
    v109 = 0xF000000000000000;
    goto LABEL_14;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4E0, &qword_22A578748);
  *(v0 + 80) = v18;
  *(v0 + 88) = sub_229675594();
  *(v0 + 56) = v17;
  v19 = __swift_project_boxed_opaque_existential_0((v0 + 56), v18);
  v20 = *v19;
  v21 = *(*v19 + 16);
  if (v21)
  {
    if (v21 <= 0xE)
    {
      v68 = *(v0 + 376);
      *(v0 + 459) = 0;
      *(v0 + 465) = 0;
      *(v0 + 473) = v21;
      memcpy((v0 + 459), (v20 + 32), v21);
      swift_unknownObjectRelease();
      v21 = *(v0 + 459);
      v67 = v68 & 0xF00000000000000 | *(v0 + 467) | ((*(v0 + 471) | (*(v0 + 473) << 16)) << 32);
      v109 = v67;
    }

    else
    {
      sub_22A4DB28C();
      swift_allocObject();
      v22 = sub_22A4DB23C();
      swift_unknownObjectRelease();
      if (v21 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
        v78 = swift_allocObject();
        *(v78 + 16) = 0;
        *(v78 + 24) = v21;
        v21 = v78;
        v23 = v22 | 0x8000000000000000;
      }

      else
      {
        v21 <<= 32;
        v23 = v22 | 0x4000000000000000;
      }

      v109 = v23;
      v67 = *(v0 + 376);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v67 = *(v0 + 376);
    v109 = 0xC000000000000000;
  }

  v106 = v67;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_14:
  v24 = *(v0 + 440);
  v26 = *(v0 + 192);
  v25 = *(v0 + 200);
  v27 = *(v0 + 176);
  sub_22A4DD23C();
  v107(v26, v24, v27);
  v28 = sub_22A4DD21C();
  v16(v26, v27);
  v16(v25, v27);
  if ((v28 & 1) == 0 || !sub_22A4DD20C())
  {
    goto LABEL_22;
  }

  v29 = sub_22A4DD86C();
  *(v29 + 16) = 20;
  *(v29 + 40) = 0;
  *(v29 + 48) = 0;
  *(v29 + 32) = 0;
  *(v0 + 474) = 20;
  if (!nw_path_get_ipv6_network_signature())
  {

    swift_unknownObjectRelease();
LABEL_22:
    v33 = 0;
    v36 = *(v0 + 384);
    v35 = 0xF000000000000000;
    v37 = v109;
    goto LABEL_23;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4E0, &qword_22A578748);
  *(v0 + 40) = v30;
  *(v0 + 48) = sub_229675594();
  *(v0 + 16) = v29;
  v31 = __swift_project_boxed_opaque_existential_0((v0 + 16), v30);
  v32 = *v31;
  v33 = *(*v31 + 16);
  if (v33)
  {
    if (v33 <= 0xE)
    {
      v69 = *(v0 + 384);
      *__dst = 0;
      *(v0 + 450) = 0;
      *(v0 + 458) = v33;
      memcpy(__dst, (v32 + 32), v33);
      swift_unknownObjectRelease();
      v33 = *__dst;
      v36 = v69 & 0xF00000000000000 | *(v0 + 452) | ((*(v0 + 456) | (*(v0 + 458) << 16)) << 32);
      v35 = v36;
    }

    else
    {
      sub_22A4DB28C();
      swift_allocObject();
      v34 = sub_22A4DB23C();
      swift_unknownObjectRelease();
      if (v33 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
        v79 = swift_allocObject();
        *(v79 + 16) = 0;
        *(v79 + 24) = v33;
        v33 = v79;
        v35 = v34 | 0x8000000000000000;
      }

      else
      {
        v33 <<= 32;
        v35 = v34 | 0x4000000000000000;
      }

      v36 = *(v0 + 384);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v36 = *(v0 + 384);
    v35 = 0xC000000000000000;
  }

  v37 = v109;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_23:
  v38 = *(v0 + 400);
  v108 = v36;
  if (v37 >> 60 == 15)
  {
    if (v38 >> 60 == 15)
    {
      v39 = *(v0 + 392);
      sub_2295AEF1C(v21, v37);
      sub_2295AEF1C(v39, v38);
LABEL_26:
      v40 = v21;
      v41 = v37;
LABEL_27:
      sub_229590D18(v40, v41);
      goto LABEL_28;
    }

LABEL_32:
    v47 = *(v0 + 392);
    sub_2295AEF1C(v21, v37);
    sub_2295AEF1C(v47, v38);
    v48 = v21;
    v49 = v37;
LABEL_42:
    sub_229590D18(v48, v49);
    v53 = v47;
    v54 = v38;
LABEL_43:
    sub_229590D18(v53, v54);
LABEL_44:
    v55 = *(v0 + 392);
    v56 = *(v0 + 400);
    v98 = *(v0 + 416);
    v99 = *(v0 + 360);
    v102 = *(v0 + 336);
    v96 = *(v0 + 280);
    v57 = *(v0 + 256);
    v93 = *(v0 + 408);
    v94 = *(v0 + 264);
    v58 = *(v0 + 240);
    *(v0 + 128) = v21;
    *(v0 + 136) = v109;
    *(v0 + 144) = v33;
    *(v0 + 152) = v35;
    sub_2295AEF1C(v21, v109);
    sub_2295AEF1C(v33, v35);
    v37 = v109;
    sub_22A4DDA0C();
    sub_229590D18(v55, v56);
    sub_229590D18(v93, v98);
    v59 = v57;
    v36 = v108;
    v99(v59, v58);
    v102(v96, v94);
    goto LABEL_45;
  }

  if (v38 >> 60 == 15)
  {
    goto LABEL_32;
  }

  v50 = v37 >> 62;
  v51 = v38 >> 62;
  if (v37 >> 62 == 3)
  {
    v52 = 0;
    if (!v21 && v37 == 0xC000000000000000 && v38 >> 62 == 3)
    {
      v52 = 0;
      if (v38 == 0xC000000000000000 && !*(v0 + 392))
      {
        sub_2295AEF1C(0, 0xC000000000000000);
        sub_2295AEF1C(0, 0xC000000000000000);
        sub_229590D18(0, 0xC000000000000000);
        v40 = 0;
        v41 = 0xC000000000000000;
        goto LABEL_27;
      }
    }
  }

  else if (v50)
  {
    if (v50 == 1)
    {
      LODWORD(v52) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v52 = v52;
    }

    else
    {
      v71 = *(v21 + 16);
      v70 = *(v21 + 24);
      v72 = __OFSUB__(v70, v71);
      v52 = v70 - v71;
      if (v72)
      {
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
      }
    }
  }

  else
  {
    v52 = BYTE6(v37);
  }

  if (v51 > 1)
  {
    if (v51 != 2)
    {
      v73 = *(v0 + 392);
      if (!v52)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    v73 = *(v0 + 392);
    v75 = *(v73 + 16);
    v74 = *(v73 + 24);
    v72 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (!v72)
    {
      if (v52 != v76)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_113;
  }

  if (v51)
  {
    v73 = *(v0 + 392);
    if (!__OFSUB__(HIDWORD(v73), v73))
    {
      if (v52 == HIDWORD(v73) - v73)
      {
        goto LABEL_79;
      }

LABEL_83:
      sub_2295AEF1C(v21, v37);
      sub_2295AEF1C(v73, v38);
      sub_229590D18(v73, v38);
      v53 = v21;
      v54 = v37;
      goto LABEL_43;
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v73 = *(v0 + 392);
  if (v52 != BYTE6(v38))
  {
    goto LABEL_83;
  }

LABEL_79:
  if (v52 < 1)
  {
LABEL_84:
    sub_2295AEF1C(v21, v37);
    sub_2295AEF1C(v73, v38);
    sub_229590D18(v73, v38);
    goto LABEL_26;
  }

  sub_2295AEF1C(v21, v37);
  sub_2295AEF1C(v73, v38);
  sub_2295AEF1C(v73, v38);
  v77 = sub_2296753AC(v21, v37, v73, v38);
  sub_229590D18(v73, v38);
  sub_229590D18(v21, v37);
  if ((v77 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_28:
  v38 = *(v0 + 416);
  if (v35 >> 60 != 15)
  {
    if (v38 >> 60 == 15)
    {
      goto LABEL_41;
    }

    v64 = v35 >> 62;
    v65 = v38 >> 62;
    if (v35 >> 62 == 3)
    {
      v66 = 0;
      if (!v33 && v35 == 0xC000000000000000 && v38 >> 62 == 3)
      {
        v66 = 0;
        if (v38 == 0xC000000000000000 && !*(v0 + 408))
        {
          sub_2295AEF1C(0, 0xC000000000000000);
          sub_2295AEF1C(0, 0xC000000000000000);
          sub_229590D18(0, 0xC000000000000000);
          sub_229590D18(0, 0xC000000000000000);
LABEL_107:
          v88 = *(v0 + 408);
          v87 = *(v0 + 416);
          sub_229590D18(*(v0 + 392), *(v0 + 400));
          v89 = v88;
          v90 = v87;
LABEL_111:
          sub_229590D18(v89, v90);
          (*(v0 + 336))(*(v0 + 280), *(v0 + 264));
          goto LABEL_45;
        }
      }

      goto LABEL_95;
    }

    if (v64 == 2)
    {
      v81 = *(v33 + 16);
      v80 = *(v33 + 24);
      v72 = __OFSUB__(v80, v81);
      v66 = v80 - v81;
      if (!v72)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    else if (v64 == 1)
    {
      LODWORD(v66) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_117;
      }

      v66 = v66;
      goto LABEL_95;
    }

    v66 = BYTE6(v35);
LABEL_95:
    if (v65 > 1)
    {
      if (v65 != 2)
      {
        v83 = *(v0 + 408);
        if (!v66)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      v83 = *(v0 + 408);
      v85 = *(v83 + 16);
      v84 = *(v83 + 24);
      v72 = __OFSUB__(v84, v85);
      v82 = v84 - v85;
      if (!v72)
      {
LABEL_104:
        if (v66 == v82)
        {
          if (v66 >= 1)
          {
            sub_2295AEF1C(v33, v35);
            sub_2295AEF1C(v83, v38);
            sub_2295AEF1C(v83, v38);
            v86 = sub_2296753AC(v33, v35, v83, v38);
            sub_229590D18(v83, v38);
            sub_229590D18(v33, v35);
            if ((v86 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_107;
          }

LABEL_110:
          v92 = *(v0 + 392);
          v91 = *(v0 + 400);
          sub_2295AEF1C(v33, v35);
          sub_2295AEF1C(v83, v38);
          sub_229590D18(v92, v91);
          sub_229590D18(v83, v38);
          sub_229590D18(v83, v38);
          v89 = v33;
          v90 = v35;
          goto LABEL_111;
        }

LABEL_109:
        sub_2295AEF1C(v33, v35);
        sub_2295AEF1C(v83, v38);
        sub_229590D18(v83, v38);
        v53 = v33;
        v54 = v35;
        goto LABEL_43;
      }

      __break(1u);
    }

    else if (!v65)
    {
      v82 = BYTE6(v38);
      v83 = *(v0 + 408);
      goto LABEL_104;
    }

    v83 = *(v0 + 408);
    LODWORD(v82) = HIDWORD(v83) - v83;
    if (!__OFSUB__(HIDWORD(v83), v83))
    {
      v82 = v82;
      goto LABEL_104;
    }

    goto LABEL_116;
  }

  if (v38 >> 60 != 15)
  {
LABEL_41:
    v47 = *(v0 + 408);
    sub_2295AEF1C(v33, v35);
    sub_2295AEF1C(v47, v38);
    v48 = v33;
    v49 = v35;
    goto LABEL_42;
  }

  v42 = *(v0 + 408);
  v101 = *(v0 + 392);
  __dsta = *(v0 + 400);
  v43 = v21;
  v44 = *(v0 + 336);
  v45 = *(v0 + 280);
  v46 = *(v0 + 264);
  sub_2295AEF1C(v33, v35);
  sub_2295AEF1C(v42, v38);
  v44(v45, v46);
  v21 = v43;
  v36 = v108;
  v37 = v109;
  sub_229590D18(v101, __dsta);
  sub_229590D18(v42, v38);
  sub_229590D18(v33, v35);
LABEL_45:
  *(v0 + 408) = v33;
  *(v0 + 416) = v35;
  *(v0 + 392) = v21;
  *(v0 + 400) = v37;
  *(v0 + 376) = v106;
  *(v0 + 384) = v36;
  v60 = sub_22967553C();
  v61 = swift_task_alloc();
  *(v0 + 424) = v61;
  *v61 = v0;
  v61[1] = sub_229674194;
  v62 = *(v0 + 208);
  v63 = *(v0 + 216);

  return MEMORY[0x282200308](v62, v63, v60);
}

uint64_t sub_229674FE8()
{
  *(v0 + 160) = *(v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2296750A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E538, &qword_22A57C188) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_229673CE4(a1, v6, v7, v1 + v5);
}

uint64_t sub_22967519C(char a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DD22C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  sub_22A4DD23C();
  (*(v3 + 104))(v6, *MEMORY[0x277CD8F78], v2);
  v9 = sub_22A4DD21C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  result = sub_22A4DD20C();
  if (!result)
  {
    return result;
  }

  v12 = sub_22A4DD86C();
  *(v12 + 16) = 20;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  v14[7] = 20;
  if ((a1 & 1) == 0)
  {
    if (!nw_path_get_ipv4_network_signature())
    {
      goto LABEL_5;
    }

LABEL_9:
    v13 = sub_229590750(v12);
    swift_unknownObjectRelease();

    return v13;
  }

  if (nw_path_get_ipv6_network_signature())
  {
    goto LABEL_9;
  }

LABEL_5:
  swift_unknownObjectRelease();

  return 0;
}

uint64_t sub_2296753AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2296755F8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2295798D4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_229838464(v13, a3, a4, &v12);
  v10 = v4;
  sub_2295798D4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_22967553C()
{
  result = qword_27D87E550;
  if (!qword_27D87E550)
  {
    sub_22A4DD1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E550);
  }

  return result;
}

unint64_t sub_229675594()
{
  result = qword_27D87D4E8;
  if (!qword_27D87D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D4E0, &qword_22A578748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D4E8);
  }

  return result;
}

uint64_t sub_2296755F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22A4DB24C();
  v11 = result;
  if (result)
  {
    result = sub_22A4DB27C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22A4DB26C();
  sub_229838464(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t HMDRemoteConnectivityMonitor.hasConnectivity.getter()
{
  v1 = v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v18.receiver = v9;
  v18.super_class = v4;
  v11 = a2;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v16;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v7 = &v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v7 = 0;
  v7[4] = 0;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v12 = *&v10[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v13 = v10;
  [v12 setDelegate_];
  [*&v10[v11] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v13;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v12 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v14 = &v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v14 = 0;
  v14[4] = 0;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v11;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v22.receiver = v13;
  v22.super_class = v12;
  v15 = v11;
  swift_unknownObjectRetain();
  v16 = a3;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v19 = *&v17[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v20 = v17;
  [v19 setDelegate_];
  [*&v17[v18] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v20;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v8 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v7;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v9[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = v7;
  swift_unknownObjectRetain();
  v12 = a3;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.underlyingConnectionChanged(connected:)(Swift::Bool connected)
{
  v3 = sub_22A4DD2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_22A4DD31C();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection) = connected;
    sub_22967651C();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageSucceeded()()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_22A4DD31C();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer);
    if ([v7 isRunning])
    {
      [v7 suspend];
    }

    *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages) = 0;
    *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 0;
    sub_22967651C();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageFailed()()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_22A4DD31C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages);
  if ((v7 & 0x8000000000000000) == 0 && v7 >= *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold))
  {
    goto LABEL_6;
  }

  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages) = v9;
  sub_22967651C();
LABEL_6:
  v10 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimer);
  if (([v10 isRunning] & 1) == 0)
  {
    [v10 resume];
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.timerDidFire(_:)(HMFTimer *a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_22A4DD31C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_22956540C();
    if (sub_22A4DDEDC())
    {
      *(v1 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 1;
      sub_22967651C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22967651C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD2FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_22A4DD31C();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection;
    if (v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] == 1)
    {
      v14 = *&v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages];
      v15 = 1;
      if ((v14 & 0x8000000000000000) == 0 && v14 >= *&v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessagesThreshold])
      {
        v15 = v1[OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] ^ 1;
      }
    }

    else
    {
      v15 = 0;
    }

    sub_229541CB0(ObjectType, &off_283CDF4A0);
    v16 = v1;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109888;
      *(v19 + 4) = v15 & 1;
      *(v19 + 8) = 1024;
      *(v19 + 10) = v1[v13];
      *(v19 + 14) = 2048;
      *(v19 + 16) = *(v16 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_failedMessages);
      *(v19 + 24) = 1024;
      *(v19 + 26) = *(&v16->isa + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_connectivityLostTimerFired);

      _os_log_impl(&dword_229538000, v17, v18, "Has connectivity: %{BOOL}d (has underlying connection: %{BOOL}d, failed messages, %ld, connectivity lost timer fired: %{BOOL}d)", v19, 0x1Eu);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    (*(v4 + 8))(v6, v3);
    v20 = (v16 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity);
    os_unfair_lock_lock((v16 + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity));
    if ((v15 & 1) == LOBYTE(v20[1]._os_unfair_lock_opaque))
    {
      os_unfair_lock_unlock(v20);
    }

    else
    {
      LOBYTE(v20[1]._os_unfair_lock_opaque) = v15 & 1;
      os_unfair_lock_unlock(v20);
      v21 = *(&v16->isa + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_delegate);
      if (v21)
      {
        [v21 hasConnectivityDidChangeFor_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id HMDRemoteConnectivityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMDRemoteConnectivityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_229676994()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_22A4DD9DC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v1;
  *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask) = sub_22957F3C0(0, 0, v4, &unk_22A57C258, v7);
}

uint64_t sub_229676AF0()
{
  if (*(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask))
  {

    sub_22A4DDA7C();
  }

  sub_2296775B0(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_eventStream);
  sub_2295798D4(*(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend), *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 8));

  return swift_deallocClassInstance();
}

uint64_t _s15SecureSubmitterCMa(uint64_t a1)
{
  result = qword_27D87E628;
  if (!qword_27D87E628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229676C2C(uint64_t a1)
{
  sub_2295A44E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_229676CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D87E638, &qword_22A57C260);
  v5[37] = v6;
  v5[38] = *(v6 - 8);
  v5[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v5[42] = v7;
  v5[43] = *(v7 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229676E48, 0, 0);
}

uint64_t sub_229676E48()
{
  v18 = v0;
  sub_229541CB0(v0[36], &off_283CDF4B8);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  v5 = v0[42];
  v6 = v0[43];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58F9F0, &v17);
    _os_log_impl(&dword_229538000, v1, v2, "Configuring %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = *(v6 + 8);
  v9(v4, v5);
  v0[46] = v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = v0[40];
    v12 = v0[41];
    sub_2296776D8(Strong + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_eventStream, v11);

    sub_2295F5AFC(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
    sub_22A4DDA3C();
    swift_beginAccess();
    v13 = swift_task_alloc();
    v0[47] = v13;
    *v13 = v0;
    v13[1] = sub_229677108;
    v14 = v0[37];

    return MEMORY[0x2822003E8](v0 + 14, 0, 0, v14);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_229677108()
{

  return MEMORY[0x2822009F8](sub_229677204, 0, 0);
}

uint64_t sub_229677204()
{
  v28 = v0;
  if (*(v0 + 136))
  {
    sub_229557188((v0 + 112), v0 + 152);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_229541CB0(*(v0 + 288), &off_283CDF4B8);
      sub_22957F1C4(v0 + 152, v0 + 192);
      v3 = sub_22A4DD05C();
      v4 = sub_22A4DDCDC();
      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 368);
      v7 = *(v0 + 352);
      v8 = *(v0 + 336);
      if (v5)
      {
        v26 = *(v0 + 368);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v27 = v10;
        *v9 = 136315138;
        __swift_project_boxed_opaque_existential_0((v0 + 192), *(v0 + 216));
        v11 = sub_22A4DE5CC();
        v13 = v12;
        __swift_destroy_boxed_opaque_existential_0((v0 + 192));
        v14 = sub_2295A3E30(v11, v13, &v27);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_229538000, v3, v4, "Submitting to PET: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x22AAD4E50](v10, -1, -1);
        MEMORY[0x22AAD4E50](v9, -1, -1);

        v26(v7, v8);
      }

      else
      {

        v6(v7, v8);
        __swift_destroy_boxed_opaque_existential_0((v0 + 192));
      }

      v20 = *(v0 + 176);
      v19 = *(v0 + 184);
      v21 = __swift_project_boxed_opaque_existential_0((v0 + 152), v20);
      v23 = *(v2 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 16);
      v22 = *(v2 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend + 32);
      *(v0 + 16) = *(v2 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend);
      *(v0 + 32) = v23;
      *(v0 + 48) = v22;
      sub_229677748(v0 + 16, v0 + 64);
      sub_2297A4178(v21, v20, *(v19 + 24));
      sub_2296777A4(v0 + 16);

      __swift_destroy_boxed_opaque_existential_0((v0 + 152));
      v24 = swift_task_alloc();
      *(v0 + 376) = v24;
      *v24 = v0;
      v24[1] = sub_229677108;
      v25 = *(v0 + 296);

      return MEMORY[0x2822003E8](v0 + 112, 0, 0, v25);
    }

    v16 = *(v0 + 328);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    sub_2296775B0(v16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  }

  else
  {
    v15 = *(v0 + 328);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    sub_2296775B0(v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2296775B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229677618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_229676CD0(a1, v4, v5, v7, v6);
}

uint64_t sub_2296776D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296777F8()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

void sub_22967792C(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    [v1 setAccessoryServer_];
    [v1 setReachable_];
    v27 = [v1 matterAdapter];
    [v27 configureMatterAccessory];

    v10 = v27;
  }

  else
  {
    sub_2296777F8();
    v11 = a1;
    v12 = v1;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315394;
      v28 = 91;
      v29 = 0xE100000000000000;
      v30 = v16;
      v17 = [v12 logIdentifier];
      v18 = sub_22A4DD5EC();
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(v28, v29, &v30);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v11;
      v22 = v26;
      *v26 = v11;
      v23 = v11;
      _os_log_impl(&dword_229538000, v13, v14, "%s Invalid accessory server type: %@", v15, 0x16u);
      sub_2295A1C40(v22);
      MEMORY[0x22AAD4E50](v22, -1, -1);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

id sub_229677CB0(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 identifier];
  v7 = sub_22A4DD5EC();
  v9 = v8;

  v10 = [a1 identifier];
  v11 = sub_22A4DD5EC();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_22A4DE60C();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  sub_2296777F8();
  v17 = v1;
  v18 = a1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCDC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v21 = 136315394;
    v34 = 91;
    v35 = 0xE100000000000000;
    v36 = v23;
    v24 = [v17 logIdentifier];
    v25 = sub_22A4DD5EC();
    v27 = v26;

    MEMORY[0x22AAD08C0](v25, v27);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v28 = sub_2295A3E30(v34, v35, &v36);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v18;
    v29 = v18;
    _os_log_impl(&dword_229538000, v19, v20, "%s found accessory server: %@", v21, 0x16u);
    sub_2295A1C40(v22);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    v30 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  (*(v32 + 8))(v5, v33);
  return [v17 setReachable_];
}

void sub_229678034(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 accessoryServer];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 identifier];

    v12 = sub_22A4DD5EC();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
    }

    else
    {
      v16 = sub_22A4DE60C();

      if ((v16 & 1) == 0)
      {
        return;
      }
    }

    sub_2296777F8();
    v17 = v2;

    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCDC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136315394;
      v35 = 91;
      v36 = 0xE100000000000000;
      v37 = v21;
      v22 = [v17 logIdentifier];
      v23 = sub_22A4DD5EC();
      v32 = v6;
      v33 = v5;
      v24 = v23;
      v26 = v25;

      MEMORY[0x22AAD08C0](v24, v26);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v27 = sub_2295A3E30(v35, v36, &v37);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2295A3E30(a1, a2, &v37);
      _os_log_impl(&dword_229538000, v18, v19, "%s lost accessory server: %s", v20, 0x16u);
      v28 = v34;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);

      (*(v32 + 8))(v8, v33);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    [v17 setReachable_];
    [v17 setAccessoryServer_];
    v29 = [v17 matterAdapter];
    v30 = [v29 useMatterPlugin];

    if ((v30 & 1) == 0)
    {
      v31 = [v17 matterAdapter];
      [v31 setMatterDevice_];
    }
  }
}

uint64_t sub_229678438()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_22A4DD5EC();
    v1 = sub_22A4DD5AC();
  }

  sub_229678A8C();
  v2 = sub_22A4DDEBC();
  v3 = [objc_allocWithZone(HMDAccessoryTransportInformation) initWithServerIdentifier:v1 instanceID:v2 linkType:1];

  v4 = [v3 transportInfoDictionary];
  v5 = sub_22A4DD49C();

  sub_22976F484(v5);
  v7 = v6;

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D148, &unk_22A578040);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22A576180;
    *(v8 + 32) = v7;
  }

  else
  {

    return 0;
  }

  return v8;
}

void sub_229678580(void *a1, uint64_t a2)
{
  v3 = v2;
  v31.super_class = HMDMatterAccessory;
  objc_msgSendSuper2(&v31, sel_populateModelObject_version_, a1, a2);
  sub_229678A8C();
  v5 = sub_22A4DDEAC();
  [a1 setSupportsNativeMatter_];

  v6 = [v3 identifier];
  if (!v6)
  {
    sub_22A4DD5EC();
    v6 = sub_22A4DD5AC();
  }

  v7 = sub_22A4DDBDC();
  v8 = HAPUniqueIdentifier();

  if (!v8)
  {
    sub_22A4DD5EC();
    v8 = sub_22A4DD5AC();
  }

  [a1 setUniqueIdentifier_];

  v9 = [v3 matterNodeID];
  [a1 setChipNodeID_];

  v10 = [v3 matterVendorID];
  [a1 setChipVendorID_];

  v11 = [v3 matterProductID];
  [a1 setChipProductID_];

  v12 = [v3 matterWEDSupport];
  [a1 setChipWEDSupport_];

  v13 = [v3 matterExtendedMACAddress];
  [a1 setChipExtendedMACAddress_];

  v14 = [v3 matterSoftwareVersionNumber];
  [a1 setMatterSoftwareVersionNumber_];

  v15 = [v3 supportedLinkLayerTypes];
  [a1 setSupportedLinkLayerTypes_];

  v16 = [v3 setupHash];
  v17 = sub_22A4DB62C();
  v19 = v18;

  v20 = sub_22A4DB61C();
  sub_2295798D4(v17, v19);
  [a1 setAccessorySetupHash_];

  v21 = [v3 publicKey];
  v22 = sub_22A4DB62C();
  v24 = v23;

  v25 = sub_22A4DB61C();
  sub_2295798D4(v22, v24);
  [a1 setPublicKey_];

  v26 = [v3 pairingUsername];
  if (!v26)
  {
    sub_22A4DD5EC();
    v26 = sub_22A4DD5AC();
  }

  [a1 setPairingUsername_];

  [v3 certificationStatus];
  v27 = sub_22A4DDBDC();
  [a1 setCertificationStatus_];

  [v3 communicationProtocol];
  v28 = sub_22A4DDBDC();
  [a1 setCommunicationProtocol_];

  if (sub_229678438())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v29 = sub_22A4DD81C();
  }

  else
  {
    v29 = 0;
  }

  [a1 setTransportInformation_];

  v30 = [v3 chipStorage];
  [v30 updateAccessoryModel_];
}

unint64_t sub_229678A8C()
{
  result = qword_281401770;
  if (!qword_281401770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401770);
  }

  return result;
}

__n128 sub_229678AD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  _s10SerializerVMa(0, a2, a3, a5);
  sub_22A4DC3AC();
  result = *a1;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_229678B58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_229678BD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 33) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 33) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_229678D5C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 33) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 33] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    a1[32] = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t sub_229678FE4()
{
  if (*(v0 + OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_updateTask))
  {

    sub_22A4DDA7C();
  }

  sub_2296792B0(v0 + OBJC_IVAR____TtCO13HomeKitDaemon16DeviceMediaState8Observer_updateStream);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DeviceMediaState.Observer(uint64_t a1)
{
  result = qword_27D87E6E0;
  if (!qword_27D87E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296790F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2296791B4(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2296791B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27D87EC70)
  {
    v4 = _s6StreamVMa(0, &_s5StateVN, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27D87EC70);
    }
  }
}

unint64_t sub_229679230(uint64_t a1)
{
  result = sub_229679258();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_229679258()
{
  result = qword_27D87E6F0;
  if (!qword_27D87E6F0)
  {
    type metadata accessor for DeviceMediaState.Observer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E6F0);
  }

  return result;
}

uint64_t sub_2296792B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC80, &qword_22A57CFC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_229679328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E7A8, &qword_22A57C4A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v15);
    if (!*(&v16 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v14 = *(a2 + 16);
    v15 = *a2;
    v16 = v14;
    v17 = *(a2 + 32);
    if (!*(&v14 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v15, v18);
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  LOBYTE(v17) = *(v2 + 32);
  sub_2297E3C8C(&v15, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(v13 + 32))(v9, v12, v13);
  sub_22967B18C(&v9[*(v7 + 36)], v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v9, &qword_27D87E7A8, &qword_22A57C4A0);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return result;
}

__n128 sub_229679528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E7A0, &unk_22A57FDF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v15);
    if (!*(&v16 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v14 = *(a2 + 16);
    v15 = *a2;
    v16 = v14;
    v17 = *(a2 + 32);
    if (!*(&v14 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v15, v18);
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  LOBYTE(v17) = *(v2 + 32);
  sub_2297E3C8C(&v15, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(v13 + 32))(v9, v12, v13);
  sub_22967B18C(&v9[*(v7 + 36)], v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v9, &qword_27D87E7A0, &unk_22A57FDF0);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return result;
}

__n128 sub_229679728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E798, &qword_22A57C498);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v15);
    if (!*(&v16 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v14 = *(a2 + 16);
    v15 = *a2;
    v16 = v14;
    v17 = *(a2 + 32);
    if (!*(&v14 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v15, v18);
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  LOBYTE(v17) = *(v2 + 32);
  sub_2297E3C8C(&v15, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(v13 + 32))(v9, v12, v13);
  sub_22967B18C(&v9[*(v7 + 36)], v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v9, &qword_27D87E798, &qword_22A57C498);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return result;
}

__n128 sub_229679928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v15);
    if (!*(&v16 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v14 = *(a2 + 16);
    v15 = *a2;
    v16 = v14;
    v17 = *(a2 + 32);
    if (!*(&v14 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v15, v18);
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  LOBYTE(v17) = *(v2 + 32);
  sub_2297E3C8C(&v15, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(v13 + 32))(v9, v12, v13);
  sub_22967B18C(&v9[*(v7 + 36)], v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D320, &qword_22A5784A8);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v9, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return result;
}

__n128 sub_229679B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v15);
    if (!*(&v16 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v14 = *(a2 + 16);
    v15 = *a2;
    v16 = v14;
    v17 = *(a2 + 32);
    if (!*(&v14 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v15, v18);
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  LOBYTE(v17) = *(v2 + 32);
  sub_2297E3C8C(&v15, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(v13 + 32))(v9, v12, v13);
  sub_22967B18C(&v9[*(v7 + 36)], v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E780, &unk_22A57DCB0);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v9, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return result;
}

__n128 sub_229679D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v15);
    if (!*(&v16 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v14 = *(a2 + 16);
    v15 = *a2;
    v16 = v14;
    v17 = *(a2 + 32);
    if (!*(&v14 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v15, v18);
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  LOBYTE(v17) = *(v2 + 32);
  sub_2297E3C8C(&v15, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(v13 + 32))(v9, v12, v13);
  sub_22967B18C(&v9[*(v7 + 36)], v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E790, &qword_22A57C490);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v9, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return result;
}

__n128 sub_229679F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(a2 + 24))
  {
    sub_22957F1C4(a2, &v15);
    if (!*(&v16 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *a2;
    v14 = *(a2 + 16);
    v15 = *a2;
    v16 = v14;
    v17 = *(a2 + 32);
    if (!*(&v14 + 1))
    {
      return result;
    }
  }

  sub_229557188(&v15, v18);
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  LOBYTE(v17) = *(v2 + 32);
  sub_2297E3C8C(&v15, v9);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(v13 + 32))(v9, v12, v13);
  sub_22967B18C(&v9[*(v7 + 36)], v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC30, &unk_22A577960);
  swift_setAtWritableKeyPath();
  sub_22953EAE4(v9, &qword_27D87E788, &qword_22A57FE00);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return result;
}

uint64_t sub_22967A128(uint64_t a1)
{
  v2 = v1;
  v13 = _s21EventMetadataInternalVMa(0);
  v14 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_22967B18C(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v12);
  sub_22953EAE4(v12, &qword_27D882000, &qword_22A578390);
  v5 = _s13MicroLocationO5EventVMa(0);
  sub_2297C2ED4(0xD000000000000011, 0x800000022A58FB00, v1 + v5[5]);
  sub_2297C30F0(0xD000000000000013, 0x800000022A58FB20, v1 + v5[6]);
  v6 = *(v1 + v5[7]);
  v14 = sub_22967A3E0();
  v12[0] = sub_229588D4C(v6);
  sub_229890DC4(v12, 0xD000000000000011, 0x800000022A58FB40);
  v7 = *(v2 + v5[8]);
  v8 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v8;
  v16 = *(a1 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v14 = sub_22958872C();
  v12[0] = sub_2295887A8(v15, v7);
  sub_229890DC4(v12, 0xD000000000000010, 0x800000022A58FB60);
  v9 = *(v2 + v5[9]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E708, "bP\b");
  v14 = sub_22967AB38();
  v12[0] = sub_229588E04(v9);
  sub_229890DC4(v12, 0x6F63536563616C70, 0xEB00000000736572);
  v10 = *(v2 + v5[10]);
  v13 = MEMORY[0x277D84CC0];
  v14 = &off_283CDFC58;
  LODWORD(v12[0]) = v10;
  return sub_229890DC4(v12, 0x6E656469666E6F63, 0xEA00000000006563);
}

uint64_t _s13MicroLocationO5EventVMa(uint64_t a1)
{
  result = qword_27D87E718;
  if (!qword_27D87E718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22967A3E0()
{
  result = qword_27D87E700;
  if (!qword_27D87E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E700);
  }

  return result;
}

uint64_t sub_22967A45C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  KeyPath = swift_getKeyPath();
  *(&v32 + 1) = _s21EventMetadataInternalVMa(0);
  v33 = sub_22967B0E0(&qword_27D87CC28, _s21EventMetadataInternalVMa, &unk_22A57FD08);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_22967B18C(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679B28(KeyPath, &v31);

  if (*(&v32 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  v13 = _s13MicroLocationO5EventVMa(0);
  v14 = v13[5];
  LOBYTE(v33) = *(a1 + 32);
  v15 = a1[1];
  v31 = *a1;
  v32 = v15;
  sub_229564F88(v1 + v14, v10, &unk_27D87D2A0, &unk_22A578BD0);
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v16 = sub_2296B2730(&v31);
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E780, &unk_22A57DCB0) + 36);
    v20 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 36) + v19);

    *v20 = v16;
    v20[1] = v18;
  }

  v21 = swift_getKeyPath();
  sub_2296B2AA4(v21, v2 + v13[6]);

  v22 = sub_229588D4C(*(v2 + v13[7]));
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E780, &unk_22A57DCB0) + 36));

  *v23 = v22;
  v24 = *(v2 + v13[8]);
  v25 = a1[1];
  v34[0] = *a1;
  v34[1] = v25;
  v35 = *(a1 + 32);
  v26 = sub_2295887A8(v34, v24);

  v23[1] = v26;
  v27 = sub_229588E04(*(v2 + v13[9]));

  v23[2] = v27;
  v28 = *(v2 + v13[10]);
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  v30 = v23 + *(result + 44);
  *v30 = v28;
  v30[4] = 0;
  return result;
}

uint64_t sub_22967A7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  sub_229564F88(a1 + *(v7 + 32), v6, &qword_27D87CC38, &unk_22A5784B0);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22967B128(v6, a2);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_22967A954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22967B18C(a1, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v8 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 32);
  sub_22953EAE4(a2 + v8, &qword_27D87CC38, &unk_22A5784B0);
  sub_22967B128(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t sub_22967AA74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22967AAD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

unint64_t sub_22967AB38()
{
  result = qword_27D87E710;
  if (!qword_27D87E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E708, "bP\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E710);
  }

  return result;
}

void sub_22967ABDC(uint64_t a1)
{
  _s21EventMetadataInternalVMa(319);
  if (v1 <= 0x3F)
  {
    sub_22967AE30(319, &qword_27D87E728, &unk_27D87D2A0, &unk_22A578BD0, sub_22967ADB4);
    if (v2 <= 0x3F)
    {
      sub_22967AE30(319, &qword_27D87E738, &unk_27D881AA0, &qword_22A57BC20, sub_22967AEA0);
      if (v3 <= 0x3F)
      {
        if (v4 <= 0x3F)
        {
          sub_22967AE30(319, &qword_27D87D2F0, &qword_27D87D2F8, &unk_22A585F10, sub_22958900C);
          if (v5 <= 0x3F)
          {
            sub_22967AE30(319, &qword_27D87E758, &qword_27D87E708, "bP\b", sub_22967AF98);
            if (v6 <= 0x3F)
            {
              sub_229564D4C(319, v6, v7, v8);
              if (v9 <= 0x3F)
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

unint64_t sub_22967ADB4()
{
  result = qword_27D87E730;
  if (!qword_27D87E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87D2A0, &unk_22A578BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E730);
  }

  return result;
}

void sub_22967AE30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = _s7SecuredVMa(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22967AEA0()
{
  result = qword_27D87E740;
  if (!qword_27D87E740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D881AA0, &qword_22A57BC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E740);
  }

  return result;
}

unint64_t sub_22967AF1C()
{
  result = qword_27D87E750;
  if (!qword_27D87E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E750);
  }

  return result;
}

unint64_t sub_22967AF98()
{
  result = qword_27D87E760;
  if (!qword_27D87E760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E708, "bP\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E760);
  }

  return result;
}

uint64_t sub_22967B05C(uint64_t a1)
{
  *(a1 + 16) = sub_22967B0E0(&qword_27D87E770, _s13MicroLocationO5EventVMa, &unk_22A57C3C0);
  result = sub_22967B0E0(&qword_27D87E778, _s13MicroLocationO5EventVMa, &unk_22A57C3F8);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22967B0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22967B128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22967B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s23AccessoryPresenceUpdateVMa(uint64_t a1)
{
  result = qword_27D87E7B0;
  if (!qword_27D87E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22967B278(uint64_t a1)
{
  result = sub_22967B2FC();
  if (v2 <= 0x3F)
  {
    result = _s13PresenceStateOMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22967B2FC()
{
  result = qword_27D87E7C0;
  if (!qword_27D87E7C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D87E7C0);
  }

  return result;
}

uint64_t sub_22967B364()
{
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000023, 0x800000022A58FB80);
  v1 = [*v0 shortDescription];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  MEMORY[0x22AAD08C0](v2, v4);

  MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A58FBB0);
  _s23AccessoryPresenceUpdateVMa(0);
  v5 = sub_229698D5C();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22967B478(id *a1, id *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = [*a1 uuid];
  sub_22A4DB79C();

  v12 = [*a2 uuid];
  sub_22A4DB79C();

  LOBYTE(v12) = sub_22A4DB78C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  if (v12)
  {
    updated = _s23AccessoryPresenceUpdateVMa(0);
    v15 = sub_229698B2C(a2 + *(updated + 20));
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_22967B600()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s35AggregatedAccessoryPresenceDetectorCMa(uint64_t a1)
{
  result = qword_27D87E7E8;
  if (!qword_27D87E7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22967B744(uint64_t a1)
{
  sub_22967B860(319, &qword_27D87E7F8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_22967B860(319, &qword_27D87E800, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22967B860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    updated = _s23AccessoryPresenceUpdateVMa(255);
    v7 = a3(a1, updated);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22967B8E0()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectorHandlerTasks);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      v4 += 8;

      sub_22A4DDA7C();

      --v3;
    }

    while (v3);
    v1 = v0[7];
  }

  v5 = *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors);
  v0[8] = v5;
  v6 = *(v5 + 16);
  v0[9] = v6;
  if (v6)
  {
    v0[10] = 0;
    sub_22957F1C4(v5 + 32, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v7);
    v12 = (*(v8 + 16) + **(v8 + 16));
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_22967BAE0;

    return v12(v7, v8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22967BAE0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_22967BBF8, v2, 0);
}

uint64_t sub_22967BBF8()
{
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[10] = v1;
    sub_22957F1C4(v0[8] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v4);
    v7 = (*(v5 + 16) + **(v5 + 16));
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_22967BAE0;

    return v7(v4, v5);
  }
}

uint64_t sub_22967BD7C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_22967BDA0, v2, 0);
}

void sub_22967BDA0()
{
  v1 = *(v0[11] + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors);
  v0[12] = v1;
  v2 = *(v1 + 16);
  v0[13] = v2;
  if (v2)
  {
    v0[14] = 0;
    if (*(v1 + 16))
    {
      sub_22957F1C4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
      v9 = (*(v4 + 24) + **(v4 + 24));
      v5 = swift_task_alloc();
      v0[15] = v5;
      *v5 = v0;
      v5[1] = sub_22967BF8C;
      v6 = v0[9];
      v7 = v0[10];

      v9(v6, v7, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for HMError(0);
    v0[8] = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v8 = v0[1];

    v8();
  }
}

uint64_t sub_22967BF8C()
{
  v2 = *v1;
  v2[16] = v0;

  v3 = v2[11];
  __swift_destroy_boxed_opaque_existential_0(v2 + 2);
  if (v0)
  {
    v4 = sub_22967C0C4;
  }

  else
  {
    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_22967C0C4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112) + 1;

  if (v2 == v1)
  {
    type metadata accessor for HMError(0);
    *(v0 + 64) = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v3 = *(v0 + 8);

    v3();
  }

  else
  {
    v4 = *(v0 + 112) + 1;
    *(v0 + 112) = v4;
    v5 = *(v0 + 96);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_22957F1C4(v5 + 40 * v4 + 32, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0((v0 + 16), v6);
      v11 = (*(v7 + 24) + **(v7 + 24));
      v8 = swift_task_alloc();
      *(v0 + 120) = v8;
      *v8 = v0;
      v8[1] = sub_22967BF8C;
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);

      v11(v9, v10, v6, v7);
    }
  }
}

uint64_t sub_22967C2C0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22967C2E0, v1, 0);
}

uint64_t sub_22967C2E0()
{
  v1 = *(v0[8] + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors);
  v0[9] = v1;
  v2 = *(v1 + 16);
  v0[10] = v2;
  if (v2)
  {
    v0[11] = 0;
    sub_22957F1C4(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
    v9 = (*(v4 + 32) + **(v4 + 32));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_22967C470;
    v6 = v0[7];

    return v9(v6, v3, v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22967C470()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_22967C588, v2, 0);
}

uint64_t sub_22967C588()
{
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[11] = v1;
    sub_22957F1C4(v0[9] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v4);
    v8 = (*(v5 + 32) + **(v5 + 32));
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_22967C470;
    v7 = v0[7];

    return v8(v7, v4, v5);
  }
}

uint64_t sub_22967C714(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22967C734, v3, 0);
}

uint64_t sub_22967C734()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_22967C7E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22967B8C0();
}

uint64_t sub_22967C878(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22967BD7C(a1, a2);
}

uint64_t sub_22967C924(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229569B30;

  return sub_22967C2C0(a1);
}

uint64_t sub_22967C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  updated = _s23AccessoryPresenceUpdateVMa(0);
  v5[7] = updated;
  v5[8] = *(updated - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E830, &qword_22A57CDF0);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E838, &unk_22A57C640);
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22967CBF8, 0, 0);
}

uint64_t sub_22967CBF8()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_22967CD24;
  v5 = v0[14];

  return v7(v5, v2, v3);
}

uint64_t sub_22967CD24()
{

  return MEMORY[0x2822009F8](sub_22967CE20, 0, 0);
}

uint64_t sub_22967CE20()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_22A4DDA3C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_22967CEFC;
  v5 = v0[15];
  v6 = v0[11];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_22967CEFC()
{

  return MEMORY[0x2822009F8](sub_22967CFF8, 0, 0);
}

uint64_t sub_22967CFF8()
{
  v1 = v0[11];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
LABEL_4:
    (*(v0[16] + 8))(v0[17], v0[15]);

    v4 = v0[1];

    return v4();
  }

  sub_22967E294(v1, v0[10]);
  v2 = sub_22A4DDAAC();
  v3 = v0[10];
  if (v2)
  {
    sub_22967E35C(v0[10]);
    goto LABEL_4;
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  sub_22967E2F8(v0[10], v0[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  sub_22A4DDA0C();
  (*(v7 + 8))(v6, v8);
  sub_22967E35C(v3);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_22967CEFC;
  v10 = v0[15];
  v11 = v0[11];

  return MEMORY[0x2822003E8](v11, 0, 0, v10);
}

uint64_t sub_22967D1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E818, &qword_22A57C610);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - v7);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  v23 = type metadata accessor for DefaultLocalPresenceDetectorDataSource();
  v24 = &off_283CDF8B0;
  *&v22 = a2;
  swift_defaultActor_initialize();
  v16 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_stream;
  v19 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_continuation;
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D85768], v5);
  _s23AccessoryPresenceUpdateVMa(0);
  sub_22A4DD9EC();
  (*(v6 + 8))(v8, v5);
  (*(v13 + 32))(a3 + v16, v15, v12);
  (*(v9 + 32))(a3 + v19, v11, v20);
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks) = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories;
  *(a3 + v17) = [objc_opt_self() weakObjectsHashTable];
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationCenter) = v21;
  sub_229557188(&v22, a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_dataSource);
  return a3;
}

uint64_t sub_22967D4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E818, &qword_22A57C610);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - v7);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  v23 = type metadata accessor for DefaultLocalPresenceDetectorDataSource();
  v24 = &off_283CDF8B0;
  *&v22 = a2;
  swift_defaultActor_initialize();
  v16 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_stream;
  v19 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_continuation;
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D85768], v5);
  _s23AccessoryPresenceUpdateVMa(0);
  sub_22A4DD9EC();
  (*(v6 + 8))(v8, v5);
  (*(v13 + 32))(a3 + v16, v15, v12);
  (*(v9 + 32))(a3 + v19, v11, v20);
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks) = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories;
  *(a3 + v17) = [objc_opt_self() weakObjectsHashTable];
  *(a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationCenter) = v21;
  sub_229557188(&v22, a3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_dataSource);
  return a3;
}

void *sub_22967D7FC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v3 = *(v40 - 8);
  v39 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v30 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = a1 + 32;
  v36 = sub_22A4DD9DC();
  v12 = *(v36 - 8);
  v13 = *(v12 + 56);
  v12 += 56;
  v35 = v13;
  v32 = v3 + 32;
  v33 = v3 + 16;
  v31 = (v12 - 8);
  v34 = v12;
  v30 = (v12 - 48);
  v14 = MEMORY[0x277D84F90];
  v37 = v3;
  do
  {
    v42 = v14;
    v15 = v43;
    v16 = v36;
    v35(v43, 1, 1, v36);
    sub_22957F1C4(v11, v48);
    v17 = v38;
    v18 = v40;
    (*(v3 + 16))(v38, v41, v40);
    v19 = (*(v3 + 80) + 72) & ~*(v3 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_229557188(v48, v20 + 32);
    (*(v3 + 32))(v20 + v19, v17, v18);
    sub_229569C24(v15, v8);
    LODWORD(v19) = (*v31)(v8, 1, v16);

    if (v19 == 1)
    {
      sub_229631C7C(v8);
    }

    else
    {
      sub_22A4DD9CC();
      (*v30)(v8, v16);
    }

    v21 = *(v20 + 16);
    swift_unknownObjectRetain();

    v14 = v42;
    if (v21)
    {
      swift_getObjectType();
      v22 = sub_22A4DD8CC();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    sub_229631C7C(v43);
    v25 = swift_allocObject();
    *(v25 + 16) = &unk_22A57C620;
    *(v25 + 24) = v20;
    if (v24 | v22)
    {
      v44 = 0;
      v45 = 0;
      v46 = v22;
      v47 = v24;
    }

    v3 = v37;
    v26 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22958A8B4(0, v14[2] + 1, 1, v14);
    }

    v28 = v14[2];
    v27 = v14[3];
    if (v28 >= v27 >> 1)
    {
      v14 = sub_22958A8B4((v27 > 1), v28 + 1, 1, v14);
    }

    v14[2] = v28 + 1;
    v14[v28 + 4] = v26;
    v11 += 40;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_22967DC34(uint64_t a1)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E818, &qword_22A57C610);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  swift_defaultActor_initialize();
  v19 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_stream;
  v13 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_continuation;
  *v5 = 1;
  (*(v3 + 104))(v5, *MEMORY[0x277D85768], v2);
  _s23AccessoryPresenceUpdateVMa(0);
  sub_22A4DD9EC();
  (*(v3 + 8))(v5, v2);
  (*(v10 + 32))(v1 + v19, v12, v9);
  v14 = v20;
  (*(v6 + 32))(v1 + v13, v8, v20);
  *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectors) = v21;
  (*(v6 + 16))(v8, v1 + v13, v14);

  v16 = sub_22967D7FC(v15, v8);
  (*(v6 + 8))(v8, v14);
  *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector35AggregatedAccessoryPresenceDetector_detectorHandlerTasks) = v16;
  return v1;
}

uint64_t sub_22967DF30(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E810, &qword_22A57C608);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22A5761A0;
  v3 = type metadata accessor for DefaultLocalPresenceDetectorDataSource();
  v23 = v3;
  v24 = &off_283CDF8B0;
  v22[0] = swift_allocObject();
  v4 = _s28HAPAccessoryPresenceDetectorCMa(0);
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_0(v22, v3);
  v7 = *(v3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = *(v7 + 16);
  v10(&v22[-1] - v9);
  v11 = *(&v22[-1] - v9);
  v12 = a1;
  v13 = sub_22967D1E4(v12, v11, v5);
  __swift_destroy_boxed_opaque_existential_0(v22);
  *(v2 + 56) = v4;
  *(v2 + 64) = &off_283CDF720;
  *(v2 + 32) = v13;
  v14 = swift_allocObject();
  v23 = v3;
  v24 = &off_283CDF8B0;
  v22[0] = v14;
  v15 = _s31MatterAccessoryPresenceDetectorCMa(0);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_0(v22, v3);
  MEMORY[0x28223BE20](v17);
  v10(&v22[-1] - v9);
  v18 = sub_22967D4F0(v12, *(&v22[-1] - v9), v16);
  __swift_destroy_boxed_opaque_existential_0(v22);
  *(v2 + 96) = v15;
  *(v2 + 104) = &off_283CDF7E8;
  *(v2 + 72) = v18;
  _s35AggregatedAccessoryPresenceDetectorCMa(0);
  swift_allocObject();
  v19 = sub_22967DC34(v2);

  return v19;
}

uint64_t sub_22967E194(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_22967C9BC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_22967E294(uint64_t a1, uint64_t a2)
{
  updated = _s23AccessoryPresenceUpdateVMa(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_22967E2F8(uint64_t a1, uint64_t a2)
{
  updated = _s23AccessoryPresenceUpdateVMa(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_22967E35C(uint64_t a1)
{
  updated = _s23AccessoryPresenceUpdateVMa(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_22967E3BC()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB768);
  __swift_project_value_buffer(v0, qword_27D8AB768);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22967E434()
{
  sub_22A4DE1FC();
  v0 = sub_22A4DD5EC();
  v2 = v1;

  result = MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A58FD40);
  qword_27D8AB780 = v0;
  *algn_27D8AB788 = v2;
  return result;
}

uint64_t sub_22967E4CC()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_dataSource));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s28HAPAccessoryPresenceDetectorCMa(uint64_t a1)
{
  result = qword_27D87E878;
  if (!qword_27D87E878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22967E630(uint64_t a1)
{
  sub_22967B860(319, &qword_27D87E7F8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_22967B860(319, &qword_27D87E800, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22967E764()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  if (v2)
  {

    v3 = 32;
    do
    {

      sub_22A4DDA7C();

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v18 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories);
  v4 = [v18 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  v5 = sub_22A4DD83C();

  if (v5 >> 62)
  {
    result = sub_22A4DE0EC();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_22:

    return [v18 removeAllObjects];
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_7:
  v7 = result - 1;
  if (result >= 1)
  {
    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    v19 = v5;
    while (1)
    {
      if (v9)
      {
        MEMORY[0x22AAD13F0](v8, v5);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = v10;
      swift_unknownObjectRetain();
      v12 = sub_22967EA58();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_22A576190;
      *(v14 + 32) = v13;
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v15 = v13;
      v16 = sub_22A4DD81C();

      if (qword_27D87B970 != -1)
      {
        swift_once();
      }

      v17 = sub_22A4DD5AC();
      [v11 setNotificationsEnabled:0 forCharacteristics:v16 clientIdentifier:v17];
      swift_unknownObjectRelease_n();

      v5 = v19;
      if (v7 == v8)
      {
        goto LABEL_22;
      }

LABEL_11:
      ++v8;
    }

    swift_unknownObjectRelease();
LABEL_10:
    swift_unknownObjectRelease();
    if (v7 == v8)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_22967EA58()
{
  v1 = v0;
  v2 = [v0 primaryService];
  if (!v2 || (v3 = v2, v4 = sub_2296844A8(), v3, !v4))
  {
    v5 = [v1 services];
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    v6 = sub_22A4DD83C();

    v18 = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x22AAD13F0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v9 isPrimary])
        {
        }

        else
        {
          sub_22A4DE27C();
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        ++v8;
        if (v11 == i)
        {
          v12 = v18;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_20:

    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
LABEL_37:
      v13 = sub_22A4DE0EC();
    }

    else
    {
      v13 = *(v12 + 16);
    }

    v14 = 0;
    while (v13 != v14)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AAD13F0](v14, v12);
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          goto LABEL_36;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v4 = sub_2296844A8();

      ++v14;
      if (v4)
      {
        goto LABEL_33;
      }
    }

    v4 = 0;
LABEL_33:
  }

  return v4;
}

uint64_t sub_22967ECB0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E890, &qword_22A57C718);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = _s13PresenceStateOMa(0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22967EE18, v2, 0);
}

uint64_t sub_22967EE18()
{
  v71 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 160) = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  swift_unknownObjectRetain();
  v3 = [v2 matterNodeID];
  v4 = sub_22A4DDEBC();
  v5 = sub_22A4DDEDC();

  if ((v5 & 1) == 0 || (v6 = sub_22967EA58(), (*(v0 + 168) = v6) == 0))
  {
    swift_unknownObjectRelease();
LABEL_8:
    type metadata accessor for HMError(0);
    *(v0 + 48) = 43;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_229684CE8(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();

    v19 = *(v0 + 8);
LABEL_9:

    return v19();
  }

  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v67 = v6;
  sub_22967FA60(v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v68 = *(*(v13 - 8) + 56);
  v69 = v13;
  v68(v10, 2, 2);
  (*(v7 + 56))(v10, 0, 1, v8);
  v14 = *(v12 + 48);
  sub_229564F88(v9, v11, &qword_27D87EBB0, &qword_22A57C720);
  sub_229564F88(v10, v11 + v14, &qword_27D87EBB0, &qword_22A57C720);
  v15 = *(v7 + 48);
  v16 = v15(v11, 1, v8);
  v17 = *(v0 + 120);
  if (v16 != 1)
  {
    sub_229564F88(*(v0 + 88), *(v0 + 96), &qword_27D87EBB0, &qword_22A57C720);
    if (v15(v11 + v14, 1, v17) != 1)
    {
      v24 = *(v0 + 144);
      v25 = *(v0 + 104);
      v66 = *(v0 + 112);
      v26 = *(v0 + 88);
      v27 = *(v0 + 96);
      sub_2296850E4(v11 + v14, v24, _s13PresenceStateOMa);
      v28 = sub_229698FEC(v27, v24);
      sub_2296851B4(v24, _s13PresenceStateOMa);
      sub_22953EAE4(v25, &qword_27D87EBB0, &qword_22A57C720);
      sub_22953EAE4(v66, &qword_27D87EBB0, &qword_22A57C720);
      sub_2296851B4(v27, _s13PresenceStateOMa);
      sub_22953EAE4(v26, &qword_27D87EBB0, &qword_22A57C720);
      if (v28)
      {
        goto LABEL_17;
      }

LABEL_15:
      sub_22A4DB68C();
      v23 = 0;
      goto LABEL_18;
    }

    v21 = *(v0 + 112);
    v22 = *(v0 + 96);
    sub_22953EAE4(*(v0 + 104), &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v21, &qword_27D87EBB0, &qword_22A57C720);
    sub_2296851B4(v22, _s13PresenceStateOMa);
LABEL_14:
    sub_22953EAE4(*(v0 + 88), &qword_27D87E890, &qword_22A57C718);
    goto LABEL_15;
  }

  v18 = *(v0 + 112);
  sub_22953EAE4(*(v0 + 104), &qword_27D87EBB0, &qword_22A57C720);
  sub_22953EAE4(v18, &qword_27D87EBB0, &qword_22A57C720);
  if (v15(v11 + v14, 1, v17) != 1)
  {
    goto LABEL_14;
  }

  sub_22953EAE4(*(v0 + 88), &qword_27D87EBB0, &qword_22A57C720);
LABEL_17:
  v23 = 2;
LABEL_18:
  v29 = *(v0 + 72);
  (v68)(*(v0 + 152), v23, 2, v69);
  v30 = *(v29 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories);
  *(v0 + 176) = v30;
  if ([v30 containsObject_])
  {
    v31 = *(v0 + 152);
    v32 = *(v0 + 56);
    swift_unknownObjectRelease();

    v33 = v31;
    v34 = v32;
LABEL_29:
    sub_2296850E4(v33, v34, _s13PresenceStateOMa);

    v19 = *(v0 + 8);
    goto LABEL_9;
  }

  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 152);
  v36 = *(v0 + 136);
  v37 = sub_22A4DD07C();
  __swift_project_value_buffer(v37, qword_27D8AB768);
  sub_22968514C(v35, v36, _s13PresenceStateOMa);
  swift_unknownObjectRetain();
  v38 = sub_22A4DD05C();
  v39 = sub_22A4DDCCC();
  swift_unknownObjectRelease();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 136);
  if (v40)
  {
    v42 = *(v0 + 64);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v70[0] = v44;
    *v43 = 136315650;
    *(v43 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, v70);
    *(v43 + 12) = 2080;
    v45 = [v42 shortDescription];
    v46 = sub_22A4DD5EC();
    v48 = v47;

    v49 = sub_2295A3E30(v46, v48, v70);

    *(v43 + 14) = v49;
    *(v43 + 22) = 2080;
    v50 = sub_229698D5C();
    v52 = v51;
    sub_2296851B4(v41, _s13PresenceStateOMa);
    v53 = sub_2295A3E30(v50, v52, v70);

    *(v43 + 24) = v53;
    _os_log_impl(&dword_229538000, v38, v39, "%s - accessory: %s, presenceState: %s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v44, -1, -1);
    MEMORY[0x22AAD4E50](v43, -1, -1);
  }

  else
  {

    sub_2296851B4(v41, _s13PresenceStateOMa);
  }

  v54 = *(v0 + 72);
  v55 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  if (*(*(v54 + v55) + 16))
  {
    v56 = *(v0 + 168);
    [*(v0 + 176) addObject_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_22A576190;
    *(v57 + 32) = v56;
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v58 = v56;
    v59 = sub_22A4DD81C();

    if (qword_27D87B970 != -1)
    {
      swift_once();
    }

    v60 = *(v0 + 160);
    v61 = *(v0 + 168);
    v62 = *(v0 + 152);
    v63 = *(v0 + 56);
    v64 = sub_22A4DD5AC();
    [v60 setNotificationsEnabled:1 forCharacteristics:v59 clientIdentifier:v64];
    swift_unknownObjectRelease();

    v33 = v62;
    v34 = v63;
    goto LABEL_29;
  }

  v65 = swift_task_alloc();
  *(v0 + 184) = v65;
  *v65 = v0;
  v65[1] = sub_22967F778;

  return sub_22967FEE0();
}

uint64_t sub_22967F778()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22967F888, v1, 0);
}

uint64_t sub_22967F888()
{
  v1 = *(v0 + 168);
  [*(v0 + 176) addObject_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22A576190;
  *(v2 + 32) = v1;
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v3 = v1;
  v4 = sub_22A4DD81C();

  if (qword_27D87B970 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 56);
  v9 = sub_22A4DD5AC();
  [v5 setNotificationsEnabled:1 forCharacteristics:v4 clientIdentifier:v9];
  swift_unknownObjectRelease();

  sub_2296850E4(v7, v8, _s13PresenceStateOMa);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22967FA60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4;
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  sub_22968482C(v35);
  if (!v35[1])
  {
    goto LABEL_9;
  }

  v13 = v35[3];
  v27 = v35[4];
  if (![v1 value])
  {

    v31 = 0u;
    v32 = 0u;
LABEL_8:
    sub_22953EAE4(&v31, &unk_27D87FC20, &unk_22A578810);
LABEL_9:
    v23 = _s13PresenceStateOMa(0);
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  v25[1] = v13;
  v26 = a1;
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v14 = v30;
  v15 = __swift_project_boxed_opaque_existential_0(v29, v30);
  v28[3] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v15, v14);
  sub_229543C58(v28, &v31);
  __swift_destroy_boxed_opaque_existential_0(v29);
  if (!*(&v32 + 1))
  {

    a1 = v26;
    goto LABEL_8;
  }

  sub_229543C58(&v31, v33);
  v17 = v34;
  v18 = __swift_project_boxed_opaque_existential_0(v33, v34);
  *(&v32 + 1) = v17;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(v17 - 8) + 16))(v19, v18, v17);

  v20 = [v1 lastKnownValueUpdateTime];
  if (v20)
  {
    v21 = v20;
    sub_22A4DB70C();

    v22 = *(v7 + 32);
    v22(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v22(v12, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_22A4DB68C();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_22953EAE4(v5, &unk_27D881AA0, &qword_22A57BC20);
    }
  }

  v27(&v31, v12);

  (*(v7 + 8))(v12, v6);
  sub_22953EAE4(&v31, &unk_27D87DE60, &unk_22A57A960);
  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_22967FEE0()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_22967FF28, v0, 0);
}

uint64_t sub_22967FF28()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  v3 = swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    __break(1u);
  }

  else
  {
    v11 = v0[5];
    v12 = v0[6];
    v0[7] = *(v11 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationCenter);
    v13 = sub_22A4DDE5C();
    v0[8] = v13;
    v14 = sub_229684CE8(&qword_27D87E898, _s28HAPAccessoryPresenceDetectorCMa, &unk_22A57C6D8);
    v0[9] = v14;
    v15 = swift_task_alloc();
    v0[10] = v15;
    v15[2] = v11;
    v15[3] = v13;
    v15[4] = v12;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_2296800C0;
    v8 = sub_229684AD0;
    v7 = 0x800000022A58FDB0;
    v10 = MEMORY[0x277D84F78] + 8;
    v4 = v11;
    v5 = v14;
    v6 = 0xD00000000000001FLL;
    v9 = v15;
  }

  return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2296800C0()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2296801EC, v1, 0);
}

uint64_t sub_2296801EC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v4 = sub_22A4DDE5C();
  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_229680310;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_229684B10, v5, v7);
}

uint64_t sub_229680310()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22968043C, v1, 0);
}

uint64_t sub_22968043C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v4 = sub_22A4DDE5C();
  v0[15] = v4;
  v5 = swift_task_alloc();
  v0[16] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_229680560;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_229684B50, v5, v7);
}

uint64_t sub_229680560()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22968068C, v1, 0);
}

uint64_t sub_22968068C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_229680704(void *a1)
{
  v2 = v1;
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  swift_unknownObjectRetain();
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A58FD20, &v22);
    *(v7 + 12) = 2080;
    v9 = [a1 shortDescription];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    v13 = sub_2295A3E30(v10, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_229538000, v5, v6, "%s - %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories) removeObject_];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = sub_22967EA58();
    if (v16)
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22A576190;
      *(v18 + 32) = v17;
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v19 = v17;
      v20 = sub_22A4DD81C();

      if (qword_27D87B970 != -1)
      {
        swift_once();
      }

      v21 = sub_22A4DD5AC();
      [v15 setNotificationsEnabled:0 forCharacteristics:v20 clientIdentifier:v21];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_229680A68(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229680A88, v3, 0);
}

uint64_t sub_229680A88()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_229680B3C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_229680B5C, v2, 0);
}

uint64_t sub_229680B5C()
{
  sub_22967E764();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229680BBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22967ECB0(a1, a2);
}

uint64_t sub_229680C68(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229680C88, v3, 0);
}

uint64_t sub_229680C88()
{
  sub_229680704(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229680CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = sub_22A4DB21C();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[29] = swift_task_alloc();
  v8 = sub_22A4DDE4C();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229680E40, 0, 0);
}

uint64_t sub_229680E40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[33] = @"kModifiedCharacteristicsKey";
  v1 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_229680F80;
  v3 = v0[29];
  v4 = v0[30];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_229680F80()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2296815FC;
  }

  else
  {
    v2 = sub_229681094;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296810B0()
{
  v25 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    v11 = *(v0 + 8);

    return v11();
  }

  (*(v3 + 32))(*(v0 + 224), v1, v2);
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v24);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received characteristics changed notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 288) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    goto LABEL_10;
  }

  v10 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (!*(v0 + 80))
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v19 = v0 + 56;
LABEL_29:
    sub_22953EAE4(v19, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_30;
  }

  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    goto LABEL_30;
  }

  v13 = *(v0 + 168);
  *(v0 + 296) = v13;
  v14 = sub_22A4DB20C();
  if (!v14)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    goto LABEL_28;
  }

  v15 = v14;
  *(v0 + 144) = sub_22A4DD5EC();
  *(v0 + 152) = v16;
  sub_22A4DE18C();
  if (!*(v15 + 16) || (v17 = sub_2295402E8(v0 + 16), (v18 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    goto LABEL_26;
  }

  sub_2295404B0(*(v15 + 56) + 32 * v17, v0 + 88);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 112))
  {
LABEL_26:
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

LABEL_28:
    v19 = v0 + 88;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
  if (swift_dynamicCast())
  {
    *(v0 + 304) = *(v0 + 176);

    return MEMORY[0x2822009F8](sub_229681688, v10, 0);
  }

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

LABEL_30:
  v20 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v21 = swift_task_alloc();
  *(v0 + 272) = v21;
  *v21 = v0;
  v21[1] = sub_229680F80;
  v22 = *(v0 + 232);
  v23 = *(v0 + 240);

  return MEMORY[0x282200308](v22, v23, v20);
}

uint64_t sub_2296815FC()
{
  *(v0 + 160) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229681688()
{
  sub_22968180C(*(v0 + 296), *(v0 + 304));

  return MEMORY[0x2822009F8](sub_229681700, 0, 0);
}

uint64_t sub_229681700()
{
  v1 = v0[37];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  (*(v3 + 8))(v2, v4);
  v5 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_229680F80;
  v7 = v0[29];
  v8 = v0[30];

  return MEMORY[0x282200308](v7, v8, v5);
}

void sub_22968180C(uint64_t a1, unint64_t a2)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v5 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v79 - v8;
  v9 = sub_22A4DB74C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v94 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v79 - v16;
  v107 = _s13PresenceStateOMa(0);
  v18 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v92 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = _s23AccessoryPresenceUpdateVMa(0);
  v20 = MEMORY[0x28223BE20](updated);
  v86 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v85 = &v79 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v84 = (&v79 - v25);
  MEMORY[0x28223BE20](v24);
  v93 = &v79 - v26;
  v90 = v2;
  if ([*(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories) containsObject_])
  {
    if (a2 >> 62)
    {
      v28 = sub_22A4DE0EC();
      if (!v28)
      {
        return;
      }
    }

    else
    {
      v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        return;
      }
    }

    if (v28 >= 1)
    {
      v29 = 0;
      v82 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_continuation;
      v91 = (v10 + 32);
      v97 = (v10 + 56);
      v83 = (v10 + 48);
      v96 = (v10 + 8);
      v95 = (v18 + 48);
      v80 = "sReachableNotification(from:)";
      v81 = (v5 + 8);
      v30 = a2 & 0xC000000000000001;
      v106 = (v18 + 56);
      *&v27 = 136315650;
      v79 = v27;
      v103 = a2;
      v99 = v9;
      v98 = v14;
      v104 = v17;
      v105 = v28;
      v102 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v30)
        {
          v31 = MEMORY[0x22AAD13F0](v29, a2);
        }

        else
        {
          v31 = *(a2 + 8 * v29 + 32);
        }

        v32 = v31;
        sub_22968482C(v115);
        if (!v115[1])
        {
          goto LABEL_8;
        }

        v34 = v115[3];
        v33 = v115[4];
        if (![v32 value])
        {
          break;
        }

        sub_22A4DE01C();
        swift_unknownObjectRelease();
        v35 = v110;
        v36 = __swift_project_boxed_opaque_existential_0(&v109, v110);
        v108[3] = v35;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v108);
        (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v36, v35);
        sub_229543C58(v108, &v111);
        __swift_destroy_boxed_opaque_existential_0(&v109);
        if (!*(&v112 + 1))
        {

          a2 = v103;
          goto LABEL_7;
        }

        sub_229543C58(&v111, &v113);
        v38 = v114;
        v39 = __swift_project_boxed_opaque_existential_0(&v113, v114);
        *(&v112 + 1) = v38;
        v40 = __swift_allocate_boxed_opaque_existential_1(&v111);
        (*(*(v38 - 8) + 16))(v40, v39, v38);

        v41 = [v32 lastKnownValueUpdateTime];
        if (v41)
        {
          v42 = v94;
          v43 = v41;
          sub_22A4DB70C();

          v100 = v34;
          v44 = *v91;
          v45 = v101;
          v46 = v42;
          v47 = v99;
          (*v91)(v101, v46, v99);
          (*v97)(v45, 0, 1, v47);
          v48 = v98;
          v44(v98, v45, v47);
          a2 = v103;
        }

        else
        {
          v49 = v101;
          v47 = v99;
          (*v97)(v101, 1, 1, v99);
          v48 = v98;
          sub_22A4DB68C();
          v50 = (*v83)(v49, 1, v47);
          a2 = v103;
          if (v50 != 1)
          {
            sub_22953EAE4(v101, &unk_27D881AA0, &qword_22A57BC20);
          }
        }

        v51 = v104;
        v33(&v111, v48);
        v17 = v51;

        (*v96)(v48, v47);
        sub_22953EAE4(&v111, &unk_27D87DE60, &unk_22A57A960);
        __swift_destroy_boxed_opaque_existential_0(&v113);
        v52 = (*v95)(v51, 1, v107);
        v28 = v105;
        v30 = v102;
        if (v52 != 1)
        {
          v53 = v92;
          sub_2296850E4(v17, v92, _s13PresenceStateOMa);
          v54 = [v32 accessory];

          if (v54)
          {
            v55 = v84;
            *v84 = v54;
            sub_2296850E4(v53, v55 + *(updated + 20), _s13PresenceStateOMa);
            v56 = v93;
            sub_2296850E4(v55, v93, _s23AccessoryPresenceUpdateVMa);
            if (qword_27D87B968 != -1)
            {
              swift_once();
            }

            v57 = sub_22A4DD07C();
            __swift_project_value_buffer(v57, qword_27D8AB768);
            v58 = v56;
            v59 = v85;
            sub_22968514C(v58, v85, _s23AccessoryPresenceUpdateVMa);
            v60 = v32;
            v61 = sub_22A4DD05C();
            v62 = sub_22A4DDCCC();

            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v113 = v64;
              *v63 = v79;
              *(v63 + 4) = sub_2295A3E30(0xD00000000000003FLL, v80 | 0x8000000000000000, &v113);
              *(v63 + 12) = 2080;
              v65 = [v60 shortDescription];
              v66 = sub_22A4DD5EC();
              v100 = v60;
              v67 = v66;
              v69 = v68;

              v70 = sub_2295A3E30(v67, v69, &v113);

              *(v63 + 14) = v70;
              *(v63 + 22) = 2080;
              v71 = sub_22967B364();
              v73 = v72;
              sub_2296851B4(v59, _s23AccessoryPresenceUpdateVMa);
              v74 = sub_2295A3E30(v71, v73, &v113);

              *(v63 + 24) = v74;
              _os_log_impl(&dword_229538000, v61, v62, "%s - %s => %s", v63, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v64, -1, -1);
              v75 = v63;
              v17 = v104;
              MEMORY[0x22AAD4E50](v75, -1, -1);

              v76 = v100;
            }

            else
            {

              sub_2296851B4(v59, _s23AccessoryPresenceUpdateVMa);
              v76 = v60;
            }

            v77 = v93;
            sub_22968514C(v93, v86, _s23AccessoryPresenceUpdateVMa);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
            v78 = v88;
            sub_22A4DDA0C();

            (*v81)(v78, v89);
            sub_2296851B4(v77, _s23AccessoryPresenceUpdateVMa);
            a2 = v103;
            v28 = v105;
          }

          else
          {
            sub_2296851B4(v53, _s13PresenceStateOMa);
          }

          v30 = v102;
          goto LABEL_10;
        }

LABEL_9:

        sub_22953EAE4(v17, &qword_27D87EBB0, &qword_22A57C720);
LABEL_10:
        if (v28 == ++v29)
        {
          return;
        }
      }

      v111 = 0u;
      v112 = 0u;
LABEL_7:
      sub_22953EAE4(&v111, &unk_27D87FC20, &unk_22A578810);
      v17 = v104;
      v28 = v105;
LABEL_8:
      (*v106)(v17, 1, 1, v107);
      goto LABEL_9;
    }

    __break(1u);
  }
}

uint64_t sub_229682494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_22A4DB21C();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[17] = swift_task_alloc();
  v8 = sub_22A4DDE4C();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296825EC, 0, 0);
}

uint64_t sub_2296825EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_22968271C;
  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_22968271C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_229682C34;
  }

  else
  {
    v2 = sub_229682830;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22968284C()
{
  v18 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(v0[19] + 8))(v0[20], v0[18]);

    v11 = v0[1];

    return v11();
  }

  (*(v3 + 32))(v0[16], v1, v2);
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v17);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is reachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_10;
  }

  v10 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[24] = v0[10];

      return MEMORY[0x2822009F8](sub_229682CC0, v10, 0);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v13 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_22968271C;
  v15 = v0[17];
  v16 = v0[18];

  return MEMORY[0x282200308](v15, v16, v13);
}

uint64_t sub_229682C34()
{
  *(v0 + 72) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229682CC0()
{
  sub_229682E34(*(v0 + 192));

  return MEMORY[0x2822009F8](sub_229682D28, 0, 0);
}

uint64_t sub_229682D28()
{
  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  (*(v3 + 8))(v2, v4);
  v5 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_22968271C;
  v7 = v0[17];
  v8 = v0[18];

  return MEMORY[0x282200308](v7, v8, v5);
}

void sub_229682E34(void *a1)
{
  updated = _s23AccessoryPresenceUpdateVMa(0);
  MEMORY[0x28223BE20](updated);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = _s13PresenceStateOMa(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return;
  }

  v31 = v4;
  v17 = *(v1 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories);
  v35 = a1;
  if ([v17 containsObject_])
  {
    v18 = sub_22967EA58();
    if (v18)
    {
      v19 = v18;
      sub_22967FA60(v9);

      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        sub_2296850E4(v9, v16, _s13PresenceStateOMa);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v20 - 8) + 56))(v14, 2, 2, v20);
        v21 = sub_229698FEC(v16, v14);
        sub_2296851B4(v14, _s13PresenceStateOMa);
        if (v21)
        {
          v22 = v34;
          sub_22968514C(v16, &v34[*(updated + 20)], _s13PresenceStateOMa);
          v23 = v35;
          *v22 = v35;
          v24 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
          sub_22A4DDA0C();

          (*(v33 + 8))(v6, v31);
          sub_2296851B4(v16, _s13PresenceStateOMa);
          return;
        }

        sub_2296851B4(v16, _s13PresenceStateOMa);
        goto LABEL_12;
      }
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    sub_22953EAE4(v9, &qword_27D87EBB0, &qword_22A57C720);
LABEL_12:
    if (qword_27D87B968 != -1)
    {
      swift_once();
    }

    v26 = sub_22A4DD07C();
    __swift_project_value_buffer(v26, qword_27D8AB768);
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58FE20, &v36);
      _os_log_impl(&dword_229538000, v27, v28, "%s - Skipping update as presence is not occupied", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    return;
  }

  v25 = v35;
}

uint64_t sub_229683394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a7;
  v34 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_22A4DD9DC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v16;
  v21 = v9;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v19, v13, v21);
  v24 = v34;
  *(v23 + v20) = v35;
  *(v23 + v22) = v18;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;

  v25 = sub_22957F3C0(0, 0, v33, v36, v23);
  v26 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v27 = *(a2 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_22958A8B4(0, v27[2] + 1, 1, v27);
    *(a2 + v26) = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_22958A8B4((v29 > 1), v30 + 1, 1, v27);
  }

  v27[2] = v30 + 1;
  v27[v30 + 4] = v25;
  *(a2 + v26) = v27;
  return swift_endAccess();
}

uint64_t sub_2296836A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v6[14] = _s23AccessoryPresenceUpdateVMa(0);
  v6[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = sub_22A4DB21C();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[22] = swift_task_alloc();
  v9 = sub_22A4DDE4C();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229683898, 0, 0);
}

uint64_t sub_229683898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_2296839C8;
  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2296839C8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_229683EF8;
  }

  else
  {
    v2 = sub_229683ADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229683AF8()
{
  v18 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(v0[24] + 8))(v0[25], v0[23]);

    v11 = v0[1];

    return v11();
  }

  (*(v3 + 32))(v0[21], v1, v2);
  if (qword_27D87B968 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB768);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v17);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is unreachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[20] + 8))(v0[21], v0[19]);
    goto LABEL_10;
  }

  v10 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[29] = v0[10];

      return MEMORY[0x2822009F8](sub_229683F84, v10, 0);
    }

    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v13 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_2296839C8;
  v15 = v0[22];
  v16 = v0[23];

  return MEMORY[0x282200308](v15, v16, v13);
}

uint64_t sub_229683EF8()
{
  *(v0 + 72) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229683F84()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = [*(*(v0 + 224) + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector28HAPAccessoryPresenceDetector_observingAccessories) containsObject_];
    v2 = *(v0 + 232);
    if (v1)
    {
      v4 = *(v0 + 136);
      v3 = *(v0 + 144);
      v6 = *(v0 + 120);
      v5 = *(v0 + 128);
      v7 = *(*(v0 + 112) + 20);
      sub_22A4DB71C();
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      (*(*(v8 - 8) + 56))(&v6[v7], 0, 2, v8);
      *v6 = v2;
      v9 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
      sub_22A4DDA0C();

      (*(v4 + 8))(v3, v5);
    }

    else
    {
    }
  }

  return MEMORY[0x2822009F8](sub_229684114, 0, 0);
}

uint64_t sub_229684114()
{
  v1 = v0[29];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  v5 = sub_229684CE8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_2296839C8;
  v7 = v0[22];
  v8 = v0[23];

  return MEMORY[0x282200308](v7, v8, v5);
}

uint64_t sub_229684260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E888, &qword_22A57C708);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A576180;
  v1 = sub_22A4DD5EC();
  v3 = v2;
  result = sub_22A4DD5EC();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = result;
  *(v0 + 56) = v5;
  *(v0 + 64) = sub_229684300;
  *(v0 + 72) = 0;
  off_27D87E840 = v0;
  return result;
}

uint64_t sub_229684300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_229564F88(a1, v12, &unk_27D87DE60, &unk_22A57A960);
  if (!v13)
  {
    sub_22953EAE4(v12, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_9;
  }

  if (v11)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    (*(*(v5 - 8) + 56))(a3, 2, 2, v5);
  }

  else
  {
    v7 = sub_22A4DB74C();
    (*(*(v7 - 8) + 16))(a3, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    (*(*(v8 - 8) + 56))(a3, 0, 2, v8);
  }

  v6 = 0;
LABEL_9:
  v9 = _s13PresenceStateOMa(0);
  return (*(*(v9 - 8) + 56))(a3, v6, 1, v9);
}

id sub_2296844A8()
{
  v1 = [v0 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v2 = sub_22A4DD83C();

  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v7 = v2 + 32;
    v8 = &selRef_runTransformWithError_;
    v31 = i;
    v32 = v2;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v30 = v2 & 0xC000000000000001;
    v28 = v2 + 32;
    while (1)
    {
      while (1)
      {
        if (v5)
        {
          v9 = MEMORY[0x22AAD13F0](v4, v2);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_35;
          }

          v9 = *(v7 + 8 * v4);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_34;
          }
        }

        v11 = v9;
        v12 = [v11 v8[435]];
        if (v12)
        {
          break;
        }

        if (v4 == i)
        {
          goto LABEL_37;
        }
      }

      v33 = v4;
      v13 = v12;
      v2 = [v12 type];

      v14 = sub_22A4DD5EC();
      v16 = v15;

      if (qword_27D87B978 != -1)
      {
        swift_once();
      }

      v35 = off_27D87E840;
      v34 = *(off_27D87E840 + 2);
      if (v34)
      {
        break;
      }

LABEL_4:

      i = v31;
      v2 = v32;
      v4 = v33;
      v6 = v29;
      v5 = v30;
      v7 = v28;
      v8 = &selRef_runTransformWithError_;
      if (v33 == v31)
      {
        goto LABEL_37;
      }
    }

    v17 = 0;
    v18 = (off_27D87E840 + 40);
    while (v17 < v35[2])
    {
      v19 = v18[2];
      v36 = v18[1];
      v20 = *(v18 - 1) == v14 && *v18 == v16;
      if (v20 || (sub_22A4DE60C() & 1) != 0)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v21 = [v11 type];
        v22 = sub_22A4DD5EC();
        v2 = v23;

        if (v36 == v22 && v19 == v2)
        {

LABEL_32:

          v26 = v11;

          return v26;
        }

        v25 = sub_22A4DE60C();

        if (v25)
        {
          goto LABEL_32;
        }
      }

      ++v17;
      v18 += 6;
      if (v34 == v17)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  return 0;
}

id sub_22968482C@<X0>(uint64_t a1@<X8>)
{
  result = [v1 service];
  v4 = 0uLL;
  if (result)
  {
    v24 = a1;
    v5 = result;
    v6 = [result type];

    v7 = sub_22A4DD5EC();
    v9 = v8;

    if (qword_27D87B978 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v28 = off_27D87E840;
      v27 = *(off_27D87E840 + 2);
      if (!v27)
      {
        break;
      }

      v10 = 0;
      v11 = off_27D87E840 + 40;
      while (v10 < v28[2])
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v29 = *(v11 + 1);
        v30 = *(v11 + 1);
        v14 = *(v11 + 4);
        v15 = v12 == v7 && v13 == v9;
        if (v15 || (sub_22A4DE60C() & 1) != 0)
        {
          v25 = v12;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v16 = [v26 type];
          v17 = sub_22A4DD5EC();
          v19 = v18;

          v20 = v29;
          if (v29 == v17 && v30 == v19)
          {

LABEL_21:

            v4 = v30;
            a1 = v24;
            v23 = v25;
            goto LABEL_22;
          }

          v22 = sub_22A4DE60C();

          if (v22)
          {
            goto LABEL_21;
          }
        }

        ++v10;
        v11 += 48;
        if (v27 == v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

LABEL_18:

    v23 = 0;
    v13 = 0;
    v20 = 0;
    v14 = 0;
    a1 = v24;
    v4 = 0uLL;
  }

  else
  {
    v23 = 0;
    v13 = 0;
    v20 = 0;
    v14 = 0;
  }

LABEL_22:
  *a1 = v23;
  *(a1 + 8) = v13;
  *(a1 + 16) = v20;
  *(a1 + 24) = v4;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_229684B90(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_2296836A8(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_229684CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229684D30(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_229682494(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t objectdestroy_14Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_229684F8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_229680CE8(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_2296850E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22968514C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296851B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_229685214(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_22A4DE0EC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAD13F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        swift_unknownObjectRelease();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_229685390@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

void *sub_229685564(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_229685678()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB790);
  __swift_project_value_buffer(v0, qword_27D8AB790);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296856F0()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_dataSource));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s31MatterAccessoryPresenceDetectorCMa(uint64_t a1)
{
  result = qword_27D87E8D8;
  if (!qword_27D87E8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229685854(uint64_t a1)
{
  sub_22967B860(319, &qword_27D87E7F8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_22967B860(319, &qword_27D87E800, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_229685988(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E890, &qword_22A57C718);
  v3[12] = swift_task_alloc();
  v4 = sub_22A4DCDFC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  v3[16] = swift_task_alloc();
  v5 = sub_22A4DC77C();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = _s13PresenceStateOMa(0);
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  v3[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229685D28, v2, 0);
}

uint64_t sub_229685D28()
{
  v159 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 344) = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = [v2 matterNodeID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v4 = sub_22A4DDEBC();
  v5 = sub_22A4DDEDC();

  if (v5)
  {
    swift_unknownObjectRelease();
LABEL_6:
    type metadata accessor for HMError(0);
    *(v0 + 48) = 43;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22968FFA8(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();

    v10 = *(v0 + 8);
LABEL_7:

    return v10();
  }

  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  sub_229687758(v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 248);
    swift_unknownObjectRelease();
    sub_22953EAE4(v9, &qword_27D87E8F8, &qword_22A57C848);
    goto LABEL_6;
  }

  v12 = *(v0 + 328);
  v13 = *(v0 + 336);
  v150 = *(v0 + 320);
  v14 = *(v0 + 256);
  v145 = v14;
  v15 = *(v0 + 176);
  v16 = *(v0 + 160);
  sub_22957F2F8(*(v0 + 248), v13, &qword_27D87E900, &unk_22A57C850);
  v140 = v12;
  sub_229564F88(v13, v12, &qword_27D87E900, &unk_22A57C850);
  v17 = v12 + *(v14 + 48);
  v18 = v16[12];
  v19 = v16[16];
  v20 = (v17 + v16[20]);
  v21 = *v20;
  v22 = v20[1];
  v23 = sub_22A4DC52C();
  v148 = *(v23 - 8);
  v153 = v23;
  (*(v148 + 16))(v15, v17);
  v24 = v16[12];
  v25 = sub_22A4DCC4C();
  v147 = *(v25 - 8);
  v143 = v18;
  v156 = v25;
  (*(v147 + 16))(v15 + v24, v17 + v18);
  v26 = v16[16];
  v27 = sub_22A4DCDAC();
  v149 = *(v27 - 8);
  v142 = v19;
  v154 = v27;
  (*(v149 + 16))(v15 + v26, v17 + v19);
  v28 = (v15 + v16[20]);
  *v28 = v21;
  v28[1] = v22;
  v29 = sub_22A4DCD0C();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v150, v140, v29);
  sub_22957F2F8(v15, v150 + *(v145 + 48), &qword_27D87E8F0, &unk_22A57C838);

  v31 = [v2 chipAccessoryServer];
  v32 = [v31 matterDevice];

  v33 = *(v0 + 320);
  v134 = v32;
  v144 = v30;
  if (!v32)
  {

    sub_22953EAE4(v33, &qword_27D87E900, &unk_22A57C850);
    v46 = v29;
LABEL_15:
    (*(*(v0 + 216) + 56))(*(v0 + 200), 1, 1, *(v0 + 208));
    v53 = v148;
    v54 = *(v149 + 8);
    v56 = v153;
    v55 = v154;
    v57 = v156;
    v58 = v147;
    goto LABEL_16;
  }

  v132 = v2;
  v133 = v17;
  v35 = *(v0 + 304);
  v34 = *(v0 + 312);
  v151 = v29;
  v137 = *(v0 + 296);
  v139 = *(v0 + 288);
  v128 = *(v0 + 280);
  v36 = v30;
  v37 = *(v0 + 168);
  sub_229564F88(v33, v34, &qword_27D87E900, &unk_22A57C850);
  v38 = v34 + *(v145 + 48);
  v39 = v16[12];
  v40 = v16[16];
  v135 = *(v38 + v16[20]);
  (*(v148 + 32))(v37, v38, v153);
  (*(v147 + 32))(v37 + v16[12], v38 + v39, v156);
  (*(v149 + 32))(v37 + v16[16], v38 + v40, v154);
  *(v37 + v16[20]) = v135;
  (*(v36 + 32))(v35, v34, v29);
  sub_22957F2F8(v37, v35 + *(v145 + 48), &qword_27D87E8F0, &unk_22A57C838);
  sub_229564F88(v35, v137, &qword_27D87E900, &unk_22A57C850);
  v127 = v137 + *(v145 + 48);
  v130 = v16[16];
  v131 = v16[12];

  sub_229564F88(v35, v139, &qword_27D87E900, &unk_22A57C850);
  v41 = v139 + *(v145 + 48);
  v126 = v16[16];

  sub_229564F88(v35, v128, &qword_27D87E900, &unk_22A57C850);
  v42 = v128 + *(v145 + 48);
  v43 = v16[12];

  sub_22A4DCE1C();
  sub_22953EAE4(v35, &qword_27D87E900, &unk_22A57C850);
  v136 = *(v147 + 8);
  v136(v42 + v43, v156);
  v138 = *(v148 + 8);
  v138(v42, v153);
  v44 = *(v144 + 8);
  v44(v128, v29);
  v45 = *(v149 + 8);
  v45(v41 + v126, v154);
  v138(v41, v153);
  v129 = v44;
  v44(v139, v29);
  v45(v127 + v130, v154);
  v136(v127 + v131, v156);
  v138(v127, v153);
  sub_22A4DDF3C();
  v47 = *(v0 + 136);
  v48 = *(v0 + 144);
  v49 = *(v0 + 128);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  v50 = (*(v48 + 48))(v49, 1, v47);
  v51 = *(v0 + 320);
  if (v50 == 1)
  {
    v52 = *(v0 + 128);

    sub_22953EAE4(v51, &qword_27D87E900, &unk_22A57C850);
    sub_22953EAE4(v52, &qword_27D87E8E8, &qword_22A57C830);
    v17 = v133;
    v46 = v151;
    v2 = v132;
    goto LABEL_15;
  }

  v117 = *(v0 + 272);
  v118 = *(v0 + 152);
  (*(*(v0 + 144) + 32))(v118, *(v0 + 128), *(v0 + 136));
  sub_229564F88(v51, v117, &qword_27D87E900, &unk_22A57C850);
  v119 = v117 + *(v145 + 48);
  v146 = v16[12];
  v141 = v16[16];
  (*(v119 + v16[20]))(v118);
  v120 = *(v0 + 320);
  v121 = *(v0 + 144);
  v122 = *(v0 + 152);
  v123 = *(v0 + 136);
  v124 = *(v0 + 272);

  (*(v121 + 8))(v122, v123);
  sub_22953EAE4(v120, &qword_27D87E900, &unk_22A57C850);
  v54 = v45;
  v45(v119 + v141, v154);
  v57 = v156;
  v136(v119 + v146, v156);
  v56 = v153;
  v138(v119, v153);
  v125 = v124;
  v46 = v151;
  v129(v125, v151);
  v53 = v148;
  v55 = v154;
  v17 = v133;
  v58 = v147;
  v2 = v132;
LABEL_16:
  v59 = *(v0 + 328);
  v54(v17 + v142, v55);
  (*(v58 + 8))(v17 + v143, v57);
  (*(v53 + 8))(v17, v56);
  (*(v144 + 8))(v59, v46);
  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  v63 = *(v0 + 192);
  v62 = *(v0 + 200);
  v64 = *(v0 + 88);
  v65 = *(v0 + 96);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v155 = *(*(v66 - 8) + 56);
  v157 = v66;
  v155(v63, 2, 2);
  (*(v61 + 56))(v63, 0, 1, v60);
  v67 = *(v64 + 48);
  sub_229564F88(v62, v65, &qword_27D87EBB0, &qword_22A57C720);
  sub_229564F88(v63, v65 + v67, &qword_27D87EBB0, &qword_22A57C720);
  v68 = *(v61 + 48);
  v69 = v68(v65, 1, v60);
  v70 = *(v0 + 208);
  if (v69 != 1)
  {
    sub_229564F88(*(v0 + 96), *(v0 + 184), &qword_27D87EBB0, &qword_22A57C720);
    if (v68(v65 + v67, 1, v70) != 1)
    {
      v75 = *(v0 + 232);
      v77 = *(v0 + 192);
      v76 = *(v0 + 200);
      v78 = *(v0 + 184);
      v152 = *(v0 + 96);
      sub_22968FE78(v65 + v67, v75, _s13PresenceStateOMa);
      v79 = sub_229698FEC(v78, v75);
      sub_22968FF48(v75, _s13PresenceStateOMa);
      sub_22953EAE4(v77, &qword_27D87EBB0, &qword_22A57C720);
      sub_22953EAE4(v76, &qword_27D87EBB0, &qword_22A57C720);
      sub_22968FF48(v78, _s13PresenceStateOMa);
      sub_22953EAE4(v152, &qword_27D87EBB0, &qword_22A57C720);
      if (v79)
      {
        goto LABEL_24;
      }

LABEL_22:
      sub_22A4DB68C();
      v74 = 0;
      goto LABEL_25;
    }

    v72 = *(v0 + 200);
    v73 = *(v0 + 184);
    sub_22953EAE4(*(v0 + 192), &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v72, &qword_27D87EBB0, &qword_22A57C720);
    sub_22968FF48(v73, _s13PresenceStateOMa);
LABEL_21:
    sub_22953EAE4(*(v0 + 96), &qword_27D87E890, &qword_22A57C718);
    goto LABEL_22;
  }

  v71 = *(v0 + 200);
  sub_22953EAE4(*(v0 + 192), &qword_27D87EBB0, &qword_22A57C720);
  sub_22953EAE4(v71, &qword_27D87EBB0, &qword_22A57C720);
  if (v68(v65 + v67, 1, v70) != 1)
  {
    goto LABEL_21;
  }

  sub_22953EAE4(*(v0 + 96), &qword_27D87EBB0, &qword_22A57C720);
LABEL_24:
  v74 = 2;
LABEL_25:
  v80 = *(v0 + 80);
  (v155)(*(v0 + 240), v74, 2, v157);
  v81 = *(v80 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);
  *(v0 + 352) = v81;
  if ([v81 containsObject_])
  {
    v82 = *(v0 + 240);
    v83 = *(v0 + 64);
    sub_22953EAE4(*(v0 + 336), &qword_27D87E900, &unk_22A57C850);
    swift_unknownObjectRelease();
    v84 = v82;
    v85 = v83;
LABEL_40:
    sub_22968FE78(v84, v85, _s13PresenceStateOMa);

    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v86 = *(v0 + 240);
  v87 = *(v0 + 224);
  v88 = sub_22A4DD07C();
  *(v0 + 360) = __swift_project_value_buffer(v88, qword_27D8AB790);
  sub_22968FEE0(v86, v87, _s13PresenceStateOMa);
  swift_unknownObjectRetain();
  v89 = sub_22A4DD05C();
  v90 = sub_22A4DDCCC();
  swift_unknownObjectRelease();
  v91 = os_log_type_enabled(v89, v90);
  v92 = *(v0 + 224);
  if (v91)
  {
    v93 = *(v0 + 72);
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v158[0] = v95;
    *v94 = 136315650;
    *(v94 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, v158);
    *(v94 + 12) = 2080;
    v96 = [v93 shortDescription];
    v97 = sub_22A4DD5EC();
    v99 = v98;

    v100 = sub_2295A3E30(v97, v99, v158);

    *(v94 + 14) = v100;
    *(v94 + 22) = 2080;
    v101 = sub_229698D5C();
    v103 = v102;
    sub_22968FF48(v92, _s13PresenceStateOMa);
    v104 = sub_2295A3E30(v101, v103, v158);

    *(v94 + 24) = v104;
    _os_log_impl(&dword_229538000, v89, v90, "%s - accessory: %s, presenceState: %s", v94, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v95, -1, -1);
    MEMORY[0x22AAD4E50](v94, -1, -1);
  }

  else
  {

    sub_22968FF48(v92, _s13PresenceStateOMa);
  }

  v105 = *(v0 + 80);
  v106 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  if (*(*(v105 + v106) + 16))
  {
    [*(v0 + 352) addObject_];

    v107 = sub_22A4DD05C();
    v108 = sub_22A4DDCCC();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = *(v0 + 352);
      v110 = *(v0 + 336);
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v158[0] = v112;
      *v111 = 136315394;
      *(v111 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, v158);
      *(v111 + 12) = 2080;
      *(v0 + 56) = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E908, &qword_22A57C860);
      v113 = sub_22A4DBA6C();
      v115 = sub_2295A3E30(v113, v114, v158);

      *(v111 + 14) = v115;
      _os_log_impl(&dword_229538000, v107, v108, "%s - observing accessories %s", v111, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v112, -1, -1);
      MEMORY[0x22AAD4E50](v111, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      v110 = *(v0 + 336);
      swift_unknownObjectRelease();
    }

    sub_22953EAE4(v110, &qword_27D87E900, &unk_22A57C850);
    v84 = *(v0 + 240);
    v85 = *(v0 + 64);
    goto LABEL_40;
  }

  v116 = swift_task_alloc();
  *(v0 + 368) = v116;
  *v116 = v0;
  v116[1] = sub_22968732C;

  return sub_229688B80();
}

uint64_t sub_22968732C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22968743C, v1, 0);
}

uint64_t sub_22968743C()
{
  v13 = v0;
  [*(v0 + 352) addObject_];

  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 336);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2295A3E30(0xD00000000000001DLL, 0x800000022A58FD90, &v12);
    *(v5 + 12) = 2080;
    *(v0 + 56) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E908, &qword_22A57C860);
    v7 = sub_22A4DBA6C();
    v9 = sub_2295A3E30(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_229538000, v1, v2, "%s - observing accessories %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v0 + 336);
    swift_unknownObjectRelease();
  }

  sub_22953EAE4(v4, &qword_27D87E900, &unk_22A57C850);
  sub_22968FE78(*(v0 + 240), *(v0 + 64), _s13PresenceStateOMa);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_229687758@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v165 = sub_22A4DD07C();
  v4 = *(v165 - 8);
  v5 = MEMORY[0x28223BE20](v165);
  v7 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v163 = &v155 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E948, &unk_22A57E3C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v169 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v179 = &v155 - v12;
  v13 = sub_22A4DCD0C();
  v14 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v155 - v18;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v20 = MEMORY[0x28223BE20](v188);
  v166 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v183 = &v155 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v178 = &v155 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v155 - v26;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E928, &qword_22A57C8B0);
  v172 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v171 = &v155 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E930, &qword_22A57C8B8);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v204 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v186 = &v155 - v33;
  MEMORY[0x28223BE20](v32);
  v180 = &v155 - v34;
  v35 = [v2 matterAdapter];
  v185 = v2;
  v174 = v35;
  if (v35)
  {
    goto LABEL_4;
  }

  v203 = v4;
  v37 = v7;
  v38 = [v2 bridge];
  v39 = [v38 matterAdapter];

  v174 = v39;
  if (v39)
  {
    v4 = v203;
LABEL_4:
    v175 = v19;
    v168 = v17;
    v156 = a1;
    if (qword_27D87B988 != -1)
    {
LABEL_35:
      swift_once();
    }

    v199 = 0;
    v40 = off_27D87E8A0;
    v181 = v183 + 8;
    v162 = v166 + 8;
    v41 = *(off_27D87E8A0 + 2);
    v197 = (v172 + 48);
    v198 = (v172 + 56);
    v184 = (v14 + 48);
    v173 = (v14 + 32);
    v170 = (v14 + 8);
    v161 = (v4 + 1);
    v158 = "fication(from:attributeReport:)";
    *&v36 = 136315394;
    v157 = v36;
    v160 = xmmword_22A576190;
    v182 = v13;
    v205 = v27;
    v42 = v187;
    v43 = v204;
    v177 = off_27D87E8A0;
    for (i = v41; ; v41 = i)
    {
      v14 = v199;
      if (v199 == v41)
      {
        v47 = 1;
        v199 = v41;
      }

      else
      {
        if ((v199 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v199 >= v40[2])
        {
          goto LABEL_34;
        }

        sub_229564F88(v40 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v199, v43, &qword_27D87E928, &qword_22A57C8B0);
        v47 = 0;
        v199 = v14 + 1;
      }

      v48 = *v198;
      v49 = 1;
      (*v198)(v43, v47, 1, v42);
      v50 = *v197;
      if ((*v197)(v43, 1, v42) != 1)
      {
        v51 = (v43 + *(v42 + 48));
        v52 = v188;
        v203 = v50;
        v53 = v188[12];
        *&v194 = v188[16];
        *&v201 = v188[20];
        v196 = sub_22A4DC52C();
        v54 = *(v196 - 8);
        v195 = *(v54 + 32);
        v200 = v54 + 32;
        v55 = v171;
        v195(v171, v204, v196);
        v56 = v52[12];
        v193 = v56;
        v57 = sub_22A4DCC4C();
        v58 = *(v57 - 8);
        v191 = *(v58 + 32);
        v192 = (v58 + 32);
        (v191)(&v56[v55], &v204[v53], v57);
        v59 = v52[16];
        v189 = v59;
        v60 = sub_22A4DCDAC();
        v61 = *(*(v60 - 8) + 32);
        v202 = v48;
        v61(&v55[v59], &v204[v194], v60);
        v62 = v51[1];
        *&v194 = *v51;
        v190 = v62;
        v63 = v186;
        v64 = &v186[*(v42 + 48)];
        v65 = v52[12];
        v66 = v52[16];
        v67 = v52[20];
        v201 = *&v204[v201];
        v195(v186, v55, v196);
        (v191)(&v63[v65], &v193[v55], v57);
        v68 = v60;
        v50 = v203;
        v61(&v63[v66], &v55[v189], v68);
        v48 = v202;
        v49 = 0;
        *&v63[v67] = v201;
        v69 = v190;
        *v64 = v194;
        *(v64 + 1) = v69;
        v42 = v187;
      }

      v70 = v186;
      v48(v186, v49, 1, v42);
      v71 = v70;
      v72 = v180;
      sub_22957F2F8(v71, v180, &qword_27D87E930, &qword_22A57C8B8);
      if (v50(v72, 1, v42) == 1)
      {

        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
        v137 = *(*(v136 - 8) + 56);
        v138 = v156;
        return v137(v138, 1, 1, v136);
      }

      v73 = v188;
      v74 = v188[12];
      v75 = v188[16];
      v76 = v188[20];
      v77 = (v72 + *(v42 + 48));
      v78 = *v77;
      v195 = v77[1];
      v196 = v78;
      v79 = sub_22A4DC52C();
      v202 = *(v79 - 8);
      v203 = v79;
      v193 = *(v202 + 4);
      v194 = *(v72 + v76);
      v80 = v178;
      (v193)(v178, v72, v79);
      v81 = sub_22A4DCC4C();
      v200 = *(v81 - 8);
      *&v201 = v81;
      v191 = *(v200 + 32);
      v192 = v74;
      (v191)(&v74[v80], &v74[v72], v81);
      v82 = sub_22A4DCDAC();
      v83 = *(v82 - 8);
      v84 = *(v83 + 32);
      v190 = v75;
      v84(&v75[v80], &v75[v72], v82);
      v85 = v73[12];
      v86 = v73[16];
      v189 = v73[20];
      (v193)(v205, v80, v203);
      v87 = v201;
      (v191)(&v205[v85], &v192[v80], v201);
      v27 = v205;
      v84(&v205[v86], &v190[v80], v82);
      *&v27[v189] = v194;
      v88 = v183;
      sub_229564F88(v27, v183, &qword_27D87E8F0, &unk_22A57C838);
      v89 = v73[12];
      v90 = v73[16];

      v91 = sub_22A4DC51C();
      v92 = *(v202 + 1);
      v4 = v182;
      v202 = (v202 + 8);
      v192 = v92;
      (v92)(v88, v203);
      v93 = *(v83 + 8);
      v193 = (v83 + 8);
      *&v194 = v82;
      v191 = v93;
      (v93)(v88 + v90, v82);
      v94 = *(v200 + 8);
      v95 = v200 + 8;
      v94(v88 + v89, v87);
      v96 = v179;
      v13 = v196;
      v97 = v195;
      sub_22968F6F8(v196, v195, v179);
      v98 = *v184;
      if ((*v184)(v96, 1, v4) == 1)
      {
        sub_22953EAE4(v27, &qword_27D87E8F0, &unk_22A57C838);

        v44 = v96;
        v45 = &qword_27D87E948;
        v46 = &unk_22A57E3C0;
        goto LABEL_7;
      }

      v190 = v94;
      v99 = v175;
      v100 = v96;
      v101 = *v173;
      (*v173)(v175, v100, v4);
      sub_22A4DCCFC();
      v102 = sub_22A4DE7CC();
      v103 = [v174 isEndpointConformingToDeviceTypeID:v91 endpointID:v102];

      if (!v103)
      {
        break;
      }

      v104 = v101;
      v105 = v169;
      v106 = v185;
      sub_22968F6F8(v13, v97, v169);

      v13 = &unk_22A57C838;
      if (v98(v105, 1, v4) != 1)
      {
        v159 = v104;
        v104(v168, v105, v4);
        sub_22A4DCCFC();
        v195 = sub_22A4DE7CC();
        v117 = v183;
        sub_229564F88(v27, v183, &qword_27D87E8F0, &unk_22A57C838);
        v118 = v188;
        v119 = v188[12];
        v196 = v188[16];

        sub_22A4DCC3C();
        v167 = sub_22A4DE7DC();
        v120 = v117 + v119;
        v200 = v95;
        v121 = v190;
        (v190)(v120, v201);
        v122 = v166;
        sub_229564F88(v27, v166, &qword_27D87E8F0, &unk_22A57C838);
        v189 = v118[12];
        v123 = v118[16];

        sub_22A4DCD9C();
        v124 = sub_22A4DE7DC();
        v4 = v194;
        v27 = v191;
        (v191)(v122 + v123, v194);
        v125 = objc_opt_self();
        v126 = v195;
        v127 = v167;
        v128 = [v125 attributePathWithEndpointID:v195 clusterID:v167 attributeID:v124];

        v129 = v182;
        v121(v122 + v189, v201);
        v130 = v122;
        v131 = v203;
        v13 = v192;
        (v192)(v130, v203);
        (v27)(v117 + v196, v4);
        (v13)(v117, v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v132 = swift_allocObject();
        *(v132 + 16) = v160;
        *(v132 + 32) = v128;
        sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
        v133 = v128;
        v134 = sub_22A4DD81C();

        LODWORD(v131) = [v174 isImplementingAttributePaths_];

        v135 = *v170;
        (*v170)(v175, v129);
        if (v131)
        {

          v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
          v153 = *(v152 + 48);
          v154 = v156;
          v159(v156, v168, v129);
          sub_22957F2F8(v205, v154 + v153, &qword_27D87E8F0, &unk_22A57C838);
          return (*(*(v152 - 8) + 56))(v154, 0, 1, v152);
        }

        v135(v168, v129);
        v44 = v205;
        goto LABEL_25;
      }

      sub_22953EAE4(v105, &qword_27D87E948, &unk_22A57E3C0);
      v107 = v163;
      sub_229785E38();
      v108 = v106;
      v109 = sub_22A4DD05C();
      v110 = sub_22A4DDCCC();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v206 = v13;
        *v111 = v157;
        *(v111 + 4) = sub_2295A3E30(0xD000000000000013, v158 | 0x8000000000000000, &v206);
        *(v111 + 12) = 2080;
        v112 = [v108 shortDescription];
        v113 = sub_22A4DD5EC();
        v115 = v114;

        v116 = sub_2295A3E30(v113, v115, &v206);

        *(v111 + 14) = v116;
        _os_log_impl(&dword_229538000, v109, v110, "%s - accessory: %s no endpoint matching", v111, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v13, -1, -1);
        MEMORY[0x22AAD4E50](v111, -1, -1);

        (*v161)(v107, v165);
        (*v170)(v175, v4);
        goto LABEL_22;
      }

      (*v161)(v107, v165);
      (*v170)(v175, v4);
      v44 = v27;
      v45 = &qword_27D87E8F0;
      v46 = &unk_22A57C838;
LABEL_7:
      sub_22953EAE4(v44, v45, v46);
      v42 = v187;
      v43 = v204;
      v40 = v177;
    }

    (*v170)(v99, v4);
LABEL_22:
    v44 = v27;
LABEL_25:
    v45 = &qword_27D87E8F0;
    v46 = &unk_22A57C838;
    goto LABEL_7;
  }

  sub_229785E38();
  v140 = v2;
  v141 = sub_22A4DD05C();
  v142 = sub_22A4DDCCC();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = a1;
    v145 = swift_slowAlloc();
    v206 = v145;
    *v143 = 136315394;
    *(v143 + 4) = sub_2295A3E30(0xD000000000000013, 0x800000022A58FFC0, &v206);
    *(v143 + 12) = 2080;
    v146 = [v140 shortDescription];
    v147 = sub_22A4DD5EC();
    v149 = v148;

    v150 = sub_2295A3E30(v147, v149, &v206);

    *(v143 + 14) = v150;
    _os_log_impl(&dword_229538000, v141, v142, "%s - accessory: %s no matter adapter", v143, 0x16u);
    swift_arrayDestroy();
    v151 = v145;
    a1 = v144;
    MEMORY[0x22AAD4E50](v151, -1, -1);
    MEMORY[0x22AAD4E50](v143, -1, -1);
  }

  (v203[1])(v37, v165);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v137 = *(*(v136 - 8) + 56);
  v138 = a1;
  return v137(v138, 1, 1, v136);
}

uint64_t sub_229688B80()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_229688BC8, v0, 0);
}

uint64_t sub_229688BC8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  v3 = swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    __break(1u);
  }

  else
  {
    v11 = v0[5];
    v12 = v0[6];
    v0[7] = *(v11 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationCenter);
    v13 = sub_22A4DDE5C();
    v0[8] = v13;
    v14 = sub_22968FFA8(&qword_27D87E910, _s31MatterAccessoryPresenceDetectorCMa, &unk_22A57C7F8);
    v0[9] = v14;
    v15 = swift_task_alloc();
    v0[10] = v15;
    v15[2] = v11;
    v15[3] = v13;
    v15[4] = v12;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_229688D60;
    v8 = sub_22968F9B0;
    v7 = 0x800000022A58FDB0;
    v10 = MEMORY[0x277D84F78] + 8;
    v4 = v11;
    v5 = v14;
    v6 = 0xD00000000000001FLL;
    v9 = v15;
  }

  return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_229688D60()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_229688E8C, v1, 0);
}

uint64_t sub_229688E8C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v4 = sub_22A4DDE5C();
  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_229688FB0;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_22968F9F0, v5, v7);
}

uint64_t sub_229688FB0()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2296890DC, v1, 0);
}

uint64_t sub_2296890DC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v4 = sub_22A4DDE5C();
  v0[15] = v4;
  v5 = swift_task_alloc();
  v0[16] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_229680560;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_22968FA30, v5, v7);
}

id sub_229689200(void *a1)
{
  v2 = v1;
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  swift_unknownObjectRetain();
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A58FD20, &v16);
    *(v7 + 12) = 2080;
    v9 = [a1 shortDescription];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    v13 = sub_2295A3E30(v10, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_229538000, v5, v6, "%s - %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);

  return [v14 removeObject_];
}

uint64_t sub_2296893F4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229689414, v3, 0);
}

uint64_t sub_229689414()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2296894C8()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](sub_2296894E8, v2, 0);
}

uint64_t sub_2296894E8()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  if (v3)
  {

    v4 = 32;
    do
    {

      sub_22A4DDA7C();

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2296895E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_229685988(a1, a2);
}

uint64_t sub_22968968C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2296896AC, v3, 0);
}

uint64_t sub_2296896AC()
{
  sub_229689200(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22968970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E918, &qword_22A57C8A8);
  v6[14] = swift_task_alloc();
  v7 = _s15AttributeReportVMa(0);
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = sub_22A4DB21C();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[22] = swift_task_alloc();
  v9 = sub_22A4DDE4C();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229689904, 0, 0);
}

uint64_t sub_229689904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_229689A34;
  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_229689A34()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_229683EF8;
  }

  else
  {
    v2 = sub_229689B48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229689B64()
{
  v33 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(v0[24] + 8))(v0[25], v0[23]);

    v11 = v0[1];

    return v11();
  }

  (*(v3 + 32))(v0[21], v1, v2);
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v32);
    _os_log_impl(&dword_229538000, v5, v6, "%s - received attribute changed notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[19] + 8))(v0[21], v0[18]);
    goto LABEL_10;
  }

  v10 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (!v0[5])
  {
    (*(v0[19] + 8))(v0[21], v0[18]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_19;
  }

  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v0[19] + 8))(v0[21], v0[18]);

    goto LABEL_19;
  }

  v13 = v0[27];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[14];
  v19 = v0[10];
  v0[29] = v19;
  (*(v17 + 16))(v15, v14, v16);
  sub_22969003C(v15, v18);
  v20 = v13;
  v21 = v0[15];
  v22 = v0[14];
  v23 = (v0[16] + 56);
  if (v20)
  {
    v24 = v0[21];
    v25 = v0[18];
    v26 = v0[19];

    (*(v26 + 8))(v24, v25);
    (*v23)(v22, 1, 1, v21);
    sub_22953EAE4(v22, &qword_27D87E918, &qword_22A57C8A8);
LABEL_19:
    v27 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v28 = swift_task_alloc();
    v0[26] = v28;
    *v28 = v0;
    v28[1] = sub_229689A34;
    v29 = v0[22];
    v30 = v0[23];

    return MEMORY[0x282200308](v29, v30, v27);
  }

  v31 = v0[17];
  (*v23)(v0[14], 0, 1, v0[15]);
  sub_22968FE78(v22, v31, _s15AttributeReportVMa);

  return MEMORY[0x2822009F8](sub_22968A080, v10, 0);
}

uint64_t sub_22968A080()
{
  sub_22968A220(*(v0 + 232), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_22968A0EC, 0, 0);
}

uint64_t sub_22968A0EC()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];

  sub_22968FF48(v5, _s15AttributeReportVMa);
  (*(v4 + 8))(v2, v3);
  v6 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_229689A34;
  v8 = v0[22];
  v9 = v0[23];

  return MEMORY[0x282200308](v8, v9, v6);
}

void sub_22968A220(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v65 - v5;
  v6 = _s15AttributeReportVMa(0);
  MEMORY[0x28223BE20](v6);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = _s23AccessoryPresenceUpdateVMa(0);
  v8 = MEMORY[0x28223BE20](updated);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v71 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  v16 = _s13PresenceStateOMa(0);
  v76 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v75 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v77 = a2;
  sub_22968DDC8(v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_22957F2F8(v20, v27, &qword_27D87E900, &unk_22A57C850);
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      v33 = a1;
      v34 = [v32 matterNodeID];
      v35 = sub_22968E76C(v27, v34);

      if (!v35)
      {
        sub_22953EAE4(v27, &qword_27D87E900, &unk_22A57C850);

        return;
      }

      v66 = v35;
      sub_229564F88(v27, v25, &qword_27D87E900, &unk_22A57C850);
      v36 = &v25[*(v21 + 48)];
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
      v38 = v37[12];
      v39 = v37[16];
      (*&v36[v37[20]])(v77 + *(v6 + 24));

      v40 = sub_22A4DCDAC();
      (*(*(v40 - 8) + 8))(&v36[v39], v40);
      v41 = sub_22A4DCC4C();
      (*(*(v41 - 8) + 8))(&v36[v38], v41);
      v42 = sub_22A4DC52C();
      (*(*(v42 - 8) + 8))(v36, v42);
      v43 = sub_22A4DCD0C();
      (*(*(v43 - 8) + 8))(v25, v43);
      if ((v76)[6](v15, 1, v16) == 1)
      {
        sub_22953EAE4(v27, &qword_27D87E900, &unk_22A57C850);

        v28 = &qword_27D87EBB0;
        v29 = &qword_22A57C720;
        v30 = v15;
        goto LABEL_16;
      }

      v76 = v33;
      v44 = v15;
      v45 = v75;
      sub_22968FE78(v44, v75, _s13PresenceStateOMa);
      v46 = v71;
      sub_22968FEE0(v45, &v71[*(updated + 20)], _s13PresenceStateOMa);
      *v46 = v66;
      if (qword_27D87B980 != -1)
      {
        swift_once();
      }

      v47 = sub_22A4DD07C();
      __swift_project_value_buffer(v47, qword_27D8AB790);
      v48 = v69;
      sub_22968FEE0(v77, v69, _s15AttributeReportVMa);
      v49 = v68;
      sub_22968FEE0(v46, v68, _s23AccessoryPresenceUpdateVMa);
      v50 = sub_22A4DD05C();
      v51 = sub_22A4DDCCC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v78[0] = v53;
        *v52 = 136315650;
        *(v52 + 4) = sub_2295A3E30(0xD00000000000003FLL, 0x800000022A58FF80, v78);
        *(v52 + 12) = 2080;
        v54 = sub_229690914();
        v55 = v48;
        v57 = v56;
        sub_22968FF48(v55, _s15AttributeReportVMa);
        v58 = sub_2295A3E30(v54, v57, v78);

        *(v52 + 14) = v58;
        *(v52 + 22) = 2080;
        v59 = sub_22967B364();
        v61 = v60;
        sub_22968FF48(v49, _s23AccessoryPresenceUpdateVMa);
        v62 = sub_2295A3E30(v59, v61, v78);

        *(v52 + 24) = v62;
        _os_log_impl(&dword_229538000, v50, v51, "%s - %s => %s", v52, 0x20u);
        swift_arrayDestroy();
        v63 = v53;
        v45 = v75;
        MEMORY[0x22AAD4E50](v63, -1, -1);
        MEMORY[0x22AAD4E50](v52, -1, -1);
      }

      else
      {

        sub_22968FF48(v49, _s23AccessoryPresenceUpdateVMa);
        sub_22968FF48(v48, _s15AttributeReportVMa);
      }

      sub_22968FEE0(v46, v70, _s23AccessoryPresenceUpdateVMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
      v64 = v72;
      sub_22A4DDA0C();

      (*(v73 + 8))(v64, v74);
      sub_22968FF48(v46, _s23AccessoryPresenceUpdateVMa);
      sub_22968FF48(v45, _s13PresenceStateOMa);
    }

    v28 = &qword_27D87E900;
    v29 = &unk_22A57C850;
    v30 = v27;
    goto LABEL_16;
  }

  v28 = &qword_27D87E8F8;
  v29 = &qword_22A57C848;
  v30 = v20;
LABEL_16:
  sub_22953EAE4(v30, v28, v29);
}

uint64_t sub_22968ACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_22A4DB21C();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[17] = swift_task_alloc();
  v8 = sub_22A4DDE4C();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22968AE34, 0, 0);
}

uint64_t sub_22968AE34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_22968AF64;
  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_22968AF64()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_229682C34;
  }

  else
  {
    v2 = sub_22968B078;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22968B094()
{
  v18 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(v0[19] + 8))(v0[20], v0[18]);

    v11 = v0[1];

    return v11();
  }

  (*(v3 + 32))(v0[16], v1, v2);
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v17);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is reachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_10;
  }

  v10 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[24] = v0[10];

      return MEMORY[0x2822009F8](sub_22968B47C, v10, 0);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v13 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_22968AF64;
  v15 = v0[17];
  v16 = v0[18];

  return MEMORY[0x282200308](v15, v16, v13);
}

uint64_t sub_22968B47C()
{
  sub_22968B5F0(*(v0 + 192));

  return MEMORY[0x2822009F8](sub_22968B4E4, 0, 0);
}

uint64_t sub_22968B4E4()
{
  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  (*(v3 + 8))(v2, v4);
  v5 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_22968AF64;
  v7 = v0[17];
  v8 = v0[18];

  return MEMORY[0x282200308](v7, v8, v5);
}

void sub_22968B5F0(void *a1)
{
  v2 = v1;
  updated = _s23AccessoryPresenceUpdateVMa(0);
  MEMORY[0x28223BE20](updated);
  v167 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v166 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v165 = &v143 - v5;
  v6 = sub_22A4DCDFC();
  v178 = *(v6 - 8);
  v179 = v6;
  MEMORY[0x28223BE20](v6);
  v184 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  MEMORY[0x28223BE20](v8 - 8);
  v177 = &v143 - v9;
  v10 = sub_22A4DC77C();
  v170 = *(v10 - 8);
  v171 = v10;
  MEMORY[0x28223BE20](v10);
  v163 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v13 = MEMORY[0x28223BE20](v12);
  v176 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v143 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  MEMORY[0x28223BE20](v17 - 8);
  v182 = &v143 - v18;
  v19 = _s13PresenceStateOMa(0);
  v180 = *(v19 - 8);
  v181 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v172 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v143 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v143 - v24;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v26 = *(v188 - 8);
  v27 = MEMORY[0x28223BE20](v188);
  v169 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v175 = &v143 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v183 = &v143 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v174 = &v143 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v143 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v143 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v186 = &v143 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v187 = &v143 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v143 - v45;
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (v47)
  {
    v48 = v47;
    v162 = v46;
    v49 = *(v2 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);
    v185 = a1;
    if ([v49 containsObject_])
    {
      v152 = v2;
      sub_229687758(v25);
      v50 = v188;
      if ((*(v26 + 48))(v25, 1, v188) == 1)
      {

        v51 = &qword_27D87E8F8;
        v52 = &qword_22A57C848;
        v53 = v25;
LABEL_22:
        sub_22953EAE4(v53, v51, v52);
        return;
      }

      v55 = v25;
      v56 = v162;
      sub_22957F2F8(v55, v162, &qword_27D87E900, &unk_22A57C850);
      v57 = v187;
      sub_229564F88(v56, v187, &qword_27D87E900, &unk_22A57C850);
      v58 = v57 + *(v50 + 48);
      v59 = v12[12];
      v60 = v12[16];
      v61 = (v58 + v12[20]);
      v63 = *v61;
      v62 = v61[1];
      v159 = v63;
      v154 = v62;
      v64 = sub_22A4DC52C();
      v157 = *(v64 - 8);
      v65 = v157[2];
      v161 = v64;
      v65(v16, v58);
      v66 = v12[12];
      v67 = sub_22A4DCC4C();
      v156 = *(v67 - 8);
      v68 = *(v156 + 16);
      v151 = v59;
      v160 = v67;
      v68(&v16[v66], v58 + v59);
      v69 = v12[16];
      v70 = sub_22A4DCDAC();
      v158 = *(v70 - 8);
      v71 = *(v158 + 16);
      v150 = v60;
      v155 = v70;
      v71(&v16[v69], v58 + v60);
      v72 = &v16[v12[20]];
      v73 = v154;
      *v72 = v159;
      *(v72 + 1) = v73;
      v74 = sub_22A4DCD0C();
      v75 = *(v74 - 8);
      v76 = *(v75 + 16);
      v77 = v186;
      v159 = v74;
      v76(v186, v57, v74);
      v78 = v188;
      sub_22957F2F8(v16, v77 + *(v188 + 48), &qword_27D87E8F0, &unk_22A57C838);

      v79 = [v48 chipAccessoryServer];
      v80 = [v79 matterDevice];

      v153 = v75;
      if (v80)
      {
        v148 = v58;
        sub_229564F88(v77, v40, &qword_27D87E900, &unk_22A57C850);
        v149 = v80;
        v81 = v78;
        v82 = *(v78 + 48);
        v83 = v75;
        v84 = &v40[v82];
        v85 = v12[12];
        v86 = v12[16];
        v87 = v157[4];
        v147 = *&v40[v82 + v12[20]];
        v88 = v176;
        v87(v176, &v40[v82], v161);
        (*(v156 + 32))(v88 + v12[12], &v84[v85], v160);
        (*(v158 + 32))(v88 + v12[16], &v84[v86], v155);
        *(v88 + v12[20]) = v147;
        (*(v83 + 32))(v37, v40, v159);
        sub_22957F2F8(v88, &v37[*(v81 + 48)], &qword_27D87E8F0, &unk_22A57C838);
        v89 = v174;
        sub_229564F88(v37, v174, &qword_27D87E900, &unk_22A57C850);
        v146 = &v89[*(v81 + 48)];
        v176 = v12[12];
        *&v147 = v12[16];

        v90 = v183;
        sub_229564F88(v37, v183, &qword_27D87E900, &unk_22A57C850);
        v91 = &v90[*(v81 + 48)];
        v145 = v12[16];
        v144 = v91;

        v92 = v175;
        sub_229564F88(v37, v175, &qword_27D87E900, &unk_22A57C850);
        v93 = v92 + *(v81 + 48);
        v94 = v12[12];

        sub_22A4DCE1C();
        sub_22953EAE4(v37, &qword_27D87E900, &unk_22A57C850);
        v95 = (v156 + 8);
        v174 = *(v156 + 8);
        (v174)(v93 + v94, v160);
        v96 = v157[1];
        v96(v93, v161);
        v98 = (v153 + 8);
        v97 = *(v153 + 8);
        v99 = v159;
        v97(v92, v159);
        v101 = v158 + 8;
        v100 = *(v158 + 8);
        v143 = v12;
        v102 = v144;
        v103 = v155;
        v100(v145 + v144, v155);
        v104 = v102;
        v105 = v161;
        v96(v104, v161);
        v145 = v97;
        v144 = v98;
        v97(v183, v99);
        v106 = v174;
        v107 = v146;
        v183 = v100;
        v175 = v101;
        v100(&v146[v147], v103);
        v108 = v184;
        v109 = &v107[v176];
        v176 = v95;
        (v106)(v109, v160);
        v96(v107, v105);
        v110 = v177;
        sub_22A4DDF3C();
        v113 = v143;
        *&v147 = v96;
        v114 = v158;
        (*(v178 + 8))(v108, v179);
        v116 = v170;
        v115 = v171;
        if ((*(v170 + 48))(v110, 1, v171) != 1)
        {
          v137 = v163;
          (*(v116 + 32))(v163, v110, v115);
          v138 = v169;
          sub_229564F88(v186, v169, &qword_27D87E900, &unk_22A57C850);
          v139 = v138 + *(v188 + 48);
          v184 = v113[12];
          v179 = v113[16];
          v140 = v113[20];
          v188 = v139;
          v119 = v182;
          (*(v139 + v140))(v137);

          (*(v116 + 8))(v137, v115);
          sub_22953EAE4(v186, &qword_27D87E900, &unk_22A57C850);
          v141 = v188;
          v142 = v183;
          (v183)(v188 + v179, v103);
          v122 = v160;
          (v106)(&v184[v141], v160);
          v112 = v161;
          (v147)(v141, v161);
          v111 = v159;
          v145(v169);
          v120 = v142;
          v121 = v162;
          v118 = v180;
          v117 = v181;
          v58 = v148;
LABEL_14:
          v123 = v157;
          (v120)(v58 + v150, v155);
          (*(v156 + 8))(v58 + v151, v122);
          (v123[1])(v58, v112);
          (*(v153 + 8))(v187, v111);
          if ((*(v118 + 48))(v119, 1, v117) == 1)
          {
            sub_22953EAE4(v119, &qword_27D87EBB0, &qword_22A57C720);
          }

          else
          {
            v129 = v173;
            sub_22968FE78(v119, v173, _s13PresenceStateOMa);
            v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
            v131 = v172;
            (*(*(v130 - 8) + 56))(v172, 2, 2, v130);
            v132 = sub_229698FEC(v129, v131);
            sub_22968FF48(v131, _s13PresenceStateOMa);
            if (v132)
            {
              v133 = v167;
              sub_22968FEE0(v129, &v167[*(updated + 20)], _s13PresenceStateOMa);
              v134 = v185;
              *v133 = v185;
              v135 = v134;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
              v136 = v165;
              sub_22A4DDA0C();

              (*(v166 + 8))(v136, v168);
              sub_22968FF48(v129, _s13PresenceStateOMa);
LABEL_21:
              v51 = &qword_27D87E900;
              v52 = &unk_22A57C850;
              v53 = v121;
              goto LABEL_22;
            }

            sub_22968FF48(v129, _s13PresenceStateOMa);
          }

          if (qword_27D87B980 != -1)
          {
            swift_once();
          }

          v124 = sub_22A4DD07C();
          __swift_project_value_buffer(v124, qword_27D8AB790);
          v125 = sub_22A4DD05C();
          v126 = sub_22A4DDCCC();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v189 = v128;
            *v127 = 136315138;
            *(v127 + 4) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58FE20, &v189);
            _os_log_impl(&dword_229538000, v125, v126, "%s - Skipping update as presence is not occupied", v127, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v128);
            MEMORY[0x22AAD4E50](v128, -1, -1);
            MEMORY[0x22AAD4E50](v127, -1, -1);
          }

          goto LABEL_21;
        }

        sub_22953EAE4(v186, &qword_27D87E900, &unk_22A57C850);
        sub_22953EAE4(v110, &qword_27D87E8E8, &qword_22A57C830);
        v58 = v148;
        v112 = v161;
        v111 = v159;
      }

      else
      {
        v111 = v159;
        v114 = v158;

        sub_22953EAE4(v77, &qword_27D87E900, &unk_22A57C850);
        v112 = v161;
      }

      v118 = v180;
      v117 = v181;
      v119 = v182;
      (*(v180 + 56))(v182, 1, 1, v181);
      v120 = *(v114 + 8);
      v121 = v162;
      v122 = v160;
      goto LABEL_14;
    }

    v54 = v185;
  }
}

uint64_t sub_22968CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a7;
  v34 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_22A4DD9DC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v16;
  v21 = v9;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v19, v13, v21);
  v24 = v34;
  *(v23 + v20) = v35;
  *(v23 + v22) = v18;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;

  v25 = sub_22957F3C0(0, 0, v33, v36, v23);
  v26 = OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_notificationHandlerTasks;
  swift_beginAccess();
  v27 = *(a2 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_22958A8B4(0, v27[2] + 1, 1, v27);
    *(a2 + v26) = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_22958A8B4((v29 > 1), v30 + 1, 1, v27);
  }

  v27[2] = v30 + 1;
  v27[v30 + 4] = v25;
  *(a2 + v26) = v27;
  return swift_endAccess();
}

uint64_t sub_22968CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v6[14] = _s23AccessoryPresenceUpdateVMa(0);
  v6[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E828, &unk_22A57C630);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v6[19] = v8;
  v9 = *(v8 - 8);
  v6[20] = v9;
  v6[21] = v9;
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v10 = sub_22A4DB21C();
  v6[26] = v10;
  v6[27] = *(v10 - 8);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[29] = swift_task_alloc();
  v11 = sub_22A4DDE4C();
  v6[30] = v11;
  v6[31] = *(v11 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22968D0EC, 0, 0);
}

uint64_t sub_22968D0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_22968D21C;
  v3 = v0[29];
  v4 = v0[30];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_22968D21C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_22968D794;
  }

  else
  {
    v2 = sub_22968D330;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22968D34C()
{
  v18 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(v0[31] + 8))(v0[32], v0[30]);

    v11 = v0[1];

    return v11();
  }

  (*(v3 + 32))(v0[28], v1, v2);
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB790);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v17);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory is unreachable notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[27] + 8))(v0[28], v0[26]);
    goto LABEL_10;
  }

  v10 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v0[36] = v0[10];

      return MEMORY[0x2822009F8](sub_22968D820, v10, 0);
    }

    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v13 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v14 = swift_task_alloc();
  v0[33] = v14;
  *v14 = v0;
  v14[1] = sub_22968D21C;
  v15 = v0[29];
  v16 = v0[30];

  return MEMORY[0x282200308](v15, v16, v13);
}

uint64_t sub_22968D794()
{
  *(v0 + 72) = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_22968D820()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if ([*(*(v0 + 280) + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories) containsObject_])
    {
      v1 = *(v0 + 184);
      v3 = *(v0 + 152);
      v2 = *(v0 + 160);
      sub_229687758(v1);
      v4 = 1;
      if ((*(v2 + 48))(v1, 1, v3) != 1)
      {
        v5 = *(v0 + 184);
        v37 = *(v0 + 192);
        v6 = *(v0 + 176);
        v7 = *(v0 + 152);
        v8 = v5 + *(v7 + 48);
        v44 = sub_22A4DCD0C();
        v43 = *(*(v44 - 8) + 32);
        (v43)(v6, v5, v44);
        v9 = v6 + *(v7 + 48);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
        v11 = v10[12];
        v38 = v10[16];
        v41 = v10[20];
        v40 = sub_22A4DC52C();
        v39 = *(*(v40 - 8) + 32);
        v39(v9, v8, v40);
        v12 = v10[12];
        v36 = v12;
        v13 = sub_22A4DCC4C();
        v35 = *(*(v13 - 8) + 32);
        v35(v9 + v12, v8 + v11, v13);
        v14 = v10[16];
        v34 = v14;
        v15 = sub_22A4DCDAC();
        v16 = *(*(v15 - 8) + 32);
        v16(v9 + v14, v8 + v38, v15);
        v17 = v37 + *(v7 + 48);
        v42 = *(v8 + v41);
        v43();
        v18 = v10[12];
        v19 = v10[16];
        v20 = v10[20];
        v39(v17, v9, v40);
        v35(v17 + v18, v9 + v36, v13);
        v16(v17 + v19, v9 + v34, v15);
        v4 = 0;
        *(v17 + v20) = v42;
      }

      v22 = *(v0 + 192);
      v21 = *(v0 + 200);
      v23 = *(v0 + 168);
      v24 = *(v0 + 152);
      (*(v23 + 56))(v22, v4, 1, v24);
      sub_22957F2F8(v22, v21, &qword_27D87E8F8, &qword_22A57C848);
      LODWORD(v22) = (*(v23 + 48))(v21, 1, v24);
      sub_22953EAE4(v21, &qword_27D87E8F8, &qword_22A57C848);
      v25 = *(v0 + 288);
      if (v22 == 1)
      {
      }

      else
      {
        v27 = *(v0 + 136);
        v26 = *(v0 + 144);
        v29 = *(v0 + 120);
        v28 = *(v0 + 128);
        v30 = *(*(v0 + 112) + 20);
        sub_22A4DB71C();
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v31 - 8) + 56))(&v29[v30], 0, 2, v31);
        *v29 = v25;
        v32 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
        sub_22A4DDA0C();

        (*(v27 + 8))(v26, v28);
      }
    }

    else
    {
    }
  }

  return MEMORY[0x2822009F8](sub_22968DCBC, 0, 0);
}

uint64_t sub_22968DCBC()
{
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  (*(v3 + 8))(v2, v4);
  v5 = sub_22968FFA8(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_22968D21C;
  v7 = v0[29];
  v8 = v0[30];

  return MEMORY[0x282200308](v7, v8, v5);
}

uint64_t sub_22968DDC8@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = sub_22A4DCDAC();
  v69 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v71 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22A4DCC4C();
  v68 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  MEMORY[0x28223BE20](v79);
  v5 = &v61 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E928, &qword_22A57C8B0);
  v81 = *(v67 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v67);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E930, &qword_22A57C8B8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v65 = &v61 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v64 = v7;
  v12 = MEMORY[0x28223BE20](v11);
  v62 = v7;
  MEMORY[0x28223BE20](v12);
  v63 = v7;
  if (qword_27D87B988 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v13 = off_27D87E8A0;
    v77 = *(off_27D87E8A0 + 2);
    v82 = v1;
    if (!v77)
    {
      break;
    }

    v1 = 0;
    *&v75 = v68 + 16;
    v73 = (v68 + 8);
    v74 = (v69 + 16);
    v70 = (v69 + 8);
    v76 = v7;
    v72 = off_27D87E8A0;
    while (v1 < v13[2])
    {
      sub_229564F88(v13 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v1, v7, &qword_27D87E928, &qword_22A57C8B0);
      v14 = v79;
      v15 = v79[12];
      v16 = v79[16];
      v17 = &v7[v79[20]];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = sub_22A4DC52C();
      (*(*(v20 - 8) + 16))(v5, v7, v20);
      v21 = v83;
      (*v75)(&v5[v14[12]], &v7[v15], v83);
      v22 = &v7[v16];
      v23 = v82;
      (*v74)(&v5[v14[16]], v22, v82);
      v24 = &v5[v14[20]];
      *v24 = v18;
      *(v24 + 1) = v19;

      v25 = v78;
      sub_22A4DCDCC();
      sub_22968FFA8(&qword_27D87E938, MEMORY[0x277D173C8], MEMORY[0x277D173D8]);
      sub_22A4DD7DC();
      sub_22A4DD7DC();
      (*v73)(v25, v21);
      if (v85 == v84)
      {
        v26 = v71;
        sub_22A4DCDEC();
        sub_22968FFA8(&unk_27D881930, MEMORY[0x277D17430], MEMORY[0x277D17440]);
        sub_22A4DD7DC();
        sub_22A4DD7DC();
        (*v70)(v26, v23);
        sub_22953EAE4(v5, &qword_27D87E8F0, &unk_22A57C838);
        if (v85 == v84)
        {
          v27 = v65;
          sub_22957F2F8(v76, v65, &qword_27D87E928, &qword_22A57C8B0);
          v28 = 0;
          v1 = v82;
          goto LABEL_13;
        }
      }

      else
      {
        sub_22953EAE4(v5, &qword_27D87E8F0, &unk_22A57C838);
      }

      ++v1;
      v7 = v76;
      sub_22953EAE4(v76, &qword_27D87E928, &qword_22A57C8B0);
      v13 = v72;
      if (v77 == v1)
      {
        v28 = 1;
        v1 = v82;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v28 = 1;
LABEL_12:
  v27 = v65;
LABEL_13:
  v29 = v81;
  v30 = v67;
  (*(v81 + 56))(v27, v28, 1, v67);
  if ((*(v29 + 48))(v27, 1, v30) == 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
    return (*(*(v31 - 8) + 56))(v66, 1, 1, v31);
  }

  else
  {
    v33 = (v27 + *(v30 + 48));
    v34 = v79;
    v35 = v79[12];
    v36 = v79[16];
    *&v75 = v79[20];
    v78 = sub_22A4DC52C();
    v37 = *(v78 - 1);
    v77 = *(v37 + 32);
    v38 = v1;
    v81 = v37 + 32;
    v39 = v64;
    v77(v64, v27, v78);
    v74 = v34[12];
    v40 = v68 + 32;
    v76 = *(v68 + 32);
    (v76)(v74 + v39, v27 + v35, v83);
    v68 = v40;
    v71 = v34[16];
    v41 = v69 + 32;
    v42 = *(v69 + 32);
    v42(&v71[v39], v27 + v36, v38);
    v69 = v41;
    v43 = v42;
    v44 = *v33;
    v72 = v33[1];
    v73 = v44;
    v45 = v38;
    v46 = v62;
    v47 = &v62[*(v30 + 48)];
    v70 = v34[12];
    v48 = v27;
    v49 = v34[16];
    v50 = v34[20];
    v75 = *(v48 + v75);
    v77(v62, v39, v78);
    (v76)(v70 + v46, v74 + v39, v83);
    v43(v46 + v49, &v71[v39], v45);
    *(v46 + v50) = v75;
    v51 = v72;
    *v47 = v73;
    *(v47 + 1) = v51;
    v52 = v63;
    sub_22957F2F8(v46, v63, &qword_27D87E928, &qword_22A57C8B0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
    v54 = v66;
    v55 = v66 + *(v53 + 48);
    sub_22A4DCDDC();
    sub_22957F2F8(v52, v39, &qword_27D87E928, &qword_22A57C8B0);
    v56 = v34[12];
    v57 = v34[16];
    v80 = *(v39 + v34[20]);

    v58 = v34[12];
    v59 = v34[16];
    v60 = v34[20];
    v77(v55, v39, v78);
    (v76)(v55 + v58, v39 + v56, v83);
    v43(v55 + v59, (v39 + v57), v82);
    *(v55 + v60) = v80;
    return (*(*(v53 - 8) + 56))(v54, 0, 1, v53);
  }
}

void *sub_22968E76C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v33[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = v33 - v8;
  if (qword_27D87B980 != -1)
  {
    swift_once();
  }

  v10 = sub_22A4DD07C();
  __swift_project_value_buffer(v10, qword_27D8AB790);

  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v7;
    v15 = v9;
    v16 = v14;
    v39[0] = v14;
    *v13 = 136315138;
    *v38 = *(v3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E908, &qword_22A57C860);
    v17 = sub_22A4DBA6C();
    v19 = sub_2295A3E30(v17, v18, v39);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_229538000, v11, v12, "observing accessories: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v20 = v16;
    v9 = v15;
    v7 = v36;
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  v21 = [*(v3 + OBJC_IVAR____TtCOO13HomeKitDaemon13LocalPresence8Detector31MatterAccessoryPresenceDetector_observingAccessories) objectEnumerator];
  v22 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
  v23 = [v21 nextObject];
  v24 = v34;
  if (v23)
  {
    v36 = v7 + 6;
    v25 = &qword_281401B70;
    do
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
      sub_2295404B0(v39, v38);
      sub_229562F68(0, v25, off_278666148);
      if (swift_dynamicCast())
      {
        v26 = v37;
        sub_229687758(v6);
        if ((*v36)(v6, 1, v24) == 1)
        {
          __swift_destroy_boxed_opaque_existential_0(v39);

          sub_22953EAE4(v6, &qword_27D87E8F8, &qword_22A57C848);
        }

        else
        {
          v27 = v25;
          v28 = v22;
          sub_22957F2F8(v6, v9, &qword_27D87E900, &unk_22A57C850);
          sub_229562F68(0, &qword_281401760, 0x277D82BB8);
          v29 = v9;
          v30 = [v26 matterNodeID];
          v31 = sub_22A4DDEDC();

          if (v31)
          {
            sub_22A4DCD0C();
            sub_22968FFA8(&qword_27D87E920, MEMORY[0x277D17408], MEMORY[0x277D17418]);
            sub_22A4DD7DC();
            sub_22A4DD7DC();
            sub_22953EAE4(v29, &qword_27D87E900, &unk_22A57C850);
            __swift_destroy_boxed_opaque_existential_0(v39);
            if (v38[0] == v37)
            {

              return v26;
            }

            v9 = v29;

            v24 = v34;
          }

          else
          {

            sub_22953EAE4(v29, &qword_27D87E900, &unk_22A57C850);
            __swift_destroy_boxed_opaque_existential_0(v39);
            v9 = v29;
          }

          v22 = v28;
          v25 = v27;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v39);
      }
    }

    while ([v21 v22[430]]);
  }

  return 0;
}

uint64_t sub_22968EC80@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_22A4DC59C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22A4DC58C();
  sub_22A4DC57C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 8))(v7, v4);
  if (v12[15])
  {
    v9 = 2;
  }

  else
  {
    sub_22A4DB73C();
    v9 = 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  (*(*(v10 - 8) + 56))(a2, v9, 2, v10);
  v11 = _s13PresenceStateOMa(0);
  return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
}

uint64_t sub_22968EE50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E928, &qword_22A57C8B0);
  v1 = *(v0 - 8);
  v43 = v0 - 8;
  MEMORY[0x28223BE20](v0 - 8);
  v38 = &v34 - v2;
  v3 = sub_22A4DCDAC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22A4DCC4C();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DC52C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E940, &unk_22A57C8C0);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v13 = swift_allocObject();
  v42 = v13;
  *(v13 + 16) = xmmword_22A576180;
  v39 = v13 + v12;
  sub_22A4DC53C();
  sub_22A4DCC2C();
  v14 = v5;
  sub_22A4DCD8C();
  v15 = sub_22A4DD5EC();
  v40 = v16;
  v41 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
  v18 = v17[12];
  v19 = v17[16];
  v20 = *(v9 + 32);
  v35 = v18;
  v36 = v9 + 32;
  v37 = v20;
  v21 = v38;
  v20(v38, v11, v8);
  v22 = *(v47 + 32);
  v47 += 32;
  v23 = &v21[v18];
  v24 = v44;
  v22(v23, v7, v44);
  v25 = *(v45 + 32);
  v26 = v19;
  v27 = v14;
  v28 = v46;
  v25(&v21[v19], v27, v46);
  v29 = v39;
  v37(v39, v21, v8);
  v22((v29 + v17[12]), &v21[v35], v24);
  result = (v25)(v29 + v17[16], &v21[v26], v28);
  v31 = (v29 + v17[20]);
  *v31 = sub_22968F244;
  v31[1] = 0;
  v32 = (v29 + *(v43 + 56));
  v33 = v40;
  *v32 = v41;
  v32[1] = v33;
  off_27D87E8A0 = v42;
  return result;
}

BOOL sub_22968F294()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E900, &unk_22A57C850);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v38 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F8, &qword_22A57C848);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  sub_229687758(v7);
  v13 = 1;
  v55 = *(v1 + 48);
  if (v55(v7, 1, v0) != 1)
  {
    v14 = &v7[*(v0 + 48)];
    v54 = sub_22A4DCD0C();
    v15 = *(v54 - 8);
    v16 = *(v15 + 32);
    v51 = v1 + 48;
    v52 = v16;
    v45 = v15 + 32;
    v43 = v3;
    v16(v3, v7, v54);
    v17 = &v3[*(v0 + 48)];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8F0, &unk_22A57C838);
    v19 = v18[12];
    v46 = v18[16];
    *&v50 = v18[20];
    v48 = sub_22A4DC52C();
    v20 = *(v48 - 8);
    v47 = *(v20 + 32);
    v49 = v20 + 32;
    v47(v17, v14, v48);
    v21 = v18[12];
    v44 = v21;
    v42 = sub_22A4DCC4C();
    v22 = *(v42 - 8);
    v40 = *(v22 + 32);
    v41 = v22 + 32;
    v23 = &v17[v21];
    v24 = v14;
    v40(v23, &v14[v19], v42);
    v25 = v18[16];
    v39 = v25;
    v26 = sub_22A4DCDAC();
    v53 = v12;
    v27 = v26;
    v28 = *(v26 - 8);
    v29 = *(v28 + 32);
    v38 = v28 + 32;
    v29(&v17[v25], &v24[v46], v26);
    v30 = &v10[*(v0 + 48)];
    v50 = *&v24[v50];
    v52(v10, v43, v54);
    v31 = v18[12];
    v54 = v1;
    v32 = v18[16];
    v33 = v18[20];
    v47(v30, v17, v48);
    v40(&v30[v31], &v17[v44], v42);
    v34 = &v30[v32];
    v35 = v27;
    v12 = v53;
    v1 = v54;
    v29(v34, &v17[v39], v35);
    v13 = 0;
    *&v30[v33] = v50;
  }

  (*(v1 + 56))(v10, v13, 1, v0);
  sub_22957F2F8(v10, v12, &qword_27D87E8F8, &qword_22A57C848);
  v36 = v55(v12, 1, v0) != 1;
  sub_22953EAE4(v12, &qword_27D87E8F8, &qword_22A57C848);
  return v36;
}

uint64_t sub_22968F6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = [v4 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v8 = sub_22A4DD83C();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_23:

LABEL_24:
    v25 = 1;
    v24 = a3;
    goto LABEL_25;
  }

LABEL_22:
  v9 = sub_22A4DE0EC();
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_3:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AAD13F0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v14 = [v11 serviceType];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {
      break;
    }

    v19 = sub_22A4DE60C();

    if (v19)
    {
      goto LABEL_17;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_23;
    }
  }

LABEL_17:

  v20 = [v12 matterEndpointID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v21 = sub_22A4DDEBC();
  v22 = sub_22A4DDEDC();

  if (v22)
  {

    goto LABEL_24;
  }

  v23 = [v12 matterEndpointID];
  [v23 unsignedShortValue];

  v24 = a3;
  sub_22A4DCCEC();

  v25 = 0;
LABEL_25:
  v26 = sub_22A4DCD0C();
  v27 = *(*(v26 - 8) + 56);

  return v27(v24, v25, 1, v26);
}

uint64_t sub_22968FA70(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_22968CE44(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_22968FBC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_22968ACDC(a1, v8, v9, v1 + v6, v10, v11);
}
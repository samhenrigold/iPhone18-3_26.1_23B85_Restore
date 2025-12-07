uint64_t sub_2752D94CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0218, &qword_2752DF508);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752D9540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_2752DE028();
}

double OUTLINED_FUNCTION_5_2()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{
  *(v2 - 152) = v1;

  return sub_2752DDD68();
}

double OUTLINED_FUNCTION_12_1()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_2752DDD38();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_2752DD998();
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_2752C4D60(v0, v1);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2752DE028();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_2752DDCB8();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_2752DDD38();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_2752DE478();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return sub_2752DD998();
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 136);

  return sub_2752C3990(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_72()
{
}

id OUTLINED_FUNCTION_73(uint64_t a1, const char *a2)
{
  *(v3 - 144) = v2;

  return [v2 a2];
}

id OUTLINED_FUNCTION_74()
{
  v2 = *(v0 - 144);

  return v2;
}

uint64_t OUTLINED_FUNCTION_79()
{

  return sub_2752C4D60(v0, v1);
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1)
{
  *(v3 - 160) = v2;
  *(v3 - 152) = v1;

  return sub_2752DDD68();
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_82(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1)
{
  *(v3 - 160) = v2;
  *(v3 - 152) = v1;

  return sub_2752DDD68();
}

uint64_t OUTLINED_FUNCTION_88()
{

  return sub_2752DDD38();
}

uint64_t OUTLINED_FUNCTION_89()
{

  return sub_2752DD998();
}

uint64_t OUTLINED_FUNCTION_90(uint64_t a1, uint64_t a2)
{
  *(v3 - 160) = a1;
  *(v3 - 152) = v2;

  return sub_2752DDD68();
}

uint64_t OUTLINED_FUNCTION_91()
{
}

uint64_t OUTLINED_FUNCTION_92()
{
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE88, &qword_2752DEE28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_2752DE108();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_2752DE148();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  v27 = a2;
  sub_2752C2F40(v27, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {

    v28 = &qword_2809BFEC0;
    v29 = &qword_2752DEE60;
    v30 = v17;
  }

  else
  {
    (*(v20 + 32))(v26, v17, v18);
    v31 = v39;
    sub_2752C37AC(v31, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v34 = *(v9 + 32);
      v37 = v7;
      v34(v14, v6);
      (*(v9 + 16))(v38, v14, v7);
      (*(v20 + 16))(v24, v26, v18);
      v33 = v40;
      sub_2752DD778();

      (*(v9 + 8))(v14, v37);
      (*(v20 + 8))(v26, v18);
      v32 = 0;
      goto LABEL_7;
    }

    (*(v20 + 8))(v26, v18);

    v28 = &qword_2809BFE88;
    v29 = &qword_2752DEE28;
    v30 = v6;
  }

  sub_2752C3990(v30, v28, v29);
  v32 = 1;
  v33 = v40;
LABEL_7:
  v35 = sub_2752DD798();
  return __swift_storeEnumTagSinglePayload(v33, v32, 1, v35);
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2752DA0EC;

  return MEMORY[0x2821896E0]();
}

uint64_t sub_2752DA0EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752DA220, 0, 0);
  }
}

uint64_t sub_2752DA220()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v3;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    return sub_2752DE468();
  }
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:coverArtworkRecipe:isPublic:isVisible:curator:songs:folder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_6_1(v30, v31, v32, v33, v34, v35, v36, v37, v38);
  OUTLINED_FUNCTION_0();
  v104 = v40;
  v105 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v103 = (v42 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE90, &qword_2752DEE30);
  OUTLINED_FUNCTION_3(v43);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_2(v45, v97);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  OUTLINED_FUNCTION_3(v46);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v47);
  v49 = OUTLINED_FUNCTION_13_1(v48, v98);
  OUTLINED_FUNCTION_0();
  v101 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12_2(v52);
  OUTLINED_FUNCTION_0();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_2();
  MEMORY[0x28223BE20](v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_3(v57);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_0();
  v61 = v60;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v62);
  v64 = OUTLINED_FUNCTION_7_3(v63, v99);
  v65(v64);
  OUTLINED_FUNCTION_54(v26, 1, v29);
  if (v86)
  {
    (*(v61 + 8))(v26, v59);
  }

  else
  {
    v66 = sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
    v59 = 0;
    sub_2752DAA20(sub_2752DA9A4, 0, v29, v66, MEMORY[0x277D84A98], a26, MEMORY[0x277D84AC0], v67);
    OUTLINED_FUNCTION_27();
    (*(v68 + 8))(v26, v29);
  }

  sub_2752D2C4C(v106, v28, &qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_54(v28, 1, v49);
  if (v86)
  {
    sub_2752D2EA8(v28, &qword_2809BFE70, &qword_2752DEE18);
    v106 = 0;
  }

  else
  {
    v69 = OUTLINED_FUNCTION_18_1();
    v70(v69);
    v71 = OUTLINED_FUNCTION_11_2();
    v72(v71);
    v73 = OUTLINED_FUNCTION_4_1();
    v74(v73);
    v75 = sub_2752DBC78(v59, v27);
    v76 = OUTLINED_FUNCTION_16_2(v75);
    v77(v76);
    v78 = *(v26 + 8);
    v26 += 8;
    v78(v28, v49);
  }

  OUTLINED_FUNCTION_10_2();
  if (!v86)
  {
    sub_2752DE2E8();
  }

  if (v54 != 2)
  {
    sub_2752DE2E8();
  }

  sub_2752D2C4C(v26, v27, &qword_2809BFE90, &qword_2752DEE30);
  v79 = sub_2752DE0E8();
  v80 = OUTLINED_FUNCTION_54(v27, 1, v79);
  if (v86)
  {
    v81 = &qword_2809BFE90;
    v82 = &qword_2752DEE30;
    v83 = v27;
LABEL_17:
    sub_2752D2EA8(v83, v81, v82);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_2(v80, MEMORY[0x277CD84A0]);
  OUTLINED_FUNCTION_27();
  (*(v84 + 8))(v27, v79);
  sub_2752DDC38();
  v104[1](v59, v105);
  v85 = sub_2752DDE88();
  OUTLINED_FUNCTION_54(v102, 1, v85);
  if (v86)
  {
    v81 = &qword_2809C0198;
    v82 = &qword_2752DF388;
    v83 = v102;
    goto LABEL_17;
  }

  sub_2752DDE78();
  OUTLINED_FUNCTION_27();
  (*(v87 + 8))();
LABEL_18:
  objc_allocWithZone(MEMORY[0x277D2B470]);
  v88 = v107;

  OUTLINED_FUNCTION_2_6(v89, v90, v91, v92, v93, v94, v95, v96, v100, v101, v102, v103, v104, v105, v106);
  sub_2752C3CD8(0, &qword_2809C0328, 0x277D2B470);
  sub_2752DE148();
  sub_2752DD838();
  OUTLINED_FUNCTION_22();
}

id sub_2752DA9A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v7[3] = sub_2752C3CD8(0, &qword_2809C0068, 0x277CD5F58);
  v7[0] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CD86A8]);
  v5 = v3;
  result = sub_2752DB9D0(v7);
  *a2 = result;
  return result;
}

uint64_t sub_2752DAA20(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v15;
  v41 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v38 - v18;
  v19 = sub_2752DE368();
  v39 = *(v19 - 8);
  v40 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v38 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v52 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v38 - v30;
  v32 = sub_2752DE288();
  v59 = sub_2752DE428();
  v54 = sub_2752DE438();
  sub_2752DE408();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_2752DE278();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2752DE388();
      result = __swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v25, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v25, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v25, AssociatedTypeWitness);
      sub_2752DE418();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_2752DE388();
    if (__swift_getEnumTagSinglePayload(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v22, v40);
      return v59;
    }

    (*v35)(v37, v22, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_2752DE418();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

void sub_2752DB0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, char, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_23();
  v48 = v26;
  v46 = v27;
  v47 = v28;
  v44 = v29;
  v45 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v43 = a26;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_3(v37);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v38);
  v40 = &v43 - v39;
  v41 = sub_2752DE128();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
  v43(v36, v34, v32, v44, v45, v46, v47, v48, a21, a22, a23, v40, a24, a25);
  sub_2752D2EA8(v40, &qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_22();
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:coverArtworkRecipe:isPublic:isVisible:curator:tracks:folder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_6_1(v30, v31, v32, v33, v34, v35, v36, v37, v38);
  OUTLINED_FUNCTION_0();
  v102 = v40;
  v103 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v101 = (v42 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE90, &qword_2752DEE30);
  OUTLINED_FUNCTION_3(v43);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_2(v45, v95);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  OUTLINED_FUNCTION_3(v46);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v47);
  v49 = OUTLINED_FUNCTION_13_1(v48, v96);
  OUTLINED_FUNCTION_0();
  v99 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12_2(v52);
  OUTLINED_FUNCTION_0();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_2();
  MEMORY[0x28223BE20](v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_3(v57);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_0();
  v61 = v60;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v62);
  v64 = OUTLINED_FUNCTION_7_3(v63, v97);
  v65(v64);
  OUTLINED_FUNCTION_54(v26, 1, v29);
  if (v84)
  {
    (*(v61 + 8))(v26, v59);
  }

  else
  {
    sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
    v59 = 0;
    sub_2752DE2A8();
    OUTLINED_FUNCTION_27();
    (*(v66 + 8))(v26, v29);
  }

  sub_2752D2C4C(v104, v28, &qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_54(v28, 1, v49);
  if (v84)
  {
    sub_2752D2EA8(v28, &qword_2809BFE70, &qword_2752DEE18);
    v104 = 0;
  }

  else
  {
    v67 = OUTLINED_FUNCTION_18_1();
    v68(v67);
    v69 = OUTLINED_FUNCTION_11_2();
    v70(v69);
    v71 = OUTLINED_FUNCTION_4_1();
    v72(v71);
    v73 = sub_2752DBC78(v59, v27);
    v74 = OUTLINED_FUNCTION_16_2(v73);
    v75(v74);
    v76 = *(v26 + 8);
    v26 += 8;
    v76(v28, v49);
  }

  OUTLINED_FUNCTION_10_2();
  if (!v84)
  {
    sub_2752DE2E8();
  }

  if (v54 != 2)
  {
    sub_2752DE2E8();
  }

  sub_2752D2C4C(v26, v27, &qword_2809BFE90, &qword_2752DEE30);
  v77 = sub_2752DE0E8();
  v78 = OUTLINED_FUNCTION_54(v27, 1, v77);
  if (v84)
  {
    v79 = &qword_2809BFE90;
    v80 = &qword_2752DEE30;
    v81 = v27;
LABEL_17:
    sub_2752D2EA8(v81, v79, v80);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_2(v78, MEMORY[0x277CD84A0]);
  OUTLINED_FUNCTION_27();
  (*(v82 + 8))(v27, v77);
  sub_2752DDC38();
  v102[1](v59, v103);
  v83 = sub_2752DDE88();
  OUTLINED_FUNCTION_54(v100, 1, v83);
  if (v84)
  {
    v79 = &qword_2809C0198;
    v80 = &qword_2752DF388;
    v81 = v100;
    goto LABEL_17;
  }

  sub_2752DDE78();
  OUTLINED_FUNCTION_27();
  (*(v85 + 8))();
LABEL_18:
  objc_allocWithZone(MEMORY[0x277D2B470]);
  v86 = v105;

  OUTLINED_FUNCTION_2_6(v87, v88, v89, v90, v91, v92, v93, v94, v98, v99, v100, v101, v102, v103, v104);
  sub_2752C3CD8(0, &qword_2809C0328, 0x277D2B470);
  sub_2752DE148();
  sub_2752DD838();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2752DB7BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2752DE098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2752DE008();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v9 + 104))(&v18 - v13, *MEMORY[0x277CD8188], v8);
  (*(v9 + 16))(v12, v14, v8);
  (*(v5 + 16))(v7, a1, v4);
  sub_2752DBF70();
  v16 = v15;
  result = (*(v9 + 8))(v14, v8);
  *a2 = v16;
  return result;
}

id sub_2752DB9D0(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithUnderlyingModelObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id sub_2752DBA3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
    v18 = sub_2752DE2B8();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
  v19 = sub_2752DE2B8();

  if (a5)
  {
LABEL_4:
    v20 = sub_2752DE1A8();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (a7)
  {
    v21 = sub_2752DE1A8();
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v22 = sub_2752DE1A8();
  }

  else
  {
    v22 = 0;
  }

  if (a15)
  {
    v23 = sub_2752DE1A8();
  }

  else
  {
    v23 = 0;
  }

  v28 = [v27 initWithParentPlaylist:a1 playlistEntries:v18 children:v19 playlistName:v20 playlistDescription:v21 createFolder:a8 & 1 playlistUserImage:a9 coverArtworkRecipe:v22 publicPlaylist:a12 visiblePlaylist:a13 authorStoreIdentifier:v23];

  return v28;
}

id sub_2752DBC78(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = sub_2752DDCB8();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2752DDFF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2752DE128();
  sub_2752DC1F0(&qword_2809C0250, MEMORY[0x277D2B398]);
  sub_2752DE038();
  sub_2752DE018();
  v11 = sub_2752CCD30();
  (*(v7 + 8))(v9, v6);
  sub_2752DC1F0(&qword_2809C0330, MEMORY[0x277D2B390]);
  sub_2752DDD98();
  (*(*(v10 - 8) + 8))(a1, v10);
  v12 = v19;
  v13 = sub_2752D0E30(v11, v19);
  (*(v3 + 8))(v5, v20);
  v14 = objc_allocWithZone(MEMORY[0x277CD86A8]);
  v15 = sub_2752DE168();

  v16 = [v14 initWithIdentifierSet:v13 modelObjectType:v11 storageDictionary:v15];
  swift_unknownObjectRelease();

  v17 = sub_2752DE008();
  (*(*(v17 - 8) + 8))(v12, v17);
  return v16;
}

void sub_2752DBF70()
{
  OUTLINED_FUNCTION_23();
  v25 = v0;
  v2 = v1;
  v4 = v3;
  v26 = sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_2752DDFF8();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = v2(0);
  sub_2752DE038();
  sub_2752DE018();
  v19 = sub_2752CCD30();
  (*(v13 + 8))(v17, v11);
  sub_2752DDD98();
  OUTLINED_FUNCTION_27();
  (*(v20 + 8))(v4, v18);
  v21 = sub_2752D0E30(v19, v25);
  (*(v6 + 8))(v10, v26);
  v22 = objc_allocWithZone(MEMORY[0x277CD86A8]);
  v23 = sub_2752DE168();

  [v22 initWithIdentifierSet:v21 modelObjectType:v19 storageDictionary:v23];
  swift_unknownObjectRelease();

  sub_2752DE008();
  OUTLINED_FUNCTION_27();
  (*(v24 + 8))(v25);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2752DC1F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2752DE128();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v19 = *(v17 - 224);
  v20 = *(v17 - 216);
  v21 = *(v17 - 168);
  v22 = *(v17 - 152);

  return sub_2752DBA3C(v19, v20, 0, v21, v16, v22, v15, 0, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t OUTLINED_FUNCTION_6_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *(v9 - 204) = a8;
  *(v9 - 192) = a7;
  *(v9 - 184) = a6;
  *(v9 - 176) = a5;
  *(v9 - 168) = a1;
  *(v9 - 152) = a3;
  *(v9 - 144) = a4;
  *(v9 - 160) = a2;
  *(v9 - 136) = a9;
  v11 = *(v9 + 32);
  *(v9 - 224) = *(v9 + 40);
  *(v9 - 216) = v11;

  return sub_2752DDCB8();
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 272) = v1 - a1;

  return sub_2752DE008();
}

uint64_t OUTLINED_FUNCTION_13_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 256) = &a2 - a1;

  return sub_2752DE128();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_2752DE368();
}

void OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void (*a27)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, char, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  LOBYTE(a10) = v27;

  sub_2752DB0C8(a1, a2, a3, a4, a5, a6, a7, a8, a10, a9.n128_i64[0], a9.n128_i64[1], v28, v29, v30, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2)
{

  return sub_2752DDD98();
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE88, &qword_2752DEE28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_2752DE108();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_2752DE148();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  v27 = a2;
  sub_2752C2F40(v27, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {

    v28 = &qword_2809BFEC0;
    v29 = &qword_2752DEE60;
    v30 = v17;
  }

  else
  {
    (*(v20 + 32))(v26, v17, v18);
    v31 = v39;
    sub_2752C37AC(v31, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v34 = *(v9 + 32);
      v37 = v7;
      v34(v14, v6);
      (*(v9 + 16))(v38, v14, v7);
      (*(v20 + 16))(v24, v26, v18);
      v33 = v40;
      sub_2752DD818();

      (*(v9 + 8))(v14, v37);
      (*(v20 + 8))(v26, v18);
      v32 = 0;
      goto LABEL_7;
    }

    (*(v20 + 8))(v26, v18);

    v28 = &qword_2809BFE88;
    v29 = &qword_2752DEE28;
    v30 = v6;
  }

  sub_2752C3990(v30, v28, v29);
  v32 = 1;
  v33 = v40;
LABEL_7:
  v35 = sub_2752DD828();
  return __swift_storeEnumTagSinglePayload(v33, v32, 1, v35);
}

uint64_t MusicCollaborativePlaylist.ResetInvitationLinkRequest.init(playlist:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_2752DE148();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = a1;
  sub_2752C2F40(v14, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_2752C3F00(v6);
    v15 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_2752DD7D8();

    (*(v8 + 8))(v13, v7);
    v15 = 0;
  }

  v16 = sub_2752DD7E8();
  return __swift_storeEnumTagSinglePayload(a2, v15, 1, v16);
}

id static UploadedVideo.canBeConverted(from:)(void *a1)
{
  result = [a1 hasVideo];
  if (result)
  {
    return [a1 isArtistUploadedContent];
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_2752DD638();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_2752DE148();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v23 = a1;
  sub_2752C2F40(v23, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    (*(v7 + 8))(a2, v5);

    sub_2752C3F00(v13);
    v24 = 1;
    v25 = v29;
  }

  else
  {
    (*(v16 + 32))(v22, v13, v14);
    (*(v16 + 16))(v20, v22, v14);
    (*(v7 + 16))(v10, a2, v5);
    v25 = v29;
    sub_2752DD6F8();

    (*(v7 + 8))(a2, v5);
    (*(v16 + 8))(v22, v14);
    v24 = 0;
  }

  v26 = sub_2752DD718();
  return __swift_storeEnumTagSinglePayload(v25, v24, 1, v26);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2752DCDB8;

  return MEMORY[0x2821896A0]();
}

uint64_t sub_2752DCDB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752DCEEC, 0, 0);
  }
}

uint64_t sub_2752DCEEC()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v3;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    return sub_2752DE468();
  }
}

uint64_t sub_2752DD04C(void *a1)
{
  v2 = sub_2752DDE48();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = [a1 value];
  sub_2752DE1B8();

  sub_2752DDDB8();
  v12 = [a1 kind];
  v13 = MEMORY[0x277CD7F60];
  switch(v12)
  {
    case 0uLL:
      goto LABEL_9;
    case 1uLL:
      v13 = MEMORY[0x277CD7F70];
      goto LABEL_9;
    case 2uLL:
      v13 = MEMORY[0x277CD7F40];
      goto LABEL_9;
    case 3uLL:
      v13 = MEMORY[0x277CD7F58];
      goto LABEL_9;
    case 4uLL:
      v13 = MEMORY[0x277CD7F48];
      goto LABEL_9;
    case 5uLL:
      v13 = MEMORY[0x277CD7F38];
      goto LABEL_9;
    case 6uLL:
      v13 = MEMORY[0x277CD7F50];
      goto LABEL_9;
    case 7uLL:
      v13 = MEMORY[0x277CD7F30];
LABEL_9:
      (*(v4 + 104))(v10, *v13, v2);
      (*(v4 + 16))(v8, v10, v2);
      sub_2752DDE68();

      return (*(v4 + 8))(v10, v2);
    case 8uLL:
      OUTLINED_FUNCTION_1_7();
      v15 = 49;
      OUTLINED_FUNCTION_0_4();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_1_7();
      v15 = 51;
      OUTLINED_FUNCTION_0_4();
LABEL_12:
      result = sub_2752DE468();
      __break(1u);
      return result;
  }
}

id sub_2752DD2E8()
{
  v0 = sub_2752DDE48();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752DDE58();
  v6 = (*(v2 + 88))(v5, v0);
  v7 = 0;
  if (v6 == *MEMORY[0x277CD7F60])
  {
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CD7F70])
  {
    v7 = 1;
LABEL_16:
    sub_2752DD530();
    v8 = sub_2752DDE78();
    return sub_2752DD574(v8, v9, v7);
  }

  if (v6 == *MEMORY[0x277CD7F40])
  {
    v7 = 2;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CD7F58])
  {
    v7 = 3;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CD7F48])
  {
    v7 = 4;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CD7F38])
  {
    v7 = 5;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CD7F50])
  {
    v7 = 6;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CD7F30])
  {
    v7 = 7;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CD7F68])
  {
    OUTLINED_FUNCTION_1_7();
    v11 = 79;
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    v11 = 82;
    OUTLINED_FUNCTION_0_4();
  }

  result = sub_2752DE468();
  __break(1u);
  return result;
}

unint64_t sub_2752DD530()
{
  result = qword_2809C0338;
  if (!qword_2809C0338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0338);
  }

  return result;
}

id sub_2752DD574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2752DE1A8();

  v6 = [v4 initWithValue:v5 kind:a3];

  return v6;
}
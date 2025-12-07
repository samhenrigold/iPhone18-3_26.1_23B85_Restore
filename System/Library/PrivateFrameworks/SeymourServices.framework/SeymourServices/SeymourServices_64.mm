void sub_227543F54(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33 = a2;
  v34 = a1;
  v31 = a4;
  v7 = &qword_27D7BE690;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE690, &qword_22768B5D0);
  v30 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = a3;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v7;
      v37 = v5;
      v18 = v16;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v18 << 6);
      v20 = *(v36 + 56);
      v21 = *(*(v36 + 48) + 8 * v19);
      v22 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
      v23 = v32;
      sub_227596718(v20 + *(*(v22 - 8) + 72) * v19, &v32[*(v35 + 48)], type metadata accessor for AssetMediaStreamLoader.TaskResult);
      *v23 = v21;
      v24 = v23;
      v25 = v38;
      v7 = v17;
      sub_226E95D18(v24, v38, v17, &qword_22768B5D0);
      v26 = v21;
      v27 = v37;
      v28 = v34(v25);
      v5 = v27;
      if (v27)
      {
        sub_226E97D1C(v38, &qword_27D7BE690, &qword_22768B5D0);

        return;
      }

      if (v28)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_226E97D1C(v38, v17, &qword_22768B5D0);
      v16 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v29 = v31;
    sub_226E95D18(v38, v31, &qword_27D7BE690, &qword_22768B5D0);
    (*(v30 + 56))(v29, 0, 1, v35);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        (*(v30 + 56))(v31, 1, 1, v35);
        return;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v17 = v7;
        v37 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_227544230()
{
  v1 = sub_22723A3F8(0);
  if (v0)
  {
    return;
  }

  v2 = v1;
  [v1 setReturnsObjectsAsFaults_];
  [v2 setFetchLimit_];
  type metadata accessor for ManagedUserAccountNotification();
  v3 = sub_22766C9E0();
  if (v3 >> 62)
  {
    v10 = v3;
    v11 = sub_22766CD20();
    v3 = v10;
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_15:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA991A0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = v5;
  v7 = [v6 shownState];
  if (v7 != 1 && v7)
  {
    v8 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51028], v8);
    swift_willThrow();
  }

  else
  {
  }
}

void sub_227544A14(uint64_t a1@<X8>)
{
  v3 = sub_22724A918(0);
  if (!v1)
  {
    v4 = v3;
    [v3 setReturnsObjectsAsFaults_];
    [v4 setFetchLimit_];
    type metadata accessor for ManagedEstimatedCalories();
    v5 = sub_22766C9E0();
    if (v5 >> 62)
    {
      v10 = v5;
      v11 = sub_22766CD20();
      v5 = v10;
      if (v11)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x22AA991A0](0);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_14:
            __break(1u);
            return;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = v7;
        if (([v8 activityType] & 0x80000000) == 0)
        {
          [v8 activeCalorieRate];
          [v8 basalCalorieRate];
          sub_2276650B0();

          v9 = sub_227665100();
          (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
          return;
        }

        __break(1u);
        goto LABEL_14;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v12 = sub_227665100();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

void sub_227544F0C(uint64_t a1@<X8>)
{
  v3 = sub_22724BD30(0);
  if (v1)
  {
    return;
  }

  v4 = v3;
  [v3 setReturnsObjectsAsFaults_];
  [v4 setFetchLimit_];
  type metadata accessor for ManagedStreamingKeyNonce();
  v5 = sub_22766C9E0();
  if (v5 >> 62)
  {
    v9 = v5;
    v10 = sub_22766CD20();
    v5 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_10:

    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x22AA991A0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = v7;
  sub_22730F570(v8, a1);
}

void sub_2275450D8(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void, __n128)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = a1(0);
  if (v5)
  {
    return;
  }

  v11 = v10;
  [v10 setReturnsObjectsAsFaults_];
  [v11 setFetchLimit_];
  a2(0);
  v12 = sub_22766C9E0();
  if (v12 >> 62)
  {
    v17 = v12;
    v18 = sub_22766CD20();
    v12 = v17;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_9:

    v19 = (a3)(0);
    (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
    return;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AA991A0](0);
    goto LABEL_7;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_7:
    v14 = v13;

    v15 = v14;
    a4();

    v16 = (a3)(0);
    (*(*(v16 - 8) + 56))(a5, 0, 1, v16);
    return;
  }

  __break(1u);
}

id sub_2275452F4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_227545358(a2 & 1, a2 & 1);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_227545358(char a1, char a2)
{
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 backgroundSessionConfigurationWithIdentifier_];

  [v7 setURLCache_];
  [v7 setAllowsCellularAccess_];
  [v7 set:a2 & 1 requiresPowerPluggedIn:?];
  sub_2276693D0();
  sub_2276693E0();
  v8 = sub_22766BFD0();

  [v7 set:v8 sourceApplicationBundleIdentifier:?];

  v9 = [objc_opt_self() sessionWithConfiguration:v7 assetDownloadDelegate:v2 delegateQueue:*(v2 + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_queue)];
  return v9;
}

id sub_2275454D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMediaStreamLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2275455E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1E8, &qword_227679D50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = sub_227663960();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = (v2 + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_persistenceStore);
    v16 = *(v2 + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_persistenceStore + 24);
    v25[0] = v15[4];
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v17 = swift_allocObject();
    v25[1] = a1;
    v18 = v17;
    *(v17 + 16) = v13;
    *(v17 + 24) = v14;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
    sub_226ECF5D8(sub_227594B1C, v18, v16, v19, v25[0], v10);

    v20 = swift_allocObject();
    *(v20 + 16) = sub_22754A95C;
    *(v20 + 24) = 0;
    (*(v5 + 16))(v7, v10, v4);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = swift_allocObject();
    (*(v5 + 32))(v22 + v21, v7, v4);
    v23 = (v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = sub_227594B38;
    v23[1] = v20;
    sub_227669270();
    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    *(swift_allocObject() + 16) = 1;

    return sub_227669280();
  }
}

uint64_t sub_2275458D8(_BYTE *a1, void *a2, uint64_t a3)
{
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  LOBYTE(a1) = *a1;
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6, v9);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v7 + 32))(v11 + v10, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + v10 + v8) = a1;
  type metadata accessor for AssetLoaderResponse(0);
  v12 = a2;
  return sub_227669270();
}

uint64_t sub_227545A44(void (*a1)(uint64_t), uint64_t a2, char *a3, uint64_t a4, int a5)
{
  LODWORD(v131) = a5;
  v130 = a4;
  v140 = a1;
  v141 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v117);
  v118 = (&v109 - v6);
  v136 = sub_2276639B0();
  v139 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = v7;
  v135 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C8, &qword_22768B560);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v8;
  MEMORY[0x28223BE20](v9);
  v132 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3D0, &unk_227684B10);
  v128 = *(v11 - 8);
  v129 = v11;
  MEMORY[0x28223BE20](v11);
  v137 = &v109 - v12;
  v119 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  v120 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v138 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v109 - v15);
  v116 = sub_22766B390();
  v17 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v109 - v21;
  v23 = sub_2276624A0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v133 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v109 - v30;
  v127 = a3;
  v32 = &a3[OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_assetFileStore];
  v34 = v33;
  v35 = __swift_project_boxed_opaque_existential_0(v32, *(v32 + 3));
  sub_226E93170(*v35 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_mediaStreamAssetDirectory, v22, &unk_27D7BB570, &unk_227670FC0);
  if ((*(v24 + 48))(v22, 1, v34) == 1)
  {
    v36 = v140;
    sub_226E97D1C(v22, &unk_27D7BB570, &unk_227670FC0);
    sub_22766A6C0();
    v37 = sub_22766B380();
    v38 = sub_22766C890();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_226E8E000, v37, v38, "Stream Loader - asset directory is unavailable.", v39, 2u);
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    (*(v17 + 8))(v19, v116);
    v40 = sub_227663190();
    sub_226EB1040(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D4FD00], v40);
    v43 = v118;
    *v118 = v41;
    swift_storeEnumTagMultiPayload();
    v36(v43);
    return sub_226E97D1C(v43, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    v45 = *(v24 + 32);
    v124 = v31;
    v45(v31, v22, v34);
    v46 = v130;
    sub_227593FC0(v130, v131 & 1);
    sub_2276639A0();
    v47 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v48 = sub_2276623E0();
    v49 = sub_22766BE90();

    v118 = [v47 initWithURL:v48 options:v49];

    v50 = *(v24 + 8);
    v50(v28, v34);
    sub_2276639A0();
    v51 = sub_2276623D0();
    v53 = v52;
    v117 = v24 + 8;
    v116 = v50;
    v50(v28, v34);
    v146 = v51;
    v147 = v53;
    v144 = 1563376219;
    v145 = 0xE400000000000000;
    v142 = 95;
    v143 = 0xE100000000000000;
    sub_226FB2548();
    v54 = sub_22766CBD0();
    v56 = v55;

    v57 = sub_22766C0A0();
    v59 = v58;
    v146 = v54;
    v147 = v56;

    MEMORY[0x22AA98450](v57, v59);

    MEMORY[0x22AA98450](0x676B70766F6D2ELL, 0xE700000000000000);

    v60 = v133;
    sub_227662400();

    v61 = sub_227663910();
    v63 = v62;
    (*(v24 + 16))(v16 + *(v119 + 6), v60, v34);
    *v16 = v61;
    v16[1] = v63;
    v64 = v141;
    v16[2] = v140;
    v16[3] = v64;

    v65 = v16;
    v115 = v34;
    v66 = v127;
    if (v131)
    {
      v67 = sub_2275452D4();
    }

    else
    {
      v67 = sub_2275452E4();
    }

    v109 = v67;
    v68 = v118;
    sub_22754AB2C(v118, v132);
    v69 = v139;
    v70 = *(v139 + 16);
    v127 = (v139 + 16);
    v131 = v70;
    v71 = v135;
    v70(v135, v46, v136);
    v119 = type metadata accessor for AssetMediaStreamLoader.TaskResult;
    sub_227596718(v16, v138, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    v72 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v73 = *(v69 + 80);
    v112 = v73;
    v74 = (v134 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = v120[80];
    v75 = (v114 + v74 + 8) & ~v114;
    v113 = v73 | v114;
    v121 += 7;
    v76 = (v121 + v75) & 0xFFFFFFFFFFFFFFF8;
    v110 = v65;
    v77 = swift_allocObject();
    v78 = *(v69 + 32);
    v139 = v69 + 32;
    v120 = v78;
    v79 = v71;
    v80 = v136;
    (v78)(v77 + v72, v79, v136);
    *(v77 + v74) = v68;
    v111 = type metadata accessor for AssetMediaStreamLoader.TaskResult;
    sub_227596650(v138, v77 + v75, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    *(v77 + v76) = v109;
    *(v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;
    v81 = v125;
    v82 = v123;
    v83 = v132;
    v84 = v126;
    (*(v125 + 16))(v123, v132, v126);
    v85 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v86 = (v122 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    (*(v81 + 32))(v87 + v85, v82, v84);
    v88 = (v87 + v86);
    *v88 = sub_227597098;
    v88[1] = v77;
    sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
    v89 = v118;
    v90 = v66;
    sub_227669270();
    (*(v81 + 8))(v83, v84);
    v91 = v135;
    v92 = v80;
    v131(v135, v130, v80);
    v93 = v110;
    v94 = v138;
    sub_227596718(v110, v138, v119);
    v95 = (v112 + 32) & ~v112;
    v96 = (v134 + v114 + v95) & ~v114;
    v97 = (v121 + v96) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    *(v98 + 16) = v89;
    *(v98 + 24) = v90;
    (v120)(v98 + v95, v91, v92);
    sub_227596650(v94, v98 + v96, v111);
    v99 = (v98 + v97);
    v100 = v141;
    *v99 = v140;
    v99[1] = v100;

    v101 = v89;
    v102 = v90;
    v103 = v129;
    v104 = v137;
    v105 = sub_227669290();
    v106 = swift_allocObject();
    *(v106 + 16) = sub_227594F04;
    *(v106 + 24) = v98;

    v105(sub_226E9F880, v106);

    (*(v128 + 8))(v104, v103);
    sub_2275966B8(v93, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    v107 = v115;
    v108 = v116;
    v116(v133, v115);
    return v108(v124, v107);
  }
}

id sub_2275467F8(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v56 = a5;
  v57 = a7;
  v54 = a4;
  v55 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v10);
  v12 = (&v53 - v11);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = *a1;
  if (*(a1 + 8))
  {
    v55 = a6;
    v56 = v14;
    sub_22766A6C0();
    v21 = a2;
    sub_2275945EC(v20);
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();

    sub_226EF4F04(v20);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = v13;
      v25 = v24;
      v54 = swift_slowAlloc();
      v60 = v54;
      *v25 = 141558530;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      v26 = [v21 debugDescription];
      v27 = sub_22766C000();
      v29 = v28;

      v30 = sub_226E97AE8(v27, v29, &v60);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2082;
      swift_getErrorValue();
      v31 = MEMORY[0x22AA995D0](v58, v59);
      v33 = sub_226E97AE8(v31, v32, &v60);

      *(v25 + 24) = v33;
      _os_log_impl(&dword_226E8E000, v22, v23, "Stream Loader - fetchAsset - failed to make task for asset %{mask.hash}s with error %{public}s", v25, 0x20u);
      v34 = v54;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v34, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      (*(v56 + 8))(v16, v53);
    }

    else
    {

      (*(v56 + 8))(v16, v13);
    }

    *v12 = v20;
    swift_storeEnumTagMultiPayload();
    v51 = v20;
    v55(v12);
    return sub_226E97D1C(v12, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    sub_22766A6C0();
    v35 = a2;
    sub_2275945EC(v20);
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    sub_226EF4F04(v20);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60 = v39;
      *v38 = 141558786;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2080;
      v53 = v13;
      v40 = [v35 debugDescription];
      v41 = sub_22766C000();
      v42 = v14;
      v44 = v43;

      v45 = sub_226E97AE8(v41, v44, &v60);

      *(v38 + 14) = v45;
      *(v38 + 22) = 2160;
      *(v38 + 24) = 1752392040;
      *(v38 + 32) = 2080;
      v46 = [v20 debugDescription];
      v47 = sub_22766C000();
      v49 = v48;

      v50 = sub_226E97AE8(v47, v49, &v60);

      *(v38 + 34) = v50;
      _os_log_impl(&dword_226E8E000, v36, v37, "Stream Loader - fetchAsset - created asset %{mask.hash}s, task %{mask.hash}s", v38, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);

      (*(v42 + 8))(v19, v53);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

    return sub_227546D48(v20);
  }
}

id sub_227546D48(void *a1)
{
  v3 = type metadata accessor for AssetProgressUpdated(0);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = sub_227663CD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 countOfBytesExpectedToReceive] < 1)
  {
    v15 = 0.01;
  }

  else
  {
    v14 = [a1 countOfBytesReceived];
    v15 = v14 / [a1 countOfBytesExpectedToReceive];
    if (v15 <= 0.0)
    {
      v15 = 0.01;
    }
  }

  sub_227141A24(v8, v15);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_226E97D1C(v8, &qword_27D7B9648, &unk_227674880);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v22[1] = *(v1 + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_eventHub + 8);
    swift_getObjectType();
    sub_2276639A0();
    (*(v10 + 16))(&v5[*(v3 + 20)], v13, v9);
    sub_226EB1040(qword_2813A1330, type metadata accessor for AssetProgressUpdated, &unk_227677F38);
    sub_2276699D0();
    sub_2275966B8(v5, type metadata accessor for AssetProgressUpdated);
    (*(v10 + 8))(v13, v9);
  }

  v16 = sub_227663990();
  if (v16 <= 16)
  {
    if (v16 != 9)
    {
LABEL_15:
      v18 = MEMORY[0x277CCA790];
      goto LABEL_17;
    }
  }

  else if (v16 != 17)
  {
    if (v16 == 33)
    {
      v18 = MEMORY[0x277CCA798];
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v18 = MEMORY[0x277CCA7A0];
LABEL_17:
  LODWORD(v17) = *v18;
  [a1 setPriority_];
  strcpy(v23, "HLS-request-");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  v19 = sub_227663910();
  MEMORY[0x22AA98450](v19);

  v20 = sub_22766BFD0();

  [a1 setTaskDescription_];

  return [a1 resume];
}

uint64_t sub_227547138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v121);
  v122 = (&v116 - v4);
  v117 = sub_2276624A0();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v119 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v116 - v7;
  v140 = sub_227665490();
  v143 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v125 = &v116 - v10;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE6A0, qword_22768B5E0);
  MEMORY[0x28223BE20](v130);
  v129 = (&v116 - v11);
  v126 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  MEMORY[0x28223BE20](v126);
  v133 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE698, &qword_22768B5D8);
  MEMORY[0x28223BE20](v136);
  v137 = (&v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v116 - v15;
  v17 = sub_2276639B0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v131 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v116 - v21;
  v23 = sub_22766B390();
  v145 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v134 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v124 = &v116 - v26;
  MEMORY[0x28223BE20](v27);
  v123 = &v116 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v116 - v30;
  sub_22766A6C0();
  v32 = *(v18 + 16);
  v139 = a1;
  v128 = v18 + 16;
  v127 = v32;
  v32(v22, a1, v17);
  v33 = sub_22766B380();
  v34 = sub_22766C8B0();
  v35 = os_log_type_enabled(v33, v34);
  v141 = a2;
  v142 = v16;
  v144 = v23;
  v132 = v18;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v146[0] = v37;
    *v36 = 141558274;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2080;
    sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v38 = sub_22766D140();
    v40 = v39;
    v41 = v22;
    v42 = *(v18 + 8);
    v42(v41, v17);
    v43 = sub_226E97AE8(v38, v40, v146);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_226E8E000, v33, v34, "Stream Loader - Request to pause %{mask.hash}s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v44 = v37;
    v16 = v142;
    MEMORY[0x22AA9A450](v44, -1, -1);
    MEMORY[0x22AA9A450](v36, -1, -1);

    v45 = v144;
    v46 = *(v145 + 8);
    v47 = v31;
  }

  else
  {

    v48 = v22;
    v42 = *(v18 + 8);
    v42(v48, v17);
    v46 = *(v145 + 8);
    v47 = v31;
    v45 = v23;
  }

  v135 = v46;
  v49 = (v46)(v47, v45);
  v50 = v17;
  v51 = v138;
  MEMORY[0x28223BE20](v49);
  v52 = v139;
  *(&v116 - 2) = v51;
  *(&v116 - 1) = v52;
  sub_2276696A0();
  v53 = v137;
  sub_226E93170(v16, v137, &qword_27D7BE698, &qword_22768B5D8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE690, &qword_22768B5D0);
  if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
  {
    sub_226E97D1C(v53, &qword_27D7BE698, &qword_22768B5D8);
    v55 = v134;
    sub_22766A6C0();
    v56 = v131;
    v127(v131, v52, v50);
    v57 = v51;
    v58 = sub_22766B380();
    v59 = sub_22766C8B0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v147 = v61;
      *v60 = 141558786;
      *(v60 + 4) = 1752392040;
      *(v60 + 12) = 2080;
      sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v62 = sub_22766D140();
      v64 = v63;
      v42(v56, v50);
      v65 = sub_226E97AE8(v62, v64, &v147);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2160;
      *(v60 + 24) = 1752392040;
      *(v60 + 32) = 2080;
      swift_beginAccess();
      sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
      sub_2275945F8(&qword_27D7BE6B8, &qword_27D7B8670, 0x277CE63F0, MEMORY[0x277D85378]);

      v66 = sub_22766BEC0();
      v68 = v67;

      v69 = sub_226E97AE8(v66, v68, &v147);

      *(v60 + 34) = v69;
      _os_log_impl(&dword_226E8E000, v58, v59, "Stream Loader - Not pausing - Task result not found for request %{mask.hash}s. Currently tracked tasks: %{mask.hash}s", v60, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v61, -1, -1);
      MEMORY[0x22AA9A450](v60, -1, -1);

      v135(v134, v144);
      v70 = v142;
    }

    else
    {

      v42(v56, v50);
      v135(v55, v144);
      v70 = v16;
    }

    sub_226E97D1C(v70, &qword_27D7BE698, &qword_22768B5D8);
    v89 = 1;
    v82 = v140;
    v90 = v141;
LABEL_16:
    v94 = v143;
    return (*(v94 + 56))(v90, v89, 1, v82);
  }

  v71 = *(v54 + 48);
  v72 = v130;
  v73 = *(v130 + 48);
  v74 = v129;
  *v129 = *v53;
  sub_227596650(v53 + v71, v74 + v73, type metadata accessor for AssetMediaStreamLoader.TaskResult);
  v75 = *v74;
  v76 = v133;
  sub_227596650(v74 + *(v72 + 48), v133, type metadata accessor for AssetMediaStreamLoader.TaskResult);
  if ([v75 state])
  {
    v77 = v124;
    sub_22766A6C0();
    v78 = v75;
    v79 = sub_22766B380();
    v80 = sub_22766C890();

    v81 = os_log_type_enabled(v79, v80);
    v82 = v140;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v146[0] = v84;
      *v83 = 141558274;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2080;
      v147 = [v78 state];
      type metadata accessor for State(0);
      v85 = sub_22766C060();
      v87 = sub_226E97AE8(v85, v86, v146);

      *(v83 + 14) = v87;
      _os_log_impl(&dword_226E8E000, v79, v80, "Stream Loader - Not pausing - Task is not in running state. State is: %{mask.hash}s", v83, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x22AA9A450](v84, -1, -1);
      MEMORY[0x22AA9A450](v83, -1, -1);

      v135(v77, v144);
      v88 = v142;
    }

    else
    {

      v135(v77, v144);
      v88 = v16;
    }

    sub_226E97D1C(v88, &qword_27D7BE698, &qword_22768B5D8);
    sub_2275966B8(v76, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    v89 = 1;
    v90 = v141;
    goto LABEL_16;
  }

  sub_2276639A0();
  (*(v116 + 16))(v119, v76 + *(v126 + 24), v117);
  v91 = [v75 URLAsset];
  [v91 downloadToken];

  v92 = v125;
  sub_227665470();
  v93 = v123;
  sub_22766A6C0();
  v94 = v143;
  v95 = v120;
  v82 = v140;
  (*(v143 + 16))(v120, v92, v140);
  v96 = v75;
  v97 = sub_22766B380();
  v98 = sub_22766C8B0();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v146[0] = v101;
    *v99 = 141558786;
    *(v99 + 4) = 1752392040;
    *(v99 + 12) = 2112;
    *(v99 + 14) = v96;
    *v100 = v96;
    *(v99 + 22) = 2160;
    *(v99 + 24) = 1752392040;
    *(v99 + 32) = 2080;
    sub_226EB1040(&qword_27D7BCAE0, MEMORY[0x277D51680], MEMORY[0x277D51698]);
    v102 = v96;
    v103 = sub_22766D140();
    v105 = v104;
    (*(v143 + 8))(v95, v82);
    v106 = sub_226E97AE8(v103, v105, v146);

    *(v99 + 34) = v106;
    _os_log_impl(&dword_226E8E000, v97, v98, "Stream Loader - Pausing task: %{mask.hash}@, with resumable load: %{mask.hash}s", v99, 0x2Au);
    sub_226E97D1C(v100, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v100, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v101);
    v94 = v143;
    MEMORY[0x22AA9A450](v101, -1, -1);
    MEMORY[0x22AA9A450](v99, -1, -1);

    v107 = v123;
  }

  else
  {

    (*(v94 + 8))(v95, v82);
    v107 = v93;
  }

  v135(v107, v144);
  [v96 suspend];
  v109 = v133;
  v110 = *(v133 + 16);
  v111 = sub_227663190();
  sub_226EB1040(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v112 = swift_allocError();
  (*(*(v111 - 8) + 104))(v113, *MEMORY[0x277D4FCE8], v111);
  v114 = v122;
  *v122 = v112;
  swift_storeEnumTagMultiPayload();
  v110(v114);

  sub_226E97D1C(v114, &qword_27D7B9628, &unk_227674860);
  sub_226E97D1C(v142, &qword_27D7BE698, &qword_22768B5D8);
  sub_2275966B8(v109, type metadata accessor for AssetMediaStreamLoader.TaskResult);
  v115 = v141;
  (*(v94 + 32))(v141, v125, v82);
  v90 = v115;
  v89 = 0;
  return (*(v94 + 56))(v90, v89, 1, v82);
}

double sub_22754822C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_tasks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v9[2] = a2;

  sub_227543F54(sub_227594BAC, v9, v7, a3);

  return result;
}

uint64_t sub_2275482D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE690, &qword_22768B5D0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (v13 - v4);
  sub_226E93170(a1, v13 - v4, &qword_27D7BE690, &qword_22768B5D0);

  v6 = (v5 + *(v3 + 56));
  v8 = *v6;
  v7 = v6[1];

  sub_2275966B8(v6, type metadata accessor for AssetMediaStreamLoader.TaskResult);
  if (v8 == sub_227663910() && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22766D190();
  }

  return v11 & 1;
}

uint64_t sub_22754840C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a2;
  v26 = a5;
  v7 = sub_227665490();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a1;
  (*(v11 + 16))(v14, a3, v10, v13);
  (*(v8 + 16))(&v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v24, v7);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v8 + 32))(v17 + v16, &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
  v18 = v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = v25;
  *v18 = v25;
  *(v18 + 8) = v23;
  type metadata accessor for AssetLoaderResponse(0);
  v20 = v19;
  return sub_227669270();
}

uint64_t sub_22754865C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  LODWORD(v145) = a6;
  v156 = a5;
  v153 = a4;
  v155 = a2;
  v154 = a1;
  v147 = sub_2276639B0();
  v152 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = v7;
  v150 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C8, &qword_22768B560);
  v138 = *(v139 - 8);
  v8 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v151 = &v128 - v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3D0, &unk_227684B10);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v128 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v133);
  v134 = (&v128 - v12);
  v149 = sub_22766B390();
  v148 = *(v149 - 1);
  MEMORY[0x28223BE20](v149);
  v130 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v132 = &v128 - v15;
  MEMORY[0x28223BE20](v16);
  v131 = &v128 - v17;
  v143 = sub_2276624A0();
  v144 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v135 = &v128 - v21;
  v22 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  v136 = *(v22 - 8);
  v23 = *(v136 + 64);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v24);
  v26 = (&v128 - v25);
  v27 = sub_227663910();
  v29 = v28;
  sub_227665460();
  *v26 = v27;
  v26[1] = v29;
  v30 = v156;
  v31 = v155;
  v26[2] = v154;
  v26[3] = v31;
  v158 = v30;
  v159 = a3;
  v32 = a3;
  v157 = v26;
  v160 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5B0, qword_22768B568);
  sub_2276696A0();
  v33 = v161;
  if (v161)
  {
    v34 = v161;
    if ([v34 state] == 1)
    {
      v35 = v131;
      sub_22766A6C0();
      v36 = v34;
      v37 = sub_22766B380();
      v38 = sub_22766C8B0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 141558274;
        *(v39 + 4) = 1752392040;
        *(v39 + 12) = 2112;
        *(v39 + 14) = v36;
        *v40 = v33;
        v41 = v36;
        _os_log_impl(&dword_226E8E000, v37, v38, "Stream Loader - Resume - found existing task to resume: %{mask.hash}@", v39, 0x16u);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v148 + 8))(v35, v149);
      [v36 resume];
    }

    else
    {
      v78 = v132;
      sub_22766A6C0();
      v79 = v34;
      v80 = sub_22766B380();
      v81 = sub_22766C890();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 141558274;
        *(v82 + 4) = 1752392040;
        *(v82 + 12) = 2112;
        *(v82 + 14) = v79;
        *v83 = v33;
        v84 = v79;
        _os_log_impl(&dword_226E8E000, v80, v81, "Stream Loader - Resume - Matching task is not in suspended state: %{mask.hash}@", v82, 0x16u);
        sub_226E97D1C(v83, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v83, -1, -1);
        MEMORY[0x22AA9A450](v82, -1, -1);
      }

      (*(v148 + 8))(v78, v149);
      v85 = sub_227663190();
      sub_226EB1040(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      v86 = swift_allocError();
      (*(*(v85 - 8) + 104))(v87, *MEMORY[0x277D4FD70], v85);
      v88 = v134;
      *v134 = v86;
      swift_storeEnumTagMultiPayload();
      v154(v88);

      sub_226E97D1C(v88, &qword_27D7B9628, &unk_227674860);
    }
  }

  else
  {
    v132 = v19;
    v133 = v23;
    v129 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v134 = v8;
    v42 = v32;
    v43 = sub_227593FC0(v32, v145 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2276728D0;
    *(inited + 32) = sub_22766C000();
    *(inited + 40) = v45;
    v46 = v143;
    *(inited + 72) = v143;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_227665460();
    *(inited + 80) = sub_22766C000();
    *(inited + 88) = v47;
    v48 = sub_227665450();
    *(inited + 120) = MEMORY[0x277D84D38];
    *(inited + 96) = v48;
    v49 = sub_227149264(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
    swift_arrayDestroy();
    v50 = v135;
    v51 = v42;
    sub_2276639A0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = v43;
    sub_226FDAC14(v49, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, &v161);
    v53 = swift_allocObject();

    v54 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v55 = sub_2276623E0();
    v56 = sub_22766BE90();

    v57 = [v54 initWithURL:v55 options:v56];

    v58 = v144 + 8;
    v59 = *(v144 + 1);
    v59(v50, v46);
    *(v53 + 16) = v57;
    v60 = v57;
    v61 = sub_22766BFD0();
    v62 = [v60 statusOfValueForKey:v61 error:0];

    v63 = v150;
    v153 = v53;
    if (v62 == 3)
    {
      v144 = v58;
      v64 = v130;
      sub_22766A6C0();
      v65 = sub_22766B380();
      v66 = sub_22766C8B0();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v147;
      v69 = v51;
      v70 = v145;
      if (v67)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_226E8E000, v65, v66, "Stream Loader - download token expired. Creating new asset.", v71, 2u);
        MEMORY[0x22AA9A450](v71, -1, -1);
      }

      (*(v148 + 8))(v64, v149);
      v72 = v132;
      sub_2276639A0();
      v73 = objc_allocWithZone(MEMORY[0x277CE6650]);
      v74 = sub_2276623E0();
      v75 = sub_22766BE90();

      v76 = [v73 initWithURL:v74 options:v75];

      v59(v72, v143);
      v77 = *(v153 + 16);
      *(v153 + 16) = v76;

      v63 = v150;
    }

    else
    {

      v76 = *(v53 + 16);
      v68 = v147;
      v69 = v51;
      v70 = v145;
    }

    v89 = v76;
    v90 = v152;
    v91 = v146;
    v92 = v151;
    v93 = v129;
    if (v70)
    {
      v94 = sub_2275452D4();
    }

    else
    {
      v94 = sub_2275452E4();
    }

    v130 = v94;
    sub_22754AB2C(v89, v92);
    v95 = *(v90 + 16);
    v148 = v90 + 16;
    v149 = v95;
    v95(v63, v69, v68);
    v145 = type metadata accessor for AssetMediaStreamLoader.TaskResult;
    sub_227596718(v157, v93, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    v143 = v69;
    v96 = *(v90 + 80);
    v128 = v89;
    v97 = (v96 + 16) & ~v96;
    v132 = v96;
    v98 = (v91 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = *(v136 + 80);
    v99 = (v131 + v98 + 8) & ~v131;
    v136 = v96 | v131;
    v144 = v133 + 7;
    v100 = (v133 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = v93;
    v103 = swift_allocObject();
    v135 = *(v90 + 32);
    v152 = v90 + 32;
    (v135)(v103 + v97, v63, v68);
    *(v103 + v98) = v128;
    v133 = type metadata accessor for AssetMediaStreamLoader.TaskResult;
    sub_227596650(v102, v103 + v99, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    *(v103 + v100) = v130;
    v104 = v156;
    *(v103 + v101) = v156;
    v105 = v138;
    v106 = v137;
    v107 = v139;
    (*(v138 + 16))(v137, v151, v139);
    v108 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v109 = (v134 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    (*(v105 + 32))(v110 + v108, v106, v107);
    v111 = (v110 + v109);
    *v111 = sub_2275945A8;
    v111[1] = v103;
    sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
    v112 = v104;
    v113 = v140;
    sub_227669270();
    (*(v105 + 8))(v151, v107);
    v114 = v150;
    v115 = v147;
    v149(v150, v143, v147);
    v116 = v129;
    sub_227596718(v157, v129, v145);
    v117 = (v132 + 32) & ~v132;
    v118 = (v146 + v131 + v117) & ~v131;
    v119 = &v144[v118] & 0xFFFFFFFFFFFFFFF8;
    v120 = swift_allocObject();
    *(v120 + 16) = v153;
    *(v120 + 24) = v112;
    (v135)(v120 + v117, v114, v115);
    sub_227596650(v116, v120 + v118, v133);
    v121 = (v120 + v119);
    v122 = v155;
    *v121 = v154;
    v121[1] = v122;

    v123 = v112;

    v124 = v142;
    v125 = sub_227669290();
    v126 = swift_allocObject();
    *(v126 + 16) = sub_2275945D4;
    *(v126 + 24) = v120;

    v125(sub_226E9F7B8, v126);

    (*(v141 + 8))(v113, v124);
  }

  return sub_2275966B8(v157, type metadata accessor for AssetMediaStreamLoader.TaskResult);
}

void sub_227549810(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v62 = a3;
  v70 = a2;
  v67 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE640, &unk_227682010);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v59 - v6;
  v76 = sub_2276624A0();
  v7 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v59 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE690, &qword_22768B5D0);
  v66 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v73 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE698, &qword_22768B5D8);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = (&v59 - v16);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE6A0, qword_22768B5E0);
  MEMORY[0x28223BE20](v60);
  v59 = (&v59 - v17);
  v18 = OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_tasks;
  swift_beginAccess();
  v64 = a1;
  v61 = v18;
  v19 = *(a1 + v18);
  v20 = &qword_27D7BE690;
  v21 = v19 + 64;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 64);
  v25 = (v22 + 63) >> 6;
  v71 = (v7 + 8);
  swift_bridgeObjectRetain_n();
  v26 = 0;
  v68 = v25;
  v69 = v19 + 64;
  v72 = v19;
  if (v24)
  {
    while (1)
    {
      v27 = v26;
LABEL_8:
      v28 = __clz(__rbit64(v24)) | (v27 << 6);
      v29 = *(v19 + 56);
      v30 = *(*(v19 + 48) + 8 * v28);
      v31 = v29 + *(*(type metadata accessor for AssetMediaStreamLoader.TaskResult(0) - 8) + 72) * v28;
      v32 = v73;
      sub_227596718(v31, &v73[*(v77 + 48)], type metadata accessor for AssetMediaStreamLoader.TaskResult);
      *v32 = v30;
      sub_226E95D18(v32, v12, v20, &qword_22768B5D0);
      v33 = *v12;
      v34 = v30;
      v35 = [v33 URLAsset];
      v36 = [v35 URL];

      v37 = v20;
      v38 = v74;
      sub_227662430();

      v39 = v75;
      sub_2276639A0();
      v40 = sub_227662420();
      v41 = *v71;
      v42 = v39;
      v43 = v76;
      (*v71)(v42, v76);
      v41(v38, v43);
      if (v40)
      {
        break;
      }

      v24 &= v24 - 1;
      sub_226E97D1C(v12, v37, &qword_22768B5D0);
      v26 = v27;
      v20 = v37;
      v19 = v72;
      v25 = v68;
      v21 = v69;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    v45 = v65;
    sub_226E95D18(v12, v65, &qword_27D7BE690, &qword_22768B5D0);
    v44 = v66;
    v46 = *(v66 + 56);
    v47 = v45;
    v48 = 0;
LABEL_12:
    v49 = v77;
    v46(v47, v48, 1, v77);
    v50 = v67;

    if ((*(v44 + 48))(v45, 1, v49) == 1)
    {
      sub_226E97D1C(v45, &qword_27D7BE698, &qword_22768B5D8);
      v51 = 0;
    }

    else
    {
      v52 = *(v49 + 48);
      v53 = v60;
      v54 = *(v60 + 48);
      v55 = v59;
      *v59 = *v45;
      sub_227596650(v45 + v52, v55 + v54, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      v56 = *v55;
      sub_2275966B8(v55 + *(v53 + 48), type metadata accessor for AssetMediaStreamLoader.TaskResult);
      v57 = v63;
      sub_227596718(v62, v63, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      v58 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      swift_beginAccess();
      v51 = v56;
      sub_22736461C(v57, v51);
      swift_endAccess();
    }

    *v50 = v51;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        v45 = v65;
        v44 = v66;
        v46 = *(v66 + 56);
        v47 = v65;
        v48 = 1;
        goto LABEL_12;
      }

      v24 = *(v21 + 8 * v27);
      ++v26;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

id sub_227549EA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v56 = a7;
  v57 = a6;
  v54 = a3;
  v55 = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v52);
  v53 = (&v51 - v10);
  v11 = sub_2276639B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B390();
  v58 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = *a1;
  if (*(a1 + 8))
  {
    sub_22766A6C0();
    (*(v12 + 16))(v14, a4, v11);
    v22 = v21;
    v23 = sub_22766B380();
    v24 = sub_22766C890();
    sub_226EF4F04(v21);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59[0] = v55;
      *v25 = 141558530;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v26 = sub_22766D140();
      v51 = v15;
      v28 = v27;
      (*(v12 + 8))(v14, v11);
      v29 = sub_226E97AE8(v26, v28, v59);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      swift_getErrorValue();
      v30 = MEMORY[0x22AA995D0](v60[2], v60[3]);
      v32 = sub_226E97AE8(v30, v31, v59);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_226E8E000, v23, v24, "Stream Loader - resumeAssetRequest - failed to make task for %{mask.hash}s with error %{public}s", v25, 0x20u);
      v33 = v55;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      (*(v58 + 8))(v17, v51);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
      (*(v58 + 8))(v17, v15);
    }

    v48 = v53;
    *v53 = v21;
    swift_storeEnumTagMultiPayload();
    v49 = v21;
    v57(v48);
    return sub_226E97D1C(v48, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    v57 = a4;
    sub_22766A6C0();

    sub_2275945EC(v21);
    v34 = sub_22766B380();
    v35 = sub_22766C8B0();

    sub_226EF4F04(v21);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v60[0] = v37;
      *v36 = 141558786;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2080;
      swift_beginAccess();
      v38 = [*(a2 + 16) debugDescription];
      v39 = sub_22766C000();
      v51 = v15;
      v41 = v40;

      v42 = sub_226E97AE8(v39, v41, v60);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2160;
      *(v36 + 24) = 1752392040;
      *(v36 + 32) = 2080;
      v43 = [v21 debugDescription];
      v44 = sub_22766C000();
      v46 = v45;

      v47 = sub_226E97AE8(v44, v46, v60);

      *(v36 + 34) = v47;
      _os_log_impl(&dword_226E8E000, v34, v35, "Stream Loader - resumeAssetRequest - created asset %{mask.hash}s, task %{mask.hash}s", v36, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v37, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);

      (*(v58 + 8))(v20, v51);
    }

    else
    {

      (*(v58 + 8))(v20, v15);
    }

    return sub_227546D48(v21);
  }
}

uint64_t sub_22754A4DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v35[0] = a2;
  v35[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v35, v33, &unk_27D7BC990, &qword_227670A30);
  v16 = v34;
  if (v34)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(v35, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = v24;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v35, 0);
  swift_endAccess();

  v29 = MEMORY[0x22AA99A00]();
  sub_2275450D8(sub_227284664, type metadata accessor for ManagedAssetBundle, MEMORY[0x277D4FF88], sub_226FC2510, a4);
  objc_autoreleasePoolPop(v29);
  swift_setDeallocating();

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v12 + v30, v31);
  return swift_deallocClassInstance();
}

uint64_t sub_22754A95C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  v7 = sub_227663480();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E93170(a1, v6, &unk_27D7BD3F0, &unk_2276823F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_226E97D1C(v6, &unk_27D7BD3F0, &unk_2276823F0);
LABEL_5:
    v15 = 1;
    goto LABEL_6;
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = sub_227663460();
  v14 = v13;
  result = (*(v8 + 8))(v10, v7);
  if ((v14 & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = v12 & 1;
LABEL_6:
  *a2 = v15;
  return result;
}

uint64_t sub_22754AB2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v58);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v51 = &v50 - v8;
  MEMORY[0x28223BE20](v10);
  v59 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC650, &qword_22767E3A0);
  v63 = *(v12 - 8);
  v64 = v12;
  v62 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v50 - v15;
  *(swift_allocObject() + 16) = a1;
  v16 = a1;
  v57 = v16;
  sub_227669270();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2275947A0;
  *(v18 + 24) = v17;
  v56 = *(v4 + 16);
  v19 = v58;
  v56(v6, v9, v58);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v55 = v20;
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v54 = *(v4 + 32);
  v23 = v6;
  v24 = v19;
  v54(v22 + v20, v23, v19);
  v25 = (v22 + v21);
  *v25 = sub_2272B81D4;
  v25[1] = v18;
  v57 = v57;
  v26 = v53;
  v50 = v26;
  v27 = v59;
  sub_227669270();
  v28 = *(v4 + 8);
  v52 = v4 + 8;
  v53 = v28;
  v29 = v51;
  (v28)(v51, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2275947C8;
  *(v31 + 24) = v30;
  v32 = v27;
  v56(v29, v27, v24);
  v33 = swift_allocObject();
  v54(v33 + v55, v29, v24);
  v34 = (v33 + v21);
  *v34 = sub_226F09740;
  v34[1] = v31;
  sub_2276668F0();
  v35 = v50;
  v36 = v60;
  sub_227669270();
  (v53)(v32, v24);
  v37 = swift_allocObject();
  v38 = v57;
  *(v37 + 16) = v57;
  *(v37 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2275947F8;
  *(v39 + 24) = v37;
  v41 = v63;
  v40 = v64;
  v42 = v61;
  (*(v63 + 16))(v61, v36, v64);
  v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v44 = (v62 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v41 + 32))(v45 + v43, v42, v40);
  v46 = (v45 + v44);
  *v46 = sub_227594814;
  v46[1] = v39;
  v47 = v38;
  v48 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE650, &unk_227686410);
  sub_227669270();
  return (*(v41 + 8))(v36, v40);
}

uint64_t sub_22754B0E4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v126 = a6;
  v120 = a5;
  v118 = a4;
  v117 = a3;
  v137 = a1;
  v140 = a7;
  v8 = sub_2276639B0();
  v131 = *(v8 - 8);
  v132 = v8;
  MEMORY[0x28223BE20](v8);
  v130 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v128 = *(v125 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x28223BE20](v125);
  v127 = v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = v113 - v12;
  MEMORY[0x28223BE20](v13);
  v136 = v113 - v14;
  v122 = sub_2276624A0();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v124 = v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = v113 - v17;
  v133 = sub_227665490();
  v135 = *(v133 - 8);
  v18 = *(v135 + 64);
  MEMORY[0x28223BE20](v133);
  MEMORY[0x28223BE20](v19);
  v21 = v113 - v20;
  v22 = sub_22766B390();
  v138 = *(v22 - 1);
  v139 = v22;
  MEMORY[0x28223BE20](v22);
  v129 = v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v119 = v113 - v25;
  v26 = sub_227664AE0();
  MEMORY[0x28223BE20](v26);
  v28 = v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2276687D0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = *v137;
  sub_227663970();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2275966B8(v28, MEMORY[0x277D50D68]);
    v33 = v129;
    sub_22766A6C0();
    v35 = v130;
    v34 = v131;
    v36 = v132;
    (*(v131 + 16))(v130, a2, v132);
    v37 = sub_22766B380();
    v38 = sub_22766C890();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v141 = v40;
      *v39 = 141558274;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2080;
      sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v41 = sub_22766D140();
      v43 = v42;
      (*(v34 + 8))(v35, v36);
      v44 = sub_226E97AE8(v41, v43, &v141);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "Stream Loader - media stream request is not a mediaStream type %{mask.hash}s", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AA9A450](v40, -1, -1);
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
    }

    (*(v138 + 8))(v33, v139);
    v110 = sub_227663190();
    sub_226EB1040(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v111 = swift_allocError();
    (*(*(v110 - 8) + 104))(v112, *MEMORY[0x277D4FCF0], v110);
    *(swift_allocObject() + 16) = v111;
    sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
    return sub_227669280();
  }

  else
  {
    v113[1] = v18;
    v114 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v115 = a2;
    v129 = v10;
    v116 = v21;
    v131 = v30;
    v132 = v29;
    (*(v30 + 32))(v32, v28, v29);
    v130 = v32;
    sub_2276687C0();
    v45 = sub_22766BFD0();

    v46 = [objc_opt_self() downloadConfigurationWithAsset:v117 title:v45];

    v47 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
    v48 = v118;
    v49 = v118 + *(v47 + 24);
    v50 = sub_2276623E0();
    [v46 _setDestinationURL_];

    v51 = [v46 primaryContentConfiguration];
    sub_226E99364(0, &qword_27D7BE5D0, 0x277CE6508);
    v52 = sub_22766C2B0();
    [v51 setMediaSelections_];

    sub_226E99364(0, &qword_27D7BE5D8, 0x277CE63E8);
    v53 = sub_22766C2B0();
    [v46 setAuxiliaryContentConfigurations_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_2276856D0;
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_227670CD0;
    v56 = *MEMORY[0x277CE63A8];
    *(v55 + 56) = sub_226E99364(0, &qword_281398A00, 0x277CCACA8);
    *(v55 + 64) = sub_2275945F8(&qword_27D7BE5F0, &qword_281398A00, 0x277CCACA8, MEMORY[0x277D85388]);
    *(v55 + 32) = v56;
    v57 = v56;
    v58 = sub_22766C7F0();
    v59 = objc_opt_self();
    v60 = [v59 assetVariantQualifierWithPredicate_];

    *(v54 + 32) = v60;
    v61 = [v59 predicateForPresentationWidth:2 operatorType:1496.0];
    v62 = [v59 assetVariantQualifierWithPredicate_];

    *(v54 + 40) = v62;
    v63 = [v59 predicateForPresentationHeight:2 operatorType:730.0];
    v64 = [v59 assetVariantQualifierWithPredicate_];

    *(v54 + 48) = v64;
    v65 = [v46 primaryContentConfiguration];
    sub_226E99364(0, &qword_27D7BE5F8, 0x277CE6458);
    v66 = sub_22766C2B0();

    [v65 setVariantQualifiers_];

    v137 = v46;
    v67 = [v120 assetDownloadTaskWithConfiguration_];
    v68 = v119;
    sub_22766A6C0();
    v69 = v67;
    v70 = sub_22766B380();
    v71 = sub_22766C8B0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 141558274;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2112;
      *(v72 + 14) = v69;
      *v73 = v69;
      v74 = v69;
      _os_log_impl(&dword_226E8E000, v70, v71, "Stream Loader - Task - created task: %{mask.hash}@", v72, 0x16u);
      sub_226E97D1C(v73, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v73, -1, -1);
      MEMORY[0x22AA9A450](v72, -1, -1);
    }

    v75 = (*(v138 + 8))(v68, v139);
    v76 = v126;
    MEMORY[0x28223BE20](v75);
    v113[-4] = v76;
    v113[-3] = v69;
    v113[-2] = v48;
    v77 = MEMORY[0x277D84F78];
    sub_2276696A0();
    sub_2276639A0();
    (*(v121 + 16))(v124, v49, v122);
    v78 = [v69 URLAsset];
    [v78 downloadToken];

    v79 = v116;
    sub_227665470();
    v80 = *&v76[OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_persistenceStore + 24];
    v81 = *&v76[OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_persistenceStore + 32];
    __swift_project_boxed_opaque_existential_0(&v76[OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_persistenceStore], v80);
    v82 = v135;
    v83 = *(v135 + 16);
    v139 = v69;
    v84 = v114;
    v85 = v79;
    v86 = v133;
    v83(v114, v85, v133);
    v87 = v82;
    v88 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v89 = swift_allocObject();
    (*(v87 + 32))(v89 + v88, v84, v86);
    v90 = v134;
    sub_226ECF5D8(sub_22759465C, v89, v80, v77 + 8, v81, v134);

    v91 = swift_allocObject();
    v91[2] = 0xD00000000000002CLL;
    v91[3] = 0x80000002276A3AB0;
    v91[4] = 308;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_226F323BC;
    *(v92 + 24) = v91;
    v93 = v127;
    v94 = v128;
    v126 = *(v128 + 16);
    v95 = v125;
    (v126)(v127, v90, v125);
    v96 = *(v94 + 80);
    v97 = &v129[((v96 + 16) & ~v96) + 7] & 0xFFFFFFFFFFFFFFF8;
    v123 = v97;
    v124 = ((v96 + 16) & ~v96);
    v98 = swift_allocObject();
    v129 = *(v94 + 32);
    (v129)(v98 + ((v96 + 16) & ~v96), v93, v95);
    v99 = (v98 + v97);
    *v99 = sub_226F323DC;
    v99[1] = v92;
    v100 = v136;
    sub_227669270();
    v138 = *(v94 + 8);
    v101 = v134;
    (v138)(v134, v95);
    v102 = swift_allocObject();
    *(v102 + 16) = v139;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_227594700;
    *(v103 + 24) = v102;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_227594708;
    *(v104 + 24) = v103;
    (v126)(v101, v100, v95);
    v105 = v123;
    v106 = swift_allocObject();
    (v129)(&v124[v106], v101, v95);
    v107 = &v105[v106];
    *v107 = sub_227594748;
    v107[1] = v104;
    sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
    v108 = v139;

    sub_227669270();

    (v138)(v136, v95);
    (*(v135 + 8))(v116, v133);
    return (*(v131 + 8))(v130, v132);
  }
}

uint64_t sub_22754C1D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE640, &unk_227682010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_227596718(a3, &v10 - v6, type metadata accessor for AssetMediaStreamLoader.TaskResult);
  v8 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_22736461C(v7, a2);
  return swift_endAccess();
}

void sub_22754C304(void *a1, uint64_t a2)
{
  v76 = a1;
  v4 = sub_2276624A0();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22766B390();
  v66 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v62 = *(v7 + 16);
  v63 = v7 + 16;
  v62(v9, a2, v6);
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  v14 = os_log_type_enabled(v12, v13);
  v71 = v6;
  v72 = a2;
  v64 = v7;
  v65 = v2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v75[0] = v61;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    sub_226EB1040(&qword_27D7BCAE0, MEMORY[0x277D51680], MEMORY[0x277D51698]);
    v16 = sub_22766D140();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_226E97AE8(v16, v18, v75);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_226E8E000, v12, v13, "Stream Loader - Inserting resumable load %{mask.hash}s", v15, 0x16u);
    v20 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AA9A450](v20, -1, -1);
    v21 = v15;
    a2 = v72;
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v66[1](v11, v70);
  v22 = __swift_project_boxed_opaque_existential_0(v76, v76[3]);
  v23 = *v22;
  v24 = v22[1];
  v25 = *(v22 + 16);
  v26 = v22[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
  v27 = swift_allocObject();
  v28 = v23;
  v29 = v24;

  sub_22766A070();
  v66 = v28;
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  v61 = v29;
  *(v27 + 32) = v25;
  v70 = v26;
  *(v27 + 40) = v26;
  swift_getKeyPath();
  v30 = v67;
  sub_227665480();
  v31 = sub_227662390();
  v33 = v32;
  (*(v68 + 8))(v30, v69);
  v75[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v75[0] = v31;
  v75[1] = v33;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v34 = sub_22766C820();
  sub_226E93170(v75, v73, &unk_27D7BC990, &qword_227670A30);
  v35 = v74;
  if (v74)
  {
    v36 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v37 = v25;
    v38 = *(v35 - 8);
    v39 = MEMORY[0x28223BE20](v36);
    v41 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41, v39);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v35);
    v25 = v37;
    a2 = v72;
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v44 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

  sub_226E97D1C(v75, &unk_27D7BC990, &qword_227670A30);
  v45 = qword_2813B2078;
  swift_beginAccess();
  v46 = v44;
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v47(v75, 0);
  swift_endAccess();

  v50 = sub_226ED84C0(v27 + v45, v25, v70, MEMORY[0x277D51680], &qword_28139B848, MEMORY[0x277D51680], &unk_22767CA48);
  if (v50)
  {
    v51 = v71;
    if (v50 == 1)
    {

LABEL_12:
      v52 = __swift_project_boxed_opaque_existential_0(v76, v76[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE620, &unk_22767FFD0);
      v53 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_227670CD0;
      v62((v54 + v53), a2, v51);
      sub_226EDAE98(v54, v52[1], *(v52 + 16), v52[3], sub_227566B80);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v55 = v65;
    v56 = sub_2272846C4(0);
    v51 = v71;
    if (!v55)
    {
      v57 = v56;
      [v56 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v58 = sub_22766C9E0();
      v65 = 0;
      v59 = sub_226EDAB24(v58);

      sub_226EDAB78(v59, v61);

      goto LABEL_12;
    }
  }
}

uint64_t sub_22754CBC0(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766A8A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276693D0();
  v10 = sub_2276693C0();
  (*(v7 + 104))(v9, *MEMORY[0x277D4F8C0], v6);
  v11 = sub_226EC9A38(v9, v10);

  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    return sub_2276692A0();
  }

  [a1 maximumVideoResolution];
  if (v13 == 0.0 && v12 == 0.0)
  {
    return sub_2276692A0();
  }

  sub_22766A6C0();
  v15 = a1;
  v16 = sub_22766B380();
  v17 = sub_22766C8A0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_226E8E000, v16, v17, "Stream Loader - attempted to load video on unsupported platform %@", v18, 0xCu);
    sub_226E97D1C(v19, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v19, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v21 = sub_227663190();
  sub_226EB1040(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v22 = swift_allocError();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D4FD60], v21);
  *(swift_allocObject() + 16) = v22;
  return sub_227669280();
}

uint64_t sub_22754CF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  result = sub_22722B004(a1, &v15 - v9);
  if (!v2)
  {
    sub_226E93170(v10, v7, &qword_27D7B94C0, &unk_2276874A0);
    v12 = sub_2276668F0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      v14 = sub_226E97D1C(v7, &qword_27D7B94C0, &unk_2276874A0);
      MEMORY[0x22AA92BD0](v14);
      return sub_226E97D1C(v10, &qword_27D7B94C0, &unk_2276874A0);
    }

    else
    {
      sub_226E97D1C(v10, &qword_27D7B94C0, &unk_2276874A0);
      return (*(v13 + 32))(a2, v7, v12);
    }
  }

  return result;
}

void sub_22754D108(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_22766C2B0();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = sub_226EB496C;
  v8[4] = v6;
  v11[4] = sub_227594B10;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_226E9D72C;
  v11[3] = &block_descriptor_40;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 loadValuesAsynchronouslyForKeys:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_22754D244(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v45 = a3;
  v46 = a2;
  v49 = *MEMORY[0x277D85DE8];
  v42 = sub_2276624A0();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22766B390();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = sub_22766BFD0();
  v47 = 0;
  v14 = [a1 statusOfValueForKey:v13 error:&v47];

  v44 = v47;
  if (v14 == 2)
  {
    sub_22766A6C0();
    v15 = a1;
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47 = v19;
      *v18 = 141558274;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2080;
      v20 = [v15 URL];
      sub_227662430();

      v21 = sub_227662390();
      v23 = v22;
      (*(v4 + 8))(v6, v42);
      v24 = sub_226E97AE8(v21, v23, &v47);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_226E8E000, v16, v17, "Stream Loader - Media Selection - loaded asset values for %{mask.hash}s", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v7 + 8))(v12, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    sub_22766D430();
    v25 = v47;
    v26 = v48;
    v46(v47, v48);
    sub_226EB4548(v25, v26);
  }

  else
  {
    sub_22766A6C0();
    v27 = a1;
    v28 = sub_22766B380();
    v29 = sub_22766C890();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 141558274;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2080;
      v32 = [v27 URL];
      sub_227662430();

      v33 = sub_227662390();
      v35 = v34;
      (*(v4 + 8))(v6, v42);
      v36 = sub_226E97AE8(v33, v35, &v47);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_226E8E000, v28, v29, "Stream Loader - Media Selection - failed to load asset values for %{mask.hash}s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    (*(v7 + 8))(v9, v43);
    v37 = v44;
    v38 = v44;
    if (!v44)
    {
      v39 = sub_227663190();
      sub_226EB1040(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      v38 = swift_allocError();
      (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D4FCC8], v39);
    }

    v41 = v37;
    v46(v38, 1);
  }
}

double sub_22754D7EC@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = &a1[OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_persistenceStore];
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  __swift_project_boxed_opaque_existential_0(v4, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = sub_2276668F0();
  v9 = a1;
  sub_226ECF5D8(sub_227594AF4, v7, v5, v8, v6, a2);

  return result;
}

void sub_22754D8B4(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v72 - v11;
  v13 = *MEMORY[0x277CE5DE0];
  v78 = a1;
  v14 = [a1 mediaSelectionGroupForMediaCharacteristic_];
  if (v14)
  {
    v15 = v14;
    v74 = a2;
    v75 = v8;
    v72 = v6;
    v73 = v5;
    v77 = v2;
    v16 = [v14 options];
    v17 = v16;
    v18 = v16;
    if (!v16)
    {
      sub_226E99364(0, &qword_27D7BDC20, 0x277CE6518);
      sub_22766C2C0();
      v18 = sub_22766C2B0();

      sub_22766C2C0();
      v17 = sub_22766C2B0();
    }

    v19 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v20 = swift_allocObject();
    v76 = xmmword_227670CD0;
    *(v20 + 16) = xmmword_227670CD0;
    v21 = v16;
    *(v20 + 32) = sub_2276668E0();
    *(v20 + 40) = v22;
    v23 = sub_22766C2B0();

    v24 = [v19 mediaSelectionOptionsFromArray:v18 filteredAndSortedAccordingToPreferredLanguages:v23];

    sub_226E99364(0, &qword_27D7BDC20, 0x277CE6518);
    v25 = sub_22766C2C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE658, &unk_22768B5B0);
    v26 = swift_allocObject();
    *(v26 + 16) = v76;
    v27 = *MEMORY[0x277CE5E28];
    *(v26 + 32) = *MEMORY[0x277CE5E28];
    type metadata accessor for AVMediaCharacteristic(0);
    v28 = v27;
    v29 = sub_22766C2B0();

    v30 = [v19 mediaSelectionOptionsFromArray:v17 withMediaCharacteristics:v29];

    sub_22766C2C0();
    if (v25 >> 62)
    {
      sub_22766CD20();
    }

    v31 = v77;

    v32 = sub_22766C2B0();

    v33 = swift_allocObject();
    *(v33 + 16) = v76;
    v34 = *MEMORY[0x277CE5E08];
    *(v33 + 32) = *MEMORY[0x277CE5E08];
    v35 = v34;
    v36 = sub_22766C2B0();

    v37 = [v19 mediaSelectionOptionsFromArray:v32 withoutMediaCharacteristics:v36];

    v38 = sub_22766C2C0();
    v39 = [v78 preferredMediaSelection];
    v80 = MEMORY[0x277D84F90];
    v40 = v15;

    v42 = sub_2275542F8(v41, &v80, v40);

    v43 = v40;
    v44 = v39;
    sub_227554B74(v42, v44, v43, &v80);

    if (v38 >> 62)
    {
      v45 = sub_22766CD20();
    }

    else
    {
      v45 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v75;
    v77 = v31;
    if (v45)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x22AA991A0](0, v38);
      }

      else
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v47 = *(v38 + 32);
      }

      v48 = v47;
    }

    else
    {

      v48 = 0;
    }

    v54 = v78;
    v55 = sub_227594870(v78, v43, v48);

    swift_beginAccess();
    v79 = v80;
    sub_227462734(v55);
    v56 = v79;
    sub_22766A6C0();

    v57 = v54;
    v58 = sub_22766B380();
    v59 = sub_22766C8B0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *&v76 = swift_slowAlloc();
      v79 = v76;
      *v60 = 141558786;
      *(v60 + 4) = 1752392040;
      *(v60 + 12) = 2080;
      v61 = sub_226E99364(0, &qword_27D7BE5D0, 0x277CE6508);
      v62 = MEMORY[0x22AA98660](v56, v61);
      v78 = v44;
      v64 = sub_226E97AE8(v62, v63, &v79);

      *(v60 + 14) = v64;
      *(v60 + 22) = 2160;
      *(v60 + 24) = 1752392040;
      *(v60 + 32) = 2080;
      v65 = [v57 allMediaSelections];
      v66 = sub_22766C2C0();

      v67 = MEMORY[0x22AA98660](v66, v61);
      v69 = v68;

      v70 = sub_226E97AE8(v67, v69, &v79);

      *(v60 + 34) = v70;
      _os_log_impl(&dword_226E8E000, v58, v59, "Stream Loader - Media Selections selected: %{mask.hash}s from all: %{mask.hash}s", v60, 0x2Au);
      v71 = v76;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v71, -1, -1);
      MEMORY[0x22AA9A450](v60, -1, -1);

      (*(v72 + 8))(v75, v73);
    }

    else
    {

      (*(v72 + 8))(v46, v73);
    }

    *v74 = v56;
  }

  else
  {
    sub_22766A6C0();
    v49 = sub_22766B380();
    v50 = sub_22766C8B0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_226E8E000, v49, v50, "Stream Loader - Media Selection - no audible group. Falling back to default asset media selections.", v51, 2u);
      MEMORY[0x22AA9A450](v51, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    v52 = [v78 allMediaSelections];
    sub_226E99364(0, &qword_27D7BE5D0, 0x277CE6508);
    v53 = sub_22766C2C0();

    *a2 = v53;
  }
}

BOOL sub_22754E0EC(void **a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *a2;
  if (v5 >> 62)
  {
LABEL_15:
    v6 = sub_22766CD20();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AA991A0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v11 = [v9 selectedMediaOptionInMediaSelectionGroup_];
    v12 = [v4 isEqual_];

    v7 = v8 + 1;
  }

  while (!v12);

  return v6 == v8;
}

void sub_22754E238(uint64_t a1)
{
  v2 = sub_2276639B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v61 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  sub_22766A6C0();
  v17 = *(v3 + 16);
  v71 = a1;
  v63 = v17;
  v64 = v3 + 16;
  v17(v8, a1, v2);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v73 = v10;
  v66 = v3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v62 = v5;
    v22 = v3;
    v23 = v21;
    v24 = swift_slowAlloc();
    v67 = v9;
    v25 = v24;
    v74 = v24;
    *v23 = 141558274;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2080;
    sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v26 = sub_22766D140();
    v28 = v27;
    v29 = v22;
    v5 = v62;
    v65 = *(v29 + 8);
    v65(v8, v2);
    v30 = sub_226E97AE8(v26, v28, &v74);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_226E8E000, v18, v19, "Stream Loader - Request to cancel request: %{mask.hash}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v31 = v25;
    v9 = v67;
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v23, -1, -1);

    v70 = *(v73 + 8);
  }

  else
  {

    v65 = *(v3 + 8);
    v65(v8, v2);
    v70 = *(v10 + 8);
  }

  v32 = v70(v16, v9);
  v33 = v2;
  v34 = v72;
  MEMORY[0x28223BE20](v32);
  v35 = v71;
  *(&v61 - 2) = v34;
  *(&v61 - 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5B0, qword_22768B568);
  sub_2276696A0();
  v36 = v74;
  if (v74)
  {
    v37 = v68;
    sub_22766A6C0();
    v38 = v36;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 141558274;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v38;
      *v42 = v36;
      v43 = v38;
      _os_log_impl(&dword_226E8E000, v39, v40, "Stream Loader - Cancelling task %{mask.hash}@", v41, 0x16u);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    v70(v37, v9);
    [v38 cancel];
  }

  else
  {
    sub_22766A6C0();
    v63(v5, v35, v33);
    v44 = v34;
    v45 = sub_22766B380();
    v46 = sub_22766C8B0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67 = v9;
      v49 = v48;
      v75[0] = v48;
      *v47 = 141558786;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2080;
      sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v50 = sub_22766D140();
      v51 = v33;
      v53 = v52;
      v65(v5, v51);
      v54 = sub_226E97AE8(v50, v53, v75);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2160;
      *(v47 + 24) = 1752392040;
      *(v47 + 32) = 2080;
      swift_beginAccess();
      sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
      type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
      sub_2275945F8(&qword_27D7BE6B8, &qword_27D7B8670, 0x277CE63F0, MEMORY[0x277D85378]);

      v55 = sub_22766BEC0();
      v57 = v56;

      v58 = sub_226E97AE8(v55, v57, v75);

      *(v47 + 34) = v58;
      _os_log_impl(&dword_226E8E000, v45, v46, "Stream Loader - Cancellation failed. Task not found for request %{mask.hash}s. Currently tracked tasks: %{mask.hash}s", v47, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v49, -1, -1);
      MEMORY[0x22AA9A450](v47, -1, -1);

      v59 = v69;
      v60 = v67;
    }

    else
    {

      v65(v5, v33);
      v59 = v69;
      v60 = v9;
    }

    v70(v59, v60);
  }
}

void sub_22754EA30(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a3;
  v47 = a2;
  v4 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE698, &qword_22768B5D8);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v40 - v9);
  v11 = OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_tasks;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = *(v12 + 64);
  v42 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v41 = (v14 + 63) >> 6;
  v46 = v12;

  v17 = 0;
  v43 = v10;
  if (v16)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v18 << 6);
      v23 = *(*(v46 + 48) + 8 * v22);
      v24 = v44;
      sub_227596718(*(v46 + 56) + *(v45 + 72) * v22, v44, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE690, &qword_22768B5D0);
      v26 = *(v25 + 48);
      v27 = v48;
      *v48 = v23;
      sub_227596650(v24, v27 + v26, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
      v28 = v23;
      v20 = v18;
      v29 = v27;
      v10 = v43;
LABEL_13:
      sub_226E95D18(v29, v10, &qword_27D7BE698, &qword_22768B5D8);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE690, &qword_22768B5D0);
      if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
      {

        v31 = 0;
        goto LABEL_25;
      }

      v17 = v20;
      v31 = *v10;
      v32 = (v10 + *(v30 + 48));
      v33 = *v32;
      v34 = v32[1];

      sub_2275966B8(v32, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      if (v33 == sub_227663910() && v34 == v35)
      {

        goto LABEL_25;
      }

      v37 = sub_22766D190();

      if (v37)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_25:
    *v40 = v31;
  }

  else
  {
LABEL_5:
    if (v41 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v41;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v41)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE690, &qword_22768B5D0);
        v39 = v48;
        (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
        v29 = v39;
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v42 + 8 * v18);
      ++v17;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22754EE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = *v2;
  sub_2275455E4(&v22 - v10);
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(v14 + v13, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v15 = v23;
  v16 = v24;
  (*(v7 + 16))(v23, v11, v24);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v15, v16);
  v19 = (v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_227594BE8;
  v19[1] = v14;
  type metadata accessor for AssetLoaderResponse(0);
  v20 = v12;
  sub_227669270();
  return (*(v7 + 8))(v11, v16);
}

uint64_t sub_22754F188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v37 = sub_227665490();
  v5 = *(v37 - 8);
  v34 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7;
  v31 = sub_2276639B0();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v30 = &v28 - v13;
  v14 = *v3;
  sub_2275455E4(&v28 - v13);
  v15 = v31;
  (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v31);
  (*(v5 + 16))(v7, v35, v37);
  v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v17 = (v9 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = v14;
  (*(v8 + 32))(v18 + v16, v28, v15);
  (*(v5 + 32))(v18 + v17, v29, v37);
  v21 = v32;
  v20 = v33;
  v22 = v30;
  (*(v10 + 16))(v32, v30, v33);
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = swift_allocObject();
  (*(v10 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2275514A0;
  v25[1] = v18;
  type metadata accessor for AssetLoaderResponse(0);
  v26 = v19;
  sub_227669270();
  return (*(v10 + 8))(v22, v20);
}

uint64_t sub_22754F528(void *a1, void *a2, void *a3)
{
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v166 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v169 = (&v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v164 = &v161 - v8;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  MEMORY[0x28223BE20](v172);
  v165 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v161 - v11;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE640, &unk_227682010);
  MEMORY[0x28223BE20](v181);
  v182 = &v161 - v13;
  v183 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  v180 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v15 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v173 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v171 = &v161 - v20;
  MEMORY[0x28223BE20](v21);
  v170 = &v161 - v22;
  MEMORY[0x28223BE20](v23);
  v167 = &v161 - v24;
  MEMORY[0x28223BE20](v25);
  v168 = &v161 - v26;
  MEMORY[0x28223BE20](v27);
  v163 = &v161 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v161 - v30;
  sub_22766A6C0();
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = sub_22766B380();
  v36 = sub_22766C8B0();

  v37 = os_log_type_enabled(v35, v36);
  v185 = v16;
  v178 = a3;
  if (v37)
  {
    LODWORD(v179) = v36;
    v177 = v17;
    v176 = v15;
    v174 = v12;
    v38 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v189[0] = v162;
    *v38 = 141559042;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2080;
    v39 = [v32 debugDescription];
    v40 = sub_22766C000();
    v42 = v41;

    v43 = sub_226E97AE8(v40, v42, v189);

    *(v38 + 14) = v43;
    *(v38 + 22) = 2160;
    *(v38 + 24) = 1752392040;
    *(v38 + 32) = 2080;
    v44 = [v33 debugDescription];
    v45 = sub_22766C000();
    v47 = v46;

    v48 = sub_226E97AE8(v45, v47, v189);

    *(v38 + 34) = v48;
    *(v38 + 42) = 2082;
    if (a3)
    {
      swift_getErrorValue();
      v49 = MEMORY[0x22AA995D0](v186, v187);
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v188[0] = v49;
    v188[1] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v54 = sub_22766CB80();
    v56 = v55;

    v57 = sub_226E97AE8(v54, v56, v189);

    *(v38 + 44) = v57;
    _os_log_impl(&dword_226E8E000, v35, v179, "Stream Loader - session: %{mask.hash}s, task: %{mask.hash}s, didCompleteWithError: %{public}s", v38, 0x34u);
    v58 = v162;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v58, -1, -1);
    MEMORY[0x22AA9A450](v38, -1, -1);

    v53 = v177;
    v52 = *(v177 + 8);
    v52(v31, v185);
    v12 = v174;
    v15 = v176;
  }

  else
  {

    v52 = *(v17 + 8);
    v52(v31, v16);
    v53 = v17;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v60 = v184;
  if (result)
  {
    v61 = result;
    v179 = v52;
    MEMORY[0x28223BE20](result);
    *(&v161 - 2) = v60;
    *(&v161 - 1) = v62;
    v63 = v33;
    v64 = v182;
    sub_2276696A0();
    if ((v180[6])(v64, 1, v183) == 1)
    {
      sub_226E97D1C(v64, &unk_27D7BE640, &unk_227682010);
      v65 = v173;
      sub_22766A6C0();
      v66 = v63;
      v67 = sub_22766B380();
      v68 = sub_22766C890();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 141558274;
        *(v69 + 4) = 1752392040;
        *(v69 + 12) = 2112;
        *(v69 + 14) = v61;
        *v70 = v61;
        v71 = v66;
        _os_log_impl(&dword_226E8E000, v67, v68, "Stream Loader - Missing Load for finished task: %{mask.hash}@", v69, 0x16u);
        sub_226E97D1C(v70, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v70, -1, -1);
        MEMORY[0x22AA9A450](v69, -1, -1);
      }

      else
      {
        v71 = v67;
        v67 = v66;
      }

      v97 = v185;

      return v179(v65, v97);
    }

    v72 = sub_227596650(v64, v15, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    MEMORY[0x28223BE20](v72);
    *(&v161 - 2) = v60;
    *(&v161 - 1) = v15;
    v73 = v12;
    sub_2276696A0();
    v182 = 0;
    v74 = v178;
    if (!v178)
    {
      v98 = v165;
      sub_226E93170(v12, v165, &qword_27D7BB560, &qword_227682040);
      if ((*(v166 + 48))(v98, 1, v175) == 1)
      {
        sub_226E97D1C(v98, &qword_27D7BB560, &qword_227682040);
        v99 = v163;
        sub_22766A6C0();
        v100 = sub_22766B380();
        v101 = sub_22766C890();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&dword_226E8E000, v100, v101, "Stream Loader - Task completed before local file was saved.", v102, 2u);
          MEMORY[0x22AA9A450](v102, -1, -1);
        }

        v179(v99, v185);
        v103 = *(v15 + 2);
        v104 = sub_227663190();
        sub_226EB1040(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
        v105 = swift_allocError();
        (*(*(v104 - 8) + 104))(v106, *MEMORY[0x277D4FDC0], v104);
        v107 = v169;
        *v169 = v105;
        swift_storeEnumTagMultiPayload();
        v103(v107);

        v108 = v107;
      }

      else
      {
        v160 = v164;
        sub_226E95D18(v98, v164, &qword_27D7B9628, &unk_227674860);
        (*(v15 + 2))(v160);

        v108 = v160;
      }

      goto LABEL_38;
    }

    v75 = v168;
    sub_22766A6C0();
    v76 = v63;
    v77 = v74;
    v78 = sub_22766B380();
    v79 = sub_22766C890();

    v80 = os_log_type_enabled(v78, v79);
    v177 = v53;
    v184 = v76;
    if (v80)
    {
      v81 = v76;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v180 = v83;
      v181 = swift_slowAlloc();
      v188[0] = v181;
      *v82 = 141558530;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2112;
      *(v82 + 14) = v61;
      *v83 = v61;
      *(v82 + 22) = 2082;
      swift_getErrorValue();
      LODWORD(v173) = v79;
      v84 = v189[2];
      v174 = v73;
      v85 = v74;
      v86 = v15;
      v87 = v189[3];
      v88 = v81;
      v89 = v87;
      v15 = v86;
      v74 = v85;
      v90 = MEMORY[0x22AA995D0](v84, v89);
      v92 = sub_226E97AE8(v90, v91, v188);

      *(v82 + 24) = v92;
      v73 = v174;
      v93 = v185;
      _os_log_impl(&dword_226E8E000, v78, v173, "Stream Loader - Task %{mask.hash}@ completed with error: %{public}s", v82, 0x20u);
      v94 = v180;
      sub_226E97D1C(v180, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v94, -1, -1);
      v95 = v181;
      __swift_destroy_boxed_opaque_existential_0(v181);
      MEMORY[0x22AA9A450](v95, -1, -1);
      MEMORY[0x22AA9A450](v82, -1, -1);

      v96 = v75;
    }

    else
    {

      v96 = v75;
      v93 = v185;
    }

    v179(v96, v93);
    v109 = v170;
    swift_getErrorValue();
    v110 = sub_22766D280();
    v112 = v111;
    v113 = sub_22766C000();
    v176 = v15;
    if (v110 == v113 && v112 == v114)
    {
    }

    else
    {
      v115 = sub_22766D190();

      if ((v115 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    swift_getErrorValue();
    if (sub_22766D270() == -999)
    {
      sub_22766A6C0();
      v116 = v184;
      v117 = sub_22766B380();
      v118 = sub_22766C8B0();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = v93;
        v121 = swift_slowAlloc();
        *v119 = 141558274;
        *(v119 + 4) = 1752392040;
        *(v119 + 12) = 2112;
        *(v119 + 14) = v61;
        *v121 = v61;
        v122 = v116;
        _os_log_impl(&dword_226E8E000, v117, v118, "Stream Loader - Download cancelled for task: %{mask.hash}@", v119, 0x16u);
        sub_226E97D1C(v121, &unk_27D7B9660, &qword_2276740C0);
        v123 = v121;
        v93 = v120;
        MEMORY[0x22AA9A450](v123, -1, -1);
        MEMORY[0x22AA9A450](v119, -1, -1);
      }

      v124 = v167;
      goto LABEL_32;
    }

LABEL_29:
    sub_22766A6C0();
    v125 = v74;
    v126 = sub_22766B380();
    v127 = sub_22766C8B0();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v188[0] = v129;
      *v128 = 136446210;
      swift_getErrorValue();
      v130 = MEMORY[0x22AA995D0](v190, v191);
      v132 = sub_226E97AE8(v130, v131, v188);

      *(v128 + 4) = v132;
      _os_log_impl(&dword_226E8E000, v126, v127, "Stream Loader - Download error occured %{public}s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v129);
      v133 = v129;
      v15 = v176;
      v93 = v185;
      MEMORY[0x22AA9A450](v133, -1, -1);
      MEMORY[0x22AA9A450](v128, -1, -1);

      v124 = v170;
    }

    else
    {

      v124 = v109;
    }

LABEL_32:
    v179(v124, v93);
    v134 = v182;
    sub_2274B2098();
    v135 = v171;
    v136 = v184;
    if (v134)
    {
      v137 = v93;
      sub_22766A6C0();
      v138 = v136;
      v139 = v134;
      v140 = sub_22766B380();
      v141 = sub_22766C890();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v174 = v73;
        v144 = v143;
        v145 = swift_slowAlloc();
        v188[0] = v145;
        *v142 = 141558530;
        *(v142 + 4) = 1752392040;
        *(v142 + 12) = 2112;
        *(v142 + 14) = v61;
        *v144 = v61;
        *(v142 + 22) = 2082;
        swift_getErrorValue();
        v146 = v192;
        v147 = v193;
        v148 = v138;
        v149 = v147;
        v15 = v176;
        v150 = MEMORY[0x22AA995D0](v146, v149);
        v152 = sub_226E97AE8(v150, v151, v188);

        *(v142 + 24) = v152;
        _os_log_impl(&dword_226E8E000, v140, v141, "Stream Loader - Error when deleting download files for task %{mask.hash}@, error: %{public}s", v142, 0x20u);
        sub_226E97D1C(v144, &unk_27D7B9660, &qword_2276740C0);
        v153 = v174;
        MEMORY[0x22AA9A450](v144, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v145);
        v154 = v145;
        v73 = v153;
        MEMORY[0x22AA9A450](v154, -1, -1);
        v155 = v142;
        v136 = v184;
        MEMORY[0x22AA9A450](v155, -1, -1);

        v179(v171, v185);
      }

      else
      {

        v179(v135, v137);
        v15 = v176;
      }
    }

    v156 = *(v15 + 2);
    v157 = v169;
    v158 = v178;
    *v169 = v178;
    swift_storeEnumTagMultiPayload();
    v159 = v158;
    v156(v157);

    v108 = v157;
LABEL_38:
    sub_226E97D1C(v108, &qword_27D7B9628, &unk_227674860);
    sub_226E97D1C(v73, &qword_27D7BB560, &qword_227682040);
    return sub_2275966B8(v15, type metadata accessor for AssetMediaStreamLoader.TaskResult);
  }

  return result;
}

uint64_t sub_2275508C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE640, &unk_227682010);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_tasks;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16))
  {

    v20 = a2;
    v12 = sub_226F3B23C(a2);
    if (v13)
    {
      v14 = v12;
      v19[0] = *(v11 + 56);
      v15 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
      v16 = *(v15 - 8);
      v19[1] = v3;
      v17 = v16;
      sub_227596718(v19[0] + *(v16 + 72) * v14, a3, type metadata accessor for AssetMediaStreamLoader.TaskResult);

      (*(v17 + 56))(a3, 0, 1, v15);
    }

    else
    {

      v15 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
      (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
    }

    a2 = v20;
  }

  else
  {
    v15 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  swift_beginAccess();
  sub_22736461C(v9, a2);
  return swift_endAccess();
}

uint64_t sub_227550B68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AssetLoaderResponse(0);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for AssetMediaStreamLoader.TaskResult(0) + 24);
  sub_22766A6C0();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  v13 = sub_227125FB4();
  if (v2)
  {

    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 16))(v7, a1 + v12, v15);
  *&v7[*(v5 + 20)] = v14;
  sub_227596650(v7, a2, type metadata accessor for AssetLoaderResponse);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

void sub_227550E64(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE640, &unk_227682010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_tasks;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_226F3B23C(v27);
    if (v17)
    {
      sub_227596718(*(v15 + 56) + *(v8 + 72) * v16, v10, type metadata accessor for AssetMediaStreamLoader.TaskResult);

      sub_227596650(v10, v13, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      v24 = *v13;
      v18 = *(v13 + 3);
      v19 = *(v7 + 24);
      v20 = sub_2276624A0();
      v21 = *(*(v20 - 8) + 16);
      v25 = *(v13 + 8);
      v21(&v6[v19], v26, v20);
      *v6 = v24;
      *(v6 + 8) = v25;
      *(v6 + 3) = v18;
      (*(v8 + 56))(v6, 0, 1, v7);
      swift_beginAccess();
      v22 = v27;

      sub_22736461C(v6, v22);
      swift_endAccess();
      sub_2275966B8(v13, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for AssetMediaStreamLoader.TaskResult(uint64_t a1)
{
  result = qword_2813A0138;
  if (!qword_2813A0138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2275513BC(uint64_t a1)
{
  result = sub_227551450();
  if (v2 <= 0x3F)
  {
    result = sub_2276624A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_227551450()
{
  result = qword_28139D1F8;
  if (!qword_28139D1F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28139D1F8);
  }

  return result;
}

uint64_t sub_2275514A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227665490() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_22754840C(a1, v9, v2 + v6, v10, a2);
}

uint64_t sub_227551588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricServiceSubscriptionState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_227596718(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetricServiceSubscriptionState);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_227596650(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for MetricServiceSubscriptionState);

  return sub_227669270();
}

uint64_t sub_227551864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricRecordingContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_227596718(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetricRecordingContext);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_227596650(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for MetricRecordingContext);

  return sub_227669270();
}

uint64_t sub_227551A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AssetLoaderResponse(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_227596718(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AssetLoaderResponse);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_227596650(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AssetLoaderResponse);

  return sub_227669270();
}

uint64_t sub_227551B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_226E93170(a1, &v13 - v8, &qword_27D7BD720, &qword_227684D88);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_226E95D18(v9, v11 + v10, &qword_27D7BD720, &qword_227684D88);
  sub_227668700();

  return sub_227669270();
}

uint64_t sub_227551E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_226E93170(a1, &v13 - v8, &unk_27D7BD3F0, &unk_2276823F0);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_226E95D18(v9, v11 + v10, &unk_27D7BD3F0, &unk_2276823F0);

  return sub_227669270();
}

uint64_t sub_2275520BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v19[1] = a7;
  v11 = a4(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v12 + 32))(v17 + v16, v15, v11);
  a6(0);

  return sub_227669270();
}

uint64_t sub_2275522A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_226E93170(a1, &v13 - v8, &qword_27D7B94C0, &unk_2276874A0);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_226E95D18(v9, v11 + v10, &qword_27D7B94C0, &unk_2276874A0);
  sub_2276668F0();

  return sub_227669270();
}

uint64_t sub_227552580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_226E93170(a1, &v13 - v8, &unk_27D7BB8C0, &qword_22767F780);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_226E95D18(v9, v11 + v10, &unk_27D7BB8C0, &qword_22767F780);

  return sub_227669270();
}

uint64_t sub_227552798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276668F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE650, &unk_227686410);
  return sub_227669270();
}

uint64_t sub_227552944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[1] = a7;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v11 + 32))(v16 + v15, v14, v10);

  return sub_227669270();
}

uint64_t sub_227552AC4(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227665490() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_22754865C(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_227552CB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v22[0] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v22 - v19;
  a3(a5, v18);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v13, v16, a6, a7);
  sub_226E95D18(v16, v20, a6, a7);
  (v22[0])(v20);
  return sub_226E97D1C(v20, a6, a7);
}

uint64_t sub_227552E30(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, __int128 *), uint64_t a4, uint64_t a5)
{
  *&v7 = a5;
  a3(&v9, &v7);
  v7 = v10;
  v8 = v11;
  v12 = 0;
  a1(&v9);
  return sub_226E97D1C(&v9, &unk_27D7BE8D0, &qword_227684CF8);
}

uint64_t sub_227552FB4(void (*a1)(char *), uint64_t a2, void (*a3)(uint64_t *, double), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v23 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v22 - v19;
  v24 = a5;
  a3(&v24, v18);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v13, v16, a6, a7);
  sub_226E95D18(v16, v20, a6, a7);
  v23(v20);
  return sub_226E97D1C(v20, a6, a7);
}

void sub_227553138(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v7 = v7;
  v8 = 0;
  a1(&v7);

  sub_226EB4548(v6, 0);
}

void sub_2275531E0(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v9, a5);
  v10 = 0;
  a1(v9);
  v6 = v9[0];
  v7 = v9[1];
  v8 = v10;

  sub_2270934D8(v6, v7, v8);
}

void sub_227553270(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v9 = a5;
  a3(v10, &v9);
  v11 = 0;
  a1(v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v11;

  sub_2270934D8(v6, v7, v8);
}

uint64_t sub_22755337C(void (*a1)(char *), double a2, uint64_t a3, void (*a4)(double *, double))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C0, &qword_227684C60);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v18 - v15;
  v19 = a2;
  a4(&v19, v14);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v9, v12, &qword_27D7BD5C0, &qword_227684C60);
  sub_226E95D18(v12, v16, &qword_27D7BD5C0, &qword_227684C60);
  a1(v16);
  return sub_226E97D1C(v16, &qword_27D7BD5C0, &qword_227684C60);
}

uint64_t sub_22755352C(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v20[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v20 - v17;
  a3(v16);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v11, v14, a5, a6);
  sub_226E95D18(v14, v18, a5, a6);
  (v20[0])(v18);
  return sub_226E97D1C(v18, a5, a6);
}

void sub_2275536A0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_226F38F34(v6, 0);
}

void sub_227553734(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_226EB4548(v6, 0);
}

uint64_t sub_2275537C8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a4;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v11 = a1;

  v12 = sub_22766B380();
  v13 = sub_22766C890();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[1] = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22[0] = v7;
    v17 = v16;
    v27 = v16;
    *v15 = 136446722;
    swift_getErrorValue();
    v18 = MEMORY[0x22AA995D0](v25, v26);
    v20 = sub_226E97AE8(v18, v19, &v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_226E97AE8(v23, a3, &v27);
    *(v15 + 22) = 2050;
    *(v15 + 24) = v24;
    _os_log_impl(&dword_226E8E000, v12, v13, "Caught %{public}s at %{public}s:%{public}lu", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    return (*(v8 + 8))(v10, v22[0]);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_227553A10(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_227669270();
}

double sub_227553AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = sub_227669290();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_227594780, v10);

  return result;
}

uint64_t sub_227553B88(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, double), uint64_t a4, void (*a5)(uint64_t, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_227669290();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_226E9F880, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18, v12);
  }
}

double sub_227553D14@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_226E97CC0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t sub_227553D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);

  return sub_227669270();
}

void sub_227553E00(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_226EF4F04(v4);
}

void sub_227553E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22753BA10(a1, v6, a4, &qword_27D7BEA30, &unk_22768B730, &qword_27D7BEA38, sub_227596830);
  if (v13)
  {
    if (v13 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (sub_227669C10())
  {
    v14 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51010], v14);
LABEL_6:
    swift_willThrow();
    return;
  }

  v35 = v12;
  v36 = v10;
  v37 = v9;
  v38 = v4;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (a1 + 32);
    while (1)
    {
      v18 = *v17;
      v19 = objc_opt_self();
      v20 = sub_22766BFD0();
      v21 = [v19 insertNewObjectForEntityForName:v20 inManagedObjectContext:a2];

      type metadata accessor for ManagedUserAccountNotification();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        break;
      }

      [v22 setShownState_];

      ++v17;
      if (!--v16)
      {
        goto LABEL_12;
      }
    }

    v23 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v24 = swift_allocError();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D51000], v23);
    swift_willThrow();
    v26 = v35;
    sub_22766A770();
    v27 = v24;
    v28 = sub_22766B380();
    v29 = sub_22766C8B0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v24;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_226E8E000, v28, v29, "%@", v30, 0xCu);
      sub_226E97D1C(v31, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    (*(v36 + 8))(v26, v37);
    swift_willThrow();
    sub_226EDC474(0);
  }

  else
  {
LABEL_12:
    sub_226EDC474(0);
  }
}

uint64_t sub_2275542F8(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v19 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v16 = v6;
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
    v15 = i;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x22AA991A0](v8, v6);
      }

      else
      {
        if (v8 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v10;
      v13 = sub_22754E0EC(&v18, a2, a3);
      if (v3)
      {

        return a3;
      }

      if (v13)
      {
        sub_22766CF00();
        sub_22766CF40();
        sub_22766CF50();
        sub_22766CF10();
        i = v15;
        v6 = v16;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        a3 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a3 = MEMORY[0x277D84F90];
LABEL_20:

  return a3;
}

void sub_2275544A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v64 = a2;
  v7 = sub_22766B390();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SyncEncryptionKey(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v65 = a1;
  v17 = sub_2275369D4(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v16;
    v63 = v11;
    v61 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v56 = v9;
    v57 = v7;
    v20 = v65 + 56;
    v21 = 1 << *(v65 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v65 + 56);
    v24 = (v21 + 63) >> 6;
    v59 = "ManagedSyncZoneChangeWindow";

    v25 = 0;
    v58 = v24;
    if (v23)
    {
      while (1)
      {
        v26 = v25;
        v28 = v62;
        v27 = v63;
LABEL_15:
        sub_227596718(*(v65 + 48) + *(v27 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v28, type metadata accessor for SyncEncryptionKey);
        sub_227596650(v28, v13, type metadata accessor for SyncEncryptionKey);
        v29 = objc_opt_self();
        v30 = v13;
        v31 = sub_22766BFD0();
        v32 = [v29 insertNewObjectForEntityForName:v31 inManagedObjectContext:v64];

        type metadata accessor for ManagedSyncEncryptionKey();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {
          break;
        }

        v34 = v33;
        v23 &= v23 - 1;
        sub_2276694C0();
        v35 = v20;
        v36 = sub_22766BFD0();

        [v34 setZoneName_];

        v37 = v68;
        sub_22766B470();
        v68 = v37;
        v38 = v66;
        v39 = v67;
        v40 = sub_227662560();
        v41 = v39;
        v20 = v35;
        v24 = v58;
        sub_226EDC420(v38, v41);
        [v34 setKey_];

        v42 = sub_22766BFD0();
        [v34 setEtag_];

        v43 = sub_227662790();
        [v34 setIdentifier_];

        sub_2275966B8(v30, type metadata accessor for SyncEncryptionKey);
        v25 = v26;
        v13 = v30;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v44 = v30;

      v45 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v46 = swift_allocError();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D51000], v45);
      swift_willThrow();
      v48 = v56;
      sub_22766A770();
      v49 = v46;
      v50 = sub_22766B380();
      v51 = sub_22766C8B0();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v46;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v50, v51, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v60 + 8))(v48, v57);
      swift_willThrow();

      sub_226EDC474(0);
      sub_2275966B8(v44, type metadata accessor for SyncEncryptionKey);
    }

    else
    {
LABEL_11:
      v28 = v62;
      v27 = v63;
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v26);
        ++v25;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }
}

void sub_227554B74(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    v14 = v6;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x22AA991A0](v8, v6);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_16;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [a2 mutableCopy];
      sub_22766CC20();
      swift_unknownObjectRelease();
      sub_226E99364(0, &unk_27D7BE660, 0x277CE6550);
      if (swift_dynamicCast())
      {
        [v17 selectMediaOption:v11 inMediaSelectionGroup:a3];
        swift_beginAccess();
        v13 = v17;
        MEMORY[0x22AA985C0]();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22766C360();
        }

        sub_22766C3A0();
        swift_endAccess();

        v6 = v14;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_227554D6C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v61 = a4;
  v4 = a3;
  v60 = a2;
  v6 = sub_22766B390();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276694E0();
  v57 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664140();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227536898(a1, v4, v61);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v61 = v15;
    v58 = v11;
    v59 = v9;
    v50 = v8;
    v51 = v12;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v49 = v6;
      v19 = *(a1 + 16);
      v20 = v51;
      v21 = v61;
      if (v19)
      {
        v23 = *(v13 + 16);
        v22 = v13 + 16;
        v55 = "ManagedSyncEncryptionKey";
        v56 = v23;
        v24 = (v57 + 1);
        v57 = (v22 - 8);
        v25 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v53 = *(v22 + 56);
        v54 = v24;
        while (1)
        {
          v56(v21, v25, v20);
          v26 = objc_opt_self();
          v27 = sub_22766BFD0();
          v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v60];

          type metadata accessor for ManagedSyncOperation();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          sub_227664110();
          sub_2276640F0();
          v31 = sub_22766BFD0();

          [v30 setAction_];

          v32 = v58;
          sub_2276640D0();
          sub_2276694C0();
          v33 = v32;
          v21 = v61;
          (*v54)(v33, v59);
          v34 = sub_22766BFD0();

          [v30 setZoneName_];

          sub_2276640C0();
          v35 = sub_22766BFD0();

          [v30 setSyncIdentifier_];

          sub_227664130();
          [v30 setTimestamp_];
          sub_227664120();
          [v30 setDomain_];

          (*v57)(v21, v20);
          v25 += v53;
          if (!--v19)
          {
            goto LABEL_10;
          }
        }

        v36 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
        swift_willThrow();
        v39 = v50;
        sub_22766A770();
        v40 = v37;
        v41 = sub_22766B380();
        v42 = sub_22766C8B0();
        v43 = v37;

        if (os_log_type_enabled(v41, v42))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = v43;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          *v45 = v47;
          _os_log_impl(&dword_226E8E000, v41, v42, "%@", v44, 0xCu);
          sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v44, -1, -1);
        }

        (*(v52 + 8))(v39, v49);
        swift_willThrow();
        sub_226EDC474(0);
        (*v57)(v21, v51);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227555420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v44 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DirtySyncZone(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227536B10(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v42 = v10;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v40 = v8;
    v41 = v7;
    v18 = *(a1 + 16);
    if (v18)
    {
      v43 = "ManagedContributorIdentifier";
      v19 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v20 = *(v12 + 72);
      while (1)
      {
        sub_227596718(v19, v14, type metadata accessor for DirtySyncZone);
        v21 = objc_opt_self();
        v22 = sub_22766BFD0();
        v23 = [v21 insertNewObjectForEntityForName:v22 inManagedObjectContext:v44];

        type metadata accessor for ManagedDirtySyncZone();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          break;
        }

        v25 = v24;
        sub_2276694C0();
        v26 = sub_22766BFD0();

        [v25 setZoneName_];

        v27 = sub_2276626A0();
        [v25 setTimestamp_];

        sub_2275966B8(v14, type metadata accessor for DirtySyncZone);
        v19 += v20;
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      v28 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v29 = swift_allocError();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D51000], v28);
      swift_willThrow();
      v31 = v42;
      sub_22766A770();
      v32 = v29;
      v33 = sub_22766B380();
      v34 = sub_22766C8B0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        v37 = v29;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_226E8E000, v33, v34, "%@", v35, 0xCu);
        sub_226E97D1C(v36, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v36, -1, -1);
        MEMORY[0x22AA9A450](v35, -1, -1);
      }

      (*(v40 + 8))(v31, v41);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v14, type metadata accessor for DirtySyncZone);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227555964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v50 = a2;
  v9 = sub_22766B390();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664AA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227536C4C(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v43 = v11;
  v44 = v15;
  v17 = v12;
  if (sub_227669C10())
  {
    v18 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
    swift_willThrow();
    return;
  }

  v42 = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = v13 + 16;
    v21 = *(v13 + 16);
    v48 = "ManagedTrainerReference";
    v49 = v21;
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v46 = *(v13 + 72);
    v47 = (v13 + 8);
    v24 = v17;
    v25 = v44;
    while (1)
    {
      v26 = v24;
      v27 = v22;
      v49(v25, v23, v24);
      v28 = objc_opt_self();
      v29 = sub_22766BFD0();
      v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v50];

      type metadata accessor for ManagedUpNextQueueItem();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {

        v32 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_227445B48(v31);
      if (v4)
      {
        break;
      }

      v24 = v26;
      (*v47)(v25, v26);

      v23 += v46;
      --v20;
      v22 = v27;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v34 = v43;
    sub_22766A770();
    v35 = v5;
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v5;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226E8E000, v36, v37, "%@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v45 + 8))(v34, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v47)(v25, v26);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227555EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v4 = a3;
  v54 = a2;
  v6 = sub_22766B390();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664E20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  v16 = sub_227536D88(a1, v4, v53);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v52 = v9;
    v53 = v12;
    v45 = v8;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v44 = v6;
      v19 = *(v47 + 16);
      v20 = v53;
      if (v19)
      {
        v21 = *(v13 + 16);
        v50 = "isplayPreference";
        v51 = v21;
        v48 = v49 + 1;
        v49 = (v13 + 8);
        v22 = v47 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v47 = *(v13 + 72);
        while (1)
        {
          v51(v15, v22, v20);
          v23 = objc_opt_self();
          v24 = sub_22766BFD0();
          v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v54];

          type metadata accessor for ManagedRecentSearchTerm();
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
            break;
          }

          v27 = v26;
          sub_227664E00();
          v28 = sub_22766BFD0();

          [v27 setTerm_];

          sub_227664DE0();
          v29 = sub_2276626A0();
          (*v48)(v11, v52);
          [v27 setDateCreated_];

          sub_227664E10();
          v30 = sub_227669410();
          if (v30 < 0xFFFFFFFF80000000)
          {
            __break(1u);
LABEL_18:
            __break(1u);
            return;
          }

          if (v30 > 0x7FFFFFFF)
          {
            goto LABEL_18;
          }

          [v27 setPlatform_];

          v20 = v53;
          (*v49)(v15, v53);
          v22 += v47;
          if (!--v19)
          {
            goto LABEL_12;
          }
        }

        v31 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v32 = swift_allocError();
        (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51000], v31);
        swift_willThrow();
        v34 = v45;
        sub_22766A770();
        v35 = v32;
        v36 = sub_22766B380();
        v37 = sub_22766C8B0();
        v38 = v32;

        if (os_log_type_enabled(v36, v37))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412290;
          v41 = v38;
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v39 + 4) = v42;
          *v40 = v42;
          _os_log_impl(&dword_226E8E000, v36, v37, "%@", v39, 0xCu);
          sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v40, -1, -1);
          MEMORY[0x22AA9A450](v39, -1, -1);
        }

        (*(v46 + 8))(v34, v44);
        swift_willThrow();
        sub_226EDC474(0);
        (*v49)(v15, v53);
      }

      else
      {
LABEL_12:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227556550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v50 = a2;
  v9 = sub_22766B390();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227663480();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227536EC4(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v43 = v11;
  v44 = v15;
  v17 = v12;
  if (sub_227669C10())
  {
    v18 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
    swift_willThrow();
    return;
  }

  v42 = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = v13 + 16;
    v21 = *(v13 + 16);
    v48 = "orkoutPlanSession";
    v49 = v21;
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v46 = *(v13 + 72);
    v47 = (v13 + 8);
    v24 = v17;
    v25 = v44;
    while (1)
    {
      v26 = v24;
      v27 = v22;
      v49(v25, v23, v24);
      v28 = objc_opt_self();
      v29 = sub_22766BFD0();
      v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v50];

      type metadata accessor for ManagedAssetBundle();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {

        v32 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_226FC3278(v31);
      if (v4)
      {
        break;
      }

      v24 = v26;
      (*v47)(v25, v26);

      v23 += v46;
      --v20;
      v22 = v27;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v34 = v43;
    sub_22766A770();
    v35 = v5;
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v5;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226E8E000, v36, v37, "%@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v45 + 8))(v34, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v47)(v25, v26);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227556AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v61 = a2;
  v7 = sub_22766B390();
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663180();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_227537000(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v52 = v13;
    v53 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v50 = v9;
    v51 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v11;
    v55 = v11 + 32;
    v56 = v11 + 16;
    v54 = "ManagedAssetBundleLoadFailure";
    v57 = (v11 + 8);

    v26 = 0;
    v27 = v52;
    v28 = v53;
    v58 = a1;
    v29 = v60;
    if (v23)
    {
      while (1)
      {
        v30 = v26;
LABEL_14:
        v31 = *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v30 << 6));
        v32 = v29;
        (*(v25 + 16))(v29, v31, v28);
        (*(v25 + 32))(v27, v32, v28);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v61];
        v36 = v27;
        v37 = v35;

        type metadata accessor for ManagedAssetEntry();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {
          break;
        }

        v23 &= v23 - 1;
        sub_227339B04(v38);

        (*v57)(v36, v28);
        v26 = v30;
        a1 = v58;
        v27 = v36;
        v25 = v11;
        v29 = v60;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v50;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v59 + 8))(v42, v51);
      swift_willThrow();

      sub_226EDC474(0);
      (*v57)(v52, v53);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_227557090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v47 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227663180();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22753713C(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v42 = v10;
    v43 = v11;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v40 = v8;
    v41 = v7;
    v18 = *(a1 + 16);
    v19 = v43;
    if (v18)
    {
      v21 = *(v12 + 16);
      v20 = v12 + 16;
      v44 = "ManagedAssetBundleLoadFailure";
      v45 = v21;
      v46 = (v20 - 8);
      v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v23 = *(v20 + 56);
      while (1)
      {
        v45(v14, v22, v19);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v47];

        type metadata accessor for ManagedAssetEntry();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        sub_227339B04(v27);

        (*v46)(v14, v19);
        v22 += v23;
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      v28 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v29 = swift_allocError();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D51000], v28);
      swift_willThrow();
      v31 = v42;
      sub_22766A770();
      v32 = v29;
      v33 = sub_22766B380();
      v34 = sub_22766C8B0();
      v35 = v29;

      if (os_log_type_enabled(v33, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v35;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_226E8E000, v33, v34, "%@", v36, 0xCu);
        sub_226E97D1C(v37, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v37, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      (*(v40 + 8))(v31, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v46)(v14, v43);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_2275575BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v50 = a2;
  v9 = sub_22766B390();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276646D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227537278(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v43 = v11;
  v44 = v15;
  v17 = v12;
  if (sub_227669C10())
  {
    v18 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
    swift_willThrow();
    return;
  }

  v42 = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = v13 + 16;
    v21 = *(v13 + 16);
    v48 = "ManagedDirtySyncZone";
    v49 = v21;
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v46 = *(v13 + 72);
    v47 = (v13 + 8);
    v24 = v17;
    v25 = v44;
    while (1)
    {
      v26 = v24;
      v27 = v22;
      v49(v25, v23, v24);
      v28 = objc_opt_self();
      v29 = sub_22766BFD0();
      v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v50];

      type metadata accessor for ManagedEngagementBadge();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {

        v32 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_22736D340(v31);
      if (v4)
      {
        break;
      }

      v24 = v26;
      (*v47)(v25, v26);

      v23 += v46;
      --v20;
      v22 = v27;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v34 = v43;
    sub_22766A770();
    v35 = v5;
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v5;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226E8E000, v36, v37, "%@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v45 + 8))(v34, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v47)(v25, v26);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227557AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v56 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227669040();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2275373B4(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v50 = v10;
    v51 = v14;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v48 = v8;
    v49 = v7;
    v18 = *(a1 + 16);
    if (v18)
    {
      v20 = v12 + 16;
      v19 = *(v12 + 16);
      v54 = "ManagedAssetResumableLoad";
      v55 = v19;
      v21 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v52 = *(v12 + 72);
      v53 = (v12 + 8);
      v22 = v51;
      while (1)
      {
        v23 = v20;
        v55(v22, v21, v11);
        v24 = objc_opt_self();
        v25 = v22;
        v26 = sub_22766BFD0();
        v27 = v56;
        v28 = [v24 insertNewObjectForEntityForName:v26 inManagedObjectContext:v56];

        type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {

          v33 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v34 = swift_allocError();
          (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
          swift_willThrow();
          v22 = v25;
          goto LABEL_16;
        }

        v30 = v29;
        v31 = sub_226EB1040(&qword_2813A5520, MEMORY[0x277D539C0], &unk_2276788A0);
        v32 = v57;
        (*(v31 + 64))(v30, v27, v11, v31);
        v22 = v25;
        v57 = v32;
        if (v32)
        {
          break;
        }

        (*v53)(v25, v11);

        v21 += v52;
        --v18;
        v20 = v23;
        if (!v18)
        {
          goto LABEL_12;
        }
      }

      v34 = v57;
LABEL_16:
      v36 = v50;
      sub_22766A770();
      v37 = v34;
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v49;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v34;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v38, v39, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        v46 = v42;
        v22 = v51;
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v48 + 8))(v36, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v53)(v22, v11);
    }

    else
    {
LABEL_12:
      sub_226EDC474(0);
    }
  }
}

void sub_2275580A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v4 = a3;
  v62 = a2;
  v6 = sub_22766B390();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666170();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v16 = sub_2275374F0(a1, v4, v60);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v60 = v9;
    v61 = v12;
    v53 = v8;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v52 = v6;
      v19 = *(v55 + 16);
      v20 = v61;
      if (v19)
      {
        v22 = v13 + 16;
        v21 = *(v13 + 16);
        v57 = "ManagedCommentaryEvent";
        v58 = v21;
        v23 = v59 + 1;
        v59 = (v13 + 8);
        v24 = v55 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v55 = *(v13 + 72);
        v56 = v23;
        while (1)
        {
          v58(v15, v24, v20);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v62];

          type metadata accessor for ManagedCompletedMarketingVideo();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          sub_227666150();
          v30 = v24;
          v31 = v19;
          v32 = v11;
          v33 = v15;
          v34 = v22;
          v35 = sub_22766BFD0();

          [v29 setIdentifier_];

          v22 = v34;
          v15 = v33;
          v11 = v32;
          v36 = v31;
          v37 = v30;
          sub_227666160();
          v38 = sub_2276626A0();
          (*v56)(v11, v60);
          [v29 setDateWatched_];

          v20 = v61;
          (*v59)(v15, v61);
          v24 = v37 + v55;
          v19 = v36 - 1;
          if (!v19)
          {
            goto LABEL_10;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v53;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v54 + 8))(v42, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v15, v61);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227558724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v60 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227664900();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22753762C(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = v12;
    v59 = v11;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
      swift_willThrow();
      return;
    }

    v52 = v10;
    v53 = v8;
    v54 = v7;
    v19 = *(a1 + 16);
    v20 = v59;
    if (v19)
    {
      v22 = v16 + 16;
      v21 = *(v16 + 16);
      v56 = "zationPrivacyPreference";
      v57 = v21;
      v58 = (v16 + 8);
      v23 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v55 = *(v22 + 56);
      while (1)
      {
        v57(v14, v23, v20);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v60];

        type metadata accessor for ManagedPlaybackVoucher();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        v28 = v27;
        v29 = sub_2276648D0();
        v31 = v30;
        v32 = v22;
        v33 = sub_227662560();
        sub_226EDC420(v29, v31);
        [v28 setFinalizedToken_];

        v34 = sub_2276648C0();
        v36 = v35;
        v37 = sub_227662560();
        sub_226EDC420(v34, v36);
        [v28 setPrivateSeed_];

        sub_2276648F0();
        v38 = sub_22766BFD0();

        [v28 setPublicKeyVersion_];

        sub_2276648B0();
        v39 = sub_22766BFD0();
        v22 = v32;
        v20 = v59;

        [v28 setPublicInfo_];

        (*v58)(v14, v20);
        v23 += v55;
        if (!--v19)
        {
          goto LABEL_11;
        }
      }

      v40 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v41 = swift_allocError();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
      swift_willThrow();
      v43 = v52;
      sub_22766A770();
      v44 = v41;
      v45 = sub_22766B380();
      v46 = sub_22766C8B0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = v41;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_226E8E000, v45, v46, "%@", v47, 0xCu);
        sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v48, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      (*(v53 + 8))(v43, v54);
      swift_willThrow();
      sub_226EDC474(0);
      (*v58)(v14, v59);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227558D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v50 = a2;
  v9 = sub_22766B390();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276640A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227537768(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v43 = v11;
  v44 = v15;
  v17 = v12;
  if (sub_227669C10())
  {
    v18 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
    swift_willThrow();
    return;
  }

  v42 = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = v13 + 16;
    v21 = *(v13 + 16);
    v48 = "ManagedScoreSummary";
    v49 = v21;
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v46 = *(v13 + 72);
    v47 = (v13 + 8);
    v24 = v17;
    v25 = v44;
    while (1)
    {
      v26 = v24;
      v27 = v22;
      v49(v25, v23, v24);
      v28 = objc_opt_self();
      v29 = sub_22766BFD0();
      v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v50];

      type metadata accessor for ManagedSessionScores();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {

        v32 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_227105770(v31);
      if (v4)
      {
        break;
      }

      v24 = v26;
      (*v47)(v25, v26);

      v23 += v46;
      --v20;
      v22 = v27;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v34 = v43;
    sub_22766A770();
    v35 = v5;
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v5;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226E8E000, v36, v37, "%@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v45 + 8))(v34, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v47)(v25, v26);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_2275592A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v62 = a2;
  v7 = sub_22766B390();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227666330();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = sub_2275378A4(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v61 = v11;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v58 = v13;
    v50 = v9;
    v51 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v61;
    v54 = v61 + 32;
    v55 = v61 + 16;
    v53 = "lterPropertyType";
    v56 = (v61 + 8);

    v26 = 0;
    v52 = a1 + 56;
    v57 = a1;
    if (v23)
    {
      while (1)
      {
        v27 = v26;
LABEL_14:
        v28 = *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v27 << 6));
        v29 = v59;
        (*(v25 + 16))(v59, v28, v10);
        v30 = v58;
        (*(v25 + 32))(v58, v29, v10);
        v31 = objc_opt_self();
        v32 = v10;
        v33 = sub_22766BFD0();
        v34 = [v31 insertNewObjectForEntityForName:v33 inManagedObjectContext:v62];

        type metadata accessor for ManagedCatalogMetadataJournal();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          break;
        }

        v36 = v35;
        v23 &= v23 - 1;
        sub_227666310();
        v37 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227666320();
        [v36 setTimestamp_];

        (*v56)(v30, v32);
        v26 = v27;
        a1 = v57;
        v10 = v32;
        v25 = v61;
        v20 = v52;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v38 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v39 = swift_allocError();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
      swift_willThrow();
      v41 = v50;
      sub_22766A770();
      v42 = v39;
      v43 = sub_22766B380();
      v44 = sub_22766C8B0();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v39;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v43, v44, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v60 + 8))(v41, v51);
      swift_willThrow();

      sub_226EDC474(0);
      (*v56)(v58, v32);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_2275598DC(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666B60();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22753800C(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedCatalogWorkoutMetadata";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedCatalogWorkoutReference();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2273F99AC(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227559E18(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276664D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227537ED0(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedCatalogTipReference";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedCatalogWorkoutMetadata();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2271515C4(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755A354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v50 = a2;
  v9 = sub_22766B390();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664EB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227537B1C(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v43 = v11;
  v44 = v15;
  v17 = v12;
  if (sub_227669C10())
  {
    v18 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
    swift_willThrow();
    return;
  }

  v42 = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = v13 + 16;
    v21 = *(v13 + 16);
    v48 = "ManagedTrainerMetadata";
    v49 = v21;
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v46 = *(v13 + 72);
    v47 = (v13 + 8);
    v24 = v17;
    v25 = v44;
    while (1)
    {
      v26 = v24;
      v27 = v22;
      v49(v25, v23, v24);
      v28 = objc_opt_self();
      v29 = sub_22766BFD0();
      v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v50];

      type metadata accessor for ManagedTrainerReference();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {

        v32 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_22750B934(v31);
      if (v4)
      {
        break;
      }

      v24 = v26;
      (*v47)(v25, v26);

      v23 += v46;
      --v20;
      v22 = v27;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v34 = v43;
    sub_22766A770();
    v35 = v5;
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v5;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226E8E000, v36, v37, "%@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v45 + 8))(v34, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v47)(v25, v26);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755A880(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664A10();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2275379E0(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedTrainerIdentifier";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedTrainerMetadata();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_22750A3AC(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755ADBC(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666FF0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227537D94(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedCatalogModalityMetadata";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedCatalogModalityReference();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_227335928(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755B2F8(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666980();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227537C58(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedCatalogModalityFeature";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedCatalogModalityMetadata();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2272C4068(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227666B60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_227538284(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v16;
    v56 = v9;
    v64 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v55 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v58 = v11 + 32;
    v59 = v11 + 16;
    v57 = "ManagedCatalogWorkoutMetadata";
    v60 = (v11 + 8);
    v61 = a1;

    v25 = 0;
    v26 = v64;
    v27 = v13;
    v28 = v66;
    v29 = v62;
    if (v23)
    {
      while (1)
      {
        v66 = v28;
        v30 = v25;
        v31 = v11;
LABEL_16:
        v32 = v29;
        (*(v31 + 16))(v29, *(v61 + 48) + *(v31 + 72) * (__clz(__rbit64(v23)) | (v30 << 6)), v26);
        (*(v31 + 32))(v27, v32, v26);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = v33;
        v36 = v65;
        v37 = [v35 insertNewObjectForEntityForName:v34 inManagedObjectContext:v65];

        type metadata accessor for ManagedCatalogWorkoutReference();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {

          v40 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v28 = swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51000], v40);
          swift_willThrow();
          goto LABEL_24;
        }

        v39 = v66;
        sub_2273F99AC(v38, v36);
        v28 = v39;
        if (v39)
        {
          break;
        }

        v23 &= v23 - 1;
        v26 = v64;
        (*v60)(v27, v64);

        v25 = v30;
        v29 = v62;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v42 = v56;
      sub_22766A770();
      v43 = v28;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v55;
      v48 = v63;
      if (v46)
      {
        v49 = v28;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v49;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v50, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      (*(v48 + 8))(v42, v47);
      swift_willThrow();

      sub_226EDC474(0);
      (*v60)(v27, v64);
    }

    else
    {
LABEL_11:
      v31 = v11;
      while (1)
      {
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          v66 = v28;
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v25;
        if (v23)
        {
          v66 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22755BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227666A40();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_2275383C0(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v16;
    v56 = v9;
    v64 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v55 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v58 = v11 + 32;
    v59 = v11 + 16;
    v57 = "ManagedCatalogPreview";
    v60 = (v11 + 8);
    v61 = a1;

    v25 = 0;
    v26 = v64;
    v27 = v13;
    v28 = v66;
    v29 = v62;
    if (v23)
    {
      while (1)
      {
        v66 = v28;
        v30 = v25;
        v31 = v11;
LABEL_16:
        v32 = v29;
        (*(v31 + 16))(v29, *(v61 + 48) + *(v31 + 72) * (__clz(__rbit64(v23)) | (v30 << 6)), v26);
        (*(v31 + 32))(v27, v32, v26);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = v33;
        v36 = v65;
        v37 = [v35 insertNewObjectForEntityForName:v34 inManagedObjectContext:v65];

        type metadata accessor for ManagedCatalogProgramReference();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {

          v40 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v28 = swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51000], v40);
          swift_willThrow();
          goto LABEL_24;
        }

        v39 = v66;
        sub_227535488(v38, v36);
        v28 = v39;
        if (v39)
        {
          break;
        }

        v23 &= v23 - 1;
        v26 = v64;
        (*v60)(v27, v64);

        v25 = v30;
        v29 = v62;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v42 = v56;
      sub_22766A770();
      v43 = v28;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v55;
      v48 = v63;
      if (v46)
      {
        v49 = v28;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v49;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v50, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      (*(v48 + 8))(v42, v47);
      swift_willThrow();

      sub_226EDC474(0);
      (*v60)(v27, v64);
    }

    else
    {
LABEL_11:
      v31 = v11;
      while (1)
      {
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          v66 = v28;
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v25;
        if (v23)
        {
          v66 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22755C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a2;
  v75 = a4;
  v4 = a3;
  v6 = sub_22766B390();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227662190();
  v71 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276658B0();
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v17 = a1;
  v18 = sub_2275384FC(a1, v4, v75);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v65 = v8;
    v66 = v16;
    v64 = v10;
    v67 = v13;
    if (sub_227669C10())
    {
      v19 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
LABEL_6:
      swift_willThrow();
      return;
    }

    v75 = v11;
    v21 = a1;
    v22 = *(a1 + 56);
    v58 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v57 = (v23 + 63) >> 6;
    v26 = v72;
    v62 = v72 + 32;
    v63 = v72 + 16;
    v61 = "ManagedCatalogTipJournal";
    v59 = v71 + 1;
    v71 = (v72 + 8);

    v27 = 0;
    v28 = v67;
    v29 = v74;
    v60 = v17;
    v30 = v66;
    if (v25)
    {
      while (1)
      {
        v31 = v27;
LABEL_16:
        v32 = v75;
        (*(v26 + 16))(v30, *(v21 + 48) + *(v26 + 72) * (__clz(__rbit64(v25)) | (v31 << 6)), v75);
        (*(v26 + 32))(v28, v30, v32);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v73];

        type metadata accessor for ManagedCatalogTipReference();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v45 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v29 = swift_allocError();
          (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51000], v45);
          swift_willThrow();
          goto LABEL_24;
        }

        v37 = v36;
        sub_227665880();
        v38 = sub_22766BFD0();

        [v37 setIdentifier_];

        v39 = sub_2276658A0();
        v40 = sub_2275335E8(v39);
        if (v29)
        {
          break;
        }

        sub_227533858(v73, v40);
        v29 = 0;
        v42 = v41;

        [v37 setCategoryIdentifiers_];

        v43 = v64;
        v28 = v67;
        sub_227665890();
        sub_2276620E0();
        v25 &= v25 - 1;
        (*v59)(v43, v65);
        v44 = sub_22766BFD0();

        [v37 setDateReleased_];

        (*v71)(v28, v75);
        v27 = v31;
        v21 = v60;
        v26 = v72;
        v30 = v66;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v47 = v68;
      sub_22766A770();
      v48 = v29;
      v49 = sub_22766B380();
      v50 = sub_22766C8B0();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v75;
      if (v51)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        v55 = v29;
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 4) = v56;
        *v54 = v56;
        _os_log_impl(&dword_226E8E000, v49, v50, "%@", v53, 0xCu);
        sub_226E97D1C(v54, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v54, -1, -1);
        MEMORY[0x22AA9A450](v53, -1, -1);
      }

      (*(v69 + 8))(v47, v70);
      swift_willThrow();

      sub_226EDC474(0);
      (*v71)(v67, v52);
    }

    else
    {
LABEL_11:
      v74 = v29;
      while (1)
      {
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v31 >= v57)
        {
          sub_226EDC474(0);

          return;
        }

        v25 = *(v58 + 8 * v31);
        ++v27;
        if (v25)
        {
          v29 = v74;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22755CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227664EB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_227538148(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v54 = v9;
    v62 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v53 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v56 = v11 + 32;
    v57 = v11 + 16;
    v55 = "ManagedTrainerMetadata";
    v58 = (v11 + 8);
    v59 = a1;

    v25 = 0;
    v26 = v62;
    v27 = v13;
    v28 = v64;
    v29 = v60;
    if (v23)
    {
      while (1)
      {
        v64 = v28;
        v30 = v25;
        v31 = v11;
LABEL_16:
        v32 = v29;
        (*(v31 + 16))(v29, *(v59 + 48) + *(v31 + 72) * (__clz(__rbit64(v23)) | (v30 << 6)), v26);
        (*(v31 + 32))(v27, v32, v26);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v63];

        type metadata accessor for ManagedTrainerReference();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v38 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v28 = swift_allocError();
          (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51000], v38);
          swift_willThrow();
          goto LABEL_24;
        }

        v37 = v64;
        sub_22750B934(v36);
        v28 = v37;
        if (v37)
        {
          break;
        }

        v23 &= v23 - 1;
        v26 = v62;
        (*v58)(v27, v62);

        v25 = v30;
        v29 = v60;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v40 = v54;
      sub_22766A770();
      v41 = v28;
      v42 = sub_22766B380();
      v43 = sub_22766C8B0();

      v44 = os_log_type_enabled(v42, v43);
      v45 = v53;
      v46 = v61;
      if (v44)
      {
        v47 = swift_slowAlloc();
        v48 = v28;
        v49 = swift_slowAlloc();
        *v47 = 138412290;
        v50 = v48;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_226E8E000, v42, v43, "%@", v47, 0xCu);
        sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v49, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      (*(v46 + 8))(v40, v45);
      swift_willThrow();

      sub_226EDC474(0);
      (*v58)(v27, v62);
    }

    else
    {
LABEL_11:
      v31 = v11;
      while (1)
      {
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          v64 = v28;
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v25;
        if (v23)
        {
          v64 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22755D250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v4 = a3;
  v63 = a2;
  v6 = sub_22766B390();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_227665010();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227665030();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227538638(a1, v4, v64);
  if (v17)
  {
    if (v17 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v59 = v12;
    v60 = v10;
    v61 = v9;
    v49 = v13;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
      swift_willThrow();
    }

    else
    {
      v20 = *(a1 + 16);
      v21 = v49;
      if (v20)
      {
        v22 = *(v14 + 16);
        v56 = "ManagedCatalogProgramReference";
        v57 = v22;
        v54 = v58 + 1;
        ++v55;
        v58 = (v14 + 8);
        v23 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v53 = *(v14 + 72);
        while (1)
        {
          v57(v16, v23, v21);
          v24 = objc_opt_self();
          v25 = sub_22766BFD0();
          v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v63];

          type metadata accessor for ManagedCatalogSyncAnchor();
          v27 = swift_dynamicCastClass();
          if (!v27)
          {
            break;
          }

          v28 = v27;
          sub_227664FC0();
          v29 = sub_22766BFD0();
          v64 = v20;
          v30 = v29;

          [v28 setBuild_];

          v31 = v59;
          sub_227664FA0();
          v32 = sub_2276626A0();
          (*v55)(v31, v60);
          [v28 setDate_];

          v33 = v61;
          sub_227665020();
          sub_227665000();
          (*v54)(v33, v62);
          v34 = sub_22766BFD0();

          [v28 setStatus_];

          sub_227664FD0();
          v35 = sub_22766BFD0();

          [v28 setToken_];

          v36 = v64;
          (*v58)(v16, v21);
          v23 += v53;
          v20 = v36 - 1;
          if (!v20)
          {
            goto LABEL_10;
          }
        }

        v37 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v38 = swift_allocError();
        (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D51000], v37);
        swift_willThrow();
        v40 = v50;
        sub_22766A770();
        v41 = v38;
        v42 = sub_22766B380();
        v43 = sub_22766C8B0();
        v44 = v38;

        if (os_log_type_enabled(v42, v43))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          v47 = v44;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *v46 = v48;
          _os_log_impl(&dword_226E8E000, v42, v43, "%@", v45, 0xCu);
          sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v46, -1, -1);
          MEMORY[0x22AA9A450](v45, -1, -1);
        }

        (*(v51 + 8))(v40, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v58)(v16, v49);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_22755D9CC(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664530();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227539290(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedAlternativeActivityType";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedArchivedSession();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2272187F4(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v51 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227667E50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2275393CC(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v45 = v10;
    v46 = v11;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v43 = v8;
    v44 = v7;
    v18 = *(a1 + 16);
    v19 = v46;
    if (v18)
    {
      v21 = *(v12 + 16);
      v20 = v12 + 16;
      v48 = "wsingConnectionRecord";
      v49 = v21;
      v50 = (v20 - 8);
      v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v47 = *(v20 + 56);
      while (1)
      {
        v49(v14, v22, v19);
        v23 = objc_opt_self();
        v24 = sub_22766BFD0();
        v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v51];

        type metadata accessor for ManagedSampleContentArchivedSession();
        v26 = swift_dynamicCastClass();
        if (!v26)
        {
          break;
        }

        v27 = v26;
        sub_227667E40();
        v28 = sub_22766BFD0();

        [v27 setWorkoutIdentifier_];

        sub_227667E20();
        v29 = sub_22766BFD0();

        [v27 setSessionIdentifier_];

        (*v50)(v14, v19);
        v22 += v47;
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      v30 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v31 = swift_allocError();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D51000], v30);
      swift_willThrow();
      v33 = v45;
      sub_22766A770();
      v34 = v31;
      v35 = sub_22766B380();
      v36 = sub_22766C8B0();
      v37 = v31;

      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v37;
        v19 = v46;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_226E8E000, v35, v36, "%@", v38, 0xCu);
        sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v39, -1, -1);
        MEMORY[0x22AA9A450](v38, -1, -1);
      }

      (*(v43 + 8))(v33, v44);
      swift_willThrow();
      sub_226EDC474(0);
      (*v50)(v14, v19);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_22755E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v4 = a3;
  v59 = a2;
  v6 = sub_22766B390();
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276652D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v16 = sub_227539508(a1, v4, v58);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v57 = v11;
    v58 = v9;
    v49 = v8;
    v50 = v12;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v48 = v6;
      v19 = *(v52 + 16);
      v20 = v50;
      if (v19)
      {
        v22 = v13 + 16;
        v21 = *(v13 + 16);
        v54 = "ManagedPrivacyAcknowledgement";
        v55 = v21;
        v23 = v56 + 1;
        v56 = (v13 + 8);
        v24 = v52 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v52 = *(v13 + 72);
        v53 = v23;
        while (1)
        {
          v55(v15, v24, v20);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v59];

          type metadata accessor for ManagedProgramCompletion();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          sub_227665290();
          v30 = v22;
          v31 = sub_22766BFD0();

          [v29 setIdentifier_];

          sub_2276652B0();
          v32 = sub_22766BFD0();

          [v29 setProgramIdentifier_];

          sub_2276652C0();
          v33 = sub_22766BFD0();

          [v29 setCompletingSessionIdentifier_];

          v22 = v30;
          v34 = v57;
          sub_2276652A0();
          v35 = sub_2276626A0();
          (*v53)(v34, v58);
          [v29 setCompletionDate_];

          (*v56)(v15, v20);
          v24 += v52;
          if (!--v19)
          {
            goto LABEL_10;
          }
        }

        v36 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
        swift_willThrow();
        v39 = v49;
        sub_22766A770();
        v40 = v37;
        v41 = sub_22766B380();
        v42 = sub_22766C8B0();
        v43 = v37;

        if (os_log_type_enabled(v41, v42))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = v43;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          *v45 = v47;
          _os_log_impl(&dword_226E8E000, v41, v42, "%@", v44, 0xCu);
          sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v44, -1, -1);
        }

        (*(v51 + 8))(v39, v48);
        swift_willThrow();
        sub_226EDC474(0);
        (*v56)(v15, v50);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_22755EB94(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227667A70();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227539644(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "com.apple.hls.keys";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedAchievementEnvironmentCache();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_226F94E58(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755F0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v56 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666710();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227539780(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v50 = v10;
    v51 = v14;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v48 = v8;
    v49 = v7;
    v18 = *(a1 + 16);
    if (v18)
    {
      v20 = v12 + 16;
      v19 = *(v12 + 16);
      v54 = "ManagedPlaylistItem";
      v55 = v19;
      v21 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v52 = *(v12 + 72);
      v53 = (v12 + 8);
      v22 = v51;
      while (1)
      {
        v23 = v20;
        v55(v22, v21, v11);
        v24 = objc_opt_self();
        v25 = v22;
        v26 = sub_22766BFD0();
        v27 = v56;
        v28 = [v24 insertNewObjectForEntityForName:v26 inManagedObjectContext:v56];

        type metadata accessor for ManagedPrivacyAcknowledgement();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {

          v33 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v34 = swift_allocError();
          (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
          swift_willThrow();
          v22 = v25;
          goto LABEL_16;
        }

        v30 = v29;
        v31 = sub_226EB1040(&qword_2813A5698, MEMORY[0x277D52578], &unk_2276774F0);
        v32 = v57;
        (*(v31 + 64))(v30, v27, v11, v31);
        v22 = v25;
        v57 = v32;
        if (v32)
        {
          break;
        }

        (*v53)(v25, v11);

        v21 += v52;
        --v18;
        v20 = v23;
        if (!v18)
        {
          goto LABEL_12;
        }
      }

      v34 = v57;
LABEL_16:
      v36 = v50;
      sub_22766A770();
      v37 = v34;
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v49;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v34;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v38, v39, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        v46 = v42;
        v22 = v51;
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v48 + 8))(v36, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v53)(v22, v11);
    }

    else
    {
LABEL_12:
      sub_226EDC474(0);
    }
  }
}

void sub_22755F690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v61 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227668A00();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2275398BC(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v14;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v52 = v10;
    v53 = v8;
    v54 = v7;
    v18 = *(a1 + 16);
    v19 = v60;
    if (v18)
    {
      v21 = v12 + 16;
      v20 = *(v12 + 16);
      v58 = "ManagedOnboardingSurveyResult";
      v59 = v20;
      v56 = v12 + 16;
      v57 = (v12 + 8);
      v22 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v55 = *(v21 + 56);
      while (1)
      {
        v59(v19, v22, v11);
        v23 = objc_opt_self();
        v24 = sub_22766BFD0();
        v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v61];

        type metadata accessor for ManagedPersonalizationPrivacyPreference();
        v26 = swift_dynamicCastClass();
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v63 = sub_2276689C0();
        LOBYTE(v64) = v28 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE158, &unk_227688CA0);
        sub_227663AD0();
        if (v62 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        if (v62 > 0x7FFFFFFF)
        {
          goto LABEL_19;
        }

        [v27 setState_];
        v29 = sub_2276689F0();
        v66 = v22;
        v30 = v29;
        v32 = v31;
        v63 = v29;
        v64 = v31;
        v33 = v11;
        v35 = v34 & 1;
        v65 = v34 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
        sub_227663AD0();
        v36 = sub_22766BFD0();
        v37 = v30;
        v38 = v66;
        v39 = v35;
        v11 = v33;
        sub_226EB2DFC(v37, v32, v39);

        [v27 setVersion_];

        v19 = v60;
        (*v57)(v60, v33);
        v22 = v38 + v55;
        if (!--v18)
        {
          goto LABEL_13;
        }
      }

      v40 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v41 = swift_allocError();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
      swift_willThrow();
      v43 = v52;
      sub_22766A770();
      v44 = v41;
      v45 = sub_22766B380();
      v46 = sub_22766C8B0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = v41;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_226E8E000, v45, v46, "%@", v47, 0xCu);
        sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
        v51 = v48;
        v19 = v60;
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      (*(v53 + 8))(v43, v54);
      swift_willThrow();
      sub_226EDC474(0);
      (*v57)(v19, v11);
    }

    else
    {
LABEL_13:
      sub_226EDC474(0);
    }
  }
}

void sub_22755FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v50 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276668F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2275399F8(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v44 = v10;
    v45 = v11;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v42 = v8;
    v43 = v7;
    v18 = *(a1 + 16);
    v19 = v45;
    if (v18)
    {
      v21 = *(v12 + 16);
      v20 = v12 + 16;
      v47 = "eetAcknowledgment";
      v48 = v21;
      v49 = (v20 - 8);
      v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v46 = *(v20 + 56);
      while (1)
      {
        v48(v14, v22, v19);
        v23 = objc_opt_self();
        v24 = sub_22766BFD0();
        v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v50];

        type metadata accessor for ManagedAudioLanguagePreference();
        v26 = swift_dynamicCastClass();
        if (!v26)
        {
          break;
        }

        v27 = v26;
        sub_2276668E0();
        v28 = sub_22766BFD0();

        [v27 setLanguageIdentifier_];

        sub_2276668C0();
        [v27 setMachTimestamp_];

        (*v49)(v14, v19);
        v22 += v46;
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      v29 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v30 = swift_allocError();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D51000], v29);
      swift_willThrow();
      v32 = v44;
      sub_22766A770();
      v33 = v30;
      v34 = sub_22766B380();
      v35 = sub_22766C8B0();
      v36 = v30;

      if (os_log_type_enabled(v34, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = v36;
        v19 = v45;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v40;
        *v38 = v40;
        _os_log_impl(&dword_226E8E000, v34, v35, "%@", v37, 0xCu);
        sub_226E97D1C(v38, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v38, -1, -1);
        MEMORY[0x22AA9A450](v37, -1, -1);
      }

      (*(v42 + 8))(v32, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v49)(v14, v19);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227560274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v4 = a3;
  v69 = a2;
  v6 = sub_22766B390();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227668D10();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666F20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v16 = sub_227539B34(a1, v4, v65);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v62 = v11;
    v63 = v9;
    v64 = v15;
    v65 = v12;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v53 = v8;
      v54 = v6;
      v19 = *(v56 + 16);
      v21 = v64;
      v20 = v65;
      if (v19)
      {
        v22 = *(v13 + 16);
        v59 = "Identifier";
        v60 = v22;
        v23 = v61 + 1;
        v61 = (v13 + 8);
        v24 = v56 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v56 = *(v13 + 72);
        v57 = v23;
        v58 = v13 + 16;
        while (1)
        {
          v60(v21, v24, v20);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v69];

          type metadata accessor for ManagedBurnBarDisplayPreference();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          v30 = sub_227666F10();
          v32 = v31;
          v66 = v30;
          v67 = v31;
          v34 = v33 & 1;
          v68 = v33 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBC8, &qword_22768B7D0);
          sub_227663AD0();
          v35 = sub_22766BFD0();
          v36 = v30;
          v37 = v34;
          v21 = v64;
          v20 = v65;
          sub_226EB2DFC(v36, v32, v37);

          [v29 setBehavior_];

          v38 = v62;
          sub_227666EF0();
          sub_227668D00();
          (*v57)(v38, v63);
          v39 = sub_22766BFD0();

          [v29 setModalityConstraint_];

          (*v61)(v21, v20);
          v24 += v56;
          if (!--v19)
          {
            goto LABEL_10;
          }
        }

        v40 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
        swift_willThrow();
        v43 = v53;
        sub_22766A770();
        v44 = v41;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();
        v47 = v41;

        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v47;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v48, 0xCu);
          sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v49, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        (*(v55 + 8))(v43, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v21, v20);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227560934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v4 = a3;
  v69 = a2;
  v6 = sub_22766B390();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227668D10();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227667170();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v16 = sub_227539C70(a1, v4, v65);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v62 = v11;
    v63 = v9;
    v64 = v15;
    v65 = v12;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v53 = v8;
      v54 = v6;
      v19 = *(v56 + 16);
      v21 = v64;
      v20 = v65;
      if (v19)
      {
        v22 = *(v13 + 16);
        v59 = "ManagedMeditationActivityType";
        v60 = v22;
        v23 = v61 + 1;
        v61 = (v13 + 8);
        v24 = v56 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v56 = *(v13 + 72);
        v57 = v23;
        v58 = v13 + 16;
        while (1)
        {
          v60(v21, v24, v20);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v69];

          type metadata accessor for ManagedMetricsDisplayPreference();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          v30 = sub_227667160();
          v32 = v31;
          v66 = v30;
          v67 = v31;
          v34 = v33 & 1;
          v68 = v33 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB10, &qword_22768B7C0);
          sub_227663AD0();
          v35 = sub_22766BFD0();
          v36 = v30;
          v37 = v34;
          v21 = v64;
          v20 = v65;
          sub_226EB2DFC(v36, v32, v37);

          [v29 setBehavior_];

          v38 = v62;
          sub_227667140();
          sub_227668D00();
          (*v57)(v38, v63);
          v39 = sub_22766BFD0();

          [v29 setModalityConstraint_];

          (*v61)(v21, v20);
          v24 += v56;
          if (!--v19)
          {
            goto LABEL_10;
          }
        }

        v40 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
        swift_willThrow();
        v43 = v53;
        sub_22766A770();
        v44 = v41;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();
        v47 = v41;

        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v47;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v48, 0xCu);
          sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v49, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        (*(v55 + 8))(v43, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v21, v20);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227560FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v4 = a3;
  v69 = a2;
  v6 = sub_22766B390();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227668D10();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276675F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v16 = sub_227539DAC(a1, v4, v65);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v62 = v11;
    v63 = v9;
    v64 = v15;
    v65 = v12;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v53 = v8;
      v54 = v6;
      v19 = *(v56 + 16);
      v21 = v64;
      v20 = v65;
      if (v19)
      {
        v22 = *(v13 + 16);
        v59 = "ManagedProgramCompletion";
        v60 = v22;
        v23 = v61 + 1;
        v61 = (v13 + 8);
        v24 = v56 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v56 = *(v13 + 72);
        v57 = v23;
        v58 = v13 + 16;
        while (1)
        {
          v60(v21, v24, v20);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v69];

          type metadata accessor for ManagedProgressDisplayPreference();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          v30 = sub_2276675E0();
          v32 = v31;
          v66 = v30;
          v67 = v31;
          v34 = v33 & 1;
          v68 = v33 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBF0, &qword_22768B7B0);
          sub_227663AD0();
          v35 = sub_22766BFD0();
          v36 = v30;
          v37 = v34;
          v21 = v64;
          v20 = v65;
          sub_226EB2DFC(v36, v32, v37);

          [v29 setBehavior_];

          v38 = v62;
          sub_2276675C0();
          sub_227668D00();
          (*v57)(v38, v63);
          v39 = sub_22766BFD0();

          [v29 setModalityConstraint_];

          (*v61)(v21, v20);
          v24 += v56;
          if (!--v19)
          {
            goto LABEL_10;
          }
        }

        v40 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
        swift_willThrow();
        v43 = v53;
        sub_22766A770();
        v44 = v41;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();
        v47 = v41;

        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v47;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v48, 0xCu);
          sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v49, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        (*(v55 + 8))(v43, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v21, v20);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}
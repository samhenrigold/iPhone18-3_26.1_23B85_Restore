uint64_t objectdestroy_27Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_26BA72630()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50, &unk_26BA9DBF0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_26BA69A28(v2, v3);
}

uint64_t sub_26BA726A0(uint64_t a1)
{
  v2 = sub_26BA9B28C();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9B2BC();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9AD5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
  v12 = sub_26BA9BA0C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_26BA76DD4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_207;
  v16 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v7, v4, v16);
  _Block_release(v16);

  (*(v21 + 8))(v4, v2);
  return (*(v19 + 8))(v7, v20);
}

void sub_26BA72A48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x398))();
    sub_26BA6947C(v2);
  }
}

uint64_t sub_26BA72B08(void *a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
  v5 = a1;

  return sub_26BA9BA6C();
}

unint64_t sub_26BA72B64()
{
  result = qword_280435E70;
  if (!qword_280435E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435E70);
  }

  return result;
}

uint64_t sub_26BA72BB8(void *a1)
{
  v3 = sub_26BA9AF5C();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v58 = &v49[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30, &unk_26BA9D4F0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v49[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08, qword_26BA9E430);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v49[-v18];
  v20 = *(v6 + 16);
  v52 = v6 + 16;
  v53 = a1;
  v51 = v20;
  v20(&v49[-v18], a1, v5);
  (*(v6 + 56))(v19, 0, 1, v5);
  v21 = OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_addingStickerIdentifier;
  swift_beginAccess();
  v22 = *(v11 + 56);
  sub_26BA53EF8(v19, v13, &qword_280435B08, qword_26BA9E430);
  sub_26BA53EF8(v1 + v21, &v13[v22], &qword_280435B08, qword_26BA9E430);
  v23 = v6;
  v24 = *(v6 + 48);
  if (v24(v13, 1, v5) != 1)
  {
    sub_26BA53EF8(v13, v17, &qword_280435B08, qword_26BA9E430);
    if (v24(&v13[v22], 1, v5) != 1)
    {
      v26 = v58;
      (*(v23 + 32))(v58, &v13[v22], v5);
      sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v50 = sub_26BA9B67C();
      v27 = *(v23 + 8);
      v27(v26, v5);
      sub_26BA3E6F8(v19, &qword_280435B08, qword_26BA9E430);
      v27(v17, v5);
      result = sub_26BA3E6F8(v13, &qword_280435B08, qword_26BA9E430);
      if ((v50 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_26BA3E6F8(v19, &qword_280435B08, qword_26BA9E430);
    (*(v6 + 8))(v17, v5);
    return sub_26BA3E6F8(v13, &qword_280435E30, &unk_26BA9D4F0);
  }

  sub_26BA3E6F8(v19, &qword_280435B08, qword_26BA9E430);
  if (v24(&v13[v22], 1, v5) != 1)
  {
    return sub_26BA3E6F8(v13, &qword_280435E30, &unk_26BA9D4F0);
  }

  result = sub_26BA3E6F8(v13, &qword_280435B08, qword_26BA9E430);
LABEL_8:
  v28 = (v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
  v29 = *(v1 + OBJC_IVAR____TtC10StickersUI31StickerCollectionViewController_completionHandlerWaitingForStickerDisplay);
  if (v29)
  {
    v30 = v28[1];
    v31 = *((*MEMORY[0x277D85000] & *v1) + 0x178);

    v33 = v55;
    v31(v32);
    v34 = v54;
    v51(v54, v53, v5);
    v35 = sub_26BA9AF3C();
    v36 = sub_26BA9B92C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v58 = v30;
      v38 = v37;
      v53 = swift_slowAlloc();
      v59 = v53;
      *v38 = 136315138;
      sub_26BA70C0C(&unk_280435D90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v39 = sub_26BA9BE2C();
      v40 = v34;
      v42 = v41;
      (*(v23 + 8))(v40, v5);
      v43 = sub_26BA3DFF8(v39, v42, &v59);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_26BA33000, v35, v36, "Did display sticker %s; calling UIKit callback", v38, 0xCu);
      v44 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x26D68BFB0](v44, -1, -1);
      v45 = v38;
      v30 = v58;
      MEMORY[0x26D68BFB0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v34, v5);
    }

    v46 = (*(v56 + 8))(v33, v57);
    v29(v46);
    sub_26BA36050(v29, v30);
    v47 = *v28;
    v48 = v28[1];
    *v28 = 0;
    v28[1] = 0;
    return sub_26BA36050(v47, v48);
  }

  return result;
}

id sub_26BA73284(void *a1)
{
  v196 = sub_26BA9AF5C();
  v195 = *(v196 - 8);
  v3 = MEMORY[0x28223BE20](v196);
  v172 = v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v166 - v6;
  MEMORY[0x28223BE20](v5);
  v188 = v166 - v8;
  v180 = sub_26BA9B42C();
  v179 = *(v180 - 8);
  v9 = MEMORY[0x28223BE20](v180);
  v177 = v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v176 = v166 - v11;
  v182 = sub_26BA9B46C();
  v175 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v174 = v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30, &unk_26BA9D4F0);
  MEMORY[0x28223BE20](v13);
  v186 = v166 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08, qword_26BA9E430);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v173 = v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v184 = v166 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v185 = v166 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v166 - v22;
  v189 = sub_26BA9AD5C();
  v193 = *(v189 - 8);
  v24 = MEMORY[0x28223BE20](v189);
  v178 = v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v183 = v166 - v27;
  v181 = v28;
  MEMORY[0x28223BE20](v26);
  v190 = v166 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8, &unk_26BA9DE30);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = v166 - v34;
  v36 = sub_26BA9AE2C();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v187 = v166 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v194 = v166 - v40;
  v41 = [v1 collectionView];
  if (!v41)
  {
    (*(v37 + 56))(v35, 1, 1, v36);
    v48 = MEMORY[0x277D85000];
LABEL_7:
    v50 = sub_26BA3E6F8(v35, &qword_280435DA8, &unk_26BA9DE30);
    (*((*v48 & *v1) + 0x178))(v50);
    v51 = a1;
    v52 = sub_26BA9AF3C();
    v53 = sub_26BA9B93C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v201 = v55;
      *v54 = 136315138;
      [v51 sourcePoint];
      v56 = sub_26BA9BAAC();
      v58 = sub_26BA3DFF8(v56, v57, &v201);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_26BA33000, v52, v53, "No index path for item at %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x26D68BFB0](v55, -1, -1);
      MEMORY[0x26D68BFB0](v54, -1, -1);
    }

    (*(v195 + 8))(v7, v196);
    return 0;
  }

  v42 = v41;
  v191 = v37;
  v192 = v36;
  [a1 sourcePoint];
  v43 = [v42 indexPathForItemAtPoint_];

  if (v43)
  {
    sub_26BA9ADDC();

    v44 = v191;
    v45 = *(v191 + 56);
    v46 = v33;
    v47 = 0;
  }

  else
  {
    v44 = v191;
    v45 = *(v191 + 56);
    v46 = v33;
    v47 = 1;
  }

  v49 = v192;
  v45(v46, v47, 1, v192);
  v48 = MEMORY[0x277D85000];
  sub_26BA769B0(v33, v35);
  if ((*(v44 + 48))(v35, 1, v49) == 1)
  {
    goto LABEL_7;
  }

  v60 = v194;
  (*(v44 + 32))(v194, v35, v49);
  v61 = *((*v48 & *v1) + 0x4A8);
  v171 = v1;
  if (v61(v60))
  {
    (*(v44 + 8))(v60, v49);
    return 0;
  }

  result = (*((*v48 & *v171) + 0x380))();
  if (!result)
  {
    __break(1u);
    goto LABEL_84;
  }

  v62 = result;
  sub_26BA9B1CC();

  v63 = v193;
  v64 = *(v193 + 48);
  v65 = v189;
  if (v64(v23, 1, v189) == 1)
  {
    v66 = sub_26BA3E6F8(v23, &qword_280435B08, qword_26BA9E430);
    v67 = v171;
    v68 = MEMORY[0x277D85000];
    goto LABEL_33;
  }

  v69 = *(v63 + 32);
  v70 = v190;
  v169 = v63 + 32;
  v168 = v69;
  v69(v190, v23, v65);
  v71 = v185;
  v167 = *(v63 + 16);
  v167(v185, v70, v65);
  v72 = (*(v63 + 56))(v71, 0, 1, v65);
  v73 = *((*MEMORY[0x277D85000] & *v171) + 0x398);
  v166[1] = (*MEMORY[0x277D85000] & *v171) + 920;
  v166[0] = v73;
  v74 = v73(v72);
  v75 = v184;
  (*(*v74 + 240))(v74);

  v76 = *(v13 + 48);
  v77 = v186;
  sub_26BA53EF8(v71, v186, &qword_280435B08, qword_26BA9E430);
  sub_26BA53EF8(v75, v77 + v76, &qword_280435B08, qword_26BA9E430);
  v78 = v64(v77, 1, v65);
  v170 = v63 + 16;
  if (v78 == 1)
  {
    sub_26BA3E6F8(v75, &qword_280435B08, qword_26BA9E430);
    sub_26BA3E6F8(v71, &qword_280435B08, qword_26BA9E430);
    v79 = v64((v77 + v76), 1, v65);
    v67 = v171;
    v80 = v65;
    if (v79 == 1)
    {
      sub_26BA3E6F8(v77, &qword_280435B08, qword_26BA9E430);
      v68 = MEMORY[0x277D85000];
      v66 = (*(v193 + 8))(v190, v80);
LABEL_32:
      v49 = v192;
      v44 = v191;
      v60 = v194;
LABEL_33:
      v93 = v188;
      (*((*v68 & *v67) + 0x178))(v66);
      v94 = v187;
      (*(v44 + 16))(v187, v60, v49);
      v95 = sub_26BA9AF3C();
      v96 = v44;
      v97 = sub_26BA9B93C();
      if (os_log_type_enabled(v95, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v201 = v99;
        *v98 = 136315138;
        v100 = MEMORY[0x26D68A380]();
        v101 = v94;
        v103 = v102;
        v104 = *(v96 + 8);
        v104(v101, v49);
        v105 = sub_26BA3DFF8(v100, v103, &v201);

        *(v98 + 4) = v105;
        _os_log_impl(&dword_26BA33000, v95, v97, "No identifier for index path %s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x26D68BFB0](v99, -1, -1);
        MEMORY[0x26D68BFB0](v98, -1, -1);

        (*(v195 + 8))(v188, v196);
        v104(v60, v49);
      }

      else
      {

        v106 = *(v96 + 8);
        v106(v94, v49);
        (*(v195 + 8))(v93, v196);
        v106(v60, v49);
      }

      return 0;
    }

    goto LABEL_21;
  }

  v81 = v173;
  sub_26BA53EF8(v77, v173, &qword_280435B08, qword_26BA9E430);
  if (v64((v77 + v76), 1, v65) == 1)
  {
    sub_26BA3E6F8(v75, &qword_280435B08, qword_26BA9E430);
    sub_26BA3E6F8(v71, &qword_280435B08, qword_26BA9E430);
    (*(v193 + 8))(v81, v65);
    v67 = v171;
    v80 = v65;
LABEL_21:
    v82 = sub_26BA3E6F8(v77, &qword_280435E30, &unk_26BA9D4F0);
    v68 = MEMORY[0x277D85000];
    goto LABEL_22;
  }

  v89 = v77 + v76;
  v90 = v183;
  v168(v183, v89, v65);
  sub_26BA70C0C(&qword_280435E40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v91 = sub_26BA9B67C();
  v92 = *(v193 + 8);
  v92(v90, v65);
  sub_26BA3E6F8(v75, &qword_280435B08, qword_26BA9E430);
  sub_26BA3E6F8(v71, &qword_280435B08, qword_26BA9E430);
  v92(v81, v65);
  v82 = sub_26BA3E6F8(v77, &qword_280435B08, qword_26BA9E430);
  v67 = v171;
  v80 = v65;
  v68 = MEMORY[0x277D85000];
  if (v91)
  {
    v66 = (v92)(v190, v80);
    goto LABEL_32;
  }

LABEL_22:
  if ((*((*v68 & *v67) + 0x3D0))(v82))
  {
    v83 = 3;
  }

  else
  {
    v83 = 2;
  }

  if (((*((*v68 & *v67) + 0x3D8))() & 1) == 0)
  {
    v88 = 0;
    v84 = v171;
    v85 = v182;
    goto LABEL_37;
  }

  v84 = v171;
  result = [v171 collectionView];
  v85 = v182;
  if (!result)
  {
LABEL_84:
    __break(1u);
    return result;
  }

  v86 = result;
  v87 = [result numberOfItemsInSection_];

  if (v87 >= v83)
  {
    sub_26BA8C92C();
    sub_26BA3EF64(0, &qword_280436090, 0x277D750C8);
    String.stkLocalized.getter(0x676E617272616552, 0xE900000000000065);
    v107 = sub_26BA9B68C();

    v108 = [objc_opt_self() systemImageNamed_];

    *(swift_allocObject() + 16) = v84;
    v109 = v84;
    v68 = MEMORY[0x277D85000];
    v85 = v182;
    v88 = sub_26BA9BAFC();
    v84 = v171;
  }

  else
  {
    v88 = 0;
  }

LABEL_37:
  v188 = v88;
  v110 = (*((*v68 & *v84) + 0x3E0))();
  v111 = v175;
  v112 = v174;
  if ((v110 & 1) == 0)
  {
    v118 = 0;
    v187 = 0;
    v119 = v171;
LABEL_42:
    v120 = v180;
    v121 = v179;
    goto LABEL_43;
  }

  v113 = (v166[0])();
  (*(v111 + 104))(v112, *MEMORY[0x277D681C0], v85);
  v114 = v190;
  v115 = (*(*v113 + 544))(v190, v112);
  (*(v111 + 8))(v112, v85);

  v187 = 0;
  if (!v115)
  {
    v118 = 0;
    v119 = v171;
    v120 = v180;
    v121 = v179;
    v80 = v189;
    goto LABEL_43;
  }

  v116 = v115;
  v117 = sub_26BA9B41C();
  v80 = v189;
  if ((v117 & 1) == 0)
  {
    sub_26BA9B5EC();
    v151 = sub_26BA9B5DC();
    if (v151 == sub_26BA9B5DC())
    {
      v152 = 0x6566664520646441;
      v153 = 0xEA00000000007463;
    }

    else
    {
      v152 = 0x6666452074696445;
      v153 = 0xEB00000000746365;
    }

    v196 = String.stkLocalized.getter(v152, v153);
    v154 = sub_26BA8C92C();
    v155 = v171;
    if (v154)
    {
      v156 = sub_26BA9B68C();
      v157 = &selRef__systemImageNamed_;
    }

    else
    {
      v156 = sub_26BA9B68C();
      v157 = &selRef_systemImageNamed_;
    }

    v158 = [objc_opt_self() *v157];

    sub_26BA3EF64(0, &qword_280436090, 0x277D750C8);
    v159 = v183;
    v160 = v189;
    v167(v183, v114, v189);
    v161 = (*(v193 + 80) + 24) & ~*(v193 + 80);
    v162 = swift_allocObject();
    *(v162 + 16) = v155;
    v168((v162 + v161), v159, v160);
    v163 = v155;
    v164 = v158;
    v118 = sub_26BA9BAFC();
    v68 = MEMORY[0x277D85000];
    v165 = (*((*MEMORY[0x277D85000] & *v163) + 0x418))();
    if (v165)
    {
      (*(*v165 + 512))(v194, v163);
    }

    v119 = v171;
    v80 = v189;
    goto LABEL_42;
  }

  v118 = 0;
  v119 = v171;
  v120 = v180;
  v121 = v179;
LABEL_43:
  v122 = v176;
  (*((*v68 & *v119) + 0x1D0))(v110);
  v123 = v177;
  (*(v121 + 104))(v177, *MEMORY[0x277D681A0], v120);
  sub_26BA70C0C(&qword_280435C60, MEMORY[0x277D681A8], MEMORY[0x277D681B8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  v124 = *(v121 + 8);
  v124(v123, v120);
  v124(v122, v120);
  if (v201 == v200[3])
  {
    v125 = 0x65766F6D6552;
  }

  else
  {
    v125 = 0x6574656C6544;
  }

  sub_26BA3EF64(0, &qword_280436090, 0x277D750C8);
  String.stkLocalized.getter(v125, 0xE600000000000000);

  v126 = sub_26BA9B68C();
  v127 = [objc_opt_self() _systemImageNamed_];

  v128 = v183;
  v167(v183, v190, v80);
  v129 = (*(v193 + 80) + 24) & ~*(v193 + 80);
  v130 = swift_allocObject();
  *(v130 + 16) = v119;
  v168((v130 + v129), v128, v80);
  v131 = v119;
  v132 = sub_26BA9BAFC();
  if (sub_26BA8C92C())
  {
    v133 = &v197;
    v134 = v188;
    v198[0] = v118;
    v198[1] = v188;
    v198[2] = v132;
    v135 = MEMORY[0x277D84F90];
    v201 = MEMORY[0x277D84F90];
    v136 = v188;
    v137 = v132;
    v138 = v118;
    v139 = 0;
    v140 = v192;
LABEL_48:
    if (v139 <= 3)
    {
      v141 = 3;
    }

    else
    {
      v141 = v139;
    }

    while (v139 != 3)
    {
      if (v141 == v139)
      {
        __break(1u);
        goto LABEL_81;
      }

      v142 = v198[v139++];
      if (v142)
      {
        v143 = v142;
        MEMORY[0x26D68ADA0]();
        if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26BA9B81C();
          v140 = v192;
        }

        sub_26BA9B84C();
        v135 = v201;
        goto LABEL_48;
      }
    }
  }

  else
  {
    v133 = &v199;
    v134 = v188;
    v200[0] = v188;
    v200[1] = v118;
    v200[2] = v132;
    v135 = MEMORY[0x277D84F90];
    v201 = MEMORY[0x277D84F90];
    v144 = v188;
    v145 = v132;
    v146 = v118;
    v139 = 0;
    v140 = v192;
LABEL_58:
    if (v139 <= 3)
    {
      v147 = 3;
    }

    else
    {
      v147 = v139;
    }

    while (v139 != 3)
    {
      if (v147 == v139)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v148 = v200[v139++];
      if (v148)
      {
        v149 = v148;
        MEMORY[0x26D68ADA0]();
        if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26BA9B81C();
          v140 = v192;
        }

        sub_26BA9B84C();
        v135 = v201;
        goto LABEL_58;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436098, &qword_26BA9E1C8);
  swift_arrayDestroy();
  v133 = v194;
  v139 = v190;
  if (v135 >> 62)
  {
LABEL_82:
    sub_26BA3EF64(0, &qword_2804360A0, 0x277D75720);

    v134 = v188;
    sub_26BA9BDAC();
  }

  else
  {

    sub_26BA9BE5C();
    sub_26BA3EF64(0, &qword_2804360A0, 0x277D75720);
  }

  sub_26BA3EF64(0, &qword_2804360A8, 0x277D75710);
  v150 = sub_26BA9BA9C();

  (*(v193 + 8))(v139, v80);
  (*(v191 + 8))(v133, v140);
  return v150;
}

id sub_26BA750D4(void *a1)
{
  v3 = sub_26BA9AF5C();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v55[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8, &unk_26BA9DE30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v55[-v13];
  v15 = sub_26BA9AE2C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v60 = &v55[-v20];
  v21 = [v1 collectionView];
  if (!v21)
  {
    v23 = a1;
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_7:
    v25 = sub_26BA3E6F8(v14, &qword_280435DA8, &unk_26BA9DE30);
    (*((*MEMORY[0x277D85000] & *v1) + 0x178))(v25);
    v26 = v23;
    v27 = sub_26BA9AF3C();
    v28 = sub_26BA9B93C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63 = v30;
      *v29 = 136315138;
      [v26 sourcePoint];
      v31 = sub_26BA9BAAC();
      v33 = sub_26BA3DFF8(v31, v32, &v63);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_26BA33000, v27, v28, "Not able to change target rect for edit menu: No index path for item at %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D68BFB0](v30, -1, -1);
      MEMORY[0x26D68BFB0](v29, -1, -1);
    }

    return (*(v61 + 8))(v6, v62);
  }

  v22 = v21;
  v58 = v19;
  v59 = v8;
  v23 = a1;
  [a1 sourcePoint];
  v24 = [v22 indexPathForItemAtPoint_];

  if (v24)
  {
    sub_26BA9ADDC();

    (*(v16 + 56))(v12, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v12, 1, 1, v15);
  }

  sub_26BA769B0(v12, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  v35 = v60;
  (*(v16 + 32))(v60, v14, v15);
  v36 = v1;
  result = [v1 collectionView];
  if (result)
  {
    v37 = result;
    v38 = sub_26BA9ADCC();
    v39 = [v37 cellForItemAtIndexPath_];

    if (v39)
    {
      [v39 frame];

      return (*(v16 + 8))(v35, v15);
    }

    else
    {
      v40 = v59;
      (*((*MEMORY[0x277D85000] & *v36) + 0x178))();
      v41 = v58;
      (*(v16 + 16))(v58, v35, v15);
      v42 = v23;
      v43 = sub_26BA9AF3C();
      v44 = sub_26BA9B93C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63 = v57;
        *v45 = 136315394;
        sub_26BA70C0C(&qword_280435DC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
        v56 = v44;
        v46 = sub_26BA9BE2C();
        v48 = v47;
        v49 = *(v16 + 8);
        v49(v41, v15);
        v50 = sub_26BA3DFF8(v46, v48, &v63);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        [v42 sourcePoint];
        v51 = sub_26BA9BAAC();
        v53 = sub_26BA3DFF8(v51, v52, &v63);

        *(v45 + 14) = v53;
        _os_log_impl(&dword_26BA33000, v43, v56, "Not able to change target rect for edit menu: NO cell found for indexPath: %s for configuration: %s", v45, 0x16u);
        v54 = v57;
        swift_arrayDestroy();
        MEMORY[0x26D68BFB0](v54, -1, -1);
        MEMORY[0x26D68BFB0](v45, -1, -1);

        (*(v61 + 8))(v59, v62);
      }

      else
      {

        v49 = *(v16 + 8);
        v49(v41, v15);
        (*(v61 + 8))(v40, v62);
      }

      return (v49)(v60, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s10StickersUI31StickerCollectionViewControllerC19editMenuInteraction_011willDismissH3For8animatorySo06UIEdithI0C_So0nH13ConfigurationCSo0nhI9Animating_ptF_0()
{
  v1 = sub_26BA9B28C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9B2BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
  v9 = sub_26BA9BA0C();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_26BA7699C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_177;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA70C0C(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t _s10StickersUI31StickerCollectionViewControllerC17gestureRecognizer_13shouldReceiveSbSo09UIGestureH0C_So7UITouchCtF_0(void *a1)
{
  v3 = sub_26BA9AE2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x200))(v8))
  {
    return 1;
  }

  if (((*((*v11 & *v1) + 0x598))() & 1) == 0)
  {
    return 0;
  }

  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [v1 collectionView];
  [a1 locationInView_];
  v16 = v15;
  v18 = v17;

  v19 = [v13 indexPathForItemAtPoint_];
  if (!v19)
  {
    return 0;
  }

  sub_26BA9ADDC();

  v20 = (*(v4 + 32))(v10, v7, v3);
  v21 = ((*((*v11 & *v1) + 0x3D0))(v20) & 1) == 0 || sub_26BA9ADFC() != 0;
  (*(v4 + 8))(v10, v3);
  return v21;
}

unint64_t sub_26BA75E44()
{
  result = qword_280435E88;
  if (!qword_280435E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435E88);
  }

  return result;
}

void sub_26BA75F04(uint64_t a1)
{
  sub_26BA52DC4(319);
  if (v1 <= 0x3F)
  {
    sub_26BA9B42C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26BA76734(uint64_t a1)
{
  sub_26BA7678C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_26BA7678C()
{
  if (!qword_280435EF0)
  {
    v0 = sub_26BA9AD5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280435EF0);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26BA767E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BA76830(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BA768B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BA768D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BA7693C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BA7695C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26BA769B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8, &unk_26BA9DE30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_84Tm()
{
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BA76B7C()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
  if ((result & 1) == 0)
  {
    v4 = (*((*v2 & *v1) + 0x208))(1);
    v5 = *(*((*v2 & *v1) + 0x398))(v4);
    (*(v5 + 592))();
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_196Tm()
{
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BA76DEC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_26BA9AD5C() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_26BA76E64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BA774D8;

  return sub_26BA70C54(a1, v4);
}

uint64_t sub_26BA76F1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BA71FDC;

  return sub_26BA70C54(a1, v4);
}

void sub_26BA7702C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x277D85000];
  if (Strong)
  {
    v2 = Strong;
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x200))())
    {
      v3 = (*((*v1 & *v2) + 0x208))(0);
      v4 = *(*((*v1 & *v2) + 0x398))(v3);
      (*(v4 + 592))();
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    (*((*v1 & *v5) + 0x510))();
  }
}

void sub_26BA771E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x277D85000];
  if (Strong)
  {
    v2 = Strong;
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x200))())
    {
      v3 = (*((*v1 & *v2) + 0x208))(0);
      v4 = *(*((*v1 & *v2) + 0x398))(v3);
      (*(v4 + 592))();
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    (*((*v1 & *v5) + 0x518))();
  }
}

void sub_26BA7739C()
{
  v1 = *(sub_26BA9AD5C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v0 + v4);

  sub_26BA5D464(v5, v6, v0 + v2, v7, v9, v10, v11);
}

double sub_26BA77528@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26BA77538@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_delegate;
  swift_beginAccess();
  return sub_26BA77590(v1 + v3, a1);
}

uint64_t sub_26BA77590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804361E8, &unk_26BA9E270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BA77600(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_delegate;
  swift_beginAccess();
  sub_26BA77660(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26BA77660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804361E8, &unk_26BA9E270);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_26BA77758(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_26BA7779C()
{
  v1 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_26BA777E0(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
  if (v4 >> 62)
  {
    v5 = sub_26BA9BDBC();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D68B2E0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setPaused_];
    }
  }
}

uint64_t (*sub_26BA778D4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isPaused;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26BA7795C;
}

void sub_26BA7795C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
    if (v4 >> 62)
    {
      v5 = sub_26BA9BDBC();
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D68B2E0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setPaused_];
    }
  }

LABEL_11:

  free(v3);
}

id sub_26BA77A54(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

_UNKNOWN **sub_26BA77AB8(double a1, double a2, double a3, double a4)
{
  v9 = v4 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_delegate;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *(v4 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_animatesSelectionChanges) = 0;
  *(v4 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_tapGr) = 0;
  *(v4 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isPaused) = 1;
  *(v4 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isExpanded) = 0;
  *(v4 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_image) = 0;
  *(v4 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effects) = &unk_287C6FC68;
  v67 = MEMORY[0x277D84F90];
  sub_26BA9BD6C();
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  for (i = 0; i != 40; i += 8)
  {
    v14 = *(&unk_287C6FCB0 + i + 32);
    v15 = [objc_allocWithZone(MEMORY[0x277D78538]) init];
    [v10 setBoundsIncludeStroke:0 effectView:v15];
    v16 = v15;
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = [v11 effectWithType_];
    [v16 setEffect_];

    [v16 setContentMode_];
    [v16 setPaused_];
    v13 = sub_26BA9B68C();

    [v16 setAccessibilityIdentifier_];

    sub_26BA9BD4C();
    sub_26BA9BD7C();
    sub_26BA9BD8C();
    sub_26BA9BD5C();
  }

  *&v65[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews] = v67;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v19 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_highlightView;
  *&v65[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_highlightView] = v18;
  v20 = objc_opt_self();
  v21 = v18;
  v22 = [v20 tertiarySystemFillColor];
  [v21 setBackgroundColor_];

  [*&v65[v19] _setContinuousCornerRadius_];
  [*&v65[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  v67 = MEMORY[0x277D84F90];
  v23 = 5;
  sub_26BA9BD6C();
  v24 = &aOriginal[8];
  v25 = *MEMORY[0x277D76940];
  v26 = *MEMORY[0x277D76818];
  v27 = &off_279D14000;
  do
  {
    v29 = *(v24 - 1);
    v28 = *v24;

    v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v30 setTranslatesAutoresizingMaskIntoConstraints_];
    String.stkLocalized.getter(v29, v28);
    v31 = sub_26BA9B68C();

    [v30 setText_];

    v32 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v33 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    [v30 setFont_];

    if (qword_2804374F0 != -1)
    {
      swift_once();
    }

    [v30 setTextColor_];
    [v30 setAdjustsFontSizeToFitWidth_];
    [v30 setAdjustsFontForContentSizeCategory_];
    [v30 setMaximumContentSizeCategory_];

    v34 = v30;
    [v34 setIsAccessibilityElement_];

    sub_26BA9BD4C();
    v35 = v67[2];
    sub_26BA9BD7C();
    sub_26BA9BD8C();
    v36 = sub_26BA9BD5C();
    v24 += 2;
    --v23;
  }

  while (v23);
  v37 = v67;
  v38 = &off_280436000;
  *&v65[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_labels] = v67;
  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (*(v37 + 16))
  {
LABEL_11:
    if ((v37 & 0xC000000000000001) == 0)
    {
      if (*(v37 + 16))
      {
        v39 = *(v37 + 32);
LABEL_14:
        if (qword_280437500 != -1)
        {
          swift_once();
        }

        [v39 setTextColor_];

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_67;
    }

LABEL_65:

    v39 = MEMORY[0x26D68B2E0](0, v37);

    goto LABEL_14;
  }

LABEL_17:
  while (1)
  {
    *&v65[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex] = 0;
    v40 = type metadata accessor for StickerEffectChooser();
    v66.receiver = v65;
    v66.super_class = v40;
    v27 = objc_msgSendSuper2(&v66, sel_initWithFrame_, a1, a2, a3, a4);
    v41 = sub_26BA9B68C();
    [v27 setAccessibilityIdentifier_];

    [v27 addSubview_];
    v65 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews;
    v37 = *(v27 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
    v42 = v37 >> 62 ? sub_26BA9BDBC() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v42)
    {
      break;
    }

    v43 = 0;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x26D68B2E0](v43, v37);
      }

      else
      {
        if (v43 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v44 = *(v37 + 8 * v43 + 32);
      }

      v45 = v44;
      v35 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [v27 addSubview_];

      ++v43;
      if (v35 == v42)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v36 = sub_26BA9BDBC();
    if (v36)
    {
      goto LABEL_11;
    }
  }

LABEL_28:

  v35 = v38[70];
  v37 = *(v35 + v27);
  if (v37 >> 62)
  {
    v46 = sub_26BA9BDBC();
  }

  else
  {
    v46 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v46)
  {
    v47 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x26D68B2E0](v47, v37);
      }

      else
      {
        if (v47 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v48 = *(v37 + 8 * v47 + 32);
      }

      v49 = v48;
      v38 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        goto LABEL_55;
      }

      [v27 addSubview_];

      ++v47;
    }

    while (v38 != v46);
  }

  v50 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v27 action:sel_handleTap_];
  v51 = *(v27 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_tapGr);
  *(v27 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_tapGr) = v50;
  v37 = v50;

  if (!v37)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    v37 = v36;
    if (v36)
    {
      goto LABEL_42;
    }

    goto LABEL_69;
  }

  swift_arrayDestroy();
  [v27 addGestureRecognizer_];

  v52 = *&v65[v27];
  if (v52 >> 62)
  {
    v36 = sub_26BA9BDBC();
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_65;
  }

  v37 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
LABEL_42:
    v53 = 4;
    v38 = &off_279D14000;
    do
    {
      v54 = v53 - 4;
      v55 = *&v65[v27];
      if ((v55 & 0xC000000000000001) != 0)
      {

        v56 = MEMORY[0x26D68B2E0](v53 - 4, v55);
      }

      else
      {
        if (v54 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v56 = *(v55 + 8 * v53);
      }

      v57 = *(v35 + v27);
      if ((v57 & 0xC000000000000001) != 0)
      {

        v58 = MEMORY[0x26D68B2E0](v53 - 4, v57);
      }

      else
      {
        if (v54 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v58 = *(v57 + 8 * v53);
      }

      v59 = v56;
      [v59 setShowsLargeContentViewer_];
      v60 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
      [v59 addInteraction_];

      v61 = [v58 text];
      [v59 setLargeContentTitle_];

      v62 = v59;
      [v62 setIsAccessibilityElement_];
      v63 = [v58 text];
      [v62 setAccessibilityLabel_];

      ++v53;
      --v37;
    }

    while (v37);
  }

LABEL_69:

  return v27;
}

void sub_26BA785C8()
{
  v1 = v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_animatesSelectionChanges) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_tapGr) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isPaused) = 1;
  *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_image) = 0;
  sub_26BA9BD9C();
  __break(1u);
}

void sub_26BA78730(void *a1)
{
  v2 = v1;
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
  if (v7 >> 62)
  {
LABEL_39:
    v8 = sub_26BA9BDBC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v8 == v9)
    {
      return;
    }

    if (v10)
    {
      v11 = MEMORY[0x26D68B2E0](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    [v11 frame];
    v42.x = v4;
    v42.y = v6;
    v13 = CGRectContainsPoint(v43, v42);

    if (v13)
    {
      break;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_38;
    }
  }

  v15 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex;
  *(v2 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex) = v9;
  v33 = v7 >> 62;
  if (*(v2 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_animatesSelectionChanges) == 1)
  {
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    v37 = sub_26BA796E4;
    v38 = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA3D478;
    v36 = &block_descriptor_3;
    v18 = _Block_copy(aBlock);
    v19 = v2;

    [v16 animateWithDuration:v18 animations:0.2];
    _Block_release(v18);
  }

  else
  {
    v20 = [v2 setNeedsLayout];
  }

  v21 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xA8))(aBlock, v20);
  if (v36)
  {
    sub_26BA52F80(aBlock, v39);
    sub_26BA78B18(aBlock);
    v22 = v40;
    v23 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v24 = (*((*v21 & *v2) + 0x150))();
    (*(v23 + 8))(v2, v24, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v39);
    if (!v33)
    {
LABEL_18:
      v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26BA78B18(aBlock);
    if (!v33)
    {
      goto LABEL_18;
    }
  }

  v25 = sub_26BA9BDBC();
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

LABEL_21:
  if (v25)
  {
    if (v10 || v25 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = 0;
      v27 = *MEMORY[0x277D76548];
      v28 = *MEMORY[0x277D76598];
      v34 = *MEMORY[0x277D76548] & *MEMORY[0x277D76598];
      v32 = *MEMORY[0x277D76548] | *MEMORY[0x277D76598];
      while (1)
      {
        if (v10)
        {
          v30 = MEMORY[0x26D68B2E0](v26, v7);
        }

        else
        {
          v30 = *(v7 + 8 * v26 + 32);
        }

        v31 = v30;
        v29 = v27;
        if (v26 != *(v2 + v15))
        {
          goto LABEL_27;
        }

        if (v28)
        {
          v29 = v28;
          if (v34 == v27)
          {
            goto LABEL_27;
          }
        }

        else if (!v27)
        {
          v29 = 0;
          goto LABEL_27;
        }

        v29 = v32;
LABEL_27:
        ++v26;
        [v30 setAccessibilityTraits_];

        if (v25 == v26)
        {
          return;
        }
      }
    }

    goto LABEL_41;
  }
}

uint64_t sub_26BA78B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804361E8, &unk_26BA9E270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BA78BE8()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for StickerEffectChooser();
  v4 = objc_msgSendSuper2(&v37, sel_layoutSubviews);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x138))(v4))
  {
    v5 = 48.0;
  }

  else
  {
    v5 = 44.0;
  }

  [v0 bounds];
  v6.n128_f64[0] = CGRectGetWidth(v38);
  v35 = *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effects);
  v36 = v0;
  v7 = *(v35 + 16);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
    v1 = *(v36 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_labels);
    if ((v8 & 0xC000000000000001) == 0 && v7 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_69;
    }

    v3 = v1 & 0xC000000000000001;
    if ((v1 & 0xC000000000000001) == 0 && v7 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_70;
    }

    v9 = v6.n128_f64[0] / v7;
    v10 = 0.0;
    v11 = 4;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D68B2E0](v11 - 4, v8);
      }

      else
      {
        v19 = *(v8 + 8 * v11);
      }

      v2 = v19;
      [v19 setFrame_];
      if (v3)
      {
        v12 = MEMORY[0x26D68B2E0](v11 - 4, v1);
      }

      else
      {
        v12 = *(v1 + 8 * v11);
      }

      v10 = v5 + v10 + 20.0;
      v13 = v12;
      [v13 intrinsicContentSize];
      v16 = v15;
      if (v9 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v9;
      }

      [v2 frame];
      v18 = CGRectGetMaxY(v39) + 10.0;
      [v2 frame];
      [v13 setFrame_];

      ++v11;
      --v7;
    }

    while (v7);
  }

  v8 = v36;
  v20 = (*((*MEMORY[0x277D85000] & *v36) + 0x150))(v6);
  v21 = v35;
  v22 = *(v35 + 16);
  if (!v22)
  {
    goto LABEL_30;
  }

  v1 = v20;
  v3 = 0;
  while (1)
  {
    if (v3 >= *(v35 + 16))
    {
      goto LABEL_49;
    }

    v2 = sub_26BA9B5DC();
    v20 = sub_26BA9B5DC();
    if (v2 == v20)
    {
      break;
    }

    if (v22 == ++v3)
    {
      goto LABEL_30;
    }
  }

  v23 = *(v36 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
  if ((v23 & 0xC000000000000001) != 0)
  {
    goto LABEL_71;
  }

  if (v3 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v23 + 8 * v3 + 32);
LABEL_29:
    v25 = v24;
    [v24 frame];
    v42 = CGRectInset(v41, -6.0, -6.0);
    [*(v8 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_highlightView) setFrame_];

LABEL_30:
    v2 = *(v8 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_labels);
    v20 = *(v8 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex);
    v21 = v2 & 0xC000000000000001;
    v35 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex;
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        if (v20 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v20 = *(v2 + 8 * v20 + 32);
          goto LABEL_34;
        }

        __break(1u);
LABEL_66:
        v31 = MEMORY[0x26D68B2E0](v20);
LABEL_58:
        v32 = v31;
        v33 = *MEMORY[0x277D76598];
        v34 = *MEMORY[0x277D76548];
        if (*MEMORY[0x277D76598])
        {
          if ((v34 & ~v33) == 0)
          {
LABEL_64:
            [v31 setAccessibilityTraits_];

            return;
          }
        }

        else if (!v34)
        {
          v33 = 0;
          goto LABEL_64;
        }

        v33 |= v34;
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_53;
    }

    while (1)
    {
      v20 = MEMORY[0x26D68B2E0](v20, v2);
LABEL_34:
      v1 = v20;
      if (v2 >> 62)
      {
LABEL_53:
        v20 = sub_26BA9BDBC();
        v26 = v20;
        if (!v20)
        {
LABEL_54:
          v30 = *(v36 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
          v20 = *(v36 + v35);
          if ((v30 & 0xC000000000000001) != 0)
          {
            goto LABEL_66;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v20 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v31 = *(v30 + 8 * v20 + 32);
            goto LABEL_58;
          }

          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v24 = MEMORY[0x26D68B2E0](v3);
          goto LABEL_29;
        }
      }

      else
      {
        v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_54;
        }
      }

      v3 = 0;
      while (1)
      {
        if (v21)
        {
          v20 = MEMORY[0x26D68B2E0](v3, v2);
        }

        else
        {
          if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v20 = *(v2 + 8 * v3 + 32);
        }

        v28 = v20;
        v29 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = sub_26BA79700();
        if (sub_26BA9BAEC())
        {
          v27 = &qword_280437508;
          if (qword_280437500 != -1)
          {
            swift_once();
            v27 = &qword_280437508;
          }
        }

        else
        {
          v27 = &qword_2804374F8;
          if (qword_2804374F0 != -1)
          {
            swift_once();
            v27 = &qword_2804374F8;
          }
        }

        [v28 setTextColor_];

        ++v3;
        if (v29 == v26)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }
  }

  __break(1u);
}

uint64_t sub_26BA791D4()
{
  v1 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_26BA79218(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isExpanded;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
    return [v1 layoutIfNeeded];
  }

  return result;
}

void (*sub_26BA792A8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_26BA7933C;
}

void sub_26BA7933C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[3];
    [v6 invalidateIntrinsicContentSize];
    [v6 setNeedsLayout];
    [v6 layoutIfNeeded];
  }

  free(v1);
}

uint64_t sub_26BA793BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effects);
    if (v1 < *(v2 + 16))
    {
      return *(v2 + 8 * v1 + 32);
    }
  }

  __break(1u);
  return result;
}

void sub_26BA793F8(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effects];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v5 = sub_26BA9B5DC();
      if (v5 == sub_26BA9B5DC())
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    *&v1[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex] = v4;
    if (v1[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_animatesSelectionChanges] != 1)
    {
      goto LABEL_13;
    }

    v7 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v17 = sub_26BA79C4C;
    v18 = v10;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v9 = &block_descriptor_10_0;
    goto LABEL_11;
  }

LABEL_6:
  v6 = sub_26BA9B5DC();
  if (v6 != sub_26BA9B5DC())
  {
    return;
  }

  *&v1[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex] = 0;
  if (v1[OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_animatesSelectionChanges] == 1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v17 = sub_26BA79C4C;
    v18 = v8;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v9 = &block_descriptor_17;
LABEL_11:
    v15 = sub_26BA3D478;
    v16 = v9;
    v11 = _Block_copy(&v13);
    v12 = v1;

    [v7 animateWithDuration:v11 animations:{0.2, v13, v14}];
    _Block_release(v11);
    return;
  }

LABEL_13:

  [v1 setNeedsLayout];
}

void (*sub_26BA79660(void (*result)(uint64_t *a1)))(uint64_t *a1)
{
  *(result + 1) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_selectedEffectIndex);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effects);
    if (v2 < *(v3 + 16))
    {
      *result = *(v3 + 8 * v2 + 32);
      return sub_26BA796C0;
    }
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BA79700()
{
  result = qword_280436240;
  if (!qword_280436240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280436240);
  }

  return result;
}

id sub_26BA7974C()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

void sub_26BA797DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_labels);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x26D68B2E0](0);
    goto LABEL_4;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_4:
    v3 = v2;
    [v2 intrinsicContentSize];

    (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
    return;
  }

  __break(1u);
}

void sub_26BA798E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_effectViews);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D68B2E0](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x180))();
      [v5 setImage_];

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void *sub_26BA79A14()
{
  v1 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA79A60(void *a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_26BA798E8();
}

void (*sub_26BA79AC8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26BA79B2C;
}

void sub_26BA79B2C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_26BA798E8();
  }
}

id sub_26BA79B60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerEffectChooser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BA79C58()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_280437518);
  __swift_project_value_buffer(v0, qword_280437518);
  return sub_26BA9AF4C();
}

Swift::Void __swiftcall Sticker.updateKeyboardPreview(_:)(UIImage a1)
{
  isa = a1.super.isa;
  v90 = sub_26BA9AF2C();
  v1 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26BA9B56C();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_65;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_66:

    if (qword_280437510 != -1)
    {
      swift_once();
    }

    v84 = sub_26BA9AF5C();
    __swift_project_value_buffer(v84, qword_280437518);
    v92 = sub_26BA9AF3C();
    v85 = sub_26BA9B94C();
    if (os_log_type_enabled(v92, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_26BA33000, v92, v85, "Missing keyboard preview representation", v86, 2u);
      MEMORY[0x26D68BFB0](v86, -1, -1);
    }

LABEL_70:
    v87 = v92;

    return;
  }

LABEL_3:
  v6 = 0;
  while ((v4 & 0xC000000000000001) == 0)
  {
    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_65:
      v5 = sub_26BA9BDBC();
      if (!v5)
      {
        goto LABEL_66;
      }

      goto LABEL_3;
    }

    v7 = *(v4 + 8 * v6 + 32);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

LABEL_7:
    v92 = v7;
    v9 = sub_26BA9B53C();
    v11 = v10;
    if (v9 == sub_26BA9B4EC() && v11 == v12)
    {
      goto LABEL_15;
    }

    v13 = sub_26BA9BE4C();

    if (v13)
    {
      goto LABEL_16;
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_66;
    }
  }

  v7 = MEMORY[0x26D68B2E0](v6, v4);
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_7;
  }

LABEL_14:
  __break(1u);
LABEL_15:

LABEL_16:

  v14 = UIImagePNGRepresentation(isa);
  if (!v14)
  {
    if (qword_280437510 != -1)
    {
      swift_once();
    }

    v48 = sub_26BA9AF5C();
    __swift_project_value_buffer(v48, qword_280437518);
    v49 = sub_26BA9AF3C();
    v50 = sub_26BA9B94C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26BA33000, v49, v50, "Could not create PNG from preview image", v51, 2u);
      MEMORY[0x26D68BFB0](v51, -1, -1);
    }

    goto LABEL_70;
  }

  v15 = v1;
  v16 = v14;
  v17 = sub_26BA9ACEC();
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436248, &qword_26BA9E2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BA9D660;
  v21 = *MEMORY[0x277CD3668];
  *(inited + 32) = *MEMORY[0x277CD3668];
  v22 = v21;
  v23 = v89;
  sub_26BA9AF0C();
  v24 = sub_26BA9AEDC();
  v26 = v25;
  v27 = *(v15 + 8);
  v27(v23, v90);
  *(inited + 40) = v24;
  *(inited + 48) = v26;
  sub_26BA7AC6C(inited);
  swift_setDeallocating();
  sub_26BA7AD6C(inited + 32);
  isa = v19;
  v28 = sub_26BA9ACDC();
  type metadata accessor for CFString();
  sub_26BA7AFD0(&qword_280436258, &unk_26BA9E384);
  v29 = sub_26BA9B62C();

  v30 = CGImageSourceCreateWithData(v28, v29);

  if (!v30)
  {
    if (qword_280437510 != -1)
    {
      swift_once();
    }

    v52 = sub_26BA9AF5C();
    __swift_project_value_buffer(v52, qword_280437518);
    v53 = sub_26BA9AF3C();
    v54 = sub_26BA9B94C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26BA33000, v53, v54, "Could not create image source", v55, 2u);
      MEMORY[0x26D68BFB0](v55, -1, -1);
    }

    sub_26BA3DF34(v17, isa);

    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436260, &qword_26BA9E2E0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_26BA9E2C0;
  v32 = *MEMORY[0x277CD3570];
  *(v31 + 32) = *MEMORY[0x277CD3570];
  sub_26BA7AE24();
  v33 = v32;
  v34 = sub_26BA9BACC();
  v35 = *MEMORY[0x277CD3568];
  *(v31 + 40) = v34;
  *(v31 + 48) = v35;
  v36 = v35;
  v37 = sub_26BA9BACC();
  v38 = *MEMORY[0x277CD3660];
  *(v31 + 56) = v37;
  *(v31 + 64) = v38;
  v39 = v38;
  *(v31 + 72) = sub_26BA9BABC();
  sub_26BA7AE70(v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436268, qword_26BA9E2E8);
  swift_arrayDestroy();
  if (CGImageSourceGetCount(v30) != 1)
  {

    if (qword_280437510 != -1)
    {
      swift_once();
    }

    v56 = sub_26BA9AF5C();
    __swift_project_value_buffer(v56, qword_280437518);
    v57 = sub_26BA9AF3C();
    v58 = sub_26BA9B94C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26BA33000, v57, v58, "Image source does not have exactly 1 image", v59, 2u);
      MEMORY[0x26D68BFB0](v59, -1, -1);
    }

    sub_26BA3DF34(v17, isa);

    goto LABEL_51;
  }

  v40 = sub_26BA9B62C();
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v30, 0, v40);

  if (!ThumbnailAtIndex)
  {
    if (qword_280437510 != -1)
    {
      swift_once();
    }

    v60 = sub_26BA9AF5C();
    __swift_project_value_buffer(v60, qword_280437518);

    v61 = sub_26BA9AF3C();
    v62 = sub_26BA9B94C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v93 = v64;
      *v63 = 136315138;
      v65 = v17;
      v66 = sub_26BA9B63C();
      v68 = v67;

      v69 = sub_26BA3DFF8(v66, v68, &v93);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_26BA33000, v61, v62, "Could not create thumbnail %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x26D68BFB0](v64, -1, -1);
      MEMORY[0x26D68BFB0](v63, -1, -1);
      sub_26BA3DF34(v65, isa);
    }

    else
    {
      sub_26BA3DF34(v17, isa);
    }

LABEL_51:
    return;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v43 = Mutable;
    v44 = v89;
    sub_26BA9AF0C();
    sub_26BA9AEDC();
    v27(v44, v90);
    v45 = sub_26BA9B68C();

    v46 = CGImageDestinationCreateWithData(v43, v45, 1uLL, 0);

    if (v46)
    {
      CGImageDestinationAddImage(v46, ThumbnailAtIndex, 0);
      CGImageDestinationFinalize(v46);
      if (CFDataGetLength(v43))
      {
        v47 = v43;
        sub_26BA9ACEC();

        sub_26BA9B51C();
        sub_26BA3DF34(v17, isa);
LABEL_34:

        return;
      }

      if (qword_280437510 != -1)
      {
        swift_once();
      }

      v78 = sub_26BA9AF5C();
      __swift_project_value_buffer(v78, qword_280437518);
      v79 = sub_26BA9AF3C();
      v80 = sub_26BA9B94C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = v17;
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_26BA33000, v79, v80, "Result has 0 size", v82, 2u);
        MEMORY[0x26D68BFB0](v82, -1, -1);
        v83 = v81;
      }

      else
      {
        v83 = v17;
      }

      sub_26BA3DF34(v83, isa);
    }

    else
    {
      if (qword_280437510 != -1)
      {
        swift_once();
      }

      v74 = sub_26BA9AF5C();
      __swift_project_value_buffer(v74, qword_280437518);
      v75 = sub_26BA9AF3C();
      v76 = sub_26BA9B94C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_26BA33000, v75, v76, "Could not create image destination", v77, 2u);
        MEMORY[0x26D68BFB0](v77, -1, -1);
      }

      sub_26BA3DF34(v17, isa);
    }
  }

  else
  {
    if (qword_280437510 != -1)
    {
      swift_once();
    }

    v70 = sub_26BA9AF5C();
    __swift_project_value_buffer(v70, qword_280437518);
    v71 = sub_26BA9AF3C();
    v72 = sub_26BA9B94C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26BA33000, v71, v72, "Could not create mutable data", v73, 2u);
      MEMORY[0x26D68BFB0](v73, -1, -1);
    }

    sub_26BA3DF34(v17, isa);
  }
}

uint64_t sub_26BA7AA00(uint64_t a1, uint64_t a2)
{
  sub_26BA9BEEC();
  swift_getWitnessTable();
  sub_26BA9AE9C();
  return sub_26BA9BF1C();
}

uint64_t sub_26BA7AA68(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_26BA9AE8C();
}

unint64_t sub_26BA7AAD4(uint64_t a1)
{
  sub_26BA9BEEC();
  type metadata accessor for CFString();
  sub_26BA7AFD0(&qword_280436288, &unk_26BA9E358);
  sub_26BA9AE9C();
  v2 = sub_26BA9BF1C();

  return sub_26BA7AB74(a1, v2);
}

unint64_t sub_26BA7AB74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_26BA7AFD0(&qword_280436288, &unk_26BA9E358);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26BA9AE8C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26BA7AC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436290, &qword_26BA9E3D8);
    v3 = sub_26BA9BDEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_26BA7AAD4(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26BA7AD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436250, &qword_26BA9E2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for CFString()
{
  if (!qword_280436270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280436270);
    }
  }
}

unint64_t sub_26BA7AE24()
{
  result = qword_280435DD8;
  if (!qword_280435DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280435DD8);
  }

  return result;
}

unint64_t sub_26BA7AE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436280, &qword_26BA9E3D0);
    v3 = sub_26BA9BDEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_26BA7AAD4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26BA7AFD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BA7B03C()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_2804376B8);
  __swift_project_value_buffer(v0, qword_2804376B8);
  return sub_26BA9AF4C();
}

uint64_t sub_26BA7B0BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerIdentifier;
  swift_beginAccess();
  return sub_26BA3DF88(v1 + v3, a1);
}

uint64_t sub_26BA7B114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerIdentifier;
  swift_beginAccess();
  sub_26BA431E4(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_26BA7B1D4()
{
  v1 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_msSticker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA7B220(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_msSticker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_26BA7B2E4()
{
  [v0 frame];
  MidX = CGRectGetMidX(v3);
  [v0 frame];
  CGRectGetMinY(v4);
  [v0 frame];
  CGRectGetHeight(v5);
  return MidX;
}

void sub_26BA7B358(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  Height = CGRectGetHeight(*&a3);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  Width = CGRectGetWidth(v16);
  if (Height > Width)
  {
    Width = Height;
  }

  v14 = 1.0 / (Width / 100.0);
  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  sub_26BA80214(v11, a2, v14);
}

uint64_t sub_26BA7B3FC()
{
  v1 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isArranging;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA7B440(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isArranging;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = [v1 layer];
  [v1 frame];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = CGRectGetHeight(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetWidth(v14);
  if (v9 > v10)
  {
    v10 = v9;
  }

  v11 = 1.0 / (v10 / 100.0);
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  sub_26BA80214(v2, v4, v11);

  return (*((*MEMORY[0x277D85000] & *v1) + 0x1C0))(*(v1 + v3));
}

uint64_t (*sub_26BA7B580(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isArranging;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26BA7B608;
}

void sub_26BA7B608(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = *(v4 + v5);
    v7 = [v4 layer];
    [v4 frame];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    v12 = CGRectGetHeight(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v13 = CGRectGetWidth(v17);
    if (v12 > v13)
    {
      v13 = v12;
    }

    v14 = 1.0 / (v13 / 100.0);
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    sub_26BA80214(v6, v7, v14);

    (*((*MEMORY[0x277D85000] & *v4) + 0x1C0))(*(v4 + v5));
  }

  free(v3);
}

uint64_t sub_26BA7B754()
{
  v1 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA7B798(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA7B848()
{
  v1 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerEffectPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA7B88C(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerEffectPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_26BA7B93C()
{
  v0 = objc_allocWithZone(STKMSStickerView);

  return [v0 init];
}

id sub_26BA7B984()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setClipsToBounds_];
  v2 = [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setHidden_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v28 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleDelete_];
  [v3 addGestureRecognizer_];
  [v1 addSubview_];
  v5 = sub_26BA7BE30();
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0, &qword_26BA9D500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26BA9E420;
  v7 = [v3 widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v6 + 32) = v8;
  v9 = [v3 heightAnchor];
  v10 = [v3 widthAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v6 + 40) = v11;
  v12 = [v3 leadingAnchor];
  v13 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell____lazy_storage___deleteButton;
  v14 = [*(v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell____lazy_storage___deleteButton) byte_279D14529];
  v15 = [v12 constraintEqualToAnchor:v14 constant:-10.0];

  *(v6 + 48) = v15;
  v16 = [v3 topAnchor];
  v17 = [*(v0 + v13) topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];

  *(v6 + 56) = v18;
  v19 = [v5 centerXAnchor];
  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];

  *(v6 + 64) = v21;
  v22 = [v5 centerYAnchor];

  v23 = [v1 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];

  *(v6 + 72) = v24;
  sub_26BA3EF64(0, &qword_280435B48, 0x277CCAAD0);
  v25 = sub_26BA9B7EC();

  [v27 activateConstraints_];

  [v0 bounds];
  [v1 setFrame_];

  return v1;
}

id sub_26BA7BE30()
{
  v1 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell____lazy_storage___deleteButton;
  v2 = *(v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell____lazy_storage___deleteButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell____lazy_storage___deleteButton);
  }

  else
  {
    v4 = sub_26BA7BE94(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_26BA7BE94(uint64_t a1)
{
  v40 = a1;
  v1 = sub_26BA9BB9C();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26BA9BB2C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_26BA9BBFC();
  v6 = *(v39 - 8);
  v7 = MEMORY[0x28223BE20](v39);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v35 = sub_26BA9AFCC();
  v11 = *(v35 - 8);
  v12 = MEMORY[0x28223BE20](v35);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = sub_26BA9B68C();
  v18 = [objc_opt_self() systemImageNamed_];

  if (v18 && (v19 = [objc_opt_self() systemGrayColor], v20 = objc_opt_self(), v21 = objc_msgSend(v20, sel_configurationWithHierarchicalColor_, v19), v19, v22 = objc_msgSend(v18, sel_imageByApplyingSymbolConfiguration_, v21), v18, v21, v22))
  {
    v23 = [v20 configurationWithPointSize:6 weight:1 scale:15.0];
    v24 = [v22 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v24 = 0;
  }

  sub_26BA9AFBC();
  v25 = [objc_opt_self() effectWithStyle_];
  sub_26BA9AFAC();
  sub_26BA9BBCC();
  v26 = v24;
  sub_26BA9BBBC();
  v27 = v35;
  (*(v11 + 16))(v14, v16, v35);
  sub_26BA9BB0C();
  (*(v32 + 104))(v5, *MEMORY[0x277D74FD8], v33);
  sub_26BA9BB3C();
  (*(v37 + 104))(v36, *MEMORY[0x277D75028], v38);
  sub_26BA9BB1C();
  sub_26BA9BB5C();
  sub_26BA3EF64(0, &qword_280435B68, 0x277D75220);
  v28 = v39;
  (*(v6 + 16))(v34, v10, v39);
  v29 = sub_26BA9BC0C();
  [v29 addTarget:v40 action:sel_handleDelete_ forControlEvents:0x2000];

  (*(v6 + 8))(v10, v28);
  (*(v11 + 8))(v16, v27);
  return v29;
}

char *sub_26BA7C3B0(double a1, double a2, double a3, double a4)
{
  v9 = sub_26BA9B28C();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_26BA9B2BC();
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerIdentifier;
  v16 = sub_26BA9AD5C();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_msSticker] = 0;
  *&v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerScoreDefaultAnimatedThreshold] = 0x3FB999999999999ALL;
  *&v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isArranging] = 0;
  v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerHidden] = 0;
  v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerEffectPaused] = 0;
  v17 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView;
  *&v4[v17] = [objc_allocWithZone(STKMSStickerView) init];
  *&v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView] = 0;
  *&v4[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell____lazy_storage___deleteButton] = 0;
  v18 = type metadata accessor for StickerCollectionStickerCell(0);
  v33.receiver = v4;
  v33.super_class = v18;
  v19 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = [v19 contentView];
  v21 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor_];

  v22 = v19;
  v23 = [v22 contentView];
  [v23 setClipsToBounds_];

  v24 = *&v22[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView];
  [v24 setDelegate_];

  v25 = [v22 contentView];
  [v25 addSubview_];

  sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
  v26 = sub_26BA9BA0C();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_26BA80648;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_4;
  v28 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA81384(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v14, v11, v28);
  _Block_release(v28);

  (*(v31 + 8))(v11, v9);
  (*(v12 + 8))(v14, v30);
  return v22;
}

id sub_26BA7C8C4(void *a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerIdentifier;
  v4 = sub_26BA9AD5C();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_msSticker] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerScoreDefaultAnimatedThreshold] = 0x3FB999999999999ALL;
  *&v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isArranging] = 0;
  v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerHidden] = 0;
  v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_isStickerEffectPaused] = 0;
  v5 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView;
  *&v1[v5] = [objc_allocWithZone(STKMSStickerView) init];
  *&v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView] = 0;
  *&v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell____lazy_storage___deleteButton] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for StickerCollectionStickerCell(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_26BA7CA3C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StickerCollectionStickerCell(0);
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

uint64_t sub_26BA7CB2C()
{
  v1 = v0;
  v2 = sub_26BA9AF7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StickerCollectionStickerCell(0);
  v37.receiver = v0;
  v37.super_class = v6;
  v7 = objc_msgSendSuper2(&v37, sel__bridgedConfigurationState);
  sub_26BA9AF6C();

  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0xC0))();
  if (qword_2804376D0 != -1)
  {
    v30 = v9;
    swift_once();
    v9 = v30;
  }

  v10 = qword_2804376D8;
  if (v9)
  {
    v33 = v9;
    v11 = v9;
    sub_26BA3EF64(0, &qword_280436298, 0x277CD6928);
    sub_26BA80768();
    v12 = v10;
    v13 = v11;
    sub_26BA9BC9C();
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v14 = qword_2804376D8;
    v13 = 0;
  }

  sub_26BA9AF8C();

  v15 = v1 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v16) = (*(v16 + 72))(ObjectType, v16);
    swift_unknownObjectRelease();
    v18 = v16 & 1;
  }

  else
  {
    v18 = 2;
  }

  if (qword_2804376E0 != -1)
  {
    swift_once();
  }

  if (v18 == 2)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v19 = qword_2804376E8;
  }

  else
  {
    LOBYTE(v33) = v18;
    v20 = qword_2804376E8;
    sub_26BA9BC9C();
  }

  v21 = sub_26BA9AF8C();
  v22 = (*((*v8 & *v1) + 0x110))(v21);
  if (qword_2804376F0 != -1)
  {
    v31 = v22;
    swift_once();
    v22 = v31;
  }

  LOBYTE(v33) = v22 & 1;
  v23 = qword_2804376F8;
  sub_26BA9BC9C();
  sub_26BA9AF8C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v15 + 1);
    v25 = swift_getObjectType();
    LOBYTE(v24) = (*(v24 + 88))(v25, v24);
    swift_unknownObjectRelease();
    v26 = v24 & 1;
  }

  else
  {
    v26 = 2;
  }

  if (qword_280437700 != -1)
  {
    swift_once();
  }

  if (v26 == 2)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v27 = qword_280437708;
  }

  else
  {
    LOBYTE(v33) = v26;
    v28 = qword_280437708;
    sub_26BA9BC9C();
  }

  sub_26BA9AF8C();
  return (*(v3 + 8))(v5, v2);
}

id sub_26BA7D084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08, qword_26BA9E430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_26BA9AD5C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xB0))(v3);
  (*((*v5 & *v0) + 0xC8))(0);
  v6 = *(v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView);
  [v6 setSticker_];
  [v6 setAlpha_];
  v11[0] = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0x3FF0000000000000;
  v11[4] = 0;
  v11[5] = 0;
  [v6 setTransform_];
  (*((*v5 & *v0) + 0x118))(0);
  (*((*v5 & *v0) + 0x130))(0);
  v7 = *(v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView);
  if (v7)
  {
    [v7 setHidden_];
  }

  v8 = type metadata accessor for StickerCollectionStickerCell(0);
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_prepareForReuse);
}

void sub_26BA7D308(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_26BA9B28C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26BA9B2BC();
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView);
  v14 = sub_26BA9B62C();
  [v13 animatedStickerCreationProgressChanged:v14 progress:a2];

  v45[0] = 1701869940;
  v45[1] = 0xE400000000000000;
  sub_26BA9BC9C();
  if (!*(a1 + 16) || (v15 = sub_26BA4F4EC(&aBlock), (v16 & 1) == 0))
  {
    sub_26BA53728(&aBlock);
    goto LABEL_8;
  }

  sub_26BA3ED78(*(a1 + 56) + 32 * v15, v46);
  sub_26BA53728(&aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  if (v45[0] == 6581861 && v45[1] == 0xE300000000000000)
  {

    v17 = 1;
  }

  else
  {
    v17 = sub_26BA9BE4C();
  }

LABEL_9:
  strcpy(v45, "stickerScore");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  sub_26BA9BC9C();
  if (*(a1 + 16) && (v18 = sub_26BA4F4EC(&aBlock), (v19 & 1) != 0))
  {
    sub_26BA3ED78(*(a1 + 56) + 32 * v18, v46);
    sub_26BA53728(&aBlock);
    sub_26BA3EF64(0, &qword_280435DD8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v20 = v45[0];
      goto LABEL_15;
    }
  }

  else
  {
    sub_26BA53728(&aBlock);
  }

  sub_26BA3EF64(0, &qword_280435DD8, 0x277CCABB0);
  v20 = sub_26BA9BABC();
LABEL_15:
  v21 = [v20 doubleValue];
  if (v17)
  {
    if (v22 < 0.1)
    {
      sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
      v23 = sub_26BA9BA0C();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = sub_26BA807D0;
      v44 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_26BA3D478;
      v42 = &block_descriptor_6_0;
      v25 = _Block_copy(&aBlock);

      sub_26BA9B2AC();
      aBlock = MEMORY[0x277D84F90];
      sub_26BA81384(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
      sub_26BA3EEB8();
      sub_26BA9BC5C();
      MEMORY[0x26D68AFF0](0, v12, v9, v25);

      _Block_release(v25);
LABEL_20:
      (*(v7 + 8))(v9, v6);
      (*(v38 + 8))(v12, v10);
      return;
    }

    v26 = (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(v21);
    if (v26)
    {
      v27 = v26;
      sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
      v37 = sub_26BA9BA0C();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v27;
      v43 = sub_26BA8092C;
      v44 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_26BA3D478;
      v42 = &block_descriptor_13;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      sub_26BA9B2AC();
      aBlock = MEMORY[0x277D84F90];
      sub_26BA81384(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
      sub_26BA3EEB8();
      sub_26BA9BC5C();
      v32 = v37;
      MEMORY[0x26D68AFF0](0, v12, v9, v30);
      _Block_release(v30);

      goto LABEL_20;
    }
  }

  if (qword_2804376B0 != -1)
  {
    swift_once();
  }

  v33 = sub_26BA9AF5C();
  __swift_project_value_buffer(v33, qword_2804376B8);
  v34 = sub_26BA9AF3C();
  v35 = sub_26BA9B96C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = a2;
    _os_log_impl(&dword_26BA33000, v34, v35, "Updating animated sticker creation progress: %f", v36, 0xCu);
    MEMORY[0x26D68BFB0](v36, -1, -1);
  }
}

id sub_26BA7DAA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08, qword_26BA9E430);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = sub_26BA9AD5C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate + 8) = a4;
  v18 = swift_unknownObjectWeakAssign();
  v19 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v4) + 0xA8))(v18);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26BA3E6F8(v13, &qword_280435B08, qword_26BA9E430);
LABEL_4:
    (*((*v19 & *v4) + 0xC8))(0);
    [*(v4 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView) setSticker_];
    goto LABEL_5;
  }

  (*(v15 + 32))(v17, v13, v14);
  v20 = sub_26BA9AD2C();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  (*(v15 + 16))(v11, a1, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  (*((*v19 & *v4) + 0xB0))(v11);
  (*((*v19 & *v4) + 0x118))(a2 & 1);
  return [*(v4 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView) setHidden_];
}

void sub_26BA7DDD8(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a4;
  v34 = a3;
  v36 = a2;
  v9 = sub_26BA9AD5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26BA9B2EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
  *v16 = sub_26BA9BA0C();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = sub_26BA9B30C();
  v18 = (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x26D68AA00](v18);
  v19 = *((*MEMORY[0x277D85000] & *v6) + 0x190);
  v20 = v34;
  v32 = a5;
  v19(v12, v34 & 1, v33, a5);
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_26BA9B5EC();
  if (sub_26BA9B5DC() != -1)
  {
    sub_26BA9B5EC();
    v22 = sub_26BA9B5DC();
    if ((v22 & 0x8000000000000000) == 0)
    {
      STKAddEffectToSticker(v36, v22);
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_5:
  v31 = v21;
  v35 = a1;
  v23 = (*((*MEMORY[0x277D85000] & *v6) + 0x128))();
  v24 = *(v6 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView);
  if ([v24 respondsToSelector_])
  {
    [v24 pauseVisionKitEffect_];
  }

  ObjectType = swift_getObjectType();
  v26 = v32;
  v27 = (*(v32 + 80))(ObjectType, v32);
  v28 = (*((*MEMORY[0x277D85000] & *v6) + 0x1A0))(v36, v27 & 1);
  if ((v20 & 1) == 0)
  {
    MEMORY[0x26D68AA00](v28);
    (*(v26 + 48))(v12, v6, ObjectType, v26);
    v31(v12, v9);
  }

  sub_26BA9B57C();
  if (v29)
  {
    v30 = sub_26BA9B68C();
  }

  else
  {
    v30 = 0;
  }

  [v6 setAccessibilityLabel_];
}

id sub_26BA7E1EC(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_26BA9B2EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
  *v9 = sub_26BA9BA0C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_26BA9B30C();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0xC8);
    v13 = a1;
    v12(a1);
    v14 = *(v3 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView);
    [v14 setSticker_];
    v15 = &selRef_startAnimating;
    if ((a2 & 1) == 0)
    {
      v15 = &selRef_stopAnimating;
    }

    return [v14 *v15];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA7E3A8(uint64_t a1)
{
  v2 = sub_26BA9B28C();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9B2BC();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9AD5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
  v12 = sub_26BA9BA0C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_26BA80A5C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_20;
  v16 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA81384(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v7, v4, v16);
  _Block_release(v16);

  (*(v21 + 8))(v4, v2);
  return (*(v19 + 8))(v7, v20);
}

void sub_26BA7E750(uint64_t a1, uint64_t a2)
{
  v3 = sub_26BA9AD5C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30, &unk_26BA9D4F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08, qword_26BA9E430);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = v8;
    v22 = *((*MEMORY[0x277D85000] & *Strong) + 0xA8);
    v50 = Strong;
    v22();
    v46 = *(v4 + 16);
    v47 = a2;
    v46(v18, a2, v3);
    (*(v4 + 56))(v18, 0, 1, v3);
    v23 = *(v9 + 48);
    sub_26BA3DF88(v20, v11);
    sub_26BA3DF88(v18, &v11[v23]);
    v48 = v4;
    v24 = *(v4 + 48);
    if (v24(v11, 1, v3) == 1)
    {
      v44 = v4 + 16;
      sub_26BA3E6F8(v18, &qword_280435B08, qword_26BA9E430);
      sub_26BA3E6F8(v20, &qword_280435B08, qword_26BA9E430);
      v25 = v24(&v11[v23], 1, v3);
      v26 = v50;
      if (v25 == 1)
      {
        sub_26BA3E6F8(v11, &qword_280435B08, qword_26BA9E430);
LABEL_9:
        if (qword_2804376B0 != -1)
        {
          swift_once();
        }

        v31 = sub_26BA9AF5C();
        __swift_project_value_buffer(v31, qword_2804376B8);
        v32 = v49;
        v46(v49, v47, v3);
        v33 = sub_26BA9AF3C();
        v34 = sub_26BA9B93C();
        v35 = os_log_type_enabled(v33, v34);
        v36 = v48;
        if (v35)
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v51 = v38;
          *v37 = 136315138;
          sub_26BA81384(&unk_280435D90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v39 = sub_26BA9BE2C();
          v41 = v40;
          (*(v36 + 8))(v32, v3);
          v42 = sub_26BA3DFF8(v39, v41, &v51);

          *(v37 + 4) = v42;
          _os_log_impl(&dword_26BA33000, v33, v34, "Clearing MSSticker and View %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x26D68BFB0](v38, -1, -1);
          MEMORY[0x26D68BFB0](v37, -1, -1);
        }

        else
        {

          (*(v36 + 8))(v32, v3);
        }

        (*((*MEMORY[0x277D85000] & *v26) + 0xC8))(0);
        [*(v26 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView) setSticker_];
        goto LABEL_15;
      }
    }

    else
    {
      sub_26BA3DF88(v11, v15);
      if (v24(&v11[v23], 1, v3) != 1)
      {
        v44 = v4 + 16;
        v27 = v48;
        v28 = v45;
        (*(v48 + 32))(v45, &v11[v23], v3);
        sub_26BA81384(&qword_280435E40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v29 = sub_26BA9B67C();
        v30 = *(v27 + 8);
        v30(v28, v3);
        sub_26BA3E6F8(v18, &qword_280435B08, qword_26BA9E430);
        sub_26BA3E6F8(v20, &qword_280435B08, qword_26BA9E430);
        v30(v15, v3);
        sub_26BA3E6F8(v11, &qword_280435B08, qword_26BA9E430);
        v26 = v50;
        if (v29)
        {
          goto LABEL_9;
        }

LABEL_15:

        return;
      }

      sub_26BA3E6F8(v18, &qword_280435B08, qword_26BA9E430);
      sub_26BA3E6F8(v20, &qword_280435B08, qword_26BA9E430);
      (*(v48 + 8))(v15, v3);
      v26 = v50;
    }

    sub_26BA3E6F8(v11, &qword_280435E30, &unk_26BA9D4F0);
    goto LABEL_15;
  }
}

uint64_t sub_26BA7EE14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08, qword_26BA9E430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
    (*(v6 + 32))(v3, ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_26BA3E6F8(v3, &qword_280435B08, qword_26BA9E430);
  }

  return result;
}

void sub_26BA7F070(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v16 = sub_26BA80AC0;
  v17 = v5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26BA3D478;
  v15 = &block_descriptor_26;
  v7 = _Block_copy(&v12);
  v8 = v2;

  v9 = [v6 initWithDuration:3 curve:v7 animations:0.1];
  _Block_release(v7);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v16 = sub_26BA80B40;
  v17 = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26BA7F23C;
  v15 = &block_descriptor_32;
  v11 = _Block_copy(&v12);
  sub_26BA80B9C(a1, a2);

  [v9 addCompletion_];
  _Block_release(v11);
  [v9 startAnimation];
}

uint64_t sub_26BA7F23C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_26BA7F290(char a1)
{
  v2 = v1;
  v4 = sub_26BA9B28C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9B2BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView;
  v13 = *&v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView];
  if ((a1 & 1) == 0)
  {
    if (!v13)
    {
      return;
    }

    v24 = v13;
    if ([v24 isHidden])
    {
      goto LABEL_10;
    }

LABEL_6:
    sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
    v15 = sub_26BA9BA0C();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = a1 & 1;
    aBlock[4] = sub_26BA80BAC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA3D478;
    aBlock[3] = &block_descriptor_38;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    sub_26BA9B2AC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26BA81384(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
    sub_26BA3EEB8();
    sub_26BA9BC5C();
    MEMORY[0x26D68AFF0](0, v11, v7, v17);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    return;
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v19 = sub_26BA7B984();
    v20 = *&v1[v12];
    *&v2[v12] = v19;
    v24 = v19;

    v21 = [v2 contentView];
    [v21 addSubview_];

    v14 = v24;
  }

  v24 = v14;
  if ([v14 isHidden])
  {
    goto LABEL_6;
  }

LABEL_10:
  v22 = v24;
}

id sub_26BA7F638(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 0.0;
  if ((a4 & 1) == 0)
  {
    sub_26BA9BA8C();
    v5 = v6;
  }

  v7 = *(v4 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView);
  [v7 stopAnimating];

  return [v7 startAnimatingWithOffset_];
}

id sub_26BA7F6A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerCollectionStickerCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BA7F81C()
{
  v1 = v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = (*(v2 + 96))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v2 & 1;
}

id sub_26BA7F88C(void *a1)
{
  result = [v1 superview];
  if (result)
  {

    v4 = [v1 superview];
    [a1 locationInView_];
    v6 = v5;
    v8 = v7;

    [v1 frame];
    v9.x = v6;
    v9.y = v8;
    return CGRectContainsPoint(v10, v9);
  }

  return result;
}

uint64_t sub_26BA7F930()
{
  v1 = v0 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 64))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26BA7FA78(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 56))(v1, ObjectType, v4);
  if (v6)
  {
    v7 = v6;
    [a1 setSticker_];
    v8 = v7;
    [a1 setSticker_];

LABEL_12:

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2804376B0 != -1)
  {
    swift_once();
  }

  v9 = sub_26BA9AF5C();
  __swift_project_value_buffer(v9, qword_2804376B8);
  oslog = sub_26BA9AF3C();
  v10 = sub_26BA9B94C();
  if (!os_log_type_enabled(oslog, v10))
  {

    goto LABEL_12;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  _os_log_impl(&dword_26BA33000, oslog, v10, "Could not create MSSticker", v11, 2u);
  MEMORY[0x26D68BFB0](v11, -1, -1);
  swift_unknownObjectRelease();
}

uint64_t sub_26BA7FD2C()
{
  result = sub_26BA9B68C();
  qword_2804376D8 = result;
  return result;
}

uint64_t sub_26BA7FD64()
{
  result = sub_26BA9B68C();
  qword_2804376E8 = result;
  return result;
}

uint64_t sub_26BA7FD9C()
{
  result = sub_26BA9B68C();
  qword_2804376F8 = result;
  return result;
}

uint64_t sub_26BA7FDD4()
{
  result = sub_26BA9B68C();
  qword_280437708 = result;
  return result;
}

void sub_26BA7FE0C()
{
  v8 = [v0 layer];
  [v0 frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v5 = CGRectGetHeight(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v6 = CGRectGetWidth(v11);
  if (v5 > v6)
  {
    v6 = v5;
  }

  v7 = 1.0 / (v6 / 100.0);
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  sub_26BA80214(1, v8, v7);
}

void sub_26BA7FEDC()
{
  v1 = [v0 layer];
  [v0 frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetHeight(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetWidth(v11);
  v6 = sub_26BA9B68C();
  [v1 removeAnimationForKey_];

  v7 = sub_26BA9B68C();
  [v1 removeAnimationForKey_];

  v8 = sub_26BA9B68C();
  [v1 removeAnimationForKey_];
}

id sub_26BA80024()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1052266988;
  LODWORD(v2) = 1059145646;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_280437718 = result;
  return result;
}

id sub_26BA80078()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E10]) init];
  v1 = sub_26BA9B68C();
  [v0 setKeyPath_];

  v2 = v0;
  [v2 setDuration_];
  [v2 setBeginTime_];
  v3 = sub_26BA9AE4C();
  [v2 setFromValue_];

  v4 = sub_26BA9AE4C();
  [v2 setToValue_];

  if (qword_280437710 != -1)
  {
    swift_once();
  }

  [v2 setTimingFunction_];
  LODWORD(v5) = 2139095039;
  [v2 setRepeatCount_];
  [v2 setAutoreverses_];
  [v2 setRemovedOnCompletion_];

  return v2;
}

void sub_26BA80214(char a1, void *a2, double a3)
{
  if (a1)
  {
    v4 = sub_26BA80078();
    v5 = sub_26BA9B68C();
    [v4 setKeyPath_];

    [v4 setDuration_];
    v6 = sub_26BA9B68C();
    [a2 addAnimation:v4 forKey:v6];

    v7 = sub_26BA80078();
    v8 = sub_26BA9B68C();
    [v7 setKeyPath_];

    [v7 setDuration_];
    v9 = sub_26BA9B68C();
    [a2 addAnimation:v7 forKey:v9];

    v10 = [objc_allocWithZone(MEMORY[0x277CD9E10]) init];
    v11 = sub_26BA9B68C();
    [v10 setKeyPath_];

    v12 = v10;
    [v12 setDuration_];
    [v12 setBeginTime_];
    v13 = sub_26BA9AE4C();
    [v12 setFromValue_];

    v14 = sub_26BA9AE4C();
    [v12 setToValue_];

    if (qword_280437710 != -1)
    {
      swift_once();
    }

    [v12 setTimingFunction_];
    LODWORD(v15) = 2139095039;
    [v12 setRepeatCount_];
    [v12 setAutoreverses_];
    [v12 setRemovedOnCompletion_];

    v18 = sub_26BA9B68C();
    [a2 addAnimation:v12 forKey:?];
  }

  else
  {
    v16 = sub_26BA9B68C();
    [a2 removeAnimationForKey_];

    v17 = sub_26BA9B68C();
    [a2 removeAnimationForKey_];

    v18 = sub_26BA9B68C();
    [a2 removeAnimationForKey_];
  }
}

uint64_t type metadata accessor for StickerCollectionStickerCell(uint64_t a1)
{
  result = qword_280AEB7D0;
  if (!qword_280AEB7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BA80648()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView;
    v3 = *(Strong + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView);
    }

    else
    {
      v5 = sub_26BA7B984();
      v6 = *(v1 + v2);
      *(v1 + v2) = v5;
      v4 = v5;

      v7 = [v1 contentView];
      [v7 addSubview_];

      v3 = 0;
    }

    v8 = v3;

    if ((*((*MEMORY[0x277D85000] & *v1) + 0xF8))())
    {
      [v1 setNeedsLayout];
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BA80768()
{
  result = qword_2804362A0;
  if (!qword_2804362A0)
  {
    sub_26BA3EF64(255, &qword_280436298, 0x277CD6928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804362A0);
  }

  return result;
}

void sub_26BA807D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0xC0);
    v3 = v2();
    v4 = v2();
    v5 = v4;
    if (!v3)
    {
      if (v4)
      {

        return;
      }

      goto LABEL_8;
    }

    if (v4)
    {
      sub_26BA3EF64(0, &qword_280436298, 0x277CD6928);
      v6 = sub_26BA9BAEC();

      if ((v6 & 1) == 0)
      {
LABEL_10:

        return;
      }

LABEL_8:
      v7 = &v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        v10 = 0;
        (*(v8 + 40))(&v10, v1, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      goto LABEL_10;
    }
  }
}

void sub_26BA8092C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0xC0))();
    if (v4)
    {
      v5 = v4;
      sub_26BA3EF64(0, &qword_280436298, 0x277CD6928);
      v6 = v1;
      v7 = sub_26BA9BAEC();

      if (v7)
      {
        v8 = &v3[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 1);
          ObjectType = swift_getObjectType();
          v11 = 1;
          (*(v9 + 40))(&v11, v3, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_26BA80A5C()
{
  v1 = *(sub_26BA9AD5C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_26BA7E750(v2, v3);
}

id sub_26BA80AC0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView);
  [v1 setAlpha_];
  CGAffineTransformMakeScale(&v3, 0.8, 0.8);
  return [v1 setTransform_];
}

void sub_26BA80B40()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    v1(v3);

    sub_26BA36050(v1, v2);
  }
}

uint64_t sub_26BA80B9C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_26BA80BAC()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell__rearrangingView];
  if (v2)
  {
    [v2 setHidden_];
  }

  [v1 setNeedsUpdateConfiguration];

  return [v1 setNeedsLayout];
}

uint64_t sub_26BA80C20(void *a1)
{
  v2 = v1;
  v4 = sub_26BA9B28C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_26BA9B2BC();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BA9B2DC();
  v37 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = &v1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v35 = v5;
    v36 = v4;
    v18 = *(v15 + 1);
    ObjectType = swift_getObjectType();
    if ((*(v18 + 8))(v2, ObjectType, v18))
    {
      v20 = [a1 state];
      if (v20 == 3)
      {
        v21 = [v2 superview];
        if (v21)
        {

          v22 = [v2 superview];
          [a1 locationInView_];
          v24 = v23;
          v26 = v25;

          [v2 frame];
          v43.x = v24;
          v43.y = v26;
          if (CGRectContainsPoint(v44, v43))
          {
            sub_26BA3EF64(0, &qword_280435B58, 0x277D85C78);
            v34 = sub_26BA9BA0C();
            sub_26BA9B2CC();
            sub_26BA9B2FC();
            v37 = *(v37 + 8);
            (v37)(v12, v9);
            v27 = swift_allocObject();
            v27[2] = v17;
            v27[3] = v18;
            v27[4] = v2;
            aBlock[4] = sub_26BA81318;
            aBlock[5] = v27;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_26BA3D478;
            aBlock[3] = &block_descriptor_55;
            v28 = _Block_copy(aBlock);
            swift_unknownObjectRetain();
            v29 = v2;

            sub_26BA9B2AC();
            aBlock[0] = MEMORY[0x277D84F90];
            sub_26BA81384(&qword_280435E00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60, &unk_26BA9D650);
            sub_26BA3EEB8();
            v30 = v39;
            v31 = v36;
            sub_26BA9BC5C();
            v32 = v34;
            MEMORY[0x26D68AFB0](v14, v8, v30, v28);
            _Block_release(v28);
            swift_unknownObjectRelease();

            (*(v35 + 8))(v30, v31);
            (*(v38 + 8))(v8, v40);
            return (v37)(v14, v9);
          }
        }
      }

      else if (v20 == 1)
      {
        (*(v18 + 24))(v2, ObjectType, v18);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26BA81248(uint64_t a1)
{
  sub_26BA52DC4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26BA81318()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v5 = 1;
  return (*(v1 + 16))(v2, &v5, ObjectType, v1);
}

uint64_t sub_26BA81384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BA8140C(unsigned __int8 a1)
{
  v1 = 0x544E45434552;
  if (a1)
  {
    v1 = 0x4E4F435F52455355;
  }

  if (a1 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 0x4452414F4259454BLL;
  }
}

uint64_t sub_26BA81494(char a1)
{
  if (a1 == 3)
  {
    return 0x4010000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BA814B0(unsigned __int8 a1)
{
  v1 = 0x746E65636572;
  if (a1)
  {
    v1 = 0x746E6F4372657375;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6472616F6279656BLL;
  }
}

uint64_t sub_26BA81550(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E65636572;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEE00746E65636552;
    v4 = 0xEC00000065646957;
    v6 = 0x6472616F6279656BLL;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xEB00000000746E65;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x746E6F4372657375;
    }

    else
    {
      v6 = 0x746E65636572;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0xEE00746E65636552;
  if (a2 != 2)
  {
    v9 = 0xEC00000065646957;
  }

  if (a2)
  {
    v2 = 0x746E6F4372657375;
    v8 = 0xEB00000000746E65;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x6472616F6279656BLL;
  }

  if (a2 <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_26BA9BE4C();
  }

  return v12 & 1;
}

uint64_t sub_26BA816C4()
{
  sub_26BA9BEEC();
  sub_26BA9B6EC();

  return sub_26BA9BF1C();
}

uint64_t sub_26BA817A0(uint64_t a1)
{
  sub_26BA9B6EC();
}

uint64_t sub_26BA81868(uint64_t a1)
{
  sub_26BA9BEEC();
  sub_26BA9B6EC();

  return sub_26BA9BF1C();
}

unint64_t sub_26BA81940@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BA821CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26BA81970(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746E65636572;
  v4 = 0xEE00746E65636552;
  if (*v1 != 2)
  {
    v4 = 0xEC00000065646957;
  }

  if (*v1)
  {
    v3 = 0x746E6F4372657375;
    v2 = 0xEB00000000746E65;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6472616F6279656BLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

void sub_26BA81A08()
{
  v0 = sub_26BA9B68C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_280438678 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_26BA81A80()
{
  if (qword_280437720 != -1)
  {
    swift_once();
  }

  return &qword_280438678;
}

id sub_26BA81AD0()
{
  if (qword_280437720 != -1)
  {
    swift_once();
  }

  v1 = qword_280438678;

  return v1;
}

uint64_t sub_26BA81B2C(uint64_t result)
{
  if (result == 3)
  {
    return 0;
  }

  if (result == 4)
  {
    __break(1u);
  }

  else
  {
    sub_26BA8209C(0x45545F5954504D45, 0xEA00000000005458, result);
    if (qword_280437720 != -1)
    {
      swift_once();
    }

    v1 = sub_26BA9ABEC();

    return v1;
  }

  return result;
}

uint64_t sub_26BA81C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = a4;
  v9 = sub_26BA9B1AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9B17C();
  v13 = sub_26BA9B25C();
  v20[3] = v13;
  v20[4] = MEMORY[0x277D74DC8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a1, v13);
  sub_26BA9B19C();
  (*(v10 + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_0(v20);
  sub_26BA9B15C();
  result = sub_26BA9B14C();
  if (v8 == 4)
  {
    __break(1u);
    return result;
  }

  if (v8 != 3)
  {
    sub_26BA8209C(0x45545F5954504D45, 0xEA00000000005458, v4);
    if (qword_280437720 != -1)
    {
      swift_once();
    }

    sub_26BA9ABEC();
  }

  sub_26BA9B16C();
  sub_26BA8209C(0xD000000000000014, 0x800000026BAA0A80, v4);
  if (qword_280437720 != -1)
  {
    swift_once();
  }

  sub_26BA9ABEC();

  result = sub_26BA9B10C();
  if (v4 == 3)
  {
    result = sub_26BA9B13C();
    if (!a2)
    {
      return result;
    }
  }

  else if (!a2 || !v4)
  {
    return result;
  }

  v16 = objc_opt_self();

  if (([v16 supportedAnalysisTypes] & 0x20) != 0)
  {
    sub_26BA8209C(0xD000000000000011, 0x800000026BAA0AA0, v4);
    sub_26BA9ABEC();

    v17 = sub_26BA9B18C();
    sub_26BA9BBDC();
    v17(v20, 0);
    sub_26BA82218();

    sub_26BA9BAFC();
    v18 = sub_26BA9B12C();
    sub_26BA9B11C();
    v18(v20, 0);
  }

  return sub_26BA36050(a2, a3);
}

uint64_t sub_26BA8209C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436310, &qword_26BA9E600);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26BA9DBE0;
  v7 = 0xE600000000000000;
  v8 = 0x544E45434552;
  v9 = a3 - 2;
  if (a3)
  {
    v8 = 0x4E4F435F52455355;
    v7 = 0xEC000000544E4554;
  }

  v10 = v9 >= 2;
  if (v9 >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0x4452414F4259454BLL;
  }

  if (!v10)
  {
    v7 = 0xEF544E454345525FLL;
  }

  *(v6 + 32) = v11;
  *(v6 + 40) = v7;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436318, &qword_26BA9E608);
  sub_26BA82588();
  v12 = sub_26BA9B66C();

  return v12;
}

unint64_t sub_26BA821CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26BA9BE1C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26BA82218()
{
  result = qword_280436090;
  if (!qword_280436090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280436090);
  }

  return result;
}

unint64_t sub_26BA82268()
{
  result = qword_280436308;
  if (!qword_280436308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280436308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for STKContentUnavailableConfigurationProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for STKContentUnavailableConfigurationProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for STKContentUnavailableConfigurationProvider.CollectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for STKContentUnavailableConfigurationProvider.CollectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BA82588()
{
  result = qword_280436320;
  if (!qword_280436320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280436318, &qword_26BA9E608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280436320);
  }

  return result;
}

uint64_t sub_26BA825EC()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_2804378B8);
  __swift_project_value_buffer(v0, qword_2804378B8);
  return sub_26BA9AF4C();
}

uint64_t sub_26BA82668(uint64_t a1)
{
  if (qword_2804378D0 != -1)
  {
    swift_once();
  }

  v2 = qword_2804378D8;
  v3 = *(qword_2804378D8 + 16);
  if (v3)
  {
    v4 = sub_26BA834DC(v3);
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(v2 + 16))
    {
      v5 = v2 + 16 * v4;
      v6 = *(v5 + 32);
      v7 = *(v5 + 40);

      v8 = _s10StickersUI14StickerFactoryC04makeC05emoji7inStore0A00C0CSJ_AI0C4TypeOtFZ_0(v6, v7, a1);

      return v8;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_2804378B0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v9 = sub_26BA9AF5C();
  __swift_project_value_buffer(v9, qword_2804378B8);
  v10 = sub_26BA9AF3C();
  v11 = sub_26BA9B94C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26BA33000, v10, v11, "Could not find a random sticker to use.", v12, 2u);
    MEMORY[0x26D68BFB0](v12, -1, -1);
  }

  return 0;
}

uint64_t static StickerFactory.makeSticker(emoji:emojiImage:inStore:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_26BA9B42C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26BA9AF2C();
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436328, &qword_26BA9E610);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26BA9D660;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v32 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436330, qword_26BA9E618);
  sub_26BA83E64();
  v14 = sub_26BA9B77C();
  v31 = v15;
  static TempStickerURIHelpers_Staging107211449.emoji(char:)(a1, a2);
  v16 = a3;
  v17 = UIImagePNGRepresentation(v16);
  if (v17)
  {
    v18 = v17;
    v19 = sub_26BA9ACEC();
    v28[1] = v14;
    v29 = a4;
    v20 = v19;
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0, &qword_26BA9D500);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26BA9DBD0;
    v30 = v16;
    sub_26BA3E7D0(v20, v22);
    sub_26BA9AF0C();
    [(UIImage *)v30 size];
    sub_26BA9B4FC();
    v28[0] = v11;
    v24 = objc_allocWithZone(sub_26BA9B55C());
    v11 = v28[0];
    *(v23 + 32) = sub_26BA9B52C();
    v25 = v22;
    a4 = v29;
    v16 = v30;
    sub_26BA3DF34(v20, v25);
  }

  (*(v9 + 16))(v11, a4, v8);
  v26 = objc_allocWithZone(sub_26BA9B61C());
  return sub_26BA9B5BC();
}

uint64_t sub_26BA82AF0()
{
  v0 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  sub_26BA835FC(128513, 128591);
  sub_26BA835FC(127744, 127777);
  sub_26BA835FC(127780, 127891);
  sub_26BA835FC(127897, 127899);
  sub_26BA835FC(127902, 127984);
  sub_26BA835FC(128000, 128317);
  sub_26BA835FC(128329, 128334);
  sub_26BA835FC(128336, 128359);
  sub_26BA835FC(128367, 128368);
  sub_26BA835FC(128371, 128378);
  sub_26BA835FC(128506, 128511);
  sub_26BA835FC(128513, 128591);
  sub_26BA835FC(128640, 128709);
  sub_26BA835FC(129292, 129535);
  v1 = *(v21 + 16);
  if (v1)
  {
    v2 = (v21 + 32);
    do
    {
      v4 = *v2++;
      v3 = v4;
      v5 = v4 & 0xFFFFF800;
      v6 = v4 >> 16;
      if (HIDWORD(v4))
      {
        v7 = 1;
      }

      else
      {
        v7 = v6 > 0x10;
      }

      if (!v7 && v5 != 55296)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_26BA832D4(0, *(v0 + 2) + 1, 1, v0);
        }

        v10 = *(v0 + 2);
        v9 = *(v0 + 3);
        if (v10 >= v9 >> 1)
        {
          v0 = sub_26BA832D4((v9 > 1), v10 + 1, 1, v0);
        }

        *(v0 + 2) = v10 + 1;
        *&v0[4 * v10 + 32] = v3;
      }

      --v1;
    }

    while (v1);
  }

  v12 = *(v0 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    while (v13 < *(v0 + 2))
    {
      v15 = sub_26BA9B6DC();
      v17 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26BA831C8(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_26BA831C8((v18 > 1), v19 + 1, 1, v14);
        v14 = result;
      }

      ++v13;
      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      if (v12 == v13)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_26:

    qword_2804378D8 = v14;
  }

  return result;
}

_OWORD *sub_26BA82E88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436358, &qword_26BA9E668);
    v1 = sub_26BA9BDEC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_26BA83FBC();
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_26BA410F4((v27 + 8), v25);
    sub_26BA410F4(v25, v27);
    sub_26BA9B6BC();
    sub_26BA9BEEC();
    sub_26BA9B6EC();
    v16 = sub_26BA9BF1C();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_26BA410F4(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26BA83130(uint64_t a1)
{
  sub_26BA840A4(&qword_280436350, &unk_26BA9E7F0);
  sub_26BA840A4(&qword_2804363A0, &unk_26BA9E744);

  return sub_26BA9BE0C();
}

char *sub_26BA831C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436328, &qword_26BA9E610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BA832D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436370, &qword_26BA9E678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_26BA833D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436378, &qword_26BA9E680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_26BA834DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D68BFD0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D68BFD0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26BA83568(uint64_t a1)
{
  sub_26BA9B6BC();
  sub_26BA9BEEC();
  sub_26BA9B6EC();
  v2 = sub_26BA9BF1C();

  return sub_26BA40814(a1, v2);
}

uint64_t sub_26BA835FC(uint64_t result, uint64_t a2)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = *v4;
  v7 = *(*v4 + 2);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    if (v29)
    {
      goto LABEL_15;
    }

    v16 = *(v3 + 2);
    v9 = v27;
    v10 = v28;
    LOBYTE(v15) = v28 == v27;
    if (v28 == v27)
    {
      v20 = 0;
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v9 = a2;
  v10 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v3 + 3) >> 1, v12 < v8))
  {
    if (v7 <= v8)
    {
      v13 = v7 + v6;
    }

    else
    {
      v13 = v7;
    }

    v3 = sub_26BA833D8(isUniquelyReferenced_nonNull_native, v13, 1, v3);
    v12 = *(v3 + 3) >> 1;
  }

  v14 = *(v3 + 2);
  v15 = v12 - v14;
  result = sub_26BA837E4(&v26, &v3[8 * v14 + 32], v12 - v14, v10, v9);
  if (result < v6)
  {
    goto LABEL_19;
  }

  if (result < 1)
  {
    goto LABEL_14;
  }

  v17 = *(v3 + 2);
  v18 = __OFADD__(v17, result);
  v19 = v17 + result;
  if (!v18)
  {
    *(v3 + 2) = v19;
LABEL_14:
    if (result != v15)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_24:
  v20 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_27:
    v16 = v2;
    goto LABEL_28;
  }

LABEL_29:
  while (1)
  {
    v21 = *(v3 + 3);
    v2 = v21 >> 1;
    if ((v21 >> 1) < v16 + 1)
    {
      break;
    }

    if (v16 < v2)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v3 + 2) = v16;
  }

  v23 = v3;
  v24 = v20;
  v25 = v16;
  result = sub_26BA833D8((v21 > 1), v16 + 1, 1, v23);
  v16 = v25;
  v20 = v24;
  v3 = result;
  v2 = *(result + 24) >> 1;
  if (v25 >= v2)
  {
    goto LABEL_28;
  }

LABEL_31:
  v22 = v16 + 4;
  while (1)
  {
    *&v3[8 * v22] = v10;
    if (v15)
    {
      break;
    }

    v10 = v20;
    LOBYTE(v15) = v20 == v9;
    if (v20 == v9)
    {
      v20 = 0;
    }

    else
    {
      ++v20;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }
    }

    if (++v22 - v2 == 4)
    {
      goto LABEL_27;
    }
  }

  *(v3 + 2) = v22 - 3;
LABEL_15:
  *v4 = v3;
  return result;
}

uint64_t sub_26BA837E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_26BA83888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436368, &qword_26BA9E670);
    v3 = sub_26BA9BDEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_26BA83568(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s10StickersUI14StickerFactoryC04makeC05emoji7inStore0A00C0CSJ_AI0C4TypeOtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v44 = sub_26BA9B42C();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BA9AF2C();
  MEMORY[0x28223BE20](v6 - 8);
  v38[1] = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436328, &qword_26BA9E610);
  v8 = swift_allocObject();
  v39 = xmmword_26BA9D660;
  *(v8 + 16) = xmmword_26BA9D660;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v46 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436330, qword_26BA9E618);
  sub_26BA83E64();
  v9 = sub_26BA9B77C();
  v40 = v10;
  v41 = v9;
  v11 = sub_26BA9B68C();
  v12 = [objc_opt_self() systemFontOfSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436340, &qword_26BA9E658);
  inited = swift_initStackObject();
  v14 = MEMORY[0x277D740A8];
  *(inited + 16) = v39;
  v15 = *v14;
  *(inited + 32) = v15;
  *(inited + 40) = v12;
  v16 = v15;
  v17 = v12;
  v18 = sub_26BA83888(inited);
  swift_setDeallocating();
  sub_26BA83F04(inited + 32);
  sub_26BA82E88(v18);
  type metadata accessor for Key();
  sub_26BA840A4(&qword_280436350, &unk_26BA9E7F0);
  v19 = sub_26BA9B62C();

  [v11 sizeWithAttributes_];
  v21 = v20;
  v23 = v22;

  v47.width = v21;
  v47.height = v23;
  UIGraphicsBeginImageContextWithOptions(v47, 0, 1.0);
  v24 = [objc_opt_self() clearColor];
  [v24 set];

  v48.origin.x = 0.0;
  v48.origin.y = 0.0;
  v48.size.width = v21;
  v48.size.height = v23;
  UIRectFill(v48);
  sub_26BA82E88(v18);

  v25 = sub_26BA9B62C();

  [v11 drawAtPoint:v25 withAttributes:{0.0, 0.0}];

  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  static TempStickerURIHelpers_Staging107211449.emoji(char:)(a1, a2);
  if (v26)
  {
    v27 = v26;
    v28 = UIImagePNGRepresentation(v27);
    if (v28)
    {
      v29 = v28;
      v30 = sub_26BA9ACEC();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0, &qword_26BA9D500);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_26BA9DBD0;
      sub_26BA3E7D0(v30, v32);
      sub_26BA9AF0C();
      [(UIImage *)v27 size];
      sub_26BA9B4FC();
      v34 = objc_allocWithZone(sub_26BA9B55C());
      *(v33 + 32) = sub_26BA9B52C();
      sub_26BA3DF34(v30, v32);
    }
  }

  (*(v42 + 16))(v43, v45, v44);
  v35 = objc_allocWithZone(sub_26BA9B61C());
  v36 = sub_26BA9B5BC();

  return v36;
}

unint64_t sub_26BA83E64()
{
  result = qword_280436338;
  if (!qword_280436338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280436330, qword_26BA9E618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280436338);
  }

  return result;
}

uint64_t sub_26BA83F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436348, &qword_26BA9E660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Key()
{
  if (!qword_280436380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280436380);
    }
  }
}

unint64_t sub_26BA83FBC()
{
  result = qword_280436360;
  if (!qword_280436360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280436360);
  }

  return result;
}

uint64_t sub_26BA840A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_26BA84138(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v5 = v3;
  v4(a1);

  return v5;
}

void sub_26BA841C0(void *a1)
{
  [v1 setAlpha_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() separatorColor];
  [v1 setBackgroundColor_];

  v4 = [a1 subviews];
  sub_26BA3EF64(0, &qword_280435D70, 0x277D75D18);
  v5 = sub_26BA9B7FC();

  if (v5 >> 62)
  {
    v6 = sub_26BA9BDBC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [a1 insertSubview:v1 atIndex:v6];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0, &qword_26BA9D500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26BA9E840;
  v9 = [v1 heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v8 + 32) = v10;
  v11 = [v1 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v8 + 40) = v13;
  v14 = [v1 leftAnchor];
  v15 = [a1 leftAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v8 + 48) = v16;
  v17 = [v1 rightAnchor];
  v18 = [a1 rightAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v8 + 56) = v19;
  sub_26BA3EF64(0, &qword_280435B48, 0x277CCAAD0);
  v20 = sub_26BA9B7EC();

  [v7 activateConstraints_];
}

id sub_26BA844F4(double a1)
{
  v2 = a1 / 75.0;
  if (v2 > 0.5)
  {
    v2 = 0.5;
  }

  return [v1 setAlpha_];
}

id sub_26BA84520(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = type metadata accessor for KeylineView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_26BA84618(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for KeylineView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_26BA846F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeylineView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26BA8472C()
{
  v0 = sub_26BA9B68C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_280437BE8 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_26BA847A4()
{
  if (qword_280437BE0 != -1)
  {
    swift_once();
  }

  return &qword_280437BE8;
}

id static String.stickersUIBundle.getter()
{
  if (qword_280437BE0 != -1)
  {
    swift_once();
  }

  v1 = qword_280437BE8;

  return v1;
}

uint64_t static String.stkLocalized(_:tableName:value:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_280437BE0 != -1)
  {
    swift_once();
  }

  return sub_26BA9ABEC();
}

uint64_t String.stkLocalized.getter(uint64_t a1, uint64_t a2)
{
  if (qword_280437BE0 != -1)
  {
    swift_once();
  }

  return sub_26BA9ABEC();
}

uint64_t sub_26BA849AC()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_280437BF8);
  __swift_project_value_buffer(v0, qword_280437BF8);
  return sub_26BA9AF4C();
}

void sub_26BA84A28()
{
  type metadata accessor for StickerFileCache(0);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_26BA84BD8();
  qword_280437C18 = v0;
}

uint64_t sub_26BA84A90()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_26BA84BD8();
  return v0;
}

uint64_t *sub_26BA84AF0()
{
  if (qword_280437C10 != -1)
  {
    swift_once();
  }

  return &qword_280437C18;
}

uint64_t static StickerFileCache.cache.getter()
{
  if (qword_280437C10 != -1)
  {
    swift_once();
  }
}

id sub_26BA84B9C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCABD8]);

  return [v0 init];
}

double sub_26BA84BD8()
{
  v0 = sub_26BA9AC2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BA9ACCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v9 = sub_26BA9B7FC();

  if (*(v9 + 16))
  {
  }

  else
  {

    v10 = NSTemporaryDirectory();
    sub_26BA9B6BC();
  }

  sub_26BA9AC4C();

  type metadata accessor for StickerFileCache(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v14 = sub_26BA9B6BC();
    v16 = v15;
  }

  else
  {
    v16 = 0x800000026BAA0B70;
    v14 = 0xD000000000000032;
  }

  v18[0] = v14;
  v18[1] = v16;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
  sub_26BA86730();
  sub_26BA9ACBC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);

  return result;
}

uint64_t sub_26BA84EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickersUI16StickerFileCache_cacheFolder;
  v4 = sub_26BA9ACCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_26BA84F2C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804363A8, ">J");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_26BA9ACCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26BA9B58C();
  if (v3)
  {
    return;
  }

  v14 = v13;
  v35 = v10;
  v36 = a2;
  v37 = 0;
  if (v13)
  {
    v34 = a3;
    v15 = v9;
    v16 = v12;
    goto LABEL_10;
  }

  v17 = sub_26BA9B56C();
  v15 = v9;
  if (v17 >> 62)
  {
    v26 = v17;
    v27 = sub_26BA9BDBC();
    v17 = v26;
    v16 = v12;
    if (v27)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = v12;
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v34 = a3;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D68B2E0](0, v17);
        goto LABEL_9;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(v17 + 32);
LABEL_9:
        v14 = v18;

LABEL_10:
        v19 = sub_26BA85DFC();
        v21 = v20;
        sub_26BA85480(v8);
        v22 = v35;
        if ((*(v35 + 48))(v8, 1, v15) == 1)
        {
          sub_26BA85FE4(v8);
          v23 = sub_26BA9B50C();
          v25 = v24;
          sub_26BA8561C(v23, v24, v19, v21, v36, v34);
          sub_26BA3DF34(v23, v25);
        }

        else
        {

          (*(v22 + 32))(v16, v8, v15);
          v36(v16);

          (*(v22 + 8))(v16, v15);
        }

        return;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  if (qword_280437BF0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v28 = sub_26BA9AF5C();
  __swift_project_value_buffer(v28, qword_280437BF8);
  v29 = sub_26BA9AF3C();
  v30 = sub_26BA9B94C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26BA33000, v29, v30, "Sticker does not contain any representations.", v31, 2u);
    MEMORY[0x26D68BFB0](v31, -1, -1);
  }

  sub_26BA8604C();
  swift_allocError();
  *v32 = 0;
  swift_willThrow();
}

uint64_t sub_26BA852F0(UIImage *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = UIImagePNGRepresentation(a1);
  if (v9)
  {
    v10 = v9;
    v11 = sub_26BA9ACEC();
    v13 = v12;

    MEMORY[0x26D68ACC0](1735290926, 0xE400000000000000);
    sub_26BA8561C(v11, v13, a2, a3, a4, a5);

    return sub_26BA3DF34(v11, v13);
  }

  else
  {
    sub_26BA8604C();
    swift_allocError();
    *v15 = 3;
    return swift_willThrow();
  }
}

double sub_26BA85404@<D0>(uint64_t x8_0@<X8>)
{

  MEMORY[0x26D68ACC0](1735290926, 0xE400000000000000);
  sub_26BA85480(x8_0);

  return result;
}

uint64_t sub_26BA85480@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_26BA9ACCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9AC6C();
  v8 = [objc_opt_self() defaultManager];
  sub_26BA9AC8C();
  v9 = sub_26BA9B68C();

  v10 = [v8 isReadableFileAtPath_];

  if (v10)
  {
    (*(v5 + 32))(a3, v7, v4);
    v11 = 0;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v11 = 1;
  }

  return (*(v5 + 56))(a3, v11, 1, v4);
}

uint64_t sub_26BA8561C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v7 = v6;
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v34 = a2;
  v9 = sub_26BA9ACCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v31 = &v28 - v14;
  sub_26BA9AC6C();
  (*(v10 + 16))(v13, v15, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 2) = v7;
  *(v18 + 3) = v19;
  *(v18 + 4) = v34;
  (*(v10 + 32))(&v18[v16], v13, v9);
  v20 = &v18[v17];
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  v22 = &v18[(v17 + 23) & 0xFFFFFFFFFFFFFFF8];
  v23 = v28;
  *v22 = a3;
  *(v22 + 1) = v23;
  aBlock[4] = sub_26BA862A8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA54094;
  aBlock[3] = &block_descriptor_5;
  v24 = _Block_copy(aBlock);
  v25 = objc_opt_self();

  sub_26BA3E7D0(v32, v34);

  v26 = [v25 blockOperationWithBlock_];
  _Block_release(v24);

  [*(v7 + 16) addOperation_];

  return (*(v10 + 8))(v31, v9);
}

void sub_26BA858D4()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26BA9AC5C();
  v16[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v16];

  if (v2)
  {
    v3 = v16[0];
  }

  else
  {
    v4 = v16[0];
    v5 = sub_26BA9AC1C();

    swift_willThrow();
    if (qword_280437BF0 != -1)
    {
      swift_once();
    }

    v6 = sub_26BA9AF5C();
    __swift_project_value_buffer(v6, qword_280437BF8);
    v7 = v5;
    v8 = sub_26BA9AF3C();
    v9 = sub_26BA9B94C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_26BA9BE8C();
      v14 = sub_26BA3DFF8(v12, v13, v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26BA33000, v8, v9, "Could not create temporary directory. %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D68BFB0](v11, -1, -1);
      MEMORY[0x26D68BFB0](v10, -1, -1);
    }

    sub_26BA8604C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }
}

uint64_t sub_26BA85B98(unsigned __int8 a1)
{
  sub_26BA9BEEC();
  MEMORY[0x26D68B4C0](a1);
  return sub_26BA9BF1C();
}

uint64_t sub_26BA85BF4()
{
  v1 = *v0;
  sub_26BA9BEEC();
  MEMORY[0x26D68B4C0](v1);
  return sub_26BA9BF1C();
}

uint64_t sub_26BA85C68(uint64_t a1)
{
  v2 = *v1;
  sub_26BA9BEEC();
  MEMORY[0x26D68B4C0](v2);
  return sub_26BA9BF1C();
}

uint64_t StickerFileCache.deinit()
{
  v1 = OBJC_IVAR____TtC10StickersUI16StickerFileCache_cacheFolder;
  v2 = sub_26BA9ACCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StickerFileCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10StickersUI16StickerFileCache_cacheFolder;
  v2 = sub_26BA9ACCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26BA85DB8()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_26BA84BD8();
  return v0;
}

uint64_t sub_26BA85DFC()
{
  v0 = sub_26BA9AF2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BA9AD5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9B4AC();
  v8 = sub_26BA9AD1C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v17 = v8;
  v18 = v10;
  sub_26BA9B4BC();
  v11 = sub_26BA9AEEC();
  v13 = v12;
  (*(v1 + 8))(v3, v0);
  if (v13)
  {
    v15 = 46;
    v16 = 0xE100000000000000;
    MEMORY[0x26D68ACC0](v11, v13);

    MEMORY[0x26D68ACC0](v15, v16);
  }

  return v17;
}

uint64_t sub_26BA85FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804363A8, ">J");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BA8604C()
{
  result = qword_2804363B0;
  if (!qword_2804363B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804363B0);
  }

  return result;
}

unint64_t sub_26BA860A4()
{
  result = qword_2804363B8;
  if (!qword_2804363B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804363B8);
  }

  return result;
}

uint64_t type metadata accessor for StickerFileCache(uint64_t a1)
{
  result = qword_280437DA0;
  if (!qword_280437DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BA8614C(uint64_t a1)
{
  result = sub_26BA9ACCC();
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

void sub_26BA862A8()
{
  v1 = v0;
  v2 = *(sub_26BA9ACCC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_26BA858D4();
  v5 = [objc_opt_self() defaultManager];
  sub_26BA9AC8C();
  v6 = sub_26BA9B68C();

  v7 = [v5 fileExistsAtPath_];

  if ((v7 & 1) == 0)
  {
    sub_26BA9ACFC();
  }

  v4(v1 + v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BA86730()
{
  result = qword_2804363C0;
  if (!qword_2804363C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804363C0);
  }

  return result;
}

double sub_26BA86784(char a1)
{
  result = 3.0;
  if (a1 == 4)
  {
    result = 4.0;
  }

  if (a1 == 5)
  {
    return 6.0;
  }

  return result;
}

double sub_26BA867A8(char a1)
{
  result = 3.0;
  if (a1 == 4)
  {
    result = 2.0;
  }

  if (a1 == 5)
  {
    return 1.0;
  }

  return result;
}

void *sub_26BA867CC(char a1, char a2)
{
  if (a2 == 4)
  {
    v3 = &unk_287C704A0;
    v4 = &unk_287C70440;
  }

  else
  {
    if (a2 == 5)
    {
      if (a1)
      {
        return sub_26BA8682C(&unk_287C703F0);
      }

      else
      {
        return &unk_287C703F0;
      }
    }

    v3 = &unk_287C70568;
    v4 = &unk_287C70500;
  }

  if (a1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26BA8682C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BA8B614(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_26BA868E4(char a1, char a2)
{
  if (a2 == 4)
  {
    v5 = &unk_287C704A0;
    v6 = &unk_287C70440;
    goto LABEL_8;
  }

  if (a2 != 5)
  {
    v5 = &unk_287C70568;
    v6 = &unk_287C70500;
LABEL_8:
    if (a1)
    {
      v3 = v6;
    }

    else
    {
      v3 = v5;
    }

    v4 = v3[2];
    if (v4)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    v3 = sub_26BA8682C(&unk_287C703F0);
    v4 = v3[2];
    if (!v4)
    {
      goto LABEL_15;
    }

LABEL_12:
    v7 = 0;
    while (v3[v7 + 4] != -1)
    {
      if (v4 == ++v7)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_30;
  }

  v3 = &unk_287C703F0;
  v4 = qword_287C70400;
  if (qword_287C70400)
  {
    goto LABEL_12;
  }

LABEL_15:

  v8 = 1.0;
  v9 = 3.0;
  if (a2 == 5)
  {
    v9 = 6.0;
  }

  else
  {
    v8 = 3.0;
  }

  if (a2 == 4)
  {
    v10 = 2.0;
  }

  else
  {
    v10 = v8;
  }

  if (a2 == 4)
  {
    v11 = 4.0;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 * v11;
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    return;
  }

  if (__OFSUB__(v12, 1))
  {
    __break(1u);
LABEL_30:
  }
}

double sub_26BA86A38(char a1)
{
  result = 6.0;
  if (a1 == 4)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    result = 6.0;
    if (v3 == 1)
    {
      return 24.0;
    }
  }

  return result;
}

uint64_t sub_26BA86AB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E696665646E75;
  v3 = 0xE900000000000064;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x657261757173;
  v7 = 0x70616373646E616CLL;
  v8 = 0xE900000000000065;
  if (a1 != 4)
  {
    v7 = 0x696D61726F6E6170;
    v8 = 0xE900000000000063;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x7061726373796B73;
  v10 = 0xEA00000000007265;
  if (a1 != 1)
  {
    v9 = 0x7469617274726F70;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x656E696665646E75;
    v10 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = 0xE600000000000000;
      if (v11 != 0x657261757173)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v3 = 0xE900000000000065;
      if (v11 != 0x70616373646E616CLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v3 = 0xE900000000000063;
      if (v11 != 0x696D61726F6E6170)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xEA00000000007265;
        if (v11 != 0x7061726373796B73)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0xE800000000000000;
      v2 = 0x7469617274726F70;
    }

    if (v11 != v2)
    {
LABEL_31:
      v13 = sub_26BA9BE4C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v3)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_26BA86C90(unsigned __int8 a1)
{
  v1 = 0x656E696665646E75;
  v2 = 0x657261757173;
  v3 = 0x70616373646E616CLL;
  if (a1 != 4)
  {
    v3 = 0x696D61726F6E6170;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x7061726373796B73;
  if (a1 != 1)
  {
    v4 = 0x7469617274726F70;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26BA86D60(unsigned __int8 a1)
{
  sub_26BA9BEEC();
  sub_26BA9B6EC();

  return sub_26BA9BF1C();
}

double sub_26BA86E68(uint64_t a1)
{
  sub_26BA9B6EC();

  return result;
}

uint64_t sub_26BA86F60(uint64_t a1, unsigned __int8 a2)
{
  sub_26BA9BEEC();
  sub_26BA9B6EC();

  return sub_26BA9BF1C();
}

unint64_t sub_26BA87064@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BA8C480(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26BA87094(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x656E696665646E75;
  v4 = 0xE600000000000000;
  v5 = 0x657261757173;
  v6 = 0xE900000000000065;
  v7 = 0x70616373646E616CLL;
  if (v2 != 4)
  {
    v7 = 0x696D61726F6E6170;
    v6 = 0xE900000000000063;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000007265;
  v9 = 0x7061726373796B73;
  if (v2 != 1)
  {
    v9 = 0x7469617274726F70;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_26BA8716C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_moreButtonIdentifier;
  v4 = sub_26BA9AD5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26BA871E4()
{
  v1 = [v0 view];
  if (!v1)
  {
    return 8;
  }

  v2 = v1;
  v3 = [v1 bounds];
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v8 = v4 / v5;
    if (v4 / v5 >= 1.0)
    {
      if (v8 <= 1.34)
      {
        v6 = 3;
      }

      else if (v8 < 5.0)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }

    else if (v8 <= 0.2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x5E0))(v3);
  sub_26BA868E4(v9 & 1, v6);
  v11 = v10;

  return v11;
}

BOOL sub_26BA872F4()
{
  v0 = sub_26BA9AD8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BA9ADAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentLocale];
  sub_26BA9AD6C();

  sub_26BA9AD9C();
  (*(v5 + 8))(v7, v4);
  v9 = sub_26BA9AD7C();
  (*(v1 + 8))(v3, v0);
  return v9 == 2;
}

double sub_26BA87578(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

double sub_26BA8762C()
{
  v1 = v0 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_previousContainerSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_26BA87674(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_previousContainerSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_26BA8772C()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v0);
  ObjectType = swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D681A0], v1);
  v6 = (*(ObjectType + 1096))(v4, 0.0, 0.0, 0.0, 0.0);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_26BA87884()
{
  v0 = sub_26BA9B42C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(v1 + 104))(v3, *MEMORY[0x277D681A0], v0);
  v5 = (*(ObjectType + 1096))(v3, 0.0, 0.0, 0.0, 0.0);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t StickerKeyboardRecentCollectionViewController.__allocating_init(with:storeType:)(uint64_t a1)
{
  v3 = sub_26BA9B42C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  sub_26BA9AD4C();
  v8 = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellUUIDs] = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellIndexPaths] = v8;
  v9 = &v7[OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_previousContainerSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D681A0], v3);
  v10 = StickerCollectionViewController.init(with:storeType:)(v6);
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t StickerKeyboardRecentCollectionViewController.init(with:storeType:)(uint64_t a1)
{
  v3 = sub_26BA9B42C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9AD4C();
  v7 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellUUIDs) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellIndexPaths) = v7;
  v8 = (v1 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_previousContainerSize);
  *v8 = 0;
  v8[1] = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D681A0], v3);
  v9 = StickerCollectionViewController.init(with:storeType:)(v6);
  (*(v4 + 8))(a1, v3);
  return v9;
}

void sub_26BA87E18(uint64_t a1)
{
  sub_26BA9AD4C();
  v2 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellUUIDs) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_blankCellIndexPaths) = v2;
  v3 = (v1 + OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_previousContainerSize);
  *v3 = 0;
  v3[1] = 0;
  sub_26BA9BD9C();
  __break(1u);
}

uint64_t sub_26BA87F5C()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x630))())
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_26BA87FB8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    if (v4 == 0.0 || (v7 = v3 / v4, v3 / v4 < 1.0) || v7 <= 1.34 || v7 < 5.0)
    {
      v5 = sub_26BA9BE4C();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_26BA88110()
{
  sub_26BA59C00();
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setScrollEnabled_];
}

void sub_26BA881E8()
{
  v1 = v0;
  sub_26BA5A924();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  type metadata accessor for StickerCollectionBlankCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_26BA9B68C();
  [v3 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  type metadata accessor for StickerCollectionMoreButtonCell();
  v8 = swift_getObjCClassFromMetadata();
  v9 = sub_26BA9B68C();
  [v7 registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x380);
  v11 = v10();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = sub_26BA9B1FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E28, &qword_26BA9EA10);
  sub_26BA9B1EC();
  v13(v17, 0);

  v14 = v10();
  if (v14)
  {
    v15 = v14;
    v16 = sub_26BA9B1FC();
    sub_26BA9B1DC();
    v16(v17, 0);

    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_26BA88438(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50, &unk_26BA9DBF0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  v10 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x380))(v7);
  if (result)
  {
    v12 = result;
    v13 = (*((*v10 & *v1) + 0x398))();
    (*(*v13 + 192))(v13);

    (*((*v10 & *v1) + 0x4E0))(v6);
    v14 = *(v3 + 8);
    v14(v6, v2);
    sub_26BA9B20C();

    return (v14)(v9, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BA88678()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StickerKeyboardRecentCollectionViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_26BA887DC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v4[4] = sub_26BA888A0;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26BA70B38;
  v4[3] = &block_descriptor_6;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithSectionProvider_];
  _Block_release(v1);

  return v2;
}

id sub_26BA888A0(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = 3.0;
  v7 = 0;
  if (v5 == 0.0)
  {
    v8 = 0x3FD5555555555555;
LABEL_3:
    v9 = *&v8;
    goto LABEL_4;
  }

  v30 = v3 / v5;
  v9 = 0.333333333;
  if (v30 >= 1.0 && v30 > 1.34)
  {
    if (v30 >= 5.0)
    {
      v7 = 0;
      v6 = 1.0;
      v8 = 0x3FC5555555555555;
      goto LABEL_3;
    }

    v9 = 0.25;
    v6 = 2.0;
    v7 = 1;
  }

LABEL_4:
  v10 = 1.0 / v6;
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension_];
  v13 = [v11 fractionalWidthDimension_];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize_];
  v17 = 6.0;
  [v16 setContentInsets_];
  v18 = [v11 fractionalWidthDimension_];
  v19 = [v11 fractionalHeightDimension_];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0, &qword_26BA9D500);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26BA9DBD0;
  *(v22 + 32) = v16;
  sub_26BA3EF64(0, &qword_2804360F8, 0x277CFB860);
  v23 = v16;
  v24 = sub_26BA9B7EC();

  v25 = [v21 horizontalGroupWithLayoutSize:v20 subitems:v24];

  v26 = [objc_opt_self() sectionWithGroup_];
  if (v7)
  {
    v27 = [objc_opt_self() currentDevice];
    v28 = [v27 userInterfaceIdiom];

    if (v28 == 1)
    {
      v17 = 24.0;
    }

    else
    {
      v17 = 6.0;
    }
  }

  [v26 setContentInsets_];

  return v26;
}

void sub_26BA88C14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = sub_26BA9AE2C();
  v5 = *(v80 - 8);
  v6 = MEMORY[0x28223BE20](v80);
  v79 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = v71 - v8;
  v9 = sub_26BA9AD5C();
  v95 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v88 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v77 = v71 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v76 = v71 - v17;
  MEMORY[0x28223BE20](v16);
  v96 = v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08, qword_26BA9E430);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v87 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50, &unk_26BA9DBF0);
  v25 = sub_26BA9B08C();
  v26 = v25;
  v27 = *(v25 + 16);
  v28 = 8;
  if (v27 < 8)
  {
    v28 = *(v25 + 16);
  }

  v85 = v28;
  if (!v27)
  {
    (*(*(v24 - 8) + 16))(a2, a1, v24);

    return;
  }

  v94 = v5;
  v29 = MEMORY[0x277D85000];
  v30 = MEMORY[0x277D84FA0];
  (*((*MEMORY[0x277D85000] & *v2) + 0x5F0))(MEMORY[0x277D84FA0]);
  (*((*v29 & *v2) + 0x608))(v30);
  v31 = [v2 view];
  if (!v31)
  {
    goto LABEL_50;
  }

  v32 = v31;
  [v31 bounds];
  v34 = v33;
  v36 = v35;

  if (v36 == 0.0 || (v66 = v34 / v36, v66 < 1.0) || v66 <= 1.34)
  {
    if ((*((*MEMORY[0x277D85000] & *v2) + 0x5E0))())
    {
      v37 = &unk_287C70500;
    }

    else
    {
      v37 = &unk_287C70568;
    }

    v38 = v94;
  }

  else
  {
    v67 = (*((*MEMORY[0x277D85000] & *v2) + 0x5E0))();
    v38 = v94;
    if (v66 >= 5.0)
    {
      if (v67)
      {
        v37 = sub_26BA8682C(&unk_287C703F0);
      }

      else
      {
        v37 = &unk_287C703F0;
      }
    }

    else if (v67)
    {
      v37 = &unk_287C70440;
    }

    else
    {
      v37 = &unk_287C704A0;
    }
  }

  v91 = v37[2];
  if (!v91)
  {

    v42 = MEMORY[0x277D84F90];
LABEL_45:
    (*(*(v24 - 8) + 16))(a2, a1, v24);
    sub_26BA9B04C();
    sub_26BA9B03C();
    v97[0] = v42;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CB0, "(M");
    v69 = sub_26BA8C5E0();
    v70 = sub_26BA8C8C8(&qword_280435C88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_26BA44E94(v68, v69, v70);

    LOBYTE(v97[0]) = 1;
    sub_26BA9AFEC();

    return;
  }

  v71[0] = v24;
  v86 = v2;
  v72 = a1;
  v73 = a2;
  v39 = 0;
  v40 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v71[1] = v26;
  v90 = v40;
  v74 = v26 + v40;
  v81 = OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_moreButtonIdentifier;
  v83 = (v95 + 56);
  v41 = (v95 + 16);
  v92 = (v95 + 48);
  v93 = (v95 + 32);
  v89 = (v95 + 8);
  v75 = (v38 + 1);
  v42 = MEMORY[0x277D84F90];
  v43 = v82;
  v44 = v87;
  v84 = v23;
  v45 = v37;
  v94 = (v95 + 16);
  while (1)
  {
    v47 = v45[v39 + 4];
    if (v47 == -1)
    {
      (*v41)(v88, &v86[v81], v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_26BA4C898(0, *(v42 + 2) + 1, 1, v42);
      }

      v50 = *(v42 + 2);
      v49 = *(v42 + 3);
      if (v50 >= v49 >> 1)
      {
        v42 = sub_26BA4C898((v49 > 1), v50 + 1, 1, v42);
      }

      *(v42 + 2) = v50 + 1;
      (*(v95 + 32))(&v42[v90 + *(v95 + 72) * v50], v88, v9);
      goto LABEL_13;
    }

    if (v47 >= v85)
    {
      v48 = 1;
      goto LABEL_24;
    }

    if (v47 < 0)
    {
      break;
    }

    (*(v95 + 16))(v23, v74 + *(v95 + 72) * v47, v9);
    v48 = 0;
LABEL_24:
    (*v83)(v23, v48, 1, v9);
    sub_26BA3DF88(v23, v44);
    v51 = *v92;
    if ((*v92)(v44, 1, v9) == 1)
    {
      sub_26BA9AD4C();
      if (v51(v44, 1, v9) != 1)
      {
        sub_26BA8C578(v44);
      }
    }

    else
    {
      (*v93)(v96, v44, v9);
    }

    v52 = v51(v23, 1, v9);
    v53 = *v41;
    if (v52 == 1)
    {
      v54 = v45;
      v55 = v77;
      v53(v77, v96, v9);
      v56 = v86;
      v57 = (*((*MEMORY[0x277D85000] & *v86) + 0x5F8))(v97);
      v58 = v76;
      sub_26BA4CBF4(v76, v55);
      (*v89)(v58, v9);
      v57(v97, 0);
      v59 = v79;
      MEMORY[0x26D68A3D0](v39, 0);
      v60 = (*((*MEMORY[0x277D85000] & *v56) + 0x610))(v97);
      v61 = v78;
      v62 = v59;
      v63 = v82;
      sub_26BA8B628(v78, v62);
      (*v75)(v61, v80);
      v60(v97, 0);
      v45 = v54;
      v43 = v63;
    }

    v53(v43, v96, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_26BA4C898(0, *(v42 + 2) + 1, 1, v42);
    }

    v44 = v87;
    v65 = *(v42 + 2);
    v64 = *(v42 + 3);
    if (v65 >= v64 >> 1)
    {
      v42 = sub_26BA4C898((v64 > 1), v65 + 1, 1, v42);
    }

    v46 = v95;
    (*(v95 + 8))(v96, v9);
    *(v42 + 2) = v65 + 1;
    (*(v46 + 32))(&v42[v90 + *(v46 + 72) * v65], v43, v9);
    v23 = v84;
    sub_26BA8C578(v84);
LABEL_13:
    ++v39;
    v41 = v94;
    if (v91 == v39)
    {

      a2 = v73;
      a1 = v72;
      v24 = v71[0];
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_26BA89764()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for StickerKeyboardRecentCollectionViewController(0);
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x277D85000];
  if (v4 != (*((*MEMORY[0x277D85000] & *v0) + 0x618))() || v6 != v8)
  {
    v10 = [v0 view];
    if (v10)
    {
      v11 = v10;
      [v10 bounds];
      v13 = v12;
      v15 = v14;

      (*((*v7 & *v0) + 0x620))(v13, v15);
      sub_26BA88438(0);
      return;
    }

LABEL_10:
    __break(1u);
  }
}

void *sub_26BA89918(uint64_t a1)
{
  v2 = v1;
  result = sub_26BA5DE7C(a1);
  if (!result)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x600))();
    v7 = sub_26BA89B80(a1, v6);

    if (v7)
    {
      result = [v1 collectionView];
      if (result)
      {
        v8 = result;
        v9 = sub_26BA9B68C();
        v10 = sub_26BA9ADCC();
        v11 = [v8 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v10];

        return v11;
      }

      __break(1u);
      goto LABEL_13;
    }

    v12 = sub_26BA9AE1C();
    if (v12 == (*((*v5 & *v1) + 0x5D8))())
    {
      result = [v1 collectionView];
      if (!result)
      {
LABEL_13:
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = sub_26BA9B68C();
      v15 = sub_26BA9ADCC();
      v16 = [v13 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v15];

      type metadata accessor for StickerCollectionMoreButtonCell();
      v17 = v16;
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = *((*v5 & *v18) + 0x70);
        v20 = v16;
        v21 = v2;
        v19(v2, &off_287C70720);
      }

      return v17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BA89B80(uint64_t a1, uint64_t a2)
{
  v3 = sub_26BA9AE2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_26BA8C8C8(&qword_2804363E8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]), v7 = sub_26BA9B64C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_26BA8C8C8(&qword_2804363F0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v15 = sub_26BA9B67C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_26BA89D98(uint64_t a1)
{
  if (sub_26BA5DE04())
  {
    return 1;
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x600))();
  v5 = sub_26BA89B80(a1, v4);

  if (v5)
  {
    return 1;
  }

  v7 = sub_26BA9AE1C();
  return v7 == (*((*v3 & *v1) + 0x5D8))();
}

double sub_26BA89F54()
{
  v1 = OBJC_IVAR___STKStickerKeyboardRecentCollectionViewController_moreButtonIdentifier;
  v2 = sub_26BA9AD5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

void *sub_26BA8A088()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))();
  if (result)
  {
    [result stickerCollectionViewControllerRequestsMoreStickers_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26BA8A138(double a1, double a2, double a3, double a4)
{
  v14.receiver = v4;
  v14.super_class = type metadata accessor for StickerCollectionBlankCell();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  return v11;
}

id sub_26BA8A3C4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D18]);

  return [v0 init];
}

id sub_26BA8A40C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75220]);

  return [v0 init];
}

uint64_t sub_26BA8A494(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void *sub_26BA8A554(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_circleView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_button;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v11 = &v4[OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_delegate];
  v12 = type metadata accessor for StickerCollectionMoreButtonCell();
  *v11 = 0;
  *(v11 + 1) = 0;
  v59.receiver = v4;
  v59.super_class = v12;
  v13 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor_];

  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v15) + 0x80))();
  (*((*v17 & *v15) + 0x88))(v18);
  v19 = [v15 contentView];
  v20 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_circleView;
  [v19 addSubview_];

  v21 = [v15 &selRef_registerClass_forCellWithReuseIdentifier_];
  v22 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_button;
  [v21 addSubview_];

  v58 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0, &qword_26BA9D500);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26BA9D4C0;
  v24 = [*(v15 + v20) widthAnchor];
  v25 = [v15 &selRef_registerClass_forCellWithReuseIdentifier_];
  v26 = [v25 widthAnchor];

  v27 = [v24 constraintLessThanOrEqualToAnchor_];
  *(v23 + 32) = v27;
  v28 = [*(v15 + v20) heightAnchor];
  v29 = [v15 &selRef_registerClass_forCellWithReuseIdentifier_];
  v30 = [v29 heightAnchor];

  v31 = [v28 &off_279D142B0 + 3];
  *(v23 + 40) = v31;
  v32 = [*(v15 + v20) widthAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v23 + 48) = v33;
  v34 = [*(v15 + v20) heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v23 + 56) = v35;
  v36 = [*(v15 + v20) centerXAnchor];
  v37 = [v15 contentView];
  v38 = [v37 &selRef_quaternarySystemFillColor + 2];

  v39 = [v36 constraintEqualToAnchor_];
  *(v23 + 64) = v39;
  v40 = [*(v15 + v20) centerYAnchor];
  v41 = [v15 contentView];

  v42 = [v41 centerYAnchor];
  v43 = [v40 &selRef:v42 animateWithDuration:? animations:? completion:? + 5];

  *(v23 + 72) = v43;
  v44 = [*(v15 + v22) widthAnchor];
  v45 = [*(v15 + v20) widthAnchor];
  v46 = [v44 constraintLessThanOrEqualToAnchor_];

  *(v23 + 80) = v46;
  v47 = [*(v15 + v22) heightAnchor];
  v48 = [*(v15 + v20) heightAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor_];

  *(v23 + 88) = v49;
  v50 = [*(v15 + v22) centerXAnchor];
  v51 = [*(v15 + v20) centerXAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v23 + 96) = v52;
  v53 = [*(v15 + v22) centerYAnchor];
  v54 = [*(v15 + v20) centerYAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v23 + 104) = v55;
  sub_26BA3EF64(0, &qword_280435B48, 0x277CCAAD0);
  v56 = sub_26BA9B7EC();

  [v58 activateConstraints_];

  [v15 setClipsToBounds_];
  return v15;
}

void sub_26BA8AC10()
{
  v1 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_circleView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_button;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v3 = (v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_delegate);
  *v3 = 0;
  v3[1] = 0;
  sub_26BA9BD9C();
  __break(1u);
}

void sub_26BA8AD94()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_circleView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v1 layer];
  [v2 setMasksToBounds_];

  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6[4] = sub_26BA8AEC4;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26BA8B5AC;
  v6[3] = &block_descriptor_9;
  v4 = _Block_copy(v6);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  [v1 setBackgroundColor_];
}

id sub_26BA8AEC4(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 2)
  {
    v3 = 0.282352941;
    v4 = 1.0;
    v5 = 0.282352941;
    v6 = 0.282352941;
  }

  else
  {
    v3 = 0.811764706;
    v5 = 0.82745098;
    v6 = 0.862745098;
    v4 = 1.0;
  }

  return [v2 initWithDisplayP3Red:v3 green:v5 blue:v6 alpha:v4];
}

void sub_26BA8AF50()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11[4] = sub_26BA8B178;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_26BA8B5AC;
  v11[3] = &block_descriptor_12_0;
  v2 = _Block_copy(v11);
  v3 = [v1 initWithDynamicProvider_];
  _Block_release(v2);

  v4 = sub_26BA9B68C();
  v5 = [objc_opt_self() _systemImageNamed_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:20.0];
  v7 = [v5 imageByApplyingSymbolConfiguration_];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = *(v0 + OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_button);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v8 imageView];
  if (v9)
  {
    v10 = v9;
    [v9 setContentMode_];
  }

  [v8 setTintColor_];
  [v8 setImage:v7 forState:0];
  [v8 addTarget:v0 action:sel_didPressButton_ forControlEvents:64];
}

id sub_26BA8B178(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D75348]);
    v3 = 1.0;
    v4 = 0.25;
  }

  else
  {
    v5 = [a1 accessibilityContrast];
    v2 = objc_allocWithZone(MEMORY[0x277D75348]);
    if (v5 == 1)
    {
      v4 = 0.65;
      v3 = 0.0;
    }

    else
    {
      v3 = 0.0;
      v4 = 0.5;
    }
  }

  return [v2 initWithWhite:v3 alpha:v4];
}

void sub_26BA8B224()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StickerCollectionMoreButtonCell();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  if (v3 > 40.0)
  {
    v3 = 40.0;
  }

  v4 = [*&v0[OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_circleView] layer];
  [v4 setCornerRadius_];
}

uint64_t sub_26BA8B3B8()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26BA8B518(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_26BA8B5AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_26BA8B628(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26BA9AE2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26BA8C8C8(&qword_2804363E8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v33 = a2;
  v11 = sub_26BA9B64C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_26BA8C8C8(&qword_2804363F0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v21 = sub_26BA9B67C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_26BA8BC64(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26BA8B908(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26BA9AE2C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804363F8, &qword_26BA9EBB8);
  result = sub_26BA9BCBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_26BA8C8C8(&qword_2804363E8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      result = sub_26BA9B64C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}
uint64_t sub_219981E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870(0);
  v30 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219984D14(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
  v18 = *(v17 + 48);
  v19 = a1[1];
  *v16 = *a1;
  v16[1] = v19;
  sub_219984DF4(a1, v16 + v18, type metadata accessor for InlineCategoriesMagazineFeedGroup);
  v29[3] = v16;
  v29[4] = v14;
  swift_storeEnumTagMultiPayload();
  v20 = a1[7];
  v21 = *(v20 + 16);
  if (v21)
  {
    v29[1] = v13;
    v29[2] = a2;
    v32 = MEMORY[0x277D84F90];

    sub_218C35700(0, v21, 0);
    v22 = v32;
    v23 = v20 + 32;
    do
    {
      sub_21896FC94(v23, v31);
      sub_21896FC94(v31, v6);
      swift_storeEnumTagMultiPayload();
      sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
      sub_219BE5FB4();
      sub_218C113E0(v31);
      v32 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_218C35700((v24 > 1), v25 + 1, 1);
        v22 = v32;
      }

      *(v22 + 16) = v25 + 1;
      (*(v8 + 32))(v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v10, v30);
      v23 += 176;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v26 = sub_219984FE0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
  v27 = sub_219984FE0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v22, v30, v26, v27);
  sub_219984FE0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  return sub_219BE6924();
}

id sub_2199822CC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v78 = a3;
  v75 = a2;
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEF8A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v80);
  v71 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = &v71 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  sub_218951DB0(0);
  v25 = v24;
  sub_219BE6934();
  v79 = a1;
  sub_219BE6934();
  v26 = sub_2193B1600();
  sub_219984BFC(v20, type metadata accessor for MagazineFeedSectionDescriptor);
  if (!v26)
  {
    goto LABEL_6;
  }

  v72 = v8;
  v73 = v25;
  v27 = v23;
  v74 = a4;
  v28 = [v26 identifier];
  swift_unknownObjectRelease();
  v29 = sub_219BF5414();
  v31 = v30;

  v32 = v81[11];
  result = [v32 mutedTagIDs];
  if (result)
  {
    v34 = result;
    v35 = sub_219BF5D44();

    v36 = sub_2188537B8(v29, v31, v35);

    sub_2193B1CF0(v14);
    v37 = sub_219BEF894();
    (*(v12 + 8))(v14, v11);
    result = [v32 ignoredTagIDs];
    if (result)
    {
      v38 = result;
      v39 = sub_219BF5D44();

      v40 = sub_2188537B8(v29, v31, v39);

      v23 = v27;
      v25 = v73;
      a4 = v74;
      v8 = v72;
      if (v36 & ~v37 & 1) != 0 || (v40)
      {
        v46 = *(v73 - 8);
        v47 = 1;
LABEL_15:
        (*(v46 + 56))(a4, v47, 1, v25);
        return sub_219984BFC(v23, type metadata accessor for MagazineFeedSectionDescriptor);
      }

LABEL_6:
      if (v78 > 1u)
      {
        if (v78 != 2)
        {
          v56 = v71;
          v57 = v79;
          sub_219BE6934();
          if (swift_getEnumCaseMultiPayload() == 5)
          {
            sub_2186EBC7C(0);
            v59 = v58;
            v60 = *(v56 + *(v58 + 48));
            sub_219984CAC(v56, v8, type metadata accessor for MyMagazinesMagazineFeedGroup);
            v61 = v81;
            v62 = v8;
            v63 = v81[9];
            v64 = v81[10];
            __swift_project_boxed_opaque_existential_1(v81 + 6, v63);
            sub_2195ED0E0(v61, v63, v64);
            if (v65 != v60)
            {
              v68 = v65;
              v69 = *(v59 + 48);
              v70 = v76;
              sub_219984DF4(v62, v76, type metadata accessor for MyMagazinesMagazineFeedGroup);
              *(v70 + v69) = v68;
              swift_storeEnumTagMultiPayload();
              sub_219BE6974();
              type metadata accessor for MagazineFeedModel(0);
              sub_219984FE0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
              sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
              sub_219BE6924();
              sub_219984BFC(v62, type metadata accessor for MyMagazinesMagazineFeedGroup);
              goto LABEL_14;
            }

            v66 = type metadata accessor for MyMagazinesMagazineFeedGroup;
            v67 = v62;
          }

          else
          {
            v66 = type metadata accessor for MagazineFeedSectionDescriptor;
            v67 = v56;
          }

          sub_219984BFC(v67, v66);
          v46 = *(v25 - 8);
          (*(v46 + 16))(a4, v57, v25);
          v47 = 0;
          goto LABEL_15;
        }

        v45 = sub_219984DF4(v23, v76, type metadata accessor for MagazineFeedSectionDescriptor);
        MEMORY[0x28223BE20](v45);
        v42 = &v71 - 6;
        *(&v71 - 4) = v75;
        *(&v71 - 24) = 2;
        *(&v71 - 2) = v81;
        *(&v71 - 1) = v23;
        v44 = sub_219984F0C;
      }

      else if (v78)
      {
        v48 = sub_219984DF4(v23, v76, type metadata accessor for MagazineFeedSectionDescriptor);
        MEMORY[0x28223BE20](v48);
        v42 = &v71 - 6;
        v49 = v81;
        *(&v71 - 4) = v75;
        *(&v71 - 3) = v49;
        *(&v71 - 2) = v23;
        v44 = sub_219984F34;
      }

      else
      {
        v41 = sub_219984DF4(v23, v76, type metadata accessor for MagazineFeedSectionDescriptor);
        MEMORY[0x28223BE20](v41);
        v42 = &v71 - 6;
        v43 = v81;
        *(&v71 - 4) = v75;
        *(&v71 - 3) = v43;
        *(&v71 - 2) = v23;
        v44 = sub_219984F58;
      }

      sub_21894CE5C(v44, v42);
      v51 = v50;
      sub_218953870(0);
      v53 = v52;
      v54 = sub_219984FE0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
      v55 = sub_219984FE0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v51, v53, v54, v55);
      type metadata accessor for MagazineFeedModel(0);
      sub_219984FE0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
      sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
      sub_219BE6924();
LABEL_14:
      v47 = 0;
      v46 = *(v25 - 8);
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219982C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v51 = a3;
  v59 = a2;
  v62 = a5;
  sub_219984F7C(0, &unk_280EE34A0, MEMORY[0x277D2D148], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v47 - v7;
  v57 = sub_219BF0BD4();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BF0F34();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  sub_2186F0758(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v18);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v53 = &v47 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - v26;
  sub_218953870(0);
  v29 = v28;
  sub_219BE5FC4();
  v54 = v18;
  v30 = swift_getEnumCaseMultiPayload() == 2;
  v31 = v62;
  if (!v30)
  {
    goto LABEL_8;
  }

  v48 = a1;
  sub_219984DF4(v27, v24, type metadata accessor for MagazineFeedModel);
  (*(v15 + 32))(v17, v24, v14);
  sub_219BF07D4();
  v32 = sub_219BF0E44();
  v34 = v33;
  v35 = *(v58 + 1);
  v35(v12, v61);
  LOBYTE(v32) = sub_2188537B8(v32, v34, v59);

  if ((v32 & 1) == 0)
  {
    (*(v15 + 8))(v17, v14);
    v31 = v62;
    a1 = v48;
LABEL_8:
    (*(*(v29 - 8) + 16))(v31, a1, v29);
    return sub_219984BFC(v27, type metadata accessor for MagazineFeedModel);
  }

  v48 = v15;
  v36 = v50;
  sub_219BF07D4();
  v51 = sub_219BF0F14();
  v35(v36, v61);
  sub_219BF07F4();
  v38 = v65;
  v37 = v66;
  sub_219BF07E4();
  v58 = v17;
  v59 = v14;
  v61 = sub_219BF0804();
  if (!v39)
  {
    v61 = sub_2193AF1CC();
  }

  v63 = v38;
  v64 = v37;
  v40 = sub_219BEBD44();
  v41 = v56;
  (*(*(v40 - 8) + 56))(v56, 1, 1, v40);
  sub_2195763E4();
  v42 = v37;
  v43 = v38;
  v44 = v53;
  v45 = v60;
  sub_219BEE214();
  swift_unknownObjectRelease();

  sub_219984D84(v41, &unk_280EE34A0, MEMORY[0x277D2D148]);
  (*(v55 + 8))(v45, v57);

  swift_storeEnumTagMultiPayload();
  sub_219984DF4(v44, v52, type metadata accessor for MagazineFeedModel);
  sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  sub_219BE5FB4();
  sub_219984BFC(v44, type metadata accessor for MagazineFeedModel);
  (*(v48 + 8))(v58, v59);
  return sub_219984BFC(v27, type metadata accessor for MagazineFeedModel);
}

void sub_219983284(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93[1] = a4;
  v101 = a3;
  v116 = a2;
  v120 = a5;
  v6 = MEMORY[0x277D83D88];
  sub_219984F7C(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = v93 - v8;
  v9 = sub_219BF07A4();
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x28223BE20](v9);
  v97 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = v93 - v12;
  sub_2186FACE4(0);
  v114 = *(v13 - 1);
  v115 = v13;
  MEMORY[0x28223BE20](v13);
  v113 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219984F7C(0, &unk_280EE34A0, MEMORY[0x277D2D148], v6);
  MEMORY[0x28223BE20](v15 - 8);
  v96 = v93 - v16;
  v104 = sub_219BF0BD4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v18 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = v93 - v20;
  v21 = sub_219BF0F34();
  v107 = *(v21 - 8);
  v108 = v21;
  MEMORY[0x28223BE20](v21);
  v94 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v93 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v93 - v27;
  sub_2186F0758(0);
  v117 = v29;
  v112 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v111 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v31);
  v33 = (v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v36 = v93 - v35;
  MEMORY[0x28223BE20](v37);
  v102 = v93 - v38;
  MEMORY[0x28223BE20](v39);
  v95 = v93 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = v93 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v93 - v45;
  sub_218953870(0);
  v118 = v47;
  v119 = a1;
  sub_219BE5FC4();
  v100 = v31;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v112 = v33;
    v117 = v18;
    v105 = v46;
    sub_219984DF4(v46, v36, type metadata accessor for MagazineFeedModel);
    v73 = v113;
    v72 = v114;
    v74 = v115;
    (*(v114 + 32))(v113, v36, v115);
    v75 = v106;
    sub_219BF07D4();
    v76 = sub_219BF06B4();
    v77 = v110;
    v78 = *(v109 + 8);
    v78(v75, v110);
    v79 = [v76 sourceChannel];

    v80 = [v79 identifier];
    swift_unknownObjectRelease();
    v81 = sub_219BF5414();
    v83 = v82;

    LOBYTE(v80) = sub_2188537B8(v81, v83, v116);

    if (v80)
    {
      v84 = v97;
      sub_219BF07D4();
      v118 = sub_219BF06B4();
      v78(v84, v77);
      sub_219BF07F4();
      v86 = v123;
      v85 = v124;
      sub_219BF07E4();
      v119 = sub_219BF0804();
      if (!v87)
      {
        v119 = sub_2193AF1CC();
      }

      v121 = v86;
      v122 = v85;
      v88 = sub_219BF0744();
      v89 = v98;
      (*(*(v88 - 8) + 56))(v98, 1, 1, v88);
      sub_2195763E4();
      v90 = v112;
      v92 = v117;
      v91 = v118;
      sub_219BEE1A4();

      sub_219984D84(v89, &qword_280E90EB0, MEMORY[0x277D32F30]);
      (*(v103 + 8))(v92, v104);

      swift_storeEnumTagMultiPayload();
      sub_219984DF4(v90, v102, type metadata accessor for MagazineFeedModel);
      sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
      sub_219BE5FB4();
      sub_219984BFC(v90, type metadata accessor for MagazineFeedModel);
      (*(v114 + 8))(v113, v115);
      goto LABEL_13;
    }

    (*(v72 + 8))(v73, v74);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_17:
    (*(*(v118 - 8) + 16))(v120, v119);
    goto LABEL_18;
  }

  v105 = v46;
  sub_219984DF4(v46, v43, type metadata accessor for MagazineFeedModel);
  v49 = v112;
  v50 = v111;
  v51 = v117;
  v112[4]();
  sub_219BF07D4();
  v52 = sub_219BF0F14();
  v53 = v108;
  v54 = *(v107 + 8);
  v54(v28, v108);
  v55 = [v52 sourceChannelID];
  swift_unknownObjectRelease();
  if (!v55)
  {
LABEL_14:
    (v49[1])(v50, v51);
LABEL_16:
    v46 = v105;
    goto LABEL_17;
  }

  sub_219BF07D4();
  v56 = sub_219BF0F14();
  v115 = v54;
  v54(v25, v53);
  v57 = [v56 sourceChannelID];
  swift_unknownObjectRelease();
  if (v57)
  {
    v58 = sub_219BF5414();
    v60 = v59;

    v61 = sub_2188537B8(v58, v60, v116);

    v51 = v117;
    v62 = v115;
    if (v61)
    {
      v63 = v94;
      sub_219BF07D4();
      v118 = sub_219BF0F14();
      v62(v63, v53);
      sub_219BF07F4();
      v64 = v123;
      v65 = v124;
      sub_219BF07E4();
      v119 = sub_219BF0804();
      if (!v66)
      {
        v119 = sub_2193AF1CC();
      }

      v121 = v64;
      v122 = v65;
      v67 = sub_219BEBD44();
      v68 = v96;
      (*(*(v67 - 8) + 56))(v96, 1, 1, v67);
      sub_2195763E4();
      v69 = v95;
      v70 = v65;
      v71 = v99;
      sub_219BEE214();
      swift_unknownObjectRelease();

      sub_219984D84(v68, &unk_280EE34A0, MEMORY[0x277D2D148]);
      (*(v103 + 8))(v71, v104);

      swift_storeEnumTagMultiPayload();
      sub_219984DF4(v69, v102, type metadata accessor for MagazineFeedModel);
      sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
      sub_219BE5FB4();
      sub_219984BFC(v69, type metadata accessor for MagazineFeedModel);
      (v112[1])(v111, v117);
LABEL_13:
      v46 = v105;
LABEL_18:
      sub_219984BFC(v46, type metadata accessor for MagazineFeedModel);
      return;
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_219983F50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v60 = a4;
  v65 = a3;
  v55 = a2;
  v70 = a6;
  v7 = sub_219BF0BD4();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEEAD4();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF1D54();
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  MEMORY[0x28223BE20](v12);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v18);
  v59 = &v53 - v19;
  sub_2186EB228(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v25);
  v57 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v58 = &v53 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v53 - v30;
  sub_218953870(0);
  v33 = v32;
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    (*(*(v33 - 8) + 16))(v70, a1, v33);
    return sub_219984BFC(v31, type metadata accessor for MagazineFeedModel);
  }

  v53 = a1;
  (*(v22 + 32))(v24, v31, v21);
  v34 = v21;
  v54 = v22;
  if (v65 == 2)
  {
    v35 = v55;
  }

  else
  {
    v35 = sub_2194AF2AC(MEMORY[0x277D84F90]);
  }

  sub_219BF07D4();
  sub_219BEEAB4();
  (*(v66 + 8))(v11, v67);
  v37 = sub_219BF1D24();
  v39 = v38;
  v40 = v17;
  v41 = v68;
  v66 = *(v69 + 8);
  (v66)(v40, v68);
  if (*(v35 + 16))
  {
    v67 = v34;
    v42 = sub_21870F700(v37, v39);
    v44 = v43;

    if (v44)
    {
      v45 = v69;
      v46 = *(v35 + 56) + *(v69 + 72) * v42;
      v47 = v56;
      (*(v69 + 16))(v56, v46, v41);

      v48 = v59;
      (*(v45 + 32))(v59, v47, v41);
      v49 = v61;
      sub_219BF07E4();
      sub_2193AF1CC();
      v50 = v58;
      sub_219BEE154();

      (*(v63 + 8))(v49, v64);
      swift_storeEnumTagMultiPayload();
      sub_219984DF4(v50, v57, type metadata accessor for MagazineFeedModel);
      sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
      sub_219BE5FB4();
      sub_219984BFC(v50, type metadata accessor for MagazineFeedModel);
      (v66)(v48, v41);
      return (*(v54 + 8))(v24, v67);
    }

    v51 = v70;
    v34 = v67;
  }

  else
  {

    v51 = v70;
  }

  v52 = v53;
  (*(v54 + 8))(v24, v34);
  return (*(*(v33 - 8) + 16))(v51, v52, v33);
}

uint64_t sub_2199845E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = type metadata accessor for MagazineFeedModel(0);
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  sub_218953870(0);
  v32 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v30);
  v29 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219984DF4(a1, v29, type metadata accessor for MagazineFeedSectionDescriptor);
  v20 = *(a2 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v28[0] = v18;
    v28[1] = a3;
    v34 = MEMORY[0x277D84F90];
    sub_218C35700(0, v20, 0);
    v21 = v34;
    v22 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v31 = *(v6 + 72);
    do
    {
      sub_219984DF4(v22, v11, type metadata accessor for MagazineFeedModel);
      sub_219984DF4(v11, v8, type metadata accessor for MagazineFeedModel);
      sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
      sub_219BE5FB4();
      sub_219984BFC(v11, type metadata accessor for MagazineFeedModel);
      v34 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C35700((v23 > 1), v24 + 1, 1);
        v21 = v34;
      }

      *(v21 + 16) = v24 + 1;
      (*(v13 + 32))(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, v15, v32);
      v22 += v31;
      --v20;
    }

    while (v20);
  }

  v25 = sub_219984FE0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
  v26 = sub_219984FE0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v21, v32, v25, v26);
  sub_219984FE0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  return sub_219BE6924();
}

uint64_t sub_219984A58(uint64_t *a1, void x1_0, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v8 = MEMORY[0x277D32F30];
  sub_219984F7C(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v14 - v10;
  v14[2] = a2;
  v14[3] = a3;
  v12 = sub_219BF0744();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2195763E4();
  sub_219BEE1A4();
  sub_219984D84(v11, &qword_280E90EB0, v8);
  type metadata accessor for MagazineFeedModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219984BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219984CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219984D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_219984D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219984F7C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219984DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219984E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219984EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_219984F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219984FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219985040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = sub_219BDC104();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a3 != 1 || sub_219BDC0F4() < a4)
    {
      goto LABEL_12;
    }
  }

  else if (a3 != 1 || a4 >= a2 || sub_219BDC0F4() < a4 || sub_219BDC0F4() >= a2)
  {
LABEL_12:
    (*(v12 + 16))(v15, v5, v11, v13);
    if (a1)
    {
      return (*(v12 + 32))(a5, v15, v11);
    }

    if (a3 != 1)
    {
      if (sub_219BDC0F4() > a2)
      {
        goto LABEL_17;
      }

      return (*(v12 + 32))(a5, v15, v11);
    }

LABEL_14:
    if (a2 < a4 && sub_219BDC0F4() > a2 && sub_219BDC0F4() <= a4)
    {
LABEL_17:
      v18 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      if (!__OFSUB__(result, 1))
      {
        MEMORY[0x21CEB2E60](v18, result - 1);
        return (*(v12 + 8))(v15, v11);
      }

      goto LABEL_22;
    }

    return (*(v12 + 32))(a5, v15, v11);
  }

  v16 = sub_219BDC0D4();
  result = sub_219BDC0F4();
  if (!__OFADD__(result, 1))
  {
    MEMORY[0x21CEB2E60](v16, result + 1);
    if (a1)
    {
      return (*(v12 + 32))(a5, v15, v11);
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_219985230@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BDC104();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  if (a1[3] != 1 || (v13 = a1[4], sub_219BDC0F4() < v13))
  {
    (*(v6 + 16))(v12, v2, v5, v10);
    if (*a1)
    {
      return (*(v6 + 32))(a2, v12, v5);
    }

    goto LABEL_7;
  }

  v14 = sub_219BDC0D4();
  result = sub_219BDC0F4();
  if (!__OFADD__(result, 1))
  {
    MEMORY[0x21CEB2E60](v14, result + 1);
    if (*a1)
    {
      return (*(v6 + 32))(a2, v12, v5);
    }

LABEL_7:
    v18 = a1 + 1;
    v16 = a1[1];
    v17 = v18[1];
    v19 = sub_219BDC0F4();
    MEMORY[0x21CEB2E60](v17, v16);
    v20 = sub_219BDC0F4();
    v21 = *(v6 + 8);
    v21(v8, v5);
    if (v20 < v19)
    {
      v22 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      if (!__OFSUB__(result, 1))
      {
        MEMORY[0x21CEB2E60](v22, result - 1);
        return (v21)(v12, v5);
      }

      goto LABEL_12;
    }

    return (*(v6 + 32))(a2, v12, v5);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21998542C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_219BDC104();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  if (*a1 || (v15 = a1[1], v14 = a1[2], v22 = sub_219BDC0F4(), MEMORY[0x21CEB2E60](v14, v15), v16 = sub_219BDC0F4(), (*(v7 + 8))(v9, v6), v22 < v16))
  {
    (*(v7 + 16))(v13, v3, v6, v11);
  }

  else
  {
    v20 = sub_219BDC0D4();
    result = sub_219BDC0F4();
    if (__OFADD__(result, 1))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    MEMORY[0x21CEB2E60](v20, result + 1);
  }

  if (a1[3] == 1)
  {
    v17 = a1[4];
    if (v17 < sub_219BDC0F4())
    {
      v18 = sub_219BDC0D4();
      result = sub_219BDC0F4();
      if (!__OFSUB__(result, 1))
      {
        MEMORY[0x21CEB2E60](v18, result - 1);
        return (*(v7 + 8))(v13, v6);
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  return (*(v7 + 32))(a2, v13, v6);
}

uint64_t sub_21998563C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = sub_219BDC104();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (a3 == 1)
    {
      if (a2 >= a4 || sub_219BDC0F4() < a2 || sub_219BDC0F4() >= a4)
      {
LABEL_9:
        (*(v12 + 16))(v15, v5, v11, v13);
        if (a3 != 1)
        {
          return (*(v12 + 32))(a5, v15, v11);
        }

LABEL_14:
        if (a4 < a2 && sub_219BDC0F4() > a4 && sub_219BDC0F4() <= a2)
        {
          goto LABEL_18;
        }

        return (*(v12 + 32))(a5, v15, v11);
      }
    }

    else if (sub_219BDC0F4() < a2)
    {
      goto LABEL_9;
    }

    v16 = sub_219BDC0D4();
    result = sub_219BDC0F4();
    if (__OFADD__(result, 1))
    {
      goto LABEL_21;
    }

    MEMORY[0x21CEB2E60](v16, result + 1);
    if (a3 != 1)
    {
      return (*(v12 + 32))(a5, v15, v11);
    }

    goto LABEL_14;
  }

  (*(v12 + 16))(v15, v5, v11, v13);
  if (a3 != 1 || sub_219BDC0F4() <= a4)
  {
    return (*(v12 + 32))(a5, v15, v11);
  }

LABEL_18:
  v18 = sub_219BDC0D4();
  result = sub_219BDC0F4();
  if (!__OFSUB__(result, 1))
  {
    MEMORY[0x21CEB2E60](v18, result - 1);
    return (*(v12 + 8))(v15, v11);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_219985874()
{
  v1 = [*(*v0 + 16) sortedVisitedArticleIDs];
  v2 = sub_219BF5924();

  return v2;
}

uint64_t sub_2199858EC()
{
  v1 = v0;
  v2 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodaySectionGapDescriptor(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219985A88(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 7364967;
  }

  sub_218C0BAF8(v8, v5);
  sub_2187FAD00(0);
  v12[0] = sub_219BE6944();
  v12[1] = v10;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](*&v5[*(v2 + 20)], *&v5[*(v2 + 20) + 8]);
  v9 = v12[0];
  sub_219985FE4(v5, type metadata accessor for TodayBlueprintCollapsedSection);
  return v9;
}

uint64_t sub_219985A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodaySectionGapDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219985AF4(uint64_t a1)
{
  sub_2187FAD00(0);
  v4 = sub_219BE6944();
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  return v4;
}

uint64_t sub_219985B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_21880BAC8();
  if ((sub_219BE6954() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_219985C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodaySectionGapDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219985F80(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_219985A88(a1, v13);
  sub_219985A88(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    v17 = 1;
    v18 = v16(&v13[v15], 1, v4);
    v19 = type metadata accessor for TodaySectionGapDescriptor;
    if (v18 == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  sub_219985A88(v13, v10);
  if (v16(&v13[v15], 1, v4) != 1)
  {
    sub_218C0BAF8(&v13[v15], v7);
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_21880BAC8();
    if (sub_219BE6954())
    {
      v20 = *(v4 + 20);
      v21 = *&v10[v20];
      v22 = *&v10[v20 + 8];
      v23 = &v7[v20];
      if (v21 == *v23 && v22 == *(v23 + 1))
      {
        sub_219985FE4(v7, type metadata accessor for TodayBlueprintCollapsedSection);
        sub_219985FE4(v10, type metadata accessor for TodayBlueprintCollapsedSection);
        v17 = 1;
        goto LABEL_17;
      }

      v25 = sub_219BF78F4();
      sub_219985FE4(v7, type metadata accessor for TodayBlueprintCollapsedSection);
      sub_219985FE4(v10, type metadata accessor for TodayBlueprintCollapsedSection);
      v19 = type metadata accessor for TodaySectionGapDescriptor;
      if (v25)
      {
        v17 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      sub_219985FE4(v7, type metadata accessor for TodayBlueprintCollapsedSection);
      sub_219985FE4(v10, type metadata accessor for TodayBlueprintCollapsedSection);
    }

    v17 = 0;
LABEL_17:
    v19 = type metadata accessor for TodaySectionGapDescriptor;
    goto LABEL_18;
  }

  sub_219985FE4(v10, type metadata accessor for TodayBlueprintCollapsedSection);
LABEL_6:
  v17 = 0;
  v19 = sub_219985F80;
LABEL_18:
  sub_219985FE4(v13, v19);
  return v17;
}

void sub_219985F80(uint64_t a1)
{
  if (!qword_280EBCAB0[0])
  {
    type metadata accessor for TodaySectionGapDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EBCAB0);
    }
  }
}

uint64_t sub_219985FE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall ModalNavigationController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setDelegate_];
}

void sub_219986114(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  [v1 setDelegate_];
}

Swift::Void __swiftcall ModalNavigationController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  swift_getObjectType();
  sub_218805EA0();
  sub_219BEA9A4();
  sub_219986240();
  sub_219BE7054();
}

unint64_t sub_219986240()
{
  result = qword_27CC218E0;
  if (!qword_27CC218E0)
  {
    type metadata accessor for ModalNavigationController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC218E0);
  }

  return result;
}

uint64_t type metadata accessor for ModalNavigationController(uint64_t a1)
{
  result = qword_27CC218F0;
  if (!qword_27CC218F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2199862E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a3);
  swift_getObjectType();
  sub_218805EA0();
  sub_219BEA9A4();
  sub_219986240();
  sub_219BE7054();

  return result;
}

Swift::Void __swiftcall ModalNavigationController.setViewControllers(_:animated:)(Swift::OpaquePointer _, Swift::Bool animated)
{
  ObjectType = swift_getObjectType();
  sub_218805E54();
  v5 = sub_219BF5904();
  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setViewControllers_animated_, v5, animated);

  swift_getObjectType();
  sub_218805EA0();
  sub_219BEA9A4();
  sub_219BE6FD4();
}

double sub_219986498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_setViewControllers_animated_, a3, a4);
  swift_getObjectType();
  sub_218805EA0();
  sub_219BEA9A4();
  sub_219BE6FD4();

  return result;
}

Swift::Void __swiftcall ModalNavigationController.navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  swift_getObjectType();
  sub_218805EA0();
  sub_219BEA9A4();
  sub_219BE6FD4();
}

double sub_2199865E8(char *a1)
{
  swift_getObjectType();
  sub_218805EA0();
  v2 = a1;
  sub_219BEA9A4();
  sub_219BE6FD4();

  return result;
}

id ModalNavigationController.__allocating_init(rootViewController:navigationBarClass:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithRootViewController:a1 navigationBarClass:ObjCClassFromMetadata];

  return v5;
}

id ModalNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id ModalNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ModalNavigationController.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_219BEAF54();
  sub_219BEA9A4();
  v5 = sub_219BEA954();

  if (v5)
  {
    v6 = [v4 popViewControllerAnimated_];
  }
}

BOOL ModalNavigationController.canHandle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_219BEAF54();
  sub_219BEA9A4();
  v5 = sub_219BEA954();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [v4 viewControllers];
  sub_218805E54();
  v7 = sub_219BF5924();

  if (v7 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8 > 1;
}

void sub_2199869AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_219BEAF54();
  sub_219BEA9A4();
  v5 = sub_219BEA954();

  if (v5)
  {
    v6 = [v4 popViewControllerAnimated_];
  }
}

BOOL sub_219986A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_219BEAF54();
  sub_219BEA9A4();
  v5 = sub_219BEA954();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [v4 viewControllers];
  sub_218805E54();
  v7 = sub_219BF5924();

  if (v7 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8 > 1;
}

void sub_219986BA8(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v2 = sub_219BDF864();
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x28223BE20](v2);
  v83 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = (&v80 - v5);
  MEMORY[0x28223BE20](v6);
  v91 = (&v80 - v7);
  v8 = sub_219BF2A04();
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v80 - v11;
  MEMORY[0x28223BE20](v12);
  v84 = &v80 - v13;
  MEMORY[0x28223BE20](v14);
  v85 = &v80 - v15;
  MEMORY[0x28223BE20](v16);
  v88 = &v80 - v17;
  MEMORY[0x28223BE20](v18);
  v89 = &v80 - v19;
  v20 = sub_219BE0774();
  v92 = *(v20 - 8);
  v93 = v20;
  MEMORY[0x28223BE20](v20);
  v86 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v90 = &v80 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  v27 = sub_219BF1324();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v80 - v35;
  sub_219BEAF54();
  sub_219BEACC4();
  v37 = sub_219BEA954();

  if (v37)
  {
    v38 = v96[11];
    v39 = v96;
    v90 = v96[10];
    v87 = __swift_project_boxed_opaque_existential_1(v96 + 7, v90);
    sub_21998760C();
    sub_219BF2574();
    v40 = v100;
    sub_219BF2594();
    sub_218C8FF70(v26);
    (*(v28 + 8))(v36, v27);
    v41 = v89;
    sub_219BF25A4();
    v42 = v98;
    v43 = v99;
    v44 = v88;
    (*(v98 + 16))(v88, v41, v99);
    v45 = (*(v42 + 88))(v44, v43);
    v46 = v42;
    if (v45 == *MEMORY[0x277D33A68])
    {
      v47 = MEMORY[0x277D2DDB0];
LABEL_16:
      (*(v46 + 8))(v41, v43);
      v69 = v94;
      v68 = v95;
      v70 = v91;
      (*(v94 + 104))(v91, *v47, v95);
      (*(v38 + 48))(v26, v70, v90, v38, v40);
      (*(v69 + 8))(v70, v68);
      (*(v92 + 8))(v26, v93);
      __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
      sub_219BF2574();
      sub_219BDE594();
      return;
    }

    if (v45 == *MEMORY[0x277D33A78])
    {
      v47 = MEMORY[0x277D2DDC0];
      goto LABEL_16;
    }

    if (v45 == *MEMORY[0x277D33A70])
    {
      v47 = MEMORY[0x277D2DDB8];
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  sub_219BEAC74();
  v48 = sub_219BEA954();

  if (v48)
  {
    v49 = v96;
    v50 = v96[10];
    v51 = v96[11];
    v91 = __swift_project_boxed_opaque_existential_1(v96 + 7, v50);
    sub_21998760C();
    sub_219BF2574();
    v52 = v100;
    sub_219BF2594();
    sub_218C8FF70(v90);
    (*(v28 + 8))(v33, v27);
    v53 = v85;
    sub_219BF25A4();
    v55 = v98;
    v54 = v99;
    v56 = v84;
    (*(v98 + 16))(v84, v53, v99);
    v57 = (*(v55 + 88))(v56, v54);
    if (v57 == *MEMORY[0x277D33A68])
    {
      v58 = v51;
      v59 = MEMORY[0x277D2DDB0];
LABEL_21:
      (*(v98 + 8))(v53, v99);
      v71 = *v59;
      v73 = v94;
      v72 = v95;
      v74 = v87;
      (*(v94 + 104))(v87, v71, v95);
      v75 = v90;
      (*(v58 + 56))(v90, v74, v50, v58, v52);
      (*(v73 + 8))(v74, v72);
      (*(v92 + 8))(v75, v93);
      __swift_project_boxed_opaque_existential_1(v49 + 2, v49[5]);
      sub_219BF2574();
      sub_219BDE584();
      return;
    }

    if (v57 == *MEMORY[0x277D33A78])
    {
      v58 = v51;
      v59 = MEMORY[0x277D2DDC0];
      goto LABEL_21;
    }

    if (v57 == *MEMORY[0x277D33A70])
    {
      v58 = v51;
      v59 = MEMORY[0x277D2DDB8];
      goto LABEL_21;
    }

LABEL_26:
    sub_219BF7514();
    __break(1u);
    return;
  }

  sub_219BEAC04();
  v60 = sub_219BEA954();

  if (v60)
  {
    v61 = v96[11];
    v91 = v96[10];
    __swift_project_boxed_opaque_existential_1(v96 + 7, v91);
    sub_21998760C();
    sub_219BF2594();
    sub_218C8FF70(v86);
    (*(v28 + 8))(v30, v27);
    v62 = v81;
    sub_219BF25A4();
    v64 = v98;
    v63 = v99;
    v65 = v82;
    (*(v98 + 16))(v82, v62, v99);
    v66 = (*(v64 + 88))(v65, v63);
    if (v66 == *MEMORY[0x277D33A68])
    {
      v67 = MEMORY[0x277D2DDB0];
    }

    else if (v66 == *MEMORY[0x277D33A78])
    {
      v67 = MEMORY[0x277D2DDC0];
    }

    else
    {
      if (v66 != *MEMORY[0x277D33A70])
      {
        goto LABEL_26;
      }

      v67 = MEMORY[0x277D2DDB8];
    }

    (*(v98 + 8))(v62, v99);
    v77 = v94;
    v76 = v95;
    v78 = v83;
    (*(v94 + 104))(v83, *v67, v95);
    v79 = v86;
    (*(v61 + 32))(v86, v78, v91, v61);
    (*(v77 + 8))(v78, v76);
    (*(v92 + 8))(v79, v93);
    __swift_project_boxed_opaque_existential_1(v96 + 2, v96[5]);
    sub_219BF2574();
    sub_219BDE574();
  }
}

void sub_21998760C()
{
  if (!qword_280E90440)
  {
    v0 = sub_219BF25B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90440);
    }
  }
}

uint64_t sub_21998765C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2186E7180(0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ForYouAudioFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C51510(0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v39 - v11;
  sub_219987FB8(0, &qword_280E8CD60, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219987F00();
  v17 = v52;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v52 = v7;
  LOBYTE(v55) = 0;
  sub_2186F6BC0(&qword_280E91A68, sub_2186E7180, MEMORY[0x277D321B0]);
  v19 = v50;
  v20 = v47;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v54) = 1;
  sub_2186F6BC0(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v40 = v55;
  LOBYTE(v53) = 2;
  v21 = v13;
  v45 = v16;
  sub_219BF7674();
  v41 = v54;
  v22 = v19;
  v23 = v51;
  sub_2195CF734(v22, v51);
  v24 = v46;
  v25 = *(v46 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v20;
  if (v26 == 1)
  {
    type metadata accessor for AudioFeedServiceConfig(0);
    sub_2186F6BC0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
    v28 = v48;
    sub_219BEE974();
    v29 = v25(v51, 1, v20);
    v30 = v28;
    v31 = v43;
    v32 = v44;
    if (v29 != 1)
    {
      sub_2195CF798(v51);
    }
  }

  else
  {
    v30 = v48;
    (*(v24 + 32))(v48, v51, v20);
    v31 = v43;
    v32 = v44;
  }

  v33 = v52;
  (*(v24 + 32))(v52, v30, v27);
  v34 = v40;
  if (!v40)
  {
    v53 = 1;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v45;
  *(v33 + *(v5 + 20)) = v34;
  v36 = v49;
  v37 = v41;
  if (v41)
  {
    sub_2195CF798(v50);
    (*(v31 + 8))(v35, v21);
  }

  else
  {
    v53 = 6;
    v38 = v50;
    swift_allocObject();
    v37 = sub_219BEF534();
    sub_2195CF798(v38);
    (*(v31 + 8))(v45, v21);
  }

  *(v33 + *(v5 + 24)) = v37;
  sub_219987F54(v33, v36);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_219987BF4(void *a1, __n128 a2)
{
  v4 = v2;
  sub_219987FB8(0, &qword_27CC21900, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219987F00();
  sub_219BF7B44();
  LOBYTE(v15) = 0;
  sub_2186E7180(0);
  sub_2186F6BC0(&qword_27CC1CA60, sub_2186E7180, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for ForYouAudioFeedGroupKnobs(0);
    v15 = *(v4 + *(v11 + 20));
    v14 = 1;
    sub_2186F9548();
    sub_2186F6BC0(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v15 = *(v4 + *(v11 + 24));
    v14 = 2;
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_219987E58(uint64_t a1)
{
  v2 = sub_219987F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219987E94(uint64_t a1)
{
  v2 = sub_219987F00();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219987F00()
{
  result = qword_280EBE7C8[0];
  if (!qword_280EBE7C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBE7C8);
  }

  return result;
}

uint64_t sub_219987F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouAudioFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219987FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219987F00();
    v7 = a3(a1, &type metadata for ForYouAudioFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219988030()
{
  result = qword_27CC21908;
  if (!qword_27CC21908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21908);
  }

  return result;
}

unint64_t sub_219988088()
{
  result = qword_280EBE7B8;
  if (!qword_280EBE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE7B8);
  }

  return result;
}

unint64_t sub_2199880E0()
{
  result = qword_280EBE7C0;
  if (!qword_280EBE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE7C0);
  }

  return result;
}

double sub_219988134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v73 = a2;
  sub_2193AA1E0(0);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioFeedTrack(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EE3174(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_218729F60(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  sub_21883F194(0);
  v23 = v22;
  v69 = a1;
  sub_219BDDB74();
  v67 = v23;
  v24 = v12;
  v25 = v6;
  sub_219BDDB74();
  v26 = *(v10 + 56);
  sub_21872D660(v21, v24, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v13, sub_218729F60);
  sub_21872D660(v18, v24 + v26, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v13, sub_218729F60);
  v27 = *(v7 + 48);
  if (v27(v24, 1, v25) == 1)
  {
    v28 = MEMORY[0x277D83D88];
    sub_21874600C(v18, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729F60);
    sub_21874600C(v21, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v28, sub_218729F60);
    if (v27(v24 + v26, 1, v25) == 1)
    {
      sub_21874600C(v24, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729F60);
      goto LABEL_15;
    }

LABEL_6:
    sub_21998AAA0(v24, sub_218EE3174);
    goto LABEL_23;
  }

  v64 = v18;
  v65 = v21;
  v29 = v71;
  sub_21872D660(v24, v71, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729F60);
  v63 = v25;
  v30 = v27(v24 + v26, 1, v25);
  v31 = v24;
  v32 = v29;
  if (v30 == 1)
  {
    v33 = MEMORY[0x277D83D88];
    sub_21874600C(v64, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729F60);
    sub_21874600C(v65, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v33, sub_218729F60);
    sub_21998AAA0(v32, type metadata accessor for AudioFeedTrack);
    v24 = v31;
    goto LABEL_6;
  }

  v34 = v31;
  v35 = v66;
  sub_218C162E4(v31 + v26, v66);
  v36 = [*v29 identifier];
  v37 = sub_219BF5414();
  v39 = v38;

  v40 = [*v35 identifier];
  v41 = sub_219BF5414();
  v43 = v42;

  if (v37 == v41 && v39 == v43)
  {

    v46 = v63;
    v47 = v64;
    v48 = v65;
  }

  else
  {
    v45 = sub_219BF78F4();

    v46 = v63;
    v47 = v64;
    v48 = v65;
    if ((v45 & 1) == 0)
    {
      v49 = MEMORY[0x277D83D88];
      sub_21874600C(v64, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729F60);
      sub_21874600C(v48, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v49, sub_218729F60);
      sub_21998AAA0(v35, type metadata accessor for AudioFeedTrack);
      sub_21998AAA0(v32, type metadata accessor for AudioFeedTrack);
      sub_21874600C(v34, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v49, sub_218729F60);
      goto LABEL_23;
    }
  }

  v50 = sub_2198DB278((v32 + *(v46 + 32)), (v35 + *(v46 + 32)));
  v51 = MEMORY[0x277D83D88];
  sub_21874600C(v47, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729F60);
  sub_21874600C(v48, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v51, sub_218729F60);
  sub_21998AAA0(v35, type metadata accessor for AudioFeedTrack);
  sub_21998AAA0(v32, type metadata accessor for AudioFeedTrack);
  sub_21874600C(v34, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v51, sub_218729F60);
  if (v50)
  {
LABEL_15:
    v52 = v70;
    v53 = v70 + *(v68 + 48);
    sub_21998A8FC(v69, v70, sub_21883F194);
    sub_21998A8FC(v73, v53, sub_21883F194);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          return result;
        }

        goto LABEL_22;
      }

      sub_218A6E554(0);
      v56 = *(v55 + 64);
      v57 = v52 + v56;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_18:
        v58 = sub_219BDD9E4();
        v59 = *(*(v58 - 8) + 8);
        v59(v53 + v56, v58);
        sub_21998AAA0(v53, type metadata accessor for AudioFeedTrack);
        v59(v57, v58);
        sub_21998AAA0(v52, type metadata accessor for AudioFeedTrack);
        return result;
      }
    }

    else
    {
      sub_218A6E5D0(0);
      v56 = *(v61 + 64);
      v57 = v52 + v56;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_18;
      }
    }

    v62 = sub_219BDD9E4();
    (*(*(v62 - 8) + 8))(v57, v62);
    sub_21998AAA0(v52, type metadata accessor for AudioFeedTrack);
LABEL_22:
    sub_21998AAA0(v53, sub_21883F194);
  }

LABEL_23:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_219BEA9C4();
    sub_219BF00C4();
    sub_219BE6FD4();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219988A98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  sub_21883F194(0);
  MEMORY[0x28223BE20](v3);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729F60(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v41 - v6);
  v8 = sub_219BF0F34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF00B4();
  v12 = sub_219BF0F14();
  (*(v9 + 8))(v11, v8);
  v13 = [v12 articleID];
  swift_unknownObjectRelease();
  v14 = v13;
  if (!v13)
  {
    sub_219BF5414();
    v14 = sub_219BF53D4();
  }

  v15 = sub_219BF5414();
  v17 = v16;
  sub_219BDE104();
  sub_219BE20E4();

  v18 = type metadata accessor for AudioFeedTrack(0);
  if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
  {
    sub_21874600C(v7, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729F60);
LABEL_12:

    goto LABEL_13;
  }

  v19 = *v7;
  swift_unknownObjectRetain();
  sub_21998AAA0(v7, type metadata accessor for AudioFeedTrack);
  v20 = [v19 articleID];
  swift_unknownObjectRelease();
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = sub_219BF5414();
  v23 = v22;

  if (v15 == v21 && v17 == v23)
  {

LABEL_19:
    sub_219BDE124();
    v30 = v41;
    sub_219BE20E4();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v39 = *MEMORY[0x277D324A0];
        v40 = sub_219BEEF64();
        return (*(*(v40 - 8) + 104))(v42, v39, v40);
      }

      sub_218A6E554(0);
      v33 = *(v32 + 64);
      v34 = MEMORY[0x277D32498];
    }

    else
    {
      sub_218A6E5D0(0);
      v33 = *(v35 + 64);
      v34 = MEMORY[0x277D324A8];
    }

    v36 = *v34;
    v37 = sub_219BEEF64();
    (*(*(v37 - 8) + 104))(v42, v36, v37);
    v38 = sub_219BDD9E4();
    (*(*(v38 - 8) + 8))(v30 + v33, v38);
    return sub_21998AAA0(v30, type metadata accessor for AudioFeedTrack);
  }

  v25 = sub_219BF78F4();

  if (v25)
  {

    goto LABEL_19;
  }

LABEL_13:
  v26 = [*(v2 + OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_readingHistory) hasArticleCompletedListening_];

  v27 = sub_219BEEF64();
  if (v26)
  {
    v28 = MEMORY[0x277D324B0];
  }

  else
  {
    v28 = MEMORY[0x277D324A0];
  }

  return (*(*(v27 - 8) + 104))(v42, *v28, v27);
}

BOOL sub_2199890D4()
{
  v0 = MEMORY[0x277D32010];
  v1 = MEMORY[0x277D83D88];
  sub_218729F60(0, &qword_280E91C10, MEMORY[0x277D32010], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_219BF0F34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF00B4();
  sub_219BF0E24();
  (*(v6 + 8))(v8, v5);
  v9 = sub_219BEE404();
  v10 = (*(*(v9 - 8) + 48))(v4, 1, v9) != 1;
  sub_21874600C(v4, &qword_280E91C10, v0, v1, sub_218729F60);
  return v10;
}

void sub_219989374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v127 = a4;
  v116 = a3;
  v105 = a2;
  v106 = a1;
  v6 = MEMORY[0x277D84F78];
  v7 = MEMORY[0x277D33910];
  sub_21998A8A0(0, &qword_280E90400, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v99 - v11;
  sub_218739B88(0, &qword_280E90410, v6 + 8, v7);
  v13 = v12;
  v107 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v101 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v99 - v16;
  v17 = MEMORY[0x277D83D88];
  sub_218729F60(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v117 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v119 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v19;
  MEMORY[0x28223BE20](v20);
  v132 = &v99 - v21;
  sub_218729F60(0, &unk_280EE9D00, MEMORY[0x277CC9260], v17);
  MEMORY[0x28223BE20](v22 - 8);
  v114 = &v99 - v23;
  v115 = sub_219BDE294();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BDEE04();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDD944();
  MEMORY[0x28223BE20](v26 - 8);
  v131 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BF1324();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v126 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BF1C74();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v125 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BF2A04();
  v32 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v122 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BF0F34();
  v34 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729F60(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
  v130 = v37;
  v129 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v128 = &v99 - v38;
  v39 = sub_219BEEF64();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v99 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v43, v127, v39, v41);
  v44 = (*(v40 + 88))(v43, v39);
  if (v44 == *MEMORY[0x277D324A0])
  {
    goto LABEL_2;
  }

  if (v44 == *MEMORY[0x277D324A8])
  {
    (*(v32 + 104))(v122, *MEMORY[0x277D33A68], v121);
    (*(v30 + 104))(v125, *MEMORY[0x277D33570], v29);
    (*(v123 + 104))(v126, *MEMORY[0x277D33270], v124);
    v142 = 0u;
    v143 = 0u;
    v73 = v103;
    sub_219BF2564();
    swift_getObjectType();
    sub_219BEAC94();
    v74 = v107;
    v75 = *(v107 + 16);
    v76 = &v135;
LABEL_11:
    v77 = *(v76 - 32);
    v75(v77, v73, v13);
    (*(v74 + 56))(v77, 0, 1, v13);
    sub_219BE7094();

    sub_218EEDC0C(v77);
    (*(v74 + 8))(v73, v13);
    return;
  }

  if (v44 == *MEMORY[0x277D32498])
  {
    (*(v32 + 104))(v122, *MEMORY[0x277D33A68], v121);
    (*(v30 + 104))(v125, *MEMORY[0x277D33570], v29);
    (*(v123 + 104))(v126, *MEMORY[0x277D33270], v124);
    v142 = 0u;
    v143 = 0u;
    v73 = v101;
    sub_219BF2564();
    swift_getObjectType();
    sub_219BEACB4();
    v74 = v107;
    v75 = *(v107 + 16);
    v76 = &v134;
    goto LABEL_11;
  }

  if (v44 != *MEMORY[0x277D324B0])
  {
    (*(v40 + 8))(v43, v39);
    return;
  }

LABEL_2:
  v127 = v29;
  v45 = a5;
  if (a5)
  {
    v46 = sub_219BE82D4();
    if (v46)
    {
      v47 = v46;
      v48 = *(v120 + OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_audioPlaybackContext + 24);
      v49 = *(v120 + OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_audioPlaybackContext + 32);
      __swift_project_boxed_opaque_existential_1((v120 + OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_audioPlaybackContext), v48);
      (*(v49 + 8))(v47, v48, v49);
    }
  }

  v100 = v45;
  sub_219BF00B4();
  v50 = sub_219BF0F14();
  v51 = *(v34 + 8);
  v52 = v108;
  v51(v36, v108);
  *&v140[0] = v50;
  (*(v32 + 104))(v122, *MEMORY[0x277D33A68], v121);
  (*(v30 + 104))(v125, *MEMORY[0x277D33570], v127);
  (*(v123 + 104))(v126, *MEMORY[0x277D33270], v124);
  sub_218731D50();
  v142 = 0u;
  v143 = 0u;
  v53 = v128;
  sub_219BF2564();
  sub_219BF00B4();
  sub_219BF0F14();
  v51(v36, v52);
  v54 = v109;
  sub_219BDEDE4();
  v55 = v111;
  (*(v129 + 16))(v111, v53, v130);
  v56 = v113;
  v57 = v115;
  (*(v113 + 104))(v55, *MEMORY[0x277D2FF00], v115);
  v58 = sub_219BDB954();
  v59 = v114;
  (*(*(v58 - 8) + 56))(v114, 1, 1, v58);
  v60 = v131;
  sub_219BDD904();
  sub_21874600C(v59, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218729F60);
  (*(v56 + 8))(v55, v57);
  (*(v110 + 8))(v54, v112);
  v61 = *(v120 + OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_navigator);
  sub_2187B2C48(0);
  v63 = v62;
  v64 = swift_allocBox();
  v66 = v65;
  v67 = *(v63 + 48);
  sub_2187B2DA0(0);
  v69 = *(v68 + 48);
  v70 = v100;
  sub_21998A8FC(v60, v66, MEMORY[0x277D2FB40]);
  v71 = MEMORY[0x277D84F90];
  *(v66 + v69) = MEMORY[0x277D84F90];
  *(v66 + v67) = v71;
  if (v70)
  {
    v72 = sub_219BE82D4();
  }

  else
  {
    v72 = 0;
  }

  v78 = v132;
  v127 = v64;
  v79 = v64 | 2;
  v80 = sub_219BDFA44();
  (*(*(v80 - 8) + 56))(v78, 1, 1, v80);
  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v141 = 0;
  memset(v140, 0, sizeof(v140));
  v139 = v61;
  sub_21872D660(v140, &v134, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (v136)
  {
    sub_21875F93C(&v134, v137);
    *&v134 = v79;
    v81 = sub_2194DA78C(v137);
    v83 = v82;
    v85 = v84;
    __swift_destroy_boxed_opaque_existential_1(v137);
  }

  else
  {
    sub_21874600C(&v134, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v81 = qword_280ED32D8;
    v83 = qword_280ED32E0;
    v85 = qword_280ED32E8;

    sub_2188202A8(v83);
  }

  v126 = v85;
  v133 = v79;
  if (v72)
  {
    v86 = sub_219BDD274();
    v87 = v72;
  }

  else
  {
    v87 = 0;
    v86 = 0;
    v135 = 0;
    *(&v134 + 1) = 0;
  }

  *&v134 = v87;
  v136 = v86;
  v88 = v119;
  sub_21872D660(v78, v119, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218729F60);
  sub_21872D660(&v142, v137, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v89 = (*(v117 + 80) + 24) & ~*(v117 + 80);
  v90 = (v118 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v90 + 47) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  *(v92 + 16) = v72;
  sub_2189B4EAC(v88, v92 + v89);
  v93 = v92 + v90;
  v94 = v137[1];
  *v93 = v137[0];
  *(v93 + 16) = v94;
  *(v93 + 32) = v138;
  v95 = (v92 + v91);
  v96 = (v92 + ((v91 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v95 = 0;
  v95[1] = 0;
  *v96 = v81;
  v96[1] = v83;
  v97 = v83;
  v98 = v126;
  v96[2] = v126;
  swift_retain_n();

  sub_2188202A8(v97);
  sub_2186CF94C(0);
  sub_21998AA58(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v97, v98);
  sub_21874600C(v140, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874600C(&v142, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_21874600C(v132, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218729F60);
  sub_21998AAA0(v131, MEMORY[0x277D2FB40]);
  (*(v129 + 8))(v128, v130);
  sub_21874600C(&v134, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_218739B88);
}

void sub_21998A8A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_218739B88(255, a3, a4, a5);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21998A8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21998A964(void *a1)
{
  sub_218729F60(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21998AA58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21998AAA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21998AB00(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v12 = v7;
  if (v5)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = *(*(v1 + 56) + ((v9 << 9) | (8 * v10)));
        if (([v11 unsignedIntegerValue] & 0x2000) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          sub_219BEA9C4();
          sub_219BF00C4();
          v1 = v12;
          sub_219BE6FD4();

          swift_unknownObjectRelease();
          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v8;
      }
    }
  }
}

double sub_21998AC84(char *a1, id a2)
{
  v4 = [objc_msgSend(a2 backingTag)];
  swift_unknownObjectRelease();
  if (!v4)
  {
LABEL_7:
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v8 = qword_280F61708;
    v9 = sub_219BF61F4();
    sub_2186E8524(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    sub_21998B57C();
    v11 = sub_219BF7A04();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_219BE5314("Failed to render the sports event title view, error=%{public}@", 62, 2, &dword_2186C1000, v8, v9, v10);
    goto LABEL_10;
  }

  v5 = [v4 eventCompetitorTags];
  if (!v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v6 = v5;
  sub_2186D85DC();
  v7 = sub_219BF5924();

  if (v7 >> 62)
  {
    if (sub_219BF7214() < 2)
    {
      goto LABEL_5;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_5:
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      if (v15 != 1)
      {
        v16 = *(v7 + 32);
        v17 = *(v7 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  v16 = MEMORY[0x21CECE0F0](0, v7);
  v17 = MEMORY[0x21CECE0F0](1, v7);
LABEL_16:

  v18 = sub_21998BDF0(v16, v17);
  if (!v19)
  {
    if (qword_280E8D7F8 == -1)
    {
LABEL_21:
      v32 = qword_280F61708;
      v33 = sub_219BF61F4();
      sub_2186E8524(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_219C09BA0;
      sub_21998B57C();
      v35 = sub_219BF7A04();
      v37 = v36;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_2186FC3BC();
      *(v34 + 32) = v35;
      *(v34 + 40) = v37;
      sub_219BE5314("Failed to render the sports event title view, error=%{public}@", 62, 2, &dword_2186C1000, v32, v33, v34);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_10:

      return result;
    }

LABEL_25:
    swift_once();
    goto LABEL_21;
  }

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = *&a1[OBJC_IVAR____TtC7NewsUI233TagFeedViewerSportsEventTitleView_leftTitleLabel];
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v27 = v22;
  v28 = v2;
  v29 = sub_2189F8040(v27, v23);

  [v26 setAttributedText_];

  v30 = *&a1[OBJC_IVAR____TtC7NewsUI233TagFeedViewerSportsEventTitleView_rightTitleLabel];
  __swift_project_boxed_opaque_existential_1((v28 + 56), *(v28 + 80));
  v31 = sub_2189F8040(v24, v25);

  [v30 setAttributedText_];

  sub_21998B158(a1, v16, v17);
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

void sub_21998B158(void *a1, id a2, void *a3)
{
  v6 = [a2 asSports];
  if (v6)
  {
    v7 = [v6 sportsTheme];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = [v7 sportsLogoImageCompactAssetHandle];
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = [a3 asSports];
        if (v9)
        {
          v10 = [v9 sportsTheme];
          swift_unknownObjectRelease();
          if (v10)
          {
            v11 = [v10 sportsLogoImageCompactAssetHandle];
            swift_unknownObjectRelease();
            if (v11)
            {
              v12 = type metadata accessor for ThumbnailImageProcessorRequest();
              swift_allocObject();
              v26 = v8;
              v13 = v3;
              v14 = sub_2196CB1CC(v26, 40.0, 40.0);

              __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
              v28 = v12;
              v15 = sub_21998BF0C(&qword_27CC21940, type metadata accessor for ThumbnailImageProcessorRequest, &unk_219C9BBE0);
              v29 = v15;
              v27[0] = v14;
              *(swift_allocObject() + 16) = a1;

              v16 = a1;
              sub_219BE6254();

              __swift_destroy_boxed_opaque_existential_1(v27);
              swift_allocObject();
              v17 = v11;
              v18 = sub_2196CB1CC(v17, 40.0, 40.0);

              __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
              v28 = v12;
              v29 = v15;
              v27[0] = v18;
              *(swift_allocObject() + 16) = v16;
              v19 = v16;

              sub_219BE6254();

              __swift_destroy_boxed_opaque_existential_1(v27);
              return;
            }
          }
        }
      }
    }
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61708;
  v21 = sub_219BF61F4();
  sub_2186E8524(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  sub_21998B57C();
  v23 = sub_219BF7A04();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2186FC3BC();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_219BE5314("Failed to render the sports event title view, error=%{public}@", 62, 2, &dword_2186C1000, v20, v21, v22);
}

unint64_t sub_21998B57C()
{
  result = qword_27CC21938;
  if (!qword_27CC21938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21938);
  }

  return result;
}

void sub_21998B5D0(void *a1, void *a2, void *a3)
{
  v6 = sub_219BED174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED1D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v16 = qword_280F61708;
    sub_2186E8524(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    swift_getErrorValue();
    v18 = sub_219BF7A04();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = sub_219BF6214();
    sub_219BE5314("Failed to download the left side competitor image for event feed navigation bar title view, error=%{public}@", 108, 2, &dword_2186C1000, v16, v21, v17);
  }

  else if (a1)
  {
    v29 = v12;
    sub_2187D9028();
    v22 = a1;
    v23 = sub_219BF66A4();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = v22;
    aBlock[4] = sub_21998BF54;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_15_5;
    v25 = _Block_copy(aBlock);
    v26 = v22;
    v27 = a3;

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21998BF0C(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2186E8524(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v14, v9, v25);
    _Block_release(v25);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v14, v29);
  }
}

void sub_21998B9E0(void *a1, void *a2, void *a3)
{
  v6 = sub_219BED174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED1D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v16 = qword_280F61708;
    sub_2186E8524(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    swift_getErrorValue();
    v18 = sub_219BF7A04();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = sub_219BF6214();
    sub_219BE5314("Failed to download the right side competitor image for event feed navigation bar title view, error=%{public}@", 109, 2, &dword_2186C1000, v16, v21, v17);
  }

  else if (a1)
  {
    v29 = v12;
    sub_2187D9028();
    v22 = a1;
    v23 = sub_219BF66A4();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = v22;
    aBlock[4] = sub_21998BF00;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_192;
    v25 = _Block_copy(aBlock);
    v26 = v22;
    v27 = a3;

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21998BF0C(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2186E8524(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v14, v9, v25);
    _Block_release(v25);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v14, v29);
  }
}

id sub_21998BDF0(void *a1, void *a2)
{
  result = [a1 asSports];
  if (result)
  {
    v4 = [result sportsNameAbbreviation];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = sub_219BF5414();

      v6 = [a2 asSports];
      if (v6)
      {
        v7 = [v6 sportsNameAbbreviation];
        swift_unknownObjectRelease();
        if (v7)
        {
          sub_219BF5414();

          return v5;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_21998BF0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_21998BF60(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  [v2 setImage_];

  return [v2 setNeedsDisplay];
}

unint64_t sub_21998BFC8()
{
  result = qword_27CC21948;
  if (!qword_27CC21948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21948);
  }

  return result;
}

uint64_t sub_21998C01C()
{
  v1 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C3C68(v0, v6);
  sub_218CB12E8(v6, v3);
  v7 = sub_218FC0850();
  sub_218FC1534(v3);
  return v7;
}

uint64_t sub_21998C0F8(uint64_t a1)
{
  v2 = sub_21998C78C(&qword_280EDBD58, type metadata accessor for SavedFeedGroup, &unk_219CBA1AC);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_21998C174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21998C78C(qword_280EDBD68, type metadata accessor for SavedFeedGroup, &unk_219CBA28C);

  return sub_219BF1174();
}

uint64_t sub_21998C1F8()
{
  v1 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C3C68(v0, v6);
  sub_218CB12E8(v6, v3);
  v7 = *v3;

  sub_218FC1534(v3);
  return v7;
}

uint64_t sub_21998C2D8(uint64_t a1)
{
  v2 = sub_21998C78C(qword_280EDBD68, type metadata accessor for SavedFeedGroup, &unk_219CBA28C);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21998C344(uint64_t a1)
{
  sub_21998C78C(&qword_280EDBD48, type metadata accessor for SavedFeedGroup, &unk_219CBA234);

  return sub_219BE2324();
}

uint64_t sub_21998C3B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C3C68(v1, v8);
  sub_218CB12E8(v8, v5);
  a1[3] = v3;
  a1[4] = sub_21998C78C(&qword_27CC14518, type metadata accessor for ArticleListSavedFeedGroup, &unk_219C4EDE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218CB12E8(v5, boxed_opaque_existential_1);
}

uint64_t type metadata accessor for SavedFeedGroup(uint64_t a1)
{
  result = qword_280EDBD08;
  if (!qword_280EDBD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21998C5B8()
{
  result = qword_280ED2F18;
  if (!qword_280ED2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2F18);
  }

  return result;
}

unint64_t sub_21998C614()
{
  result = qword_280ED2F30;
  if (!qword_280ED2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2F30);
  }

  return result;
}

uint64_t sub_21998C78C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21998C7D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroup(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2189166A8);
}

uint64_t sub_21998C82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListSavedFeedGroup(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_218916754);
}

uint64_t sub_21998C894(uint64_t a1)
{
  result = type metadata accessor for ArticleListSavedFeedGroup(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_21998C938()
{
  v1 = v0;
  v2 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21998D00C(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 7364967;
  }

  sub_21898BE40(v8, v5);
  sub_218954350(0);
  v12[0] = sub_219BE6944();
  v12[1] = v10;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](*&v5[*(v2 + 20)], *&v5[*(v2 + 20) + 8]);
  v9 = v12[0];
  sub_21998D070(v5, type metadata accessor for TagFeedBlueprintCollapsedSection);
  return v9;
}

uint64_t sub_21998CADC(uint64_t a1)
{
  sub_218954350(0);
  v4 = sub_219BE6944();
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  return v4;
}

uint64_t sub_21998CB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_218CF5CE4();
  if ((sub_219BE6954() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_21998CC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21998CFA8(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_21998D00C(a1, v13);
  sub_21998D00C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    v17 = 1;
    v18 = v16(&v13[v15], 1, v4);
    v19 = type metadata accessor for TagFeedSectionGapDescriptor;
    if (v18 == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  sub_21998D00C(v13, v10);
  if (v16(&v13[v15], 1, v4) != 1)
  {
    sub_21898BE40(&v13[v15], v7);
    type metadata accessor for TagFeedModel(0);
    sub_2186F7410();
    sub_218CF5CE4();
    if (sub_219BE6954())
    {
      v20 = *(v4 + 20);
      v21 = *&v10[v20];
      v22 = *&v10[v20 + 8];
      v23 = &v7[v20];
      if (v21 == *v23 && v22 == *(v23 + 1))
      {
        sub_21998D070(v7, type metadata accessor for TagFeedBlueprintCollapsedSection);
        sub_21998D070(v10, type metadata accessor for TagFeedBlueprintCollapsedSection);
        v17 = 1;
        goto LABEL_17;
      }

      v25 = sub_219BF78F4();
      sub_21998D070(v7, type metadata accessor for TagFeedBlueprintCollapsedSection);
      sub_21998D070(v10, type metadata accessor for TagFeedBlueprintCollapsedSection);
      v19 = type metadata accessor for TagFeedSectionGapDescriptor;
      if (v25)
      {
        v17 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      sub_21998D070(v7, type metadata accessor for TagFeedBlueprintCollapsedSection);
      sub_21998D070(v10, type metadata accessor for TagFeedBlueprintCollapsedSection);
    }

    v17 = 0;
LABEL_17:
    v19 = type metadata accessor for TagFeedSectionGapDescriptor;
    goto LABEL_18;
  }

  sub_21998D070(v10, type metadata accessor for TagFeedBlueprintCollapsedSection);
LABEL_6:
  v17 = 0;
  v19 = sub_21998CFA8;
LABEL_18:
  sub_21998D070(v13, v19);
  return v17;
}

void sub_21998CFA8(uint64_t a1)
{
  if (!qword_280EB6628[0])
  {
    type metadata accessor for TagFeedSectionGapDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EB6628);
    }
  }
}

uint64_t sub_21998D00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21998D070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21998D0F8(uint64_t a1)
{
  sub_218954350(319);
  if (v1 <= 0x3F)
  {
    sub_2188554BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21998D1AC(uint64_t a1)
{
  v1 = type metadata accessor for TagFeedBlueprintCollapsedSection(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for SavedStoriesTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA8358;
  if (!qword_280EA8358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21998D278(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21998D314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_2189AE9B4(0);
  v60 = v3;
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SavedStoriesTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v58);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = v46 - v13;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = v46 - v17;
  sub_21998DF04(0, &qword_280E8CAA0, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = v46 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21998DEB0();
  v23 = v63;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = a1;
  v48 = v11;
  v50 = 0;
  v51 = v20;
  v63 = v8;
  LOBYTE(v66) = 0;
  sub_2186DF950(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v25 = v61;
  v26 = v54;
  sub_219BF7674();
  LOBYTE(v66) = 1;
  sub_2186DF950(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  sub_219BF7674();
  sub_2186F9548();
  v28 = v27;
  LOBYTE(v65) = 2;
  sub_2186DF950(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  v46[1] = v28;
  sub_219BF7674();
  v29 = v66;
  v30 = v62;
  sub_2189AF794(v25, v62, sub_2189AF720);
  v31 = v53;
  v32 = *(v53 + 48);
  v33 = v32(v30, 1, v26);
  v52 = v19;
  v49 = v22;
  if (v33 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v34 = v55;
    sub_219BEE974();
    if (v32(v62, 1, v26) != 1)
    {
      sub_2189AF7FC(v62, sub_2189AF720);
    }
  }

  else
  {
    v34 = v55;
    (*(v31 + 32))(v55, v62, v26);
  }

  v35 = v63;
  (*(v31 + 32))(v63, v34, v26);
  v36 = v48;
  sub_2189AF794(v64, v48, sub_2189AF700);
  v37 = v57;
  v38 = *(v57 + 48);
  v39 = v60;
  if (v38(v36, 1, v60) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v40 = v56;
    sub_219BEEC74();
    v41 = v38(v36, 1, v39);
    v42 = v40;
    v43 = v59;
    v44 = v51;
    if (v41 != 1)
    {
      sub_2189AF7FC(v36, sub_2189AF700);
    }
  }

  else
  {
    v42 = v56;
    (*(v37 + 32))(v56, v36, v39);
    v43 = v59;
    v44 = v51;
  }

  v45 = v58;
  (*(v37 + 32))(v35 + *(v58 + 20), v42, v39);
  if (!v29)
  {
    v65 = 6;
    swift_allocObject();
    v29 = sub_219BEF534();
  }

  sub_2189AF7FC(v64, sub_2189AF700);
  sub_2189AF7FC(v61, sub_2189AF720);
  (*(v44 + 8))(v49, v52);
  *(v35 + *(v45 + 24)) = v29;
  sub_21998DF68(v35, v43);
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_21998DAF8(void *a1, __n128 a2)
{
  v4 = v2;
  sub_21998DF04(0, &qword_280E8C380, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21998DEB0();
  sub_219BF7B44();
  v16 = 0;
  sub_2189AE994(0);
  sub_2186DF950(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for SavedStoriesTodayFeedGroupKnobs(0);
    v15 = 1;
    sub_2189AE9B4(0);
    sub_2186DF950(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
    v14 = *(v4 + *(v11 + 24));
    v13[15] = 2;
    sub_2186F9548();
    sub_2186DF950(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_21998DD88()
{
  v1 = 0x6C6F6F706572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_21998DDE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21998E0E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21998DE08(uint64_t a1)
{
  v2 = sub_21998DEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21998DE44(uint64_t a1)
{
  v2 = sub_21998DEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21998DEB0()
{
  result = qword_280EA8388[0];
  if (!qword_280EA8388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA8388);
  }

  return result;
}

void sub_21998DF04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21998DEB0();
    v7 = a3(a1, &type metadata for SavedStoriesTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21998DF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedStoriesTodayFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21998DFE0()
{
  result = qword_27CC21950;
  if (!qword_27CC21950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21950);
  }

  return result;
}

unint64_t sub_21998E038()
{
  result = qword_280EA8378;
  if (!qword_280EA8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8378);
  }

  return result;
}

unint64_t sub_21998E090()
{
  result = qword_280EA8380;
  if (!qword_280EA8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8380);
  }

  return result;
}

uint64_t sub_21998E0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for ChannelHeadlineServiceRequest(uint64_t a1)
{
  result = qword_280EB1248;
  if (!qword_280EB1248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21998E270(uint64_t a1)
{
  sub_2186C6148(319, &qword_280E8E860, 0x277D30F38);
  if (v1 <= 0x3F)
  {
    sub_2186DEFE0(319, &qword_280E8EA30, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2186DEFE0(319, &qword_280E8F220, &type metadata for HeroSelectionStrategy, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2186E2394();
        if (v4 <= 0x3F)
        {
          sub_219BEFBD4();
          if (v5 <= 0x3F)
          {
            sub_2186C61E4();
            if (v6 <= 0x3F)
            {
              sub_2186C6148(319, &qword_280E8D790, 0x277D86200);
              if (v7 <= 0x3F)
              {
                type metadata accessor for FCOperationPurpose(319);
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

uint64_t SportsConfiguringDataVisualizationRequest.FeedKind.feedConfiguration.getter()
{
  if (*v0)
  {
    return v0[1];
  }

  else
  {
    return 0;
  }
}

uint64_t SportsConfiguringDataVisualizationRequest.EmbedKind.requestKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21998E7D0(v2, v6, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  v7 = sub_219BF4F64();
  v8 = (*(*(v7 - 8) + 48))(v6, 6, v7);
  v9 = sub_219BF4684();
  v10 = *(*(v9 - 8) + 104);
  if (v8 <= 2)
  {
    if (!v8)
    {
      v10(a1, *MEMORY[0x277D344A8], v9);
      return sub_21998E610(v6);
    }

    if (v8 == 1)
    {
      v11 = MEMORY[0x277D34498];
    }

    else
    {
      v11 = MEMORY[0x277D34490];
    }
  }

  else if (v8 > 4)
  {
    if (v8 == 5)
    {
      v11 = MEMORY[0x277D344A0];
    }

    else
    {
      v11 = MEMORY[0x277D34488];
    }
  }

  else if (v8 == 3)
  {
    v11 = MEMORY[0x277D344B0];
  }

  else
  {
    v11 = MEMORY[0x277D34480];
  }

  return (v10)(a1, *v11, v9);
}

uint64_t sub_21998E610(uint64_t a1)
{
  v2 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SportsConfiguringDataVisualizationRequest.EmbedKind.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21998E7D0(v2, v6, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  v7 = sub_219BF4F64();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 6, v7))
  {
    return (*(v8 + 104))(a1, *MEMORY[0x277D346B8], v7);
  }

  else
  {
    return (*(v8 + 32))(a1, v6, v7);
  }
}

uint64_t sub_21998E7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double SportsConfiguringDataVisualizationRequest.feedKind.getter@<D0>(_OWORD *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SportsConfiguringDataVisualizationRequest(0) + 24));

  swift_unknownObjectRetain();
  return result;
}

uint64_t SportsConfiguringDataVisualizationRequest.groupType.getter()
{
  v1 = *(v0 + *(type metadata accessor for SportsConfiguringDataVisualizationRequest(0) + 28));

  return v1;
}

void sub_21998E954(uint64_t a1)
{
  sub_2191EBE38(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21998EA28(uint64_t a1)
{
  v1 = sub_219BF4F64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21998EA80(void *a1)
{
  sub_21998F4EC(0, &qword_27CC21988, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21998F3D8();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2186E0CD8(0);
  sub_21998F550(&qword_27CC21990, sub_2186E0CD8, MEMORY[0x277D31E78]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SharedWithYouTodayFeedGroup(0);
    v9[14] = 1;
    sub_219BED8D4();
    sub_21998F550(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21998EC90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_219BED8D4();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0CD8(0);
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21998F4EC(0, &qword_27CC21970, MEMORY[0x277D844C8]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21998F3D8();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v32 = 0;
  sub_21998F550(&qword_27CC21980, sub_2186E0CD8, MEMORY[0x277D31E80]);
  v17 = v27;
  sub_219BF7734();
  v18 = *(v16 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_21998F550(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v15);
  sub_21998F42C(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21998F490(v19);
}

uint64_t sub_21998F0C0(uint64_t a1)
{
  v2 = sub_21998F3D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21998F0FC(uint64_t a1)
{
  v2 = sub_21998F3D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21998F268(uint64_t a1)
{
  result = sub_21998F550(&qword_27CC0B990, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA898);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21998F2C0(uint64_t a1)
{
  v2 = sub_21998F550(&qword_27CC21968, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA77C);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21998F32C(void *a1)
{
  a1[1] = sub_21998F550(&qword_27CC21968, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA77C);
  a1[2] = sub_21998F550(&qword_27CC0B9D8, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA870);
  result = sub_21998F550(&qword_27CC0BA18, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA848);
  a1[3] = result;
  return result;
}

unint64_t sub_21998F3D8()
{
  result = qword_27CC21978;
  if (!qword_27CC21978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21978);
  }

  return result;
}

uint64_t sub_21998F42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21998F490(uint64_t a1)
{
  v2 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21998F4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21998F3D8();
    v7 = a3(a1, &type metadata for SharedWithYouTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21998F550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21998F5AC()
{
  result = qword_27CC21998;
  if (!qword_27CC21998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21998);
  }

  return result;
}

unint64_t sub_21998F604()
{
  result = qword_27CC219A0;
  if (!qword_27CC219A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC219A0);
  }

  return result;
}

unint64_t sub_21998F65C()
{
  result = qword_27CC219A8;
  if (!qword_27CC219A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC219A8);
  }

  return result;
}

uint64_t sub_21998F6E4(uint64_t a1)
{
  v2 = sub_219BE37C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v72 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v72 - v19);
  v21 = a1;
  v22 = *(v3 + 16);
  v22(&v72 - v19, v21, v2, v18);
  v23 = (*(v3 + 88))(v20, v2);
  if (v23 != *MEMORY[0x277D316B0])
  {
    if (v23 == *MEMORY[0x277D316B8])
    {
      (*(v3 + 96))(v20, v2);
      v30 = *v20;
      v31 = *(v30 + 32);
      v32 = sub_21998FFD4(v30[2], v30[3]);

      if (v32 != 2)
      {
        v29 = v31 ^ v32 ^ 1;
        return v29 & 1;
      }
    }

    else if (v23 == *MEMORY[0x277D316C8])
    {
      (*(v3 + 96))(v20, v2);
      v33 = *v20;
      v34 = v33[4];
      v35 = sub_21998FDC8(v33[2], v33[3]);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        v29 = v34 < v35;
        return v29 & 1;
      }
    }

    else if (v23 == *MEMORY[0x277D316D8])
    {
      (*(v3 + 96))(v20, v2);
      v38 = *v20;
      v39 = v38[4];
      v40 = sub_21998FDC8(v38[2], v38[3]);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        v29 = v40 >= v39;
        return v29 & 1;
      }
    }

    else
    {
      if (v23 != *MEMORY[0x277D316C0])
      {
        if (v23 == *MEMORY[0x277D316D0])
        {
          (*(v3 + 96))(v20, v2);
          v48 = *v20;
          v49 = v48[4];
          v50 = sub_21998FDC8(v48[2], v48[3]);
          v52 = v51;

          if ((v52 & 1) == 0)
          {
            v29 = v49 >= v50;
            return v29 & 1;
          }

          goto LABEL_18;
        }

        if (v23 == *MEMORY[0x277D316E0])
        {
          (*(v3 + 96))(v20, v2);
          sub_219990840(0);
          v55 = v54;
          v56 = swift_projectBox();
          v57 = *(v55 + 48);
          (v22)(v16, v56, v2);
          (v22)(v13, v56 + v57, v2);
          if (sub_21998F6E4(v16))
          {
            v29 = 1;
          }

          else
          {
            v29 = sub_21998F6E4(v13);
          }

          v64 = *(v3 + 8);
          v64(v13, v2);
          v64(v16, v2);
        }

        else
        {
          if (v23 != *MEMORY[0x277D316E8])
          {
            if (v23 == *MEMORY[0x277D316F0])
            {
              (*(v3 + 96))(v20, v2);
              sub_2199907F8();
              v65 = swift_projectBox();
              (v22)(v5, v65, v2);
              v66 = sub_21998F6E4(v5);
              (*(v3 + 8))(v5, v2);

              v29 = v66 ^ 1;
              return v29 & 1;
            }

            if (qword_280EE60A0 != -1)
            {
              swift_once();
            }

            v68 = sub_219BE5434();
            __swift_project_value_buffer(v68, qword_280F627F0);
            v69 = sub_219BE5414();
            v70 = sub_219BF61F4();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&dword_2186C1000, v69, v70, "EngagementUpsell: invalid condition", v71, 2u);
              MEMORY[0x21CECF960](v71, -1, -1);
            }

            (*(v3 + 8))(v20, v2);
            goto LABEL_18;
          }

          (*(v3 + 96))(v20, v2);
          sub_219990840(0);
          v59 = v58;
          v60 = swift_projectBox();
          v61 = *(v59 + 48);
          (v22)(v10, v60, v2);
          v62 = v60 + v61;
          v63 = v73;
          (v22)(v73, v62, v2);
          if (sub_21998F6E4(v10))
          {
            v29 = sub_21998F6E4(v63);
          }

          else
          {
            v29 = 0;
          }

          v67 = *(v3 + 8);
          v67(v63, v2);
          v67(v10, v2);
        }

        return v29 & 1;
      }

      (*(v3 + 96))(v20, v2);
      v43 = *v20;
      v44 = v43[4];
      v45 = sub_21998FDC8(v43[2], v43[3]);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        v29 = v45 < v44;
        return v29 & 1;
      }
    }

LABEL_18:
    v29 = 0;
    return v29 & 1;
  }

  (*(v3 + 96))(v20, v2);
  v24 = *v20;
  v25 = v24[4];
  v26 = sub_21998FDC8(v24[2], v24[3]);
  v28 = v27;

  if (v28)
  {
    goto LABEL_18;
  }

  v29 = v26 == v25;
  return v29 & 1;
}

uint64_t sub_21998FDC8(uint64_t a1, unint64_t a2)
{
  sub_2199901D4(a1, a2, &v17);
  if (v18)
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 ^ 1;
  }

  else
  {
    sub_218806FD0(&v17);
    v5 = 0;
    v6 = 1;
  }

  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F627F0);

  v8 = sub_219BE5414();
  v9 = sub_219BF6214();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2186D1058(a1, a2, &v16);
    *(v10 + 12) = 2080;
    *&v17 = v5;
    BYTE8(v17) = v6;
    sub_2186DEEA0(0, &qword_280E8E900, MEMORY[0x277D83B88]);
    v12 = sub_219BF6FA4();
    v14 = sub_2186D1058(v12, v13, &v16);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_2186C1000, v8, v9, "EngagementUpsell: property [%s] returned [%s]", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  return v5;
}

uint64_t sub_21998FFD4(uint64_t a1, unint64_t a2)
{
  sub_2199901D4(a1, a2, v15);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v4 = v14;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    sub_218806FD0(v15);
    v4 = 2;
  }

  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F627F0);

  v6 = sub_219BE5414();
  v7 = sub_219BF6214();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2186D1058(a1, a2, v15);
    *(v8 + 12) = 2080;
    sub_2186DEEA0(0, &qword_280E8EAF8, MEMORY[0x277D839B0]);
    v10 = sub_219BF6FA4();
    v12 = sub_2186D1058(v10, v11, v15);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2186C1000, v6, v7, "EngagementUpsell: property [%s] returned [%s]", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return v4;
}

double sub_2199901D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  sub_218794268(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE5244();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[0] = a1;
  v60[1] = a2;
  sub_2187F3BD4();
  v15 = sub_219BF7094();
  if (v15[2] != 2)
  {

    if (qword_280EE60A0 == -1)
    {
LABEL_7:
      v35 = sub_219BE5434();
      __swift_project_value_buffer(v35, qword_280F627F0);

      v36 = sub_219BE5414();
      v37 = sub_219BF61F4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v60[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_2186D1058(a1, a2, v60);
        _os_log_impl(&dword_2186C1000, v36, v37, "EngagementUpsell: invalid property name %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x21CECF960](v39, -1, -1);
        MEMORY[0x21CECF960](v38, -1, -1);
      }

      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

LABEL_22:
    swift_once();
    goto LABEL_7;
  }

  v57 = v11;
  v58 = v12;
  v16 = v15[4];
  v17 = v15[5];
  a1 = v15[6];
  v18 = v15[7];
  v19 = v15;

  v20 = MEMORY[0x21CECC290](v16, v17, a1, v18);
  a2 = v21;

  if (v19[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v59 = a3;
  v22 = v19[8];
  v23 = v19[9];
  v25 = v19[10];
  v24 = v19[11];

  v26 = MEMORY[0x21CECC290](v22, v23, v25, v24);
  v28 = v27;

  sub_2199908A8(v20, a2);
  if (v29)
  {

    sub_219BE5224();
    v30 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    __swift_project_boxed_opaque_existential_1((*v30 + 16), *(*v30 + 40));
    sub_219BE5254();
    v31 = sub_219BE52A4();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v10, 1, v31) == 1)
    {
      (*(v58 + 8))(v14, v57);

      sub_2187942C0(v10);
      result = 0.0;
      v34 = v59;
      *v59 = 0u;
      v34[1] = 0u;
      return result;
    }

    v50 = sub_219BE5294();
    (*(v32 + 8))(v10, v31);
    v51 = v59;
    v52 = v57;
    if (*(v50 + 16))
    {
      v53 = sub_21870F700(v26, v28);
      v55 = v54;

      if (v55)
      {
        sub_2186D1230(*(v50 + 56) + 32 * v53, v51);
        (*(v58 + 8))(v14, v52);

        return result;
      }
    }

    else
    {
    }

    (*(v58 + 8))(v14, v52);
    result = 0.0;
    *v51 = 0u;
    v51[1] = 0u;
  }

  else
  {
    v40 = v20;

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v41 = sub_219BE5434();
    __swift_project_value_buffer(v41, qword_280F627F0);

    v42 = sub_219BE5414();
    v43 = sub_219BF61F4();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v59;
    if (v44)
    {
      v46 = v40;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60[0] = v48;
      *v47 = 136315138;
      v49 = sub_2186D1058(v46, a2, v60);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_2186C1000, v42, v43, "EngagementUpsell: invalid property prefix %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x21CECF960](v48, -1, -1);
      MEMORY[0x21CECF960](v47, -1, -1);
    }

    else
    {
    }

    result = 0.0;
    *v45 = 0u;
    v45[1] = 0u;
  }

  return result;
}

void sub_2199907F8()
{
  if (!qword_27CC219B0)
  {
    v0 = sub_219BE37C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC219B0);
    }
  }
}

void sub_219990840(uint64_t a1)
{
  if (!qword_27CC219B8)
  {
    sub_219BE37C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC219B8);
    }
  }
}

unint64_t sub_2199908A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x77654E6C61636F6CLL && a2 == 0xE900000000000073;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  if (a1 == 0x7070417377656ELL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {
    return 0xD000000000000016;
  }

  if (a1 == 0x73756C507377656ELL && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {
    return 0xD000000000000017;
  }

  if (a1 == 0x73756C507377656ELL && a2 == 0xED00006F69647541 || (sub_219BF78F4() & 1) != 0)
  {
    return 0xD00000000000001CLL;
  }

  return 0;
}

uint64_t sub_219990A4C(uint64_t a1)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61720;
  v2 = sub_219BF6214();
  sub_219BE5314("Search will fetch configuration", 31, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  sub_2186C61E4();
  sub_219BE3204();
  v3 = sub_219BE2E54();
  sub_2186E9518();
  sub_219BE2F84();

  v4 = sub_219BE2E54();
  type metadata accessor for SearchFeedConfigFetchResult(0);
  sub_219BE2F84();

  v5 = sub_219BE2E54();
  v6 = sub_219BE2FD4();

  return v6;
}

uint64_t sub_219990C0C(uint64_t *a1, void *a2)
{
  sub_219991804(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v26 - v6);
  v8 = *a1;
  v9 = a2[12];
  v10 = a2[13];
  v11 = __swift_project_boxed_opaque_existential_1(a2 + 9, v9);
  v12 = v8;
  v13 = v11;
  v14 = (*(v10 + 8))(v12, v9, v10);
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v26[1] = 0;
    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v18 = qword_280F61720;
    sub_2186F20D4(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_2186FC3BC();
    *(v19 + 32) = v17;
    *(v19 + 40) = v16;

    v20 = sub_219BF6214();
    sub_219BE5314("Search fetching feed configuration for resource %{public}@", 58, 2, &dword_2186C1000, v18, v20, v19);

    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    sub_219BF5CE4();
    *v7 = v21;
    v22 = *MEMORY[0x277D6CA48];
    v23 = sub_219BE1B34();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v7, v22, v23);
    (*(v24 + 56))(v7, 0, 1, v23);
    v13 = sub_219BF2944();

    sub_21897DAD8(v7);
  }

  return v13;
}

char *sub_219990EB0(id *a1, unint64_t a2)
{
  v33 = a2;
  v4 = type metadata accessor for SearchFeedConfigFetchResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for SearchFeedContentConfig(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v29 - v18;
  v20 = [*a1 fileURL];
  if (v20)
  {
    v21 = v20;
    sub_219BDB8B4();

    (*(v13 + 32))(v19, v15, v12);
    v22 = sub_219BDB974();
    if (!v2)
    {
      v30 = v8;
      v25 = v23;
      v26 = v22;
      sub_219991744();
      v31 = v26;
      v33 = v25;
      sub_219BE1974();
      v28 = v30;
      sub_21999179C(v11, v30, type metadata accessor for SearchFeedContentConfig);
      sub_21999179C(v28, v32, type metadata accessor for SearchFeedConfigFetchResult);
      sub_219991804(0, &qword_280EE6D28, type metadata accessor for SearchFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v15 = sub_219BE3014();
      sub_2186C6190(v31, v33);
      sub_219991868(v28, type metadata accessor for SearchFeedConfigFetchResult);
      sub_219991868(v11, type metadata accessor for SearchFeedContentConfig);
    }

    (*(v13 + 8))(v19, v12);
  }

  else
  {
    sub_2199916F0();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  return v15;
}

double sub_219991270(uint64_t a1)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61720;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch search feed service config. Error=%{public}@)", 61, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

void *sub_21999139C@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchFeedContentConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219991744();
  result = sub_219BE1974();
  if (!v2)
  {
    return sub_2199918C8(v6, a2);
  }

  return result;
}

uint64_t sub_219991474()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_2199914E8(uint64_t a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BDAF64();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_219BDAF44();
  v15 = v10;
  sub_219BE3204();
  v11 = sub_219BE2E54();
  type metadata accessor for SearchFeedConfigFetchResult(0);
  v12 = sub_219BE2F94();

  (*(v7 + 8))(v10, v6);
  return v12;
}

unint64_t sub_2199916F0()
{
  result = qword_27CC219C8;
  if (!qword_27CC219C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC219C8);
  }

  return result;
}

unint64_t sub_219991744()
{
  result = qword_280EC3840;
  if (!qword_280EC3840)
  {
    type metadata accessor for SearchFeedContentConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3840);
  }

  return result;
}

uint64_t sub_21999179C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219991804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219991868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2199918C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedContentConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219991940()
{
  result = qword_27CC219D8[0];
  if (!qword_27CC219D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC219D8);
  }

  return result;
}

uint64_t sub_219991994(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_2199919D4(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1)
  {
    return 1;
  }

  if (qword_27CC083B8 != -1)
  {
    swift_once();
  }

  v3 = qword_27CC083C0;
  v4 = qword_27CCD8890;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_27CCD8898;
  return 0;
}

uint64_t sub_219991AB8(uint64_t a1, int a2)
{
  v4 = sub_219BEAAD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  if (!(a2 >> 14))
  {
    sub_2187268C8(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
    v20 = *(v5 + 72);
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09EC0;
    v23 = v22 + v21;
    v24 = *MEMORY[0x277D31B10];
    v25 = *(v5 + 104);
    v25(v23, v24, v4);
    v26 = v23 + v20;
    v27 = a1;
    v28 = *MEMORY[0x277D31B18];
    v25(v26, v28, v4);
    sub_21999382C(v22, v27);
    if (v29)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      if ((v71 & 1) == 0 || (v71 & 0x100) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      sub_219BDB5E4();

      sub_2187268C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_219C09BA0;
      v64 = [objc_opt_self() currentDevice];
      v65 = [v64 model];

      v66 = sub_219BF5414();
      v68 = v67;

      *(v63 + 56) = MEMORY[0x277D837D0];
      *(v63 + 64) = sub_2186FC3BC();
      *(v63 + 32) = v66;
      *(v63 + 40) = v68;
      v57 = sub_219BF5454();

      return v57;
    }

    v25(v7, v24, v4);
    v47 = sub_218C32D30(v7, v27);
    v48 = *(v5 + 8);
    v48(v7, v4);
    if (v47)
    {
      goto LABEL_19;
    }

    v25(v7, v28, v4);
    v60 = sub_218C32D30(v7, v27);
    v48(v7, v4);
    if ((v60 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v70 = a1;
  if (a2 >> 14 == 1)
  {
    sub_2187268C8(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
    v8 = *(v5 + 72);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09EC0;
    v11 = v10 + v9;
    v12 = *MEMORY[0x277D31B10];
    v13 = *(v5 + 104);
    v13(v11, v12, v4);
    v14 = *MEMORY[0x277D31B18];
    v13(v11 + v8, v14, v4);
    v15 = v10;
    v16 = v70;
    sub_21999382C(v15, v70);
    if (v17)
    {
      type metadata accessor for Localized();
      v18 = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      if (v71)
      {
        if ((v71 & 0x100) == 0)
        {
          goto LABEL_32;
        }
      }

      else if ((v71 & 0x100) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v13(v7, v12, v4);
    v45 = sub_218C32D30(v7, v16);
    v46 = *(v5 + 8);
    v46(v7, v4);
    if (v45)
    {
      goto LABEL_19;
    }

    v13(v7, v14, v4);
    v58 = sub_218C32D30(v7, v16);
    v46(v7, v4);
    if (v58)
    {
      type metadata accessor for Localized();
      v59 = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
LABEL_32:
      v57 = sub_219BDB5E4();

      return v57;
    }

    return 0;
  }

  sub_2187268C8(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
  v31 = *(v5 + 72);
  v32 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09EC0;
  v34 = v33 + v32;
  v35 = *MEMORY[0x277D31B10];
  v36 = *(v5 + 104);
  v36(v34, v35, v4);
  v37 = *MEMORY[0x277D31B18];
  v36(v34 + v31, v37, v4);
  v38 = v70;
  sub_21999382C(v33, v70);
  if ((v39 & 1) == 0)
  {
    v36(v7, v35, v4);
    v49 = sub_218C32D30(v7, v38);
    v50 = *(v5 + 8);
    v50(v7, v4);
    if (v49)
    {
LABEL_19:
      type metadata accessor for Localized();
      v51 = swift_getObjCClassFromMetadata();
      v52 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      sub_2187268C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_219C09BA0;
      v43 = [objc_opt_self() currentDevice];
      v44 = [v43 model];
      goto LABEL_20;
    }

    v36(v7, v37, v4);
    v62 = sub_218C32D30(v7, v38);
    v50(v7, v4);
    if ((v62 & 1) == 0)
    {
      return 0;
    }

LABEL_27:
    type metadata accessor for Localized();
    v61 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    goto LABEL_32;
  }

  type metadata accessor for Localized();
  v40 = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass_];
  if ((v71 & 1) == 0)
  {
    v57 = sub_219BDB5E4();

    return v57;
  }

  sub_219BDB5E4();

  sub_2187268C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C09BA0;
  v43 = [objc_opt_self() currentDevice];
  v44 = [v43 model];
LABEL_20:
  v53 = v44;

  v54 = sub_219BF5414();
  v56 = v55;

  *(v42 + 56) = MEMORY[0x277D837D0];
  *(v42 + 64) = sub_2186FC3BC();
  *(v42 + 32) = v54;
  *(v42 + 40) = v56;
  v57 = sub_219BF5454();

  return v57;
}

void (*sub_219992B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void)))(void)
{
  swift_getObjectType();
  a5();
  sub_219BEAAF4();
  sub_219BE7094();

  result = sub_219BEAAC4();
  if (result)
  {
    v8 = v7;
    v9 = result;
    result();
    return sub_2187FABEC(v9, v8);
  }

  return result;
}

unint64_t sub_219992C3C(void *a1, uint64_t a2)
{
  v103 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2187268C8(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v92 - v5;
  v7 = type metadata accessor for MyMagazinesIssue(0);
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v96 = (&v92 - v11);
  v102 = sub_219BE5434();
  *&v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = &v92 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  sub_2187268C8(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  sub_2187268C8(0, qword_280ED8300, type metadata accessor for MyMagazinesState, v3);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v92 - v24;
  v26 = a1[13];
  v27 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, v26);
  (*(v27 + 8))(v26, v27);
  sub_219BE1A44();

  sub_219BE2184();

  sub_219BE1A24();
  (*(v20 + 8))(v22, v19);
  v28 = type metadata accessor for MyMagazinesState(0);
  if ((*(*(v28 - 8) + 48))(v25, 1, v28) == 1)
  {
    sub_21999500C(v25, qword_280ED8300, type metadata accessor for MyMagazinesState);
    sub_219BE5404();
    v29 = sub_219BE5414();
    v30 = sub_219BF6214();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2186C1000, v29, v30, "Remove issue prompt check can handle missing my magazines store", v31, 2u);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    (*(v100 + 8))(v17, v102);
    return 0;
  }

  sub_218C00858(v25, v6);
  v32 = v98;
  if ((*(v98 + 48))(v6, 1, v99) == 1)
  {
    sub_21999500C(v6, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v33 = *&v25[*(v28 + 20)];
  }

  else
  {
    v34 = v96;
    sub_218C00790(v6, v96);
    sub_2187268C8(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
    v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_219C09BA0;
    sub_218C007F4(v34, v36 + v35);
    v104[0] = v36;

    sub_2191EDC74(v37);
    sub_21874606C(v34, type metadata accessor for MyMagazinesIssue);
    v33 = v104[0];
  }

  sub_21874606C(v25, type metadata accessor for MyMagazinesState);
  v38 = *(v33 + 16);
  if (v38)
  {
    v104[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, v38, 0);
    v39 = v104[0];
    v40 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v41 = *(v32 + 72);
    do
    {
      sub_218C007F4(v40, v9);
      v42 = [*v9 identifier];
      v43 = sub_219BF5414();
      v45 = v44;

      sub_21874606C(v9, type metadata accessor for MyMagazinesIssue);
      v104[0] = v39;
      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_21870B65C((v46 > 1), v47 + 1, 1);
        v39 = v104[0];
      }

      *(v39 + 16) = v47 + 1;
      v48 = v39 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v40 += v41;
      --v38;
    }

    while (v38);
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v49 = sub_218845F78(v39);

  result = sub_219BEAAF4();
  v52 = result;
  v53 = v101;
  if (!(result >> 62))
  {
    v54 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_17;
    }

LABEL_42:

    return 0;
  }

LABEL_41:
  result = sub_219BF7214();
  v54 = result;
  if (!result)
  {
    goto LABEL_42;
  }

LABEL_17:
  v55 = 0;
  v99 = v52 & 0xC000000000000001;
  v94 = v52 + 32;
  v95 = v52 & 0xFFFFFFFFFFFFFF8;
  v103 = v49 + 56;
  v56 = (v100 + 8);
  *&v51 = 136446210;
  v100 = v51;
  v93 = v52;
  v98 = v54;
  while (1)
  {
    if (v99)
    {
      v57 = MEMORY[0x21CECE0F0](v55, v52);
    }

    else
    {
      if (v55 >= *(v95 + 16))
      {
        __break(1u);
        return result;
      }

      v57 = *(v94 + 8 * v55);
    }

    v58 = v57;
    if (__OFADD__(v55++, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    v60 = [v57 identifier];
    v61 = sub_219BF5414();
    v63 = v62;

    if (*(v49 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v64 = sub_219BF7AE4();
      v65 = -1 << *(v49 + 32);
      v66 = v64 & ~v65;
      if ((*(v103 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
      {
        break;
      }
    }

LABEL_34:

    sub_219BE5404();
    v70 = v58;
    v71 = sub_219BE5414();
    v72 = sub_219BF6214();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v104[0] = v96;
      *v73 = v100;
      v74 = v56;
      v75 = [v70 identifier];
      v76 = sub_219BF5414();
      v78 = v77;

      v56 = v74;
      v79 = sub_2186D1058(v76, v78, v104);
      v53 = v101;

      *(v73 + 4) = v79;
      v52 = v93;
      _os_log_impl(&dword_2186C1000, v71, v72, "Remove issue prompt check issue %{public}s in not my magazines", v73, 0xCu);
      v80 = v96;
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x21CECF960](v80, -1, -1);
      MEMORY[0x21CECF960](v73, -1, -1);

      result = (*v74)(v53, v102);
    }

    else
    {

      result = (*v56)(v53, v102);
    }

    if (v55 == v98)
    {
      goto LABEL_42;
    }
  }

  v67 = ~v65;
  while (1)
  {
    v68 = (*(v49 + 48) + 16 * v66);
    v69 = *v68 == v61 && v68[1] == v63;
    if (v69 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v66 = (v66 + 1) & v67;
    if (((*(v103 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v81 = v97;
  sub_219BE5404();
  v82 = v58;
  v83 = sub_219BE5414();
  v84 = sub_219BF6214();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v104[0] = v86;
    *v85 = v100;
    v87 = [v82 identifier];
    v88 = sub_219BF5414();
    v90 = v89;

    v91 = sub_2186D1058(v88, v90, v104);

    *(v85 + 4) = v91;
    _os_log_impl(&dword_2186C1000, v83, v84, "Remove issue prompt check issue %{public}s in my magazines", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x21CECF960](v86, -1, -1);
    MEMORY[0x21CECF960](v85, -1, -1);
  }

  else
  {
  }

  (*v56)(v81, v102);
  return 1;
}

uint64_t sub_219993788()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21999382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEAAD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v24 = *(a1 + 16);
  if (v24)
  {
    v12 = 0;
    v28 = a2 + 56;
    v29 = v5 + 16;
    v13 = (v5 + 8);
    v23[0] = v5;
    v23[1] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26 = a1;
    while (v12 < *(a1 + 16))
    {
      v14 = *(v5 + 80);
      v27 = *(v5 + 72);
      v15 = *(v5 + 16);
      v15(v11, a1 + ((v14 + 32) & ~v14) + v27 * v12, v4, v9);
      if (!*(a2 + 16) || (sub_2199950E4(&unk_27CC1AC10, MEMORY[0x277D31B28]), v16 = sub_219BF52E4(), v17 = -1 << *(a2 + 32), v18 = v16 & ~v17, ((*(v28 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0))
      {
        (*v13)(v11, v4);
        goto LABEL_11;
      }

      v19 = a2;
      v25 = v12 + 1;
      v20 = ~v17;
      while (1)
      {
        (v15)(v7, *(v19 + 48) + v18 * v27, v4);
        sub_2199950E4(&qword_27CC0F7D0, MEMORY[0x277D31B30]);
        v21 = sub_219BF53A4();
        v22 = *v13;
        (*v13)(v7, v4);
        if (v21)
        {
          break;
        }

        v18 = (v18 + 1) & v20;
        if (((*(v28 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          v22(v11, v4);
          goto LABEL_11;
        }
      }

      v22(v11, v4);
      v12 = v25;
      a1 = v26;
      a2 = v19;
      v5 = v23[0];
      if (v25 == v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

void sub_219993B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v83 = a2;
  v82 = a1;
  v87 = sub_219BEAAD4();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BE6234();
  v5 = *(v99 - 1);
  MEMORY[0x28223BE20](v99);
  v97 = v3;
  v98 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  v7 = sub_219BE7174();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 rootViewController];

  if (!v9)
  {
    return;
  }

  v10 = sub_219BF6534();

  v77 = v10;
  v78 = sub_2199919D4(v10);
  v81 = v11;
  v79 = v12;
  v13 = sub_219BEAAF4();
  v14 = v13;
  if (v13 >> 62)
  {
LABEL_66:
    v94 = (v14 & 0xFFFFFFFFFFFFFF8);
    v96 = sub_219BF7214();
  }

  else
  {
    v94 = (v13 & 0xFFFFFFFFFFFFFF8);
    v96 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v76 = 0;
  v80 = 0;
  v95 = (v14 & 0xC000000000000001);
  v93 = (v5 + 88);
  v92 = *MEMORY[0x277D6D558];
  LODWORD(v90) = *MEMORY[0x277D6D568];
  LODWORD(v89) = *MEMORY[0x277D6D560];
  LODWORD(v88) = *MEMORY[0x277D6D570];
  v91 = (v5 + 8);
LABEL_6:
  while (2)
  {
    if (v15 != v96)
    {
      v5 = v15;
      while (1)
      {
        if (v95)
        {
          v16 = MEMORY[0x21CECE0F0](v5, v14);
        }

        else
        {
          if (v5 >= v94[2])
          {
            goto LABEL_64;
          }

          v16 = *(v14 + 8 * v5 + 32);
        }

        v17 = v16;
        v15 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v18 = *(v97 + 32);
        ObjectType = swift_getObjectType();
        v20 = [v17 identifier];
        v21 = sub_219BF5414();
        v23 = v22;

        (*(v18 + 32))(v21, v23, ObjectType, v18);

        v24 = v98;
        sub_219BE2184();

        v25 = (*v93)(v24, v99);
        if (v25 == v92)
        {

          (*v91)(v98, v99);
          v26 = __OFADD__(v80++, 1);
          if (!v26)
          {
            goto LABEL_6;
          }

          __break(1u);
          return;
        }

        if (v25 == v90)
        {
          break;
        }

        if (v25 == v89 || v25 == v88)
        {
          goto LABEL_23;
        }

        (*v91)(v98, v99);
        ++v5;
        if (v15 == v96)
        {
          goto LABEL_30;
        }
      }

      (*v91)(v98, v99);
LABEL_23:
      v27 = [v17 identifier];
      v28 = sub_219BF5414();
      v30 = v29;

      LOBYTE(v27) = sub_21987B00C(v28, v30, ObjectType, v18);

      if (v27)
      {
        v26 = __OFADD__(v80++, 1);
        if (!v26)
        {
          continue;
        }

        goto LABEL_65;
      }

      v26 = __OFADD__(v76++, 1);
      if (!v26)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_30:

  v31 = sub_219BEAAF4();
  if (v31 >> 62)
  {
    v32 = sub_219BF7214();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v80;

  if (v32 <= 1)
  {
    v34 = 0;
  }

  else if (v33 < 1 || v76)
  {
    v35 = v76 > 0;
    v36 = v33 > 0;
    if (v33)
    {
      v35 = 0;
    }

    if (v76 <= 0)
    {
      v36 = 0;
    }

    v34 = v35 || v36;
  }

  else
  {
    v34 = 1;
  }

  v37 = sub_219BEAB04();
  v38 = sub_218C3FAD4(v37);

  v39 = *(v97 + 16);
  if (v33 < 1)
  {
    if ((v34 & 1) == 0)
    {
      v40 = 0;
      if (v32 > 1)
      {
        goto LABEL_45;
      }

LABEL_49:
      v41 = v40 | v39;
      goto LABEL_50;
    }

LABEL_47:
    v41 = v39 | 0xFFFF8000;
    goto LABEL_50;
  }

  if (v34)
  {
    goto LABEL_47;
  }

  v40 = 256;
  if (v32 < 2)
  {
    goto LABEL_49;
  }

LABEL_45:
  v41 = v40 | v39 | 0x4000;
LABEL_50:
  v42 = v78;
  sub_219991AB8(v38, v41);
  v43 = sub_219BF53D4();

  v94 = [objc_opt_self() alertControllerWithTitle:v43 message:0 preferredStyle:v42];

  v44 = sub_219BEAB04();
  v45 = *(v44 + 16);
  if (v45)
  {
    LODWORD(v93) = v41;
    v76 = v38;
    v99 = *(v85 + 16);
    v46 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v75 = v44;
    v47 = v44 + v46;
    v96 = (v85 + 88);
    v91 = (v85 + 8);
    v85 += 16;
    v98 = *(v85 + 56);
    LODWORD(v97) = *MEMORY[0x277D31B10];
    v92 = *MEMORY[0x277D31B18];
    v89 = 0x8000000219D41650;
    v90 = "moveIssuesPromptCommandHandler";
    v95 = &v102;
    v88 = "rom My Magazines";
    v80 = 0x8000000219D416C0;
    v78 = 0x8000000219D41700;
    do
    {
      v48 = v86;
      v49 = v87;
      v99(v86, v47, v87);
      v50 = (*v96)(v48, v49);
      if (v50 == v97)
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v52 = [objc_opt_self() bundleForClass_];
        sub_219BDB5E4();

        v62 = objc_opt_self();
        v63 = sub_219BF53D4();

        v64 = swift_allocObject();
        v65 = v83;
        v64[2] = v82;
        v64[3] = v65;
        v64[4] = v84;
        v104 = sub_2199950B0;
        v105 = v64;
        aBlock = MEMORY[0x277D85DD0];
        v101 = 1107296256;
        v102 = sub_21990CDA0;
        v103 = &block_descriptor_10_7;
        v66 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        v104 = sub_21876836C;
        v105 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v101 = 1107296256;
        v102 = sub_219991994;
        v103 = &block_descriptor_13_6;
        v67 = _Block_copy(&aBlock);
        v68 = [v62 _actionWithTitle_image_style_handler_shouldDismissHandler_];
        _Block_release(v67);
        _Block_release(v66);

        if (v68)
        {
          [v94 addAction_];
        }
      }

      else if (v50 == v92)
      {
        v53 = objc_opt_self();
        type metadata accessor for Localized();
        v54 = swift_getObjCClassFromMetadata();
        v55 = [objc_opt_self() bundleForClass_];
        sub_219BDB5E4();

        v56 = sub_219BF53D4();

        v57 = swift_allocObject();
        v58 = v83;
        v57[2] = v82;
        v57[3] = v58;
        v57[4] = v84;
        v104 = sub_21999507C;
        v105 = v57;
        aBlock = MEMORY[0x277D85DD0];
        v101 = 1107296256;
        v102 = sub_21990CDA0;
        v103 = &block_descriptor_193;
        v59 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        v104 = sub_21876836C;
        v105 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v101 = 1107296256;
        v102 = sub_219991994;
        v103 = &block_descriptor_4_1;
        v60 = _Block_copy(&aBlock);
        v61 = [v53 _actionWithTitle_image_style_handler_shouldDismissHandler_];
        _Block_release(v60);
        _Block_release(v59);

        if (v61)
        {
          [v94 addAction_];
        }
      }

      else
      {
        (*v91)(v86, v87);
      }

      v47 += v98;
      --v45;
    }

    while (v45);
  }

  type metadata accessor for Localized();
  v69 = swift_getObjCClassFromMetadata();
  v70 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v71 = sub_219BF53D4();

  v72 = [objc_opt_self() actionWithTitle:v71 style:1 handler:0];

  v73 = v94;
  [v94 addAction_];

  v74 = v77;
  [v77 presentViewController:v73 animated:1 completion:0];
}

void sub_2199948DC(uint64_t ObjectType)
{
  v43 = sub_219BE5434();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BE6234();
  v5 = *(v56 - 8);
  *&v6 = MEMORY[0x28223BE20](v56).n128_u64[0];
  v54 = v1;
  v55 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 120) cachedSubscription];
  if (objc_getAssociatedObject(v8, v8 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  if (!*(&v59 + 1))
  {
    sub_21874606C(&v60, sub_21880702C);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v9 = v57;
  v10 = [v57 integerValue];
  if (v10 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v8, ~v10))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  if (!*(&v59 + 1))
  {
    sub_21874606C(&v60, sub_21880702C);
    goto LABEL_17;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v13 = -165;
    goto LABEL_18;
  }

  v11 = v57;
  v12 = [v11 integerValue];

  v13 = v12 - 165;
LABEL_18:
  v38 = v13;
  v14 = sub_219BEAAF4();
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_48;
  }

  v53 = v14 & 0xFFFFFFFFFFFFFF8;
  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v39 = v10;
  v40 = ObjectType;
  v41 = v4;
  if (v16)
  {
    v44 = 0;
    v51 = (v5 + 88);
    v52 = v15 & 0xC000000000000001;
    v50 = *MEMORY[0x277D6D558];
    v48 = *MEMORY[0x277D6D568];
    v46 = *MEMORY[0x277D6D560];
    v45 = *MEMORY[0x277D6D570];
    v47 = (v5 + 8);
    v49 = v15;
    v5 = 0;
    if ((v15 & 0xC000000000000001) != 0)
    {
LABEL_41:
      v20 = MEMORY[0x21CECE0F0](v5, v15);
      goto LABEL_29;
    }

    while (1)
    {
      while (1)
      {
        if (v5 >= *(v53 + 16))
        {
          goto LABEL_47;
        }

        v20 = *(v15 + 8 * v5 + 32);
LABEL_29:
        v21 = v20;
        v22 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v53 = v15 & 0xFFFFFFFFFFFFFF8;
          v16 = sub_219BF7214();
          goto LABEL_20;
        }

        v10 = v16;
        v23 = v54[4];
        ObjectType = swift_getObjectType();
        v24 = [v21 identifier];
        v25 = sub_219BF5414();
        v27 = v26;

        (*(v23 + 32))(v25, v27, ObjectType, v23);

        v4 = v55;
        sub_219BE2184();

        v28 = (*v51)(v4, v56);
        if (v28 != v50)
        {
          break;
        }

        (*v47)(v55, v56);
        if (__OFADD__(v44, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        ++v44;
        v16 = v10;
LABEL_39:
        v15 = v49;
        if (v22 == v16)
        {
          goto LABEL_43;
        }

        ++v5;
        if (v52)
        {
          goto LABEL_41;
        }
      }

      if (v28 == v48)
      {
        (*v47)(v55, v56);
      }

      else if (v28 != v46 && v28 != v45)
      {

        (*v47)(v55, v56);
        goto LABEL_25;
      }

      v17 = [v21 identifier];
      v18 = sub_219BF5414();
      v4 = v19;

      LOBYTE(v17) = sub_21987B00C(v18, v4, ObjectType, v23);

      if (v17)
      {
        if (__OFADD__(v44, 1))
        {
          goto LABEL_50;
        }

        v16 = v10;
        ++v44;
        goto LABEL_39;
      }

LABEL_25:
      ++v5;
      v16 = v10;
      v15 = v49;
      if (v22 == v10)
      {
        goto LABEL_43;
      }

      if (v52)
      {
        goto LABEL_41;
      }
    }
  }

  v44 = 0;
LABEL_43:
  v29 = (v38 ^ v39) & 1;

  v30 = sub_219992C3C(v54, v40);
  v31 = v41;
  sub_219BE5404();
  v32 = sub_219BE5414();
  v33 = sub_219BF6214();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v44;
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 67109632;
    *(v36 + 4) = v29 ^ 1;
    *(v36 + 8) = 1024;
    *(v36 + 10) = v35 > 0;
    *(v36 + 14) = 1024;
    *(v36 + 16) = v30 & 1;
    _os_log_impl(&dword_2186C1000, v32, v33, "Remove issue prompt check can handle, isSubscribed=%{BOOL}d, isDownloaded=%{BOOL}d, isInMyMagazines=%{BOOL}d", v36, 0x14u);
    MEMORY[0x21CECF960](v36, -1, -1);
  }

  (*(v42 + 8))(v31, v43);
}

uint64_t sub_21999500C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187268C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2199950E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_219BEAAD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219995140(uint64_t a1)
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

void sub_219995208(uint64_t a1)
{
  sub_219BF5054();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2199981A8();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE3204();
  sub_2187D9028();
  v1 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v2 = sub_219BE1C44();
  sub_219BE2F94();

  v3 = sub_219BE2E54();
  sub_219BE2FD4();

  v4 = sub_219BE1C44();
  sub_219BE3034();
}

uint64_t sub_2199953F0(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 40))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_218F9F7EC(0);
  sub_219997E94(&unk_27CC21A60, sub_218F9F7EC, MEMORY[0x277D6D890]);
  v2 = sub_219BE6E84();

  return v2;
}

double sub_2199954F8(uint64_t a1)
{
  if (qword_27CC08540 != -1)
  {
    swift_once();
  }

  v1 = qword_27CCD8A08;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Error while prewarming search more articles feed with error=%{public}@", 70, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

double sub_219995624(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = off_282A58B98;
      type metadata accessor for SearchMoreViewController();
      v2();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2199956D8(void *a1)
{
  v51 = *v1;
  v50 = type metadata accessor for SearchMoreExpandRequest(0);
  MEMORY[0x28223BE20](v50);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v55);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreFeedGapLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219997EDC(0, &qword_27CC19288, sub_218C3F834);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  sub_218C3F834(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199980A4(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v52 = v1;
  sub_219BE6EC4();
  v59 = *&v58[0];
  sub_2189877E8(0);
  sub_219997E94(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v19 = v15;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1D74();
  sub_219BEB1C4();

  v20 = v12;
  v21 = v11;
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_2199988B8(v9, &qword_27CC19288, sub_218C3F834);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    MEMORY[0x21CEC0B20](0, v22, v23);
    return (*(v16 + 8))(v18, v19);
  }

  else
  {
    v48 = v18;
    v49 = v16;
    v25 = v12;
    v26 = v57;
    v27 = v21;
    (*(v12 + 32))(v57, v9, v21);
    v28 = v56;
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_219998044(v28, type metadata accessor for SearchMoreModel);
      v29 = a1[3];
      v30 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v29);
      MEMORY[0x21CEC0B20](0, v29, v30);
      (*(v20 + 8))(v26, v27);
      return (*(v49 + 8))(v48, v19);
    }

    else
    {
      v31 = v28[1];
      v47 = *v28;
      sub_218F41028(0);
      v33 = *(v32 + 48);
      v34 = v28 + *(v32 + 64);
      v35 = *v34;
      v55 = v19;
      v36 = v34[8];
      v37 = v54;
      sub_219997F30(v28 + v33, v54, type metadata accessor for SearchMoreFeedGapLocation);
      v38 = v50;
      v39 = v53;
      v40 = sub_2192FE0E4(v37, &v53[*(v50 + 20)]);
      *v39 = v47;
      v39[1] = v31;
      v41 = v39 + *(v38 + 24);
      *v41 = v35;
      v41[8] = v36;
      MEMORY[0x28223BE20](v40);
      *(&v46 - 2) = v52;
      *(&v46 - 1) = v39;
      sub_219BE3204();
      sub_2187D9028();
      v42 = sub_219BF66A4();
      sub_218718690(a1, v58);
      v43 = swift_allocObject();
      sub_2186CB1F0(v58, v43 + 16);
      sub_219BE2F94();

      sub_218718690(a1, v58);
      v44 = swift_allocObject();
      sub_2186CB1F0(v58, v44 + 16);
      v45 = sub_219BE2E54();
      sub_219BE2FD4();

      sub_219998044(v54, type metadata accessor for SearchMoreFeedGapLocation);
      (*(v25 + 8))(v26, v27);
      (*(v49 + 8))(v48, v55);
      return sub_219998044(v39, type metadata accessor for SearchMoreExpandRequest);
    }
  }
}

double sub_219995DE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(*a2 + 88) + 48))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_218718690(a3, v6);
  v4 = swift_allocObject();
  sub_2186CB1F0(v6, v4 + 16);
  sub_218F9F7EC(0);
  sub_219997E94(&unk_27CC21A60, sub_218F9F7EC, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_219995F40(uint64_t a1)
{
  v2 = *v1;
  sub_219BE6EC4();
  v3 = sub_218982910();

  if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2199981A8();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v2 + 80);
  *(v5 + 24) = *(v2 + 88);
  *(v5 + 32) = v4;
  *(v5 + 40) = HIBYTE(v3) & 1;

  sub_219BE6F24();

  return result;
}

double sub_21999608C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = off_282A58B98;
        type metadata accessor for SearchMoreViewController();
        v5();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_21999616C(uint64_t a1, char a2, uint64_t a3, __n128 a4)
{
  v21 = a3;
  sub_219997EDC(0, &qword_27CC14C50, type metadata accessor for SearchMoreRouteModel);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v20 - v7);
  v9 = type metadata accessor for SearchMoreRouteModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDE294();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v18 = MEMORY[0x277D2FF08];
  }

  (*(v14 + 104))(v17, *v18, v13, v15);
  sub_219996474(a1, v17, v21, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v14 + 8))(v17, v13);
    sub_2199988B8(v8, &qword_27CC14C50, type metadata accessor for SearchMoreRouteModel);
  }

  else
  {
    sub_219997F30(v8, v12, type metadata accessor for SearchMoreRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 64), *(Strong + 88));
      sub_218D0C1C4(v12);
      sub_219998044(v12, type metadata accessor for SearchMoreRouteModel);
      (*(v14 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_219998044(v12, type metadata accessor for SearchMoreRouteModel);
      (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_219996474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v149 = a3;
  v129 = a2;
  v151 = v5;
  v152 = a4;
  v150 = *v5;
  sub_218F40F48(0);
  v130 = v7;
  v128 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v127 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDEA14();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219997EDC(0, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v110 - v11;
  sub_219997EDC(0, &unk_280E90F00, MEMORY[0x277D32EE8]);
  MEMORY[0x28223BE20](v12 - 8);
  v132 = &v110 - v13;
  v126 = sub_219BF0B74();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v122 = &v110 - v16;
  v136 = sub_219BDEB14();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219997EDC(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v18 - 8);
  v121 = &v110 - v19;
  v119 = sub_219BDDED4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v120 = (&v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = sub_219BDDBF4();
  v131 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v123 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v146 = &v110 - v23;
  sub_2186EB308(0);
  v147 = v24;
  v145 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v144 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BDE744();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BF0634();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v143 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219997EDC(0, &unk_280EE8AA0, MEMORY[0x277D30260]);
  MEMORY[0x28223BE20](v28 - 8);
  v112 = &v110 - v29;
  sub_219997EDC(0, &unk_280EE8C40, MEMORY[0x277D30018]);
  MEMORY[0x28223BE20](v30 - 8);
  v140 = &v110 - v31;
  sub_218C3F834(0);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BDE7A4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v38 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v40 = v39;
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v43 = &v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v44);
  v46 = &v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v111 = v41;
      (*(v41 + 32))(v43, v46, v40);
      (*(v34 + 16))(v36, a1, v33);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      v52 = sub_219BDE4D4();
      (*(*(v52 - 8) + 56))(v140, 1, 1, v52);
      v53 = sub_219BDEA34();
      (*(*(v53 - 8) + 56))(v112, 1, 1, v53);
      (*(v141 + 104))(v143, *MEMORY[0x277D32E28], v142);
      sub_219997E94(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
      sub_219BDE794();
      v54 = v151;
      swift_getWitnessTable();
      v55 = v115;
      sub_219BDEB64();
      *(v54 + *(*v54 + 136)) = sub_219BDE734();

      v56 = v152;
      sub_219BDE724();
      (*(v116 + 8))(v55, v117);
      (*(v113 + 8))(v38, v114);
      (*(v111 + 8))(v43, v40);
      v57 = type metadata accessor for SearchMoreRouteModel(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    }

    (*(v145 + 32))();
    v76 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
    v77 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v78 = OBJC_IVAR___TSFeedViewContext_presentationReason;
    swift_beginAccess();
    v79 = *&v76[v78];
    *&v76[v78] = v77;

    v80 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v81 = [v80 initWithInteger_];
    v82 = OBJC_IVAR___TSFeedViewContext_displayRank;
    swift_beginAccess();
    v83 = *&v76[v82];
    *&v76[v82] = v81;

    v84 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v85 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
    swift_beginAccess();
    v86 = *&v76[v85];
    *&v76[v85] = v84;

    v87 = sub_219BE5F84();
    v88 = v120;
    *v120 = v87;
    v88[1] = v89;
    (*(v118 + 104))(v88, *MEMORY[0x277D2FDC8], v119);
    v90 = sub_219BDD944();
    (*(*(v90 - 8) + 56))(v121, 1, 1, v90);
    v91 = v146;
    sub_219BDDBD4();
    v92 = v122;
    sub_219BF07D4();
    v149 = sub_219BF0AF4();
    v130 = v93;
    v94 = *(v125 + 8);
    v95 = v126;
    v94(v92, v126);
    v96 = v124;
    sub_219BF07D4();
    v129 = sub_219BF0B44();
    v94(v96, v95);
    v97 = v131;
    (*(v131 + 16))(v123, v91, v148);
    v98 = v141;
    v99 = v142;
    (*(v141 + 56))(v132, 1, 1, v142);
    v100 = *MEMORY[0x277D2FD28];
    v101 = sub_219BDDD94();
    v102 = *(v101 - 8);
    v103 = v133;
    (*(v102 + 104))(v133, v100, v101);
    (*(v102 + 56))(v103, 0, 1, v101);
    v104 = v140;
    sub_219BDE4B4();
    v105 = sub_219BDE4D4();
    (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
    (*(v98 + 104))(v143, *MEMORY[0x277D32E28], v99);
    v106 = v134;
    sub_219BDEB04();
    v107 = v151;
    swift_getWitnessTable();
    v108 = v137;
    sub_219BDE2F4();
    *(v107 + *(*v107 + 144)) = sub_219BDEA04();

    v109 = sub_219BDE9F4();

    (*(v138 + 8))(v108, v139);
    (*(v135 + 8))(v106, v136);
    (*(v97 + 8))(v146, v148);
    (*(v145 + 8))(v144, v147);
    v74 = v152;
    *v152 = v109;
    v75 = type metadata accessor for SearchMoreRouteModel(0);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028(0);
      v49 = *(v48 + 48);
      v50 = type metadata accessor for SearchMoreRouteModel(0);
      (*(*(v50 - 8) + 56))(v152, 1, 1, v50);
      return sub_219998044(&v46[v49], type metadata accessor for SearchMoreFeedGapLocation);
    }

    v58 = v128;
    v59 = v127;
    v60 = v130;
    (*(v128 + 32))(v127, v46, v130);
    v61 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
    v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v63 = OBJC_IVAR___TSFeedViewContext_presentationReason;
    swift_beginAccess();
    v64 = *&v61[v63];
    *&v61[v63] = v62;

    v65 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v66 = [v65 initWithInteger_];
    v67 = OBJC_IVAR___TSFeedViewContext_displayRank;
    swift_beginAccess();
    v68 = *&v61[v67];
    *&v61[v67] = v66;

    v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v70 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
    swift_beginAccess();
    v71 = *&v61[v70];
    *&v61[v70] = v69;

    sub_218D0E4AC(0);
    v73 = *(v72 + 48);
    sub_219BF07D4();
    swift_unknownObjectRetain();

    v74 = v152;
    sub_219BDD644();
    (*(v58 + 8))(v59, v60);
    *(v74 + v73) = v61;
    v75 = type metadata accessor for SearchMoreRouteModel(0);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
}

uint64_t *sub_2199977E4()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_219997914()
{
  sub_2199977E4();

  return swift_deallocClassInstance();
}

uint64_t sub_219997998(uint64_t a1, uint64_t a2, __n128 a3)
{
  v34 = a1;
  v35 = a2;
  sub_219997EDC(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v28 - v5;
  v6 = sub_219BDC104();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219997EDC(0, &qword_27CC19288, sub_218C3F834);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  sub_218C3F834(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199980A4(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v29 = v3;
  sub_219BE6EC4();
  v36 = v37;
  sub_2189877E8(0);
  sub_219997E94(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_219BEB1C4();
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v21 = &qword_27CC19288;
    v22 = sub_218C3F834;
    v23 = v10;
    return sub_2199988B8(v23, v21, v22);
  }

  (*(v13 + 32))(v15, v10, v12);
  v24 = v32;
  sub_219BEB2F4();
  v26 = v30;
  v25 = v31;
  if ((*(v30 + 48))(v24, 1, v31) == 1)
  {
    (*(v13 + 8))(v15, v12);
    (*(v18 + 8))(v20, v17);
    v21 = &unk_280EE9BB0;
    v22 = MEMORY[0x277CC9AF8];
    v23 = v24;
    return sub_2199988B8(v23, v21, v22);
  }

  (*(v26 + 32))(v33, v24, v25);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2199985D8(v33);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  (*(v26 + 8))(v33, v25);
  (*(v13 + 8))(v15, v12);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_219997E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219997EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219997F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219998044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2199980A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_219997E94(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
    v8[3] = sub_219997E94(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2199981A8()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_219997E94(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2199984FC()
{
  v0 = off_282A69F70;
  type metadata accessor for SearchMoreDataManager();
  return v0();
}

void sub_2199985D8(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

double sub_2199986F8(uint64_t a1, __n128 a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v4 = sub_219BDD344();
    if (v5)
    {
      sub_219997998(v4, v5, a2);
    }
  }

  return a2.n128_f64[0];
}

double sub_219998760(uint64_t a1)
{
  (*(*(*v1 + 88) + 64))(a1, *(*v1 + 80));
  sub_218F9F7EC(0);
  sub_219997E94(&unk_27CC21A60, sub_218F9F7EC, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_219998854(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = sub_219BDEDC4();
    sub_219997998(v3, v4, v5);
  }

  return result;
}

uint64_t sub_2199988B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219997EDC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_219998914()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager____lazy_storage___unavailableItemAlpha);
  if ((*(v0 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager____lazy_storage___unavailableItemAlpha + 8) & 1) == 0)
  {
    return *v1;
  }

  swift_getObjectType();
  sub_219BDC5A4();
  sub_21999C0D4(&qword_280EBFEE8, v2, type metadata accessor for TagFeedViewerDataManager, &unk_219CBAEAC);
  sub_219BDC7D4();

  result = v4;
  *v1 = v4;
  v1[8] = 0;
  return result;
}

void sub_2199989CC(uint64_t a1, uint64_t a2)
{
  sub_218B0847C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_219406E78(a1, v5);
      v10 = sub_219BF1584();
      v11 = (*(*(v10 - 8) + 48))(v5, 1, v10);
      v12 = v7;
      sub_218AB10D0(v5);
      if (v11 == 1)
      {
        v13 = *(v9 + 128);
        if (v13 >> 8 <= 0xFE)
        {
          v15 = *(v9 + 112);
          v14 = *(v9 + 120);
          v17 = *(v9 + 96);
          v16 = *(v9 + 104);
          v18 = *(v9 + 88);
          *&v21 = v18;
          *(&v21 + 1) = v17;
          v22 = v16;
          v23 = v15;
          v24 = v14;
          v25 = v13 & 0x1FF;
          sub_21999B1E4(v18, v17, v16, v15, v14, v13, BYTE1(v13) & 1);
          v19 = sub_2199991DC(&v21);
          sub_218B06C78(&v21, v19);

          sub_218B0A0C8(v18, v17, v16, v15, v14, v13);
        }
      }

      sub_218B07B30();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_219998BB0(void *a1)
{
  swift_getObjectType();
  if (![a1 isSubscribable])
  {
    return 0;
  }

  v3 = sub_219998D7C(a1);
  v5 = v4;
  if (![*&v1[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_subscriptionController] hasSubscriptionToTag_])
  {
    v7 = v1;
    v8 = sub_219BF6234();
    v10 = v9;
    sub_21999C410();
    v14 = swift_allocObject();
    v14[2] = v3;
    v14[3] = v5;
    v14[4] = v8;
    v14[5] = v10;
    sub_219BEA744();
    swift_allocObject();
    v6 = sub_219BEA6C4();
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = a1;
    v12 = v7;
    swift_unknownObjectRetain();
    sub_219BEA6F4();

    sub_219BEA714();

    return v6;
  }

  if (![a1 isPuzzleType])
  {

    return 0;
  }

  sub_21999C46C();
  sub_219BEA744();
  swift_allocObject();
  return sub_219BEA6C4();
}

uint64_t sub_219998D7C(void *a1)
{
  v2 = [a1 asPuzzleType];
  if (v2)
  {
    v3 = v2;
    sub_219998EE4();
    sub_21999B2E0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09BA0;
    v5 = [v3 nameForSharing];
    v6 = sub_219BF5414();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_219BF53E4();
    swift_unknownObjectRelease();

    return v9;
  }

  else
  {
    v11 = [a1 name];
    v12 = sub_219BF5414();

    return v12;
  }
}

uint64_t sub_219998EE4()
{
  swift_getObjectType();
  if ((sub_219BF68E4() & 0x100) == 0)
  {
    return 16421;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_219998FBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE89F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21999B2E0(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11[-v7];
  sub_219BEAF14();
  swift_unknownObjectRetain();
  sub_219BF3324();
  v9 = sub_219BF3344();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277D6E0F8], v2);
  memset(&v11[16], 0, 32);
  v11[48] = 1;
  sub_219BE89D4();

  (*(v3 + 8))(v5, v2);
  return sub_218AD7DC0(v8);
}

uint64_t sub_2199991DC(__int128 *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a1 + 1);
  v8 = a1[1];
  v61 = *a1;
  v70 = *a1;
  v71 = v8;
  v72 = v4;
  v73 = v6 | v5;

  sub_218B08418(v3, v69);
  sub_219BE2E94();

  if (*(v3 + 41))
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  v10 = [*v9 sectionIDs];
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v60 = MEMORY[0x277D84F90];
  v12 = v10;
  v13 = sub_219BF5924();

  sub_218E96058(v13);
  v15 = v14;

  v63 = v2;
  if (v15 >> 62)
  {
    goto LABEL_60;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_61:

    return MEMORY[0x277D84F90];
  }

LABEL_10:
  v17 = 0;
  v67 = v16;
  v68 = v15 & 0xC000000000000001;
  v65 = v15;
  v66 = v15 & 0xFFFFFFFFFFFFFF8;
  v64 = v3;
  while (1)
  {
    if (v68)
    {
      v18 = MEMORY[0x21CECE0F0](v17, v15);
      v19 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        goto LABEL_16;
      }

LABEL_27:
      __break(1u);
      return v11;
    }

    if (v17 >= *(v66 + 16))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v16 = sub_219BF7214();
      if (!v16)
      {
        goto LABEL_61;
      }

      goto LABEL_10;
    }

    v18 = *(v15 + 8 * v17 + 32);

    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_27;
    }

LABEL_16:
    v20 = [*(v18 + 16) identifier];
    v21 = sub_219BF5414();
    v23 = v22;

    v24 = (v3 + 16);
    if ((*(v3 + 41) & 1) == 0)
    {
      v24 = v3;
    }

    v25 = [*v24 defaultSectionID];
    if (!v25)
    {

      goto LABEL_12;
    }

    v26 = v25;
    v27 = sub_219BF5414();
    v29 = v28;

    if (v21 == v27 && v23 == v29)
    {
      break;
    }

    v31 = sub_219BF78F4();

    v3 = v64;
    v15 = v65;
    if (v31)
    {
      goto LABEL_30;
    }

LABEL_12:
    ++v17;
    if (v19 == v67)
    {
      goto LABEL_61;
    }
  }

  v3 = v64;
  v15 = v65;
LABEL_30:
  v33 = 0;
  *&v70 = MEMORY[0x277D84F90];
  v62 = OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_cloudContext;
  v34 = v63;
  v35 = v67;
  while (2)
  {
    v36 = v33;
    while (2)
    {
      if (v68)
      {
        v37 = MEMORY[0x21CECE0F0](v36, v15);
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v36 >= *(v66 + 16))
        {
          goto LABEL_59;
        }

        v37 = *(v15 + 8 * v36 + 32);

        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      v38 = *(v37 + 16);
      if (![objc_opt_self() isTagAllowed_])
      {

LABEL_33:
        ++v36;
        if (v33 == v35)
        {
          goto LABEL_48;
        }

        continue;
      }

      break;
    }

    if (*(v3 + 41))
    {
      v39 = *v3;
      v40 = *(v3 + 8);
      v41 = sub_2186C6148(0, &unk_280E8DDB0, 0x277D31300);
      v42 = *(v34 + v62);
      swift_unknownObjectRetain();
      v43 = v42;
      v44 = [v40 feedConfiguration];
      swift_getObjectType();
      sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
      v45 = sub_21999B788(v43, v38, v44, 0, 0, v41);
      swift_unknownObjectRelease();
      v46 = [v39 backingTag];
      v47 = [v39 feedConfiguration];
      swift_getObjectType();
      v48 = sub_21999B788(v43, v46, v47, 0, 0, v41);

      v34 = v63;
      v3 = v64;
      swift_unknownObjectRelease();
      v49 = [v48 associateAlternativeFeedDescriptor_];

      v15 = v65;
      v35 = v67;
      if (v49)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    v50 = sub_2186C6148(0, &unk_280E8DDB0, 0x277D31300);
    v51 = *(v34 + v62);
    swift_getObjectType();
    sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
    v52 = v51;
    swift_unknownObjectRetain();
    sub_21999B788(v52, v38, 0, 0, 0, v50);

    swift_unknownObjectRelease();
    v15 = v65;
    v35 = v67;
LABEL_45:
    MEMORY[0x21CECC690]();
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v60 = v70;
    if (v33 != v35)
    {
      continue;
    }

    break;
  }

LABEL_48:

  v53 = v60;
  *&v70 = v60;
  v54 = (v3 + 16);
  if ((*(v3 + 41) & 1) == 0)
  {
    v54 = v3;
  }

  v55 = [*(v34 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_membershipController) feedDescriptorForDraftFeedForChannel_];
  if (v55)
  {
    v56 = v55;
    MEMORY[0x21CECC690]();
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    v53 = v70;
  }

  if ((*(v3 + 41) & 1) == 0)
  {
    v57 = sub_21999AA9C(v53, v61);

    v53 = v57;
  }

  sub_21999BB10(v53, v3);
  v59 = v58;

  return v59;
}

uint64_t sub_2199998BC(uint64_t a1)
{
  swift_getObjectType();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v20 = v2;
  v21 = v4 | v3;

  sub_218B08418(a1, v18);
  sub_219BE2E94();

  if (*(a1 + 41))
  {
    v6 = (a1 + 16);
  }

  else
  {
    v6 = a1;
  }

  v7 = [*v6 sectionIDs];
  if (v7)
  {
    v8 = v7;
    sub_219BF5924();

    MEMORY[0x28223BE20](v9);
    sub_21999B2E0(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_219BE3204();

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v10 = sub_219BF66A4();
    v11 = swift_allocObject();
    v12 = *(a1 + 16);
    v11[1] = *a1;
    v11[2] = v12;
    *(v11 + 42) = *(a1 + 26);
    sub_218B08418(a1, v19);
    sub_218A35748(0);
    sub_219BE2F94();

    v13 = swift_allocObject();
    v14 = *(a1 + 16);
    v13[1] = *a1;
    v13[2] = v14;
    *(v13 + 42) = *(a1 + 26);
    sub_218B08418(a1, v19);
    v15 = sub_219BE2E54();
    v16 = sub_219BE2F94();

    return v16;
  }

  else
  {
    *&v19[0] = MEMORY[0x277D84F90];
    sub_21999B2E0(0, &qword_27CC21B48, sub_218A35748, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

void sub_219999BC8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v40 = MEMORY[0x277D84F90];
  v6 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    v31 = MEMORY[0x277D84F90];
    v32 = a3;
    v33 = OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_cloudContext;
    v34 = i;
    v35 = v6;
    v36 = v5;
    v37 = v5 & 0xC000000000000001;
    while (v9)
    {
      v10 = MEMORY[0x21CECE0F0](v8, v5);
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v12 = *(v10 + 16);
      v39 = v11;
      if (![objc_opt_self() isTagAllowed_])
      {

        goto LABEL_5;
      }

      if (*(a3 + 41))
      {
        v14 = *a3;
        v13 = *(a3 + 8);
        v15 = sub_2186C6148(0, &unk_280E8DDB0, 0x277D31300);
        v16 = *(a2 + v33);
        v17 = [v13 feedConfiguration];
        swift_getObjectType();
        sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
        swift_unknownObjectRetain();
        v18 = sub_21999B788(v16, v12, v17, 0, 0, v15);
        swift_unknownObjectRelease();
        v19 = [v14 backingTag];
        v20 = [v14 feedConfiguration];
        swift_getObjectType();
        v21 = sub_21999B788(v16, v19, v20, 0, 0, v15);

        a3 = v32;
        swift_unknownObjectRelease();
        v22 = [v21 associateAlternativeFeedDescriptor_];

        v6 = v35;
        v5 = v36;
        i = v34;
        v9 = v37;
        if (v22)
        {
          goto LABEL_14;
        }

LABEL_5:
        ++v8;
        if (v39 == i)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v23 = sub_2186C6148(0, &unk_280E8DDB0, 0x277D31300);
        v24 = *(a2 + v33);
        swift_getObjectType();
        sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
        v25 = v24;
        swift_unknownObjectRetain();
        sub_21999B788(v25, v12, 0, 0, 0, v23);

        swift_unknownObjectRelease();
        v6 = v35;
        v5 = v36;
        i = v34;
        v9 = v37;
LABEL_14:
        MEMORY[0x21CECC690]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
          v9 = v37;
        }

        sub_219BF5A54();
        v31 = v40;
        v8 = v39;
        if (v39 == i)
        {
          goto LABEL_24;
        }
      }
    }

    if (v8 >= *(v6 + 16))
    {
      goto LABEL_21;
    }

    v10 = *(v5 + 8 * v8 + 32);

    v11 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_24:
  v26 = v31;
  v27 = (a3 + 16);
  if ((*(a3 + 41) & 1) == 0)
  {
    v27 = a3;
  }

  v28 = [*(a2 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_membershipController) feedDescriptorForDraftFeedForChannel_];
  if (v28)
  {
    v29 = v28;
    MEMORY[0x21CECC690]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    v26 = v31;
  }

  *a4 = v26;
}

void sub_21999A028(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (*(a2 + 41))
  {
    sub_21999BB10(v5, a2);
    v7 = v6;
  }

  else
  {
    v8 = sub_21999AA9C(v5, *a2);
    sub_21999BB10(v8, a2);
    v7 = v9;
  }

  *a3 = v7;
}

uint64_t sub_21999A0A8()
{
  v1 = MEMORY[0x277D84F90];
  if (!*(v0 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_topLevelSportsTags))
  {
    return v1;
  }

  sub_218E96058(v2);
  v4 = v3;

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return v1;
  }

  v5 = sub_219BF7214();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = sub_219BF73F4();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v14 = sub_2186C6148(0, &unk_280E8DDB0, 0x277D31300);
    v7 = 0;
    v8 = *(v0 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_cloudContext);
    v9 = v4 & 0xC000000000000001;
    v10 = v4;
    do
    {
      if (v9)
      {
        v11 = MEMORY[0x21CECE0F0](v7, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v7 + 32);
      }

      ++v7;
      v12 = *(v11 + 16);
      swift_getObjectType();
      sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
      v13 = v8;
      swift_unknownObjectRetain();
      sub_21999B788(v13, v12, 0, 0, 0, v14);

      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v4 = v10;
    }

    while (v5 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21999A2AC()
{
  sub_219BF29B4();
  v0 = sub_219BF3DD4();

  v1 = off_282A4D758;
  type metadata accessor for TagService();
  v2 = v1(v0);

  return v2;
}

unint64_t *sub_21999A34C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *result;
  if (*result >> 62)
  {
    result = sub_219BF7214();
    v6 = result;
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_11:
    *a3 = v7;
    return result;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = sub_2186C6148(0, &unk_280E8DDB0, 0x277D31300);
    v9 = 0;
    v15 = *(a2 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_cloudContext);
    v16 = v8;
    v10 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v10)
      {
        v12 = MEMORY[0x21CECE0F0](v9, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v9 + 32);
      }

      v9 = (v9 + 1);
      v13 = *(v12 + 16);
      swift_getObjectType();
      sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
      v14 = v15;
      swift_unknownObjectRetain();
      sub_21999B788(v14, v13, 0, 0, 0, v16);

      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      v5 = v11;
    }

    while (v6 != v9);
    v7 = v17;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21999A528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_cloudContext);
  v23 = *(v2 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_tagService);
  sub_218718690(v2 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_issueModelFactory, v25);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v24[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = *v9;
  v12 = type metadata accessor for IssueModelFactory();
  v24[3] = v12;
  v24[4] = &off_282A725A8;
  v24[0] = v11;
  v13 = type metadata accessor for ChannelMagazineGridModelLoader();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v24, v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v24[-2] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  *(v14 + 88) = v12;
  *(v14 + 96) = &off_282A725A8;
  *(v14 + 64) = v20;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 32) = a1;
  *(v14 + 40) = v5;
  *(v14 + 48) = v23;
  *(v14 + 104) = xmmword_219C14A10;
  v21 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  a2[3] = v13;
  result = sub_21999C0D4(&qword_27CC21B40, 255, type metadata accessor for ChannelMagazineGridModelLoader, &unk_219C42F28);
  a2[4] = result;
  *a2 = v14;
  return result;
}

uint64_t sub_21999A910()
{
  swift_getObjectType();
  sub_219BF29D4();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_21999B2E0(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v2 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_218A35748(0);
  v3 = v0;
  v4 = sub_219BE2F94();

  return v4;
}

uint64_t sub_21999AA9C(unint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = [a2 superfeedConfigResourceID];
  if (!v4)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v35 = qword_280F61708;
    sub_21999B2E0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_219C09BA0;
    v37 = [a2 identifier];
    v38 = sub_219BF5414();
    v40 = v39;

    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_2186FC3BC();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    v41 = sub_219BF6214();
    sub_219BE5314("Not creating a superfeed for channel %{public}@ because it does not have a superfeed config resource", 100, 2, &dword_2186C1000, v35, v41, v36);

    return sub_21999B820(a1, a2);
  }

  v5 = sub_2186C6148(0, &unk_280E8DDB0, 0x277D31300);
  v6 = *(v2 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_cloudContext);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
  v7 = v6;
  swift_unknownObjectRetain();
  v44 = sub_21999B788(v7, a2, 1, 0, 0, v5);

  swift_unknownObjectRelease();
  if (qword_280E8D7F8 != -1)
  {
    goto LABEL_26;
  }

LABEL_3:
  v8 = qword_280F61708;
  sub_21999B2E0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = [a2 identifier];
  v11 = sub_219BF5414();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x277D837D0];
  v47 = sub_2186FC3BC();
  *(v9 + 64) = v47;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v14 = sub_219BF6214();
  v48 = v8;
  sub_219BE5314("Creating a superfeed for channel %{public}@", 43, 2, &dword_2186C1000, v8, v14, v9);

  v50 = MEMORY[0x277D84F90];
  v15 = a1;
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_28;
    }

    goto LABEL_5;
  }

  v16 = sub_219BF7214();
  if (v16)
  {
LABEL_5:
    v46 = a2;
    v17 = 0;
    a2 = (a1 & 0xC000000000000001);
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = v16;
    while (1)
    {
      if (a2)
      {
        v19 = MEMORY[0x21CECE0F0](v17, v15);
      }

      else
      {
        if (v17 >= *(v18 + 16))
        {
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        swift_once();
        goto LABEL_3;
      }

      v22 = [objc_msgSend(v19 backingTag)];
      swift_unknownObjectRelease();
      if (v22)
      {
        v23 = [v22 supergroupKnobs];
        swift_unknownObjectRelease();
        if (v23)
        {
          if (([v23 isEligible] & 1) == 0)
          {
            v24 = swift_allocObject();
            *(v24 + 16) = xmmword_219C09EC0;
            v25 = [objc_msgSend(v20 backingTag)];
            swift_unknownObjectRelease();
            v26 = sub_219BF5414();
            v28 = v27;

            *(v24 + 56) = MEMORY[0x277D837D0];
            *(v24 + 64) = v47;
            *(v24 + 32) = v26;
            *(v24 + 40) = v28;
            v29 = [v46 identifier];
            v30 = sub_219BF5414();
            v32 = v31;

            *(v24 + 96) = MEMORY[0x277D837D0];
            *(v24 + 104) = v47;
            *(v24 + 72) = v30;
            *(v24 + 80) = v32;
            v15 = a1;
            v18 = a1 & 0xFFFFFFFFFFFFFF8;
            v16 = v45;
            v33 = sub_219BF6214();
            sub_219BE5314("Filtering out section %{public}@ from channel %{public}@ superfeed because it is not eligible", 93, 2, &dword_2186C1000, v48, v33, v24);

            goto LABEL_8;
          }
        }
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
LABEL_8:
      ++v17;
      if (v21 == v16)
      {
        v34 = v50;
        goto LABEL_29;
      }
    }
  }

LABEL_28:
  v34 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21999C720(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_219C146A0;
  *(v43 + 32) = v44;
  v51 = v43;
  sub_2191EDD14(v34);
  return v51;
}

void sub_21999B0C4(unint64_t *a1@<X0>, _BYTE *a3@<X2>, BOOL *a4@<X8>)
{
  v6 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_21999C770(v6, a3, Strong);
    swift_unknownObjectRelease();
  }

  *a4 = Strong == 0;
}

uint64_t sub_21999B1A0(void *a1, uint64_t a2)
{
  v4 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_21999B6C4(v4, a2, v2);
}

double sub_21999B1E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    v12 = a1;
    v13 = a2;
    swift_unknownObjectRetain();
    v14 = a4;
    v15 = a5;
    v16 = a6;
  }

  else
  {
    swift_unknownObjectRetain();
    v17 = a2;
    v14 = a3;
    v15 = a4;
    v16 = a5;
  }

  return sub_218CC4CB8(v14, v15, v16);
}

uint64_t sub_21999B26C()
{
  v1 = *(v0 + 24);
  v2 = off_282A4D758;
  type metadata accessor for TagService();
  return v2(v1);
}

void sub_21999B2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21999B37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
  v30[3] = v6;
  v30[4] = &off_282A79210;
  v30[0] = a2;
  if (*(a1 + 16))
  {
    __swift_project_boxed_opaque_existential_1(v30, v6);
    v7 = *(a3 + qword_280EB6510);

    v8 = [objc_msgSend(v7 backingTag)];
    swift_unknownObjectRelease();
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = sub_219579760(v9, v11);

    v13 = 0;
    result = 0;
    v15 = 0;
    v16 = 1 << v12[32];
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v12 + 7);
    v19 = (v16 + 63) >> 6;
LABEL_5:
    v29 = v13;
    v20 = result;
LABEL_6:
    v13 = 1;
    while (v18)
    {
LABEL_12:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = *(v12 + 6) + ((v15 << 10) | (16 * v22));
      v24 = *v23;
      v25 = *(v23 + 8);
      result = sub_219089288(*v23, *(v23 + 8), a1);
      if ((result & 1) == 0)
      {
        if (v25 != 4)
        {
          if ((v25 - 1) < 3)
          {
            result = v20;
          }

          else
          {
            v13 = 1;
            result = v20;
            v20 = 1;
            if ((v24 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          goto LABEL_5;
        }

        if (v24 >= 2)
        {
          v20 = 1;
          v13 = 1;
        }
      }
    }

    while (1)
    {
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v21 >= v19)
      {
        break;
      }

      v18 = *&v12[8 * v21 + 56];
      ++v15;
      if (v18)
      {
        v15 = v21;
        goto LABEL_12;
      }
    }

    if (v20 & 1) != 0 || (v29)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = [objc_opt_self() bundleForClass_];
      v28 = sub_219BDB5E4();

      goto LABEL_26;
    }
  }

  else
  {
  }

  v28 = 0;
LABEL_26:
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v28;
}

uint64_t sub_21999B6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
  v10[3] = v5;
  v10[4] = &off_282A79210;
  v10[0] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *__swift_project_boxed_opaque_existential_1(v10, v5);

    sub_21999C358(v8, a2, v7, sub_21999C340);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

id sub_21999B788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v9 = sub_219BF53D4();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1 tag:a2 feedConfiguration:a3 referringFeedItemIdentifier:v9];

  return v10;
}

uint64_t sub_21999B820(unint64_t a1, id a2)
{
  v3 = [a2 defaultSectionID];
  if (!v3)
  {

    return a1;
  }

  v4 = v3;
  v5 = sub_219BF5414();
  v7 = v6;

  v29 = a1;
  v8 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_32;
  }

  if (!sub_219BF7214())
  {

    goto LABEL_17;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_40:

    v10 = MEMORY[0x21CECE0F0](0, a1);
    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(a1 + 32);

    v10 = v9;
LABEL_7:
    v11 = v10;
    v12 = [v10 identifier];

    v13 = sub_219BF5414();
    v15 = v14;

    if (v13 == v5 && v15 == v7)
    {

LABEL_33:

      return a1;
    }

    v16 = sub_219BF78F4();

    if (v16)
    {
      goto LABEL_33;
    }

    if (!v8)
    {
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

LABEL_17:
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = sub_219BF7214();
LABEL_18:
    v18 = 0;
    while (v17 != v18)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x21CECE0F0](v18, a1);
      }

      else
      {
        if (v18 >= *(v28 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 identifier];
      v22 = sub_219BF5414();
      v8 = v23;

      if (v22 == v5 && v8 == v7)
      {

LABEL_36:

        a1 = sub_218FE8694(v18);
        if (v29 >> 62)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

      v25 = sub_219BF78F4();

      if (v25)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v18++, 1))
      {
        goto LABEL_39;
      }
    }

    goto LABEL_33;
  }

  __break(1u);
LABEL_42:
  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
LABEL_37:
    sub_21895079C(0, 0, a1);

    return v29;
  }

  __break(1u);
  return result;
}

void sub_21999BB10(unint64_t a1, uint64_t a2)
{
  v51 = sub_21939A1A0();
  v5 = &unk_280F61000;
  v6 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v7 = MEMORY[0x277D837D0];
  if (!v4)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v37 = qword_280F61708;
    sub_21999B2E0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09BA0;
    v39 = (a2 + 16);
    if ((*(a2 + 41) & 1) == 0)
    {
      v39 = a2;
    }

    v40 = [*v39 identifier];
    v41 = sub_219BF5414();
    v43 = v42;

    *(v38 + 56) = v7;
    *(v38 + 64) = sub_2186FC3BC();
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;
    v44 = sub_219BF6214();
    sub_219BE5314("No referring feed item transform for channel %{public}@", 55, 2, &dword_2186C1000, v37, v44, v38);
    goto LABEL_73;
  }

  v8 = v4;
  v52 = a1;
  if (qword_280E8D7F8 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v9 = v5[225];
    sub_21999B2E0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C0B8C0;
    *(v10 + 56) = v7;
    v11 = sub_2186FC3BC();
    *(v10 + 64) = v11;
    *(v10 + 32) = v51;
    *(v10 + 40) = v8;
    v12 = *(a2 + 16);
    v13 = *(a2 + 41);
    v14 = (v13 & 1) != 0 ? *(a2 + 16) : *a2;
    v50 = v8;

    v15 = [v14 *(v6 + 2224)];
    v16 = sub_219BF5414();
    v17 = v7;
    v7 = v18;

    *(v10 + 96) = v17;
    *(v10 + 104) = v11;
    *(v10 + 72) = v16;
    *(v10 + 80) = v7;
    v19 = (v13 & 1) != 0 ? *(a2 + 24) : v12;
    v20 = (v13 & 1) != 0 ? *(a2 + 32) : *(a2 + 24);
    v21 = (v13 & 1) != 0 ? *(a2 + 40) : *(a2 + 32);
    sub_218CC4CB8(v19, v20, v21);
    sub_21999C720(0, &unk_27CC21B50, &type metadata for TagFeedViewerPresentationSelection, MEMORY[0x277D83D88]);
    v22 = sub_219BF5484();
    *(v10 + 136) = v17;
    *(v10 + 144) = v11;
    *(v10 + 112) = v22;
    *(v10 + 120) = v23;
    v24 = sub_219BF6214();
    sub_219BE5314("Will transform initial selection with referring feed item identifier %{public}@ for channel %{public}@, initial selection %{public}@", 132, 2, &dword_2186C1000, v9, v24, v10);

    v25 = (*(a2 + 41) & 1) != 0 ? *(a2 + 24) : *(a2 + 16);
    v26 = (*(a2 + 41) & 1) != 0 ? *(a2 + 32) : *(a2 + 24);
    a2 = (*(a2 + 41) & 1) != 0 ? *(a2 + 40) : *(a2 + 32);
    if (a2 == 0xFF)
    {
      break;
    }

    v27 = v52;
    if (a2)
    {
      goto LABEL_73;
    }

    v28 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    v5 = v50;
    if (!v28)
    {
      goto LABEL_55;
    }

    if (v52 >> 62)
    {
      v8 = sub_219BF7214();
    }

    else
    {
      v8 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29.n128_f64[0] = sub_218CC4CD0(v25, v26, 0);
    if (!v8)
    {
LABEL_61:
      sub_218B083D0(v25, v26, a2);
      goto LABEL_73;
    }

    v6 = 0;
    while (1)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x21CECE0F0](v6, v27, v29);
      }

      else
      {
        if (v6 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v30 = *(v27 + 8 * v6 + 32);
      }

      v7 = v30;
      v5 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v31 = [v30 backingSectionID];
      v32 = sub_219BF5414();
      v34 = v33;

      if (v32 == v25 && v26 == v34)
      {

LABEL_64:
        sub_218B083D0(v25, v26, a2);
        v48 = v7;
        v49 = sub_219BF53D4();

        [v48 setReferringFeedItemIdentifier_];

        goto LABEL_74;
      }

      v36 = sub_219BF78F4();

      v27 = v52;
      if (v36)
      {
        goto LABEL_64;
      }

      ++v6;
      if (v5 == v8)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v27 = v52;
  if (v52 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_73;
    }
  }

  else if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_73;
  }

  if ((v52 & 0xC000000000000001) != 0)
  {
    goto LABEL_70;
  }

  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_59:
    v45 = *(v27 + 32);
LABEL_60:
    v46 = v45;
    v47 = sub_219BF53D4();

    [v46 setReferringFeedItemIdentifier_];

    goto LABEL_74;
  }

  __break(1u);
LABEL_55:
  if (v27 >> 62)
  {
    if (!sub_219BF7214())
    {
LABEL_73:

LABEL_74:

      return;
    }
  }

  else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_73;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_70:
    v45 = MEMORY[0x21CECE0F0](0, v27);
    goto LABEL_60;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

  __break(1u);
}

uint64_t sub_21999C0D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21999C190(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
  v16[3] = v6;
  v16[4] = &off_282A79210;
  v16[0] = a1;

  sub_219A25FA0();
  if (qword_280EE5DA0 != -1)
  {
    swift_once();
  }

  sub_219BE7EC4();
  sub_219A2D03C();
  v7 = [a3 navigationController];
  if (v7)
  {
    v8 = v7;
    v9 = *&a3[qword_280EB64D8 + 24];
    v10 = *&a3[qword_280EB64D8 + 32];
    __swift_project_boxed_opaque_existential_1(&a3[qword_280EB64D8], v9);
    (*(v10 + 16))(v8, v9, v10);
  }

  if ([*&a3[qword_280EB6510] feedConfiguration] == 11)
  {
    v11 = sub_219BF65B4();
    v12 = __swift_project_boxed_opaque_existential_1(v16, v6);
    sub_21999B37C(a2, *v12, a3);
    if (v13)
    {
      v14 = sub_219BF53D4();
    }

    else
    {
      v14 = 0;
    }

    [v11 setSubtitle_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_21999C358(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
  v12[3] = v7;
  v12[4] = &off_282A79210;
  v12[0] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *__swift_project_boxed_opaque_existential_1(v12, v7);

    a4(v10, a2, v9);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t sub_21999C410()
{
  result = qword_27CC21B60;
  if (!qword_27CC21B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21B60);
  }

  return result;
}

unint64_t sub_21999C46C()
{
  result = qword_27CC21B68;
  if (!qword_27CC21B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21B68);
  }

  return result;
}

void sub_21999C4C0()
{
  swift_getObjectType();

  sub_219BE2E84();

  v1 = *&v5[24];
  if (HIBYTE(*&v5[24]) <= 0xFEu)
  {
    *&v5[24] &= 0x1FFu;
    MEMORY[0x28223BE20](v0);
    sub_218A35748(0);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v2 = sub_219BF66A4();
    v3 = swift_allocObject();
    v3[1] = v4;
    v3[2] = *v5;
    *(v3 + 42) = *&v5[10];
    sub_21999B1E4(v4, *(&v4 + 1), *v5, *&v5[8], *&v5[16], v1, BYTE1(v1) & 1);
    sub_21999C720(0, &qword_280E8B4E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
    sub_219BE2F94();

    sub_218B0A0C8(v4, *(&v4 + 1), *v5, *&v5[8], *&v5[16], v1);
  }
}

void sub_21999C720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_21999C770(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = sub_218B084D8(a1, a2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_218B08768(v3, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21999C7F0()
{

  return swift_deallocClassInstance();
}

void sub_21999C864(id a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = sub_219BE9414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277D31348]);
  v10 = sub_219BF53D4();
  v11 = sub_219BF53D4();
  v12 = [v9 initWithTagType:1 identifier:v10 name:v11];

  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0;
  *(v14 + 96) = -1;

  v15 = sub_219BF53D4();

  v16 = [a1 objectForKey_];

  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v24, v25);
  sub_2186CF94C(0);
  swift_dynamicCast();
  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = a1;
  v17[3] = v18;
  v17[4] = a3;
  v19 = a1;

  sub_219BE6454();

  v20 = sub_219BF53D4();

  v21 = [v19 objectForKey_];

  if (v21)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v24, v25);
    swift_dynamicCast();
    *&v25[0] = v14 | 0x2000000000000004;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E598], v5);
    sub_219BE6474();
    (*(v6 + 8))(v8, v5);

    return;
  }

LABEL_7:
  __break(1u);
  (*(v6 + 8))(v8, v5);

  swift_unexpectedError();
  __break(1u);
}

double sub_21999CC50(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v67 = a4;
  v65 = sub_219BED174();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v64 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED214();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v53 - v18;
  v20 = *a1;
  if (((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3) == 0xA)
  {
    v56 = a3;
    v58 = v9;
    v59 = v6;
    v21 = v20 & 0xFFFFFFFFFFFFFF9;
    v22 = *(v21 + 16);
    v68 = *(v21 + 24);
    v69 = v22;
    v23 = *(v21 + 32);
    v24 = *(v21 + 40);
    v25 = *(v21 + 48);
    v26 = *(v21 + 64);
    v27 = *(v21 + 72);
    v28 = *(v21 + 80);
    v71 = *(v21 + 88);
    v70 = *(v21 + 96);
    v57 = v16;
    v62 = v23;
    v63 = v26;
    v61 = v24;
    v60 = v25;
    if (v25)
    {
      v30 = v68;
      v29 = v69;
      if (v25 == 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      sub_21908FD7C(v69, v68, v23, v24, v31);
      sub_218F20858(v26, v27, v28, v71, v70);
    }

    else
    {
      v32 = v69;
      sub_21908FD7C(v69, v68, v23, v24, 0);
      v33 = [v32 identifier];
      v54 = v19;
      v34 = v11;
      v35 = v28;
      v36 = v8;
      v37 = v27;
      v38 = v33;
      v29 = sub_219BF5414();
      v30 = v39;

      v27 = v37;
      v8 = v36;
      v28 = v35;
      v11 = v34;
      v19 = v54;
    }

    if (v29 == 0xD000000000000017 && 0x8000000219D425D0 == v30)
    {

LABEL_12:
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v54 = sub_219BF66A4();
      sub_219BED1F4();
      sub_219BED244();
      v55 = v12;
      v57 = *(v57 + 8);
      (v57)(v14, v12);
      v41 = swift_allocObject();
      v42 = v65;
      v53 = v28;
      v43 = v66;
      v44 = v56;
      v41[2] = v66;
      v41[3] = v44;
      v56 = v27;
      v41[4] = v67;
      aBlock[4] = sub_21999D92C;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      aBlock[3] = &block_descriptor_16_3;
      v45 = _Block_copy(aBlock);
      v46 = v43;

      sub_219BED1A4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21874E450(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v47 = v64;
      sub_21879DD98(0);
      sub_21874E450(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
      sub_219BF7164();
      v48 = v54;
      MEMORY[0x21CECD420](v19, v11, v8, v45);
      _Block_release(v45);

      sub_21896FBB0(v69, v68, v62, v61, v60);
      v49 = sub_218DFAEC4(v63, v56, v53, v71, v70);
      (*(v59 + 8))(v8, v42, v49);
      (*(v47 + 8))(v11, v58);
      (v57)(v19, v55);
      return result;
    }

    v40 = sub_219BF78F4();

    if (v40)
    {
      goto LABEL_12;
    }

    sub_21896FBB0(v69, v68, v62, v61, v60);
    v50 = v63;
    v51 = v71;
    v52 = v70;

    return sub_218DFAEC4(v50, v27, v28, v51, v52);
  }

  return result;
}

void sub_21999D290(void *a1, void (*a2)(id))
{

  v4 = sub_219BF53D4();

  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v15, &v16);
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    swift_dynamicCast();
    sub_2190CEEB4(0);
    sub_219BF6584();

    v6 = v17;
    if (v17)
    {
      sub_219BE8664();

      v7 = sub_219BE7BC4();

      v8 = v7;

      v9 = sub_219BF53D4();

      [a1 setObject:v8 forKey:v9];

      v10 = 0;
    }

    else
    {
      v11 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v12 = sub_219BF53D4();
      v13 = [v11 initWithMessage_];

      v10 = v13;
      v8 = v13;
    }

    a2(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21999D534(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_219BED174();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v28 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v17 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v27 = *(v11 + 8);
  v27(v13, v10);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_21999D914;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_194;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E450(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_21874E450(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  return (v27)(v16, v28);
}

uint64_t AlertSportsOnboardingSignInRequired.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t AlertSportsOnboardingSignInRequired.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t AlertSportsOnboardingSignInRequired.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD00];
  v3 = sub_219BE7C94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AlertSportsOnboardingSignInRequired.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t AlertSportsOnboardingSignInRequired.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21999DCE0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21999DDAC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21999DE74()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21999DF40()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void *sub_21999E01C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsSessionObserver();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = sub_219BDCDE4();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21999E094()
{
  v0 = sub_219BDD004();
  MEMORY[0x28223BE20](v0 - 8);
  sub_219BDCB74();
  sub_219BDCE74();
  sub_219BDCE64();
  sub_219BDCD04();
  sub_219BDCCF4();
  sub_219BDCFF4();
  return sub_219BDCB64();
}

uint64_t sub_21999E160()
{
  v0 = sub_219BDD044();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 11;
  (*(v4 + 104))(v3, *MEMORY[0x277CEAE08], v1);
  sub_219BDCF54();
  swift_allocObject();
  return sub_219BDCF44();
}

uint64_t sub_21999E260(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD0C4();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EE8FE0, &protocolRef_AAEndpointType);
    result = sub_219BE1DE4();
    if (result)
    {
      sub_219BDD024();
      sub_219BDCFC4();
      v3 = sub_219BDCFB4();
      sub_219BDC8D4();
      sub_219BDC8B4();
      sub_219BDC2E4();
      sub_219BDC8A4();

      v4 = sub_219BDCFA4();

      sub_219BDC8B4();
      sub_219BDC314();
      sub_219BDC8A4();

      sub_219BDCF84();

      return sub_219BDD014();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21999E434()
{
  v1 = v0;
  v2 = sub_219BE14C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D2F340])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D2F310])
  {
    return 1;
  }

  if (v7 != *MEMORY[0x277D2F348])
  {
    if (v7 != *MEMORY[0x277D2F2C8])
    {
      if (v7 == *MEMORY[0x277D2F2D0])
      {
        return 18;
      }

      if (v7 != *MEMORY[0x277D2F2D8])
      {
        if (v7 == *MEMORY[0x277D2F328])
        {
          return 7;
        }

        if (v7 == *MEMORY[0x277D2F308])
        {
          return 11;
        }

        if (v7 == *MEMORY[0x277D2F298])
        {
          return 19;
        }

        if (v7 == *MEMORY[0x277D2F2E8])
        {
          return 16;
        }

        if (v7 == *MEMORY[0x277D2F2F8])
        {
          return 15;
        }

        if (v7 == *MEMORY[0x277D2F300])
        {
          return 10;
        }

        if (v7 == *MEMORY[0x277D2F338])
        {
          return 3;
        }

        if (v7 == *MEMORY[0x277D2F318])
        {
          return 20;
        }

        if (v7 == *MEMORY[0x277D2F320])
        {
          return 23;
        }

        if (v7 == *MEMORY[0x277D2F350])
        {
          return 24;
        }

        if (v7 == *MEMORY[0x277D2F330])
        {
          return 25;
        }

        if (v7 == *MEMORY[0x277D2F2B8])
        {
          return 26;
        }

        (*(v3 + 8))(v6, v2);
      }
    }

    return 0;
  }

  return 2;
}